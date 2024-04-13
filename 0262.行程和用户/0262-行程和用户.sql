SELECT T.request_at AS `Day`, 

	ROUND(

			SUM(

				IF(T.STATUS = 'completed',0,1)

			)

			/ 

			COUNT(T.STATUS),

			2

	) AS `Cancellation Rate`

FROM trips AS T LEFT JOIN 

(

	SELECT users_id

	FROM users

	WHERE banned = 'Yes'

) AS A ON (T.Client_Id = A.users_id)

LEFT JOIN (

	SELECT users_id

	FROM users

	WHERE banned = 'Yes'

) AS A1

ON (T.Driver_Id = A1.users_id)

WHERE A.users_id IS NULL AND A1.users_id IS NULL AND T.request_at BETWEEN '2013-10-01' AND '2013-10-03'

GROUP BY T.request_at