--Creates a trigger that will set a product availiblity as 0(not for sale) when stock is equal to or less than 5

CREATE TRIGGER dbo.TRIG_MakeProductNotForSale 
ON dbo.Product
AFTER UPDATE
AS 
BEGIN 
    UPDATE Product
    SET Available = 0
    FROM dbo.Product
    WHERE UnitsInStock <= 5
END