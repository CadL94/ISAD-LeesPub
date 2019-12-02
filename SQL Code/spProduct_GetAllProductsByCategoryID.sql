-- Creates a stored procedure that gets all products from a category ID


CREATE PROCEDURE dbo.spProduct_GetAllProductsByCategoryID
        @CategoryID INT
AS
BEGIN
SELECT CategoryID, ProductName
FROM  dbo.Product
WHERE CategoryID = @CategoryID
END