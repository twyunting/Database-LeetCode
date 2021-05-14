# Write your MySQL query statement below

SELECT a.employee_id FROM Employees AS a JOIN Employees AS b JOIN Employees AS c
ON a.manager_id = b.employee_id AND b.manager_id = c.employee_id
WHERE c.manager_id = 1 AND a.employee_id != 1