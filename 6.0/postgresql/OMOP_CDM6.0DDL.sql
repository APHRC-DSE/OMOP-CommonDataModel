/* DDL for OMOP6.0 */

SET SEARCH_PATH TO cdm6;

/* person */
CREATE TABLE PERSON(
	person_id bigint NOT NULL,
	gender_concept_id integer NOT NULL,
	year_of_birth integer NOT NULL,
	month_of_birth integer NULL,
	day_of_birth integer NULL,
	birth_TIMESTAMP TIMESTAMP NULL,
	death_TIMESTAMP TIMESTAMP NULL,
	race_concept_id integer NOT NULL,
	ethnicity_concept_id integer NOT NULL,
	location_id bigint NULL,
	provider_id bigint NULL,
	care_site_id bigint NULL,
	person_source_value varchar(50) NULL,
	gender_source_value varchar(50) NULL,
	gender_source_concept_id integer NOT NULL,
	race_source_value varchar(50) NULL,
	race_source_concept_id integer NULL,
	ethnicity_source_value varchar(50) NULL,
	ethnicity_source_concept_id integer NOT NULL );


/* observation_period  */

CREATE TABLE OBSERVATION_PERIOD (
			observation_period_id bigint NOT NULL,
			person_id bigint NOT NULL,
			observation_period_start_date date NOT NULL,
			observation_period_end_date date NOT NULL,
			period_type_concept_id integer NOT NULL );


/* visit_occurence */
CREATE TABLE VISIT_OCCURRENCE (
			visit_occurrence_id bigint NOT NULL,
			person_id bigint NOT NULL,
			visit_concept_id integer NOT NULL,
			visit_start_date date NULL,
			visit_start_TIMESTAMP TIMESTAMP NOT NULL,
			visit_end_date date NULL,
			visit_end_TIMESTAMP TIMESTAMP NOT NULL,
			visit_type_concept_id Integer NOT NULL,
			provider_id bigint NOT NULL,
			care_site_id bigint NULL,
			visit_source_value varchar(50) NULL,
			visit_source_concept_id integer NOT NULL,
			admitted_from_concept_id integer NOT NULL,
			admitted_from_source_value varchar(50) NULL,
			discharged_to_concept_id integer NOT NULL,
			discharged_to_source_value varchar(50) NULL,
			preceding_visit_occurrence_id bigint NULL );

/* visit_detail*/

CREATE TABLE VISIT_DETAIL (
			visit_detail_id integer NOT NULL,
			person_id integer NOT NULL,
			visit_detail_concept_id integer NOT NULL,
			visit_detail_start_date date NOT NULL,
			visit_detail_start_TIMESTAMP TIMESTAMP NULL,
			visit_detail_end_date date NOT NULL,
			visit_detail_end_TIMESTAMP TIMESTAMP NULL,
			visit_detail_type_concept_id integer NOT NULL,
			provider_id integer NULL,
			care_site_id integer NULL,
			visit_detail_source_value varchar(50) NULL,
			visit_detail_source_concept_id Integer NULL,
			admitted_from_concept_id Integer NULL,
			admitted_from_source_value varchar(50) NULL,
			discharged_to_source_value varchar(50) NULL,
			discharged_to_concept_id integer NULL,
			preceding_visit_detail_id integer NULL,
			parent_visit_detail_id integer NULL,
			visit_occurrence_id integer NOT NULL );


/* condition occurence */

CREATE TABLE CONDITION_OCCURRENCE (
			condition_occurrence_id bigint NOT NULL,
			person_id bigint NOT NULL,
			condition_concept_id integer NOT NULL,
			condition_start_date date NOT NULL,
			condition_start_TIMESTAMP TIMESTAMP NULL,
			condition_end_date date NULL,
			condition_end_TIMESTAMP TIMESTAMP NULL,
			condition_type_concept_id integer NOT NULL,
			condition_status_concept_id integer NULL,
			stop_reason varchar(20) NULL,
			provider_id bigint NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			condition_source_value varchar(50) NULL,
			condition_source_concept_id integer NULL,
			condition_status_source_value varchar(50) NULL );


/* drug exposure  */

CREATE TABLE DRUG_EXPOSURE (
			drug_exposure_id bigint NOT NULL,
			person_id bigint NOT NULL,
			drug_concept_id integer NOT NULL,
			drug_exposure_start_date date NOT NULL,
			drug_exposure_start_TIMESTAMP TIMESTAMP NULL,
			drug_exposure_end_date date NOT NULL,
			drug_exposure_end_TIMESTAMP TIMESTAMP NULL,
			verbatim_end_date date NULL,
			drug_type_concept_id integer NOT NULL,
			stop_reason varchar(20) NULL,
			refills integer NULL,
			quantity float NULL,
			days_supply integer NULL,
			sig TEXT NULL,
			route_concept_id integer NULL,
			lot_number varchar(50) NULL,
			provider_id bigint NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			drug_source_value varchar(50) NULL,
			drug_source_concept_id integer NULL,
			route_source_value varchar(50) NULL,
			dose_unit_source_value varchar(50) NULL );


/*procedure_occurence  */

CREATE TABLE PROCEDURE_OCCURRENCE (
			procedure_occurrence_id bigint NOT NULL,
			person_id bigint NOT NULL,
			procedure_concept_id integer NOT NULL,
			procedure_date date NULL,
			procedure_TIMESTAMP TIMESTAMP NOT NULL,
			procedure_type_concept_id integer NOT NULL,
			modifier_concept_id integer NULL,
			quantity integer NULL,
			provider_id bigint NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			procedure_source_value varchar(50) NULL,
			procedure_source_concept_id integer NOT NULL,
			modifier_source_value varchar(50) NULL );

/* Device_exposure */

CREATE TABLE DEVICE_EXPOSURE (
			device_exposure_id bigint NOT NULL,
			person_id bigint NOT NULL,
			device_concept_id integer NOT NULL,
			device_exposure_start_date date NOT NULL,
			device_exposure_start_TIMESTAMP TIMESTAMP NULL,
			device_exposure_end_date date NULL,
			device_exposure_end_TIMESTAMP TIMESTAMP NULL,
			device_type_concept_id integer NOT NULL,
			unique_device_id varchar(50) NULL,
			quantity integer NULL,
			provider_id integer NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			device_source_value varchar(50) NULL,
			device_source_concept_id integer NULL ); 


/*measurement  */

CREATE TABLE MEASUREMENT (
			measurement_id bigint NOT NULL,
			person_id bigint NOT NULL,
			measurement_concept_id integer NOT NULL,
			measurement_date date NOT NULL,
			measurement_TIMESTAMP TIMESTAMP NULL,
			measurement_time varchar(10) NULL,
			measurement_type_concept_id integer NOT NULL,
			operator_concept_id integer NULL,
			value_as_number NUMERIC NULL,
			value_as_concept_id integer NULL,
			unit_concept_id integer NULL,
			range_low NUMERIC NULL,
			range_high NUMERIC NULL,
			provider_id bigint NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			measurement_source_value varchar(50) NULL,
			measurement_source_concept_id integer NULL,
			unit_source_value varchar(50) NULL,
			unit_source_concept_id integer NULL,
			value_source_value varchar(50) NULL);


/*  Observation */

CREATE TABLE OBSERVATION (
			observation_id bigint NOT NULL,
			person_id bigint NOT NULL,
			observation_concept_id integer NOT NULL,
			observation_date date NOT NULL,
			observation_TIMESTAMP TIMESTAMP NOT NULL,
			observation_type_concept_id integer NOT NULL,
			value_as_number NUMERIC NULL,
			value_as_string varchar(60) NULL,
			value_as_concept_id integer NULL,
			qualifier_concept_id integer NULL,
			unit_concept_id integer NULL,
			provider_id bigint NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			observation_source_value varchar(50) NULL,
			observation_source_concept_id integer NOT NULL,
			unit_source_value varchar(50) NULL,
			qualifier_source_value varchar(50) NULL,
			observation_event_id bigint NULL,
			obs_event_field_concept_id integer NULL,
			value_as_TIMESTAMP TIMESTAMP NULL);


/* Note */
CREATE TABLE NOTE (
			note_id integer NOT NULL,
			person_id bigint NOT NULL,
			note_event_id bigint NULL,
			note_event_field_concept_id integer NULL,
			note_date date NOT NULL,
			note_TIMESTAMP TIMESTAMP NULL,
			note_type_concept_id integer NOT NULL,
			note_class_concept_id integer NOT NULL,
			note_title varchar(250) NULL,
			note_text TEXT NOT NULL,
			encoding_concept_id integer NOT NULL,
			language_concept_id integer NOT NULL,
			provider_id bigint NULL,
			visit_occurrence_id bigint NULL,
			visit_detail_id bigint NULL,
			note_source_value varchar(50) NULL );


/* */

CREATE TABLE NOTE_NLP (
			note_nlp_id bigint NOT NULL,
			note_id integer NOT NULL,
			section_concept_id integer NULL,
			snippet varchar(250) NULL,
			"offset" varchar(50) NULL,
			lexical_variant varchar(250) NOT NULL,
			note_nlp_concept_id integer NULL,
			note_nlp_source_concept_id integer NULL,
			nlp_system varchar(250) NULL,
			nlp_date date NOT NULL,
			nlp_TIMESTAMP TIMESTAMP NULL,
			term_exists varchar(1) NULL,
			term_temporal varchar(50) NULL,
			term_modifiers varchar(2000) NULL );


/*specimen  */
CREATE TABLE SPECIMEN (
			specimen_id bigint NOT NULL,
			person_id bigint NOT NULL,
			specimen_concept_id integer NOT NULL,
			specimen_type_concept_id integer NOT NULL,
			specimen_date date NOT NULL,
			specimen_TIMESTAMP TIMESTAMP NULL,
			quantity NUMERIC NULL,
			unit_concept_id integer NULL,
			anatomic_site_concept_id integer NULL,
			disease_status_concept_id integer NULL,
			specimen_source_id varchar(50) NULL,
			specimen_source_value varchar(50) NULL,
			unit_source_value varchar(50) NULL,
			anatomic_site_source_value varchar(50) NULL,
			disease_status_source_value varchar(50) NULL );

/* Fact_relationship*/
CREATE TABLE FACT_RELATIONSHIP (
			domain_concept_id_1 integer NOT NULL,
			fact_id_1 bigint NOT NULL,
			domain_concept_id_2 integer NOT NULL,
			fact_id_2 bigint NOT NULL,
			relationship_concept_id integer NOT NULL );


/* SURVEY_CONDUCT */


CREATE TABLE SURVEY_CONDUCT (
			survey_conduct_id bigint NOT NULL,
			person_id bigint NOT NULL,
			survey_concept_id integer NOT NULL,
			survey_start_date DATE NULL,
			survey_start_TIMESTAMP TIMESTAMP NULL,
			survey_end_date date NULL,
			survey_end_TIMESTAMP TIMESTAMP NULL,
			provider_id bigint NULL,
			assisted_concept_id integer NOT NULL,
			respondent_type_concept_id integer NOT NULL,
			timing_concept_id integer NOT NULL,
			collection_method_concept_id integer NOT NULL,
			assisted_source_value varchar(50) NULL,
			respondent_type_source_value varchar(100) NULL,
			timing_source_value varchar(100) NULL,
			collection_method_source_value varchar(100) NULL,
			survey_source_value varchar(100) NULL,
			survey_source_concept_id integer NOT NULL,
			survey_source_identifier varchar(100) NULL,
			validated_survey_concept_id integer NOT NULL,
			survey_version_number varchar(20) NULL,
			visit_occurrence_id bigint NULL,
			response_visit_occurrence_id bigint NULL );


/* Location */
CREATE TABLE LOCATION (
			location_id bigint NOT NULL,
			address_1 varchar(50) NULL,
			address_2 varchar(50) NULL,
			city varchar(50) NULL,
			state varchar(2) NULL,
			zip varchar(9) NULL,
			county varchar(20) NULL,
			location_source_value varchar(50) NULL,
			latitude NUMERIC NULL,
			longitude NUMERIC NULL );

/*LOCATION_HISTORY */

CREATE TABLE LOCATION_HISTORY (
			location_id bigint NOT NULL,
			relationship_type_concept_id integer NOT NULL,
			domain_id varchar(50) NOT NULL,
			entity_id bigint NOT NULL,
			start_date date NOT NULL,
			end_date date NOT NULL);



/*CARE_SITE */

CREATE TABLE CARE_SITE (
			care_site_id bigint NOT NULL,
			care_site_name varchar(255) NULL,
			place_of_service_concept_id integer NOT NULL,
			location_id bigint NULL,
			care_site_source_value varchar(50) NULL,
			place_of_service_source_value varchar(50) NULL );



/* PROVIDER */
CREATE TABLE PROVIDER (
			provider_id bigint NOT NULL,
			provider_name varchar(255) NULL,
			npi varchar(20) NULL,
			dea varchar(20) NULL,
			specialty_concept_id integer NOT NULL,
			care_site_id bigint NULL,
			year_of_birth integer NULL,
			gender_concept_id integer NOT NULL,
			provider_source_value varchar(50) NULL,
			specialty_source_value varchar(50) NULL,
			specialty_source_concept_id integer NOT NULL,
			gender_source_value varchar(50) NULL,
			gender_source_concept_id integer NOT NULL );



/* PAYER_PLAN_PERIOD  */

CREATE TABLE PAYER_PLAN_PERIOD (
			payer_plan_period_id bigint NOT NULL,
			person_id bigint NOT NULL,
			contract_person_id bigint NULL,
			payer_plan_period_start_date date NOT NULL,
			payer_plan_period_end_date date NOT NULL,
			payer_concept_id integer NOT NULL,
			payer_source_value varchar(50) NULL,
			payer_source_concept_id integer NOT NULL,
			plan_concept_id integer NOT NULL,
			plan_source_value varchar(50) NULL,
			plan_source_concept_id integer NOT NULL,
			contract_concept_id integer NOT NULL,
			contract_source_value varchar(50) NOT NULL,
			contract_source_concept_id integer NOT NULL,
			sponsor_concept_id integer NOT NULL,
			sponsor_source_value varchar(50) NULL,
			sponsor_source_concept_id integer NULL,
			family_source_value varchar(50) NULL,
			stop_reason_concept_id integer NULL,
			stop_reason_source_value varchar(50) NULL,
			stop_reason_source_concept_id integer NULL );


/* COST  */

CREATE TABLE COST (
			cost_id bigint NOT NULL,
			person_id bigint NOT NULL,
			cost_event_id bigint NOT NULL,
			cost_event_field_concept_id integer NOT NULL,
			cost_concept_id integer NOT NULL,
			cost_type_concept_id integer NULL,
			cost_source_concept_id integer NULL,
			cost_source_value varchar(50),
			currency_concept_id integer NULL,
			cost NUMERIC NULL,
			incurred_date date NULL,
			billed_date date NULL,
			paid_date date NULL,
			revenue_code_concept_id integer NULL,
			drg_concept_id integer NULL,
			revenue_code_source_value varchar(50) NULL,
			drg_source_value varchar(50) NULL,
			payer_plan_period_id bigint NULL );


/* DRUG ERA */

CREATE TABLE DRUG_ERA (
			drug_era_id bigint NOT NULL,
			person_id bigint NOT NULL,
			drug_concept_id integer NOT NULL,
			drug_era_start_date TIMESTAMP NOT NULL,
			drug_era_end_date TIMESTAMP NOT NULL,
			drug_exposure_count integer NULL,
			gap_days integer NULL );


/* DOSE ERA */

CREATE TABLE DOSE_ERA (
			dose_era_id bigint NOT NULL,
			person_id bigint NOT NULL,
			drug_concept_id integer NOT NULL,
			unit_concept_id integer NOT NULL,
			dose_value NUMERIC NOT NULL,
			dose_era_start_date TIMESTAMP NOT NULL,
			dose_era_end_date TIMESTAMP NOT NULL );

/* CONDITION ERA */

CREATE TABLE CONDITION_ERA (
			condition_era_id bigint NOT NULL,
			person_id bigint NOT NULL,
			condition_concept_id integer NOT NULL,
			condition_era_start_date TIMESTAMP NOT NULL,
			condition_era_end_date TIMESTAMP NOT NULL,
			condition_occurrence_count integer NULL );


/* METADATA */

CREATE TABLE METADATA (
			metadata_concept_id integer NOT NULL,
			metadata_type_concept_id integer NOT NULL,
			name varchar(250) NOT NULL,
			value_as_string varchar(250) NULL,
			value_as_concept_id integer NULL,
			metadata_date date NULL,
			metadata_TIMESTAMP TIMESTAMP NULL );

/* CDM_SOURCE */

CREATE TABLE CDM_SOURCE (
			cdm_source_name varchar(255) NOT NULL,
			cdm_source_abbreviation varchar(25) NULL,
			cdm_holder varchar(255) NULL,
			source_description TEXT NULL,
			source_documentation_reference varchar(255) NULL,
			cdm_etl_reference varchar(255) NULL,
			source_release_date date NOT NULL,
			cdm_release_date date NOT NULL,
			cdm_version varchar(10) NULL,
			vocabulary_version varchar(20) NOT NULL );


/* CONCEPT */

CREATE TABLE CONCEPT (
			concept_id integer NOT NULL,
			concept_name varchar(255) NOT NULL,
			domain_id varchar(20) NOT NULL,
			vocabulary_id varchar(20) NOT NULL,
			concept_class_id varchar(20) NOT NULL,
			standard_concept varchar(1) NULL,
			concept_code varchar(50) NOT NULL,
			valid_start_date date NOT NULL,
			valid_end_date date NOT NULL,
			invalid_reason varchar(1) NULL );


/* VOCABULARY */

CREATE TABLE VOCABULARY (
			vocabulary_id varchar(20) NOT NULL,
			vocabulary_name varchar(255) NOT NULL,
			vocabulary_reference varchar(255) NULL,
			vocabulary_version varchar(255) NULL,
			vocabulary_concept_id integer NOT NULL );


/* DOMAIN */

CREATE TABLE DOMAIN (
			domain_id varchar(20) NOT NULL,
			domain_name varchar(255) NOT NULL,
			domain_concept_id integer NOT NULL );


/* CONCEPT_CLASS */

CREATE TABLE CONCEPT_CLASS (
			concept_class_id varchar(20) NOT NULL,
			concept_class_name varchar(255) NOT NULL,
			concept_class_concept_id integer NOT NULL );


/* CONCEPT_RELATIONSHIP */

CREATE TABLE CONCEPT_RELATIONSHIP (
			concept_id_1 integer NOT NULL,
			concept_id_2 integer NOT NULL,
			relationship_id varchar(20) NOT NULL,
			valid_start_date date NOT NULL,
			valid_end_date date NOT NULL,
			invalid_reason varchar(1) NULL );



/* RELATIONSHIP */
CREATE TABLE RELATIONSHIP (
			relationship_id varchar(20) NOT NULL,
			relationship_name varchar(255) NOT NULL,
			is_hierarchical varchar(1) NOT NULL,
			defines_ancestry varchar(1) NOT NULL,
			reverse_relationship_id varchar(20) NOT NULL,
			relationship_concept_id integer NOT NULL );



/* CONCEPT_SYNONYM */

CREATE TABLE CONCEPT_SYNONYM (
			concept_id integer NOT NULL,
			concept_synonym_name varchar(1000) NOT NULL,
			language_concept_id integer NOT NULL );


/* CONCEPT_ANCESTOR */

CREATE TABLE CONCEPT_ANCESTOR (
			ancestor_concept_id integer NOT NULL,
			descendant_concept_id integer NOT NULL,
			min_levels_of_separation integer NOT NULL,
			max_levels_of_separation integer NOT NULL );


/* SOURCE_TO_CONCEPT_MAP */

CREATE TABLE SOURCE_TO_CONCEPT_MAP (
			source_code varchar(50) NOT NULL,
			source_concept_id integer NOT NULL,
			source_vocabulary_id varchar(20) NOT NULL,
			source_code_description varchar(255) NULL,
			target_concept_id integer NOT NULL,
			target_vocabulary_id varchar(20) NOT NULL,
			valid_start_date date NOT NULL,
			valid_end_date date NOT NULL,
			invalid_reason varchar(1) NULL );

/* DRUG_STRENGTH */

CREATE TABLE DRUG_STRENGTH (
			drug_concept_id integer NOT NULL,
			ingredient_concept_id integer NOT NULL,
			amount_value NUMERIC NULL,
			amount_unit_concept_id integer NULL,
			numerator_value NUMERIC NULL,
			numerator_unit_concept_id integer NULL,
			denominator_value NUMERIC NULL,
			denominator_unit_concept_id integer NULL,
			box_size integer NULL,
			valid_start_date date NOT NULL,
			valid_end_date date NOT NULL,
			invalid_reason varchar(1) NULL );


/* COHORT_DEFINITION  */

CREATE TABLE COHORT_DEFINITION (
			cohort_definition_id integer NOT NULL,
			cohort_definition_name varchar(255) NOT NULL,
			cohort_definition_description TEXT NULL,
			definition_type_concept_id integer NOT NULL,
			cohort_definition_syntax TEXT NULL,
			subject_concept_id integer NOT NULL,
			cohort_initiation_date date NULL );

