-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT product.ProductName, category.CategoryName
FROM product
JOIN category ON product.CategoryId = category.CategoryId
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT order.id, shipper.CompanyName
FROM order
JOIN shipper on order.ShipVia = shipper.id
WHERE order.orderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT product.ProductName, orderdetail.quantity
FROM orderdetail
JOIN product ON orderdetail.ProductId = Product.Id
WHERE orderdetail.OrderId = 10251
ORDER BY ProductName ASC

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT order.OrderId, customer.CompanyName, employee.LastName
FROM order
JOIN customer ON order.CustomerId = customer.Id
JOIN employee ON order.EmployeeId = employee.Id
