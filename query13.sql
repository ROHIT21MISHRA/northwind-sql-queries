/* Query to List all orders shipped to ‘Germany’ */

SELECT Orders.order_id, Customers.country AS Ordersship_to
FROM Orders
JOIN Customers ON Orders.customer_id = Customers.customer_id
WHERE Customers.country = 'Germany';