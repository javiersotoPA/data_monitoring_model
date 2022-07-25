CREATE SEQUENCE sequence_quadrats
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

drop table if exists pa_monitoring.quadrats_test;
CREATE TABLE pa_monitoring.quadrats_test
(
  quadrat_uid character varying NOT NULL,
  sample_data_col character varying,
  CONSTRAINT quadrats_uid_pkey PRIMARY KEY (quadrat_uid)
)
;

ALTER TABLE pa_monitoring.quadrats_test ALTER COLUMN quadrat_uid SET DEFAULT TO_CHAR(nextval('sequence_quadrats'::regclass),'"quadratuid_"fm000000');

insert into pa_monitoring.quadrats_test (sample_data_col) VALUES ('flloded'), ('whatever_1'),('bare_peat');

select * from pa_monitoring.quadrats_test;

----------plots
CREATE SEQUENCE sequence_plots
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

drop table if exists pa_monitoring.plots_test;

CREATE TABLE pa_monitoring.plots_test
(
  plot_uid character varying NOT NULL,
  sample_data_col character varying,
  CONSTRAINT plots_uid_pkey PRIMARY KEY (plot_uid)
)
;

ALTER TABLE pa_monitoring.plots_test ALTER COLUMN plot_uid SET DEFAULT TO_CHAR(nextval('sequence_plots'::regclass),'"plotuid_"fm000000');

insert into pa_monitoring.plots_test (sample_data_col) VALUES ('flloded'), ('whatever_1'),('bare_peat');

select * from pa_monitoring.plots_test;






























