-- Creates a stored procedure that cancels order using the OrderID

CREATE PROCEDURE dbo.spOrderDetails_CancelOrder
        @OrderID INT
AS 
BEGIN
    DELETE FROM dbo.OrderDetails
    WHERE OrderID = @OrderID
END