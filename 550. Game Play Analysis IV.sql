# Write your MySQL query statement below

with tmp as(
    select player_id, event_date, min(event_date) over (partition by player_id) as first_date from Activity
)

SELECT ROUND(COUNT(DISTINCT player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM tmp
where DATEDIFF(event_date, first_date) = 1 