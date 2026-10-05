# DBMS Practical Viva Preparation

These are the 20 viva questions listed in the practical material.

## Schema

1. Why is `(Rollno, SID)` the primary key of `ADMISSION` rather than a surrogate key?
2. Why `ON DELETE CASCADE` for `Rollno` but `ON DELETE RESTRICT` for `SID`?
3. Which business rule from the requirements cannot be enforced by any constraint in this schema? How would you enforce it?
4. Why must `STUDENT` be created before `ADMISSION`?
5. What would break if `Cname` were not declared `UNIQUE`?

## Queries

6. Why does Q1 need `DISTINCT`, and how could it be avoided?
7. Why does Q12 need the leading join to `ADMISSION`?
8. Why is `COUNT(a.Rollno)` used in Q17 instead of `COUNT(*)`?
9. Why is `LEFT JOIN` essential in Q17 but not in Q8?
10. Why is a date range preferred to `YEAR(Dateofbirth) = 2001` in Q25?
11. What is wrong with using `ORDER BY ... LIMIT 1` in Q9?
12. Why do Q18 and Q20 have no `WHERE` clause?
13. Why is `DEFAULT 'No'` necessary in Q19?
14. Explain why Q22 requires a nested aggregation.

## Administration

15. What is the difference between granting a privilege to a user and to a role?
16. Give a privilege that cannot be expressed by file permissions.
17. Why does an index slow down `INSERT`?
18. Why will `idx_adm_sid_date` not help `WHERE Dateofadmission = '2019-07-15'`?
19. What is the principle of least privilege, and how does it limit the damage from SQL injection?
20. Is the view of Q21 updatable? Justify.

## High-value points to remember

- `WHERE` filters rows; `HAVING` filters groups.
- `DISTINCT` removes duplicate result rows.
- `LEFT JOIN` preserves rows from the left table even when there is no match.
- With a `LEFT JOIN`, `COUNT(column)` ignores the NULL-padded unmatched row, while `COUNT(*)` counts it.
- `NOT EXISTS` is useful for “only” conditions because it checks that no counter-example exists.
- Composite index order matters: `(SID, Dateofadmission)` can efficiently use the leading `SID`, but not `Dateofadmission` alone.
