

--1
insert into SalesLT.Product (Name, ProductNumber, Color, StandardCost, ListPrice, Size, Weight, ProductCategoryID, ProductModelID, SellStartDate, SellEndDate, DiscontinuedDate, ThumbNailPhoto, ThumbnailPhotoFileName)
values ('LED Lights', 'LT-L123', 2.56, 12.99, GETDATE())
SELECT SCOPE_IDENTITY()
SELECT * from SalesLT.Product where ProductID = SCOPE_IDENTITY()

--2
insert into SalesLT.ProductCategory (ParentProductCategoryID, Name)
values (4,'Bells and Horns')
insert into SalesLT.Product (Name, ProductNumber, StandardCost, ListPrice, ProductCategoryID, SellStartDate)
values ('Bicycle Bell', 'BB-RING', 2.47, 4.99, SCOPE_IDENTITY(), current_timestamp),
('Bicycle Horn', 'BB-PARP', 1.29, 3.75, SCOPE_IDENTITY(), current_timestamp)
SELECT * from SalesLT.Product P inner join SalesLT.ProductCategory PC on P.ProductCategoryID = PC.ProductCategoryID
where P.ProductCategoryID in (SELECT ProductCategoryID FROM SalesLT.Product where ProductID = SCOPE_IDENTITY())