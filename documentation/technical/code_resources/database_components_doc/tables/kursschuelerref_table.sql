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
  kursschuelerref_id            NUMBER(10) not null PRIMARY KEY,
  kurs_id                       NUMBER(10) not null,
  schueler_id                   NUMBER(10) not null,
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
comment on column kursschuelerref.kursschuelerref_id is 'ID kursschuelerref';
comment on column kursschuelerref.kurs_id is 'Kurs ID';
comment on column kursschuelerref.schueler_id is 'Sch�ler ID';
comment on column kursschuelerref.cre_date is 'Zeitpunkt der Eintragung';
comment on column kursschuelerref.cre_userid is 'USER_ID der Eintragung';
comment on column kursschuelerref.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column kursschuelerref.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


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

--Index f�r Daten, die oft abgerufen werden
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
