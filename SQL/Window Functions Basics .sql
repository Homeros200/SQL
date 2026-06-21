/*Find the total Sales Across All orders
Additionally provide details such as order Id, order date*/
SELECT
    OrderID,
    OrderDate,
    ProductID,
    SUM(Sales) over(PARTITION BY productID) TotalSalesBYproducts
FROM Sales.Orders