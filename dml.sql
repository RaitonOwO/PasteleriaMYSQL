INSERT INTO productos (nombre_producto, tipo_producto, precio, cantidad_disponible) VALUES
('Pan de Maíz', 'pan', 3.00, 60),
('Cheesecake', 'pastel', 30.00, 15),
('Donut de Chocolate', 'galleta', 1.80, 150),
('Pan Brioche', 'pan', 4.00, 25),
('Pastel de Zanahoria', 'pastel', 28.00, 18),
('Macaron', 'galleta', 2.00, 100);

INSERT INTO ingredientes (nombre_ingrediente, cantidad_disponible) VALUES
('Huevos', 300),
('Vainilla', 80),
('Cacao', 90),
('Crema de Leche', 70),
('Sal', 150),
('Canela', 60);

INSERT INTO clientes (nombre_cliente, telefono_cliente, email_cliente, direccion_cliente) VALUES
('Laura Torres', '555-1122', 'laura.torres@mail.com', 'Calle 4'),
('Mario Ruiz', '555-3344', 'mario.ruiz@mail.com', 'Calle 5'),
('Valeria Castro', '555-5566', 'valeria.castro@mail.com', 'Calle 6');

INSERT INTO empleados (nombre_empleado, salario, fecha_ingreso) VALUES
('Lucía Ramírez', 1300.00, '2020-08-30'),
('José Herrera', 1150.00, '2018-02-15'),
('Gabriela Ortiz', 1400.00, '2022-06-10');

INSERT INTO ventas (id_cliente, id_empleado, fecha_venta, total) VALUES
(4, 2, '2024-10-04', 180.00),
(5, 1, '2024-10-05', 90.00),
(6, 3, '2024-10-06', 250.00);

INSERT INTO ventas_detalle (id_venta, id_producto, cantidad, precio_unitario) VALUES
(4, 5, 2, 28.00),
(4, 6, 3, 2.00),
(5, 3, 5, 1.80),
(6, 1, 10, 3.00);

INSERT INTO proveedores (nombre_proveedor, contacto_proveedor) VALUES
('Molinos del Sur', 'molinos@proveedores.com'),
('Granja de Oro', 'granja@proveedores.com'),
('Fabrica de Canela', 'canela@proveedores.com');

INSERT INTO ordenes_compra (id_proveedor, fecha_orden, estado, total) VALUES
(4, '2024-09-23', 'entregado', 400.00),
(5, '2024-09-24', 'pendiente', 250.00),
(6, '2024-09-25', 'entregado', 180.00);

INSERT INTO ordenes_compra_detalle (id_orden_compra, id_ingrediente, cantidad, precio_unitario) VALUES
(4, 5, 120, 2.50),
(4, 6, 60, 3.00),
(5, 1, 100, 1.80),
(6, 2, 50, 1.90);

