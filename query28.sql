/* Query to Find the top 3 most popular categories of products ordered */

select  c.category_name,count(order_id) As "Total_Order"  
from categories c 
inner join products p 
On c.category_id = p.category_id
Inner join order_details o_d
On p.product_id = o_d.product_id
Group by c.category_id
Order by Total_Order desc Limit 3;