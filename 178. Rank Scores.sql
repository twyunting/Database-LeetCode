# Write your MySQL query statement below

SELECT Score AS score, dense_rank()
OVER(order by Score DESC)
AS `Rank` FROM Scores;