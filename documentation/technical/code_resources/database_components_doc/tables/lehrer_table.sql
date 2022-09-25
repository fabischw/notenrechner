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
  lehrer_id                     NUMBER(10) not null PRIMARY KEY,
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
