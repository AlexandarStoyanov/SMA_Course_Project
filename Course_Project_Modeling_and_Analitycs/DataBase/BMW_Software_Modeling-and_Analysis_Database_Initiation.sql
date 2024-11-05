CREATE DATABASE BMW_Software_Modeling_and_Analysis_SE_Course_Work;

USE BMW_Software_Modeling-and_Analysis_SE_Course_Work;

CREATE TABLE Model (
    ModelID INT PRIMARY KEY IDENTITY(1,1),
    Model_Name NVARCHAR(100) NOT NULL,
    Model_Year INT NOT NULL,
    EngineID INT,
    ExtiriorID INT,
    IntiriorID INT,
    PackageID INT,
    FOREIGN KEY (EngineID) REFERENCES Engine(EngineID),
    FOREIGN KEY (ExtiriorID) REFERENCES Extirior(ExtiriorID),
    FOREIGN KEY (IntiriorID) REFERENCES Intirior(IntiriorID),
    FOREIGN KEY (PackageID) REFERENCES Packages(PackageID)
);
GO

-- Table for Users
CREATE TABLE [User] (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    First_Name NVARCHAR(50) NOT NULL,
    Last_Name NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,
    Password NVARCHAR(100) NOT NULL,
    AddressID INT,
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID)
);
GO

-- Table for Model Orders
CREATE TABLE Model_Order (
    Model_Order_ID INT PRIMARY KEY IDENTITY(1,1),
    ModelID INT,
    UserID INT,
    AddressID INT,
    OrderID INT,
    Date DATE NOT NULL,
    Status NVARCHAR(20) NOT NULL,
    FOREIGN KEY (ModelID) REFERENCES Model(ModelID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID),
    FOREIGN KEY (AddressID) REFERENCES Address(AddressID),
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID)
);
GO

-- Table for Orders
CREATE TABLE [Order] (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    Quantity INT NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);
GO

-- Table for Addresses
CREATE TABLE Address (
    AddressID INT PRIMARY KEY IDENTITY(1,1),
    Country NVARCHAR(50) NOT NULL,
    Country_Code CHAR(3) NOT NULL,
    City NVARCHAR(50) NOT NULL,
    Street NVARCHAR(100) NOT NULL,
    Flat_Number NVARCHAR(10),
    House_Number NVARCHAR(10) NOT NULL
);
GO

-- Table for Engines
CREATE TABLE Engine (
    EngineID INT PRIMARY KEY IDENTITY(1,1),
    CCs INT NOT NULL,
    Engine_Power INT NOT NULL,
    Engine_Torque INT NOT NULL,
    Cylinders INT NOT NULL,
    Valves INT NOT NULL
);
GO

-- Table for Exterior options
CREATE TABLE Extirior (
    ExtiriorID INT PRIMARY KEY IDENTITY(1,1),
    Extirior_Color NVARCHAR(50) NOT NULL
);
GO

-- Table for Interior options
CREATE TABLE Intirior (
    IntiriorID INT PRIMARY KEY IDENTITY(1,1),
    Intirior_Color NVARCHAR(50) NOT NULL,
    Intirior_Style NVARCHAR(50) NOT NULL
);
GO

-- Table for Packages
CREATE TABLE Packages (
    PackageID INT PRIMARY KEY IDENTITY(1,1),
    Package_Name NVARCHAR(100) NOT NULL
);
GO


