# Write your MySQL query statement below

select product_name, sum(unit) as unit
from Products P join Orders O
on P.product_id = O.product_id
where order_date like '%2020-02%'
group by P.product_id
having sum(unit) >=100;