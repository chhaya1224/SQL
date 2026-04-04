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
---------------------------------------------------------------------------------------------------- ----------
problem num 180 : Find all numbers that appear at least three times consecutively.

SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs l1
JOIN Logs l2 ON l1.id = l2.id - 1
JOIN Logs l3 ON l1.id = l3.id - 2
WHERE l1.num = l2.num 
  AND l2.num = l3.num; 
--------------------------------------------------------------------------------
PROBLEM num 181: Write a solution to find the employees who earn more than their managers.
SELECT e1.name AS Employee
FROM Employee e1
JOIN Employee e2 
  ON e1.managerId = e2.id
WHERE e1.salary > e2.salary;
-------------------------------------------------------------------------------------------
Write a solution to find all dates' id with higher temperatures compared to its previous dates (yesterday).
SELECT w1.id
FROM Weather w1
JOIN Weather w2
  ON w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
WHERE w1.temperature > w2.temperature;
-----------------------------------------------------------------------------------------------------------
problem 511 : Write a solution to find the first login date for each player.

    SELECT 
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;

-----------------------------------------------------------------------------------------------------------
Write a solution to report the name and bonus amount of each employee who satisfies either of the following:

The employee has a bonus less than 1000.
The employee did not get any bonus.
    SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b 
  ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;

--------------------------------------------------------------------------------------------------------
  Find the names of the customer that are either:

referred by any customer with id != 2.
not referred by any customer.
    SELECT name
FROM Customer
WHERE referee_id != 2 OR referee_id IS NULL;


-------------------------------------------------------------------------------------    --------------------------------------------------------
    Write a solution to find all the classes that have at least five students.
    SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;

    

