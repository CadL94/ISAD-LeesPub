CREATE VIEW dbo.V_Products_ViewAllProductsNotForSale
AS
SELECT ProductID, ProductName, ProductDescription, Price, QuantityPerUnit, UnitsInStock, RestockLevel, CategoryID
    From dbo.Product
    WHERE Available = 0
    GO