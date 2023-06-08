-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-06-2023 a las 08:39:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `olvera`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fernado`
--

CREATE TABLE `fernado` (
  `id` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(16) NOT NULL,
  `equipo` binary(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fernado`
--

INSERT INTO `fernado` (`id`, `name`, `email`, `password`, `equipo`) VALUES
(1, 'fernando', 'xdcf@gmail.com', 'sssssss', 0x73),
(2, 'fernando', 'xdcf@gmail.com', 'sssssss', 0x73),
(3, 'qiuyqewuyqwuiyqw', '121212@hhhh', '1234', 0x64),
(4, '', '', '', 0x00),
(5, '', '', '', 0x00),
(6, '', '', '', 0x00),
(7, '', '', '', 0x00),
(8, '', '', '', 0x00),
(9, 'fernando', 'xda@asss', '', 0x53),
(10, '', 'xda@asss', '', 0x53),
(11, 'aaaaaaaaaaaaaaa', 'xdcf@gmail.com', 'aaaaaaaaaaaaaa', 0x00),
(12, '', '', '', 0x00),
(13, 'aa', 'xdcf@gmail.com', 'aaa', 0x54),
(14, 'aa', 'xdcf@gmail.com', 'aaa', 0x53),
(15, 'aa', 'xdcf@gmail.com', 'aaa', 0x64),
(16, '', 'aaaaa@aaaaa', 'aaaaaaa', 0x53),
(17, 'aaaaaaaa', 'xdcf@gmail.com', '', 0x53),
(18, 'aaaaaaaa', '', '', 0x53),
(19, 'f', 'xdcf@gmail.com', 'aaaa', 0x73),
(20, 'a', 'xda@asss', 'AAAAAA', 0x54),
(21, '', 'xda@asss', 'AAAAAA', 0x54),
(22, '', 'xda@asss', 'AAAAAA', 0x54),
(23, '', '121212@hhhh', 'aaa', 0x54),
(24, '', 'xda@asss', 'aaaaa', 0x64),
(25, 'asdfgwerty', 'aaaaa@aaaaa', '', 0x00),
(26, 'asdfgwerty', 'aaaaa@aaaaa', 'aaaaaaaa', 0x00),
(27, 'aaaaaa', 'aaaaa@aaaaa', 'aaaaaaaa', 0x00),
(28, 'aaaaaa', 'aaaaa@xn--aa-0ja', 'aaaaaaaa', 0x53),
(29, '', 'aaaaa@xn--aa-0ja', 'aaaaaaaa', 0x53),
(30, 'aaaaaaaaa', 'xda@gmai.com', 'aasxxxxxxxx', 0x64),
(31, 'aaaaaaaaa', 'xda@gmai.com', 'aas', 0x64),
(32, 'fernando', 'xda@gmail.com', 'aaaaaaaaa', 0x73),
(33, '', '', '', 0x00),
(34, '', '', '', 0x00),
(35, '', '', '', 0x00),
(36, 'fernando', 'xdcf@gmail.com', 'AAAAAAAA', 0x54);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `fernado`
--
ALTER TABLE `fernado`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `fernado`
--
ALTER TABLE `fernado`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
