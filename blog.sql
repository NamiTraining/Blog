-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 12:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `image`, `parent`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, NULL, 0, '2024-04-21 08:44:53', '2024-04-24 06:51:43', NULL),
(22, NULL, 21, '2024-04-21 08:45:50', '2024-04-24 06:51:43', '2024-04-24 06:51:43'),
(23, NULL, 21, '2024-04-23 09:28:19', '2024-04-24 06:51:43', '2024-04-24 06:51:43'),
(24, NULL, 0, '2024-04-23 09:29:07', '2024-04-24 06:51:50', '2024-04-24 06:51:50'),
(25, NULL, 24, '2024-04-23 09:42:11', '2024-04-24 06:51:50', '2024-04-24 06:51:50'),
(26, NULL, 0, '2024-04-23 11:22:48', '2024-04-24 06:51:58', '2024-04-24 06:51:58'),
(27, NULL, 0, '2024-04-24 06:37:26', '2024-04-24 06:52:06', NULL),
(28, NULL, 0, '2024-04-24 06:41:09', '2024-04-24 06:52:15', '2024-04-24 06:52:15'),
(29, NULL, 0, '2024-04-24 06:42:36', '2024-04-24 06:52:23', '2024-04-24 06:52:23'),
(30, NULL, 0, '2024-04-24 06:48:15', '2024-04-24 06:52:31', '2024-04-24 06:52:31'),
(31, NULL, 0, '2024-04-24 06:50:04', '2024-04-24 06:52:38', '2024-04-24 06:52:38'),
(32, 'images/bfbb8ba7-5b6e-4a5e-8102-9be6e50983346614823.png', 0, '2024-04-24 06:51:15', '2024-04-24 06:57:00', '2024-04-24 06:57:00'),
(33, NULL, 0, '2024-04-24 06:56:50', '2024-04-24 06:56:50', NULL),
(34, 'images/9c17f383-c429-4836-b3f0-3aea27ae78d5article-icon-suitable-for-a-wide-range-of-digital-creative-projects-happy-creating-free-vector.jpg', 0, '2024-04-24 06:58:00', '2024-04-24 06:58:01', NULL),
(35, NULL, 0, '2024-04-24 06:58:24', '2024-04-24 06:58:24', NULL),
(36, NULL, 35, '2024-04-24 06:58:50', '2024-04-24 06:58:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `locale`, `title`, `content`) VALUES
(61, 21, 'ar', 'رئيسي', 'القسم الرئيسي'),
(62, 21, 'en', NULL, NULL),
(63, 21, 'fr', NULL, NULL),
(64, 22, 'ar', 'قسم فرعي 3', 'فرعي'),
(65, 22, 'en', 'master', 'the master'),
(66, 22, 'fr', NULL, NULL),
(67, 23, 'ar', 'قسم فرعي', 'فرعي من الرئيسي'),
(68, 23, 'en', NULL, NULL),
(69, 23, 'fr', NULL, NULL),
(70, 24, 'ar', 'قسم رئيسي 2', 'رئيسي'),
(71, 24, 'en', NULL, NULL),
(72, 24, 'fr', NULL, NULL),
(73, 25, 'ar', 'فرعي*', 'فرعيي'),
(74, 25, 'en', NULL, NULL),
(75, 25, 'fr', NULL, NULL),
(76, 26, 'ar', 'قسم رئيسي 3', 'رئيسي 3'),
(77, 26, 'en', NULL, NULL),
(78, 26, 'fr', NULL, NULL),
(79, 27, 'ar', 'رئيسييييييي', 'رئيسييييييي'),
(80, 27, 'en', NULL, NULL),
(81, 27, 'fr', NULL, NULL),
(82, 28, 'ar', 'رئيسييييييي', 'رئيسييييييي'),
(83, 28, 'en', NULL, NULL),
(84, 28, 'fr', NULL, NULL),
(85, 29, 'ar', 'رئيسييييييي', 'رئيسييييييي'),
(86, 29, 'en', NULL, NULL),
(87, 29, 'fr', NULL, NULL),
(88, 30, 'ar', 'رئيسييييييي', 'رئيسييييييي'),
(89, 30, 'en', NULL, NULL),
(90, 30, 'fr', NULL, NULL),
(91, 31, 'ar', 'رئيسييييييي', 'رئيسييييييي'),
(92, 31, 'en', NULL, NULL),
(93, 31, 'fr', NULL, NULL),
(94, 32, 'ar', 'قسم جديد', 'جديييييد'),
(95, 32, 'en', NULL, NULL),
(96, 32, 'fr', NULL, NULL),
(97, 33, 'ar', 'مقالة إخبارية', 'نقل الأحداث والأخبار الجديدة.'),
(98, 33, 'en', 'News Article', NULL),
(99, 33, 'fr', NULL, NULL),
(100, 34, 'ar', 'مقالة علمية', NULL),
(101, 34, 'en', 'Scientific Article', NULL),
(102, 34, 'fr', NULL, NULL),
(103, 35, 'ar', 'مقالات مترجمة', NULL),
(104, 35, 'en', NULL, NULL),
(105, 35, 'fr', NULL, NULL),
(106, 36, 'ar', 'مقالات مترجمة للعربية', NULL),
(107, 36, 'en', NULL, NULL),
(108, 36, 'fr', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_04_15_180600_create_settings_table', 1),
(6, '2024_04_15_181112_create_setting_translations_table', 1),
(7, '2024_04_15_183057_create_categories_table', 2),
(8, '2024_04_15_183138_create_category_translations_table', 2),
(9, '2024_04_15_184649_create_posts_table', 2),
(10, '2024_04_15_184714_create_post_translations_table', 2),
(11, '2024_04_15_185648_create_tags_table', 2),
(12, '2024_04_15_185709_create_tag_translations_table', 2),
(13, '2024_04_15_190214_create_post_tag_table', 2),
(14, '2024_04_18_111242_add_softdelete_to_users_table', 2),
(15, '2024_04_21_091242_add_tags_to_post_translations_table', 3),
(16, '2024_04_21_114303_add_user_id_to_posts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `image`, `category_id`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(8, 'images/d1ca12bf-a379-4a2c-8fd2-40b1f4b364d61f9e66797eba5e1a6523b7ad73656b0a.png', 21, '2024-04-21 08:48:19', '2024-04-21 09:00:05', '2024-04-21 09:00:05', NULL),
(9, 'images/f188d2f2-f7b0-4c93-a84e-f8057b7059a5png-transparent-computer-icons-article-editing-writing-icon-miscellaneous-angle-logo-thumbnail.png', 22, '2024-04-21 09:28:21', '2024-04-23 10:35:29', NULL, 1),
(10, 'images/28287ccc-8b9d-47e6-9f89-eef7e87bbe346614823.png', 21, '2024-04-21 09:52:07', '2024-04-23 10:34:39', NULL, 1),
(11, 'images/ceea91d9-ba91-4e28-8a87-6a248d4ff4edvector-newspaper-icon-260nw-170356865.webp', 24, '2024-04-23 10:22:45', '2024-04-23 10:34:54', NULL, 1),
(12, 'images/313995d8-d66a-4a8a-afdc-49412f2c2170article-icon-suitable-for-a-wide-range-of-digital-creative-projects-happy-creating-free-vector.jpg', 21, '2024-04-23 10:37:37', '2024-04-23 10:37:37', NULL, 1),
(13, NULL, 34, '2024-04-24 07:00:11', '2024-04-24 07:00:11', NULL, 1),
(14, NULL, 33, '2024-04-24 07:01:57', '2024-04-24 07:01:57', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `smallDesc` text DEFAULT NULL,
  `tags` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `locale`, `title`, `content`, `smallDesc`, `tags`) VALUES
(18, 8, 'ar', 'مقال رقم', '<p>وصف المقال 2</p>', '<p>مقدمة المقال 2</p>', 'تاج المقال 2'),
(19, 8, 'en', NULL, NULL, NULL, NULL),
(20, 8, 'fr', NULL, NULL, NULL, NULL),
(21, 9, 'ar', NULL, NULL, NULL, NULL),
(22, 9, 'en', 'article', '<p>content to article</p>', '<p>decs to article</p>', 'tags to article'),
(23, 9, 'fr', NULL, NULL, NULL, NULL),
(24, 10, 'ar', 'مقالة بعد التعديل', '<p>وصف المقالة</p>', '<p>مقدمة المقالة</p>', 'تاج المقالة'),
(25, 10, 'en', NULL, NULL, NULL, NULL),
(26, 10, 'fr', NULL, NULL, NULL, NULL),
(27, 11, 'ar', 'مقالة 1', '<p>وصف المقال</p>', '<p>مقدمة المقالة</p>', 'تاج المقال'),
(28, 11, 'en', NULL, NULL, NULL, NULL),
(29, 11, 'fr', NULL, NULL, NULL, NULL),
(30, 12, 'ar', 'مقالة 2', '<p>وصف المقالة 2</p>', '<p>مقدمة المقالة 2</p>', 'تاج المقالة 2'),
(31, 12, 'en', NULL, NULL, NULL, NULL),
(32, 12, 'fr', NULL, NULL, NULL, NULL),
(33, 13, 'ar', 'البحث العلمي', '<ul><li>تقدم نتائج البحث العلمي والتجارب والاستنتاجات.</li><li>يتمتع بطابع تحليلي ويستخدم غالبًا في الدوريات العلمية.</li></ul>', NULL, NULL),
(34, 13, 'en', NULL, NULL, NULL, NULL),
(35, 13, 'fr', NULL, NULL, NULL, NULL),
(36, 14, 'ar', 'اخبار محلية', NULL, NULL, NULL),
(37, 14, 'en', NULL, NULL, NULL, NULL),
(38, 14, 'fr', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `facebook`, `instagram`, `phone`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'images/0f791348-380d-42aa-8650-d54d20f3bcfc101469-200.png', '/images/292ed7c2-ab10-4705-821e-e5220ed69fc3101469-200.png', 'Commodo quod laborio', 'Officia aspernatur i', '+1 (687) 767-7967', 'jeqyzedy@mailinator.com', '2024-04-16 10:10:41', '2024-04-21 11:12:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `setting_translations`
--

CREATE TABLE `setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting_translations`
--

INSERT INTO `setting_translations` (`id`, `setting_id`, `locale`, `title`, `content`, `address`) VALUES
(8, 1, 'ar', 'لوحة التحكم', 'محتوى الاعدادات', 'العنوان'),
(9, 1, 'en', 'Dashboard', 'Iure quia ex laborio', 'Unde deserunt et tem'),
(10, 1, 'fr', 'Quo do consequuntur', 'Est et atque totam n', 'Officiis excepteur p');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('writer','admin') DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ahmed', 'admin@admin.com', NULL, '$2y$10$/Yun06m/TjiYVCIms7Pm0eqCJMwvwoXskURMwH.JXDw8AwL.KosQ2', 'admin', NULL, '2024-04-16 10:36:13', '2024-04-21 10:54:40', NULL),
(2, 'Hector Santiago', 'kybuweruc@mailinator.com', NULL, '$2y$10$qtNWCKouT4TwFSjTPG8KeOvHdeLQDqtKS//dg7qXDy2K82iphBHkW', 'writer', NULL, '2024-04-18 09:53:34', '2024-04-20 20:39:49', NULL),
(3, 'Lara Henson', 'semo@mailinator.com', NULL, '$2y$10$r85ikBchYbHqDGICip1GSuk3GyudfM9yf5wvWwx9Sd1TM0pKFjyjC', NULL, NULL, '2024-04-18 09:54:17', '2024-04-18 09:54:39', '2024-04-18 09:54:39'),
(4, 'Brielle Mercer', 'nezymuhyb@mailinator.com', NULL, '$2y$10$E4S1n.ASq16DwEmAVlAYRuGgMRVfcANt17nA65bEgKX6u4wc40mye', NULL, NULL, '2024-04-20 20:09:30', '2024-04-20 20:40:06', '2024-04-20 20:40:06'),
(5, 'Gemma Pope', 'kaxefar@mailinator.com', NULL, '$2y$10$sFKe6DPUEgW0hhMTnrxycu0fHcde0Bj6KJhoLA3epHVJTan2z175a', 'admin', NULL, '2024-04-20 20:34:10', '2024-04-20 20:39:59', NULL),
(6, 'ali', 'ali100@gmail.com', NULL, '$2y$10$mTcQP.Uvq1Pqe3JFHdnBMOUNHiDK5uyrHn8hT0NpNWreAN7OZm2Tu', NULL, NULL, '2024-04-20 20:34:55', '2024-04-20 20:40:13', '2024-04-20 20:40:13'),
(7, 'Cora Dale', 'zuselabi@mailinator.com', NULL, '$2y$10$73mVxVFVFEOzkPxYopdjMOFDmM6qhMcWyHSB4xnNaX6h7.W/odhSa', 'writer', NULL, '2024-04-20 20:38:08', '2024-04-20 20:38:08', NULL),
(8, 'afnan', 'afnan@gmail.com', NULL, '$2y$10$nW00j0N1K87HnuCS672Rz.dTovws/zQDelvhr6Qy2.nzKsA3bIMsW', 'admin', NULL, '2024-04-21 09:31:48', '2024-04-21 09:31:48', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD KEY `post_translations_locale_index` (`locale`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  ADD KEY `setting_translations_locale_index` (`locale`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `tag_translations_locale_index` (`locale`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting_translations`
--
ALTER TABLE `setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting_translations`
--
ALTER TABLE `setting_translations`
  ADD CONSTRAINT `setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
