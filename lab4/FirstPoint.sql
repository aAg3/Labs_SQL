
SELECT SalesLT.Customer.CompanyName, SalesLT.Address.AddressLine1 , SalesLT.Address.City AS Address, 'Billing' AS AddressType FROM SalesLT.Address
JOIN SalesLT.CustomerAddress 
ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
JOIN SalesLT.Customer 
ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Main Office'


SELECT SalesLT.Customer.CompanyName, SalesLT.Address.AddressLine1 , SalesLT.Address.City AS Address, 'Shipping' AS AddressType FROM SalesLT.Address 
JOIN SalesLT.CustomerAddress 
ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
JOIN SalesLT.Customer
ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
where SalesLT.CustomerAddress.AddressType = 'Shipping'


SELECT SalesLT.Customer.CompanyName, SalesLT.Address.AddressLine1 , SalesLT.Address.City AS Address, 'Billing' AS AddressType FROM SalesLT.Address 
JOIN SalesLT.CustomerAddress 
ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
JOIN SalesLT.Customer 
ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Main Office'
UNION
SELECT SalesLT.Customer.CompanyName, SalesLT.Address.AddressLine1 , SalesLT.Address.City AS Address, 'Shipping' AS AddressType FROM SalesLT.Address
JOIN SalesLT.CustomerAddress 
ON SalesLT.Address.AddressID = SalesLT.CustomerAddress.AddressID
JOIN SalesLT.Customer 
ON SalesLT.CustomerAddress.CustomerID = SalesLT.Customer.CustomerID
WHERE SalesLT.CustomerAddress.AddressType = 'Shipping'
ORDER BY AddressType