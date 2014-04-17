CREATE TABLE qms_stage.activity_f
(
        study_key BIGINT 
		 , activity_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , activity_type VARCHAR(60) 
		 , create_date DATE 
		 , activity_date DATE 
		 , age_key BIGINT 
		 , prov_specialty_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.age_bands_d
(
        study_key BIGINT 
		 , age_key BIGINT 
		 , age INTEGER 
		 , months BIGINT 
		 , minor_adult_senior VARCHAR(10) 
		 , ped_band VARCHAR(20) 
		 , decade_band BIGINT 
		 , decade_band_desc VARCHAR(20) 
) WITH OIDS
;

CREATE TABLE qms_stage.assessment_f
(
        study_key BIGINT 
		 , assessment_tracer_id BIGINT 
		 , activity_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , problem_tracer_id BIGINT 
		 , create_date DATE 
		 , assessment_date DATE 
		 , assessment_status VARCHAR(25) 
		 , age_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.chief_complaint_d
(
        study_key BIGINT 
		 , complaint_key BIGINT 
		 , concept_desc VARCHAR(120) 
) WITH OIDS
;

CREATE TABLE qms_stage.chief_complaint_f
(
        study_key BIGINT 
		 , complaint_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , complaint_key BIGINT 
		 , observation_key BIGINT 
		 , clinical_date DATE 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.medication_d
(
        study_key BIGINT 
		 , medication_key BIGINT 
		 , medication_code_string VARCHAR(20) 
		 , concept_desc VARCHAR(120) 
		 , ddid BIGINT 
		 , product_name VARCHAR(30) 
		 , dose_form VARCHAR(4) 
		 , dose_form_long VARCHAR(15) 
		 , strength VARCHAR(25) 
		 , strength_units VARCHAR(10) 
		 , gpi VARCHAR(14) 
		 , strength_value VARCHAR(15) 
		 , generic_name VARCHAR(60) 
		 , route VARCHAR(2) 
		 , route_long VARCHAR(15) 
		 , rx_otc VARCHAR(20) 
		 , kdc BIGINT 
		 , gpi_category_1 VARCHAR(60) 
		 , gpi_category_2 VARCHAR(60) 
		 , gpi_category_3 VARCHAR(60) 
		 , gpi_category_4 VARCHAR(60) 
		 , ndclabprod VARCHAR(9) 
) WITH OIDS
;

CREATE TABLE qms_stage.medication_f
(
        study_key BIGINT 
		 , med_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , medication_key BIGINT 
		 , create_date DATE 
		 , start_date VARCHAR(255) 
		 , stop_date VARCHAR(255) 
		 , chain_id BIGINT 
		 , chain_seq INTEGER 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
		 , stop_reason VARCHAR(20) 
		 , active_flag VARCHAR(1) 
		 , sig_key BIGINT 
		 , prov_specialty_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.observation_d
(
        study_key BIGINT 
		 , observation_key BIGINT 
		 , obs_desc VARCHAR(255) 
		 , standard_uom VARCHAR(20) 
) WITH OIDS
;

CREATE TABLE qms_stage.observation_f
(
        study_key BIGINT 
		 , obs_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , observation_key BIGINT 
		 , value_quality_indicator VARCHAR(1) 
		 , obs_value FLOAT 
		 , create_date DATE 
		 , obs_date DATE 
		 , low_normal FLOAT 
		 , high_normal FLOAT 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.order_d
(
        study_key BIGINT 
		 , order_key BIGINT 
		 , order_string VARCHAR(80) 
		 , order_code_string VARCHAR(20) 
		 , concept_desc VARCHAR(120) 
		 , cpt_code VARCHAR(10) 
		 , cpt_desc VARCHAR(60) 
) WITH OIDS
;

CREATE TABLE qms_stage.order_f
(
        study_key BIGINT 
		 , order_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , order_key BIGINT 
		 , create_date DATE 
		 , order_date DATE 
		 , order_type VARCHAR(20) 
		 , order_status VARCHAR(20) 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
		 , prov_specialty_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.patient_d
(
        study_key BIGINT 
		 , patient_key BIGINT 
		 , gender VARCHAR(8) 
		 , race VARCHAR(50) 
		 , age_key BIGINT 
		 , home_location_zip VARCHAR(12) 
		 , home_location_state VARCHAR(2) 
		 , home_location_division VARCHAR(20) 
		 , home_location_region VARCHAR(20) 
		 , first_pmo_date DATE 
		 , last_pmo_date DATE 
		 , first_doc_activity_date DATE 
		 , last_doc_activity_date DATE 
		 , payment_type VARCHAR(40) 
		 , patient_status VARCHAR(20) 
		 , group_indicator VARCHAR(1) 
--		 , enrollment_date DATE 
		 , idn_flag VARCHAR(1) 
		 , resp_prov_specialty_key BIGINT 
		 , enrollment_date DATE 
) WITH OIDS
;

CREATE TABLE qms_stage.prescription_f
(
        study_key BIGINT 
		 , rx_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , medication_key BIGINT 
		 , med_tracer_id BIGINT 
		 , create_date DATE 
		 , rx_date DATE 
		 , rx_type VARCHAR(25) 
		 , formulary_status VARCHAR(55) 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
		 , refills INTEGER 
		 , quantity BIGINT 
		 , prov_specialty_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.problem_d
(
        study_key BIGINT 
		 , problem_key BIGINT 
		 , problem_code_string VARCHAR(20) 
		 , concept_desc VARCHAR(120) 
		 , icd9_code VARCHAR(10) 
		 , icd9_desc VARCHAR(60) 
) WITH OIDS
;

CREATE TABLE qms_stage.problem_f
(
        study_key BIGINT 
		 , problem_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , problem_key BIGINT 
		 , create_date DATE 
		 , onset_date DATE 
		 , stop_date DATE 
		 , chain_id BIGINT 
		 , chain_seq INTEGER 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
		 , stop_reason VARCHAR(20) 
		 , active_flag VARCHAR(1) 
		 , dx_qualifier VARCHAR(20) 
		 , prov_specialty_key BIGINT 
) WITH OIDS
;

CREATE TABLE qms_stage.sig_d
(
        id BIGINT 
		 , study_key BIGINT 
		 , sig_key BIGINT 
		 , complex_sig_flag VARCHAR(1) 
		 , low_dose FLOAT 
		 , low_dose_unit VARCHAR(10) 
		 , high_dose FLOAT 
		 , high_dose_unit VARCHAR(10) 
		 , route VARCHAR(10) 
		 , low_interval FLOAT 
		 , high_interval FLOAT 
		 , low_duration FLOAT 
		 , high_duration FLOAT 
		 , prn_flag VARCHAR(1) 
		 , as_directed_flag VARCHAR(1) 
) WITH OIDS
;

CREATE TABLE qms_stage.specialty_d
(
        study_key BIGINT 
		 , specialty_key BIGINT 
		 , specialty_category VARCHAR(60) 
		 , specialty_group VARCHAR(60) 
) WITH OIDS
;

CREATE TABLE qms_stage.study_d
(
        study_key BIGINT 
		 , study_number VARCHAR(40) 
		 , data_period VARCHAR(10) 
) WITH OIDS
;

CREATE TABLE qms_stage.text_observation_f
(
        study_key BIGINT 
		 , text_obs_tracer_id BIGINT 
		 , patient_key BIGINT 
		 , observation_key BIGINT 
		 , create_date DATE 
		 , obs_date DATE 
		 , parsed_date DATE 
		 , obs_group_name VARCHAR(30) 
		 , obs_value VARCHAR(65) 
		 , value_category VARCHAR(20) 
		 , activity_tracer_id BIGINT 
		 , age_key BIGINT 
) WITH OIDS
;



CREATE INDEX idx_Activity_tracer_id_Activity_f ON Activity_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Assessment_f ON Assessment_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Chief_complaint_f ON Chief_complaint_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Medication_f ON Medication_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Observation_f ON Observation_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Order_f ON Order_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Prescription_f ON Prescription_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Problem_f ON Problem_f(activity_tracer_id);
CREATE INDEX idx_Activity_tracer_id_Text_observation_f ON Text_observation_f(activity_tracer_id);
CREATE INDEX idx_Age_key_Activity_f ON Activity_f(age_key);
CREATE INDEX idx_Age_key_Age_bands_d ON Age_bands_d(age_key);
CREATE INDEX idx_Age_key_Assessment_f ON Assessment_f(age_key);
CREATE INDEX idx_Age_key_Chief_complaint_f ON Chief_complaint_f(age_key);
CREATE INDEX idx_Age_key_Medication_f ON Medication_f(age_key);
CREATE INDEX idx_Age_key_Observation_f ON Observation_f(age_key);
CREATE INDEX idx_Age_key_Order_f ON Order_f(age_key);
CREATE INDEX idx_Age_key_Patient_d ON Patient_d(age_key);
CREATE INDEX idx_Age_key_Prescription_f ON Prescription_f(age_key);
CREATE INDEX idx_Age_key_Problem_f ON Problem_f(age_key);
CREATE INDEX idx_Age_key_Text_observation_f ON Text_observation_f(age_key);
CREATE INDEX idx_Assessment_tracer_id_Assessment_f ON Assessment_f(assessment_tracer_id);
CREATE INDEX idx_Chain_id_Medication_f ON Medication_f(chain_id);
CREATE INDEX idx_Chain_id_Problem_f ON Problem_f(chain_id);
CREATE INDEX idx_Complaint_key_Chief_complaint_d ON Chief_complaint_d(complaint_key);
CREATE INDEX idx_Complaint_key_Chief_complaint_f ON Chief_complaint_f(complaint_key);
CREATE INDEX idx_Complaint_tracer_id_Chief_complaint_f ON Chief_complaint_f(complaint_tracer_id);
CREATE INDEX idx_Cpt_code_Order_d ON Order_d(cpt_code);
CREATE INDEX idx_Ddid_Medication_d ON Medication_d(ddid);
CREATE INDEX idx_Icd9_code_Problem_d ON Problem_d(icd9_code);
CREATE INDEX idx_Idn_flag_Patient_d ON Patient_d(idn_flag);
CREATE INDEX idx_Med_tracer_id_Medication_f ON Medication_f(med_tracer_id);
CREATE INDEX idx_Med_tracer_id_Prescription_f ON Prescription_f(med_tracer_id);
CREATE INDEX idx_Medication_key_Medication_d ON Medication_d(medication_key);
CREATE INDEX idx_Medication_key_Medication_f ON Medication_f(medication_key);
CREATE INDEX idx_Medication_key_Prescription_f ON Prescription_f(medication_key);
CREATE INDEX idx_Obs_tracer_id_Observation_f ON Observation_f(obs_tracer_id);
CREATE INDEX idx_Observation_key_Chief_complaint_f ON Chief_complaint_f(observation_key);
CREATE INDEX idx_Observation_key_Observation_d ON Observation_d(observation_key);
CREATE INDEX idx_Observation_key_Observation_f ON Observation_f(observation_key);
CREATE INDEX idx_Observation_key_Text_observation_f ON Text_observation_f(observation_key);
CREATE INDEX idx_Order_key_Order_d ON Order_d(order_key);
CREATE INDEX idx_Order_key_Order_f ON Order_f(order_key);
CREATE INDEX idx_Order_tracer_id_Order_f ON Order_f(order_tracer_id);
CREATE INDEX idx_Patient_key_Activity_f ON Activity_f(patient_key);
CREATE INDEX idx_Patient_key_Assessment_f ON Assessment_f(patient_key);
CREATE INDEX idx_Patient_key_Chief_complaint_f ON Chief_complaint_f(patient_key);
CREATE INDEX idx_Patient_key_Medication_f ON Medication_f(patient_key);
CREATE INDEX idx_Patient_key_Observation_f ON Observation_f(patient_key);
CREATE INDEX idx_Patient_key_Order_f ON Order_f(patient_key);
CREATE INDEX idx_Patient_key_Patient_d ON Patient_d(patient_key);
CREATE INDEX idx_Patient_key_Prescription_f ON Prescription_f(patient_key);
CREATE INDEX idx_Patient_key_Problem_f ON Problem_f(patient_key);
CREATE INDEX idx_Patient_key_Text_observation_f ON Text_observation_f(patient_key);
CREATE INDEX idx_Problem_key_Problem_d ON Problem_d(problem_key);
CREATE INDEX idx_Problem_key_Problem_f ON Problem_f(problem_key);
CREATE INDEX idx_Problem_tracer_id_Assessment_f ON Assessment_f(problem_tracer_id);
CREATE INDEX idx_Problem_tracer_id_Problem_f ON Problem_f(problem_tracer_id);
CREATE INDEX idx_Prov_specialty_key_Activity_f ON Activity_f(prov_specialty_key);
CREATE INDEX idx_Prov_specialty_key_Medication_f ON Medication_f(prov_specialty_key);
CREATE INDEX idx_Prov_specialty_key_Order_f ON Order_f(prov_specialty_key);
CREATE INDEX idx_Prov_specialty_key_Prescription_f ON Prescription_f(prov_specialty_key);
CREATE INDEX idx_Prov_specialty_key_Problem_f ON Problem_f(prov_specialty_key);
CREATE INDEX idx_Resp_prov_specialty_key_Patient_d ON Patient_d(resp_prov_specialty_key);
CREATE INDEX idx_Rx_tracer_id_Prescription_f ON Prescription_f(rx_tracer_id);
CREATE INDEX idx_Sig_key_Medication_f ON Medication_f(sig_key);
CREATE INDEX idx_Sig_key_Sig_d ON Sig_d(sig_key);
CREATE INDEX idx_Specialty_key_Specialty_d ON Specialty_d(specialty_key);
CREATE INDEX idx_Study_key_Activity_f ON Activity_f(study_key);
CREATE INDEX idx_Study_key_Age_bands_d ON Age_bands_d(study_key);
CREATE INDEX idx_Study_key_Assessment_f ON Assessment_f(study_key);
CREATE INDEX idx_Study_key_Chief_complaint_d ON Chief_complaint_d(study_key);
CREATE INDEX idx_Study_key_Chief_complaint_f ON Chief_complaint_f(study_key);
CREATE INDEX idx_Study_key_Medication_d ON Medication_d(study_key);
CREATE INDEX idx_Study_key_Medication_f ON Medication_f(study_key);
CREATE INDEX idx_Study_key_Observation_d ON Observation_d(study_key);
CREATE INDEX idx_Study_key_Observation_f ON Observation_f(study_key);
CREATE INDEX idx_Study_key_Order_d ON Order_d(study_key);
CREATE INDEX idx_Study_key_Order_f ON Order_f(study_key);
CREATE INDEX idx_Study_key_Patient_d ON Patient_d(study_key);
CREATE INDEX idx_Study_key_Prescription_f ON Prescription_f(study_key);
CREATE INDEX idx_Study_key_Problem_d ON Problem_d(study_key);
CREATE INDEX idx_Study_key_Problem_f ON Problem_f(study_key);
CREATE INDEX idx_Study_key_Sig_d ON Sig_d(study_key);
CREATE INDEX idx_Study_key_Specialty_d ON Specialty_d(study_key);
CREATE INDEX idx_Study_key_Study_d ON Study_d(study_key);
CREATE INDEX idx_Study_key_Text_observation_f ON Text_observation_f(study_key);
CREATE INDEX idx_Text_obs_tracer_id_Text_observation_f ON Text_observation_f(text_obs_tracer_id);

