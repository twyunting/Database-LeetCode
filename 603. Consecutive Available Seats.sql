# Write your MySQL query statement below

SELECT DISTINCT a.seat_id 
FROM cinema a INNER JOIN cinema b
ON ABS(a.seat_id - b.seat_id) = 1 
AND a.free = TRUE AND b.free = TRUE
ORDER BY a.seat_id