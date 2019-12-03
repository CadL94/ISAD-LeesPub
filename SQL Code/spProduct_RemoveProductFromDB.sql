-- Creates a stored procedure that removes a product from the DB using product ID

CREATE PROCEDURE dbo.spProduct_RemoveProductFromDB
        @ProductID INT
AS 
BEGIN
    DELETE FROM dbo.Product 
    WHERE ProductID = @ProductID
END