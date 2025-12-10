CREATE DATABASE Tienda;
GO
Use Tienda;
GO

CREATE TABLE Productos(
	ID INT CONSTRAINT PK_Productos PRIMARY KEY
)

CREATE TABLE Pedidos(
	ID INT CONSTRAINT PK_Pedidos PRIMARY KEY,
	DNICliente CHAR(9) NOT NULL
)

CREATE TABLE Clientes(
	DNI CHAR(9) CONSTRAINT PK_Clientes PRIMARY KEY,
	Nombre CHAR(30) NOT NULL,
	Domicilio CHAR(30) NOT NULL
)

CREATE TABLE ProductosPedidos( 
	ID_Productos INT CONSTRAINT FK_Productos_IDProductos FOREIGN KEY REFERENCES Productos (ID) ON UPDATE No Action ON DELETE No Action,
	ID_Pedidos INT CONSTRAINT FK_Pedidos_IDPedidos FOREIGN KEY REFERENCES Pedidos (ID) ON UPDATE No Action ON DELETE No Action,
	Cantidad INT NOT NULL,
	CONSTRAINT PK_ProductoPedido PRIMARY KEY (ID_Productos, ID_Pedidos)
)

CREATE TABLE PedidosClientes(
	ID INT CONSTRAINT PK_PedidosClientes PRIMARY KEY,
	ID_Pedidos INT CONSTRAINT FK_PedidosClientes_Pedidos_IDPedidos FOREIGN KEY REFERENCES Pedidos (ID) ON UPDATE No Action ON DELETE No Action,
	DNI_Clientes CHAR(9) CONSTRAINT FK_PedidosClientes_Clientes_DNIClientes FOREIGN KEY REFERENCES Clientes (DNI) ON UPDATE No Action ON DELETE No Action
)