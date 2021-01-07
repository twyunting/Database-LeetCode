# Write your MySQL query statement below

# solution 1
SELECT max(Salary) AS SecondHighestSalary FROM Employee
WHERE Salary < (SELECT max(Salary) FROM Employee);


# solution 2
SELECT(SELECT DISTINCT
    Salary FROM Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET 1) AS SecondHighestSalary
