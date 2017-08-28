-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июн 26 2017 г., 20:03
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
(1, 2, 'Trinidad Benham', 'Street 123', 'Colorado22233', 'USA', '234', '2017-06-17 20:00:00', '2017-06-18 15:49:43'),
(4, 7, 'Sponge Bob 555 Ltd.', NULL, NULL, NULL, NULL, '2017-06-21 11:15:43', '2017-06-21 12:19:14');

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `company_id`, `name`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 1, 'Jack', '2', '3', '2017-06-18 16:33:12', '2017-06-26 09:38:35'),
(4, 1, 'John', '5', '6', '2017-06-20 07:54:19', '2017-06-26 09:38:36'),
(5, 1, 'Leonardo777', '8', '9', '2017-06-20 07:54:51', '2017-06-26 09:38:50');

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
(1, 'copier', 'Canon', 'HolidayCenter 567', 'photo.jpg', '2017-06-21 08:17:55', '2017-06-25 00:08:34'),
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
(3, 1, 3);

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
(1, 1, 2, 1, 1, '1', '2', '2017-05-05', '2017-06-21 09:35:51', '2017-06-26 08:09:50'),
(3, 1, 3, NULL, NULL, NULL, NULL, NULL, '2017-06-21 09:36:38', '2017-06-21 09:36:38'),
(4, 1, 6, NULL, NULL, NULL, NULL, NULL, '2017-06-21 12:21:16', '2017-06-21 12:21:16'),
(8, 3, 2, 2, 2, '3h3h3', '1111', '2016-01-01', '2017-06-25 08:34:41', '2017-06-26 08:26:53');

-- --------------------------------------------------------

--
-- Структура таблицы `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
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

INSERT INTO `locations` (`id`, `company_id`, `friendly_name`, `address`, `city`, `state`, `zip_code`, `special_instructions`, `created_at`, `updated_at`) VALUES
(2, 1, 'Damn1', 'Whats2', 'Up3', 'Dude4', '666', 'Shower this copier every morning222', '2017-06-20 16:30:33', '2017-06-26 08:47:54'),
(3, 1, 'Fuck', 'rrr', 'ttt', '222', 'qaaaa', NULL, '2017-06-20 16:31:06', '2017-06-21 07:58:26'),
(4, 1, 'Yo', '5', '6', '7', '8', NULL, '2017-06-20 16:31:26', '2017-06-20 16:31:39'),
(5, 2, 'Ass', 'fewrfew', NULL, NULL, NULL, NULL, '2017-06-21 09:41:25', '2017-06-21 09:43:54'),
(6, 4, 'Good', 'Street', '1', '2', '3', NULL, '2017-06-21 12:20:31', '2017-06-21 12:21:07');

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
(17, '2017_06_23_122556_create_supply_item_units_table', 11);

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
(2, 'company', '2017-05-05 20:00:00', '2017-05-05 20:00:00');

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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `service_providers`
--

INSERT INTO `service_providers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Check prov', '2017-06-25 12:03:41', '2017-06-25 06:03:41'),
(2, 'Beetle Juice', '2017-06-26 14:26:33', '2017-06-26 08:26:33');

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
(1, '234', 'wer', 'wer', 3, NULL, NULL),
(3, '2e2e23', 'WWW', 'werwr23', 2333, '2017-06-25 01:25:52', '2017-06-25 01:38:12');

-- --------------------------------------------------------

--
-- Структура таблицы `supply_item_units`
--

CREATE TABLE `supply_item_units` (
  `id` int(10) UNSIGNED NOT NULL,
  `supply_item_id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `supply_providers`
--

CREATE TABLE `supply_providers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `supply_providers`
--

INSERT INTO `supply_providers` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'RRRR', '2017-06-25 05:10:30', '2017-06-25 05:20:23'),
(2, 'YYY', '2017-06-25 05:20:46', '2017-06-25 05:20:54');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$sX9HGWRZi.XJotHhSNY.j.THuwirz/YEksVwjT.dCc3lsWgVG6..C', 'H4iDbDVqC9qDeHmyxWcjMqkkqEUkOXfR2Bo7V2WZBji9rsTeRm0N51YVYXK1', '2017-05-01 12:44:15', '2017-05-01 12:44:15'),
(2, 'user@user.com', 'user@user.com', '$2y$10$Ww9GHSFBCZORMqj7mHYCs.rNzWRBoG/3z5mqTwrcCqAUv4r2eoj6e', 'sQc9fAnPKCzjCIzrYTnvfbCCAilYEfAaps5fXixqHJ3Mad1dwbdJJNlygMnA', '2017-05-06 10:52:24', '2017-06-18 17:10:31'),
(7, NULL, NULL, '$2y$10$.q6Zimy.CjVaNBgSDOxoBuLWPZWT22hOPaAheudcVMLM4Hwnt//hC', NULL, '2017-06-21 11:15:43', '2017-06-21 11:15:43'),
(8, NULL, NULL, '$2y$10$tglXXUx8GBlIWt0TlvsaWeZfDW0XZDd5UpUIAp65XBf87uklgAkpW', NULL, '2017-06-22 03:43:40', '2017-06-22 03:43:40'),
(9, NULL, NULL, '$2y$10$Ag0o.5D5D3q9GvOjDPUhH.NJ5cKPGMjpC7A2IvMZFDKmnet9IBmee', NULL, '2017-06-22 03:45:14', '2017-06-22 03:45:14'),
(10, NULL, NULL, '$2y$10$SEnF.KAsEV0d/MmBDM00huvMHbdNlEmhCWV0mfFUKg7YpdKTIVwwe', NULL, '2017-06-22 03:45:27', '2017-06-22 03:45:27'),
(11, NULL, NULL, '$2y$10$cFAheKXPjf1rNnwWuH6O3ehZWzH08euU3IgAabafgX4lFch4sqjfm', NULL, '2017-06-22 03:45:52', '2017-06-22 03:45:52');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `device_supply_item`
--
ALTER TABLE `device_supply_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `device_units`
--
ALTER TABLE `device_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `service_providers`
--
ALTER TABLE `service_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `supply_items`
--
ALTER TABLE `supply_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `supply_item_units`
--
ALTER TABLE `supply_item_units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `supply_providers`
--
ALTER TABLE `supply_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
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
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
