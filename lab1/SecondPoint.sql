SELECT * FROM SalesLT.SalesOrderHeader


SELECT CAST((CustomerID) AS varchar) + ':' + CompanyName AS CustomerCompany FROM SalesLT.Customer



SELECT SalesOrderNumber + '(' + CAST((RevisionNumber) AS varchar) + ')'AS OrderRevision,
CONVERT(nvarchar(40),OrderDate,102) AS OrderDate FROM SalesLT.SalesOrderHeader

