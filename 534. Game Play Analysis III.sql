# Write your MySQL query statement below

select A.player_id, A.event_date, sum(B.games_played) as games_played_so_far 

from Activity A
inner join Activity B on A.player_id = B.player_id
and A.event_date >= B.event_date 
group by A.player_id, A.event_date;

# solution 2
SELECT
player_id, event_date, sum(games_played) over(PARTITION BY player_id ORDER BY event_date)
AS 'games_played_so_far'
FROM activity
ORDER BY player_id, games_played_so_far;