# Write your MySQL query statement below

select tb1.Name
from Employee as tb1
join (
    select * from Employee as tb2
    group by ManagerId
    having count(ManagerId) >= 5
) as tb2
on tb1.ID = tb2.ManagerID;