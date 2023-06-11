/* Query to find customers who placed more than 10 orders */

SELECT customers.customer_id, customers.contact_name, COUNT(orders.order_id) AS total_orders
FROM customers
JOIN Orders ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, customers.contact_name
HAVING COUNT(orders.order_id) > 10
order by total_orders;