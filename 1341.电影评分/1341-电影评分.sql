with User_Rating as (

    select user_id, count(rating) rating from MovieRating group by user_id

),

Avg_Rating as (

    select movie_id, avg(rating) rating

    from MovieRating

    where date_format(created_at, '%Y-%m') = '2020-02'

    group by movie_id

)

select min(a.name) results 

from Users a 

join User_Rating b on a.user_id = b.user_id

where b.rating = (

    select max(rating) rating from User_Rating

)

union all

select min(a.title) results

from Movies a

join Avg_Rating b on a.movie_id = b.movie_id

where b.rating = (

    select max(rating) rating from Avg_Rating

)