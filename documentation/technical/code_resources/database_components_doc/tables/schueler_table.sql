--table SCHUELER



-- Create sequence 
create sequence S_schueler
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table schueler
(
  schueler_id                   NUMBER(10) not null PRIMARY KEY,
  vorname                       VARCHAR(30) not null,
  nachname                      VARCHAR(30) not null,
  vorname2                      VARCHAR(30) not null,
  email                         VARCHAR(30) not null,
  an_schule_seit                DATE,
  schule                        VARCHAR(2) not null,
  stufe                         NUMBER(2) not null,
  adresse                       VARCHAR2(300),
  salter                        NUMBER(2) not null,
  gebdatum                      DATE,
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
comment on column schueler.schueler_id is 'ID des Sch�lers';
comment on column schueler.vorname is 'Vorname des Sch�lers';
comment on column schueler.nachname is 'Nachname des Sch�lers';
comment on column schueler.vorname2 is '2. Vorname des Sch�lers';
comment on column schueler.email is 'Email-Adresse des Sch�lers';
comment on column schueler.an_schule_seit  is 'Jahr seit dem der Sch�ler an der Schule ist';
comment on column schueler.schule is 'Schule, an welcher der Sch�ler ist';
comment on column schueler.stufe is 'Stufe, in welcher der Sch�ler ist';
comment on column schueler.adresse is 'Adresse des Sch�lers';
comment on column schueler.salter is 'Alter des Sch�lers in J';
comment on column schueler.gebdatum is 'Geburtsdatum des Sch�lers';
comment on column schueler.cre_date is 'Zeitpunkt der Eintragung des Sch�lers';
comment on column schueler.cre_userid is 'USER_ID der Eintragung des Sch�lers';
comment on column schueler.chg_date is 'm�gliches �nderungsdatum der Sch�lersdaten';
comment on column schueler.chg_userid is 'm�glicher �nderungsuser der Sch�lersdaten';


create unique index IDX_PK_schueler01 on schueler (schueler_id)
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
create index IDX_schueler02 on schueler (schueler_id,vorname,nachnanme,vorname2,email,schule,salter,stufe,an_schule_seit,gebdatum,cre_date,cre_userid,chg_date,chg_userid)
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