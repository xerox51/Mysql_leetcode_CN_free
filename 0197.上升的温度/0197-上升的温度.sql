# Write your MySQL query statement below

select cur.id 
from Weather cur 
inner join Weather pre 
where DATEDIFF(cur.recordDate, pre.recordDate) = 1 AND cur.temperature > pre.temperature;