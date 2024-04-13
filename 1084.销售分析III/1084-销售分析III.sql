# Write your MySQL query statement below

select 

    product_id, product_name 

from 

    product p

where

    p.product_id in (

    select s.product_id from sales s group by s.product_id

    having max(s.sale_date) <= date('2019-03-31')

    and 

    min(s.sale_date) >= date('2019-01-01')

    )