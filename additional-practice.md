# Additional Practice

## Retrieval

1. All courses with duration 3 and type Parttime.
2. Students whose name has `a` as the second letter.
3. Courses with between 40 and 50 seats inclusive.
4. Roll numbers and names concatenated as `X2001 - Ankit Sharma`.
5. Each course labelled `Large`, `Medium` or `Small` by seat count.

## Aggregation

6. Total, average, maximum and minimum seats across all courses.
7. Number of admissions in each month of 2019.
8. For each student, the number of courses they are admitted to, including zero.
9. Each society with its member count, including empty societies.
10. Percentage of the college's total seats represented by each course.

## Joins and Subqueries

11. Students who are in both a full-time and a part-time course.
12. Students in a society but not admitted to any course.
13. Courses with more admissions than the average across all courses.
14. The student admitted to the greatest number of courses.
15. Societies with no members.
16. Students who share a course with X2001, excluding X2001.
17. For each course, its name and the name of the youngest student in it.
18. Students admitted to every part-time course.
19. Teachers in charge of both a full-time and a part-time course.
20. Pairs of students in the same society, each pair listed once.

## DDL, DML and Administration

21. Add an `Email VARCHAR(60) UNIQUE` column to `STUDENT`, then populate it as `rollno@college.edu`.
22. Create a `FEE_RECEIPT` table with a surrogate key, a foreign key to `STUDENT`, and a positive-amount check.
23. Create a view exposing only `Rollno` and `Name`, and grant it to a new user.
24. Write a transaction that admits a student to a course and increments a counter atomically.
25. Delete all enrolments in societies with fewer than three members, using a transaction so the change can be inspected before committing.
