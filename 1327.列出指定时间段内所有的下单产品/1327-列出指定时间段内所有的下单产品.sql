# Write your MySQL query statement below
select product_name,unit
from (
select A.product_name,
sum(case when B.order_date > '2020-01-31' and B.order_date < '2020-03-01' then B.unit end) as unit
from Products as A,
     Orders as B
where A.product_id = B.product_id
group by A.product_id
) as temp where unit >= 100