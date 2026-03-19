-- Compute the profit made per rental (profit = rental_cost − maintenance_cost)

SELECT
    fr.rental_id,
    fr.rental_cost,
    SUM(bbm.maintenance_cost) as maintenance_cost,
    ROUND(
        (
            fr.rental_cost - SUM(bbm.maintenance_cost)
        ),
        0
    ) AS profit
FROM
    fact_rentals AS fr
    LEFT JOIN bridge_bike_maintenance AS bbm ON fr.bike_id = bbm.bike_id
GROUP BY
    fr.rental_id
ORDER BY fr.rental_id;

/*
The analysis of profit per rental shows that profitability varies significantly across the fleet.
Rentals without maintenance have maximum profit, while some rentals show losses when
maintenance costs exceed rental revenue.

From a business perspective, this highlights the importance of managing maintenance costs,
rotating bikes strategically, and monitoring high-cost bikes. Identifying loss-making rentals
can guide maintenance scheduling, fleet replacement, and pricing strategies to maximize overall profitability.

 rental_id | rental_cost | maintenance_cost | profit
-----------+-------------+------------------+--------
         1 |      116.00 |           199.00 |    -83
         2 |      194.00 |           120.00 |     74
         3 |       96.00 |           151.00 |    -55
         4 |      196.00 |           111.00 |     85
         5 |      118.00 |                  |
         6 |      145.00 |            72.00 |     73
         7 |      118.00 |                  |
         8 |      176.00 |                  |
         9 |      191.00 |                  |
        10 |       68.00 |            70.00 |     -2
        11 |       50.00 |                  |
        12 |       66.00 |                  |
        13 |      132.00 |            99.00 |     33
        14 |      106.00 |           105.00 |      1
        15 |      154.00 |            99.00 |     55
        16 |      199.00 |           171.00 |     28
        17 |      121.00 |                  |
        18 |       99.00 |           164.00 |    -65
        19 |      175.00 |            41.00 |    134
        20 |       57.00 |            79.00 |    -22
        21 |      171.00 |           243.00 |    -72
        22 |      152.00 |           117.00 |     35
        23 |       68.00 |                  |
        24 |      153.00 |            79.00 |     74
        25 |      200.00 |           122.00 |     78
-- More  --
*/
