-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2021 a las 23:45:34
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `id_articulo` int(4) UNSIGNED NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `categoria` set('electronica','jugueteria','alimentos','ropa') NOT NULL,
  `precio` int(9) NOT NULL,
  `id_usuario` int(4) NOT NULL,
  `cantidad` int(9) NOT NULL,
  `imagen` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos`
--

INSERT INTO `articulos` (`id_articulo`, `nombre`, `categoria`, `precio`, `id_usuario`, `cantidad`, `imagen`) VALUES
(10, 'zapatos', '', 123, 2, 7, 'IMG-20210913-WA0066.jpg'),
(11, 'mouse', 'electronica', 200, 2, 7, 'mouse.jpeg'),
(13, 'Peluche ', 'jugueteria', 65, 1, 7, '2a3d85cbaee09c975c580b755f1038bd.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_cliente` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Correo` varchar(30) DEFAULT NULL,
  `Contra` varchar(10) DEFAULT NULL,
  `Telefono` bigint(10) NOT NULL,
  `Direccion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_cliente`, `Nombre`, `Correo`, `Contra`, `Telefono`, `Direccion`) VALUES
(1, 'Persona', 'persona@correo.com', '12345', 0, ''),
(2, 'Mauro', 'file@gmail.com', 'contra123', 7751348787, 'Cerrada de Tamaulipas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`id_articulo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulos`
--
ALTER TABLE `articulos`
  MODIFY `id_articulo` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_cliente` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
