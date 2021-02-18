-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 17 fév. 2021 à 14:09
-- Version du serveur :  8.0.22
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id` int NOT NULL,
  `text` varchar(80) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_user` int NOT NULL,
  `id_stream` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `text`, `created_at`, `updated_at`, `id_user`, `id_stream`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 100, '1'),
(2, 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, 99, '1'),
(3, 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, 98, '1'),
(4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 97, '1'),
(5, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 96, '1'),
(6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 95, '1'),
(7, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 94, '1'),
(8, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, 93, '8'),
(9, 'Lorem', '0000-00-00 00:00:00', NULL, 92, '9'),
(10, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 91, '10'),
(11, 'Lorem ipsum dolor', '0000-00-00 00:00:00', NULL, 90, '11'),
(12, 'Lorem ipsum dolor sit', '0000-00-00 00:00:00', NULL, 89, '12'),
(13, 'Lorem', '0000-00-00 00:00:00', NULL, 88, '13'),
(14, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 87, '14'),
(15, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 86, '15'),
(16, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 85, '16'),
(17, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 84, '17'),
(18, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 83, '18'),
(19, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 82, '19'),
(20, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 81, '20'),
(21, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 80, '21'),
(22, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 79, '22'),
(23, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 78, '23'),
(24, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, 77, '24'),
(25, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, 76, '25'),
(26, 'Lorem ipsum', '0000-00-00 00:00:00', NULL, 75, '26'),
(27, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 74, '27'),
(28, 'Lorem', '0000-00-00 00:00:00', NULL, 73, '28'),
(29, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 72, '29'),
(30, 'Lorem ipsum dolor sit', '0000-00-00 00:00:00', NULL, 71, '30'),
(31, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 70, '31'),
(32, 'Lorem ipsum dolor sit amet,', '2016-03-06 21:31:00', NULL, 69, '32'),
(33, 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, 68, '33'),
(34, 'Lorem ipsum', '0000-00-00 00:00:00', NULL, 67, '34'),
(35, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 66, '35'),
(36, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 65, '36'),
(37, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 64, '37'),
(38, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 63, '38'),
(39, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 62, '39'),
(40, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 61, '40'),
(41, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 60, '41'),
(42, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 59, '42'),
(43, 'Lorem ipsum dolor', '0000-00-00 00:00:00', NULL, 58, '43'),
(44, 'Lorem', '0000-00-00 00:00:00', NULL, 57, '44'),
(45, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 56, '45'),
(46, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 55, '46'),
(47, 'Lorem', '0000-00-00 00:00:00', NULL, 54, '47'),
(48, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 53, '48'),
(49, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 52, '49'),
(50, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 51, '50'),
(51, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 50, '51'),
(52, 'Lorem ipsum', '0000-00-00 00:00:00', NULL, 49, '52'),
(53, 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, 48, '53'),
(54, 'Lorem', '0000-00-00 00:00:00', NULL, 47, '54'),
(55, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 46, '55'),
(56, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 45, '56'),
(57, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 44, '57'),
(58, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 43, '58'),
(59, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, 42, '59'),
(60, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 41, '60'),
(61, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 40, '61'),
(62, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 39, '62'),
(63, 'Lorem', '0000-00-00 00:00:00', NULL, 38, '63'),
(64, 'Lorem ipsum', '0000-00-00 00:00:00', NULL, 37, '64'),
(65, 'Lorem', '0000-00-00 00:00:00', NULL, 36, '65'),
(66, 'Lorem', '0000-00-00 00:00:00', NULL, 35, '66'),
(67, 'Lorem', '0000-00-00 00:00:00', NULL, 34, '67'),
(68, 'Lorem ipsum dolor sit', '0000-00-00 00:00:00', NULL, 33, '68'),
(69, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 32, '69'),
(70, 'Lorem ipsum dolor sit', '0000-00-00 00:00:00', NULL, 31, '70'),
(71, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, 30, '71'),
(72, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 29, '72'),
(73, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 28, '73'),
(74, 'Lorem ipsum', '0000-00-00 00:00:00', NULL, 27, '74'),
(75, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 26, '75'),
(76, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 25, '76'),
(77, 'Lorem ipsum', '0000-00-00 00:00:00', NULL, 24, '77'),
(78, 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, 23, '78'),
(79, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 22, '79'),
(80, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 21, '80'),
(81, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, 20, '81'),
(82, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 19, '82'),
(83, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 18, '83'),
(84, 'Lorem', '0000-00-00 00:00:00', NULL, 17, '84'),
(85, 'Lorem ipsum dolor', '0000-00-00 00:00:00', NULL, 16, '85'),
(86, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 15, '86'),
(87, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, 14, '87'),
(88, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 13, '88'),
(89, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 12, '89'),
(90, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, 11, '90'),
(91, 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, 10, '91'),
(92, 'Lorem ipsum dolor', '0000-00-00 00:00:00', NULL, 9, '92'),
(93, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 8, '93'),
(94, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. ', '0000-00-00 00:00:00', NULL, 7, '94'),
(95, 'Lorem ipsum dolor sit', '0000-00-00 00:00:00', NULL, 6, '95'),
(96, 'Lorem ipsum dolor', '0000-00-00 00:00:00', NULL, 5, '96'),
(97, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, 4, '97'),
(98, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 3, '98'),
(99, 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, 2, '99'),
(100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, 1, '100');

-- --------------------------------------------------------

--
-- Structure de la table `notification`
--

CREATE TABLE `notification` (
  `id` int NOT NULL,
  `text` varchar(80) NOT NULL,
  `id_user` int NOT NULL,
  `id_sub` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `private_message`
--

CREATE TABLE `private_message` (
  `id` int NOT NULL,
  `text` varchar(100) NOT NULL,
  `id_sender` int NOT NULL,
  `id_sendee` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `private_message`
--

INSERT INTO `private_message` (`id`, `text`, `id_sender`, `id_sendee`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 100, 1, '0000-00-00 00:00:00', NULL, NULL),
(2, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 99, 1, '0000-00-00 00:00:00', NULL, NULL),
(3, 'Lorem ipsum dolor sit amet,', 98, 1, '0000-00-00 00:00:00', NULL, NULL),
(4, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 97, 1, '0000-00-00 00:00:00', NULL, NULL),
(5, 'Lorem ipsum dolor', 96, 1, '0000-00-00 00:00:00', NULL, NULL),
(6, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 95, 1, '0000-00-00 00:00:00', NULL, NULL),
(7, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 94, 1, '0000-00-00 00:00:00', NULL, NULL),
(8, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 93, 1, '0000-00-00 00:00:00', NULL, NULL),
(9, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 92, 9, '0000-00-00 00:00:00', NULL, NULL),
(10, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 91, 10, '0000-00-00 00:00:00', NULL, NULL),
(11, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 90, 11, '0000-00-00 00:00:00', NULL, NULL),
(12, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 89, 12, '0000-00-00 00:00:00', NULL, NULL),
(13, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 88, 13, '0000-00-00 00:00:00', NULL, NULL),
(14, 'Lorem', 87, 14, '0000-00-00 00:00:00', NULL, NULL),
(15, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 86, 15, '0000-00-00 00:00:00', NULL, NULL),
(16, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 85, 16, '0000-00-00 00:00:00', NULL, NULL),
(17, 'Lorem ipsum dolor sit amet,', 84, 17, '0000-00-00 00:00:00', NULL, NULL),
(18, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 83, 18, '0000-00-00 00:00:00', NULL, NULL),
(19, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 82, 19, '0000-00-00 00:00:00', NULL, NULL),
(20, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 81, 20, '0000-00-00 00:00:00', NULL, NULL),
(21, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 80, 21, '0000-00-00 00:00:00', NULL, NULL),
(22, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 79, 22, '0000-00-00 00:00:00', NULL, NULL),
(23, 'Lorem ipsum dolor', 78, 23, '0000-00-00 00:00:00', NULL, NULL),
(24, 'Lorem', 77, 24, '0000-00-00 00:00:00', NULL, NULL),
(25, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 76, 25, '0000-00-00 00:00:00', NULL, NULL),
(26, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 75, 26, '0000-00-00 00:00:00', NULL, NULL),
(27, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 74, 27, '0000-00-00 00:00:00', NULL, NULL),
(28, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 73, 28, '0000-00-00 00:00:00', NULL, NULL),
(29, 'Lorem', 72, 29, '0000-00-00 00:00:00', NULL, NULL),
(30, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 71, 30, '0000-00-00 00:00:00', NULL, NULL),
(31, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 70, 31, '0000-00-00 00:00:00', NULL, NULL),
(32, 'Lorem ipsum dolor', 69, 32, '0000-00-00 00:00:00', NULL, NULL),
(33, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 68, 33, '0000-00-00 00:00:00', NULL, NULL),
(34, 'Lorem ipsum dolor', 67, 34, '0000-00-00 00:00:00', NULL, NULL),
(35, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 66, 35, '0000-00-00 00:00:00', NULL, NULL),
(36, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 65, 36, '0000-00-00 00:00:00', NULL, NULL),
(37, 'Lorem ipsum dolor sit', 64, 37, '0000-00-00 00:00:00', NULL, NULL),
(38, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 63, 38, '0000-00-00 00:00:00', NULL, NULL),
(39, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 62, 39, '0000-00-00 00:00:00', NULL, NULL),
(40, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 61, 40, '0000-00-00 00:00:00', NULL, NULL),
(41, 'Lorem ipsum dolor sit amet, consectetuer', 60, 41, '0000-00-00 00:00:00', NULL, NULL),
(42, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 59, 42, '0000-00-00 00:00:00', NULL, NULL),
(43, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 58, 43, '0000-00-00 00:00:00', NULL, NULL),
(44, 'Lorem', 57, 44, '0000-00-00 00:00:00', NULL, NULL),
(45, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 56, 45, '0000-00-00 00:00:00', NULL, NULL),
(46, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 55, 46, '0000-00-00 00:00:00', NULL, NULL),
(47, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 54, 47, '0000-00-00 00:00:00', NULL, NULL),
(48, 'Lorem ipsum dolor', 53, 48, '0000-00-00 00:00:00', NULL, NULL),
(49, 'Lorem ipsum dolor', 52, 49, '0000-00-00 00:00:00', NULL, NULL),
(50, 'Lorem ipsum', 51, 50, '0000-00-00 00:00:00', NULL, NULL),
(51, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 50, 51, '0000-00-00 00:00:00', NULL, NULL),
(52, 'Lorem ipsum', 49, 52, '0000-00-00 00:00:00', NULL, NULL),
(53, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 48, 53, '0000-00-00 00:00:00', NULL, NULL),
(54, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 47, 54, '0000-00-00 00:00:00', NULL, NULL),
(55, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 46, 55, '0000-00-00 00:00:00', NULL, NULL),
(56, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 45, 56, '0000-00-00 00:00:00', NULL, NULL),
(57, 'Lorem ipsum dolor sit amet,', 44, 57, '0000-00-00 00:00:00', NULL, NULL),
(58, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 43, 58, '0000-00-00 00:00:00', NULL, NULL),
(59, 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 42, 59, '0000-00-00 00:00:00', NULL, NULL),
(60, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 41, 60, '0000-00-00 00:00:00', NULL, NULL),
(61, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 40, 61, '0000-00-00 00:00:00', NULL, NULL),
(62, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 39, 62, '0000-00-00 00:00:00', NULL, NULL),
(63, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 38, 63, '0000-00-00 00:00:00', NULL, NULL),
(64, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 37, 64, '0000-00-00 00:00:00', NULL, NULL),
(65, 'Lorem ipsum dolor', 36, 65, '0000-00-00 00:00:00', NULL, NULL),
(66, 'Lorem ipsum dolor sit amet, consectetuer', 35, 66, '0000-00-00 00:00:00', NULL, NULL),
(67, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 34, 67, '0000-00-00 00:00:00', NULL, NULL),
(68, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 33, 68, '0000-00-00 00:00:00', NULL, NULL),
(69, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 32, 69, '0000-00-00 00:00:00', NULL, NULL),
(70, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 31, 70, '0000-00-00 00:00:00', NULL, NULL),
(71, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 30, 71, '0000-00-00 00:00:00', NULL, NULL),
(72, 'Lorem ipsum dolor sit amet, consectetuer', 29, 72, '0000-00-00 00:00:00', NULL, NULL),
(73, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 28, 73, '0000-00-00 00:00:00', NULL, NULL),
(74, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 27, 74, '0000-00-00 00:00:00', NULL, NULL),
(75, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 26, 75, '0000-00-00 00:00:00', NULL, NULL),
(76, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 25, 76, '0000-00-00 00:00:00', NULL, NULL),
(77, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 24, 77, '0000-00-00 00:00:00', NULL, NULL),
(78, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 23, 78, '0000-00-00 00:00:00', NULL, NULL),
(79, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 22, 79, '0000-00-00 00:00:00', NULL, NULL),
(80, 'Lorem ipsum', 21, 80, '0000-00-00 00:00:00', NULL, NULL),
(81, 'Lorem ipsum dolor sit', 20, 81, '0000-00-00 00:00:00', NULL, NULL),
(82, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 19, 82, '0000-00-00 00:00:00', NULL, NULL),
(83, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 18, 83, '0000-00-00 00:00:00', NULL, NULL),
(84, 'Lorem ipsum dolor sit amet, consectetuer', 17, 84, '0000-00-00 00:00:00', NULL, NULL),
(85, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 16, 85, '0000-00-00 00:00:00', NULL, NULL),
(86, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 15, 86, '0000-00-00 00:00:00', NULL, NULL),
(87, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 14, 87, '0000-00-00 00:00:00', NULL, NULL),
(88, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 13, 88, '0000-00-00 00:00:00', NULL, NULL),
(89, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 12, 89, '0000-00-00 00:00:00', NULL, NULL),
(90, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 11, 90, '0000-00-00 00:00:00', NULL, NULL),
(91, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 10, 91, '0000-00-00 00:00:00', NULL, NULL),
(92, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 9, 92, '0000-00-00 00:00:00', NULL, NULL),
(93, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 8, 93, '0000-00-00 00:00:00', NULL, NULL),
(94, 'Lorem ipsum dolor sit amet, consectetuer', 7, 94, '0000-00-00 00:00:00', NULL, NULL),
(95, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 6, 95, '0000-00-00 00:00:00', NULL, NULL),
(96, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 5, 96, '0000-00-00 00:00:00', NULL, NULL),
(97, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 4, 97, '0000-00-00 00:00:00', NULL, NULL),
(98, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adip', 3, 98, '0000-00-00 00:00:00', NULL, NULL),
(99, 'Lorem ipsum dolor sit', 2, 99, '0000-00-00 00:00:00', NULL, NULL),
(100, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 1, 100, '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `stream`
--

CREATE TABLE `stream` (
  `id` varchar(128) NOT NULL,
  `title` varchar(50) NOT NULL,
  `visibility` int NOT NULL,
  `created_at` datetime NOT NULL,
  `id_user` int NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `anonymous` tinyint(1) NOT NULL,
  `urgency` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stream`
--

INSERT INTO `stream` (`id`, `title`, `visibility`, `created_at`, `id_user`, `latitude`, `longitude`, `anonymous`, `urgency`, `updated_at`) VALUES
('1', 'sed,', 1, '0000-00-00 00:00:00', 1, 10.8575, -114.248, 0, 0, '0000-00-00 00:00:00'),
('10', 'neque', 0, '0000-00-00 00:00:00', 10, -78.7383, -115.374, 0, 0, '0000-00-00 00:00:00'),
('100', 'ac', 1, '0000-00-00 00:00:00', 100, -14.9834, -60.561, 0, 0, '0000-00-00 00:00:00'),
('11', 'amet', 0, '0000-00-00 00:00:00', 11, -43.7868, 146.83, 0, 0, '0000-00-00 00:00:00'),
('12', 'et,', 0, '0000-00-00 00:00:00', 12, 22.5856, -21.14, 0, 0, '0000-00-00 00:00:00'),
('13', 'ac', 0, '0000-00-00 00:00:00', 13, -84.1767, -56.5906, 0, 0, '0000-00-00 00:00:00'),
('14', 'blandit', 1, '0000-00-00 00:00:00', 14, 65.8672, 56.6343, 0, 0, '0000-00-00 00:00:00'),
('15', 'Vivamus', 1, '0000-00-00 00:00:00', 15, 64.4699, -107.274, 0, 0, '0000-00-00 00:00:00'),
('16', 'hendrerit', 1, '0000-00-00 00:00:00', 16, 83.9858, 128.42, 0, 0, '0000-00-00 00:00:00'),
('17', 'ac', 0, '0000-00-00 00:00:00', 17, -3.21438, 117.076, 0, 0, '0000-00-00 00:00:00'),
('18', 'fermentum', 1, '0000-00-00 00:00:00', 18, 29.43, -19.3617, 0, 0, '0000-00-00 00:00:00'),
('19', 'Donec', 1, '0000-00-00 00:00:00', 19, -60.3971, 9.72869, 0, 0, '0000-00-00 00:00:00'),
('2', 'neque', 1, '0000-00-00 00:00:00', 2, 69.9342, 15.8724, 0, 0, '0000-00-00 00:00:00'),
('20', 'Suspendisse', 0, '0000-00-00 00:00:00', 20, -58.5214, 118.151, 0, 0, '0000-00-00 00:00:00'),
('21', 'non', 0, '0000-00-00 00:00:00', 21, -35.882, -56.0997, 0, 0, '0000-00-00 00:00:00'),
('22', 'vestibulum', 0, '0000-00-00 00:00:00', 22, -51.8115, -115.173, 0, 0, '0000-00-00 00:00:00'),
('23', 'eu,', 0, '0000-00-00 00:00:00', 23, 66.6208, 59.1048, 0, 0, '0000-00-00 00:00:00'),
('24', 'leo.', 1, '0000-00-00 00:00:00', 24, 50.3232, -108.021, 0, 0, '0000-00-00 00:00:00'),
('25', 'mollis', 1, '0000-00-00 00:00:00', 25, 72.9868, -131.345, 0, 0, '0000-00-00 00:00:00'),
('26', 'rhoncus.', 1, '0000-00-00 00:00:00', 26, -86.9252, -127.895, 0, 0, '0000-00-00 00:00:00'),
('27', 'arcu', 0, '0000-00-00 00:00:00', 27, 79.533, -173.794, 0, 0, '0000-00-00 00:00:00'),
('28', 'mauris.', 1, '0000-00-00 00:00:00', 28, 51.7036, -5.03799, 0, 0, '0000-00-00 00:00:00'),
('29', 'ornare,', 1, '0000-00-00 00:00:00', 29, 34.0046, 7.38079, 0, 0, '0000-00-00 00:00:00'),
('3', 'non', 0, '0000-00-00 00:00:00', 3, -21.1202, 174.939, 0, 0, '0000-00-00 00:00:00'),
('30', 'ornare.', 1, '0000-00-00 00:00:00', 30, 65.5487, 122.676, 0, 0, '0000-00-00 00:00:00'),
('31', 'amet', 0, '0000-00-00 00:00:00', 31, 63.2506, -110.706, 0, 0, '0000-00-00 00:00:00'),
('32', 'sodales', 0, '0000-00-00 00:00:00', 32, 51.2775, -27.6249, 0, 0, '0000-00-00 00:00:00'),
('33', 'neque.', 0, '0000-00-00 00:00:00', 33, -26.4674, -170.303, 0, 0, '0000-00-00 00:00:00'),
('34', 'eget', 1, '0000-00-00 00:00:00', 34, 41.9421, -165.023, 0, 0, '0000-00-00 00:00:00'),
('35', 'cubilia', 0, '0000-00-00 00:00:00', 35, 82.333, 179.756, 0, 0, '0000-00-00 00:00:00'),
('36', 'fames', 0, '0000-00-00 00:00:00', 36, 2.1106, -130.518, 0, 0, '0000-00-00 00:00:00'),
('37', 'aliquet', 0, '0000-00-00 00:00:00', 37, -34.0661, -160.633, 0, 0, '0000-00-00 00:00:00'),
('38', 'mauris', 0, '0000-00-00 00:00:00', 38, 61.7056, -13.5068, 0, 0, '0000-00-00 00:00:00'),
('39', 'consectetuer,', 0, '0000-00-00 00:00:00', 39, -84.3855, -70.9607, 0, 0, '0000-00-00 00:00:00'),
('4', 'Vivamus', 1, '0000-00-00 00:00:00', 4, -9.93099, 130.814, 0, 0, '0000-00-00 00:00:00'),
('40', 'Aenean', 1, '0000-00-00 00:00:00', 40, 5.86867, -91.3643, 0, 0, '0000-00-00 00:00:00'),
('41', 'Etiam', 0, '0000-00-00 00:00:00', 41, 28.3157, 77.7168, 0, 0, '0000-00-00 00:00:00'),
('42', 'in', 1, '0000-00-00 00:00:00', 42, 2.89977, 9.21122, 0, 0, '0000-00-00 00:00:00'),
('43', 'nec', 1, '0000-00-00 00:00:00', 43, 22.3898, -61.6834, 0, 0, '0000-00-00 00:00:00'),
('44', 'est.', 0, '0000-00-00 00:00:00', 44, 5.21507, 2.77422, 0, 0, '0000-00-00 00:00:00'),
('45', 'Donec', 1, '0000-00-00 00:00:00', 45, -38.8205, 172.94, 0, 0, '0000-00-00 00:00:00'),
('46', 'Sed', 0, '0000-00-00 00:00:00', 46, 10.6431, 139.303, 0, 0, '0000-00-00 00:00:00'),
('47', 'mauris', 1, '0000-00-00 00:00:00', 47, -24.9648, 75.3216, 0, 0, '0000-00-00 00:00:00'),
('48', 'tellus.', 1, '0000-00-00 00:00:00', 48, -59.8012, 31.4154, 0, 0, '0000-00-00 00:00:00'),
('49', 'et', 0, '0000-00-00 00:00:00', 49, 41.7067, -73.6612, 0, 0, '0000-00-00 00:00:00'),
('5', 'velit.', 0, '0000-00-00 00:00:00', 5, -62.6541, 144.978, 0, 0, '0000-00-00 00:00:00'),
('50', 'amet,', 0, '0000-00-00 00:00:00', 50, -77.3456, 161.258, 0, 0, '0000-00-00 00:00:00'),
('51', 'nisl.', 1, '0000-00-00 00:00:00', 51, 36.5438, -25.4953, 0, 0, '0000-00-00 00:00:00'),
('52', 'Quisque', 0, '0000-00-00 00:00:00', 52, 10.1779, -26.928, 0, 0, '0000-00-00 00:00:00'),
('53', 'tellus', 1, '0000-00-00 00:00:00', 53, -12.746, -107.82, 0, 0, '0000-00-00 00:00:00'),
('54', 'Curae;', 0, '0000-00-00 00:00:00', 54, 85.9841, -62.3675, 0, 0, '0000-00-00 00:00:00'),
('55', 'malesuada', 0, '0000-00-00 00:00:00', 55, 74.4858, -23.5101, 0, 0, '0000-00-00 00:00:00'),
('56', 'congue', 1, '0000-00-00 00:00:00', 56, 9.79364, 147.527, 0, 0, '0000-00-00 00:00:00'),
('57', 'tellus.', 0, '0000-00-00 00:00:00', 57, 41.8111, 8.33922, 0, 0, '0000-00-00 00:00:00'),
('58', 'sit', 1, '0000-00-00 00:00:00', 58, -44.1844, 90.441, 0, 0, '0000-00-00 00:00:00'),
('59', 'enim.', 1, '0000-00-00 00:00:00', 59, 13.4906, -157.137, 0, 0, '0000-00-00 00:00:00'),
('6', 'nonummy.', 1, '0000-00-00 00:00:00', 6, 0.3744, -126.067, 0, 0, '0000-00-00 00:00:00'),
('60', 'nec', 1, '0000-00-00 00:00:00', 60, 74.0607, -154.639, 0, 0, '0000-00-00 00:00:00'),
('61', 'mauris', 0, '0000-00-00 00:00:00', 61, -49.1929, -56.4667, 0, 0, '0000-00-00 00:00:00'),
('62', 'rutrum', 1, '0000-00-00 00:00:00', 62, 6.0656, -61.5579, 0, 0, '0000-00-00 00:00:00'),
('63', 'est.', 0, '0000-00-00 00:00:00', 63, -69.2614, 159.907, 0, 0, '0000-00-00 00:00:00'),
('64', 'lacinia.', 0, '0000-00-00 00:00:00', 64, 53.3401, -93.4042, 0, 0, '0000-00-00 00:00:00'),
('65', 'dictum', 0, '0000-00-00 00:00:00', 65, -5.36444, 137.278, 0, 0, '0000-00-00 00:00:00'),
('66', 'eu', 0, '0000-00-00 00:00:00', 66, 61.2084, 25.7825, 0, 0, '0000-00-00 00:00:00'),
('67', 'velit', 1, '0000-00-00 00:00:00', 67, 59.639, 127.884, 0, 0, '0000-00-00 00:00:00'),
('68', 'consequat', 1, '0000-00-00 00:00:00', 68, -60.6276, 77.5867, 0, 0, '0000-00-00 00:00:00'),
('69', 'Nullam', 1, '0000-00-00 00:00:00', 69, 10.2477, 113.044, 0, 0, '0000-00-00 00:00:00'),
('7', 'nec', 1, '0000-00-00 00:00:00', 7, 69.4355, 44.7591, 0, 0, '0000-00-00 00:00:00'),
('70', 'eget', 1, '0000-00-00 00:00:00', 70, 85.8507, 105.005, 0, 0, '0000-00-00 00:00:00'),
('71', 'Quisque', 1, '0000-00-00 00:00:00', 71, 53.623, 136.357, 0, 0, '0000-00-00 00:00:00'),
('72', 'a', 1, '0000-00-00 00:00:00', 72, -47.4886, -78.9241, 0, 0, '0000-00-00 00:00:00'),
('73', 'Fusce', 0, '2016-03-20 20:31:00', 73, 5.04453, -32.5865, 0, 0, '0000-00-00 00:00:00'),
('74', 'facilisi.', 0, '0000-00-00 00:00:00', 74, 44.4809, -142.288, 0, 0, '0000-00-00 00:00:00'),
('75', 'non', 0, '0000-00-00 00:00:00', 75, 82.47, 93.0714, 0, 0, '0000-00-00 00:00:00'),
('76', 'at', 1, '0000-00-00 00:00:00', 76, 30.3574, 124.392, 0, 0, '0000-00-00 00:00:00'),
('77', 'ut', 0, '0000-00-00 00:00:00', 77, -51.4798, 15.4314, 0, 0, '0000-00-00 00:00:00'),
('78', 'Phasellus', 1, '0000-00-00 00:00:00', 78, 30.3606, 1.4128, 0, 0, '0000-00-00 00:00:00'),
('79', 'hendrerit', 0, '0000-00-00 00:00:00', 79, -14.8404, 140.328, 0, 0, '0000-00-00 00:00:00'),
('8', 'Cras', 1, '0000-00-00 00:00:00', 8, -10.145, -13.8318, 0, 0, '0000-00-00 00:00:00'),
('80', 'nisi.', 1, '0000-00-00 00:00:00', 80, 27.4176, 17.7025, 0, 0, '0000-00-00 00:00:00'),
('81', 'Duis', 1, '0000-00-00 00:00:00', 81, 23.1653, 4.37122, 0, 0, '0000-00-00 00:00:00'),
('82', 'Integer', 0, '0000-00-00 00:00:00', 82, 88.1674, -146.603, 0, 0, '0000-00-00 00:00:00'),
('83', 'dapibus', 0, '0000-00-00 00:00:00', 83, 43.4738, -124.525, 0, 0, '0000-00-00 00:00:00'),
('84', 'eget', 1, '0000-00-00 00:00:00', 84, -43.2642, 21.5811, 0, 0, '0000-00-00 00:00:00'),
('85', 'enim', 0, '0000-00-00 00:00:00', 85, 89.5437, -0.92862, 0, 0, '0000-00-00 00:00:00'),
('86', 'Cras', 1, '0000-00-00 00:00:00', 86, 11.066, 114.907, 0, 0, '0000-00-00 00:00:00'),
('87', 'Morbi', 0, '0000-00-00 00:00:00', 87, -88.4655, -153.745, 0, 0, '0000-00-00 00:00:00'),
('88', 'tortor', 1, '0000-00-00 00:00:00', 88, -87.1396, -53.3319, 0, 0, '0000-00-00 00:00:00'),
('89', 'Suspendisse', 1, '0000-00-00 00:00:00', 89, -9.67204, 137.677, 0, 0, '0000-00-00 00:00:00'),
('9', 'magna', 0, '0000-00-00 00:00:00', 9, 71.6898, 52.9938, 0, 0, '0000-00-00 00:00:00'),
('90', 'natoque', 1, '0000-00-00 00:00:00', 90, 0.13893, 147.062, 0, 0, '0000-00-00 00:00:00'),
('91', 'dolor', 1, '0000-00-00 00:00:00', 91, 51.3714, -169.467, 0, 0, '0000-00-00 00:00:00'),
('92', 'Cum', 0, '0000-00-00 00:00:00', 92, -28.237, -142.009, 0, 0, '0000-00-00 00:00:00'),
('93', 'mauris', 1, '0000-00-00 00:00:00', 93, 73.3655, 131.286, 0, 0, '0000-00-00 00:00:00'),
('94', 'Pellentesque', 0, '0000-00-00 00:00:00', 94, 22.3556, -128.513, 0, 0, '0000-00-00 00:00:00'),
('95', 'Donec', 0, '0000-00-00 00:00:00', 95, 86.0722, 164.802, 0, 0, '0000-00-00 00:00:00'),
('96', 'sit', 1, '0000-00-00 00:00:00', 96, 18.5651, -9.94529, 0, 0, '0000-00-00 00:00:00'),
('97', 'Duis', 1, '0000-00-00 00:00:00', 97, 71.174, -140.157, 0, 0, '0000-00-00 00:00:00'),
('98', 'dignissim', 1, '0000-00-00 00:00:00', 98, -28.685, 58.2405, 0, 0, '0000-00-00 00:00:00'),
('99', 'nec', 0, '0000-00-00 00:00:00', 99, -14.1937, -101.053, 0, 0, '0000-00-00 00:00:00'),
('aae9cd70-7129-11eb-bfd0-88d7f67bd077', 'mdr', 1, '2021-02-17 14:08:54', 1, 48.7073, 6.2637, 1, 1, '2021-02-17 14:08:54');

-- --------------------------------------------------------

--
-- Structure de la table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_streamer` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `subscribe`
--

INSERT INTO `subscribe` (`id`, `id_user`, `id_streamer`) VALUES
(1, 100, 1),
(2, 99, 1),
(3, 98, 1),
(4, 97, 1),
(5, 96, 1),
(6, 95, 1),
(7, 94, 1),
(8, 93, 1),
(9, 92, 1),
(10, 91, 1),
(11, 90, 11),
(12, 89, 12),
(13, 88, 13),
(14, 87, 14),
(15, 86, 15),
(16, 85, 16),
(17, 84, 17),
(18, 83, 18),
(19, 82, 19),
(20, 81, 20),
(21, 80, 21),
(22, 79, 22),
(23, 78, 23),
(24, 77, 24),
(25, 76, 25),
(26, 75, 26),
(27, 74, 27),
(28, 73, 28),
(29, 72, 29),
(30, 71, 30),
(31, 70, 31),
(32, 69, 32),
(33, 68, 33),
(34, 67, 34),
(35, 66, 35),
(36, 65, 36),
(37, 64, 37),
(38, 63, 38),
(39, 62, 39),
(40, 61, 40),
(41, 60, 41),
(42, 59, 42),
(43, 58, 43),
(44, 57, 44),
(45, 56, 45),
(46, 55, 46),
(47, 54, 47),
(48, 53, 48),
(49, 52, 49),
(50, 51, 50),
(51, 50, 51),
(52, 49, 52),
(53, 48, 53),
(54, 47, 54),
(55, 46, 55),
(56, 45, 56),
(57, 44, 57),
(58, 43, 58),
(59, 42, 59),
(60, 41, 60),
(61, 40, 61),
(62, 39, 62),
(63, 38, 63),
(64, 37, 64),
(65, 36, 65),
(66, 35, 66),
(67, 34, 67),
(68, 33, 68),
(69, 32, 69),
(70, 31, 70),
(71, 30, 71),
(72, 29, 72),
(73, 28, 73),
(74, 27, 74),
(75, 26, 75),
(76, 25, 76),
(77, 24, 77),
(78, 23, 78),
(79, 22, 79),
(80, 21, 80),
(81, 20, 81),
(82, 19, 82),
(83, 18, 83),
(84, 17, 84),
(85, 16, 85),
(86, 15, 86),
(87, 14, 87),
(88, 13, 88),
(89, 12, 89),
(90, 11, 90),
(91, 10, 91),
(92, 9, 92),
(93, 8, 93),
(94, 7, 94),
(95, 6, 95),
(96, 5, 96),
(97, 4, 97),
(98, 3, 98),
(99, 2, 99),
(100, 1, 100);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `mail` varchar(35) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `firstname`, `mail`, `username`, `password`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lewis', 'Adena', 'at.risus@euismodenim.com', 'Chiquita', 'in', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'Phasellus', '0000-00-00 00:00:00', NULL, NULL),
(2, 'Dickerson', 'Logan', 'Nunc.mauris@enimCurabitur.com', 'Nichole', 'Aliquam', 'Lorem ipsum dolor sit amet,', 'Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(3, 'Mcdowell', 'Rebekah', 'libero.et.tristique@eget.edu', 'Winifred', 'a,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'vulputate', '0000-00-00 00:00:00', NULL, NULL),
(4, 'Perry', 'Zane', 'dui.Cras@ullamcorpermagnaSed.org', 'Evangeline', 'Quisque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'quam', '0000-00-00 00:00:00', NULL, NULL),
(5, 'Sanchez', 'Jolene', 'Aliquam.adipiscing@maurisMorbinon.o', 'Hashim', 'felis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'Integer', '0000-00-00 00:00:00', NULL, NULL),
(6, 'Buckley', 'Cassidy', 'Phasellus@Proinultrices.org', 'Keith', 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'erat,', '0000-00-00 00:00:00', NULL, NULL),
(7, 'Hardin', 'Mariko', 'erat.volutpat@elitpellentesquea.co.', 'Dakota', 'massa', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'faucibus', '0000-00-00 00:00:00', NULL, NULL),
(8, 'Brennan', 'Harding', 'dictum@feugiatnon.edu', 'Desirae', 'amet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'euismod', '0000-00-00 00:00:00', NULL, NULL),
(9, 'Padilla', 'Maxwell', 'massa.Suspendisse.eleifend@blandit.', 'Vanna', 'Cras', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'eget', '0000-00-00 00:00:00', NULL, NULL),
(10, 'Odonnell', 'Anika', 'ipsum.Phasellus.vitae@malesuadamale', 'Steel', 'dictum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'purus', '0000-00-00 00:00:00', NULL, NULL),
(11, 'Massey', 'Edan', 'ornare.Fusce@nibhvulputatemauris.co', 'Casey', 'mauris', 'Lorem ipsum dolor sit amet,', 'lacus.', '0000-00-00 00:00:00', NULL, NULL),
(12, 'Cash', 'Myles', 'feugiat.non.lobortis@duisemper.edu', 'Declan', 'feugiat', 'Lorem ipsum dolor sit amet,', 'metus.', '0000-00-00 00:00:00', NULL, NULL),
(13, 'Alexander', 'Jason', 'posuere@blanditNam.ca', 'Barclay', 'at,', 'Lorem ipsum dolor sit amet,', 'Quisque', '0000-00-00 00:00:00', NULL, NULL),
(14, 'French', 'Leila', 'aliquet.sem@eumetus.co.uk', 'Brenden', 'lobortis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'malesuada.', '0000-00-00 00:00:00', NULL, NULL),
(15, 'Aguilar', 'Hedda', 'ac@interdumfeugiatSed.edu', 'Abel', 'sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'Phasellus', '0000-00-00 00:00:00', NULL, NULL),
(16, 'Buckley', 'TaShya', 'elit.pellentesque@euerat.co.uk', 'Winifred', 'Ut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'ac', '0000-00-00 00:00:00', NULL, NULL),
(17, 'Branch', 'Iliana', 'Sed.congue.elit@pharetraQuisqueac.c', 'Jermaine', 'malesuada.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'enim', '0000-00-00 00:00:00', NULL, NULL),
(18, 'Stephens', 'Kane', 'at@Sedeunibh.net', 'Deanna', 'pede,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'dui', '0000-00-00 00:00:00', NULL, NULL),
(19, 'Vincent', 'Reed', 'a.magna@tempordiamdictum.com', 'Rafael', 'quam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'Integer', '0000-00-00 00:00:00', NULL, NULL),
(20, 'Vazquez', 'Fritz', 'amet.metus@leoVivamus.com', 'Hayes', 'dui.', 'Lorem ipsum dolor sit amet, consectetuer', 'Ut', '0000-00-00 00:00:00', NULL, NULL),
(21, 'Chase', 'Lucian', 'sit.amet.luctus@vitaesemper.edu', 'Yoko', 'mollis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'in', '0000-00-00 00:00:00', NULL, NULL),
(22, 'Kent', 'Chaney', 'eu.sem.Pellentesque@Proinnislsem.or', 'Walter', 'Sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'sociis', '0000-00-00 00:00:00', NULL, NULL),
(23, 'Gould', 'Jessamine', 'venenatis.lacus@sed.co.uk', 'Harding', 'risus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'eget,', '0000-00-00 00:00:00', NULL, NULL),
(24, 'Burgess', 'Grady', 'sit.amet.diam@cursusNunc.org', 'Lenore', 'Vestibulum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'per', '0000-00-00 00:00:00', NULL, NULL),
(25, 'Baldwin', 'Shafira', 'pellentesque@In.ca', 'Miriam', 'leo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(26, 'Shelton', 'Xenos', 'bibendum.fermentum.metus@bibendumse', 'Callie', 'Proin', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'posuere,', '2016-07-12 23:46:00', NULL, NULL),
(27, 'Hood', 'Gregory', 'quis.pede@Craseutellus.org', 'Vincent', 'bibendum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'magna.', '0000-00-00 00:00:00', NULL, NULL),
(28, 'Wells', 'Priscilla', 'laoreet.posuere@loremloremluctus.or', 'Fuller', 'Cras', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'orci', '0000-00-00 00:00:00', NULL, NULL),
(29, 'Schmidt', 'Slade', 'massa.rutrum.magna@turpisAliquamadi', 'Sonia', 'leo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'ligula', '0000-00-00 00:00:00', NULL, NULL),
(30, 'Harrington', 'Jin', 'vel.est@estMauriseu.edu', 'Demetrius', 'sociis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'ante', '0000-00-00 00:00:00', NULL, NULL),
(31, 'Glover', 'Florence', 'orci.Ut.semper@seddictum.ca', 'Declan', 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'malesuada', '0000-00-00 00:00:00', NULL, NULL),
(32, 'Holman', 'Indigo', 'consequat.auctor@metus.edu', 'Stacey', 'montes,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'a', '0000-00-00 00:00:00', NULL, NULL),
(33, 'Skinner', 'Drake', 'Nulla.tincidunt@sagittisNullamvitae', 'Cedric', 'elit,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'sed,', '2016-04-17 21:01:00', NULL, NULL),
(34, 'Key', 'Channing', 'nunc.ullamcorper.eu@odio.org', 'Acton', 'Maecenas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'elit.', '0000-00-00 00:00:00', NULL, NULL),
(35, 'Mcdonald', 'Emerald', 'penatibus.et.magnis@quisarcu.com', 'Cullen', 'egestas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'malesuada', '0000-00-00 00:00:00', NULL, NULL),
(36, 'Sears', 'Ramona', 'Nulla.interdum@semmollisdui.org', 'Neville', 'aliquet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'venenatis', '0000-00-00 00:00:00', NULL, NULL),
(37, 'Dotson', 'Clio', 'Donec.luctus@ligula.org', 'Hayden', 'Phasellus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'nec', '0000-00-00 00:00:00', NULL, NULL),
(38, 'Estes', 'Felix', 'felis.Donec@vehicula.edu', 'Rana', 'a', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'id', '0000-00-00 00:00:00', NULL, NULL),
(39, 'Ball', 'Murphy', 'ligula.tortor.dictum@maurisSuspendi', 'Brittany', 'euismod', 'Lorem ipsum dolor sit amet, consectetuer', 'arcu.', '0000-00-00 00:00:00', NULL, NULL),
(40, 'Peck', 'Cruz', 'lacinia@tempuseu.ca', 'Zena', 'nulla.', 'Lorem ipsum dolor sit amet, consectetuer', 'Etiam', '0000-00-00 00:00:00', NULL, NULL),
(41, 'Leblanc', 'Sage', 'Suspendisse.tristique.neque@auctorv', 'Kelsie', 'nec,', 'Lorem ipsum dolor sit amet, consectetuer', 'neque', '0000-00-00 00:00:00', NULL, NULL),
(42, 'Meyer', 'Vladimir', 'risus@mienimcondimentum.org', 'Keefe', 'turpis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'nunc', '0000-00-00 00:00:00', NULL, NULL),
(43, 'Allison', 'Hashim', 'vel@Praesentinterdumligula.ca', 'Dale', 'dictum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'Nullam', '0000-00-00 00:00:00', NULL, NULL),
(44, 'Roth', 'Zoe', 'ipsum.sodales@purusmauris.ca', 'Oleg', 'ante.', 'Lorem ipsum dolor sit amet, consectetuer', 'turpis.', '0000-00-00 00:00:00', NULL, NULL),
(45, 'Monroe', 'Stella', 'ultrices@eutellusPhasellus.edu', 'Heidi', 'est.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'enim', '0000-00-00 00:00:00', NULL, NULL),
(46, 'Miller', 'Idona', 'at.auctor.ullamcorper@Cum.ca', 'Sharon', 'Mauris', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'laoreet,', '0000-00-00 00:00:00', NULL, NULL),
(47, 'Rodriquez', 'Kelsie', 'Nullam.lobortis@duiFuscediam.org', 'Ahmed', 'arcu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'magna', '0000-00-00 00:00:00', NULL, NULL),
(48, 'Farley', 'Buffy', 'a.enim@venenatislacusEtiam.co.uk', 'Florence', 'dui', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'commodo', '0000-00-00 00:00:00', NULL, NULL),
(49, 'Ratliff', 'Wendy', 'odio@risus.edu', 'MacKenzie', 'dolor', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'aliquet', '0000-00-00 00:00:00', NULL, NULL),
(50, 'Nolan', 'Yen', 'cursus.Integer@Integer.edu', 'Eve', 'cursus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(51, 'Oconnor', 'Carlos', 'magnis.dis.parturient@sempertellus.', 'Serina', 'magna.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'tempor', '0000-00-00 00:00:00', NULL, NULL),
(52, 'Mccullough', 'Kelly', 'Ut.nec.urna@sem.com', 'Orlando', 'venenatis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'Proin', '0000-00-00 00:00:00', NULL, NULL),
(53, 'Joseph', 'Barclay', 'Sed.eget.lacus@pede.ca', 'Mohammad', 'ac', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'et', '0000-00-00 00:00:00', NULL, NULL),
(54, 'Franco', 'Hadley', 'sed.tortor.Integer@vitaenibh.co.uk', 'Berk', 'lectus,', 'Lorem ipsum dolor sit amet, consectetuer', 'erat,', '0000-00-00 00:00:00', NULL, NULL),
(55, 'Madden', 'Adele', 'lectus.ante.dictum@necimperdiet.co.', 'Garth', 'egestas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'vestibulum.', '0000-00-00 00:00:00', NULL, NULL),
(56, 'Foster', 'Dalton', 'faucibus.leo.in@Suspendisse.com', 'Nevada', 'sapien.', 'Lorem ipsum dolor sit amet,', 'blandit', '0000-00-00 00:00:00', NULL, NULL),
(57, 'Patrick', 'Tarik', 'Maecenas.mi@purusaccumsaninterdum.o', 'Madonna', 'egestas.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'Donec', '0000-00-00 00:00:00', NULL, NULL),
(58, 'Rasmussen', 'Zephania', 'eros@et.com', 'Hyatt', 'interdum.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'quis', '0000-00-00 00:00:00', NULL, NULL),
(59, 'Hess', 'Dennis', 'magnis.dis.parturient@risus.com', 'Reed', 'magnis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'porta', '0000-00-00 00:00:00', NULL, NULL),
(60, 'Cote', 'Jane', 'sodales.at@vitae.com', 'Kirestin', 'vel,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'euismod', '0000-00-00 00:00:00', NULL, NULL),
(61, 'Gomez', 'Zachary', 'elementum.dui@estmauris.org', 'Aaron', 'tortor.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'velit.', '0000-00-00 00:00:00', NULL, NULL),
(62, 'Massey', 'Fallon', 'pretium.aliquet.metus@cursusa.co.uk', 'Sonya', 'luctus,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'feugiat.', '0000-00-00 00:00:00', NULL, NULL),
(63, 'Compton', 'Kibo', 'vel.mauris@Duisdignissim.org', 'Yvette', 'nulla.', 'Lorem ipsum dolor sit amet, consectetuer', 'non', '0000-00-00 00:00:00', NULL, NULL),
(64, 'Morales', 'Heather', 'Morbi@semmollisdui.co.uk', 'Mollie', 'enim', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'turpis.', '0000-00-00 00:00:00', NULL, NULL),
(65, 'Alford', 'Brock', 'Etiam.gravida.molestie@Fuscedolorqu', 'Fletcher', 'erat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'fermentum', '0000-00-00 00:00:00', NULL, NULL),
(66, 'Wilder', 'Gemma', 'ultricies.ornare.elit@Nullamvelitdu', 'Yeo', 'Phasellus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'lectus', '0000-00-00 00:00:00', NULL, NULL),
(67, 'Parsons', 'Rinah', 'est.Nunc.laoreet@dictum.co.uk', 'Barry', 'eu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'at', '0000-00-00 00:00:00', NULL, NULL),
(68, 'Luna', 'Rhoda', 'eget@Aenean.ca', 'Jescie', 'velit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'odio', '0000-00-00 00:00:00', NULL, NULL),
(69, 'Hooper', 'Logan', 'tempor.diam@rutrummagnaCras.edu', 'Jacob', 'semper', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'ac', '0000-00-00 00:00:00', NULL, NULL),
(70, 'Talley', 'Charles', 'orci.consectetuer@a.org', 'Austin', 'ac,', 'Lorem ipsum dolor sit amet,', 'adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(71, 'Wallace', 'Phoebe', 'vitae@esttempor.org', 'Nevada', 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'Nulla', '0000-00-00 00:00:00', NULL, NULL),
(72, 'Kennedy', 'Elijah', 'faucibus.ut.nulla@Donec.org', 'Wade', 'nec,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'sollicitudin', '0000-00-00 00:00:00', NULL, NULL),
(73, 'Noble', 'Jescie', 'elit@neque.com', 'Wing', 'libero.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', 'sit', '0000-00-00 00:00:00', NULL, NULL),
(74, 'Mcguire', 'Hilel', 'justo.faucibus@elitsedconsequat.edu', 'Nola', 'interdum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'pede.', '0000-00-00 00:00:00', NULL, NULL),
(75, 'Pena', 'Nina', 'quis.turpis@natoquepenatibuset.co.u', 'Boris', 'ad', 'Lorem ipsum dolor sit amet,', 'pretium', '0000-00-00 00:00:00', NULL, NULL),
(76, 'Lambert', 'Flynn', 'egestas.Aliquam@auctorquis.org', 'Melanie', 'vitae', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'nec', '0000-00-00 00:00:00', NULL, NULL),
(77, 'Haney', 'Erich', 'risus.Morbi@loremvitaeodio.co.uk', 'Kieran', 'nec', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'mi', '0000-00-00 00:00:00', NULL, NULL),
(78, 'Rollins', 'Maxwell', 'luctus.lobortis@vehicula.co.uk', 'Damon', 'ornare.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 'Aliquam', '0000-00-00 00:00:00', NULL, NULL),
(79, 'Mccall', 'Ina', 'Suspendisse.commodo@accumsan.com', 'Garrison', 'egestas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'elit,', '0000-00-00 00:00:00', NULL, NULL),
(80, 'Herman', 'Libby', 'semper@Etiamlaoreetlibero.com', 'Harriet', 'nibh', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'felis,', '0000-00-00 00:00:00', NULL, NULL),
(81, 'Shaw', 'Roth', 'fringilla.cursus@quam.net', 'Dakota', 'nonummy', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'orci,', '0000-00-00 00:00:00', NULL, NULL),
(82, 'Simmons', 'Iris', 'consectetuer.mauris@neceleifendnon.', 'Stewart', 'sociis', 'Lorem ipsum dolor sit amet, consectetuer', 'interdum.', '0000-00-00 00:00:00', NULL, NULL),
(83, 'Mccarthy', 'Hoyt', 'arcu.Vestibulum@sem.co.uk', 'Thaddeus', 'Praesent', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'auctor', '0000-00-00 00:00:00', NULL, NULL),
(84, 'Buckley', 'Fredericka', 'luctus.Curabitur@aodiosemper.net', 'Blaze', 'lacinia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'malesuada', '0000-00-00 00:00:00', NULL, NULL),
(85, 'Morris', 'Connor', 'nostra.per.inceptos@parturient.co.u', 'Jacqueline', 'augue', 'Lorem ipsum dolor sit amet,', 'blandit', '0000-00-00 00:00:00', NULL, NULL),
(86, 'Parker', 'Connor', 'commodo@rutrummagna.co.uk', 'Marvin', 'consectetuer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', 'Quisque', '0000-00-00 00:00:00', NULL, NULL),
(87, 'Oconnor', 'Maia', 'imperdiet.ornare@vulputatenisi.com', 'Hamish', 'vel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'turpis', '0000-00-00 00:00:00', NULL, NULL),
(88, 'Jarvis', 'Claudia', 'mus.Proin@atfringillapurus.edu', 'Colt', 'elit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'lectus', '0000-00-00 00:00:00', NULL, NULL),
(89, 'Booth', 'Damian', 'Donec.fringilla@fermentumrisusat.ne', 'Hamish', 'felis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'rutrum', '0000-00-00 00:00:00', NULL, NULL),
(90, 'Contreras', 'Ivan', 'convallis@ametconsectetuer.com', 'Sheila', 'dignissim', 'Lorem ipsum dolor sit amet, consectetuer', 'eu', '0000-00-00 00:00:00', NULL, NULL),
(91, 'Crane', 'Clinton', 'amet.faucibus.ut@Nullatincidunt.com', 'Emmanuel', 'arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'Aliquam', '0000-00-00 00:00:00', NULL, NULL),
(92, 'Cohen', 'Fleur', 'molestie@uterat.ca', 'Octavia', 'auctor', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', 'eu', '0000-00-00 00:00:00', NULL, NULL),
(93, 'Santana', 'Avram', 'Aenean@egetmetusIn.co.uk', 'Daniel', 'massa.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'porttitor', '0000-00-00 00:00:00', NULL, NULL),
(94, 'Vang', 'Travis', 'amet.faucibus@atfringilla.edu', 'Gage', 'adipiscing', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'quis', '0000-00-00 00:00:00', NULL, NULL),
(95, 'Chang', 'Quon', 'Quisque.imperdiet@metus.co.uk', 'Keaton', 'nisi.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', 'Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(96, 'Booker', 'Zorita', 'eu.neque.pellentesque@maurisInteger', 'Althea', 'habitant', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 'diam.', '0000-00-00 00:00:00', NULL, NULL),
(97, 'Bruce', 'Ferdinand', 'tellus.Suspendisse@Integer.co.uk', 'Melissa', 'a,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 'orci,', '0000-00-00 00:00:00', NULL, NULL),
(98, 'Duncan', 'Wanda', 'Proin.dolor.Nulla@bibendum.org', 'Branden', 'libero', 'Lorem ipsum dolor sit amet,', 'malesuada', '0000-00-00 00:00:00', NULL, NULL),
(99, 'Lester', 'Ciaran', 'nulla@luctussitamet.co.uk', 'Shoshana', 'Integer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', 'aliquam', '0000-00-00 00:00:00', NULL, NULL),
(100, 'Vargas', 'Carla', 'Integer.eu.lacus@adipiscinglacusUt.', 'Nita', 'parturient', 'Lorem ipsum dolor sit amet, consectetuer', 'turpis', '0000-00-00 00:00:00', NULL, NULL),
(113, 'dzazad', 'dazadzadz', 'dazadz@mdr.fr', 'dazadzadz', '$2y$10$mTyXSE9Ch3ACov2v2tlWpeqESSpiAu5OfrbyHQMgtt8/aO92e8n0O', '', '', '2021-02-16 13:39:10', '2021-02-16 13:39:10', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(40) NOT NULL,
  `view` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `path`, `view`, `id_user`) VALUES
(1, 'lacinia', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'mollis', 2147483647, 1),
(2, 'varius.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'senectus', 2147483647, 1),
(3, 'quis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'massa.', 2147483647, 1),
(4, 'magna.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'massa.', 2147483647, 1),
(5, 'quam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'orci.', 2147483647, 1),
(6, 'nisl', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sem', 2147483647, 1),
(7, 'Nam', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'neque.', 2147483647, 1),
(8, 'ut,', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'rutrum', 2147483647, 1),
(9, 'mollis', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'luctus,', 2147483647, 1),
(10, 'mus.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'semper', 2147483647, 1),
(11, 'purus,', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Etiam', 2147483647, 11),
(12, 'velit.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'et', 2147483647, 12),
(13, 'faucibus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'purus', 2147483647, 13),
(14, 'felis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'non', 2147483647, 14),
(15, 'ornare,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Phasellus', 2147483647, 15),
(16, 'eros', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'dapibus', 2147483647, 16),
(17, 'ipsum.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'dolor.', 2147483647, 17),
(18, 'neque.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'mattis', 2147483647, 18),
(19, 'mauris,', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ornare.', 2147483647, 19),
(20, 'eu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'malesuada', 2147483647, 20),
(21, 'ut', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'rutrum', 2147483647, 21),
(22, 'quis', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Nullam', 2147483647, 22),
(23, 'diam.', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Aliquam', 2147483647, 23),
(24, 'eleifend', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Cras', 2147483647, 24),
(25, 'arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'laoreet', 2147483647, 25),
(26, 'cursus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'egestas.', 2147483647, 26),
(27, 'eget', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'eu', 2147483647, 27),
(28, 'id', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'mi', 2147483647, 28),
(29, 'Quisque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'pede', 2147483647, 29),
(30, 'Quisque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'diam', 2147483647, 30),
(31, 'consectetuer', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'tempus', 2147483647, 31),
(32, 'aliquet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'eleifend', 2147483647, 32),
(33, 'eleifend', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'posuere', 2147483647, 33),
(34, 'vitae', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'arcu', 2147483647, 34),
(35, 'lectus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'elementum,', 2147483647, 35),
(36, 'neque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sem', 2147483647, 36),
(37, 'nec,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'conubia', 2147483647, 37),
(38, 'laoreet,', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'tellus', 2147483647, 38),
(39, 'vitae', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'convallis', 2147483647, 39),
(40, 'felis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'In', 2147483647, 40),
(41, 'orci.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'pharetra.', 2147483647, 41),
(42, 'in', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'blandit', 2147483647, 42),
(43, 'nec', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'metus', 2147483647, 43),
(44, 'vitae', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'erat,', 2147483647, 44),
(45, 'Nunc', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'porta', 2147483647, 45),
(46, 'eu', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ac', 2147483647, 46),
(47, 'semper', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'erat', 2147483647, 47),
(48, 'Cras', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sed', 2147483647, 48),
(49, 'Aliquam', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Ut', 2147483647, 49),
(50, 'malesuada', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ligula.', 2147483647, 50),
(51, 'quis', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sed', 2147483647, 51),
(52, 'feugiat', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'In', 2147483647, 52),
(53, 'vel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'blandit', 2147483647, 53),
(54, 'Sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Nam', 2147483647, 54),
(55, 'Praesent', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'lorem', 2147483647, 55),
(56, 'urna.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'mi', 2147483647, 56),
(57, 'metus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ornare,', 2147483647, 57),
(58, 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Donec', 2147483647, 58),
(59, 'vestibulum,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ante.', 2147483647, 59),
(60, 'Cras', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Suspendisse', 2147483647, 60),
(61, 'Suspendisse', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Nunc', 2147483647, 61),
(62, 'ut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'dolor,', 2147483647, 62),
(63, 'molestie', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'magna', 2147483647, 63),
(64, 'dui', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'mattis.', 2147483647, 64),
(65, 'vulputate,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'In', 2147483647, 65),
(66, 'ridiculus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ornare', 2147483647, 66),
(67, 'bibendum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Suspendisse', 2147483647, 67),
(68, 'fermentum', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'ac', 2147483647, 68),
(69, 'nonummy', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'erat', 2147483647, 69),
(70, 'tristique', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'lacus.', 2147483647, 70),
(71, 'Sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sed', 2147483647, 71),
(72, 'tellus.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'eget', 2147483647, 72),
(73, 'sit', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'porttitor', 2147483647, 73),
(74, 'ut', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Aliquam', 2147483647, 74),
(75, 'montes,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'purus.', 2147483647, 75),
(76, 'Mauris', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Aenean', 2147483647, 76),
(77, 'tristique', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'fermentum', 2147483647, 77),
(78, 'lacinia.', 'Lorem ipsum dolor sit amet, consectetuer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'parturient', 2147483647, 78),
(79, 'hendrerit.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'nec', 2147483647, 79),
(80, 'dignissim', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'augue', 2147483647, 80),
(81, 'vitae', 'Lorem ipsum dolor sit amet,', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'lobortis', 1369629599, 81),
(82, 'risus,', 'Lorem ipsum dolor sit amet, consectetuer', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'feugiat', 2147483647, 82),
(83, 'natoque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'turpis.', 2147483647, 83),
(84, 'Nullam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'a,', 2147483647, 84),
(85, 'non', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sociis', 2147483647, 85),
(86, 'nec,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'conubia', 2147483647, 86),
(87, 'nunc', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'vel,', 2147483647, 87),
(88, 'ut,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'nisl', 2147483647, 88),
(89, 'Nam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Nam', 2147483647, 89),
(90, 'sapien,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'vulputate', 2147483647, 90),
(91, 'dictum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Nam', 2147483647, 91),
(92, 'elementum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'dictum', 2147483647, 92),
(93, 'ullamcorper', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'Etiam', 2147483647, 93),
(94, 'arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'tempor', 2147483647, 94),
(95, 'lacinia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'neque', 2147483647, 95),
(96, 'aliquet.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'erat', 2147483647, 96),
(97, 'enim.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'dictum', 2147483647, 97),
(98, 'aliquam', 'Lorem ipsum dolor sit amet,', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'In', 2147483647, 98),
(99, 'viverra.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'sem,', 2147483647, 99),
(100, 'pellentesque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'et', 2147483647, 100);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_message_user` (`id_user`),
  ADD KEY `fk2_message_stream` (`id_stream`);

--
-- Index pour la table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `private_message`
--
ALTER TABLE `private_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_private_sender` (`id_sender`),
  ADD KEY `fk1_private_sendee` (`id_sendee`);

--
-- Index pour la table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_stream_user` (`id_user`);

--
-- Index pour la table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_user` (`id_user`),
  ADD KEY `fk2_streamer` (`id_streamer`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1_video_user` (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `private_message`
--
ALTER TABLE `private_message`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `fk1_message_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2_message_stream` FOREIGN KEY (`id_stream`) REFERENCES `stream` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `private_message`
--
ALTER TABLE `private_message`
  ADD CONSTRAINT `fk1_private_sendee` FOREIGN KEY (`id_sendee`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk1_private_sender` FOREIGN KEY (`id_sender`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stream`
--
ALTER TABLE `stream`
  ADD CONSTRAINT `fk1_stream_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `subscribe`
--
ALTER TABLE `subscribe`
  ADD CONSTRAINT `fk1_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk2_streamer` FOREIGN KEY (`id_streamer`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `fk1_video_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
