USE SalesDB

-- Assign unique IDs to the rows of the 'Orders archive'


SELECT 
*,
ROW_NUMBER() OVER (ORDER BY OrderID, OrderDate) UniqueID


FROM Sales.OrdersArchive


