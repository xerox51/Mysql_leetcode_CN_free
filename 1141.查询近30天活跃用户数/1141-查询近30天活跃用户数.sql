# Write your MySQL query statement below

select activity_date as day,

       sum(1) as active_users 

from (

    select activity_date, 

           user_id

      from Activity 

      where datediff('2019-07-27',activity_date)<=29

        and datediff('2019-07-27',activity_date)>0

    group by  activity_date, user_id

)a

group by activity_date

