-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2024 at 05:34 AM
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
-- Database: `joystation`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `id` bigint UNSIGNED NOT NULL,
  `booking_id` bigint NOT NULL,
  `room_id` bigint NOT NULL,
  `time_id` bigint NOT NULL,
  `date` date NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

CREATE TABLE `class_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `class_name`, `created_at`, `updated_at`) VALUES
(3, 'Kelas VIP', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` bigint UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_indonesian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `day_indonesian`, `created_at`, `updated_at`) VALUES
(2, 'Monday', 'Senin', '2024-02-26 16:39:30', '2024-02-26 16:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `day_rents`
--

CREATE TABLE `day_rents` (
  `id` bigint UNSIGNED NOT NULL,
  `day_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` bigint UNSIGNED NOT NULL,
  `ps_categories_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_playstations`
--

CREATE TABLE `img_playstations` (
  `id` bigint UNSIGNED NOT NULL,
  `ps_id` bigint NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `img_rooms`
--

CREATE TABLE `img_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `room_id` bigint NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(32, '2024_02_22_004942_create_room_categories_table', 1),
(179, '2014_10_12_000000_create_users_table', 2),
(180, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(181, '2019_08_19_000000_create_failed_jobs_table', 2),
(182, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(183, '2024_02_22_004304_create_rooms_table', 2),
(184, '2024_02_22_004733_create_img_rooms_table', 2),
(185, '2024_02_22_004843_create_class_rooms_table', 2),
(186, '2024_02_26_110941_create_playstations_table', 2),
(187, '2024_02_26_111220_create_ps_categories_table', 2),
(188, '2024_02_26_111256_create_img_playstations_table', 2),
(189, '2024_02_26_144427_create_sticks_table', 2),
(190, '2024_02_26_145157_create_games_table', 2),
(191, '2024_02_26_145604_create_t_v_s_table', 2),
(192, '2024_02_26_150519_create_products_table', 2),
(193, '2024_02_26_150736_create_product_categories_table', 2),
(194, '2024_02_26_151038_create_bookings_table', 2),
(195, '2024_02_26_151423_create_booking_details_table', 2),
(196, '2024_02_26_151642_create_times_table', 2),
(197, '2024_02_26_153145_create_time_selecteds_table', 2),
(198, '2024_02_26_153501_create_days_table', 2),
(199, '2024_02_26_153759_create_rents_table', 2),
(200, '2024_02_26_153947_create_rent_details_table', 2),
(201, '2024_02_26_162122_create_day_rents_table', 2),
(202, '2024_02_26_162736_create_coupons_table', 2);

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'joystation-token', '7c98d4c68a4d24a3245ece427878956f5128016b94f8555856c764bf599fd76e', '[\"*\"]', '2024-02-28 01:44:16', NULL, '2024-02-27 08:42:33', '2024-02-28 01:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `playstations`
--

CREATE TABLE `playstations` (
  `id` bigint UNSIGNED NOT NULL,
  `ps_categories_id` bigint NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ps_plus` tinyint(1) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `online` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_ct_id` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ps_categories`
--

CREATE TABLE `ps_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ps_categories`
--

INSERT INTO `ps_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Playstation 3', '2024-02-27 08:58:37', '2024-02-27 08:58:37'),
(3, 'Playstation 4', '2024-02-27 08:58:40', '2024-02-27 08:58:40'),
(4, 'Playstation 5', '2024-02-27 08:58:43', '2024-02-27 08:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `id` bigint UNSIGNED NOT NULL,
  `rent_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `status` tinyint NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rent_details`
--

CREATE TABLE `rent_details` (
  `id` bigint UNSIGNED NOT NULL,
  `rent_id` bigint NOT NULL,
  `type` tinyint NOT NULL,
  `ps_id` bigint DEFAULT NULL,
  `tv_id` bigint DEFAULT NULL,
  `stick_id` bigint DEFAULT NULL,
  `date` date NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `class_id` bigint NOT NULL,
  `ps_categories_id` bigint NOT NULL,
  `room_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `ac` tinyint(1) NOT NULL,
  `tv` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `smoking_area` tinyint(1) NOT NULL,
  `status` tinyint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `class_id`, `ps_categories_id`, `room_name`, `capacity`, `price`, `ac`, `tv`, `discount`, `smoking_area`, `status`, `description`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:16:35', '2024-02-27 17:16:35'),
(2, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:17:52', '2024-02-27 17:17:52'),
(3, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:18:57', '2024-02-27 17:18:57'),
(4, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:21:01', '2024-02-27 17:21:01'),
(5, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:21:43', '2024-02-27 17:21:43'),
(6, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:25:12', '2024-02-27 17:25:12'),
(7, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:25:44', '2024-02-27 17:25:44'),
(8, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:26:20', '2024-02-27 17:26:20'),
(9, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:27:49', '2024-02-27 17:27:49'),
(10, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:29:44', '2024-02-27 17:29:44'),
(11, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:30:23', '2024-02-27 17:30:23'),
(12, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:33:36', '2024-02-27 17:33:36'),
(13, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-27 17:34:38', '2024-02-27 17:34:38'),
(14, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:04:46', '2024-02-28 01:04:46'),
(15, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:06:27', '2024-02-28 01:06:27'),
(16, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:06:44', '2024-02-28 01:06:44'),
(17, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:06:57', '2024-02-28 01:06:57'),
(18, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:07:08', '2024-02-28 01:07:08'),
(19, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:17:07', '2024-02-28 01:17:07'),
(20, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:20:25', '2024-02-28 01:20:25'),
(21, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:20:48', '2024-02-28 01:20:48'),
(22, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:22:22', '2024-02-28 01:22:22'),
(23, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:22:35', '2024-02-28 01:22:35'),
(24, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:24:40', '2024-02-28 01:24:40'),
(25, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:43', '2024-02-28 01:28:43'),
(26, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:54', '2024-02-28 01:28:54'),
(27, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:55', '2024-02-28 01:28:55'),
(28, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:55', '2024-02-28 01:28:55'),
(29, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:56', '2024-02-28 01:28:56'),
(30, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:56', '2024-02-28 01:28:56'),
(31, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:28:56', '2024-02-28 01:28:56'),
(32, 3, 2, 'Room A', 20, 15000.00, 1, '21 inchi', 2000.00, 1, 1, 'ruangan yg nyaman', '2024-02-28 01:29:20', '2024-02-28 01:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `room_categories`
--

CREATE TABLE `room_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sticks`
--

CREATE TABLE `sticks` (
  `id` bigint UNSIGNED NOT NULL,
  `ps_categories_id` bigint NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `times`
--

CREATE TABLE `times` (
  `id` bigint UNSIGNED NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_selecteds`
--

CREATE TABLE `time_selecteds` (
  `id` bigint UNSIGNED NOT NULL,
  `day_id` bigint NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tvs`
--

CREATE TABLE `tvs` (
  `id` bigint UNSIGNED NOT NULL,
  `inch` int NOT NULL,
  `serial_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `status` tinyint NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint NOT NULL DEFAULT '1',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `address` text COLLATE utf8mb4_unicode_ci,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `is_active`, `profile_photo`, `address`, `phone_number`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cipah', 'cipa@gmail.com', 1, '$2y$12$c2ewcRmFkXy6eKn42PStquyVEOq8DAR/4OFaGgkCO5Fj1kscV0kqC', 1, 'default.png', NULL, '082271313698', NULL, NULL, '2024-02-27 08:42:33', '2024-02-27 08:42:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_rooms`
--
ALTER TABLE `class_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day_rents`
--
ALTER TABLE `day_rents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_playstations`
--
ALTER TABLE `img_playstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_rooms`
--
ALTER TABLE `img_rooms`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `playstations`
--
ALTER TABLE `playstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ps_categories`
--
ALTER TABLE `ps_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_details`
--
ALTER TABLE `rent_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_categories`
--
ALTER TABLE `room_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sticks`
--
ALTER TABLE `sticks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `times`
--
ALTER TABLE `times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_selecteds`
--
ALTER TABLE `time_selecteds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tvs`
--
ALTER TABLE `tvs`
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
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_rooms`
--
ALTER TABLE `class_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `day_rents`
--
ALTER TABLE `day_rents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_playstations`
--
ALTER TABLE `img_playstations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `img_rooms`
--
ALTER TABLE `img_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `playstations`
--
ALTER TABLE `playstations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ps_categories`
--
ALTER TABLE `ps_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rent_details`
--
ALTER TABLE `rent_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `room_categories`
--
ALTER TABLE `room_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sticks`
--
ALTER TABLE `sticks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `times`
--
ALTER TABLE `times`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_selecteds`
--
ALTER TABLE `time_selecteds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tvs`
--
ALTER TABLE `tvs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
