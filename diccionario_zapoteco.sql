-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-05-2026 a las 22:00:32
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `diccionario_zapoteco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`) VALUES
(1, 'Expresión / Saludo'),
(2, 'Sustantivo'),
(3, 'Verbo'),
(4, 'Adjetivo'),
(5, 'Pronombre / Demostrativo'),
(6, 'Adverbio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabras`
--

CREATE TABLE `palabras` (
  `id_palabra` int(11) NOT NULL,
  `espanol` varchar(100) NOT NULL,
  `zapoteco` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `palabras`
--

INSERT INTO `palabras` (`id_palabra`, `espanol`, `zapoteco`, `descripcion`, `id_categoria`) VALUES
(1, 'gente / persona', 'binni', 'Conjunto de personas o individuo', 2),
(2, 'mujer', 'gunaa', 'Persona de sexo femenino', 2),
(3, 'hombre', 'nguiu', 'Persona de sexo masculino', 2),
(4, 'niño', 'bidxiña', 'Persona pequeña en crecimiento', 2),
(5, 'niña', 'xquidxiña', 'Mujer pequeña en crecimiento', 2),
(6, 'niño', 'xtiidxi', 'Persona en la etapa de la niñez', 2),
(7, 'niño', 'binni xquidxe', 'Infante o persona pequeña', 2),
(8, 'niña', 'gunaa xquidxe', 'Mujer en etapa de crecimiento', 2),
(9, 'comunidad', 'binni guenda', 'Grupo de personas organizadas', 2),
(10, 'invitado', 'binni gucá', 'Persona que visita un lugar', 2),
(11, 'madre', 'naa', 'Mujer que cuida y da vida', 2),
(12, 'padre', 'xii', 'Hombre que cuida y protege', 2),
(13, 'padre', 'xtaa', 'Figura paterna o progenitor', 2),
(14, 'hermano', 'bidxa', 'Familiar masculino', 2),
(15, 'hermana', 'biza', 'Familiar femenino', 2),
(16, 'pueblo', 'guidxi', 'Lugar donde vive una comunidad', 2),
(17, 'cabeza', 'ique', 'Parte superior del cuerpo humano', 2),
(18, 'pie', 'nii', 'Extremidad inferior para caminar', 2),
(19, 'nariz', 'xquidxe', 'Órgano del olfato y respiración', 2),
(20, 'oreja', 'diaga', 'Órgano de la audición', 2),
(21, 'diente', 'layu', 'Pieza ósea en la boca para masticar', 2),
(22, 'sangre', 'rini', 'Líquido vital del cuerpo humano', 2),
(23, 'mano', 'na', 'Extremidad para agarrar objetos', 2),
(24, 'corazón', 'ladxi', 'Órgano que bombea sangre (afectivo)', 2),
(25, 'corazón', 'xtena', 'Órgano vital del sistema circulatorio', 2),
(26, 'boca', 'zaa', 'Parte del cuerpo para hablar y comer', 2),
(27, 'boca / palabra', 'raa', 'Unidad del lenguaje o cavidad oral', 2),
(28, 'agua', 'nisa', 'Líquido vital para la existencia', 2),
(29, 'tierra / casa', 'yoo', 'Suelo donde se cultiva o vivienda', 2),
(30, 'flor', 'guie\'', 'Parte de la planta, símbolo de belleza', 2),
(31, 'pez', 'bela', 'Animal acuático', 2),
(32, 'maíz', 'doo', 'Grano, alimento básico ancestral', 2),
(33, 'maíz', 'xuba', 'Semilla fundamental de la dieta local', 2),
(34, 'hoja', 'guixi', 'Órgano vegetal que brota del tallo', 2),
(35, 'árbol', 'yaga', 'Planta grande con tronco leñoso', 2),
(36, 'sol', 'gubidxa', 'Estrella que da luz y calor', 2),
(37, 'viento', 'biu', 'Corriente de aire natural', 2),
(38, 'viento', 'bi\'', 'Aire en movimiento', 2),
(39, 'planta', 'guie\' sti\'', 'Ser vivo que crece en la tierra', 2),
(40, 'fuego', 'guié', 'Energía que produce calor y luz', 2),
(41, 'venado', 'bidxa', 'Animal salvaje de gran agilidad', 2),
(42, 'nube', 'chupa', 'Masa de vapor suspendida en el cielo', 2),
(43, 'lluvia', 'nisa guie', 'Agua que cae de las nubes', 2),
(44, 'lluvia', 'zaa', 'Precipitación pluvial', 2),
(45, 'agua de lluvia', 'nisa zaa', 'Agua recolectada de la lluvia', 2),
(46, 'estrella', 'xquidxe', 'Cuerpo celeste que brilla en la noche', 2),
(47, 'amanecer', 'gubidxa guie', 'Inicio del día con la luz solar', 2),
(48, 'aire', 'bidxi', 'Mezcla de gases que respiramos', 2),
(49, 'río', 'nisa gucá', 'Corriente natural de agua', 2),
(50, 'río', 'yoo nisa', 'Lecho o corriente de agua dulce', 2),
(51, 'mar', 'nisadó\'', 'Gran masa de agua salada', 2),
(52, 'montaña', 'dani', 'Gran elevación natural del terreno', 2),
(53, 'montaña', 'guie chupa', 'Elevación geográfica importante', 2),
(54, 'piedra', 'guiee', 'Materia mineral sólida', 2),
(55, 'arena', 'yuxi', 'Partículas pequeñas de roca', 2),
(56, 'hoja', 'yaga guie\'', 'Follaje de los árboles', 2),
(57, 'animal', 'badu guie', 'Ser vivo con movimiento propio', 2),
(58, 'fruta', 'zaa guie', 'Fruto comestible y dulce', 2),
(59, 'semilla', 'naa guie', 'Parte que da origen a nuevas plantas', 2),
(60, 'cielo', 'xquidxe guie', 'Espacio infinito sobre la Tierra', 2),
(61, 'nombre', 'guié', 'Identificación de una persona', 2),
(62, 'nombre propio', 'laani', 'Nombre específico para distinguir a alguien', 2),
(63, 'casa', 'sti', 'Hogar o vivienda familiar', 2),
(64, 'escuela', 'yoo bigu', 'Lugar destinado al aprendizaje', 2),
(65, 'amor', 'guendaró', 'Sentimiento de profundo afecto', 2),
(66, 'día', 'dxi', 'Periodo de 24 horas o luz solar', 2),
(67, 'vida', 'guenda', 'Estado de existencia de seres vivos', 2),
(68, 'fiesta', 'guenda guca', 'Evento social de celebración', 2),
(69, 'fiesta', 'guenda gucá', 'Celebración o festividad tradicional', 2),
(70, 'trabajo', 'dxiña', 'Actividad física o mental productiva', 2),
(71, 'trabajo', 'guenda', 'Labor o esfuerzo creativo', 2),
(72, 'luz', 'biaani', 'Energía que ilumina el entorno', 2),
(73, 'palabra', 'didxa', 'Sonido que expresa una idea', 2),
(74, 'idioma', 'guenda sti', 'Lengua propia para comunicarse', 2),
(75, 'cultura', 'guendaró sti', 'Conjunto de costumbres y saberes', 2),
(76, 'historia', 'guendaró dxi', 'Relato de sucesos pasados', 2),
(77, 'salud', 'guenda rini', 'Estado de bienestar físico y mental', 2),
(78, 'energía', 'guenda biaani', 'Capacidad para realizar acciones', 2),
(79, 'tortilla', 'gueta', 'Alimento circular de masa de maíz', 2),
(80, 'perro', 'biguie\'', 'Canino doméstico', 2),
(81, 'perro', 'badu', 'Animal doméstico fiel', 2),
(82, 'gato', 'migu', 'Felino doméstico ágil', 2),
(83, 'día en casa', 'gubidxa yoo', 'Estancia diurna en el hogar', 2),
(84, 'comer', 'rusu', 'Acción de alimentarse', 3),
(85, 'comer', 'go', 'Ingerir alimentos (variante)', 3),
(86, 'beber', 'ruchaa', 'Ingerir líquidos para hidratarse', 3),
(87, 'hacer', 'guca', 'Realizar o producir algo', 3),
(88, 'voy a hacer', 'naa guca', 'Intención de realizar una tarea', 3),
(89, 'ir', 'ra', 'Trasladarse de un punto a otro', 3),
(90, 'poder', 'raca', 'Tener la facultad o permiso de hacer algo', 3),
(91, 'saber', 'nanda', 'Poseer conocimiento de algo', 3),
(92, 'ver', 'guni', 'Percibir a través de los ojos', 3),
(93, 'amar', 'rini guendaró', 'Sentir afecto profundo', 3),
(94, 'vivo', 'nabani', 'Que tiene signos de vida', 4),
(95, 'muerto', 'nati', 'Que ha perdido la vida', 4),
(96, 'yo', 'naa ti', 'Pronombre primera persona', 5),
(97, 'tú', 'luu', 'Pronombre segunda persona', 5),
(98, 'nosotros', 'laaca', 'Pronombre primera persona plural', 5),
(99, 'este / aquí', 'ndi', 'Indica cercanía espacial', 5),
(100, 'eso', 'ndi\'', 'Indica objeto o situación lejana', 5),
(101, 'no', 'cadi', 'Partícula de negación', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `rol`) VALUES
(1, 'Yael Alejandro Chan Cruz', 'Administrador'),
(2, 'Sistema', 'Bot de Carga');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `palabras`
--
ALTER TABLE `palabras`
  ADD PRIMARY KEY (`id_palabra`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `palabras`
--
ALTER TABLE `palabras`
  MODIFY `id_palabra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `palabras`
--
ALTER TABLE `palabras`
  ADD CONSTRAINT `palabras_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
