CREATE PROCEDURE Sp_GetProductDetails
AS
SELECT ProductName, ProductDescription, Price
FROM Product
WHERE Available = 1