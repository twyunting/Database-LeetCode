# Write your MySQL query statement below

select 
(case 
when id % 2 = 1 and id = counts then id # odd and the last record
when id % 2 = 1 and id != counts then id + 1 # odd
else id - 1 # even 
end) as id, student
from seat, (select count(*) as counts from seat) as cnt
order by id;