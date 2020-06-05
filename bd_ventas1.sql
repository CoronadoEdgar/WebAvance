create database bd_ventas1;
use bd_ventas1;
CREATE TABLE `cliente` (
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
   `Telefono` varchar(244) DEFAULT NULL,
	 `Correo` varchar(244) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `cliente` (`IdCliente`, `Nombres`, `Telefono`,`Correo`, `Estado`) VALUES
(17, 'Juan Guerrero Solis', '123456s','jgs@gmia', '1'),
(18,  'Maria Rosas Villanueva','98798787987','mrv@gmail','1'),
(19,  'Andres de Santa Cruz','45689779','Asc@huiuh', '1');

-- --------------------------------------------------------
CREATE TABLE `detalle_ventas` (
  `IdDetalleVentas` int(11) UNSIGNED NOT NULL,
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `IdServicio` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioVenta` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `detalle_compras` (
  `IdDetalleCompra` int(11) UNSIGNED NOT NULL,
  `IdCompra` int(11) UNSIGNED NOT NULL,
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `Cantidad` int(11) UNSIGNED DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `cita` (
  `IdCita` int(11) UNSIGNED NOT NULL,
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `FechaCita` date DEFAULT NULL,
  `Hora` time DEFAULT NULL,
  
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


create table `proveedor`(
 `IdProveedor` int(10) UNSIGNED NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Correo` varchar(255) DEFAULT NULL,
  `Telefono` varchar(9) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `proveedor` (`IdProveedor`, `Nombres`,`Direccion`,`Correo`,`Telefono`,`Estado`) VALUES
(1,  'Pedro Hernandez',' magnolias 31','Pedro@gmai.com', '988252459','1'),
(2,  'Roman Riquelme', 'coacaolco','Roman@gmai.com','988252459', '1' ),
(3, 'Palermo Suarez', 'marti','Palermo@gmai.com','453536458', '1' );
-- --------------------------------------------------------
CREATE TABLE `empleado` (
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `Dni` varchar(8) NOT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `CorreoEmpleado` varchar(244) DEFAULT NULL,
  `TelefonoEmpleado` varchar(20) DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL,
  `User` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `empleado` (`IdEmpleado`, `Dni`, `Nombres`,`CorreoEmpleado`, `TelefonoEmpleado`, `Estado`, `User`) VALUES
(1, '123', 'Edgar Coronado','Pedro@gmai.com', '988252459','1', 'emp01'),
(2, '123', 'Roman Riquelme', 'Roman@gmai.com','988252459','1', 'Jo46' ),
(3, '123', 'Palermo Suarez', 'Palermo@gmai.com','453536458', '1','Em22P');
-- --------------------------------------------------------
CREATE TABLE `producto` (
  `IdProducto` int(11) UNSIGNED NOT NULL,
  `IdProveedor` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int(11) UNSIGNED DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO `producto` (`IdProducto`, `IdProveedor`, `Nombres`, `Precio`, `Stock`, `Estado`) VALUES
(1,1, 'Teclado Logitech 345 Editado', 150, 99, '1'),
(2,1, 'Mouse Logitech 567', 20, 98, '1'),
(3,2, 'Laptop Lenovo Ideapad 520', 800, 100, '1'),
(4,2, 'HeadPhones Sony M333', 500, 98, '1'),
(7,3, 'Producto Nuevo w', 22, 35, '1');
-- --------------------------------------------------------
CREATE TABLE `servicio` (
  `IdServicio` int(11) UNSIGNED NOT NULL,
  `Nombres` varchar(244) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `ventas` (
  `IdVentas` int(11) UNSIGNED NOT NULL,
  `IdCliente` int(11) UNSIGNED NOT NULL,
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `NumeroSerie` varchar(244) DEFAULT NULL,
  `FechaVentas` date DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `compras` (
  `IdCompra` int(11) UNSIGNED NOT NULL,
  `IdEmpleado` int(10) UNSIGNED NOT NULL,
  `NumeroSerie` varchar(244) DEFAULT NULL,
  `FechaCompra` date DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);
  
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`IdDetalleVentas`,`IdVentas`,`IdProducto`,`IdServicio`),
  ADD KEY `Ventas_has_Producto_FKIndex1` (`IdVentas`),
  ADD KEY `Ventas_has_Producto_FKIndex2` (`IdProducto`),
   ADD KEY `Ventas_has_Producto_FKIndex3` (`IdServicio`);
  
ALTER TABLE `detalle_compras`
  ADD PRIMARY KEY (`IdDetalleCompra`,`IdCompra`,`IdProducto`),
  ADD KEY `Compras_has_Producto_FKIndex1` (`IdCompra`),
  ADD KEY `Compras_has_Producto_FKIndex2` (`IdProducto`);

ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IdEmpleado`);

ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`IdProveedor`);
  
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`IdServicio`);

ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `Producto_FKIndex1` (`IdProveedor`);
  
ALTER TABLE `cita`
  ADD PRIMARY KEY (`IdCita`),
  ADD KEY `Cita_FKIndex1` (`IdCliente`);

ALTER TABLE `ventas`
  ADD PRIMARY KEY (`IdVentas`),
  ADD KEY `Ventas_FKIndex1` (`IdEmpleado`),
  ADD KEY `Ventas_FKIndex2` (`IdCliente`);

ALTER TABLE `compras`
  ADD PRIMARY KEY (`IdCompra`),
  ADD KEY `Compras_FKIndex1` (`IdEmpleado`);


ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

ALTER TABLE `detalle_ventas`
  MODIFY `IdDetalleVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
  
ALTER TABLE `detalle_compras`
  MODIFY `IdDetalleCompra` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

ALTER TABLE `empleado`
  MODIFY `IdEmpleado` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `servicio`
  MODIFY `IdServicio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `producto`
  MODIFY `IdProducto` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `ventas`
  MODIFY `IdVentas` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
  
ALTER TABLE `proveedor`
  MODIFY `IdProveedor` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
  
ALTER TABLE `cita`
  MODIFY `IdCita` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;


ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`IdVentas`) REFERENCES `ventas` (`IdVentas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`IdProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_ventas_ibfk_3` FOREIGN KEY (`IdServicio`) REFERENCES `servicio` (`IdServicio`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `detalle_compras`
  ADD CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`IdCompra`) REFERENCES `compras` (`IdCompra`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`IdProducto`) REFERENCES `producto` (`IdProducto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE `compras`
  ADD CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`IdEmpleado`) REFERENCES `empleado` (`IdEmpleado`) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`IdProveedor`) REFERENCES `proveedor` (`IdProveedor`) ON DELETE NO ACTION ON UPDATE NO ACTION;
  
ALTER TABLE `cita`
  ADD CONSTRAINT `cita_ibfk_1` FOREIGN KEY (`IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;