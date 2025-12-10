	CREATE DATABASE Ejercicio4;
GO
USE Ejercicio4;
GO

CREATE TABLE Clientes(
	DNI CHAR(9) CONSTRAINT PK_Clientes PRIMARY KEY,
)

CREATE TABLE Trajes(
	Modelo CHAR(20) CONSTRAINT PK_Trajes PRIMARY KEY,
)

CREATE TABLE TrajesClientes(
	DNI_Clientes CHAR(9) CONSTRAINT FK_TrajesClientes_Clientes_DNIClientes FOREIGN KEY REFERENCES Clientes (DNI) ON Update No Action On DELETE No Action,
	Modelo_Trajes CHAR(20) CONSTRAINT FK_TrajesClientes_Trajes_ModeloTrajes FOREIGN KEY REFERENCES Trajes (Modelo) ON Update No Action On DELETE No Action,
	Unidades INT,
	Fecha date NOT NULL,
)