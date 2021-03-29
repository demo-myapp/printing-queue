-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 05:10 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `printing_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Site Administrator'),
(2, 'user', 'Regular User');

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 2),
(2, 4),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'user@gmail.com', 4, '2021-03-22 10:46:31', 1),
(2, '::1', 'admin@gmail.com', 2, '2021-03-22 18:23:07', 1),
(3, '::1', 'user@gmail.com', 4, '2021-03-22 18:23:23', 1),
(4, '::1', 'admin@gmail.com', 2, '2021-03-22 18:29:28', 1),
(5, '::1', 'user@gmail.com', 4, '2021-03-22 18:36:17', 1),
(6, '::1', 'admin@gmail.com', 2, '2021-03-22 19:00:54', 1),
(7, '::1', 'user@gmail.com', 4, '2021-03-22 20:14:09', 1),
(8, '::1', 'admin@gmail.com', 2, '2021-03-22 20:14:29', 1),
(9, '::1', 'admin@gmail.com', 2, '2021-03-22 20:18:29', 1),
(10, '::1', 'user@gmail.com', 4, '2021-03-22 20:20:00', 1),
(11, '::1', 'admin@gmail.com', 2, '2021-03-22 20:20:15', 1),
(12, '::1', 'user@gmail.com', 4, '2021-03-23 00:32:56', 1),
(13, '::1', 'admin@gmail.com', 2, '2021-03-23 00:33:11', 1),
(14, '::1', 'admin@gmail.com', 2, '2021-03-23 03:26:17', 1),
(15, '::1', 'admin@gmail.com', 2, '2021-03-23 03:31:15', 1),
(16, '::1', 'user@gmail.com', 4, '2021-03-23 09:40:18', 1),
(17, '::1', 'admin@gmail.com', 2, '2021-03-23 09:40:52', 1),
(18, '::1', 'admin@gmail.com', 2, '2021-03-23 09:45:40', 1),
(19, '::1', 'user@gmail.com', 4, '2021-03-23 09:45:51', 1),
(20, '::1', 'user', NULL, '2021-03-23 10:10:09', 0),
(21, '::1', 'user@gmail.com', 4, '2021-03-23 10:10:18', 1),
(22, '::1', 'admin@gmail.com', 2, '2021-03-23 10:15:42', 1),
(23, '::1', 'admin@gmail.com', 2, '2021-03-23 10:20:21', 1),
(24, '::1', 'user@gmail.com', 4, '2021-03-23 10:21:14', 1),
(25, '::1', 'user@gmail.com', 4, '2021-03-23 10:22:01', 1),
(26, '::1', 'admin@gmail.com', 2, '2021-03-23 10:23:42', 1),
(27, '::1', 'admin@gmail.com', 2, '2021-03-23 10:24:24', 1),
(28, '::1', 'user@gmail.com', 4, '2021-03-23 10:24:43', 1),
(29, '::1', 'admin@gmail.com', 2, '2021-03-23 10:25:45', 1),
(30, '::1', 'user@gmail.com', 4, '2021-03-23 10:25:58', 1),
(31, '::1', 'user@gmail.com', 4, '2021-03-23 10:26:09', 1),
(32, '::1', 'admin@gmail.com', 2, '2021-03-23 10:26:44', 1),
(33, '::1', 'user@gmail.com', 4, '2021-03-23 18:39:42', 1),
(34, '::1', 'user@gmail.com', 4, '2021-03-24 03:11:03', 1),
(35, '::1', 'user@gmail.com', 4, '2021-03-24 09:32:31', 1),
(36, '::1', 'user@gmail.com', 4, '2021-03-24 21:45:04', 1),
(37, '::1', 'user@gmail.com', 4, '2021-03-25 05:25:17', 1),
(38, '::1', 'user2', NULL, '2021-03-25 10:10:36', 0),
(39, '::1', 'user2@gmail.com', 5, '2021-03-25 10:11:15', 1),
(40, '::1', 'user2@gmail.com', 5, '2021-03-25 10:11:24', 1),
(41, '::1', 'user@gmail.com', 4, '2021-03-25 10:35:57', 1),
(42, '::1', 'user@gmail.com', 4, '2021-03-25 18:08:36', 1),
(43, '::1', 'user2@gmail.com', 5, '2021-03-25 18:55:03', 1),
(44, '::1', 'user@gmail.com', 4, '2021-03-25 20:23:06', 1),
(45, '::1', 'admin@gmail.com', 2, '2021-03-25 21:29:10', 1),
(46, '::1', 'user@gmail.com', 4, '2021-03-25 21:37:46', 1),
(47, '::1', 'admin@gmail.com', 2, '2021-03-25 21:38:09', 1),
(48, '::1', 'user@gmail.com', 4, '2021-03-25 21:40:36', 1),
(49, '::1', 'admin@gmail.com', 2, '2021-03-25 21:40:50', 1),
(50, '::1', 'user@gmail.com', 4, '2021-03-25 22:47:26', 1),
(51, '::1', 'user@gmail.com', 4, '2021-03-26 02:20:35', 1),
(52, '::1', 'admin@gmail.com', 2, '2021-03-26 03:27:36', 1),
(53, '::1', 'admin@gmail.com', 2, '2021-03-26 10:10:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permissions`
--

INSERT INTO `auth_permissions` (`id`, `name`, `description`) VALUES
(1, 'manage-users', 'Manage All Users'),
(2, 'manage-profile', 'Manage User\'s Profile');

-- --------------------------------------------------------

--
-- Table structure for table `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(9, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1616427215, 1),
(13, '2021-03-24-042804', 'App\\Database\\Migrations\\Order', 'default', 'App', 1616573401, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `title` varchar(100) NOT NULL,
  `format` varchar(5) NOT NULL,
  `document` varchar(100) NOT NULL,
  `note` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'In Queue',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `username`, `title`, `format`, `document`, `note`, `status`, `created_at`, `updated_at`) VALUES
(3, 'user', 'IT Support', 'WORD', 'tugasku.pdf', '<p>tes</p>', 'Done', '2021-03-24 04:44:44', '2021-03-25 22:40:42'),
(4, 'user', 'IT Support', 'EXCEL', 'tugasku.pdf', '<p>tesss</p>', 'In Queue', '2021-03-24 04:46:05', '2021-03-24 04:46:05'),
(5, 'user', 'IT Support', 'PDF', 'tugasku.pdf', '<p>tes</p>', 'In Queue', '2021-03-24 05:33:14', '2021-03-24 05:33:14'),
(12, 'user', 'Yang berubah judul', 'EXCEL', 'Pamflet Nyetir.pdf', '<p>tesss</p>', 'In Queue', '2021-03-25 07:28:13', '2021-03-25 07:47:11'),
(13, 'user2', 'Yang berubah judul', 'WORD', 'Macam.docx', '<p>tesss</p>', 'In Queue', '2021-03-25 10:11:51', '2021-03-25 10:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `whatsapp` varchar(13) DEFAULT NULL,
  `user_image` varchar(255) NOT NULL DEFAULT 'default.png',
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `name`, `whatsapp`, `user_image`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'admin@gmail.com', 'admin', 'admin', NULL, 'default.png', '$2y$10$j/BZKnUOm4O074ARfB1VteLcT52VXtxIPc77STAOpeu/xMdF5mUZu', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-22 10:35:12', '2021-03-22 10:35:12', NULL),
(4, 'user@gmail.com', 'user', 'user', NULL, 'default.png', '$2y$10$JfvkUi70Xs0n5NToXMxTO.ZeI7BLsv9ZpwaezAJPDBz8w/c2gPSaq', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-22 10:40:36', '2021-03-22 10:40:36', NULL),
(5, 'user2@gmail.com', 'user2', 'user2', NULL, 'default.png', '$2y$10$8c5Us.2/KjcxSuTxIq2adu.66C3opjoMoguVwrV69vV.J/WbCKVgy', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2021-03-25 10:11:04', '2021-03-25 10:11:04', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indexes for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indexes for table `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indexes for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
