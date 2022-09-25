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
  kurs_id                       NUMBER(10) not null PRIMARY KEY,
  lehrer_id                     NUMBER(10) not null,
  fach_id                       NUMBER(10) not null,
  stundenzahl                   NUMBER(2) not null,
  stufe                         NUMBER(2) not null,
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
comment on column kurs.kurs_id is 'ID des Kurses';
comment on column kurs.lehrer_id is 'ID des unterrichtenden Lehrers';
comment on column kurs.fach_id is 'ID des Fachs, welches unterrichtet wird';
comment on column kurs.stundenzahl is 'Stundenzahl des Kurses (pro Woche)';
comment on column kurs.stufe is 'Klassenstufe';
comment on column kurs.cre_date is 'Zeitpunkt der Eintragung des Kurses';
comment on column kurs.cre_userid is 'USER_ID der Eintragung des Kurses';
comment on column kurs.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column kurs.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


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

--Index f�r Daten, die oft abgerufen werden
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
  