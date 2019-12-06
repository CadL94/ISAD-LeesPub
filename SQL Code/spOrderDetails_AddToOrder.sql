-- Creates a stored procedure that adds customers products to orderdetails "basket"

Create PROCEDURE dbo.spOrderDetails_AddToOrder
    
    @ProductID  INT,
    @Price INT,
    @Quantity SMALLINT
    
    

AS
BEGIN
    


    INSERT INTO dbo.OrderDetails
                (
                
                ProductID,
                Price,
                Quantity
                
                )
    VALUES  
                ( 
                    
                @ProductID,
                @Price,
                @Quantity

                );

END     
GO
