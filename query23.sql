 /* Query to Find the most common shipping country */

 SELECT ship_country, COUNT(*) AS country_count
FROM orders
GROUP BY ship_country
ORDER BY country_count DESC
LIMIT 1;
