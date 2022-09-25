--table kalender



-- Create sequence 
create sequence S_kalender
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table kalender
(
  kalender_id                   NUMBER(10) not null PRIMARY KEY,
  descript                      VARCHAR(200) not null,
  datum                         DATE not null,
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
comment on column kalender.kalender_id is 'ID des kalender';
comment on column kalender.descript is 'Beschreibung des Events';
comment on column kalender.datum is 'Datum, an welchem das Event auftritt wird, evtnl mit Zeit';
comment on column kalender.cre_date is 'Zeitpunkt der Eintragung';
comment on column kalender.cre_userid is 'USER_ID der Eintragung';
comment on column kalender.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column kalender.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_kalender01 on kalender (kalender_id)
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
create index IDX_kalender02 on kalender (kalender_id,datum,descript,cre_date,cre_userid,chg_date,chg_userid)
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