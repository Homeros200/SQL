USE SalesDB

--Rank Customers based on their total amount of sales
--Main Query

SELECT 
*,
Rank() OVER (ORDER BY TotalSales DESC ) CustomerRank


FROM(
	SELECT
	CustomerID,
	SUM(Sales) TotalSales
	FROM Sales.Orders
	GROUP BY CustomerID
	)t




