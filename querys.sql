-- listar todos los productos en la panaderia
SELECT productos.nombre_producto FROM productos

--Listar todos los ingredientes de la panadería.
SELECT ingredientes.nombre_ingrediente FROM ingredientes

-- Mostrar todas las ventas realizadas en un día específico.
SELECT ventas.id_venta, ventas.fecha_venta, ventas.id_cliente FROM ventas

-- Listar todos los clientes registrados en la base de datos.
SELECT * FROM clientes

--Mostrar todos los empleados de la panadería.
SELECT empleados.id_empleado, empleados.nombre_empleado FROM empleados

--Mostrar todas las órdenes de compra a proveedores.
SELECT * FROM ordenes_compra

--Listar todas las ventas superiores a $100.

SELECT * FROM ventas WHERE ventas.total >100

--Mostrar todos los productos que sean de tipo 'pan'.
SELECT * FROM productos WHERE productos.tipo_producto = 'pan'

--Listar los proveedores con los que se trabaja regularmente.
SELECT * FROM proveedores

--Mostrar las órdenes de compra que están pendientes.
SELECT * FROM ordenes_compra WHERE ordenes_compra.estado = 'pendiente'

--Consultas con JOIN

--Obtener todas las ventas con el detalle de los productos vendidos.
SELECT 
    ventas.id_venta,
    ventas.fecha_venta,
    ventas.total,
    productos.nombre_producto,
    ventas_detalle.cantidad,
    ventas_detalle.precio_unitario,
    (ventas_detalle.cantidad * ventas_detalle.precio_unitario) AS total_producto
FROM 
    ventas
JOIN 
    ventas_detalle ON ventas.id_venta = ventas_detalle.id_venta
JOIN 
    productos ON ventas_detalle.id_producto = productos.id_producto;


