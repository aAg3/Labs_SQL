SELECT * FROM SalesLT.Customer

SELECT * FROM SalesLT.CustomerAddress
SELECT * FROM SalesLT.SalesOrderHeader


SELECT SalesLT.Customer.CompanyName, SalesLT.SalesOrderHeader.SalesOrderID,SalesLT.SalesOrderHeader.TotalDue 
FROM SalesLT.Customer JOIN SalesLT.SalesOrderHeader ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID


SELECT SalesLT.Customer.CompanyName, SalesLT.SalesOrderHeader.SalesOrderID, SalesLT.SalesOrderHeader.TotalDue, SalesLT.Address.AddressLine1, 
SalesLT.Address.AddressLine2, SalesLT.Address.City, SalesLT.Address.StateProvince, SalesLT.Address.PostalCode, SalesLT.Address.CountryRegion
FROM SalesLT.Customer JOIN SalesLT.SalesOrderHeader ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
JOIN  SalesLT.CustomerAddress ON SalesLT.Customer.CustomerID = SalesLT.CustomerAddress.CustomerID AND AddressType = 'Main Office'
JOIN SalesLT.Address ON SalesLT.CustomerAddress.AddressID = SalesLT.Address.AddressID