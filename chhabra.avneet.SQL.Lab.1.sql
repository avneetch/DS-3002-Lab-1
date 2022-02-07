# Write a query to get Product name and quantity/unit.  
SELECT product_name, quantity_per_unit FROM products;
# Write a query to get current Product list (Product ID and name).  
SELECT id, product_name FROM products WHERE discontinued= 0 ORDER BY product_name;
# Write a query to get discontinued Product list (Product ID and name). 
SELECT id, product_name FROM products WHERE discontinued= 1 ORDER BY product_name;
# Write a query to get most expense and least expensive Product list (name and unit price).  
SELECT product_name, unit_price FROM products,order_details ORDER BY unit_price DESC;
# Write a query to get Product list (id, name, unit price) where current products cost less than $20.  
SELECT product_id, product_name, unit_price FROM products,order_details WHERE unit_price<20 and discontinued=0;
# Write a query to get Product list (id, name, unit price) where products cost between $15 and $25.  
SELECT product_id, product_name, unit_price FROM products,order_details WHERE unit_price<25 and unit_price>15;
# Write a query to get Product list (name, unit price) of above average price.
SELECT product_name, unit_price FROM products,order_details WHERE unit_price>(SELECT avg(unit_price) from order_details);
# Write a query to get Product list (name, unit price) of ten most expensive products.  
SELECT product_name, unit_price FROM products,order_details ORDER BY unit_price DESC LIMIT 10;
# Write a query to count current and discontinued products. 
SELECT COUNT(*) FROM products;
# Write a query to get Product list (name, units on order, units in stock) of stock is less than the quantity on order.  
SELECT product_name FROM products,inventory_transactions,order_details WHERE (SELECT quantity FROM inventory_transactions) < (SELECT quantity from order_details);



