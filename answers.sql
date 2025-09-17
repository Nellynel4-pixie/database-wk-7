SELECT * FROM salesdb.products;
SELECT 101 AS OrderID, 'John Doe' AS CustomerName, 'Laptop' AS Product
UNION ALL
SELECT 101, 'John Doe', 'Mouse'
UNION ALL
SELECT 102, 'Jane Smith', 'Tablet'
UNION ALL
SELECT 102, 'Jane Smith', 'Keyboard'
UNION ALL
SELECT 102, 'Jane Smith', 'Mouse'
UNION ALL
SELECT 103, 'Emily Clark', 'Phone';

SELECT 
    o.orderNumber,
    o.customerNumber,
    c.customerName
FROM Orders o
JOIN Customers c ON o.customerNumber = c.customerNumber
LIMIT 10;

SELECT 
    od.orderNumber,
    od.productCode,
    od.quantityOrdered,
    od.priceEach,
    o.customerNumber
FROM OrderDetails od
JOIN Orders o ON od.orderNumber = o.orderNumber
LIMIT 10;