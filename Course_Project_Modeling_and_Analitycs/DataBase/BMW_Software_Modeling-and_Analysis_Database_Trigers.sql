USE BMW_Software_Modeling-and_Analysis_SE_Course_Work;


CREATE TRIGGER trg_UpdateOrderStatus
ON Model_Order
AFTER INSERT
AS
BEGIN
    DECLARE @OrderID INT;

    SELECT @OrderID = OrderID
    FROM inserted;

    -- Актуализира статуса на поръчката на "Completed", ако количеството е 10 или повече
    UPDATE Model_Order
    SET Status = 'Completed'
    WHERE OrderID = @OrderID AND (SELECT Quantity FROM [Order] WHERE OrderID = @OrderID) >= 10;
END;
GO

CREATE TRIGGER trg_CheckEmailNotNull
ON [User]
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE Email IS NULL)
    BEGIN
        RAISERROR('Email cannot be NULL', 16, 1);
        ROLLBACK;
    END
    ELSE
    BEGIN
        INSERT INTO [User] (First_Name, Last_Name, Email, Password, AddressID)
        SELECT First_Name, Last_Name, Email, Password, AddressID
        FROM inserted;
    END
END;
GO

CREATE TRIGGER trg_DeleteModelOrders
ON Model
FOR DELETE
AS
BEGIN
    DECLARE @DeletedModelID INT;

    SELECT @DeletedModelID = ModelID FROM deleted;

    DELETE FROM Model_Order WHERE ModelID = @DeletedModelID;
END;
GO