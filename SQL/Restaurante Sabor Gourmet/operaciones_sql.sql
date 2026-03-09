SELECT ID_pedido, Total * 1.16 AS TotalConIVA FROM Pedidos;
SELECT AVG(Total) AS Ticket_Promedio FROM pedidos;
SELECT CONCAT(Nombre, ' (', Teléfono, ')') AS Contacto 
FROM Clientes;
SELECT Puesto, YEAR(Fecha_contratación) AS AñoContratación, MONTH(Fecha_contratación) AS mes_contratacion FROM Empleados;
SELECT *, YEAR(Fecha_contratación) AS AñoContratación FROM Empleados;
SELECT * FROM Pedidos WHERE Total > 100 AND Fecha_pedido BETWEEN '2026-01-01' AND '2026-12-31';