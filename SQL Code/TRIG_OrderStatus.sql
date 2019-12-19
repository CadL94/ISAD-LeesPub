CREATE TRIGGER T_OrderStatus
ON dbo.Orders
AFTER INSERT,UPDATE
AS 
BEGIN 
    UPDATE dbo.OrderDetails
    SET OrderStatus = 1
    FROM dbo.OrderDetails
    WHERE OrderStatus = 0



    DECLARE @OrderID int 

    SET @OrderID = @@IDENTITY;   -- This will get the latest generated ID from Orders.OrderID to use



    UPDATE dbo.OrderDetails
    SET OrderID = @OrderID
    WHERE OrderStatus = 1
END