# Write your MySQL query statement below

select A.project_id as project_id,round(avg(B.experience_years),2) as average_years

from Project as A,Employee as B

where A.employee_id = B.employee_id

group by project_id