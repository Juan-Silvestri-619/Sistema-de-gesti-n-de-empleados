CREATE DATABASE GestionarEmpleados;

USE GestionarEmpleados;

CREATE TABLE PuestoLaboral(
	IdPuesto INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	Puesto VARCHAR(150) NOT NULL, 
	SalarioBase DECIMAL(10,2) NOT NULL
);


CREATE TABLE Empleados(
	IdEmpleado INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
	Nombre VARCHAR(50) NOT NULL, 
	Apellido VARCHAR(50) NOT NULL,
	FechaIngreso DATE NOT NULL,
	Estado BIT NOT NULL DEFAULT 1, 
	IdPuesto INT NOT NULL, 

	FOREIGN KEY (IdPuesto) REFERENCES PuestoLaboral (IdPuesto)
);