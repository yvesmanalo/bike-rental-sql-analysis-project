-- Show customers with more than 5 rentals

SELECT dc.customer_name, COUNT(fr.*) AS rental_count
FROM
    fact_rentals AS fr
    LEFT JOIN dim_customers as dc ON fr.customer_id = dc.customer_id
GROUP BY
    customer_name
HAVING
    COUNT(fr.*) > 5
ORDER BY COUNT(fr.*) DESC;

/*
The analysis identifies 18 customers with more than five rentals, indicating a strong base of repeat users.
Top customers have up to 15 rentals, suggesting the presence of high-value users who contribute significantly
to overall activity.

From a business perspective, this reflects strong customer retention and provides an opportunity to introduce
loyalty programs, subscription models, and targeted promotions to further increase engagement and revenue.

  customer_name  | rental_count
-----------------+--------------
 Bianca Tan      |           15
 Carlo Bautista  |           15
 Ken Dela Cruz   |           15
 Maria Cruz      |           14
 Liza Ramos      |           14
 John Reyes      |           13
 Victor Tan      |           12
 Ella Castillo   |           11
 Sarah Gomez     |           11
 Paul Garcia     |           10
 Patrick Ong     |           10
 Rico Villanueva |           10
 Leo Tan         |            8
 Nina Lopez      |            7
 Mark Rivera     |            7
 Daniel Flores   |            7
 David Santos    |            6
 Anna Lim        |            6
(18 rows)
*/