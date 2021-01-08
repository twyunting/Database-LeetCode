# Write your MySQL query statement below

SELECT tb2.Name AS Department, tb1.Name AS Employee, tb1.Salary AS Salary
FROM Employee AS tb1
INNER JOIN Department AS tb2
ON tb1.DepartmentId = tb2.Id
WHERE (SELECT count(DISTINCT Salary)
      FROM Employee as tb3
      WHERE tb3.DepartmentId = tb1.DepartmentId
      AND tb3.Salary > tb1.Salary) < 3;