SELECT DISTINCT visited_on,

       sum_amount AS amount, 

       ROUND(sum_amount/7, 2) AS average_amount

FROM (

    SELECT visited_on, SUM(amount) OVER ( ORDER BY visited_on RANGE interval 6 day preceding  ) AS sum_amount 

    FROM Customer) t

WHERE DATEDIFF(visited_on, (SELECT MIN(visited_on) FROM Customer)) >= 6