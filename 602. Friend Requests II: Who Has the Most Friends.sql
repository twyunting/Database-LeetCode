# Write your MySQL query statement below

select id, count(*) as num 
from
(select requester_id as id from request_accepted
union all
select accepter_id as id from request_accepted) as id_table
group by id order by num desc limit 1

