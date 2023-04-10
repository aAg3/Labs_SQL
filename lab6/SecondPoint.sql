

SELECT * FROM SalesLT.SalesOrderDetail


--1
SELECT soh.SalesOrderID, p.CustomerID, p.FirstName, p.LastName, soh.TotalDue FROM SalesLT.SalesOrderHeader as soh
CROSS APPLY dbo.ufnGetCustomerInformation(soh.CustomerID) as P

--2
SELECT ca.CustomerID, p.FirstName, p.LastName, ad.AddressLine1, ad.City
FROM  SalesLT.CustomerAddress as ca
JOIN SalesLT.Address as ad
ON ca.AddressID = ad.AddressID
CROSS APPLY dbo.ufnGetCustomerInformation(ca.CustomerID) as P
ORDER BY p.CustomerID