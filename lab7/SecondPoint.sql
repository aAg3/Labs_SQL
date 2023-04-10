



--1.
SELECT CompanyContact, sum(TotalDue) AS Revenue FROM

(SELECT (CompanyName + ' ('+ FirstName + ' ' + LastName + ')') AS CompanyContact, TotalDue FROM SalesLT.Customer AS cus
JOIN SalesLT.SalesOrderHeader AS soh
ON cus.CustomerID = soh.CustomerID) AS cn
GROUP BY CompanyContact
ORDER BY CompanyContact

--2.
WITH Client (CompanyContact, TotalDue) AS (SELECT (CompanyName + ' ('+ FirstName + ' ' + LastName + ')') AS CompanyContact, soh.TotalDue FROM SalesLT.Customer AS cus
JOIN SalesLT.SalesOrderHeader AS soh
ON cus.CustomerID = soh.CustomerID)
SELECT CompanyContact, sum(TotalDue) AS Revenue FROM Client
GROUP BY CompanyContact
ORDER BY CompanyContact