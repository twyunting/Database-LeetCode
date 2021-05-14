# Write your MySQL query statement below

SELECT * FROM Users
WHERE mail REGEXP "^[:alpha:][a-zA-Z0-9_./-]*@leetcode.com$"