SELECT * FROM SalesLT.Customer

SELECT * FROM SalesLT.SalesOrderHeader

SELECT SalesLT.Customer.CompanyName,SalesLT.Customer.FirstName, SalesLT.Customer.LastName, SalesLT.SalesOrderHeader.SalesOrderID ,SalesLT.SalesOrderHeader.TotalDue 
FROM SalesLT.Customer JOIN SalesLT.SalesOrderHeader ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID


