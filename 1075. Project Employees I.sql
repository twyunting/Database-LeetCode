# Write your MySQL query statement below

select P.project_id, round(avg(experience_years), 2) as average_years
from Project P inner join Employee E
on P.employee_id =  E.employee_id
group by project_id;