CREATE DATABASE Ejercicio3;
GO
USE Ejercicio3;
Go

CREATE TABLE Futbolistas(
	DNI CHAR(9) CONSTRAINT PK_Futbolistas PRIMARY KEY,
	Nombre CHAR(20)
)

CREATE TABLE Partidos(
	ID INT CONSTRAINT PK_Partidos PRIMARY KEY,
	Fecha datetime
)

CREATE TABLE FutbolistasPartidos(
	DNI_Futbolistas CHAR(9) CONSTRAINT FK_FutbolistasPartidos_Futbolistas_DNIFutbolistas FOREIGN KEY REFERENCES Futbolistas (DNI) ON UPDATE No Action ON DELETE No Action, 
	ID_Partidos INT CONSTRAINT FK_FutbolistasPartidos_Partidos_IDPartidos FOREIGN KEY REFERENCES Partidos (ID) ON UPDATE No Action ON DELETE No Action,
	IDPartidos INT CONSTRAINT PK_FutbolistasPartidos PRIMARY KEY,
)