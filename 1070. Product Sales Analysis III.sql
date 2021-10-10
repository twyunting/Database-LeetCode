# Write your MySQL query statement below

select S.product_id, year as first_year, quantity, price
from Sales S join Product P
on S.product_id = P.product_id
where (S.product_id, year) in(
    select product_id, min(year) as year from Sales
group by product_id
)