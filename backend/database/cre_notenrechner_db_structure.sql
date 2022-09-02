--Grundstruktur f�r Notenrechner Datenbank erstellen


--table NOTEN

-- Create sequence 
create sequence S_noten
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table noten
(
  noten_id                      NUMBER(10) not null,
  score                         NUMBER(2) not null,
  ntype                         VARCHAR(10)  not null,
  kommentar				        VARCHAR2(200),
  doclink                       VARCHAR2(200),
  ndate                         DATE,
  anz_year                      VARCHAR2(100),
  kurs_id                       NUMBER(10) not null,
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
comment on column noten.noten_id is 'ID der Note';
comment on column noten.score is 'Betrag der Note';
comment on column noten.ntype is 'KLN/GLN';
comment on column noten.kommentar is 'Kommentar zu den Noten';
comment on column noten.doclink is 'Link zu Bildern der Arbeit';
comment on column noten.ndate is 'Datum an dem die Arbeit gechrieben wurde';
comment on column noten.anz_year is 'Anzahl der Arbeit im Schuljahr';
comment on column noten.kurs_id  is 'ID des Kurses, inw elchem die Arbeit geschrieben wurde';
comment on column noten.cre_date is 'Zeitpunkt der Eintragung der Note';
comment on column noten.cre_userid is 'USER_ID der Eintragung der Note';
comment on column noten.chg_date is 'm�gliches �nderungsdatum der notendaten';
comment on column noten.chg_userid is 'm�glicher �nderungsuser der notendaten';


create unique index IDX_PK_noten01 on noten (noten_id)
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
create index IDX_noten02 on noten (noten_id,score,ntype,kurs_id,doclink,ndate,cre_date,cre_userid,chg_date,chg_userid)
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





--table LEHRER


-- Create sequence 
create sequence S_lehrer
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table lehrer
(
  lehrer_id                     NUMBER(10) not null,
  vorname                       VARCHAR(30) not null,
  nachname                      VARCHAR(30) not null,
  vorname2                      VARCHAR(30) not null,
  email                         VARCHAR(30) not null,
  kuerzel                       VARCHAR(5) not null,
  an_schule_seit                DATE,
  schule                        VARCHAR(2) not null,
  origin                        VARCHAR(1) not null,
  adresse                       VARCHAR(300) not null,
  gebdatum                      DATE,
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
comment on column lehrer.lehrer_id is 'ID des Lehrers';
comment on column lehrer.vorname is 'Vorname des Lehrers';
comment on column lehrer.nachname is 'Nachname des Lehrers';
comment on column lehrer.vorname2 is '2. Vorname des Lehrers';
comment on column lehrer.email is 'Email-Adresse des Lehrers';
comment on column lehrer.kuerzel is 'K�rzel des Lehrers';
comment on column lehrer.an_schule_seit  is 'Jahr seit dem der Lehrer an der Schule praktiziert';
comment on column lehrer.schule is 'Schule, an welcher der Lehrer praktiziert (cw, wenn beide)';
comment on column lehrer.origin is 'Erstschule des Lehrers(wenn �bernommen von AJG)';
comment on column lehrer.adresse is 'Adresse des Lehrers';
comment on column lehrer.gebdatum is 'Geburtsdatum des Lehrers';
comment on column lehrer.cre_date is 'Zeitpunkt der Eintragung des Lehrers';
comment on column lehrer.cre_userid is 'USER_ID der Eintragung des Lehrers';
comment on column lehrer.chg_date is 'm�gliches �nderungsdatum der lehrerdaten';
comment on column lehrer.chg_userid is 'm�glicher �nderungsuser der lehrerdaten';


create unique index IDX_PK_lehrer01 on lehrer (lehrer_id)
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
create index IDX_lehrer02 on lehrer (lehrer_id,vorname,nachnanme,vorname2,email,kuerzel,schule,origin,an_schule_seit,gebdatum,cre_date,cre_userid,chg_date,chg_userid)
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





-- Create sequence 
create sequence S_lehrer
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table lehrer
(
  lehrer_id                     NUMBER(10) not null,
  vorname                       VARCHAR(30) not null,
  nachname                      VARCHAR(30) not null,
  vorname2                      VARCHAR(30) not null,
  email                         VARCHAR(30) not null,
  kuerzel                       VARCHAR(5) not null,
  an_schule_seit                DATE,
  schule                        VARCHAR(2) not null,
  origin                        VARCHAR(1) not null,
  adresse                       VARCHAR(300) not null,
  gebdatum                      DATE,
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
comment on column lehrer.lehrer_id is 'ID des Lehrers';
comment on column lehrer.vorname is 'Vorname des Lehrers';
comment on column lehrer.nachname is 'Nachname des Lehrers';
comment on column lehrer.vorname2 is '2. Vorname des Lehrers';
comment on column lehrer.email is 'Email-Adresse des Lehrers';
comment on column lehrer.kuerzel is 'K�rzel des Lehrers';
comment on column lehrer.an_schule_seit  is 'Jahr seit dem der Lehrer an der Schule praktiziert';
comment on column lehrer.schule is 'Schule, an welcher der Lehrer praktiziert (cw, wenn beide)';
comment on column lehrer.origin is 'Erstschule des Lehrers(wenn �bernommen von AJG)';
comment on column lehrer.adresse is 'Adresse des Lehrers';
comment on column lehrer.gebdatum is 'Geburtsdatum des Lehrers';
comment on column lehrer.cre_date is 'Zeitpunkt der Eintragung des Lehrers';
comment on column lehrer.cre_userid is 'USER_ID der Eintragung des Lehrers';
comment on column lehrer.chg_date is 'm�gliches �nderungsdatum der lehrerdaten';
comment on column lehrer.chg_userid is 'm�glicher �nderungsuser der lehrerdaten';


create unique index IDX_PK_lehrer01 on lehrer (lehrer_id)
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
create index IDX_lehrer02 on lehrer (lehrer_id,vorname,nachnanme,vorname2,email,kuerzel,schule,origin,an_schule_seit,gebdatum,cre_date,cre_userid,chg_date,chg_userid)
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
  schueler_id                   NUMBER(10) not null,
  vorname                       VARCHAR(30) not null,
  nachname                      VARCHAR(30) not null,
  vorname2                      VARCHAR(30) not null,
  email                         VARCHAR(30) not null,
  an_schule_seit                DATE,
  schule                        VARCHAR(2) not null,
  stufe                         NUMBER(2) not null,
  adresse                       VARCHAR(300) not null,
  salter                        NUMBER(2) not null,
  gebdatum                      DATE,
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
  
  
  

--RESUME WORK HERE

  
  
--table FAECHER



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
  fname                          VARCHAR(40) not null,
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

