# stunden table 
- Daten zu Schulstunden
- [Link zu SQL code für Implementierung](../../../../../code_resources/database_components_doc/tables/stunden_table.sql)


| column_count | column_name    | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|----------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | stunden_id     | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | sday           | Wochentag der betreffenden Stunde                    | VARCHAR(20)   | y             | null            | y              |
| 2            | scount         | Zeit der entsprechenden Stunde                       | NUMBEr(2)     | y             | null            | y              |
| 3            | cre_userid     | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 4            | cre_date       | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 5            | chg_userid     | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 6            | chg_date       | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |