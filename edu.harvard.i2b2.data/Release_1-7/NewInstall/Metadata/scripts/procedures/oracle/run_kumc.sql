set echo off;
/*

select count(*) from totalnum;
--285934

select count(*) from BLUEHERONMETADATA.totalnum_report;
-- 285925

drop table shrine_ont_cnt;
create table lpatel.shrine_ont_cnt(
    cnt NUMBER
);
select 'insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.'|| c_table_name || ' ; ' from shrine_ont_act.table_access order by c_name;

insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_COVID ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.NCATS_DEMOGRAPHICS ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_ICD9CM_DX_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_ICD10CM_DX_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.NCATS_ICD10_ICD9_DX_V1 ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.NCATS_LABS ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_LOINC_LAB_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_MED_ALPHA_V2_121318 ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_MED_VA_V2_092818 ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_ICD9CM_PX_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_CPT_PX_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_HCPCS_PX_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.ACT_ICD10PCS_PX_2018AA ; 
insert into lpatel.shrine_ont_cnt select count(*) from shrine_ont_act.NCATS_VISIT_DETAILS ; 
commit;

select sum(cnt) from lpatel.shrine_ont_cnt;
--2,466,461

--alter session set current_schema=blueheronmetadata;
--
--create table lpatel.totalnum_bkp nologging
--as
--select * from totalnum;
--
--create table lpatel.totalnum_report_bkp nologging
--as
--select * from totalnum_report;
--
--create table lpatel.ontPatVisitDims_bkp nologging
--as
--select * from ontPatVisitDims;

select * from BHDATAA1.visit_dimension;
select * from ontPatVisitDims;
select * from patient_dimension;

select count(distinct(patient_num))  
from BHDATAA1.visit_dimension 
where start_date BETWEEN ((select birth_date  from PATIENT_DIMENSION where patient_num =VISIT_DIMENSION.PATIENT_NUM) + (30.25 * 15)-1) 
                    AND ((select birth_date  from PATIENT_DIMENSION where patient_num =VISIT_DIMENSION.PATIENT_NUM) + (30.25 * 16)-1) ;
--)  where c_fullname = '\ACT\Visit Details\Age at visit\0-9 years old\1 years old\15 months\' and numpats is null

*/

set echo on;
alter session set current_schema=bhmetadataa1;
grant select any table to bhmetadataa1;
set serveroutput on;

-- TODO: create synonym bhmetadataa1.PATIENT_DIMENSION for "BHDATAA1"."PATIENT_DIMENSION";
-- TODO: drop table
drop table ontPatVisitDims;
begin
  runtotalnum('OBSERVATION_FACT','BHDATAA1');
end;
/

