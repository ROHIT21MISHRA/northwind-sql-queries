/* Query to Find the employee who processed the most orders in August 2016 */


select e.first_name, e.last_name , count(o.order_id) as 'Total_Orders' 
from employees e 
inner join orders o 
On e.employee_id = o.employee_id
where order_date between '2016-08-01' And '2016-08-31'
Group by e.employee_id
order by Total_Orders DESC Limit 1;