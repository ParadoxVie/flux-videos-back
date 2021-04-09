-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 09 avr. 2021 à 07:03
-- Version du serveur :  8.0.23
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
  `visibility` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `id_user` int NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `anonymous` tinyint(1) NOT NULL,
  `urgency` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `stream`
--

INSERT INTO `stream` (`id`, `title`, `visibility`, `created_at`, `id_user`, `latitude`, `longitude`, `anonymous`, `urgency`, `updated_at`, `deleted_at`) VALUES
('0d0964ec-98ae-11eb-aec8-88d7f67bd077', 'nbvcxw', 0, '2021-04-08 21:04:47', 117, 48.6856, 6.15958, 0, 0, '2021-04-08 21:05:01', '2021-04-08 21:05:01'),
('1cc4ad78-98af-11eb-92c0-88d7f67bd077', 'vuejs', 0, '2021-04-08 21:12:23', 115, 48.6856, 6.15958, 0, 0, '2021-04-08 21:12:31', '2021-04-08 21:12:31'),
('202fd22c-98ae-11eb-8d59-88d7f67bd077', 'abcdefghj', 0, '2021-04-08 21:05:19', 117, 48.6856, 6.15958, 0, 0, '2021-04-08 21:05:30', '2021-04-08 21:05:30'),
('2de5df14-98af-11eb-9c4e-88d7f67bd077', 'yessss', 0, '2021-04-08 21:12:52', 115, 48.6856, 6.15958, 0, 0, '2021-04-08 21:13:01', '2021-04-08 21:13:01'),
('2eced670-98ae-11eb-97a5-88d7f67bd077', 'mdrrrr', 0, '2021-04-08 21:05:44', 117, 48.6856, 6.15958, 0, 0, '2021-04-08 21:05:54', '2021-04-08 21:05:54'),
('3ad21c56-98af-11eb-b212-88d7f67bd077', 'oyurver', 0, '2021-04-08 21:13:13', 115, 48.6856, 6.15958, 0, 0, '2021-04-08 21:13:23', '2021-04-08 21:13:23'),
('4141776e-98b2-11eb-b586-88d7f67bd077', 'stream', 0, '2021-04-08 21:34:53', 119, 48.688, 6.15989, 0, 0, '2021-04-08 21:35:04', '2021-04-08 21:35:04'),
('522f18f4-98af-11eb-9342-88d7f67bd077', 'kjsf', 0, '2021-04-08 21:13:53', 115, 48.6856, 6.15958, 0, 0, '2021-04-08 21:14:02', '2021-04-08 21:14:02'),
('62da8da6-98ae-11eb-9520-88d7f67bd077', 'kjgddsg', 0, '2021-04-08 21:07:11', 122, 48.6856, 6.15958, 0, 0, '2021-04-08 21:07:22', '2021-04-08 21:07:22'),
('74c1e032-98ae-11eb-8537-88d7f67bd077', 'eryyv', 0, '2021-04-08 21:07:41', 122, 48.6856, 6.15958, 0, 0, '2021-04-08 21:07:54', '2021-04-08 21:07:54'),
('8645a0dc-98ae-11eb-80f7-88d7f67bd077', 'npm install', 0, '2021-04-08 21:08:10', 122, 48.6856, 6.15958, 0, 0, '2021-04-08 21:08:25', '2021-04-08 21:08:25'),
('94e36ec6-98ae-11eb-a0df-88d7f67bd077', 'luy,jy', 0, '2021-04-08 21:08:35', 122, 48.6856, 6.15958, 0, 0, '2021-04-08 21:08:48', '2021-04-08 21:08:48'),
('9b3b33a4-98ad-11eb-b8a4-88d7f67bd077', 'poli', 0, '2021-04-08 21:01:36', 120, 48.6856, 6.15958, 0, 0, '2021-04-08 21:02:18', '2021-04-08 21:02:18'),
('a2822b9a-98b2-11eb-a37d-88d7f67bd077', 'Test', 1, '2021-04-08 21:37:36', 121, 48.688, 6.15991, 0, 0, '2021-04-08 21:38:58', '2021-04-08 21:38:58'),
('bc1c43aa-98ae-11eb-a5e1-88d7f67bd077', 'flutter run', 0, '2021-04-08 21:09:41', 123, 48.6856, 6.15958, 0, 0, '2021-04-08 21:09:52', '2021-04-08 21:09:52'),
('c31380a2-98ad-11eb-a70d-88d7f67bd077', 'azerty', 0, '2021-04-08 21:02:43', 120, 48.6856, 6.15958, 0, 0, '2021-04-08 21:03:02', '2021-04-08 21:03:02'),
('cc9ecbbc-98ae-11eb-9690-88d7f67bd077', 'flutter pub get', 0, '2021-04-08 21:10:08', 123, 48.6856, 6.15958, 0, 0, '2021-04-08 21:10:20', '2021-04-08 21:10:20'),
('d7203900-98ad-11eb-ab45-88d7f67bd077', 'qwxsd', 0, '2021-04-08 21:03:17', 120, 48.6856, 6.15958, 0, 0, '2021-04-08 21:03:29', '2021-04-08 21:03:29'),
('e5aa2fa2-98ae-11eb-b7b8-88d7f67bd077', 'oui', 0, '2021-04-08 21:10:51', 123, 48.6856, 6.15958, 0, 0, '2021-04-08 21:11:00', '2021-04-08 21:11:00');

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
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `name`, `firstname`, `mail`, `username`, `password`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lewis', 'Adena', 'at.risus@euismodenim.com', 'Chiquita', 'in', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(2, 'Dickerson', 'Logan', 'Nunc.mauris@enimCurabitur.com', 'Nichole', 'Aliquam', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(3, 'Mcdowell', 'Rebekah', 'libero.et.tristique@eget.edu', 'Winifred', 'a,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '0000-00-00 00:00:00', NULL, NULL),
(4, 'Perry', 'Zane', 'dui.Cras@ullamcorpermagnaSed.org', 'Evangeline', 'Quisque', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(5, 'Sanchez', 'Jolene', 'Aliquam.adipiscing@maurisMorbinon.o', 'Hashim', 'felis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(6, 'Buckley', 'Cassidy', 'Phasellus@Proinultrices.org', 'Keith', 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '0000-00-00 00:00:00', NULL, NULL),
(7, 'Hardin', 'Mariko', 'erat.volutpat@elitpellentesquea.co.', 'Dakota', 'massa', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '0000-00-00 00:00:00', NULL, NULL),
(8, 'Brennan', 'Harding', 'dictum@feugiatnon.edu', 'Desirae', 'amet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(9, 'Padilla', 'Maxwell', 'massa.Suspendisse.eleifend@blandit.', 'Vanna', 'Cras', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '0000-00-00 00:00:00', NULL, NULL),
(10, 'Odonnell', 'Anika', 'ipsum.Phasellus.vitae@malesuadamale', 'Steel', 'dictum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(11, 'Massey', 'Edan', 'ornare.Fusce@nibhvulputatemauris.co', 'Casey', 'mauris', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(12, 'Cash', 'Myles', 'feugiat.non.lobortis@duisemper.edu', 'Declan', 'feugiat', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(13, 'Alexander', 'Jason', 'posuere@blanditNam.ca', 'Barclay', 'at,', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(14, 'French', 'Leila', 'aliquet.sem@eumetus.co.uk', 'Brenden', 'lobortis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(15, 'Aguilar', 'Hedda', 'ac@interdumfeugiatSed.edu', 'Abel', 'sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(16, 'Buckley', 'TaShya', 'elit.pellentesque@euerat.co.uk', 'Winifred', 'Ut', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(17, 'Branch', 'Iliana', 'Sed.congue.elit@pharetraQuisqueac.c', 'Jermaine', 'malesuada.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(18, 'Stephens', 'Kane', 'at@Sedeunibh.net', 'Deanna', 'pede,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(19, 'Vincent', 'Reed', 'a.magna@tempordiamdictum.com', 'Rafael', 'quam', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(20, 'Vazquez', 'Fritz', 'amet.metus@leoVivamus.com', 'Hayes', 'dui.', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(21, 'Chase', 'Lucian', 'sit.amet.luctus@vitaesemper.edu', 'Yoko', 'mollis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '0000-00-00 00:00:00', NULL, NULL),
(22, 'Kent', 'Chaney', 'eu.sem.Pellentesque@Proinnislsem.or', 'Walter', 'Sed', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '0000-00-00 00:00:00', NULL, NULL),
(23, 'Gould', 'Jessamine', 'venenatis.lacus@sed.co.uk', 'Harding', 'risus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(24, 'Burgess', 'Grady', 'sit.amet.diam@cursusNunc.org', 'Lenore', 'Vestibulum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(25, 'Baldwin', 'Shafira', 'pellentesque@In.ca', 'Miriam', 'leo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(26, 'Shelton', 'Xenos', 'bibendum.fermentum.metus@bibendumse', 'Callie', 'Proin', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '2016-07-12 23:46:00', NULL, NULL),
(27, 'Hood', 'Gregory', 'quis.pede@Craseutellus.org', 'Vincent', 'bibendum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(28, 'Wells', 'Priscilla', 'laoreet.posuere@loremloremluctus.or', 'Fuller', 'Cras', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(29, 'Schmidt', 'Slade', 'massa.rutrum.magna@turpisAliquamadi', 'Sonia', 'leo', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(30, 'Harrington', 'Jin', 'vel.est@estMauriseu.edu', 'Demetrius', 'sociis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(31, 'Glover', 'Florence', 'orci.Ut.semper@seddictum.ca', 'Declan', 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(32, 'Holman', 'Indigo', 'consequat.auctor@metus.edu', 'Stacey', 'montes,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(33, 'Skinner', 'Drake', 'Nulla.tincidunt@sagittisNullamvitae', 'Cedric', 'elit,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '2016-04-17 21:01:00', NULL, NULL),
(34, 'Key', 'Channing', 'nunc.ullamcorper.eu@odio.org', 'Acton', 'Maecenas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(35, 'Mcdonald', 'Emerald', 'penatibus.et.magnis@quisarcu.com', 'Cullen', 'egestas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(36, 'Sears', 'Ramona', 'Nulla.interdum@semmollisdui.org', 'Neville', 'aliquet', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(37, 'Dotson', 'Clio', 'Donec.luctus@ligula.org', 'Hayden', 'Phasellus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '0000-00-00 00:00:00', NULL, NULL),
(38, 'Estes', 'Felix', 'felis.Donec@vehicula.edu', 'Rana', 'a', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(39, 'Ball', 'Murphy', 'ligula.tortor.dictum@maurisSuspendi', 'Brittany', 'euismod', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(40, 'Peck', 'Cruz', 'lacinia@tempuseu.ca', 'Zena', 'nulla.', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(41, 'Leblanc', 'Sage', 'Suspendisse.tristique.neque@auctorv', 'Kelsie', 'nec,', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(42, 'Meyer', 'Vladimir', 'risus@mienimcondimentum.org', 'Keefe', 'turpis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '0000-00-00 00:00:00', NULL, NULL),
(43, 'Allison', 'Hashim', 'vel@Praesentinterdumligula.ca', 'Dale', 'dictum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(44, 'Roth', 'Zoe', 'ipsum.sodales@purusmauris.ca', 'Oleg', 'ante.', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(45, 'Monroe', 'Stella', 'ultrices@eutellusPhasellus.edu', 'Heidi', 'est.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(46, 'Miller', 'Idona', 'at.auctor.ullamcorper@Cum.ca', 'Sharon', 'Mauris', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(47, 'Rodriquez', 'Kelsie', 'Nullam.lobortis@duiFuscediam.org', 'Ahmed', 'arcu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(48, 'Farley', 'Buffy', 'a.enim@venenatislacusEtiam.co.uk', 'Florence', 'dui', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(49, 'Ratliff', 'Wendy', 'odio@risus.edu', 'MacKenzie', 'dolor', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(50, 'Nolan', 'Yen', 'cursus.Integer@Integer.edu', 'Eve', 'cursus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(51, 'Oconnor', 'Carlos', 'magnis.dis.parturient@sempertellus.', 'Serina', 'magna.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(52, 'Mccullough', 'Kelly', 'Ut.nec.urna@sem.com', 'Orlando', 'venenatis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(53, 'Joseph', 'Barclay', 'Sed.eget.lacus@pede.ca', 'Mohammad', 'ac', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(54, 'Franco', 'Hadley', 'sed.tortor.Integer@vitaenibh.co.uk', 'Berk', 'lectus,', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(55, 'Madden', 'Adele', 'lectus.ante.dictum@necimperdiet.co.', 'Garth', 'egestas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(56, 'Foster', 'Dalton', 'faucibus.leo.in@Suspendisse.com', 'Nevada', 'sapien.', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(57, 'Patrick', 'Tarik', 'Maecenas.mi@purusaccumsaninterdum.o', 'Madonna', 'egestas.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(58, 'Rasmussen', 'Zephania', 'eros@et.com', 'Hyatt', 'interdum.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(59, 'Hess', 'Dennis', 'magnis.dis.parturient@risus.com', 'Reed', 'magnis', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(60, 'Cote', 'Jane', 'sodales.at@vitae.com', 'Kirestin', 'vel,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(61, 'Gomez', 'Zachary', 'elementum.dui@estmauris.org', 'Aaron', 'tortor.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(62, 'Massey', 'Fallon', 'pretium.aliquet.metus@cursusa.co.uk', 'Sonya', 'luctus,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(63, 'Compton', 'Kibo', 'vel.mauris@Duisdignissim.org', 'Yvette', 'nulla.', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(64, 'Morales', 'Heather', 'Morbi@semmollisdui.co.uk', 'Mollie', 'enim', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(65, 'Alford', 'Brock', 'Etiam.gravida.molestie@Fuscedolorqu', 'Fletcher', 'erat', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(66, 'Wilder', 'Gemma', 'ultricies.ornare.elit@Nullamvelitdu', 'Yeo', 'Phasellus', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(67, 'Parsons', 'Rinah', 'est.Nunc.laoreet@dictum.co.uk', 'Barry', 'eu', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(68, 'Luna', 'Rhoda', 'eget@Aenean.ca', 'Jescie', 'velit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(69, 'Hooper', 'Logan', 'tempor.diam@rutrummagnaCras.edu', 'Jacob', 'semper', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(70, 'Talley', 'Charles', 'orci.consectetuer@a.org', 'Austin', 'ac,', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(71, 'Wallace', 'Phoebe', 'vitae@esttempor.org', 'Nevada', 'sit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '0000-00-00 00:00:00', NULL, NULL),
(72, 'Kennedy', 'Elijah', 'faucibus.ut.nulla@Donec.org', 'Wade', 'nec,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(73, 'Noble', 'Jescie', 'elit@neque.com', 'Wing', 'libero.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer', '0000-00-00 00:00:00', NULL, NULL),
(74, 'Mcguire', 'Hilel', 'justo.faucibus@elitsedconsequat.edu', 'Nola', 'interdum', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(75, 'Pena', 'Nina', 'quis.turpis@natoquepenatibuset.co.u', 'Boris', 'ad', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(76, 'Lambert', 'Flynn', 'egestas.Aliquam@auctorquis.org', 'Melanie', 'vitae', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(77, 'Haney', 'Erich', 'risus.Morbi@loremvitaeodio.co.uk', 'Kieran', 'nec', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(78, 'Rollins', 'Maxwell', 'luctus.lobortis@vehicula.co.uk', 'Damon', 'ornare.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur', '0000-00-00 00:00:00', NULL, NULL),
(79, 'Mccall', 'Ina', 'Suspendisse.commodo@accumsan.com', 'Garrison', 'egestas', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(80, 'Herman', 'Libby', 'semper@Etiamlaoreetlibero.com', 'Harriet', 'nibh', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '0000-00-00 00:00:00', NULL, NULL),
(81, 'Shaw', 'Roth', 'fringilla.cursus@quam.net', 'Dakota', 'nonummy', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(82, 'Simmons', 'Iris', 'consectetuer.mauris@neceleifendnon.', 'Stewart', 'sociis', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(83, 'Mccarthy', 'Hoyt', 'arcu.Vestibulum@sem.co.uk', 'Thaddeus', 'Praesent', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(84, 'Buckley', 'Fredericka', 'luctus.Curabitur@aodiosemper.net', 'Blaze', 'lacinia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(85, 'Morris', 'Connor', 'nostra.per.inceptos@parturient.co.u', 'Jacqueline', 'augue', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(86, 'Parker', 'Connor', 'commodo@rutrummagna.co.uk', 'Marvin', 'consectetuer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus.', '0000-00-00 00:00:00', NULL, NULL),
(87, 'Oconnor', 'Maia', 'imperdiet.ornare@vulputatenisi.com', 'Hamish', 'vel', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', '0000-00-00 00:00:00', NULL, NULL),
(88, 'Jarvis', 'Claudia', 'mus.Proin@atfringillapurus.edu', 'Colt', 'elit', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(89, 'Booth', 'Damian', 'Donec.fringilla@fermentumrisusat.ne', 'Hamish', 'felis.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(90, 'Contreras', 'Ivan', 'convallis@ametconsectetuer.com', 'Sheila', 'dignissim', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(91, 'Crane', 'Clinton', 'amet.faucibus.ut@Nullatincidunt.com', 'Emmanuel', 'arcu.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(92, 'Cohen', 'Fleur', 'molestie@uterat.ca', 'Octavia', 'auctor', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(93, 'Santana', 'Avram', 'Aenean@egetmetusIn.co.uk', 'Daniel', 'massa.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(94, 'Vang', 'Travis', 'amet.faucibus@atfringilla.edu', 'Gage', 'adipiscing', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(95, 'Chang', 'Quon', 'Quisque.imperdiet@metus.co.uk', 'Keaton', 'nisi.', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor.', '0000-00-00 00:00:00', NULL, NULL),
(96, 'Booker', 'Zorita', 'eu.neque.pellentesque@maurisInteger', 'Althea', 'habitant', 'Lorem ipsum dolor sit amet, consectetuer adipiscing', '0000-00-00 00:00:00', NULL, NULL),
(97, 'Bruce', 'Ferdinand', 'tellus.Suspendisse@Integer.co.uk', 'Melissa', 'a,', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed', '0000-00-00 00:00:00', NULL, NULL),
(98, 'Duncan', 'Wanda', 'Proin.dolor.Nulla@bibendum.org', 'Branden', 'libero', 'Lorem ipsum dolor sit amet,', '0000-00-00 00:00:00', NULL, NULL),
(99, 'Lester', 'Ciaran', 'nulla@luctussitamet.co.uk', 'Shoshana', 'Integer', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam', '0000-00-00 00:00:00', NULL, NULL),
(100, 'Vargas', 'Carla', 'Integer.eu.lacus@adipiscinglacusUt.', 'Nita', 'parturient', 'Lorem ipsum dolor sit amet, consectetuer', '0000-00-00 00:00:00', NULL, NULL),
(115, 'Benj', 'Mth', 'ben@gmail.com', 'ben', '$2y$10$HCJX86AnzJ.IhAcAUoNfyOyJX/OUwJE3F.Hgfhe53f2Hy3/7yqHJy', '', '2021-04-06 10:19:08', '2021-04-06 10:19:08', NULL),
(116, 'Anonyme', 'Anonyme', 'Anonyme@Anonyme.fr', 'Anonyme', '$2y$10$FQN0AW8Tv1vCKl0VgOz9uOePVwn1mc/BEuxfvnnT0DOXfzjmjNwtW', '', '2021-04-07 05:23:09', '2021-04-07 05:23:09', NULL),
(117, 'De Souza', 'Alex', '0', 'alex', '$2y$10$vbAfiJreW43Urz/t8i.8tuCNrrRrwPd1/81Org9KG7r7rlKVni/aO', 'Je suis le meilleur streamer', '2021-04-07 05:23:50', '2021-04-08 12:46:38', NULL),
(118, 'tamer', 'lolo', 'giratina54@hotmail.fr', 'punkill', '$2y$10$1n69weJH8/2OcKBDciPH2uQe8mrFm/AEBW3gCgmfULJTM6ZNX8aOS', '', '2021-04-08 07:31:38', '2021-04-08 07:31:38', NULL),
(119, 'DE SOUZA', 'Alex', 'alex@test.fr', 'Space', '$2y$10$rnYWQ5vlaR2Zzundw0LaxecEK.Xp979bI8wYqayRtTBihHOP93WD2', '', '2021-04-08 12:01:10', '2021-04-08 12:01:10', NULL),
(120, 'Girardin-vincent', 'Bastien', 'ParadoxV@vie.fr', 'ParadoxVie', '$2y$10$g.4xRIAKI7QrFf2L6nWg5etPw5tLeBF9cniZnsCzgvzo05lEN8ixS', 'Fan de musique mais aussi de jeux-vidéos et d\'informatique', '2021-04-08 12:49:11', '2021-04-08 14:17:34', NULL),
(121, 'test', 'test', 'test@test.fr', 'test', '$2y$10$7ha6L0R1b6/n.j7ytsj5mOpTr4Aa7AwUwdfvLOo4yuAy1Y7d0/y.K', '', '2021-04-08 16:25:15', '2021-04-08 16:25:15', NULL),
(122, 'Kremer', 'Thomas', 'thomas@thomas.fr', 'thomas', '$2y$10$VezCc7wLZJHxyQY0GF1KAub67z.CH2Ca.CZQ.F8F6KIneN6EBjyJm', '', '2021-04-08 19:06:51', '2021-04-08 19:06:51', NULL),
(123, 'Pichly', 'Gabriel', 'gab@gab.fr', 'gab', '$2y$10$Re1hxaOX6J0crvGZA8Z/g.knzy7HmAfGRQ06opB99m/j5PFu5p/Z6', '', '2021-04-08 19:09:12', '2021-04-08 19:09:12', NULL),
(124, 'MatMat', 'Benj', 'ben@ben.ben', 'ben', '$2y$10$vkwVkxomTb2nf.Lg0kqacuozvbIz/.84GIl4Ac8vnJ6HdbpejQDku', '', '2021-04-08 19:12:04', '2021-04-08 19:12:04', NULL),
(125, 'Test', 'Test', 'test@test.fr', 'Test', '$2y$10$RnOGeExQFRWI/nAzV8CZ/OZ1jw37eK/hYbSfcGJLzw73LdcKvnLA2', '', '2021-04-08 19:37:04', '2021-04-08 19:37:04', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `video`
--

CREATE TABLE `video` (
  `id` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `view` int NOT NULL,
  `id_user` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `video`
--

INSERT INTO `video` (`id`, `name`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `path`, `view`, `id_user`) VALUES
(132, '8ac62a92-98ad-11eb-9780-88d7f67bd077', '', 0, '2021-04-08 19:01:23', '2021-04-08 19:01:23', NULL, '../videos/8ac62a92-98ad-11eb-9780-88d7f67bd077.webm', 0, 120),
(133, '9b3b33a4-98ad-11eb-b8a4-88d7f67bd077', '', 0, '2021-04-08 19:02:04', '2021-04-08 19:02:04', NULL, '../videos/9b3b33a4-98ad-11eb-b8a4-88d7f67bd077.webm', 0, 120),
(134, '9b3b33a4-98ad-11eb-b8a4-88d7f67bd077', '', 0, '2021-04-08 19:02:20', '2021-04-08 19:02:20', NULL, '../videos/9b3b33a4-98ad-11eb-b8a4-88d7f67bd077.webm', 0, 120),
(135, 'c31380a2-98ad-11eb-a70d-88d7f67bd077', '', 0, '2021-04-08 19:02:55', '2021-04-08 19:02:55', NULL, '../videos/c31380a2-98ad-11eb-a70d-88d7f67bd077.webm', 0, 120),
(136, 'c31380a2-98ad-11eb-a70d-88d7f67bd077', '', 0, '2021-04-08 19:03:03', '2021-04-08 19:03:03', NULL, '../videos/c31380a2-98ad-11eb-a70d-88d7f67bd077.webm', 0, 120),
(137, 'd7203900-98ad-11eb-ab45-88d7f67bd077', '', 0, '2021-04-08 19:03:26', '2021-04-08 19:03:26', NULL, '../videos/d7203900-98ad-11eb-ab45-88d7f67bd077.webm', 0, 120),
(138, 'd7203900-98ad-11eb-ab45-88d7f67bd077', '', 0, '2021-04-08 19:03:31', '2021-04-08 19:03:31', NULL, '../videos/d7203900-98ad-11eb-ab45-88d7f67bd077.webm', 0, 120),
(139, '0d0964ec-98ae-11eb-aec8-88d7f67bd077', '', 0, '2021-04-08 19:04:57', '2021-04-08 19:04:57', NULL, '../videos/0d0964ec-98ae-11eb-aec8-88d7f67bd077.webm', 0, 117),
(140, '0d0964ec-98ae-11eb-aec8-88d7f67bd077', '', 0, '2021-04-08 19:05:03', '2021-04-08 19:05:03', NULL, '../videos/0d0964ec-98ae-11eb-aec8-88d7f67bd077.webm', 0, 117),
(141, '202fd22c-98ae-11eb-8d59-88d7f67bd077', '', 0, '2021-04-08 19:05:33', '2021-04-08 19:05:33', NULL, '../videos/202fd22c-98ae-11eb-8d59-88d7f67bd077.webm', 0, 117),
(142, '2eced670-98ae-11eb-97a5-88d7f67bd077', '', 0, '2021-04-08 19:05:56', '2021-04-08 19:05:56', NULL, '../videos/2eced670-98ae-11eb-97a5-88d7f67bd077.webm', 0, 117),
(143, '62da8da6-98ae-11eb-9520-88d7f67bd077', '', 0, '2021-04-08 19:07:24', '2021-04-08 19:07:24', NULL, '../videos/62da8da6-98ae-11eb-9520-88d7f67bd077.webm', 0, 122),
(144, '74c1e032-98ae-11eb-8537-88d7f67bd077', '', 0, '2021-04-08 19:07:56', '2021-04-08 19:07:56', NULL, '../videos/74c1e032-98ae-11eb-8537-88d7f67bd077.webm', 0, 122),
(145, '8645a0dc-98ae-11eb-80f7-88d7f67bd077', '', 0, '2021-04-08 19:08:27', '2021-04-08 19:08:27', NULL, '../videos/8645a0dc-98ae-11eb-80f7-88d7f67bd077.webm', 0, 122),
(146, '94e36ec6-98ae-11eb-a0df-88d7f67bd077', '', 0, '2021-04-08 19:08:50', '2021-04-08 19:08:50', NULL, '../videos/94e36ec6-98ae-11eb-a0df-88d7f67bd077.webm', 0, 122),
(147, 'bc1c43aa-98ae-11eb-a5e1-88d7f67bd077', '', 0, '2021-04-08 19:09:54', '2021-04-08 19:09:54', NULL, '../videos/bc1c43aa-98ae-11eb-a5e1-88d7f67bd077.webm', 0, 123),
(148, 'cc9ecbbc-98ae-11eb-9690-88d7f67bd077', '', 0, '2021-04-08 19:10:23', '2021-04-08 19:10:23', NULL, '../videos/cc9ecbbc-98ae-11eb-9690-88d7f67bd077.webm', 0, 123),
(149, 'e5aa2fa2-98ae-11eb-b7b8-88d7f67bd077', '', 0, '2021-04-08 19:11:02', '2021-04-08 19:11:02', NULL, '../videos/e5aa2fa2-98ae-11eb-b7b8-88d7f67bd077.webm', 0, 123),
(150, '1cc4ad78-98af-11eb-92c0-88d7f67bd077', '', 0, '2021-04-08 19:12:33', '2021-04-08 19:12:33', NULL, '../videos/1cc4ad78-98af-11eb-92c0-88d7f67bd077.webm', 0, 115),
(151, '2de5df14-98af-11eb-9c4e-88d7f67bd077', '', 0, '2021-04-08 19:13:03', '2021-04-08 19:13:03', NULL, '../videos/2de5df14-98af-11eb-9c4e-88d7f67bd077.webm', 0, 115),
(152, '3ad21c56-98af-11eb-b212-88d7f67bd077', '', 0, '2021-04-08 19:13:26', '2021-04-08 19:13:26', NULL, '../videos/3ad21c56-98af-11eb-b212-88d7f67bd077.webm', 0, 115),
(153, '522f18f4-98af-11eb-9342-88d7f67bd077', '', 0, '2021-04-08 19:14:04', '2021-04-08 19:14:04', NULL, '../videos/522f18f4-98af-11eb-9342-88d7f67bd077.webm', 0, 115);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT pour la table `video`
--
ALTER TABLE `video`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

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
