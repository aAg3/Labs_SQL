

SELECT * FROM SalesLT.Product
SELECT * FROM SalesLT.SalesOrderDetail

--1
SELECT SalesLT.Product.ProductID, SalesLT.Product.Name, SalesLT.Product.ListPrice FROM SalesLT.Product
WHERE SalesLT.Product.ListPrice > (SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail)

--2
SELECT SalesLT.Product.ProductID, SalesLT.Product.Name, SalesLT.Product.ListPrice FROM SalesLT.Product
WHERE (SalesLT.Product.ListPrice >= 100) AND SalesLT.Product.ProductID IN (SELECT SalesLT.SalesOrderDetail.ProductID FROM SalesLT.SalesOrderDetail WHERE UnitPrice < 100)

--3
SELECT SalesLT.Product.ProductID, SalesLT.Product.Name, SalesLT.Product.StandardCost, SalesLT.Product.ListPrice, (SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail 
WHERE SalesLT.Product.ProductID=ProductID) AS AvgSellingPrice FROM SalesLT.Product 

--4
SELECT SalesLT.Product.ProductID, SalesLT.Product.Name, SalesLT.Product.StandardCost, SalesLT.Product.ListPrice, (SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail 
WHERE SalesLT.Product.ProductID=ProductID) AS AvgSellingPrice FROM SalesLT.Product
WHERE (SalesLT.Product.StandardCost > (SELECT AVG(UnitPrice) FROM SalesLT.SalesOrderDetail))