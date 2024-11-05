USE BMW_Software_Modeling-and_Analysis_SE_Course_Work;


CREATE PROCEDURE AddModelOrder
    @ModelID INT,
    @UserID INT,
    @AddressID INT,
    @Quantity INT,
    @Price DECIMAL(10, 2),
    @Status NVARCHAR(20)
AS
BEGIN
    DECLARE @OrderID INT;

    -- Вмъква нов запис в таблицата Order и записва новия OrderID
    INSERT INTO [Order] (Quantity, Price)
    VALUES (@Quantity, @Price);

    SET @OrderID = SCOPE_IDENTITY();

    -- Вмъква нов запис в таблицата Model_Order с новия OrderID
    INSERT INTO Model_Order (ModelID, UserID, AddressID, OrderID, Date, Status)
    VALUES (@ModelID, @UserID, @AddressID, @OrderID, GETDATE(), @Status);
END;
GO


CREATE PROCEDURE AddUser
    @First_Name NVARCHAR(50),
    @Last_Name NVARCHAR(50),
    @Email NVARCHAR(100),
    @Password NVARCHAR(100),
    @AddressID INT
AS
BEGIN
    INSERT INTO [User] (First_Name, Last_Name, Email, Password, AddressID)
    VALUES (@First_Name, @Last_Name, @Email, @Password, @AddressID);
END;
GO

CREATE PROCEDURE AddModel
    @Model_Name NVARCHAR(100),
    @Model_Year INT,
    @EngineID INT,
    @ExtiriorID INT,
    @IntiriorID INT,
    @PackageID INT
AS
BEGIN
    INSERT INTO Model (Model_Name, Model_Year, EngineID, ExtiriorID, IntiriorID, PackageID)
    VALUES (@Model_Name, @Model_Year, @EngineID, @ExtiriorID, @IntiriorID, @PackageID);
END;
GO


