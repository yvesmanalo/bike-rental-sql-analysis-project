-- Show the average maintenance cost per bike.

SELECT db.bike_type, ROUND(AVG(bbm.maintenance_cost), 0) AS avg_maintenance_cost
FROM
    bridge_bike_maintenance AS bbm
    LEFT JOIN dim_bikes AS db ON db.bike_id = bbm.bike_id
GROUP BY
    db.bike_type;

/*
The analysis shows that the average maintenance cost is similar for standard and electric bikes,
at 78 and 74 respectively. This indicates a balanced maintenance workload across bike types.

From a business perspective, the slight cost difference does not justify favoring one bike type
over the other based on maintenance. Fleet expansion or allocation decisions can focus on
user preference and operational demand while budgeting for predictable maintenance costs.

 bike_type | avg_maintenance_cost
-----------+----------------------
 Standard  |                   78
 Electric  |                   74
*/