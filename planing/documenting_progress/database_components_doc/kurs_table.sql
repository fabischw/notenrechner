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
comment on column kurs.chg_date is 'm�gliches �nderungsdatum der Arbeitsdaten';
comment on column kurs.chg_userid is 'm�glicher �nderungsuser der Arbeitsdaten';


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