create VIEW V_ViewProdPrice
AS
SELECT ProductName, ProductDescription, Price
FROM Product
WHERE Available = 1