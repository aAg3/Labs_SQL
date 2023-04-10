
SELECT * FROM SalesLT.Address 
---1.
SELECT a.CountryRegion, a.StateProvince, SUM(soh.TotalDue) AS Revenue
FROM SalesLT.Address AS a
INNER JOIN SalesLT.CustomerAddress AS ca ON a.AddressID = ca.AddressID
INNER JOIN SalesLT.Customer AS c ON ca.CustomerID = c.CustomerID
INNER JOIN SalesLT.SalesOrderHeader as soh ON c.CustomerID = soh.CustomerID
GROUP BY 
Grouping sets (a.CountryRegion, (a.CountryRegion, a.StateProvince), ())
ORDER BY a.CountryRegion, a.StateProvince;

---2.
SELECT a.CountryRegion, a.StateProvince, GROUPING_ID(a.CountryRegion, a.StateProvince) as Level, SUM(soh.TotalDue) AS Revenue
FROM SalesLT.Address AS a
INNER JOIN SalesLT.CustomerAddress AS ca ON a.AddressID = ca.AddressID
INNER JOIN SalesLT.Customer AS c ON ca.CustomerID = c.CustomerID
INNER JOIN SalesLT.SalesOrderHeader as soh ON c.CustomerID = soh.CustomerID
GROUP BY 
Grouping sets (a.CountryRegion, a.StateProvince, ())
ORDER BY a.CountryRegion, a.StateProvince;

---3.
SELECT a.CountryRegion, a.StateProvince,City, 
choose (GROUPING_ID(a.CountryRegion, a.StateProvince),city +' subtotal',a.StateProvince + ' subtotal', a.CountryRegion + ' subtotal', 'Total')as Level, SUM(soh.TotalDue) AS Revenue
FROM SalesLT.Address AS a
INNER JOIN SalesLT.CustomerAddress AS ca ON a.AddressID = ca.AddressID
INNER JOIN SalesLT.Customer AS c ON ca.CustomerID = c.CustomerID
INNER JOIN SalesLT.SalesOrderHeader as soh ON c.CustomerID = soh.CustomerID
GROUP BY 
Grouping sets (a.CountryRegion, a.StateProvince, City, ())
ORDER BY a.CountryRegion, a.StateProvince, City;