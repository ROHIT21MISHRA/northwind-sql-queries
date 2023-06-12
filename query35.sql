/*Query to Find the total sales for each year*/

SELECT YEAR(o.order_date) AS Sales_Year, SUM(od.quantity * od.unit_price) AS Total_Sales
FROM orders o
INNER JOIN order_details od ON o.order_id = od.order_id
GROUP BY Sales_Year
ORDER BY Sales_Year;

