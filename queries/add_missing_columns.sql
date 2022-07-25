alter table pa_monitoring.background_stratus add column global_id varchar(50);
alter table pa_monitoring.target_stratus add column global_id varchar(50);
alter table pa_monitoring.plots add column global_id varchar(50);
alter table pa_monitoring.protocol_b_blocking add column global_id varchar(50);
alter table pa_monitoring.protocol_b_unbloking add column global_id varchar(50);
alter table pa_monitoring.protocol_b_reprofiling add column global_id varchar(50);
alter table pa_monitoring.protocol_c_vegetation add column global_id varchar(50);
alter table pa_monitoring.protocol_c_trampling add column global_id varchar(50);
alter table pa_monitoring.protocol_c_height add column global_id varchar(50);
alter table pa_monitoring.protocol_d_peat_humification add column global_id varchar(50);
alter table pa_monitoring.protocol_e_photography add column global_id varchar(50);
alter table pa_monitoring.quadrats add column global_id varchar(50);
alter table pa_monitoring.sample_zone add column global_id varchar(50);

alter table pa_monitoring.background_stratus add column monitoring_id varchar(50);
alter table pa_monitoring.target_stratus add column monitoring_id varchar(50);
alter table pa_monitoring.plots add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_b_blocking add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_b_unbloking add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_b_reprofiling add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_c_vegetation add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_c_trampling add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_c_height add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_d_peat_humification add column monitoring_id varchar(50);
alter table pa_monitoring.protocol_e_photography add column monitoring_id varchar(50);
alter table pa_monitoring.quadrats add column monitoring_id varchar(50);
alter table pa_monitoring.sample_zone add column monitoring_id varchar(50);

alter table pa_monitoring.background_stratus add column if not exists grant_id varchar(50);
alter table pa_monitoring.target_stratus add column if not exists grant_id varchar(50);
alter table pa_monitoring.plots add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_b_blocking add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_b_unbloking add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_b_reprofiling add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_c_vegetation add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_c_trampling add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_c_height add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_d_peat_humification add column if not exists grant_id varchar(50);
alter table pa_monitoring.protocol_e_photography add column if not exists grant_id varchar(50);
alter table pa_monitoring.quadrats add column if not exists grant_id varchar(50);
alter table pa_monitoring.sample_zone add column if not exists grant_id varchar(50);

alter table pa_monitoring.protocol_b_blocking add column quadrat_uid varchar(50);
alter table pa_monitoring.protocol_b_unbloking add column quadrat_uid varchar(50);
alter table pa_monitoring.protocol_b_reprofiling add column quadrat_uid varchar(50);


















