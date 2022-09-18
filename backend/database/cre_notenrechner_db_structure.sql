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
comment on column kalender.descript is 'Beschreibung desEevents';
comment on column kalender.datum is 'Datum, an welchem das Event auftritt wird, evtnl mit Zeit';
comment on column kalender.cre_date is 'Zeitpunkt der Eintragung';
comment on column kalender.cre_userid is 'USER_ID der Eintragung';
comment on column kalender.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column kalender.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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
comment on column kurs.lehrer_id is 'ID des unterrichtenden Lehrers';
comment on column kurs.fach_id is 'ID des Fachs, welches unterrichtet wird';
comment on column kurs.stundenzahl is 'Stundenzahl des Kurses (pro Woche)';
comment on column kurs.stufe is 'Klassenstufe';
comment on column kurs.cre_date is 'Zeitpunkt der Eintragung des Kurses';
comment on column kurs.cre_userid is 'USER_ID der Eintragung des Kurses';
comment on column kurs.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column kurs.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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
create index IDX_kurs02 on kurs (kurs_id,lehrer_id,fach_id,stundenzahl,stufe,cre_date,cre_userid,chg_date,chg_userid)
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
  
  
  
  --REF TABELLEN
  


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
comment on column notenschuelerref.schueler_id is 'Schüler ID';
comment on column notenschuelerref.cre_date is 'Zeitpunkt der Eintragung';
comment on column notenschuelerref.cre_userid is 'USER_ID der Eintragung';
comment on column notenschuelerref.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column notenschuelerref.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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

--Index für Daten, die oft abgerufen werden
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
  lehrerfachref_id              NUMBER(10) not null,
  lehrer_id                     NUMBER(10) not null,
  fach_id                       NUMBER(10) not null,
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
comment on column lehrerfachref.lehrerfachref_id is 'ID lehrerfachref';
comment on column lehrerfachref.lehrer_id is 'Lehrer ID';
comment on column lehrerfachref.fach_id is 'Fach ID';
comment on column lehrerfachref.cre_date is 'Zeitpunkt der Eintragung';
comment on column lehrerfachref.cre_userid is 'USER_ID der Eintragung';
comment on column lehrerfachref.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column lehrerfachref.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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

--Index für Daten, die oft abgerufen werden
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




--KURS-SCHUELER-REF


-- Create sequence 
create sequence S_kursschuelerref
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table kursschuelerref
(
  kursschuelerref_id            NUMBER(10) not null,
  kurs_id                       NUMBER(10) not null,
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
comment on column kursschuelerref.kursschuelerref_id is 'ID kursschuelerref';
comment on column kursschuelerref.kurs_id is 'Kurs ID';
comment on column kursschuelerref.schueler_id is 'Schüler ID';
comment on column kursschuelerref.cre_date is 'Zeitpunkt der Eintragung';
comment on column kursschuelerref.cre_userid is 'USER_ID der Eintragung';
comment on column kursschuelerref.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column kursschuelerref.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


create unique index IDX_PK_kursschuelerref01 on kursschuelerref (kursschuelerref_id)
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
create index IDX_kursschuelerref02 on kursschuelerref (kursschuelerref_id,kurs_id,schueler_id,cre_date,cre_userid,chg_date,chg_userid)
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




--KURS-SCHULEVENTS-REF




-- Create sequence 
create sequence S_kursschuleventsref
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table kursschuleventsref
(
  kursschuleventsref_id         NUMBER(10) not null,
  kurs_id                       NUMBER(10) not null,
  schulevents_id                NUMBER(10) not null,
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
comment on column kursschuleventsref.kursschuleventsref_id is 'ID kursschuleventsref';
comment on column kursschuleventsref.kurs_id is 'Kurs ID';
comment on column kursschuleventsref.schulevents_id is 'Schulevents ID';
comment on column kursschuleventsref.cre_date is 'Zeitpunkt der Eintragung';
comment on column kursschuleventsref.cre_userid is 'USER_ID der Eintragung';
comment on column kursschuleventsref.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column kursschuleventsref.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


create unique index IDX_PK_kursschuleventsref01 on kursschuleventsref (kursschuleventsref_id)
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
create index IDX_kursschuleventsref02 on kursschuleventsref (kursschuleventsref_id,kurs_id,schulevents_id,cre_date,cre_userid,chg_date,chg_userid)
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



--KURS-STUNDEN-REF



-- Create sequence 
create sequence S_kursstundenref
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table kursstundenref
(
  kursstundenref_id             NUMBER(10) not null,
  kurs_id                       NUMBER(10) not null,
  stunden_id                    NUMBER(10) not null,
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
comment on column kursstundenref.kursstundenref_id is 'ID kursstundenref';
comment on column kursstundenref.kurs_id is 'Kurs ID';
comment on column kursstundenref.stunden_id is 'Stunden ID';
comment on column kursstundenref.cre_date is 'Zeitpunkt der Eintragung';
comment on column kursstundenref.cre_userid is 'USER_ID der Eintragung';
comment on column kursstundenref.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column kursstundenref.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


create unique index IDX_PK_kursstundenref01 on kursstundenref (kursstundenref_id)
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
create index IDX_kursstundenref02 on kursstundenref (kursstundenref_id,kurs_id,stunden_id,cre_date,cre_userid,chg_date,chg_userid)
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
  

  
--LOG table


-- Create sequence 
create sequence S_LOG
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table LOGS
(
  LOG_id                        NUMBER(10) not null,
  table_id                      NUMBER(10) not null,
  updt_user                     VARCHAR2(30) ,
  update_type                   VARCHAR2(30) ,
  message                       VARCHAR2(50) ,
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
comment on column LOGS.LOG_id is 'ID LOG';
comment on column LOGS.table_id is 'table ID';
comment on column LOGS.updt_user is 'Username des update Users';
comment on column LOGS.update_type is 'Update typ';
comment on column LOGS.message is 'additional message';
comment on column LOGS.cre_date is 'Zeitpunkt der Eintragung';
comment on column LOGS.cre_userid is 'USER_ID der Eintragung';
comment on column LOGS.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column LOGS.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


create unique index IDX_PK_LOG01 on LOG (LOG_id)
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
create index IDX_LOG02 on LOG (LOG_id,table_id,updt_user,update_type,cre_date,cre_userid,chg_date,chg_userid)
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
comment on column DELL.memory_location is 'Speicherort der gelöschten Daten';
comment on column DELL.cre_date is 'Zeitpunkt der Eintragung';
comment on column DELL.cre_userid is 'USER_ID der Eintragung';
comment on column DELL.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column DELL.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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

--Index für Daten, die oft abgerufen werden
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
  TABLESS_id                    NUMBER(10) not null,
  table_name                    VARCHAR(50)not null ,
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
comment on column TABLESS.TABLESS_id is 'ID TABLESS';
comment on column TABLESS.table_name is 'Name des tables';
comment on column TABLESS.cre_date is 'Zeitpunkt der Eintragung';
comment on column TABLESS.cre_userid is 'USER_ID der Eintragung';
comment on column TABLESS.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column TABLESS.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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

--Index für Daten, die oft abgerufen werden
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
   


--USERR table

   -- Create sequence 
create sequence S_USERR
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table USERR
(
  USERR_id                      NUMBER(10) not null,
  user_short                    VARCHAR(30)not null ,
  userdate                      DATE not null,
  vorname                       VARCHAR(30) not null,
  nachname                      VARCHAR(30) not null,
  vorname2                      VARCHAR2(30) ,
  user_rank                     VARCHAR(30) not null,
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
comment on column USERR.USERR_id is 'ID USERR';
comment on column USERR.user_short is 'Userkürzel';
comment on column USERR.userdate is 'Datum, wann der Nutzer zum Team hinzugekommen ist';
comment on column USERR.vorname is 'Vorname des Users';
comment on column USERR.nachname is 'Nachname des Users';
comment on column USERR.vorname2 is '2. Vorname des Users';
comment on column USERR.user_rank is 'Rang/Position des Users';
comment on column USERR.cre_date is 'Zeitpunkt der Eintragung';
comment on column USERR.cre_userid is 'USER_ID der Eintragung';
comment on column USERR.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column USERR.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


create unique index IDX_PK_USERR01 on USERR (USERR_id)
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
create index IDX_USERR02 on USERR (USERR_id,user_short,userdate,vorname,nachname,user_rank,cre_date,cre_userid,chg_date,chg_userid)
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
comment on column PERMISSIONN.table_name is 'Name des tables, für den die Berechtigungen gelten';
comment on column PERMISSIONN.table_scope is 'permission scope des tables';
comment on column PERMISSIONN.cre_date is 'Zeitpunkt der Eintragung';
comment on column PERMISSIONN.cre_userid is 'USER_ID der Eintragung';
comment on column PERMISSIONN.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column PERMISSIONN.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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

--Index für Daten, die oft abgerufen werden
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




-- USERR-PERMISSIONN-REF


   -- Create sequence 
create sequence S_USERRUSERRPERMISSIONNREFNREF
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
comment on column USERRPERMISSIONNREFREF.chg_date is 'mögliches Änderungsdatum der eingetragenen Daten';
comment on column USERRPERMISSIONNREF.chg_userid is 'möglicher Änderungsuser der eingetragenen Daten';


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

--Index für Daten, die oft abgerufen werden
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