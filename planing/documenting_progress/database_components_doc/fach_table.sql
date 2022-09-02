--table FACH



-- Create sequence 
create sequence S_fach
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table fach
(
  fach_id                       NUMBER(10) not null,
  fname                         VARCHAR(40) not null,
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
comment on column fach.fach_id is 'ID des Fachs';
comment on column fach.fname is 'Name des Fachs';
comment on column fach.cre_date is 'Zeitpunkt der Eintragung des Fachs';
comment on column fach.cre_userid is 'USER_ID der Eintragung des Fachs';
comment on column fach.chg_date is 'm�gliches �nderungsdatum der Fachsdaten';
comment on column fach.chg_userid is 'm�glicher �nderungsuser der Fachsdaten';


create unique index IDX_PK_fach01 on fach (fach_id)
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
create index IDX_fach02 on fach (fach_id,fname,cre_date,cre_userid,chg_date,chg_userid)
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


