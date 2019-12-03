-- Creates a stored procedure where you can withdraw a product from sale or make product available again
-- 0 = Not for sale
-- 1 = For Sale

CREATE PROCEDURE dbo.spProduct_ChangeProductSaleAvailability 
@ProductID int, @Available BIT
AS 
BEGIN
    UPDATE dbo.Product
    SET
    Available = @Available
    WHERE ProductID  = @ProductID 
    END