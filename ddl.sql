-- Active: 1727728842394@@127.0.0.1@3306@PasteleriaMYSQL
CREATE TABLE productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre_producto VARCHAR(100),
    tipo_producto VARCHAR(50),
    precio DECIMAL(10, 2),
    cantidad_disponible INT
);


CREATE TABLE ingredientes (
    id_ingrediente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_ingrediente VARCHAR(100),
    cantidad_disponible INT
);



CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre_cliente VARCHAR(100),
    telefono_cliente VARCHAR(15),
    email_cliente VARCHAR(100),
    direccion_cliente VARCHAR(150)
);


CREATE TABLE empleados (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    nombre_empleado VARCHAR(100),
    salario DECIMAL(10, 2),
    fecha_ingreso DATE
);



CREATE TABLE ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_empleado INT,
    fecha_venta DATE,
    total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_empleado) REFERENCES empleados(id_empleado)
);



CREATE TABLE ventas_detalle (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT,
    id_producto INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_venta) REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);



CREATE TABLE proveedores (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre_proveedor VARCHAR(100),
    contacto_proveedor VARCHAR(100)
);



CREATE TABLE ordenes_compra (
    id_orden_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT,
    fecha_orden DATE,
    estado VARCHAR(50),
    total DECIMAL(10, 2),
    FOREIGN KEY (id_proveedor) REFERENCES proveedores(id_proveedor)
);



CREATE TABLE ordenes_compra_detalle (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_orden_compra INT,
    id_ingrediente INT,
    cantidad INT,
    precio_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_orden_compra) REFERENCES ordenes_compra(id_orden_compra),
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id_ingrediente)
);


