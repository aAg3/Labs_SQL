


SELECT SalesLT.Customer.CompanyName, SalesLT.SalesOrderHeader.TotalDue, RANK() OVER(ORDER BY SalesLT.SalesOrderHeader.TotalDue) AS [Rank] FROM SalesLT.Customer 
JOIN SalesLT.SalesOrderHeader ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID