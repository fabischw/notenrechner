--Grundstruktur für Notenrechner Datenbank erstellen


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
comment on column noten.chg_date is 'mögliches Änderungsdatum der notendaten';
comment on column noten.chg_userid is 'möglicher Änderungsuser der notendaten';


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

--Index für Daten, die oft abgerufen werden
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
comment on column lehrer.kuerzel is 'Kürzel des Lehrers';
comment on column lehrer.an_schule_seit  is 'Jahr seit dem der Lehrer an der Schule praktiziert';
comment on column lehrer.schule is 'Schule, an welcher der Lehrer praktiziert (cw, wenn beide)';
comment on column lehrer.origin is 'Erstschule des Lehrers(wenn übernommen von AJG)';
comment on column lehrer.adresse is 'Adresse des Lehrers';
comment on column lehrer.gebdatum is 'Geburtsdatum des Lehrers';
comment on column lehrer.cre_date is 'Zeitpunkt der Eintragung des Lehrers';
comment on column lehrer.cre_userid is 'USER_ID der Eintragung des Lehrers';
comment on column lehrer.chg_date is 'mögliches Änderungsdatum der lehrerdaten';
comment on column lehrer.chg_userid is 'möglicher Änderungsuser der lehrerdaten';


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

--Index für Daten, die oft abgerufen werden
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
comment on column schueler.schueler_id is 'ID des Schülers';
comment on column schueler.vorname is 'Vorname des Schülers';
comment on column schueler.nachname is 'Nachname des Schülers';
comment on column schueler.vorname2 is '2. Vorname des Schülers';
comment on column schueler.email is 'Email-Adresse des Schülers';
comment on column schueler.an_schule_seit  is 'Jahr seit dem der Schüler an der Schule ist';
comment on column schueler.schule is 'Schule, an welcher der Schüler ist';
comment on column schueler.stufe is 'Stufe, in welcher der Schüler ist';
comment on column schueler.adresse is 'Adresse des Schülers';
comment on column schueler.salter is 'Alter des Schülers in J';
comment on column schueler.gebdatum is 'Geburtsdatum des Schülers';
comment on column schueler.cre_date is 'Zeitpunkt der Eintragung des Schülers';
comment on column schueler.cre_userid is 'USER_ID der Eintragung des Schülers';
comment on column schueler.chg_date is 'mögliches Änderungsdatum der Schülersdaten';
comment on column schueler.chg_userid is 'möglicher Änderungsuser der Schülersdaten';


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

--Index für Daten, die oft abgerufen werden
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
comment on column fach.chg_date is 'mögliches Änderungsdatum der Fachsdaten';
comment on column fach.chg_userid is 'möglicher Änderungsuser der Fachsdaten';


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

--Index für Daten, die oft abgerufen werden
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





--table STUNDEN




-- Create sequence 
create sequence S_stunden
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table stunden
(
  stunden_id                    NUMBER(10) not null,
  sday                          VARCHAR(20) not null,
  scount                        NUMBER(2) not null,
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
comment on column stunden.stunden_id is 'ID der Stunde';
comment on column stunden.sday is 'Wochentag der Stunde';
comment on column stunden.scount is 'wievielte Stunde an diesem Tag';
comment on column stunden.cre_date is 'Zeitpunkt der Eintragung der Stunde';
comment on column stunden.cre_userid is 'USER_ID der Eintragung der Stunde';
comment on column stunden.chg_date is 'mögliches Änderungsdatum der Stundendaten';
comment on column stunden.chg_userid is 'möglicher Änderungsuser der Stundesdaten';


create unique index IDX_PK_stunden01 on stunden (stunden_id)
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

--Index für Daten, die oft abgerufen werden
create index IDX_stunden02 on stunden (stunden_id,sday,scount,cre_date,cre_userid,chg_date,chg_userid)
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





--table arbeiten


-- Create sequence 
create sequence S_arbeiten
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table arbeiten
(
  arbeiten_id                   NUMBER(10) not null,
  atype                         VARCHAR(3) not null,
  kurs_id                       NUMBER(10) not null,
  datum                         DATE not null,
  acount                        NUMBER(10),
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
comment on column arbeiten.arbeiten_id is 'ID der Arbeit';
comment on column arbeiten.atype is 'Typ der Arbeit (KLN/GLN)';
comment on column arbeiten.kurs_id is 'ID des Kurses, in der die Arbeit geschrieben wird';
comment on column arbeit.datum is 'Datum, an welchem die Arbeit geschrieben wird';
comment on column arbeiten.acount is 'wievielte Arbeit in Kurs';
comment on column arbeiten.cre_date is 'Zeitpunkt der Eintragung der Arbeit';
comment on column arbeiten.cre_userid is 'USER_ID der Eintragung der Arbeit';
comment on column arbeiten.chg_date is 'mögliches Änderungsdatum der Arbeitsdaten';
comment on column arbeiten.chg_userid is 'möglicher Änderungsuser der Arbeitsdaten';


create unique index IDX_PK_arbeiten01 on arbeiten (arbeiten_id)
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

--Index für Daten, die oft abgerufen werden
create index IDX_arbeiten02 on arbeiten (arbeiten_id,atype,kurs_id,datum,acount,cre_date,cre_userid,chg_date,chg_userid)
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








--table schulevents



-- Create sequence 
create sequence S_schulevents
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table schulevents
(
  schulevents_id                NUMBER(10) not null,
  descript                      VARCHAR(200) not null,
  datum                         DATE not null,
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
comment on column schulevents.schulevents_id is 'ID des Schulevents';
comment on column schulevents.descript is 'Beschreibung des Schulevents';
comment on column schulevents.datum is 'Datum, an welchem das Event abgehalten wird';
comment on column schulevents.cre_date is 'Zeitpunkt der Eintragung der Arbeit';
comment on column schulevents.cre_userid is 'USER_ID der Eintragung der Arbeit';
comment on column schulevents.chg_date is 'mögliches Änderungsdatum der Arbeitsdaten';
comment on column schulevents.chg_userid is 'möglicher Änderungsuser der Arbeitsdaten';


create unique index IDX_PK_schulevents01 on schulevents (schulevents_id)
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

--Index für Daten, die oft abgerufen werden
create index IDX_schulevents02 on schulevents (schulevents_id,datum,descript,cre_date,cre_userid,chg_date,chg_userid)
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




--table kalender



-- Create sequence 
create sequence S_kalender
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table kalender
(
  kalender_id                   NUMBER(10) not null,
  descript                      VARCHAR(200) not null,
  datum                         DATE not null,
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
comment on column kalender.kalender_id is 'ID des kalender';
comment on column kalender.descript is 'Beschreibung des events';
comment on column kalender.datum is 'Datum, an welchem das Event aauftritt wird, evtnl mit Zeit';
comment on column kalender.cre_date is 'Zeitpunkt der Eintragung der Arbeit';
comment on column kalender.cre_userid is 'USER_ID der Eintragung der Arbeit';
comment on column kalender.chg_date is 'mögliches Änderungsdatum der Arbeitsdaten';
comment on column kalender.chg_userid is 'möglicher Änderungsuser der Arbeitsdaten';


create unique index IDX_PK_kalender01 on kalender (kalender_id)
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

--Index für Daten, die oft abgerufen werden
create index IDX_kalender02 on kalender (kalender_id,datum,descript,cre_date,cre_userid,chg_date,chg_userid)
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
  
  
  
  --table KURS
  
  
-- Create sequence 
create sequence S_kurs
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table kurs
(
  kurs_id                       NUMBER(10) not null,
  lehrer_id                     NUMBER(10) not null,
  fach_id                       NUMBER(10) not null,
  stundenzahl                   NUMBER(2) not null,
  stufe                         NUMBER(2) not null,
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
comment on column kurs.kurs_id is 'ID des Kurses';
comment on column kurs.cre_date is 'Zeitpunkt der Eintragung der Arbeit';
comment on column kurs.cre_userid is 'USER_ID der Eintragung der Arbeit';
comment on column kurs.chg_date is 'mögliches Änderungsdatum der Arbeitsdaten';
comment on column kurs.chg_userid is 'möglicher Änderungsuser der Arbeitsdaten';


create unique index IDX_PK_kurs01 on kurs (kurs_id)
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

--Index für Daten, die oft abgerufen werden
create index IDX_kurs02 on kurs (kurs_id,datum,descript,cre_date,cre_userid,chg_date,chg_userid)
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