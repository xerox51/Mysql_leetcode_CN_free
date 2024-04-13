select a.employee_id, name, reports_count, average_age

from 

(

select employee_id, name

from employees

where employee_id in 

(select distinct reports_to as employee_id

    from employees)

) a 

join (

select reports_to, count(employee_id) reports_count, round(avg(age), 0) average_age 

from employees 

group by reports_to

) b 

on a.employee_id = b.reports_to

order by employee_id