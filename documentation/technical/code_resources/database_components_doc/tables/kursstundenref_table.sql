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
comment on column kursstundenref.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column kursstundenref.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


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

--Index f�r Daten, die oft abgerufen werden
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
  
  