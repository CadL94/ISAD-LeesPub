--Creates a view that gets the top 10 most expensive products for sale

CREATE VIEW [dbo].[V_Products_View10MostExpensive]
AS
SELECT ProductName, Price
FROM
(
SELECT TOP 10 
    ProductName, Price
    FROM dbo.Product
    ORDER BY Price DESC
) AS x
GO
