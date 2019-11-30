CREATE VIEW dbo.V_Products_ViewCurrentStockofProducts
AS 
SELECT ProductID, ProductName, UnitsInStock, RestockLevel
FROM dbo.Product

