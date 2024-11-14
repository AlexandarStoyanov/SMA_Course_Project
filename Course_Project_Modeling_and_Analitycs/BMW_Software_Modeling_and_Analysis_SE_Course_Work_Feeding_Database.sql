﻿INSERT INTO Series (SeriesID, Series_Name)
VALUES 
(1, 'I-Series'),
(2, 'X-Series'),
(3, 'M-Series'),
(4, '1-st Series'),
(5, '2-nd Series'),
(6, '3-rt Series'),
(7, '4-th Series'),
(8, '5-th Series'),
(9, '6-th Series'),
(10, '7-th Series'),
(11, '8-th Series');


INSERT INTO Engine (CCs, Engine_Power, Engine_Torque, Cylinders, Valves)
VALUES 
(2000, 150, 250, 4, 16),
(2500, 200, 300, 4, 16),
(3000, 250, 350, 6, 24),
(3500, 300, 400, 6, 24),
(4000, 400, 500, 8, 32),
(5000, 500, 600, 8, 32),
(6000, 600, 700, 12, 48),
(1500, 120, 180, 4, 12),
(1800, 140, 220, 4, 16),
(2200, 180, 280, 4, 16);

INSERT INTO Extirior (Extirior_Color)
VALUES 
('Black Metalic'),
('Bourdo'),
('Grey Metalic'),
('Blue Metalic'),
('Black Mat'),
('Electric Green'),
('Grey Mat'),
('Blue Mat');


INSERT INTO Intirior (Intirior_Color, Intirior_Style)
VALUES 
('Black', 'Leather'),
('Beige', 'Cloth'),
('Gray', 'Leather'),
('Black', 'Leather'),
('Beige', 'Cloth'),
('Gray', 'Textile'),
('Bourdo', 'Leather');

INSERT INTO Packages (Package_Name)
VALUES 
('Standard'),
('Premium'),
('Luxury'),
('Sport'),
('Off-Road'),
('Electric'),
('Family'),
('Winter'),
('Summer'),
('Track');

INSERT INTO Address (Country, Country_Code, City, Street, Flat_Number, House_Number)
VALUES 
('USA', 'USA', 'New York', '5th Avenue', '12A', '100'),
('Germany', 'DEU', 'Berlin', 'Unter den Linden', '2B', '101'),
('France', 'FRA', 'Paris', 'Champs-Élysées', '8C', '102'),
('UK', 'GBR', 'London', 'Baker Street', '10D', '103'),
('Italy', 'ITA', 'Rome', 'Via del Corso', '3E', '104'),
('Canada', 'CAN', 'Toronto', 'Queen Street', '5F', '105'),
('Australia', 'AUS', 'Sydney', 'George Street', '7G', '106'),
('Japan', 'JPN', 'Tokyo', 'Shibuya', '11H', '107'),
('India', 'IND', 'Mumbai', 'Marine Drive', '9I', '108'),
('Mexico', 'MEX', 'Mexico City', 'Paseo de la Reforma', '13J', '109');

select * from Address

INSERT INTO [User] (First_Name, Last_Name, Email, Password, AddressID)
VALUES 
('John', 'Doe', 'john.doe@example.com', 'password123', 1),
('Jane', 'Smith', 'jane.smith@example.com', 'password456', 2),
('Alice', 'Johnson', 'alice.johnson@example.com', 'password789', 3),
('Bob', 'Brown', 'bob.brown@example.com', 'password101', 4),
('Charlie', 'Davis', 'charlie.davis@example.com', 'password202', 5),
('David', 'Martinez', 'david.martinez@example.com', 'password303', 6),
('Eve', 'Wilson', 'eve.wilson@example.com', 'password404', 7),
('Frank', 'Taylor', 'frank.taylor@example.com', 'password505', 8),
('Grace', 'Anderson', 'grace.anderson@example.com', 'password606', 9),
('Henry', 'Thomas', 'henry.thomas@example.com', 'password707', 10);


INSERT INTO [Order] (Quantity, Price)
VALUES 
(1, 25000.00),
(2, 50000.00),
(1, 35000.00),
(3, 75000.00),
(1, 30000.00),
(2, 60000.00),
(1, 28000.00),
(4, 100000.00),
(2, 45000.00),
(1, 32000.00);

INSERT INTO Model (Model_Name, Model_Year, EngineID, ExtiriorID, IntiriorID, PackageID, SeriesID)
VALUES 
('SUV', 2024, 1, 1, 1, 1, 1),
('Sedan', 2024, 2, 2, 2, 2, 2),
('Hatchback', 2024, 3, 3, 3, 3, 3),
('Convertible', 2024, 1, 2, 3, 2, 1);


INSERT INTO Model_Order (ModelID, UserID, AddressID, OrderID, Date, Status)
VALUES 
(19, 1, 1, 1, '2024-11-14', 'Pending'),
(20, 10, 2, 2, '2024-11-15', 'Completed'),
(21, 13, 3, 3, '2024-11-16', 'Shipped'),
(18, 18, 4, 4, '2024-11-17', 'Pending'),
(19, 21, 5, 5, '2024-11-18', 'Completed'),
(21, 23, 6, 6, '2024-11-19', 'Shipped'),
(20, 16, 7, 7, '2024-11-20', 'Pending'),
(18, 18, 8, 8, '2024-11-21', 'Completed'),
(20, 3, 9, 9, '2024-11-22', 'Shipped'),
(21, 4, 10, 10, '2024-11-23', 'Pending');
select * from Model_Order