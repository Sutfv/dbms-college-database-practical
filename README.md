# DBMS Practical — College Database System

A professional MySQL practical project covering database design, DDL, DML, joins, aggregation, subqueries, views, database administration, roles, privileges, and indexes.

## Project Overview

This repository implements a college database with four core entities:

- `STUDENT` — student details
- `COURSE` — course details
- `SOCIETY` — college societies
- `ADMISSION` — student-course admissions
- `ENROLLMENT` — student-society memberships

The project is based on the prescribed practical work in `Practicals.pdf`.

## Repository Structure

```text
dbms-practical/
├── sql/
│   ├── 01_schema.sql
│   ├── 02_sample_data.sql
│   ├── 03_queries.sql
│   └── 04_administration.sql
├── docs/
│   ├── viva.md
│   └── additional-practice.md
├── README.md
├── .gitignore
└── LICENSE
```

## Requirements

- MySQL 8.0+
- MySQL Shell or MySQL Workbench

## Quick Start

### 1. Create the database and tables

Run:

```sql
SOURCE sql/01_schema.sql;
```

### 2. Load sample data

```sql
SOURCE sql/02_sample_data.sql;
```

### 3. Run the prescribed queries

```sql
SOURCE sql/03_queries.sql;
```

### 4. Administration practice

The commands in `sql/04_administration.sql` create users/roles and modify privileges. Run them only on a local practice MySQL server where you have administrative privileges.

## Key DBMS Concepts Demonstrated

- Primary and foreign keys
- Composite primary keys
- `UNIQUE` and `CHECK` constraints
- `ON DELETE CASCADE` and `ON DELETE RESTRICT`
- Inner and left joins
- `DISTINCT`
- `WHERE` vs `HAVING`
- Aggregate functions
- Subqueries and `EXISTS` / `NOT EXISTS`
- `UNION`
- Views
- `ALTER TABLE`
- `UPDATE`
- MySQL users and roles
- `GRANT` / `REVOKE`
- Indexes and composite indexes
- `EXPLAIN`

## Important Design Decisions

`ADMISSION` uses `(Rollno, SID)` as a composite primary key so that the same student cannot be admitted to the same course more than once.

`ENROLLMENT` similarly uses `(Rollno, SocID)` to prevent duplicate student-society memberships.

`LEFT JOIN` is intentionally used in queries such as vacant-seat reporting so courses with zero students are not lost.

## Viva Preparation

The `docs/viva.md` file contains the 20 viva questions listed in the practical material, with concise preparation points.

## Source

Prepared from the supplied DBMS practical material, including the schema, 25 prescribed queries, administration commands, additional exercises, and viva checklist.
