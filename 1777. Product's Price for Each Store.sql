# Write your MySQL query statement below

select product_id, 
avg(case when store = "store1" then price end) as store1,
avg(case when store = "store2" then price end) as store2,
avg(case when store = "store3" then price end) as store3
from Products
group by product_id;

# can be randomly using any aggregate function: sum(), min(), max().....