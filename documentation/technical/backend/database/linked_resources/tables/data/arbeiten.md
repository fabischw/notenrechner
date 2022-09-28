# arbeiten table 
- Daten zu Arbeiten
- [Link zu SQL code für Implementierung](../../../../../code_resources/database_components_doc/tables/arbeiten_table.sql)


| column_count | column_name    | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|----------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | arbeiten_id    | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | atype          | Typ der Arbeit                                       | VARCHAR(3)    | y             | null            | y              |
| 2            | Kurs_id        | ID des Kurses                                        | NUMBER(10)    | y             | FK1             | y              |
| 3            | datum          | Datum, an welchem die Arbeit geschrieben wurde       | DATE          | y             | null            | y              |
| 4            | acount         | Anzahl der Arbeit in dem Jahr                        | NUMBER(10)    | n             | null            | y              |
| 5            | cre_userid     | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 6            | cre_date       | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 7            | chg_userid     | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 8            | chg_date       | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |