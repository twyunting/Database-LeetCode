# Write your MySQL query statement below

with calculation as (
select count(*) as immed_order from Delivery
    where order_date = customer_pref_delivery_date 
)

select round((immed_order/count(*))*100, 2) as immediate_percentage
from Delivery, calculation;