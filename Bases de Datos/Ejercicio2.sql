CREATE DATABASE Ejercicio2;
Go
USE Ejercicio2;
Go

CREATE TABLE Empleados(
	DNI CHAR(9) CONSTRAINT PK_Empleados PRIMARY KEY,
	Nombre CHAR(15),
	Apellidos CHAR(35)
)

CREATE TABLE Departamentos(
	ID INT CONSTRAINT PK_Departamentos PRIMARY KEY
)

CREATE TABLE EmpleadoDepartamentos(
	ID_Departamentos INT CONSTRAINT FK_EmpleadoDepartamentos_Departamentos_IDDepartamentos FOREIGN KEY REFERENCES Departamentos (ID) ON Update No Action ON Delete No Action,
	DNI_Empleados CHAR(9) CONSTRAINT FK_EmpleadoDepartamentos_Empleados_DNIEpleados FOREIGN KEY REFERENCES Empleados (DNI) ON Update No Action ON Delete No Action,
	CONSTRAINT PK_EmpleadoDepartamentos PRIMARY KEY (ID_Departamentos, DNI_Empleados)
)