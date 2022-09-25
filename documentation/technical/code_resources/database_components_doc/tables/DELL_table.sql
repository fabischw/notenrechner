 --DEL table 
 
 
 -- Create sequence 
create sequence S_DELL
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table DELLL
(
  DELL_id                       NUMBER(10) not null,
  memory_location               VARCHAR2(500) ,
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
comment on column DELL.DELL_id is 'ID DELL';
comment on column DELL.memory_location is 'Speicherort der gel�schten Daten';
comment on column DELL.cre_date is 'Zeitpunkt der Eintragung';
comment on column DELL.cre_userid is 'USER_ID der Eintragung';
comment on column DELL.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column DELL.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_DELL01 on DELL (DELL_id)
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
create index IDX_DELL02 on DELL (DELL_id,memory_location,cre_date,cre_userid,chg_date,chg_userid)
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
  