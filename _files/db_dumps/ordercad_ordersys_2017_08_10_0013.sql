-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Авг 09 2017 г., 10:02
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
  `same_main_location` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `company_name`, `address`, `city`, `state`, `zip_code`, `display_zoho_link`, `same_main_location`, `created_at`, `updated_at`) VALUES
(30, NULL, 'Trinidad Benham', '140 INTERNATIONAL BLVD', 'La Vergne', 'TN', '37086', 1, 1, '2017-07-12 03:02:09', '2017-07-20 23:45:03'),
(31, NULL, 'Sample Company', '123 Sample Client', 'Sample City', 'CA', '97456', 0, NULL, '2017-07-12 03:13:42', '2017-07-12 03:16:13'),
(33, NULL, 'Moye White', '16 Market Square 6th Floor', 'Denver', '80202', 'CO', 1, NULL, '2017-07-12 07:15:37', '2017-07-12 07:16:45'),
(39, NULL, 'New company', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 21:47:14', '2017-07-12 21:47:14');

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
(31, NULL, 43, 'New user', 'check@check.com2', NULL, '2017-07-12 11:40:09', '2017-07-12 11:40:09'),
(32, NULL, 52, 'New user', 'mineolaclerk@trinidadbenham.com', NULL, '2017-07-13 22:53:26', '2017-07-13 22:53:26'),
(33, NULL, 54, 'New user', 'MKijek@trinidadbenham.com', NULL, '2017-07-13 23:06:42', '2017-07-13 23:06:42'),
(34, NULL, 55, 'New user', 'Denver, CO', NULL, '2017-07-14 02:12:23', '2017-07-14 02:12:23'),
(35, NULL, 56, 'New user', 'Greeley, CO', NULL, '2017-07-14 19:13:57', '2017-07-14 19:13:57'),
(36, NULL, 57, 'New user', 'greeleyclerk@trinidadbenham.com', NULL, '2017-07-14 19:24:31', '2017-07-14 19:24:31'),
(37, NULL, 58, 'New user', 'vernalispackclerk@trinidadbenham.com', NULL, '2017-07-14 20:32:49', '2017-07-14 20:32:49'),
(38, NULL, 59, 'New user', 'lagrangeclerk@trinidadbenham.com', NULL, '2017-07-14 22:13:17', '2017-07-14 22:13:17'),
(39, NULL, 60, 'New user', 'tstandage@trinidadbenham.com', NULL, '2017-07-14 22:35:00', '2017-07-14 22:35:00'),
(40, NULL, 61, 'New user', 'bridgeportclerk@trinidadbenham.com', NULL, '2017-07-17 19:22:16', '2017-07-17 19:22:16'),
(41, NULL, 62, 'New user', 'lschectman@trinidadbenham.com', NULL, '2017-07-17 19:26:57', '2017-07-17 19:26:57'),
(42, NULL, 63, 'New user', 'gmccormick@TrinidadBenham.com', NULL, '2017-07-17 19:33:30', '2017-07-17 19:33:30'),
(43, NULL, 64, 'New user', 'pattersonclerk@trinidadbenham.com', NULL, '2017-07-17 19:36:42', '2017-07-17 19:36:42'),
(44, NULL, 65, 'New user', 'bdeluna@trinidadbenham.com', NULL, '2017-07-17 19:46:52', '2017-07-17 19:46:52'),
(45, NULL, 66, 'New user', 'sysadminalert@trinidadbenham.com', NULL, '2017-07-17 19:52:16', '2017-07-17 19:52:16'),
(46, NULL, 67, 'New user', 'bsims@trinidadbenham.com', NULL, '2017-07-17 20:03:27', '2017-07-17 20:03:27'),
(47, NULL, 68, 'New user', 'jbeckelman@trinidadbenham.com', NULL, '2017-07-17 20:07:12', '2017-07-17 20:07:12'),
(48, NULL, 69, 'New user', 'colgateclerk@trinidadbenham.com', NULL, '2017-07-17 20:17:31', '2017-07-17 20:17:31'),
(49, NULL, 70, 'New user', 'pillsburyclerk@trinidadbenham.com', NULL, '2017-07-17 20:26:30', '2017-07-17 20:26:30'),
(50, NULL, 71, 'New user', 'eatchison@trinidadbenham.com', NULL, '2017-07-17 20:31:33', '2017-07-17 20:31:33'),
(51, NULL, 72, 'New user', 'alpinefencing@aol.com', NULL, '2017-07-17 20:40:43', '2017-07-17 20:40:43'),
(52, NULL, 74, 'New user', 'a', NULL, '2017-07-17 21:03:05', '2017-07-17 21:03:05');

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
(40, 'printer', 'XEROX', 'WorkCentre 6505', 'WorkCentre 6505.png', '2017-07-10 19:15:54', '2017-07-12 22:13:30'),
(41, 'printer', 'XEROX', 'WorkCentre 6605 -', 'WorkCentre 6605.png', '2017-07-10 19:18:47', '2017-07-10 19:20:36'),
(42, 'printer', 'XEROX', 'WorkCentre 6655', 'WorkCentre 6655.png', '2017-07-10 19:21:46', '2017-07-14 20:42:53'),
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
(56, 'copier', 'Canon', 'imageCLASS MF810Cdn', 'Canon MF810CDN.jpg', '2017-07-11 21:19:55', '2017-07-11 21:23:04'),
(57, 'printer', 'Epson', 'Epson Stylus NX420', 'Epson Stylus NX420.jpg', '2017-07-11 21:24:41', '2017-07-11 21:26:52'),
(58, 'printer', 'Lexmark', 'T654', 'Lexmark T654.png', '2017-07-11 21:30:08', '2017-07-11 21:31:18'),
(59, 'copier', 'Canon', 'ImageRunner Advance 3325', '3300i_lg_01.jpg', '2017-07-11 22:55:04', '2017-07-11 23:19:45'),
(62, 'printer', 'Canon', 'imageRUNNER ADVANCE 4235', 'Canon 4235.jpg', '2017-07-12 00:28:38', '2017-07-12 00:29:25'),
(63, 'printer', 'Canon', 'imageRUNNER ADVANCE C3325', 'Canon 3325.jpg', '2017-07-12 00:31:13', '2017-07-12 00:31:45'),
(64, 'printer', 'Canon', 'imageRUNNER ADVANCE C350iF', 'Canon 350iF.jpg', '2017-07-12 00:33:00', '2017-07-12 00:33:58'),
(65, 'printer', 'Canon', 'imageRUNNER ADVANCE 4551i', 'Canon 4551i.jpg', '2017-07-12 00:35:22', '2017-07-12 00:35:51'),
(66, 'printer', 'Canon', 'imageRUNNER ADVANCE 4535i', 'Canon 4535i.jpg', '2017-07-12 00:37:07', '2017-07-12 00:37:36'),
(67, 'printer', 'CANON', 'imageRUNNER ADVANCE C3525i', 'Canon 3525i.jpg', '2017-07-12 00:38:21', '2017-07-12 00:38:53'),
(68, 'printer', 'Canon', 'imageRUNNER 1730iF', 'Canon 1730iF.jpg', '2017-07-12 00:39:24', '2017-07-12 00:40:23'),
(70, 'printer', 'XEROX', 'Phaser 6360', 'Xerox 6360.png', '2017-07-12 00:53:12', '2017-07-12 00:55:33'),
(71, 'printer', 'Canon', 'imageRUNNER 1435P', '1435P.jpg', '2017-07-12 07:20:14', '2017-07-12 07:27:14'),
(72, 'printer', 'Kyocera Mita', 'FS-3900DN', 'Kyocera Mita FS-3900DN.jpg', '2017-07-12 21:13:18', '2017-07-12 21:16:33'),
(73, 'printer', 'XEROX', 'Phaser 8860', 'Phaser 8860.png', '2017-07-12 21:17:12', '2017-07-12 21:21:02'),
(74, 'printer', 'Canon', 'Color imageCLASS LBP7660C', 'Canon LBP7660C.jpg', '2017-07-12 21:22:42', '2017-07-12 21:23:51'),
(76, 'printer', 'Lexmark', 'XS654', 'Lexmark XS654.png', '2017-07-12 21:29:08', '2017-07-12 21:29:50'),
(77, 'printer', 'Ricoh', 'Aficio 7300', 'Ricoh 7300.jpg', '2017-07-12 21:32:47', '2017-07-12 21:35:10'),
(78, 'printer', 'Canon', 'imageCLASS LBP7780Cdn', 'Canon imageCLASS LBP7780Cdn.jpg', '2017-07-12 21:36:08', '2017-07-12 21:38:18'),
(79, 'printer', 'XEROX', 'Phaser 6280', 'Phaser 6280.png', '2017-07-12 21:40:28', '2017-07-12 21:43:08'),
(80, 'printer', 'Lexmark', 'X264 MFP', 'Lexmark X264 MFP.png', '2017-07-12 21:44:28', '2017-07-12 21:46:24'),
(81, 'printer', 'XEROX', 'Phaser 3250', 'Phaser 3250.png', '2017-07-12 21:48:47', '2017-07-12 21:50:31'),
(82, 'printer', 'Brother', 'MFCJ5330DW', 'Brother MFCJ5330DW.jpg', '2017-07-12 21:52:18', '2017-07-12 21:54:17'),
(83, 'printer', 'HP', 'Laserjet 1320', 'HP Laserjet 1320.png', '2017-07-12 22:00:17', '2017-07-12 22:01:13'),
(84, 'printer', 'Lexmark', 'E460dn', 'Lexmark E460dn.png', '2017-07-12 22:02:01', '2017-07-12 22:03:08'),
(85, 'printer', 'HP', 'DesignJet 130NR', 'HP DesignJet 130NR.png', '2017-07-12 22:06:56', '2017-07-12 22:08:59'),
(86, 'printer', 'Canon', 'ImageClass MF820', 'Canon ImageClass MF820.jpg', '2017-07-12 22:14:37', '2017-07-12 22:16:30'),
(87, 'printer', 'Canon', 'LBP351DN', 'Canon LBP351DN.jpg', '2017-07-12 22:19:43', '2017-07-12 22:20:17'),
(88, 'printer', 'Canon', 'imageCLASS D1550', 'Canon ICD1550.jpg', '2017-07-12 22:21:18', '2017-07-12 22:22:05'),
(90, 'printer', 'HP', 'PageWide Pro MFP477DW', 'HP PageWide Pro MFP477DW.png', '2017-07-12 22:26:46', '2017-07-12 22:27:34'),
(91, 'printer', 'Canon', 'ImageClass LBP6780DN', 'Canon ImageClass LBP6780DN.jpg', '2017-07-12 22:31:01', '2017-07-12 22:31:40'),
(92, 'printer', 'Lexmark', 'X651DE and X654DE', 'Lexmark XS654.png', '2017-07-12 22:32:58', '2017-07-12 22:34:04'),
(93, 'printer', 'XEROX', 'Phaser 6180DN', 'Xerox Phaser 6180DN.png', '2017-07-12 22:35:45', '2017-07-12 22:37:44'),
(94, 'printer', 'HP', 'LaserJet 400 M401dn', 'HP LaserJet 400 M401dn.png', '2017-07-12 22:38:43', '2017-07-12 22:39:31'),
(95, 'printer', 'Canon', 'Color imageClass MF624Cw', 'Canon Color imageClass MF624Cw.jpg', '2017-07-12 22:40:43', '2017-07-12 22:44:50'),
(96, 'printer', 'HP', 'DesignJet 130', 'HP DesignJet 130NR.png', '2017-07-14 02:20:07', '2017-07-14 02:22:36'),
(97, 'printer', 'XEROX', 'WorkCentre 3550', 'WorkCentre 3550.png', '2017-07-14 19:32:10', '2017-07-14 19:32:55'),
(98, 'printer', 'XEROX', 'PHASER 4600', 'PHASER 4600.png', '2017-07-14 19:37:14', '2017-07-14 19:38:32'),
(99, 'printer', 'XEROX', 'WORKCENTRE 4260', 'WORKCENTRE 4260.png', '2017-07-14 19:39:55', '2017-07-14 19:40:55'),
(100, 'printer', 'XEROX', 'PHASER 3600', 'PHASER 3600.png', '2017-07-14 22:16:13', '2017-07-14 22:17:53'),
(101, 'printer', 'XEROX', 'PHASER 4620', 'PHASER 4620.png', '2017-07-14 22:20:56', '2017-07-14 22:22:13'),
(102, 'printer', 'Lexmark', 'E460', 'Lexmark E460dn.png', '2017-07-19 20:50:33', '2017-07-19 20:53:13'),
(103, 'printer', 'Lexmark', 'X264DN', 'Lexmark X264 MFP.png', '2017-07-19 21:03:03', '2017-07-19 21:05:54'),
(104, 'printer', 'XEROX', 'PHASER 6180 FMP', NULL, '2017-07-19 22:25:46', '2017-07-19 23:29:56'),
(105, 'printer', 'Canon', 'Color imageCLASS LBP7660C - Reman', 'Canon LBP7660C.jpg', '2017-07-19 22:45:40', '2017-07-19 22:48:36'),
(106, 'printer', 'Lexmark', 'X654', 'Lexmark X654.png', '2017-07-19 22:55:46', '2017-07-19 22:58:52'),
(107, NULL, NULL, 'New Device', NULL, '2017-07-20 23:40:34', '2017-07-20 23:40:34');

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
(262, 62, 262),
(263, 63, 263),
(264, 64, 264),
(265, 65, 265),
(266, 66, 266),
(267, 67, 267),
(268, 68, 268),
(274, 70, 274),
(275, 70, 275),
(276, 70, 276),
(277, 70, 277),
(278, 70, 278),
(279, 70, 279),
(280, 71, 280),
(281, 72, 281),
(282, 73, 282),
(283, 73, 283),
(284, 73, 284),
(285, 73, 285),
(286, 73, 286),
(287, 74, 287),
(288, 74, 288),
(289, 74, 289),
(290, 74, 290),
(291, 76, 291),
(292, 77, 292),
(293, 77, 293),
(294, 77, 294),
(295, 77, 295),
(296, 77, 296),
(297, 77, 297),
(298, 78, 298),
(299, 78, 299),
(300, 78, 300),
(301, 78, 301),
(302, 78, 302),
(303, 79, 303),
(304, 79, 304),
(305, 79, 305),
(306, 79, 306),
(307, 80, 307),
(308, 80, 308),
(309, 81, 309),
(310, 82, 310),
(311, 82, 311),
(312, 82, 312),
(313, 82, 313),
(314, 83, 314),
(315, 84, 315),
(316, 85, 316),
(317, 85, 317),
(318, 85, 318),
(319, 85, 319),
(320, 85, 320),
(321, 85, 321),
(322, 86, 322),
(323, 86, 323),
(324, 86, 324),
(325, 86, 325),
(326, 87, 326),
(327, 88, 327),
(329, 90, 329),
(330, 90, 330),
(331, 90, 331),
(332, 90, 332),
(334, 91, 334),
(335, 92, 335),
(336, 92, 336),
(337, 93, 337),
(338, 93, 338),
(339, 93, 339),
(340, 93, 340),
(341, 94, 341),
(342, 95, 342),
(343, 95, 343),
(344, 95, 344),
(345, 95, 345),
(346, 95, 346),
(347, 95, 347),
(348, 95, 348),
(349, 95, 349),
(350, 96, 350),
(351, 96, 351),
(352, 96, 352),
(353, 96, 353),
(354, 96, 354),
(355, 96, 355),
(356, 96, 356),
(357, 97, 357),
(358, 98, 358),
(359, 98, 359),
(360, 98, 360),
(361, 98, 361),
(362, 99, 362),
(363, 99, 363),
(364, 99, 364),
(365, 99, 365),
(366, 17, 366),
(367, 17, 367),
(368, 17, 368),
(369, 17, 369),
(370, 17, 370),
(371, 17, 371),
(372, 42, 372),
(373, 42, 373),
(374, 42, 374),
(375, 42, 375),
(376, 42, 376),
(377, 100, 377),
(378, 101, 378),
(379, 101, 379),
(380, 101, 380),
(381, 101, 381),
(383, 102, 383),
(384, 102, 384),
(385, 103, 385),
(386, 103, 386),
(387, 103, 387),
(388, 67, 388),
(389, 67, 389),
(390, 67, 390),
(391, 67, 391),
(392, 67, 392),
(393, 67, 393),
(395, 64, 395),
(396, 64, 396),
(397, 64, 397),
(398, 63, 398),
(399, 63, 399),
(400, 63, 400),
(401, 41, 401),
(402, 41, 402),
(403, 41, 403),
(404, 41, 404),
(405, 104, 405),
(406, 104, 406),
(407, 104, 407),
(408, 104, 408),
(409, 105, 409),
(410, 105, 410),
(411, 105, 411),
(412, 105, 412),
(413, 106, 413),
(414, 106, 414);

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
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `base_cost` double DEFAULT NULL,
  `color_included` int(11) DEFAULT NULL,
  `mono_included` int(11) DEFAULT NULL,
  `cost_per_color` double DEFAULT NULL,
  `cost_per_mono` double DEFAULT NULL,
  `escalation_percentage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `device_units`
--

INSERT INTO `device_units` (`id`, `device_id`, `location_id`, `supply_provider_id`, `service_provider_id`, `friendly_name`, `asset_number`, `serial_number`, `lease_expiration`, `manual_meter_reads_entry`, `needs_meter_reads`, `use_alt_supplies_link`, `supplies_portal_link`, `use_alt_service_link`, `service_portal_link`, `display_supplies_credentials`, `supplies_login`, `supplies_password`, `display_service_credentials`, `service_login`, `service_password`, `base_cost`, `color_included`, `mono_included`, `cost_per_color`, `cost_per_mono`, `escalation_percentage`, `created_at`, `updated_at`) VALUES
(21, 16, 37, NULL, NULL, NULL, NULL, NULL, '2017-08-21', NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', 1.11, 2, 3, 4.5, 5.6, '111', '2017-07-12 03:19:01', '2017-08-08 21:20:39'),
(22, 16, 37, NULL, NULL, NULL, NULL, NULL, '2017-09-09', NULL, 0, 1, 'https://www.warnerbros.com/archive/spacejam/movie/jam.htm', 1, 'https://www.warnerbros.com/archive/spacejam/movie/jam.htm', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 03:19:07', '2017-08-08 20:39:07'),
(23, 16, 37, 6, 7, 'Phaser', NULL, 'X123X321Q', '2017-09-13', NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 03:19:29', '2017-08-08 20:38:26'),
(24, 14, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 03:57:54', '2017-07-12 04:09:17'),
(25, 14, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 03:58:03', '2017-07-12 04:09:17'),
(26, 16, 40, 3, 3, NULL, 'XL1393979', 'XL1393979', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:11:58', '2017-07-12 05:16:32'),
(28, 17, 40, 3, 3, NULL, 'AB9779661', 'AB9779661', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:12:43', '2017-07-12 05:17:07'),
(29, 66, 40, 9, 10, NULL, NULL, 'UMU03153', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:17:41', '2017-07-19 01:56:23'),
(30, 68, 40, 9, 10, NULL, NULL, 'QGF15030', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:18:56', '2017-07-19 01:56:23'),
(31, 12, 41, 3, 3, NULL, 'D6X461791', 'D6X461791', NULL, NULL, 1, 1, 'https://assist.zoho.com/assist-start?key=338095881&customer=MWishart%40trinidadbenham.com', 0, '', '1', 'mwishart', '1234', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:26:01', '2017-07-20 23:45:03'),
(32, 16, 41, 3, 3, NULL, 'XL1365132', 'XL1365132', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:27:16', '2017-07-12 05:27:33'),
(33, 62, 41, 7, 9, NULL, 'RKJ15702', 'RKJ15702', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 05:28:05', '2017-07-12 05:28:40'),
(34, 71, 42, 3, 3, 'Bob\'s Printer', NULL, 'X5647232Q', NULL, NULL, 1, 1, 'www.espn.com', 0, '', '1', 'espn', '123456', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 07:28:28', '2017-07-13 02:44:18'),
(35, 71, 42, NULL, NULL, 'Sally\'s Printer', NULL, 'X1232152Q', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-12 07:28:37', '2017-07-12 20:49:23'),
(46, 79, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:05:41', '2017-07-14 04:55:57'),
(47, 15, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:06:25', '2017-07-14 04:55:57'),
(48, 40, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:07:01', '2017-07-14 04:55:57'),
(49, 86, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:07:22', '2017-07-14 04:55:57'),
(50, 92, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:07:51', '2017-07-14 04:55:57'),
(51, 87, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:08:22', '2017-07-14 04:55:57'),
(52, 74, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:08:46', '2017-07-14 04:55:57'),
(53, 88, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:09:39', '2017-07-14 04:55:57'),
(54, 82, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:09:58', '2017-07-19 22:13:49'),
(55, 72, 41, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:43:39', '2017-07-19 04:16:25'),
(56, 73, 41, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:43:52', '2017-07-19 04:16:25'),
(57, 74, 41, 12, 3, NULL, NULL, 'MKJA504093', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 22:44:05', '2017-07-19 22:17:06'),
(58, 64, 36, 8, 8, NULL, NULL, 'QNN10863', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-13 23:13:38', '2017-07-19 04:04:42'),
(60, 96, 40, 12, 3, NULL, NULL, NULL, NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 02:34:00', '2017-07-19 22:13:49'),
(67, 58, 54, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 02:48:45', '2017-07-19 04:43:26'),
(71, 76, 54, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 02:52:18', '2017-07-19 04:43:26'),
(72, 77, 54, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 02:52:36', '2017-07-19 04:43:26'),
(73, 70, 54, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 02:52:52', '2017-07-19 04:43:26'),
(75, 20, 54, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 02:53:38', '2017-07-19 04:43:26'),
(76, 79, 57, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:26:29', '2017-07-14 19:34:32'),
(77, 80, 57, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:27:58', '2017-07-14 19:34:32'),
(78, 74, 57, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:28:30', '2017-07-14 19:34:32'),
(79, 97, 57, 3, 3, NULL, NULL, 'VMA553813', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:33:45', '2017-07-19 22:40:42'),
(80, 98, 36, 3, 3, NULL, NULL, 'XLT280650', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:50:52', '2017-07-19 04:04:42'),
(81, 99, 36, 3, 3, NULL, NULL, 'MAE507882', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:51:00', '2017-07-19 04:04:42'),
(82, 40, 36, 3, 3, NULL, NULL, 'YTB110791', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:51:13', '2017-07-19 04:04:42'),
(83, 17, 36, 3, 3, NULL, NULL, 'AB9780318', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:51:23', '2017-07-19 04:04:42'),
(84, 81, 36, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:52:33', '2017-07-19 04:20:54'),
(85, 82, 36, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:53:11', '2017-07-19 04:20:54'),
(86, 57, 36, 3, 3, NULL, NULL, NULL, NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 19:53:25', '2017-07-19 04:04:42'),
(87, 80, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:06:57', '2017-07-14 20:10:23'),
(88, 56, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:09:22', '2017-07-14 20:10:23'),
(89, 26, 55, 3, 3, NULL, NULL, 'C7X228594', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:15:25', '2017-07-19 04:51:55'),
(90, 12, 55, 3, 3, NULL, NULL, 'D6X453873', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:15:36', '2017-07-19 04:51:55'),
(91, 98, 55, 3, 3, NULL, NULL, 'XLT861286', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:15:49', '2017-07-19 04:51:55'),
(92, 16, 55, 3, 3, NULL, NULL, 'XL1365152', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:16:02', '2017-07-19 04:51:55'),
(93, 83, 55, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:16:26', '2017-07-19 04:51:55'),
(94, 76, 55, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:17:06', '2017-07-19 04:51:55'),
(95, 84, 55, 12, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:17:18', '2017-07-19 04:51:55'),
(96, 42, 58, 3, 3, NULL, NULL, 'E1B936934', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:43:18', '2017-07-19 22:49:41'),
(97, 25, 58, 3, 3, NULL, NULL, 'A2T133066', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:43:36', '2017-07-19 22:49:41'),
(98, 13, 58, 3, 3, NULL, NULL, 'KPA020885', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:43:46', '2017-07-19 22:49:41'),
(99, 97, 58, 3, 3, NULL, NULL, 'VMA586764', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:44:04', '2017-07-19 22:49:41'),
(101, 74, 58, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:45:06', '2017-07-14 20:59:09'),
(102, 66, 58, 3, 3, NULL, NULL, 'UMU01790', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 20:51:11', '2017-07-19 02:02:36'),
(103, 98, 59, 3, 3, NULL, NULL, 'XLT285670', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:15:07', '2017-07-19 23:06:21'),
(104, 100, 59, 3, 3, NULL, NULL, 'MHB927816', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:18:42', '2017-07-19 23:06:21'),
(105, 17, 59, 3, 3, NULL, NULL, 'AB9774976', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:18:59', '2017-07-19 23:06:21'),
(106, 97, 59, 3, 3, NULL, NULL, 'VMA586643', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:19:16', '2017-07-19 23:06:21'),
(107, 1, 59, 3, 3, NULL, NULL, 'E5B595386', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:19:25', '2017-07-19 23:06:21'),
(108, 42, 59, 3, 3, NULL, NULL, 'E1B936830', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:19:36', '2017-07-19 23:06:21'),
(109, 101, 59, 3, 3, NULL, NULL, 'NA4002526', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:22:54', '2017-07-19 23:06:21'),
(110, 62, 59, 3, 3, NULL, NULL, 'RKJ17050', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:23:23', '2017-07-19 02:06:05'),
(111, 59, 59, 3, 3, NULL, NULL, 'QTW14349', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:23:45', '2017-07-19 02:06:05'),
(112, 65, 59, 3, 3, NULL, NULL, 'UMW01509', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:24:36', '2017-07-19 02:06:05'),
(113, 84, 59, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:25:14', '2017-07-14 22:26:48'),
(114, 70, 59, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:25:25', '2017-07-14 22:26:48'),
(115, 85, 59, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:25:36', '2017-07-14 22:26:48'),
(116, 42, 60, 3, 3, NULL, NULL, 'E1B964481', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:36:01', '2017-07-19 23:13:25'),
(117, 97, 60, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-14 22:36:17', '2017-07-14 22:37:22'),
(118, 42, 61, 3, 3, NULL, NULL, 'E1B936785', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:24:29', '2017-07-19 23:14:26'),
(119, 90, 61, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:24:38', '2017-07-17 19:25:44'),
(120, 47, 62, 3, 3, NULL, NULL, 'XKK394879', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:28:54', '2017-07-19 23:17:40'),
(121, 12, 62, 3, 3, NULL, NULL, 'D6X462169', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:29:09', '2017-07-19 23:17:40'),
(123, 91, 62, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:30:25', '2017-07-17 19:32:03'),
(124, 7, 63, 3, 3, NULL, NULL, 'DA3001840', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:34:46', '2017-07-19 23:20:11'),
(125, 98, 64, 3, 3, NULL, NULL, 'XLT279728', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:38:39', '2017-07-19 23:23:01'),
(126, 42, 64, 3, 3, NULL, NULL, 'E1B936789', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:38:49', '2017-07-19 23:23:01'),
(127, 92, 64, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:39:09', '2017-07-17 19:40:26'),
(128, 97, 65, 3, 3, NULL, NULL, 'VMA585978', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:48:18', '2017-07-19 23:23:47'),
(129, 93, 66, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:58:08', '2017-07-17 20:01:35'),
(130, 94, 66, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:58:22', '2017-07-17 20:01:35'),
(131, 95, 66, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:58:54', '2017-07-17 20:01:35'),
(132, 86, 66, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 19:59:16', '2017-07-17 20:01:35'),
(133, 42, 67, 3, 3, NULL, NULL, 'E1B936934', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 20:04:37', '2017-07-19 23:27:31'),
(138, 56, 72, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 20:42:12', '2017-07-17 20:43:20'),
(139, 56, 73, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 20:48:29', '2017-07-17 20:49:25'),
(142, 67, 74, 3, 3, NULL, NULL, 'WSE00925', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 21:04:50', '2017-07-19 23:37:58'),
(143, 88, 64, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-17 21:06:27', '2017-07-19 23:23:01'),
(144, 26, 36, 3, 3, NULL, NULL, 'C7X238465', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 03:46:07', '2017-07-19 04:04:42'),
(145, 98, 36, 3, 3, NULL, NULL, 'XLT269429', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 03:47:10', '2017-07-19 04:04:42'),
(146, 99, 36, 3, 3, NULL, NULL, 'MAE975279', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 03:47:16', '2017-07-19 04:04:42'),
(147, 100, 54, 3, 3, NULL, NULL, 'MHB907356', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:38:58', '2017-07-19 04:45:42'),
(149, 42, 54, 3, 3, NULL, NULL, 'E1B936960', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:39:53', '2017-07-19 04:45:42'),
(150, 42, 54, 3, 3, NULL, NULL, 'E1B934126', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:39:55', '2017-07-19 04:45:42'),
(151, 42, 54, 3, 3, NULL, NULL, 'E1B936915', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:39:59', '2017-07-19 04:45:42'),
(152, 42, 54, 3, 3, NULL, NULL, 'E1B936991', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:40:01', '2017-07-19 04:45:42'),
(153, 42, 54, 3, 3, NULL, NULL, 'E1B942223', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:40:02', '2017-07-19 04:45:42'),
(154, 52, 54, 3, 3, NULL, NULL, 'MX4449009', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:40:15', '2017-07-19 04:45:42'),
(155, 98, 54, 3, 3, NULL, NULL, 'XLT861339', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 04:40:45', '2017-07-19 04:45:42'),
(156, 87, 40, 12, 3, NULL, NULL, 'NEQA002011', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:11:40', '2017-07-19 22:13:49'),
(157, 74, 40, 12, 3, NULL, NULL, 'MKJA504377', NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:12:16', '2017-07-19 22:13:49'),
(158, 104, 54, 3, 3, NULL, NULL, 'GNX258333', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:30:25', '2017-07-19 22:33:10'),
(159, 78, 54, 3, 3, NULL, NULL, 'MXRA006902 / MXRA006817', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:30:53', '2017-07-19 22:33:10'),
(160, 78, 54, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:33:59', '2017-07-19 22:35:47'),
(161, 56, 56, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:37:44', '2017-07-19 22:39:23'),
(162, 105, 58, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:50:09', '2017-07-19 22:55:01'),
(163, 42, 58, 3, 3, NULL, NULL, 'E1B936824', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:50:22', '2017-07-19 22:55:01'),
(164, 25, 58, 3, 3, NULL, NULL, 'A2T133898', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:50:31', '2017-07-19 22:55:01'),
(165, 25, 58, 3, 3, NULL, NULL, 'A2T133899', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:50:33', '2017-07-19 22:55:01'),
(166, 13, 58, 3, 3, NULL, NULL, 'KPA021754', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:51:09', '2017-07-19 22:55:01'),
(167, 106, 58, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 22:59:30', '2017-07-19 23:00:23'),
(168, 97, 59, 3, 3, NULL, NULL, 'VMA570781', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 23:06:18', '2017-07-19 23:07:15'),
(169, 103, 62, 3, 3, NULL, NULL, NULL, NULL, NULL, 0, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 23:17:24', '2017-07-19 23:18:50'),
(170, 104, 68, 3, 3, NULL, NULL, 'GNX258340', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 23:28:37', '2017-07-19 23:29:37'),
(171, 97, 69, 3, 3, NULL, NULL, 'VMA585140', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 23:31:03', '2017-07-19 23:31:40'),
(172, 97, 70, 3, 3, NULL, NULL, 'VMA553818', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 23:32:16', '2017-07-19 23:32:49'),
(173, 104, 71, 3, 3, NULL, NULL, 'GNX258300', NULL, NULL, 1, 0, '', 0, '', '0', '', '', '0', '', '', NULL, NULL, NULL, NULL, NULL, NULL, '2017-07-19 23:33:31', '2017-07-19 23:34:05');

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
(36, NULL, 30, 'Mineola, TX', '322 FREEMAN ST', 'Mineola', 'TX', '75773', NULL, 0, '2017-07-13 22:53:26', '2017-07-13 23:02:08'),
(37, NULL, 31, 'Denver', '12345 Sample Client', 'Denver', 'CO', '80202', NULL, 1, '2017-07-12 03:16:49', '2017-07-12 03:56:26'),
(38, NULL, 31, 'Madison', '123 Sample Client', 'Sample City', 'WI', '55443', NULL, 0, '2017-07-12 03:17:03', '2017-07-12 03:20:45'),
(40, NULL, 30, 'Sterling, CO', '1500 RIGHT OF WAY RD', 'Sterling', 'CO', '80751', NULL, 0, '2017-07-12 05:09:37', '2017-07-14 01:53:03'),
(41, NULL, 30, 'La Vergne, TN', '140 INTERNATIONAL BLVD', 'La Vergne', 'TN', '37086', NULL, 0, '2017-07-12 05:24:25', '2017-07-12 05:25:31'),
(42, NULL, 33, 'Denver', '16 Market Square 6th Floor', 'Denver', 'CO', '80202', NULL, 1, '2017-07-12 07:17:09', '2017-07-12 20:49:23'),
(54, NULL, 30, 'Denver, CO', '3650 S Yosemite, Suite 300', 'Denver', 'CO', '80237', NULL, 0, '2017-07-13 23:06:42', '2017-07-13 23:09:28'),
(55, NULL, 30, 'Hazelton, ID', '515 E MAIN STREET', 'HAZELTON', 'ID', '83335', NULL, 0, '2017-07-14 02:12:23', '2017-07-19 04:51:55'),
(56, NULL, 30, 'Bayard, NE', 'Avenue A & W 2nd St,', 'Bayard', 'NE', '69334', NULL, 0, '2017-07-14 19:13:57', '2017-07-14 20:06:12'),
(57, NULL, 30, 'Greeley, CO', NULL, NULL, NULL, NULL, NULL, 0, '2017-07-14 19:24:31', '2017-07-14 19:25:17'),
(58, NULL, 30, 'VERNALIS, CA', '35275 S WELTY RD', 'VERNALIS', 'CA', '95385', NULL, 0, '2017-07-14 20:32:49', '2017-07-14 20:37:54'),
(59, NULL, 30, 'LAGRANGE, GA', '100 PEGASUS PKWY', 'LAGRANGE', 'GA', '30240', NULL, 0, '2017-07-14 22:13:17', '2017-07-14 22:15:58'),
(60, NULL, 30, 'ALLIANCE, NE', '1219 E 3RD STREET', 'ALLIANCE', 'NE', '69301', NULL, 0, '2017-07-14 22:35:00', '2017-07-14 22:36:21'),
(61, NULL, 30, 'BRIDGEPORT, NE', '1500 MAIN ST', 'BRIDGEPORT', 'NE', '69336', NULL, 0, '2017-07-17 19:22:16', '2017-07-17 19:24:42'),
(62, NULL, 30, 'CHINO, CA', '5177 CHINO AVE', 'CHINO', 'CA', '91710', NULL, 0, '2017-07-17 19:26:57', '2017-07-17 19:30:28'),
(63, NULL, 30, 'IMPERIAL, NE', '73686 333 AVE', 'IMPERIAL', 'NE', '69033', NULL, 0, '2017-07-17 19:33:30', '2017-07-17 19:34:55'),
(64, NULL, 30, 'PATTERSON, CA', '420 S 2ND STREET', 'PATTERSON', 'CA', '95363', NULL, 0, '2017-07-17 19:36:42', '2017-07-17 19:39:16'),
(65, NULL, 30, 'WESTLEY, CA', '8512 HIGHWAY 33', 'WESTLEY', 'CA', '95387', NULL, 0, '2017-07-17 19:46:52', '2017-07-17 19:48:21'),
(66, NULL, 30, 'Colgate, ND', '308 Front Avenue', 'Colgate', 'ND', '58046', NULL, 0, '2017-07-17 19:52:16', '2017-07-17 19:59:20'),
(67, NULL, 30, 'BENTONVILLE, AR', '8699 MANOR DR', 'BENTONVILLE', 'AR', '72712', NULL, 0, '2017-07-17 20:03:27', '2017-07-17 20:04:41'),
(68, NULL, 30, 'FRISCO, TX', '3373 NUTMEG CIRCLE', 'FRISCO', 'TX', '75034', NULL, 0, '2017-07-17 20:07:12', '2017-07-17 20:11:19'),
(69, NULL, 30, 'HOPE, ND', '308 FRONT AVENUE', 'HOPE', 'ND', '58046', NULL, 0, '2017-07-17 20:17:31', '2017-07-17 20:19:25'),
(70, NULL, 30, 'PILLSBURY, ND', '330 RAILROAD AVE', 'PILLSBURY', 'ND', '58065', NULL, 0, '2017-07-17 20:26:30', '2017-07-17 20:29:03'),
(71, NULL, 30, 'FLEMING ISLAND, FL', '1734 CHALET ST', 'FLEMING ISLAND', 'FL', '32003', NULL, 0, '2017-07-17 20:31:32', '2017-07-17 20:33:31'),
(72, NULL, 30, 'Hockessin, DE', '732 Lora Lane', 'Hockessin', 'DE', '19707', NULL, 0, '2017-07-17 20:40:42', '2017-07-17 20:42:19'),
(73, NULL, 30, 'Franklin, TN', '1716 Masters Drive', 'Franklin', 'TN', '37064', NULL, 0, '2017-07-17 20:46:17', '2017-07-17 20:48:34'),
(74, NULL, 30, 'ANTIOCH, TN', NULL, 'ANTIOCH', 'TN', NULL, NULL, 0, '2017-07-17 21:03:05', '2017-07-17 21:04:51');

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
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `device_unit_id` int(11) DEFAULT NULL,
  `alt_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `location_id`, `company_id`, `device_unit_id`, `alt_address`, `status`, `tracking_no`, `created_at`, `updated_at`) VALUES
(21, 42, NULL, 35, NULL, 'shipped', 'rgtfrf43234', '2017-07-13 02:51:12', '2017-07-14 21:51:25'),
(22, 62, NULL, 120, NULL, 'placed', NULL, '2017-07-20 23:30:45', '2017-07-20 23:30:45'),
(23, 62, NULL, 169, NULL, 'placed', '1zhjfjhguhg', '2017-07-20 23:32:27', '2017-07-20 23:38:38'),
(24, 37, NULL, 23, NULL, 'placed', NULL, '2017-08-08 21:26:08', '2017-08-08 21:26:08'),
(25, 37, NULL, 21, '123 Denver Check check', 'placed', NULL, '2017-08-08 22:03:08', '2017-08-08 22:03:08'),
(31, 37, NULL, 21, 'ddd', 'placed', NULL, '2017-08-09 18:47:55', '2017-08-09 18:47:55'),
(32, NULL, 31, 89, '2e22e2', 'placed', NULL, '2017-08-09 19:10:07', '2017-08-09 19:10:07');

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
(36, 21, 280),
(37, 22, 167),
(38, 22, 168),
(39, 22, 169),
(40, 23, 386),
(41, 24, 62),
(42, 24, 63),
(43, 25, 59),
(44, 25, 63),
(52, 31, 61),
(53, 32, 102),
(54, 32, 103);

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
('Sample@sample.com', '$2y$10$WgLyN1d3bCqJmhY9ELTTs.dHHypeX65zI5RoIqK/vSsPoBzSSFE1e', '2017-07-12 04:02:09'),
('MKijek@trinidadbenham.com', '$2y$10$OmFBXUoc12zVR6FUHztLcOWBQ5.Db01rTC3J/gfDrKD72Pw/9gvrK', '2017-07-14 00:53:23');

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
  `location_id` int(11) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `error_codes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `service_tickets`
--

INSERT INTO `service_tickets` (`id`, `location_id`, `company_id`, `description`, `error_codes`, `created_at`, `updated_at`) VALUES
(3, NULL, 31, 'd', 'dd', '2017-08-09 19:10:24', '2017-08-09 19:10:24');

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
(5, '106R02733', 'High Capacity Toner Cartridge', 'Black High Capacity Toner Cartridge', 0, '2017-06-28 18:55:22', '2017-07-19 19:59:08'),
(6, '113R00776', 'WC 4265 Drum', 'Drum Kit, WorkCentre 4265 (100,000 Pages)', 100000, '2017-06-28 18:55:23', '2017-07-07 23:20:09'),
(7, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-06-28 18:55:24', '2017-07-07 23:16:11'),
(10, '106R02307', 'Xerox Phaser 3320 High Yield Black Toner', 'Xerox Phaser 3320 High Yield Black Toner', 11000, '2017-07-07 23:02:04', '2017-07-07 23:08:40'),
(11, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'Extended-Capacity Cleaning Unit/Maintenance Kit, 8570/8870/8700/8900,8580,8880 (30,000)', 0, '2017-07-07 23:24:37', '2017-07-07 23:27:38'),
(12, '108R00949', 'Xerox ColorQube 85xx Black Inkstix - 4 pack', 'Xerox ColorQube 85xx  Black Inkstix - 4 pack', 0, '2017-07-07 23:25:14', '2017-07-19 20:00:58'),
(13, '108R00946', 'Xerox ColorQube 85xx  Cyan Inkstix - 4 pack', 'Xerox ColorQube 85xx  Cyan Inkstix - 4 pack', 0, '2017-07-07 23:25:15', '2017-07-19 20:00:58'),
(14, '108R00947', 'Xerox ColorQube 85xx  Magenta Inkstix - 4 pack', 'Xerox ColorQube 85xx  Magenta Inkstix - 4 pack', 0, '2017-07-07 23:25:16', '2017-07-19 20:00:58'),
(15, '108R00948', 'Xerox ColorQube 85xx  Yellow Inkstix - 4 pack', 'Xerox ColorQube 85xx  Yellow Inkstix - 4 pack', 0, '2017-07-07 23:25:17', '2017-07-19 20:00:58'),
(16, '108R01013', 'Black Solid Ink Stix 4 pk', 'Black Solid Ink Stix 4 pk', 0, '2017-07-07 23:30:49', '2017-07-19 20:04:42'),
(17, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 0, '2017-07-07 23:31:03', '2017-07-07 23:33:08'),
(18, '108R01010', 'Cyan Solid Ink Stix 4 pk', 'Cyan Solid Ink Stix 4 pk', 0, '2017-07-07 23:31:04', '2017-07-19 20:04:42'),
(19, '108R01011', 'Magenta Solid Ink Stix 4 pk', 'Magenta Solid Ink Stix 4 pk', 0, '2017-07-07 23:31:05', '2017-07-19 20:04:42'),
(20, '108R01012', 'Yellow Solid Ink Stix 4 pk', 'Yellow Solid Ink Stix 4 pk', 0, '2017-07-07 23:31:06', '2017-07-19 20:04:42'),
(21, '108R00823', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 0, '2017-07-07 23:31:07', '2017-07-07 23:33:08'),
(22, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-07 23:31:08', '2017-07-19 20:04:42'),
(23, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 0, '2017-07-07 23:34:58', '2017-07-07 23:36:09'),
(24, '108R00965', 'Xerox ColorQube 88xx Black Inkstix - 6 pack', 'Xerox ColorQube 88xx Black Inkstix - 6 pack', 0, '2017-07-07 23:35:06', '2017-07-19 20:05:34'),
(25, '108R00962', 'Xerox ColorQube 88xx Cyan Inkstix - 6 pack', 'Xerox ColorQube 88xx Cyan Inkstix - 6 pack', 0, '2017-07-07 23:35:07', '2017-07-19 20:05:34'),
(26, '108R00963', 'Xerox ColorQube 88xx Magenta Inkstix - 6 pack', 'Xerox ColorQube 88xx Magenta Inkstix - 6 pack', 0, '2017-07-07 23:35:07', '2017-07-19 20:05:34'),
(27, '108R00964', 'Xerox ColorQube 88xx Yellow Inkstix - 6 pack', 'Xerox ColorQube 88xx Yellow Inkstix - 6 pack', 0, '2017-07-07 23:35:08', '2017-07-19 20:05:34'),
(28, '108R01029', 'Black Ink Stick CQ 8900', 'Black Ink Stick CQ 8900', 0, '2017-07-07 23:37:45', '2017-07-19 20:06:15'),
(29, '108R01026', 'Cyan Ink Stick CQ 8900', 'Cyan Ink Stick CQ 8900', 0, '2017-07-07 23:37:46', '2017-07-19 20:06:15'),
(30, '108R01027', 'Magenta Ink Stick CQ 8900', 'Magenta Ink Stick CQ 8900', 0, '2017-07-07 23:37:47', '2017-07-19 20:06:15'),
(31, '108R01028', 'Yellow Ink Stick CQ 8900', 'Yellow Ink Stick CQ 8900', 0, '2017-07-07 23:37:48', '2017-07-19 20:06:15'),
(32, '109R00783', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 'ColorQube 8xxx Maintenance Kit/Cleaning Unit', 0, '2017-07-07 23:37:49', '2017-07-07 23:39:18'),
(33, '108R00823', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 0, '2017-07-07 23:37:49', '2017-07-07 23:39:18'),
(34, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-07 23:37:50', '2017-07-07 23:39:18'),
(35, '106R02777', 'Black, High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 'Black, High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 0, '2017-07-07 23:43:03', '2017-07-07 23:43:48'),
(36, '106R02731', 'Black Extra High Capacity Toner Cartridge Phaser 3610', 'Black Extra High Capacity Toner Cartridge, Phaser 3610, WorkCentre 3615 (25,300 Pages)', 25300, '2017-07-07 23:44:50', '2017-07-07 23:50:00'),
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
(52, '106R01597', 'Phaser 6500 High Capacity Black Toner Cartridge', 'Phaser 6500 High Capacity Black Toner Cartridge (3,000 Pages)', 3000, '2017-07-08 00:01:57', '2017-07-19 20:11:11'),
(53, '106R01594', 'Phaser 6500 High Capacity Cyan Toner Cartridge', 'Phaser 6500 High Capacity Cyan Toner Cartridge (2,500 Pages)', 2500, '2017-07-08 00:02:56', '2017-07-19 20:11:11'),
(54, '106R01595', 'Phaser 6500 High Capacity Magenta Toner Cartridge', 'Phaser 6500 High Capacity Magenta Toner Cartridge (2,500 Pages)', 2500, '2017-07-08 00:03:00', '2017-07-19 20:11:11'),
(55, '106R01596', 'Phaser 6500 High Capacity Yellow Toner Cartridge', 'Phaser 6500 High Capacity Yellow Toner Cartridge (2,500 Pages)', 2500, '2017-07-08 00:03:01', '2017-07-19 20:11:11'),
(56, '108R01121', '4 DRUM CARTRIDGE/IMAGING UNITs', '4 DRUM CARTRIDGE/IMAGING UNITs', 0, '2017-07-08 00:06:18', '2017-07-08 00:08:17'),
(57, '108R01122', 'MAINTENANCE KIT', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', 0, '2017-07-08 00:06:18', '2017-07-19 20:12:04'),
(58, '108R01124', 'Waste Toner Bottle', 'Waste Toner Bottle', 0, '2017-07-08 00:06:24', '2017-07-08 00:08:17'),
(59, '106R02225', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Cyan Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Cyan Toner', 0, '2017-07-08 00:06:25', '2017-07-08 00:08:17'),
(60, '106R02226', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Magenta Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Magenta Toner', 0, '2017-07-08 00:06:31', '2017-07-08 00:08:17'),
(61, '106R02227', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Yellow Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Yellow Toner', 0, '2017-07-08 00:06:32', '2017-07-08 00:08:17'),
(62, '106R02228', 'Xerox Phaser 6600/WorkCentre 6605, High Capacity Black Toner', 'Xerox Phaser 6600/WorkCentre 6605, High Capacity Black Toner', 0, '2017-07-08 00:06:33', '2017-07-08 00:08:17'),
(63, '115R00076', 'Xerox Phaser 6600/WC 6605 Fuser', 'Xerox Phaser 6600/WC 6605 Fuser', 0, '2017-07-08 00:06:34', '2017-07-08 00:08:17'),
(64, '108R00974', 'Black Imaging Unit', 'Black Imaging Unit', NULL, '2017-07-08 04:11:41', '2017-07-14 19:49:43'),
(65, '106R01522', 'Black Toner Cartridge High Capacity', 'Black Toner Cartridge High Capacity', NULL, '2017-07-08 04:12:16', '2017-07-19 20:12:52'),
(66, '106R01519', 'Cyan Toner Cartridge High Capacity', 'Cyan Toner Cartridge High Capacity', NULL, '2017-07-08 04:12:17', '2017-07-19 20:12:52'),
(67, '106R01520', 'Magenta Toner Cartridge High Capacity', 'Magenta Toner Cartridge High Capacity', NULL, '2017-07-08 04:12:18', '2017-07-19 20:12:52'),
(68, '106R02605', 'Black Dual Package Toner', 'Black Dual Package Toner', 10000, '2017-07-08 04:15:36', '2017-07-08 04:17:16'),
(69, '106R02602', 'Cyan Dual Package Toner', 'Cyan Dual Package Toner', 9000, '2017-07-08 04:15:57', '2017-07-08 04:17:16'),
(70, '106R02603', 'Magenta Dual Package Toner', 'Magenta Dual Package Toner', 9000, '2017-07-08 04:15:58', '2017-07-08 04:17:16'),
(71, '106R02604', 'Yellow Dual Package Toner', 'Yellow Dual Package Toner', 9000, '2017-07-08 04:15:59', '2017-07-08 04:17:16'),
(72, '106R01439', 'Black High Capacity Toner Cartridge, Phaser 7500', 'Black High Capacity Toner Cartridge, Phaser 7500', 19800, '2017-07-08 04:18:50', '2017-07-08 04:20:42'),
(73, '106R01436', 'Cyan High Capacity Toner Cartridge, Phaser 7500', 'Cyan High Capacity Toner Cartridge, Phaser 7500', 17800, '2017-07-08 04:19:04', '2017-07-08 04:20:42'),
(74, '106R01437', 'Magenta High Capacity Toner Cartridge, Phaser 7500', 'Magenta High Capacity Toner Cartridge, Phaser 7500', 17800, '2017-07-08 04:19:07', '2017-07-08 04:20:42'),
(75, '106R01438', 'Yellow High Capacity Toner Cartridge, Phaser 7500', 'Yellow High Capacity Toner Cartridge, Phaser 7500', 17800, '2017-07-08 04:19:09', '2017-07-08 04:20:42'),
(76, 'G106R01569', 'Black Compatible Toner', 'Black Compatible Toner 24,000 Page Yield', 24000, '2017-07-08 04:22:02', '2017-07-19 20:15:01'),
(77, 'G106R01566', 'Cyan Compatible Toner', 'Cyan Compatible Toner 17,200 Page Yield', 17200, '2017-07-08 04:22:32', '2017-07-19 20:15:01'),
(78, 'G106R01567', 'Magenta Compatible Toner', 'Magenta Compatible Toner 17,200 Page Yield', 17200, '2017-07-08 04:22:36', '2017-07-19 20:15:01'),
(79, 'G106R01568', 'Yellow Compatible Toner', 'Yellow Compatible Toner 17,200 Page Yield', 17200, '2017-07-08 04:22:36', '2017-07-19 20:15:01'),
(91, '106R02777', 'Black High Capacity Toner Cartridge Phaser 3260/WorkCentre 3215/3225', 'Black, High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 3000, '2017-07-08 04:46:01', '2017-07-08 04:47:38'),
(92, '106R02777', 'Black High Capacity Toner Cartridge Phaser 3260/WorkCentre 3215/3225', 'Black High Capacity Toner Cartridge, Phaser 3260/WorkCentre 3215/3225 (3,000 Pages)', 3000, '2017-07-08 04:49:04', '2017-07-08 04:49:45'),
(93, '106R02313', 'Black High Capacity Print Cartridge WorkCentre 3325', 'Black High Capacity Print Cartridge, WorkCentre 3325 (11,000 Pages)', 11000, '2017-07-08 04:52:18', '2017-07-08 04:53:04'),
(94, '106R02313', 'WC 3325 Hi Cap Black Toner', 'Black High Capacity Print Cartridge WorkCentre 3325 (11,000 Pages)', 11000, '2017-07-08 04:54:27', '2017-07-08 04:55:01'),
(95, '106R02722', 'Black Toner Cartridge', 'Black Toner Cartridge', 0, '2017-07-08 04:56:15', '2017-07-08 04:57:08'),
(96, '115R00084', '110 Fuser Maintenance Kit', '110 Fuser Maintenance Kit', 0, '2017-07-08 04:56:20', '2017-07-08 04:57:08'),
(97, '116R00003', 'Roller Kit', 'Roller Kit', 0, '2017-07-08 04:56:21', '2017-07-08 04:57:08'),
(98, '113R00773', 'Smart Kit Drum Cartridge', 'Smart Kit Drum Cartridge', 0, '2017-07-08 04:56:22', '2017-07-08 04:57:08'),
(99, '106R02742', 'BLACK TONER WORKCENTRE 3655', 'BLACK TONER WORKCENTRE 3655', 0, '2017-07-08 04:59:34', '2017-07-19 21:58:46'),
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
(120, '106R01597', 'Xerox Phaser 6500/WC 6505 Hi Cap Black Toner', 'Xerox Phaser 6500/WC 6505 Hi Cap Black Toner', 3000, '2017-07-10 19:16:22', '2017-07-14 19:43:43'),
(121, '106R01594', 'Xerox Phaser 6500/WC 6505 Hi Cap Cyan Toner', 'Xerox Phaser 6500/WC 6505 Hi Cap Cyan Toner', 2500, '2017-07-10 19:16:49', '2017-07-14 19:43:43'),
(122, '106R01595', 'Xerox Phaser 6500/WC 6505 Hi Cap Magenta Toner', 'Xerox Phaser 6500/WC 6505 Hi Cap Magenta Toner', 2500, '2017-07-10 19:16:50', '2017-07-14 19:43:43'),
(123, '106R01596', 'Xerox Phaser 6500/WC 6505 Hi Cap Yellow Toner', 'Xerox Phaser 6500/WC 6505 Hi Cap Yellow Toner', 2500, '2017-07-10 19:16:51', '2017-07-14 19:43:43'),
(124, '108R01121', '4 DRUM CARTRIDGE/IMAGING UNITs', '4 DRUM CARTRIDGE/IMAGING UNITs', NULL, '2017-07-10 19:19:05', '2017-07-19 21:56:13'),
(125, '108R01122', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', NULL, '2017-07-10 19:19:20', '2017-07-19 21:56:13'),
(126, '108R01124', 'Waste Toner Bottle', 'Waste Toner Bottle', NULL, '2017-07-10 19:19:22', '2017-07-19 21:56:13'),
(127, '106R02225', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Cyan Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Cyan Toner', NULL, '2017-07-10 19:19:23', '2017-07-19 21:56:13'),
(128, '115R00088', '110V FUSER', '110V FUSER', NULL, '2017-07-10 19:21:57', '2017-07-14 20:37:49'),
(129, '108R01121', '4 DRUM CARTRIDGE/IMAGING UNITs', '4 DRUM CARTRIDGE/IMAGING UNITs', NULL, '2017-07-10 19:21:58', '2017-07-14 20:37:49'),
(130, '106R02751', 'BLACK TONER CARTRIDGE', 'BLACK TONER CARTRIDGE', NULL, '2017-07-10 19:22:00', '2017-07-19 21:52:26'),
(131, '106R02748', 'CYAN TONER, WORKCENTRE 6655', 'CYAN TONER, WORKCENTRE 6655', NULL, '2017-07-10 19:22:01', '2017-07-19 21:52:26'),
(132, '001R00610', 'Transfer Belt Unit', 'Transfer Belt Unit', 0, '2017-07-10 19:26:24', '2017-07-10 19:35:45'),
(133, '001R00610', 'Transfer Belt Unit', 'Transfer Belt Unit', 0, '2017-07-10 19:28:21', '2017-07-10 19:32:16'),
(134, '008R13089', 'Waste Toner Bottle', 'Waste Toner Bottle', 0, '2017-07-10 19:29:32', '2017-07-10 19:32:16'),
(135, '008R13086', 'WC 712x/722x Second Bias Transfer Roller (2nd BTR)', 'WC 712x/722x Second Bias Transfer Roller (2nd BTR)', 0, '2017-07-10 19:29:34', '2017-07-10 19:32:16'),
(136, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:29:36', '2017-07-10 19:32:16'),
(137, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:29:37', '2017-07-10 19:32:16'),
(138, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:29:38', '2017-07-10 19:32:16'),
(139, '006R01453', 'Xerox WC 712x Black Toner Cartridge', 'Xerox WC 712x Black Toner Cartridge', 0, '2017-07-10 19:29:39', '2017-07-19 21:46:42'),
(140, '006R01456', 'Xerox WC 712x Cyan Toner Cartridge', 'Xerox WC 712x Cyan Toner Cartridge', 0, '2017-07-10 19:29:40', '2017-07-19 21:46:42'),
(141, '006R01455', 'Xerox WC 712x Magenta Toner Cartridge', 'Xerox WC 712x Magenta Toner Cartridge', 0, '2017-07-10 19:29:40', '2017-07-19 21:46:42'),
(142, '006R01454', 'Xerox WC 712x Yellow Toner Cartridge', 'Xerox WC 712x Yellow Toner Cartridge', 0, '2017-07-10 19:29:41', '2017-07-19 21:46:42'),
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
(153, '006R01453', 'Xerox WC 712x Black Toner Cartridge', 'Xerox WC 712x Black Toner Cartridge', 0, '2017-07-10 19:33:13', '2017-07-19 21:47:40'),
(154, '006R01456', 'Xerox WC 712x Cyan Toner Cartridge', 'Xerox WC 712x Cyan Toner Cartridge', 0, '2017-07-10 19:33:14', '2017-07-19 21:47:40'),
(155, '006R01455', 'Xerox WC 712x Magenta Toner Cartridge', 'Xerox WC 712x Magenta Toner Cartridge', 0, '2017-07-10 19:33:15', '2017-07-19 21:47:40'),
(156, '006R01454', 'Xerox WC 712x Yellow Toner Cartridge', 'Xerox WC 712x Yellow Toner Cartridge', 0, '2017-07-10 19:33:16', '2017-07-19 21:47:40'),
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
(167, '006R01509', 'Black Toner', 'Black Toner', 0, '2017-07-10 19:41:31', '2017-07-19 21:44:59'),
(168, '006R01512', 'Cyan Toner', 'Cyan Toner', 0, '2017-07-10 19:41:34', '2017-07-19 21:44:59'),
(169, '006R01511', 'Magenta Toner', 'Magenta Toner', 0, '2017-07-10 19:41:35', '2017-07-19 21:44:59'),
(170, '006R01510', 'Yellow Toner', 'Yellow Toner', 0, '2017-07-10 19:41:37', '2017-07-19 21:44:59'),
(171, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:41:39', '2017-07-10 19:43:50'),
(172, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:41:40', '2017-07-10 19:43:50'),
(173, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:41:41', '2017-07-10 19:43:50'),
(174, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:41:42', '2017-07-10 19:43:50'),
(175, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:41:43', '2017-07-10 19:43:50'),
(176, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:41:43', '2017-07-10 19:43:50'),
(177, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:41:44', '2017-07-10 19:43:50'),
(178, '006R01509', 'Black Toner', 'Black Toner', 0, '2017-07-10 19:45:04', '2017-07-19 21:44:05'),
(179, '006R01512', 'Cyan Toner', 'Cyan Toner', 0, '2017-07-10 19:45:05', '2017-07-19 21:44:05'),
(180, '006R01511', 'Magenta Toner', 'Magenta Toner', 0, '2017-07-10 19:45:07', '2017-07-19 21:44:05'),
(181, '006R01510', 'Yellow Toner', 'Yellow Toner', 0, '2017-07-10 19:45:07', '2017-07-19 21:44:05'),
(182, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:45:08', '2017-07-10 19:47:05'),
(183, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:45:09', '2017-07-10 19:47:05'),
(184, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:45:10', '2017-07-10 19:47:05'),
(185, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:45:12', '2017-07-10 19:47:05'),
(186, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:45:13', '2017-07-10 19:47:05'),
(187, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:45:14', '2017-07-10 19:47:05'),
(188, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:45:15', '2017-07-10 19:47:05'),
(189, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:49:22', '2017-07-10 19:51:42'),
(190, '006R01509', 'Black Toner', 'Black Toner', 0, '2017-07-10 19:49:23', '2017-07-19 21:43:21'),
(191, '006R01512', 'Cyan Toner', 'Cyan Toner', 0, '2017-07-10 19:49:25', '2017-07-19 21:43:21'),
(192, '006R01511', 'Magenta Toner', 'Magenta Toner', 0, '2017-07-10 19:49:26', '2017-07-19 21:43:21'),
(193, '006R01510', 'Yellow Toner', 'Yellow Toner', 0, '2017-07-10 19:49:26', '2017-07-19 21:43:21'),
(194, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:49:27', '2017-07-10 19:51:42'),
(195, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:49:28', '2017-07-10 19:51:42'),
(196, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:49:29', '2017-07-10 19:51:42'),
(197, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:49:30', '2017-07-10 19:51:42'),
(198, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:49:31', '2017-07-10 19:51:42'),
(199, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:49:32', '2017-07-10 19:51:42'),
(200, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:49:34', '2017-07-10 19:51:42'),
(201, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:52:17', '2017-07-10 19:54:44'),
(202, '006R01509', 'Black Toner', 'Black Toner', 0, '2017-07-10 19:52:49', '2017-07-19 21:42:40'),
(203, '006R01512', 'Cyan Toner', 'Cyan Toner', 0, '2017-07-10 19:52:50', '2017-07-19 21:42:40'),
(204, '006R01511', 'Magenta Toner', 'Magenta Toner', 0, '2017-07-10 19:52:52', '2017-07-19 21:42:40'),
(205, '006R01510', 'Yellow Toner', 'Yellow Toner', 0, '2017-07-10 19:52:52', '2017-07-19 21:42:40'),
(206, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:52:53', '2017-07-10 19:54:44'),
(207, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:52:54', '2017-07-10 19:54:44'),
(208, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:52:55', '2017-07-10 19:54:44'),
(209, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:52:56', '2017-07-10 19:54:44'),
(210, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:52:57', '2017-07-10 19:54:44'),
(211, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:52:57', '2017-07-10 19:54:44'),
(212, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:52:58', '2017-07-10 19:54:44'),
(213, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:55:42', '2017-07-10 19:57:49'),
(214, '006R01509', 'Black Toner', 'Black Toner', 0, '2017-07-10 19:55:44', '2017-07-19 21:42:04'),
(215, '006R01512', 'Cyan Toner', 'Cyan Toner', 0, '2017-07-10 19:55:45', '2017-07-19 21:42:04'),
(216, '006R01511', 'Magenta Toner', 'Magenta Toner', 0, '2017-07-10 19:55:46', '2017-07-19 21:42:04'),
(217, '006R01510', 'Yellow Toner', 'Yellow Toner', 0, '2017-07-10 19:55:47', '2017-07-19 21:42:04'),
(218, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:55:48', '2017-07-10 19:57:49'),
(219, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:55:49', '2017-07-10 19:57:49'),
(220, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:55:50', '2017-07-10 19:57:49'),
(221, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:55:51', '2017-07-10 19:57:49'),
(222, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:55:52', '2017-07-10 19:57:49'),
(223, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:55:53', '2017-07-10 19:57:49'),
(224, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:55:55', '2017-07-10 19:57:49'),
(225, '013R00662', 'Drum Cartridge', 'Drum Cartridge', 0, '2017-07-10 19:58:32', '2017-07-10 20:00:24'),
(226, '006R01509', 'Black Toner', 'Black Toner', 0, '2017-07-10 19:58:34', '2017-07-19 21:41:23'),
(227, '006R01512', 'Cyan Toner', 'Cyan Toner', 0, '2017-07-10 19:58:35', '2017-07-19 21:41:23'),
(228, '006R01511', 'Magenta Toner', 'Magenta Toner', 0, '2017-07-10 19:58:36', '2017-07-19 21:41:23'),
(229, '006R01510', 'Yellow Toner', 'Yellow Toner', 0, '2017-07-10 19:58:37', '2017-07-19 21:41:23'),
(230, '008R12925', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 'Staple Cartridge for Professional Finisher (Booklet Maker)', 0, '2017-07-10 19:58:38', '2017-07-10 20:00:24'),
(231, '001R00613', 'Transfer Belt Cleaner', 'Transfer Belt Cleaner', 0, '2017-07-10 19:58:39', '2017-07-10 20:00:24'),
(232, '008R12897', 'Xerox Booklet Maker Staple Cartridge', 'Xerox Booklet Maker Staple Cartridge', 0, '2017-07-10 19:58:40', '2017-07-10 20:00:24'),
(233, '008R12964', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 'Xerox Staple Cartridge - Adv/Pro/Office Finishers', 0, '2017-07-10 19:58:41', '2017-07-10 20:00:24'),
(234, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-10 19:58:42', '2017-07-10 20:00:24'),
(235, '008R13064', 'Xerox WC 2nd Bias Transfer Roller', 'Xerox WC 2nd Bias Transfer Roller', 0, '2017-07-10 19:58:43', '2017-07-10 20:00:24'),
(236, '008R13061', 'Xerox WC Waste Container', 'Xerox WC Waste Container', 0, '2017-07-10 19:58:44', '2017-07-10 20:00:24'),
(237, NULL, 'New supply item', NULL, 0, '2017-07-10 20:01:30', '2017-07-10 20:01:53'),
(238, 'CNM9454B001AA', 'Black OEM Toner', 'Black OEM Toner', 12000, '2017-07-11 21:21:37', '2017-07-19 21:39:17'),
(239, 'CNM9453B001AA', 'Cyan OEM Toner', 'Cyan OEM Toner', 7300, '2017-07-11 21:21:39', '2017-07-19 21:39:17'),
(240, 'CNM9452B001AA', 'Magenta OEM Toner', 'Magenta OEM Toner', 7300, '2017-07-11 21:21:40', '2017-07-19 21:39:17'),
(241, 'CNM9451B001AA', 'Yellow OEM Toner', 'Yellow OEM Toner', 7300, '2017-07-11 21:21:41', '2017-07-19 21:39:17'),
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
(262, '4792B003AA', 'GPR-43 Toner Black', 'GPR-43 Toner Black', 30200, '2017-07-12 00:28:58', '2017-07-19 21:34:40'),
(263, '8524B003AA', 'GPR-53 Toner Black', 'GPR-53 Toner Black', 36000, '2017-07-12 00:31:42', '2017-07-19 21:33:30'),
(264, '8516B003AA', 'GPR-51 Toner Black', 'GPR-51 Toner Black', 19000, '2017-07-12 00:33:55', '2017-07-19 21:31:04'),
(265, '0473C003AA', 'GPR-57 Black Toner', 'GPR-57 Black Toner', 42100, '2017-07-12 00:35:50', '2017-07-19 21:28:40'),
(266, '0473C003AA', 'GPR-57 Black Toner', 'GPR-57 Black Toner', 42100, '2017-07-12 00:37:34', '2017-07-19 21:27:16'),
(267, '8524B003AA', 'GPR-53 Toner Black', 'GPR-53 Toner Black', 36000, '2017-07-12 00:38:51', '2017-07-19 21:25:27'),
(268, '2787B003AB', 'GPR-39 Black Toner', 'GPR-39 Black Toner', 15100, '2017-07-12 00:40:20', '2017-07-19 21:21:01'),
(274, '106R01221', 'Black Toner', 'High Capacity Black Toner Cartridge Yields up to 18000 pages', 18000, '2017-07-12 00:53:48', '2017-07-12 22:06:06'),
(275, '106R01218', 'Cyan Toner', 'High Capacity Cyan Toner Cartridge Yields up to 12000 pages', 12000, '2017-07-12 00:54:01', '2017-07-12 22:06:06'),
(276, '106R01219', 'Magenta Toner', 'High Capacity Magenta Toner Cartridge Yields up to 12000 pages', 12000, '2017-07-12 00:54:02', '2017-07-12 22:06:06'),
(277, '106R01220', 'Yellow Toner', 'High Capacity Yellow Toner Cartridge Yields up to 12000 pages', 12000, '2017-07-12 00:54:03', '2017-07-12 22:06:06'),
(278, '108R00646', 'Transfer Roller OEM Laser Xerox Transfer Roller, Phaser 6300/6350/6360', 'Transfer Roller OEM Laser Xerox Transfer Roller, Phaser 6300/6350/6360', 0, '2017-07-12 00:54:04', '2017-07-12 00:55:33'),
(279, '108R00645', 'Drum Unit', 'Drum Unit', 0, '2017-07-12 00:54:05', '2017-07-12 00:55:33'),
(280, '9436B003', 'Black Toner', 'Black Toner', 17600, '2017-07-12 07:22:00', '2017-07-19 21:18:40'),
(281, 'TK-322', 'Black Toner', 'Black Toner', 15000, '2017-07-12 21:16:09', '2017-07-12 21:16:33'),
(282, '108R00749', 'Black Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 'Black Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 14000, '2017-07-12 21:18:26', '2017-07-12 21:21:02'),
(283, '108R00746', 'Cyan Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 'Cyan Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 14000, '2017-07-12 21:18:53', '2017-07-12 21:21:02'),
(284, '108R00747', 'Magenta Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 'Magenta Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 14000, '2017-07-12 21:18:56', '2017-07-12 21:21:02'),
(285, '108R00748', 'Yellow Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 'Yellow Solid Ink Sticks (6/Box) for the Xerox Phaser 8860', 14000, '2017-07-12 21:18:57', '2017-07-12 21:21:02'),
(286, '113R00736', 'Maintenance Kit Yields up to 30000 pages', 'Maintenance Kit Yields up to 30000 pages', 30000, '2017-07-12 21:18:58', '2017-07-12 21:21:02'),
(287, '2662B001AA (118)', 'Black OEM Toner', 'Black OEM Toner', 3400, '2017-07-12 21:23:23', '2017-07-12 21:47:33'),
(288, '2661B001AA (118)', 'Cyan OEM Toner', 'Cyan OEM Toner', 2900, '2017-07-12 21:23:24', '2017-07-12 21:47:33'),
(289, '2660B001AA (118)', 'Magenta OEM Toner', 'Magenta OEM Toner', 2900, '2017-07-12 21:23:25', '2017-07-12 21:47:33'),
(290, '2659B001AA (118)', 'Yellow OEM Toner', 'Yellow OEM Toner', 2900, '2017-07-12 21:23:26', '2017-07-12 21:47:33'),
(291, NULL, 'Black Toner', 'Black Toner', 36000, '2017-07-12 21:29:31', '2017-07-12 21:29:50'),
(292, NULL, 'Black Toner', 'Black Toner', 24000, '2017-07-12 21:33:23', '2017-07-12 21:35:10'),
(293, NULL, 'Cyan Toner', 'Cyan Toner', 10000, '2017-07-12 21:33:24', '2017-07-12 21:35:10'),
(294, NULL, 'Magenta Toner', 'Magenta Toner', 10000, '2017-07-12 21:33:25', '2017-07-12 21:35:10'),
(295, NULL, 'Yellow Toner', 'Yellow Toner', 10000, '2017-07-12 21:33:26', '2017-07-12 21:35:10'),
(296, '402310', 'Drum Black', 'Drum Black', 0, '2017-07-12 21:33:27', '2017-07-12 21:35:10'),
(297, '402305', 'Drum Color', 'Drum Color', 0, '2017-07-12 21:33:27', '2017-07-12 21:35:10'),
(298, '6264B012AA', 'Black Toner', 'Black Toner', 12000, '2017-07-12 21:36:34', '2017-07-12 21:38:18'),
(299, '6262B012AA', 'Cyan Toner', 'Cyan Toner', 6400, '2017-07-12 21:36:49', '2017-07-19 21:08:29'),
(300, '6261B012AA', 'Magenta Toner', 'Magenta Toner', 6400, '2017-07-12 21:36:50', '2017-07-19 21:08:29'),
(301, '6260B012AA', 'Yellow Toner', 'Yellow Toner', 6400, '2017-07-12 21:36:51', '2017-07-19 21:08:29'),
(302, NULL, 'Fuser', 'Fuser - Refurbished exchange with return label', 0, '2017-07-12 21:36:51', '2017-07-12 21:38:18'),
(303, '106R01395', 'Black High Capacity Print Cartridge, Phaser 6280', 'Black High Capacity Print Cartridge, Phaser 6280', 7000, '2017-07-12 21:41:42', '2017-07-12 21:43:08'),
(304, '106R01392', 'Cyan High Capacity Print Cartridge, Phaser 6280', 'Cyan High Capacity Print Cartridge, Phaser 6280', 5900, '2017-07-12 21:41:43', '2017-07-12 21:43:08'),
(305, '106R01393', 'Magenta High Capacity Print Cartridge, Phaser 6280', 'Magenta High Capacity Print Cartridge, Phaser 6280', 5900, '2017-07-12 21:41:44', '2017-07-12 21:43:08'),
(306, '106R01394', 'Yellow High Capcity Print Cartridge, Phaser 6280', 'Yellow High Capcity Print Cartridge, Phaser 6280', 5900, '2017-07-12 21:41:45', '2017-07-12 21:43:08'),
(307, 'X264H11G', 'Black High Yield Toner Cartridge', 'Black High Yield Toner Cartridge Yields up to 9000 pages', 9000, '2017-07-12 21:45:17', '2017-07-19 21:02:51'),
(308, 'E260X22G', 'Photoconductor Kit', 'Photoconductor Kit Yields up to 30000 pages', 30000, '2017-07-12 21:45:23', '2017-07-19 21:02:51'),
(309, '106R01374', 'Black Reman High Yield Toner Cartridge', 'Black Reman High Yield Toner Cartridge Yields up to 5000 pages', 5000, '2017-07-12 21:49:08', '2017-07-12 21:50:31'),
(310, 'LC3019BK', 'Black Toner', 'Black Toner 2800 Page Yield', 2800, '2017-07-12 21:52:40', '2017-07-12 21:54:17'),
(311, 'LC3019C', 'Cyan Toner', 'Cyan Toner 1300 Page Yield', 1300, '2017-07-12 21:52:41', '2017-07-12 21:54:17'),
(312, 'LC3019M', 'Magenta Toner', 'Magenta Toner 1300 Page Yield', 1300, '2017-07-12 21:52:42', '2017-07-12 21:54:17'),
(313, 'LC3019Y', 'Yellow Toner', 'Yellow Toner 1300 Page Yield', 1300, '2017-07-12 21:52:43', '2017-07-12 21:54:17'),
(314, 'Q5949X', 'Black Toner', 'Black Toner 10,000 Yield', 10000, '2017-07-12 22:00:38', '2017-07-12 22:01:13'),
(315, 'E260A11A', 'Black Standard Yield Toner Cartridge', 'Black Standard Yield Toner Cartridge Yields up to 3500 pages', 3500, '2017-07-12 22:02:23', '2017-07-19 20:50:19'),
(316, 'C5016A', 'Black Toner Cartridge', 'Black Toner Cartridge', 0, '2017-07-12 22:07:20', '2017-07-19 20:45:48'),
(317, 'C9425A', 'Cyan Toner Cartridge', 'Cyan Toner Cartridge', 0, '2017-07-12 22:07:21', '2017-07-19 20:45:48'),
(318, 'C9428A', 'Light Cyan Toner Cartridge', 'Light Cyan Toner Cartridge', 0, '2017-07-12 22:07:22', '2017-07-19 20:45:48'),
(319, 'C9426A', 'Magenta Toner Cartridge', 'Magenta Toner Cartridge', 0, '2017-07-12 22:07:23', '2017-07-19 20:45:48'),
(320, 'C9429A', 'Light Magenta Toner Cartridge', 'Light Magenta Toner Cartridge', 0, '2017-07-12 22:07:24', '2017-07-19 20:45:48'),
(321, 'C9427A', 'Yellow Toner Cartridge', 'Yellow Toner Cartridge', 0, '2017-07-12 22:07:25', '2017-07-19 20:45:48'),
(322, '9454B001AA (034)', 'Black OEM Toner', 'Black OEM Toner 12,000 Pages', 12000, '2017-07-12 22:14:52', '2017-07-19 20:33:31'),
(323, '9453B001AA (034)', 'Cyan OEM Toner', 'Cyan OEM Toner 12,000 Pages', 12000, '2017-07-12 22:14:53', '2017-07-19 20:43:22'),
(324, '9452B001AA (034)', 'Magenta OEM Toner', 'Magenta OEM Toner 12,000 Pages', 12000, '2017-07-12 22:14:54', '2017-07-19 20:33:31'),
(325, '9451B001AA (034)', 'Yellow OEM Toner', 'Yellow OEM Toner 12,000 Pages', 12000, '2017-07-12 22:14:55', '2017-07-19 20:33:31'),
(326, '0287C001AA', 'Black OEM Toner', 'Black OEM Toner 11,000 pages', 11000, '2017-07-12 22:19:58', '2017-07-19 20:29:11'),
(327, 'CRG120', 'Black Toner', 'Black Toner 5,000 Pages', 5000, '2017-07-12 22:21:38', '2017-07-12 22:22:05'),
(329, 'F6T84AN (972X)', 'Black OEM Toner', 'Black OEM Toner 10,000 Pages', 10000, '2017-07-12 22:27:04', '2017-07-19 20:22:53'),
(330, 'L0R98AN (972X)', 'Cyan OEM Toner', 'Cyan OEM Toner 7,000 Pages', 7000, '2017-07-12 22:27:06', '2017-07-19 20:22:53'),
(331, 'L0S01AN (972X)', 'Magenta OEM Toner', 'Magenta OEM Toner 7,000 Pages', 7000, '2017-07-12 22:27:06', '2017-07-19 20:22:53'),
(332, 'L0S04AN (972X)', 'Yellow OEM Toner', 'Yellow OEM Toner 7,000 Pages', 7000, '2017-07-12 22:27:07', '2017-07-19 20:22:53'),
(334, 'PG3482B013AA', 'Black Reman Toner', 'Black Reman Toner 12,500 Page Yield', 12500, '2017-07-12 22:31:19', '2017-07-19 20:22:18'),
(335, NULL, 'Black Reman Toner', 'Black Reman Toner 25,000 pages', 25000, '2017-07-12 22:33:23', '2017-07-19 20:21:53'),
(336, '40X4742', 'Maintenance Kit', 'Maintenance Kit', 0, '2017-07-12 22:33:24', '2017-07-12 22:34:04'),
(337, 'PG113R726', 'Black Compatible Toner', 'Black Compatible Toner 8,000 Pages', 8000, '2017-07-12 22:36:05', '2017-07-19 20:21:25'),
(338, 'PG113R723', 'Cyan Compatible Toner', 'Cyan Compatible Toner 6,000 Pages', 6000, '2017-07-12 22:36:06', '2017-07-19 20:21:25'),
(339, 'PG113R724', 'Magenta Compatible Toner', 'Magenta Compatible Toner 6,000 Pages', 6000, '2017-07-12 22:36:07', '2017-07-19 20:21:25'),
(340, 'PG113R725', 'Yellow Compatible Toner', 'Yellow Compatible Toner 6,000 Pages', 6000, '2017-07-12 22:36:07', '2017-07-19 20:21:25'),
(341, NULL, 'Black Reman Toner', 'Black Reman Toner - 80X High Yield 6,900 pages', 6900, '2017-07-12 22:39:02', '2017-07-19 20:20:44'),
(342, '6272B001AA-131', 'Black OEM Toner', 'Black OEM Toner 1,400 Pages', 1400, '2017-07-12 22:41:04', '2017-07-19 20:20:09'),
(343, '6271B001AA-131', 'Cyan OEM Toner', 'Cyan OEM Toner 1,500 Pages', 1500, '2017-07-12 22:41:05', '2017-07-19 20:20:09'),
(344, '6270B001AA-131', 'Magenta OEM Toner', 'Magenta OEM Toner 1,500 Pages', 1500, '2017-07-12 22:41:06', '2017-07-19 20:20:09'),
(345, '6269B001AA-131', 'Yellow OEM Toner', 'Yellow OEM Toner 1,500 Pages', 1500, '2017-07-12 22:41:07', '2017-07-19 20:20:09'),
(346, 'PG6272B001AA -131', 'Black Compatible Toner', 'Black Compatible Toner 1,400 Pages', 1400, '2017-07-12 22:41:08', '2017-07-19 20:20:09'),
(347, 'PG6271B001AA -131', 'Cyan Compatible Toner', 'Cyan Compatible Toner 1,500 Pages', 1500, '2017-07-12 22:41:09', '2017-07-19 20:20:09'),
(348, 'PG6270B001AA -131', 'Magenta Compatible Toner', 'Magenta Compatible Toner 1,500 Pages', 1500, '2017-07-12 22:41:10', '2017-07-19 20:20:09'),
(349, 'PG6269B001AA -131', 'Yellow Compatible Toner', 'Yellow Compatible Toner 1,500 Pages', 1500, '2017-07-12 22:41:11', '2017-07-19 20:20:09'),
(350, 'HPC5016A', 'Black OEM Toner', 'Black OEM  Toner 84-BK', 0, '2017-07-14 02:20:31', '2017-07-19 20:19:08'),
(351, 'HPC9425A', 'Cyan OEM Toner', 'Cyan OEM Toner 85-C', 0, '2017-07-14 02:20:32', '2017-07-19 20:19:08'),
(352, 'HPC9426A', 'Magenta OEM Toner', 'Magenta OEM Toner 85-M', 0, '2017-07-14 02:20:33', '2017-07-19 20:19:08'),
(353, 'HPC9427A', 'Yellow OEM Toner', 'Yellow OEM Toner 85-Y', 0, '2017-07-14 02:20:34', '2017-07-19 20:19:08'),
(354, 'HPC9428A', 'Light Cyan OEM Toner', 'Light Cyan OEM Toner 85-LC', 0, '2017-07-14 02:20:35', '2017-07-19 20:19:08'),
(355, 'HPC9429A', 'Light Magenta OEM Toner', 'Light Magenta OEM Toner 85-LM', 0, '2017-07-14 02:20:36', '2017-07-19 20:19:08'),
(356, 'HPC5018A', 'Light Magenta OEM Toner', 'Light Magenta OEM Toner 84-LM', 0, '2017-07-14 02:20:37', '2017-07-19 20:19:08'),
(357, '106R01527', 'Xerox WC 3550 Hi Cap Black Toner', 'Xerox WC 3550 Hi Cap Black Toner', 0, '2017-07-14 19:32:42', '2017-07-19 20:17:49'),
(358, '113R00762', 'Xerox Phaser 46xx Drum Kit', 'Xerox Phaser 46xx Drum Kit', 0, '2017-07-14 19:37:52', '2017-07-14 19:38:32'),
(359, '106R01535', 'Xerox Phaser 46xx Hi Cap Black Toner', 'Xerox Phaser 46xx Hi Cap Black Toner', 0, '2017-07-14 19:37:53', '2017-07-14 19:38:32'),
(360, '115R00069', 'Xerox Phaser 46xx Maintenance Kit', 'Xerox Phaser 46xx Maintenance Kit', 0, '2017-07-14 19:37:54', '2017-07-14 19:38:32'),
(361, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-14 19:37:55', '2017-07-14 19:38:32'),
(362, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-14 19:40:11', '2017-07-14 19:40:55'),
(363, '106R01408', 'Xerox WC 4250/4260 Toner', 'Xerox WC 4250/4260 Toner', 0, '2017-07-14 19:40:13', '2017-07-19 20:16:52'),
(364, '113R00755', 'Xerox WC 4260 Drum Cartridge', 'Xerox WC 4260 Drum Cartridge', 0, '2017-07-14 19:40:14', '2017-07-14 19:40:55'),
(365, '115R00063', 'Xerox WC 4260 Maintenance Kit 110V', 'Xerox WC 4260 Maintenance Kit 110V', 0, '2017-07-14 19:40:15', '2017-07-14 19:40:55'),
(366, '106R01521', 'Yellow Toner Cartridge High Capacity', 'Yellow Toner Cartridge High Capacity', 0, '2017-07-14 19:47:15', '2017-07-19 20:12:52'),
(367, '108R00975', 'Waste Toner Container', 'Waste Toner Container', 0, '2017-07-14 19:47:16', '2017-07-14 19:49:43'),
(368, '108R00971', 'Xerox Phaser 6700 Cyan Imaging Unit', 'Xerox Phaser 6700 Cyan Imaging Unit', 0, '2017-07-14 19:47:17', '2017-07-14 19:49:43'),
(369, '108R00972', 'Xerox Phaser 6700 Magenta Imaging Unit', 'Xerox Phaser 6700 Magenta Imaging Unit', 0, '2017-07-14 19:47:18', '2017-07-14 19:49:43'),
(370, '108R00973', 'Xerox Phaser 6700 Yellow Imaging Unit', 'Xerox Phaser 6700 Yellow Imaging Unit', 0, '2017-07-14 19:47:19', '2017-07-14 19:49:43'),
(371, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-14 19:47:20', '2017-07-14 19:49:43'),
(372, '106R02749', 'MAGENTA TONER CARTRIDGE', 'MAGENTA TONER CARTRIDGE', 0, '2017-07-14 20:35:59', '2017-07-19 21:52:26'),
(373, '106R02750', 'YELLOW TONER CARTRIDGE', 'YELLOW TONER CARTRIDGE', 0, '2017-07-14 20:36:00', '2017-07-19 21:52:26'),
(374, '108R01122', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', 'MAINTENANCE KIT (INCLUDES BIAS TRANSFER ROLLER, FEED ROLLER & TRANSFER BELT)', 0, '2017-07-14 20:36:01', '2017-07-14 20:37:49'),
(375, '108R01124', 'Waste Toner Bottle', 'Waste Toner Bottle', 0, '2017-07-14 20:36:02', '2017-07-14 20:37:49'),
(376, '108R00823', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 'Xerox Phaser 3635/CQ 8900 Staple Cartridge', 0, '2017-07-14 20:36:03', '2017-07-14 20:37:49'),
(377, '106R01371', 'Xerox Phaser 3600 Hi Cap Print Cartridge', 'Xerox Phaser 3600 Hi Cap Print Cartridge', 0, '2017-07-14 22:17:30', '2017-07-14 22:17:53'),
(378, '113R00762', 'Xerox Phaser 46xx Drum Kit', 'Xerox Phaser 46xx Drum Kit', 0, '2017-07-14 22:21:26', '2017-07-14 22:22:13'),
(379, '106R01535', 'Xerox Phaser 46xx Hi Cap Black Toner', 'Xerox Phaser 46xx Hi Cap Black Toner', 0, '2017-07-14 22:21:28', '2017-07-14 22:22:13'),
(380, '115R00069', 'Xerox Phaser 46xx Maintenance Kit', 'Xerox Phaser 46xx Maintenance Kit', 0, '2017-07-14 22:21:31', '2017-07-14 22:22:13'),
(381, '008R12941', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 'Xerox Staple Refill - Adv/Pro/Office Finishers', 0, '2017-07-14 22:21:32', '2017-07-14 22:22:13'),
(383, 'E460X11A', 'Black High Yield Toner Cartridge', 'Black High Yield Toner Cartridge Yields up to 15000 pages', 15000, '2017-07-19 20:51:38', '2017-07-19 20:53:13'),
(384, 'E260X22G', 'OEM Photo Conductor', 'OEM Photo Conductor 30,000 Pages', 30000, '2017-07-19 20:51:39', '2017-07-19 20:53:13'),
(385, 'X264RP-HY / X264H11G', 'Black Reman Toner', 'Black Reman Toner', 0, '2017-07-19 21:03:37', '2017-07-19 21:05:54'),
(386, 'E260X22G', 'Photoconductor Kit', 'Photoconductor Kit (Parts Reman)', 0, '2017-07-19 21:03:38', '2017-07-19 21:05:54'),
(387, '40X5400', 'Maintenance Kit', 'Maintenance Kit (Parts OEM)', 0, '2017-07-19 21:03:39', '2017-07-19 21:05:54'),
(388, '8525B003AA', 'GPR-53 Toner Cyan', 'GPR-53 Toner Cyan', 19000, '2017-07-19 21:22:14', '2017-07-19 21:25:27'),
(389, '8526B003AA', 'GPR-53 Toner Magenta', 'GPR-53 Toner Magenta', 19000, '2017-07-19 21:22:15', '2017-07-19 21:25:27'),
(390, '8527B003AA', 'GPR-53 Toner Yellow', 'GPR-53 Toner Yellow', 19000, '2017-07-19 21:22:16', '2017-07-19 21:25:27'),
(391, '1391C003AA', 'GPR-53L Cyan Toner', 'GPR-53L Cyan', 8500, '2017-07-19 21:22:17', '2017-07-19 21:25:27'),
(392, '1392C003AA', 'GPR-53L Magenta Toner', 'GPR-53L Magenta Toner', 8500, '2017-07-19 21:22:18', '2017-07-19 21:25:27'),
(393, '1393C003AA', 'GPR-53L Yellow Toner', 'GPR-53L Yellow', 8500, '2017-07-19 21:22:18', '2017-07-19 21:25:27'),
(395, '8517B003AA', 'GPR-51 Toner Cyan', 'GPR-51 Toner Cyan', 21500, '2017-07-19 21:29:37', '2017-07-19 21:31:04'),
(396, '8518B003AA', 'GPR-51 Toner Magenta', 'GPR-51 Toner Magenta', 21500, '2017-07-19 21:29:37', '2017-07-19 21:31:04'),
(397, '8519B003AA', 'GPR-51 Toner Yellow', 'GPR-51 Toner Yellow', 21500, '2017-07-19 21:29:38', '2017-07-19 21:31:04'),
(398, '8525B003AA', 'GPR-53 Toner Cyan', 'GPR-53 Toner Cyan', 19000, '2017-07-19 21:32:14', '2017-07-19 21:33:30'),
(399, '8526B003AA', 'GPR-53 Toner Magenta', 'GPR-53 Toner Magenta', 19000, '2017-07-19 21:32:15', '2017-07-19 21:33:30'),
(400, '8527B003AA', 'GPR-53 Toner Yellow', 'GPR-53 Toner Yellow', 19000, '2017-07-19 21:32:16', '2017-07-19 21:33:30'),
(401, '106R02226', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Magenta Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Magenta Toner', 0, '2017-07-19 21:55:18', '2017-07-19 21:56:13'),
(402, '106R02227', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Yellow Toner', 'Xerox Phaser 6600 / WorkCentre 6605 High Capacity Yellow Toner', 0, '2017-07-19 21:55:19', '2017-07-19 21:56:13');
INSERT INTO `supply_items` (`id`, `item_number`, `name`, `description`, `page_yield`, `created_at`, `updated_at`) VALUES
(403, '106R02228', 'Xerox Phaser 6600/WorkCentre 6605, High Capacity Black Toner', 'Xerox Phaser 6600/WorkCentre 6605, High Capacity Black Toner', 0, '2017-07-19 21:55:20', '2017-07-19 21:56:13'),
(404, '115R00076', 'Xerox Phaser 6600/WC 6605 Fuser', 'Xerox Phaser 6600/WC 6605 Fuser', 0, '2017-07-19 21:55:21', '2017-07-19 21:56:13'),
(405, '113R00726', 'Xerox Phaser 6180 Hi Cap Black Toner', 'Xerox Phaser 6180 Hi Cap Black Toner', 0, '2017-07-19 22:28:10', '2017-07-19 22:28:51'),
(406, '113R00723', 'Xerox Phaser 6180 Hi Cap Cyan Toner', 'Xerox Phaser 6180 Hi Cap Cyan Toner', 0, '2017-07-19 22:28:12', '2017-07-19 22:28:51'),
(407, '113R00724', 'Xerox Phaser 6180 Hi Cap Magenta Toner', 'Xerox Phaser 6180 Hi Cap Magenta Toner', 0, '2017-07-19 22:28:13', '2017-07-19 22:28:51'),
(408, '113R00725', 'Xerox Phaser 6180 Hi Cap Yellow Toner', 'Xerox Phaser 6180 Hi Cap Yellow Toner', 0, '2017-07-19 22:28:14', '2017-07-19 22:28:51'),
(409, '304A-118', 'Black Reman High Yield Toner Cartridge', 'Black Reman High Yield Toner Cartridge', 3500, '2017-07-19 22:46:12', '2017-07-19 22:53:39'),
(410, '304A-118', 'Cyan Reman High Yield Toner Cartridge', 'Cyan Reman High Yield Toner Cartridge', 2800, '2017-07-19 22:46:13', '2017-07-19 22:53:39'),
(411, '304A-118', 'Magenta Reman High Yield Toner Cartridge', 'Magenta Reman High Yield Toner Cartridge', 2800, '2017-07-19 22:46:14', '2017-07-19 22:53:39'),
(412, '304A-118', 'Yellow Reman High Yield Toner Cartridge', 'Yellow Reman High Yield Toner Cartridge', 2800, '2017-07-19 22:46:15', '2017-07-19 22:53:39'),
(413, 'X654X04A', 'Black Reman Extra High Yield Toner Cartridge', 'Black Reman Extra High Yield Toner Cartridge', 0, '2017-07-19 22:57:04', '2017-07-19 22:58:52'),
(414, '40X4418', 'Fuser Unit', 'Fuser Unit Yields up to 300000 pages', 300000, '2017-07-19 22:57:05', '2017-07-19 22:58:52');

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
(92, 32, 63, NULL, '2017-07-12 05:28:40', '2017-07-12 05:28:40'),
(99, 34, 280, 0, '2017-07-12 20:49:23', '2017-07-12 20:49:23'),
(100, 35, 280, 0, '2017-07-12 20:49:23', '2017-07-12 20:49:23'),
(101, 30, 268, NULL, '2017-07-13 22:04:49', '2017-07-13 22:04:49'),
(102, 45, 316, NULL, '2017-07-13 22:12:41', '2017-07-13 22:12:41'),
(103, 45, 317, NULL, '2017-07-13 22:12:41', '2017-07-13 22:12:41'),
(104, 45, 318, NULL, '2017-07-13 22:12:41', '2017-07-13 22:12:41'),
(105, 45, 319, NULL, '2017-07-13 22:12:41', '2017-07-13 22:12:41'),
(106, 45, 320, NULL, '2017-07-13 22:12:41', '2017-07-13 22:12:41'),
(107, 45, 321, NULL, '2017-07-13 22:12:41', '2017-07-13 22:12:41'),
(108, 33, 262, NULL, '2017-07-13 22:44:52', '2017-07-13 22:44:52'),
(109, 46, 303, 129.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(110, 46, 304, 149.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(111, 46, 305, 149.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(112, 46, 306, 149.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(113, 47, 52, 65, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(114, 47, 53, 65, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(115, 47, 54, 65, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(116, 47, 55, 65, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(117, 48, 120, 109.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(118, 48, 121, 114.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(119, 48, 122, 114.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(120, 48, 123, 114.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(121, 49, 322, 160.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(122, 49, 323, 240.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(123, 49, 324, 240.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(124, 49, 325, 240.95, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(125, 50, 335, 129, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(126, 50, 336, 189, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(127, 51, 326, 279, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(128, 52, 287, 135, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(129, 52, 288, 130, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(130, 52, 289, 130, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(131, 52, 290, 130, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(132, 53, 327, 175, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(133, 54, 310, 54.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(134, 54, 311, 28.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(135, 54, 312, 28.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(136, 54, 313, 28.99, '2017-07-14 01:53:03', '2017-07-14 02:43:54'),
(137, 55, 281, 83, '2017-07-14 02:16:40', '2017-07-14 02:16:40'),
(138, 56, 282, 229, '2017-07-14 02:16:40', '2017-07-14 02:16:40'),
(139, 56, 283, 79, '2017-07-14 02:16:40', '2017-07-14 02:16:40'),
(140, 56, 284, 79, '2017-07-14 02:16:40', '2017-07-14 02:16:40'),
(141, 56, 285, 79, '2017-07-14 02:16:40', '2017-07-14 02:16:40'),
(142, 56, 286, 109, '2017-07-14 02:16:40', '2017-07-14 02:16:40'),
(143, 57, 287, NULL, '2017-07-14 02:16:40', '2017-07-19 22:17:06'),
(144, 57, 288, NULL, '2017-07-14 02:16:40', '2017-07-19 22:17:06'),
(145, 57, 289, NULL, '2017-07-14 02:16:40', '2017-07-19 22:17:06'),
(146, 57, 290, NULL, '2017-07-14 02:16:40', '2017-07-19 22:17:06'),
(147, 60, 350, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(148, 60, 351, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(149, 60, 352, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(150, 60, 353, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(151, 60, 354, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(152, 60, 355, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(153, 60, 356, 55, '2017-07-14 02:43:54', '2017-07-14 02:43:54'),
(154, 67, 247, 169.99, '2017-07-14 02:53:51', '2017-07-14 02:53:51'),
(155, 67, 248, 199, '2017-07-14 02:53:51', '2017-07-14 02:53:51'),
(156, 71, 291, 229, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(157, 72, 292, 79, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(158, 72, 293, 154, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(159, 72, 294, 154, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(160, 72, 295, 154, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(161, 72, 296, NULL, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(162, 72, 297, NULL, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(163, 73, 274, 205, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(164, 73, 275, 345, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(165, 73, 276, 345, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(166, 73, 277, 345, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(167, 73, 278, 92.99, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(168, 73, 279, 279, '2017-07-14 02:58:32', '2017-07-14 02:58:32'),
(174, 75, 76, 119, '2017-07-14 02:58:32', '2017-07-14 19:23:30'),
(175, 75, 77, 119, '2017-07-14 02:58:32', '2017-07-14 19:23:30'),
(176, 75, 78, 119, '2017-07-14 02:58:32', '2017-07-14 19:23:30'),
(177, 75, 79, 119, '2017-07-14 02:58:32', '2017-07-14 19:23:30'),
(189, 76, 303, 99, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(190, 76, 304, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(191, 76, 305, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(192, 76, 306, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(193, 77, 307, 133, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(194, 77, 308, 29, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(196, 78, 287, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(197, 78, 288, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(198, 78, 289, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(199, 78, 290, 139, '2017-07-14 19:29:39', '2017-07-14 19:29:39'),
(200, 79, 357, NULL, '2017-07-14 19:34:32', '2017-07-14 19:34:32'),
(201, 58, 264, NULL, '2017-07-14 19:53:30', '2017-07-14 19:53:30'),
(202, 80, 358, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(203, 80, 359, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(204, 80, 360, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(205, 80, 361, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(206, 81, 362, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(207, 81, 363, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(208, 81, 364, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(209, 81, 365, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(210, 82, 120, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(211, 82, 121, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(212, 82, 122, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(213, 82, 123, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(214, 83, 64, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(215, 83, 65, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(216, 83, 66, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(217, 83, 67, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(218, 83, 366, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(219, 83, 367, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(220, 83, 368, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(221, 83, 369, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(222, 83, 370, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(223, 83, 371, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(224, 84, 309, 89, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(225, 85, 310, 54.99, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(226, 85, 311, 28.99, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(227, 85, 312, 28.99, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(228, 85, 313, 28.99, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(229, 86, 243, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(230, 86, 244, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(231, 86, 245, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(232, 86, 246, NULL, '2017-07-14 20:00:45', '2017-07-14 20:00:45'),
(233, 87, 307, 133, '2017-07-14 20:10:23', '2017-07-14 20:10:23'),
(234, 87, 308, 39, '2017-07-14 20:10:23', '2017-07-14 20:10:23'),
(236, 88, 238, 132, '2017-07-14 20:10:23', '2017-07-14 20:10:23'),
(237, 88, 239, 199, '2017-07-14 20:10:23', '2017-07-14 20:10:23'),
(238, 88, 240, 199, '2017-07-14 20:10:23', '2017-07-14 20:10:23'),
(239, 88, 241, 199, '2017-07-14 20:10:23', '2017-07-14 20:10:23'),
(240, 89, 99, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(241, 89, 100, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(242, 89, 101, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(243, 89, 102, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(244, 89, 103, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(245, 90, 40, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(246, 90, 41, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(247, 90, 42, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(248, 90, 43, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(249, 91, 358, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(250, 91, 359, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(251, 91, 360, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(252, 91, 361, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(253, 92, 56, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(254, 92, 57, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(255, 92, 58, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(256, 92, 59, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(257, 92, 60, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(258, 92, 61, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(259, 92, 62, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(260, 92, 63, NULL, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(261, 93, 314, 84, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(262, 94, 291, 239, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(263, 95, 315, 99, '2017-07-14 20:22:34', '2017-07-14 20:22:34'),
(264, 96, 128, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(265, 96, 129, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(266, 96, 130, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(267, 96, 131, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(268, 96, 372, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(269, 96, 373, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(270, 96, 374, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(271, 96, 375, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(272, 96, 376, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(273, 97, 95, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(274, 97, 96, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(275, 97, 97, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(276, 97, 98, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(277, 98, 44, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(278, 98, 45, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(279, 98, 46, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(280, 98, 47, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(281, 99, 357, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(282, 100, 291, 239, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(283, 101, 287, 140, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(284, 101, 288, 133, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(285, 101, 289, 133, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(286, 101, 290, 133, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(287, 102, 266, NULL, '2017-07-14 20:59:09', '2017-07-14 20:59:09'),
(288, 103, 358, NULL, '2017-07-14 22:20:34', '2017-07-14 22:20:34'),
(289, 103, 359, NULL, '2017-07-14 22:20:34', '2017-07-14 22:20:34'),
(290, 103, 360, NULL, '2017-07-14 22:20:34', '2017-07-14 22:20:34'),
(291, 103, 361, NULL, '2017-07-14 22:20:34', '2017-07-14 22:20:34'),
(292, 104, 377, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(293, 105, 64, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(294, 105, 65, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(295, 105, 66, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(296, 105, 67, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(297, 105, 366, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(298, 105, 367, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(299, 105, 368, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(300, 105, 369, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(301, 105, 370, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(302, 105, 371, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(303, 106, 357, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(304, 107, 1, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(305, 107, 3, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(306, 107, 4, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(307, 107, 5, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(308, 107, 6, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(309, 107, 7, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(310, 108, 128, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(311, 108, 129, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(312, 108, 130, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(313, 108, 131, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(314, 108, 372, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(315, 108, 373, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(316, 108, 374, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(317, 108, 375, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(318, 108, 376, NULL, '2017-07-14 22:26:48', '2017-07-14 22:26:48'),
(319, 109, 378, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(320, 109, 379, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(321, 109, 380, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(322, 109, 381, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(323, 110, 262, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(324, 111, 249, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(325, 111, 250, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(326, 111, 251, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(327, 111, 252, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(328, 112, 265, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(329, 113, 315, 133, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(330, 114, 274, 224, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(331, 114, 275, 344, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(332, 114, 276, 344, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(333, 114, 277, 344, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(334, 114, 278, NULL, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(335, 114, 279, NULL, '2017-07-14 22:29:09', '2017-07-20 05:15:57'),
(336, 115, 316, 54.99, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(337, 115, 317, 54.99, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(338, 115, 318, 54.99, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(339, 115, 319, 54.99, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(340, 115, 320, 54.99, '2017-07-14 22:29:09', '2017-07-14 22:29:09'),
(341, 115, 321, 54.99, '2017-07-14 22:29:10', '2017-07-14 22:29:10'),
(343, 116, 128, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(344, 116, 129, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(345, 116, 130, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(346, 116, 131, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(347, 116, 372, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(348, 116, 373, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(349, 116, 374, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(350, 116, 375, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(351, 116, 376, NULL, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(352, 117, 357, 199, '2017-07-14 22:37:22', '2017-07-14 22:37:22'),
(355, 118, 128, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(356, 118, 129, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(357, 118, 130, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(358, 118, 131, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(359, 118, 372, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(360, 118, 373, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(361, 118, 374, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(362, 118, 375, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(363, 118, 376, NULL, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(364, 119, 329, 149, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(365, 119, 330, 149, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(366, 119, 331, 149, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(367, 119, 332, 149, '2017-07-17 19:25:44', '2017-07-17 19:25:44'),
(368, 120, 164, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(369, 120, 167, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(370, 120, 168, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(371, 120, 169, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(372, 120, 170, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(373, 120, 171, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(374, 120, 172, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(375, 120, 173, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(376, 120, 174, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(377, 120, 175, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(378, 120, 176, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(379, 120, 177, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(380, 121, 40, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(381, 121, 41, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(382, 121, 42, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(383, 121, 43, NULL, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(384, 122, 307, 103.99, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(385, 122, 308, 27.29, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(387, 123, 334, 89.99, '2017-07-17 19:32:03', '2017-07-17 19:32:03'),
(388, 124, 16, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(389, 124, 17, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(390, 124, 18, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(391, 124, 19, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(392, 124, 20, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(393, 124, 21, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(394, 124, 22, NULL, '2017-07-17 19:35:27', '2017-07-17 19:35:27'),
(395, 125, 358, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(396, 125, 359, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(397, 125, 360, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(398, 125, 361, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(399, 126, 128, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(400, 126, 129, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(401, 126, 130, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(402, 126, 131, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(403, 126, 372, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(404, 126, 373, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(405, 126, 374, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(406, 126, 375, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(407, 126, 376, NULL, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(408, 127, 335, 129, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(409, 127, 336, 189, '2017-07-17 19:40:26', '2017-07-17 19:40:26'),
(410, 128, 357, NULL, '2017-07-17 19:49:02', '2017-07-17 19:49:02'),
(411, 129, 337, 90, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(412, 129, 338, 90, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(413, 129, 339, 90, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(414, 129, 340, 90, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(415, 130, 341, 79, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(416, 131, 342, 89, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(417, 131, 343, 99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(418, 131, 344, 99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(419, 131, 345, 99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(420, 131, 346, 49, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(421, 131, 347, 49, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(422, 131, 348, 49, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(423, 131, 349, 49, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(424, 132, 322, 154.99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(425, 132, 323, 229.99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(426, 132, 324, 229.99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(427, 132, 325, 229.99, '2017-07-17 20:01:35', '2017-07-17 20:01:35'),
(428, 133, 128, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(429, 133, 129, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(430, 133, 130, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(431, 133, 131, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(432, 133, 372, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(433, 133, 373, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(434, 133, 374, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(435, 133, 375, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(436, 133, 376, NULL, '2017-07-17 20:05:32', '2017-07-17 20:05:32'),
(437, 134, 337, NULL, '2017-07-17 20:13:44', '2017-07-17 20:13:44'),
(438, 134, 338, NULL, '2017-07-17 20:13:44', '2017-07-17 20:13:44'),
(439, 134, 339, NULL, '2017-07-17 20:13:44', '2017-07-17 20:13:44'),
(440, 134, 340, NULL, '2017-07-17 20:13:44', '2017-07-17 20:13:44'),
(443, 137, 337, NULL, '2017-07-17 20:34:12', '2017-07-17 20:34:12'),
(444, 137, 338, NULL, '2017-07-17 20:34:12', '2017-07-17 20:34:12'),
(445, 137, 339, NULL, '2017-07-17 20:34:12', '2017-07-17 20:34:12'),
(446, 137, 340, NULL, '2017-07-17 20:34:12', '2017-07-17 20:34:12'),
(447, 138, 238, 132, '2017-07-17 20:43:20', '2017-07-17 20:43:20'),
(448, 138, 239, 199, '2017-07-17 20:43:20', '2017-07-17 20:43:20'),
(449, 138, 240, 199, '2017-07-17 20:43:20', '2017-07-17 20:43:20'),
(450, 138, 241, 199, '2017-07-17 20:43:20', '2017-07-17 20:43:20'),
(451, 139, 238, 132, '2017-07-17 20:49:25', '2017-07-17 20:49:25'),
(452, 139, 239, 199, '2017-07-17 20:49:25', '2017-07-17 20:49:25'),
(453, 139, 240, 199, '2017-07-17 20:49:25', '2017-07-17 20:49:25'),
(454, 139, 241, 199, '2017-07-17 20:49:25', '2017-07-17 20:49:25'),
(455, 141, 238, NULL, '2017-07-17 21:05:36', '2017-07-17 21:05:36'),
(456, 141, 239, NULL, '2017-07-17 21:05:36', '2017-07-17 21:05:36'),
(457, 141, 240, NULL, '2017-07-17 21:05:36', '2017-07-17 21:05:36'),
(458, 141, 241, NULL, '2017-07-17 21:05:36', '2017-07-17 21:05:36'),
(459, 142, 267, NULL, '2017-07-17 21:05:36', '2017-07-17 21:05:36'),
(460, 28, 366, NULL, '2017-07-17 21:08:49', '2017-07-17 21:08:49'),
(461, 28, 367, NULL, '2017-07-17 21:08:49', '2017-07-17 21:08:49'),
(462, 28, 368, NULL, '2017-07-17 21:08:49', '2017-07-17 21:08:49'),
(463, 28, 369, NULL, '2017-07-17 21:08:49', '2017-07-17 21:08:49'),
(464, 28, 370, NULL, '2017-07-17 21:08:49', '2017-07-17 21:08:49'),
(465, 28, 371, NULL, '2017-07-17 21:08:49', '2017-07-17 21:08:49'),
(467, 144, 99, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(468, 144, 100, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(469, 144, 101, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(470, 144, 102, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(471, 144, 103, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(472, 145, 358, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(473, 145, 359, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(474, 145, 360, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(475, 145, 361, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(476, 146, 362, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(477, 146, 363, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(478, 146, 364, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(479, 146, 365, NULL, '2017-07-19 03:55:16', '2017-07-19 03:55:16'),
(480, 147, 377, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(481, 148, 337, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(482, 148, 338, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(483, 148, 339, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(484, 148, 340, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(485, 149, 128, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(486, 149, 129, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(487, 149, 130, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(488, 149, 131, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(489, 149, 372, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(490, 149, 373, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(491, 149, 374, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(492, 149, 375, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(493, 149, 376, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(494, 150, 128, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(495, 150, 129, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(496, 150, 130, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(497, 150, 131, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(498, 150, 372, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(499, 150, 373, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(500, 150, 374, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(501, 150, 375, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(502, 150, 376, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(503, 151, 128, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(504, 151, 129, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(505, 151, 130, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(506, 151, 131, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(507, 151, 372, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(508, 151, 373, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(509, 151, 374, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(510, 151, 375, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(511, 151, 376, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(512, 152, 128, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(513, 152, 129, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(514, 152, 130, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(515, 152, 131, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(516, 152, 372, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(517, 152, 373, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(518, 152, 374, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(519, 152, 375, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(520, 152, 376, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(521, 153, 128, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(522, 153, 129, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(523, 153, 130, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(524, 153, 131, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(525, 153, 372, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(526, 153, 373, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(527, 153, 374, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(528, 153, 375, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(529, 153, 376, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(530, 154, 213, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(531, 154, 214, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(532, 154, 215, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(533, 154, 216, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(534, 154, 217, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(535, 154, 218, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(536, 154, 219, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(537, 154, 220, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(538, 154, 221, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(539, 154, 222, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(540, 154, 223, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(541, 154, 224, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:42'),
(542, 155, 358, NULL, '2017-07-19 04:45:42', '2017-07-19 04:45:43'),
(543, 155, 359, NULL, '2017-07-19 04:45:43', '2017-07-19 04:45:43'),
(544, 155, 360, NULL, '2017-07-19 04:45:43', '2017-07-19 04:45:43'),
(545, 155, 361, NULL, '2017-07-19 04:45:43', '2017-07-19 04:45:43'),
(546, 158, 405, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(547, 158, 406, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(548, 158, 407, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(549, 158, 408, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(550, 159, 298, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(551, 159, 299, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(552, 159, 300, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(553, 159, 301, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(554, 159, 302, NULL, '2017-07-19 22:34:26', '2017-07-19 22:34:26'),
(555, 160, 298, 294, '2017-07-19 22:35:47', '2017-07-19 22:35:47'),
(556, 160, 299, 294, '2017-07-19 22:35:47', '2017-07-19 22:35:47'),
(557, 160, 300, 294, '2017-07-19 22:35:47', '2017-07-19 22:35:47'),
(558, 160, 301, 294, '2017-07-19 22:35:47', '2017-07-19 22:35:47'),
(559, 160, 302, 199, '2017-07-19 22:35:47', '2017-07-19 22:35:47'),
(560, 161, 238, NULL, '2017-07-19 22:39:23', '2017-07-19 22:39:23'),
(561, 161, 239, NULL, '2017-07-19 22:39:23', '2017-07-19 22:39:23'),
(562, 161, 240, NULL, '2017-07-19 22:39:23', '2017-07-19 22:39:23'),
(563, 161, 241, NULL, '2017-07-19 22:39:23', '2017-07-19 22:39:23'),
(564, 162, 409, 65, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(565, 162, 410, 65, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(566, 162, 411, 65, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(567, 162, 412, 65, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(568, 163, 128, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(569, 163, 129, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(570, 163, 130, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(571, 163, 131, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(572, 163, 372, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(573, 163, 373, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(574, 163, 374, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(575, 163, 375, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(576, 163, 376, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(577, 164, 95, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(578, 164, 96, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(579, 164, 97, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(580, 164, 98, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(581, 165, 95, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(582, 165, 96, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(583, 165, 97, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(584, 165, 98, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(585, 166, 44, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(586, 166, 45, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(587, 166, 46, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(588, 166, 47, NULL, '2017-07-19 22:55:01', '2017-07-19 22:55:01'),
(589, 167, 413, 239, '2017-07-19 23:00:23', '2017-07-19 23:00:23'),
(590, 167, 414, 199, '2017-07-19 23:00:23', '2017-07-19 23:00:23'),
(591, 168, 357, NULL, '2017-07-19 23:07:15', '2017-07-19 23:07:15'),
(592, 169, 385, 103.99, '2017-07-19 23:18:50', '2017-07-19 23:18:50'),
(593, 169, 386, 27.29, '2017-07-19 23:18:50', '2017-07-19 23:18:50'),
(594, 169, 387, 199.99, '2017-07-19 23:18:50', '2017-07-19 23:18:50'),
(595, 143, 327, NULL, '2017-07-19 23:23:01', '2017-07-19 23:23:01'),
(596, 170, 405, NULL, '2017-07-19 23:29:37', '2017-07-19 23:29:37'),
(597, 170, 406, NULL, '2017-07-19 23:29:37', '2017-07-19 23:29:37'),
(598, 170, 407, NULL, '2017-07-19 23:29:37', '2017-07-19 23:29:37'),
(599, 170, 408, NULL, '2017-07-19 23:29:37', '2017-07-19 23:29:37'),
(600, 171, 357, NULL, '2017-07-19 23:31:40', '2017-07-19 23:31:40'),
(601, 172, 357, NULL, '2017-07-19 23:32:49', '2017-07-19 23:32:49'),
(602, 173, 405, NULL, '2017-07-19 23:34:05', '2017-07-19 23:34:05'),
(603, 173, 406, NULL, '2017-07-19 23:34:05', '2017-07-19 23:34:05'),
(604, 173, 407, NULL, '2017-07-19 23:34:05', '2017-07-19 23:34:05'),
(605, 173, 408, NULL, '2017-07-19 23:34:05', '2017-07-19 23:34:05'),
(606, 142, 388, NULL, '2017-07-19 23:37:58', '2017-07-19 23:37:58'),
(607, 142, 389, NULL, '2017-07-19 23:37:58', '2017-07-19 23:37:58'),
(608, 142, 390, NULL, '2017-07-19 23:37:58', '2017-07-19 23:37:58'),
(609, 142, 391, NULL, '2017-07-19 23:37:58', '2017-07-19 23:37:58'),
(610, 142, 392, NULL, '2017-07-19 23:37:58', '2017-07-19 23:37:58'),
(611, 142, 393, NULL, '2017-07-19 23:37:58', '2017-07-19 23:37:58');

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
(11, 'RJ Young', 'Tex Malone', 'Tex.Malone@RJYoung.com', '8003471955', '2919 Sidco Dr', 'Nashville', 'TN', '37204', '2017-07-12 02:19:49', '2017-07-12 02:20:00'),
(12, 'CWI (Cartridge Warehouse International)', 'Sal Flores', 'sal@cwitoner.com', '(747)-888-9990', NULL, NULL, NULL, NULL, '2017-07-14 04:24:03', '2017-07-14 04:25:59'),
(13, 'Clover Imaging Group (MSE)', 'Customer Service', 'customerservice@cloverimaging.com', '866-734-6548', NULL, NULL, NULL, NULL, '2017-07-14 04:36:35', '2017-07-14 04:40:15');

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
  `enc_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `company_id`, `location_id`, `role_id`, `name`, `email`, `phone`, `password`, `enc_password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, 'Admin', 'jesse@pahoda.com', NULL, '$2y$10$o18D..He1koSqus6toW2FeGiUgCLeHLFP0azj2JoQqGtJMKfUBAKy', 'eyJpdiI6Ik5NcDB2TW1oTkV1RFFHbDVhekpybHc9PSIsInZhbHVlIjoiOWlvVlhZc1NmT2RwZmtcL0FqRkhDYzVcL3JPRitWUmlVOW5hXC9xcVFZOXVHbz0iLCJtYWMiOiJkYTRlNGFhZThjYjc4NjhkNzBiNWNkNDllYWIyNjQ5OTFjNGUwOTY2NDE2MTlkOWZjNDNiNDkyMDE0NjMxOTE3In0=', '7JynBMuXVkWS4As6eZz1CI3ZC0KisoDtscFLda76f3XCpLxfieMehsqBCFmY', '2017-05-01 12:44:15', '2017-07-19 14:09:02'),
(107, 30, 36, 2, 'Matt Wishart', 'MWishart@trinidadbenham.com', '(303) 220-1400', '$2y$10$SxGUQcQwGt22e.QTtyAI4Oq/pAOL1Ju.ET1QCYhpsgcE7bNKy7lvu', 'eyJpdiI6IkxDQXJPSCtFYmtqVStGM2p3ZDEyeVE9PSIsInZhbHVlIjoib0JGSnFsXC9cL1FTWGs1a3gzQ2h2YTFRPT0iLCJtYWMiOiJiMmM4YjViNGZmMjYwMmExYzhiM2RmNjc1NDdhMjIwYTU0ZmMyMmE2N2RlYjc0MTA2ZTIwYmZiM2YwMjY0ZjUwIn0=', 'boVYbXo6hS0tkmg5lytE7eRYdNVJ1JgCEENPfYB5qtknY0a5nZUIbHZ9ccgv', '2017-07-12 03:02:09', '2017-07-19 14:09:02'),
(108, 30, 36, 2, 'Rick Maestas', 'rmaestas@trinidadbenham.com', '(303) 220-1400', '$2y$10$3lcJDGztbrOuJhxPzSEq/eid4OdfGtok1PyNXeG0.hH6lMSqHIJzS', 'eyJpdiI6InRxdDdsdkhaUHdZYmJWYlpyaVlJOUE9PSIsInZhbHVlIjoiR1pOY3dvaUlSRDB3bXBjMFdjUzJrdz09IiwibWFjIjoiOTNjZmRjYjZiMTI3N2I4MGVmNTgyNWUzMDFmZDNkYTY2YmU5NWViNzA2MzE4ZjY3N2RiMTczNWY5Njg3MjgzMiJ9', 'taRMpW3D0nFSmMaUVs5z1duJpgJEFDoJdj6dBcnM9o2Bks400xfq6QkgstuO', '2017-07-12 03:07:02', '2017-07-19 14:09:02'),
(110, 31, NULL, 2, 'Mister Sample', 'Sample@sample.com', '3033334444', '$2y$10$mmXKQYSgbOuA0l6Alg0FsOeU2.gmftu1TOA/KvYj88iSHAYoTv9L.', 'eyJpdiI6Ilk0Wndxb3ZFMmh6VTFienlwMG8wWVE9PSIsInZhbHVlIjoiM0ZWaG9tRlZCTlM5MHR1RmFnNjdrdz09IiwibWFjIjoiOTNjMDdmNDU1YWIwNzdlYzMyNTZkM2U4MzUzNmQ3Nzc2ODc3ZTI0NjU5NzliYzFiNjRmMDJjMmUzZjFjZTBhNiJ9', '1SnjQNcvd6qDY2cHrz51zXpCTr7qhcufZU8R905j9Q8tccFfKE5xeo9G74qQ', '2017-07-12 03:13:42', '2017-08-08 16:58:42'),
(113, NULL, 39, 3, 'New user', 'Carlsbad', NULL, '$2y$10$fEon3liy/W9LiMFbEt/e7eVXYjxQjFTG3xKl2ZsbPLGzrhDqI1VX.', 'eyJpdiI6Ind0N2J0c2t3RldZOUx6UWJpVEVwUUE9PSIsInZhbHVlIjoiaDhNQm8xdmZsSkh4ZkhIRVJRbm0rQT09IiwibWFjIjoiNzc0MWM4YmUyZDJkMjk2ODg5YmJhMzM0N2EyMTZiNzVlMWNjOGMzNzk0M2ZjNjA2OTMwNDlkZTIwNTNlOTU5NCJ9', NULL, '2017-07-12 03:18:26', '2017-07-19 14:09:02'),
(115, NULL, 37, 3, 'New user', 'sample1@sample.com', NULL, '596556eb36907', 'eyJpdiI6IlkxSEtyM3Vzcnl3Q3dnekFodzR6c3c9PSIsInZhbHVlIjoiOUJRWDI3TG85QmNRTlhHc3VObFRIZz09IiwibWFjIjoiMzUxODUwODc1YjE2NWNiMDAxYTU5MTAwZGJmOTEwZTAxMTU2NTY1MmY1NDEzNjdlN2FiYzA1MDNkZjNlMWUwZCJ9', 'E7nzxGFjV5sIT26tufOszbiQKPKKEA7vUcLCVb7ffSwEdlUg5W4NJM0XoL4Y', '2017-07-12 03:53:31', '2017-07-19 14:09:02'),
(116, 31, NULL, 2, 'Ms Sample', 'Sample2@sample.com', '3033334444', '$2y$10$Eda3SfnEdRyHHy36oY1d8O9IFTP52557gsbyvdo.Y6BhO/ZKfFikW', 'eyJpdiI6IlwvM25NMEgyWEFqamhCZnJoNFFIYUxBPT0iLCJ2YWx1ZSI6IjN5UjFpc1lIQ2MrcFVhcEV3M084aEE9PSIsIm1hYyI6ImM0ZTFmZmIwN2RkNmMyMmQ0ODllNTI2NDJlMmQ2YjZmZDI0OGY4YjZmMGI5ZjNhNjYzMmQxNmVkYzBiYjM1YTIifQ==', 'qySIypcLeDst3HqhVQZL0ycjgU3yiUo31QEKOHbhse6Um1DDWP0Tsr8zVtOo', '2017-07-12 04:09:42', '2017-07-19 14:09:02'),
(117, 31, NULL, 2, 'Test User', 'sales@pahoda.com', '123-324-2322', '$2y$10$0N7yHDCmxGM6ske3H2MWzOehXkyf8q35F205WMYhrcRoASV2ePjim', 'eyJpdiI6IjRvTlVIbG9RZERSY3lcL1RyUlVtNDV3PT0iLCJ2YWx1ZSI6InR3K0FUOEQ0aE9NSElKY3d6Q1lrVlE9PSIsIm1hYyI6IjkxYTlmODJkOTA0MDg5MjVmZmI4NTM2M2U3ZWM4Mjc0YWMyMDE5MmExMDJjOGVlMTI0ZjU2MjlmYjNiMDhjNmMifQ==', NULL, '2017-07-12 05:03:50', '2017-07-19 14:09:02'),
(118, NULL, 40, 3, 'Sterling Clerk', 'sterlingclerk@trinidadbenham.com', '970-522-3595', '$2y$10$LNkt0HkABbEvz/Akku1XRuaP/fQpKZapr7tZUYTwTxZ2DYONOi4qK', 'eyJpdiI6IjFTWDN5dHcydlhOVHUrYldwM243VGc9PSIsInZhbHVlIjoiRUs3dXhnNlk1ZWQ1TkJRUzJEU1ZCQT09IiwibWFjIjoiNjIwYmViMzJiMjA0YWMxYWJkNDljM2VkYjg2YmZiYTc3NjdlZTZmMjljZGVkOTFhODY3ZDUxZWVmNDcwZDM5ZSJ9', NULL, '2017-07-12 05:09:37', '2017-07-19 14:09:02'),
(119, NULL, 41, 3, 'La Vergne Clerk', 'lvclerk@trinidadbenham.com', NULL, '$2y$10$55MVUmFfl9BCiwsLCia5QOd/UEYqai8igHyIOrJ/Qj7IDeYpD98Da', 'eyJpdiI6Ild6UkJieUxuRkt4aGZjSjhXc3cwdnc9PSIsInZhbHVlIjoiWmQxUmQwbkVWOTRcL0dQcUF0S1FzMUE9PSIsIm1hYyI6ImJlMDdhNzQ5YTM2NzRmZDIyY2E1MDIzZmE1ZDA1ZTVmY2UzYWQ2NDk2ZDdiMTdiNjczYjhjNmMzOWIyNjM5OGEifQ==', NULL, '2017-07-12 05:24:25', '2017-07-19 14:09:02'),
(120, 33, NULL, 2, 'Brad Crook', 'Brad.Crook@moyewhite.com', NULL, '$2y$10$BlbYnInXrTUhzNi/1TUkL.IvDtVqUGrt6cGquxmgFo61gIzUlrXcW', 'eyJpdiI6Ik5LM3lOY2o0Y0xxZnJ1YmVKRVV3aFE9PSIsInZhbHVlIjoiZ1VPc2V5aGZYclE0dEFoMENwUzZIUT09IiwibWFjIjoiYzc3MjM5MzM5YTUzNWE1NjI3YTY1NWYyNzA4MTExNGZhZTY0NDczZmRlMDM3ZGI1ZGU0OTJmYjBjNzk1M2FiNiJ9', 'pfxOQhtvaaOV9DVjjIaQVuwcMJHp7cRPtvWOO2Kh3TNwCTM76mZb6zj614Mq', '2017-07-12 07:15:37', '2017-07-19 14:09:02'),
(121, NULL, 42, 3, 'New user', 'Denver', NULL, '$2y$10$yq5U6JlOVN5Paa.hjK6s7.HUA0ZwYuNedW7Xgxa963sDltRY9wpoa', 'eyJpdiI6ImZJXC8rdUNNRGpNaVl4SHlKN1U0UVNnPT0iLCJ2YWx1ZSI6IjhRZFRWRXYwMjRCSE5qSTFZWVViY2c9PSIsIm1hYyI6ImNkNDNkMzAxZTM0OTdjMzJiNjIyMjBhNTY4Yjg4Y2I3NDY5ZGI2NzgyNTE3NjA3ZmU3Y2Y5MDc4ZWNiYzA1NWQifQ==', NULL, '2017-07-12 07:17:09', '2017-07-19 14:09:02'),
(122, NULL, NULL, 1, 'Alex', '12toydolls46@gmail.com', NULL, '$2y$10$y5Z0H7p.8ckspx0vQXidLekXDdbA.XzC4h9EK7XF9eSRhr8RKk7KW', 'eyJpdiI6IllRU0tyNVFQREhWXC81QmVXZ0M3b2pBPT0iLCJ2YWx1ZSI6IkdOR09oS2habStZYytDVml4QmFER0E9PSIsIm1hYyI6ImQ5OWViNTUxOTJlN2YyZTJiOTZjOTExN2VlYjI2MzE3MzBkZTI3ZWJhYjYyMTZlNzA0MjkwNDhlMGE5ZDgxNzgifQ==', 'layunDXnmmIE0prPGunizbDQ5XQlUP2UnKC0bJJNxvCuwwVHz9XJzCkb8Xgb', NULL, '2017-07-21 21:13:11'),
(142, 39, NULL, 2, 'New user', 'bharding@pahoda.com', NULL, '$2y$10$5VX647/Xyva2Pa4qxnFPs.veuJ45o81KTbJS5GsahDJqECj4LFfKW', 'eyJpdiI6IlRzd3RDblwvS1ZpSUNJTEJDR3B0aDl3PT0iLCJ2YWx1ZSI6InNUWUNGeVV6WU9BdFwvTmpxb1RCQ2l3PT0iLCJtYWMiOiJmMDE4YzI5YmEyYmI1MzMzMzc2YThkMjQwOTQyZjllODIyYmMzOTRlMmY0YmEwOGRlY2RiNDJmZjBlODc3YTEyIn0=', NULL, '2017-07-12 21:47:14', '2017-07-19 14:09:02'),
(146, NULL, 36, 3, 'Joyce Voyles', 'mineolaclerk@trinidadbenham.com', '903-569-2636 X 1127', '$2y$10$mCCbdk02OaJmGLLrUIMw9OXSyjoqwBdObUMhaBJgEViQ8hTx7gfP.', 'eyJpdiI6Im9mS2Z4VDlKdjNMTUJDdmVmQ3IxdEE9PSIsInZhbHVlIjoidjZ5U1k0bXZWY3gxZmpENFZhQzF5Zz09IiwibWFjIjoiNTI4OWRiMDA5OWNlMzZjY2FiZTllMmNiN2NlYTY4ZGE0YTQzMjU0NDA5N2Y0NmVkYTRiYTU5MmRlMjJiMWUzOCJ9', '8lCJrg2kAqbUzLPmJgcg2YLfNPFZTOoRXtb4qX4EzDslZwIDemJDtn29ymPe', '2017-07-13 22:53:26', '2017-07-19 14:09:02'),
(148, NULL, 54, 3, 'Mel Kijek', 'MKijek@trinidadbenham.com', '303-773-4985', '$2y$10$Y99JKMMbtXXqw7BW8XFNcu6Ftizune2RQgt0.xPBXZ6Zqw4kYsTPe', 'eyJpdiI6IjZtY3FUYkNUT3JVbVJWREFMZGQzckE9PSIsInZhbHVlIjoiZTBJbWpMMVNCa3lkbWI0MzBVM3h5dz09IiwibWFjIjoiNjlmMjM0ZWMzNTVhMWZjMzY3ZWE3ZTQzNDRiOWVhZTcxOTg3OTIwZjVhZmMwMjBhZDlhZDgwMzBjNmI2YmE1MiJ9', 'dNZ1cMTvVqGILkN2lQl0FKKpEiZ65GLu0A952ARmoDezuX1MwhLHpCRO9qmb', '2017-07-13 23:06:42', '2017-07-19 14:09:02'),
(151, NULL, 57, 3, 'New user', 'greeleyclerk@trinidadbenham.com', NULL, '$2y$10$L/ScmDVe2E.OyCDWlyS.1eMzBdIfTakEx7m1fb351tdsP84Zqmeei', 'eyJpdiI6IndzVDN6R0JKYXFaUkJ3U3laQkRCRnc9PSIsInZhbHVlIjoiR2NNcGhJeHhTNXFobjVoaXRUclhYQT09IiwibWFjIjoiYjhkOWI2ODFjOGM4ZThhOWRjZDk5YWE0ODA5N2Y0OTI4Y2ZiZTZkOWEzMjQ0NDJjNDhhZGU0MTY1OThkYzI2NCJ9', 'BFQPf7JdHvQMkaEznKbI0eUgW54UCRYhGzJckvkJ4zPNPhxMmbfYKgsMpA0Y', '2017-07-14 19:24:31', '2017-07-19 14:09:02'),
(152, NULL, 55, 3, 'Hazelton Clerk', 'hazeltonclerk@trinidadbenham.com', '208-829-5411', '5968dfbc9c944', 'eyJpdiI6Ikg0bjRyUW82OVZvQWR5RkFDMnB2K1E9PSIsInZhbHVlIjoidUgya3JpSUVPakh5OVd4OEVPWWdEQT09IiwibWFjIjoiZWM4MWYzMmI5YmIzZGQ2ZjQ4OWY3MTMyOWRhYWM3OWU2NmY3NWJiNTBkNzZmOTE1NTI2Yzg1NTE3NzhiNDhjOCJ9', NULL, '2017-07-14 20:14:05', '2017-07-19 14:09:02'),
(153, NULL, 58, 3, 'JOYCE ZAMORA', 'vernalispackclerk@trinidadbenham.com', '209-892-9002', '$2y$10$X7d/j3LhIQWJblrTDbIv6ujzDuresqg7sRDevsdnurr9jaT0aW1qK', 'eyJpdiI6ImxNQ1RGYmw4WmRXNExuVGsrYkRqXC9RPT0iLCJ2YWx1ZSI6IlJDSlQ1cXNYRFwvV1ppaHM2RmNsS3NRPT0iLCJtYWMiOiJmZTRjZGFkMmFiNDI4MzUyMGJmY2Y3M2NhYzA5NzdkNTk5NTQ4OTk4MjMxNzY5YWRiYWQwM2I1NDAyMDQ1YzIzIn0=', '9dIfo7wIW6zAOQrVzloAhGNaQLliZ6xXVuwckzwKLDaPQLJTo3eeFKHITPtf', '2017-07-14 20:32:49', '2017-07-19 14:09:02'),
(154, NULL, 59, 3, 'ANNA GARCIA', 'lagrangeclerk@trinidadbenham.com', '706-812-2100', '$2y$10$6Ku7wuH0xi56xgTaTHRMg.PGR/IeTiprZBSpTd8/NLmyWwFKdLDL2', 'eyJpdiI6IkR6K2pXUENjQ0xUalZ1d2ZEZW5wRWc9PSIsInZhbHVlIjoiRTFyeVQ5akJiRWsyc2NlMXhrZDFSdz09IiwibWFjIjoiNDY2MTI2ZTQ3ZDQzOThiNDVjN2RkMGFjZjA3NWJiMjZkMGMyMDJmZWQ5NDlmZjA4NGExNjkwMWU4NjcwNTdmZCJ9', NULL, '2017-07-14 22:13:17', '2017-07-19 23:07:15'),
(155, NULL, 60, 3, 'TED STANDAGE', 'tstandage@trinidadbenham.com', '308-762-1688', '$2y$10$YvkWyzXQfkWxrDLI41IAfu4G2HDhDGiE5vmQCwRrE0i65lFmOepQC', 'eyJpdiI6IjZFeDBZdXJlcTZEeFhKK1NPUTRUb2c9PSIsInZhbHVlIjoiR1hCNmdRUEZsbWdpc1hcL1l5NVlcL3lRPT0iLCJtYWMiOiI0NTU0ZDA5M2NlMGM5Y2E0ZWEzM2RmZGZmNDI1YjM0MzA5MGUyMTQwOWZjYzgzMDVkY2JlNjM1ZTViMzZiNmUxIn0=', NULL, '2017-07-14 22:35:00', '2017-07-19 14:09:02'),
(156, NULL, 61, 3, 'BRIDGEPORT CLERK', 'bridgeportclerk@trinidadbenham.com', '308-262-1361', '$2y$10$Fdt1SuiA24ol.Nw4bB81NeiP19X8mJB4aVRdGjvAu2CjhwmhEhdM6', 'eyJpdiI6Ik1VcTIrbStJYzJFU1wvNWpva25GV2JnPT0iLCJ2YWx1ZSI6IkVudXVwMVQrS0JMZ3ZxTTZlZFpOUnc9PSIsIm1hYyI6ImIxMmU5NTZkOThiNDgzNzE5ZjZlYjkyMDQ1NWMzYTVhYWIwNGUxNzkzMWIxZDI3NDc3NWIxZGUzYzdiZDAxZGEifQ==', NULL, '2017-07-17 19:22:16', '2017-07-19 14:09:02'),
(157, NULL, 62, 3, 'LARRY SCHECTMAN', 'lschectman@trinidadbenham.com', '909-627-7535X3104', '$2y$10$cJ1G8mUH7FvE/wvmz2cR9ubPugUE2TQB8teN8RwxrPX7rM9cX.Tni', 'eyJpdiI6IlNsSjc3N3JpR2VtcWtkWUx4NHNrR2c9PSIsInZhbHVlIjoiTFlmcFwvM1J3eERzb3Azc1IzMkg1Vnc9PSIsIm1hYyI6IjA3N2U1Nzk1ZjFhN2RhMjhiMGJkOGE4NTY0ZmE3MDM0MmYxZTI5OTQ3YzVmZTQxNGMxN2JjNTUxOTRkMjAyOGYifQ==', NULL, '2017-07-17 19:26:57', '2017-07-19 14:09:02'),
(158, NULL, 63, 3, 'Gale McCormick', 'gmccormick@TrinidadBenham.com', '308-882-4363', '$2y$10$fe1Mj1jmBfLRwV6LqgF9Ze/UC4PDKus0OTh53UejrvdV46t8Gnzvm', 'eyJpdiI6ImtIb3hMYTBCeUdiVnkycVBXTVBCNmc9PSIsInZhbHVlIjoiK0daMnA3TGpjc1VYaW8xTjByNW1zZz09IiwibWFjIjoiZDNjMmY0YzM0NmM4Y2M3YmUzZGU4NWJiNTZiY2YzYmU4Yzg2YTY4NTgxOGJlYjg5YmY3YjMxZDNlZmZkNGI5MyJ9', NULL, '2017-07-17 19:33:30', '2017-07-19 14:09:02'),
(159, NULL, 64, 3, 'LAURA SAEPHAN', 'pattersonclerk@trinidadbenham.com', '209-892-9051', '$2y$10$Gx4hz/YriNrOINaWlnt3xejcDrkXnRoB24Pa7C89.j8jlxXooOuyq', 'eyJpdiI6IkVqZU4wWUJqK3VTXC93WUxHMXk3dG9BPT0iLCJ2YWx1ZSI6Ing5cDZOcXBjeHpOWXRRYWNMaW1aeWc9PSIsIm1hYyI6ImI0MTZiMjI1OTIxZDI4MmFhNDVlYjc5MjAwZGMzYmQ5N2M5MTkwZWFmYzlhMTZmOTYwZmE4YzBjNDNhNGRlNmQifQ==', NULL, '2017-07-17 19:36:42', '2017-07-19 14:09:02'),
(160, NULL, 65, 3, 'BRANDI DELUNA', 'bdeluna@trinidadbenham.com', '303-220-1400', '$2y$10$1dCG0fyrMB.iqXeKJr5fau9EDInFkUglzo6Av2gisAg1GzkeKFgP6', 'eyJpdiI6IkcyemQzWm1Hbk52YXQ2UWlJQk12MVE9PSIsInZhbHVlIjoiWmxHSHhSc0hDeEpjeDlLc2RWUHRGQT09IiwibWFjIjoiNmM4Y2YyMTYzNjg2MTI4ZTZlNjVhOTVkMGIxNWQ1MzJjMGRhMjM5ZDBkY2U0NjQ3NDc1NDFlMWY2N2E1YzIxNiJ9', NULL, '2017-07-17 19:46:52', '2017-07-19 14:09:02'),
(161, NULL, 66, 3, 'Martin Franco', 'sysadminalert@trinidadbenham.com', NULL, '$2y$10$UXfQ5V/9vxzUI82BToLB5ODEjUPCiIMnQwSuPcsB.ZtdDuJbVzOKW', 'eyJpdiI6IllQNVJGNnpjTmR1WjkyYVFZRkE0QkE9PSIsInZhbHVlIjoiSWdWSFVvcHNpXC9uMFdTTnBxOGQyNEE9PSIsIm1hYyI6IjhiMmY0YmFjM2E2ZmQzNmEwZTcwNGI1YWFmYTMzYTYzOTljYjNmOGRkM2RlYTk4NzQxMmVhNDYzYTBmODE3MmQifQ==', NULL, '2017-07-17 19:52:16', '2017-07-19 14:09:02'),
(162, NULL, 67, 3, 'Brooke Sims', 'bsims@trinidadbenham.com', '479-715-6518', '$2y$10$6G5KrTFb6V8nhMgJ/b5CD.Y9DAZNP1qxusdDySQXL6WQ846TJFJpm', 'eyJpdiI6ImFheGk1NTNZOHZMRENUVUFWcUhQZnc9PSIsInZhbHVlIjoiQW5GS3ZBemJxdFFhYTBiZzZ3TDhjZz09IiwibWFjIjoiMjFmZmIwZWU5YzlhOTBkZGQwNmQ0MDRkZjRiNWQzNTdiNjkwNGRmNDg5YzQ5ODIxZGU1NGM0Yzc3YzQ2OTU4MyJ9', NULL, '2017-07-17 20:03:27', '2017-07-19 14:09:02'),
(163, NULL, 68, 3, 'JOHN BECKELMAN', 'jbeckelman@trinidadbenham.com', '303-773-4985', '$2y$10$T97TBSgVq3.FrBOm0LQpnOsuZ4vsBfXFrTLUmI2qXGRloqv5nbgse', 'eyJpdiI6IjZVYUV3a1FCVFNHMXo5d0tTWmRNQ2c9PSIsInZhbHVlIjoiQTJJWlJ5Y004ZkNFVGRaSENoYzIzZz09IiwibWFjIjoiYjZjY2EzOTBlMjc1ZDk3YmRmZmYzMWU2NjQxYTBlNWQ0YmI3NTEyYTJjY2MxYWY0OTBhZWZlY2NkZDJhMzg5NSJ9', NULL, '2017-07-17 20:07:12', '2017-07-19 14:09:02'),
(164, NULL, 69, 3, 'Colgate Clerk', 'colgateclerk@trinidadbenham.com', '701-945-2580', '$2y$10$KHxg.1K1MDtCfwuohOgipO8DprLk3QszYFDgU/f.oXa191nSV3BgC', 'eyJpdiI6IjVYdGJydHMrSE1KYm8yK1hkcVwvR0V3PT0iLCJ2YWx1ZSI6IlZMaG9DZHM1OEtGT3A1b0t5Y0t0bGc9PSIsIm1hYyI6Ijg5MDIyYTIxZDhkNWNlZjllNjBiNzYyNTNiZGM5ODE4ZjhkNGQzNmEwNTI3ZWU0NGVhZmMwNGUwN2M4ZTY4ZmMifQ==', NULL, '2017-07-17 20:17:31', '2017-07-19 14:09:02'),
(165, NULL, 70, 3, 'PILLSBURY CLERK', 'pillsburyclerk@trinidadbenham.com', '701-945-2709', '$2y$10$iIHjV.AMLYOSJHaoabno4.sRZH/FsrXk6VBHr9wWMpS0dVLFaPxzW', 'eyJpdiI6IjNFM0U3dzlodXdiXC9OTGVpbzl2UGh3PT0iLCJ2YWx1ZSI6Ik04MDl4S2VxaEZNZ3BPeHJ6NzhwV2c9PSIsIm1hYyI6IjViYTBhYzEyNWUxM2NkZDQ1OTNhMGM1MjkwNTRmOWU2NDYwZWEzM2U1NzVmNzg4N2M5NWEyNTMwZjlhZTI2MTUifQ==', NULL, '2017-07-17 20:26:30', '2017-07-19 14:09:02'),
(166, NULL, 71, 3, 'ELAINE ATCHINSON', 'eatchison@trinidadbenham.com', '904-779-0255', '$2y$10$76A3.mAkiWE0oUmNLTUns.vPt/zD7LvNvGY0Rz9N2/MMCeT4GidvC', 'eyJpdiI6InVvU2tkU1doblwvdE94ckpOaENlYUlnPT0iLCJ2YWx1ZSI6IlNsSTU0SFJRdkJ6QndcL3JONFY5Z1J3PT0iLCJtYWMiOiIzYWQzY2VmNjM0ZjRjMTBiNjJlMTI2ODJkMWQ1ZmU5OGZmNWI3N2JmZWE3YTg5Zjc0ZjZmODAzZWY3ZmI3MzdmIn0=', NULL, '2017-07-17 20:31:33', '2017-07-19 14:09:02'),
(167, NULL, 72, 3, 'Kevin Somerville', 'alpinefencing@aol.com', NULL, '$2y$10$9G5AT9xbLo40LdTAAKiD7eSoMfD1eJ1zfWqfYUjssLZRsm7v/uBvG', 'eyJpdiI6Im1hTzJjWmV3VGYrM0owMXNHbVVoenc9PSIsInZhbHVlIjoiZVY4K0JUelBacWtjNkZTQnlPV2x2UT09IiwibWFjIjoiMzc0M2IyY2Q0N2YzMDY1NTExYWFkODQwNmQ4ZmVlYWUxNThhZGEzZDViZDgxZjg2Mzk0OTllODkxOTBjN2VjMSJ9', '8blXSj8RKAHnD1NrPeTYKTvztE2VvgPhGvF5MjZup1qp316YiyGY0y2OL1ys', '2017-07-17 20:40:43', '2017-07-19 14:09:02'),
(169, NULL, 74, 3, 'New user', 'a', NULL, '$2y$10$M693in8byIvr9FkMJgP8KesadxDk2.CYsYMMgpMdyjs.tTm1yhbk.', 'eyJpdiI6IlFcL2ErU1JBdjRDRnVXaDNMSzVWU2dBPT0iLCJ2YWx1ZSI6IjJJd0x4dmdyUG9LVXIxOXN5Zkt5eVE9PSIsIm1hYyI6ImVmM2VlYzZhNDBlNjQwNTQxZjhlMjk0NTgzMzYzOWQ3OTc2Y2ZlYWRjNDE2N2Q0MzQ5NzQyYTk4Mjc4NDkzYmMifQ==', NULL, '2017-07-17 21:03:05', '2017-07-19 14:09:02');

-- --------------------------------------------------------

--
-- Структура таблицы `video_links`
--

CREATE TABLE `video_links` (
  `id` int(11) NOT NULL,
  `device_id` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `video_links`
--

INSERT INTO `video_links` (`id`, `device_id`, `link`, `created_at`, `updated_at`) VALUES
(2, 1, 'https://www.youtube.com/watch?v=YVhxcpItk_M', '2017-07-12 17:35:58', '2017-07-12 17:47:45'),
(5, 1, 'https://www.youtube.com/watch?v=wh3FCjeynuY', '2017-07-12 17:48:43', '2017-07-12 17:48:50'),
(6, 47, 'http://www.support.xerox.com/support/workcentre-7545-7556/video/enus.html?&associatedProduct=XRIP_WC7525_base&contentId=121780', '2017-07-20 23:18:57', '2017-07-20 23:19:19');

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
-- Индексы таблицы `video_links`
--
ALTER TABLE `video_links`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT для таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;
--
-- AUTO_INCREMENT для таблицы `device_units`
--
ALTER TABLE `device_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT для таблицы `meter_reads`
--
ALTER TABLE `meter_reads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT для таблицы `order_supply_item`
--
ALTER TABLE `order_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `service_tickets`
--
ALTER TABLE `service_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;
--
-- AUTO_INCREMENT для таблицы `supply_item_units`
--
ALTER TABLE `supply_item_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=612;
--
-- AUTO_INCREMENT для таблицы `supply_providers`
--
ALTER TABLE `supply_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
--
-- AUTO_INCREMENT для таблицы `video_links`
--
ALTER TABLE `video_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
