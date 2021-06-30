# Write your MySQL query statement below

with start as 
(select * from Activity where activity_type = 'start'),

end as

(select * from Activity where activity_type = 'end')

select start.machine_id, round(avg(end.timestamp - start.timestamp), 3) as processing_time
from start, end
where start.machine_id = end.machine_id
group by machine_id;