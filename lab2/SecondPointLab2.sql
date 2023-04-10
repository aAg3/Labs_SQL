
SELECT * FROM SalesLT.Product

SELECT Name, Color, Size FROM SalesLT.Product WHERE ProductModelID = 1

SELECT ProductNumber, Name FROM SalesLT.Product WHERE color in ('black' , 'red' , 'white') and size in ('S' , 'M')

SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber like 'BK-%'

SELECT ProductNumber, Name, ListPrice FROM SalesLT.Product WHERE ProductNumber like 'BK-[^R]%-[0-9][0-9]'