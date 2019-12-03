-- Creates a trigger that changes units in stock after order is complete

CREATE TRIGGER dbo.TRIG_ChangeStockAfterOrder
ON dbo.OrderDetails
AFTER INSERT
AS
BEGIN 
    UPDATE dbo.Product
    SET UnitsInStock = Product.UnitsInStock - OrderDetails.Quantity
    FROM dbo.Product, dbo.OrderDetails
    WHERE Product.ProductID = OrderDetails.ProductID
END 