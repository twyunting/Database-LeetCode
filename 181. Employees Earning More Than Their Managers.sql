# Write your MySQL query statement below

SELECT table1.Name AS Employee
FROM Employee AS table1
LEFT JOIN Employee AS table2
ON table1.ManagerId = table2.Id
WHERE table1.Salary > table2.Salary;

