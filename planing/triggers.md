# required triggers:
-trigger planing

| name            | devstatus | table FROM                     | table TO | function                                                                           |
|-----------------|-----------|--------------------------------|----------|------------------------------------------------------------------------------------|
| kalender_update | PLANING   | schulevents, stunden, arbeiten | kalender | Datum, event type in personalisierten kalender schreiben                           |
| log-action      | PLANING   | ALLE                           | LOGS     | erfolgte updates aus allen tabellen in LOGS Tabelle schreiben                      |
| move_to_del     | PLANING   | ALLE                           | DELL     | Daten von delete function in DELL table schreiben                                  |
| update_refs     | PLANING   | ALLE                           | [REFS]   | Wenn eine REF-Komponente gelöscht wird, automatisch updates in allen tables pushen |s