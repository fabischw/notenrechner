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
  arbeiten_id                   NUMBER(10) not null PRIMARY KEY,
  atype                         VARCHAR(3) not null,
  kurs_id                       NUMBER(10) not null,
  datum                         DATE not null,
  acount                        NUMBER(10),
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
comment on column arbeiten.arbeiten_id is 'ID der Arbeit';
comment on column arbeiten.atype is 'Typ der Arbeit (KLN/GLN)';
comment on column arbeiten.kurs_id is 'ID des Kurses, in der die Arbeit geschrieben wird';
comment on column arbeit.datum is 'Datum, an welchem die Arbeit geschrieben wird';
comment on column arbeiten.acount is 'wievielte Arbeit in Kurs';
comment on column arbeiten.cre_date is 'Zeitpunkt der Eintragung der Arbeit';
comment on column arbeiten.cre_userid is 'USER_ID der Eintragung der Arbeit';
comment on column arbeiten.chg_date is 'm�gliches �nderungsdatum der Arbeitsdaten';
comment on column arbeiten.chg_userid is 'm�glicher �nderungsuser der Arbeitsdaten';


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

--Index f�r Daten, die oft abgerufen werden
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

