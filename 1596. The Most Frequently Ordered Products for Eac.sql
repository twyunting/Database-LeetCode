# Write your MySQL query statement below

select tmp2.customer_id, tmp2.product_id, Products.product_name from 
(select customer_id, product_id, countCustProduct, rank() over (partition by customer_id order by countCustProduct desc) as ranking from
(select customer_id, product_id, count(distinct order_id) as countCustProduct from Orders
group by customer_id, product_id) tmp1) as tmp2
inner join Products on tmp2.product_id = Products.product_id
where ranking = 1;
