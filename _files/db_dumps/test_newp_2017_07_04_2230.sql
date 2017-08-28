-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 04 2017 г., 18:30
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_newp`
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `companies`
--

INSERT INTO `companies` (`id`, `user_id`, `company_name`, `address`, `city`, `state`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, 2, 'Trinidad Benham', '111', '222', '333', '444', '2017-06-17 20:00:00', '2017-07-04 02:36:22'),
(4, 7, 'Sponge Bob 555 Ltd.', NULL, NULL, NULL, NULL, '2017-06-21 11:15:43', '2017-06-21 12:19:14'),
(13, 21, 'Bebebe company', NULL, NULL, NULL, NULL, '2017-07-02 16:02:25', '2017-07-03 01:01:19'),
(14, NULL, 'New company', NULL, NULL, NULL, NULL, '2017-07-04 02:05:52', '2017-07-04 02:05:52'),
(15, NULL, 'Disney', NULL, NULL, NULL, NULL, '2017-07-04 02:08:13', '2017-07-04 04:12:39'),
(16, NULL, 'New company', NULL, NULL, NULL, NULL, '2017-07-04 02:31:21', '2017-07-04 02:31:21'),
(17, NULL, 'New company', NULL, NULL, NULL, NULL, '2017-07-04 02:31:35', '2017-07-04 02:31:35'),
(18, NULL, 'New company', NULL, NULL, NULL, NULL, '2017-07-04 02:55:27', '2017-07-04 02:55:27'),
(19, NULL, 'New company', NULL, NULL, NULL, NULL, '2017-07-04 02:55:28', '2017-07-04 02:55:28');

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
(24, NULL, 34, 'New user', 'dd@ee.rr5555566', NULL, '2017-07-04 04:54:22', '2017-07-04 04:54:22');

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
(1, 'copier', 'Xerox', 'WorkCentre 4265', 'photo.jpg', '2017-06-21 08:17:55', '2017-06-28 11:52:22'),
(2, 'printer', 'Xerox', 'WorkCentre1234', NULL, '2017-06-21 09:44:14', '2017-06-22 06:03:46'),
(3, 'other', 'Apple', 'Iphone 6s', NULL, '2017-06-21 12:21:31', '2017-06-21 12:21:45');

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
(9, 3, 9);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `device_units`
--

INSERT INTO `device_units` (`id`, `device_id`, `location_id`, `supply_provider_id`, `service_provider_id`, `asset_number`, `serial_number`, `lease_expiration`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, 'ddd', '2', '2017-05-05', '2017-06-21 09:35:51', '2017-06-26 08:09:50'),
(3, 1, 3, NULL, NULL, 'aaa', NULL, NULL, '2017-06-21 09:36:38', '2017-06-21 09:36:38'),
(4, 1, 6, NULL, NULL, 'bbb', NULL, NULL, '2017-06-21 12:21:16', '2017-06-21 12:21:16'),
(8, 3, 2, 2, 2, 'vvv', '1111', '2016-01-01', '2017-06-25 08:34:41', '2017-06-26 08:26:53');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `company_id`, `friendly_name`, `address`, `city`, `state`, `zip_code`, `special_instructions`, `created_at`, `updated_at`) VALUES
(2, 0, 1, 'NYC', 'Whats2', 'Up3', 'Dude4', '666', 'Don\'t smoke here', '2017-06-20 16:30:33', '2017-06-26 08:47:54'),
(3, 0, 1, 'Disneyland', 'rrr', 'ttt', '222', 'qaaaa', NULL, '2017-06-20 16:31:06', '2017-06-28 11:41:39'),
(4, 0, 1, 'Yo', '5', '6', '7', '8', NULL, '2017-06-20 16:31:26', '2017-06-20 16:31:39'),
(5, 0, 2, 'Ass', 'fewrfew', NULL, NULL, NULL, NULL, '2017-06-21 09:41:25', '2017-06-21 09:43:54'),
(6, 0, 4, 'Good', 'Street', '1', '2', '3', NULL, '2017-06-21 12:20:31', '2017-06-21 12:21:07'),
(34, NULL, 1, 'HelloWorld', '1', '2', '3', '4', '5', '2017-07-04 04:54:22', '2017-07-04 04:54:58');

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
(20, '2017_07_04_160917_create_service_tickets_table', 14);

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `location_id`, `created_at`, `updated_at`) VALUES
(2, 2, '2017-07-04 07:51:43', '2017-07-04 07:51:43'),
(3, 2, '2017-07-04 09:15:35', '2017-07-04 09:15:35'),
(4, 2, '2017-07-04 09:53:03', '2017-07-04 09:53:03');

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
(5, 4, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(2, 'Beetle Juice', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2017-06-26 14:26:33', '2017-06-26 08:26:33'),
(3, 'Pahoda Image Products', 'Laine Dobson', 'support@pahoda.com', '(720) 598-8082', '14143 Denver West Parkway', 'Lakewood', 'CO', '80401', '2017-06-28 14:43:49', '2017-06-28 11:43:49');

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
(3, 2, 'fff', '444', '2017-07-04 09:53:17', '2017-07-04 09:53:17');

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
(1, '106R02733', 'Metered High Capacity Toner Cartridge check', 'Toner for Xerox 4265 Toner test', 20000, NULL, '2017-06-28 18:46:26'),
(3, '113R00776', 'WC 4265 Drum  check', 'Drum for Xerox WC 4265 test', 100000, '2017-06-25 01:25:52', '2017-06-28 18:46:26'),
(4, NULL, 'New supply item1', NULL, 0, '2017-06-28 18:45:23', '2017-07-04 04:43:00'),
(5, NULL, 'New supply item2', NULL, 0, '2017-06-28 18:55:22', '2017-07-04 04:43:00'),
(6, NULL, 'New supply item3', NULL, 0, '2017-06-28 18:55:23', '2017-07-04 04:43:00'),
(7, NULL, 'New supply item4', NULL, 0, '2017-06-28 18:55:24', '2017-07-04 04:43:00'),
(8, NULL, 'Cool spinner', NULL, 0, '2017-07-04 05:57:05', '2017-07-04 05:57:27'),
(9, NULL, 'Vaporizer', NULL, 0, '2017-07-04 06:28:26', '2017-07-04 06:28:49');

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
(16, 8, 8, 55, '2017-07-04 05:59:42', '2017-07-04 05:59:42');

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
(3, 'Pahoda Image Products', 'Laine Dobson', 'support@pahoda.com', '7205988082', '14143 Denver West Parkway', 'Lakewood', 'CO', '80401', '2017-06-28 11:44:04', '2017-06-28 11:44:19');

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
(1, NULL, NULL, 1, 'Admin', 'admin@admin.com', NULL, '$2y$10$0mUH2lM4b1yJ6CiNCN1ZHORzlEfGtMqK5gPrIY/iWInDvIamGEPRW', 'AA4SRb2qjVLkYaYDlWZslmUIXzZT5CCgCTSRJG63tva28EpAAosM25715NhG', '2017-05-01 12:44:15', '2017-07-02 14:09:22'),
(2, 1, NULL, 2, 'Jack Russell', 'user@user.com', '23423433', '$2y$10$Ww9GHSFBCZORMqj7mHYCs.rNzWRBoG/3z5mqTwrcCqAUv4r2eoj6e', 'ZoWgmHzGIDUhOke8aYQXWV0GcTRUADAzH13AfA5oR7jITHf9Ye01WUASLsB1', '2017-05-06 10:52:24', '2017-07-04 02:36:50'),
(21, 1, NULL, 2, 'New userww', 'bebebe@gmail.com', '2342', '$2y$10$mQFABrVLyQ6WoAaYoDLE9.yrMylbL7JlFVXLIZV60fMRIKjapg4HW', '6pzboIyYorT61ZPh5En3ZpIKG68S3fHqeSy8ty9CG2Q1LqFyF95tHEpNBrnP', '2017-07-02 16:02:25', '2017-07-04 02:36:51'),
(37, 0, 2, 3, 'New user', 'www@ww.ff', NULL, '$2y$10$f/widKZNvrcyv.jIT9gZc.T671ngAeTnkoKjJHT7DV1/2FyJJgwhe', NULL, '2017-07-03 09:17:32', '2017-07-03 09:17:32'),
(39, NULL, NULL, 3, 'New user', 'ss@k.gg', NULL, '$2y$10$lxrRDmhElIEP37KaD21tn.9t4Gr8tgFuNuFTKv87M.Z253pUj.KtW', NULL, '2017-07-03 09:23:59', '2017-07-03 09:23:59'),
(42, NULL, NULL, 3, 'New user', 'ss@ss.ss', NULL, '$2y$10$CcleM5ZdRW59EtySj0892uf8cv1U1qklMMPqGRTdKtB7owhq6nzMi', NULL, '2017-07-03 09:30:29', '2017-07-03 09:30:29'),
(43, NULL, NULL, 3, 'New user', 'ss@k.gg22', NULL, '$2y$10$buQPZF4/CCF.SgIat3Sa5u9qpOFH2yMTg8fdJIU72XnIFn7fWND6G', NULL, '2017-07-03 09:32:39', '2017-07-03 09:32:39'),
(85, NULL, 2, 3, 'New user', 'admin@admin.com22', NULL, '595b63d9041a6', NULL, '2017-07-04 03:46:01', '2017-07-04 03:46:01'),
(86, NULL, 2, 3, 'New user', 'loc@loc.com', NULL, '$2y$10$rnvHkpeSKCNSYQQRoG8sG.FeTFaLqQUM1.sHUE/XxwKjKZQ95A3Ty', 'XMcOxJnObsfpPwxrQpyskuYNN9pIe45md6YaaCrABiT4xkRWP47XywP5FLyj', '2017-07-04 04:03:05', '2017-07-04 04:05:05'),
(90, 15, NULL, 2, 'John', 'admin@ddd.ee', '1233', '$2y$10$1KwvdgF17jaR31F3LfuhruktB2Yv.aJeMYq7d7e0m3iMOZosbZ9KK', NULL, '2017-07-04 04:18:51', '2017-07-04 04:19:39'),
(91, 15, NULL, 2, 'Jack', 'ddd@ddd2222', '12345', '$2y$10$3nQpfI9D3VE6HUV/3Skdd.1H1gncYXIE5dG0NoTasQjow5Ej4Gxne', NULL, '2017-07-04 04:19:49', '2017-07-04 04:20:01'),
(93, 1, 33, 3, 'New user', 'dd@ee.rr5555', NULL, '$2y$10$wOPQSK47eUU89ItlMFqp6OOyFna0JYXd3RPPvOYLkrd5Z3442m0dm', NULL, '2017-07-04 04:53:50', '2017-07-04 04:53:50'),
(94, 1, 34, 3, 'Jack', 'dd@ee.rr5555566', NULL, '$2y$10$4C5NDSXAexfwiQdqQVmVQ.D9w38PjvTm2lLVpTMj8ynQ9UZq6WgTy', '3nBrcf3a53Kwozlmpq2zyhtdw2Soih9yStbKKOFgOVoNuxvpZGAfHCCo70GW', '2017-07-04 04:54:22', '2017-07-04 04:59:56');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `device_units`
--
ALTER TABLE `device_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `order_supply_item`
--
ALTER TABLE `order_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `service_tickets`
--
ALTER TABLE `service_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `supply_item_units`
--
ALTER TABLE `supply_item_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `supply_providers`
--
ALTER TABLE `supply_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
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
