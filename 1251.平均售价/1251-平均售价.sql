# Write your MySQL query statement below

select A.product_id as product_id,round(sum(B.price*A.units)/sum(A.units),2) as average_price

from UnitsSold as A,

     Prices as B

where A.purchase_date >= B.start_date and A.purchase_date <= B.end_date

and A.product_id = B.product_id

group by A.product_id