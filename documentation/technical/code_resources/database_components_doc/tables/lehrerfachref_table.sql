--LEHRER-FACH-REF


-- Create sequence 
create sequence S_lehrerfachref
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table lehrerfachref
(
  lehrerfachref_id              NUMBER(10) not null PRIMARY KEY,
  lehrer_id                     NUMBER(10) not null,
  fach_id                       NUMBER(10) not null,
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
comment on column lehrerfachref.lehrerfachref_id is 'ID lehrerfachref';
comment on column lehrerfachref.lehrer_id is 'Lehrer ID';
comment on column lehrerfachref.fach_id is 'Fach ID';
comment on column lehrerfachref.cre_date is 'Zeitpunkt der Eintragung';
comment on column lehrerfachref.cre_userid is 'USER_ID der Eintragung';
comment on column lehrerfachref.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column lehrerfachref.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_lehrerfachref01 on lehrerfachref (lehrerfachref_id)
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
create index IDX_lehrerfachref02 on lehrerfachref (lehrerfachref_id,lehrer_id,fach_id,cre_date,cre_userid,chg_date,chg_userid)
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