/*
CONVENIO:
Nombre tablas: En minúscula (primera letra en mayúscula) y plural

Nombre de campos : camelCase: inicia en minúscula

Tablas de nombres compuestos: Tabla1_Tabla2

Nombre Primary Key: PK_NombreTabla

Nombre Foreign Kay: FK_Tabla1_Tabla2_campoTabla1

Nombre restricción check: CK_campo

Nombre de restricción unique: UQ_nombreTabla_nombreCampo
*/

/* 
Crear una BD con nombre Pleitos donde crearemos las siguientes tablas:

Abogados: ID(PK), nombre, apellidos

Políticos: ID(PK), nombre, apellidos

Causas: numero(PK), nombre juzgado(PK)

Implica (también se podría poner PolíticosAbogadosCausas): ID Políticos(FK Políticos), ID Abogados (FK Abogados), numero(FK Causas), nombre juzgado(FK Causas), soborno

Los campos no permiten nulos.

Al existir una relación entre las tablas, queremos que no permita el borrado o actualización de los registros relacionados.

*/

CREATE DATABASE Pleitos
GO
USE Pleitos
GO
CREATE TABLE Abogados(
	ID Int Constraint PK_Abogados Primary Key
	,Nombre VarChar(15) Not NULL
	,Apellidos VarChar(30) Not NULL
)
-- Politicos encausados
CREATE TABLE Politicos (
	ID SmallInt,
	Nombre VarChar(15) Not NULL
	,Apellidos VarChar(30) Not NULL
	,Constraint PK_Politicos Primary Key (ID)
)
-- Causas judiciales abiertas
CREATE TABLE Causas (
	Numero Int
	,NombreJuzgado varChar (40)
	,Constraint PK_Causas Primary Key (Numero, NombreJuzgado)
)
GO
-- Relacion entre las tablas anteriores
CREATE TABLE Implica (
	IDPolitico Int Constraint FK_Implica_Politico_IDPolitico Foreign Key REFERENCES Politicos (ID) ON UPDATE No Action ON DELETE No Action
	,IDAbogado Int Constraint FK_Implica_Abogado_IDAbogado Foreign Key REFERENCES Abogados (ID) ON UPDATE No Action ON DELETE No Action
	,NumeroCausa Int Not NULL
	,NombreJuzgado varchar(40) Not NULL
	,soborno money
	,Constraint PK_Implica Primary Key (IDPolitico, IDAbogado, NumeroCausa, NombreJuzgado)
	,Constraint FK_Implica_Causa_NombreJuzgado Foreign Key (NumeroCausa, NombreJuzgado) REFERENCES Causas (Numero, NombreJuzgado) ON UPDATE No Action ON DELETE No Action
)
