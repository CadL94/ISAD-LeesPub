--Creates a view that gets all the current stock of products

CREATE VIEW dbo.V_Products_ViewCurrentStockofProducts
AS 
SELECT ProductID, ProductName, UnitsInStock, RestockLevel
FROM dbo.Product

