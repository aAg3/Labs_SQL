
SELECT * FROM SalesLT.Product
SELECT * FROM SalesLT.vProductModelCatalogDescription
--1.
SELECT SalesLT.Product.ProductID, SalesLT.Product.Name AS ProductName, SalesLT.vProductModelCatalogDescription.Name AS ProductModel, SalesLT.vProductModelCatalogDescription.Summary FROM SalesLT.Product 
JOIN SalesLT.vProductModelCatalogDescription ON SalesLT.Product.ProductModelID = SalesLT.vProductModelCatalogDescription.ProductModelID
ORDER BY SalesLT.Product.ProductID

--2. 
declare @Colors as table (Color varchar(15))
insert into @Colors
SELECT DISTINCT Color FROM SalesLT.Product

SELECT ProductID, Name, Color FROM SalesLT.Product
WHERE Color IN (SELECT Color FROM @Colors)
ORDER BY Color

--3.
create table #Sizes (Size varchar(5))

insert into #Sizes
SELECT DISTINCT Size FROM SalesLT.Product
SELECT ProductID, Name, Size FROM SalesLT.Product
WHERE size in (SELECT Size FROM #Sizes)
ORDER BY Size desc

--4. 
SELECT pr.ProductID, pr.Name AS ProductName, f.ParentProductCategoryName AS ParentCategory, f.ProductCategoryName AS Category FROM SalesLT.Product AS pr
JOIN dbo.ufnGetAllCategories() as f
ON pr.ProductCategoryID=f.ProductCategoryID
ORDER BY ParentCategory, Category, ProductName