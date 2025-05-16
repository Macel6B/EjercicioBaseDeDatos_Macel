-- A) Consultar tablas por separado
SELECT * FROM customers;
SELECT * FROM employees;
SELECT * FROM offices;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM products;

-- B) Mostrar las órdenes completas por cliente
SELECT customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE status IN ("shipped", "resolved");

-- C) Crear la vista la consulta del paso previo 
CREATE VIEW ordenesCompletas AS
SELECT customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
FROM customers
JOIN orders
ON customers.customerNumber = orders.customerNumber
WHERE status IN ("shipped", "resolved");

SELECT * FROM ordenesCompletas;




