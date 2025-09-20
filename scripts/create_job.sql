
--creo una tablaba para enteder 
USE Northwind2025;
GO
IF NOT EXISTS (
	SELECT 1
	FROM INFORMATION_SCHEMA.TABLES
	WHERE TABLE_NAME = 'InactiveCustomersLog'
	)
	
--hay que hacer la clase InactiveCustomersLog
BEGIN	
	
END

-- insertar los cientes inactivos 
INSERT INTO InactiveCustomersLog (CustomerID, CompanyName, ContactName, LastDate)