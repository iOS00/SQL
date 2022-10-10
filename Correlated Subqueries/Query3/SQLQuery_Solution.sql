SELECT p.ProductID, p.Name, p.StandardCost, p.ListPrice, 
(SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail AS o 
WHERE o.ProductID=p.ProductID) AS AveragePrice
FROM SalesLT.Product as p
ORDER BY p.ProductID;