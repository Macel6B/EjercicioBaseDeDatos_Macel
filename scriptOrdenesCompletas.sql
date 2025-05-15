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
SELECT * 
FROM orders 
JOIN customers
ON orders.customerNumber = customers.customerNumber
WHERE status = "shipped";

-- C) Crear la vista la consulta del paso previo 
CREATE VIEW ordenes_completas AS
SELECT * 
FROM orders 
JOIN customers
ON orders.customerNumber = customers.customerNumber
WHERE status = "shipped";

SELECT * FROM [ordenes_completas];


