# DBMS College Database Practical

A MySQL-based **Database Management System (DBMS) practical project** implementing a college database with students, courses, admissions, and societies.

## 📌 Project Overview

This project demonstrates the practical implementation of a college database system using **MySQL**.

The database consists of four main entities and two relationship tables:

- **STUDENT** — Stores student information.
- **COURSE** — Stores course details such as seats, duration, type, and teacher.
- **SOCIETY** — Stores college society information.
- **ADMISSION** — Connects students with the courses they are admitted to.
- **ENROLLMENT** — Connects students with college societies.

## 🗂️ Repository Structure

```text
dbms-college-database-practical/
│
├── sql/
│   ├── 01_schema.sql
│   ├── 02_sample_data.sql
│   ├── 03_queries.sql
│   └── 04_administration.sql
│
├── README.md
├── .gitignore
└── LICENSE
```

## 🛠️ Technologies Used

- **MySQL**
- SQL
- Relational Database Management System (RDBMS)

## 🗄️ Database Schema

### STUDENT

| Column | Description |
|---|---|
| `Rollno` | Primary key |
| `Name` | Student name |
| `Dateofbirth` | Date of birth |

### COURSE

| Column | Description |
|---|---|
| `SID` | Primary key |
| `Cname` | Course name |
| `TotalSeats` | Total available seats |
| `Duration` | Course duration |
| `Coursetype` | Full-time / Part-time |
| `TeacherInCharge` | Course teacher |

### SOCIETY

| Column | Description |
|---|---|
| `SocID` | Primary key |
| `Socname` | Society name |
| `Mentor` | Society mentor |
| `TotalSeats` | Society capacity |

### ADMISSION

Connects students with courses using the composite primary key:

```sql
(Rollno, SID)
```

### ENROLLMENT

Connects students with societies using:

```sql
(Rollno, SocID)
```

## 🔑 Database Concepts Demonstrated

- Primary Keys
- Foreign Keys
- Composite Primary Keys
- Unique Constraints
- Check Constraints
- `ON DELETE CASCADE`
- `ON DELETE RESTRICT`
- `INNER JOIN`
- `LEFT JOIN`
- `DISTINCT`
- `WHERE`
- `HAVING`
- Aggregate Functions
- Subqueries
- `EXISTS` / `NOT EXISTS`
- `UNION`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- `UPDATE`
- `ALTER TABLE`
- Views
- Users and Roles
- `GRANT` / `REVOKE`
- Indexes
- Composite Indexes
- `EXPLAIN`

## 🚀 How to Run

### 1. Create the database

```sql
SOURCE sql/01_schema.sql;
```

### 2. Insert sample data

```sql
SOURCE sql/02_sample_data.sql;
```

### 3. Run the prescribed queries

```sql
SOURCE sql/03_queries.sql;
```

### 4. Administration commands

```sql
SOURCE sql/04_administration.sql;
```

Run the administration file only with appropriate MySQL administrative privileges.

## 📊 Important Query Concepts

### `WHERE` vs `HAVING`

`WHERE` filters individual rows, while `HAVING` filters groups after aggregation.

### Why `LEFT JOIN`?

`LEFT JOIN` is important when records with zero matching rows must still appear, such as courses having no students.

### Why `COUNT(column)` instead of `COUNT(*)`?

With a `LEFT JOIN`, an unmatched row contains `NULL` values. `COUNT(column)` ignores that `NULL`, correctly giving zero.

### Why `NOT EXISTS`?

`NOT EXISTS` is useful when the requirement contains **"only"**, because it checks that no unwanted counter-example exists.

## 🔐 Database Security

The project demonstrates:

```sql
CREATE USER
CREATE ROLE
GRANT
REVOKE
DROP ROLE
```

It also includes role-based and column-level privileges.

## 📈 Indexing

The project demonstrates:

```sql
CREATE INDEX
CREATE UNIQUE INDEX
SHOW INDEX
EXPLAIN
DROP INDEX
```

It also includes a composite index:

```sql
(SID, Dateofadmission)
```

## 🎯 Purpose

This repository is intended for:

- DBMS practical examinations
- SQL practice
- MySQL laboratory work
- Database design practice
- Understanding joins and subqueries
- Academic portfolio demonstration

## 👨‍💻 Author

**DBMS Practical Project**

*Academic project — Database Management Systems*
