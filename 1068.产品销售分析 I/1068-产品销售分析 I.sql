# Write your MySQL query statement below

select A.product_name,B.year,B.price from

Product as A,

Sales as B

where A.product_id = B.product_id