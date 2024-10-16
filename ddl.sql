-- Active: 1728681034905@@localhost@3306@PasteleriaMYSQL

CREATE DATABASE PasteleriaMYSQL;

use PasteleriaMYSQL

CREATE TABLE `proveedores`
(
    `id_proveedor` INT NOT NULL,
    `nombre_empresa` VARCHAR(160) NOT NULL,
    `correo_electronico` VARCHAR(60) NOT NULL,
    CONSTRAINT `PK_proveedores` PRIMARY KEY (`id_proveedor`)
);

CREATE TABLE `ingredientes`
(
    `id_ingrediente` INT NOT NULL,
    `nombre` VARCHAR(160) NOT NULL,
    `precio` INT NOT NULL,
    CONSTRAINT `PK_ingredientes` PRIMARY KEY (`id_ingrediente`)
);

CREATE TABLE `ordenes_proveedores_productos`
(
    `id_orden` INT NOT NULL,
    `id_proveedor` INT NOT NULL,
    `id_ingrediente` INT NOT NULL,
    CONSTRAINT `PK_ordenes_proveedores_productos` PRIMARY KEY (`id_orden`),
    CONSTRAINT `FK_proveedores_ingredientes` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores`(`id_proveedor`),
    CONSTRAINT `FK_ingredientes_proveedores` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes`(`id_ingrediente`)
);

CREATE TABLE `productos`
(
    `id_producto` INT NOT NULL,
    `precio` INT NOT NULL,
    `nombre` VARCHAR(160) NOT NULL,
    `id_ingrediente` INT NOT NULL,
    CONSTRAINT `PK_productos` PRIMARY KEY (`id_producto`),
    CONSTRAINT `FK_productos_ingredientes` FOREIGN KEY (`id_ingrediente`) REFERENCES `ingredientes`(`id_ingrediente`)
);


CREATE TABLE `productos_ventas`
(
    `id_venta` INT NOT NULL,
    `id_producto` INT NOT NULL,
    CONSTRAINT `FK_ventas_productos` FOREIGN KEY (`id_venta`) REFERENCES `ventas`(`id_venta`),
    CONSTRAINT `FK_productos_ventas` FOREIGN KEY (`id_producto`) REFERENCES `productos`(`id_producto`)
);


