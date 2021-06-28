# Write your MySQL query statement below

select seller_id
from Product P inner join Sales S
on P.product_id = S.product_id
group by seller_id
having sum(price) >= all(select sum(price) from Sales group by seller_id);