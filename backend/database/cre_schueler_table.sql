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
  schueler_id                      NUMBER(10) not null,
  schueler_vorname                 VARCHAR(30) not null,
  schueler_nachname                VARCHAR(30)  not null,
  schueler_vorname2				         VARCHAR2(30),
  schueler_email                   VARCHAR(30) not null,
  schueler_kuerzel                 VARCHAR(5) not null,
  schueler_an_schule_seit          DATE,
  schueler_schule                  VARCHAR(2) not null,
  schueler_origin                  VARCHAR(1) not null,
  schueler_wohnort                 VARCHAR2(40),
  cre_userid                     VARCHAR2(30),
  cre_date                       DATE not null,
  chg_userid                     VARCHAR2(30),
  chg_date                       DATE
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
comment on column schueler.schueler_nachname is 'Nachname des schuelers';
comment on column schueler.schueler_vorname is 'Vorname des schuelers';
comment on column schueler.schueler_vorname2 is '2. Vorname des schuelers';
comment on column schueler.schueler_email is 'Email des schuelers';
comment on column schueler.schueler_kuerzel is 'Kürzel des schuelers';
comment on column schueler.schueler_an_schule_seit is 'Zeitpunkt seit dem der schueler an der Schule ist';
comment on column schueler.schueler_schule is 'Schule, an welcher der schueler praktiziert (c = Cusanus, w = Wendalinum, cw = Beide';
comment on column schueler.cre_date is 'Zeitpunkt der Eintragung des schuelers';
comment on column schueler.cre_userid is 'USER_ID der Eintragung des schuelers';
comment on column schueler.chg_date is 'mögliches Änderungsdatum der schuelerdaten';
comment on column schueler.chg_userid is 'möglicher Änderungsuser der schuelerdaten';
comment on column schueler_origin is 'Urprungsschule des schuelers (c = Cusanus, w = Wendalinum, a = AJG)';
comment on column schueler_wohnort is 'Wohnort des schuelers';


create unique index IDX_PK_schueler01 on schueler (schueler_id)
  tablespace users
  pctfree 10
  initrans 2
  maxtrans 255
  storageschueler
  (
    initial 64K
    next 64K
    minextents 1
    maxextents unlimited
  );

-Index für Daten, die oft abgerufenwerden
create index IDX_schueler02 on schueler (schueler_vorname, schueler_id,schueler_kuerzel,schueler_an_schule_seit,schueler_nachname,schueler_schule)
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


--statement für das Hinzufügen von schuelern in der Tabelle
--insert into schueler (schueler_id, schueler_name) values (s_schueler.nextval, 'SCHWARZ');