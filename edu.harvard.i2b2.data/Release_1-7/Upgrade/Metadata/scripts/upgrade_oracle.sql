set echo on;
alter session set current_schema=bhmetadataa1;
--==============================================================
-- Database Script to upgrade ONT from 1.7.10 to 1.7.11                  
--==============================================================


alter table TABLE_ACCESS  add (C_ONTOLOGY_PROTECTION  clob)
;

--==============================================================
-- Database Script to upgrade ONT from 1.7.11 to 1.7.13                 
--==============================================================
drop table totalnum;
-- New 04-20: Create totalnum table to track changes over time
CREATE TABLE totalnum  ( 
    C_FULLNAME	varchar2(850) NULL,
    AGG_DATE  	date NULL,
    AGG_COUNT 	NUMBER(22,0) NULL,
    TYPEFLAG_CD   varchar2(3) NULL
    )
;
CREATE INDEX totalnum_idx ON totalnum(c_fullname, agg_date, typeflag_cd)
;
drop table totalnum_report;
-- Report table to store most recent obfuscated counts
CREATE TABLE totalnum_report  ( 
    C_FULLNAME	varchar2(850) NULL,
    AGG_DATE  	varchar2(50) NULL,
    AGG_COUNT 	NUMBER(22,0) NULL
    )
;
CREATE INDEX totalnum_report_idx ON totalnum_report(c_fullname)
;
