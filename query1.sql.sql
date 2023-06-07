SELECT customer_id, COUNT(*) AS quantity_per_unit
FROM orders_details
GROUP BY customer_id;
