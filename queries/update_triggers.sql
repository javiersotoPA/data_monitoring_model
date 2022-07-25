-- pa_monitoring.update_prot_b_reprofiling_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_b_reprofiling_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_b_reprofiling p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_b_reprofiling p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;

-- pa_monitoring.update_prot_b_blocking_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_b_blocking_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_b_blocking p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_b_blocking p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;


-- pa_monitoring.update_prot_b_unbloking_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_b_unbloking_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_b_unbloking p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_b_unbloking p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;

-- pa_monitoring.update_prot_c_vegetation_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_c_vegetation_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_c_vegetation p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_c_vegetation p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;

-- pa_monitoring.update_prot_c_height_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_c_height_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_c_height p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_c_height p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;

-- pa_monitoring.update_prot_c_trampling_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_c_trampling_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_c_trampling p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_c_trampling p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;

-- pa_monitoring.update_prot_d_ph_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_d_ph_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_d_peat_humification p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_d_peat_humification p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;

-- pa_monitoring.update_prot_e_photo_quadrat_uid
CREATE OR REPLACE FUNCTION pa_monitoring.update_prot_e_photo_quadrat_uid()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
BEGIN
update pa_monitoring.protocol_e_photography p set quadrat_uid = q.quadrat_uid 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;

update pa_monitoring.protocol_e_photography p set plot_id = q.plot_id 
from pa_monitoring.quadrats q 
where p.monitoring_id = q.monitoring_id and p.quadrat_id_fk = q.quadrat_id;
return new;
END;
$BODY$;


















