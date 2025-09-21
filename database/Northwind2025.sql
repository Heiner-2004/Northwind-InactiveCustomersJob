-- CREAR BASE DE DATOS
CREATE DATABASE Northwind2025;
GO

USE Northwind2025;
GO

-- CREAR TABLAS BÁSICAS
CREATE TABLE Customers (
    CustomerID CHAR(5) PRIMARY KEY,
    CompanyName NVARCHAR(40),
    ContactName NVARCHAR(30)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(20),
    LastName NVARCHAR(20)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID CHAR(5),
    EmployeeID INT,
    OrderDate DATE,
    ShippedDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- INSERTAR CLIENTES
INSERT INTO Customers (CustomerID, CompanyName, ContactName) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders'),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo'),
('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno');

-- INSERTAR EMPLEADOS
INSERT INTO Employees (EmployeeID, FirstName, LastName) VALUES
(1, 'Nancy', 'Davolio'),
(2, 'Andrew', 'Fuller'),
(3, 'Janet', 'Leverling');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (1, 'ANATR', 3, '2025-02-22', '2025-03-02');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (2, 'ANATR', 3, '2025-02-24', '2025-03-04');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (3, 'ANATR', 2, '2025-01-15', '2025-01-17');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (4, 'ALFKI', 1, '2025-03-29', '2025-04-04');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (5, 'ANTON', 1, '2024-01-07', '2024-01-12');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (6, 'ANATR', 2, '2024-05-26', '2024-05-31');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (7, 'ALFKI', 2, '2024-02-16', '2024-02-23');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (8, 'ALFKI', 3, '2024-03-05', '2024-03-12');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (9, 'ALFKI', 3, '2024-09-25', '2024-09-27');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (10, 'ALFKI', 3, '2024-08-30', '2024-09-07');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (11, 'ANTON', 3, '2024-02-12', '2024-02-21');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (12, 'ANATR', 1, '2025-03-28', '2025-04-02');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (13, 'ANATR', 2, '2024-06-28', '2024-07-07');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (14, 'ANTON', 3, '2024-10-09', '2024-10-17');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (15, 'ANATR', 1, '2024-06-07', '2024-06-11');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (16, 'ALFKI', 1, '2025-01-27', '2025-02-05');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (17, 'ANTON', 1, '2024-06-28', '2024-07-02');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (18, 'ALFKI', 3, '2024-12-02', '2024-12-11');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (19, 'ALFKI', 2, '2024-06-29', '2024-07-01');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (20, 'ALFKI', 3, '2025-03-06', '2025-03-11');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (21, 'ALFKI', 2, '2024-11-07', '2024-11-14');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (22, 'ALFKI', 2, '2024-06-25', '2024-06-28');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (23, 'ANATR', 3, '2024-05-03', '2024-05-12');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (24, 'ALFKI', 2, '2024-02-27', '2024-03-03');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (25, 'ANTON', 2, '2024-02-27', '2024-03-08');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (26, 'ANATR', 1, '2024-08-16', '2024-08-21');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (27, 'ANATR', 2, '2024-10-25', '2024-10-31');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (28, 'ANTON', 1, '2024-04-10', '2024-04-13');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (29, 'ANTON', 1, '2025-02-13', '2025-02-17');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (30, 'ANATR', 3, '2024-12-03', '2024-12-08');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (31, 'ANTON', 1, '2024-10-28', '2024-11-07');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (32, 'ANTON', 1, '2024-07-31', '2024-08-04');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (33, 'ANTON', 3, '2025-02-17', '2025-02-18');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (34, 'ANATR', 1, '2025-02-19', '2025-02-23');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (35, 'ANTON', 3, '2024-07-19', '2024-07-28');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (36, 'ANTON', 2, '2024-11-29', '2024-12-06');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (37, 'ALFKI', 2, '2024-06-02', '2024-06-03');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (38, 'ANTON', 1, '2024-01-30', '2024-02-09');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (39, 'ANTON', 2, '2025-01-30', '2025-02-05');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (40, 'ALFKI', 3, '2024-06-16', '2024-06-26');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (41, 'ALFKI', 3, '2024-10-02', '2024-10-07');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (42, 'ANTON', 3, '2024-09-08', '2024-09-10');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (43, 'ALFKI', 1, '2024-12-18', '2024-12-27');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (44, 'ANATR', 2, '2024-07-01', '2024-07-04');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (45, 'ANATR', 2, '2024-07-10', '2024-07-18');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (46, 'ANATR', 3, '2024-12-09', '2024-12-15');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (47, 'ALFKI', 2, '2024-08-07', '2024-08-10');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (48, 'ALFKI', 1, '2024-07-14', '2024-07-21');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (49, 'ANTON', 1, '2025-01-18', '2025-01-26');

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, ShippedDate)
VALUES (50, 'ANATR', 1, '2025-01-14', '2025-01-23');
