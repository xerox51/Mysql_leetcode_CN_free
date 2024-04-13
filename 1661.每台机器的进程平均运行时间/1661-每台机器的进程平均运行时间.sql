SELECT 	machine_id, 

		ROUND(SUM(processing_time) / COUNT(*), 3) AS processing_time

FROM	

	(SELECT	machine_id, 

			process_id, 

			SUM(CASE 	activity_type 

					WHEN	'start' THEN -`timestamp` 

					ELSE `timestamp` 

				END) AS processing_time

	FROM 	Activity 

	GROUP BY 	machine_id, 

				process_id) AS `T`

GROUP BY	machine_id