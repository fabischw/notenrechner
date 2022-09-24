-- in diesem Skript sind Standard templates hinterlegt (z.B. sys(notenrechner) tables oder fächer und stunden tables)
--dieses Skript muss nur ein Mal ausgeührt werden.
-- cre_userid = template_public


--TABLESS table


--kurs
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'kurs','template_public',trunc(sysdate))

--stunden
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'stunden','template_public',trunc(sysdate))

--fach
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'fach','template_public',trunc(sysdate))

--schul_events
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'schul_events','template_public',trunc(sysdate))

--arbeiten
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'arbeiten','template_public',trunc(sysdate))

--kalender
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'kalender','template_public',trunc(sysdate))

--schueler
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'schueler','template_public',trunc(sysdate))

--noten
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'noten','template_public',trunc(sysdate))

--lehrer
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'lehrer','template_public',trunc(sysdate))

--fach
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'fach','template_public',trunc(sysdate))

--kurs-events-ref
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'kurs-events-ref','template_public',trunc(sysdate))

--kurs-stunden-ref
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'kurs-stunden-ref','template_public',trunc(sysdate))

--kurs-schueler-ref
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'kurs-schueler-ref','template_public',trunc(sysdate))

--lehrer-fach-ref
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'lehrer-fach-ref','template_public',trunc(sysdate))

--noten-schueler-ref
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'noten-schueler-ref','template_public',trunc(sysdate))

--userss-permissions-ref
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'userss-permissions-ref','template_public',trunc(sysdate))

--TABLESS
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'TABLESS','template_public',trunc(sysdate)

--LOGSS
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'LOGSS','template_public',trunc(sysdate)

--USERSS
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'USERSS','template_public',trunc(sysdate)

--DELL
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'DELL','template_public',trunc(sysdate)

--PERMISSIONS
insert into TABLESS
(TABLESS_id,table_name,cre_userid,cre_date)
VALUES
(S_TABLESS,'PERMISSIONS','template_public',trunc(sysdate)














--fach table


--Deutsch
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Deutsch', 'template_public',trunc(sysdate))

--Mathematik
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Mathematik', 'template_public',trunc(sysdate))

--Englisch
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Englisch', 'template_public',trunc(sysdate))

--Französisch
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Französisch', 'template_public',trunc(sysdate))

--Seminarfach
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Seminarfach', 'template_public',trunc(sysdate))

--Latein
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Latein', 'template_public',trunc(sysdate))

--Naturwissenschaften
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Naturwissenschaften', 'template_public',trunc(sysdate))

--Biologie
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Biologie', 'template_public',trunc(sysdate))

--Physik
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Physik', 'template_public',trunc(sysdate))

--Chemie
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Chemie', 'template_public',trunc(sysdate))

--Erdkunde
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Erdkunde', 'template_public',trunc(sysdate))

--Geschichte
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Geschichte', 'template_public',trunc(sysdate))

--Politik
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Politik', 'template_public',trunc(sysdate))

--Religion
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Religion', 'template_public',trunc(sysdate))

--Musik
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Musik', 'template_public',trunc(sysdate))

--Kunst
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Kunst', 'template_public',trunc(sysdate))

--Sport
insert into fach
(fach_id,fname,cre_userid,cre_date)
VALUES
(S_fach, 'Sport', 'template_public',trunc(sysdate))


