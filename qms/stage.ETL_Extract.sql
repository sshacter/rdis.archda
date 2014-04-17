COPY qms_stage.activity_f
FROM 's3://agn.chda.qms/QEMR 5000/activity_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.age_bands_d
FROM 's3://agn.chda.qms/QEMR 5000/age_bands_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.assessment_f
FROM 's3://agn.chda.qms/QEMR 5000/assessment_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.chief_complaint_d
FROM 's3://agn.chda.qms/QEMR 5000/chief_complaint_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.chief_complaint_f
FROM 's3://agn.chda.qms/QEMR 5000/chief_complaint_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.medication_d
FROM 's3://agn.chda.qms/QEMR 5000/medication_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.medication_f
FROM 's3://agn.chda.qms/QEMR 5000/medication_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.observation_d
FROM 's3://agn.chda.qms/QEMR 5000/observation_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.observation_f
FROM 's3://agn.chda.qms/QEMR 5000/observation_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.order_d
FROM 's3://agn.chda.qms/QEMR 5000/order_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.order_f
FROM 's3://agn.chda.qms/QEMR 5000/order_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.patient_d
FROM 's3://agn.chda.qms/QEMR 5000/patient_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.prescription_f
FROM 's3://agn.chda.qms/QEMR 5000/Prescription_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.problem_d
FROM 's3://agn.chda.qms/QEMR 5000/problem_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.problem_f
FROM 's3://agn.chda.qms/QEMR 5000/problem_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.sig_d
FROM 's3://agn.chda.qms/QEMR 5000/sig_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.specialty_d
FROM 's3://agn.chda.qms/QEMR 5000/specialty_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.study_d
FROM 's3://agn.chda.qms/QEMR 5000/study_d.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;

COPY qms_stage.text_observation_f
FROM 's3://agn.chda.qms/QEMR 5000/text_observation_f.csv'
CREDENTIALS
'aws_access_key_id=AKIAIQ2LKCJF3VHTZ75A;aws_secret_access_key=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'
CSV QUOTE AS '"'
IGNOREHEADER 1
DATEFORMAT AS 'auto'
EMPTYASNULL
ACCEPTINVCHARS AS '-'
MAXERROR AS 50
;
