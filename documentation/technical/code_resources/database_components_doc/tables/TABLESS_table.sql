  --TABLES table
  
  
  -- Create sequence 
create sequence S_TABLESS
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table TABLESS
(
  TABLESS_id                    NUMBER(10) not null PRIMARY KEY,
  table_name                    VARCHAR(50)not null ,
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
comment on column TABLESS.TABLESS_id is 'ID TABLESS';
comment on column TABLESS.table_name is 'Name des tables';
comment on column TABLESS.cre_date is 'Zeitpunkt der Eintragung';
comment on column TABLESS.cre_userid is 'USER_ID der Eintragung';
comment on column TABLESS.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column TABLESS.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_TABLESS01 on TABLESS (TABLESS_id)
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
create index IDX_TABLESS02 on TABLESS (TABLESS_id,table_name,cre_date,cre_userid,chg_date,chg_userid)
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