--PERMISSIONN table

   -- Create sequence 
create sequence S_PERMISSIONN
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table PERMISSIONN
(
  PERMISSIONN_id                NUMBER(10) not null,
  table_name                    VARCHAR(50)not null ,
  table_scope                   VARCHAR(30) not null,
  cre_userid                    VARCHAR2(30) not null,
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
comment on column PERMISSIONN.PERMISSIONN_id is 'ID PERMISSIONN';
comment on column PERMISSIONN.table_name is 'Name des tables, f�r den die Berechtigungen gelten';
comment on column PERMISSIONN.table_scope is 'permission scope des tables';
comment on column PERMISSIONN.cre_date is 'Zeitpunkt der Eintragung';
comment on column PERMISSIONN.cre_userid is 'USER_ID der Eintragung';
comment on column PERMISSIONN.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column PERMISSIONN.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_PERMISSIONN01 on PERMISSIONN (PERMISSIONN_id)
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
create index IDX_PERMISSIONN02 on PERMISSIONN (PERMISSIONN_id,table_name,table_scope,cre_date,cre_userid,chg_date,chg_userid)
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
