CREATE PROCEDURE dbo.spProduct_SearchByName
   @ProductName NVARCHAR(50) 
AS
SELECT @ProductName = LTRIM(RTRIM (@ProductName))+ '%'
BEGIN
    SELECT ProductID, CategoryID, ProductName, ProductDescription, QuantityPerUnit, Price, UnitsInStock, RestockLevel, Available
    FROM dbo.Product
    WHERE ProductName LIKE @ProductName
END 