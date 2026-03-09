INSERT INTO Clientes (Nombre, Email, Teléfono) 
VALUES 
    ('María García', 'm.garcia@email.com', '5559876543'),
    ('Carlos López', 'clopez@email.com', '5554567890'),
    ('Ana Martínez', 'ana.mtz@email.com', '5553210987'),
    ('Ricardo Sánchez', 'rsanchez@email.com', '5556543210');
SELECT 	* FROM Clientes;
INSERT INTO empleados (ID_empleado, Nombre, Puesto, Fecha_contratación) 
VALUES 
    (1, 'Diego Cabrera', 'Data Analyst', '2026-03-01'),
    (2, 'Paola Reyes', 'Pastelera', '2026-02-15'),
    (3, 'Luis García', 'Soporte Técnico', '2026-01-10'),
    (4, 'Ana Martínez', 'Gerente', '2026-03-05'),
    (5, 'Roberto Gómez', 'Mesero', '2026-03-07');
SELECT 	* FROM empleados;
INSERT INTO menu (ID_plato, Nombre_plato, Tipo, Precio) 
VALUES 
    (1,'Hamburguesa Gourmet', 'Plato Fuerte', 155.00),
    (2,'Tacos de Arrachera', 'Plato Fuerte', 120.50),
    (3,'Ensalada César', 'Entrada', 95.00),
    (4,'Pastel de Chocolate', 'Postre', 85.00),
    (5,'Refresco de Cola', 'Bebida', 35.00);
SELECT 	* FROM menu;
INSERT INTO pedidos (ID_pedido,ID_cliente, ID_empleado, Total) 
VALUES (1,1, 1, 250.50);
SELECT 	* FROM pedidos;