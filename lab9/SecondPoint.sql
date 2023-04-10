
--1
UPDATE SalesLT.Product
SET ListPrice = ListPrice + ListPrice * 0.1
WHERE ProductCategoryID = (SELECT ProductCategoryID FROM SalesLT.ProductCategory WHERE Name = 'Bells and Horns')

--2
UPDATE SalesLT.Product
SET DiscontinuedDate = current_timestamp
WHERE ProductCategoryID = 37 and ProductNumber != 'LT-L123'