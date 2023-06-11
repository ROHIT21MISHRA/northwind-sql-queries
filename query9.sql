/* Query to Find the customers who have not placed any orders */

METHOD 1 : 

SELECT c.customer_id, c.company_name
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

METHOD 2 : 

SELECT c.customer_id, c.company_name
FROM customers as c 
where customer_id not in ( select distinct customer_id from orders);
