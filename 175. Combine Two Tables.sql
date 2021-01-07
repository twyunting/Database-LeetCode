# Write your MySQL query statement below

SELECT FirstName, LastName, City, State from Person LEFT JOIN Address USING (PersonId);