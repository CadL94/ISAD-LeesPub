--Creates a Stored Procedure that completes order.
--Inserts selected table ID then updates orderstatus and order ID on all products ordered in basket


Create PROCEDURE dbo.spOrders_CompleteOrder
    @OrderID INT,
    @TableID TINYINT
    
AS
BEGIN
    

    INSERT INTO dbo.Orders(
        Orders.TableID
)
VALUES (
    @TableID );

    SET @OrderID = SCOPE_IDENTITY();   -- This will get the latest generated ID from Orders.OrderID to use

    UPDATE dbo.OrderDetails
    SET OrderStatus = 1
    WHERE OrderStatus = 0

    UPDATE dbo.OrderDetails
    SET OrderID = @OrderID
    WHERE OrderStatus = 1

       


    

END;
GO
