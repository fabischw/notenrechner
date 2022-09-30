# kurs table 
- Daten zu verschiedenen Kursen / Klassens
- [Link zu SQL code für Implementierung](../../../../../code_resources/database_components_doc/tables/kurs_table.sql)

| column_count | column_name | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|-------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | kurs_id     | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | lehrer_id   | ID des unterrichtenden Lehrers                       | NUMBER(10)    | y             | FK1             | y              |
| 2            | fach_id     | Fach des betreffenden Kurses                         | NUMBER(10)    | y             | FK2             | y              |
| 3            | stundenzahl | Anzahl der Stunden des Kurses                        | NUMBER(2)     | y             | null            | y              |
| 4            | stufe       | Stufe des Kurses                                     | NUMBER(2)     | y             | null            | y              |
| 5            | cre_userid  | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 6            | cre_date    | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 7            | chg_userid  | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 8            | chg_date    | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |