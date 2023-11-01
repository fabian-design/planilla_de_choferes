-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 22-07-2023 a las 15:38:51
-- Versión del servidor: 10.5.19-MariaDB-cll-lve
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `u213578437_remis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dia_constante`
--

CREATE TABLE `dia_constante` (
  `id_dia` int(11) NOT NULL,
  `dia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dia_constante`
--

INSERT INTO `dia_constante` (`id_dia`, `dia`) VALUES
(1, '2023-07-22');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_chofer` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `auto` text NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `dinero` int(11) NOT NULL,
  `llegada` int(11) NOT NULL,
  `longitud` float NOT NULL DEFAULT 0,
  `latitud` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_chofer`, `nombre`, `auto`, `activo`, `porcentaje`, `dinero`, `llegada`, `longitud`, `latitud`) VALUES
(11, 'fabricio pasinato', 'fiat siena', 1, 18, 0, 0, -60.6609, -32.9392),
(12, 'ricardo', 'fiat fiorino', 1, 10, 0, 0, -60.6418, -32.946),
(13, 'Jose', 'Fiat fiorino', 1, 12, 0, 0, -58.7609, -34.6795),
(14, 'pep', 'siena rojo', 0, 20, 0, 0, 0, 0),
(15, '', '', 0, 0, 0, 0, -58.6969, -34.6493),
(16, 'jose', 'fiat fiorino', 1, 0, 0, 0, -58.7028, -34.6857),
(17, 'dario', 'fiat fiorino', 1, 0, 0, 0, -58.703, -34.6994),
(18, 'RICARDO', 'FIAT FIORINO', 0, 0, 0, 0, 0, 0),
(19, 'PACHU', 'RENAULT MASTER', 1, 0, 0, 0, 0, 0),
(22, 'mauro', 'ford focus', 1, 25, 0, 0, 0, 0),
(23, 'alan', 'ford fiesta', 1, 15, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planilla`
--

CREATE TABLE `planilla` (
  `id_planilla` int(11) NOT NULL,
  `hora_salida` text NOT NULL,
  `salida` text NOT NULL,
  `destino` text NOT NULL,
  `hora_llegada` text NOT NULL,
  `importe` int(11) NOT NULL,
  `dinero_variable` int(11) NOT NULL,
  `fecha` date NOT NULL DEFAULT current_timestamp(),
  `id_chofer` int(11) NOT NULL,
  `devolucion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planilla`
--

INSERT INTO `planilla` (`id_planilla`, `hora_salida`, `salida`, `destino`, `hora_llegada`, `importe`, `dinero_variable`, `fecha`, `id_chofer`, `devolucion`) VALUES
(27, '16:25', 'barrancas', 'HUMBERTO 1° 250, CABA', '03:40', 500, 0, '2021-04-04', 11, NULL),
(28, '', '', '', '', 0, 0, '2023-01-08', 12, NULL),
(29, '22:15', 'agencia', 'carrillo', '23:20', 3500, 0, '2023-01-08', 12, NULL),
(30, '22:15', 'agencia', 'carrillo', '23 20', 1500, 0, '2023-01-08', 12, NULL),
(31, '22:15', 'agencia', 'carrillo', '23 20', 1700, 0, '2023-01-08', 11, NULL),
(32, '22:15', 'agencia', 'carrillo', '23 20', 17000, 0, '2023-01-08', 12, NULL),
(33, '22:15', 'agencia', 'carrillo', '23 20', 1500, 0, '2023-01-08', 12, NULL),
(34, '08:00', 'Libertad', 'Paladar negro', '10:00', 2000, 0, '2023-01-08', 13, NULL),
(35, '08:00', 'Libertad', 'Paladar negro', '10:00', 2000, 0, '2023-01-08', 13, NULL),
(36, '16:20', 'ZONA SUR', 'ZONA NORTE', '17:15', 800, 0, '2023-01-11', 11, 'me pago 20000 por mercado pago'),
(37, '16:20', 'ZONA SUR', 'ZONA NORTE', '17:15', 900, 0, '2023-01-11', 11, NULL),
(38, '16:20', 'ZONA SUR', 'ZONA NORTE', '17:15', 500, 0, '2023-01-11', 11, NULL),
(39, '16:20', 'ZONA SUR', 'ZONA NORTE', '17:15', 200, 0, '2023-01-14', 12, NULL),
(43, '8:00', 'libertad', 'parque', '9:00', 1000, 0, '2023-01-22', 15, NULL),
(46, '8:00', 'libertad', 'parque', '9:00', 2500, 0, '2023-01-22', 13, NULL),
(47, '15:00', 'libertad', 'paladar negro', '15:45', 2700, 0, '2023-01-22', 13, NULL),
(48, '08:00', 'libertad', 'mostaza merlo', '11:00', 16000, 0, '2023-01-30', 16, NULL),
(49, '08:00', 'libertad', 'colegio alberdi', '11:00', 17050, 0, '2023-01-30', 16, NULL),
(50, '08:00', 'libertad', 'paladar negro', '11:00', 61030, 0, '2023-01-30', 16, NULL),
(51, '08:00', 'libertad', 'mostaza merlo', '11:00', 25000, 0, '2023-02-02', 16, NULL),
(52, '08:00', 'libertad', 'colegio alberdi', '11:00', 56000, 0, '2023-02-02', 16, NULL),
(54, '16:20', 'ZONA SUR', 'ZONA NORTE', '17:15', 3444, 0, '2023-02-11', 16, 'ugjhhvgvhg'),
(55, '15:00', 'libertad', 'paladar negro', '9:00', 20000, 0, '2023-02-12', 16, NULL),
(56, '15:00', 'libertad', 'paladar negro', '9:00', 200000, 0, '2023-02-12', 16, NULL),
(57, '', '', '', '', 0, 0, '2023-02-12', 17, 'me devolvio 1 zanahoria'),
(58, '15:00', 'libertad', 'parque', '9:00', 15000, 0, '2023-02-13', 17, 'me pago 20000 por mercado pago y dede para cuenta corriente, el sabado paga por tranferencia, devolvio los vacios'),
(59, '8:00', 'libertad', 'parque', '9:00', 15000, 0, '2023-02-13', 17, 'me pago con mp, '),
(60, '8:00', 'libertad', 'parque', '9:00', 50000, 0, '2023-02-13', 17, NULL),
(61, '9', 'libertad', 'paladar', '13', 50000, 0, '2023-02-13', 17, 'me pago 50000 a cuenta, paga por transf el sabado, me pago la boleta anterior, devolvio una acelga, mas 5 vacios, descontar el envio, paga 2 boletas juntas, paga 1500 por mp el resto efectivo'),
(63, '08:00', 'libertad', 'manolo', '12:32', 5560, 0, '2023-02-23', 12, 'pago (efectivo)'),
(64, '08:00', 'libertad', 'campora', '12:32', 25800, 0, '2023-02-23', 12, 'pago (efectivo)'),
(65, '08:00', 'libertad', '12 DE OCTUBRE 103 MINIMER', '12:32', 9450, 0, '2023-02-23', 12, 'pago (efectivo)'),
(66, '08:00', 'libertad', 'ESTELA MARTIN RODRIGUEZ', '12:32', 6950, 0, '2023-02-23', 12, 'mp($5.200) y ($1.750) efectivo'),
(67, '08:00', 'libertad', 'LA COMIDA DE LA NONA', '12:32', 11450, 0, '2023-02-23', 12, 'mercado pago'),
(68, '08:00', 'libertad', 'LA GALESA MERLO', '12:32', 19840, 0, '2023-02-23', 12, 'pago (efectivo)'),
(70, '10:30', 'libertad', 'CONFITERIA ARIME (122)', '17:00', 14300, 0, '2023-02-23', 16, 'pago (efectivo)'),
(71, '10:30', 'LIBERTAD', 'NUESTRA SEÑORA DEL BUEN VIAJE', '17:00', 13450, 0, '2023-02-23', 16, 'pago (efectivo)'),
(72, '10:30', 'LIBERTAD', 'TU COCINA', '17:00', 20300, 0, '2023-02-23', 16, 'pago (efectivo)'),
(73, '10:30', 'LIBERTAD', 'RODRIGUEZ PEÑA 919', '17:00', 21075, 0, '2023-02-23', 16, 'pago (efectivo)'),
(74, '10:30', 'LIBERTAD', 'BERMEJO 4981', '17:00', 11250, 0, '2023-02-23', 16, 'pago (efectivo)'),
(75, '10:30', 'LIBERTAD', 'VIANDAS ONDA VERDE', '17:00', 47900, 0, '2023-02-23', 16, 'p. el sabado'),
(76, '10:30', 'LIBERTAD', 'JL ROTISERIA', '17:00', 8100, 0, '2023-02-23', 16, 'pago (efectivo)'),
(77, '10:30', 'LIBERTAD', 'USPALLATA 2230', '17:00', 6500, 0, '2023-02-23', 16, 'mercado pago'),
(78, '10:30', 'LIBERTAD', 'LA POSITIVA', '17:00', 18400, 0, '2023-02-23', 16, 'paga x transferencia'),
(79, '10:30', 'LIBERTAD', 'SAN MARTIN 1736', '17:00', 6650, 0, '2023-02-23', 16, 'pago (efectivo)'),
(80, '10:30', 'LIBERTAD', 'NOBEL 1280', '17:00', 7600, 0, '2023-02-23', 16, 'pago (efectivo)'),
(81, '10:30', 'LIBERTAD', 'FAMILY COMIDAS CASERAS', '17:00', 12330, 0, '2023-02-23', 16, 'pago (efectivo)'),
(82, '10:30', 'LIBERTAD', 'ALVARADO 668', '17:00', 8700, 0, '2023-02-23', 12, 'pago (efectivo)'),
(83, '10:30', 'LIBERTAD', 'ROMERO 3322', '17:00', 25000, 0, '2023-02-23', 12, 'pago (efectivo)'),
(84, '10:30', 'LIBERTAD', 'BEBEDERO 2857', '17:00', 6500, 0, '2023-02-23', 12, 'pago (efectivo)'),
(85, '10:30', 'LIBERTAD', 'SUPERCHINO DEL PALOMO', '17:00', 11400, 0, '2023-02-23', 12, 'pago (efectivo)'),
(86, '10:30', 'LIBERTAD', 'SUPERCHINO PONTEVEDRA', '17:00', 14000, 0, '2023-02-23', 12, 'paga mañana'),
(87, '10:30', 'LIBERTAD', 'DE ROMA 1753', '17:00', 6850, 0, '2023-02-23', 12, 'pago (efectivo)'),
(88, '10:30', 'LIBERTAD', 'CRISTINA-SENILLOSA 830', '17:00', 8810, 0, '2023-02-23', 12, 'paga x transferencia'),
(89, '10:30', 'LIBERTAD', 'OROÑO ESQ. PARIS', '17:00', 9600, 0, '2023-02-23', 12, 'paga x mercado pago'),
(90, '10:30', 'LIBERTAD', 'HONDURAS 759', '17:00', 17500, 0, '2023-02-23', 12, 'pago (efectivo)'),
(91, '10:30', 'LIBERTAD', 'MURILLO 1720', '17:00', 23200, 0, '2023-02-23', 12, 'pago (efectivo)'),
(92, '10:30', 'LIBERTAD', 'RUTH-BEBEDERO 1815', '17:00', 14600, 0, '2023-02-23', 12, 'mp($7.500) y ($7.100) efectivo'),
(93, '10:30', 'LIBERTAD', 'AV EVA PERON 3985', '17:00', 12750, 0, '2023-02-23', 16, 'mercado pago'),
(94, '10:30', 'LIBERTAD', 'JUANITA', '17:00', 11250, 0, '2023-02-23', 16, 'pago (efectivo)'),
(95, '16:00', 'LIBERTAD', 'HONDURAS 759', '18:00', 9200, 0, '2023-02-23', 16, 'pago (efectivo)'),
(97, '8:00', 'libertad', 'GRANJA EL JAGUEL', '11:30', 7450, 0, '2023-02-25', 16, 'mercado pago'),
(99, '8:00', 'libertad', 'NOBEL', '11:30', 6800, 0, '2023-02-25', 16, 'pago (efectivo)'),
(102, '8:00', 'libertad', 'PANADERIA LA PLAZA', '11:30', 7200, 0, '2023-02-25', 16, 'pago (efectivo)'),
(103, '8:00', 'libertad', 'PIZZERIA Y ROTISERIA MANOLO', '11:30', 12060, 0, '2023-02-25', 16, 'pago (efectivo)'),
(104, '8:00', 'libertad', 'MONTAZA MERLO', '11:30', 20700, 0, '2023-02-25', 16, 'pago (efectivo) $22.873'),
(105, '8:00', 'libertad', 'MORGAN HOUSE MERLO', '11:30', 4900, 0, '2023-02-25', 16, 'DEBE(4900) PAGO ($5.600)EFECTIVO'),
(106, '11:30', 'libertad', 'HORNERO', '13:30', 34550, 0, '2023-02-25', 16, 'pago (efectivo)28.050 (13 VACIOS)'),
(107, '11:30', 'libertad', 'SAN MARTIN 1736', '13:30', 8450, 0, '2023-02-25', 16, 'pago (efectivo)'),
(108, '11:30', 'libertad', 'LOURDES CORONDA 1855', '13:30', 13100, 0, '2023-02-25', 16, '4000 MP (9.100 EFECTIVO)'),
(109, '11:30', 'libertad', 'CRISTINA SENILLOSA 830', '13:30', 16300, 0, '2023-02-25', 16, 'pago (efectivo)'),
(110, '13:30', 'libertad', 'ROMERO 3322', '15:00', 24150, 0, '2023-02-25', 16, 'pago ($22.500 efectivo)SE DESCONTO 1650'),
(111, '13:30', 'libertad', 'SUPER MERLO GOMEZ', '15:00', 17750, 0, '2023-02-25', 16, 'pago (efectivo)'),
(112, '13:30', 'libertad', 'COSTA RICA 1735', '15:00', 10050, 0, '2023-02-25', 16, 'pago (efectivo)'),
(113, '13:30', 'libertad', 'MURILLO 1720', '15:00', 36900, 0, '2023-02-25', 16, 'pago (efectivo)'),
(114, '8:00', 'libertad', 'TALCAHUANO 1140', '11:30', 15100, 0, '2023-02-25', 12, 'pago ($ 9.750 efectivo) DESCONTO (1750,2000,1600)'),
(115, '8:00', 'libertad', 'CASTELLI 982', '11:30', 14250, 0, '2023-02-25', 12, 'pago (efectivo)'),
(116, '8:00', 'libertad', 'OROÑO ESQ PARIS', '11:30', 8000, 0, '2023-02-25', 12, 'mercado pago'),
(117, '8:00', 'libertad', 'ROMINA BOEDO 763', '11:30', 21950, 0, '2023-02-25', 12, 'pago (efectivo)'),
(118, '8:00', 'libertad', 'SUPERCHINO DEL PALOMO ', '11:30', 10100, 0, '2023-02-25', 12, 'pago (efectivo)'),
(119, '8:00', 'libertad', '12 DE OCTUBRE 103 MINIMER', '11:30', 7950, 0, '2023-02-25', 12, 'pago (efectivo)'),
(120, '8:00', 'libertad', 'TU COCINA ', '11:30', 14100, 0, '2023-02-25', 12, 'pago (efectivo)'),
(121, '11:30', 'libertad', 'LOS POZOS 555', '13:30', 7800, 0, '2023-02-25', 12, 'pago (efectivo)'),
(122, '11:30', 'libertad', 'CONFITERIA ARIME', '13:30', 11850, 0, '2023-02-25', 12, 'pago (efectivo)'),
(123, '11:30', 'libertad', 'VIANDAS ONDA VERDE ', '13:30', 70600, 0, '2023-02-25', 12, 'pago ($ 179.000 efectivo)'),
(124, '11:30', 'libertad', 'MABEL I.DE BARNES 350', '13:30', 9550, 0, '2023-02-25', 12, 'pago (efectivo)'),
(125, '11:30', 'libertad', 'SENILLOSA 309', '13:30', 22600, 0, '2023-02-25', 12, 'pago ($ 8.600 efectivo) MP 1400'),
(126, '13:30', 'libertad', 'MIRTA CARITAS', '15:00', 4180, 0, '2023-02-25', 12, 'pago (efectivo)'),
(127, '13:30', 'libertad', 'MERCADITO DE ADY NAZCA', '15:00', 43440, 0, '2023-02-25', 12, 'pago ($ 28.340 efectivo) MP 15.000'),
(128, '13:30', 'libertad', 'SUPERMERCADO CHINO PONTEVEDRA', '15:00', 25150, 0, '2023-02-25', 12, 'pago (efectivo)'),
(129, '13:30', 'libertad', 'CENTRO BARRIAL GUADALUPE', '15:00', 13500, 0, '2023-02-25', 12, 'CUENTA CORRIENTE'),
(130, '13:30', 'libertad', 'DE ROMA 1753', '15:00', 8200, 0, '2023-02-25', 12, 'pago (efectivo)'),
(131, '8:00', 'libertad', 'PALADAR NEGRO - PASADO', '13:30', 37420, 0, '2023-02-27', 12, '(22/02)pago ($ 134.350 efectivo) desconto 800(rucula)'),
(133, '8:00', 'libertad', 'CAMPORA 1435 - PASADO', '13:30', 23950, 0, '2023-02-27', 12, 'pago (efectivo)'),
(134, '8:00', 'libertad', 'LOS POZOS 555 - PASADO', '13:30', 8500, 0, '2023-02-27', 12, 'pago (efectivo)'),
(135, '8:00', 'libertad', 'MOSTAZA MERLO - PASADO', '13:30', 18300, 0, '2023-02-27', 12, 'pago (efectivo) $20.221'),
(136, '8:00', 'libertad', 'YIYO DELICATESSEN - PASADO', '13:30', 8150, 0, '2023-02-27', 12, 'pago (efectivo$ 3000) debe $5.150'),
(137, '8:00', 'libertad', 'AUTOSERVICIO FOX - PASADO', '13:30', 12100, 0, '2023-02-27', 17, 'pago (efectivo)'),
(138, '8:00', 'libertad', 'HOGAR BELEN - PASADO', '13:30', 94570, 0, '2023-02-27', 17, 'paga x transferencia'),
(139, '8:00', 'libertad', '12 DE OCTUBRE 103 MINIMER - PASADO', '13:30', 11200, 0, '2023-02-27', 17, 'paga x transferencia ($9600) desconto $1600'),
(140, '13:30', 'libertad', 'QUINIELA CARLIN ORAN - PASADO', '15:00', 20750, 0, '2023-02-27', 12, 'pago (efectivo)'),
(141, '11:30', 'libertad', 'DE ROMA 1753 - PASADO', '15:00', 7450, 0, '2023-02-27', 12, 'pago (efectivo)'),
(142, '13:30', 'libertad', 'SUPERMERCADO CHINO PONTEVEDRA - PASADO', '15:00', 16850, 0, '2023-02-27', 12, 'pago (efectivo)'),
(143, '13:30', 'libertad', 'ROMERO 3322 - PASADO', '15:00', 29850, 0, '2023-02-27', 12, 'pago (efectivo)'),
(144, '8:00', 'libertad', 'PANADERIA SAN CAYETANO  - PASADO', '11:30', 23170, 0, '2023-02-27', 16, 'pago (efectivo)'),
(145, '8:00', 'libertad', 'FAMILY COMIDAS CASERAS - PASADO', '11:30', 36900, 0, '2023-02-27', 16, 'pago (efectivo)$32.940'),
(146, '8:00', 'libertad', 'VIANDAS ONDA VERDE  - PASADO', '11:30', 5250, 0, '2023-02-27', 16, 'p. el sabado'),
(147, '8:00', 'libertad', 'PILCOMAYO 3337 - PASADO', '11:30', 49500, 0, '2023-02-27', 16, 'paga x transferencia $51.600'),
(148, '8:00', 'libertad', 'JL ROTISERIA - PASADO', '11:30', 14000, 0, '2023-02-27', 16, 'pago (efectivo)'),
(149, '8:00', 'libertad', 'COLEGIO ALBERDI - PASADO', '11:30', 14050, 0, '2023-02-27', 16, 'paga x transferencia'),
(150, '11:30', 'libertad', 'HORNERO - PASADO', '13:30', 52600, 0, '2023-02-27', 17, 'pago (efectivo)'),
(151, '14:30', 'libertad', 'SAN MARTIN 1736 - PASADO', '16:30', 6850, 0, '2023-02-27', 17, 'pago (efectivo)'),
(152, '14:30', 'libertad', 'PERICON 1191 - PASADO', '16:30', 11000, 0, '2023-02-27', 16, 'pago ($7.000 efectivo) MP $4.000'),
(153, '14:30', 'libertad', 'CARRASCO ESQ NECOCHEA - PASADO', '16:30', 16900, 0, '2023-02-27', 16, 'pago (efectivo)'),
(154, '14:30', 'libertad', 'BALBASTRO 3321 - PASADO', '16:30', 6260, 0, '2023-02-27', 16, 'pago (efectivo)'),
(155, '14:30', 'libertad', 'WILIANS MORRIS 1326 - PASADO', '16:30', 22650, 0, '2023-02-27', 16, 'pago (efectivo)'),
(156, '14:30', 'libertad', 'CASTELLI 982 - PASADO', '16:30', 13900, 0, '2023-02-27', 12, 'pago (efectivo)'),
(157, '14:30', 'libertad', 'CRISTINA SENILLOSA 830 - PASADO', '16:30', 9050, 0, '2023-02-27', 12, 'pago (efectivo)'),
(158, '14:30', 'libertad', 'BARNES 450 - PASADO', '16:30', 18250, 0, '2023-02-27', 12, 'pago (efectivo)'),
(160, '14:30', 'libertad', 'ALVARADO 668 - PASADO', '16:30', 13150, 0, '2023-02-27', 12, 'pago (efectivo)'),
(161, '8:00', 'libertad', 'ESCUELA ESPECIAL ANELEY', '11:30', 25130, 0, '2023-02-28', 16, 'paga x transferencia'),
(163, '8:00', 'libertad', 'VIANDAS ONDA VERDE ', '11:30', 89300, 0, '2023-02-28', 16, 'p. el sabado'),
(164, '8:00', 'libertad', 'SABRINA LOS ROBLES', '11:30', 9970, 0, '2023-02-28', 16, 'pago (efectivo)'),
(165, '8:00', 'libertad', 'AV EVA PERON 3985', '11:30', 12900, 0, '2023-02-28', 17, 'pago (efectivo)'),
(166, '8:00', 'libertad', 'MERCADITO LOS LUISES - C.C.', '11:30', 33850, 0, '2023-02-28', 12, 'pago ($ 36.100 efectivo)'),
(167, '8:00', 'libertad', 'EL AMANECER CASACUBERTA- C.C.', '11:30', 20220, 0, '2023-02-28', 12, 'pago (efectivo)'),
(168, '8:00', 'libertad', 'HOGAR BELEN- C.C.', '11:30', 5600, 0, '2023-02-28', 12, 'paga x transferencia'),
(169, '8:00', 'libertad', 'HOGAR CASASOL- C.C.', '11:30', 12600, 0, '2023-02-28', 12, 'paga x transferencia'),
(170, '8:00', 'libertad', 'TU COCINA - C.C.', '11:30', 23650, 0, '2023-02-28', 12, 'pago (efectivo)'),
(171, '8:00', 'libertad', 'BERMEJO 4981 - C.C.', '11:30', 12550, 0, '2023-02-28', 12, 'pago (efectivo)'),
(172, '8:00', 'libertad', 'COLEGIO JOSE MANUEL ESTR - C.C.', '11:30', 13460, 0, '2023-02-28', 12, 'paga x transferencia'),
(174, '8:00', 'libertad', 'HOGAR EL AMANECER', '11:30', 16240, 0, '2023-02-28', 16, 'pago (efectivo)'),
(175, '11:30', 'libertad', 'HONDURAS 759', '13:30', 17300, 0, '2023-02-28', 16, 'pago (efectivo)'),
(176, '11:30', 'libertad', 'NAZCA 378', '13:30', 13350, 0, '2023-02-28', 16, 'pago (efectivo)'),
(177, '11:30', 'libertad', 'GIBRALTAR 2678', '13:30', 13600, 0, '2023-02-28', 16, 'pago (efectivo)'),
(178, '11:30', 'libertad', 'MABEL I.DE BARNES 350', '13:30', 8800, 0, '2023-02-28', 16, 'pago (efectivo)'),
(179, '11:30', 'libertad', 'COLOMBIA 1390', '13:30', 10100, 0, '2023-02-28', 16, 'pago (efectivo)'),
(180, '11:30', 'libertad', 'PAPAI PONTEVEDRA', '13:30', 10900, 0, '2023-02-28', 16, 'paga x transferencia'),
(181, '13:30', 'libertad', 'MORGAN HOUSE MERLO - C.C.', '15:00', 6580, 0, '2023-02-28', 12, 'pago (efectivo)'),
(182, '13:30', 'libertad', 'MIL PUNTOS - C.C.', '15:00', 13970, 0, '2023-02-28', 12, 'pago (efectivo)'),
(183, '13:30', 'libertad', 'SADE ELECTROMECANICA - C.C.', '15:00', 16400, 0, '2023-02-28', 12, 'pago ($ 18.122 efectivo)'),
(184, '16:30', 'libertad', 'GRISELDA YEGROS 3240 - C.C.', '17:20', 10550, 0, '2023-02-28', 12, 'pago (efectivo)'),
(185, '16:30', 'libertad', 'HONDURAS 759 - C.C.', '17:20', 9500, 0, '2023-02-28', 12, 'pago (efectivo) A FAVOR $ 100'),
(187, '16:30', 'libertad', 'KIOSCO EL TATO GARMENDIA', '17:20', 13000, 0, '2023-02-28', 16, 'pago (efectivo)'),
(188, '16:30', 'libertad', 'MURILLO 1720', '17:20', 17200, 0, '2023-02-28', 16, 'pago (efectivo)'),
(189, '16:30', 'libertad', 'ROMERO 3322', '17:20', 19850, 0, '2023-02-28', 16, 'pago (efectivo)'),
(190, '16:30', 'libertad', 'AMADO NERVO 3910', '17:20', 10400, 0, '2023-02-28', 16, 'pago (efectivo)'),
(191, 'TODOS', 'PASADOS', 'A', 'CUENTAS CORRIENTES', 0, 0, '2023-02-28', 16, NULL),
(192, '', '', '', 'CUENTA CORRIENTE', 0, 0, '2023-02-28', 17, NULL),
(193, '8:00', 'libertad', 'YIYO DELICATESSEN', '11:30', 14100, 0, '2023-03-02', 12, 'pago ($ 4.000 efectivo) DEBE $ 10.100'),
(194, '8:00', 'libertad', 'LOS POZOS 555', '11:30', 10250, 0, '2023-03-02', 12, 'pago (efectivo)'),
(195, '8:00', 'libertad', '12 DE OCTUBRE 103 MINIMER', '11:30', 9350, 0, '2023-03-02', 12, 'paga x transferencia'),
(196, '8:00', 'libertad', 'TU COCINA ', '11:30', 14500, 0, '2023-03-02', 12, 'pago (efectivo)'),
(197, '8:00', 'libertad', 'PIZZERIA Y ROTISERIA MANOLO', '11:30', 3500, 0, '2023-03-02', 12, 'pago (efectivo)'),
(198, '8:00', 'libertad', 'PALADAR NEGRO', '11:30', 26000, 0, '2023-03-02', 12, 'pago ($37.420 efectivo) FECHA 27/2/23'),
(199, '11:30', 'libertad', 'AUTOSERVICIO FOX', '15:00', 19950, 0, '2023-03-02', 12, 'pago ($ 16.450 efectivo)'),
(200, '11:30', 'libertad', 'HONDURAS 759', '15:00', 27900, 0, '2023-03-02', 12, '$ 27.900 PAGA X TARNSFERENCIA'),
(201, '8:00', 'libertad', 'PATAGONIA LELOIR', '11:30', 11300, 0, '2023-03-02', 16, 'pago (efectivo)'),
(202, '8:00', 'libertad', 'RODRIGUEZ PEÑA 919', '13:30', 10225, 0, '2023-03-02', 16, 'pago (efectivo)'),
(203, '8:00', 'libertad', 'FAMILY COMIDAS CASERAS ', '11:30', 30300, 0, '2023-03-02', 16, 'pago (efectivo)'),
(204, '8:00', 'libertad', 'SABRINA LOS ROBLES', '11:30', 7600, 0, '2023-03-02', 16, 'pago (efectivo)'),
(205, '8:00', 'libertad', 'VIANDAS ONDA VERDE ', '11:30', 14800, 0, '2023-03-02', 16, 'p. el sabado'),
(206, '8:00', 'libertad', 'JL ROTISERIA', '11:30', 8350, 0, '2023-03-02', 16, 'pago (efectivo)'),
(207, '12:30', 'libertad', 'COLEGIO JOSE MANUEL ESTR', '15:00', 27500, 0, '2023-03-02', 12, 'paga x transferencia'),
(208, '12:30', 'libertad', 'CONFITERIA ARIME', '15:00', 11400, 0, '2023-03-02', 12, 'pago (efectivo)'),
(209, '12:30', 'libertad', 'MITRE 2005', '15:00', 5525, 0, '2023-03-02', 12, 'pago (efectivo)'),
(210, '12:30', 'libertad', 'PIZZERIA LA REDONDA', '15:00', 16250, 0, '2023-03-02', 12, 'paga x transferencia'),
(211, '12:30', 'libertad', 'OROÑO ESQ PARIS', '15:00', 9150, 0, '2023-03-02', 16, ' PAGO X MP'),
(212, '12:30', 'libertad', 'ISABEL', '15:00', 23650, 0, '2023-03-02', 16, 'pago (efectivo)'),
(213, '12:30', 'libertad', 'LOURDES CORONDA 1855', '15:00', 14650, 0, '2023-03-02', 16, 'pago ($ 8.000 efectivo) MP $ 6.650'),
(214, '12:30', 'libertad', 'NAZCA 1850', '15:00', 7200, 0, '2023-03-02', 16, 'paga x transferencia'),
(215, '12:30', 'libertad', 'WALTER PONTEVEDRA', '15:00', 24850, 0, '2023-03-02', 16, 'paga x transferencia'),
(216, '12:30', 'libertad', 'DE ROMA 1753', '15:00', 9450, 0, '2023-03-02', 16, 'pago (efectivo)'),
(217, '12:30', 'libertad', 'PILAR 2758', '15:00', 21015, 0, '2023-03-02', 16, 'pago ($ 27.765 efectivo)'),
(218, '13:30', 'libertad', 'A. DEL VALLE 4005', '15:00', 7050, 0, '2023-03-02', 17, 'pago (efectivo)'),
(220, '13:30', 'libertad', 'WILIANS MORRIS 1326', '15:00', 15400, 0, '2023-03-02', 12, 'pago ($ 1.400 efectivo) $ 14.000 TRANSFERENCIA'),
(221, '13:30', 'libertad', 'RUTH BEBEDERO 1815', '15:00', 9000, 0, '2023-03-02', 12, 'pago ($ 4000 efectivo) $5000 MP '),
(222, '13:30', 'libertad', 'SUPERCHINO DEL PALOMO ', '15:00', 8550, 0, '2023-03-02', 12, 'pago (efectivo)'),
(223, '13:30', 'libertad', 'CRISTINA SENILLOSA 830', '15:00', 14820, 0, '2023-03-02', 16, 'paga x transferencia'),
(224, '13:30', 'libertad', 'MOSCONI 2989', '15:00', 8000, 0, '2023-03-02', 16, 'paga x transferencia'),
(225, '13:30', 'libertad', 'ROMERO 3322', '15:00', 27550, 0, '2023-03-02', 16, 'pago ($ 27.550 efectivo)'),
(226, '13:30', 'libertad', 'PIZZERIA LA REDONDA', '15:00', 16250, 0, '2023-03-02', 16, 'PAGA X TRANSFERENCIA'),
(227, '8:00', 'LIBERTAD', 'MERCADITO LOS ULISES', '14:00', 32950, 0, '2023-03-06', 12, 'pago ($20.000 efectivo) $12.950 mp'),
(228, '8:00', 'LIBERTAD', 'JL ROTISERIA', '14:00', 13900, 0, '2023-03-06', 12, 'pago en efectivo'),
(229, '8:00', 'LIBERTAD', 'SHAWARMA BAR', '14:00', 3000, 0, '2023-03-06', 12, 'paga x  transferencia'),
(230, '8:00', 'LIBERTAD', 'COLEGIO JOSE MANUEL ESTRADA', '14:00', 21900, 0, '2023-03-06', 12, 'paga x  transferencia'),
(231, '8:00', 'LIBERTAD', 'VIANDAS ONDA VERDE', '14:00', 24800, 0, '2023-03-06', 12, 'paga el sabado'),
(232, '8:00', 'LIBERTAD', 'COLEGIO ALBERDI', '14:00', 16350, 0, '2023-03-06', 12, 'paga x  transferencia'),
(233, '8:00', 'LIBERTAD', 'MOSTAZA MERLO', '14:00', 19900, 0, '2023-03-06', 17, 'pago $21.990 efectivo'),
(234, '8:00', 'LIBERTAD', 'SABRINA LOS ROBLES', '14:00', 5740, 0, '2023-03-06', 17, 'pago $5.500 debe $240'),
(235, '11:30', 'LIBERTAD', 'LOS POZOS 555', '15:30', 13250, 0, '2023-03-06', 17, 'pago en efectivo'),
(236, '11:30', 'LIBERTAD', 'TU COCINA', '15:30', 16300, 0, '2023-03-06', 17, 'pago en efectivo'),
(237, '11:30', 'LIBERTAD', 'PALADAR NEGRO', '15:30', 22750, 0, '2023-03-06', 17, 'pago boleta anterior $18.490 debe $22.750'),
(238, '11:30', 'LIBERTAD', 'CAMPORA 1435', '15:30', 59500, 0, '2023-03-06', 17, 'pago en efectivo'),
(239, '11:30', 'LIBERTAD', 'MIL PUNTOS', '15:30', 11850, 0, '2023-03-06', 16, 'pago en efectivo'),
(240, '11:30', 'LIBERTAD', 'HOGAR BELEN', '15:30', 96690, 0, '2023-03-06', 16, 'debe 94.040'),
(241, '11:30', 'LIBERTAD', '12 OCTUBRE 103 MINIMER', '15:30', 9900, 0, '2023-03-06', 16, 'pago en efectivo'),
(242, '11:30', 'LIBERTAD', 'EL PERICON 993', '15:30', 17050, 0, '2023-03-06', 12, 'pago en efectivo'),
(244, '11:30', 'LIBERTAD', ' PERICON 1191', '15:30', 9050, 0, '2023-03-06', 12, '$5.000  efectivo $4.050 mp'),
(245, '11:30', 'LIBERTAD', 'ROMERO3322', '15:30', 29850, 0, '2023-03-06', 12, 'pago en efectivo'),
(247, '11:30', 'LIBERTAD', 'LOUDES CORONDA1855', '15:30', 18400, 0, '2023-03-06', 12, 'pago ($15.000 efectivo) $3.400 mp'),
(249, '16:30', 'LIBERTAD', 'HORNERO', '17:25', 94800, 0, '2023-03-06', 16, 'pago en efectivo'),
(252, '9:30', 'LIBERTAD', 'LOS POZOS 555', '11:00', 7400, 0, '2023-03-07', 17, 'pago en efectivo'),
(254, '14:30', 'LIBERTAD', 'YIYO', '15:30', 13500, 0, '2023-03-07', 17, '$5000 anterior   y pago $5000 y  debe 8500'),
(255, '14:30', 'LIBERTAD', 'GRANJA JAGUEL  GABRIEL MISTRAL 1933', '15:30', 10950, 0, '2023-03-07', 17, 'pago en efectivo'),
(256, '14:30', 'LIBERTAD', 'AV EVA PERON 3985', '15:30', 12500, 0, '2023-03-07', 17, 'pago en efectivo'),
(257, '14:30', 'LIBERTAD', 'ESCUELA ESPECIAL ANELEY  BELGRANO 1041', '15:30', 34000, 0, '2023-03-07', 17, 'pago x mp $30.040 y desconto el zapallito $4400 y le agrego 2k zapallito $440'),
(258, '14:30', 'LIBERTAD', 'HOGAR EL AMANECER  MONTEVERDE 734', '15:30', 15545, 0, '2023-03-07', 17, 'pago en efectivo el total'),
(259, '14:30', 'LIBERTAD', 'EL AMANECER CASA CUBERTA 1251', '15:30', 18050, 0, '2023-03-07', 17, 'pago en efectivo el total'),
(260, '11:30', 'LIBERTAD', 'VIANDAS ONDA VERDE', '14:00', 89050, 0, '2023-03-07', 16, 'DEBE $89.050  C/C PAGA EL SABADO  11/3/23'),
(261, '9:30', 'LIBERTAD', 'JL ROTISERIA', '11:00', 6400, 0, '2023-03-07', 12, 'pago en efectivo'),
(262, '11', 'LIBERTAD', 'MARTIN CASTRO 2651', '14:00', 10400, 0, '2023-03-07', 12, 'pago $4000 efectivo $6400 MERCADO PAGO'),
(263, '11:30', 'LIBERTAD', 'SEDE ELETROMECANICA  FIGUEROA ALCORTA 500', '13:30', 16700, 0, '2023-03-07', 12, 'pago en efectivo $18453'),
(264, '11:30', 'LIBERTAD', 'HOGAR CASASOL TURQUIA 2961', '13:30', 12895, 0, '2023-03-07', 12, 'CUENTA  CORRIENTE'),
(265, '11:30', 'LIBERTAD', 'CLUB INDEPENDIENTE  MERLO AV LIBERTADOR 223', '13:30', 6750, 0, '2023-03-07', 12, 'pago en efectivo'),
(266, '11:30', 'LIBERTAD', 'SHAWARMA BAR', '15:30', 13700, 0, '2023-03-07', 17, 'paga x  mp'),
(267, '16:30', 'LIBERTAD', 'ROMERO3322', '18:06', 12950, 0, '2023-03-07', 12, 'EFECTIVO / TOTAL'),
(268, '16:30', 'LIBERTAD', 'WALTER PONTEVEDRA', '18:06', 25260, 0, '2023-03-07', 12, 'CUENTA  CORRIENTE / DEBE'),
(269, '16:30', 'LIBERTAD', 'MURILLO 1720', '18:06', 20100, 0, '2023-03-07', 12, 'EFECTIVO / TOTAL'),
(270, '16:30', 'LIBERTAD', 'DE ROMA 1753', '18:06', 8550, 0, '2023-03-07', 12, 'EFECTIVO / TOTAL'),
(271, '16:30', 'LIBERTAD', 'CASTELLI 982', '18:06', 8950, 0, '2023-03-07', 12, 'EFECTIVO / TOTAL'),
(272, '16:30', 'LIBERTAD', 'CRISTINA SENILLOSA 830', '18:06', 10900, 0, '2023-03-07', 12, 'EFECTIVO / TOTAL'),
(273, '16:30', 'LIBERTAD', 'MABEL DE VARNES 350', '18:06', 6650, 0, '2023-03-07', 12, 'E'),
(274, '16:30', 'LIBERTAD', 'MORGAN HOUSE MERLO', '18:40', 9890, 0, '2023-03-07', 17, 'EFECTIVO / TOTAL'),
(275, '16:30', 'LIBERTAD', 'JUANITA', '18:41', 9600, 0, '2023-03-07', 17, 'EFECTIVO / TOTAL'),
(277, '9:30', 'LIBERTAD', 'MOSTAZA MERLO', '11:00', 23188, 0, '2023-03-08', 12, 'PAGO $26188  X EL IVA QE SELECOBRA '),
(278, '9:30', 'LIBERTAD', 'campora1435', '11:00', 2050, 0, '2023-03-08', 12, 'pago en efectivo el total'),
(279, '9:30', 'LIBERTAD', 'patagonia leloir', '13:30', 19900, 0, '2023-03-08', 12, 'pago en efectivo el total'),
(280, '9:30', 'LIBERTAD', 'SABRINA LOS ROBLES', '13:30', 15750, 0, '2023-03-08', 12, 'pago $14350  efectivo POQE DESCONTO $1400 DE LA ESPINACA'),
(282, '9:30', 'LIBERTAD', 'CARITAS MORENO', '13:30', 194200, 0, '2023-03-08', 16, 'DEBE  $ 194.200     (8/03/2023)'),
(283, '10:30', 'LIBERTAD', 'BEA CATERING', '13:50', 54850, 0, '2023-03-08', 17, 'EFECTIVO / TOTAL'),
(284, '10:30', 'LIBERTAD', 'JL ROTISERIA', '13:50', 15050, 0, '2023-03-08', 17, 'EFECTIVO / TOTAL'),
(285, '10:30', 'LIBERTAD', '12 OCTUBRE ', '14:00', 9950, 0, '2023-03-08', 17, 'EFECTIVO / TOTAL'),
(286, '10:30', 'LIBERTAD', 'MERCADITO LOS ULISES', '14:00', 12500, 0, '2023-03-08', 17, 'pago en efectivo el total'),
(287, '13:30', 'LIBERTAD', 'BARNES  450', '15:30', 14250, 0, '2023-03-08', 12, 'EFECTIVO / TOTAL'),
(288, '13:30', 'LIBERTAD', 'BEBEDERO 2857', '15:30', 11500, 0, '2023-03-08', 12, 'EFECTIVO / TOTAL'),
(289, '13:30', 'LIBERTAD', 'NAZCA 378', '15:30', 13700, 0, '2023-03-08', 12, 'EFECTIVO / TOTAL'),
(290, '13:30', 'LIBERTAD', 'QUINIELA CARLIN ORAN', '15:30', 13550, 0, '2023-03-08', 12, 'pago en efectivo el total'),
(291, '13:30', 'LIBERTAD', 'ROMERO3322', '15:30', 18900, 0, '2023-03-08', 12, 'EFECTIVO / TOTAL'),
(292, '14:30', 'LIBERTAD', 'LA POSITIVA RIOBAMBA 742', '17;25 - TRANFERENCIA - 15860', 0, 0, '2023-03-08', 17, 'paga x  transferencia'),
(295, '14:30', 'LIBERTAD', 'LA GALESA MERLO', '17;25 - TRANFERENCIA - 30300', 0, 0, '2023-03-08', 17, 'paga x  transferencia'),
(296, '16:30', 'LIBERTAD', 'TUCOCINA 12 OCTUBRE688', '17;25', 19900, 0, '2023-03-08', 17, 'EFECTIVO / TOTAL'),
(297, '16:30', 'LIBERTAD', 'CARLOS CASARES 1055', '17:16', 9305, 0, '2023-03-08', 12, 'PAGO $9805 EFECTIVO   '),
(298, '15:30', 'LIBERTAD', 'GRANJA JAGUEL  GABRIEL MISTRAL 1933', '17;25', 8950, 0, '2023-03-08', 12, 'pago en efectivo el total'),
(299, '15:30', 'LIBERTAD', 'MIL PUNTOS', '17;25', 24810, 0, '2023-03-08', 12, 'pago en efectivo el total'),
(300, '16:30', 'LIBERTAD', 'NOBEL 1280', '18:06', 6750, 0, '2023-03-08', 12, 'EFECTIVO / TOTAL'),
(301, '16:30', 'LIBERTAD', 'AV EVA PERON3985', '18:06', 11350, 0, '2023-03-08', 12, 'EFECTIVO / TOTAL'),
(302, '16:30', '', 'JARDIN ABRAZAME ', '17:25', 9300, 0, '2023-03-08', 12, 'paga x  mp'),
(303, '16:30', 'LIBERTAD', 'BARRAGAN 2980', '19:46', 10250, 0, '2023-03-08', 17, 'TOTAL / EFECTIVO'),
(304, '16:30', 'LIBERTAD', 'BARRAGAN 3290', '19:46', 15350, 0, '2023-03-08', 17, 'TOTAL / EFECTIVO'),
(305, '16:30', 'LIBERTAD', 'MURILLO 468', '19:46', 12540, 0, '2023-03-08', 17, 'TOTAL / EFECTIVO'),
(306, '16:30', 'LIBERTAD', 'AMADO NERVO 3910', '19:46', 8700, 0, '2023-03-08', 17, 'TOTAL / EFECTIVO'),
(307, '16:30', 'LIBERTAD', 'MOSCONI 2989', '19:46', 12550, 0, '2023-03-08', 17, 'TOTAL / EFECTIVO'),
(308, '08:00 - 01 - CC', 'libertad', '273 - PIZZERIA Y ROTISERIA MANOLO', '15:00', 10400, 0, '2023-03-09', 12, NULL),
(309, '08:00 - 02 - CC', 'libertad', '813 - SHAWARMA BAR', '15:00 - 3500 - TRANSFERENCIA', 0, 0, '2023-03-09', 12, NULL),
(310, '08:00 - 03 - CC', 'libertad', '294 - VIANDAS ONDA VERDE', '15:00 - 24700 - CUENTA CORRIENTE', 0, 0, '2023-03-09', 12, NULL),
(311, '08:00 - 04 - CC', 'libertad', '736 - SABRINA LOS ROBLES', '15:00', 8100, 0, '2023-03-09', 12, NULL),
(312, '08:00 - 05 - CC', 'libertad', '860 - ESTACION DE MILANESAS', '15:00 - 3600 - CUENTA CORRIENTE', 10000, 0, '2023-03-09', 12, NULL),
(313, '08:00 - 06 - CC', 'LIBERTAD', '643 - CASTELLI 982 ', '15:00', 10300, 0, '2023-03-09', 12, NULL),
(314, '08:00 - 07 - CC', 'LIBERTAD', '601 - SUPERMERCADO CHINO PONTEVEDRA', '15:00', 16300, 0, '2023-03-09', 12, NULL),
(315, '08:00 - 08 - CC', 'LIBERTAD', '665 - MABEL DE BARNES 350', '15:00', 8050, 0, '2023-03-09', 12, NULL),
(316, '08:00 - 09 - CC', 'LIBERTAD', '21 - MURILLO 1720', '15:00', 15600, 0, '2023-03-09', 12, NULL),
(317, '08:00 - 10 - CC', 'LIBERTAD', '599 - ESTELA MARTIN RODRIGUEZ', '15:00 - 6650 - MERCADO PAGO', 0, 0, '2023-03-09', 12, NULL),
(318, '08:00 - 11 - CC', 'LIBERTAD', '835 - PIZZERIA LA REDONDA', '15:00 - 13750 - TRANSFERENCIA', 0, 0, '2023-03-09', 12, NULL),
(319, '08:00 - 12 - CC', 'LIBERTAD', '122 - CONFITERIA ARIME', '15:00 - 12200 - CUENTA CORRIENTE', 0, 0, '2023-03-09', 12, NULL),
(320, '08:00 - 13 - CC', 'LIBERTAD', '813 - SHAWARMA BAR', '15:00', 10600, 0, '2023-03-09', 12, NULL),
(321, '08:00 - 14 - CC', 'LIBERTAD', '734 - FUNDACION ISLA MACIEL', '15:00 - 55000 - CUENTA CORRIENTE', 0, 0, '2023-03-09', 12, NULL),
(322, '08:00 - 15 - CC', 'LIBERTAD', '112 - COLOMBIA', '15:00 - 17000 - MERCADO PAGO', 400, 0, '2023-03-09', 12, NULL),
(323, '08:00 - 01 - CC', 'LIBERTAD', '125 - LOS POZOS 555', '15:00', 5950, 0, '2023-03-09', 17, NULL),
(324, '08:00 - 02 - CC', 'LIBERTAD', 'YIYO DELICATESSEN', '15:00 - 9100 - CUENTA CORRIENTE', 8500, 0, '2023-03-09', 17, NULL),
(325, '08:00 - 03 - CC', 'LIBERTAD', 'MARIO', '15:00 - 28900 - TRANSFERENCIA', 0, 0, '2023-03-09', 17, NULL),
(326, '8:00 - 04 - CC', 'libertad', 'RODRIGUEZ PEÑA 919', '15:00', 21000, 0, '2023-03-09', 17, NULL),
(328, '8:00 - 05 - CC', 'LIBERTAD', 'EL PERICON 993', '15:00', 9400, 0, '2023-03-09', 17, NULL),
(329, '8:00 - 06 - CC', 'LIBERTAD', 'TALCAHUANO 1140', '15:00', 5550, 0, '2023-03-09', 17, NULL),
(330, '8:00 - 07 - CC', 'LIBERTAD', 'RUTH BEBEDERO 1815', '15:00', 13300, 0, '2023-03-09', 17, NULL),
(331, '8:00 - 08 - CC', 'LIBERTAD', 'WILIANS MORRIS 1326', '15:00', 17950, 0, '2023-03-09', 17, NULL),
(332, '8:00 - 09 - CC', 'LIBERTAD', 'ISABEL', '15:00', 23800, 0, '2023-03-09', 17, NULL),
(333, '8:00 - 10 - CC', 'LIBERTAD', 'LOURDES CORONDA 1855', '15:00 - 4000 - MERCADO PAGO', 5100, 0, '2023-03-09', 17, NULL),
(334, '8:00 - 11 - CC', 'LIBERTAD', 'ROMERO 3322', '15:00', 16000, 0, '2023-03-09', 17, NULL),
(335, '10:45 - 1', 'LIBERTAD', 'YIYO DELICATESSEN', '15:00 - ANTERIOR 9100 - PAGO 4000 + 6250 = ', 10250, 0, '2023-03-10', 17, NULL),
(336, '10:45 - 2', 'LIBERTAD', '130 - JL ROTISERIA', '15:00', 14950, 0, '2023-03-10', 17, NULL),
(337, '10:45 - 3', 'LIBERTAD', '316 - SOLIS', '15:00', 10000, 0, '2023-03-10', 17, NULL),
(338, '10:45 - 4', 'LIBERTAD', '546 - CAMPORA 1435', '15:00', 39850, 0, '2023-03-10', 17, NULL),
(339, '10:45 - 5', 'LIBERTAD', '253 - 12 DE OCTUBRE 103 MINIMERCADO', '15:00', 11350, 0, '2023-03-10', 17, NULL),
(340, '10:45 - 6', 'LIBERTAD', '425 - COLEGIO ALBERDI', '15:00 - TRANSFERENCIA - 11500', 0, 0, '2023-03-10', 17, NULL),
(341, '10:45 - 1', 'LIBERTAD', '251 - PALADAR NEGRO', '17:00 - 104050 - CUENTA CORRIENTE - DEV / RUCULA 8000', 22750, 0, '2023-03-10', 12, NULL),
(342, '10:45 - 2', 'LIBERTAD', '658 - NUESTRA SEÑORA DEL BUEN VIAJE', '15:00 - PENDIENTE FACTURA A - PAGO', 15250, 0, '2023-03-10', 12, NULL),
(343, '10:45 - 3', 'LIBERTAD', '820 - MERCADITO LOS ULISES', '15:00', 17100, 0, '2023-03-10', 12, NULL),
(344, '10:45 - 4', 'LIBERTAD', '293 - BEA CATERING', '15:00', 23100, 0, '2023-03-10', 12, NULL),
(345, '10:45 - 5', 'LIBERTAD', '736 - SABRINA LOS ROBLES', '15:00', 9940, 0, '2023-03-10', 12, NULL),
(347, '10:45 - 1', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '', 0, 0, '2023-03-10', 19, NULL),
(348, '15:00 - 6', 'LIBERTAD', '797 - BARRAGAN 2980', '16:45 - 6000 MERCADO PAGO', 950, 0, '2023-03-10', 12, NULL),
(349, '15:00 - 7', 'LIBERTAD', '863 - ARISTOBULO DEL VIAJE 4005', '16:47', 7000, 0, '2023-03-10', 12, NULL),
(350, '15:30 - 8', 'LIBERTAD', '861 - BARNES 450', '16:47', 10500, 0, '2023-03-10', 12, NULL),
(351, '15:30 - 9', 'LIBERTAD', '330 - AMADO NERVO', '16:47', 7750, 0, '2023-03-10', 12, NULL),
(352, '15:30 - 10', 'LIBERTAD', '64 - MURILLO 468', '16:47', 13900, 0, '2023-03-10', 12, NULL),
(353, '15:00 - 7', 'LIBERTAD', '745 - CARRASCO ESQUINA NECOCHEA ', '16:47', 15350, 0, '2023-03-10', 17, NULL),
(354, '15:00 - 8', 'LIBERTAD', '317 - CRISTINA SENILLOSA 830', '16:47', 15940, 0, '2023-03-10', 17, NULL),
(355, '15:00 - 9', 'LIBERTAD', '419 - ALVARAD 668O', '16:47 - TRANSFERENCIA - 8900', 0, 0, '2023-03-10', 17, NULL),
(356, '9:30', 'LIBERTAD', 'LOS POZOS 555', '13:30', 8050, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(357, '9:30', 'LIBERTAD', 'pizzeria y rotiseria manolo   v.loza 802', '13.30', 19200, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(358, '9:30', 'LIBERTAD', 'autoservicio fox  alberdi 1602', '13:30', 9750, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(359, '9:30', 'LIBERTAD', 'confiteria arime ', '13:30', 15700, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(360, '13:30', 'LIBERTAD', 'panaderia san calletano   arias 3050', '13:30', 20170, 0, '2023-03-11', 17, 'pago $ 18350  en efectivo   y descoNto  la albahaca $300  Y  1520  DE BANANA'),
(361, '9:30', 'LIBERTAD', 'MOSTAZA MERLO', '13:30', 29000, 0, '2023-03-11', 17, 'pago en efectivo el total DE $32.045 X EL IVA'),
(362, '9:30', 'LIBERTAD', 'patagonia leloir', '14:00', 26000, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(363, '13:30', 'LIBERTAD', 'YIYO', '14:00', 5100, 0, '2023-03-11', 12, 'pago en efectivo el total DE $5100'),
(364, '13:30', 'LIBERTAD', 'SABRINA LOS ROBLES', '14:00', 8850, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(366, '13:30', 'LIBERTAD', 'PILCOMAYO 3337', '14:00', 25550, 0, '2023-03-11', 12, 'paga x  mp'),
(367, '13:30', 'LIBERTAD', 'BENVA', '14:00', 18450, 0, '2023-03-11', 12, 'paga x  mp'),
(368, '13:30', 'LIBERTAD', 'VIANDAS ONDA VERDE PAGO LA SEMANA COMPLETA MAS LA BOLETA DE HOY  ', '14:00', 197150, 0, '2023-03-11', 12, 'pago en efectivo el total  DE LA SEMANA '),
(369, '14:30', 'LIBERTAD', 'MABEL DE VARNES 350', '15:50', 9700, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(370, '14:30', 'LIBERTAD', 'MURILLO 1720', '15:50', 18700, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(371, '14:30', 'LIBERTAD', 'ROMERO3322', '15:50', 25150, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(372, '14:30', 'LIBERTAD', 'MURILLO 468', '15:50', 8700, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(373, '14:30', 'LIBERTAD', 'PAPAI PONTEVEDRA PARIS 2726', '15:50', 12820, 0, '2023-03-11', 12, 'DEBE $12850  11/3/23   C/C'),
(374, '14:30', 'LIBERTAD', 'NAZCA 378', '15:50', 16000, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(375, '14:30', 'LIBERTAD', 'LOUDES CORONDA1855', '15:50', 10650, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(377, '14:30', 'LIBERTAD', 'PANADERIA LA PLAZA  AV REAL Y 25 DE MAYO', '15:50', 15750, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(378, '14:30', 'LIBERTAD', 'MORGAN HOUSE MERLO', '15:50', 12590, 0, '2023-03-11', 17, 'pago boleta anterior de $14790  y   debe  la boleta del dia 11/3/23 de $12590'),
(379, '14:30', 'LIBERTAD', '12 OCTUBRE 103 MINIMER', '15:50', 10450, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(380, '14:30', 'LIBERTAD', 'SHAWARMA BAR', '15:50', 25350, 0, '2023-03-11', 17, 'paga x  mp'),
(381, '14:30', 'LIBERTAD', 'TU  COCINA     12 OCTUBRE688', '15:50', 15300, 0, '2023-03-11', 17, 'EFECTIVO / TOTAL'),
(382, '16:30', 'LIBERTAD', 'JUANITA', '18:06', 7350, 0, '2023-03-11', 12, 'paga x  mp'),
(383, '16:30', 'LIBERTAD', 'willians morris 1326  ', '18:06', 12950, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(384, '16:30', 'LIBERTAD', 'Ruth bebedero1815', '18:06', 17050, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(385, '16:30', 'LIBERTAD', 'pericon1191', '18:06', 9200, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(386, '16:30', 'LIBERTAD', 'kiosco el tato  garmendia 3551', '18:06', 11600, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(387, '16:30', 'LIBERTAD', 'EL PERICON 993', '18:06', 11450, 0, '2023-03-11', 12, 'EFECTIVO / TOTAL'),
(388, '08:00', 'mastil de merlo', 'moron', '9:00', 780, 0, '2023-05-01', 12, NULL),
(389, '08:00', 'mastil de merlo', '460 - HOGAR SANTO DOMINGO', '11:00', 890, 0, '2023-05-01', 12, NULL),
(390, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '23 20', 580, 0, '2023-05-01', 12, NULL),
(391, '22:15', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 1580, 0, '2023-05-01', 17, NULL),
(394, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 1500, 0, '2023-05-01', 23, NULL),
(395, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 2500, 0, '2023-05-01', 23, NULL),
(396, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 1500, 0, '2023-05-01', 23, NULL),
(397, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 1500, 0, '2023-05-01', 23, NULL),
(398, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 55666, 0, '2023-05-01', 23, NULL),
(399, '08:00', 'mastil de merlo', '460 - HOGAR SANTO DOMINGO', '15:00', 5422, 0, '2023-05-01', 23, NULL),
(400, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 564, 0, '2023-05-01', 13, NULL),
(401, '08:00', 'LIBERTAD', '460 - HOGAR SANTO DOMINGO', '15:00', 2564, 0, '2023-05-01', 16, NULL),
(402, '8:00', 'libertad', 'parque', '9:00', 100, 0, '2023-07-22', 11, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sesion`
--

CREATE TABLE `sesion` (
  `id` int(11) NOT NULL,
  `user` text NOT NULL,
  `password` text NOT NULL,
  `puesto` text NOT NULL,
  `id_chofer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sesion`
--

INSERT INTO `sesion` (`id`, `user`, `password`, `puesto`, `id_chofer`) VALUES
(1, 'admin', '1234', 'admin', 0),
(11, 'fabri', '1234', 'chofer', 11),
(12, 'ricardo', '1234', 'chofer', 12),
(15, 'jose', 'jose', 'chofer', 16),
(16, 'dario', 'dario', 'chofer', 17),
(17, 'RICARDO', 'RICARDO', 'CHOFER', 18),
(18, 'PACHU', 'PACHU', 'CHOFER', 19),
(19, 'mauro', 'mauro', 'chofer', 25),
(20, 'alan', 'alan', '', 23);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dia_constante`
--
ALTER TABLE `dia_constante`
  ADD PRIMARY KEY (`id_dia`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_chofer`);

--
-- Indices de la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD PRIMARY KEY (`id_planilla`),
  ADD KEY `id_chofer` (`id_chofer`);

--
-- Indices de la tabla `sesion`
--
ALTER TABLE `sesion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dia_constante`
--
ALTER TABLE `dia_constante`
  MODIFY `id_dia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_chofer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `planilla`
--
ALTER TABLE `planilla`
  MODIFY `id_planilla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT de la tabla `sesion`
--
ALTER TABLE `sesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `planilla`
--
ALTER TABLE `planilla`
  ADD CONSTRAINT `planilla_ibfk_1` FOREIGN KEY (`id_chofer`) REFERENCES `perfil` (`id_chofer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
