-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-05-2021 a las 08:42:29
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `usuario` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`usuario`, `clave`, `nombre`, `email`) VALUES
('gonzalo', 'ecija2021', 'Gonzalo Borrueco', 'gonzalobb01@gmail.com'),
('malarcon', 'sedes@2015', 'Miguel Alarcón León', 'programacion@ecija.es');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificios`
--

CREATE TABLE `edificios` (
  `codigo_edificio` char(3) NOT NULL,
  `departamento` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `edificios`
--

INSERT INTO `edificios` (`codigo_edificio`, `departamento`) VALUES
('ayt', 'Ayuntamiento'),
('bib', 'Biblioteca'),
('cem', 'CEMID'),
('cim', 'Centro de la Mujer'),
('cul', 'Cultura'),
('juv', 'Juventud y deportes'),
('mer', 'Mercado'),
('mus', 'Museo'),
('pol', 'Policía Local'),
('pro', 'Prodis'),
('rec', 'Recaudación'),
('sed', 'Sedesa'),
('soc', 'Servicios Sociales'),
('urb', 'Urbanismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `impresoras_escaneres`
--

CREATE TABLE `impresoras_escaneres` (
  `codigo_impresora_escaner` varchar(10) NOT NULL,
  `marca_modelo` varchar(300) NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `codigo_edificio` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `impresoras_escaneres`
--

INSERT INTO `impresoras_escaneres` (`codigo_impresora_escaner`, `marca_modelo`, `ip`, `codigo_edificio`) VALUES
('ayt.3-1', 'SHARP MX-M5071 PCL6', '172.26.16.171', 'ayt'),
('ayt.3-2', 'BROTHER HL-L2370DN', NULL, 'ayt'),
('ayt.3-3', 'SHARP MX-B201D PCL6', '172.26.16.42', 'ayt'),
('ayt.3-4', 'HP LaserJet 1020', NULL, 'ayt'),
('ayt.3-5', 'HP LaserJet 1020', NULL, 'ayt'),
('ayt.3-6', 'OKI C5800', NULL, 'ayt'),
('ayt.3-7', 'HP LaserJet 1020', NULL, 'ayt'),
('ayt.3-8', 'BROTHER MFC-L9570CDW', '172.26.16.100', 'ayt'),
('bib.3-1', 'HP Deskjet 2050', NULL, 'bib'),
('bib.3-2', 'BROTHER MFC-L2700DW', '172.26.80.61', 'bib'),
('bib.3-3', 'CANON IP7250', NULL, 'bib'),
('bib.3-4', 'BROTHER MFC-8440', NULL, 'bib'),
('bib.3-5', 'BROTHER DCP-J132W', NULL, 'bib'),
('cim.3-1', 'BROTHER MFC-J6510DW', NULL, 'cim'),
('cim.3-2', 'BROTHER DCP-7030', NULL, 'cim'),
('cim.3-3', 'Canon LBP2900', NULL, 'cim'),
('cim.3-4', 'BROTHER MFC-J5330DW', NULL, 'cim'),
('cul.3-1', 'CANON IRC3580', '172.26.20.136', 'cul'),
('cul.3-2', 'BROTHER MFC-L9570CDW', '172.26.17.100', 'cul'),
('juv.3-1', 'BROTHER HL-2250DN', NULL, 'juv'),
('juv.3-2', 'HP LaserJet 1020', NULL, 'juv'),
('juv.3-3', 'HP LaserJet 1300', NULL, 'juv'),
('juv.3-4', 'BROTHER MFC-J6720DW', '172.26.120.250', 'juv'),
('juv.3-5', 'BROTHER HL-L2310D', NULL, 'juv'),
('juv.3-6', 'BROTHER MFC-8950DW', '172.26.120.125', 'juv'),
('juv.3-7', 'BROTHER HL-L2300D', NULL, 'juv'),
('mer.3-1', 'BROTHER PDS-5000', NULL, 'mer'),
('mer.3-10', 'HP LaserJet 1020', NULL, 'mer'),
('mer.3-11', 'BROTHER DCP-L2540DN', NULL, 'mer'),
('mer.3-12', 'BROTHER DCP-1510', NULL, 'mer'),
('mer.3-13', 'BROTHER DCP-1510', NULL, 'mer'),
('mer.3-2', 'HP LaserJet P1102', '172.26.14.92', 'mer'),
('mer.3-3', 'BROTHER PDS-5000', NULL, 'mer'),
('mer.3-4', 'BROTHER DCP-8250DN', '172.26.13.20', 'mer'),
('mer.3-5', 'BROTHER PDS-5000', NULL, 'mer'),
('mer.3-6', 'BROTHER ADS-2600WE', NULL, 'mer'),
('mer.3-7', 'HP LaserJet 1020', NULL, 'mer'),
('mer.3-8', 'BROTHER MFC-L5750DW', '172.26.12.20', 'mer'),
('mer.3-9', 'BROTHER MFC-L5750DW', '172.26.10.201', 'mer'),
('mus.3-1', 'BROTHER MFC-9140CDN', NULL, 'mus'),
('pol.3-1', 'BROTHER HL-L6400DW', '172.26.48.111', 'pol'),
('pol.3-10', 'SHARP BP-30C25', '172.26.48.120', 'pol'),
('pol.3-11', 'HP LaserJet P1006', NULL, 'pol'),
('pol.3-12', 'HP LaserJet 1010', NULL, 'pol'),
('pol.3-2', 'BROTHER ADS-2600W', '172.26.48.154', 'pol'),
('pol.3-3', 'EPSON STYLUS DX3850', NULL, 'pol'),
('pol.3-4', 'OKI C5800', '172.26.48.112', 'pol'),
('pol.3-5', 'BROTHER ADS-2800W', '172.26.48.119', 'pol'),
('pol.3-6', 'BROTHER HL-L5100DN', '172.26.48.120', 'pol'),
('pol.3-7', 'BROTHER MFC-8950DW', NULL, 'pol'),
('pol.3-8', 'HP LaserJet P1005', NULL, 'pol'),
('pol.3-9', 'BROTHER HL-L2370DN', NULL, 'pol'),
('rec.3-1', 'BROTHER MFC-L9570CDW', '172.26.9.51', 'rec'),
('rec.3-10', 'Brother MFC-L5750DW', '172.26.8.155', 'rec'),
('rec.3-11', 'Brother MFC-L6900DW', '172.26.9.125', 'rec'),
('rec.3-12', 'OKI B430dn', NULL, 'rec'),
('rec.3-13', 'HP LaserJet 1200', NULL, 'rec'),
('rec.3-2', 'Brother MFC-L5750DW', '172.26.9.25', 'rec'),
('rec.3-3', 'Kyocera Mita FS-1920 KX', NULL, 'rec'),
('rec.3-4', 'SHARP MX-M316N PCL6', '172.26.9.126', 'rec'),
('rec.3-5', 'Kyocera FS-1900', NULL, 'rec'),
('rec.3-6', 'HP 1020', NULL, 'rec'),
('rec.3-7', 'Brother MFC-L6900DW', '172.26.8.106', 'rec'),
('rec.3-8', 'SHARP MX-C300W PCL6', '172.26.13.60', 'rec'),
('rec.3-9', 'Brother MFC-L6800DW', '172.26.8.247', 'rec'),
('sed.3-1', 'BROTHER DCP-8110DN', '172.26.29.250', 'sed'),
('sed.3-10', 'HP LaserJet 1020', NULL, 'sed'),
('sed.3-11', 'HP LaserJet 1020', NULL, 'sed'),
('sed.3-12', 'HP LaserJet 1010', NULL, 'sed'),
('sed.3-13', 'BROTHER DCP-8250DN', '172.26.24.32', 'sed'),
('sed.3-14', 'HP LaserJet 1010', NULL, 'sed'),
('sed.3-15', 'HP LaserJet 1200', NULL, 'sed'),
('sed.3-16', 'HP LaserJet 1020', NULL, 'sed'),
('sed.3-17', 'HP 1018', NULL, 'sed'),
('sed.3-18', 'HP LaserJet 1020', NULL, 'sed'),
('sed.3-19', 'Escáner Canon CanoScan LiDE 25', NULL, 'sed'),
('sed.3-2', 'HP LaserJet serie 1100', NULL, 'sed'),
('sed.3-3', 'BROTHER DCP-L8410CDW', NULL, 'sed'),
('sed.3-4', 'SHARP AR-M316', '172.26.24.161', 'sed'),
('sed.3-5', 'BROTHER HL-L2300D', NULL, 'sed'),
('sed.3-6', 'BROTHER HL-L2300D', NULL, 'sed'),
('sed.3-7', 'BROTHER MFC-L5750DW', '172.26.24.165', 'sed'),
('sed.3-8', 'HP LaserJet 1020', NULL, 'sed'),
('sed.3-9', 'Kyocera FS-1900', NULL, 'sed'),
('soc.3-1', 'SHARP MX-M316N', '172.26.84.122', 'soc'),
('soc.3-2', 'Samsung SCX-5835_5935', '172.26.84.121', 'soc'),
('soc.3-3', 'Brother MFC-9140cdn', NULL, 'soc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `monitores`
--

CREATE TABLE `monitores` (
  `codigo_monitor` varchar(10) NOT NULL,
  `marca_modelo` varchar(300) NOT NULL,
  `pulgadas` int(2) NOT NULL,
  `nombre_usuario` varchar(300) NOT NULL,
  `codigo_edificio` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `monitores`
--

INSERT INTO `monitores` (`codigo_monitor`, `marca_modelo`, `pulgadas`, `nombre_usuario`, `codigo_edificio`) VALUES
('ayt.2-1', 'DELL IN1910', 19, 'Margarita García Montero', 'ayt'),
('ayt.2-10', 'ACER AL1706', 17, 'Jefatura de Servicio', 'ayt'),
('ayt.2-11', 'ACER AL1716', 17, 'Jose Antonio Molina López', 'ayt'),
('ayt.2-12', 'Belinea 1705 S1', 17, 'Conserje', 'ayt'),
('ayt.2-13', 'Samsung S24F352FHU', 24, 'Franciso José Alhama Reyes', 'ayt'),
('ayt.2-14', 'HP L1940T', 19, 'Franciso José Alhama Reyes', 'ayt'),
('ayt.2-15', 'ASUS VK191', 19, '', 'ayt'),
('ayt.2-16', 'HannsG HU171D', 17, '', 'ayt'),
('ayt.2-17', 'ASUS VA249', 24, 'Vanesa Parejo González', 'ayt'),
('ayt.2-2', 'LG FLATRON L1717S', 17, 'Margarita García Montero', 'ayt'),
('ayt.2-3', 'LG FLATRON L1918S', 19, 'Luis María Sancho Porras', 'ayt'),
('ayt.2-4', 'DELL IN1910', 19, 'Salvador Vega', 'ayt'),
('ayt.2-5', 'ACER V226HQL', 22, 'Rosa María Rosa Gálvez', 'ayt'),
('ayt.2-6', 'ASUS VP228', 22, 'Rosa María Rosa Gálvez', 'ayt'),
('ayt.2-7', 'HannsG HW191D', 19, 'Isabel Muñoz García', 'ayt'),
('ayt.2-8', 'ACER V226HQL', 22, 'Victoria Corro Bueno', 'ayt'),
('ayt.2-9', 'HP 1740', 17, 'María Dolores Doblas Alcalá', 'ayt'),
('bib.2-1', 'ACER V226HQL', 22, 'Recepción 2', 'bib'),
('bib.2-10', 'LG 22MK400H', 22, 'Sala Prensa', 'bib'),
('bib.2-11', 'ASUS VS247', 24, 'Primera Planta', 'bib'),
('bib.2-12', 'CAPTIVA E1903W', 19, 'Marina Martín Ojeda', 'bib'),
('bib.2-13', 'HannsG HW191D', 19, 'Milagrosa García Martín', 'bib'),
('bib.2-2', 'ACER V226HQL', 22, 'Recepción 1', 'bib'),
('bib.2-3', 'AOC LM765', 19, '', 'bib'),
('bib.2-4', 'LG FLATRON L1718S', 17, '', 'bib'),
('bib.2-5', 'AOC LM765', 17, 'Patio', 'bib'),
('bib.2-6', 'LG FLATRON 1934S', 19, 'Patio', 'bib'),
('bib.2-7', 'AOC 177SA', 17, 'Patio', 'bib'),
('bib.2-8', 'LG 22MK400H (A veces se ve con estática)', 22, 'Patio', 'bib'),
('bib.2-9', 'LG FLATRON L1718S', 17, 'Sala Prensa', 'bib'),
('cim.2-1', 'NEC LCD 19WV', 19, '', 'cim'),
('cim.2-2', 'NEC LCD 19WV', 19, 'Lola Bello Uber', 'cim'),
('cim.2-3', 'NEC LCD19WV', 19, 'Isabel Pérez Romero', 'cim'),
('cim.2-4', 'ACER V173', 17, '', 'cim'),
('cim.2-5', 'ACER V226HQL', 22, 'Trabajadora Social', 'cim'),
('cim.2-6', 'ACER V173', 17, 'Psicóloga', 'cim'),
('cul.2-1', 'Belinea 1705S1', 17, 'Sara Muñoz Marín', 'cul'),
('cul.2-2', 'DELL IN1910', 19, 'Juan Antonio Prieto Palacios', 'cul'),
('cul.2-3', 'Belinea 1705S1', 17, 'María de la Luz Flores de la Torre', 'cul'),
('cul.2-4', 'LG FLATRON W19314S', 19, 'Conserje', 'cul'),
('cul.2-5', 'LG  22M38A', 22, 'Belén de la Vega', 'cul'),
('juv.2-1', 'ACER V226HQL', 22, 'Silvia Martín Chía', 'juv'),
('juv.2-2', 'LG W1943SS', 19, 'Antonio Rodríguez Rodríguez', 'juv'),
('juv.2-3', 'LG FLATRON W1943SS', 19, 'Rafael García Pastor', 'juv'),
('juv.2-4', 'LG FLATRON L1717S', 17, '', 'juv'),
('juv.2-5', 'LG FLATRON W1943SS', 19, 'Mirian del Mar Pérez Jiménez', 'juv'),
('mer.2-1', 'HP LE2201W', 22, 'Manuel Castejón', 'mer'),
('mer.2-10', 'ViewSonic VS16263', 24, 'Concepción Sánchez Delgado', 'mer'),
('mer.2-11', 'FLATRON W1934S', 19, '', 'mer'),
('mer.2-12', 'Philips 243V', 24, 'Carmela Rojas Garfias', 'mer'),
('mer.2-13', 'HannsG JC199D', 19, 'Eva María González Álvarez (Temporal)', 'mer'),
('mer.2-14', 'LG', 22, 'Jesús Romero', 'mer'),
('mer.2-15', 'LG FLATRON W1934S', 19, 'Rosalía Rojas Pérez', 'mer'),
('mer.2-16', 'LG FLATRON W1934S', 19, 'Carlos Rojas Pérez', 'mer'),
('mer.2-2', 'ViewSonic VA 2261', 22, 'Antonio Pedro Sánchez', 'mer'),
('mer.2-3', 'AOC E970SWN', 19, 'María Auxiliadora Medina Fernández', 'mer'),
('mer.2-4', 'ViewSonic VS16263', 24, 'Mercedes Vera Rivera', 'mer'),
('mer.2-5', 'FLATRON L1750S', 17, '', 'mer'),
('mer.2-6', 'ViewSonic VA 2261', 22, 'Paco García Alcántara', 'mer'),
('mer.2-7', 'FLATRON L1750S', 17, '', 'mer'),
('mer.2-8', 'ACER V206HQL', 20, '', 'mer'),
('mer.2-9', 'HannsG HA195', 19, 'Antonio Gutierrez Bermudo', 'mer'),
('mus.2-1', 'ACER V226HQL', 22, 'Antonio Fernández Ugalde', 'mus'),
('mus.2-2', 'ACER V226HQL', 22, 'Recepción', 'mus'),
('mus.2-3', 'ACER AL1916W', 19, 'Administración 2', 'mus'),
('mus.2-4', 'ACER V226HQL', 22, 'Beatriz Taboada Villanueva', 'mus'),
('pol.2-1', 'ASUS VW193', 19, '', 'pol'),
('pol.2-10', 'ASUS VS197', 19, 'Atestados', 'pol'),
('pol.2-11', 'Samsung S19D300', 19, 'Atestados 2', 'pol'),
('pol.2-12', 'NEC LCD19WV', 19, 'Manuel Delgado', 'pol'),
('pol.2-13', 'V7 R19W11', 19, 'VIOGEN', 'pol'),
('pol.2-14', 'ASUS VA249', 24, 'Protección Civil', 'pol'),
('pol.2-15', 'NEC LCD19WV', 19, 'Protección Civil', 'pol'),
('pol.2-16', 'AOC LM765', 19, 'Protección Civil', 'pol'),
('pol.2-2', 'ASUS VW193D-B', 19, 'María de los Ángeles Guerrero', 'pol'),
('pol.2-3', 'ViewSonic VA2261', 22, 'José Fernando Pérez Gil', 'pol'),
('pol.2-4', 'ACER AL1916W', 19, 'Manuel Gordillo Guerrero', 'pol'),
('pol.2-5', 'ASUS VP247', 24, 'Antonio Jose Duvisón', 'pol'),
('pol.2-6', 'DELL IN1910', 19, 'Diego Amador', 'pol'),
('pol.2-7', 'ASUS VA24E', 24, 'Control', 'pol'),
('pol.2-8', 'ViewSonic VA2265', 22, 'Control', 'pol'),
('pol.2-9', 'ACER X193HQ', 19, 'Control', 'pol'),
('rec.2-1', 'Philips 243V', 24, 'Pepe Ortega', 'rec'),
('rec.2-10', 'HP E231', 23, 'Rafael Reina Lozano', 'rec'),
('rec.2-11', 'HP E231', 23, 'Rafael Reina Lozano', 'rec'),
('rec.2-12', 'HannsG HW191D', 19, 'Carmen Gastón Osuna', 'rec'),
('rec.2-13', 'HP LE2201W', 22, 'Antonio Viera Aguilar', 'rec'),
('rec.2-14', 'HP LE2201W', 22, 'Antonia Vallejo Rodríguez', 'rec'),
('rec.2-15', 'DELL ST2310F', 23, 'Jose David Ferrero', 'rec'),
('rec.2-16', 'Acer V193HQV', 19, 'Inmaculada Navarro Herrera', 'rec'),
('rec.2-17', 'Acer V193HQV', 19, 'Macarena González Cuadrado', 'rec'),
('rec.2-18', 'Acer V193HQV', 19, 'Maria José Fernández Rodríguez', 'rec'),
('rec.2-19', 'HP L1940T', 19, 'Manuel Fernando Sánchez Martín', 'rec'),
('rec.2-2', 'DELL ST2310F', 23, 'Ana Ramírez', 'rec'),
('rec.2-20', 'Asus VZ279H', 27, 'Manuel Fernando Sánchez Martín', 'rec'),
('rec.2-21', 'HannsG HU196D', 19, 'María Soledad Guardado Bravo', 'rec'),
('rec.2-22', 'ASUS VP228', 22, 'Jose Manuel Rodríguez', 'rec'),
('rec.2-23', 'Acer V226HQL', 22, 'Alejandro Domenech', 'rec'),
('rec.2-24', 'Asus VZ279H', 27, 'Fernando Goldaracena Muñóz', 'rec'),
('rec.2-25', 'Philips', 20, 'Francisco Delgado Jiménez', 'rec'),
('rec.2-26', 'DELL ST2310F', 23, 'María del Valle Onetti', 'rec'),
('rec.2-27', 'LG FLATRON L1918S', 19, 'Isabel Sotillo', 'rec'),
('rec.2-28', 'LG FLATRON L1918S', 19, 'Dolores Martín', 'rec'),
('rec.2-29', 'LG FLATRON L1915S', 19, 'Fátima Jiménez', 'rec'),
('rec.2-3', 'AvanHard', 19, 'Jose Antonio Fernández', 'rec'),
('rec.2-30', 'LG FLATRON L1915S', 19, 'Jose Antonio García', 'rec'),
('rec.2-31', 'Acer V226HQL', 22, 'María Luisa Rodríguez Jaime', 'rec'),
('rec.2-32', 'LG 20M35', 20, 'Yolanda González Cuadrado', 'rec'),
('rec.2-33', 'Acer AL1717', 17, 'Joaquín', 'rec'),
('rec.2-34', 'LG W1943S', 19, 'Inmaculada Cortés Madero', 'rec'),
('rec.2-35', 'HannsG HA195ABB', 19, 'Mercedes Gamero Madero', 'rec'),
('rec.2-4', 'HP LE2201W', 22, 'María del Valle González', 'rec'),
('rec.2-5', 'HP LE2201W', 22, 'Marisol Ramírez', 'rec'),
('rec.2-6', 'ASUS VP228', 22, 'María del Valle Aguilar', 'rec'),
('rec.2-7', 'ASUS VP228', 22, 'María del Valle Blanco', 'rec'),
('rec.2-8', 'HP E231', 23, 'Jesús Laguna', 'rec'),
('rec.2-9', 'HP E231', 23, 'Jesús Laguna', 'rec'),
('sed.2-1', 'DELL ST2310F', 23, 'Francisco González', 'sed'),
('sed.2-10', 'ACER V22HQL', 22, 'Loli García', 'sed'),
('sed.2-11', 'ACER AL1717', 17, 'Isabel Cosano', 'sed'),
('sed.2-12', 'AOC', 17, 'Rosario Reina (Personal)', 'sed'),
('sed.2-13', 'AOC', 17, 'Planes de empleo 2', 'sed'),
('sed.2-14', 'HannsG HW191D', 19, 'Planes de empleo 1', 'sed'),
('sed.2-15', ' LG 24M35A-B', 24, 'Antonio Díaz Ruíz', 'sed'),
('sed.2-16', 'A190E3-T0C', 19, 'Elena Madrid', 'sed'),
('sed.2-17', 'Hyundai L72S', 17, 'Prácticas Turismo', 'sed'),
('sed.2-18', 'ASUS VS197', 19, 'María José Sarmiento Fernández', 'sed'),
('sed.2-19', 'A190E3-T0C', 19, 'María Dolores Mateos', 'sed'),
('sed.2-2', 'DELL ST2310F', 23, 'Miguel Alarcón', 'sed'),
('sed.2-20', 'AOC', 17, '', 'sed'),
('sed.2-21', 'HannsG HU196D', 19, 'Milagrosa García', 'sed'),
('sed.2-22', 'DELL ST2310F', 23, 'Lola Pérez Laguna', 'sed'),
('sed.2-23', 'ViewSonic VA2661-2', 22, 'Olga María Gomis Jiménez', 'sed'),
('sed.2-24', 'LG 24M35A-B', 24, 'Berta María Viera Aguilar', 'sed'),
('sed.2-25', 'BLUE H H94W', 19, '', 'sed'),
('sed.2-26', 'HannsG HW191D', 19, 'Sala 27', 'sed'),
('sed.2-27', 'HP 1740', 17, 'Antonio Alhama Reyes', 'sed'),
('sed.2-28', 'DELL ST2310F', 23, 'José Antonio Delgado Álvarez', 'sed'),
('sed.2-29', 'AOC', 17, 'Teresa Rosado García', 'sed'),
('sed.2-3', 'DELL ST2310F', 23, 'Alonso Gómez', 'sed'),
('sed.2-30', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-31', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-32', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-33', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-34', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-35', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-36', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-37', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-38', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-39', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-4', 'BenQ', 19, 'Reparaciones Francis', 'sed'),
('sed.2-40', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-41', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-42', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-43', 'VA1903A', 19, 'AULA 7', 'sed'),
('sed.2-44', 'HannsG HW191D', 19, 'AULA 7 (Profesor)', 'sed'),
('sed.2-45', 'AOC', 19, 'Conserje', 'sed'),
('sed.2-46', 'BlueH H19W', 19, 'AULA 4', 'sed'),
('sed.2-47', 'AOC', 19, 'AULA 4', 'sed'),
('sed.2-48', 'ACER X193HQ', 18, 'AULA 4', 'sed'),
('sed.2-49', 'BenQ G900WAD', 19, 'AULA 4', 'sed'),
('sed.2-5', 'Samsung', 19, 'Alonso Gómez', 'sed'),
('sed.2-50', 'HannsG HW191D', 19, 'AULA 4', 'sed'),
('sed.2-51', 'BenQ G900WAD', 19, 'AULA 4', 'sed'),
('sed.2-52', 'HannsG HW191D', 19, 'AULA 4', 'sed'),
('sed.2-53', 'Belinea 1705 S1', 17, 'AULA 4', 'sed'),
('sed.2-54', 'AOC', 17, 'AULA 4', 'sed'),
('sed.2-55', 'AOC', 17, 'AULA 4', 'sed'),
('sed.2-56', 'ACER X193HQ', 18, 'AULA 4', 'sed'),
('sed.2-57', 'Belinea 1705 S1', 17, 'AULA 4', 'sed'),
('sed.2-58', 'ViewSonic VA1903A', 21, 'AULA 4', 'sed'),
('sed.2-59', 'ViewSonic VA1903A', 21, 'AULA 4', 'sed'),
('sed.2-6', 'DELL ST2310F', 23, 'Jose Luis Asencio', 'sed'),
('sed.2-60', 'Samung SyncMaster 943', 19, 'AULA 4', 'sed'),
('sed.2-61', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-62', 'ACER V226HQL', 22, 'AULA 3', 'sed'),
('sed.2-63', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-64', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-65', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-66', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-67', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-68', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-69', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-7', 'Acer', 22, 'Jose Luis Asencio', 'sed'),
('sed.2-70', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-71', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-72', 'LG 22M38A-B', 22, 'AULA 3', 'sed'),
('sed.2-73', 'ACER X193HQ', 18, 'AULA 3', 'sed'),
('sed.2-74', 'ACER X193HQ', 18, 'AULA 3', 'sed'),
('sed.2-75', 'I-INC AG191D', 19, 'Fernando Moreno', 'sed'),
('sed.2-76', 'BlueH H19D', 19, 'Aula Mentor', 'sed'),
('sed.2-77', 'BlueH H19D', 19, 'Aula Mentor', 'sed'),
('sed.2-78', 'HannsG HW191D', 19, 'Aula Mentor', 'sed'),
('sed.2-79', 'HannsG HW191D', 19, 'Aula Mentor', 'sed'),
('sed.2-8', 'Hyundai', 15, 'Rosario Reina Palacio', 'sed'),
('sed.2-80', 'BlueH H19D', 19, 'Aula Mentor', 'sed'),
('sed.2-81', 'BlueH H19D', 19, 'Aula Mentor', 'sed'),
('sed.2-82', 'HannsG JC199D', 19, 'Aula Mentor', 'sed'),
('sed.2-83', 'HannsG JC199D', 19, 'Aula Mentor', 'sed'),
('sed.2-84', 'HannsG HW191D', 19, 'Aula Mentor', 'sed'),
('sed.2-85', 'HannsG JC199D', 19, 'Aula Mentor', 'sed'),
('sed.2-86', 'HannsG JC199D', 19, 'Aula Mentor', 'sed'),
('sed.2-87', 'HannsG JC199D', 19, 'Aula Mentor', 'sed'),
('sed.2-88', 'HannsG HN198', 19, 'Aula Mentor', 'sed'),
('sed.2-89', 'BlueH H19D', 19, 'Aula Mentor', 'sed'),
('sed.2-9', 'LG 24M35A-B', 24, 'José Fernando Pérez', 'sed'),
('sed.2-90', 'AOC E970SWN', 19, 'Aula Mentor', 'sed'),
('sed.2-91', 'V7 R19W11', 19, 'Aula Mentor', 'sed'),
('sed.2-92', 'HannsG JC199D', 19, 'Aula Mentor', 'sed'),
('sed.2-93', 'ViewSonic VA1903A', 21, 'Montse Fernández Laguna', 'sed'),
('sed.2-94', 'ASUS VK191', 19, 'Jose Antonio Rodríguez', 'sed'),
('soc.2-1', 'AOC', 17, 'Carlos Alós García Ortega', 'soc'),
('soc.2-10', 'Acer V226HQL', 22, 'Mari Ángeles Delgado Nieva', 'soc'),
('soc.2-11', 'Acer V226HQL', 22, 'Mercedes Arroyo Parra', 'soc'),
('soc.2-12', 'Belinea 1705S1', 17, 'Mari Carmen Jiménez', 'soc'),
('soc.2-13', 'HP 1740', 17, 'Antonio Alcántara Moreno', 'soc'),
('soc.2-14', 'Acer V226HQL', 22, 'Maria del Carmen Martín Fajardo', 'soc'),
('soc.2-15', 'Acer V206HQL', 20, 'Vigilante', 'soc'),
('soc.2-16', 'Acer V206HQL', 20, 'Recepción', 'soc'),
('soc.2-17', 'Acer V226HQL', 22, 'Inés María Fernández', 'soc'),
('soc.2-18', 'Samsung SyncMaster 701N', 17, 'Natalia Antelo Carmona', 'soc'),
('soc.2-19', 'Samsung SyncMaster 701N', 19, 'Mar Delgado Martín', 'soc'),
('soc.2-2', 'Samsung SyncMaster 701N', 17, 'Isabel Rodríguez García', 'soc'),
('soc.2-3', 'HannsG HW191D', 19, 'Javier González', 'soc'),
('soc.2-4', 'AOC', 17, 'Pilar Expósito', 'soc'),
('soc.2-5', 'Acer V226HQL', 22, 'Gloria García Fernández', 'soc'),
('soc.2-6', 'LG FLATRON L1750S', 17, 'Maria Cristina Hidalgo Delgado', 'soc'),
('soc.2-7', 'NEC LCD19WV', 19, 'Rafaela Aguilar Urbano', 'soc'),
('soc.2-8', 'LG 20MP48A', 20, 'Fernanda Ariza Villanueva', 'soc'),
('soc.2-9', 'Dell IN1910NWFP', 19, 'Elena Reina López', 'soc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordenadores`
--

CREATE TABLE `ordenadores` (
  `codigo_ordenador` varchar(10) NOT NULL,
  `micro` varchar(300) NOT NULL,
  `ram` varchar(300) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `sistema_operativo` varchar(300) DEFAULT NULL,
  `observaciones` longtext,
  `nombre_usuario` varchar(300) NOT NULL,
  `codigo_edificio` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ordenadores`
--

INSERT INTO `ordenadores` (`codigo_ordenador`, `micro`, `ram`, `ip`, `sistema_operativo`, `observaciones`, `nombre_usuario`, `codigo_edificio`) VALUES
('ayt.1-1', 'Intel Core 2 Duo', '4gb', '172.26.16.34', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Margarita García Montero', 'ayt'),
('ayt.1-10', 'Intel Celeron', '1.44gb', 'DHCP', 'Windows 7', 'No tiene copias (no se utiliza el ordenador)', 'Conserje', 'ayt'),
('ayt.1-11', 'Mobile AMD Sempron', '2gb', 'DHCP', 'Windows 7', 'Portátil antiguo. No tiene copias, sin antivirus, no se conecta a la red', 'Vigilantes', 'ayt'),
('ayt.1-12', 'Intel Core 2 Quad', '4gb', '172.26.16.35', 'Windows 7', 'No tiene copias', 'Francisco José Alhama Reyes', 'ayt'),
('ayt.1-13', 'Intel Core i5', '6gb', 'DHCP', 'Windows 7', 'Portátil Sony.  No tiene copias. Sin antivirus', 'Franciso José Alhama Reyes', 'ayt'),
('ayt.1-14', 'AMD Sempron', '1gb', '172.26.16.195', 'Windows XP', 'No tiene antivirus ni copias', '', 'ayt'),
('ayt.1-15', 'Intel Core 2', '4gb', '172.26.18.1', 'Windows 10', 'No tiene copias', '', 'ayt'),
('ayt.1-16', 'Intel Core i5', '8gb', '172.26.16.180', 'Windows 10', 'No tiene copias', 'Vanesa Parejo González', 'ayt'),
('ayt.1-2', 'Intel Pentium Dual', '2gb', '172.26.16.136', 'Windows 7', 'Antivirus ClaimWin, no tiene copias', 'Luis María Sancho Porras', 'ayt'),
('ayt.1-3', 'Intel Core 2 Duo', '4gb', '172.26.16.13', 'Windows 7', 'No tiene copias', 'Salvador Vega', 'ayt'),
('ayt.1-4', 'Intel Core i3', '4gb', '172.26.16.37', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Rosa María Rosa Gálvez', 'ayt'),
('ayt.1-5', 'Intel Celeron', '2gb', '172.26.16.70', 'Windows 7', 'No tiene copias, ni ntivirus', 'Isabel Muñoz García', 'ayt'),
('ayt.1-6', 'Intel Core i3', '4gb', '172.26.16.41', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Victoria Corro Bueno', 'ayt'),
('ayt.1-7', 'Intel Pentium D', '2gb', '172.26.16.38', 'Windows 7', 'No tiene copias, antivirus ClaimWin', 'María Dolores Doblas Alcalá', 'ayt'),
('ayt.1-8', 'Intel Core i3', '8gb', '172.26.16.103', 'Windows 10', 'No tiene copias', 'Jefatura de Servicio', 'ayt'),
('ayt.1-9', 'Intel Pentium Dual', '2gb', '172.26.16.248', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Jose Antonio Molina López', 'ayt'),
('bib.1-1', 'Intel Core i3', '4gb', '172.26.83.224', 'Windows 10', NULL, 'Recepción 2', 'bib'),
('bib.1-10', 'Intel Celeron', '1gb', '172.26.83.24', 'Windows 7', 'No tiene copias ni antivirus', 'Sala Prensa', 'bib'),
('bib.1-11', 'Intel Core i3', '4gb', '172.26.83.100', 'Windows 7', 'No tiene copias ni antivirus', 'Primera Planta', 'bib'),
('bib.1-12', 'Intel Core i3', '4gb', '172.26.81.50', 'Windows 10', NULL, 'Marina Martín Ojeda', 'bib'),
('bib.1-13', 'Intel Core 2 Duo', '4gb', '172.26.87.31', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Milagrosa García Martín', 'bib'),
('bib.1-2', 'Intel Core 2 Duo', '4gb', '172.26.83.223', 'Windows 7', 'No tiene copias, antivirus ClaimWin', 'Recepción 1', 'bib'),
('bib.1-3', 'Intel Core i3', '4gb', '172.26.80.250', 'Windows 7', 'No tiene copias, antivirus sin licencia', '', 'bib'),
('bib.1-4', 'Intel Celeron', '4gb', '172.26.83.65', 'Windows 10', 'No tiene copias, windows defender antiguo', 'Patio', 'bib'),
('bib.1-5', 'Intel Celeron', '4gb', 'DHCP', 'Windows 10', 'Salta la reparación automática de windows y no se puede acceder a él', 'Patio', 'bib'),
('bib.1-6', 'Intel Celeron', '1gb', 'DHCP', 'Windows 7', 'Va por WIFI, no tiene copias, antivirus sin licencia', 'Patio', 'bib'),
('bib.1-7', 'Intel Celeron', '4gb', 'DHCP', 'Windows 10', 'Salta la reparación automática de windows y no se puede acceder a él', 'Patio', 'bib'),
('bib.1-8', 'Intel Celeron', '4gb', '172.26.81.41', 'Windows 10', 'Aparece que el cable de red está desconectado (no tiene internet)', 'Patio', 'bib'),
('bib.1-9', 'Intel Celeron', '4gb', '172.26.81.41', 'Windows 10', 'Aparece que el cable de red está desconectado (no tiene internet)', 'Patio', 'bib'),
('cim.1-1', 'Intel Core 2 Duo', '3gb', '172.26.32.52', 'Windows 7', 'No tiene copias', '', 'cim'),
('cim.1-2', 'Intel Pentium Dual', '2gb', '172.26.32.54', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Lola Bello Uber', 'cim'),
('cim.1-3', 'Intel Pentium 4', '2.50gb', '172.26.32.53', 'Windows 7', 'Antivirus sin licencia', 'Isabel Pérez Romero', 'cim'),
('cim.1-4', 'Intel Celeron', '1gb', 'DHCP', 'Windows 7', 'No tiene copias, antivirus sin licencia', '', 'cim'),
('cim.1-5', 'Pentium Dual Core', '2gb', '172.26.32.51', 'Windows 7', 'No tiene copias, antivirus ClaimWin', 'Trabajadora Social', 'cim'),
('cim.1-6', 'Intel Pentium Dual', '2gb', '172.26.32.50', 'Windows 7', 'No tiene copias', 'Psicóloga', 'cim'),
('cul.1-1', 'Intel Pentium Dual Core', '4gb', '172.26.20.16', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Sara Muñoz Marín', 'cul'),
('cul.1-2', 'Intel Core 2 Duo', '4gb', '172.26.20.4', 'Windows 7', 'No tiene copias ni antivirus', 'Juan Antonio Prieto Palacios', 'cul'),
('cul.1-3', 'Intel Pentium Dual', '2gb', '172.26.20.88', 'Windows 7', 'No tiene copias ni antivirus', 'María de la Luz Flores de la Torre', 'cul'),
('cul.1-4', 'Intel Celeron', '2.50gb', '172.26.20.20', 'Windows 7', 'No tiene antivirus ni copias', 'Conserje', 'cul'),
('cul.1-5', 'Intel Core i3', '8gb', '172.26.16.125', 'Windows 10', 'No tiene copias', 'Belén de la Vega', 'cul'),
('cul.1-6', '', '', '-', '', 'Enciende pero el disco duro no funciona', 'Teatro Delegada', 'cul'),
('juv.1-1', 'Intel Core i3', '4gb', '172.26.120.123', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Silvia Martín Chía', 'juv'),
('juv.1-2', 'Intel Core 2 Duo', '2gb', '172.26.125.28', 'Windows 7', 'Portátil. No tiene copias ni antivirus', 'Miguel García Ostos', 'juv'),
('juv.1-3', 'Pentium Dual Core', '2gb', '172.26.120.54', 'Windows 7', 'No tiene copias ni antivirus', 'Antonio Rodríguez Rodríguez', 'juv'),
('juv.1-4', 'Intel Pentium Dual Core', '2gb', '172.26.120.17', 'Windows 7', 'La pantalla del ordenador se ve borrosa. No tiene copias, ni antivirus', 'Rafael García Pastor', 'juv'),
('juv.1-5', 'Intel Pentium Dual Core', '3gb', '172.26.120.20', 'Windows 7', 'No tiene copias ni antivirus', '', 'juv'),
('juv.1-6', 'Intel Core i5', '4gb', '172.26.120.15', 'Windows 10', NULL, 'Mirian del Mar Pérez Jiménez', 'juv'),
('juv.1-7', 'Intel Atom', '1gb', '172.26.122.110', 'Windows 7', 'Portátil. No tiene copias ni antivirus', 'Silvia Martín Chía', 'juv'),
('mer.1-1', 'Intel Core i3', '4gb', '172.26.9.202', 'Windows 10', 'No tiene copias', 'Manuel Castejón', 'mer'),
('mer.1-10', 'Intel Core i3', '4gb', '172.26.11.26', 'Windows 10', 'Antivirus sin licencia, no tiene copias', 'Concepción Sánchez Delgado', 'mer'),
('mer.1-11', 'Intel Pentium Dual Core', '2gb', '172.26.13.52', 'Winbdows 7', 'Antivirus sin licencia, no tiene copias', '', 'mer'),
('mer.1-12', 'Intel Core i3', '8gb', '172.26.15.115', 'Windows 10', NULL, 'Carmela Rojas Garfias', 'mer'),
('mer.1-13', 'Intel Pentium Dual Core', '2gb', '172.26.12.41', 'Windows 7', 'No tiene copias', 'Eva María González Álvarez (Temporal)', 'mer'),
('mer.1-14', 'Intel Pentium', '4gb', '172.26.13.118', 'Windows 10', 'No tiene copias', 'Jesús Romero', 'mer'),
('mer.1-15', 'Pentium Dual Core', '2gb', '172.26.13.108', 'Windows 7', 'No tiene copias, antivirus ClaimWin', 'Rosalía Rojas Pérez', 'mer'),
('mer.1-16', 'Intel Pentium ', '3gb', '172.26.25.109', 'Windows 7', 'No tiene copias, antivirus ClaimWin', 'Carlos Rojas Pérez', 'mer'),
('mer.1-2', 'Intel Core i3', '8gb', '172.26.14.92', 'Windows 10', 'No tiene copias', 'Antonio Pedro Sánchez', 'mer'),
('mer.1-3', 'Intel Pentium', '4gb', '172.26.13.70', 'Windows 7', 'No tiene copias, ni antivirus', 'María Auxiliadora Medina Fernández', 'mer'),
('mer.1-4', 'Intel Core i3', '4gb', '172.26.14.90', 'Windows 10', 'No tiene copias, antivirus no funciona', 'Mercedes Vera Rivera', 'mer'),
('mer.1-5', 'Intel Pentium Dual Core', '2gb', '172.26.14.91', 'Windows 7', 'No tiene antivirus ni copias', '', 'mer'),
('mer.1-6', 'Intel Core i3', '8gb', '172.26.8.158', 'Windows 10', 'No tiene copias', 'Paco García Alcántara', 'mer'),
('mer.1-7', 'Pentium Dual Core', '2gb', '172.26.8.159', 'Windows 7', 'No tiene copias ni antivirus', '', 'mer'),
('mer.1-8', 'Intel Core i3', '4gb', '172.26.10.13', 'Windows 7', 'No tiene copias ni antivirus', '', 'mer'),
('mer.1-9', 'Intel Pentium Dual Core', '4gb', '172.26.10.12', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Antonio Gutierrez Bermudo', 'mer'),
('mus.1-1', 'Intel Core i3', '4gb', '172.26.103.13', 'Windows 10', 'No tiene copias', 'Recepción', 'mus'),
('mus.1-2', 'Intel Core i3', '4gb', '172.26.96.63', 'Windows 7', 'No tiene copias ni antivirus', 'Administración 1', 'mus'),
('mus.1-3', 'Intel Celeron', '1.50gb', '172.26.96.62', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Administración 2', 'mus'),
('mus.1-4', 'Intel Core i3', '4gb', '172.26.96.61', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Beatriz Taboada Villanueva', 'mus'),
('pol.1-1', 'Intel Core i3', '4gb', '172.26.48.151', 'Windows 10', 'No tiene copias, el antivirus de Windows no se activa', '', 'pol'),
('pol.1-10', 'Intel Pentium', '4gb', '172.26.48.250', 'Windows 7', 'No tiene copias ni antivirus', 'Manuel Delgado', 'pol'),
('pol.1-11', 'Intel Core i3', '4gb', '172.26.48.35', 'Windows 10', NULL, 'VIOGEN', 'pol'),
('pol.1-12', 'Intel Core i3', '8gb', '172.26.55.7', 'Windows 10', 'No tiene copias', 'Protección Civil', 'pol'),
('pol.1-13', 'Intel Pentium D', '1gb', 'DHCP', 'Windows XP', 'No tiene copias ni antivirus', 'Protección Civil', 'pol'),
('pol.1-14', 'Intel Pentium Dual Core', '2gb', '172.26.49.200', 'Windows 7', 'No tiene copias ni antivirus', 'Protección Civil', 'pol'),
('pol.1-2', 'Intel Core 2 Duo', '4gb', '172.26.54.222', 'Windows 7', 'No tiene copias', 'María de los Ángeles Guerrero', 'pol'),
('pol.1-3', 'Intel Pentium Dual', '4gb', '172.26.48.88', 'Windows 7', 'No tiene copias ni antivirus', 'José Fernando Pérez Gil', 'pol'),
('pol.1-4', 'Intel Core i5', '8gb', '172.26.48.50', 'Windows 10', NULL, 'Manuel Gordillo Guerrero', 'pol'),
('pol.1-5', 'Intel Pentium Dual Core', '3gb', '172.26.48.152', 'Windows 7', 'No tiene copias, antivirus sin actualizar', 'Antonio Jose Duvisón', 'pol'),
('pol.1-6', 'Intel Core i3', '4gb', '172.26.48.160', 'Windows 10', NULL, 'Diego Amador', 'pol'),
('pol.1-7', 'Intel Core i3', '4gb', '172.26.48.66', 'Windows 7', 'No tiene copias, ni antivirus', 'Control', 'pol'),
('pol.1-8', 'Intel Core 2 Duo', '4gb', '172.26.48.78', 'Windows 7', 'No tiene copias', 'Atestados', 'pol'),
('pol.1-9', 'Intel Pentium ', '4gb', '172.26.48.55', 'Windows 7', 'No tiene copias', 'Atestados 2', 'pol'),
('rec.1-1', 'Intel Core i3', '8gb', '172.26.9.31', 'Windows 10', NULL, 'Pepe Ortega', 'rec'),
('rec.1-10', 'Intel Pentium', '1.50gb', '172.26.8.27', 'Windows 7', 'Antivirus sin licencia, no tiene copias', 'Carmen Gastón Osuna', 'rec'),
('rec.1-11', 'Intel Pentium Dual-Core', '4gb', '172.26.9.8', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Antonio Viera Aguilar', 'rec'),
('rec.1-12', 'Intel Pentium Dual-Core', '4gb', '172.26.8.90', 'Windows 7', 'No tiene copias ni antivirus, va lento', 'Antonia Vallejo Rodríguez', 'rec'),
('rec.1-13', 'Intel Core 2 Duo', '4gb', '172.26.10.55', 'Windows 7', 'No tiene antivirus', 'Jose David Ferrero', 'rec'),
('rec.1-14', 'Intel Pentium', '4gb', '172.26.9.101', 'Windows 10', 'No tiene copias, ni antivirus, va lento, ventiladores suenan mucho', 'Inmaculada Navarro Herrera', 'rec'),
('rec.1-15', 'Intel Core 2 Duo', '4gb', '172.26.8.108', 'Windows 10', NULL, 'Macarena González Cuadrado', 'rec'),
('rec.1-16', 'Intel Core i3', '4gb', '172.26.9.4', 'Windows 10', NULL, 'Maria José Fernández Rodríguez', 'rec'),
('rec.1-17', 'Intel Core i5', '8gb', '172.26.8.112', 'Windows 10', NULL, 'Manuel Fernando Sánchez Martín', 'rec'),
('rec.1-18', 'Intel Core i3', '8gb', '172.26.8.132', 'Windows 10', 'No tiene copias', 'María Soledad Guardado Bravo', 'rec'),
('rec.1-19', 'Intel Core i5', '8gb', '172.26.8.85', 'Windows 10', NULL, 'Jose Manuel Rodríguez', 'rec'),
('rec.1-2', 'Intel Core i5', '8gb', '172.26.8.199', 'Windows 10', 'No tiene copias', 'Ana Ramírez', 'rec'),
('rec.1-20', 'Intel Core 2 Quad', '2gb', '172.26.8.60', 'Windows 7', 'Antivirus ClaimWin, no tiene copias', 'Alejandro Domenech', 'rec'),
('rec.1-21', 'Intel Core i5', '8gb', '172.26.8.119', 'WIndows 10', NULL, 'Fernando Goldaracena Muñóz', 'rec'),
('rec.1-22', 'Intel Core i5', '8gb', '172.26.8.95', 'Windows 10', 'No tiene copias, va lento', 'Francisco Delgado Jiménez', 'rec'),
('rec.1-23', 'Intel Core 2 Duo', '4gb', '172.26.8.86', 'Windows 7', 'No tiene copias, ni antivirus', 'María del Valle Onetti', 'rec'),
('rec.1-24', 'Intel Core i3', '8gb', '172.26.8.26', 'Windows 10', 'No tiene copias', 'Isabel Sotillo', 'rec'),
('rec.1-25', 'Genuine Intel', '1.50gb', '172.26.8.80', 'Windows 7', 'Antivirus ClaimWin', 'Dolores Martín', 'rec'),
('rec.1-26', 'Intel Core i3', '4gb', '172.26.8.218', 'Windows 10', NULL, 'Fátima Jiménez', 'rec'),
('rec.1-27', 'Intel Core i5', '8gb', '172.26.8.98', 'Windows 10', NULL, 'Jose Antonio García', 'rec'),
('rec.1-28', 'Intel Pentium', '4gb', '172.26.8.20', 'Windows 7', NULL, 'María Luisa Rodríguez Jaime', 'rec'),
('rec.1-29', 'Intel Core 2 Duo', '4gb', '172.26.15.124', 'Windows 10', 'No tiene copias', 'Yolanda González Cuadrado', 'rec'),
('rec.1-3', 'Intel Pentium', '2gb', '172.26.8.68', 'Windows 7', 'No tiene copias', 'Jose Antonio Fernández', 'rec'),
('rec.1-30', 'Pentium Dual Core', '2gb', '172.26.8.50', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Joaquín', 'rec'),
('rec.1-4', 'Intel Core i3', '4gb', '172.26.8.88', 'Windows 10', 'No tiene copias, va lento', 'María del Valle González', 'rec'),
('rec.1-5', 'Intel Pentium Dual-Core', '4gb', '172.26.8.89', 'Windows 7', 'Antivirus ClaimWin, no tiene copias', 'Marisol Ramírez', 'rec'),
('rec.1-6', 'Intel Core i3', '8gb', '172.26.8.111', 'Windows 10', NULL, 'María del Valle Aguilar', 'rec'),
('rec.1-7', 'Intel Core i3', '4gb', '172.26.8.31', 'Windows 10', NULL, 'María del Valle Blanco', 'rec'),
('rec.1-8', 'Intel Core i5', '8gb', '172.26.9.7', 'Windows 10', 'No tiene copias', 'Jesús Laguna', 'rec'),
('rec.1-9', 'Intel Core i5', '8gb', '172.26.8.97', 'Windows 7', NULL, 'Rafael Reina Lozano', 'rec'),
('sed.1-1', 'Intel Core 2 Duo E7500 2.93GHz', '4gb', '172.26.24.29', 'Windows 10', 'Disco Sólido', 'Francisco González', 'sed'),
('sed.1-10', 'Intel Pentium 3.30GHz', '4gb', '172.26.24.220', 'Windows 10', NULL, 'Loli García', 'sed'),
('sed.1-11', 'Pentium DualCore', '1.50gb', '172.26.25.163', 'Windows 7', 'No tiene copia', 'Isabel Cosano', 'sed'),
('sed.1-12', 'Intel Penitum 3.00GHz', '4gb', '172.26.24.40', 'Windows 10', NULL, 'Rosario Reina (Personal)', 'sed'),
('sed.1-13', 'Intel Core i3-6100 3.70GHz', '4gb', '172.26.24.237', 'Windows 7', NULL, 'Planes de empleo 2', 'sed'),
('sed.1-14', 'Intel Core i3-6100 3.70GHz', '4gb', '172.26.25.21', 'Windows 10', 'No tiene copias', 'Planes de empleo 1', 'sed'),
('sed.1-15', 'Intel Core Duo', '2gb', '172.26.24.160', 'Windows 10', NULL, 'Antonio Díaz Ruíz', 'sed'),
('sed.1-16', 'Intel Pentium 2.80GHz', '3gb', '172.26.24.115', 'Windows 10', 'No tiene copias ni antivirus', 'Elena Madrid', 'sed'),
('sed.1-17', 'Intel Pentium 1.60GHz', '2gb', '172.26.28.67', 'Windows 10', 'Tiene antivirus ClaimWin, el de Windows no. No tiene copias', 'Prácticas Turismo', 'sed'),
('sed.1-18', 'Intel Pentium Dual Core 2.50GHz', '2gb', '172.26.24.190', 'Windows 7', 'No tiene antivirus ni copias', 'María José Sarmiento Fernández', 'sed'),
('sed.1-19', 'Intel Core i3-4150 3.50GHz', '4gb', '172.26.25.11', 'Windows 7', 'Antivirus instalado pero desactivado', 'María Dolores Mateos', 'sed'),
('sed.1-2', 'Intel Core i3', '4gb', '172.26.24.27', 'Windows 10', 'Disco Sólido', 'Miguel Alarcón', 'sed'),
('sed.1-20', 'Intel Pentium Dual 1.60GHz', '2gb', '172.26.25.95', 'Windows 10 LTSC', 'Antivirus ClaimWin, no tiene copias, el puerto PS/2 no funciona', '', 'sed'),
('sed.1-21', 'Intel Pentium Dual 3.00GHz', '4gb', '172.26.24.200', 'Windows 7', 'No tiene copias, ni antivirus', 'Milagrosa García', 'sed'),
('sed.1-22', 'Intel Core Duo 2.93GHz', '4gb', '172.26.27.71', 'Windows 10', 'No tiene antivirus ni copias', 'Lola Pérez Laguna', 'sed'),
('sed.1-23', 'Intel Core i3-4150 3.50GHz', '4gb', '172.26.24.65', 'Windows 7', 'No tiene antivirus ni copias', 'Rafael Blanco', 'sed'),
('sed.1-24', 'Intel Pentium Dual 3.00GHz', '2gb', '172.26.31.6', 'Windows 10', NULL, 'Olga María Gomis Jiménez', 'sed'),
('sed.1-25', 'Intel Core i3-7100', '4gb', '172.26.24.11', 'Windows 10', 'Última copia Diciembre de 2020', 'Berta María Viera Aguilar', 'sed'),
('sed.1-26', '-', '-', '-', 'Windows 7', 'No funciona ni ratón ni teclado, el monitor tiene estática', 'Sala 27', 'sed'),
('sed.1-27', 'Intel Core  i3-3220 3.30GHz', '4gb', '172.26.24.15', 'Windows 10', 'Antivirus sin licencia, no tiene copias', 'Antonio Alhama Reyes', 'sed'),
('sed.1-28', 'Intel Pentium 3.00GHz', '4gb', '172.26.24.125', 'Windows 10', 'No tiene copias', 'José Antonio Delgado Álvarez', 'sed'),
('sed.1-29', 'Intel Pentium Dual 2.50GHz', '2gb', 'DHCP', 'Windows 10', 'Antivirus ClaimWin (no funciona), no tiene copias', 'Teresa Rosado García', 'sed'),
('sed.1-3', 'Intel Xeon', '5gb', '172.26.24.26', 'Windows 10', 'Disco Sólido', 'Alonso Gómez', 'sed'),
('sed.1-30', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-31', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-32', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-33', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-34', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-35', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-36', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-37', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-38', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-39', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-4', 'Intel Pentium Dual E2140 1.60GHz', '3gb', '172.26.28.68', 'Windows 10', NULL, 'Gonzalo Borrueco', 'sed'),
('sed.1-40', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-41', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-42', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-43', 'Intel Core i3-7100 3.90GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus ClaimWin, no tiene copias', 'AULA 7', 'sed'),
('sed.1-44', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 10 (Pirata)', 'Antivirus AVG, sin copias', 'AULA 7 (Profesor)', 'sed'),
('sed.1-45', 'Intel Pentium 3.20GHz', '1gb', '172.26.24.226', 'Windows 7', 'Antivirus sin licencia, sin copias', 'Conserje', 'sed'),
('sed.1-46', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus ClaimWin, sin copias, hora cambiada', 'AULA 4', 'sed'),
('sed.1-47', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus ClaimWin, sin copias, hora cambiada', 'AULA 4', 'sed'),
('sed.1-48', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'No encuentra el registro de sistema de Windows (no arranca)', 'AULA 4', 'sed'),
('sed.1-49', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus ClaimWin, sin copias, hora cambiada', 'AULA 4', 'sed'),
('sed.1-5', 'Apple iMac Intel Core i5', '8gb', '172.26.24.31', 'macOS', '27 pulgadas', 'Ismael Martín Torres', 'sed'),
('sed.1-50', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus ClaimWin, sin copias, hora cambiada', 'AULA 4', 'sed'),
('sed.1-51', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'No enciende', 'AULA 4', 'sed'),
('sed.1-52', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus ClaimWin, sin copias, hora cambiada', 'AULA 4', 'sed'),
('sed.1-53', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus ClaimWin, sin copias, hora cambiada', 'AULA 4', 'sed'),
('sed.1-54', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Enciende pero no da señal de video', 'AULA 4', 'sed'),
('sed.1-55', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Antivirus AVG, sin copias', 'AULA 4', 'sed'),
('sed.1-56', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'No enciende', 'AULA 4', 'sed'),
('sed.1-57', '-', '-', 'DHCP', 'Windows 7', 'Enciende, pero da un error al intentar entrar en Windows', 'AULA 4', 'sed'),
('sed.1-58', '-', '-', 'DHCP', 'Windows 7', 'No enciende', 'AULA 4', 'sed'),
('sed.1-59', '-', '-', 'DHCP', 'Windows 7', 'Enciende pero no da señal de video', 'AULA 4', 'sed'),
('sed.1-6', 'Intel Core 2 Duo', '4gb', '172.26.24.21', 'Windows 10', NULL, 'Jose Luis Asencio', 'sed'),
('sed.1-60', '', '', 'DHCP', 'Windows 7', 'No enciende', 'AULA 4', 'sed'),
('sed.1-61', 'Intel Core i3', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus ni copias', 'AULA 3', 'sed'),
('sed.1-62', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-63', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-64', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-65', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-66', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-67', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-68', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-69', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-7', 'Intel Pentium D 2.80GHz', '2gb', '172.26.25.47', 'Windows 7', NULL, 'Rosario Reina Palacio', 'sed'),
('sed.1-70', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-71', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-72', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-73', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-74', 'Intel Core i3-6100 3.70GHz', '4gb', 'DHCP', 'Windows 10 (Pirata)', 'No tiene antivirus  ni copias', 'AULA 3', 'sed'),
('sed.1-75', 'Intel Core i3', '4gb', ' 172.26.25.29', 'Windows 10', 'No tiene copias', 'Fernando Moreno (Aula Mentor)', 'sed'),
('sed.1-76', 'Intel Pentium D', '2gb', 'DHCP', 'Windows 10', 'No tiene copias ni antivirus', 'Aula Mentor - pasa a turismo', 'sed'),
('sed.1-77', 'Intel Pentium Gold', '8gb', 'DHCP', 'Windows 10', 'No tiene copias', 'Aula Mentor', 'sed'),
('sed.1-78', 'Intel Core i3', '4gb', 'DHCP', 'Windows 7', 'No tiene copias ni antivirus', 'Aula Mentor', 'sed'),
('sed.1-79', '', '', 'DHCP', '', 'Enciende pero no funcionan los periféricos conectados', 'Aula Mentor', 'sed'),
('sed.1-8', 'Intel i5', '8gb', '172.26.25.225', 'Windows 7', NULL, 'José Fernando Pérez', 'sed'),
('sed.1-80', 'Intel Core i5', '8gb', 'DHCP', 'Windows 10', 'No tiene copias', 'Aula Mentor', 'sed'),
('sed.1-81', 'Intel Pentium D', '1gb', 'DHCP', 'Windows XP', 'No tiene copias ni antivirus', 'Aula Mentor', 'sed'),
('sed.1-82', 'Intel Core i5', '8gb', 'DHCP', 'Windows 10', 'No tiene copias', 'Aula Mentor', 'sed'),
('sed.1-83', 'Intel Core 2', '1gb', 'DHCP', 'Windows XP', 'No tiene copias ni antivirus', 'Aula Mentor', 'sed'),
('sed.1-84', 'Intel Pentium D', '1gb', 'DHCP', 'Windows XP', 'No tiene copias ni antivirus', 'Aula Mentor', 'sed'),
('sed.1-85', 'Intel Pentium Dual', '2gb', 'DHCP', '', 'No enciende', 'Aula Mentor', 'sed'),
('sed.1-86', 'Intel Core 2', '1gb', 'DHCP', '', 'Tiene clave', 'Aula Mentor', 'sed'),
('sed.1-87', 'Intel Pentium Dual', '2gb', 'DHCP', 'Windows 7', 'Tiene clave', 'Aula Mentor', 'sed'),
('sed.1-88', 'Intel Core i5', '8gb', 'DHCP', 'Windows 10', 'No hay cable HDMI para comprobarlo', 'Aula Mentor', 'sed'),
('sed.1-89', 'Intel Core i5', '8gb', 'DHCP', 'Windows 10', 'No hay cable HDMI para comprobarlo', 'Aula Mentor', 'sed'),
('sed.1-9', 'Core 2 DUO', '4gb', '172.26.24.219', 'Windows 10', NULL, 'Jose Luis Asencio', 'sed'),
('sed.1-90', 'Intel Core i5', '8gb', 'DHCP', 'Windows 10', 'No hay cable HDMI para comprobarlo', 'Aula Mentor', 'sed'),
('sed.1-91', 'Intel Core i3', '4gb', '172.26.24.162', 'Windows 10', 'Antivirus desactivado', 'Montse Fernández Laguna', 'sed'),
('sed.1-92', 'Intel Pentium Gold', '4gb', '172.26.25.35', 'Windows 10', 'No tiene copias', 'Jose Antonio Rodríguez', 'sed'),
('soc.1-1', 'Intel Core 2', '2gb', '172.26.84.10', 'Windows 10', 'No tiene antivirus ni copias', 'Carlos Alós García Ortega', 'soc'),
('soc.1-10', 'Intel Pentium', '4gb', '172.26.84.72', 'Windows 7', 'No tiene copias', 'Fernanda Ariza Villanueva', 'soc'),
('soc.1-11', 'Intel Core 2 Duo', '4gb', '172.26.84.23', 'Windows 7', 'No tienes copias, sin antivirus', 'Elena Reina López', 'soc'),
('soc.1-12', 'Intel Core i3', '4gb', '172.26.84.241', 'Windows 7', 'No tiene copias', 'Mari Ángeles Delgado Nieva', 'soc'),
('soc.1-13', 'Intel Core i3', '4gb', '172.26.84.5', 'Windows 7', 'No tiene copias ni antivirus', 'Mercedes Arroyo Parra', 'soc'),
('soc.1-14', 'Intel Pentium D', '2gb', '172.26.84.169', 'Windows 7', 'No tiene copias ni antivirus', 'Mari Carmen Jiménez', 'soc'),
('soc.1-15', 'AMD Athlon X2 Dual Core', '2gb', '172.26.84.240', 'Windows 7', 'No tiene copias', 'Antonio Alcántara Moreno', 'soc'),
('soc.1-16', 'Intel Core i3', '4gb', '172.26.84.4', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Maria del Carmen Martín Fajardo', 'soc'),
('soc.1-17', 'Genuine Intel', '2gb', '172.26.85.16', 'Windows 7', 'No tiene copias', 'Vigilante', 'soc'),
('soc.1-18', 'Intel Pentium Dual Core', '4gb', '172.26.83.15', 'Windows 10', 'No tiene copias, ni antivirus', 'Recepción', 'soc'),
('soc.1-19', 'Intel Core i3', '4gb', '172.26.84.6', 'Windows 7', 'No tiene copias', 'Inés María Fernández', 'soc'),
('soc.1-2', 'Intel Core i3', '4gb', '172.26.80.11', 'Windows 10', 'Portátil ASUS, no tiene copias, va muy lento', 'María del Carmen Cardoso', 'soc'),
('soc.1-20', 'Intel Celeron', '1gb', '172.26.84.73', 'Windows XP', 'No tiene copia ni antivirus', 'Natalia Antelo Carmona', 'soc'),
('soc.1-21', 'AMD Sempron', '1gb', '172.26.81.49', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Mar Delgado Martín', 'soc'),
('soc.1-3', 'Intel Core 2', '1.5gb', '172.26.84.84', 'Windows 7', 'No tiene copias, antivirus sin licencia', 'Isabel Rodríguez García', 'soc'),
('soc.1-4', 'Intel Core 2', '2.5gb', '172.26.84.25', 'Windows 7', 'No tiene antivirus ni copias', 'Javier González', 'soc'),
('soc.1-5', 'Intel Core i3', '4gb', '172.26.84.82', 'Windows 10', 'Portátil ASUS. No tiene copias', 'Maite García Ruíz', 'soc'),
('soc.1-6', 'Intel Pentium Gold', '4gb', '172.26.86.13', 'Windows 10', 'No tiene copias', 'Pilar Expósito', 'soc'),
('soc.1-7', 'Intel Core i3', '4gb', '172.26.84.15', 'Windows 10 N', '', 'Gloria García Fernández', 'soc'),
('soc.1-8', 'Intel Core i3', '4gb', '172.26.84.7', 'Windows 10 N', '', 'Maria Cristina Hidalgo Delgado', 'soc'),
('soc.1-9', 'Intel Core 2', '2gb', '172.26.84.195', 'Windows 10', 'No tiene copias, antivirus ClaimWin, va lento', 'Rafaela Aguilar Urbano', 'soc');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`usuario`);

--
-- Indices de la tabla `edificios`
--
ALTER TABLE `edificios`
  ADD PRIMARY KEY (`codigo_edificio`),
  ADD UNIQUE KEY `departamento` (`departamento`);

--
-- Indices de la tabla `impresoras_escaneres`
--
ALTER TABLE `impresoras_escaneres`
  ADD PRIMARY KEY (`codigo_impresora_escaner`),
  ADD KEY `codigo_edificio` (`codigo_edificio`);

--
-- Indices de la tabla `monitores`
--
ALTER TABLE `monitores`
  ADD PRIMARY KEY (`codigo_monitor`),
  ADD KEY `codigo_edificio` (`codigo_edificio`);

--
-- Indices de la tabla `ordenadores`
--
ALTER TABLE `ordenadores`
  ADD PRIMARY KEY (`codigo_ordenador`),
  ADD KEY `codigo_edificio` (`codigo_edificio`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `impresoras_escaneres`
--
ALTER TABLE `impresoras_escaneres`
  ADD CONSTRAINT `impresoras_escaneres_ibfk_1` FOREIGN KEY (`codigo_edificio`) REFERENCES `edificios` (`codigo_edificio`);

--
-- Filtros para la tabla `monitores`
--
ALTER TABLE `monitores`
  ADD CONSTRAINT `monitores_ibfk_1` FOREIGN KEY (`codigo_edificio`) REFERENCES `edificios` (`codigo_edificio`);

--
-- Filtros para la tabla `ordenadores`
--
ALTER TABLE `ordenadores`
  ADD CONSTRAINT `ordenadores_ibfk_1` FOREIGN KEY (`codigo_edificio`) REFERENCES `edificios` (`codigo_edificio`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
