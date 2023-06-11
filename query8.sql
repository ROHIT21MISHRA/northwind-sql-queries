/* Query to Find the products that have never been ordered */

SELECT p.product_id, p.product_name
FROM products as p
LEFT JOIN order_details as o 
ON p.product_id = o.order_id
WHERE o.order_id ISNULL;