-- Show the stations with the most rentals, sorted descending.

SELECT ds.station_name, COUNT(fr.*) AS total_rentals
FROM
    fact_rentals AS fr
    LEFT JOIN dim_stations AS ds ON fr.start_station_id = ds.station_id
GROUP BY
    ds.station_name
ORDER BY COUNT(fr.*) DESC;

/*
The data shows that University Loop, Central Park Station, and Downtown Hub
are the top-performing stations, indicating strong demand in central or high-traffic areas.
Rental activity is relatively balanced across stations, though Riverside Stop shows lower usage.

From a business perspective, high-demand stations should be prioritized for bike allocation
and maintenance, while underperforming stations may require further analysis to improve utilization
or consider relocation strategies.

     station_name     | total_rentals
----------------------+---------------
 University Loop      |            39
 Central Park Station |            38
 Downtown Hub         |            36
 City Mall Station    |            32
 Market Square        |            31
 Riverside Stop       |            24
(6 rows)
*/