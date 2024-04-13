with temp as (select *

                   , rank() over (partition by product_id order by year) r

              from sales)

select product_id, year as first_year, quantity, price

from temp

where r = 1;