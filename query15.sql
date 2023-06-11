/* Query to Find the total revenue for the year 2016 */

SELECT SUM(od.quantity * p.unitprice) AS totalrevenue
FROM orders o
JOIN orderdetails od ON o.orderid = od.orderid
JOIN products p ON od.productid = p.productid
WHERE YEAR(o.orderdate) = 2016;
