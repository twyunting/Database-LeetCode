# Write your MySQL query statement below

select activity
from Friends
group by activity
having count(*) < (select count(*) as tmp from Friends group by activity order by tmp desc limit 1)
and count(*) > (select count(*) as tmp from Friends group by activity order by tmp asc limit 1);