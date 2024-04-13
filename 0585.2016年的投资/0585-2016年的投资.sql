select round(sum(distinct o1.TIV_2016), 2) tiv_2016

from insurance o1

inner join insurance o2 on o1.PID != o2.PID and o1.TIV_2015 = o2.TIV_2015

where (o1.LAT,o1.lon) not in (select lat, lon from insurance where o1.PID != PID)