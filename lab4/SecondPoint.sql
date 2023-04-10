


SELECT SalesLT.Customer.CompanyName FROM SalesLT.CustomerAddress JOIN SalesLT.Customer ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Main Office'
EXCEPT
SELECT SalesLT.Customer.CompanyName FROM SalesLT.CustomerAddress JOIN SalesLT.Customer ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Shipping'


SELECT SalesLT.Customer.CompanyName FROM SalesLT.CustomerAddress JOIN SalesLT.Customer ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Main Office'
INTERSECT
SELECT SalesLT.Customer.CompanyName FROM SalesLT.CustomerAddress JOIN SalesLT.Customer ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Shipping'