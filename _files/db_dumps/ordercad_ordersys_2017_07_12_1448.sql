-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июл 12 2017 г., 03:47
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
(30, NULL, 'Trinidad Benham', '3650 S Yosemite, Suite 300', 'Denver', '80237', 'CO', 1, '2017-07-12 03:02:09', '2017-07-12 03:04:06'),
(31, NULL, 'Sample Company', '123 Sample Client', 'Sample City', 'CA', '97456', 0, '2017-07-12 03:13:42', '2017-07-12 03:16:13'),
(32, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, '2017-07-12 03:27:39', '2017-07-12 03:27:39'),
(33, NULL, 'Moye White', '16 Market Square 6th Floor', 'Denver', '80202', 'CO', 1, '2017-07-12 07:15:37', '2017-07-12 07:16:45');

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
(27, NULL, 39, 'New user', 'Carlsbad', NULL, '2017-07-12 03:18:26', '2017-07-12 03:18:26'),
(28, NULL, 40, 'New user', 'sterlingclerk@trinidadbenham.com', NULL, '2017-07-12 05:09:37', '2017-07-12 05:09:37'),
(29, NULL, 41, 'New user', 'lvclerk@trinidadbenham.com', NULL, '2017-07-12 05:24:25', '2017-07-12 05:24:25'),
(30, NULL, 42, 'New user', 'Denver', NULL, '2017-07-12 07:17:09', '2017-07-12 07:17:09'),
(31, NULL, 43, 'New user', 'check@check.com2', NULL, '2017-07-12 11:40:09', '2017-07-12 11:40:09');

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
(58, 'printer', 'Lexmark', 'T654', 'Lexmark T654.png', '2017-07-11 21:30:08', '2017-07-11 21:31:18'),
(59, 'copier', 'Canon', 'ImageRunner Advance 3325', '3300i_lg_01.jpg', '2017-07-11 22:55:04', '2017-07-11 23:19:45'),
(60, 'printer', 'Sample', '1315', 'B7025.png', '2017-07-11 23:36:59', '2017-07-11 23:37:57'),
(61, 'printer', 'Sample', '1316', 'B405.png', '2017-07-11 23:42:14', '2017-07-11 23:43:41'),
(62, 'printer', 'Canon', 'imageRUNNER ADVANCE 4235', 'Canon 4235.jpg', '2017-07-12 00:28:38', '2017-07-12 00:29:25'),
(63, 'printer', 'Canon', 'imageRUNNER ADVANCE C3325', 'Canon 3325.jpg', '2017-07-12 00:31:13', '2017-07-12 00:31:45'),
(64, 'printer', 'Canon', 'imageRUNNER ADVANCE C350iF', 'Canon 350iF.jpg', '2017-07-12 00:33:00', '2017-07-12 00:33:58'),
(65, 'printer', 'Canon', 'imageRUNNER ADVANCE 4551i', 'Canon 4551i.jpg', '2017-07-12 00:35:22', '2017-07-12 00:35:51'),
(66, 'printer', 'Canon', 'imageRUNNER ADVANCE 4535i', 'Canon 4535i.jpg', '2017-07-12 00:37:07', '2017-07-12 00:37:36'),
(67, 'printer', 'CANON', 'imageRUNNER ADVANCE C3525i', 'Canon 3525i.jpg', '2017-07-12 00:38:21', '2017-07-12 00:38:53'),
(68, 'printer', 'Canon', 'imageRUNNER 1730iF', 'Canon 1730iF.jpg', '2017-07-12 00:39:24', '2017-07-12 00:40:23'),
(69, 'printer', 'Canon', 'imageCLASS LBP7780Cdn', 'Canon LBP7780Cdn.jpg', '2017-07-12 00:48:07', '2017-07-12 00:50:39'),
(70, 'printer', 'XEROX', 'Phaser 6360', 'Xerox 6360.png', '2017-07-12 00:53:12', '2017-07-12 00:55:33'),
(71, 'printer', 'Canon', 'imageRUNNER 1435P', '1435P.jpg', '2017-07-12 07:20:14', '2017-07-12 07:27:14');

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
(248, 58, 248),
(249, 59, 249),
(250, 59, 250),
(251, 59, 251),
(252, 59, 252),
(253, 60, 253),
(254, 60, 254),
(255, 60, 255),
(256, 60, 256),
(257, 60, 257),
(258, 61, 258),
(259, 61, 259),
(260, 61, 260),
(261, 61, 261),
(262, 62, 262),
(263, 63, 263),
(264, 64, 264),
(265, 65, 265),
(266, 66, 266),
(267, 67, 267),
(268, 68, 268),
(269, 69, 269),
(270, 69, 270),
(271, 69, 271),
(272, 69, 272),
(273, 69, 273),
(274, 70, 274),
(275, 70, 275),
(276, 70, 276),
(277, 70, 277),
(278, 70, 278),
(279, 70, 279),
(280, 71, 280);

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
(21, 16, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 03:19:01', '2017-07-12 03:21:49'),
(22, 16, 37, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 'https://www.warnerbros.com/archive/spacejam/movie/jam.htm', 1, 'https://www.warnerbros.com/archive/spacejam/movie/jam.htm', '0', '', '', '0', '', '', '2017-07-12 03:19:07', '2017-07-12 03:56:26'),
(23, 16, 37, 6, 7, NULL, 'X123X321Q', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 03:19:29', '2017-07-12 03:56:26'),
(24, 14, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 03:57:54', '2017-07-12 04:09:17'),
(25, 14, 38, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 03:58:03', '2017-07-12 04:09:17'),
(26, 16, 40, 3, 3, 'XL1393979', 'XL1393979', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:11:58', '2017-07-12 05:16:32'),
(27, 16, 40, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:12:02', '2017-07-12 05:16:32'),
(28, 17, 40, 3, 3, 'AB9779661', 'AB9779661', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:12:43', '2017-07-12 05:17:07'),
(29, 66, 40, 9, 10, 'UMU03153', 'UMU03153', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:17:41', '2017-07-12 05:18:32'),
(30, 68, 40, 9, 10, 'QGF15030', 'QGF15030', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:18:56', '2017-07-12 05:19:27'),
(31, 12, 41, 3, 3, 'D6X461791', 'D6X461791', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:26:01', '2017-07-12 05:26:38'),
(32, 16, 41, 3, 3, 'XL1365132', 'XL1365132', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:27:16', '2017-07-12 05:27:33'),
(33, 62, 41, 7, 9, 'RKJ15702', 'RKJ15702', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', '2017-07-12 05:28:05', '2017-07-12 05:28:40'),
(34, 71, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0', NULL, NULL, '0', NULL, NULL, '2017-07-12 07:28:28', '2017-07-12 07:28:28'),
(35, 71, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, NULL, '0', NULL, NULL, '0', NULL, NULL, '2017-07-12 07:28:37', '2017-07-12 07:28:37');

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
(37, NULL, 31, 'Denver', '12345 Sample Client', 'Denver', 'CO', '80202', NULL, 1, '2017-07-12 03:16:49', '2017-07-12 03:56:26'),
(38, NULL, 31, 'Madison', '123 Sample Client', 'Sample City', 'WI', '55443', NULL, 0, '2017-07-12 03:17:03', '2017-07-12 03:20:45'),
(40, NULL, 30, 'Sterling, CO', '1500 RIGHT OF WAY RD', 'Sterling', 'CO', '80751', NULL, 0, '2017-07-12 05:09:37', '2017-07-12 05:12:47'),
(41, NULL, 30, 'La Vergne, TN', '140 INTERNATIONAL BLVD', 'La Vergne', 'TN', '37086', NULL, 0, '2017-07-12 05:24:25', '2017-07-12 05:25:31'),
(42, NULL, 33, 'Denver', '16 Market Square 6th Floor', 'Denver', 'CO', '80202', NULL, 0, '2017-07-12 07:17:09', '2017-07-12 07:18:41');

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

-- --------------------------------------------------------

--
-- Структура таблицы `order_supply_item`
--

CREATE TABLE `order_supply_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `supply_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
('motoparts.spb@gmail.com', '$2y$10$CMQJyEFtbD0Lin5gg/UyQugitoF45Qk8Arwy1rfRqJjjQ5aJHp06W', '2017-07-06 12:36:56'),
('jesse@pahoda.com', '$2y$10$GhNcbmYnwgIKYc9zL3rEO.yIxmkwo8UIgSvOHnUe0ciuLp.IlVvoa', '2017-07-12 02:06:15'),
('Sample@sample.com', '$2y$10$WgLyN1d3bCqJmhY9ELTTs.dHHypeX65zI5RoIqK/vSsPoBzSSFE1e', '2017-07-12 04:02:09');

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
(1, 1, 1);

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
(3, 'Pahoda Image Products', 'Laine Dobson', 'support@pahoda.com', '(720) 598-8082', '14143 Denver West Parkway', 'Lakewood', 'CO', '80401', '2017-06-28 14:43:49', '2017-06-28 11:43:49'),
(5, 'Standard Office Systems', 'Rick Jimmerson', 'RJimmerson@soscanhelp.com', '1.770.449.9104', '2475 Meadowbrook Pkwy', 'Duluth', 'GA', '30096', '2017-07-11 16:34:59', '2017-07-11 21:34:59'),
(7, 'Sample Service', 'Service Person', 'sample@sample.com', '303-333-4444', '1234 Main St', 'Sample', 'CO', '80401', '2017-07-11 18:06:59', '2017-07-11 23:06:59'),
(8, 'East Texas Copy Systems', 'Alice Boatman', 'Aboatman@etcopy.com', '903-939-2255', '4545 Old Jacksonville Hwy', 'Tyler', 'TX', '75703', '2017-07-11 21:02:05', '2017-07-12 02:02:05'),
(9, 'Nova Copy', 'Monica Cartwright', 'monica.cartwright@novacopy.com', '888-269-5890', '15 Lindsley Ave', 'Nashville', 'TN', '37210', '2017-07-11 21:06:00', '2017-07-12 02:06:00'),
(10, 'United Reprographic Supply', 'Diann Marker', 'diann@unitedreprographic.com', '303.680.1100', '7076 S Revere Pkwy', 'Centennial', 'CO', '80112', '2017-07-11 21:11:08', '2017-07-12 02:11:08'),
(11, 'Ray Morgan', 'Karen Pallerin', 'service@raymorgan.com', '916-577-1672', '855 Performance Dr', 'Stockton', 'CA', '95206', '2017-07-11 21:16:03', '2017-07-12 02:16:03'),
(12, 'RJ Young', 'Tex Malone', 'Tex.Malone@RJYoung.com', '800-347-1955', '2919 Sidco Dr', 'Nashville', 'TN', '37204', '2017-07-11 21:19:43', '2017-07-12 02:19:43'),
(13, 'Metro Copier Service', 'Melissa Jepperson', 'sales@metrocopierservice.com', '303-307-1494', '10500 E. 54th Avenue, Unit D', 'Denver', 'CO', '80239', '2017-07-11 21:22:27', '2017-07-12 02:22:27');

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
(248, '40X4724', 'Maintenance Kit', 'Maintenance Kit', 0, '2017-07-11 21:30:30', '2017-07-11 21:31:18'),
(249, '8524B003AA', 'Black OEM Toner', NULL, 36000, '2017-07-11 23:17:21', '2017-07-11 23:19:45'),
(250, '8525B003AA', 'Cyan OEM Toner', NULL, 19000, '2017-07-11 23:18:32', '2017-07-11 23:19:45'),
(251, '8526B003AA', 'Magenta OEM Toner', NULL, 19000, '2017-07-11 23:18:57', '2017-07-11 23:19:45'),
(252, '8527B003AA', 'Yellow OEM Toner', NULL, 19000, '2017-07-11 23:18:58', '2017-07-11 23:19:45'),
(253, '123ABC', 'Black Toner', NULL, 10000, '2017-07-11 23:37:32', '2017-07-11 23:37:57'),
(254, '234ABC', 'Magenta Toner', NULL, 8000, '2017-07-11 23:38:01', '2017-07-11 23:38:28'),
(255, '345ABC', 'Yellow Toner', NULL, 8000, '2017-07-11 23:38:31', '2017-07-11 23:39:27'),
(256, '456ABC', 'Cyan Toner', NULL, 8000, '2017-07-11 23:38:32', '2017-07-11 23:39:27'),
(257, '567ABC', 'Drum Unit', NULL, 100000, '2017-07-11 23:38:32', '2017-07-11 23:39:27'),
(258, '123ABC', 'Black Toner', NULL, 12000, '2017-07-11 23:42:36', '2017-07-11 23:43:41'),
(259, '124ABC', 'Drum', NULL, 30000, '2017-07-11 23:42:36', '2017-07-11 23:43:41'),
(260, '125ABC', 'Fuser', NULL, 100000, '2017-07-11 23:42:37', '2017-07-11 23:43:41'),
(261, '126ABC', 'Transfer Belt', NULL, 60000, '2017-07-11 23:42:37', '2017-07-11 23:43:41'),
(262, NULL, 'New supply item', NULL, 0, '2017-07-12 00:28:58', '2017-07-12 00:29:25'),
(263, NULL, 'New supply item', NULL, 0, '2017-07-12 00:31:42', '2017-07-12 00:31:45'),
(264, NULL, 'New supply item', NULL, 0, '2017-07-12 00:33:55', '2017-07-12 00:33:58'),
(265, NULL, 'New supply item', NULL, 0, '2017-07-12 00:35:50', '2017-07-12 00:35:51'),
(266, NULL, 'New supply item', NULL, 0, '2017-07-12 00:37:34', '2017-07-12 00:37:36'),
(267, NULL, 'New supply item', NULL, 0, '2017-07-12 00:38:51', '2017-07-12 00:38:53'),
(268, NULL, 'New supply item', NULL, 0, '2017-07-12 00:40:20', '2017-07-12 00:40:23'),
(269, '6264B012AA', 'Black toner', 'Black toner', 12000, '2017-07-12 00:48:28', '2017-07-12 00:50:39'),
(270, '6262B012AA', 'Cyan Toner', 'Cyan Toner', 6400, '2017-07-12 00:48:34', '2017-07-12 00:50:39'),
(271, '6261B012AA', 'Magenta Toner', 'Magenta Toner', 6400, '2017-07-12 00:48:36', '2017-07-12 00:50:39'),
(272, '6260B012AA', 'Yellow Toner', 'Yellow Toner', 6400, '2017-07-12 00:48:37', '2017-07-12 00:50:39'),
(273, NULL, 'Fuser', 'Fuser - Refurbished exchange with return label', 0, '2017-07-12 00:48:38', '2017-07-12 00:50:39'),
(274, NULL, 'Black Toner', 'Black Toner', 18000, '2017-07-12 00:53:48', '2017-07-12 00:55:33'),
(275, NULL, 'Cyan Toner', 'Cyan Toner', 12000, '2017-07-12 00:54:01', '2017-07-12 00:55:33'),
(276, NULL, 'Magenta Toner', 'Magenta Toner', 12000, '2017-07-12 00:54:02', '2017-07-12 00:55:33'),
(277, NULL, 'Yellow Toner', 'Yellow Toner', 12000, '2017-07-12 00:54:03', '2017-07-12 00:55:33'),
(278, '108R00646', 'Transfer Roller OEM Laser Xerox Transfer Roller, Phaser 6300/6350/6360', 'Transfer Roller OEM Laser Xerox Transfer Roller, Phaser 6300/6350/6360', 0, '2017-07-12 00:54:04', '2017-07-12 00:55:33'),
(279, '108R00645', 'Drum Unit', 'Drum Unit', 0, '2017-07-12 00:54:05', '2017-07-12 00:55:33'),
(280, '9436B003', 'Black Toner', NULL, 17600, '2017-07-12 07:22:00', '2017-07-12 07:26:42');

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
(28, 21, 56, NULL, '2017-07-12 03:21:49', '2017-07-12 03:21:49'),
(29, 21, 57, NULL, '2017-07-12 03:21:49', '2017-07-12 03:21:49'),
(30, 21, 58, NULL, '2017-07-12 03:21:49', '2017-07-12 03:21:49'),
(31, 21, 59, NULL, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(32, 21, 60, NULL, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(33, 21, 61, NULL, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(34, 21, 62, NULL, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(35, 21, 63, NULL, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(36, 22, 56, 888, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(37, 22, 57, 777, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(38, 22, 58, 16, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(39, 22, 59, 23, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(40, 22, 60, 109, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(41, 22, 61, 109, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(42, 22, 62, 109, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(43, 22, 63, 109, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(44, 23, 56, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(45, 23, 57, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(46, 23, 58, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(47, 23, 59, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(48, 23, 60, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(49, 23, 61, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(50, 23, 62, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(51, 23, 63, 0, '2017-07-12 03:56:26', '2017-07-12 03:56:26'),
(52, 24, 48, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(53, 24, 49, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(54, 24, 50, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(55, 24, 51, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(56, 25, 48, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(57, 25, 49, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(58, 25, 50, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(59, 25, 51, NULL, '2017-07-12 04:09:17', '2017-07-12 04:09:17'),
(60, 26, 56, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(61, 26, 57, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(62, 26, 58, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(63, 26, 59, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(64, 26, 60, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(65, 26, 61, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(66, 26, 62, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(67, 26, 63, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(68, 27, 56, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(69, 27, 57, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(70, 27, 58, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(71, 27, 59, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(72, 27, 60, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(73, 27, 61, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(74, 27, 62, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(75, 27, 63, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(76, 28, 64, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(77, 28, 65, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(78, 28, 66, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(79, 28, 67, NULL, '2017-07-12 05:16:32', '2017-07-12 05:16:32'),
(80, 29, 266, NULL, '2017-07-12 05:19:27', '2017-07-12 05:19:27'),
(81, 31, 40, NULL, '2017-07-12 05:26:38', '2017-07-12 05:26:38'),
(82, 31, 41, NULL, '2017-07-12 05:26:38', '2017-07-12 05:26:38'),
(83, 31, 42, NULL, '2017-07-12 05:26:38', '2017-07-12 05:26:38'),
(84, 31, 43, NULL, '2017-07-12 05:26:38', '2017-07-12 05:26:38'),
(85, 32, 56, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(86, 32, 57, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(87, 32, 58, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(88, 32, 59, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(89, 32, 60, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(90, 32, 61, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(91, 32, 62, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(92, 32, 63, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40');

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
(3, 'Pahoda Image Products', 'Laine Dobson', 'support@pahoda.com', '7205988082', '14143 Denver West Parkway', 'Lakewood', 'CO', '80401', '2017-06-28 11:44:04', '2017-06-28 11:44:19'),
(4, 'Standard Office Systems', 'Rick Jimmerson', 'RJimmerson@soscanhelp.com', '17704499104', '2475 Meadowbrook Pkwy', 'Duluth', 'GA', '30096', '2017-07-11 21:35:04', '2017-07-11 21:35:22'),
(5, 'New supply provider', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-11 23:04:17', '2017-07-11 23:04:17'),
(6, 'Sample Supply', 'Supply Person', 'sample@sample.com', '3033334444', '1234 Main St', 'Sample', 'CO', '80401', '2017-07-11 23:07:04', '2017-07-11 23:07:45'),
(7, 'Nova Copy', 'Monica Cartwright', 'monica.cartwright@novacopy.com', '8882695890', '15 Lindsley Ave', 'Nashville', 'TN', '37210', '2017-07-12 02:06:14', '2017-07-12 02:06:32'),
(8, 'East Texas Copy Systems', 'Alice Boatman', 'Aboatman@etcopy.com', '9039392255', '4545 Old Jacksonville Hwy', 'Tyler', 'TX', '75703', '2017-07-12 02:06:36', '2017-07-12 02:06:51'),
(9, 'United Reprographic Supply', 'Diann Marker', 'diann@unitedreprographic.com', '3036801100', '7076 S Revere Pkwy', 'Centennial', 'CO', '80112', '2017-07-12 02:11:22', '2017-07-12 02:11:35'),
(10, 'Ray Morgan', 'Karen Pellerin', 'service@raymorgan.com', '9165771672', '855 Performance Dr', 'Stockton', 'CA', '95206', '2017-07-12 02:16:10', '2017-07-12 02:16:35'),
(11, 'RJ Young', 'Tex Malone', 'Tex.Malone@RJYoung.com', '8003471955', '2919 Sidco Dr', 'Nashville', 'TN', '37204', '2017-07-12 02:19:49', '2017-07-12 02:20:00');

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
(1, NULL, NULL, 1, 'Admin', 'jesse@pahoda.com', NULL, '$2y$10$o18D..He1koSqus6toW2FeGiUgCLeHLFP0azj2JoQqGtJMKfUBAKy', 'foqmqhpNdvSGEIzDBMsl9tA93o0JuSWYdffUY7WcutNDeHEpqW2eblFulXUz', '2017-05-01 12:44:15', '2017-07-12 02:00:34'),
(107, 30, NULL, 2, 'Matt Wishart', 'MWishart@trinidadbenham.com', '(303) 220-1400', '$2y$10$SxGUQcQwGt22e.QTtyAI4Oq/pAOL1Ju.ET1QCYhpsgcE7bNKy7lvu', 'tENvmmdddQ360tAwvM7HnVAL3hwYrbptiCGhuglRayuLeWV4KMwvkUnLygRm', '2017-07-12 03:02:09', '2017-07-12 03:08:40'),
(108, 30, NULL, 2, 'Rick Maestas', 'rmaestas@trinidadbenham.com', '(303) 220-1400', '$2y$10$3lcJDGztbrOuJhxPzSEq/eid4OdfGtok1PyNXeG0.hH6lMSqHIJzS', NULL, '2017-07-12 03:07:02', '2017-07-12 03:08:40'),
(109, 30, NULL, 2, 'Mel Kijek', 'MKijek@trinidadbenham.com', '303-773-4985', '$2y$10$wsUs2A.BKqibSvgrIQ.NOeq/NZ/tT.q/JqJN6pi0pSpFb9qnXdDBq', NULL, '2017-07-12 03:08:00', '2017-07-12 03:08:40'),
(110, 31, NULL, 2, 'Mister Sample', 'Sample@sample.com', '3033334444', '$2y$10$mmXKQYSgbOuA0l6Alg0FsOeU2.gmftu1TOA/KvYj88iSHAYoTv9L.', NULL, '2017-07-12 03:13:42', '2017-07-12 03:14:49'),
(113, NULL, 39, 3, 'New user', 'Carlsbad', NULL, '$2y$10$fEon3liy/W9LiMFbEt/e7eVXYjxQjFTG3xKl2ZsbPLGzrhDqI1VX.', NULL, '2017-07-12 03:18:26', '2017-07-12 03:18:26'),
(114, 32, NULL, 2, 'New user', 'Trinidad Benham', NULL, '$2y$10$Ybp0qxe9oKonmN.U2/lDYODM6XKQNhLbv4BL3E15DFJU3kXdJkBPy', NULL, '2017-07-12 03:27:39', '2017-07-12 03:27:39'),
(115, NULL, 37, 3, 'New user', 'sample1@sample.com', NULL, '596556eb36907', NULL, '2017-07-12 03:53:31', '2017-07-12 03:53:31'),
(116, 31, NULL, 2, 'Ms Sample', 'Sample2@sample.com', '3033334444', '$2y$10$Eda3SfnEdRyHHy36oY1d8O9IFTP52557gsbyvdo.Y6BhO/ZKfFikW', 'qySIypcLeDst3HqhVQZL0ycjgU3yiUo31QEKOHbhse6Um1DDWP0Tsr8zVtOo', '2017-07-12 04:09:42', '2017-07-12 04:10:14'),
(117, 31, NULL, 2, 'Test User', 'sales@pahoda.com', '123-324-2322', '$2y$10$0N7yHDCmxGM6ske3H2MWzOehXkyf8q35F205WMYhrcRoASV2ePjim', NULL, '2017-07-12 05:03:50', '2017-07-12 05:04:13'),
(118, NULL, 40, 3, 'Sterling Clerk', 'sterlingclerk@trinidadbenham.com', '970-522-3595', '$2y$10$LNkt0HkABbEvz/Akku1XRuaP/fQpKZapr7tZUYTwTxZ2DYONOi4qK', NULL, '2017-07-12 05:09:37', '2017-07-12 05:12:47'),
(119, NULL, 41, 3, 'La Vergne Clerk', 'lvclerk@trinidadbenham.com', NULL, '$2y$10$55MVUmFfl9BCiwsLCia5QOd/UEYqai8igHyIOrJ/Qj7IDeYpD98Da', NULL, '2017-07-12 05:24:25', '2017-07-12 05:25:31'),
(120, 33, NULL, 2, 'Brad Crook', 'Brad.Crook@moyewhite.com', NULL, '$2y$10$BlbYnInXrTUhzNi/1TUkL.IvDtVqUGrt6cGquxmgFo61gIzUlrXcW', NULL, '2017-07-12 07:15:37', '2017-07-12 07:16:45'),
(121, NULL, 42, 3, 'New user', 'Denver', NULL, '$2y$10$yq5U6JlOVN5Paa.hjK6s7.HUA0ZwYuNedW7Xgxa963sDltRY9wpoa', NULL, '2017-07-12 07:17:09', '2017-07-12 07:17:09'),
(122, NULL, NULL, 1, 'Alex', '12toydolls46@gmail.com', NULL, '$2y$10$6kzWfZpHsmeYdCLrHwhWouAU8/TLfgICUse9Hx9DKcDWEBUoB15O6', 'MqLofXWAjbB3dkRxe2QIpD8t6ZHtMiaUybyZfUG9oEQynaFCfnmbXBEip20S', NULL, '2017-07-12 11:39:36');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT для таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT для таблицы `device_units`
--
ALTER TABLE `device_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `service_tickets`
--
ALTER TABLE `service_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;
--
-- AUTO_INCREMENT для таблицы `supply_item_units`
--
ALTER TABLE `supply_item_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT для таблицы `supply_providers`
--
ALTER TABLE `supply_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
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
