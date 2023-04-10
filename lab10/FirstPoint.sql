--1

declare @OrderDate datetime = Getdate()
declare @DueDate datetime = DATEADD(d, 7, Getdate())
declare @CustomerID int = 1
declare @ID int = next value for SalesLT.SalesOrderNumber

print @ID
insert into SalesLT.SalesOrderHeader (SalesOrderID, CustomerID, OrderDate, DueDate, ShipMethod) 
values (@ID, @CustomerID, @OrderDate, @DueDate, 'CARGO TRANSPORT 5')
select * from SalesLT.SalesOrderHeader where SalesOrderID=@ID
 
--2
DECLARE @SalesOrderID int = @ID
DECLARE @ProductID int = 760;  
DECLARE @Quantity int = 1;  
DECLARE @UnitPrice money = 782.99;  

		IF EXISTS (SELECT * FROM SalesLT.SalesOrderHeader WHERE SalesOrderID = @SalesOrderID)  
BEGIN  
     INSERT INTO SalesLT.SalesOrderDetail (SalesOrderID, OrderQty, ProductID, UnitPrice)  
     VALUES (@SalesOrderID, @Quantity, @ProductID, @UnitPrice)  
END  
	ELSE  
BEGIN  
   PRINT 'Заказ не существует'  
END 
select * from SalesLT.SalesOrderDetail where SalesOrderID=@SalesOrderID