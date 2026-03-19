-- Find the longest rental duration.
SELECT dc.customer_name, db.bike_type, fr.rental_duration_minutes
FROM
    fact_rentals as fr
    INNER JOIN dim_customers AS dc ON fr.customer_id = dc.customer_id
    INNER JOIN dim_bikes AS db ON fr.bike_id = db.bike_id
ORDER BY fr.rental_duration_minutes DESC
LIMIT 1;

/*
The longest recorded rental duration is 118 minutes, performed using an electric bike.
This suggests that users rely on electric bikes for extended trips, likely due to ease of use.
It also indicates that the service supports longer-duration usage beyond short commutes.

From a business perspective, this presents opportunities to introduce premium pricing
for long-duration rentals, while also considering operational policies to ensure bike availability.

 customer_name | bike_type | rental_duration_minutes
---------------+-----------+-------------------------
 John Reyes    | Electric  |                     118
(1 row)

*/