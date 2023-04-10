
SELECT * FROM SalesLT.Product


SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight FROM SalesLT.Product


SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight, YEAR(SellStartDate) AS SellStartYear, DATENAME(MONTH, SellStartDate) AS SellStartMonth FROM SalesLT.Product


SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight, YEAR(SellStartDate) AS SellStartYear, DATENAME(MONTH, SellStartDate) AS SellStartMonth,
LEFT(ProductNumber, 2) AS ProductType FROM SalesLT.Product


SELECT ProductID, UPPER(Name) AS ProductName, ROUND(Weight, 0) AS ApproxWeight, YEAR(SellStartDate) AS SellStartYear, DATENAME(MONTH, SellStartDate) AS SellStartMonth,
LEFT(ProductNumber, 2) AS ProductType FROM SalesLT.Product WHERE ISNUMERIC(Size) = 1




