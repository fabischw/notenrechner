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
comment on column schulevents.chg_date is 'm�gliches �nderungsdatum der Arbeitsdaten';
comment on column schulevents.chg_userid is 'm�glicher �nderungsuser der Arbeitsdaten';


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

--Index f�r Daten, die oft abgerufen werden
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


