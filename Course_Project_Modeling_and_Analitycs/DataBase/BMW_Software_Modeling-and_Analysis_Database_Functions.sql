USE BMW_Software_Modeling-and_Analysis_SE_Course_Work;


CREATE FUNCTION GetTotalOrderValue(@UserID INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @TotalValue DECIMAL(10, 2);

    SELECT @TotalValue = SUM(o.Price)
    FROM Model_Order mo
    JOIN [Order] o ON mo.OrderID = o.OrderID
    WHERE mo.UserID = @UserID;

    RETURN ISNULL(@TotalValue, 0);
END;
GO

CREATE FUNCTION GetFullName(@UserID INT)
RETURNS NVARCHAR(101)
AS
BEGIN
    DECLARE @FullName NVARCHAR(101);

    SELECT @FullName = CONCAT(First_Name, ' ', Last_Name)
    FROM [User]
    WHERE UserID = @UserID;

    RETURN @FullName;
END;
GO

CREATE FUNCTION GetEnginePower(@EngineID INT)
RETURNS INT
AS
BEGIN
    DECLARE @EnginePower INT;

    SELECT @EnginePower = Engine_Power
    FROM Engine
    WHERE EngineID = @EngineID;

    RETURN @EnginePower;
END;
GO
