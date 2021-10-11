# Write your MySQL query statement below

with avgTable as (
select event_type, avg(occurences) as avg_occ 
from Events
group by event_type
) 

select business_id from Events as E
join avgTable
on E.event_type = avgTable.event_type
where E.occurences > avgTable.avg_occ
group by business_id
having count(*) > 1

