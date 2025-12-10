CREATE DATABASE Ejercicio6;
GO
USE Ejercicio6;
GO

CREATE TABLE Persona(
	DNI CHAR(9) CONSTRAINT PK_Persona PRIMARY KEY,
)

CREATE TABLE Coche(
	Matricula CHAR(7) CONSTRAINT PK_Coche PRIMARY KEY,
	Color CHAR(15) NOT NULL,
)

CREATE TABLE CochePersona(
	DNI_Persona CHAR(9) CONSTRAINT FK_CochePersona_Persona_DNIPersona FOREIGN KEY REFERENCES Persona(DNI) ON UPDATE No Action ON DELETE No Action,
	Matricula_Coche CHAR(7) CONSTRAINT FK_CochePersona_Coche_MatriculaCoche FOREIGN KEY REFERENCES Coche (Matricula) ON UPDATE No Action ON DELETE No Action,
	Fecha date,
	CONSTRAINT PK_CochePersona PRIMARY KEY (DNI_Persona, Matricula_Coche, Fecha)
)