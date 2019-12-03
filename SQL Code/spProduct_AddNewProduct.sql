--Creates a stored procedure that allows creating a new product on the database

CREATE PROCEDURE dbo.spProduct_AddNewProduct
@CategoryID int, @ProductName NVARCHAR(50), @ProductDescription NVARCHAR(30), @QuantityPerUnit NVARCHAR(30), @Price SMALLMONEY, @UnitsInStock SMALLINT, @RestockLevel SMALLINT, @Avaliable BIT
AS 
BEGIN
INSERT INTO dbo.Product (
            CategoryID,
            ProductName,
            ProductDescription,
            QuantityPerUnit,
            Price,
            UnitsInStock,
            RestockLevel,
            Available
            )
VALUES  (@CategoryID, @ProductName, @ProductDescription, @QuantityPerUnit, @Price, @UnitsInStock, @RestockLevel, @Avaliable)
END