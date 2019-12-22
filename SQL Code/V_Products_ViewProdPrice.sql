-- Creates a view that gets product details where available = 1

CREATE VIEW V_ViewProdPrice
AS
SELECT ProductName, ProductDescription, Price
FROM Product
WHERE Available = 1