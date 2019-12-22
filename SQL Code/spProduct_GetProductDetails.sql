-- Creates a stored procedure gets product details where available = 1

CREATE PROCEDURE Sp_GetProductDetails
AS
SELECT ProductName, ProductDescription, Price
FROM Product
WHERE Available = 1