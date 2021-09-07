# Write your MySQL query statement below

with recursive id_table(ids) as (
select 1 as ids 
    union all
    select ids+1 from id_table where ids < (select max(customer_id) from Customers)
)

select ids from id_table 
where ids not in (select customer_id from Customers)
order by ids asc