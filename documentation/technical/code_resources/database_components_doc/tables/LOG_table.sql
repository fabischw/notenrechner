--LOG table


-- Create sequence 
create sequence S_LOGS
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table LOGS
(
  LOGS_id                       NUMBER(10) not null PRIMARY KEY,
  table_id                      NUMBER(10) not null,
  updt_user                     VARCHAR2(30) ,
  update_type                   VARCHAR2(30) ,
  LOG_message                   VARCHAR2(50) ,
  cre_userid                    VARCHAR(30) not null,
  cre_date                      DATE not null,
  chg_userid                    VARCHAR2(30),
  chg_date                      DATE
)

tablespace users
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 64K
    minextents 1
    maxextents unlimited
  );
  
-- Add comments to the columns 
comment on column LOGS.LOGS_id is 'ID LOGS';
comment on column LOGS.table_id is 'table ID';
comment on column LOGS.updt_user is 'Username des update Users';
comment on column LOGS.update_type is 'Update typ';
comment on column LOGS.message is 'additional message';
comment on column LOGS.cre_date is 'Zeitpunkt der Eintragung';
comment on column LOGS.cre_userid is 'USER_ID der Eintragung';
comment on column LOGS.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column LOGS.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_LOGS01 on LOG (LOG_id)
  tablespace users
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 64K
    minextents 1
    maxextents unlimited
  );

--Index f�r Daten, die oft abgerufen werden
create index IDX_LOGS02 on LOGS (LOG_id,table_id,updt_user,update_type,cre_date,cre_userid,chg_date,chg_userid)
  tablespace users
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 64K
    minextents 1
    maxextents unlimited
  );