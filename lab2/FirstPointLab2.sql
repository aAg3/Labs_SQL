
SELECT DISTINCT City, StateProvince FROM SalesLT.Address


SELECT TOP 10 PERCENT Name FROM SalesLT.Product ORDER BY Weight desc


SELECT Name FROM SalesLT.Product ORDER BY Weight desc offset 10 ROWS --FETCH NEXT 100 ROWS ONLY
