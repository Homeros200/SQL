USE SalesDB
-- Show All Customer Details and find the total orders of each customer

SELECT
*,(SELECT COUNT(*) FROM Sales.Orders o WHERE o.CustomerID = c.CustomerID) TotalSales
FROM Sales.Customers c








