-- Show the total revenue per month.

SELECT dd.month AS month, ROUND(SUM(fr.rental_cost), 0) AS total_revenue
FROM
    fact_rentals AS fr
    LEFT JOIN dim_dates AS dd ON fr.date_id = dd.date_id
GROUP by
    dd.month
ORDER BY dd.month;

/*
The total monthly revenue shows a positive trend from 7,838 in January to 8,762 in March.
This suggests that the bike-sharing service is experiencing steady adoption and repeat usage.

Although growth is significant between January and February, the increase from February to March is minimal,
indicating potential seasonal effects or operational limitations.

From a business perspective, this insight highlights the opportunity to optimize pricing, increase marketing
during slower growth periods, and focus on retention strategies for repeat users to further enhance revenue.

 month | total_revenue
-------+---------------
     1 |          7838
     2 |          8736
     3 |          8762
(3 rows)
*/