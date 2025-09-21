USE Northwind2025;
GO
--creo una tabla 

	
--hay que hacer la clase InactiveCustomersLog
BEGIN	
	
END

-- insertar los cientes inactivos 
INSERT INTO InactiveCustomersLog (CustomerID, CompanyName, ContactName, LastDate)
SELECT
Customers.CustomerID,
Customers.CompanyName,
Customers.ContactName,
MAX(Orders.OrderDate) AS LastDate -- este lastdate cambia de acuerdo a como se llame la fecha del ultimo pedido en la clase de los inactivos 
FROM Customers
INNER JOIN  Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID, Customers.CompanyName, Customers.ContactName

/*=============================*/

-- Crear el job
EXEC msdb.dbo.sp_add_job
    @job_name = 'Job_LogInactiveCustomers',
    @enabled = 1,
    @description = 'Job que detecta clientes inactivos y los inserta en InactiveCustomersLog';
GO

-- Crear un paso que ejecute el procedimiento
EXEC msdb.dbo.sp_add_jobstep
    @job_name = 'Job_LogInactiveCustomers',
    @step_name = 'Detectar clientes inactivos',
    @subsystem = 'TSQL',
    @database_name = 'Northwind2025',
    @command = 'EXEC sp_LogInactiveCustomers;',
    @on_success_action = 1;
GO

-- Crear un schedule (ejemplo: todos los d�as a las 02:00 AM)
EXEC msdb.dbo.sp_add_schedule
    @schedule_name = 'Daily_LogInactiveCustomers',
    @freq_type = 4, -- Diario
    @freq_interval = 1,
    @active_start_time = 020000; -- 02:00 AM
GO

-- Asociar el schedule al job
EXEC msdb.dbo.sp_attach_schedule
    @job_name = 'Job_LogInactiveCustomers',
    @schedule_name = 'Daily_LogInactiveCustomers';
GO

-- Asociar el job al servidor actual
EXEC msdb.dbo.sp_add_jobserver
    @job_name = 'Job_LogInactiveCustomers';
GO