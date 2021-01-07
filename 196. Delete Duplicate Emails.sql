# Write your MySQL query statement below

DELETE p2
FROM Person as p1, Person as p2
WHERE p1.Email = p2.Email and p2.Id > p1.Id
