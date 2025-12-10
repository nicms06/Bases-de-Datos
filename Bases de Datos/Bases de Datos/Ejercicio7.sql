CREATE DATABASE Ejercicio7;
GO
USE Ejercicio7;
GO

CREATE TABLE Coche(
	Matricula CHAR(7) CONSTRAINT PK_Coche PRIMARY KEY,
	Direccion CHAR(30) UNIQUE,
)

CREATE TABLE Cochera(
	Direccion CHAR(30) CONSTRAINT PK_Cochera PRIMARY KEY,
)

CREATE TABLE CocheCochera(
	Matricula Char(7) CONSTRAINT PK_CocheCochera PRIMARY KEY,
	Matricula_Coche CHAR(7) CONSTRAINT FK_CocheCochera_Coche_Matricula FOREIGN KEY REFERENCES Coche (Matricula) ON UPDATE No Action ON DELETE No Action,
	Direccion_Cochera CHAR(30) CONSTRAINT FK_CocheCochera_Cochera_Direccion FOREIGN KEY REFERENCES Cochera (Direccion) ON UPDATE No Action ON DELETE No Action,
)