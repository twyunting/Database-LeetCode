# Write your MySQL query statement below

SELECT distinct title 
FROM TVProgram inner join Content
on TVProgram.content_id = Content.content_id
where content_type = "Movies" AND Kids_content = "Y" AND program_date like "2020-06%";