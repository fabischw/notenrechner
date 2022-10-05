# kalender table 
- personalisierter Kalender für Schüler
- [Link zu SQL code für Implementierung](../../../../../code_resources/database_components_doc/tables/kalender_table.sql)


| column_count | column_name    | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|----------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | kalender_id    | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | events_descript| Eventbeschreibung                                    | VARCHAR(200)  | y             | null            | y              |
| 2            | events_date    | Datum des Events                                     | DATE          | y             | null            | y              |
| 3            | cre_userid     | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 4            | cre_date       | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 5            | chg_userid     | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 6            | chg_date       | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |