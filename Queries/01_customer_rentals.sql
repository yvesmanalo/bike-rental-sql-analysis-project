-- Show the customer name, bike type, and rental duration for all rentals.

SELECT dc.customer_name, db.bike_type, fr.rental_duration_minutes
FROM
    fact_rentals as fr
    INNER JOIN dim_customers AS dc ON fr.customer_id = dc.customer_id
    INNER JOIN dim_bikes AS db ON fr.bike_id = db.bike_id;

/*
The dataset shows that electric bikes are more frequently used,
indicating higher customer preference for convenience and speed.
However, standard bikes are still used for long-duration rides,
suggesting a segment of cost-conscious or recreational users.

Additionally, repeated customer activity suggests strong user retention,
which could be leveraged through loyalty programs or subscriptions.


  customer_name  | bike_type | rental_duration_minutes
-----------------+-----------+-------------------------
 Bianca Tan      | Standard  |                      89
 David Santos    | Electric  |                      71
 Mark Rivera     | Electric  |                      57
 Leo Tan         | Electric  |                      35
 Nina Lopez      | Electric  |                      75
 Rico Villanueva | Electric  |                      46
 Maria Cruz      | Standard  |                      74
 John Reyes      | Electric  |                      84
 Anna Lim        | Standard  |                     112
 Ken Dela Cruz   | Electric  |                      59
 David Santos    | Electric  |                      62
 Liza Ramos      | Standard  |                      36
 Ken Dela Cruz   | Electric  |                      28
 Rico Villanueva | Electric  |                      41
 Daniel Flores   | Electric  |                      50
 Liza Ramos      | Electric  |                      39
 Paul Garcia     | Standard  |                      92
 Maria Cruz      | Standard  |                      80
 Jamie Sy        | Electric  |                      45
 Leo Tan         | Standard  |                      90
 Patrick Ong     | Electric  |                     112
 Daniel Flores   | Standard  |                      91
 Nina Lopez      | Standard  |                      88
 Liza Ramos      | Standard  |                      77
 Carlo Bautista  | Electric  |                      60
-- More  --
*/