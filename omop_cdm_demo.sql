-- A Demo to showcase various tables on omop cdm using synthetic data

/* Link 

https://console.cloud.google.com/bigquery?p=bigquery-public-data&d=google_trends&page=dataset&project=omopdatabase&ws=!1m4!1m3!3m2!1sbigquery-public-data!2sgoogle_trends

*/






/* Concepts are referred by concept_id. All details are in CONCEPT table */

select * from bigquery-public-data.cms_synthetic_patient_data_omop.concept as c
where c.concept_id = 313217;

select * from bigquery-public-data.cms_synthetic_patient_data_omop.concept as c
where c.concept_code = '49436004';


select * from bigquery-public-data.cms_synthetic_patient_data_omop.concept as c
where c.concept_name = 'Atrial fibrillation';


/* Various Vocabularies */

select DISTINCT(vocabulary_id) from bigquery-public-data.cms_synthetic_patient_data_omop.vocabulary as v

/* A unique count of patients in person table */

select COUNT(*) from bigquery-public-data.cms_synthetic_patient_data_omop.person as p



