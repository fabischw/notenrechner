-- USERR-PERMISSIONN-REF


   -- Create sequence 
create sequence S_USERRPERMISSIONNREF
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table USERRPERMISSIONNREF
(
  USERRPERMISSIONNREF_id        NUMBER(10) not null,
  USERR_id                      NUMBER(10)not null ,
  PERMISSIONN_id                NUMBER(10) not null,
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
comment on column USERRPERMISSIONNREFN.USERRPERMISSIONNREF_id is 'ID USERRPERMISSIONNREF';
comment on column USERRPERMISSIONNREF.USERR_id is 'USERR ID';
comment on column USERRPERMISSIONNREF.PERMISSIONN_id is 'PERMISSIONN ID';
comment on column USERRPERMISSIONNREF.cre_date is 'Zeitpunkt der Eintragung';
comment on column USERRPERMISSIONNREF.cre_userid is 'USER_ID der Eintragung';
comment on column USERRPERMISSIONNREFREF.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column USERRPERMISSIONNREF.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_USERRPERMISSIONNREF01 on USERRPERMISSIONNREF (USERRPERMISSIONNREF_id)
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
create index IDX_USERRPERMISSIONNREF02 on USERRPERMISSIONNREF (USERRPERMISSIONNREF_id,USERR_id,PERMISSIONN_id,cre_date,cre_userid,chg_date,chg_userid)
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