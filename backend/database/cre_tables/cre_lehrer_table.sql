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
  lehrer_id                      NUMBER(10) not null,
  lehrer_vorname                 VARCHAR(30) not null,
  lehrer_nachname                VARCHAR(30)  not null,
  lehrer_vorname2				 VARCHAR2(30),
  lehrer_email                   VARCHAR(30) not null,
  lehrer_kuerzel                 VARCHAR(5) not null,
  lehrer_an_schule_seit          DATE,
  lehrer_schule                  VARCHAR(2) not null,
  lehrer_origin                  VARCHAR(1) not null,
  lehrer_wohnort                 VARCHAR2(40),
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
comment on column lehrer.lehrer_nachname is 'Nachname des Lehrers';
comment on column lehrer.lehrer_vorname is 'Vorname des Lehrers';
comment on column lehrer.lehrer_vorname2 is '2. Vorname des Lehrers';
comment on column lehrer.lehrer_email is 'Email des Lehrers';
comment on column lehrer.lehrer_kuerzel is 'Kürzel des Lehrers';
comment on column lehrer.lehrer_an_schule_seit is 'Zeitpunkt seit dem der Lehrer an der Schule ist';
comment on column lehrer.lehrer_schule is 'Schule, an welcher der Lehrer praktiziert (c = Cusanus, w = Wendalinum, cw = Beide';
comment on column lehrer.cre_date is 'Zeitpunkt der Eintragung des Lehrers';
comment on column lehrer.cre_userid is 'USER_ID der Eintragung des Lehrers';
comment on column lehrer.chg_date is 'mögliches Änderungsdatum der Lehrerdaten';
comment on column lehrer.chg_userid is 'möglicher Änderungsuser der Lehrerdaten';
comment on column lehrer_origin is 'Urprungsschule des Lehrers (c = Cusanus, w = Wendalinum, a = AJG)';
comment on column lehrer_wohnort is 'Wohnort des Lehrers';


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

-Index für Daten, die oft abgerufenwerden
create index IDX_lehrer02 on lehrer (lehrer_vorname, lehrer_id,lehrer_kuerzel,lehrer_an_schule_seit,lehrer_nachname,lehrer_schule)
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


--statement für das Hinzufügen von lehrern in der Tabelle
--insert into lehrer (lehrer_id, lehrer_name) values (s_lehrer.nextval, 'SCHWARZ');
