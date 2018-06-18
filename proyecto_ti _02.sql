-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2018 at 05:33 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proyecto_ti`
--

-- --------------------------------------------------------

--
-- Table structure for table `arreglado`
--

CREATE TABLE `arreglado` (
  `Patente` varchar(8) NOT NULL,
  `Rut_Mecanico` varchar(10) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Hora_inicio` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arreglado`
--

INSERT INTO `arreglado` (`Patente`, `Rut_Mecanico`, `Fecha_inicio`, `Hora_inicio`) VALUES
('BFGY28', '10784745-6', '2014-04-23', '17:00:00'),
('DHHW62', '11155272-K', '2015-06-13', '13:00:00'),
('FFBZ29', '10784745-6', '2014-04-23', '17:00:00'),
('PN7946', '14457275-0', '2017-09-17', '17:00:00'),
('VL7216', '10784745-6', '2016-10-17', '16:00:00'),
('XL1715', '14457275-0', '2016-01-12', '15:30:00'),
('ZY3925', '7113894-1', '2014-07-25', '14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `Patente` varchar(8) NOT NULL,
  `Modelo` varchar(50) NOT NULL,
  `Año` int(4) NOT NULL,
  `Capacidad` int(3) NOT NULL,
  `Kilometraje` int(7) DEFAULT NULL,
  `Estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`Patente`, `Modelo`, `Año`, `Capacidad`, `Kilometraje`, `Estado`) VALUES
('BFGY28', 'VOLARE', 2006, 26, 150000, 'viaje'),
('BWBJ63', 'BONLUCK', 2009, 35, 170000, 'viaje'),
('DHHW62', 'VOLARE', 2012, 26, 230000, 'viaje'),
('FFBZ29', 'DONGFENG', 2013, 26, 10000, 'disponible'),
('FFBZ50', 'DONGFENG', 2013, 26, 10000, 'disponible'),
('PN7945', 'MERCEDES', 1996, 45, 500000, 'disponible'),
('PN7946', 'MERCEDES', 1996, 45, 800000, 'viaje'),
('VL7216', 'VOLVO', 2003, 45, 80000, 'viaje'),
('XL1715', 'IRIZAR', 2004, 45, 70000, 'disponible'),
('ZN3618', 'VOLKSWAGUEN', 2006, 45, 85000, 'disponible'),
('ZY3925', 'VOLARE', 2006, 26, 150000, 'disponible');

-- --------------------------------------------------------

--
-- Table structure for table `choferes`
--

CREATE TABLE `choferes` (
  `Rut_Chofer` varchar(10) NOT NULL,
  `Inicio_contrato` date DEFAULT NULL,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Apellido2` varchar(15) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  `Telefono` int(12) NOT NULL,
  `Estado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choferes`
--

INSERT INTO `choferes` (`Rut_Chofer`, `Inicio_contrato`, `Nombre1`, `Nombre2`, `Apellido1`, `Apellido2`, `Direccion`, `Telefono`, `Estado`) VALUES
('10559627-8', '2007-07-01', 'Carlos', 'Ivan', 'Milla', 'Alarcón', 'Población Canteras', 789356714, ''),
('10725715-2', '2005-06-30', 'Octavio', 'Segundo', 'Leiva', 'Melo', 'Población O\'higgins', 943786589, ''),
('11686343-K', '2001-06-29', 'Luis', 'Nicolás', 'Etori', 'Badilla', 'Población O\'higgins', 883189787, ''),
('11905401-K', '2006-07-03', 'Ricardo', 'Enrique', 'Ortega', 'Lagos', 'Población Chillancito', 916343348, ''),
('5905787-1', '2003-06-25', 'Jose', 'Hector', 'Sandoval', 'Navarrete', 'Población Canteras', 962086794, ''),
('7004488-9', '1905-06-26', 'Hernan', 'Gabriel', 'Arratia', 'Burgos', 'Población O\'higgins', 823745687, ''),
('8464319-K', '2004-06-23', 'Luis', 'Alberto', 'Alarcón', 'García', 'Población Quilleco', 910873678, ''),
('8524900-2', '2004-06-27', 'Juan', 'Adrian', 'León', 'Araneda', 'Población Quilleco', 845839567, ''),
('9338637-K', '2009-06-26', 'Hector', 'Javier', 'Muñoz', 'Valdebenito', 'Población Chillancito', 937693623, ''),
('9635644-7', '2008-06-28', 'Octavio', 'Rolando', 'Flores', 'Concha', 'Población Rucue', 934784569, '');

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `Rut_Cliente` varchar(10) NOT NULL,
  `Direccion` varchar(25) NOT NULL,
  `Correo1` varchar(25) NOT NULL,
  `Correo2` varchar(25) DEFAULT NULL,
  `Telefono1` varchar(25) NOT NULL,
  `Telefono2` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clientes`
--

INSERT INTO `clientes` (`Rut_Cliente`, `Direccion`, `Correo1`, `Correo2`, `Telefono1`, `Telefono2`) VALUES
('123', 'calle2', 'baby@gmail.com', '', 'Telefono1', '23232'),
('1234', '32123', '3323', '23232', 'Telefono1', '657'),
('17919703-1', 'calle 2', 'dayanapcombita@gmail.com', 'dcombita@udec.cl', '963476498', '967487632'),
('18287861-2', 'calle 3', 'correo10@gmail.com', 'correo11@gmail.com', '864925175', NULL),
('33405879-2', 'calle 5', 'correo7@gmail.com', 'correo8@gmail.com', '887495689', '967487631'),
('45938675-7', 'calle 7', 'correo5@gmail.com', 'correo6@gmail.com', '837589776', '997487630'),
('54890373-1', 'calle 4', 'correo3@gmail.com', 'correo4@gmail.com', '869263967', NULL),
('9201838-4', 'calle 6', 'correo2@gmail.com', '', '971950254', NULL),
('9203489-k', 'calle 1', 'correo1@gmail.com', '', '967487629', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE `empresas` (
  `Rut_Cliente` varchar(10) NOT NULL,
  `Razon_social` varchar(50) NOT NULL,
  `Giro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`Rut_Cliente`, `Razon_social`, `Giro`) VALUES
('1234', 'da', 'sss'),
('33405879-2', 'Empresa 1', 'Servicio educacional'),
('45938675-7', 'Empresa 3', 'Explotación y transporte forestal'),
('9201838-4', 'Empresa 2', 'Servicio educacional'),
('9203489-k', 'Alto horizonte', 'Transporte y movimiento de tierra');

-- --------------------------------------------------------

--
-- Table structure for table `fecha`
--

CREATE TABLE `fecha` (
  `Fecha_inicio` date NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Fecha_fin` date NOT NULL,
  `Hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fecha`
--

INSERT INTO `fecha` (`Fecha_inicio`, `Hora_inicio`, `Fecha_fin`, `Hora_fin`) VALUES
('2012-06-30', '15:00:00', '2012-06-30', '15:00:00'),
('2014-04-23', '16:00:00', '2014-05-30', '20:00:00'),
('2014-04-23', '17:00:00', '2014-04-29', '13:00:00'),
('2014-07-25', '14:00:00', '2014-07-30', '14:00:00'),
('2015-06-13', '13:00:00', '2015-06-14', '15:00:00'),
('2016-01-12', '15:30:00', '2016-01-13', '17:00:00'),
('2016-05-30', '14:00:00', '2016-05-30', '20:00:00'),
('2016-10-17', '16:00:00', '2016-11-18', '11:00:00'),
('2017-09-17', '17:00:00', '2017-09-18', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `manejados`
--

CREATE TABLE `manejados` (
  `Rut_chofer` varchar(10) NOT NULL,
  `Patente` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manejados`
--

INSERT INTO `manejados` (`Rut_chofer`, `Patente`) VALUES
('10559627-8', 'BFGY28'),
('10559627-8', 'BWBJ63'),
('10559627-8', 'DHHW62'),
('10559627-8', 'FFBZ29'),
('10559627-8', 'VL7216'),
('10725715-2', 'BWBJ63'),
('10725715-2', 'DHHW62'),
('11686343-K', 'DHHW62'),
('11686343-K', 'FFBZ50'),
('11686343-K', 'XL1715'),
('11905401-K', 'BFGY28'),
('5905787-1', 'BFGY28'),
('5905787-1', 'DHHW62'),
('5905787-1', 'PN7945'),
('7004488-9', 'BFGY28'),
('7004488-9', 'FFBZ29'),
('7004488-9 ', 'PN7946'),
('7004488-9', 'VL7216'),
('8464319-K', 'PN7946'),
('8524900-2', 'FFBZ50'),
('9338637-K', 'PN7946'),
('9338637-K', 'ZN3618'),
('9635644-7', 'ZY3925');

-- --------------------------------------------------------

--
-- Table structure for table `mecanicos`
--

CREATE TABLE `mecanicos` (
  `Rut_Mecanico` varchar(10) NOT NULL,
  `Inicio_contrato` date DEFAULT NULL,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Apellido2` varchar(15) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mecanicos`
--

INSERT INTO `mecanicos` (`Rut_Mecanico`, `Inicio_contrato`, `Nombre1`, `Nombre2`, `Apellido1`, `Apellido2`, `Telefono`, `Direccion`) VALUES
('10784745-6', '2016-08-10', 'Raul', 'Abelino', 'Zapata', 'Rivas', 'Población Hu', '736785467'),
('11155272-K', '2010-06-19', 'Juan', 'Alberto', 'Diaz', 'Gonzalez', 'Población Qu', '927936723'),
('14457275-0', '2018-06-14', 'Raúl', 'Enrique', 'Navarrete', 'Troncoso', 'Población Ca', '842793654'),
('7113894-1', '2011-06-19', 'José', 'Segundo', 'Otarola', 'Albornoz', 'Población Ca', '967436789');

-- --------------------------------------------------------

--
-- Table structure for table `necesita`
--

CREATE TABLE `necesita` (
  `Patente` varchar(8) NOT NULL,
  `ID` int(4) NOT NULL,
  `id_necesita` int(11) NOT NULL,
  `Rut_chofer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `necesita`
--

INSERT INTO `necesita` (`Patente`, `ID`, `id_necesita`, `Rut_chofer`) VALUES
('BFGY28', 10, 1, NULL),
('BWBJ63', 8, 2, NULL),
('DHHW62', 11, 3, NULL),
('FFBZ29', 5, 4, NULL),
('FFBZ50', 7, 5, NULL),
('PN7945', 1, 6, NULL),
('PN7946', 3, 7, NULL),
('VL7216', 2, 8, NULL),
('VL7216', 38, 9, NULL),
('XL1715', 4, 10, NULL),
('ZN3618', 6, 11, NULL),
('ZY3925', 9, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `particulares`
--

CREATE TABLE `particulares` (
  `Rut_Cliente` varchar(10) NOT NULL,
  `Nombre1` varchar(15) NOT NULL,
  `Nombre2` varchar(15) DEFAULT NULL,
  `Apellido1` varchar(15) NOT NULL,
  `Apellido2` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `particulares`
--

INSERT INTO `particulares` (`Rut_Cliente`, `Nombre1`, `Nombre2`, `Apellido1`, `Apellido2`) VALUES
('123', 'asdasdssds', 'saasd', 'sdasda', 'asdasda'),
('17919703-1', 'Nicolas', 'Ignacio', 'Matamala', 'Uribe'),
('18287861-2', 'Camilo', 'Nicolas', 'Castillo', 'Fonseca'),
('54890373-1', 'Arturo', 'Alexis', 'Medel', 'Bravo');

-- --------------------------------------------------------

--
-- Table structure for table `repuestos`
--

CREATE TABLE `repuestos` (
  `Nombre` varchar(40) NOT NULL,
  `Marca` varchar(20) NOT NULL,
  `Stock` int(3) NOT NULL,
  `Punto_reorden` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repuestos`
--

INSERT INTO `repuestos` (`Nombre`, `Marca`, `Stock`, `Punto_reorden`) VALUES
('Aceite motor', 'Mobil Super', 30, 10),
('Baterías', 'Bosch', 17, 5),
('Filtro de aceite', 'Mann', 50, 10),
('Neumáticos', 'Good Year', 20, 10),
('Neumáticos', 'Michellin', 20, 10),
('Neumáticos', 'Pirelli', 17, 10),
('sds', 'adadd', 33, 33);

-- --------------------------------------------------------

--
-- Table structure for table `usan`
--

CREATE TABLE `usan` (
  `Patente` varchar(8) NOT NULL,
  `Rut_Mecanico` varchar(12) NOT NULL,
  `Fecha_inicio` date NOT NULL,
  `Hora_inicio` time NOT NULL,
  `Cantidad` int(3) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Marca` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usan`
--

INSERT INTO `usan` (`Patente`, `Rut_Mecanico`, `Fecha_inicio`, `Hora_inicio`, `Cantidad`, `Nombre`, `Marca`) VALUES
('BFGY28', '10784745-6', '2012-06-30', '15:00:00', 2, 'Aceite motor', 'Mobil Super'),
('DHHW62', '11155272-K', '2015-06-13', '13:00:00', 4, 'Neumáticos', 'Michellin'),
('FFBZ29', '10784745-6', '2014-04-23', '17:00:00', 4, 'Neumáticos', 'Good Year'),
('PN7946', '14457275-0', '2017-09-17', '17:00:00', 1, 'Baterías', 'Bosch'),
('VL7216', '10784745-6', '2016-10-17', '16:00:00', 1, 'Aceite motor', 'Mobil Super'),
('XL1715', '14457275-0', '2016-01-12', '15:30:00', 2, 'Filtro de aceite', 'Mann'),
('ZY3925', '7113894-1', '2014-07-25', '14:00:00', 4, 'Neumáticos', 'Pirelli');

-- --------------------------------------------------------

--
-- Table structure for table `viajes`
--

CREATE TABLE `viajes` (
  `ID` int(11) NOT NULL,
  `Fecha_inicio_viaje` date NOT NULL,
  `Hora_Fin_viaje` time NOT NULL,
  `Fecha_fin_viaje` date NOT NULL,
  `Hora_inicio_viaje` time NOT NULL,
  `Rut_cliente` varchar(10) DEFAULT NULL,
  `Origen` varchar(20) NOT NULL,
  `Destino` varchar(20) NOT NULL,
  `num_pasajeros` int(11) DEFAULT NULL,
  `Estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `viajes`
--

INSERT INTO `viajes` (`ID`, `Fecha_inicio_viaje`, `Hora_Fin_viaje`, `Fecha_fin_viaje`, `Hora_inicio_viaje`, `Rut_cliente`, `Origen`, `Destino`, `num_pasajeros`, `Estado`) VALUES
(1, '2018-09-15', '14:00:17', '2018-09-16', '10:00:08', '9203489-k', 'Los Angeles', 'Puerto Varas', NULL, 'reservado'),
(2, '2018-09-16', '07:00:14', '2018-09-17', '11:00:08', '54890373-1', 'Los Angeles', 'Chiloe', NULL, 'reservado'),
(3, '2018-09-17', '09:00:17', '2018-09-18', '05:00:17', '33405879-2', 'Nacimiento', 'Puerto Montt', NULL, 'reservado'),
(4, '2018-09-18', '13:00:09', '2018-09-21', '08:00:18', '9203489-k', 'Antuco', 'Pucon', NULL, NULL),
(5, '2018-09-19', '07:00:11', '2018-09-20', '06:00:09', '18287861-2', 'Los Angeles', 'Puerto Varas', NULL, NULL),
(6, '2018-09-20', '11:00:10', '2018-09-23', '09:00:15', '9201838-4', 'Los Angeles', 'Osorno', NULL, NULL),
(7, '2018-09-21', '11:00:23', '2018-09-22', '08:00:09', '17919703-1', 'Nacimiento', 'Concepcion', NULL, NULL),
(8, '2018-09-22', '14:00:22', '2018-09-23', '11:00:22', '45938675-7', 'Nacimiento', 'Concepcion', NULL, NULL),
(9, '2018-09-23', '12:00:08', '2018-09-24', '09:00:10', '9201838-4', 'Concepcion', 'Chiloe', NULL, NULL),
(10, '2018-09-24', '15:00:10', '2018-09-25', '11:00:16', '18287861-2', 'Chillan', 'Puerto Montt', NULL, NULL),
(11, '2018-09-25', '09:00:12', '2018-09-26', '06:00:17', '45938675-7', 'Los Angeles', 'Osorno', NULL, NULL),
(12, '2018-06-16', '00:00:00', '0000-00-00', '15:00:00', '17919703-1', 'Los Angeles', 'Chillan', NULL, NULL),
(14, '2018-06-17', '19:00:00', '2018-06-16', '15:00:00', '18287861-2', 'Chillan', 'Chiloe', NULL, NULL),
(15, '2018-06-17', '19:00:00', '2018-06-16', '15:00:00', '18287861-2', 'Chillan', 'Chiloe', NULL, NULL),
(16, '2018-06-17', '19:00:00', '2018-06-16', '15:00:00', '18287861-2', 'Chillan', 'Chiloe', NULL, NULL),
(17, '2018-06-13', '13:00:00', '2018-06-13', '11:00:00', '18287861-2', 'Concepcion', 'Chillan', NULL, NULL),
(18, '2018-06-13', '13:00:00', '2018-06-13', '11:00:00', '18287861-2', 'Concepcion', 'Chillan', NULL, NULL),
(19, '2018-06-10', '20:00:00', '2018-06-10', '11:00:00', '9203489-k', 'Concepcion', 'Chiloe', NULL, NULL),
(21, '2018-06-10', '20:00:00', '2018-06-10', '11:00:00', '17919703-1', 'Concepcion', 'Antofagasta', NULL, NULL),
(22, '2018-06-10', '20:00:00', '2018-06-10', '11:00:00', '17919703-1', 'Concepcion', 'Antofagasta', NULL, NULL),
(23, '2018-06-10', '20:00:00', '2018-06-10', '11:00:00', '17919703-1', 'Concepcion', 'Antofagasta', NULL, NULL),
(24, '2018-06-10', '20:00:00', '2018-06-10', '11:00:00', '17919703-1', 'Concepcion', 'Antofagasta', NULL, NULL),
(25, '2018-09-16', '00:00:00', '0000-00-00', '10:00:08', '9203489-k', ' Los Angeles', 'Puerto Varas', NULL, NULL),
(26, '2018-09-16', '14:00:17', '2018-09-16', '10:00:08', '9203489-k', ' Los Angeles', 'Puerto Varas', NULL, NULL),
(27, '2018-09-16', '07:00:14', '2018-09-17', '11:00:08', '54890373-1', 'Los Angeles', 'Chiloe', NULL, NULL),
(29, '2018-06-13', '14:00:17', '2018-06-13', '11:00:00', '17919703-1', 'Los Angeles', 'Chillan', NULL, NULL),
(30, '2018-09-16', '19:00:00', '2018-09-16', '14:00:00', '9203489-k', 'Concepcion', 'Chillan', NULL, NULL),
(31, '2018-06-15', '14:00:17', '2018-06-15', '11:00:00', '9203489-k', 'Los Angeles', 'Antofagasta', NULL, NULL),
(32, '2018-06-15', '14:00:17', '2018-06-15', '11:00:00', '9203489-k', 'Los Angeles', 'Antofagasta', NULL, NULL),
(33, '2018-06-16', '14:00:17', '2018-06-16', '15:00:00', '9203489-k', 'Concepcion', 'Puerto Varas', NULL, NULL),
(34, '2018-06-17', '14:00:17', '2018-06-17', '10:00:08', '9203489-k', 'Concepcion', 'Chillan', NULL, NULL),
(35, '2018-06-17', '14:00:17', '2018-06-17', '10:00:08', '9203489-k', 'Concepcion', 'Chillan', NULL, NULL),
(36, '2018-06-13', '18:00:00', '2018-06-13', '11:00:00', '9203489-k', 'Los Angeles', 'Antofagasta', NULL, NULL),
(37, '2018-06-10', '14:00:17', '2018-06-16', '11:00:00', '9203489-k', 'Concepcion', 'Antofagasta', NULL, NULL),
(38, '2018-06-10', '17:00:00', '2018-06-10', '14:00:00', '9203489-k', 'Chillan', 'Antofagasta', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arreglado`
--
ALTER TABLE `arreglado`
  ADD PRIMARY KEY (`Patente`,`Rut_Mecanico`,`Fecha_inicio`,`Hora_inicio`),
  ADD KEY `Rut_Mecanico` (`Rut_Mecanico`),
  ADD KEY `Fecha_inicio` (`Fecha_inicio`,`Hora_inicio`);

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`Patente`);

--
-- Indexes for table `choferes`
--
ALTER TABLE `choferes`
  ADD PRIMARY KEY (`Rut_Chofer`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Rut_Cliente`);

--
-- Indexes for table `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`Rut_Cliente`);

--
-- Indexes for table `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`Fecha_inicio`,`Hora_inicio`);

--
-- Indexes for table `manejados`
--
ALTER TABLE `manejados`
  ADD PRIMARY KEY (`Rut_chofer`,`Patente`),
  ADD KEY `Patente` (`Patente`);

--
-- Indexes for table `mecanicos`
--
ALTER TABLE `mecanicos`
  ADD PRIMARY KEY (`Rut_Mecanico`);

--
-- Indexes for table `necesita`
--
ALTER TABLE `necesita`
  ADD PRIMARY KEY (`id_necesita`),
  ADD KEY `ix_Patente` (`Patente`),
  ADD KEY `ID` (`ID`),
  ADD KEY `ix_chofer` (`Rut_chofer`);

--
-- Indexes for table `particulares`
--
ALTER TABLE `particulares`
  ADD PRIMARY KEY (`Rut_Cliente`);

--
-- Indexes for table `repuestos`
--
ALTER TABLE `repuestos`
  ADD PRIMARY KEY (`Nombre`,`Marca`);

--
-- Indexes for table `usan`
--
ALTER TABLE `usan`
  ADD PRIMARY KEY (`Patente`,`Rut_Mecanico`,`Fecha_inicio`,`Hora_inicio`,`Nombre`,`Marca`),
  ADD KEY `Rut_Mecanico` (`Rut_Mecanico`),
  ADD KEY `Fecha_inicio` (`Fecha_inicio`,`Hora_inicio`),
  ADD KEY `Nombre` (`Nombre`,`Marca`);

--
-- Indexes for table `viajes`
--
ALTER TABLE `viajes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Rut_cliente` (`Rut_cliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `necesita`
--
ALTER TABLE `necesita`
  MODIFY `id_necesita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `viajes`
--
ALTER TABLE `viajes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arreglado`
--
ALTER TABLE `arreglado`
  ADD CONSTRAINT `arreglado_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `arreglado_ibfk_2` FOREIGN KEY (`Rut_Mecanico`) REFERENCES `mecanicos` (`Rut_Mecanico`),
  ADD CONSTRAINT `arreglado_ibfk_3` FOREIGN KEY (`Fecha_inicio`,`Hora_inicio`) REFERENCES `fecha` (`Fecha_inicio`, `Hora_inicio`);

--
-- Constraints for table `empresas`
--
ALTER TABLE `empresas`
  ADD CONSTRAINT `empresas_ibfk_1` FOREIGN KEY (`Rut_Cliente`) REFERENCES `clientes` (`Rut_Cliente`);

--
-- Constraints for table `manejados`
--
ALTER TABLE `manejados`
  ADD CONSTRAINT `manejados_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `manejados_ibfk_2` FOREIGN KEY (`Rut_chofer`) REFERENCES `choferes` (`Rut_Chofer`);

--
-- Constraints for table `necesita`
--
ALTER TABLE `necesita`
  ADD CONSTRAINT `necesita_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `viajes` (`ID`),
  ADD CONSTRAINT `necesita_ibfk_2` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `necesita_ibfk_3` FOREIGN KEY (`Rut_chofer`) REFERENCES `choferes` (`Rut_Chofer`);

--
-- Constraints for table `particulares`
--
ALTER TABLE `particulares`
  ADD CONSTRAINT `particulares_ibfk_1` FOREIGN KEY (`Rut_Cliente`) REFERENCES `clientes` (`Rut_Cliente`);

--
-- Constraints for table `usan`
--
ALTER TABLE `usan`
  ADD CONSTRAINT `usan_ibfk_1` FOREIGN KEY (`Patente`) REFERENCES `buses` (`Patente`),
  ADD CONSTRAINT `usan_ibfk_2` FOREIGN KEY (`Rut_Mecanico`) REFERENCES `mecanicos` (`Rut_Mecanico`),
  ADD CONSTRAINT `usan_ibfk_3` FOREIGN KEY (`Fecha_inicio`,`Hora_inicio`) REFERENCES `fecha` (`Fecha_inicio`, `Hora_inicio`),
  ADD CONSTRAINT `usan_ibfk_4` FOREIGN KEY (`Nombre`,`Marca`) REFERENCES `repuestos` (`Nombre`, `Marca`);

--
-- Constraints for table `viajes`
--
ALTER TABLE `viajes`
  ADD CONSTRAINT `viajes_ibfk_1` FOREIGN KEY (`Rut_cliente`) REFERENCES `clientes` (`Rut_Cliente`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
