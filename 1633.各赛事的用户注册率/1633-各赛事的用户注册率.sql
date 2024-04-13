# Write your MySQL query statement below

select B.contest_id,round(count(distinct B.user_id)*100/count(distinct A.user_id),2) as percentage

from Register as B,

     Users as A

group by contest_id 

order by percentage desc,contest_id