-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 07 mars 2021 à 16:37
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tweeter`
--

-- --------------------------------------------------------

--
-- Structure de la table `tweet`
--

DROP TABLE IF EXISTS `tweet`;
CREATE TABLE IF NOT EXISTS `tweet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(255) COLLATE utf8_bin NOT NULL,
  `Message` text COLLATE utf8_bin NOT NULL,
  `Hashtags` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `tweet`
--

INSERT INTO `tweet` (`id`, `Author`, `Message`, `Hashtags`, `createdAt`) VALUES
(1, 'Flavien', 'Voici le premier tweet', '#first', '2021-03-07 16:15:33'),
(2, 'Julien', 'Encore un tweet', '#lui', '2021-03-07 16:16:40'),
(3, 'Hugo', 'Tweet sur un ordi', NULL, '2021-03-07 16:16:40'),
(4, 'Jade', 'Encore un tweet', '#new', '2021-03-07 16:19:00'),
(5, 'Ethan', 'Ceci est un message', '#Nofiltre', '2021-03-07 16:19:00'),
(6, 'Livaï', 'google', '#Google', '2021-03-07 16:19:00'),
(7, 'Mathis', 'Il est 17H', '#Time', '2021-03-07 16:19:00'),
(8, 'Manon', 'Tweet visé ?', '#loupe', '2021-03-07 16:19:00'),
(9, 'Alix', 'La limit est de 1000 charactères', '#NoLimit', '2021-03-07 16:19:00'),
(10, 'Elise', 'SNK', '#SNK', '2021-03-07 16:19:00'),
(11, 'Flavien', 'Voici le premier tweet', '#first', '2021-03-07 16:15:33'),
(12, 'Julien', 'Encore un tweet', '#lui', '2021-03-07 16:16:40'),
(13, 'Hugo', 'Tweet sur un ordi', NULL, '2021-03-07 16:16:40'),
(14, 'Jade', 'Encore un tweet', '#new', '2021-03-07 16:19:00'),
(15, 'Ethan', 'Ceci est un message', '#Nofiltre', '2021-03-07 16:19:00'),
(16, 'Livaï', 'google', '#Google', '2021-03-07 16:19:00'),
(17, 'Mathis', 'Il est 17H', '#Time', '2021-03-07 16:19:00'),
(18, 'Manon', 'Tweet visé ?', '#loupe', '2021-03-07 16:19:00'),
(19, 'Alix', 'La limit est de 1000 charactères', '#NoLimit', '2021-03-07 16:19:00'),
(20, 'Elise', 'SNK', '#SNK', '2021-03-07 16:19:00'),
(21, 'Flavien', 'Voici le premier tweet', '#first', '2021-03-07 16:15:33'),
(22, 'Julien', 'Encore un tweet', '#lui', '2021-03-07 16:16:40'),
(23, 'Hugo', 'Tweet sur un ordi', NULL, '2021-03-07 16:16:40'),
(24, 'Jade', 'Encore un tweet', '#new', '2021-03-07 16:19:00'),
(25, 'Ethan', 'Ceci est un message', '#Nofiltre', '2021-03-07 16:19:00'),
(26, 'Livaï', 'google', '#Google', '2021-03-07 16:19:00'),
(27, 'Mathis', 'Il est 17H', '#Time', '2021-03-07 16:19:00'),
(28, 'Manon', 'Tweet visé ?', '#loupe', '2021-03-07 16:19:00'),
(29, 'Alix', 'La limit est de 1000 charactères', '#NoLimit', '2021-03-07 16:19:00'),
(30, 'Elise', 'SNK', '#SNK', '2021-03-07 16:19:00'),
(31, 'Flavien', 'Voici le premier tweet', '#first', '2021-03-07 16:15:33'),
(32, 'Julien', 'Encore un tweet', '#lui', '2021-03-07 16:16:40'),
(33, 'Hugo', 'Tweet sur un ordi', NULL, '2021-03-07 16:16:40'),
(34, 'Jade', 'Encore un tweet', '#new', '2021-03-07 16:19:00'),
(35, 'Ethan', 'Ceci est un message', '#Nofiltre', '2021-03-07 16:19:00'),
(36, 'Livaï', 'google', '#Google', '2021-03-07 16:19:00'),
(37, 'Mathis', 'Il est 17H', '#Time', '2021-03-07 16:19:00'),
(38, 'Manon', 'Tweet visé ?', '#loupe', '2021-03-07 16:19:00'),
(39, 'Alix', 'La limit est de 1000 charactères', '#NoLimit', '2021-03-07 16:19:00'),
(40, 'Elise', 'SNK', '#SNK', '2021-03-07 16:19:00'),
(41, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(42, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(43, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(44, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(45, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(46, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(47, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(48, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(49, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(50, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(51, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(52, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(53, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(54, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(55, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(56, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(57, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(58, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(59, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(60, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(61, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(62, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(63, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(64, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(65, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(66, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(67, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(68, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(69, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(70, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(71, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(72, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(73, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(74, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(75, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(76, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(77, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(78, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(79, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(80, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(81, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(82, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(83, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(84, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(85, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(86, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(87, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(88, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(89, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(90, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(91, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(92, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(93, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(94, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(95, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(96, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(97, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10'),
(98, 'Test', 'Message pour vérifier la pagination', '#pagination', '2021-03-07 16:20:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
