/* Total quantity of each product sold */

SELECT p.product_id, p.product_name, SUM(o.quantity) AS Total_Quantity_Sold
FROM products as p
JOIN order_details as o
ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name;
