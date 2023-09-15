-- phpMyAdmin SQL Dump
-- version 5.2.1deb1ubuntu0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 15, 2023 at 08:51 PM
-- Server version: 8.0.34-0ubuntu0.23.04.1
-- PHP Version: 8.1.12-1ubuntu4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laraveltest`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'کتاب ها', NULL, NULL, NULL),
(2, 'جوانان', 1, NULL, NULL),
(3, 'طبیعت', 1, NULL, NULL),
(4, 'مجلات', NULL, NULL, NULL),
(5, 'ورزشی', 4, NULL, NULL),
(6, 'سرگرمی', 4, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_14_151835_create_categories_table', 1),
(6, '2023_09_15_022122_create_sliders_table', 2),
(7, '2023_09_15_095845_create_posts_table', 3),
(8, '2023_09_15_125916_add_type_to_posts_table', 4),
(9, '2023_09_15_200208_add_category_id_to_posts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mid_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `slug`, `title`, `full_text`, `code`, `mid_title`, `image`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'استیک-ها', 'استیک ها', 'غذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانید', 'post', 'انواع استیک های لذیذ اما مضر و پرچرب', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/blog-03.jpg', 'غذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانید', NULL, NULL, 2),
(2, 'نوشیدنی-ها', 'نوشیدنی ها', 'غذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانید', 'post', 'نوشیدنی های بدون الکل و سالم در اینجا', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/blog-08.jpg', 'اگه عاشق نوشیدنی هستی و قول بدی به کسی نگی، نوشیدنی با الکل هم بهت میدیم، تو فقط بیا', NULL, NULL, 2),
(3, 'فست-فود-ها', 'فست فود ها', 'غذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانیدغذاهای لذیذی که مضر هستند، اگر شما گیاه خوار نیستید حتما این پست را تا انتها بخوانید', 'post', 'غذاهای ایتالیای و لذیذ و پرچرب', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/blog-02.jpg', 'غذاهای ایتالیایی که در هیچ رستوران ایرانی نمیبینید را میتوانید در اینجا تست کنید', NULL, NULL, 2),
(4, 'rest01', 'رستوران شماره یک', 'رستوران شماره یک', 'best_rest', 'اولین رستوران از بهترین ها', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/blog-006-1.jpg', 'اولین رستوران از بهترین هااولین رستوران از بهترین هااولین رستوران از بهترین ها', NULL, NULL, 2),
(5, 'rest02', 'رستوران شماره دو', 'رستوران شماره دو', 'best_rest', 'دومین رستوران از بهترین ها', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/blog-005-1.jpg', 'دومین رستوران از بهترین هااولین رستوران از بهترین هااولین رستوران از بهترین ها', NULL, NULL, 2),
(6, 'rest03', 'رستوران شماره سه', 'رستوران شماره سه', 'best_rest', 'سومین رستوران از بهترین ها', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/blog-004-1.jpg', 'سومین رستوران از بهترین هااولین رستوران از بهترین هااولین رستوران از بهترین ها', NULL, NULL, 2),
(7, 'درباره ما', 'درباره ما', 'متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما ', 'aboutme', 'متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما ', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/about-01.jpg', 'متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما متن تستی درباره ما ', NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `code`, `url`, `created_at`, `updated_at`) VALUES
(1, 'main', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/hero-img.jpg', NULL, NULL),
(3, 'trust', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/featured-logo-04.png', NULL, NULL),
(4, 'trust', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/featured-logo-03.png', NULL, NULL),
(5, 'trust', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/featured-logo-02.png', NULL, NULL),
(6, 'trust', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/featured-logo-05.png', NULL, NULL),
(7, 'trust', 'https://websitedemos.net/food-drinks-blog-04/wp-content/uploads/sites/896/2021/06/featured-logo-01.png', NULL, NULL);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
