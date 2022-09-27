# lehrer table 
- Daten zu verschiedenen Kursen / Klassens
- [Link zu SQL code für Implementierung](../../../../../code_resources/database_components_doc/tables/lehrer_table.sql)


| column_count | column_name    | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|----------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | lehrer_id      | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | vorname        | Vorname der Lehrkraft                                | VARCHAR(30)   | y             | null            | y              |
| 2            | nachname       | Nachname der Lehrkraft                               | VARCHAR(30)   | y             | null            | y              |
| 3            | vorname2       | Möglicher zweiter Vorname der Lehrkraft              | VARCHAR2(30)  | n             | null            | y              |
| 4            | email          | Email der Lehrkraft                                  | VARCHAR(30)   | y             | null            | y              |
| 5            | kuerzel        | Kürzel der Lehrkraft                                 | VARCHAR(5)    | y             | null            | y              |
| 6            | an_schule_seit | Datum, seit dem Lehrer an Schule ist                 | DATE          | n             | null            | y              |
| 7            | schule         | Schule, an welcher der Lehrer praktiziert            | VARCHAR(2)    | y             | null            | y              |
| 8            | origin         | Schule, an welcher der Lehrer zuvor war              | VARCHAR(1)    | y             | null            | y              |
| 9            | adresse        | Adresse des Lehrers                                  | VARCHAR2(300) | n             | null            | n              |
| 10           | gebdatum       | Geburtsdatum der Lehrkraft                           | DATE          | n             | null            | y              |
| 11           | cre_userid     | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 12           | cre_date       | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 13           | chg_userid     | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 14           | chg_date       | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |