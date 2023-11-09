-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-11-2023 a las 04:05:23
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `burguener_r`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `perfil_id` int(11) NOT NULL DEFAULT 2,
  `id_bandera` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `usuario`, `email`, `pass`, `perfil_id`, `id_bandera`) VALUES
(1, 'ROCIO', 'BURGUENER', '32551863', 'rocioburguener@gmail.com', '$2y$10$V2mdbJz40Xg55wlXExqlouAP4Sz78FiIf/65dRGKoRLPXk0/yX8EW', 2, 1),
(2, 'Celeste', 'Sandoval', 'celes', 'celes@gmail.com', '$2y$10$SppTE5lpjKpTisHxLISbE.fdUNUmQb8dzQBxa5Jazttr0lCZaxoB6', 1, 1),
(3, 'MIGUEL', 'QUINTANA', 'migue', '0000@gmail.com', '$2y$10$D.KwK83/wBZu0pNNfWsozO19ChHQCwUk/7YKPEqf.9etymuGH1/9O', 2, 1),
(4, 'Esteban', 'Escobar ', 'Estebanes', 'estebanes@gmail.com', '$2y$10$488jMnAM.K6UbhH6mWCqeegbv9BA6IYK/YFK9sTMomFU8UkrxKhdi', 1, 1),
(5, 'Andres', 'Vega', 'AndresV', 'AndresVega@gmail.com', '$2y$10$RSpH.tyyzXy6A3dwNK/L3eqQoNHoksgUgaTkk8/Rw2zYnEnwhWFKG', 2, 1),
(6, 'Jorge', 'Morel', 'JorgeM', 'Moreljorge@hotmail.com', '$2y$10$Dwt624EmR.5LBgL4VLt4L.YMhTZkY6LpHOLFs/T0Y0tmo963oCGxq', 2, 1),
(7, 'Jorge', 'Alonso', 'Jorgeal', 'jalonso@hotmail.com', '$2y$10$yZBRv0bVeIhRwcoIB8ZIBu.aXFd1loW1kXvH6v4S4GMx9aGVJcfim', 2, 1),
(8, 'Rocio', 'Burguener', 'Rocio', 'admin@gmail.com', '$2y$10$9dn/itjvF078ZISQbK3poOM3JRUOYyf7a/CMDKeJF9tsMXA.zB9Xu', 2, 1),
(9, 'Mario', 'Alonso', 'Marioal', 'malonso@gmail.com', '$2y$10$J5wCKvdfQrx0/xbf4mjKP.A7PpKs4TvZZGLgq/bwryVsIiIMYaWQm', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`,`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
