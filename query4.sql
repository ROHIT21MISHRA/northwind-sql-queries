/* Query to Find the total sales (Quantity*Unit_Price) for each category of products */

SELECT categories.category_id, categories.category_name, SUM(order_details.quantity * order_details.unit_price) AS total_sales
FROM categories
JOIN products ON categories.category_id= products.category_id
JOIN order_details ON products.	product_id = order_details.	product_id
GROUP BY categories.category_id, categories.category_name;
