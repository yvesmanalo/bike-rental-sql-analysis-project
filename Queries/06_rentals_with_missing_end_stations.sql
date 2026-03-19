-- Show rental records where some bikes has not been returned yet.

SELECT fr.rental_id, dc.customer_name, fr.end_station_id
FROM
    fact_rentals AS fr
    LEFT JOIN dim_customers AS dc ON fr.customer_id = dc.customer_id
WHERE
    fr.end_station_id IS NULL;

/*
The query reveals a significant number of rental records with no recorded return station,
indicating either active rentals or potential data inconsistencies.

From a business perspective, this raises concerns around fleet availability, revenue leakage,
and operational efficiency. Additionally, repeated occurrences among certain users suggest
the need for monitoring, enforcement policies, or improved tracking systems to ensure timely returns.

 rental_id |  customer_name  | end_station_id
-----------+-----------------+----------------
         1 | Bianca Tan      |
         2 | David Santos    |
         3 | Mark Rivera     |
         4 | Leo Tan         |
         5 | Nina Lopez      |
        10 | Ken Dela Cruz   |
        12 | Liza Ramos      |
        16 | Liza Ramos      |
        17 | Paul Garcia     |
        18 | Maria Cruz      |
        20 | Leo Tan         |
        21 | Patrick Ong     |
        23 | Nina Lopez      |
        26 | Bianca Tan      |
        27 | Paul Garcia     |
        28 | Ken Dela Cruz   |
        32 | Victor Tan      |
        37 | Carlo Bautista  |
        39 | Carlo Bautista  |
        40 | Nina Lopez      |
        41 | Carlo Bautista  |
        45 | John Reyes      |
        46 | Daniel Flores   |
        49 | Bianca Tan      |
        51 | Grace Navarro   |
        53 | Ella Castillo   |
        56 | Anna Lim        |
        58 | Bianca Tan      |
        59 | Liza Ramos      |
        62 | Liza Ramos      |
        66 | John Reyes      |
        68 | John Reyes      |
        70 | Ella Castillo   |
        75 | Carlo Bautista  |
        76 | Maria Cruz      |
        80 | Bianca Tan      |
        82 | Maria Cruz      |
        84 | Sarah Gomez     |
        85 | Mark Rivera     |
        88 | John Reyes      |
        89 | Ella Castillo   |
        90 | Paul Garcia     |
        91 | Patrick Ong     |
        95 | Bianca Tan      |
        96 | Rico Villanueva |
       104 | Sarah Gomez     |
       105 | Sarah Gomez     |
       109 | Jamie Sy        |
       111 | Anna Lim        |
       114 | Ella Castillo   |
       117 | Patrick Ong     |
       118 | Bianca Tan      |
       119 | Bianca Tan      |
       120 | David Santos    |
       121 | Liza Ramos      |
       122 | Patrick Ong     |
       128 | Rico Villanueva |
       130 | Carlo Bautista  |
       133 | Ella Castillo   |
       134 | Ella Castillo   |
       135 | Paul Garcia     |
       136 | Carlo Bautista  |
       138 | Victor Tan      |
       139 | Maria Cruz      |
       140 | David Santos    |
       144 | Jamie Sy        |
       145 | Jamie Sy        |
       146 | John Reyes      |
       147 | Ken Dela Cruz   |
       149 | Daniel Flores   |
       150 | Maria Cruz      |
       153 | Carlo Bautista  |
       154 | Maria Cruz      |
       155 | Liza Ramos      |
       156 | Bianca Tan      |
       157 | Anna Lim        |
       158 | Ella Castillo   |
       160 | Mark Rivera     |
       161 | Ken Dela Cruz   |
       165 | John Reyes      |
       166 | Ken Dela Cruz   |
       167 | Victor Tan      |
       168 | Paul Garcia     |
       171 | Victor Tan      |
       174 | Rico Villanueva |
       175 | Maria Cruz      |
       176 | Ken Dela Cruz   |
       177 | Liza Ramos      |
       178 | Leo Tan         |
*/