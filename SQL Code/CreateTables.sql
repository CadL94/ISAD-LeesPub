--Creates a new database called 'LeesPub'

Create DATABASE LeesPub;
GO

--Uses database called 'LeesPub'

USE LeesPub




-- Creates a new table called 'Category'

CREATE TABLE [dbo].[Category]
(
    CategoryID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,  -- Primary Key column. Datatype INT : will only allow whole numbers. 
    CategoryName NVARCHAR(20) NOT NULL,                 -- Datatype NVARCHAR(20) : Maximum 20 unicode characters.
    CategoryDescription NVARCHAR(MAX) NOT NULL,         -- Datatype NVARCHAR(Max) : Max unicode characters.
    CategoryImage NVARCHAR(60) NOT NULL,                -- Datatype NVARCHAR(60) : Stores image filepath. 
    DateAdded DATETIME DEFAULT GETUTCDATE(),            -- Datatype DATETIME : Gets date and time of when category was added.


);
GO





-- Creates a new table called 'Product'

CREATE TABLE [dbo].[Product]
(
    ProductID INT IDENTITY(100,1) NOT NULL PRIMARY KEY,         -- Primary Key column. Datatype INT : Will only allow whole numbers. 
    CategoryID INT NOT NULL REFERENCES Category(CategoryID),    -- Foreign Key column. References 'CategoryID' in 'Category' Table. Datatype INT : will only allow numbers.
    ProductName NVARCHAR(50) NOT NULL UNIQUE,                   -- Datatype NVARCHAR(50) : Maximum 50 unicode characters. UNIQUE : Each product should have a different name.
    ProductDescription NVARCHAR(MAX) NOT NULL,                  -- Datatype NVARCHAR(Max) : Maximum unicode characters.                          
    QuantityPerUnit NVARCHAR(30) NOT NULL,                      -- Datatype NVARCHAR(30) : Maximum 30 unicode characters.                                  
    Price SMALLMONEY NOT NULL,                                  -- Datatype SMALLMONEY : Money data. Uses less memory then MONEY.
    UnitsInStock SMALLINT NOT NULL DEFAULT 0,                   -- Datatype SMALLINT : Will only allow whole numbers.                 
    RestockLevel SMALLINT NOT NULL DEFAULT 20,                  -- Datatype SMALLINT : Will only allow whole numbers.
    Available BIT NOT NULL DEFAULT 1,                           -- Datatype BIT : Value 1 = Yes available  |  Value 0 = Not availible.



);

GO


-- Creates a new table called 'Tables'


CREATE TABLE [dbo].[Tables]
(
    TableID TINYINT NOT NULL IDENTITY (1,1) PRIMARY KEY,    -- Primary Key column. Datatype TINYINT : Will only allow whole numbers maximum 255.
    TableName NVARCHAR(20) NOT NULL UNIQUE,                         -- Datatype NVARCHAR(20) : Maximum 20 unicode characters. UNIQUE : Each table should have a different name.                                        
    DateAdded DATETIME DEFAULT GETUTCDATE(),                 -- Datatype DATETIME : Gets date and time. 
   




);
    
GO



-- Creates a new table called 'Orders'

CREATE TABLE [dbo].[Orders]
(
    OrderID INT NOT NULL IDENTITY (1000,1) PRIMARY KEY,               -- Primary Key column. Datatype INT : Will only allow whole numbers.
    TableID TINYINT REFERENCES Tables(TableID),         -- Foreign Key column. References 'TableID' in 'Tables' table. Datatype TINYINT : Will only allow whole numbers maximum 255.
    OrderDate DATETIME DEFAULT GETUTCDATE(),            -- Datatype DATETIME : Gets date and time of order date.  
    
);
GO





-- Creates a new table called 'OrderDetails'


CREATE TABLE [dbo].[OrderDetails]
(
    OrderID INT NOT NULL REFERENCES Orders(OrderID),            -- Foreign key column. References 'OrderID' in 'Orders' table. Datatype INT : Will only allow whole numbers.
    ProductID INT NOT NULL REFERENCES Product(ProductID),       -- Foreign key column. References 'ProductID' in 'Products' table. Datatype INT : Will only allow whole numbers.
    Price SMALLMONEY NOT NULL,                                  -- Datatype SMALLMONEY : Money data. Uses less memory then MONEY.
    Quantity SMALLINT NOT NULL,                                 -- DataType SMALLINT : Will only allow whole numbers. 
    OrderStatus BIT NOT NULL DEFAULT 0,                         -- Datatype BIT : Value 1 = Yes Completed  |  Value 0 = Not Completed.


    
    
);
GO
