# noten table
- Daten zu Noten von Arbeiten

| column_count | column_name | column data                                          | data type     | required(y/n) | key(PK/FK/null) |
|--------------|-------------|------------------------------------------------------|---------------|---------------|-----------------|
| 0            | noten_id    | ID                                                   | NUMBER(10)    | y             | PK              |
| 1            | score       | erzielte Notenpunkte/Note in der Arbeit              | NUMBER(2)     | y             | null            |
| 2            | type        | Typ der Arbeit (KLN/GLN/andere)                      | VARCHAR(10)   | y             | null            |
| 3            | kommentar   | Kommentar zur Arbeit                                 | VARCHAR2(100) | n             | null            |
| 4            | doclink     | Link zu Bildern der Arbeit                           | VARCHAR2(200) | n             | null            |
| 5            | date        | Datum, an dem die Arbeit geschrieben wurde           | DATE          | n             | null            |
| 6            | anz_year    | Anzahl der Note in Jahr, Platz für zusätzliche Infos | VARCHAR2(100) | n             | null            |
| 7            | kurs_id     | ID                                                   | NUMBER(10)    | y             | FK1             |
| 8            | cre_userid  | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            |
| 9            | cre_date    | Erstellungsdatum der Daten                           | DATE          | y             | null            |
| 10           | chg_userid  | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            |
| 11           | chg_date    | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            |