-- Show the top 5 customers with longest rental duration
SELECT fr.rental_id, dc.customer_name, fr.rental_duration_minutes
FROM
    fact_rentals as fr
    INNER JOIN dim_customers AS dc ON fr.customer_id = dc.customer_id
    INNER JOIN dim_bikes AS db ON fr.bike_id = db.bike_id
ORDER BY fr.rental_duration_minutes DESC
LIMIT 5;

/*
The analysis identifies the top 5 customers with the longest rental durations, all at 118 minutes.
This indicates the presence of high-value users who take maximum-length trips, likely contributing
significantly to revenue.

From a business perspective, these users are ideal targets for premium plans, loyalty programs,
or special promotions. The consistency of the maximum duration may also reflect system-imposed
limits on rental time, which could be adjusted strategically to optimize usage and revenue.

 rental_id | customer_name  | rental_duration_minutes
-----------+----------------+-------------------------
       177 | Liza Ramos     |                     118
        88 | John Reyes     |                     118
       120 | David Santos   |                     118
        97 | Victor Tan     |                     118
       189 | Carlo Bautista |                     118
(5 rows)
*/