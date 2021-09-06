# Write your MySQL query statement below

select player_id, player_name, 
sum(player_id = Wimbledon) + sum(player_id = Fr_open) + sum(player_id = US_open) + sum(player_id = Au_open) as grand_slams_count
from Players
join Championships
on player_id = Wimbledon or player_id = Fr_open or player_id = US_open or player_id = Au_open
group by player_id


# Second Solutions
# Write your MySQL query statement below

with cnt as (
select Wimbledon as id from Championships
    union all 
select Fr_open as id from Championships
    union all
select US_open as id from Championships
    union all 
select Au_open as id from Championships
)

select player_id, player_name, count(*) as grand_slams_count
from Players 
join cnt on player_id = cnt.id
group by player_id