



SELECT CompanyName, Bikes, Accessories, Clothing

FROM(SELECT c.CompanyName as CompanyName, sum(sod.LineTotal) as Sum, v.ParentProductCategoryName as Category from SalesLT.Customer as c
JOIN SalesLT.SalesOrderHeader as soh
ON c.CustomerID = soh.CustomerID
JOIN SalesLT.SalesOrderDetail as sod
ON soh.SalesOrderID = sod.SalesOrderID
JOIN SalesLT.Product as p
ON sod.ProductID = p.ProductID
JOIN SalesLT.vGetAllCategories as v
ON p.ProductCategoryID = v.ProductCategoryID
GROUP BY  v.ParentProductCategoryName, c.CompanyName) 
AS sales
PIVOT (SUM(SUM) FOR Category IN([Bikes], [Accessories], [Clothing])) AS pvt