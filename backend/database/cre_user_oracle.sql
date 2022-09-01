

--impdp benutzer/passwort@db directory=DUMP_ORACLE_DIR dumpfile=benutzer.DMP logfile=benutzer.log TRANSFORM=SEGMENT_ATTRIBUTES:n 
--remap_schema=produktiv:GGEW


CREATE OR REPLACE DIRECTORY DATA_PUMP_DIR AS 'C:\Users\Fabian\Documents\NOTENRECHNER\final\backend\database\dump';
expdp notenrechner/pnotenrechner@xe directory=DUMP_ORACLE_DIR dumpfile=notenrechner.dmp logfile=notenrechner.log




-- Create the user 
--drop user notenrechner cascade;
create user notenrechner
  default tablespace users
  temporary tablespace temp
  identified by pnotenrechner
  profile DEFAULT;
  
-- Grant/Revoke object privileges 
grant execute, read, write on directory DATA_PUMP_DIR to notenrechner with grant option;
grant execute on DBMS_ALERT to notenrechner;
grant execute on DBMS_LOCK to notenrechner;
-- Grant/Revoke role privileges 
grant aq_administrator_role to notenrechner;
grant aq_user_role to notenrechner;
grant authenticateduser to notenrechner;
grant connect to notenrechner;
grant ctxapp to notenrechner;
grant dba to notenrechner;
grant ejbclient to notenrechner;
grant execute_catalog_role to notenrechner;
grant exp_full_database to notenrechner;
grant gather_system_statistics to notenrechner;
grant hs_admin_role to notenrechner;
grant imp_full_database to notenrechner;
grant java_admin to notenrechner;
grant javadebugpriv to notenrechner;
grant javaidpriv to notenrechner;
grant javasyspriv to notenrechner;
grant javauserpriv to notenrechner;
grant logstdby_administrator to notenrechner;
grant oem_monitor to notenrechner;
grant olap_dba to notenrechner;
grant olap_user to notenrechner;
grant recovery_catalog_owner to notenrechner;
grant resource to notenrechner;
grant scheduler_admin to notenrechner;
grant select_catalog_role to notenrechner;
grant wm_admin_role to notenrechner;
grant xdbadmin to notenrechner;
-- Grant/Revoke system privileges 
grant administer any sql tuning set to notenrechner;
grant administer database trigger to notenrechner;
grant administer sql tuning set to notenrechner;
grant advisor to notenrechner;
grant alter any cluster to notenrechner;
grant alter any dimension to notenrechner;
grant alter any index to notenrechner;
grant alter any indextype to notenrechner;
grant alter any library to notenrechner;
grant alter any materialized view to notenrechner;
grant alter any outline to notenrechner;
grant alter any procedure to notenrechner;
grant alter any role to notenrechner;
grant alter any sequence to notenrechner;
grant alter any sql profile to notenrechner;
grant alter any table to notenrechner;
grant alter any trigger to notenrechner;
grant alter any type to notenrechner;
grant alter database to notenrechner;
grant alter profile to notenrechner;
grant alter resource cost to notenrechner;
grant alter rollback segment to notenrechner;
grant alter session to notenrechner;
grant alter system to notenrechner;
grant alter tablespace to notenrechner;
grant alter user to notenrechner;
grant analyze any to notenrechner;
grant analyze any dictionary to notenrechner;
grant audit any to notenrechner;
grant audit system to notenrechner;
grant backup any table to notenrechner;
grant become user to notenrechner;
grant comment any table to notenrechner;
grant create any cluster to notenrechner;
grant create any context to notenrechner;
grant create any dimension to notenrechner;
grant create any directory to notenrechner;
grant create any index to notenrechner;
grant create any indextype to notenrechner;
grant create any job to notenrechner;
grant create any library to notenrechner;
grant create any materialized view to notenrechner;
grant create any operator to notenrechner;
grant create any outline to notenrechner;
grant create any procedure to notenrechner;
grant create any sequence to notenrechner;
grant create any sql profile to notenrechner;
grant create any synonym to notenrechner;
grant create any table to notenrechner;
grant create any trigger to notenrechner;
grant create any type to notenrechner;
grant create any view to notenrechner;
grant create cluster to notenrechner;
grant create database link to notenrechner;
grant create dimension to notenrechner;
grant create indextype to notenrechner;
grant create job to notenrechner;
grant create library to notenrechner;
grant create materialized view to notenrechner;
grant create operator to notenrechner;
grant create procedure to notenrechner;
grant create profile to notenrechner;
grant create public database link to notenrechner;
grant create public synonym to notenrechner;
grant create role to notenrechner;
grant create rollback segment to notenrechner;
grant create sequence to notenrechner;
grant create session to notenrechner;
grant create synonym to notenrechner;
grant create table to notenrechner;
grant create tablespace to notenrechner;
grant create trigger to notenrechner;
grant create type to notenrechner;
grant create user to notenrechner;
grant create view to notenrechner;
grant debug any procedure to notenrechner;
grant debug connect session to notenrechner;
grant delete any table to notenrechner;
grant drop any cluster to notenrechner;
grant drop any context to notenrechner;
grant drop any dimension to notenrechner;
grant drop any directory to notenrechner;
grant drop any index to notenrechner;
grant drop any indextype to notenrechner;
grant drop any library to notenrechner;
grant drop any materialized view to notenrechner;
grant drop any operator to notenrechner;
grant drop any outline to notenrechner;
grant drop any procedure to notenrechner;
grant drop any role to notenrechner;
grant drop any sequence to notenrechner;
grant drop any sql profile to notenrechner;
grant drop any synonym to notenrechner;
grant drop any table to notenrechner;
grant drop any trigger to notenrechner;
grant drop any type to notenrechner;
grant drop any view to notenrechner;
grant drop profile to notenrechner;
grant drop public database link to notenrechner;
grant drop public synonym to notenrechner;
grant drop rollback segment to notenrechner;
grant drop tablespace to notenrechner;
grant drop user to notenrechner;
grant execute any class to notenrechner;
grant execute any indextype to notenrechner;
grant execute any library to notenrechner;
grant execute any operator to notenrechner;
grant execute any procedure to notenrechner;
grant execute any program to notenrechner;
grant execute any type to notenrechner;
grant export full database to notenrechner;
grant flashback any table to notenrechner;
grant force any transaction to notenrechner;
grant force transaction to notenrechner;
grant global query rewrite to notenrechner;
grant grant any object privilege to notenrechner;
grant grant any privilege to notenrechner;
grant grant any role to notenrechner;
grant import full database to notenrechner;
grant insert any table to notenrechner;
grant lock any table to notenrechner;
grant manage scheduler to notenrechner;
grant manage tablespace to notenrechner;
grant on commit refresh to notenrechner;
grant query rewrite to notenrechner;
grant restricted session to notenrechner;
grant resumable to notenrechner;
grant select any dictionary to notenrechner;
grant select any sequence to notenrechner;
grant select any table to notenrechner;
grant select any transaction to notenrechner;
grant under any table to notenrechner;
grant under any type to notenrechner;
grant under any view to notenrechner;
grant unlimited tablespace to notenrechner;
grant update any table to notenrechner;


