# Write your MySQL query statement below

select country_name,
case
    when avg(weather_state) <= 15 then "Cold"
    when avg(weather_state) >= 25 then "Hot"
    else "Warm"
end as weather_type
from Countries C 
join Weather W
on C.country_id = W.country_id
where year(day) = 2019 and month(day) = 11
group by C.country_name