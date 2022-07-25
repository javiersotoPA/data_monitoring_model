delete from pa_monitoring.quadrats where quadrat_id = 'quadrat_05';
delete from pa_monitoring.protocol_d_peat_humification where quadrat_id_fk = 'quadrat_05';

insert into pa_monitoring.quadrats (
    quadrat_id,
    sample_zone_id,
    plot_id,
    x_coordinate,
    y_coordinate,
    altitude,
    aspect,
    slope,
    browsing,
    disturbance,
    bare_ground_cover,
    bare_rock_cover,
    litter_cover,
    open_water_cover,
    tree_cover,
    dung_rabbit,
    dung_cattle,
    dung_deer,
    dung_mountain_hare,
    dung_sheep,
    dung_others,
    dung_comments,
    microtopography_cover_a1,
    microtopography_cover_a2,
    microtopography_cover_a3,
    microtopography_cover_a4,
    microtopography_cover_t1,
    microtopography_cover_t2,
    microtopography_cover_t3,
    microtopography_cover_t4,
    microtopography_cover_t5,
    osgrid_field,
    x_coordinate_field,
    y_coordinate_field,
    type,
    stratus_type,
    peat_depth,
    grant_id) 
	
VALUES ('quadrat_05',
    1,
    1,
    654321,
    654321,
    0,
    'S',
    5,
    0,
    'yes',
    20,
    30,
    5,
    0,
    0,
    0,
    1,
    0,
    1,
    0,
    1,
    'na',
    20,
    5,
    50,
    0,
    60,
    5,
    0,
    10,
    0,
    'NX654321',
    0,
    0,
    'actively eroding',
    'background',
    300,
    '505050');
	
insert into pa_monitoring.protocol_d_peat_humification
(
    scale,
    comments,
    quadrat_id_fk,
    plot_id)
	
VALUES ( 
   'H2',
    'yummy',
    'quadrat_05',
    1);
-----

update pa_monitoring.protocol_d_peat_humification p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.quadrat_uid is null AND (p.plot_id = q.plot_id and p.quadrat_id_fk = q.quadrat_id);



---
DROP TRIGGER update_quadrat_uid on pa_monitoring.protocol_d_peat_humification;

CREATE TRIGGER update_quadrat_uid
    AFTER INSERT ON pa_monitoring.protocol_d_peat_humification
    FOR EACH ROW
    EXECUTE FUNCTION pa_monitoring.update_prot_d_ph_quadrat_uid();


Create or replace function pa_monitoring.update_prot_d_ph_quadrat_uid()
returns trigger
language plpgsql
AS
$$ BEGIN
update pa_monitoring.protocol_d_peat_humification p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.quadrat_uid is null AND (p.plot_id = q.plot_id and p.quadrat_id_fk = q.quadrat_id);
return new;
END;$$;

---------------------------

Create or replace function pa_monitoring.update_prot_c_trampling_quadrat_uid()
returns trigger
language plpgsql
AS
$$ BEGIN
update pa_monitoring.protocol_c_trampling p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.quadrat_uid is null AND (p.plot_id = q.plot_id and p.quadrat_id_fk = q.quadrat_id);
return new;
END;$$;


CREATE TRIGGER update_quadrat_uid
    AFTER INSERT ON pa_monitoring.protocol_c_trampling
    FOR EACH ROW
    EXECUTE FUNCTION pa_monitoring.update_prot_c_trampling_quadrat_uid();

---------------------------

Create or replace function pa_monitoring.update_prot_e_photo_quadrat_uid()
returns trigger
language plpgsql
AS
$$ BEGIN
update pa_monitoring.protocol_e_photography p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.quadrat_uid is null AND (p.plot_id = q.plot_id and p.quadrat_id_fk = q.quadrat_id);
return new;
END;$$;


CREATE TRIGGER update_quadrat_uid
    AFTER INSERT ON pa_monitoring.protocol_e_photography
    FOR EACH ROW
    EXECUTE FUNCTION pa_monitoring.update_prot_e_photo_quadrat_uid();

----------------------------------------------------------------

alter table pa_monitoring.protocol_b_blocking add column imported_by varchar(50);
alter table pa_monitoring.protocol_b_blocking add column updated_by varchar(50);
alter table pa_monitoring.protocol_b_blocking add column updated_date timestamp with time zone;
alter table pa_monitoring.protocol_b_blocking add column import_date timestamp with time zone;


CREATE TRIGGER insert_timestamp
    BEFORE INSERT
    ON pa_monitoring.protocol_b_blocking
    FOR EACH ROW
    EXECUTE FUNCTION public.insert_timestamp_column();

CREATE TRIGGER insert_user
    BEFORE INSERT
    ON pa_monitoring.protocol_b_blocking
    FOR EACH ROW
    EXECUTE FUNCTION public.insert_by_column();
	
CREATE TRIGGER update_timestamp
    BEFORE UPDATE 
    ON pa_monitoring.protocol_b_blocking
    FOR EACH ROW
    EXECUTE FUNCTION public.update_timestamp_column();
	
CREATE TRIGGER update_user
    BEFORE UPDATE 
    ON pa_monitoring.protocol_b_blocking
    FOR EACH ROW
    EXECUTE FUNCTION public.update_by_column();













