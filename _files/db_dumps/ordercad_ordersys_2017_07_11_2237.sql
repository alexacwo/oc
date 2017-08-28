-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 11 2017 г., 11:36
-- Версия сервера: 5.6.35
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ordercad_ordersys`
--

-- --------------------------------------------------------

--
-- Структура таблицы `companies`
--

CREATE TABLE `companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_zoho_link` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `company_name`, `address`, `city`, `state`, `zip_code`, `display_zoho_link`, `created_at`, `updated_at`) VALUES
(1, 2, 'Trinidad Benham', '111', '222', '444', '333', 1, '2017-06-17 20:00:00', '2017-07-11 02:13:40'),
(4, 7, 'Sponge Bob 555 Ltd.', NULL, NULL, NULL, NULL, NULL, '2017-06-21 11:15:43', '2017-06-21 12:19:14'),
(13, 21, 'Bebebe company', NULL, NULL, NULL, NULL, NULL, '2017-07-02 16:02:25', '2017-07-03 01:01:19'),
(14, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-04 02:05:52', '2017-07-04 02:05:52'),
(15, NULL, 'Disney', NULL, NULL, NULL, NULL, NULL, '2017-07-04 02:08:13', '2017-07-04 04:12:39'),
(16, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-04 02:31:21', '2017-07-04 02:31:21'),
(17, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-04 02:31:35', '2017-07-04 02:31:35'),
(18, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-04 02:55:27', '2017-07-04 02:55:27'),
(19, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-04 02:55:28', '2017-07-04 02:55:28'),
(20, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 01:22:36', '2017-07-06 01:22:36'),
(21, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 01:22:52', '2017-07-06 01:22:52'),
(22, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 12:37:30', '2017-07-06 12:37:30'),
(23, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 12:41:38', '2017-07-06 12:41:38'),
(24, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 12:42:25', '2017-07-06 12:42:25'),
(25, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 12:43:04', '2017-07-06 12:43:04'),
(26, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 12:46:17', '2017-07-06 12:46:17'),
(27, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 13:36:57', '2017-07-06 13:36:57'),
(28, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-06 13:39:37', '2017-07-06 13:39:37');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `company_id`, `location_id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Jack', '2', '3', '2017-06-18 16:33:12', '2017-06-26 09:38:35'),
(4, 1, 0, 'John', '5', '6', '2017-06-20 07:54:19', '2017-06-26 09:38:36'),
(5, 1, 0, 'Leonardo777', '8', '9', '2017-06-20 07:54:51', '2017-06-26 09:38:50'),
(6, 0, 2, 'Leonardo777', '8', '9', '2017-06-20 07:54:51', '2017-06-26 09:38:50'),
(7, NULL, NULL, 'New user', 'mm@mm.ru', NULL, '2017-07-03 08:38:43', '2017-07-03 08:38:43'),
(8, NULL, 14, 'New user', 'mm@mm.ru', NULL, '2017-07-03 08:44:25', '2017-07-03 08:44:25'),
(9, NULL, 15, 'New user', 'mm@mm.ru', NULL, '2017-07-03 08:44:46', '2017-07-03 08:44:46'),
(10, NULL, 16, 'New user', 'mm@mm.ru', NULL, '2017-07-03 08:48:10', '2017-07-03 08:48:10'),
(11, NULL, 17, 'New user', 'mm@mm.ru', NULL, '2017-07-03 08:50:09', '2017-07-03 08:50:09'),
(12, NULL, 18, 'New user', 'mm@mm.ru', NULL, '2017-07-03 08:53:49', '2017-07-03 08:53:49'),
(13, NULL, 20, 'New user', 'mma@ee.rr', NULL, '2017-07-03 08:56:30', '2017-07-03 08:56:30'),
(14, NULL, 21, 'New user', 'mma@ee.rr', NULL, '2017-07-03 08:57:16', '2017-07-03 08:57:16'),
(15, NULL, 22, 'New user', 'qqq@aaa.rrr', NULL, '2017-07-03 08:58:01', '2017-07-03 08:58:01'),
(16, NULL, 23, 'New user', 'qqq@aaa.rrr', NULL, '2017-07-03 08:58:38', '2017-07-03 08:58:38'),
(17, NULL, 24, 'New user', 'www@ww.ff', NULL, '2017-07-03 09:17:32', '2017-07-03 09:17:32'),
(18, NULL, 25, 'New user', 'ww@ww.tt', NULL, '2017-07-03 09:20:48', '2017-07-03 09:20:48'),
(19, NULL, 26, 'New user', 'ss@k.gg', NULL, '2017-07-03 09:23:59', '2017-07-03 09:23:59'),
(20, NULL, 27, 'New user', 'ss@ss.ss', NULL, '2017-07-03 09:28:12', '2017-07-03 09:28:12'),
(21, NULL, 29, 'New user', 'ss@ss.ss', NULL, '2017-07-03 09:30:29', '2017-07-03 09:30:29'),
(22, NULL, 30, 'New user', 'ss@k.gg22', NULL, '2017-07-03 09:32:39', '2017-07-03 09:32:39'),
(23, NULL, 33, 'New user', 'dd@ee.rr5555', NULL, '2017-07-04 04:53:50', '2017-07-04 04:53:50'),
(24, NULL, 34, 'New user', 'dd@ee.rr5555566', NULL, '2017-07-04 04:54:22', '2017-07-04 04:54:22'),
(25, NULL, 35, 'New user', 'test@testy.com', NULL, '2017-07-06 01:03:11', '2017-07-06 01:03:11'),
(26, NULL, 36, 'New user', 'Donald\'s Palace', NULL, '2017-07-06 01:41:08', '2017-07-06 01:41:08');

-- --------------------------------------------------------

--
-- Структура таблицы `devices`
--

CREATE TABLE `devices` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `make` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `devices`
--

INSERT INTO `devices` (`id`, `type`, `make`, `model`, `photo_url`, `created_at`, `updated_at`) VALUES
(1, 'copier', 'Xerox', 'WorkCentre 4265', 'WorkCentre 4265.png', '2017-06-21 08:17:55', '2017-07-07 23:16:11'),
(2, 'printer', 'Xerox', 'WorkCentre1234', NULL, '2017-06-21 09:44:14', '2017-06-22 06:03:46'),
(3, 'other', 'Apple', 'Iphone 6s', 'mezhdu.jpg', '2017-06-21 12:21:31', '2017-06-21 12:21:45'),
(4, NULL, NULL, 'New Device', NULL, '2017-07-06 01:31:39', '2017-07-06 01:31:39'),
(5, 'printer', 'Xerox', 'Phaser 3320', 'Phaser 3320.png', '2017-07-07 22:55:27', '2017-07-07 23:05:22'),
(6, 'printer', 'XEROX', 'ColorQube 8580', 'ColorQube 8580.png', '2017-07-07 23:22:38', '2017-07-07 23:25:02'),
(7, 'printer', 'XEROX', 'ColorQube 8700', 'ColorQube 8700.png', '2017-07-07 23:28:14', '2017-07-07 23:33:08'),
(8, 'printer', 'XEROX', 'ColorQube 8880', 'ColorQube 8880.png', '2017-07-07 23:34:46', '2017-07-07 23:36:09'),
(9, 'printer', 'XEROX', 'ColorQube 8900', 'ColorQube 8900.png', '2017-07-07 23:36:37', '2017-07-07 23:39:18'),
(10, 'printer', 'XEROX', 'Phaser 3260', 'Phaser 3260.png', '2017-07-07 23:42:50', '2017-07-07 23:43:48'),
(11, 'printer', 'XEROX', 'Phaser 3610', 'Phaser 3610.png', '2017-07-07 23:44:18', '2017-07-07 23:50:00'),
(12, 'printer', 'XEROX', 'Phaser 4622', 'Phaser 4622.png', '2017-07-07 23:51:21', '2017-07-07 23:53:01'),
(13, 'printer', 'XEROX', 'Phaser 5550', 'Phaser 5550.png', '2017-07-07 23:53:38', '2017-07-07 23:55:12'),
(14, 'printer', 'XEROX', 'Phaser 6022', 'Phaser 6022.png', '2017-07-07 23:57:15', '2017-07-08 00:00:44'),
(15, 'printer', 'XEROX', 'Phaser 6500', 'Phaser 6500.png', '2017-07-08 00:01:25', '2017-07-08 00:05:00'),
(16, 'printer', 'XEROX', 'Phaser 6600', 'Phaser 6600.png', '2017-07-08 00:05:34', '2017-07-08 00:08:17'),
(17, 'printer', 'XEROX', 'Phaser 6700', 'Phaser 6700.png', '2017-07-08 04:11:00', '2017-07-08 04:14:41'),
(18, 'printer', 'XEROX', 'Phaser 7100', 'Phaser 7100.png', '2017-07-08 04:15:07', '2017-07-08 04:17:16'),
(19, 'printer', 'XEROX', 'Phaser 7500', 'Phaser 7500.png', '2017-07-08 04:17:51', '2017-07-08 04:20:42'),
(20, 'printer', 'XEROX', 'Phaser 7800', 'Phaser 7800.png', '2017-07-08 04:21:14', '2017-07-08 04:26:10'),
(21, 'printer', 'XEROX', 'WorkCentre 3215 -', 'WorkCentre 3215.png', '2017-07-08 04:29:32', '2017-07-08 04:46:47'),
(22, 'printer', 'XEROX', 'WorkCentre 3225 -', 'WorkCentre 3225.png', '2017-07-08 04:48:11', '2017-07-08 04:49:51'),
(23, 'printer', 'XEROX', 'WorkCentre 3315 -', 'WorkCentre 3315.png', '2017-07-08 04:51:13', '2017-07-08 04:53:04'),
(24, 'printer', 'XEROX', 'WorkCentre 3325', 'WorkCentre 3325.png', '2017-07-08 04:54:12', '2017-07-08 04:55:01'),
(25, 'printer', 'XEROX', 'WorkCentre 3615', 'WorkCentre 3615.png', '2017-07-08 04:55:36', '2017-07-08 04:57:08'),
(26, 'printer', 'XEROX', 'WorkCentre 3655', 'WorkCentre 3655i.png', '2017-07-08 04:57:43', '2017-07-08 05:00:39'),
(27, 'copier', 'XEROX', 'WorkCentre 5325 - N/A', 'WorkCentre 5325.png', '2017-07-08 05:01:46', '2017-07-08 05:03:38'),
(28, 'copier', 'XEROX', 'WorkCentre 5330 - N/A', 'WorkCentre 5330.png', '2017-07-08 05:04:11', '2017-07-08 05:04:50'),
(29, 'copier', 'XEROX', 'WorkCentre 5335 - N/A', 'WorkCentre 5335.png', '2017-07-08 05:04:57', '2017-07-08 05:05:28'),
(30, 'copier', 'XEROX', 'WorkCentre 5735 - N/A', 'WorkCentre 5735.png', '2017-07-08 05:07:50', '2017-07-08 05:08:20'),
(31, 'copier', 'XEROX', 'WorkCentre 5740 - N/A', 'WorkCentre 5740.png', '2017-07-08 05:08:49', '2017-07-08 05:09:10'),
(32, 'copier', 'XEROX', 'WorkCentre 5745 - N/A', 'WorkCentre 5745.png', '2017-07-08 05:09:15', '2017-07-08 05:09:55'),
(33, 'copier', 'XEROX', 'WorkCentre 5755 - N/A', 'WorkCentre 5755.png', '2017-07-08 05:10:16', '2017-07-08 05:10:47'),
(34, 'printer', 'XEROX', 'WorkCentre 5865 - N/A', 'WorkCentre 5865.png', '2017-07-08 05:13:35', '2017-07-08 05:13:57'),
(35, 'copier', 'XEROX', 'WorkCentre 5875 - N/A', 'WorkCentre 5875.png', '2017-07-08 05:14:22', '2017-07-08 05:14:38'),
(36, 'printer', 'XEROX', 'WorkCentre 5890 - N/A', 'WorkCentre 5890.png', '2017-07-08 05:14:57', '2017-07-08 05:15:32'),
(37, 'copier', 'XEROX', 'WorkCentre 5945 - N/A', 'WorkCentre 5945.png', '2017-07-08 05:18:25', '2017-07-08 05:18:59'),
(38, 'copier', 'XEROX', 'WorkCentre 5955 - N/A', 'WorkCentre 5955.png', '2017-07-08 05:19:04', '2017-07-08 05:19:59'),
(39, 'printer', 'XEROX', 'WorkCentre 6027 -', 'WorkCentre 6027.png', '2017-07-10 19:11:27', '2017-07-10 19:15:17'),
(40, 'printer', 'XEROX', 'WorkCentre 6505 -', 'WorkCentre 6505.png', '2017-07-10 19:15:54', '2017-07-10 19:18:13'),
(41, 'printer', 'XEROX', 'WorkCentre 6605 -', 'WorkCentre 6605.png', '2017-07-10 19:18:47', '2017-07-10 19:20:36'),
(42, 'printer', 'XEROX', 'WorkCentre 6655 -', 'WorkCentre 6655.png', '2017-07-10 19:21:46', '2017-07-10 19:23:22'),
(43, 'printer', 'XEROX', 'WorkCentre 7220', 'WorkCentre 7220.png', '2017-07-10 19:26:10', '2017-07-10 19:35:45'),
(44, 'printer', 'XEROX', 'WorkCentre 7225', 'WorkCentre 7225.png', '2017-07-10 19:28:00', '2017-07-10 19:32:16'),
(45, 'printer', 'XEROX', 'WorkCentre 7525 - N/A', 'WorkCentre 7525.png', '2017-07-10 19:38:37', '2017-07-10 19:39:04'),
(46, 'printer', 'XEROX', 'WorkCentre 7530 - N/A', 'WorkCentre 7530.png', '2017-07-10 19:39:10', '2017-07-10 19:39:29'),
(47, 'printer', 'XEROX', 'WorkCentre 7535', 'WorkCentre 7535.png', '2017-07-10 19:39:37', '2017-07-10 19:44:04'),
(48, 'printer', 'XEROX', 'WorkCentre 7545 - N/A', 'WorkCentre 7545.png', '2017-07-10 19:40:01', '2017-07-10 19:40:20'),
(49, 'printer', 'XEROX', 'WorkCentre 7556', NULL, '2017-07-10 19:40:25', '2017-07-10 19:47:12'),
(50, 'printer', 'XEROX', 'workcentre 7830', 'workcentre 7830.png', '2017-07-10 19:47:50', '2017-07-10 19:51:42'),
(51, 'printer', 'XEROX', 'workcentre 7835', 'workcentre 7835.png', '2017-07-10 19:51:59', '2017-07-10 19:54:44'),
(52, 'printer', 'XEROX', 'workcentre 7845', 'workcentre 7845.png', '2017-07-10 19:54:51', '2017-07-10 19:57:49'),
(53, 'printer', 'XEROX', 'workcentre 7855', 'workcentre 7855.png', '2017-07-10 19:57:56', '2017-07-10 20:00:24'),
(54, 'printer', 'XEROX', 'WorkCentre 7970 - N/A', 'workcentre 7970.png', '2017-07-10 20:01:13', '2017-07-10 20:01:53'),
(55, 'copier', 'Canon', 'ImageRunner Advance 4235', 'canon 4235.jpg', '2017-07-11 21:19:00', '2017-07-11 21:24:23'),
(56, 'copier', 'Canon', 'imageCLASS MF810Cdn', 'Canon MF810CDN.jpg', '2017-07-11 21:19:55', '2017-07-11 21:23:04'),
(57, 'printer', 'Epson', 'Epson Stylus NX420', 'Epson Stylus NX420.jpg', '2017-07-11 21:24:41', '2017-07-11 21:26:52'),
(58, 'printer', 'Lexmark', 'T654', 'Lexmark T654.png', '2017-07-11 21:30:08', '2017-07-11 21:31:18');

-- --------------------------------------------------------

--
-- Структура таблицы `device_supply_item`
--

CREATE TABLE `device_supply_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(10) UNSIGNED NOT NULL,
  `supply_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `device_supply_item`
--

INSERT INTO `device_supply_item` (`id`, `device_id`, `supply_item_id`) VALUES
(1, 1, 1),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 3, 8),
(9, 3, 9),
(10, 5, 10),
(11, 6, 11),
(12, 6, 12),
(13, 6, 13),
(14, 6, 14),
(15, 6, 15),
(16, 7, 16),
(17, 7, 17),
(18, 7, 18),
(19, 7, 19),
(20, 7, 20),
(21, 7, 21),
(22, 7, 22),
(23, 8, 23),
(24, 8, 24),
(25, 8, 25),
(26, 8, 26),
(27, 8, 27),
(28, 9, 28),
(29, 9, 29),
(30, 9, 30),
(31, 9, 31),
(32, 9, 32),
(33, 9, 33),
(34, 9, 34),
(35, 10, 35),
(36, 11, 36),
(37, 11, 37),
(38, 11, 38),
(39, 11, 39),
(40, 12, 40),
(41, 12, 41),
(42, 12, 42),
(43, 12, 43),
(44, 13, 44),
(45, 13, 45),
(46, 13, 46),
(47, 13, 47),
(48, 14, 48),
(49, 14, 49),
(50, 14, 50),
(51, 14, 51),
(52, 15, 52),
(53, 15, 53),
(54, 15, 54),
(55, 15, 55),
(56, 16, 56),
(57, 16, 57),
(58, 16, 58),
(59, 16, 59),
(60, 16, 60),
(61, 16, 61),
(62, 16, 62),
(63, 16, 63),
(64, 17, 64),
(65, 17, 65),
(66, 17, 66),
(67, 17, 67),
(68, 18, 68),
(69, 18, 69),
(70, 18, 70),
(71, 18, 71),
(72, 19, 72),
(73, 19, 73),
(74, 19, 74),
(75, 19, 75),
(76, 20, 76),
(77, 20, 77),
(78, 20, 78),
(79, 20, 79),
(80, 20, 80),
(81, 20, 81),
(82, 20, 82),
(83, 20, 83),
(84, 20, 84),
(85, 20, 85),
(86, 20, 86),
(87, 20, 87),
(88, 20, 88),
(89, 20, 89),
(90, 20, 90),
(91, 21, 91),
(92, 22, 92),
(93, 23, 93),
(94, 24, 94),
(95, 25, 95),
(96, 25, 96),
(97, 25, 97),
(98, 25, 98),
(99, 26, 99),
(100, 26, 100),
(101, 26, 101),
(102, 26, 102),
(103, 26, 103),
(104, 27, 104),
(105, 28, 105),
(106, 29, 106),
(107, 30, 107),
(108, 31, 108),
(109, 32, 109),
(110, 33, 110),
(111, 34, 111),
(112, 35, 112),
(113, 36, 113),
(114, 37, 114),
(115, 38, 115),
(116, 39, 116),
(117, 39, 117),
(118, 39, 118),
(119, 39, 119),
(120, 40, 120),
(121, 40, 121),
(122, 40, 122),
(123, 40, 123),
(124, 41, 124),
(125, 41, 125),
(126, 41, 126),
(127, 41, 127),
(128, 42, 128),
(129, 42, 129),
(130, 42, 130),
(131, 42, 131),
(132, 43, 132),
(133, 44, 133),
(134, 44, 134),
(135, 44, 135),
(136, 44, 136),
(137, 44, 137),
(138, 44, 138),
(139, 44, 139),
(140, 44, 140),
(141, 44, 141),
(142, 44, 142),
(143, 44, 143),
(144, 44, 144),
(145, 44, 145),
(146, 44, 146),
(147, 44, 147),
(148, 43, 148),
(149, 43, 149),
(150, 43, 150),
(151, 43, 151),
(152, 43, 152),
(153, 43, 153),
(154, 43, 154),
(155, 43, 155),
(156, 43, 156),
(157, 43, 157),
(158, 43, 158),
(159, 43, 159),
(160, 43, 160),
(161, 43, 161),
(162, 45, 162),
(163, 46, 163),
(164, 47, 164),
(165, 48, 165),
(166, 49, 166),
(167, 47, 167),
(168, 47, 168),
(169, 47, 169),
(170, 47, 170),
(171, 47, 171),
(172, 47, 172),
(173, 47, 173),
(174, 47, 174),
(175, 47, 175),
(176, 47, 176),
(177, 47, 177),
(178, 49, 178),
(179, 49, 179),
(180, 49, 180),
(181, 49, 181),
(182, 49, 182),
(183, 49, 183),
(184, 49, 184),
(185, 49, 185),
(186, 49, 186),
(187, 49, 187),
(188, 49, 188),
(189, 50, 189),
(190, 50, 190),
(191, 50, 191),
(192, 50, 192),
(193, 50, 193),
(194, 50, 194),
(195, 50, 195),
(196, 50, 196),
(197, 50, 197),
(198, 50, 198),
(199, 50, 199),
(200, 50, 200),
(201, 51, 201),
(202, 51, 202),
(203, 51, 203),
(204, 51, 204),
(205, 51, 205),
(206, 51, 206),
(207, 51, 207),
(208, 51, 208),
(209, 51, 209),
(210, 51, 210),
(211, 51, 211),
(212, 51, 212),
(213, 52, 213),
(214, 52, 214),
(215, 52, 215),
(216, 52, 216),
(217, 52, 217),
(218, 52, 218),
(219, 52, 219),
(220, 52, 220),
(221, 52, 221),
(222, 52, 222),
(223, 52, 223),
(224, 52, 224),
(225, 53, 225),
(226, 53, 226),
(227, 53, 227),
(228, 53, 228),
(229, 53, 229),
(230, 53, 230),
(231, 53, 231),
(232, 53, 232),
(233, 53, 233),
(234, 53, 234),
(235, 53, 235),
(236, 53, 236),
(237, 54, 237),
(238, 56, 238),
(239, 56, 239),
(240, 56, 240),
(241, 56, 241),
(242, 55, 242),
(243, 57, 243),
(244, 57, 244),
(245, 57, 245),
(246, 57, 246),
(247, 58, 247),
(248, 58, 248);

-- --------------------------------------------------------

--
-- Структура таблицы `device_units`
--

CREATE TABLE `device_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_id` int(11) NOT NULL,
  `location_id` int(11) NOT NULL,
  `supply_provider_id` int(11) DEFAULT NULL,
  `service_provider_id` int(11) DEFAULT NULL,
  `asset_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lease_expiration` date DEFAULT NULL,
  `manual_meter_reads_entry` tinyint(1) DEFAULT NULL,
  `needs_meter_reads` tinyint(1) DEFAULT NULL,
  `use_alt_supplies_link` tinyint(1) DEFAULT NULL,
  `supplies_portal_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_alt_service_link` tinyint(1) DEFAULT NULL,
  `service_portal_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_supplies_credentials` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplies_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplies_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_service_credentials` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_login` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `device_units`
--

INSERT INTO `device_units` (`id`, `device_id`, `location_id`, `supply_provider_id`, `service_provider_id`, `asset_number`, `serial_number`, `lease_expiration`, `manual_meter_reads_entry`, `needs_meter_reads`, `use_alt_supplies_link`, `supplies_portal_link`, `use_alt_service_link`, `service_portal_link`, `display_supplies_credentials`, `supplies_login`, `supplies_password`, `display_service_credentials`, `service_login`, `service_password`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 3, 3, 'ddd', '2', '2017-05-05', NULL, 0, 0, '', 1, 'https://office.services.xerox.com/XeroxServicesManager/UI/SessionTimeOut.aspx', '1', 'aaa', 'bbb', '1', 'ccc111', 'ddd222', '2017-06-21 09:35:51', '2017-07-10 21:09:00'),
(3, 1, 3, NULL, NULL, 'aaa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-21 09:36:38', '2017-06-21 09:36:38'),
(4, 1, 6, NULL, NULL, 'bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-21 12:21:16', '2017-06-21 12:21:16'),
(8, 3, 2, 2, 2, 'vvv', '1111', '2016-01-01', NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', '2017-06-25 08:34:41', '2017-07-10 20:05:58');

-- --------------------------------------------------------

--
-- Структура таблицы `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `company_id` int(11) NOT NULL,
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_instructions` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manual_meter_reads_entry` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `company_id`, `friendly_name`, `address`, `city`, `state`, `zip_code`, `special_instructions`, `manual_meter_reads_entry`, `created_at`, `updated_at`) VALUES
(2, 0, 1, 'NYC', 'Whats2', 'Up3', 'Dude4', '666', 'Don\'t smoke here', 1, '2017-06-20 16:30:33', '2017-07-11 01:52:45'),
(3, 0, 1, 'Disneyland', 'rrr', 'ttt', '222', 'qaaaa', NULL, NULL, '2017-06-20 16:31:06', '2017-06-28 11:41:39'),
(4, 0, 1, 'Yo', '5', '6', '7', '8', NULL, NULL, '2017-06-20 16:31:26', '2017-06-20 16:31:39'),
(5, 0, 2, 'Ass', 'fewrfew', NULL, NULL, NULL, NULL, NULL, '2017-06-21 09:41:25', '2017-06-21 09:43:54'),
(6, 0, 4, 'Good', 'Street', '1', '2', '3', NULL, NULL, '2017-06-21 12:20:31', '2017-06-21 12:21:07'),
(34, NULL, 1, 'HelloWorld', '1', '2', '3', '4', '5', NULL, '2017-07-04 04:54:22', '2017-07-04 04:54:58'),
(35, NULL, 1, 'New location', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-06 01:03:11', '2017-07-06 01:03:11'),
(36, NULL, 15, 'New location', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-06 01:41:08', '2017-07-06 01:41:08');

-- --------------------------------------------------------

--
-- Структура таблицы `meter_reads`
--

CREATE TABLE `meter_reads` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_unit_id` int(11) NOT NULL,
  `color` int(11) DEFAULT NULL,
  `mono` int(11) DEFAULT NULL,
  `config_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `meter_reads`
--

INSERT INTO `meter_reads` (`id`, `device_unit_id`, `color`, `mono`, `config_file`, `created_at`, `updated_at`) VALUES
(1, 1, 55, 66, NULL, '2017-07-05 07:27:06', '2017-07-05 07:27:06'),
(2, 8, 22, 33, NULL, '2017-07-05 07:27:12', '2017-07-05 07:27:12'),
(3, 1, 222, 333, NULL, '2017-07-05 10:40:26', '2017-07-05 10:40:26'),
(4, 1, NULL, NULL, 'locations_tab_1.png', '2017-07-06 06:03:19', '2017-07-06 06:03:19'),
(5, 8, NULL, NULL, 'locations_tab_2.png', '2017-07-06 06:03:20', '2017-07-06 06:03:20'),
(6, 1, NULL, NULL, 'locations_tab_1.png', '2017-07-06 06:03:37', '2017-07-06 06:03:37'),
(7, 8, NULL, NULL, 'locations_tab_2.png', '2017-07-06 06:03:37', '2017-07-06 06:03:37'),
(8, 1, NULL, NULL, 'locations_tab_1.png', '2017-07-06 06:03:49', '2017-07-06 06:03:49'),
(9, 1, 1, 2, 'locations_tab_1.png', '2017-07-06 06:05:39', '2017-07-06 06:05:39'),
(10, 1, 1, 2, 'locations_tab_1.png', '2017-07-06 06:05:49', '2017-07-06 06:05:49'),
(11, 8, NULL, NULL, 'locations_tab_2.png', '2017-07-06 06:05:59', '2017-07-06 06:05:59');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_06_152856_create_roles_table', 2),
(4, '2017_05_06_152928_create_role_user_table', 2),
(5, '2017_06_18_174457_create_companies_table', 3),
(6, '2017_06_18_202112_create_contacts_table', 4),
(9, '2017_06_20_135937_create_location_organization_table', 6),
(12, '2017_06_20_134627_create_locations_table', 7),
(13, '2017_06_21_112706_create_devices_table', 8),
(14, '2017_06_21_112749_create_device_items_table', 8),
(15, '2017_06_22_113223_create_supply_items_table', 9),
(16, '2017_06_22_115528_create_device_supply_items_table', 10),
(17, '2017_06_23_122556_create_supply_item_units_table', 11),
(18, '2017_07_04_130917_create_orders_table', 12),
(19, '2017_07_04_156628_create_order_supply_item_table', 13),
(20, '2017_07_04_160917_create_service_tickets_table', 14),
(21, '2017_07_05_160918_create_meter_reads_table', 15);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) NOT NULL,
  `device_unit_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `location_id`, `device_unit_id`, `status`, `tracking_no`, `created_at`, `updated_at`) VALUES
(2, 2, 8, 'shipped', 'EG1234567US', '2017-07-04 07:51:43', '2017-07-06 04:55:03'),
(3, 2, 8, 'ordered', 'EEEE2222', '2017-07-04 09:15:35', '2017-07-06 05:01:18'),
(4, 2, 8, 'ordered', 'ZZZZ7777', '2017-07-04 09:53:03', '2017-07-06 05:01:33'),
(5, 2, 8, 'ordered', NULL, '2017-07-04 13:35:20', '2017-07-05 03:30:59'),
(6, 2, 1, 'ordered', NULL, '2017-07-04 13:35:41', '2017-07-05 03:27:04'),
(7, 2, 1, 'ordered', NULL, '2017-07-04 17:59:18', '2017-07-05 03:57:12'),
(8, 2, 8, 'ordered', NULL, '2017-07-04 18:01:14', '2017-07-05 03:27:52'),
(9, 2, 8, 'ordered', NULL, '2017-07-04 18:23:00', '2017-07-05 03:57:18'),
(10, 2, 1, 'shipped', '1z53f3rf3', '2017-07-04 18:28:23', '2017-07-05 03:52:11'),
(11, 3, 1, 'shipped', 'rrrrr', '2017-07-04 18:34:46', '2017-07-06 04:54:38'),
(12, 2, 1, 'shipped', 'q2s3e4', '2017-07-04 18:35:34', '2017-07-06 04:54:25'),
(13, 2, 8, 'placed', NULL, '2017-07-06 01:09:19', '2017-07-06 01:09:19'),
(14, 2, 8, 'placed', NULL, '2017-07-06 01:11:34', '2017-07-06 01:11:34'),
(15, 2, 8, 'shipped', 'eeee111', '2017-07-06 01:11:43', '2017-07-06 04:33:00'),
(16, 2, 8, 'placed', NULL, '2017-07-06 01:24:20', '2017-07-06 01:24:20'),
(17, 3, 1, 'placed', NULL, '2017-07-06 01:38:26', '2017-07-06 01:38:26'),
(18, 2, 8, 'placed', NULL, '2017-07-06 03:56:15', '2017-07-06 03:56:15'),
(19, 2, 8, 'placed', NULL, '2017-07-06 03:57:26', '2017-07-06 03:57:26'),
(20, 2, 8, 'placed', NULL, '2017-07-06 03:58:49', '2017-07-06 03:58:49');

-- --------------------------------------------------------

--
-- Структура таблицы `order_supply_item`
--

CREATE TABLE `order_supply_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `supply_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_supply_item`
--

INSERT INTO `order_supply_item` (`id`, `order_id`, `supply_item_id`) VALUES
(1, 2, 8),
(2, 2, 9),
(3, 3, 8),
(4, 3, 9),
(5, 4, 9),
(6, 5, 8),
(7, 5, 9),
(8, 6, 1),
(9, 6, 3),
(10, 6, 5),
(11, 7, 3),
(12, 7, 6),
(13, 8, 9),
(14, 9, 9),
(15, 10, 3),
(16, 10, 4),
(17, 11, 6),
(18, 11, 7),
(19, 12, 1),
(20, 12, 4),
(21, 13, 8),
(22, 14, 8),
(23, 14, 9),
(24, 15, 8),
(25, 15, 9),
(26, 16, 8),
(27, 16, 9),
(28, 17, 1),
(29, 17, 4),
(30, 17, 6),
(31, 18, 8),
(32, 18, 9),
(33, 19, 8),
(34, 19, 9),
(35, 20, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('motoparts.spb@gmail.com', '$2y$10$CMQJyEFtbD0Lin5gg/UyQugitoF45Qk8Arwy1rfRqJjjQ5aJHp06W', '2017-07-06 12:36:56');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2017-05-05 20:00:00', '2017-05-05 20:00:00'),
(2, 'company', '2017-05-05 20:00:00', '2017-05-05 20:00:00'),
(3, 'location', '2017-07-02 18:00:00', '2017-07-02 18:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `service_providers`
--

CREATE TABLE `service_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `contact_person_email` varchar(255) DEFAULT NULL,
  `contact_person_phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service_providers`
--

INSERT INTO `service_providers` (`id`, `name`, `contact_person_name`, `contact_person_email`, `contact_person_phone`, `address`, `city`, `state`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'Check prov', 'John', 'john@test.com', '123', 'ddhslfs', 'New york', 'New york', '12312', '2017-06-27 08:15:33', '2017-06-27 02:15:33'),
(2, 'Beetle Juice', 'Serpico', NULL, '23423479237', NULL, NULL, NULL, NULL, '2017-07-05 13:18:45', '2017-07-05 07:18:45'),
(3, 'Pahoda Image Products', 'Laine Dobson', 'support@pahoda.com', '(720) 598-8082', '14143 Denver West Parkway', 'Lakewood', 'CO', '80401', '2017-06-28 14:43:49', '2017-06-28 11:43:49'),
(4, 'New service provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-06 01:05:33', '2017-07-06 01:05:33'),
(5, 'Standard Office Systems', 'Rick Jimmerson', 'RJimmerson@soscanhelp.com', '1.770.449.9104', '2475 Meadowbrook Pkwy', 'Duluth', 'GA', '30096', '2017-07-11 16:34:59', '2017-07-11 21:34:59'),
(6, 'New service provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-08 02:18:14', '2017-07-08 02:18:14');

-- --------------------------------------------------------

--
-- Структура таблицы `service_tickets`
--

CREATE TABLE `service_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_codes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service_tickets`
--

INSERT INTO `service_tickets` (`id`, `location_id`, `description`, `error_codes`, `created_at`, `updated_at`) VALUES
(1, 2, 'I don\'t know', '444, 555', '2017-07-04 09:39:59', '2017-07-04 09:39:59'),
(2, 2, 'Hey', '444', '2017-07-04 09:43:16', '2017-07-04 09:43:16'),
(3, 2, 'fff', '444', '2017-07-04 09:53:17', '2017-07-04 09:53:17'),
(4, 2, 'The Damn thing keeps on breaking.', '123456', '2017-07-04 18:00:18', '2017-07-04 18:00:18'),
(5, 2, 'Can\'t make calls', '12345654321.234565643221', '2017-07-06 01:09:57', '2017-07-06 01:09:57');

-- --------------------------------------------------------

--
-- Структура таблицы `supply_items`
--

CREATE TABLE `supply_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `item_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_yield` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `supply_items`
--

INSERT INTO `supply_items` (`id`, `item_number`, `name`, `description`, `page_yield`, `created_at`, `updated_at`) VALUES
(1, '115R00086', '110v Fuser', '110V Fuser Maintenance Kit WorkCentre 4265 , Long Life Item, Typically Not Required', NULL, NULL, '2017-07-07 23:20:09'),
(3, '108R01266', 'Bias Transfer Roll (BTR)', 'Transfer Roll Maintance Kit, WorkCentre 4265, Long Life Item, Typically Not Required', NULL, '2017-06-25 01:25:52', '2017-07-07 23:20:09'),
(4, '108R01267', 'Feed Roll Maintenance Kit', 'Feed Roll Maintenance Kit, WorkCentre 4265, Long Life Item, Typically Not Required', 0, '2017-06-28 18:45:23', '2017-07-07 23:20:09'),
(5, '106R02733', 'Metered High Capacity Toner Cartridge', 'Metered High Capacity Toner Cartridge', 0, '2017-06-28 18:55:22', '2017-07-07 23:16:11'),
(6, '113R00776', 'WC 4265 Drum', 'Drum Kit, WorkCentre 4265 (100,000 Pages)', 100000, '2017-06-28 18:55:23', '2017-07-07 23:20:09'),
(7, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-06-28 18:55:24', '2017-07-07 23:16:11'),
(8, NULL, 'Cool spinner', NULL, 0, '2017-07-04 05:57:05', '2017-07-04 05:57:27'),
(9, NULL, 'Vaporizer', NULL, 0, '2017-07-04 06:28:26', '2017-07-04 06:28:49'),
(10, '106R02307', 'Xerox Phaser 3320 High Yield Black Toner', 'Xerox Phaser 3320 High Yield Black Toner', 11000, '2017-07-07 23:02:04', '2017-07-07 23:08:40'),
(11, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'Extended-Capacity Cleaning Unit/Maintenance Kit, 8570/8870/8700/8900,8580,8880 (30,000)', 0, '2017-07-07 23:24:37', '2017-07-07 23:27:38'),
(12, '108R00949', 'Xerox ColorQube 85xx METERED Black Inkstix - 4 pack', 'Xerox ColorQube 85xx METERED Black Inkstix - 4 pack', 0, '2017-07-07 23:25:14', '2017-07-07 23:26:08'),
(13, '108R00946', 'Xerox ColorQube 85xx METERED Cyan Inkstix - 4 pack', 'Xerox ColorQube 85xx METERED Cyan Inkstix - 4 pack', 0, '2017-07-07 23:25:15', '2017-07-07 23:26:08'),
(14, '108R00947', 'Xerox ColorQube 85xx METERED Magenta Inkstix - 4 pack', 'Xerox ColorQube 85xx METERED Magenta Inkstix - 4 pack', 0, '2017-07-07 23:25:16', '2017-07-07 23:26:08'),
(15, '108R00948', 'Xerox ColorQube 85xx METERED Yellow Inkstix - 4 pack', 'Xerox ColorQube 85xx METERED Yellow Inkstix - 4 pack', 0, '2017-07-07 23:25:17', '2017-07-07 23:26:08'),
(16, '108R01013', 'Black Solid Ink Stix 4 pk METERED', 'Black Solid Ink Stix 4 pk METERED', 0, '2017-07-07 23:30:49', '2017-07-07 23:33:08'),
(17, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 0, '2017-07-07 23:31:03', '2017-07-07 23:33:08'),
(18, '108R01010', 'Cyan Solid Ink Stix 4 pk METERED', 'Cyan Solid Ink Stix 4 pk METERED', 0, '2017-07-07 23:31:04', '2017-07-07 23:33:08'),
(19, '108R01011', 'Magenta Solid Ink Stix 4 pk METERED', 'Magenta Solid Ink Stix 4 pk METERED', 0, '2017-07-07 23:31:05', '2017-07-07 23:33:08'),
(20, '108R01012', 'Yellow Solid Ink Stix 4 pk METERED', 'Yellow Solid Ink Stix 4 pk METERED', 0, '2017-07-07 23:31:06', '2017-07-07 23:33:08'),
(21, '108R00823', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 0, '2017-07-07 23:31:07', '2017-07-07 23:33:08'),
(22, '008R12964', 'Yellow Solid Ink Stix 4 pk METERED', 'Yellow Solid Ink Stix 4 pk METERED', 0, '2017-07-07 23:31:08', '2017-07-07 23:33:08'),
(23, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 0, '2017-07-07 23:34:58', '2017-07-07 23:36:09'),
(24, '108R00965', 'Xerox ColorQube 88xx METERED Black Inkstix - 6 pack', 'Xerox ColorQube 88xx METERED Black Inkstix - 6 pack', 0, '2017-07-07 23:35:06', '2017-07-07 23:36:09'),
(25, '108R00962', 'Xerox ColorQube 88xx METERED Cyan Inkstix - 6 pack', 'Xerox ColorQube 88xx METERED Cyan Inkstix - 6 pack', 0, '2017-07-07 23:35:07', '2017-07-07 23:36:09'),
(26, '108R00963', 'Xerox ColorQube 88xx METERED Magenta Inkstix - 6 pack', 'Xerox ColorQube 88xx METERED Magenta Inkstix - 6 pack', 0, '2017-07-07 23:35:07', '2017-07-07 23:36:09'),
(27, '108R00964', 'Xerox ColorQube 88xx METERED Yellow Inkstix - 6 pack', 'Xerox ColorQube 88xx METERED Yellow Inkstix - 6 pack', 0, '2017-07-07 23:35:08', '2017-07-07 23:36:09'),
(28, '108R01029', 'Black Ink Stick CQ 8900 Metered', 'Black Ink Stick CQ 8900 Metered', 0, '2017-07-07 23:37:45', '2017-07-07 23:39:18'),
(29, '108R01026', 'Cyan Ink Stick CQ 8900 Metered', 'Cyan Ink Stick CQ 8900 Metered', 0, '2017-07-07 23:37:46', '2017-07-07 23:39:18'),
(30, '108R01027', 'Magenta Ink Stick CQ 8900 Metered', 'Magenta Ink Stick CQ 8900 Metered', 0, '2017-07-07 23:37:47', '2017-07-07 23:39:18'),
(31, '108R01028', 'Yellow Ink Stick CQ 8900 Metered', 'Yellow Ink Stick CQ 8900 Metered', 0, '2017-07-07 23:37:48', '2017-07-07 23:39:18'),
(32, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 0, '2017-07-07 23:37:49', '2017-07-07 23:39:18'),
(33, '108R00823', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 0, '2017-07-07 23:37:49', '2017-07-07 23:39:18'),
(34, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-07 23:37:50', '2017-07-07 23:39:18'),
(35, '106R02777', 'Black, High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 'Black, High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 0, '2017-07-07 23:43:03', '2017-07-07 23:43:48'),
(36, '106R02731', 'Black Extra High Capacity Toner Cartridge Phaser 3610', 'Black Extra High Capacity Toner Cartridge, Phaser 3610, WorkCentre 3615 (25,300 Pages)', 25300, '2017-07-07 23:44:50', '2017-07-07 23:50:00'),
(37, NULL, NULL, NULL, NULL, '2017-07-07 23:46:30', '2017-07-07 23:50:22'),
(38, NULL, NULL, NULL, NULL, '2017-07-07 23:46:31', '2017-07-07 23:50:22'),
(39, NULL, NULL, NULL, NULL, '2017-07-07 23:47:52', '2017-07-07 23:50:22'),
(40, '113R00762', 'Xerox Phaser 46xx Drum Kit', 'Xerox Phaser 46xx Drum Kit', 0, '2017-07-07 23:52:00', '2017-07-07 23:53:01'),
(41, '106R01535', 'Xerox Phaser 46xx Hi Cap Black Toner', 'Xerox Phaser 46xx Hi Cap Black Toner', 0, '2017-07-07 23:52:07', '2017-07-07 23:53:01'),
(42, '115R00069', 'Xerox Phaser 46xx Maintenance Kit', 'Xerox Phaser 46xx Maintenance Kit', 0, '2017-07-07 23:52:09', '2017-07-07 23:53:01'),
(43, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-07 23:52:10', '2017-07-07 23:53:01'),
(44, '113R00670', 'Xerox Phaser 5500/5550 Drum Cartridge', 'Xerox Phaser 5500/5550 Drum Cartridge', 0, '2017-07-07 23:54:18', '2017-07-07 23:55:12'),
(45, '109R00731', 'Xerox Phaser 5500/5550 Maintenance Kit', 'Xerox Phaser 5500/5550 Maintenance Kit', 0, '2017-07-07 23:54:22', '2017-07-07 23:55:12'),
(46, '106R01294', 'Xerox Phaser 5550 Toner Cartridge', 'Xerox Phaser 5550 Toner Cartridge', 0, '2017-07-07 23:54:23', '2017-07-07 23:55:12'),
(47, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-07 23:54:24', '2017-07-07 23:55:12'),
(48, '106R02759', 'BLACK TONER PHASER 6022', 'BLACK TONER PHASER 6022 (YIELD 2,000)', 2000, '2017-07-07 23:57:44', '2017-07-08 00:00:44'),
(49, '106R02756', 'CYAN TONER PHASER 6022', 'CYAN TONER PHASER 6022 (YIELD 1,000)', 1000, '2017-07-07 23:57:45', '2017-07-08 00:00:44'),
(50, '106R02757', 'MAGENTA TONER PHASER 6022', 'MAGENTA TONER PHASER 6022 (YIELD 1,000)', 1000, '2017-07-07 23:57:48', '2017-07-08 00:00:44'),
(51, '106R02758', 'YELLOW TONER PHASER 6022', 'CYANYELLOW TONER PHASER 6022 (YIELD 1,000)', 1000, '2017-07-07 23:57:49', '2017-07-08 00:00:44'),
(52, '106R01597', 'Phaser 6500 High Capacity Black Toner Cartridge', 'Phaser 6500 High Capacity Black Toner Cartridge (3,000 Pages), North America, EEA', 3000, '2017-07-08 00:01:57', '2017-07-08 00:05:00'),
(53, '106R01594', 'Phaser 6500 High Capacity Cyan Toner Cartridge', 'Phaser 6500 High Capacity Cyan Toner Cartridge (2,500 Pages), North America, EEA', 2500, '2017-07-08 00:02:56', '2017-07-08 00:05:00'),
(54, '106R01595', 'Phaser 6500 High Capacity Magenta Toner Cartridge', 'Phaser 6500 High Capacity Magenta Toner Cartridge (2,500 Pages), North America, EEA', 2500, '2017-07-08 00:03:00', '2017-07-08 00:05:00'),
(55, '106R01596', 'Phaser 6500 High Capacity Yellow Toner Cartridge', 'Phaser 6500 High Capacity Yellow Toner Cartridge (2,500 Pages), North America, EEA', 2500, '2017-07-08 00:03:01', '2017-07-08 00:05:00'),
(56, '108R01121', '4 DRUM CARTRIDGE/IMAGING UNITs', '4 DRUM CARTRIDGE/IMAGING UNITs', 0, '2017-07-08 00:06:18', '2017-07-08 00:08:17'),
(57, '108R01122', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', 0, '2017-07-08 00:06:18', '2017-07-08 00:08:17'),
(58, '108R01124', 'Waste Toner Bottle', 'Waste Toner Bottle', 0, '2017-07-08 00:06:24', '2017-07-08 00:08:17'),
(59, '106R02225', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Cyan Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Cyan Toner', 0, '2017-07-08 00:06:25', '2017-07-08 00:08:17'),
(60, '106R02226', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Magenta Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Magenta Toner', 0, '2017-07-08 00:06:31', '2017-07-08 00:08:17'),
(61, '106R02227', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Yellow Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Yellow Toner', 0, '2017-07-08 00:06:32', '2017-07-08 00:08:17'),
(62, '106R02228', 'Xerox Phaser 6600/WorkCentre 6605, High Capacity Black Toner', 'Xerox Phaser 6600/WorkCentre 6605, High Capacity Black Toner', 0, '2017-07-08 00:06:33', '2017-07-08 00:08:17'),
(63, '115R00076', 'Xerox Phaser 6600/WC 6605 Fuser', 'Xerox Phaser 6600/WC 6605 Fuser', 0, '2017-07-08 00:06:34', '2017-07-08 00:08:17'),
(64, '106R01510', 'Black High Capacity Toner Cartridge Phaser 6700', 'Black High Capacity Toner Cartridge, Phaser 6700 (18,000)', 18000, '2017-07-08 04:11:41', '2017-07-08 04:14:41'),
(65, '106R01507', 'Cyan High Capacity Toner Cartridge Phaser 6700', 'Cyan High Capacity Toner Cartridge Phaser 6700 (12000)', 12000, '2017-07-08 04:12:16', '2017-07-08 04:14:41'),
(66, '106R01508', 'Magenta High Capacity Toner Cartridge Phaser 6700', 'Magenta High Capacity Toner Cartridge Phaser 6700 (12000)', 12000, '2017-07-08 04:12:17', '2017-07-08 04:14:41'),
(67, '106R01509', 'Yellow High Capacity Toner Cartridge Phaser 6700', 'Yellow High Capacity Toner Cartridge Phaser 6700 (12000)', 12000, '2017-07-08 04:12:18', '2017-07-08 04:14:41'),
(68, '106R02605', 'Black Dual Package Toner', 'Black Dual Package Toner', 10000, '2017-07-08 04:15:36', '2017-07-08 04:17:16'),
(69, '106R02602', 'Cyan Dual Package Toner', 'Cyan Dual Package Toner', 9000, '2017-07-08 04:15:57', '2017-07-08 04:17:16'),
(70, '106R02603', 'Magenta Dual Package Toner', 'Magenta Dual Package Toner', 9000, '2017-07-08 04:15:58', '2017-07-08 04:17:16'),
(71, '106R02604', 'Yellow Dual Package Toner', 'Yellow Dual Package Toner', 9000, '2017-07-08 04:15:59', '2017-07-08 04:17:16'),
(72, '106R01439', 'Black High Capacity Toner Cartridge, Phaser 7500', 'Black High Capacity Toner Cartridge, Phaser 7500', 19800, '2017-07-08 04:18:50', '2017-07-08 04:20:42'),
(73, '106R01436', 'Cyan High Capacity Toner Cartridge, Phaser 7500', 'Cyan High Capacity Toner Cartridge, Phaser 7500', 17800, '2017-07-08 04:19:04', '2017-07-08 04:20:42'),
(74, '106R01437', 'Magenta High Capacity Toner Cartridge, Phaser 7500', 'Magenta High Capacity Toner Cartridge, Phaser 7500', 17800, '2017-07-08 04:19:07', '2017-07-08 04:20:42'),
(75, '106R01438', 'Yellow High Capacity Toner Cartridge, Phaser 7500', 'Yellow High Capacity Toner Cartridge, Phaser 7500', 17800, '2017-07-08 04:19:09', '2017-07-08 04:20:42'),
(76, '106R01581', 'Phaser 7800 Black Metered Toner Cartridge', 'Phaser 7800 Black Metered Toner Cartridge', 0, '2017-07-08 04:22:02', '2017-07-08 04:26:10'),
(77, '106R01578', 'Phaser 7800 Cyan Metered Toner Cartridge', 'Phaser 7800 Cyan Metered Toner Cartridge', 0, '2017-07-08 04:22:32', '2017-07-08 04:26:10'),
(78, '106R01579', 'Phaser 7800 Magenta Metered Toner Cartridge', 'Phaser 7800 Magenta Metered Toner Cartridge', 0, '2017-07-08 04:22:36', '2017-07-08 04:26:10'),
(79, '106R01580', 'Phaser 7800 Yellow Metered Toner Cartridge', 'Phaser 7800 Yellow Metered Toner Cartridge', 0, '2017-07-08 04:22:36', '2017-07-08 04:26:10'),
(80, '115R00073', 'Phaser 7800 Fuser Assy - 360,000 Impression Yield', 'Phaser 7800 Fuser Assy - 360,000 Impression Yield', 0, '2017-07-08 04:22:37', '2017-07-08 04:26:10'),
(81, '108R01036', 'Phaser 7800 IBT Cleaner Assy', 'Phaser 7800 IBT Cleaner Assy', 0, '2017-07-08 04:22:38', '2017-07-08 04:26:10'),
(82, '106R01582', 'Phaser 7800 Imaging Unit - 145,000 Impressions', 'Phaser 7800 Imaging Unit - 145,000 Impressions', 0, '2017-07-08 04:22:39', '2017-07-08 04:26:10'),
(83, '109R00790', 'Phaser 7800 Paper Feed Rollers for Trays 2-5, 300,000 page yield', 'Phaser 7800 Paper Feed Rollers for Trays 2-5, 300,000 page yield', 300000, '2017-07-08 04:22:40', '2017-07-08 04:26:10'),
(84, '108R01037', 'Phaser 7800 Suction Filter - 120,000 page yield', 'Phaser 7800 Suction Filter - 120,000 page yield', 120000, '2017-07-08 04:22:41', '2017-07-08 04:26:10'),
(85, '108R01053', 'Phaser 7800 Transfer Roller', 'Phaser 7800 Transfer Roller', 0, '2017-07-08 04:22:42', '2017-07-08 04:26:10'),
(86, '108R00982', 'Phaser 7800 Waste Cartridge', 'Phaser 7800 Waste Cartridge', 0, '2017-07-08 04:22:43', '2017-07-08 04:26:10'),
(87, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-08 04:22:44', '2017-07-08 04:26:10'),
(88, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-08 04:22:45', '2017-07-08 04:26:10'),
(89, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-08 04:22:46', '2017-07-08 04:26:10'),
(90, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-08 04:25:53', '2017-07-08 04:26:10'),
(91, '106R02777', 'Black High Capacity Toner Cartridge Phaser 3260/WorkCentre 3215/3225', 'Black, High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 3000, '2017-07-08 04:46:01', '2017-07-08 04:47:38'),
(92, '106R02777', 'Black High Capacity Toner Cartridge Phaser 3260/WorkCentre 3215/3225', 'Black High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 3000, '2017-07-08 04:49:04', '2017-07-08 04:49:45'),
(93, '106R02313', 'Black High Capacity Print Cartridge WorkCentre 3325', 'Black High Capacity Print Cartridge, WorkCentre 3325 (11,000 Pages)', 11000, '2017-07-08 04:52:18', '2017-07-08 04:53:04'),
(94, '106R02313', 'WC 3325 Hi Cap Black Toner', 'Black High Capacity Print Cartridge WorkCentre 3325 (11,000 Pages)', 11000, '2017-07-08 04:54:27', '2017-07-08 04:55:01'),
(95, '106R02722', 'Black Toner Cartridge', 'Black Toner Cartridge', 0, '2017-07-08 04:56:15', '2017-07-08 04:57:08'),
(96, '115R00084', '110 Fuser Maintenance Kit', '110 Fuser Maintenance Kit', 0, '2017-07-08 04:56:20', '2017-07-08 04:57:08'),
(97, '116R00003', 'Roller Kit', 'Roller Kit', 0, '2017-07-08 04:56:21', '2017-07-08 04:57:08'),
(98, '113R00773', 'Smart Kit Drum Cartridge', 'Smart Kit Drum Cartridge', 0, '2017-07-08 04:56:22', '2017-07-08 04:57:08'),
(99, '106R02742', 'BLACK METERED TONER WORKCENTRE 3655', 'BLACK METERED TONER WORKCENTRE 3655', 0, '2017-07-08 04:59:34', '2017-07-08 05:00:39'),
(100, '115R00084', '110 Fuser Maintenance Kit', '110 Fuser Maintenance Kit', 0, '2017-07-08 04:59:39', '2017-07-08 05:00:39'),
(101, '116R00003', 'Roller Kit', 'Roller Kit', 0, '2017-07-08 04:59:40', '2017-07-08 05:00:39'),
(102, '113R00773', 'Smart Kit Drum Cartridge', 'Smart Kit Drum Cartridge', 0, '2017-07-08 04:59:41', '2017-07-08 05:00:39'),
(103, '108R00823', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 0, '2017-07-08 04:59:42', '2017-07-08 05:00:39'),
(104, NULL, 'New supply item', NULL, 0, '2017-07-08 05:02:19', '2017-07-08 05:02:43'),
(105, NULL, 'New supply item', NULL, 0, '2017-07-08 05:04:42', '2017-07-08 05:04:50'),
(106, NULL, 'New supply item', NULL, 0, '2017-07-08 05:05:24', '2017-07-08 05:05:28'),
(107, NULL, 'New supply item', NULL, 0, '2017-07-08 05:08:06', '2017-07-08 05:08:20'),
(108, NULL, 'New supply item', NULL, 0, '2017-07-08 05:09:02', '2017-07-08 05:09:10'),
(109, NULL, 'New supply item', NULL, 0, '2017-07-08 05:09:50', '2017-07-08 05:09:55'),
(110, NULL, 'New supply item', NULL, 0, '2017-07-08 05:10:41', '2017-07-08 05:10:47'),
(111, NULL, 'New supply item', NULL, 0, '2017-07-08 05:13:47', '2017-07-08 05:13:57'),
(112, NULL, 'New supply item', NULL, 0, '2017-07-08 05:14:32', '2017-07-08 05:14:38'),
(113, NULL, 'New supply item', NULL, 0, '2017-07-08 05:15:26', '2017-07-08 05:15:32'),
(114, NULL, 'New supply item', NULL, 0, '2017-07-08 05:18:56', '2017-07-08 05:18:59'),
(115, NULL, 'New supply item', NULL, 0, '2017-07-08 05:19:48', '2017-07-08 05:19:53'),
(116, '106R02759', 'BLACK TONER, PHASER 6022, WORKCENTRE 6027', 'BLACK TONER, PHASER 6022, WORKCENTRE 6027 (YIELD 2,000)', 2000, '2017-07-10 19:13:02', '2017-07-10 19:15:00'),
(117, '106R02756', 'CYAN TONER, PHASER 6022, WORKCENTRE 6027', 'CYAN TONER, PHASER 6022, WORKCENTRE 6027 (YIELD 1,000)', 1000, '2017-07-10 19:14:00', '2017-07-10 19:15:00'),
(118, '106R02757', 'MAGENTA TONER, PHASER 6022, WORKCENTRE 6027', 'MAGENTA TONER, PHASER 6022, WORKCENTRE 6027 (YIELD 1,000)', 1000, '2017-07-10 19:14:29', '2017-07-10 19:15:00'),
(119, '106R02758', 'YELLOW TONER, PHASER 6022, WORKCENTRE 6027', 'YELLOW TONER, PHASER 6022, WORKCENTRE 6027 (YIELD 1,000)', 1000, '2017-07-10 19:14:43', '2017-07-10 19:15:00'),
(120, '106R01597', 'Phaser 6500/WorkCentre 6505, High Capacity Black Toner Cartridge', 'Phaser 6500/WorkCentre 6505, High Capacity Black Toner Cartridge (3,000 Pages), North America, EEA', 3000, '2017-07-10 19:16:22', '2017-07-10 19:18:03'),
(121, '106R01594', 'Phaser 6500/WorkCentre 6505, High Capacity Cyan Toner Cartridge', 'Phaser 6500/WorkCentre 6505, High Capacity Cyan Toner Cartridge (2,500 Pages), North America, EEA', 2500, '2017-07-10 19:16:49', '2017-07-10 19:18:03'),
(122, '106R01595', 'Phaser 6500/WorkCentre 6505, High Capacity Magenta Toner Cartridge', 'Phaser 6500/WorkCentre 6505, High Capacity Magenta Toner Cartridge (2,500 Pages), North America, EEA', 2500, '2017-07-10 19:16:50', '2017-07-10 19:18:03'),
(123, '106R01596', 'Phaser 6500/WorkCentre 6505, High Capacity Yellow Toner Cartridge', 'Phaser 6500/WorkCentre 6505, High Capacity Yellow Toner Cartridge (2,500 Pages), North America, EEA', 2500, '2017-07-10 19:16:51', '2017-07-10 19:18:03'),
(124, '106R02244', 'Phaser 6600/WorkCentre 6605, Std Capacity Black Toner Cartridge', 'Phaser 6600/WorkCentre 6605, Std Capacity Black Toner Cartridge', 3000, '2017-07-10 19:19:05', '2017-07-10 19:20:29'),
(125, '106R02241', 'Phaser 6600/WorkCentre 6605, Std Capacity Cyan Toner Cartridge', 'Phaser 6600/WorkCentre 6605, Std Capacity Cyan Toner Cartridge', 2000, '2017-07-10 19:19:20', '2017-07-10 19:20:29'),
(126, '106R02242', 'Phaser 6600/WorkCentre 6605, Std Capacity Magenta Toner Cartridge', 'Phaser 6600/WorkCentre 6605, Std Capacity Magenta Toner Cartridge', 2000, '2017-07-10 19:19:22', '2017-07-10 19:20:29'),
(127, '106R02243', 'Phaser 6600/WorkCentre 6605, Std Capacity Yellow Toner Cartridge', 'Phaser 6600/WorkCentre 6605, Std Capacity Yellow Toner Cartridge', 2000, '2017-07-10 19:19:23', '2017-07-10 19:20:29'),
(128, '106R02747', 'Black High Capacity Toner Cartridge, WorkCentre 6655', 'Black High Capacity Toner Cartridge, WorkCentre 6655, (12,000 Pages)', 12000, '2017-07-10 19:21:57', '2017-07-10 19:23:11'),
(129, '106R02744', 'Cyan High Capacity Toner Cartridge, WorkCentre 6655', 'Cyan High Capacity Toner Cartridge, WorkCentre 6655, (7,500 Pages)', 7500, '2017-07-10 19:21:58', '2017-07-10 19:23:11'),
(130, '106R02745', 'Magenta High Capacity Toner Cartridge, WorkCentre 6655', 'Magenta High Capacity Toner Cartridge, WorkCentre 6655, (7,500 Pages)', 7500, '2017-07-10 19:22:00', '2017-07-10 19:23:11'),
(131, '106R02746', 'Yellow High Capacity Toner Cartridge, WorkCentre 6655', 'Yellow High Capacity Toner Cartridge, WorkCentre 6655, (7,500 Pages)', 7500, '2017-07-10 19:22:01', '2017-07-10 19:23:11'),
(132, '001R00610', 'Transfer Belt Unit', 'Transfer Belt Unit', 0, '2017-07-10 19:26:24', '2017-07-10 19:35:45'),
(133, '001R00610', 'Transfer Belt Unit', 'Transfer Belt Unit', 0, '2017-07-10 19:28:21', '2017-07-10 19:32:16'),
(134, '008R13089', 'Waste Toner Bottle', 'Waste Toner Bottle', 0, '2017-07-10 19:29:32', '2017-07-10 19:32:16'),
(135, '008R13086', 'WC 712x/722x Second Bias Transfer Roller (2nd BTR)', 'WC 712x/722x Second Bias Transfer Roller (2nd BTR)', 0, '2017-07-10 19:29:34', '2017-07-10 19:32:16'),
(136, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:29:36', '2017-07-10 19:32:16'),
(137, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:29:37', '2017-07-10 19:32:16'),
(138, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:29:38', '2017-07-10 19:32:16'),
(139, '006R01453', 'Xerox WC 712x METERED Black Toner Cartridge', 'Xerox WC 712x METERED Black Toner Cartridge', 0, '2017-07-10 19:29:39', '2017-07-10 19:32:16'),
(140, '006R01456', 'Xerox WC 712x METERED Cyan Toner Cartridge', 'Xerox WC 712x METERED Cyan Toner Cartridge', 0, '2017-07-10 19:29:40', '2017-07-10 19:32:16'),
(141, '006R01455', 'Xerox WC 712x METERED Magenta Toner Cartridge', 'Xerox WC 712x METERED Magenta Toner Cartridge', 0, '2017-07-10 19:29:40', '2017-07-10 19:32:16'),
(142, '006R01454', 'Xerox WC 712x METERED Yellow Toner Cartridge', 'Xerox WC 712x METERED Yellow Toner Cartridge', 0, '2017-07-10 19:29:41', '2017-07-10 19:32:16'),
(143, '013R00657', 'Xerox WC 712x/722x Black Drum (R1)', 'Xerox WC 712x/722x Black Drum (R1)', 0, '2017-07-10 19:29:42', '2017-07-10 19:32:16'),
(144, '013R00660', 'Xerox WC 712x/722x Cyan Drum (R2)', 'Xerox WC 712x/722x Cyan Drum (R2)', 0, '2017-07-10 19:29:43', '2017-07-10 19:32:16'),
(145, '008R13087', 'Xerox WC 712x/722x Fuser Assembly', 'Xerox WC 712x/722x Fuser Assembly', 0, '2017-07-10 19:29:44', '2017-07-10 19:32:16'),
(146, '013R00659', 'Xerox WC 712x/722x Magenta Drum (R3)', 'Xerox WC 712x/722x Magenta Drum (R3)', 0, '2017-07-10 19:29:45', '2017-07-10 19:32:16'),
(147, '013R00658', 'Xerox WC 712x/722x Yellow Drum (R4)', 'Xerox WC 712x/722x Yellow Drum (R4)', 0, '2017-07-10 19:29:45', '2017-07-10 19:32:16'),
(148, '008R13089', 'Waste Toner Bottle', 'Waste Toner Bottle', 0, '2017-07-10 19:33:08', '2017-07-10 19:35:45'),
(149, '008R13086', 'WC 712x/722x Second Bias Transfer Roller (2nd BTR)', 'WC 712x/722x Second Bias Transfer Roller (2nd BTR)', 0, '2017-07-10 19:33:09', '2017-07-10 19:35:45'),
(150, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:33:11', '2017-07-10 19:35:45'),
(151, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:33:12', '2017-07-10 19:35:45'),
(152, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:33:13', '2017-07-10 19:35:45'),
(153, '006R01453', 'Xerox WC 712x METERED Black Toner Cartridge', 'Xerox WC 712x METERED Black Toner Cartridge', 0, '2017-07-10 19:33:13', '2017-07-10 19:35:45'),
(154, '006R01456', 'Xerox WC 712x METERED Cyan Toner Cartridge', 'Xerox WC 712x METERED Cyan Toner Cartridge', 0, '2017-07-10 19:33:14', '2017-07-10 19:35:45'),
(155, '006R01455', 'Xerox WC 712x METERED Magenta Toner Cartridge', 'Xerox WC 712x METERED Magenta Toner Cartridge', 0, '2017-07-10 19:33:15', '2017-07-10 19:35:45'),
(156, '006R01454', 'Xerox WC 712x METERED Yellow Toner Cartridge', 'Xerox WC 712x METERED Yellow Toner Cartridge', 0, '2017-07-10 19:33:16', '2017-07-10 19:35:45'),
(157, '013R00657', 'Xerox WC 712x/722x Black Drum (R1)', 'Xerox WC 712x/722x Black Drum (R1)', 0, '2017-07-10 19:33:17', '2017-07-10 19:35:45'),
(158, '013R00660', 'Xerox WC 712x/722x Cyan Drum (R2)', 'Xerox WC 712x/722x Cyan Drum (R2)', 0, '2017-07-10 19:33:18', '2017-07-10 19:35:45'),
(159, '008R13087', 'Xerox WC 712x/722x Fuser Assembly', 'Xerox WC 712x/722x Fuser Assembly', 0, '2017-07-10 19:33:19', '2017-07-10 19:35:45'),
(160, '013R00659', 'Xerox WC 712x/722x Magenta Drum (R3)', 'Xerox WC 712x/722x Magenta Drum (R3)', 0, '2017-07-10 19:33:19', '2017-07-10 19:35:45'),
(161, '013R00658', 'Xerox WC 712x/722x Yellow Drum (R4)', 'Xerox WC 712x/722x Yellow Drum (R4)', 0, '2017-07-10 19:33:20', '2017-07-10 19:35:45'),
(162, NULL, 'New supply item', NULL, 0, '2017-07-10 19:39:01', '2017-07-10 19:39:04'),
(163, NULL, 'New supply item', NULL, 0, '2017-07-10 19:39:25', '2017-07-10 19:39:29'),
(164, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:39:54', '2017-07-10 19:43:50'),
(165, NULL, 'New supply item', NULL, 0, '2017-07-10 19:40:16', '2017-07-10 19:40:20'),
(166, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:40:36', '2017-07-10 19:47:05'),
(167, '006R01509', 'METERED Black Toner', 'METERED Black Toner', 0, '2017-07-10 19:41:31', '2017-07-10 19:43:50'),
(168, '006R01512', 'METERED Cyan Toner', 'METERED Cyan Toner', 0, '2017-07-10 19:41:34', '2017-07-10 19:43:50'),
(169, '006R01511', 'METERED Magenta Toner', 'METERED Magenta Toner', 0, '2017-07-10 19:41:35', '2017-07-10 19:43:50'),
(170, '006R01510', 'METERED Yellow Toner', 'METERED Yellow Toner', 0, '2017-07-10 19:41:37', '2017-07-10 19:43:50'),
(171, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:41:39', '2017-07-10 19:43:50'),
(172, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:41:40', '2017-07-10 19:43:50'),
(173, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:41:41', '2017-07-10 19:43:50'),
(174, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:41:42', '2017-07-10 19:43:50'),
(175, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:41:43', '2017-07-10 19:43:50'),
(176, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:41:43', '2017-07-10 19:43:50'),
(177, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:41:44', '2017-07-10 19:43:50'),
(178, '006R01509', 'METERED Black Toner', 'METERED Black Toner', 0, '2017-07-10 19:45:04', '2017-07-10 19:47:05'),
(179, '006R01512', 'METERED Cyan Toner', 'METERED Cyan Toner', 0, '2017-07-10 19:45:05', '2017-07-10 19:47:05'),
(180, '006R01511', 'METERED Magenta Toner', 'METERED Magenta Toner', 0, '2017-07-10 19:45:07', '2017-07-10 19:47:05'),
(181, '006R01510', 'METERED Yellow Toner', 'METERED Yellow Toner', 0, '2017-07-10 19:45:07', '2017-07-10 19:47:05'),
(182, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:45:08', '2017-07-10 19:47:05'),
(183, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:45:09', '2017-07-10 19:47:05'),
(184, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:45:10', '2017-07-10 19:47:05'),
(185, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:45:12', '2017-07-10 19:47:05'),
(186, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:45:13', '2017-07-10 19:47:05'),
(187, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:45:14', '2017-07-10 19:47:05'),
(188, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:45:15', '2017-07-10 19:47:05'),
(189, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:49:22', '2017-07-10 19:51:42'),
(190, '006R01509', 'METERED Black Toner', 'METERED Black Toner', 0, '2017-07-10 19:49:23', '2017-07-10 19:51:42'),
(191, '006R01512', 'METERED Cyan Toner', 'METERED Cyan Toner', 0, '2017-07-10 19:49:25', '2017-07-10 19:51:42'),
(192, '006R01511', 'METERED Magenta Toner', 'METERED Magenta Toner', 0, '2017-07-10 19:49:26', '2017-07-10 19:51:42'),
(193, '006R01510', 'METERED Yellow Toner', 'METERED Yellow Toner', 0, '2017-07-10 19:49:26', '2017-07-10 19:51:42'),
(194, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:49:27', '2017-07-10 19:51:42'),
(195, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:49:28', '2017-07-10 19:51:42'),
(196, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:49:29', '2017-07-10 19:51:42'),
(197, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:49:30', '2017-07-10 19:51:42'),
(198, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:49:31', '2017-07-10 19:51:42'),
(199, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:49:32', '2017-07-10 19:51:42'),
(200, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:49:34', '2017-07-10 19:51:42'),
(201, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:52:17', '2017-07-10 19:54:44'),
(202, '006R01509', 'METERED Black Toner', 'METERED Black Toner', 0, '2017-07-10 19:52:49', '2017-07-10 19:54:44'),
(203, '006R01512', 'METERED Cyan Toner', 'METERED Cyan Toner', 0, '2017-07-10 19:52:50', '2017-07-10 19:54:44'),
(204, '006R01511', 'METERED Magenta Toner', 'METERED Magenta Toner', 0, '2017-07-10 19:52:52', '2017-07-10 19:54:44'),
(205, '006R01510', 'METERED Yellow Toner', 'METERED Yellow Toner', 0, '2017-07-10 19:52:52', '2017-07-10 19:54:44'),
(206, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:52:53', '2017-07-10 19:54:44'),
(207, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:52:54', '2017-07-10 19:54:44'),
(208, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:52:55', '2017-07-10 19:54:44'),
(209, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:52:56', '2017-07-10 19:54:44'),
(210, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:52:57', '2017-07-10 19:54:44'),
(211, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:52:57', '2017-07-10 19:54:44'),
(212, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:52:58', '2017-07-10 19:54:44'),
(213, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:55:42', '2017-07-10 19:57:49'),
(214, '006R01509', 'METERED Black Toner', 'METERED Black Toner', 0, '2017-07-10 19:55:44', '2017-07-10 19:57:49'),
(215, '006R01512', 'METERED Cyan Toner', 'METERED Cyan Toner', 0, '2017-07-10 19:55:45', '2017-07-10 19:57:49'),
(216, '006R01511', 'METERED Magenta Toner', 'METERED Magenta Toner', 0, '2017-07-10 19:55:46', '2017-07-10 19:57:49'),
(217, '006R01510', 'METERED Yellow Toner', 'METERED Yellow Toner', 0, '2017-07-10 19:55:47', '2017-07-10 19:57:49'),
(218, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:55:48', '2017-07-10 19:57:49'),
(219, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:55:49', '2017-07-10 19:57:49'),
(220, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:55:50', '2017-07-10 19:57:49'),
(221, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:55:51', '2017-07-10 19:57:49'),
(222, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:55:52', '2017-07-10 19:57:49'),
(223, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:55:53', '2017-07-10 19:57:49'),
(224, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:55:55', '2017-07-10 19:57:49'),
(225, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:58:32', '2017-07-10 20:00:24'),
(226, '006R01509', 'METERED Black Toner', 'METERED Black Toner', 0, '2017-07-10 19:58:34', '2017-07-10 20:00:24'),
(227, '006R01512', 'METERED Cyan Toner', 'METERED Cyan Toner', 0, '2017-07-10 19:58:35', '2017-07-10 20:00:24'),
(228, '006R01511', 'METERED Magenta Toner', 'METERED Magenta Toner', 0, '2017-07-10 19:58:36', '2017-07-10 20:00:24'),
(229, '006R01510', 'METERED Yellow Toner', 'METERED Yellow Toner', 0, '2017-07-10 19:58:37', '2017-07-10 20:00:24'),
(230, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:58:38', '2017-07-10 20:00:24'),
(231, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:58:39', '2017-07-10 20:00:24'),
(232, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:58:40', '2017-07-10 20:00:24'),
(233, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:58:41', '2017-07-10 20:00:24'),
(234, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:58:42', '2017-07-10 20:00:24'),
(235, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:58:43', '2017-07-10 20:00:24'),
(236, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:58:44', '2017-07-10 20:00:24'),
(237, NULL, 'New supply item', NULL, 0, '2017-07-10 20:01:30', '2017-07-10 20:01:53'),
(238, 'CNM9454B001AA', 'Black OEM', 'Black OEM', 0, '2017-07-11 21:21:37', '2017-07-11 21:22:33'),
(239, 'CNM9453B001AA', 'Cyan OEM', 'Cyan OEM', 0, '2017-07-11 21:21:39', '2017-07-11 21:22:33'),
(240, 'CNM9452B001AA', 'Magenta OEM', 'Magenta OEM', 0, '2017-07-11 21:21:40', '2017-07-11 21:22:33'),
(241, 'CNM9451B001AA', 'Yellow OEM', 'Yellow OEM', 0, '2017-07-11 21:21:41', '2017-07-11 21:22:33'),
(242, '4792B003', 'Black OEM Toner', NULL, 30200, '2017-07-11 21:22:08', '2017-07-11 21:24:23'),
(243, 'GT125120', 'Black Premium Remanufactured', 'Black Premium Remanufactured', 265, '2017-07-11 21:25:42', '2017-07-11 21:26:52'),
(244, 'GT125220', 'Cyan Premium Remanufactured', 'Cyan Premium Remanufactured', 385, '2017-07-11 21:25:43', '2017-07-11 21:26:52'),
(245, 'GT125420', 'Magenta Premium Remanufactured', 'Magenta Premium Remanufactured', 385, '2017-07-11 21:25:44', '2017-07-11 21:26:52'),
(246, 'GT125320', 'Yellow Premium Remanufactured', 'Yellow Premium Remanufactured', 385, '2017-07-11 21:25:45', '2017-07-11 21:26:52'),
(247, 'T654', 'Black Toner', 'Black Toner (36,000 Page Yield)', 36000, '2017-07-11 21:30:29', '2017-07-11 21:31:18'),
(248, '40X4724', 'Maintenance Kit', 'Maintenance Kit', 0, '2017-07-11 21:30:30', '2017-07-11 21:31:18');

-- --------------------------------------------------------

--
-- Структура таблицы `supply_item_units`
--

CREATE TABLE `supply_item_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `device_unit_id` int(11) DEFAULT NULL,
  `supply_item_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `supply_item_units`
--

INSERT INTO `supply_item_units` (`id`, `device_unit_id`, `supply_item_id`, `price`, `created_at`, `updated_at`) VALUES
(8, 1, 1, 33.444, '2017-06-27 22:57:03', '2017-06-28 02:26:59'),
(9, 1, 3, 77.888, '2017-06-27 22:57:03', '2017-06-28 02:26:59'),
(10, 3, 1, 88.77, '2017-06-27 23:16:53', '2017-06-27 23:18:49'),
(11, 3, 3, 99.11, '2017-06-27 23:16:53', '2017-06-27 23:18:50'),
(12, 1, 4, 11, '2017-07-03 01:07:55', '2017-07-03 01:07:55'),
(13, 1, 5, 22, '2017-07-03 01:07:55', '2017-07-03 01:07:55'),
(14, 1, 6, 33, '2017-07-03 01:07:55', '2017-07-03 01:07:55'),
(15, 1, 7, 44, '2017-07-03 01:07:55', '2017-07-03 01:07:55'),
(16, 8, 8, 55, '2017-07-04 05:59:42', '2017-07-04 05:59:42'),
(17, 8, 9, NULL, '2017-07-04 18:27:48', '2017-07-04 18:27:48'),
(18, 17, 44, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(19, 17, 45, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(20, 17, 46, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(21, 17, 47, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(22, 18, 11, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(23, 18, 12, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(24, 18, 13, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(25, 18, 14, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(26, 18, 15, NULL, '2017-07-10 20:15:44', '2017-07-10 20:15:44'),
(27, 19, 35, NULL, '2017-07-10 20:16:24', '2017-07-10 20:16:24');

-- --------------------------------------------------------

--
-- Структура таблицы `supply_providers`
--

CREATE TABLE `supply_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) DEFAULT NULL,
  `contact_person_email` varchar(255) DEFAULT NULL,
  `contact_person_phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `supply_providers`
--

INSERT INTO `supply_providers` (`id`, `name`, `contact_person_name`, `contact_person_email`, `contact_person_phone`, `address`, `city`, `state`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 'RRRR', 'sdf', 'sdf@sdfs.sdf', '234', 'werw', 'wer', 'wer', '2342', '2017-06-25 05:10:30', '2017-06-27 02:15:58'),
(2, 'YYY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-25 05:20:46', '2017-06-25 05:20:54'),
(3, 'Pahoda Image Products', 'Laine Dobson', 'support@pahoda.com', '7205988082', '14143 Denver West Parkway', 'Lakewood', 'CO', '80401', '2017-06-28 11:44:04', '2017-06-28 11:44:19'),
(4, 'Standard Office Systems', 'Rick Jimmerson', 'RJimmerson@soscanhelp.com', '17704499104', '2475 Meadowbrook Pkwy', 'Duluth', 'GA', '30096', '2017-07-11 21:35:04', '2017-07-11 21:35:22');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `company_id`, `location_id`, `role_id`, `name`, `email`, `phone`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'Admin', 'admin@admin.com', NULL, '$2y$10$0mUH2lM4b1yJ6CiNCN1ZHORzlEfGtMqK5gPrIY/iWInDvIamGEPRW', '0QF2PNW2V8UmKjjXPW3G4TAjuZZPh3MOuPKeAHx5IdIpK28zMIVRjNb53SN0', '2017-05-01 12:44:15', '2017-07-02 14:09:22'),
(2, 1, NULL, 2, 'Jack Russell', 'user@user.com', '23423433', '$2y$10$Ww9GHSFBCZORMqj7mHYCs.rNzWRBoG/3z5mqTwrcCqAUv4r2eoj6e', 'iYlyKl59OXhzKwm29xF52puZZgUUezTRakZdPk1p0K90kbJqgsX0GRr3aGMt', '2017-05-06 10:52:24', '2017-07-04 02:36:50'),
(21, 1, NULL, 2, 'New userww', 'bebebe@gmail.com', '2342', '$2y$10$mQFABrVLyQ6WoAaYoDLE9.yrMylbL7JlFVXLIZV60fMRIKjapg4HW', '6pzboIyYorT61ZPh5En3ZpIKG68S3fHqeSy8ty9CG2Q1LqFyF95tHEpNBrnP', '2017-07-02 16:02:25', '2017-07-04 02:36:51'),
(37, 0, 2, 3, 'New user', 'www@ww.ff', NULL, '$2y$10$f/widKZNvrcyv.jIT9gZc.T671ngAeTnkoKjJHT7DV1/2FyJJgwhe', NULL, '2017-07-03 09:17:32', '2017-07-03 09:17:32'),
(39, NULL, NULL, 3, 'New user', 'ss@k.gg', NULL, '$2y$10$lxrRDmhElIEP37KaD21tn.9t4Gr8tgFuNuFTKv87M.Z253pUj.KtW', NULL, '2017-07-03 09:23:59', '2017-07-03 09:23:59'),
(42, NULL, NULL, 3, 'New user', 'ss@ss.ss', NULL, '$2y$10$CcleM5ZdRW59EtySj0892uf8cv1U1qklMMPqGRTdKtB7owhq6nzMi', NULL, '2017-07-03 09:30:29', '2017-07-03 09:30:29'),
(43, NULL, NULL, 3, 'New user', 'ss@k.gg22', NULL, '$2y$10$buQPZF4/CCF.SgIat3Sa5u9qpOFH2yMTg8fdJIU72XnIFn7fWND6G', NULL, '2017-07-03 09:32:39', '2017-07-03 09:32:39'),
(85, NULL, 2, 3, 'New user', 'admin@admin.com22', NULL, '595b63d9041a6', NULL, '2017-07-04 03:46:01', '2017-07-04 03:46:01'),
(86, NULL, 2, 3, 'New user', 'loc@loc.com', NULL, '$2y$10$rnvHkpeSKCNSYQQRoG8sG.FeTFaLqQUM1.sHUE/XxwKjKZQ95A3Ty', 'E86Tzxj6mux0TbChOYWttdTmk3i8O6Ql2pJbWzZCSCW5KixWkSu3nwWpuNCl', '2017-07-04 04:03:05', '2017-07-04 04:05:05'),
(90, 15, NULL, 2, 'John', 'admin@ddd.ee', '1233', '$2y$10$1KwvdgF17jaR31F3LfuhruktB2Yv.aJeMYq7d7e0m3iMOZosbZ9KK', NULL, '2017-07-04 04:18:51', '2017-07-04 04:19:39'),
(91, 15, NULL, 2, 'Jack', 'ddd@ddd2222', '12345', '$2y$10$3nQpfI9D3VE6HUV/3Skdd.1H1gncYXIE5dG0NoTasQjow5Ej4Gxne', NULL, '2017-07-04 04:19:49', '2017-07-04 04:20:01'),
(93, 1, 33, 3, 'New user', 'dd@ee.rr5555', NULL, '$2y$10$wOPQSK47eUU89ItlMFqp6OOyFna0JYXd3RPPvOYLkrd5Z3442m0dm', NULL, '2017-07-04 04:53:50', '2017-07-04 04:53:50'),
(94, 1, 34, 3, 'Jack', 'motoparts.spb@gmail.com', NULL, '$2y$10$4C5NDSXAexfwiQdqQVmVQ.D9w38PjvTm2lLVpTMj8ynQ9UZq6WgTy', '3nBrcf3a53Kwozlmpq2zyhtdw2Soih9yStbKKOFgOVoNuxvpZGAfHCCo70GW', '2017-07-04 04:54:22', '2017-07-04 04:59:56'),
(99, 22, NULL, 2, 'New user', 'dd@ee.rr2222', NULL, '$2y$10$qKjeCLeSbb0.VNaKNTHU2.dFsBxX2na2.F7sMe3LI.0riEuCmIaGu', NULL, '2017-07-06 12:37:30', '2017-07-06 12:37:30'),
(100, 23, NULL, 2, 'New user', 'sss@ddd.dfdf', NULL, '$2y$10$Tz4PQZOlY/LcMJW.ehMyju.NbxGLnNzp9JL.8JtWDieOGK/PbMCcW', NULL, '2017-07-06 12:41:38', '2017-07-06 12:41:38'),
(101, 24, NULL, 2, 'New user', 'ddd@ddd222222', NULL, '$2y$10$wo6QrR8RUcFS0TMNUwvCDOZA7/uxzxCcR2KY93nWiEZ.Nu1yCf2h6', NULL, '2017-07-06 12:42:25', '2017-07-06 12:42:25'),
(102, 25, NULL, 2, 'New user', 'dd@ee.rr2222222222', NULL, '$2y$10$4j1WDRSqsoZbtVeOoktI1u09u56S1EZhw3akb7P4oMBc7LZSEG2j6', NULL, '2017-07-06 12:43:04', '2017-07-06 12:43:04'),
(103, 26, NULL, 2, 'New user', 'ddd@ddd44345435', NULL, '$2y$10$KXl3NgKskyaUq7jvII9wl.on/evsehqGmKzhgFD4S4K3YIOOwLOAO', NULL, '2017-07-06 12:46:18', '2017-07-06 12:46:18'),
(104, 27, NULL, 2, 'New user', 'dfdsfd@dsf.sdfsdf', NULL, '$2y$10$lTrSuawuUh1pxgpaN/5qseTaOr/dl0mlZDdJIGBI95gOdMhJI3.dO', NULL, '2017-07-06 13:36:57', '2017-07-06 13:36:57'),
(105, 28, NULL, 2, 'New user', 'asdas', NULL, '$2y$10$j.XjrePGXgaOXKfHidejOOy.P1waf6xmccJRzIQ3T7lBPsSfqhIwC', NULL, '2017-07-06 13:39:37', '2017-07-06 13:39:37');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_supply_items_device_id_foreign` (`device_id`),
  ADD KEY `device_supply_items_supply_item_id_foreign` (`supply_item_id`);

--
-- Индексы таблицы `device_units`
--
ALTER TABLE `device_units`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `meter_reads`
--
ALTER TABLE `meter_reads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_supply_item`
--
ALTER TABLE `order_supply_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_supply_item_order_id_foreign` (`order_id`),
  ADD KEY `order_supply_item_supply_item_id_foreign` (`supply_item_id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `service_providers`
--
ALTER TABLE `service_providers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `service_tickets`
--
ALTER TABLE `service_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `supply_items`
--
ALTER TABLE `supply_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `supply_item_units`
--
ALTER TABLE `supply_item_units`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `supply_providers`
--
ALTER TABLE `supply_providers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT для таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблицы `device_units`
--
ALTER TABLE `device_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT для таблицы `meter_reads`
--
ALTER TABLE `meter_reads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `order_supply_item`
--
ALTER TABLE `order_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `service_tickets`
--
ALTER TABLE `service_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT для таблицы `supply_item_units`
--
ALTER TABLE `supply_item_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT для таблицы `supply_providers`
--
ALTER TABLE `supply_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  ADD CONSTRAINT `device_supply_items_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`),
  ADD CONSTRAINT `device_supply_items_supply_item_id_foreign` FOREIGN KEY (`supply_item_id`) REFERENCES `supply_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `order_supply_item`
--
ALTER TABLE `order_supply_item`
  ADD CONSTRAINT `order_supply_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_supply_item_supply_item_id_foreign` FOREIGN KEY (`supply_item_id`) REFERENCES `supply_items` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
