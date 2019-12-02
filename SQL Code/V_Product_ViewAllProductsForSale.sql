--Create view that gets all products for sale 

CREATE VIEW dbo.V_Products_ViewAllProductsForSale
AS
SELECT ProductID, ProductName, ProductDescription, Price, QuantityPerUnit, UnitsInStock, RestockLevel, CategoryID
FROM dbo.Product
WHERE Available = 1
GO