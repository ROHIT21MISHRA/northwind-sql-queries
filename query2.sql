/*Query to Find all suppliers who provide products in the ‘Seafood’ category*/

SELECT  DISTINCT suppliers.supplier_id, suppliers.contact_name
FROM suppliers
JOIN products 
ON suppliers.supplier_id = products.supplier_id
WHERE category_id=
(SELECT products.category_id 
FROM products
JOIN categories 
 ON products.category_id = categories.category_id
WHERE categories.category_name = 'Seafood')
