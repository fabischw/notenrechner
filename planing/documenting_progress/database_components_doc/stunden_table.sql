--table STUNDEN




-- Create sequence 
create sequence S_stunden
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table stunden
(
  stunden_id                    NUMBER(10) not null,
  sday                          VARCHAR(20) not null,
  scount                        NUMBER(2) not null,
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
comment on column stunden.stunden_id is 'ID der Stunde';
comment on column stunden.sday is 'Wochentag der Stunde';
comment on column stunden.scount is 'wievielte Stunde an diesem Tag';
comment on column stunden.cre_date is 'Zeitpunkt der Eintragung der Stunde';
comment on column stunden.cre_userid is 'USER_ID der Eintragung der Stunde';
comment on column stunden.chg_date is 'm�gliches �nderungsdatum der Stundendaten';
comment on column stunden.chg_userid is 'm�glicher �nderungsuser der Stundesdaten';


create unique index IDX_PK_stunden01 on stunden (stunden_id)
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
create index IDX_stunden02 on stunden (stunden_id,sday,scount,cre_date,cre_userid,chg_date,chg_userid)
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

