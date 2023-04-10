--1

begin tran

declare @MaxPrice money = 5000
declare @AvgPrice money = 2000

while 
(@AvgPrice > (select AVG(ListPrice) from SalesLT.Product
where ProductCategoryID in (select ProductCategoryID
from SalesLT.vGetAllCategories where ParentProductCategoryName = 'Bikes')))
and
(@MaxPrice > (select MAX(ListPrice) from SalesLT.Product where ProductCategoryID in (select ProductCategoryID
from SalesLT.vGetAllCategories where ParentProductCategoryName = 'Bikes')))
begin

update SalesLT.Product set ListPrice = 1.1*ListPrice where ProductCategoryID in (select ProductCategoryID
from SalesLT.vGetAllCategories where ParentProductCategoryName = 'Bikes')
end
declare @a money = (select MAX(ListPrice) from SalesLT.Product where ProductCategoryID in (select ProductCategoryID
from SalesLT.vGetAllCategories where ParentProductCategoryName = 'Bikes'))
declare @b money = (select AVG(ListPrice) from SalesLT.Product as p 
where 
(select ParentProductCategoryName 
from SalesLT.vGetAllCategories as v where v.ProductCategoryID = p.ProductCategoryID) = 'Bikes')

print @a
print @b

rollback tran 