CREATE TABLE Clientes (
  ID_cliente INT PRIMARY KEY,
  Nombre VARCHAR(50),
  Email VARCHAR(50),
  Teléfono VARCHAR(15)
);
CREATE TABLE empleados (
ID_empleado INT PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Puesto VARCHAR(50) NOT NULL,
Fecha_contratación DATE NOT NULL
);
CREATE TABLE menu (
ID_plato INT PRIMARY KEY,
Nombre_plato VARCHAR(50) NOT NULL,
Tipo VARCHAR(50) NOT NULL,
Precio INT NOT NULL
);
CREATE TABLE pedidos (
    ID_pedido INT PRIMARY KEY,
    ID_cliente INT NOT NULL,
    ID_empleado INT NOT NULL,
    Fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    Total DECIMAL(10, 2) NOT NULL, 
    CONSTRAINT fk_pedido_cliente FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente),
    CONSTRAINT fk_pedido_empleado FOREIGN KEY (ID_empleado) REFERENCES empleados(ID_empleado)
);
CREATE TABLE detalle_pedidos (
    ID_detalle INT PRIMARY KEY,
    ID_pedido INT NOT NULL,
    ID_plato INT NOT NULL,
    Cantidad INT NOT NULL,
    Precio_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_detalle_pedido FOREIGN KEY (ID_pedido) REFERENCES pedidos(ID_pedido) ON DELETE CASCADE,
    CONSTRAINT fk_detalle_plato FOREIGN KEY (ID_plato) REFERENCES menu(ID_plato)
);