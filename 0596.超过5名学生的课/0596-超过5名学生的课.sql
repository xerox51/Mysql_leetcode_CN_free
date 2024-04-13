# Write your MySQL query statement below

select class

from (

  select count(distinct student) as num,class

  from Courses

  group by class

) as Courses_temp

where Courses_temp.num >= 5