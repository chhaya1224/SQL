q) Difference: COUNT(*) vs COUNT(column)
SELECT COUNT(*) FROM Employee; Counts all rows in the table
Includes rows with NULL valuE

✅ 2. COUNT(column)
SELECT COUNT(salary) FROM Employee;
Counts only non-NULL values in that column
Ignores rows where the column is NULL
-----------------------------------------------------------------------------------------------------

Q) query to fetch the emp name & manager name    with maximum leave by departmanet
select e.name ,m.manager
from emp e
join manager m
on e.id=m.id
WHERE e.leave=(select max(leave) from emp )
ORDER BY DEPERTMENT_NAME
---------------------------------------------------------------------------------------------
Query (Max marks per class with guardian details)
SELECT g.guardian_Name, g.Address, s.Class, s.Mark
FROM guardian g
JOIN Student s
ON g.st_id = s.st_id
WHERE s.Mark IN (
    SELECT MAX(Mark)
    FROM Student
    GROUP BY Class
);


