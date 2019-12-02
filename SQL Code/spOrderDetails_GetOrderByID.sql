-- Creates a stored procedure that gets orderdetails by order ID

CREATE PROCEDURE dbo.spOrderDetails_GetOrderByID
        @OrderID INT
AS
BEGIN
    SELECT Orders.OrderID, ProductID, Price, Quantity
    FROM dbo.Orders, dbo.OrderDetails 
    WHERE Orders.OrderID = @OrderID
END
GO