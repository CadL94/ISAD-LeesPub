-- Creates a stored procedure that allows you to edit an already existing product for sale.
-- Cannot edit product ID as the product will have a already existing unique ID which is to stay the same.

CREATE PROCEDURE dbo.spProduct_EditProduct
@ProductID int, @CategoryID int, @ProductName NVARCHAR(50), @ProductDescription NVARCHAR(30), @QuantityPerUnit NVARCHAR(30), @Price SMALLMONEY, @UnitsInStock SMALLINT, @RestockLevel SMALLINT, @Available BIT
AS 
BEGIN
    UPDATE  dbo.Product 
    SET
    CategoryID = @CategoryID,
    ProductName = @ProductName,
    ProductDescription = @ProductDescription,    
    QuantityPerUnit = @QuantityPerUnit,
    Price = @Price,
    UnitsInStock = @UnitsInStock,
    RestockLevel = @RestockLevel,
    Available = @Available
    WHERE ProductID = @ProductID
END
