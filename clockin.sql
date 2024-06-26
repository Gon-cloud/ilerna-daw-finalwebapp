-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-04-2023 a las 20:46:06
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clockin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clockins`
--

CREATE TABLE `clockins` (
  `Id` int(11) NOT NULL,
  `user_email` varchar(25) NOT NULL,
  `clockin_date` datetime NOT NULL,
  `country_region` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `clockin_location` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clockins`
--

INSERT INTO `clockins` (`Id`, `user_email`, `clockin_date`, `country_region`, `place`, `clockin_location`) VALUES
(1, '', '2023-03-18 15:52:45', 'Europe', 'España', 'Coworking office'),
(2, '', '2023-03-18 15:53:01', 'Europe', 'España', 'Coworking office'),
(3, '', '2023-03-18 15:53:20', 'Europe', 'España', 'Coworking office'),
(4, '', '2023-03-18 16:01:29', 'Asia', 'España', 'Working from home'),
(5, '', '2023-03-18 16:06:22', 'Asia', 'España', 'Working from home'),
(6, '', '2023-03-18 16:06:40', 'Asia', 'España', 'Working from home'),
(7, 'Gon12@gmail.com', '2023-03-18 16:08:14', 'Asia', 'España', 'Working from home'),
(8, 'Gon12@gmail.com', '2023-03-18 16:08:22', 'Europe', 'España', 'Coworking office'),
(9, 'Gon12@gmail.com', '2023-03-18 16:09:06', 'Europe', 'España', 'Coworking office'),
(10, 'Gon12@gmail.com', '2023-03-18 16:19:18', 'Europe', 'España', 'Coworking office'),
(11, 'Gon12@gmail.com', '2023-03-18 16:21:50', 'Europe', 'España', 'Coworking office'),
(12, 'Gon12@gmail.com', '2023-04-02 09:51:46', 'Asia', 'Francia', 'Working from home'),
(13, 'Gon12@gmail.com', '2023-04-02 09:51:50', 'Asia', 'Francia', 'Working from home'),
(14, 'Gon12@gmail.com', '2023-04-02 09:52:05', 'Asia', 'Alemania', 'Working from home'),
(15, 'Gon12@gmail.com', '2023-04-02 09:52:10', 'Asia', 'Alemania', 'Working from home'),
(16, 'Gon12@gmail.com', '2023-04-02 09:52:22', 'Asia', 'Alemania', 'Working from home'),
(17, 'Gon12@gmail.com', '2023-04-02 09:53:01', 'Asia', 'Alemania', 'Working from home'),
(18, 'Gon12@gmail.com', '2023-04-02 09:53:06', 'Europe', 'Francia', 'Coworking office'),
(19, 'Gon12@gmail.com', '2023-04-02 09:53:10', 'Europe', 'Francia', 'Coworking office'),
(20, 'Gon12@gmail.com', '2023-04-02 09:53:13', 'Europe', 'Francia', 'Coworking office'),
(21, 'Gon12@gmail.com', '2023-04-02 09:55:25', 'Europe', 'Alemania', 'Working from home'),
(22, 'Gon12@gmail.com', '2023-04-02 09:55:41', 'Europe', 'Alemania', 'Working from home'),
(26, 'Gon12@gmail.com', '2023-04-02 10:02:41', 'Europe', 'Francia', 'Office'),
(27, 'Gon12@gmail.com', '2023-04-02 10:02:45', 'Europe', 'Francia', 'Office'),
(28, 'Gon12@gmail.com', '2023-04-02 10:02:51', 'Europe', 'Francia', 'Office'),
(29, 'Gon12@gmail.com', '2023-04-02 10:06:18', 'Europe', 'Francia', 'Office'),
(30, 'Gon12@gmail.com', '2023-04-02 10:06:26', 'Europe', 'Francia', 'Office'),
(31, 'Gon12@gmail.com', '2023-04-02 10:07:00', 'Asia', '', 'Coworking office'),
(32, 'Gon12@gmail.com', '2023-04-02 10:07:51', 'Europe', 'Francia', 'Office'),
(33, 'Gon12@gmail.com', '2023-04-02 10:20:03', 'Europe', 'Francia', 'Office'),
(34, 'Gon12@gmail.com', '2023-04-02 10:20:08', 'Europe', 'Francia', 'Office'),
(35, 'Gon12@gmail.com', '2023-04-02 10:21:46', 'Europe', 'España', 'Coworking office'),
(36, 'Gon12@gmail.com', '2023-04-02 10:21:50', 'Europe', 'España', 'Coworking office'),
(37, 'Gon12@gmail.com', '2023-04-02 10:22:25', 'Europe', 'España', 'Coworking office'),
(38, 'Gon12@gmail.com', '2023-04-02 10:22:29', 'Europe', 'España', 'Coworking office'),
(39, 'Gon12@gmail.com', '2023-04-02 10:22:39', 'Europe', 'Francia', 'Coworking office'),
(40, 'Gon12@gmail.com', '2023-04-02 10:22:44', 'Europe', 'Francia', 'Coworking office'),
(41, 'Gon12@gmail.com', '2023-04-02 10:23:25', 'Europe', 'Francia', 'Coworking office'),
(42, 'Gon12@gmail.com', '2023-04-02 10:45:14', 'Europe', 'Francia', 'Coworking office'),
(43, 'Gon12@gmail.com', '2023-04-02 10:55:41', 'Europe', 'España', 'Coworking office'),
(44, '', '2023-04-02 10:59:43', 'Europe', 'Alemania', 'Working from home'),
(45, '', '2023-04-02 11:00:18', 'Latin America', 'Alemania', 'Working from home'),
(46, 'Gon12@gmail.com', '2023-04-02 11:01:27', 'Latin America', 'Alemania', 'Working from home'),
(47, 'Gon12@gmail.com', '2023-04-02 11:01:35', 'Asia', 'España', 'Office'),
(48, 'Gon12@gmail.com', '2023-04-02 11:01:40', 'Asia', 'España', 'Office'),
(49, 'Gon12@gmail.com', '2023-04-02 11:01:58', 'Asia', 'España', 'Office'),
(50, 'Gon12@gmail.com', '2023-04-02 11:12:37', 'Asia', 'Francia', 'Working from home'),
(51, 'Gon12@gmail.com', '2023-04-02 11:12:40', 'Asia', 'Francia', 'Working from home'),
(52, 'Gon12@gmail.com', '2023-04-02 11:45:20', 'Asia', 'Francia', 'Working from home'),
(53, 'Gon12@gmail.com', '2023-04-02 11:59:47', 'Europe', 'España', 'Working from home'),
(54, 'Gon12@gmail.com', '2023-04-02 12:55:38', 'Europe', 'España', 'Coworking office'),
(55, 'Gon12@gmail.com', '2023-04-02 12:55:46', 'Asia', 'Francia', 'Office'),
(56, 'Gon12@gmail.com', '2023-04-06 08:54:15', 'Asia', 'España', 'Working from home'),
(57, 'Gon12@gmail.com', '2023-04-06 09:01:50', 'Asia', 'España', 'Working from home'),
(58, 'Gon12@gmail.com', '2023-04-06 09:02:17', 'Asia', 'España', 'Working from home'),
(59, 'Gon12@gmail.com', '2023-04-06 09:03:08', 'Asia', 'España', 'Working from home'),
(60, 'Gon12@gmail.com', '2023-04-06 09:03:22', 'Asia', 'España', 'Working from home'),
(61, 'Gon12@gmail.com', '2023-04-06 09:12:45', '', '', 'Working from home'),
(62, 'Gon12@gmail.com', '2023-04-06 09:15:48', '', '', 'Working from home'),
(63, 'Gon12@gmail.com', '2023-04-06 09:16:27', '', '', 'Working from home'),
(64, 'Gon12@gmail.com', '2023-04-06 09:16:33', '', '', 'Working from home'),
(65, 'Gon12@gmail.com', '2023-04-06 09:18:21', '', 'asdada', ''),
(66, 'Gon12@gmail.com', '2023-04-06 09:18:38', 'España', '123132', 'Coworking office'),
(67, 'Gon12@gmail.com', '2023-04-06 09:20:31', 'España', '123132', 'Coworking office'),
(68, 'Gon12@gmail.com', '2023-04-06 09:23:49', 'España', '123132', 'Coworking office'),
(69, 'Gon12@gmail.com', '2023-04-06 09:26:02', '', '123132', 'Coworking office'),
(70, 'Gon12@gmail.com', '2023-04-06 09:26:45', '', '123132', 'Coworking office'),
(71, 'Gon12@gmail.com', '2023-04-06 09:27:02', '', '123132', 'Coworking office'),
(72, 'Gon12@gmail.com', '2023-04-06 09:31:18', '', '123132', 'Coworking office'),
(73, 'Gon12@gmail.com', '2023-04-06 09:31:34', 'España', 'Mi casa', 'Coworking office'),
(74, 'Gon12@gmail.com', '2023-04-06 09:32:27', 'España', 'Mi casa', 'Coworking office'),
(75, 'Gon12@gmail.com', '2023-04-06 09:32:36', 'España', '123132', 'Office'),
(76, 'Gon12@gmail.com', '2023-04-06 09:42:01', 'España', '123132', 'Office'),
(77, 'Gon12@gmail.com', '2023-04-06 09:42:37', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(78, 'Gon12@gmail.com', '2023-04-06 09:44:22', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(79, 'Gon12@gmail.com', '2023-04-06 09:44:28', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(80, 'Gon12@gmail.com', '2023-04-06 09:45:13', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(81, 'Gon12@gmail.com', '2023-04-06 09:46:20', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(82, 'Gon12@gmail.com', '2023-04-06 09:46:49', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(83, 'Gon12@gmail.com', '2023-04-06 09:48:11', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(84, 'Gon12@gmail.com', '2023-04-06 09:50:02', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(85, 'Gon12@gmail.com', '2023-04-06 09:50:46', 'España_MAD', 'Cowoking Edificio Picaso ', 'Coworking office'),
(86, 'Gon12@gmail.com', '2023-04-06 09:51:15', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(87, 'Gon12@gmail.com', '2023-04-06 09:51:48', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(88, 'Gon12@gmail.com', '2023-04-06 09:52:10', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(89, 'Gon12@gmail.com', '2023-04-06 09:53:11', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(90, 'Gon12@gmail.com', '2023-04-06 09:53:45', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(91, 'Gon12@gmail.com', '2023-04-06 09:54:11', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(92, 'Gon12@gmail.com', '2023-04-06 09:55:44', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(93, 'Gon12@gmail.com', '2023-04-06 09:56:39', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(94, 'Gon12@gmail.com', '2023-04-06 09:57:03', 'Barcelona (España)', 'Mi casa', 'Coworking office'),
(95, 'Gon12@gmail.com', '2023-04-06 10:29:44', '', 'Mi casa', ''),
(96, 'Gon12@gmail.com', '2023-04-06 10:41:07', '', 'Mi casa', ''),
(97, 'Gon12@gmail.com', '2023-04-06 10:42:12', 'Madrid (España)', 'Cowoking Edificio Picaso ', 'Coworking office'),
(98, 'Gon12@gmail.com', '2023-04-06 10:42:26', 'Valencia (España)', 'asdada', 'Coworking office'),
(99, 'Gon12@gmail.com', '2023-04-06 10:43:10', 'Valencia (España)', 'asdada', 'Coworking office'),
(100, 'Gon12@gmail.com', '2023-04-06 10:43:27', 'Valencia (España)', 'asdada', 'Coworking office'),
(101, 'Gon12@gmail.com', '2023-04-06 10:44:09', 'Valencia (España)', 'asdada', 'Coworking office'),
(102, 'Gon12@gmail.com', '2023-04-06 10:44:29', 'Valencia (España)', 'asdada', 'Coworking office'),
(103, 'Gon12@gmail.com', '2023-04-06 10:44:42', 'Valencia (España)', 'asdada', 'Coworking office'),
(104, 'Gon12@gmail.com', '2023-04-06 10:45:16', 'Valencia (España)', 'asdada', 'Coworking office'),
(105, 'Gon12@gmail.com', '2023-04-06 10:45:45', 'Valencia (España)', 'asdada', 'Coworking office'),
(106, 'gonzalosjg93@gmail.com', '2023-04-06 10:49:34', 'Madrid (España)', 'asdada', 'Coworking office'),
(107, 'Gon12@gmail.com', '2023-04-06 11:57:02', '', '', ''),
(108, 'Gon12@gmail.com', '2023-04-06 11:58:01', '', '', ''),
(109, 'Gon12@gmail.com', '2023-04-06 11:58:17', '', '', ''),
(110, 'Gon12@gmail.com', '2023-04-06 11:58:25', '', '', ''),
(111, 'Gon12@gmail.com', '2023-04-06 11:59:02', '', '', ''),
(112, 'Gon12@gmail.com', '2023-04-06 11:59:47', '', '', ''),
(113, 'Gon12@gmail.com', '2023-04-06 12:05:08', '', '', ''),
(114, 'Gon12@gmail.com', '2023-04-06 12:08:43', 'Madrid (España)', 'Mi casa', 'Office'),
(115, 'Gon12@gmail.com', '2023-04-06 12:09:45', 'Madrid (España)', 'Mi casa', 'Office'),
(116, 'Gon12@gmail.com', '2023-04-06 12:11:27', 'Madrid (España)', 'Mi casa', 'Office'),
(117, 'Gon12@gmail.com', '2023-04-06 12:12:36', 'Madrid (España)', 'Mi casa', 'Office'),
(118, 'Gon12@gmail.com', '2023-04-06 12:14:54', 'Madrid (España)', 'Mi casa', 'Office'),
(119, 'Gon12@gmail.com', '2023-04-06 12:20:33', 'Madrid (España)', 'Mi casa', 'Office'),
(120, 'Gon12@gmail.com', '2023-04-06 12:21:39', 'Madrid (España)', 'Mi casa', 'Office'),
(121, 'Gon12@gmail.com', '2023-04-06 12:22:16', 'Madrid (España)', 'Mi casa', 'Office'),
(122, 'Gon12@gmail.com', '2023-04-06 12:23:14', 'Madrid (España)', 'Mi casa', 'Office'),
(123, 'Gon12@gmail.com', '2023-04-06 12:23:34', 'Madrid (España)', 'Mi casa', 'Office'),
(124, 'Gon12@gmail.com', '2023-04-06 12:24:56', 'Madrid (España)', 'Mi casa', 'Office'),
(125, 'Gon12@gmail.com', '2023-04-06 12:25:09', 'Madrid (España)', 'Mi casa', 'Office'),
(126, 'Gon12@gmail.com', '2023-04-06 12:26:23', 'Madrid (España)', 'Mi casa', 'Office'),
(127, 'Gon12@gmail.com', '2023-04-06 12:26:50', 'Madrid (España)', 'Mi casa', 'Office'),
(128, 'Gon12@gmail.com', '2023-04-06 12:28:33', '', '', ''),
(129, 'Gon12@gmail.com', '2023-04-06 12:32:17', '', '', ''),
(130, 'Gon12@gmail.com', '2023-04-06 12:33:28', '', '', ''),
(131, 'Gon12@gmail.com', '2023-04-06 12:33:47', '', '', ''),
(132, 'Gon12@gmail.com', '2023-04-06 12:34:30', '', '', ''),
(133, 'Gon12@gmail.com', '2023-04-06 12:34:59', '', '', ''),
(134, 'Gon12@gmail.com', '2023-04-06 12:35:29', '', '', ''),
(135, 'Gon12@gmail.com', '2023-04-06 12:36:49', '', '', ''),
(136, 'Gon12@gmail.com', '2023-04-06 12:42:41', '', '', ''),
(137, 'Gon12@gmail.com', '2023-04-06 13:03:02', '', '', ''),
(138, 'Gon12@gmail.com', '2023-04-06 13:03:13', '', '', ''),
(139, 'Gon12@gmail.com', '2023-04-06 13:03:59', '', '', ''),
(140, 'Gon12@gmail.com', '2023-04-06 16:05:54', '', '', ''),
(141, 'Gon12@gmail.com', '2023-04-06 16:06:01', '', '', ''),
(142, 'Gon12@gmail.com', '2023-04-06 16:08:38', '', '', ''),
(143, 'Gon12@gmail.com', '2023-04-06 16:08:41', '', '', ''),
(144, 'Gon12@gmail.com', '2023-04-06 16:08:54', 'Málaga (España)', 'asdada', 'Coworking office'),
(145, 'Gon12@gmail.com', '2023-04-06 16:11:30', 'Málaga (España)', 'asdada', 'Coworking office'),
(146, 'Gon12@gmail.com', '2023-04-06 16:11:37', 'Madrid (España)', 'asdada', 'Coworking office'),
(147, 'Gon12@gmail.com', '2023-04-06 16:27:27', 'Madrid (España)', 'asdada', 'Coworking office'),
(148, 'Gon12@gmail.com', '2023-04-06 16:27:42', 'Madrid (España)', 'asd', 'Coworking office'),
(149, 'Gon12@gmail.com', '2023-04-06 16:30:02', 'Madrid (España)', 'asd', 'Coworking office'),
(150, 'Gon12@gmail.com', '2023-04-06 16:31:24', 'Madrid (España)', 'asd', 'Coworking office'),
(151, 'Gon12@gmail.com', '2023-04-06 16:31:30', '', 'asdada', 'Coworking office'),
(152, 'Gon12@gmail.com', '2023-04-06 16:33:33', '', 'asdada', 'Coworking office'),
(153, 'Gon12@gmail.com', '2023-04-06 16:33:41', 'Madrid (España)', 'asd', 'Coworking office'),
(154, 'Gon12@gmail.com', '2023-04-06 16:36:02', 'Madrid (España)', 'Mi casa', 'Working from home'),
(155, 'Gon12@gmail.com', '2023-04-06 16:36:39', 'Barcelona (España)', 'Mi casa', 'Office'),
(156, 'Gon12@gmail.com', '2023-04-06 16:41:13', 'Madrid (España)', 'asdada', 'Coworking office'),
(157, 'Gon12@gmail.com', '2023-04-06 16:41:17', 'Madrid (España)', 'asdada', 'Coworking office'),
(158, 'Gon12@gmail.com', '2023-04-06 16:41:23', 'Madrid (España)', 'asdada', 'Coworking office'),
(159, 'Gon12@gmail.com', '2023-04-06 16:42:27', 'Madrid (España)', 'asdada', 'Coworking office'),
(160, 'Gon12@gmail.com', '2023-04-06 16:42:31', 'Madrid (España)', 'asdada', 'Coworking office'),
(161, 'Gon12@gmail.com', '2023-04-06 16:42:36', 'Madrid (España)', 'asdada', 'Coworking office'),
(162, 'Gon12@gmail.com', '2023-04-06 16:46:28', 'Madrid (España)', 'asdada', 'Coworking office'),
(163, 'Gon12@gmail.com', '2023-04-06 16:46:35', 'Madrid (España)', 'asdada', 'Coworking office'),
(164, 'Gon12@gmail.com', '2023-04-06 16:46:53', 'Madrid (España)', 'asdada', 'Coworking office'),
(165, 'Gon12@gmail.com', '2023-04-06 16:47:00', 'Madrid (España)', 'asdada', 'Coworking office'),
(166, 'Gon12@gmail.com', '2023-04-06 16:48:38', 'Madrid (España)', 'asdada', 'Coworking office'),
(167, 'Gon12@gmail.com', '2023-04-06 16:48:45', 'Madrid (España)', 'asdada', 'Coworking office'),
(168, 'Gon12@gmail.com', '2023-04-06 16:48:49', 'Madrid (España)', 'asdada', 'Coworking office'),
(169, 'Gon12@gmail.com', '2023-04-06 16:48:56', 'Madrid (España)', 'asdada', 'Coworking office'),
(170, 'Gon12@gmail.com', '2023-04-06 16:49:04', 'Madrid (España)', 'Mi casa', 'Working from home'),
(171, 'Gon12@gmail.com', '2023-04-07 09:35:29', 'Madrid (España)', 'Mi casa', 'Working from home'),
(172, 'Gon12@gmail.com', '2023-04-07 09:35:44', 'Barcelona (España)', 'Mi casa', 'Working from home'),
(173, 'Gon12@gmail.com', '2023-04-07 09:37:00', 'Barcelona (España)', 'Mi casa', 'Working from home'),
(174, 'Gon12@gmail.com', '2023-04-07 09:37:09', 'Madrid (España)', 'Mi casa', 'Trabajando desde casa'),
(175, 'Gon12@gmail.com', '2023-04-07 09:37:24', 'Málaga (España)', 'Mi casa', 'Trabajando desde casa'),
(176, 'Gon12@gmail.com', '2023-04-07 09:38:36', 'Barcelona (España)', 'asdada', 'Oficina de Coworking'),
(177, 'Gon12@gmail.com', '2023-04-07 09:38:40', 'Barcelona (España)', 'asdada', 'Oficina de Coworking'),
(178, 'Gon12@gmail.com', '2023-04-07 09:38:49', 'Sevilla (España)', 'Mi casa', 'Trabajando desde casa'),
(179, 'Gon12@gmail.com', '2023-04-07 09:46:13', 'Niza (Francia)', 'Mi casa', 'Trabajando en la oficina'),
(180, 'Gon12@gmail.com', '2023-04-07 09:47:32', 'Niza (Francia)', 'Mi casa', 'Trabajando en la oficina'),
(181, 'Gon12@gmail.com', '2023-04-07 10:38:49', '', '', ''),
(182, 'Gon12@gmail.com', '2023-04-07 10:44:50', '', '', ''),
(183, 'Gon12@gmail.com', '2023-04-07 10:45:16', '', '', ''),
(184, 'Gon12@gmail.com', '2023-04-07 10:47:10', '', '', ''),
(185, 'Gon12@gmail.com', '2023-04-07 10:51:07', '', '', ''),
(186, 'Gon12@gmail.com', '2023-04-07 10:51:44', '', '', ''),
(187, 'Gon12@gmail.com', '2023-04-07 10:52:45', '', '', ''),
(188, 'Gon12@gmail.com', '2023-04-07 10:57:04', '', '', ''),
(189, 'Gon12@gmail.com', '2023-04-07 10:58:49', '', '', ''),
(190, 'Gon12@gmail.com', '2023-04-07 11:02:50', '', '', ''),
(191, 'Gon12@gmail.com', '2023-04-07 11:05:10', '', '', ''),
(192, 'Gon12@gmail.com', '2023-04-07 11:10:02', '', '', ''),
(193, 'Gon12@gmail.com', '2023-04-07 11:10:14', '', '', ''),
(194, 'Gon12@gmail.com', '2023-04-07 11:10:41', '', '', ''),
(195, 'Gon12@gmail.com', '2023-04-07 11:11:29', '', '', ''),
(196, 'Gon12@gmail.com', '2023-04-07 11:15:39', '', '', ''),
(197, 'Gon12@gmail.com', '2023-04-07 11:17:09', '', '', ''),
(198, 'Gon12@gmail.com', '2023-04-07 11:20:34', '', '', ''),
(199, 'Gon12@gmail.com', '2023-04-07 11:21:58', '', '', ''),
(200, 'JM80@gmail.com', '2023-04-22 10:49:18', 'Madrid (España)', 'Mi casa', 'Trabajando desde casa'),
(201, 'DS@gmail.com', '2023-04-22 15:27:00', 'Madrid (España)', 'Mi casa', 'Trabajando desde casa'),
(202, 'DS@gmail.com', '2023-04-22 15:27:38', 'Madrid (España)', 'Mi casa', 'Trabajando desde casa'),
(203, 'DS@gmail.com', '2023-04-22 15:28:05', 'Málaga (España)', 'Residencia temporal', 'Trabajando desde casa'),
(204, 'DS@gmail.com', '2023-04-22 15:29:33', 'Málaga (España)', 'Residencia temporal', 'Trabajando desde casa'),
(205, 'DS@gmail.com', '2023-04-22 16:03:11', 'Málaga (España)', 'Residencia temporal', 'Trabajando desde casa'),
(206, 'Gon12@gmail.com', '2023-04-23 11:58:45', 'Madrid (España)', 'Oficina de Avenida de Bruselas', 'Trabajando en la oficina'),
(211, 'gsj@gmail.com', '2023-04-25 20:39:17', 'Madrid (España)', 'Mi casa', 'Trabajando desde casa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`) VALUES
(1, 'Hola, el próximo lunes 8 de mayo estaré trabajando en la oficina de Madrid por si alguien estará o se anima a venir. Un saludo  ', 'gonzalo_san', 'none', '2023-04-22 16:05:30', 'no', 'no', 0),
(2, '¡Hombre!, Por fin alguien se digna a honrarnos con su presencia por la oficina. Allí estaré cómo todos los lunes, martes y miércoles. Un saludo ', 'dwith_sruth', 'none', '2023-04-23 12:15:59', 'no', 'no', 0),
(3, 'Muy bien chicos! Me apunto, así nos vemos podemos poner al día el estado de las relaciones con los clientes. Saludos', 'pam_beesly', 'none', '2023-04-23 12:31:56', 'no', 'no', 0),
(4, 'Me gustaría que ese lunes revisásemos la información de este enlace: https://es.weforum.org/agenda/2023/04/que-paises-estan-a-la-vanguardia-del-hidrogeno/. Si podéis revisarlo antes mejor así ahorraremos tiempo. Un saludo de nuevo', 'pam_beesly', 'none', '2023-04-23 12:44:08', 'no', 'no', 0),
(7, 'Allí nos vemos, me apunto también. :)', 'gonzalo_sj', 'none', '2023-04-25 20:41:55', 'no', 'no', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`Id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(1, 'Jim ', 'Halper', 'gonzalo_san', 'Gon12@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-03-04', '../additional_resources/images/profile_pics/gonzalo_san0df61d44b1bf7eca72bd1504eaeeddacn.jpeg', 21, 0, 'no', ','),
(2, 'G11123', 'G1212', 'g11123_g1212', 'Gonzalosjg92@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-03-13', '../additional_resources/images/profile_pics/defaults/head_emerald.png', 0, 0, 'no', ','),
(3, 'Juan', 'Garcia', 'juan_garcia', 'Jg@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-03-14', '../additional_resources/images/profile_pics/defaults/head_emerald.png', 3, 0, 'no', ','),
(4, 'Gonzalosanjos', 'Joségarcía', 'gonzalosanjos_joségarcía', 'Gonzalosjg93@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-04-06', '../additional_resources/images/profile_pics/gonzalosanjos_joségarcía25a012e1b80b826fbbc91299cebcc5aen.jpeg', 1, 0, 'no', ','),
(5, 'Roberto', 'Garcia', 'roberto_garcia', '12313qweqeqeqe@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2023-04-22', '../additional_resources/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ','),
(6, 'Jim', 'Halper', 'jim_halper', 'Jm80@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-22', '../additional_resources/images/profile_pics/defaults/head_wet_asphalt.png', 0, 0, 'no', ','),
(7, 'Dwight', 'Schrute', 'dwith_sruth', 'Ds@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-22', '../additional_resources/images/profile_pics/dwith_sruth3201601e8a4ee2456860d5f4fe757b1fn.jpeg', 1, 0, 'no', ','),
(8, 'Pam', 'Beesly', 'pam_beesly', 'Pb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-23', '../additional_resources/images/profile_pics/pam_beeslyda7ef03cd0850b99ab0e7d4018bfca1cn.jpeg', 2, 0, 'no', ','),
(9, 'Gsg', 'Qwer', 'gsg_qwer', 'Gsjj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-23', '../additional_resources/images/profile_pics/gsg_qwer8d95ada1c899b20b564db0a81d8887cfn.jpeg', 0, 0, 'no', ','),
(12, 'Gonzalo', 'San Jose', 'gonzalo_sj', 'Gsj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2023-04-25', '../additional_resources/images/profile_pics/gonzalo_sj00bd32323e262aa11ac665a80ed5c3ccn.jpeg', 1, 0, 'no', ',');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clockins`
--
ALTER TABLE `clockins`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clockins`
--
ALTER TABLE `clockins`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
