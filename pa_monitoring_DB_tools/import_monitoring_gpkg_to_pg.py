"""
Import gpkg to postgres This script takes the spatial data geopackage and inserts the data into postgres,
adding the relevant grant ID at the same time - any constraint failures will be feedback to the user
"""
import sys

import psycopg2
from config import config
from osgeo import ogr
import argparse
from psycopg2 import sql

def connect_postgres():
    """Connect to the PostgreSQL database server"""
    conn = None
    try:

        # read connection parameters
        params = config()

        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(**params)

        return conn

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)


def create_field_list(layer):
    """ Go through the layer and extract each of the field names """

    field_list = []
    layer_defn = layer.GetLayerDefn()

    # Add the geometry column, if there is one!
    geom_col = layer.GetGeometryColumn()
    if not geom_col == '':
        field_list.append(geom_col)

    # Add the rest of the fields from the geopackage
    for i in range(layer_defn.GetFieldCount()):
        field_defn = layer_defn.GetFieldDefn(i).GetName()
        field_list.append(field_defn)

    # add the grant_id field, monitoring_id
    field_list.extend(['grant_id', 'monitoring_id'])

    return field_list

def duplicate_check(ref_type, survey_id, pg_conn):
    with pg_conn:
        with pg_conn.cursor() as cur:
            # Check that the grant reference is present in the database, and if not, prompt user to do something
            # about it.
            query = sql.SQL("SELECT count(*) from pa_monitoring.quadrats where {} = %s")
            cur.execute(query.format(sql.Identifier(ref_type)), (survey_id,))
            count_survey_id = cur.fetchone()
            if count_survey_id[0] > 0:
                print(f"!!!!!!!!! Duplicate record: {survey_id} is already included in pa_monitoring")
                print("Exiting script")
                sys.exit()


def create_values_string(layer, grant_id, monitoring_id):
    values_string = ""

    # for each feature
    for j in range(1, layer.GetFeatureCount() + 1):

        values = []
        # get the next feature (**can't use the indexed GetNextFeature(fid) as the fid does not necessarily start at
        # 1 and increment by 1)
        feature = layer.GetNextFeature()

        # check it's not null
        if feature is not None:

            geom = feature.GetGeometryRef()
            if geom is not None:
                values += ["st_geomfromtext('" + str(geom) + "',27700)"]

            for key in feature.keys():
                # Get the value for each field and add it to the values array:

                fld_defn = feature.GetFieldDefnRef(feature.GetFieldIndex(key))
                if fld_defn.GetType() == ogr.OFTInteger and fld_defn.GetSubType() == ogr.OFSTBoolean:
                    val = bool(feature.GetField(key))
                else:
                    val = feature.GetField(key)

                # Postgres strings must be enclosed with single quotes
                if type(val) == str:
                    # escape apostrophes with two single quotations
                    val = val.replace("'", "''")
                    val = "'" + val + "'"
                if val is None:
                    val = "NULL"

                values += [str(val)]
            # add the grant_id to the feature
            values += ["'"+grant_id+"'"]
            # add the monitoring_id to the feature
            values += ["'"+monitoring_id+"'"]
            # make a string surrounded by brackets for each feature's values
            values_string += "(" + ','.join(values) + "),\n"
    # remove the last comma and replace with a semi-colon - the end of the sql query
    values_string = values_string[:-2] + ";"
    print("values_string: ", values_string)
    return values_string


def main():
    global layer, grant_id, monitoring_id
    parser = argparse.ArgumentParser()
    parser.add_argument("filename", help="Path to the geopackage file to be imported. Please use quotation marks")
    parser.add_argument("monitoring_id", help="The monitoring ID of the monitoring survey, e.g. MO01. Must be unique for this site")
    group = parser.add_argument_group()
    group.add_argument('-g', "--grant_id", nargs="?", default="NA", help="A valid grant reference, ensure this is already present in the "
                                                 "database (pa_metadata.grant_reference table)")

    args = parser.parse_args()

    gpkg_filename = args.filename
    grant_id = args.grant_id
    monitoring_id = args.monitoring_id
    schema_name = "pa_monitoring"

    gpkg_driver = ogr.GetDriverByName('GPKG')
    pg_conn = connect_postgres()

    if args.grant_id != "NA": 
        if args.grant_id is not None:
            grant_id = args.grant_id.upper()
            print("Checking for existing IDs")
            duplicate_check('grant_id', grant_id, pg_conn)
        
            with pg_conn:
                with pg_conn.cursor() as cur:
                    # Check that the grant ID reference is present in the database, and if not, prompt user to do something
                    # about it.
                    cur.execute("SELECT count(*) from pa_metadata.grant_reference where grant_id = '{}'".format(grant_id))
                    count_grant_id = cur.fetchone()
                    if count_grant_id[0] > 0:
                        print("Grant ID exisits in grant_reference table.")
                    else:
                        print("!!!!!!!!!The grant id -{}- was not found in the database, please ensure it is added to the pa_metada.grant_reference table".format(grant_id))
                        print("Exiting script")
                        sys.exit()
        else:
            grant_id = "NULL"
 
    if args.monitoring_id is not None:
        monitoring_id = args.monitoring_id.upper()
        print("Checking for existing IDs")
        duplicate_check('monitoring_id', monitoring_id, pg_conn)
            
    else:
        monitoring_id = "NULL"
    
    with pg_conn:
        with pg_conn.cursor() as cur:
            # retrieve list of tables from database for subsequent filtering of gpkg layers
            # note hardcoded 'pa_final_report' as test db contains meta and lu tables
            cur.execute("SELECT table_name FROM information_schema.tables WHERE table_schema='{}' "
                        "AND table_type='BASE TABLE'".format(schema_name))
            result = cur.fetchall()
            table_list = [i[0] for i in result]

    with pg_conn:
        with pg_conn.cursor() as cur:

            # Open geopackage
            # gpkg = ogr.Open(gpkg_filename)
            gpkg = gpkg_driver.Open(gpkg_filename)
            # For each layer in the geopackage
            for layer in gpkg:

                table_name = layer.GetName()

                # check there are features in the layer (count needs to be > 1 because there is a 'spatial
                # filter' which is always included in the count - see ogr.py line 1517)
                if layer.GetFeatureCount() > 0 and table_name in table_list:
                    print(
                        "Layer being processed: {}; feature count = {}".format(table_name, layer.GetFeatureCount()))
                    # Get the list of fields for the layer:
                    field_list = create_field_list(layer)
                    # Get the features from the layer and insert them into the database, adding in grant ref:

                    print("before values strings")

                    values_string = create_values_string(layer, grant_id, monitoring_id)

                    print("before creating insert query")
                    sql_string = cur.mogrify(
                        "INSERT INTO {}.{} ({})\n VALUES {}".format(schema_name, table_name, ','.join(field_list), values_string))
                    #print(sql_string)
                    f = open("insert_queries.txt", "a")
                    f.write(str(sql_string))
                    f.write("\n\n\n\n\n\nNext Querie\n\n\n\n\n")
                    f.close()


                    cur.execute(sql_string)
                       
    pg_conn.close()


if __name__ == '__main__':
    main()
