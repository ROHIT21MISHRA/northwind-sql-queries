/* Query to Find the average quantity of products ordered in each order */

SELECT order_id, AVG(quantity) AS Average_Quantity
FROM order_details
GROUP BY order_id;