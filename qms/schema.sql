CREATE SCHEMA qms_stage 
AUTHORIZATION masteruser
;
CREATE SCHEMA qms
AUTHORIZATION masteruser
;
--------------- SQL ---------------

GRANT CREATE
ON SCHEMA qms_stage TO masteruser
;
GRANT CREATE
ON SCHEMA qms TO masteruser
;

CREATE GROUP qms_admin 
WITH USER 
pierick_jeff
, shacter_solomon
;

CREATE GROUP qms_read_only
WITH USER 
browning_james
, chia_jenny
, cole_ashley
, kaplowitz_haley
, marshall_sarah
, mathew_nitya
, beerelli_ramakrishna
, bodo_matt
, clark_kristopher
, khosravi_omid
, ward_christina
;

GRANT USAGE
ON SCHEMA qms_stage 
TO GROUP qms_admin
;

GRANT CREATE
  ON SCHEMA qms TO GROUP qms_admin
;
GRANT USAGE
  ON SCHEMA qms TO GROUP qms_admin
;

GRANT USAGE
  ON SCHEMA qms TO GROUP qms_read_only
;

