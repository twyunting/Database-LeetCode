# Write your MySQL query statement below

select S.student_id, student_name, Sub.subject_name, count(E.subject_name) as attended_exams
from Students S
join Subjects Sub
left join Examinations E
on E.subject_name = Sub.subject_name and E.student_id = S.student_id
group by S.student_id, Sub.subject_name
order by student_id, subject_name