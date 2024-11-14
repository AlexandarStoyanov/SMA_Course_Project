INSERT INTO Series (SeriesID, Series_Name)
VALUES 
(1, 'SUV'),
(2, 'Sedan'),
(3, 'Hatchback'),
(4, 'Convertible'),
(5, 'Coupe'),
(6, 'Truck'),
(7, 'Luxury'),
(8, 'Electric'),
(9, 'Sports'),
(10, 'Family');

select * from Series

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
('Red'),
('Blue'),
('Black'),
('White'),
('Silver'),
('Green'),
('Yellow'),
('Gray'),
('Orange'),
('Purple');

INSERT INTO Intirior (Intirior_Color, Intirior_Style)
VALUES 
('Black', 'Leather'),
('Beige', 'Cloth'),
('Gray', 'Leather'),
('Brown', 'Leather'),
('White', 'Cloth'),
('Black', 'Suede'),
('Red', 'Alcantara'),
('Blue', 'Leather'),
('Tan', 'Cloth'),
('Gray', 'Suede');

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
('Model X', 2024, 1, 1, 1, 1, 1),
('Model Y', 2024, 2, 2, 2, 2, 2),
('Model Z', 2024, 3, 3, 3, 3, 3),
('Model A', 2024, 4, 4, 4, 4, 4),
('Model B', 2024, 5, 5, 5, 5, 5),
('Model C', 2024, 6, 6, 6, 6, 6),
('Model D', 2024, 7, 7, 7, 7, 7),
('Model E', 2024, 8, 8, 8, 8, 8),
('Model F', 2024, 9, 9, 9, 9, 9),
('Model G', 2024, 10, 10, 10, 10, 10);


INSERT INTO Model_Order (ModelID, UserID, AddressID, OrderID, Date, Status)
VALUES 
(1, 2, 1, 1, '2024-11-14', 'Pending'),
(2, 3, 2, 2, '2024-11-15', 'Completed'),
(3, 4, 3, 3, '2024-11-16', 'Shipped'),
(4, 5, 4, 4, '2024-11-17', 'Pending'),
(5, 6, 5, 5, '2024-11-18', 'Completed'),
(6, 7, 6, 6, '2024-11-19', 'Shipped'),
(7, 8, 7, 7, '2024-11-20', 'Pending'),
(8, 9, 8, 8, '2024-11-21', 'Completed'),
(9, 10, 9, 9, '2024-11-22', 'Shipped'),
(10, 11, 10, 10, '2024-11-23', 'Pending');

SELECT * FROM [Order];

SELECT * FROM Model;

SELECT * FROM Model_Order;

SELECT * FROM [User]