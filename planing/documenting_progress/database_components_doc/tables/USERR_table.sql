--USERR table

   -- Create sequence 
create sequence S_USERR
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table USERR
(
  USERR_id                      NUMBER(10) not null,
  user_short                    VARCHAR(30)not null ,
  userdate                      DATE not null,
  vorname                       VARCHAR(30) not null,
  nachname                      VARCHAR(30) not null,
  vorname2                      VARCHAR2(30) ,
  user_rank                     VARCHAR(30) not null,
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
comment on column USERR.USERR_id is 'ID USERR';
comment on column USERR.user_short is 'Userk�rzel';
comment on column USERR.userdate is 'Datum, wann der Nutzer zum Team hinzugekommen ist';
comment on column USERR.vorname is 'Vorname des Users';
comment on column USERR.nachname is 'Nachname des Users';
comment on column USERR.vorname2 is '2. Vorname des Users';
comment on column USERR.user_rank is 'Rang/Position des Users';
comment on column USERR.cre_date is 'Zeitpunkt der Eintragung';
comment on column USERR.cre_userid is 'USER_ID der Eintragung';
comment on column USERR.chg_date is 'm�gliches �nderungsdatum der eingetragenen Daten';
comment on column USERR.chg_userid is 'm�glicher �nderungsuser der eingetragenen Daten';


create unique index IDX_PK_USERR01 on USERR (USERR_id)
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
create index IDX_USERR02 on USERR (USERR_id,user_short,userdate,vorname,nachname,user_rank,cre_date,cre_userid,chg_date,chg_userid)
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