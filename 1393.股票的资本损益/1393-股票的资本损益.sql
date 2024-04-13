select

t1.stock_name,(t2.t2Price-t1.t1Price)  capital_gain_loss 

from

(

select

stock_name,operation,sum(price) as t1Price

from

Stocks

group by

stock_name,operation

having

operation='Buy'

) t1

left join

(

    select

stock_name,operation,sum(price) as t2Price

from

Stocks

group by

stock_name,operation

having

operation='Sell'

) t2

on

t1.stock_name=t2.stock_name