# Database structure (work in progress)
- This README is meant to outline the fundamental  data structure behind the Notenrechner Oracle database

# general structure of the database
- Link to datastructure blueprint:
- Link to the file to create the databse structure: 

#### Administrative tables
- PERMISSIONS: This table contains the different permissions copes defined by the administrator
- USERS: This table contains the data about the different Users
- LOG: This table contains the logs of all activities happening on the database, however this is not the official database log table, it's a dedicated table

#### system tables
- LOG: This table contains the logs of all activities happening on the database, however this is not the official database log table, it's a dedicated table
- DEL: This table contains deleted data for a not yet specified time until it's finally deleted
- TABLES: This table contains data on all the tables that make up the Notenrechner database structure

#### REF tables
- Lehrer-Fach-REF: This table contains the link between the Lehrer and the Fach tables
- Kurs-Stunden-REF: This table contains the link between the Kurs and the Stunden tables
- Kur-Events-REF: This table contains the link betwwen the Kurse and the Events tables
- Noten-Schueler-REF: This table contains the link between the Kurs and Schueler tables
- Kurs-Schueler-REF: This table contains the link between the Kurs and the Schueler table
- Users-Permissions-REF: This table contains the link between the Users and the permissions table

#### data tables
- Kurse: This table contains the data on the courses/classes
- Stunden: This table contains the different course time frames
- Lehrer: This table contains the teacher data
- Noten: This table contains the exam results
- Schueler: This table contains the students
- Arbeiten: This table contains the exams
- Kalender: This table contains different events for a specific student (exams, events, etc.)
- Schul_Events: This table contains different school events

### Explanation behind structure
This structure was chosen as a result of different facotrs and requirements set up for the database structure, it needs to be highly efficient when it coems to reading operations since the notenrechner has to work with data warehouse applications, it achieves these goals by using sequences and other techniques


### structure table

| Table_name             | table_id | table_usecase | table_content(link) |
|------------------------|----------|---------------|---------------------|
| kurse                  | 1        | data          |                     |
| stunden                | 2        | data          |                     |
| fach                   | 3        | data          |                     |
| Schul_events           | 4        | data          |                     |
| arbeiten               | 5        | data          |                     |
| kalender               | 6        | data          |                     |
| schueler               | 7        | data          |                     |
| noten                  | 8        | data          |                     |
| lehrer                 | 9        | data          |                     |
| fach                   | 10       | data          |                     |
| kurse-events-ref       | 11       | ref           |                     |
| kurse-stunden-ref      | 12       | ref           |                     |
| kurs-schueler-ref      | 13       | ref           |                     |
| lehrer-fach-ref        | 14       | ref           |                     |
| noten-schueler-ref     | 15       | ref           |                     |
| userss-permissions-ref | 16       | ref           |                     |
| TABLESS                | 17       | system        |                     |
| LOGSS                  | 18       | system        |                     |
| USERSS                 | 19       | system        |                     |
| DELL                   | 20       | system        |                     |
| PERMISSIONS            | 21       | system        |                     |

- NOTE: some table names are misspelled on purpose since oracle reserves some keywords like logs, users et.