/*Write a query to get the total number of orders placed by each customer*/


select customer_id, count(order_id) as total_orders
from orders
group by customer_id
order by total_orders;

