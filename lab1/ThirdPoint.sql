SELECT * FROM SalesLT.SalesOrderHeader


SELECT FirstName + ' ' + ISNULL(MiddleName, '') + ' ' + LastName As CustomerName FROM SalesLT.Customer



UPDATE SalesLT.Customer SET EmailAddress = NULL WHERE CustomerID% 7 = 1;

SELECT CustomerID, ISNULL(EmailAddress,Phone) AS PrimaryContact FROM SalesLT.Customer



UPDATE SalesLT.SalesOrderHeader SET ShipDate = NULL WHERE SalesOrderID > 71899;

SELECT PurchaseOrderNumber,
CASE
WHEN ShipDate IS NULL THEN 'AwaitingShipment'
ELSE 'Shipped'
END AS ShippingStatus FROM SalesLT.SalesOrderHeader
