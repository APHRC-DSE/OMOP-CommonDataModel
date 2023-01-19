--postgresql CDM Primary Key Constraints for OMOP Common Data Model 5.4

ALTER TABLE cdm6.PERSON ADD CONSTRAINT xpk_PERSON PRIMARY KEY (person_id);

ALTER TABLE cdm6.OBSERVATION_PERIOD ADD CONSTRAINT xpk_OBSERVATION_PERIOD PRIMARY KEY (observation_period_id);

ALTER TABLE cdm6.VISIT_OCCURRENCE ADD CONSTRAINT xpk_VISIT_OCCURRENCE PRIMARY KEY (visit_occurrence_id);

ALTER TABLE cdm6.VISIT_DETAIL ADD CONSTRAINT xpk_VISIT_DETAIL PRIMARY KEY (visit_detail_id);

ALTER TABLE cdm6.CONDITION_OCCURRENCE ADD CONSTRAINT xpk_CONDITION_OCCURRENCE PRIMARY KEY (condition_occurrence_id);

ALTER TABLE cdm6.DRUG_EXPOSURE ADD CONSTRAINT xpk_DRUG_EXPOSURE PRIMARY KEY (drug_exposure_id);

ALTER TABLE cdm6.PROCEDURE_OCCURRENCE ADD CONSTRAINT xpk_PROCEDURE_OCCURRENCE PRIMARY KEY (procedure_occurrence_id);

ALTER TABLE cdm6.DEVICE_EXPOSURE ADD CONSTRAINT xpk_DEVICE_EXPOSURE PRIMARY KEY (device_exposure_id);

ALTER TABLE cdm6.MEASUREMENT ADD CONSTRAINT xpk_MEASUREMENT PRIMARY KEY (measurement_id);

ALTER TABLE cdm6.OBSERVATION ADD CONSTRAINT xpk_OBSERVATION PRIMARY KEY (observation_id);

ALTER TABLE cdm6.NOTE ADD CONSTRAINT xpk_NOTE PRIMARY KEY (note_id);

ALTER TABLE cdm6.NOTE_NLP ADD CONSTRAINT xpk_NOTE_NLP PRIMARY KEY (note_nlp_id);

ALTER TABLE cdm6.SPECIMEN ADD CONSTRAINT xpk_SPECIMEN PRIMARY KEY (specimen_id);

ALTER TABLE cdm6.SURVEY_CONDUCT ADD CONSTRAINT xpk_SURVEY_CONDUCT PRIMARY KEY (survey_conduct_id);

ALTER TABLE cdm6.LOCATION ADD CONSTRAINT xpk_LOCATION PRIMARY KEY (location_id);

ALTER TABLE cdm6.CARE_SITE ADD CONSTRAINT xpk_CARE_SITE PRIMARY KEY (care_site_id);

ALTER TABLE cdm6.PROVIDER ADD CONSTRAINT xpk_PROVIDER PRIMARY KEY (provider_id);

ALTER TABLE cdm6.PAYER_PLAN_PERIOD ADD CONSTRAINT xpk_PAYER_PLAN_PERIOD PRIMARY KEY (payer_plan_period_id);

ALTER TABLE cdm6.COST ADD CONSTRAINT xpk_COST PRIMARY KEY (cost_id);

ALTER TABLE cdm6.DRUG_ERA ADD CONSTRAINT xpk_DRUG_ERA PRIMARY KEY (drug_era_id);

ALTER TABLE cdm6.DOSE_ERA ADD CONSTRAINT xpk_DOSE_ERA PRIMARY KEY (dose_era_id);

ALTER TABLE cdm6.CONDITION_ERA ADD CONSTRAINT xpk_CONDITION_ERA PRIMARY KEY (condition_era_id);

ALTER TABLE cdm6.METADATA ADD CONSTRAINT xpk_METADATA PRIMARY KEY (metadata_concept_id);

ALTER TABLE cdm6.CONCEPT ADD CONSTRAINT xpk_CONCEPT PRIMARY KEY (concept_id);

ALTER TABLE cdm6.VOCABULARY ADD CONSTRAINT xpk_VOCABULARY PRIMARY KEY (vocabulary_id);

ALTER TABLE cdm6.DOMAIN ADD CONSTRAINT xpk_DOMAIN PRIMARY KEY (domain_id);

ALTER TABLE cdm6.CONCEPT_CLASS ADD CONSTRAINT xpk_CONCEPT_CLASS PRIMARY KEY (concept_class_id);

ALTER TABLE cdm6.RELATIONSHIP ADD CONSTRAINT xpk_RELATIONSHIP PRIMARY KEY (relationship_id);

ALTER TABLE cdm6.DRUG_STRENGTH ADD CONSTRAINT xpk_DRUG_STRENGTH PRIMARY KEY (drug_concept_id);

ALTER TABLE cdm6.COHORT_DEFINITION ADD CONSTRAINT xpk_COHORT_DEFINITION PRIMARY KEY (cohort_definition_id);



