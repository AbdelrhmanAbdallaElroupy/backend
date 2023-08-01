-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2023 at 05:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_resets_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_07_31_130038_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('03a858238386fd304fe4da5c049a964463cc8c35fd9881f7ebe0e71eb20e31c57c08300bfc742d8d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:07:02', '2023-08-01 10:07:02', '2024-08-01 13:07:02'),
('10b0097dcf2623e5eb21ac2ec288463db0586fdcb8497a77253a603fb1c738469c5e90c33fa234ad', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:17:18', '2023-08-01 10:17:18', '2024-08-01 13:17:18'),
('1be31988872c6f6028420bffac6d158e9083c84e6aa714eebc4c32a4174ba5dd55564a132092489f', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:18:57', '2023-08-01 10:18:57', '2024-08-01 13:18:57'),
('231d6ead317d3f54bf05360221c648f33a4f3474b5028db3f3b046ebae640be53701ecc07210603d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 11:32:30', '2023-08-01 11:32:30', '2024-08-01 14:32:30'),
('2bce033d6ef2d272263eaba7173b64ed46e0bab0cdedf8b5d9418ba857918187e4858243b3989e71', 3, 1, 'Laravel Password Grant Client', '[]', 0, '2023-07-31 11:31:40', '2023-07-31 11:31:40', '2024-07-31 14:31:40'),
('3199e7975d0b13b9aa7081cc10814f2dba1e098163b1df341c10cf0f59c8518c9a4abf5facdaf092', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:48:47', '2023-08-01 10:48:47', '2024-08-01 13:48:47'),
('40d77c846fd9e29dd2b2cfc2d0dd2df668f984c898a6efa91204b1680a3c0e0ff3bc48bd06b502fd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:06:31', '2023-08-01 10:06:31', '2024-08-01 13:06:31'),
('44f840d087cf112f2533b755d376d1cae58c1304299d945cc70835689d7037c0ca46754ba8dfdac4', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:08:46', '2023-08-01 10:08:46', '2024-08-01 13:08:46'),
('4efded378584f566a6e3a85d523dffda24e8b680b5469d397eb6b2e64451110e6ba3846259cc04da', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:15:48', '2023-08-01 10:15:48', '2024-08-01 13:15:48'),
('5299e290a611bcb5c6f2193812b6dd8b162f577047f714450d15ff59aa4f4ad783c79f08ee3bb7d4', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-07-31 12:00:00', '2023-07-31 12:00:00', '2024-07-31 15:00:00'),
('618d55bec103f1f4e0a841d4e04bfdf1d5e119d57662e2adc26236142dc977205411d4bf8cf35f88', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:17:40', '2023-08-01 10:17:40', '2024-08-01 13:17:40'),
('6caf94bf84dcf7423073ead45edd78d95288b2aac34d93699d069d246163c032a1bf403f064e1952', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:04:07', '2023-08-01 10:04:07', '2024-08-01 13:04:07'),
('6e172c1e80c743d31dd63b1d31c51a26e2aa28bd3b9d65c397184815e5c5ae8d9c70f98ce23895fd', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:05:44', '2023-08-01 10:05:44', '2024-08-01 13:05:44'),
('88dc11e5f79e9ec19d72fb5788de8e4475fd8aa21755b39190b4befed905e92c97e3649d9d874044', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 09:59:52', '2023-08-01 09:59:53', '2024-08-01 12:59:52'),
('8a50d8e0a3e1e65a2bc4a627bda7fbde20d1e3ffdf4063e786a8830a9e87be8bb9e45ae4a4154ceb', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:26:49', '2023-08-01 10:26:49', '2024-08-01 13:26:49'),
('95006ab8139e984881fccf4863b829acd45426661e6826abb70c0398ba54a2534dd37e9951ad32ea', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 09:58:04', '2023-08-01 09:58:04', '2024-08-01 12:58:04'),
('a7e11e603a1c3017e0f2bf981b94353e6199173ec826373a9d277b029d0c712550e09868defa6010', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:10:35', '2023-08-01 10:10:35', '2024-08-01 13:10:35'),
('a83ca7e35be8624042b023348ee3b8f1ad1e928392fc31c09bd1f8f1fb75e1eafb4addc6ac2b4b91', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:19:47', '2023-08-01 10:19:47', '2024-08-01 13:19:47'),
('b076653f9b7133f133f1049a2fc80eb7e98ccc6e6ad05f290a14184092ac1f02777b2d6764ea9ef1', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:31:13', '2023-08-01 10:31:13', '2024-08-01 13:31:13'),
('b0bbd404c81c966c77ff0cb09033291320d954baf89d8d5977b26b059038c04648b4d5ec7a0584ab', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:00:38', '2023-08-01 10:00:38', '2024-08-01 13:00:38'),
('b81c16c86e25f56cc197cde1c10f22e68e60009be5e4086f36ca9b2411412d19817f5dbedaddfbc9', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:14:32', '2023-08-01 10:14:32', '2024-08-01 13:14:32'),
('bf510f7ed9001a3ba821bd26dd4d39ac96d5e03e258cb1452193ffa4b77044941dcb9f07fb0aff75', 1, 1, 'Laravel Password Grant Client', '[]', 1, '2023-07-31 11:29:20', '2023-07-31 11:29:41', '2024-07-31 14:29:20'),
('c9b606b0c0248b59c9dac08a6f7db59127fd377790288e3c4bcd9994bf2b9194f481679ff96b21bd', 1, 3, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 13:52:47', '2023-08-01 13:52:47', '2024-08-01 16:52:47'),
('d01d984968b664e9a4741ad2960e7b0a1e6f0727b6848d18170e419da6ef72bf9e9d23d969367f89', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:31:35', '2023-08-01 10:31:35', '2024-08-01 13:31:35'),
('dc641806fd912d4937a0e72a236f63e93081e71aad8611c51da97e97d3d517f09dc5aaa7c97c0dea', 1, 1, 'Laravel Password Grant Client', '[]', 1, '2023-07-31 11:23:45', '2023-07-31 11:28:52', '2024-07-31 14:23:45'),
('de9f84336ee2e18a858c476c683050045d4c83a8c13c86891c7b27275af5617b779ca710a88888a0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:24:07', '2023-08-01 10:24:07', '2024-08-01 13:24:07'),
('eeaae5dafc8ad4804804450a36f8e972e9f923d010a06a1a85b236744d244921be22f76ba4516a7d', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2023-08-01 10:09:51', '2023-08-01 10:09:51', '2024-08-01 13:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '99vgrruEr0dqwNdZIxaQESjYW44EJShAyduahi8C', NULL, 'http://localhost', 1, 0, 0, '2023-07-31 10:44:00', '2023-07-31 10:44:00'),
(2, NULL, 'Laravel Password Grant Client', 'nMmDka0mDHrMOQ5PB1e4qEnzwc92xtssgobvczdL', 'users', 'http://localhost', 0, 1, 0, '2023-07-31 10:44:00', '2023-07-31 10:44:00'),
(3, NULL, 'Laravel Personal Access Client', 'Ix2iOFhkeNNZNkVBFRWgUIHUaAsyjzl4HJE6Uo1s', NULL, 'http://localhost', 1, 0, 0, '2023-08-01 13:51:58', '2023-08-01 13:51:58'),
(4, NULL, 'Laravel Password Grant Client', 'Ny9eyjeCbi4Cq5y3cDfiQ6sEmmY59NtUU8drVKS6', 'users', 'http://localhost', 0, 1, 0, '2023-08-01 13:51:59', '2023-08-01 13:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-07-31 10:44:00', '2023-07-31 10:44:00'),
(2, 3, '2023-08-01 13:51:59', '2023-08-01 13:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'Laravel Password Grant Client', '007ae4cdb3c2cb449d5832d0f5553c69aeff756c3ee803a7bd6ae7c499c3220e', '[\"*\"]', NULL, '2023-07-31 11:10:23', '2023-07-31 11:10:23'),
(2, 'App\\Models\\User', 2, 'Laravel Password Grant Client', '3d1cfd865f40fcb90e0fbf529e30d615c18d325ea4aff4b293333d0226b63b40', '[\"*\"]', NULL, '2023-07-31 11:11:46', '2023-07-31 11:11:46'),
(3, 'App\\Models\\User', 1, 'Laravel Password Grant Client', 'f940e3a3a8da4bdea300f81abe20f893eb5501d2f2b1cf5ae559488ba0bc839d', '[\"*\"]', NULL, '2023-07-31 11:12:57', '2023-07-31 11:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint UNSIGNED NOT NULL,
  `taskName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dueDate` date DEFAULT NULL,
  `isCompleted` tinyint(1) NOT NULL DEFAULT '0',
  `owner_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `taskName`, `description`, `dueDate`, `isCompleted`, `owner_id`, `created_at`, `updated_at`) VALUES
(2, 'First Task1', 'My First', '2023-07-31', 1, 1, '2023-07-31 12:21:50', '2023-08-01 12:06:06'),
(5, 'test', 'ggggg', '2023-08-16', 0, 1, '2023-08-01 12:06:00', '2023-08-01 12:06:00'),
(6, 'test', 'ggggg', '2023-08-16', 0, 1, '2023-08-01 12:06:09', '2023-08-01 12:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Abdulrhman', 'abdelrhmanabdalla11@gmail.com', NULL, '$2y$10$P9FsZDc.VNjBt1OvtBaqxuHTWuptaX47KaYN.GszwdqrtYwQIJH7q', NULL, '2023-07-31 11:10:23', '2023-07-31 11:10:23'),
(2, 'Abdulrhman', 'abdelrhmanabdalla@gmail.com', NULL, '$2y$10$DT2Wo394EaLxA6ndq4fMpeR0iRy6vODVNZHiQB4oN.KmpNmi0w0hq', NULL, '2023-07-31 11:11:46', '2023-07-31 11:11:46'),
(3, 'Abdulrhman', 'abdelrhmanabdalla@gmail.com12', NULL, '$2y$10$BPntGHF/LpmOS4v46wqF0OkJnX3L7G5kPNcvCZ9o5ZLSYtZH9xDDa', NULL, '2023-07-31 11:31:40', '2023-07-31 11:31:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
