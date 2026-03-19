-- Calculate the average rental duration for each bike type.

SELECT db.bike_type, ROUND(
        AVG(fr.rental_duration_minutes), 1
    ) AS avg_rental_duration
FROM
    dim_bikes AS db
    LEFT JOIN fact_rentals AS fr ON db.bike_id = fr.bike_id
GROUP BY
    db.bike_type;

/*

The average rental duration for electric and standard bikes is nearly identical,
at 63.4 and 62.5 minutes respectively. This indicates that bike type does not significantly
influence how long customers use the service.

From a business perspective, this suggests that customers choose electric bikes for convenience
rather than longer usage. Standard bikes remain competitive, and pricing strategies for electric
bikes should focus on value-added experience rather than duration-based differentiation.

 bike_type | avg_rental_duration
-----------+---------------------
 Standard  |                62.5
 Electric  |                63.4
(2 rows)
*/