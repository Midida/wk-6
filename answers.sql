-- Q1: Employee details with office info
SELECT * FROM salesdb.employees;
SELECT e.firstName,
       e.lastName,
       e.email,
       e.officeCode
FROM salesdb.employees e
INNER JOIN salesdb.offices o
    ON e.officeCode = o.officeCode;

-- Q2: Retrieve product details with their product line info
SELECT * FROM salesdb.products;
SELECT p.productName,
       p.productVendor,
       p.productLine
FROM products p
LEFT JOIN productlines pl
    ON p.productLine = pl.productLine;

    -- Q3: Retrieve first 10 orders with customer info
SELECT * FROM salesdb.orders;
SELECT o.orderDate,
       o.shippedDate,
       o.status,
       o.customerNumber
FROM customers c
RIGHT JOIN orders o
    ON c.customerNumber = o.customerNumber
LIMIT 10;

