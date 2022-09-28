

-- move_to_dell
--Für jeden table muss ein eigener trigger erstellt werden

--Grundidee für den trigger ist es, alle Daten in eine Datei zu dumpen und 
--den Dateipfad dieses dumps zu speichern

--schueler table trigger
create or replace trigger move_schueler_to_dell
    before update on schueler
    for each row
    
declare
    tempdumpvar         VARCHAR(2000);--single string to dump all data into
    filepath            VARCHAR(700);
    
begin
    tempdumpvar := TO_CHAR(schueler.schueler_id) + '|'  + schueler.vorname + '|' + schueler.nachname + '|' + schueler.vorname2+ '|' + email + '|';
    if schule.an_schule_seit <> null then
        tempdumpvar := tempdumpvar + TO_CHAR(an_schule_seit) + '|';
    else
        tempdumpvar := tempdumpvar + '|';
    end if;
    
    tempdumpvar := tempdumpvar +  schueler.schule + '|' + TO_CHAR(schueler.stufe) + '|'; 
    
    if schueler.adresse <> null then
        tempdumpvar := tempdumpvar + schueler.adresse + '|';   
    else
        tempdumpvar := tempdumpvar + '|';
    end if;
    
    tempdumpvar := tempdumpvar + schueler.salter + '|';
    
    if schueler.gebdatum <> null then
        tempdumpvar := tempdumpvar + TO_CHAR(schueler.gebdatum) + '|';
    else
        tempdumpvar := tempdumpvar + '|';
    end if;
    
    tempdumpvar := tempdumpvar + schueler.cre_userid + '|' + TO_CHAR(schueler.cre_date) + '|';
    
    if schueler.chg_userid <> null then
        tempdumpvar := tempdumpvar + schueler.chg_userid + '|' + TO_CHAR(schueler.chg_date) + '|';
    else
        tempdumpvar := tempdumpvar + '|' + '|'; 
    end if;
    
    

exception
    DBMS_OUTPUT.PUT_LINE('Ein Fehler ist aufgetreten');

end;