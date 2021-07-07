# Write your MySQL query statement below

with tmp as(
select P.project_id, P.employee_id, dense_rank() over(partition by P.project_id order by E.experience_years desc) as experience_RANK
from Project P join Employee E on P.employee_id = E.employee_id)

select project_id, employee_id from tmp 
where experience_RANK = 1;