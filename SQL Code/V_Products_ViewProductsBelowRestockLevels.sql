-- Creates a view that gets all the products below restocklevels 

CREATE VIEW dbo.V_Products_ViewProductsBelowRestockLevels
AS 
SELECT ProductID, ProductName, UnitsInStock, RestockLevel
FROM dbo.Product
WHERE UnitsInStock < RestockLevel
GO
