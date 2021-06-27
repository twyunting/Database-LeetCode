# Write your MySQL query statement below

with tmp as 
(
select num, count(num) as counts
    from my_numbers
    group by num
    having counts = 1
)

select max(num) as num from tmp