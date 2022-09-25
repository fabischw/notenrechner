--table NOTEN

-- Create sequence 
create sequence S_noten
minvalue 1
maxvalue 9999999999
start with 1
increment by 1
cache 10
cycle;


-- Create table
create table noten
(
  noten_id                      NUMBER(10) not null,
  score                         NUMBER(2) not null,
  ntype                         VARCHAR(10)  not null,
  kommentar				        VARCHAR2(200),
  doclink                       VARCHAR2(200),
  ndate                         DATE,
  anz_year                      VARCHAR2(100),
  kurs_id                       NUMBER(10) not null,
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
comment on column noten.noten_id is 'ID der Note';
comment on column noten.score is 'Betrag der Note';
comment on column noten.ntype is 'KLN/GLN';
comment on column noten.kommentar is 'Kommentar zu den Noten';
comment on column noten.doclink is 'Link zu Bildern der Arbeit';
comment on column noten.ndate is 'Datum an dem die Arbeit gechrieben wurde';
comment on column noten.anz_year is 'Anzahl der Arbeit im Schuljahr';
comment on column noten.kurs_id  is 'ID des Kurses, inw elchem die Arbeit geschrieben wurde';
comment on column noten.cre_date is 'Zeitpunkt der Eintragung der Note';
comment on column noten.cre_userid is 'USER_ID der Eintragung der Note';
comment on column noten.chg_date is 'm�gliches �nderungsdatum der notendaten';
comment on column noten.chg_userid is 'm�glicher �nderungsuser der notendaten';


create unique index IDX_PK_noten01 on noten (noten_id)
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
create index IDX_noten02 on noten (noten_id,score,ntype,kurs_id,doclink,ndate,cre_date,cre_userid,chg_date,chg_userid)
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

