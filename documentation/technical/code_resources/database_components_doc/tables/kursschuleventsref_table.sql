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
  kursschuleventsref_id         NUMBER(10) not null PRIMARY KEY,
  kurs_id                       NUMBER(10) not null,
  schulevents_id                NUMBER(10) not null,
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
comment on column kursschuleventsref.kursschuleventsref_id is 'ID kursschuleventsref';
comment on column kursschuleventsref.kurs_id is 'Kurs ID';
comment on column kursschuleventsref.schulevents_id is 'Schulevents ID';
comment on column kursschuleventsref.cre_date is 'Zeitpunkt der Eintragung';
comment on column kursschuleventsref.cre_userid is 'USER_ID der Eintragung';
comment on column kursschuleventsref.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column kursschuleventsref.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


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

--Index f�r Daten, die oft abgerufen werden
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