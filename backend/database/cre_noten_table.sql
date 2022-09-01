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
  noten_score                   NUMBER(2) not null,
  noten_type                    VARCHAR(10)  not null,
  noten_kommentar				VARCHAR2(100),
  noten_doclink                 VARCHAR2(200),
  noten_date                    DATE,
  noten_anz_year                VARCHAR2(100),
  noten_fach                    VARCHAR(50) not null,
  noten_lehrer_kurz             VARCHAR(5) not null,
  cre_userid                    VARCHAR2(30),
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
comment on column noten.noten_score is 'Betrag der Note';
comment on column noten.noten_type is 'KLN/GLN';
comment on column noten.noten_kommentar is 'Kommentar zu den Noten';
comment on column noten.noten_doclink is 'Link zu Bildern der Arbeit';
comment on column noten.noten_date is 'Datum der Arbeit';
comment on column noten.noten_anz_year is 'Anzahl der Arbeit im Schuljahr';
comment on column noten.noten_fach is 'Fach, in welchem die Arbeit geschrieben wurde';
comment on column noten.noten_lehrer_kurz is 'Lehrer(Kürzel) bei dem die Arbeit geschrieben wurde';
comment on column noten.cre_date is 'Zeitpunkt der Eintragung der Note';
comment on column noten.cre_userid is 'USER_ID der Eintragung der Note';
comment on column noten.chg_date is 'mögliches Änderungsdatum der notendaten';
comment on column noten.chg_userid is 'möglicher Änderungsuser der notendaten';


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

--Index für Daten, die oft abgerufen werden
create index IDX_noten02 on noten (noten_id,noten_score,noten_lehrer_kurz,noten_fach,)
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


--statement für das Hinzufügen von notenn in der Tabelle
--insert into noten (noten_id, noten_name) values (s_noten.nextval, 'SCHWARZ');
