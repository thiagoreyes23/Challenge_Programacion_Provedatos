CREATE DATABASE IF NOT EXISTS empleados_db
  CHARACTER SET utf8
  COLLATE utf8_general_ci;

USE empleados_db;

CREATE TABLE IF NOT EXISTS `provincia` (
  `id_provincia` int NOT NULL AUTO_INCREMENT,
  `nombre_provincia` varchar(100) NOT NULL,
  `capital_provincia` varchar(100) DEFAULT NULL,
  `descripcion_provincia` text,
  `poblacion_provincia` varchar(50) DEFAULT NULL,
  `superficie_provincia` varchar(50) DEFAULT NULL,
  `latitud_provincia` varchar(20) DEFAULT NULL,
  `longitud_provincia` varchar(20) DEFAULT NULL,
  `id_region` int DEFAULT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `empleado` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `cedula` varchar(10) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_provincia_personal` int DEFAULT NULL,
  `observaciones_personales` text,
  `foto` varchar(255) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  `cargo` varchar(100) DEFAULT NULL,
  `departamento` varchar(100) DEFAULT NULL,
  `id_provincia_laboral` int DEFAULT NULL,
  `sueldo` decimal(10,2) DEFAULT NULL,
  `jornada_parcial` tinyint(1) DEFAULT '0',
  `observaciones_laborales` text,
  `estado` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_empleado`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `cedula` (`cedula`),
  KEY `id_provincia_personal` (`id_provincia_personal`),
  KEY `id_provincia_laboral` (`id_provincia_laboral`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_provincia_personal`) REFERENCES `provincia` (`id_provincia`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_provincia_laboral`) REFERENCES `provincia` (`id_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;