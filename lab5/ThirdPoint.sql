
SELECT * FROM SalesLT.Product

SELECT SalesLT.Product.Name, SUM(SalesLT.SalesOrderDetail.LineTotal) AS TotalRevenue FROM SalesLT.Product  
JOIN SalesLT.SalesOrderDetail
ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID 
GROUP BY NAME


SELECT SalesLT.Product.Name, SUM(SalesLT.SalesOrderDetail.LineTotal) AS TotalRevenue FROM SalesLT.Product  
JOIN SalesLT.SalesOrderDetail
ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID 
WHERE SalesLT.SalesOrderDetail.LineTotal > 1000
GROUP BY NAME

SELECT SalesLT.Product.Name, SUM(SalesLT.SalesOrderDetail.LineTotal) AS TotalRevenue FROM SalesLT.Product  
JOIN SalesLT.SalesOrderDetail
ON SalesLT.Product.ProductID = SalesLT.SalesOrderDetail.ProductID 
WHERE SalesLT.SalesOrderDetail.LineTotal > 1000
GROUP BY NAME
HAVING SUM(SalesLT.SalesOrderDetail.LineTotal) > 20000

