# Write your MySQL query statement below

select max(num) as num from

(

  select count(num) as n,num from Mynumbers

  group by num

) as temp where temp.n = 1