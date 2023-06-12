/* Query to Find the customers who have ordered products from all categories*/


select c.customer_id ,c.company_name  
from customers c 
Inner join orders o 
On c.customer_id = o.customer_id
inner join order_details o_d
On o.order_id = o_d.order_id
inner join products p 
On o_d.product_id= p.product_id
inner join categories ct
On p.category_id = ct.category_id
group by c.customer_id 
HAVING COUNT(DISTINCT ct.category_id) = (SELECT COUNT(*) FROM Categories);
