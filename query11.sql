/*Query to Calculate the average product price by category*/

SELECT c.category_id, c.category_name,p.product_name, AVG(p.unit_price) AS Average_Price
FROM products as p
JOIN categories as c
ON p.category_id = c.category_id
group by c.category_name