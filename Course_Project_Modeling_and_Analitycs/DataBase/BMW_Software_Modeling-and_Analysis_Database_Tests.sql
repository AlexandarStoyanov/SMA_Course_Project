EXEC AddUser
    @First_Name = 'John',
    @Last_Name = 'Doe',
    @Email = 'hohndoe@abv.com',
    @Password = 'password123',
    @AddressID = 2;

-- Verify insertion
SELECT * FROM [User] WHERE Email = 'hohndoe@abv.com';


EXEC AddModel
    @Model_Name = 'Model N',
    @Model_Year = 2010,
    @EngineID = 3,
    @ExtiriorID = 2,
    @IntiriorID = 1,
    @PackageID = 2;

-- Verify insertion
SELECT * FROM Model WHERE Model_Name = 'Model N';


EXEC AddModelOrder
    @ModelID = 2,
    @UserID = 10,
    @AddressID = 2,
    @Quantity = 2,
    @Price = 1033000.00,
    @Status = 'Pending';

-- Verify insertion in Model_Order and Order tables
SELECT * FROM Model_Order WHERE ModelID = 2 AND UserID = 10;
SELECT * FROM [Order] WHERE OrderID = SCOPE_IDENTITY(); 


SELECT dbo.GetFullName(4) AS FullName;

SELECT dbo.GetTotalModelOrderValue(2) AS TotalOrderValue;

SELECT dbo.GetEnginePower(4) AS EnginePower;

EXEC AddModelOrder
    @ModelID = 2,
    @UserID = 2,
    @AddressID = 4,
    @Quantity = 2,
    @Price = 1511000.00,
    @Status = 'Complete';

-- Verify if status is updated to 'Completed'
SELECT * FROM Model_Order WHERE ModelID = 2 AND UserID = 2;


BEGIN TRY
    EXEC AddUser
        @First_Name = 'Pesho',
        @Last_Name = 'Gorgiev',
        @Email = Null,
        @Password = 'password456',
        @AddressID = 1;
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH;

DELETE FROM Model WHERE ModelID = 10;

-- Verify deletion from Model_Order table
SELECT * FROM Model_Order WHERE ModelID = 10;
