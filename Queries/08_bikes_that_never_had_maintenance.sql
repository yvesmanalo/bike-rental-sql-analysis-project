-- Show records for bikes that never had maintenance.

SELECT db.bike_id, db.bike_type
FROM
    dim_bikes AS db
    FULL JOIN bridge_bike_maintenance AS bbm ON db.bike_id = bbm.bike_id
WHERE
    bbm.maintenance_date IS NULL;

/*
The query identifies 8 bikes that have never received maintenance, including both standard and electric types.
This indicates a gap in the maintenance tracking or scheduling system, which could pose operational risks.

From a business perspective, these bikes should be prioritized for inspection and preventive maintenance
to ensure safety, reduce downtime, and maintain high customer satisfaction.
A systematic maintenance schedule for the entire fleet would help mitigate potential issues and
ensure all bikes remain operational.

 bike_id | bike_type
---------+-----------
      25 | Electric
      17 | Standard
      10 | Standard
      18 | Electric
       5 | Standard
      30 | Standard
       6 | Electric
      16 | Electric
(8 rows)
*/