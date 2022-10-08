SELECT s.CompanyName, ca.AddressType, sa.AddressLine1, sa.AddressLine2, sa.City, sa.PostalCode, o.SalesOrderID, o.TotalDue 
FROM SalesLT.Customer as s 
INNER JOIN SalesLT.SalesOrderHeader as o 
ON s.CustomerID=o.CustomerID
INNER JOIN SalesLT.CustomerAddress as ca 
On o.CustomerID=ca.CustomerID 
INNER JOIN SalesLT.Address as sa 
ON ca.AddressID=sa.AddressID
WHERE ca.AddressType='Main Office';