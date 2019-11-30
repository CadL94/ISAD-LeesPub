--Adding multiple categories to the database using INSERT INTO.

INSERT INTO dbo.Category (
            CategoryName, 
            CategoryDescription, 
            CategoryImage
            )
            VALUES 
            (
            'Drinks',  --Category Name
            'Alcohol and soft drinks', --Category description
            'C:\Users\Lee\Documents\ISAD-LeesPub\Images' --Image filepath
            ),
            (
            'Doughnuts', --Category Name
            'Assortment of doughnuts', --Category desciption
            'C:\Users\Lee\Documents\ISAD-LeesPub\Images'  --Image filepath
            );