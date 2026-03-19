-- Show districts with rental count greater than 40.

SELECT ds.district, COUNT(fr.*) AS rental_count
FROM
    fact_rentals AS fr
    LEFT JOIN dim_stations AS ds ON fr.start_station_id = ds.station_id
GROUP BY
    ds.district
HAVING
    COUNT(fr.*) > 40;

/*
The query identifies District 1 and District 3 as the only districts with rental counts exceeding 40, 
indicating strong concentration of rental activity in these areas.

From a business perspective, this suggests that operational resources such as bike allocation, 
maintenance, and station management should be prioritized in these high-demand districts.
Marketing or incentives may also be deployed in lower-demand districts to balance usage and 
maximize overall system efficiency and revenue.

  district  | rental_count
------------+--------------
 District 1 |           63
 District 3 |           74
(2 rows)
*/