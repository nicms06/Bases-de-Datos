CREATE DATABASE Ejercicio5;
GO
USE Ejercicio5;
GO

CREATE TABLE Persona(
	DNI CHAR(9) CONSTRAINT PK_Persona PRIMARY KEY,
)

CREATE TABLE Coche(
	DNI CHAR(9) CONSTRAINT FK_Coche_Persona_DNIPersona FOREIGN KEY REFERENCES Persona (DNI) ON DELETE No Action ON Update No Action NOT NULL,
	Matricula CHAR(7) CONSTRAINT PK_Coche PRIMARY KEY,
	Color CHAR(15)
)
CREATE TABLE CochesPersonas(
	Matricula CHAR(7) CONSTRAINT PK_CochesPersonas PRIMARY KEY,
	DNI CHAR(9) CONSTRAINT FK_CochesPersonas_Persona_DNIPersona FOREIGN KEY REFERENCES Persona (DNI) ON DELETE No Action ON Update No Action NOT NULL,
	Matricula CHAR(7) CONSTRAINT FK_CochesPersonas_Coche_MatriculaCoche FOREIGN KEY REFERENCES Coche (Matricula) ON DELETE No Action ON Update No Action NOT NULL,
)