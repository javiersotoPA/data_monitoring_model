--------------------------------------------------------------------------------------------------------------------
------------------------------------------------- Create lu tables -------------------------------------------------
--------------------------------------------------------------------------------------------------------------------

CREATE TABLE pa_metadata.lu_land_management (    uid SERIAL,    CONSTRAINT lu_land_management_pk PRIMARY KEY (uid) );
ALTER TABLE pa_metadata.lu_land_management ADD COLUMN land_management VARCHAR;
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (1, 'Domestic peat extraction');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (2, 'Commercial peat extraction');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (3, 'Rough grazing-sheep');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (4, 'Rough grazing-cattle');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (5, 'Improved grassland');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (6, 'Deer management');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (7, 'Grouse management');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (8, 'Forestry');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (9, 'Nature conservation');
INSERT INTO pa_metadata.lu_land_management (uid , land_management) VALUES (10, 'Other');

Alter table pa_metadata.lu_land_management rename to lu_monitoring_land_management;

-- lu_pre_restoration_condition_cat

CREATE TABLE pa_metadata.lu_monitoring_prerestoration_cat (    uid SERIAL,    CONSTRAINT lu_pre_restoration_condition_cat_pk PRIMARY KEY (uid) );
ALTER TABLE pa_metadata.lu_monitoring_prerestoration_cat ADD COLUMN pre_restoration_cat VARCHAR;
INSERT INTO pa_metadata.lu_monitoring_prerestoration_cat (uid , pre_restoration_cat) VALUES (1, 'Actively eroding');
INSERT INTO pa_metadata.lu_monitoring_prerestoration_cat (uid , pre_restoration_cat) VALUES (2, 'Drained blanket bog');
INSERT INTO pa_metadata.lu_monitoring_prerestoration_cat (uid , pre_restoration_cat) VALUES (3, 'Drained raised bog');
INSERT INTO pa_metadata.lu_monitoring_prerestoration_cat (uid , pre_restoration_cat) VALUES (4, 'Forestry on bog');

-- lu_vegetation_species

CREATE TABLE pa_metadata.lu_monitoring_veg_species (    uid SERIAL,    CONSTRAINT lu_monitoring_veg_species_pk PRIMARY KEY (uid) );
ALTER TABLE pa_metadata.lu_monitoring_veg_species ADD COLUMN veg_sp VARCHAR;
ALTER TABLE pa_metadata.lu_monitoring_veg_species ADD COLUMN genus VARCHAR(20);
ALTER TABLE pa_metadata.lu_monitoring_veg_species ADD COLUMN specific VARCHAR(2);
ALTER TABLE pa_metadata.lu_monitoring_veg_species ADD COLUMN key VARCHAR(4);
ALTER TABLE pa_metadata.lu_monitoring_veg_species ADD COLUMN dict JSON;
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (1, 'Agrostis_capillaris', 'AG', 'CA', 'AGCA', '{
}
');
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (2, 'Agrostis_stolonifera', 'AG', 'ST', 'AGST', '{
}
');
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (3, 'Agrostis_vinealis', 'AG', 'VI', 'AGVI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (4, 'Algae_species', 'AL', 'SP', 'ALSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (5, 'Andromeda_polifolia', 'AN', 'PO', 'ANPO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (6, 'Anthoxanthum_odoratum', 'AN', 'OD', 'ANOD', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (7, 'Aulacomnium_palustre', 'AU', 'PA', 'AUPA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (8, 'Betula_pendula', 'BE', 'PE', 'BEPE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (9, 'Betula_pendula_canopy', 'BE', 'PE', 'BEPE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (10, 'Betula_pubescens', 'BE', 'PU', 'BEPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (11, 'Betula_pubescens_canopy', 'BE', 'PU', 'BEPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (12, 'Betula_pubescens_sapling', 'BE', 'PU', 'BEPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (13, 'Betula_pubescens_seedling', 'BE', 'PU', 'BEPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (14, 'Betula_species', 'BE', 'SP', 'BESP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (15, 'Blechnum_spicant', 'BL', 'SP', 'BLSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (16, 'Brachythecium_rutabulum', 'BR', 'RU', 'BRRU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (17, 'Brachythecium_species', 'BR', 'SP', 'BRSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (18, 'Calliergon_cuspidatum', 'CA', 'CU', 'CACU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (19, 'Calluna_vulgaris', 'CA', 'VU', 'CAVU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (20, 'Calluna_vulgaris_dead', 'CA', 'VU', 'CAVU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (21, 'Calypogeia_species', 'CA', 'SP', 'CASP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (22, 'Campylopus_atrovirens', 'CA', 'AT', 'CAAT', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (23, 'Campylopus_flexuosus', 'CA', 'FL', 'CAFL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (24, 'Campylopus_introflexus', 'CA', 'IN', 'CAIN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (25, 'Campylopus_pyriformis', 'CA', 'PY', 'CAPY', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (26, 'Campylopus_species', 'CA', 'SP', 'CASP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (27, 'Cardamine_flexuosa', 'CA', 'FL', 'CAFL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (28, 'Carex_bigelowii', 'CA', 'BI', 'CABI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (29, 'Carex_curta', 'CA', 'CU', 'CACU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (30, 'Carex_echinata', 'CA', 'EC', 'CAEC', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (31, 'Carex_flacca', 'CA', 'FL', 'CAFL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (32, 'Carex_nigra', 'CA', 'NI', 'CANI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (33, 'Carex_panicea', 'CA', 'PA', 'CAPA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (34, 'Carex_rostrata', 'CA', 'RO', 'CARO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (35, 'Carex_species', 'CA', 'SP', 'CASP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (36, 'Cerastium_fontanum', 'CE', 'FO', 'CEFO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (37, 'Chamerion_angustifolium', 'CH', 'AN', 'CHAN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (38, 'Cladonia_arbuscula', 'CL', 'AR', 'CLAR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (39, 'Cladonia_coccifera', 'CL', 'CO', 'CLCO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (40, 'Cladonia_crustose', 'CL', 'CR', 'CLCR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (41, 'Cladonia_floerkeana', 'CL', 'FL', 'CLFL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (42, 'Cladonia_incrassata', 'CL', 'IN', 'CLIN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (43, 'Cladonia_portentosa', 'CL', 'PO', 'CLPO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (44, 'Cladonia_pyxidata', 'CL', 'PY', 'CLPY', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (45, 'Cladonia_rangiforms', 'CL', 'RA', 'CLRA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (46, 'Cladonia_species', 'CL', 'SP', 'CLSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (47, 'Cladonia_species_crustose', 'CL', 'SP', 'CLSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (48, 'Cladonia_uncialis', 'CL', 'UN', 'CLUN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (49, 'Crataegus_monogyna', 'CR', 'MO', 'CRMO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (50, 'Dactylorhiza_fuschii', 'DA', 'FU', 'DAFU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (51, 'Deschampsia_cespitosa', 'DE', 'CE', 'DECE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (52, 'Deschampsia_flexuosa', 'DE', 'FL', 'DEFL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (53, 'Dicranella_heteromalla', 'DI', 'HE', 'DIHE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (54, 'Dicranella_species', 'DI', 'SP', 'DISP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (55, 'Dicranum_majus', 'DI', 'MA', 'DIMA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (56, 'Dicranum_scoparium', 'DI', 'SC', 'DISC', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (57, 'Diplophyllum_albicans', 'DI', 'AL', 'DIAL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (58, 'Drosera_anglica', 'DR', 'AN', 'DRAN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (59, 'Drosera_rotundifolia', 'DR', 'RO', 'DRRO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (60, 'Dryopteris_carthusiana', 'DR', 'CA', 'DRCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (61, 'Dryopteris_dilatata', 'DR', 'DI', 'DRDI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (62, 'Dryopteris_felix_mas', 'DR', 'FE', 'DRFE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (63, 'Dryopteris_species', 'DR', 'SP', 'DRSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (64, 'Empetrum_nigrum', 'EM', 'NI', 'EMNI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (65, 'Epilobium_lanceolatum', 'EP', 'LA', 'EPLA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (66, 'Epilobium_montanum', 'EP', 'MO', 'EPMO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (67, 'Epilobium_species', 'EP', 'SP', 'EPSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (68, 'Equisetum_arvense', 'EQ', 'AR', 'EQAR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (69, 'Equisetum_palustre', 'EQ', 'PA', 'EQPA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (70, 'Erica_cinerea', 'ER', 'CI', 'ERCI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (71, 'Erica_tetralix', 'ER', 'TE', 'ERTE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (72, 'Eriophorum_angustifolium', 'ER', 'AN', 'ERAN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (73, 'Eriophorum_vaginatum', 'ER', 'VA', 'ERVA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (74, 'Eurhynchium_praelongum', 'EU', 'PR', 'EUPR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (75, 'Festuca_ovina', 'FE', 'OV', 'FEOV', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (76, 'Fruticose_lichen', 'FR', 'LI', 'FRLI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (77, 'Fruticose_lichen_white', 'FR', 'LI', 'FRLI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (78, 'Fumaria_capreolata', 'FU', 'CA', 'FUCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (79, 'Galium_saxatile', 'GA', 'SA', 'GASA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (80, 'Glyceria_species', 'GL', 'SP', 'GLSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (81, 'Holcus_lanatus', 'HO', 'LA', 'HOLA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (82, 'Huperzia_selago', 'HU', 'SE', 'HUSE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (83, 'Hylocomium_splendens', 'HY', 'SP', 'HYSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (84, 'Hypnum_cupressiforme', 'HY', 'CU', 'HYCU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (85, 'Hypnum_jutlandicum', 'HY', 'JU', 'HYJU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (86, 'Ilex_aquifolium_sapling', 'IL', 'AQ', 'ILAQ', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (87, 'Juncus_acutiflorus', 'JU', 'AC', 'JUAC', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (88, 'Juncus_articulatus', 'JU', 'AR', 'JUAR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (89, 'Juncus_bufonius', 'JU', 'BU', 'JUBU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (90, 'Juncus_bulbosus', 'JU', 'BU', 'JUBU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (91, 'Juncus_effusus', 'JU', 'EF', 'JUEF', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (92, 'Juncus_inflexus', 'JU', 'IN', 'JUIN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (93, 'Juncus_squarrosus', 'JU', 'SQ', 'JUSQ', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (94, 'Kindbergia_praelonga', 'KI', 'PR', 'KIPR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (95, 'Leucobryum_glaucum', 'LE', 'GL', 'LEGL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (96, 'Lichen', 'LI', NULL, 'LICH', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (97, 'Liverwort', 'LI', NULL, 'LIVE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (98, 'Lophocolea_bidentata', 'LO', 'BI', 'LOBI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (99, 'Luzula_campestris', 'LU', 'CA', 'LUCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (100, 'Luzula_multiflora', 'LU', 'MU', 'LUMU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (101, 'Luzula_pilosa', 'LU', 'PI', 'LUPI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (102, 'Luzula_species', 'LU', 'SP', 'LUSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (103, 'Mnium_hornum', 'MN', 'HO', 'MNHO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (104, 'Molinia_caerulea', 'MO', 'CA', 'MOCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (105, 'Mylia_anomala', 'MY', 'AN', 'MYAN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (106, 'Mylia_taylorii', 'MY', 'TA', 'MYTA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (107, 'Myrica_gale', 'MY', 'GA', 'MYGA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (108, 'Nardus_stricta', 'NA', 'ST', 'NAST', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (109, 'Narthecium_ossifragum', 'NA', 'OS', 'NAOS', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (110, 'Neottia_cordata', 'NE', 'CO', 'NECO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (111, 'Odontoschisma_sphagni', 'OD', 'SP', 'ODSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (112, 'Oxalis_acetosella', 'OX', 'AC', 'OXAC', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (113, 'Parmelia_species', 'PA', 'SP', 'PASP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (114, 'Pedicularis_species', 'PE', 'SP', 'PESP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (115, 'Pedicularis_sylvatica', 'PE', 'SY', 'PESY', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (116, 'Peltigera_species', 'PE', 'SP', 'PESP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (117, 'Persicaria_maculosa', 'PE', 'MA', 'PEMA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (118, 'Philonotis_fontana', 'PH', 'FO', 'PHFO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (119, 'Picea_sitchensis', 'PI', 'SI', 'PISI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (120, 'Picea_sitchensis_canopy', 'PI', 'SI', 'PISI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (121, 'Picea_sitchensis_sapling', 'PI', 'SI', 'PISI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (122, 'Picea_sitchensis_seedling', 'PI', 'SI', 'PISI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (123, 'Picea_species', 'PI', 'SP', 'PISP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (124, 'Picea_species_canopy', 'PI', 'SP', 'PISP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (125, 'Pinguicula_species', 'PI', 'SP', 'PISP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (126, 'Pinguicula_vulgaris', 'PI', 'VU', 'PIVU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (127, 'Pinus_species', 'PI', 'SP', 'PISP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (128, 'Pinus_species_seedling', 'PI', 'SP', 'PISP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (129, 'Pinus_sylvestris', 'PI', 'SY', 'PISY', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (130, 'Pinus_sylvestris_seedling', 'PI', 'SY', 'PISY', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (131, 'Plagiothecium_species', 'PL', 'SP', 'PLSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (132, 'Plagiothecium_undulatum', 'PL', 'UN', 'PLUN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (133, 'Pleurozia_purpurea', 'PL', 'PU', 'PLPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (134, 'Pleurozium_schreberi', 'PL', 'SC', 'PLSC', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (135, 'Poa_annua', 'PO', 'AN', 'POAN', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (136, 'Poa_trivialis', 'PO', 'TR', 'POTR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (137, 'Polygala_serpyllifolia', 'PO', 'SE', 'POSE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (138, 'Polygala_species', 'PO', 'SP', 'POSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (139, 'Polygonum_aviculare', 'PO', 'AV', 'POAV', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (140, 'Polytrichum_commune', 'PO', 'CO', 'POCO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (141, 'Polytrichum_formosum', 'PO', 'FO', 'POFO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (142, 'Polytrichum_juniperinum', 'PO', 'JU', 'POJU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (143, 'Polytrichum_species', 'PO', 'SP', 'POSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (144, 'Polytrichum_strictum', 'PO', 'ST', 'POST', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (145, 'Potentilla_erecta', 'PO', 'ER', 'POER', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (146, 'Pseudoscleropodium_purum', 'PS', 'PU', 'PSPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (147, 'Pteridium_aquilinum', 'PT', 'AQ', 'PTAQ', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (148, 'Ptilidium_ciliare', 'PT', 'CI', 'PTCI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (149, 'Quercus_petraea', 'QU', 'PE', 'QUPE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (150, 'Racomitrium_lanuginosum', 'RA', 'LA', 'RALA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (151, 'Ranunculus_repens', 'RA', 'RE', 'RARE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (152, 'Rhynchospora_alba', 'RH', 'AL', 'RHAL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (153, 'Rhytidiadelphus_loreus', 'RH', 'LO', 'RHLO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (154, 'Rhytidiadelphus_species', 'RH', 'SP', 'RHSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (155, 'Rhytidiadelphus_squarrosus', 'RH', 'SQ', 'RHSQ', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (156, 'Rhytidiadelphus_triquetrus', 'RH', 'TR', 'RHTR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (157, 'Rosa_canina', 'RO', 'CA', 'ROCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (158, 'Rubus_chamaemorus', 'RU', 'CH', 'RUCH', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (159, 'Rubus_fruticosus', 'RU', 'FR', 'RUFR', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (160, 'Rubus_idaeus', 'RU', 'ID', 'RUID', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (161, 'Rumex_obtusifolius', 'RU', 'OB', 'RUOB', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (162, 'Salix_cinerea_seedling', 'SA', 'CI', 'SACI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (163, 'Scapania_nemorea', 'SC', 'NE', 'SCNE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (164, 'Sorbus_aucuparia', 'SO', 'AU', 'SOAU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (165, 'Sorbus_aucuparia_seedling', 'SO', 'AU', 'SOAU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (166, 'Sphagnum_auriculatum', 'SP', 'AU', 'SPAU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (167, 'Sphagnum_capillifolium', 'SP', 'CA', 'SPCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (168, 'Sphagnum_capillifolium_subsp_capillifolium', 'SP', 'CA', 'SPCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (169, 'Sphagnum_capillifolium_subsp_rubellum', 'SP', 'CA', 'SPCA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (170, 'Sphagnum_compactum', 'SP', 'CO', 'SPCO', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (171, 'Sphagnum_cuspidatum', 'SP', 'CU', 'SPCU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (172, 'Sphagnum_denticulatum', 'SP', 'DE', 'SPDE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (173, 'Sphagnum_fallax', 'SP', 'FA', 'SPFA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (174, 'Sphagnum_fimbriatum', 'SP', 'FI', 'SPFI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (175, 'Sphagnum_fuscum', 'SP', 'FU', 'SPFU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (176, 'Sphagnum_magellanicum', 'SP', 'MA', 'SPMA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (177, 'Sphagnum_majus', 'SP', 'MA', 'SPMA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (178, 'Sphagnum_palustre', 'SP', 'PA', 'SPPA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (179, 'Sphagnum_papillosum', 'SP', 'PA', 'SPPA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (180, 'Sphagnum_pulchrum', 'SP', 'PU', 'SPPU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (181, 'Sphagnum_recurvum', 'SP', 'RE', 'SPRE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (182, 'Sphagnum_rubellum', 'SP', 'RU', 'SPRU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (183, 'Sphagnum_species', 'SP', 'SP', 'SPSP', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (184, 'Sphagnum_squarrosum', 'SP', 'SQ', 'SPSQ', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (185, 'Sphagnum_squarrosum_papillosum', 'SP', 'SQ', 'SPSQ', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (186, 'Sphagnum_subnitens', 'SP', 'SU', 'SPSU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (187, 'Sphagnum_subsecundum', 'SP', 'SU', 'SPSU', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (188, 'Sphagnum_tenellum', 'SP', 'TE', 'SPTE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (189, 'Stellaria_alsine', 'ST', 'AL', 'STAL', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (190, 'Thuidium_tamariscinum', 'TH', 'TA', 'THTA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (191, 'Trichophorum_cespitosum', 'TR', 'CE', 'TRCE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (192, 'Trichophorum_germanicum', 'TR', 'GE', 'TRGE', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (193, 'Triglochin_palustre', 'TR', 'PA', 'TRPA', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (194, 'Vaccinium_microcarpum', 'VA', 'MI', 'VAMI', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (195, 'Vaccinium_myrtillus', 'VA', 'MY', 'VAMY', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (196, 'Vaccinium_oxycoccos', 'VA', 'OX', 'VAOX', NULL);
INSERT INTO pa_metadata.lu_monitoring_veg_species (uid , veg_sp, genus, specific, key, dict) VALUES (197, 'Vaccinium_vitis_idaea', 'VA', 'VI', 'VAVI', NULL);


ALTER TABLE pa_metadata.lu_monitoring_veg_species
ADD CONSTRAINT veg_sp_uniq UNIQUE (veg_sp);


-- lu dung table


CREATE TABLE pa_metadata.lu_monitoring_dung (    uid SERIAL,    CONSTRAINT lu_dung_pk PRIMARY KEY (uid) );
ALTER TABLE pa_metadata.lu_monitoring_dung ADD COLUMN dung VARCHAR(20);
INSERT INTO pa_metadata.lu_monitoring_dung (uid , dung) VALUES (1, 'rabbit');
INSERT INTO pa_metadata.lu_monitoring_dung (uid , dung) VALUES (2, 'mountain hare');
INSERT INTO pa_metadata.lu_monitoring_dung (uid , dung) VALUES (3, 'sheep');
INSERT INTO pa_metadata.lu_monitoring_dung (uid , dung) VALUES (4, 'cattle');
INSERT INTO pa_metadata.lu_monitoring_dung (uid , dung) VALUES (5, 'deer');

drop table if exists pa_monitoring.lu_monitoring_dung;


-- lu browsing table 

CREATE TABLE pa_metadata.lu_monitoring_browsing (    uid SERIAL,    CONSTRAINT lu_browsing_pk PRIMARY KEY (uid) );
ALTER TABLE pa_metadata.lu_monitoring_browsing ADD COLUMN browsing VARCHAR(20);
INSERT INTO pa_metadata.lu_monitoring_browsing (uid , browsing) VALUES (1, 'Light');
INSERT INTO pa_metadata.lu_monitoring_browsing (uid , browsing) VALUES (2, 'Moderate');
INSERT INTO pa_metadata.lu_monitoring_browsing (uid , browsing) VALUES (3, 'Heavy');

ALTER TABLE pa_metadata.lu_monitoring_browsing
ADD CONSTRAINT browsing_type_uniq UNIQUE (browsing);


-- lu aspect

CREATE TABLE pa_metadata.lu_monitoring_aspect (    uid SERIAL,    CONSTRAINT lu_aspect_pk PRIMARY KEY (uid) );
ALTER TABLE pa_metadata.lu_monitoring_aspect ADD COLUMN aspect VARCHAR(10);
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (1, 'N');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (2, 'NE');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (3, 'E');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (4, 'SE');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (5, 'S');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (6, 'SW');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (7, 'W');
INSERT INTO pa_metadata.lu_monitoring_aspect (uid , aspect) VALUES (8, 'NW');

ALTER TABLE pa_metadata.lu_monitoring_aspect
ADD CONSTRAINT aspect_type_uniq UNIQUE (aspect);


--------------------------------------------------------------------------------------------------------------------
------------------------------------------------------- QUADRATS ---------------------------------------------------
--------------------------------------------------------------------------------------------------------------------
drop table if exists pa_monitoring.quadrats;

CREATE TABLE pa_monitoring.quadrats ( 
	uid integer NOT NULL GENERATED ALWAYS AS IDENTITY ( INCREMENT 1 START 1 MINVALUE 1 MAXVALUE 2147483647 CACHE 1 ),    
							  CONSTRAINT quadrats_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.quadrats ADD COLUMN quadrat_id VARCHAR(20) not null;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN grant_id VARCHAR(50) not null;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN sample_zone_id INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN plot_id VARCHAR(10) not null;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN x_coordinate FLOAT8;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN y_coordinate FLOAT8;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN altitude INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN aspect VARCHAR(10);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN slope INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN browsing VARCHAR(20);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN date timestamp with time zone;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN disturbance VARCHAR(100);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN bare_ground_cover INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN bare_rock_cover INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN litter_cover INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN open_water_cover INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN tree_cover INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_rabbit INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_cattle INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_deer INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_mountain_hare INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_sheep INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_others INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN dung_comments VARCHAR(50);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_A1 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_A2 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_A3 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_A4 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_T1 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_T2 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_T3 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_T4 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN microtopography_cover_T5 INTEGER;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN OSGRID_field VARCHAR(20);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN x_coordinate_field FLOAT8;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN y_coordinate_field FLOAT8;
ALTER TABLE pa_monitoring.quadrats ADD COLUMN type VARCHAR(50);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN stratus_type VARCHAR(50);
ALTER TABLE pa_monitoring.quadrats ADD COLUMN peat_depth FLOAT8;
SELECT AddGeometryColumn('pa_monitoring','quadrats','geom',27700,'POINT',2);
CREATE INDEX quadrats_geom_geom_idx ON pa_monitoring.quadrats USING GIST (geom);


ALTER table pa_monitoring.quadrats ADD CONSTRAINT aspect_type_fkey FOREIGN KEY (aspect)
        REFERENCES pa_metadata.lu_monitoring_aspect (aspect) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        DEFERRABLE;



ALTER TABLE pa_monitoring.quadrats
    ADD CONSTRAINT aspect_type_fkey FOREIGN KEY (aspect) REFERENCES pa_metadata.lu_monitoring_aspect (aspect);
	
ALTER TABLE pa_monitoring.quadrats
ADD CONSTRAINT browsing_type_fkey FOREIGN KEY (browsing) REFERENCES pa_metadata.lu_monitoring_browsing (browsing);




--------------------------------------------------------------------------------------------------------------------
---------------------------------------------- PLOT, SAMPLE ZONE, STRATUS ------------------------------------------
--------------------------------------------------------------------------------------------------------------------




CREATE TABLE pa_monitoring.plots (    uid SERIAL,    CONSTRAINT plots_pk PRIMARY KEY (uid) );
SELECT AddGeometryColumn('pa_monitoring','plots','geom',27700,'MULTIPOLYGON',2);
CREATE INDEX plots_geom_geom_idx ON pa_monitoring.plots USING GIST (geom);
ALTER TABLE pa_monitoring.plots ADD COLUMN plot_id VARCHAR(20);
ALTER TABLE pa_monitoring.plots ADD COLUMN type VARCHAR(50);
ALTER TABLE pa_monitoring.plots ADD COLUMN sample_zone_id INTEGER;
COMMIT;
BEGIN;
CREATE TABLE pa_monitoring.sample_zone (    uid SERIAL,    CONSTRAINT sample_zone_pk PRIMARY KEY (uid) );
SELECT AddGeometryColumn('pa_monitoring','sample_zone','geometry',27700,'MULTIPOLYGON',2);
CREATE INDEX sample_zone_geometry_geom_idx ON pa_monitoring.sample_zone USING GIST (geometry);
ALTER TABLE pa_monitoring.sample_zone ADD COLUMN type VARCHAR(50);
ALTER TABLE pa_monitoring.sample_zone ADD COLUMN sample_zone_id INTEGER;
COMMIT;
BEGIN;
CREATE TABLE pa_monitoring.target_stratus (    uid SERIAL,    CONSTRAINT target_stratus_pk PRIMARY KEY (uid) );
SELECT AddGeometryColumn('pa_monitoring','target_stratus','geometry',27700,'MULTIPOLYGON',2);
CREATE INDEX target_stratus_geometry_geom_idx ON pa_monitoring.target_stratus USING GIST (geometry);
ALTER TABLE pa_monitoring.target_stratus ADD COLUMN target_id INTEGER;
ALTER TABLE pa_monitoring.target_stratus ADD COLUMN plot_id INTEGER;
ALTER TABLE pa_monitoring.target_stratus ADD COLUMN type VARCHAR(50);
ALTER TABLE pa_monitoring.target_stratus ADD COLUMN sample_zone_id INTEGER;
COMMIT;
BEGIN;
CREATE TABLE pa_monitoring.background_stratus (    uid SERIAL,    CONSTRAINT background_stratus_pk PRIMARY KEY (uid) );
SELECT AddGeometryColumn('pa_monitoring','background_stratus','geometry',27700,'MULTIPOLYGON',2);
CREATE INDEX background_stratus_geometry_geom_idx ON pa_monitoring.background_stratus USING GIST (geometry);
ALTER TABLE pa_monitoring.background_stratus ADD COLUMN background_stratus_id INTEGER;
ALTER TABLE pa_monitoring.background_stratus ADD COLUMN plot_id INTEGER;
ALTER TABLE pa_monitoring.background_stratus ADD COLUMN type VARCHAR(50);
ALTER TABLE pa_monitoring.background_stratus ADD COLUMN sample_zone_id INTEGER;
COMMIT;


--------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ Protocl D and E ---------------------------------------------
--------------------------------------------------------------------------------------------------------------------


CREATE TABLE pa_monitoring.protocol_d_peat_humification (    uid SERIAL,    CONSTRAINT protocol_d_peat_humification_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_d_peat_humification ADD COLUMN scale VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_d_peat_humification ADD COLUMN comments VARCHAR(200);
ALTER TABLE pa_monitoring.protocol_d_peat_humification ADD COLUMN quadrat_id_fk VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_d_peat_humification ADD COLUMN plot_id VARCHAR(10);


CREATE TABLE pa_monitoring.protocol_e_photography (    uid SERIAL,    CONSTRAINT protocol_e_photography_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN date timestamp with time zone;
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN surveyor_initials VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN bearing INTEGER;
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN photo_reference VARCHAR(200);
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN quadrat_id_fk VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN comments VARCHAR(200);
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN photo VARCHAR(200);
ALTER TABLE pa_monitoring.protocol_e_photography ADD COLUMN plot_id VARCHAR(10);























--------------------------------------------------------------------------------------------------------------------
------------------------------------------------ PROTOCOL C VEGETATION ---------------------------------------------
--------------------------------------------------------------------------------------------------------------------

CREATE TABLE pa_monitoring.protocol_c_vegetation (    uid SERIAL,    CONSTRAINT protocol_c_vegetation_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN grant_id VARCHAR(50) not null;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN plot_id VARCHAR(20);
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN name VARCHAR(50);
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN percentage_coverage INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN quadrat_id_fk VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN quadrat_uid integer;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_1 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_2 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_3 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_4 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_5 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_6 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_7 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_8 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_9 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_10 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_11 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_12 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_13 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_14 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_15 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_vegetation ADD COLUMN cell_16 INTEGER;


ALTER table pa_monitoring.protocol_c_vegetation ADD CONSTRAINT veg_sp_fkey FOREIGN KEY (name)
        REFERENCES pa_metadata.lu_monitoring_veg_species (veg_sp) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        DEFERRABLE;


ALTER TABLE pa_monitoring.protocol_c_vegetation
ADD CONSTRAINT quadrat_uid_fkey FOREIGN KEY (quadrat_uid)
        REFERENCES pa_monitoring.quadrats (uid) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED;

CREATE TABLE pa_monitoring.protocol_c_trampling (    uid SERIAL,    CONSTRAINT protocol_c_trampling_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN plot_id VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN quadrat_id_fk VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN quadrat_uid integer;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_1 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_2 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_3 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_4 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_5 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_6 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_7 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_8 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_9 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_10 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_11 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_12 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_13 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_14 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_15 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_trampling ADD COLUMN cell_16 INTEGER;

ALTER TABLE pa_monitoring.protocol_c_trampling
ADD CONSTRAINT quadrat_uid_fkey FOREIGN KEY (quadrat_uid)
        REFERENCES pa_monitoring.quadrats (uid) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED;
		
		
CREATE TABLE pa_monitoring.protocol_c_height (    uid SERIAL,    CONSTRAINT protocol_c_height_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN quadrat_id_fk VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN quadrat_uid integer;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_1 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_2 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_3 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_4 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_5 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_6 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_7 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_8 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_9 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_10 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_11 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_12 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_13 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_14 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_15 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN cell_16 INTEGER;
ALTER TABLE pa_monitoring.protocol_c_height ADD COLUMN plot_id VARCHAR(10);



ALTER TABLE pa_monitoring.protocol_c_height
ADD CONSTRAINT quadrat_uid_fkey FOREIGN KEY (quadrat_uid)
        REFERENCES pa_monitoring.quadrats (uid) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE NO ACTION
        DEFERRABLE INITIALLY DEFERRED;


--------------------------------------------------------------------------------------------------------------------
------------------------------------------------------ PROTOCOL B --------------------------------------------------
--------------------------------------------------------------------------------------------------------------------


CREATE TABLE pa_monitoring.protocol_b_reprofiling (    uid SERIAL,    CONSTRAINT protocol_b_reprofiling_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN plot_id VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN type VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN reprofiled_area_intact VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN turfs_slipped VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN turfs_fallen_flipped VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN turfs_dieback VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN ongoing_erosion VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN water_erosion VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN trampling_erosion VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN trampling_species VARCHAR(50);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN vegetation_colonisation VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN angle_reprofiled_sides INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_bare_peat INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN id INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN quadrat_id_fk VARCHAR(20);
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_heather INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_other_dwarf_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_purple_moor_grass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_other_grasses INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_hare_tail_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_common_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_deergrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_all_rushes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_sphagnum_sp INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_other_bryophytes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_lichen_species INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_trees_and_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_bare_rock INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_open_water INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_mineral_soil INTEGER;
ALTER TABLE pa_monitoring.protocol_b_reprofiling ADD COLUMN coverage_mulch_debris INTEGER;


CREATE TABLE pa_monitoring.protocol_b_unbloking (    uid SERIAL,    CONSTRAINT protocol_b_unbloking_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN plot_id VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN type VARCHAR(50);
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN active_water_flow VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN water_flow_speed VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_bare_peat INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_open_water INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN id INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN quadrat_id_fk VARCHAR(20);
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_heather INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_dwarf_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_purple_moor_grass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_other_grasses INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_hares_tail_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_common_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_deergrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_all_rushes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_sphagnum INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_other_bryophytes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_lichen_sp INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_trees_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_bare_rock INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_mineral_soil INTEGER;
ALTER TABLE pa_monitoring.protocol_b_unbloking ADD COLUMN coverage_mulch_debris INTEGER;


CREATE TABLE pa_monitoring.protocol_b_blocking (    uid SERIAL,    CONSTRAINT protocol_b_blocking_pk PRIMARY KEY (uid) );
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN plot_id VARCHAR(10);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN id INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN type VARCHAR(20);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN blocking_feature_intact VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN erosion_under_blocking VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN trampling VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN trampling_species VARCHAR(200);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN water_retained VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN water_depth INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN sediments VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN veg_on_blocking VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN veg_on_pool VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN veg_pool_bog_species VARCHAR(200);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_discernible VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_veg_colonisation VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_size INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_bare_peat INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_open_water INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN quadrat_id_fk VARCHAR(20);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_heather INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_other_dwarf_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_purple_moor_grass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_other_grasses INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_hares_trail_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_common_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_deergrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_all_rushes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_sphagum_sp INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_other_bryophytes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_lichen INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_trees_and_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_bare_rock INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_mineral_soil INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN pit_cover_mulch_debris INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN water_active_flow VARCHAR(5);
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN water_distributed_across_surface INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_bare_peat INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_bare_rock INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_open_water INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_heather INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_other_dwarf_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_purple_moor_grass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_other_grasses INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_hares_tail INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_common_cottongrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_deergrass INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_all_rushes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_sphagnum_sp INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_other_bryophytes INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_lichen_sp INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_trees_shrubs INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_mineral INTEGER;
ALTER TABLE pa_monitoring.protocol_b_blocking ADD COLUMN bbf_cover_mulch INTEGER;

























