-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 31-03-2025 a las 16:00:29
-- Versión del servidor: 8.0.40
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `LaLiga_DB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Equipo`
--

CREATE TABLE `Equipo` (
  `team_id` int NOT NULL,
  `team_name` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `estadio` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coche` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Equipo`
--

INSERT INTO `Equipo` (`team_id`, `team_name`, `ciudad`, `estadio`, `coche`) VALUES
(1, 'FC Barcelona', 'Barcelona', 'Spotify Camp Nou', 'Xavi Hernández'),
(2, 'Real Madrid', 'Madrid', 'Santiago Bernabéu', 'Carlo Ancelotti'),
(3, 'Atlético de Madrid', 'Madrid', 'Cívitas Metropolitano', 'Diego Simeone'),
(4, 'Real Sociedad', 'San Sebastián', 'Reale Arena', 'Imanol Alguacil'),
(5, 'Sevilla FC', 'Sevilla', 'Ramón Sánchez-Pizjuán', 'Quique Sánchez Flores'),
(6, 'Villarreal CF', 'Villarreal', 'Estadio de la Cerámica', 'Marcelino García Toral');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `League_Standings`
--

CREATE TABLE `League_Standings` (
  `team_id` int NOT NULL,
  `matches_played` int DEFAULT NULL,
  `WINS` int DEFAULT NULL,
  `Dibuja` int DEFAULT NULL,
  `Perdidas` int DEFAULT NULL,
  `Puntos` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `League_Standings`
--

INSERT INTO `League_Standings` (`team_id`, `matches_played`, `WINS`, `Dibuja`, `Perdidas`, `Puntos`) VALUES
(1, 10, 3, 2, 5, 11),
(2, 10, 4, 4, 2, 16),
(3, 10, 4, 3, 3, 15),
(4, 10, 3, 4, 3, 13),
(5, 10, 3, 4, 3, 13),
(6, 10, 5, 3, 2, 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Partido`
--

CREATE TABLE `Partido` (
  `match_id` int NOT NULL,
  `home_team` int DEFAULT NULL,
  `away_team` int DEFAULT NULL,
  `match_date` date DEFAULT NULL,
  `estadio` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `home_goals` int DEFAULT NULL,
  `away_goals` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Partido`
--

INSERT INTO `Partido` (`match_id`, `home_team`, `away_team`, `match_date`, `estadio`, `home_goals`, `away_goals`) VALUES
(1, 1, 3, '2024-08-08', 'Spotify Camp Nou', 0, 2),
(2, 2, 4, '2024-08-15', 'Santiago Bernabéu', 1, 1),
(3, 3, 4, '2024-08-22', 'Cívitas Metropolitano', 2, 1),
(4, 6, 2, '2024-08-29', 'Estadio de la Cerámica', 3, 3),
(5, 2, 5, '2024-09-05', 'Santiago Bernabéu', 0, 4),
(6, 1, 3, '2024-09-12', 'Spotify Camp Nou', 4, 2),
(7, 4, 5, '2024-09-19', 'Reale Arena', 4, 0),
(8, 6, 1, '2024-09-26', 'Estadio de la Cerámica', 3, 4),
(9, 3, 4, '2024-10-03', 'Cívitas Metropolitano', 4, 4),
(10, 1, 3, '2024-10-10', 'Spotify Camp Nou', 2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Player_Stats`
--

CREATE TABLE `Player_Stats` (
  `stat_id` int NOT NULL,
  `player_id` int DEFAULT NULL,
  `match_id` int DEFAULT NULL,
  `Metas` int DEFAULT NULL,
  `Ayuda` int DEFAULT NULL,
  `yellow_cards` int DEFAULT NULL,
  `red_cards` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Player_Stats`
--

INSERT INTO `Player_Stats` (`stat_id`, `player_id`, `match_id`, `Metas`, `Ayuda`, `yellow_cards`, `red_cards`) VALUES
(1, 5, 1, 0, 2, 0, 0),
(2, 14, 1, 1, 1, 0, 0),
(3, 3, 1, 1, 1, 1, 0),
(4, 2, 1, 2, 1, 1, 0),
(5, 15, 1, 0, 0, 0, 0),
(6, 19, 1, 2, 1, 0, 0),
(7, 10, 2, 1, 0, 0, 0),
(8, 14, 2, 0, 2, 0, 0),
(9, 15, 2, 0, 1, 0, 0),
(10, 18, 2, 0, 1, 1, 0),
(11, 1, 2, 2, 0, 0, 0),
(12, 13, 2, 0, 2, 0, 0),
(13, 12, 3, 1, 0, 0, 0),
(14, 5, 3, 2, 0, 0, 0),
(15, 1, 3, 1, 0, 0, 0),
(16, 17, 3, 0, 0, 0, 0),
(17, 2, 3, 0, 2, 0, 0),
(18, 18, 3, 2, 2, 0, 0),
(19, 16, 4, 1, 2, 0, 0),
(20, 6, 4, 1, 1, 0, 0),
(21, 12, 4, 0, 1, 1, 0),
(22, 10, 4, 2, 0, 2, 1),
(23, 7, 4, 2, 1, 0, 0),
(24, 17, 4, 2, 0, 1, 0),
(25, 16, 5, 2, 2, 0, 0),
(26, 1, 5, 2, 0, 0, 0),
(27, 19, 5, 2, 1, 0, 0),
(28, 20, 5, 0, 2, 1, 0),
(29, 6, 5, 0, 0, 1, 1),
(30, 2, 5, 2, 2, 0, 0),
(31, 1, 6, 1, 1, 1, 0),
(32, 8, 6, 2, 2, 0, 0),
(33, 7, 6, 2, 0, 0, 0),
(34, 14, 6, 2, 1, 0, 0),
(35, 12, 6, 0, 2, 0, 0),
(36, 18, 6, 1, 0, 0, 0),
(37, 10, 7, 1, 2, 0, 0),
(38, 17, 7, 0, 2, 0, 0),
(39, 11, 7, 2, 1, 0, 0),
(40, 12, 7, 0, 0, 0, 0),
(41, 14, 7, 1, 2, 0, 0),
(42, 15, 8, 2, 2, 1, 0),
(43, 2, 8, 2, 0, 0, 0),
(44, 10, 8, 0, 0, 0, 0),
(45, 19, 8, 0, 2, 0, 0),
(46, 6, 8, 2, 2, 0, 0),
(47, 16, 8, 0, 0, 1, 0),
(48, 4, 9, 1, 0, 0, 0),
(49, 5, 9, 0, 1, 0, 0),
(50, 7, 9, 0, 0, 1, 0),
(51, 15, 9, 1, 1, 0, 0),
(52, 13, 9, 2, 1, 0, 0),
(53, 12, 9, 2, 2, 0, 0),
(54, 16, 10, 0, 1, 0, 0),
(55, 3, 10, 0, 1, 0, 0),
(56, 6, 10, 2, 1, 1, 0),
(57, 1, 10, 2, 1, 0, 0),
(58, 14, 10, 0, 0, 0, 0),
(59, 9, 10, 1, 1, 0, 0),
(60, 17, 10, 1, 2, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Reproductor`
--

CREATE TABLE `Reproductor` (
  `player_id` int NOT NULL,
  `first_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `posicion` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `nacionalidad` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `team_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `Reproductor`
--

INSERT INTO `Reproductor` (`player_id`, `first_name`, `last_name`, `posicion`, `birth_date`, `nacionalidad`, `team_id`) VALUES
(1, 'Aitana', 'Bonmatí', 'Migcampista', '1998-11-24', 'Espanya', 1),
(2, 'Alexia', 'Putellas', 'Defensa', '2007-05-28', 'Brasil', 3),
(3, 'Claudia', 'Pina', 'Davantera', '2015-07-17', 'Itàlia', 6),
(4, 'Mariona', 'Caldentey', 'Portera', '2005-10-07', 'França', 5),
(5, 'Irene', 'Guerrero', 'Migcampista', '2013-02-17', 'Espanya', 5),
(6, 'Olga', 'Carmona', 'Migcampista', '2008-04-13', 'Espanya', 1),
(7, 'Lucía', 'García', 'Davantera', '2007-10-14', 'Itàlia', 1),
(8, 'Eva', 'Navarro', 'Davantera', '2011-12-31', 'Països Baixos', 1),
(9, 'Leila', 'Ouahabi', 'Portera', '2012-07-19', 'Brasil', 5),
(10, 'Mapi', 'León', 'Defensa', '2000-11-16', 'Brasil', 5),
(11, 'Athenea', 'Del Castillo', 'Defensa', '2015-12-27', 'Itàlia', 1),
(12, 'Salma', 'Paralluelo', 'Davantera', '2009-03-06', 'Brasil', 3),
(13, 'Teresa', 'Abelleira', 'Davantera', '2002-01-17', 'Països Baixos', 4),
(14, 'Laia', 'Codina', 'Migcampista', '1997-10-14', 'Espanya', 5),
(15, 'Marta', 'Torrejón', 'Migcampista', '2006-08-30', 'Itàlia', 5),
(16, 'Andrea', 'Pereira', 'Davantera', '2006-10-17', 'Països Baixos', 3),
(17, 'Ona', 'Batlle', 'Migcampista', '2014-05-30', 'França', 5),
(18, 'Patricia', 'Gavilán', 'Migcampista', '2007-07-25', 'Itàlia', 2),
(19, 'Esther', 'González', 'Davantera', '2002-06-11', 'Brasil', 4),
(20, 'Nahikari', 'García', 'Migcampista', '2010-08-12', 'Països Baixos', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Equipo`
--
ALTER TABLE `Equipo`
  ADD PRIMARY KEY (`team_id`);

--
-- Indices de la tabla `League_Standings`
--
ALTER TABLE `League_Standings`
  ADD UNIQUE KEY `team_id` (`team_id`);

--
-- Indices de la tabla `Partido`
--
ALTER TABLE `Partido`
  ADD PRIMARY KEY (`match_id`),
  ADD KEY `home_team` (`home_team`),
  ADD KEY `away_team` (`away_team`);

--
-- Indices de la tabla `Player_Stats`
--
ALTER TABLE `Player_Stats`
  ADD PRIMARY KEY (`stat_id`),
  ADD KEY `player_id` (`player_id`),
  ADD KEY `match_id` (`match_id`);

--
-- Indices de la tabla `Reproductor`
--
ALTER TABLE `Reproductor`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `team_id` (`team_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Equipo`
--
ALTER TABLE `Equipo`
  MODIFY `team_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `Partido`
--
ALTER TABLE `Partido`
  MODIFY `match_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `Player_Stats`
--
ALTER TABLE `Player_Stats`
  MODIFY `stat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `Reproductor`
--
ALTER TABLE `Reproductor`
  MODIFY `player_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `League_Standings`
--
ALTER TABLE `League_Standings`
  ADD CONSTRAINT `league_standings_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `Equipo` (`team_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `Partido`
--
ALTER TABLE `Partido`
  ADD CONSTRAINT `partido_ibfk_1` FOREIGN KEY (`home_team`) REFERENCES `Equipo` (`team_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `partido_ibfk_2` FOREIGN KEY (`away_team`) REFERENCES `Equipo` (`team_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `Player_Stats`
--
ALTER TABLE `Player_Stats`
  ADD CONSTRAINT `player_stats_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `Reproductor` (`player_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `player_stats_ibfk_2` FOREIGN KEY (`match_id`) REFERENCES `Partido` (`match_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `Reproductor`
--
ALTER TABLE `Reproductor`
  ADD CONSTRAINT `reproductor_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `Equipo` (`team_id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
