-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/10/2023 às 19:15
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projetofinal`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pageid` bigint(20) UNSIGNED NOT NULL,
  `idrol` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_creation` bigint(20) UNSIGNED NOT NULL,
  `user_modification` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `links`
--

INSERT INTO `links` (`id`, `pageid`, `idrol`, `description`, `creation_date`, `modification_date`, `user_creation`, `user_modification`, `created_at`, `updated_at`) VALUES
(1, 352, 5876522, 'Possimus animi voluptatem facere distinctio.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 92914, 15, '2023-10-06 07:16:24', '2023-10-10 17:03:13'),
(2, 8, 9085997, 'Enim doloremque ratione et velit cum.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 1324247, 963812, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(3, 893646, 3, 'Dolorum voluptatem et repudiandae quis hic velit.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 209595945, 20351, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(4, 790145, 7273, 'Ratione at laborum et esse.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 9217, 81, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(5, 4874112, 7, 'Doloribus ut eum velit dolorem.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 16500691, 42375862, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(6, 655095, 42512, 'Voluptatem sit qui numquam rem voluptas aut.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 675, 554, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(7, 79296079, 4, 'Dolore unde aut dolor.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 5907, 42592515, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(8, 999151, 402, 'Odio tempore adipisci impedit id.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 99559, 451011614, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(9, 72920, 7914, 'Sed odit voluptates vel saepe aliquid molestias.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 787895, 139587198, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(10, 195, 544, 'Quam dignissimos a ea dolorem sit corporis.', '2023-10-06 04:16:24', '2023-10-06 04:16:24', 4513, 432083675, '2023-10-06 07:16:24', '2023-10-06 07:16:24'),
(11, 2, 3, 'Descrição do item', '2023-10-09 23:30:22', '2023-10-09 23:30:22', 789, 789, '2023-10-10 02:30:22', '2023-10-10 02:30:22'),
(12, 3, 4, 'the best team ever the best', '2023-10-09 23:46:47', '2023-10-09 23:46:47', 2, 4, '2023-10-10 02:46:47', '2023-10-10 02:46:47'),
(14, 4, 2, 'this is a project of soccer', '2023-10-09 23:48:23', '2023-10-09 23:48:23', 42, 12, '2023-10-10 02:48:23', '2023-10-10 02:48:23'),
(15, 3, 3, 'the best team ever', '2023-10-09 23:52:48', '2023-10-09 23:52:48', 5, 5, '2023-10-10 02:52:48', '2023-10-10 02:52:48'),
(16, 3, 3, 'this is a project of soccer', '2023-10-09 23:54:34', '2023-10-09 23:54:34', 3, 4, '2023-10-10 02:54:34', '2023-10-10 02:54:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `logs`
--

CREATE TABLE `logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `binnacle` varchar(255) NOT NULL,
  `iduser` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `hour` time NOT NULL,
  `ip` varchar(255) NOT NULL,
  `SW` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `logs`
--

INSERT INTO `logs` (`id`, `binnacle`, `iduser`, `date`, `hour`, `ip`, `SW`, `browser`, `user`, `created_at`, `updated_at`) VALUES
(1, 'Asperiores eos ullam voluptates cum possimus aut nam ut.', 9, '1995-04-09', '04:05:35', '44.237.111.59', 'google', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5360 (KHTML, like Gecko) Chrome/38.0.849.0 Mobile Safari/5360', 'null', '2023-10-06 07:15:53', '2023-10-10 17:23:52'),
(2, 'Reprehenderit beatae in dolores nulla consectetur delectus.', 9, '1996-10-13', '10:26:45', '194.197.124.12', 'maxime', 'Mozilla/5.0 (Windows NT 6.0; en-US; rv:1.9.0.20) Gecko/20210812 Firefox/36.0', 'ygraham', '2023-10-06 07:15:53', '2023-10-06 07:15:53'),
(3, 'Optio eos eos provident nesciunt illum optio.', 8, '1994-05-22', '10:25:14', '43.175.28.217', 'et', 'Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.0 (KHTML, like Gecko) Chrome/96.0.4068.52 Safari/537.0 EdgA/96.01143.13', 'jewell.langosh', '2023-10-06 07:15:53', '2023-10-06 07:15:53'),
(4, 'Id amet esse est saepe eum et.', 7, '1986-03-19', '12:53:35', '205.121.169.70', 'error', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/5322 (KHTML, like Gecko) Chrome/36.0.873.0 Mobile Safari/5322', 'goldner.nina', '2023-10-06 07:15:53', '2023-10-06 07:15:53'),
(6, 'Repudiandae earum ut dolor et corporis et accusantium.', 6, '1990-04-28', '20:03:48', '92.45.60.50', 'ut', 'Opera/8.60 (X11; Linux x86_64; en-US) Presto/2.8.274 Version/11.00', 'arjun40', '2023-10-06 07:15:53', '2023-10-06 07:15:53'),
(7, 'Veritatis nemo modi molestiae animi.', 5, '2000-08-05', '00:30:50', '54.169.193.184', 'eius', 'Mozilla/5.0 (Macintosh; U; PPC Mac OS X 10_5_9 rv:6.0; nl-NL) AppleWebKit/531.48.6 (KHTML, like Gecko) Version/4.0 Safari/531.48.6', 'heathcote.haylie', '2023-10-06 07:15:53', '2023-10-06 07:15:53'),
(8, 'Earum nisi cum in magnam.', 9, '1998-08-21', '17:34:31', '15.63.179.20', 'nihil', 'Mozilla/5.0 (compatible; MSIE 6.0; Windows NT 6.1; Trident/5.1)', 'mckenzie.sanford', '2023-10-06 07:15:53', '2023-10-06 07:15:53'),
(9, 'Itaque consequatur aspernatur debitis tenetur quis officia.', 3, '2011-10-19', '22:04:26', '131.242.220.226', 'consequatur', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_2 like Mac OS X) AppleWebKit/537.2 (KHTML, like Gecko) Version/15.0 EdgiOS/94.01095.25 Mobile/15E148 Safari/537.2', 'wilfredo.mertz', '2023-10-06 07:15:53', '2023-10-06 07:15:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `personid` bigint(20) UNSIGNED NOT NULL,
  `iduser` bigint(20) UNSIGNED NOT NULL,
  `user` varchar(255) NOT NULL,
  `clue` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `date` date NOT NULL,
  `idrol` bigint(20) UNSIGNED NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `usercreation` bigint(20) UNSIGNED NOT NULL,
  `usermodification` bigint(20) UNSIGNED NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `members`
--

INSERT INTO `members` (`id`, `personid`, `iduser`, `user`, `clue`, `enabled`, `date`, `idrol`, `creation_date`, `modification_date`, `usercreation`, `usermodification`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 11, 11, '[object Object]', 'culpa', 1, '2018-12-30', 19, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 0, 0, 'oBnoWeSmLk', '2023-10-06 07:17:05', '2023-10-10 17:57:24'),
(2, 12, 12, '[object Object]', 'nobis', 0, '2011-01-29', 10, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 0, 0, 'c4pl7MeKmc', '2023-10-06 07:17:05', '2023-10-10 18:35:24'),
(4, 14, 14, 'chomenick', 'nihil', 1, '2017-12-04', 14, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, '0JQL8S8GKa', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(5, 15, 15, 'perry27', 'consequatur', 0, '2006-01-21', 15, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'lOx07Xxnga', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(6, 16, 16, 'tryan', 'amet', 0, '1988-01-28', 16, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'ZtJvhk77nv', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(8, 18, 18, 'marcel91', 'alias', 1, '2012-10-31', 18, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'oX58poPGrb', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(9, 19, 19, 'xrau', 'culpa', 1, '1976-05-11', 19, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'WRokfyGSqJ', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(10, 20, 20, 'moses.weber', 'debitis', 1, '2004-07-08', 20, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'QHU9hsWnkD', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(11, 21, 21, 'jairo.monahan', 'ab', 1, '1995-08-10', 21, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, '3G1XFdhVPe', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(12, 22, 22, 'gfritsch', 'officiis', 1, '2020-03-09', 22, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'Lrx9XUbFBk', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(13, 23, 23, 'shanel.collins', 'exercitationem', 0, '1999-03-26', 23, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'A6Kvos65jT', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(14, 24, 24, 'adams.jan', 'molestiae', 0, '1980-06-08', 24, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'dtF1k45kY5', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(15, 25, 25, 'jarrett.hessel', 'aliquam', 0, '1996-12-05', 25, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'ZKqGVNv0ct', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(16, 26, 26, 'watsica.lucienne', 'consequuntur', 1, '1970-07-23', 26, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'Yopb4gJneX', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(17, 27, 27, 'kgleason', 'suscipit', 1, '1972-05-29', 27, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'tOJ0V19xi3', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(18, 28, 28, 'zpollich', 'dolore', 1, '1993-05-02', 28, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'YtQTW2Kh6A', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(19, 29, 29, 'crawford.bechtelar', 'voluptates', 1, '1975-07-13', 29, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, '1N4lLUIfos', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(20, 30, 30, 'dasia48', 'ducimus', 1, '1979-10-28', 30, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, '4hQtbgwjQZ', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(21, 31, 31, 'abrekke', 'est', 0, '2015-09-08', 31, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'SFMdu8WFoY', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(22, 32, 32, 'bfisher', 'cumque', 0, '2003-03-22', 32, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'IArksKo4fE', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(23, 33, 33, 'wuckert.michelle', 'facere', 0, '1974-03-21', 33, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'tpxTy1kzcD', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(24, 34, 34, 'idonnelly', 'amet', 0, '2019-02-07', 34, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, '6Pb4GsV65T', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(25, 35, 35, 'von.myrtle', 'fugit', 1, '1974-05-16', 35, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'JAzBgmYLkX', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(26, 36, 36, 'bins.rico', 'adipisci', 0, '1973-03-14', 36, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'wWVbyko9Iv', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(27, 37, 37, 'jacklyn23', 'et', 0, '1988-11-22', 37, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'rmMR2abMQv', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(28, 38, 38, 'mmueller', 'similique', 1, '2013-07-10', 38, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'PRnoLlVZJE', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(29, 39, 39, 'dagmar49', 'velit', 0, '2010-08-08', 39, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'FXpwFmV4rd', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(30, 40, 40, 'dfeest', 'soluta', 0, '2013-10-15', 40, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'oz0tKbL5WR', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(31, 41, 41, 'trent.volkman', 'illum', 0, '2022-11-04', 41, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'wbXx2o2qFB', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(32, 42, 42, 'stanton.kennedy', 'laborum', 0, '1988-08-10', 42, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'VNJS6d0a7T', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(33, 43, 43, 'kuhlman.jessika', 'error', 0, '1987-10-10', 43, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'XVkoxCZd52', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(34, 44, 44, 'ikunde', 'labore', 0, '2008-02-28', 44, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'jTuAHDQQqC', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(35, 45, 45, 'bode.braxton', 'quisquam', 1, '2003-08-31', 45, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'BrsOUBRpwE', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(36, 46, 46, 'padberg.josianne', 'ut', 1, '2020-09-11', 46, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, '42zcLkHFiS', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(37, 47, 47, 'yoreilly', 'eligendi', 0, '2006-12-28', 47, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'TCGw9JMSUQ', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(38, 48, 48, 'cary01', 'iste', 0, '2006-04-20', 48, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'jCntUp1qVJ', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(39, 49, 49, 'nathaniel41', 'illum', 1, '1979-05-29', 49, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'l2G2qGASwC', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(40, 50, 50, 'myles12', 'amet', 1, '1979-05-25', 50, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'fJ1454l671', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(41, 51, 51, 'ffriesen', 'facere', 0, '1992-11-17', 51, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'QCno86payC', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(42, 52, 52, 'anolan', 'et', 0, '2002-02-09', 52, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'yZ9Jt13VLn', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(43, 53, 53, 'ocummings', 'ab', 1, '1995-10-13', 53, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'dm2LLm3hxN', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(44, 54, 54, 'javon08', 'impedit', 0, '2004-10-28', 54, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'oqLT61ORIH', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(45, 55, 55, 'nicholas.haag', 'ipsam', 0, '2007-12-27', 55, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'FtrU4UHIcU', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(46, 56, 56, 'croob', 'totam', 0, '1974-07-10', 56, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'AGQMc3uwZp', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(47, 57, 57, 'luella.runte', 'ad', 1, '1999-05-30', 57, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'T2NdFWu9Cz', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(48, 58, 58, 'qgrimes', 'omnis', 0, '2022-04-27', 58, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'SxVVcNIktw', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(49, 59, 59, 'hill.susana', 'rerum', 0, '1973-12-19', 59, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'WtNs4cRlFZ', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(50, 60, 60, 'jacky.runolfsdottir', 'sed', 1, '1982-07-05', 60, '2023-10-06 07:17:05', '2023-10-06 07:17:05', 1, 1, 'XzKMAnWCkL', '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(51, 4, 3, 'nome', 'zero', 0, '1234-03-12', 12, '2023-10-10 01:22:31', '2023-10-10 01:22:31', 0, 0, NULL, '2023-10-10 04:22:31', '2023-10-10 04:22:31'),
(53, 2, 3, 'name', 'zero', 0, '4322-03-12', 3, '2023-10-10 14:57:42', '2023-10-10 14:57:42', 0, 0, NULL, '2023-10-10 17:57:42', '2023-10-10 17:57:42');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_10_05_201141_create_logs_table', 1),
(7, '2023_10_05_201311_create_roles_table', 1),
(8, '2023_10_05_201513_create_links_table', 1),
(9, '2023_10_05_202227_create_pages_table', 1),
(10, '2023_10_05_202431_create_people_table', 1),
(11, '2023_10_06_032729_create_members_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(15, '2016_06_01_000004_create_oauth_clients_table', 2),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('096a7455f80de4ce8c5e184e609881112b7f328b8605b7d69570bc472b3cf03e35b1348445bdd455', 63, 7, 'API Token', '[]', 0, '2023-10-10 20:09:38', '2023-10-10 20:09:38', '2024-10-10 17:09:38'),
('1001c52a719c4fe6ae6763759286aec17b34e5af1ad6d0d535aed45ea899cf53a514a7a5134e419b', 62, 7, 'API Token', '[]', 0, '2023-10-09 21:47:04', '2023-10-09 21:47:04', '2024-10-09 18:47:04'),
('12c34ef485c33985dbd8beb5fbc106da94ab1405a0be3491e0b6c82a284d955b1f1bb2db012d5051', 63, 7, 'API Token', '[]', 0, '2023-10-10 20:09:27', '2023-10-10 20:09:27', '2024-10-10 17:09:27'),
('151c96cfd9116519d5f68af4d37eb24e509cf27fb8ecdc7ab35691473d134dab745bc583bb8db133', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:25:36', '2023-10-09 16:25:36', '2024-10-09 13:25:36'),
('190dcfc4daf89f012016fbe74e7b9f51ba221d210e27457ec56650e3d8d0ec2e4f971f5ab53db743', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:09:28', '2023-10-10 19:09:28', '2024-10-10 16:09:28'),
('259e7dc515e6437aba7853d84e9167af784ad5a875c311d34dd9a7397b06fbda375e8edf7620f603', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:33:02', '2023-10-09 16:33:02', '2024-10-09 13:33:02'),
('265021bcdde39c18867d6fec56c56c55002be1068a399e4d2e3c67d7e656b2e03725a48a559e2081', 62, 7, 'API Token', '[]', 0, '2023-10-09 15:32:46', '2023-10-09 15:32:46', '2024-10-09 12:32:46'),
('3195c3b8b137e302e5170982288461f2f88a03d558d79242da059f7e5f2787537f7f44f8c4c51bcf', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:11:27', '2023-10-10 19:11:27', '2024-10-10 16:11:27'),
('38187828bd7dd4f40f87f668b07f3011cb39755b41022c0076cf09f60916d7ce3d482287cc3d260c', 61, 7, 'API Token', '[]', 0, '2023-10-10 19:31:18', '2023-10-10 19:31:18', '2024-10-10 16:31:18'),
('3d31f62fdbeb37d4715b87042441fc9163867f196f7ae6f28a814c8798c0b54337f5bd62b1d5fd6c', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:33:02', '2023-10-09 16:33:02', '2024-10-09 13:33:02'),
('5da336b7565d2da0d48cd7a5f8e30a761e475cdce186115c0bac9b3c4a92010aa5c1fb93de01de15', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:19:54', '2023-10-09 17:19:54', '2024-10-09 14:19:54'),
('5eae8ae8b315da778c73bea32594d2f0a3257141b5397a8d84f8ead70ee2ae335a56d4f5998a0806', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:11:03', '2023-10-10 19:11:03', '2024-10-10 16:11:03'),
('6195140882f4ad553e45b972723e848cfcada2b25b5b8350301aed28f241d1152f63276d8b320588', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:33:02', '2023-10-09 16:33:02', '2024-10-09 13:33:02'),
('6226fdf903cb8cca208048c2af42cf6c76d84647e73cd69ee3d1cdbc8cb255e5aa7791e7952693a8', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:15:14', '2023-10-09 17:15:14', '2024-10-09 14:15:14'),
('65c80f7f0ef0aacee8ed1c9c1cc1fb67d8933e78943f8436580b5901e6805e8b1d6049abd39c084b', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:26:40', '2023-10-09 16:26:40', '2024-10-09 13:26:40'),
('68e287f7dd72101eaba222bb435418fb4b4967c2a6659c7a80a58fed1baa25028ead0a7251dadebc', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:09:06', '2023-10-09 16:09:06', '2024-10-09 13:09:06'),
('69430dff0ce9d3f1334f984c42eb3bba1e01d2fd867a288766e9cbbdab0fbe9bd08581a9a56158cf', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:16:52', '2023-10-09 17:16:52', '2024-10-09 14:16:52'),
('6feccc7932852c16f91a5022bceaf945048039550e39320a9ec6bc5485b514863d1cca8c14652021', 61, 7, 'API Token', '[]', 0, '2023-10-10 00:57:32', '2023-10-10 00:57:32', '2024-10-09 21:57:32'),
('76e158641cf93eb5cef629aa3727651e9ba223dffdc47dc06b72244f22971bdeaa2a6a73f7d02e11', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:09:47', '2023-10-09 17:09:47', '2024-10-09 14:09:47'),
('842d89112462febb6eff314c5496e02ceb9ec16dd11f7b724a588c2c57119afe8773f41e2c44030e', 62, 7, 'API Token', '[]', 0, '2023-10-09 15:24:29', '2023-10-09 15:24:30', '2024-10-09 12:24:29'),
('8551f64ce9bb5c9c6e89bbf9d04d9f31f0eb02d29ec18b196b9346162f5357e325ec93a13d647fc6', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:16:59', '2023-10-09 17:16:59', '2024-10-09 14:16:59'),
('86a1332bcbdc9cb4bf856fd0b893cef56d446544d321a3a6348d886a4192e000a131ac6811f30a85', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:37:00', '2023-10-09 16:37:00', '2024-10-09 13:37:00'),
('89ee142023f663d8ca1c5e71c2aa8dcb385aca648ffb65ca9391c021f8ebeeefc5ca4a1830ca4568', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:25:33', '2023-10-10 19:25:33', '2024-10-10 16:25:33'),
('9b21d20ca27f76038a44934dfc45b9cf8e1c61c0eed3335f4d3f6e0221fea753689718d6ec942bd8', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:36:30', '2023-10-09 16:36:30', '2024-10-09 13:36:30'),
('b0427745573b6ecdf60be130ebeb5f0b9d88e91ad45aae66ffca7681e59c3b3798f863ddbfae57cb', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:16:12', '2023-10-09 17:16:12', '2024-10-09 14:16:12'),
('b183968632878871187710ef2e551c4523c8bc1a1ffd9afc9e1821e0f7d9c7557f9b9ea0ed915413', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:10:40', '2023-10-10 19:10:40', '2024-10-10 16:10:40'),
('b19a92269854cc644f493d957530b30ad67e5964512bcec2fd5aaabdf9ff106b14ce73f81ad3a549', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:13:45', '2023-10-10 19:13:45', '2024-10-10 16:13:45'),
('b81e4ebead5b36b98985fd03c3598cb115aae05c4687565ea313f31f93203a54493a762597ad253a', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:11:24', '2023-10-10 19:11:25', '2024-10-10 16:11:24'),
('b9b1684b4aa3e385ab5d91c3e524761665735b6a501434380c1fbf4ed0f5a642c3d723b00b52757a', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:43:54', '2023-10-09 16:43:54', '2024-10-09 13:43:54'),
('c55c38da380b75721a5e1b70c123c781c857c4718242871f36a27acabe1893031d460596fd14c41c', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:10:10', '2023-10-10 19:10:10', '2024-10-10 16:10:10'),
('c9015e97a3c072aea713c88b77407a0fe3ce22f9773baa056901e9a0f20946f378c1c5ab61c2f2e0', 62, 7, 'API Token', '[]', 0, '2023-10-09 18:01:42', '2023-10-09 18:01:42', '2024-10-09 15:01:42'),
('d25ccc4dcec499ac82ee5ac451a099c80efcc26fab6488602cf490a2b7baf7ee59761a1bf88675e6', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:16:58', '2023-10-09 17:16:58', '2024-10-09 14:16:58'),
('d3c92876c9c0fa2964be0dc0ddeb2c14e7cbe14acfd363e14a47e10ca425e9a3b71b4a6fc60c8753', 62, 7, 'API Token', '[]', 0, '2023-10-10 19:11:27', '2023-10-10 19:11:27', '2024-10-10 16:11:27'),
('ddae0466f349e3c0b75c2d7758cd54b86b7ab3a0431a47de4d56b55e560b4a716d6f00e5cd0b0625', 64, 7, 'API Token', '[]', 0, '2023-10-10 20:12:25', '2023-10-10 20:12:25', '2024-10-10 17:12:25'),
('df34fe9cb4e8e33ae4bb5221e59d67896059953dacf4463bf30e7d4b9849f08edd40cf1072bb1fc3', 61, 7, 'API Token', '[]', 0, '2023-10-10 16:13:52', '2023-10-10 16:13:52', '2024-10-10 13:13:52'),
('e2c31f1ad462a8299681f0eac387d2cbfa672c23efc656878fed3c061b572ceb6b87eb1ff961f934', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:08:21', '2023-10-09 16:08:21', '2024-10-09 13:08:21'),
('f67475103f640711552372dddd09386314029db2db9902fc03ffd2826880912fa18c937b0cae34ea', 62, 7, 'API Token', '[]', 0, '2023-10-09 17:19:12', '2023-10-09 17:19:12', '2024-10-09 14:19:12'),
('fc7924a48d23007e7f4577c0118802210b78749cc66bbdc855b0254978020fbb1e9c51fcfda2baa2', 62, 7, 'API Token', '[]', 0, '2023-10-09 16:33:01', '2023-10-09 16:33:01', '2024-10-09 13:33:01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '7dZrPnz4wV1alnu8G6IctXePUAYmQQvg8KwyUv0o', NULL, 'http://localhost', 1, 0, 0, '2023-10-06 19:38:25', '2023-10-06 19:38:25'),
(2, NULL, 'Laravel Password Grant Client', 'X2vLMd9bMojXQhA8sC8B9g5dSLpa1x3kGgF9wHus', 'users', 'http://localhost', 0, 1, 0, '2023-10-06 19:38:25', '2023-10-06 19:38:25'),
(3, NULL, 'Laravel Personal Access Client', 'sjPAQEDEx0DWqjVxysC8seaTB0VSJE4zwuetBHih', NULL, 'http://localhost', 1, 0, 0, '2023-10-09 15:15:17', '2023-10-09 15:15:17'),
(4, NULL, 'Laravel Password Grant Client', 'pcKzU46bKEeGi0VkdkO0R6AX8L14QbqyV8XPI2cs', 'users', 'http://localhost', 0, 1, 0, '2023-10-09 15:15:17', '2023-10-09 15:15:17'),
(5, NULL, 'Laravel Personal Access Client', 'fvk0gN9FIiPIJXk1zYvlcB12po3j2alkWb7wy2Nb', NULL, 'http://localhost', 1, 0, 0, '2023-10-09 15:15:40', '2023-10-09 15:15:40'),
(6, NULL, 'Laravel Password Grant Client', 'wapH7ofetQ1soffBvdmp98sy1qxF0p7wHTObjoo8', 'users', 'http://localhost', 0, 1, 0, '2023-10-09 15:15:40', '2023-10-09 15:15:40'),
(7, NULL, 'Laravel Personal Access Client', 'vpnR9tDn0ajDx7USkKAJe56VIiEDO2rnU5Vnoo0V', NULL, 'http://localhost', 1, 0, 0, '2023-10-09 15:16:51', '2023-10-09 15:16:51'),
(8, NULL, 'Laravel Password Grant Client', '6LTsJWDUiwHalMWsMKZrRy2f245S5WI4yRVWOcrx', 'users', 'http://localhost', 0, 1, 0, '2023-10-09 15:16:51', '2023-10-09 15:16:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-10-06 19:38:25', '2023-10-06 19:38:25'),
(2, 3, '2023-10-09 15:15:17', '2023-10-09 15:15:17'),
(3, 5, '2023-10-09 15:15:40', '2023-10-09 15:15:40'),
(4, 7, '2023-10-09 15:16:51', '2023-10-09 15:16:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `usercreation` bigint(20) UNSIGNED NOT NULL,
  `usermodification` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `guy` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `pages`
--

INSERT INTO `pages` (`id`, `creation_date`, `modification_date`, `usercreation`, `usermodification`, `url`, `state`, `name`, `description`, `icon`, `guy`, `created_at`, `updated_at`) VALUES
(1, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 52415082, 38712, 'https://www.medhurst.com/ad-aut-voluptatum-dolorem-voluptatem', 'quos', 'dolor', 'Ut aut reiciendis dolor voluptatem ut iusto perferendis.', 'earum', 'aspernatur', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(2, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 3701311, 694335823, 'http://connelly.com/et-earum-quo-nobis-porro-voluptatibus-voluptatem.html', 'sit', 'rerum', 'Deleniti nam harum sed quae quia ut.', 'natus', 'aut', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(3, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 171, 616, 'http://terry.com/et-voluptatem-dolor-esse-sit.html', 'voluptatem', 'quia', 'Non animi vel similique eius corporis et.', 'eum', 'cumque', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(4, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 164415, 0, 'http://www.gleason.com/qui-et-et-rerum-distinctio', 'aut', 'non', 'Aperiam ea quo odit eum.', 'accusamus', 'natus', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(5, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 9394964, 333804, 'http://www.cartwright.net/', 'consequatur', 'id', 'Facere nesciunt placeat et.', 'eum', 'quis', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(6, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 6, 480470492, 'http://eichmann.biz/in-eum-iusto-et-enim-non-aliquid', 'eveniet', 'nesciunt', 'Et temporibus illum voluptatem dolore facilis autem.', 'sint', 'animi', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(7, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 894112385, 1656, 'http://www.davis.com/dicta-est-alias-rem-ut', 'commodi', 'praesentium', 'Pariatur molestiae nihil quis.', 'in', 'id', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(8, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 3278, 303598, 'https://quigley.com/molestiae-quisquam-ipsa-fugit-aut-odit-voluptas.html', 'et', 'et', 'Natus a aspernatur quia dolor dolorem modi consequuntur.', 'delectus', 'ex', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(9, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 27809, 38, 'http://parker.net/esse-odio-laborum-fugiat-sed-quidem-consequatur', 'maxime', 'omnis', 'Velit molestias voluptatum et tempora explicabo.', 'dignissimos', 'ex', '2023-10-06 07:16:39', '2023-10-06 07:16:39'),
(10, '2023-10-06 04:16:39', '2023-10-06 04:16:39', 170, 791, 'http://walsh.net/excepturi-et-voluptate-aut-quidem-doloremque-sit-rerum', 'repudiandae', 'sit', 'Dicta nemo pariatur repudiandae a fugit sunt.', 'voluptas', 'dolor', '2023-10-06 07:16:39', '2023-10-06 07:16:39');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `people`
--

CREATE TABLE `people` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) NOT NULL,
  `second_surname` varchar(255) DEFAULT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `usercreation` bigint(20) UNSIGNED NOT NULL,
  `usermodification` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `people`
--

INSERT INTO `people` (`id`, `first_name`, `second_name`, `surname`, `second_surname`, `creation_date`, `modification_date`, `usercreation`, `usermodification`, `created_at`, `updated_at`) VALUES
(1, 'Kathlyn', 'Isac', 'Johnson', NULL, '2023-10-06 04:16:52', '2023-10-06 04:16:52', 3088285, 11300149, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(2, 'Vivienne', 'Kareem', 'Casper', 'Mitchell', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 95219063, 53613501, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(3, 'Gaston', 'Joe', 'Emard', NULL, '2023-10-06 04:16:52', '2023-10-06 04:16:52', 30, 47191326, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(4, 'Garfield', 'Rasheed', 'Zboncak', 'Senger', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 264884166, 9, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(5, 'Nolan', NULL, 'Keebler', NULL, '2023-10-06 04:16:52', '2023-10-06 04:16:52', 404, 5948770, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(6, 'Deondre', 'Dock', 'Conn', 'Roob', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 171, 33450, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(7, 'Arno', 'Damaris', 'Sipes', 'Eichmann', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 88614, 4105659, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(8, 'Adolphus', NULL, 'Waters', 'Kohler', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 38154199, 9, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(9, 'Nickolas', NULL, 'Wilderman', 'Jast', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 511330, 3, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(10, 'Heidi', NULL, 'Wilkinson', 'O\'Keefe', '2023-10-06 04:16:52', '2023-10-06 04:16:52', 971904596, 0, '2023-10-06 07:16:52', '2023-10-06 07:16:52'),
(11, 'Greyson', 'Lee', 'Turcotte', 'Rippin', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 52872, 25898568, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(12, 'Leanne', NULL, 'Gottlieb', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 72425, 53478966, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(13, 'Myriam', 'Moises', 'Feeney', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 30860, 82, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(14, 'Ervin', NULL, 'Ankunding', 'Waelchi', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 2492, 224073261, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(15, 'Ambrose', NULL, 'Bode', 'Turcotte', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 432401, 488, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(16, 'Maggie', 'Graham', 'Friesen', 'Borer', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 58342997, 2277, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(17, 'Isidro', 'Salvatore', 'Jacobi', 'Kutch', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3048686, 1889, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(18, 'Emmie', NULL, 'Murray', 'Koss', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 16, 8, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(19, 'Walter', NULL, 'Hyatt', 'McKenzie', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3, 156162548, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(20, 'Neha', 'Sally', 'Auer', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 2663, 61, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(21, 'Brooks', 'Mariah', 'Hettinger', 'Douglas', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 144147110, 486932, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(22, 'Jefferey', 'Zaria', 'Aufderhar', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 45409, 6469419, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(23, 'Bradley', 'Arianna', 'Harvey', 'Kassulke', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 5, 572350, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(24, 'Ayla', 'Crystel', 'Jacobs', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 6655504, 2677, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(25, 'Theresa', NULL, 'Berge', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 57562, 5760021, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(26, 'Orin', NULL, 'Miller', 'Jast', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 69, 7009526, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(27, 'Shawn', NULL, 'Connelly', 'Funk', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 89674960, 7, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(28, 'Norval', 'Zion', 'Klocko', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 179458017, 2093944, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(29, 'Letha', NULL, 'Corkery', 'Schaden', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 94, 24, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(30, 'Michale', NULL, 'Kertzmann', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 28639571, 94, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(31, 'Marlin', 'Ford', 'Harvey', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 100647657, 3, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(32, 'Maribel', 'Jovan', 'Kirlin', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 2928409, 386901887, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(33, 'Rickey', NULL, 'Rath', 'Sipes', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 688, 853403, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(34, 'Wilbert', 'Alena', 'Ryan', 'Predovic', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 2748, 561, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(35, 'Rylee', NULL, 'Hagenes', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 60091, 429, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(36, 'Kian', 'Jalen', 'Ledner', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 43202788, 97, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(37, 'Reese', NULL, 'Gislason', 'Nikolaus', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 60515816, 7, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(38, 'Zackery', NULL, 'Zieme', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 34, 61067658, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(39, 'Karley', 'Devan', 'Roob', 'Torphy', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3102, 20089, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(40, 'Tyreek', 'Markus', 'Prohaska', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 477261, 460, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(41, 'Hipolito', NULL, 'Muller', 'Medhurst', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 35498, 40861231, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(42, 'Nash', NULL, 'White', 'Wintheiser', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 16, 49, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(43, 'Joan', 'Oscar', 'Williamson', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 90, 8, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(44, 'Gerard', 'Layla', 'Kohler', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 899, 6570413, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(45, 'Armand', NULL, 'Robel', 'Considine', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 8433173, 2872, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(46, 'Arlo', 'Nadia', 'Leuschke', 'Rowe', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 8, 7, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(47, 'Jazmyn', NULL, 'Kuvalis', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 165828, 48, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(48, 'Melissa', 'Anastasia', 'Powlowski', 'O\'Conner', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 229390, 67693, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(49, 'Zena', NULL, 'Reynolds', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 905, 3, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(50, 'Selena', 'Kevin', 'Mueller', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 7624, 16525, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(51, 'Pattie', NULL, 'Koelpin', 'Gulgowski', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 88216097, 891, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(52, 'Elise', NULL, 'Homenick', 'Gibson', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 64, 153803, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(53, 'Cordelia', NULL, 'Keeling', 'Mertz', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 7787934, 8159, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(54, 'Charlene', 'Hollie', 'Dach', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 235227505, 8127723, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(55, 'Davion', NULL, 'Sauer', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 7374094, 72698423, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(56, 'Winona', 'Sophia', 'Gorczany', 'Hand', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 6688, 6676, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(57, 'Wilson', 'Natalie', 'Turner', 'Rodriguez', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3, 0, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(58, 'Reid', NULL, 'Zboncak', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 44548795, 37, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(59, 'Torrey', 'Bettye', 'White', NULL, '2023-10-06 04:17:05', '2023-10-06 04:17:05', 23217, 28, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(60, 'Ashleigh', NULL, 'Schmitt', 'Swaniawski', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 227782511, 7351132, '2023-10-06 07:17:05', '2023-10-06 07:17:05');

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_creation` bigint(20) UNSIGNED NOT NULL,
  `user_modification` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `roles`
--

INSERT INTO `roles` (`id`, `role`, `creation_date`, `modification_date`, `user_creation`, `user_modification`, `created_at`, `updated_at`) VALUES
(2, 'vitae', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 1376229, 6370833, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(3, 'similique', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 53665, 5, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(5, 'veritatis', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 32666875, 882040320, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(6, 'nisi', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 2795311, 5, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(7, 'voluptate', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 137082, 8, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(8, 'possimus', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 752, 97528, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(9, 'rerum', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 59288, 780693332, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(10, 'quis', '2023-10-06 04:16:07', '2023-10-06 04:16:07', 50263, 5, '2023-10-06 07:16:07', '2023-10-06 07:16:07'),
(11, 'tenetur', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 79, 9772061, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(12, 'doloribus', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 47, 953, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(13, 'eveniet', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 5, 22544628, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(14, 'quas', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 6, 46288, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(15, 'recusandae', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 688773, 8, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(16, 'nesciunt', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 24, 25, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(17, 'accusamus', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3, 98, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(18, 'et', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 24, 27638, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(19, 'beatae', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 6970, 87879148, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(20, 'voluptas', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 19774, 7, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(21, 'at', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 99055389, 315, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(22, 'aut', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 15, 681691, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(23, 'sed', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 772398, 641, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(24, 'fugiat', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 778, 5778932, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(25, 'non', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 579788965, 956, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(26, 'rerum', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 32135573, 526475, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(27, 'omnis', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 6, 9, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(28, 'voluptatibus', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 91, 555, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(29, 'velit', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 99, 7824, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(30, 'cumque', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 7424, 464304, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(31, 'ut', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 662417, 703, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(32, 'nesciunt', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 430985, 756, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(33, 'aut', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3288, 9, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(34, 'et', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 463, 65, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(35, 'exercitationem', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 58725, 75326, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(36, 'eveniet', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3803755, 9037, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(37, 'rem', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 38707739, 2, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(38, 'reiciendis', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 9822198, 169447, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(39, 'ut', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 7, 233864471, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(40, 'asperiores', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3, 8724229, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(41, 'soluta', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 5, 72357, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(42, 'eius', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 5932, 41, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(43, 'modi', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 236352, 208259765, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(44, 'sed', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 71117868, 56651, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(45, 'ab', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 2, 420217239, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(46, 'mollitia', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 8, 21566, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(47, 'quibusdam', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 38843682, 9901470, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(48, 'aliquid', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 4791, 495, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(49, 'impedit', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 3066619, 1763483, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(50, 'vel', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 556544, 3, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(51, 'ut', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 15, 189, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(52, 'illo', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 87957, 9324349, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(53, 'eligendi', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 201946538, 899774029, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(54, 'iusto', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 50332, 63590, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(55, 'velit', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 113309359, 29200, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(56, 'et', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 553586, 9129524, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(57, 'earum', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 35011371, 89467534, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(58, 'doloribus', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 23536679, 2131, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(59, 'numquam', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 1065198, 5638796, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(60, 'laborum', '2023-10-06 04:17:05', '2023-10-06 04:17:05', 58543, 323786368, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(61, 'read', '2023-10-10 00:58:08', '2023-10-10 00:58:08', 3, 4, '2023-10-10 03:58:08', '2023-10-10 03:58:08'),
(62, 'speak', '2023-10-10 00:58:51', '2023-10-10 00:58:51', 3, 4, '2023-10-10 03:58:51', '2023-10-10 03:58:51'),
(63, 'name', '2023-10-10 14:29:26', '2023-10-10 14:29:26', 9, 6, '2023-10-10 17:29:26', '2023-10-10 17:29:26'),
(64, 'asd', '2023-10-10 14:34:15', '2023-10-10 14:34:15', 54, 2, '2023-10-10 17:34:15', '2023-10-10 17:34:15');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Christy Reilly', 'gene93@example.org', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(3, 'Keshawn Mayert II', 'damian.jast@example.net', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(4, 'Amara Balistreri', 'wilfrid.jenkins@example.org', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(5, 'Pedro Tromp V', 'ulittel@example.com', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(6, 'Donny Feil', 'janae.stehr@example.com', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(7, 'Verdie Schowalter', 'araceli.bode@example.net', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(8, 'Nya Weissnat', 'russel.zelma@example.net', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(9, 'Era Schmeler', 'btromp@example.org', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(10, 'Mrs. Annetta Schumm', 'cummerata.filiberto@example.net', '2023-10-06 07:15:21', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:15:21', '2023-10-06 07:15:21'),
(11, 'Dr. Arely McDermott DVM', 'nhyatt@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(12, 'Zetta Rolfson MD', 'marquis40@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(13, 'Dr. Bernadette Gusikowski DDS', 'jennie.nolan@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(14, 'Clemmie Kling', 'rosenbaum.meaghan@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(15, 'Darien Zulauf Sr.', 'homenick.natasha@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(16, 'Royce Cormier', 'heaney.esteban@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(17, 'Anderson Hane DVM', 'cartwright.layne@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(18, 'Dr. Bertha Marquardt Jr.', 'marvin39@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(19, 'Nasir Aufderhar', 'hilda16@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(20, 'Mrs. Katherine Hill PhD', 'ngusikowski@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(21, 'Christelle Lebsack', 'novella14@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(22, 'Juliana Cole', 'guillermo70@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(23, 'Ambrose Weber DVM', 'rosanna26@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(24, 'Jedediah Hessel DDS', 'crunolfsdottir@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(25, 'Prof. Jose Sporer DVM', 'ottilie37@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(26, 'Prof. Cathy Ortiz', 'nasir42@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(27, 'Buford Lueilwitz', 'adell38@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(28, 'Hannah Tillman', 'treutel.juliet@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(29, 'Easter Leuschke', 'dietrich.lane@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(30, 'Karley Brown MD', 'maggio.eugenia@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(31, 'Dr. Caitlyn Schinner', 'bogan.melody@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(32, 'Donato Corkery', 'roslyn.reilly@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(33, 'Savanna Murray', 'west.pattie@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(34, 'Ms. Lilyan Mohr Sr.', 'ebony.will@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(35, 'Alessandro Windler', 'isabelle99@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(36, 'Jermey Terry I', 'hwisozk@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(37, 'Norberto Farrell', 'muller.cedrick@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(38, 'Miss Noemie Hilpert', 'nico15@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(39, 'Prof. Lexi Lueilwitz PhD', 'abraham45@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(40, 'Dr. Alycia Rohan', 'daryl.nader@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(41, 'Prof. Demetris Dickinson Jr.', 'lavon03@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(42, 'Daren Larson', 'hamill.missouri@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(43, 'Mertie Hudson', 'prohaska.juliet@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(44, 'Rylee Schiller', 'corbin.goodwin@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(45, 'Haley Cummings', 'parker.aracely@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(46, 'Raoul Johnston', 'fmiller@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(47, 'Vinnie Hoeger', 'ethyl97@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(48, 'Iva Blick II', 'hans63@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(49, 'Jessica Ratke', 'hkiehn@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(50, 'Samanta Leffler MD', 'brenda50@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(51, 'Ezra Watsica', 'kelly.wintheiser@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(52, 'Yesenia Schinner', 'reyes86@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(53, 'Savanna Ziemann', 'alek79@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(54, 'Dr. Lucienne Renner II', 'mlesch@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(55, 'Delaney Toy', 'baumbach.oran@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(56, 'Tiana Casper', 'rowe.audra@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(57, 'Dr. Electa Mertz', 'jfritsch@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(58, 'Marlin Balistreri', 'dach.elenor@example.net', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(59, 'Mayra Cronin', 'denesik.reanna@example.org', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(60, 'Winston Goldner', 'josh.ledner@example.com', '2023-10-06 07:17:05', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', NULL, '2023-10-06 07:17:05', '2023-10-06 07:17:05'),
(61, 'John Doe', 'test@test.com', NULL, '$2y$10$BxycitZpB/1Y7CPuw3UX9uvLj5xMRWjVnUieRDNlyF3RU5/a0glHy', NULL, '2023-10-06 08:43:32', '2023-10-06 08:43:32'),
(62, 'test1', 'test2@test.com', NULL, '$2y$10$3JFSa0HGmmozvWtZAH8Hme3Rzho1pj/KSe6HFp2a3oZvzB4Vdfbfm', NULL, '2023-10-08 02:30:34', '2023-10-10 19:30:22'),
(63, 'test', 'test1@test', NULL, '$2y$10$8rDB0JDaAHzaVTx2s1ZEjetWXsHCchlsiedAJwToSxur456D/YKJm', NULL, '2023-10-10 20:09:27', '2023-10-10 20:09:27'),
(64, 'matheus', 'matheus@test', NULL, '$2y$10$6LxLPh6tA5ABvv6o49I5deoR42Id9LzZjnfUyEBSN7dAflGEp9Zgu', NULL, '2023-10-10 20:12:25', '2023-10-10 20:12:25');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logs_iduser_foreign` (`iduser`);

--
-- Índices de tabela `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `members_personid_foreign` (`personid`),
  ADD KEY `members_iduser_foreign` (`iduser`),
  ADD KEY `members_idrol_foreign` (`idrol`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Índices de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Índices de tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Índices de tabela `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `logs`
--
ALTER TABLE `logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `members_idrol_foreign` FOREIGN KEY (`idrol`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_iduser_foreign` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `members_personid_foreign` FOREIGN KEY (`personid`) REFERENCES `people` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
