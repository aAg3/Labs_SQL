




DELETE FROM SalesLT.Product WHERE ProductCategoryID = (SELECT ProductCategoryID FROM SalesLT.ProductCategory WHERE Name = 'Bells and Horns')
DELETE FROM SalesLT.ProductCategory WHERE Name = 'Bells and Horns'

