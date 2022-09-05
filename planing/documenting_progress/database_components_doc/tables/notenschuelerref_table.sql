--NOTEN-SCHUELER-REF


-- Create sequence 
create sequence S_notenschuelerref
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table notenschuelerref
(
  notenschuelerref_id           NUMBER(10) not null,
  noten_id                      NUMBER(10) not null,
  schueler_id                   NUMBER(10) not null,
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
comment on column notenschuelerref.notenschuelerref_id is 'ID notenschuelerref';
comment on column notenschuelerref.noten_id is 'Noten ID';
comment on column notenschuelerref.schueler_id is 'Sch�ler ID';
comment on column notenschuelerref.cre_date is 'Zeitpunkt der Eintragung';
comment on column notenschuelerref.cre_userid is 'USER_ID der Eintragung';
comment on column notenschuelerref.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column notenschuelerref.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_notenschuelerref01 on notenschuelerref (notenschuelerref_id)
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
create index IDX_notenschuelerref02 on notenschuelerref (notenschuelerref_id,noten_id,schueler_id,cre_date,cre_userid,chg_date,chg_userid)
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
