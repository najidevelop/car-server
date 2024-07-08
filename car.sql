-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 07:04 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car`
--

-- --------------------------------------------------------

--
-- Table structure for table `beforeafters`
--

CREATE TABLE `beforeafters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `beforeImage` varchar(255) DEFAULT NULL,
  `afterImage` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `home_orders_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beforeafters`
--

INSERT INTO `beforeafters` (`id`, `beforeImage`, `afterImage`, `order_id`, `home_orders_id`, `employee_id`, `created_at`, `updated_at`) VALUES
(15, 'beforeImage_15.jpg', 'afterImage_15.jpg', NULL, NULL, NULL, '2024-05-09 08:51:50', '2024-05-09 08:51:50'),
(16, 'beforeImage_16.jpg', 'afterImage_16.jpg', 67, NULL, 13, '2024-05-12 07:09:48', '2024-05-12 07:09:48'),
(17, 'beforeImage_17.png', 'afterImage_17.jpg', 77, NULL, 20, '2024-06-02 20:54:31', '2024-06-02 20:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `Gender` varchar(255) DEFAULT 'ذكر',
  `phone` varchar(255) DEFAULT NULL,
  `aboutYou` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `note` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `typeOfWork` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `firstName`, `lastName`, `birthDate`, `Gender`, `phone`, `aboutYou`, `image`, `area`, `status`, `note`, `created_at`, `updated_at`, `typeOfWork`) VALUES
(17, 'هدى', 'شهوان', '2014-01-01', 'أنثى', '0111111111', 'موظف جديد', 'image_17.jpg', 'الجميلية', 'accepted', NULL, '2024-06-01 18:31:37', '2024-06-01 19:42:31', 'سيارة'),
(18, 'ياسر', 'طالب', '2010-01-07', 'ذكر', '0222222222', NULL, 'image_18.png', 'الحمدانية', 'accepted', NULL, '2024-06-01 18:58:10', '2024-06-01 19:42:27', 'سيارة'),
(19, 'أحمد', 'عمران', '2000-01-10', 'ذكر', '0333333333', NULL, 'image_19.jpeg', 'الفرقان', 'accepted', NULL, '2024-06-01 18:59:26', '2024-06-01 19:29:27', 'عقار'),
(20, 'محمد', 'أشتر', '2014-01-01', 'ذكر', '0888888888', 'من قبل المدير', 'image_20.jpg', 'الحمدانية', 'accepted', NULL, '2024-06-01 20:31:52', '2024-06-01 20:31:52', 'سيارة'),
(21, 'جابر', 'الجابر', '2014-01-01', 'ذكر', '0666666666', NULL, 'image_21.jpg', 'المحافظة', 'Pending', NULL, '2024-06-02 12:10:17', '2024-06-02 12:10:17', 'عقار');

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
-- Table structure for table `home_orders`
--

CREATE TABLE `home_orders` (
  `id` int(11) NOT NULL,
  `typeOfHome` varchar(255) DEFAULT NULL,
  `OrderTime` varchar(255) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `NumOfbulding` varchar(50) DEFAULT NULL,
  `NumOfFloor` varchar(50) DEFAULT NULL,
  `NumOfEmp` int(11) DEFAULT NULL,
  `NumOfHour` int(11) DEFAULT NULL,
  `cleanMaterial` tinyint(1) DEFAULT NULL,
  `totalPrice` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `statuss` varchar(255) DEFAULT 'معلق',
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payWay_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_orders`
--

INSERT INTO `home_orders` (`id`, `typeOfHome`, `OrderTime`, `OrderDate`, `NumOfbulding`, `NumOfFloor`, `NumOfEmp`, `NumOfHour`, `cleanMaterial`, `totalPrice`, `note`, `statuss`, `location_id`, `user_id`, `employee_id`, `payWay_id`, `created_at`, `updated_at`) VALUES
(5, 'منزل', '12:00 PM', '2024-06-01', '111', '1', NULL, 1, 0, '175000', 'لا يوجد', 'مرفوض', 1, 32, NULL, 1, '2024-06-01 18:23:39', '2024-06-30 18:13:50'),
(6, 'مكتب', '2:00 PM', '2024-06-02', '222', '2', NULL, 2, 1, '360000', '', 'منجز', 2, 2, 20, 2, '2024-06-01 18:26:20', '2024-07-01 09:46:45'),
(7, 'مزرعة', '3:00 PM', '2024-06-03', '333', '3', NULL, 3, 0, '720000', '', 'معلق', 2, 2, 19, 3, '2024-06-01 18:26:57', '2024-06-30 13:05:57'),
(9, 'منزل', '12:00 PM', '2024-06-14', '11', '1', NULL, 1, 0, '175000', 'مع عدم الموافقة', 'مرفوض', 3, 2, NULL, 5, '2024-06-06 07:17:19', '2024-06-30 17:28:28'),
(10, 'منزل', '12:00 PM', '2024-06-18', '12', '2', NULL, 1, 0, '190000', 'تتتتت', 'مرفوض', 2, 2, NULL, 2, '2024-06-09 09:12:25', '2024-06-30 11:01:24'),
(22, 'مكتب', '12:00 PM', '2024-06-27', '1414', '4', NULL, 1, 0, '120000', '', 'معلق', 3, 2, NULL, 2, '2024-06-26 10:03:58', '2024-06-30 19:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `home_order_services`
--

CREATE TABLE `home_order_services` (
  `id` int(11) NOT NULL,
  `home_services_id` bigint(20) UNSIGNED DEFAULT NULL,
  `home_orders_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_order_services`
--

INSERT INTO `home_order_services` (`id`, `home_services_id`, `home_orders_id`, `created_at`, `updated_at`) VALUES
(9, 3, 5, '2024-06-01 18:23:39', '2024-06-01 18:23:39'),
(10, 4, 5, '2024-06-01 18:23:39', '2024-06-01 18:23:39'),
(11, 2, 6, '2024-06-01 18:26:20', '2024-06-01 18:26:20'),
(12, 5, 6, '2024-06-01 18:26:20', '2024-06-01 18:26:20'),
(13, 1, 7, '2024-06-01 18:26:57', '2024-06-01 18:26:57'),
(14, 6, 7, '2024-06-01 18:26:57', '2024-06-01 18:26:57'),
(17, 3, 9, '2024-06-06 07:17:19', '2024-06-06 07:17:19'),
(18, 4, 9, '2024-06-06 07:17:19', '2024-06-06 07:17:19'),
(19, 3, 10, '2024-06-09 09:12:25', '2024-06-09 09:12:25'),
(20, 6, 10, '2024-06-09 09:12:25', '2024-06-09 09:12:25'),
(21, 1, 11, '2024-06-10 07:30:18', '2024-06-10 07:30:18'),
(22, 4, 11, '2024-06-10 07:30:18', '2024-06-10 07:30:18'),
(23, 3, 12, '2024-06-10 07:37:07', '2024-06-10 07:37:07'),
(24, 6, 12, '2024-06-10 07:37:07', '2024-06-10 07:37:07'),
(25, 2, 13, '2024-06-10 07:38:58', '2024-06-10 07:38:58'),
(26, 6, 13, '2024-06-10 07:38:58', '2024-06-10 07:38:58'),
(27, 2, 14, '2024-06-10 07:45:12', '2024-06-10 07:45:12'),
(28, 6, 14, '2024-06-10 07:45:12', '2024-06-10 07:45:12'),
(29, 2, 15, '2024-06-10 07:49:49', '2024-06-10 07:49:49'),
(30, 4, 15, '2024-06-10 07:49:49', '2024-06-10 07:49:49'),
(31, 1, 16, '2024-06-10 07:50:45', '2024-06-10 07:50:45'),
(32, 4, 16, '2024-06-10 07:50:45', '2024-06-10 07:50:45'),
(33, 2, 17, '2024-06-10 07:51:59', '2024-06-10 07:51:59'),
(34, 2, 18, '2024-06-10 07:53:35', '2024-06-10 07:53:35'),
(35, 2, 19, '2024-06-10 07:54:11', '2024-06-10 07:54:11'),
(36, 2, 20, '2024-06-26 09:55:04', '2024-06-26 09:55:04'),
(37, 4, 20, '2024-06-26 09:55:04', '2024-06-26 09:55:04'),
(38, 2, 21, '2024-06-26 09:56:11', '2024-06-26 09:56:11'),
(39, 2, 22, '2024-06-26 10:03:58', '2024-06-26 10:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `home_services`
--

CREATE TABLE `home_services` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_services`
--

INSERT INTO `home_services` (`id`, `type`, `name`, `price`, `period`, `description`, `created_at`, `updated_at`) VALUES
(1, 'أساسية', 'تنظيف كامل', 200000, '50', 'تنظيف يشمل جميع الأثاث الموجود بالغرفة مع تلميع الزجاج والأسقف والجدران والأبواب', '2024-05-27 11:07:13', '2024-05-27 11:07:13'),
(2, 'أساسية', 'تنظيف الأثاث', 120000, '30', 'تنظيف يشمل جميع الأثاث الموجود بالغرفة من مفروشات وخشب وزخرفات ', '2024-05-27 11:09:20', '2024-05-27 14:14:10'),
(3, 'أساسية', 'تنظيف جدران وأسقف', 150000, '40', 'تنظيف يشمل جميع زوايا البيت والحجر والدهان الموجود في الغرفة  ', '2024-05-27 11:24:25', '2024-05-27 14:14:21'),
(4, 'إضافية', 'تنظيف المكيفات', 25000, NULL, 'تنظيف عميق للمكيفات مع تعبئة غاز عند اللزوم', '2024-05-27 11:27:54', '2024-06-03 10:50:11'),
(5, 'إضافية', 'تطهير وتعقيم ', 35000, NULL, 'تعقيم هواء المنزل وتنقيته باستخدام مطهرات وفلاتر ذات جودة عالية', '2024-05-27 11:29:16', '2024-05-27 11:29:16'),
(6, 'إضافية', ' مكافحة الحشرات ', 40000, NULL, 'القضاء على الحشرات والبعوض باستخدام مبيدات حشرية آمنة وفعالة', '2024-05-27 11:34:16', '2024-05-27 11:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `area`, `parentId`, `street`, `created_at`, `updated_at`) VALUES
(1, 'الجميلية', NULL, NULL, '2024-04-30 10:00:58', '2024-04-30 10:08:23'),
(2, 'الحمدانية', NULL, NULL, '2024-04-30 10:08:35', '2024-04-30 10:08:35'),
(3, 'الإذاعة', NULL, NULL, '2024-04-30 10:08:46', '2024-04-30 10:08:46'),
(4, 'سيف الدولة', NULL, NULL, '2024-04-30 10:08:56', '2024-04-30 10:08:56'),
(5, 'شارع النيل', NULL, NULL, '2024-04-30 10:09:05', '2024-04-30 10:09:05'),
(6, 'المحافظة', NULL, NULL, '2024-04-30 10:09:17', '2024-04-30 10:09:17'),
(7, 'الفرقان', NULL, NULL, '2024-04-30 10:09:24', '2024-04-30 10:09:24');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_30_113335_create_orders_table', 1),
(6, '2024_03_30_113350_create_employees_table', 1),
(7, '2024_03_30_114107_create_services_table', 1),
(8, '2024_03_30_114151_create_order_service_table', 1),
(9, '2024_03_30_114309_create_beforeAfters_table', 1),
(10, '2024_03_30_114418_create_pages_table', 1),
(11, '2024_03_30_115540_create_settings_table', 1),
(12, '2024_03_30_115602_create_payWays_table', 1),
(13, '2024_03_31_201358_create_locations_table', 1),
(14, '2024_05_05_090704_create_types_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `typeOfCar` varchar(255) DEFAULT NULL,
  `sizeOfCar` varchar(255) DEFAULT NULL,
  `numOfCar` varchar(255) DEFAULT NULL,
  `totalPrice` varchar(255) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `orderTime` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payWay_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `typeOfCar`, `sizeOfCar`, `numOfCar`, `totalPrice`, `orderDate`, `orderTime`, `status`, `note`, `created_at`, `updated_at`, `location_id`, `employee_id`, `user_id`, `payWay_id`) VALUES
(76, 'bmw', 'سيارة صغيرة الحجم', '111111', '235', '2024-06-01', '12:00 PM', 'معلق', '', '2024-06-01 18:18:04', '2024-06-01 18:18:13', 1, 18, 2, 5),
(77, 'mercedes', 'سيارة متوسطة الحجم', '222222', '135', '2024-06-02', '12:00 PM', 'معلق', '', '2024-06-01 18:18:48', '2024-06-02 20:54:31', 1, 20, 2, 4),
(78, 'audi', 'سيارة كبيرة الحجم', '333333', '125', '2024-06-03', '3:00 PM', 'منجز', '', '2024-06-01 18:19:20', '2024-06-09 09:51:13', 1, 17, 2, 18),
(79, 'mercedes', 'سيارة صغيرة الحجم', '123456', '235', '2024-06-20', '5:00 PM', 'قيد الإنجاز', '', '2024-06-04 10:32:06', '2024-07-01 08:41:32', 1, 17, 28, 2),
(83, 'mercedes', 'سيارة متوسطة الحجم', '121212', '135', '2024-06-13', '12:00 PM', 'مرفوض', NULL, '2024-06-06 10:06:13', '2024-06-30 18:34:25', 2, NULL, 28, 4),
(84, 'bmw', 'سيارة كبيرة الحجم', '171717', '135', '2024-06-19', '12:00 PM', 'منجز', '', '2024-06-06 10:07:59', '2024-06-09 09:53:58', 1, 17, 28, 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_service`
--

CREATE TABLE `order_service` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_service`
--

INSERT INTO `order_service` (`id`, `service_id`, `order_id`, `created_at`, `updated_at`) VALUES
(258, 3, 76, '2024-06-01 18:18:04', '2024-06-01 18:18:04'),
(259, 4, 76, '2024-06-01 18:18:04', '2024-06-01 18:18:04'),
(260, 2, 77, '2024-06-01 18:18:48', '2024-06-01 18:18:48'),
(261, 5, 77, '2024-06-01 18:18:48', '2024-06-01 18:18:48'),
(262, 1, 78, '2024-06-01 18:19:20', '2024-06-01 18:19:20'),
(263, 6, 78, '2024-06-01 18:19:20', '2024-06-01 18:19:20'),
(264, 3, 79, '2024-06-04 10:32:06', '2024-06-04 10:32:06'),
(265, 4, 79, '2024-06-04 10:32:06', '2024-06-04 10:32:06'),
(273, 2, 83, '2024-06-06 10:06:14', '2024-06-06 10:06:14'),
(274, 5, 83, '2024-06-06 10:06:14', '2024-06-06 10:06:14'),
(275, 2, 84, '2024-06-06 10:08:00', '2024-06-06 10:08:00'),
(276, 5, 84, '2024-06-06 10:08:00', '2024-06-06 10:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `href` varchar(128) NOT NULL,
  `content` longtext DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `href`, `content`, `title`, `keyword`, `photo`, `created_at`, `updated_at`) VALUES
(7, 'عن الموقع', 'aboutus', '<p>تحربة&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>تحربة</p>', 'عن الموقع', 'تنظيف , غسيل سيارات , خدمات', NULL, '2024-05-12 08:58:28', '2024-05-12 08:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payways`
--

CREATE TABLE `payways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `way` varchar(255) DEFAULT NULL,
  `accountNumber` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payways`
--

INSERT INTO `payways` (`id`, `way`, `accountNumber`, `image`, `created_at`, `updated_at`) VALUES
(1, 'كاش موبايل', '2255887799', 'mtn.jpg', NULL, NULL),
(2, 'سيريتل كاش', '9988774422', 'syriatel.jpg', NULL, NULL),
(3, 'كاش ', 'الدفع نقدا عند تقديم الخدمة', 'paying.png', NULL, NULL),
(4, 'بنك البركة', '003456987500', NULL, '2024-04-23 07:38:28', '2024-04-23 08:57:34'),
(5, 'بنك بيمو', '02222252555', 'image_5.jpg', '2024-04-23 08:59:08', '2024-04-24 08:42:00'),
(18, 'بنك مصر', '0999999999', 'image_18.jpg', '2024-04-23 16:28:02', '2024-04-23 18:06:54');

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
-- Table structure for table `recharge`
--

CREATE TABLE `recharge` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin_who_added` varchar(20) DEFAULT NULL,
  `car_home_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`id`, `type`, `amount`, `user_id`, `created_at`, `updated_at`, `admin_who_added`, `car_home_id`) VALUES
(32, 'شحن', 2000, 28, '2024-06-26 07:58:26', '2024-06-26 07:58:26', 'hind', NULL),
(33, 'شحن', 5000, 28, '2024-06-26 08:00:10', '2024-06-26 08:00:10', 'hind', NULL),
(34, 'سحب', 1000, 28, '2024-06-26 08:05:29', '2024-06-26 08:05:29', NULL, NULL),
(35, 'سيارة', 145, 2, '2024-06-26 09:49:34', '2024-06-26 09:49:34', NULL, 87),
(36, 'شحن', 200000, 2, '2024-06-26 09:53:44', '2024-06-26 09:53:44', 'hind', NULL),
(37, 'شحن', 200000, 2, '2024-06-26 09:57:52', '2024-06-26 09:57:52', 'hind', NULL),
(38, 'عقار', 120000, 2, '2024-06-26 10:03:58', '2024-06-26 10:03:58', NULL, 22),
(39, 'سحب', 8970, 2, '2024-06-26 10:51:19', '2024-06-26 10:51:19', NULL, NULL),
(40, 'سحب', 4000, 28, '2024-06-26 10:57:27', '2024-06-26 10:57:27', NULL, NULL),
(41, 'سحب', 15000, 2, '2024-06-27 10:48:15', '2024-06-27 10:48:15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT 'أساسية',
  `name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type`, `name`, `price`, `period`, `description`, `created_at`, `updated_at`) VALUES
(1, 'أساسية', 'غسيل داخلي', 100, '20', 'غسيل داخلي يتضمن الفرش والزجاج ', NULL, NULL),
(2, 'أساسية', 'غسيل خارجي', 110, '35', 'غسيل خارجي يتضمن العجلات والزجاج  ', NULL, NULL),
(3, 'أساسية', ' غسيل كامل', 200, '60', 'يتضمن غسيل داخلي وخارجي  ', NULL, NULL),
(4, 'إضافية', ' تعقيم هواء السيارة', 35, NULL, 'يتضمن تعقيم هواء السيارة بغاز الأوزون للتخلص من الروائح الكريهة والدخان    ', NULL, NULL),
(5, 'إضافية', ' تنضيف صندوق السيارة', 25, NULL, 'غسيل صندوق السيارة مع التنشيف والتعطير ', NULL, NULL),
(6, 'إضافية', 'تلميع زجاج', 25, NULL, 'يتضمن ازالة الخربشات من جميع الزجاج وتلميعه', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nameWebsite` varchar(30) NOT NULL,
  `linkWebsite` varchar(128) NOT NULL,
  `Keywords` varchar(50) DEFAULT NULL,
  `Description` varchar(128) DEFAULT NULL,
  `socialMidiaFacebook` varchar(128) DEFAULT NULL,
  `socialMidiaTelegram` varchar(128) DEFAULT NULL,
  `socialMidiaInstagram` varchar(128) DEFAULT NULL,
  `socialMidiaYoutube` varchar(128) DEFAULT NULL,
  `icon` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `nameWebsite`, `linkWebsite`, `Keywords`, `Description`, `socialMidiaFacebook`, `socialMidiaTelegram`, `socialMidiaInstagram`, `socialMidiaYoutube`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'CleanCars', 'https://CleanCars.com', 'clean,تنظيف سيارات,غسيل سيارات,clean car', 'موقع ويب يقدم خدمات شاملة متكاملة من اجل تنظيف السيارات', 'https://www.facebook.com/CleanCars.sy', NULL, NULL, NULL, 'icon.webp', '2024-05-13 09:54:24', '2024-05-13 09:54:24');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `color`, `created_at`, `updated_at`) VALUES
(1, 'bmw', NULL, '2024-05-05 10:12:56', '2024-05-05 10:12:56'),
(2, 'mercedes', NULL, '2024-05-05 10:13:07', '2024-05-09 08:48:38'),
(3, 'audi', NULL, '2024-05-09 08:34:14', '2024-05-09 08:34:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `phone`, `password`, `role`, `remember_token`, `created_at`, `updated_at`, `balance`) VALUES
(2, 'hind', NULL, NULL, '0999999999', '$2y$12$wJv9sA.VTKRox2Vr5ABa4ODwK4UNoltIpGvmcdGWrkOPlq4rWp6p.', 'admin', NULL, '2024-06-23 08:10:27', '2024-06-27 10:48:15', '125000'),
(28, 'هدى شهوان', NULL, NULL, '0111111111', '$2y$12$aiIWTqoMBgudUle.r.YIv.kcNjAAUDdUNYQwBcGtpu9feLWrvnaru', 'employee', NULL, '2024-06-02 20:50:03', '2024-07-01 09:33:53', '10375'),
(29, 'محمد أشتر', NULL, NULL, '0888888888', '$2y$12$5Oadm5EHkcWQBrwkX.wo8udroQuzkHmH3JVhg.GCy/FiND0N1ewXC', 'employee', NULL, '2024-06-02 20:52:24', '2024-06-11 12:26:23', '10000'),
(31, 'يارا ياسين', NULL, NULL, '0222222222', '$2y$12$1E6JaNGiFnT9mhv7vnNhQuGtLF25EszDs0FRFL0DHnAFa/Icit4TG', 'user', NULL, '2024-06-05 12:38:19', '2024-06-05 12:38:19', '25000'),
(32, 'أحمد عمران', NULL, NULL, '0333333333', '$2y$12$iR0MFf6gTty1.HMwRZ6cSe7KPUgEmpnsUyPvBqh1eLWW3kvIpzXkW', 'employee', NULL, '2024-06-10 07:24:05', '2024-06-24 10:51:28', '17000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beforeafters`
--
ALTER TABLE `beforeafters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_orders`
--
ALTER TABLE `home_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_order_services`
--
ALTER TABLE `home_order_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_service`
--
ALTER TABLE `order_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payways`
--
ALTER TABLE `payways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beforeafters`
--
ALTER TABLE `beforeafters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_orders`
--
ALTER TABLE `home_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `home_order_services`
--
ALTER TABLE `home_order_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `order_service`
--
ALTER TABLE `order_service`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payways`
--
ALTER TABLE `payways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
