# schueler table 
- Daten zu den Schülern
- [Link zu SQL code für Implementierung](../../../../../code_resources/database_components_doc/tables/schueler_table.sql)

| column_count | column_name    | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|----------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | schueler_id    | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | vorname        | Vorname des Schülers                                 | VARCHAR(30)   | y             | null            | y              |
| 2            | nachname       | Nachname des Lehrers                                 | VARCHAR(30)   | y             | null            | y              |
| 3            | vorname2       | Möglicher zweiter Vorname des Lehrers                | VARCHAR2(30)  | n             | null            | y              |
| 4            | email          | Email des Schülers                                   | VARCHAR(30)   | y             | null            | y              |
| 5            | an_schule_seit | Datum, seit dem der Schüler an Schule ist            | DATE          | n             | null            | y              |
| 6            | schule         | Schule, an der der Schüler ist                       | VARCHAR(2)    | y             | null            | y              |
| 7            | stufe          | Stufe in der der Schüler ist                         | NUMBER(2)     | y             | null            | y              |
| 8            | adresse        | Adresse des Schülers                                 | VARCHAR2(300) | n             | null            | y              |
| 9            | salter         | Alter des Schülers                                   | NUMBER(2)     | y             | null            | n              |
| 10           | gebdatum       | Geburtsdatum des Schülers                            | DATE          | n             | null            | y              |
| 11           | cre_userid     | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 12           | cre_date       | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 13           | chg_userid     | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 14           | chg_date       | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |