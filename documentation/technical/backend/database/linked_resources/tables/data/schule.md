# schuele table
- Daten zu den Schulen
- [Link zur SQL Implementierung](../../../../../code_resources/database_components_doc/tables/schule_table.sql


| column_count | column_name    | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|----------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | schul_id       | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | name           | Name der Schule                                      | VARCHAR(50)   | y             | null            | y              |
| 2            | adresse        | Adresse der Schüle                                   | VARCHAR2(200) | n             | null            | y              |
| 3            | stype          | Schultyp                                             | VARCHAR(40)   | y             | null            | n              |
| 4            | cre_userid     | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 5            | cre_date       | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 6            | chg_userid     | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 7            | chg_date       | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |