# noten table 
- Daten zu Noten von Arbeiten

| column_count | column_name | column data                                          | data type     | required(y/n) | key(PK/FK/null) | has Index(y/n) |
|--------------|-------------|------------------------------------------------------|---------------|---------------|-----------------|----------------|
| 0            | noten_id    | ID                                                   | NUMBER(10)    | y             | PK              | y              |
| 1            | score       | erzielte Notenpunkte/Note in der Arbeit              | NUMBER(2)     | y             | null            | y              |
| 2            | ntype       | Typ der Arbeit (KLN/GLN/andere)                      | VARCHAR(10)   | y             | null            | y              |
| 3            | kommentar   | Kommentar zur Arbeit                                 | VARCHAR2(100) | n             | null            | n              |
| 4            | doclink     | Link zu Bildern der Arbeit                           | VARCHAR2(200) | n             | null            | y              |
| 5            | ndate       | Datum, an dem die Arbeit geschrieben wurde           | DATE          | n             | null            | y              |
| 6            | anz_year    | Anzahl der Note in Jahr, Platz für zusätzliche Infos | VARCHAR2(100) | n             | null            | n              |
| 7            | kurs_id     | ID                                                   | NUMBER(10)    | y             | FK1             | y              |
| 8            | cre_userid  | User, der die Daten eingefügt hat                    | VARCHAR(30)   | y             | null            | y              |
| 9            | cre_date    | Erstellungsdatum der Daten                           | DATE          | y             | null            | y              |
| 10           | chg_userid  | User, der die Daten potentiell verändert hat         | VARCHAR2(30)  | n             | null            | y              |
| 11           | chg_date    | Datum, an dem die Daten potentiell verändert wurden  | DATE          | n             | null            | y              |