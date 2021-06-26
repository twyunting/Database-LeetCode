# Write your MySQL query statement below

select A.player_id, A.event_date, sum(B.games_played) as games_played_so_far 

from Activity A
inner join Activity B on A.player_id = B.player_id
and A.event_date >= B.event_date 
group by A.player_id, A.event_date;