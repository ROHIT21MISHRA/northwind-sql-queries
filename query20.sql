/* Query to List the top 5 employees who have processed the most orders */

SELECT employees.employee_id, CONCAT(employees.first_name,'',employees.last_name) as employee_name, COUNT(*) AS total_orders
FROM employees
JOIN orders ON employees.employee_id = orders.employee_id
GROUP BY employees.employee_id
ORDER BY total_orders DESC
LIMIT 5;