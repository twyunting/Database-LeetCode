# Write your MySQL query statement below

select min(A.x-B.x) as shortest
from point A inner join point B
on A.x > B.x;
