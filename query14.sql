/* Query to Find the most expensive product in each category */

SELECT c.category_id,c.category_name,MAX(p.unit_price) AS product_price
FROM products as p
join categories as c
on p.category_id = c.category_id
GROUP BY c.category_id;