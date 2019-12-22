

--Adding multiple products to the database using INSERT INTO. 

INSERT INTO dbo.Product (
            CategoryID,
            ProductName,
            ProductDescription,
            QuantityPerUnit,
            Price,
            UnitsInStock,
            RestockLevel
            )
            VALUES
                (
                    '1',   --Drinks Category 
                    'Lemon Beer', 
                    'Beer that tastes like lemon',
                    '568ml', --Quantity
                    '3.00',  --Price £
                    '1000',   --Units in stock
                    '20'    --Restock level
                    
                    
                 ),
                  (
                    '1', --Drinks Category 
                    'Strawberry Beer',
                    'Beer that tastes like strawberrys',
                    '568ml', --Quantity
                    '3.00',  --Price £    
                    '1000',   --Units in stock 
                    '20'     --Restock level
                
                    
                ),
                (
                    '1', --Drinks Category 
                    'Sparkling Water',
                    'Bottle of sparkling water',
                    '600ml', --Quantity
                    '1.50',  --Price £
                    '1000',   --Units in stock   
                    '20'     --Restock level
             
                ),
                (
                    '2',  --Doughnuts Category 
                    'Pink Doughnut',
                    'A Doughnut with pink icing',
                    '1',   --Quantity
                    '1',   --Price £ 
                    '1000',  --Units in stock 
                    '20'     --Restock level
                
                    
                ),
		        (
                    '2',  --Doughnuts Category 
                    'Chocolate Doughnut',
                    'A Doughnut with chocolate icing',
                    '1',  --Quantity
                    '1',  --Price £ 
                    '1000',  --Units in stock 
                    '20'     --Restock level
                
                );