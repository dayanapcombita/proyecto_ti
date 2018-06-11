-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2018 a las 17:37:59
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto ti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arreglado`
--

CREATE TABLE `arreglado` (
  `Patente` varchar(8) NOT NULL,
  `Rut_Mecanico` varchar(10) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Hora_inicio` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buses`
--

CREATE TABLE `buses` (
  `Patente` varchar(8) NOT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Año` int(4) DEFAULT NULL,
  `Capacidad` int(3) DEFAULT NULL,
  `Kilometraje` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `choferes`
--

CREATE TABLE `choferes` (
  `Rut_Chofer` varchar(10) NOT NULL,
  `Años_de_servicio` int(2) DEFAULT NULL,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Apellido2` varchar(15) DEFAULT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Rut_Cliente` varchar(10) NOT NULL,
  `Direccion` varchar(25) DEFAULT NULL,
  `Correo1` varchar(25) NOT NULL,
  `Correo2` varchar(25) DEFAULT NULL,
  `Telefono1` varchar(25) NOT NULL,
  `Telefono2` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `Rut_Cliente` varchar(10) NOT NULL,
  `Direccion` varchar(25) DEFAULT NULL,
  `Nombre_empresa` varchar(50) DEFAULT NULL,
  `Razon_social` varchar(50) DEFAULT NULL,
  `Giro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `Fecha_inicio` date NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Fecha_fin` date DEFAULT NULL,
  `Hora_fin` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `manejados`
--

CREATE TABLE `manejados` (
  `Rut_Chofer` varchar(10) NOT NULL,
  `Patente` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanicos`
--

CREATE TABLE `mecanicos` (
  `Rut_Mecanico` varchar(10) NOT NULL,
  `inicio_de_Contrato` date DEFAULT NULL,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Apellido2` varchar(15) DEFAULT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `necesita`
--

CREATE TABLE `necesita` (
  `Patente` varchar(8) NOT NULL,
  `ID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `particulares`
--

CREATE TABLE `particulares` (
  `Rut_Cliente` varchar(10) NOT NULL,
  `Direccion` varchar(25) DEFAULT NULL,
  `Nombre1` varchar(15) DEFAULT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) DEFAULT NULL,
  `Apelido2` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `repuestos`
--

CREATE TABLE `repuestos` (
  `Nombre` varchar(40) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Stock` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usan`
--

CREATE TABLE `usan` (
  `Cantidad` int(11) DEFAULT NULL,
  `Patente` varchar(8) NOT NULL,
  `Rut_Mecanico` varchar(10) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Stock` int(3) NOT NULL,
  `Nombre` varchar(40) NOT NULL,
  `Marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viajes`
--

CREATE TABLE `viajes` (
  `ID` int(4) NOT NULL,
  `Fecha_inicio_viaje` date NOT NULL,
  `Hora_inicio_viaje` time NOT NULL,
  `Fecha_fin_viaje` date DEFAULT NULL,
  `Hora_fin_viaje` time DEFAULT NULL,
  `Rut_cliente` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `arreglado`
--
ALTER TABLE `arreglado`
  ADD PRIMARY KEY (`Patente`,`Rut_Mecanico`,`Fecha_inicio`,`Hora_inicio`),
  ADD KEY `Rut_Mecanico` (`Rut_Mecanico`),
  ADD KEY `Fecha_inicio` (`Fecha_inicio`,`Hora_inicio`);

--
-- Indices de la tabla `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`Patente`);

--
-- Indices de la tabla `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`Rut_Chofer`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Rut_Cliente`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`Rut_Cliente`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`Fecha_inicio`,`Hora_inicio`);

--
-- Indices de la tabla `manejados`
--
ALTER TABLE `manejados`
  ADD PRIMARY KEY (`Rut_Chofer`),
  ADD KEY `Patente` (`Patente`);

--
-- Indices de la tabla `mecanicos`
--
ALTER TABLE `mecanicos`
  ADD PRIMARY KEY (`Rut_Mecanico`);

--
-- Indices de la tabla `necesita`
--
ALTER TABLE `necesita`
  ADD PRIMARY KEY (`Patente`,`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indices de la tabla `particulares`
--
ALTER TABLE `particulares`
  ADD PRIMARY KEY (`Rut_Cliente`);

--
-- Indices de la tabla `repuestos`
--
ALTER TABLE `repuestos`
  ADD PRIMARY KEY (`Nombre`,`Marca`);

--
-- Indices de la tabla `usan`
--
ALTER TABLE `usan`
  ADD PRIMARY KEY (`Patente`,`Rut_Mecanico`,`Fecha_inicio`,`Hora_inicio`,`Nombre`,`Marca`),
  ADD KEY `Rut_Mecanico` (`Rut_Mecanico`),
  ADD KEY `Fecha_inicio` (`Fecha_inicio`,`Hora_inicio`),
  ADD KEY `Nombre` (`Nombre`,`Marca`);

--
-- Indices de la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Rut_cliente` (`Rut_cliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `arreglado`
--
ALTER TABLE `arreglado`
  ADD CONSTRAINT `arreglado_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `arreglado_ibfk_2` FOREIGN KEY (`Rut_Mecanico`) REFERENCES `mecanicos` (`Rut_Mecanico`),
  ADD CONSTRAINT `arreglado_ibfk_3` FOREIGN KEY (`Fecha_inicio`,`Hora_inicio`) REFERENCES `fecha` (`Fecha_inicio`, `Hora_inicio`);

--
-- Filtros para la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`Rut_Cliente`) REFERENCES `clientes` (`Rut_Cliente`);

--
-- Filtros para la tabla `manejados`
--
ALTER TABLE `manejados`
  ADD CONSTRAINT `manejados_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`);

--
-- Filtros para la tabla `necesita`
--
ALTER TABLE `necesita`
  ADD CONSTRAINT `necesita_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `necesita_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `viajes` (`ID`);

--
-- Filtros para la tabla `particulares`
--
ALTER TABLE `particulares`
  ADD CONSTRAINT `particulares_ibfk_1` FOREIGN KEY (`Rut_Cliente`) REFERENCES `clientes` (`Rut_Cliente`);

--
-- Filtros para la tabla `usan`
--
ALTER TABLE `usan`
  ADD CONSTRAINT `usan_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `usan_ibfk_2` FOREIGN KEY (`Rut_Mecanico`) REFERENCES `mecanicos` (`Rut_Mecanico`),
  ADD CONSTRAINT `usan_ibfk_3` FOREIGN KEY (`Fecha_inicio`,`Hora_inicio`) REFERENCES `fecha` (`Fecha_inicio`, `Hora_inicio`),
  ADD CONSTRAINT `usan_ibfk_4` FOREIGN KEY (`Nombre`,`Marca`) REFERENCES `repuestos` (`Nombre`, `Marca`);

--
-- Filtros para la tabla `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`Rut_cliente`) REFERENCES `clientes` (`Rut_Cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
