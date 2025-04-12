-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2023 at 04:19 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ekotamart_ekotamart`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@ekotamart.com', '2023-03-27 01:46:38', '$2y$10$p8fjogkaK.ZxeuSUmK.s6eyD0fbIGTVhv0wiRU0K/pjmK0oUodlCq', 'J3S4tQzRjeryM8euLJdTpmM74ixPsBKw9naQVAC7In8zxdB6Wh3XQLRhqsSv', NULL, 'WhatsApp Image 2023-06-15 at 11.33.54 AM.jpeg', '2023-03-27 01:46:38', '2023-06-15 06:29:58');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_title_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_details_en` text COLLATE utf8mb4_unicode_ci,
  `post_details_bn` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_category_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_bn`, `brand_slug_en`, `brand_slug_bn`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'EkotaMart', 'একতামার্ট', 'ekotamart', 'একতামার্ট', '1685871586.png', NULL, NULL),
(2, 'PRAN Foods', 'প্রাণ ফুডস', 'pran-foods', 'প্রাণ-ফুডস', '1686464209.jpg', NULL, NULL),
(3, 'ACI Foods Limited.', 'এসিআই ফুডস লিমিটেড', 'aci-foods-limited.', 'এসিআই-ফুডস-লিমিটেড', '1686464276.jpg', NULL, NULL),
(4, 'Akij Food and Beverage Limited', 'আকিজ ফুড অ্যান্ড বেভারেজ লিমিটেড', 'akij-food-and-beverage-limited', 'আকিজ-ফুড-অ্যান্ড-বেভারেজ-লিমিটেড', '1686464392.jpg', NULL, NULL),
(5, 'IFAD', 'ইফাদ', 'ifad', 'ইফাদ', '1686464466.jpeg', NULL, NULL),
(6, 'Fu-Wang Foods Limited', 'ফু-ওয়াং ফুডস লিমিটেড', 'fu-wang-foods-limited', 'ফু-ওয়াং-ফুডস-লিমিটেড', '1686465059.jpg', NULL, NULL),
(7, 'Ispahani Foods Limited', 'ইস্পাহানি ফুডস লিমিটেড', 'ispahani-foods-limited', 'ইস্পাহানি-ফুডস-লিমিটেড', '1686465119.png', NULL, NULL),
(8, 'Bombay Sweets & Co. Ltd.', 'বোম্বে সুইটস', 'bombay-sweets-&-co.-ltd.', 'বোম্বে-সুইটস', '1686465176.png', NULL, NULL),
(9, 'Sajeeb Group', 'সজীব গ্রুপ', 'sajeeb-group', 'সজীব-গ্রুপ', '1686465237.png', NULL, NULL),
(10, 'DANISH FOODS LIMITED', 'ডেনিশ ফুডস লিমিটেড', 'danish-foods-limited', 'ডেনিশ-ফুডস-লিমিটেড', '1686465479.webp', NULL, NULL),
(11, 'ISPAHANI TEA LTD.', 'ইস্পাহানি টি লিমিটেড।', 'ispahani-tea-ltd.', 'ইস্পাহানি-টি-লিমিটেড।', '1686465528.png', NULL, NULL),
(12, 'SQUARE FOOD & BEVERAGE LTD.', 'স্কয়ার ফুড অ্যান্ড বেভারেজ লিমিটেড।', 'square-food-&-beverage-ltd.', 'স্কয়ার-ফুড-অ্যান্ড-বেভারেজ-লিমিটেড।', '1686465583.png', NULL, NULL),
(13, 'AKHTAR FOODS LIMITED', 'আখতার ফুডস লিমিটেড', 'akhtar-foods-limited', 'আখতার-ফুডস-লিমিটেড', '1686465666.jfif', NULL, NULL),
(14, 'UNILEVER CONSUMER CARE LIMITED', 'ইউনিলিভার কনজিউমার কেয়ার লিমিটেড', 'unilever-consumer-care-limited', 'ইউনিলিভার-কনজিউমার-কেয়ার-লিমিটেড', '1686465712.jpg', NULL, NULL),
(15, 'ASHIYAN FOOD & BEVERAGE INDUSTRIES LTD.', 'আশিয়ান ফুড অ্যান্ড বেভারেজ ইন্ডাস্ট্রিজ লিমিটেড।', 'ashiyan-food-&-beverage-industries-ltd.', 'আশিয়ান-ফুড-অ্যান্ড-বেভারেজ-ইন্ডাস্ট্রিজ-লিমিটেড।', '1686465755.png', NULL, NULL),
(16, 'ZISAN FOOD & BEVERAGE LTD.', 'জিসান ফুড অ্যান্ড বেভারেজ লিমিটেড।', 'zisan-food-&-beverage-ltd.', 'জিসান-ফুড-অ্যান্ড-বেভারেজ-লিমিটেড।', '1686465803.png', NULL, NULL),
(17, 'WELL FOOD AND BEVERAGE CO.LTD', 'ভাল খাদ্য এবং পানীয়', 'well-food-and-beverage-co.ltd', 'ভাল-খাদ্য-এবং-পানীয়', '1686465906.png', NULL, NULL),
(18, 'LAL TEER SEED LTD.', 'লাল তের বীজ লিমিটেড।', 'lal-teer-seed-ltd.', 'লাল-তের-বীজ-লিমিটেড।', '1686465982.png', NULL, NULL),
(19, 'TANVEER FOOD LTD.', 'তানভীর ফুড লিমিটেড।', 'tanveer-food-ltd.', 'তানভীর-ফুড-লিমিটেড।', '1686466052.jfif', NULL, NULL),
(20, 'KAZI FOOD INDUSTRIES LTD', 'কাজী ফুড ইন্ডাস্ট্রিজ লিমিটেড', 'kazi-food-industries-ltd', 'কাজী-ফুড-ইন্ডাস্ট্রিজ-লিমিটেড', '1686466109.png', NULL, NULL),
(21, 'BOMBAY SWEETS AND CO. LTD.', 'বম্বে সুইটস অ্যান্ড কোং লিমিটেড।', 'bombay-sweets-and-co.-ltd.', 'বম্বে-সুইটস-অ্যান্ড-কোং-লিমিটেড।', '1686466237.png', NULL, NULL),
(22, 'ADVANCED GOLDEN EGGS & CHICKS LTD', 'অ্যাডভান্সড গোল্ডেন এগস অ্যান্ড চিকস লিমিটেড', 'advanced-golden-eggs-&-chicks-ltd', 'অ্যাডভান্সড-গোল্ডেন-এগস-অ্যান্ড-চিকস-লিমিটেড', '1686466289.jfif', NULL, NULL),
(23, 'BANGA BAKERS LTD.', 'বঙ্গ বেকার্স লিমিটেড।', 'banga-bakers-ltd.', 'বঙ্গ-বেকার্স-লিমিটেড।', '1686466337.jfif', NULL, NULL),
(24, 'BASHUNDHARA MULTI FOOD PRODUCTS LIMITED', 'বসুন্ধরা মাল্টি ফুড প্রোডাক্টস লিমিটেড', 'bashundhara-multi-food-products-limited', 'বসুন্ধরা-মাল্টি-ফুড-প্রোডাক্টস-লিমিটেড', '1686466395.png', NULL, NULL),
(25, 'NESTLE BANGLADESH LIMITED', 'নেসলে বাংলাদেশ লিমিটেড', 'nestle-bangladesh-limited', 'নেসলে-বাংলাদেশ-লিমিটেড', '1686466447.jfif', NULL, NULL),
(26, 'UTSHO FOOD INDUSTRIES', 'খাদ্য শিল্প', 'utsho-food-industries', 'খাদ্য-শিল্প', '1686466500.jfif', NULL, NULL),
(27, 'ARYAN FOOD INDUSTRIES', 'আরিয়ান ফুড ইন্ডাস্ট্রিজ', 'aryan-food-industries', 'আরিয়ান-ফুড-ইন্ডাস্ট্রিজ', '1686466729.jfif', NULL, NULL),
(28, 'BD FOODS LTD.', 'বিডি ফুডস লিমিটেড।', 'bd-foods-ltd.', 'বিডি-ফুডস-লিমিটেড।', '1686466778.png', NULL, NULL),
(29, 'Kishwan Agro Products Ltd.', 'কিশওয়ান এগ্রো প্রোডাক্টস লি.', 'kishwan-agro-products-ltd.', 'কিশওয়ান-এগ্রো-প্রোডাক্টস-লি.', '1686466817.png', NULL, NULL),
(30, 'Haque Food Industries Limited', 'হক ফুড ইন্ডাস্ট্রিজ লিমিটেড', 'haque-food-industries-limited', 'হক-ফুড-ইন্ডাস্ট্রিজ-লিমিটেড', '1686466958.png', NULL, NULL),
(32, 'Ahana Food & Beverage Company', 'অহনা ফুড অ্যান্ড বেভারেজ কোম্পানি', 'ahana-food-&-beverage-company', 'অহনা-ফুড-অ্যান্ড-বেভারেজ-কোম্পানি', '1686467048.png', NULL, NULL),
(33, 'Savory Food LTD', 'স্যাভরি ফুড লিমিটেড', 'savory-food-ltd', 'স্যাভরি-ফুড-লিমিটেড', '1686467152.png', NULL, NULL),
(34, 'ALISHA FOODS', 'আলিশা খাবার', 'alisha-foods', 'আলিশা-খাবার', '1686467200.jfif', NULL, NULL),
(35, 'Umai Food & Beverage Ltd', 'উমাই ফুড অ্যান্ড বেভারেজ লিমিটেড', 'umai-food-&-beverage-ltd', 'উমাই-ফুড-অ্যান্ড-বেভারেজ-লিমিটেড', '1686467259.png', NULL, NULL),
(36, 'Boshudha group', 'বসুধা গ্রুপ', 'boshudha-group', 'বসুধা-গ্রুপ', '1686467320.png', NULL, NULL),
(37, 'Insaf Foods Products', 'ইনসাফ ফুডস পণ্য', 'insaf-foods-products', 'ইনসাফ-ফুডস-পণ্য', '1686467381.jfif', NULL, NULL),
(38, 'Bashundhara Food and Beverage', 'বসুন্ধরা ফুড অ্যান্ড বেভারেজ', 'bashundhara-food-and-beverage', 'বসুন্ধরা-ফুড-অ্যান্ড-বেভারেজ', '1686467494.jpg', NULL, NULL),
(39, 'Hasib Food Industries', 'হাসিব ফুড ইন্ডাস্ট্রিজ', 'hasib-food-industries', 'হাসিব-ফুড-ইন্ডাস্ট্রিজ', '1686467537.png', NULL, NULL),
(40, 'Prime Pusti', 'প্রাইম পুস্তি', 'prime-pusti', 'প্রাইম-পুস্তি', '1686473432.jfif', NULL, NULL),
(41, 'Ahmed Food Products', 'আহমেদ ফুড প্রোডাক্টস', 'ahmed-food-products', 'আহমেদ-ফুড-প্রোডাক্টস', '1686473486.png', NULL, NULL),
(42, 'Agroly Food & Beverage', 'এগ্রোলি ফুড অ্যান্ড বেভারেজ', 'agroly-food-&-beverage', 'এগ্রোলি-ফুড-অ্যান্ড-বেভারেজ', '1686473531.jfif', NULL, NULL),
(43, 'Protiva Food', 'প্রোটিভা ফুড', 'protiva-food', 'প্রোটিভা-ফুড', '1686473591.png', NULL, NULL),
(44, 'Fardin Branding Zone', 'ফারদিন ব্রান্ডিং জোন', 'fardin-branding-zone', 'ফারদিন-ব্রান্ডিং-জোন', '1688553219.Mag-back-design.jpg', NULL, '2023-07-05 04:33:39'),
(45, 'test test', 'test test', 'test-test', 'test-test', '1686810625.webp', NULL, '2023-06-15 00:34:16'),
(46, 'No Brand', 'ব্রান্ড ছাড়া', 'no-brand', 'ব্রান্ড-ছাড়া', '1688553092.jpg', NULL, NULL),
(47, 'Amanot Travels International.', 'Amanot Travels International.', 'amanot-travels-international.', 'Amanot-Travels-International.', '1690095026.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_bn`, `category_slug_en`, `category_slug_bn`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Food', 'খাবার', '', '', '1686833159.png', NULL, '2023-06-15 06:45:59'),
(2, 'Beauty & Makeup', 'প্রসাধন সামগ্রী', '', '', '1686833172.png', NULL, '2023-06-15 06:46:12'),
(3, 'Cleaning Supplies', 'পরিস্কারের সামগ্রী', '', '', '1686833187.png', NULL, '2023-06-15 06:46:27'),
(4, 'Favourites', 'পছন্দ সামগ্রী', '', '', '1686833199.png', NULL, '2023-06-15 06:46:39'),
(7, 'Personal Care', 'প্রসাধন সামগ্রী', '', '', '1686833323.png', NULL, '2023-06-15 06:48:43'),
(8, 'Health & Wellness', 'স্বাস্থ্য এবং সুস্থতা', '', '', '1686833334.png', NULL, '2023-06-15 06:48:55'),
(9, 'Baby Care', 'শিশুদের ব্যবহার্য', '', '', '1686833356.png', NULL, '2023-06-15 06:49:16'),
(10, 'Home & Kitchen', 'গৃহস্থালি সামগ্রী', '', '', '1686833375.png', NULL, '2023-06-15 06:49:35'),
(11, 'Stationery & Office', 'স্টেশনারি এবং অফিস', '', '', '1686833397.png', NULL, '2023-06-15 06:49:57'),
(13, 'Toy & Sports', 'খেলনা এবং খেলাধুলা', '', '', '1686833437.png', NULL, '2023-06-15 06:50:37'),
(14, 'Fashion & Lifestyle', 'ফ্যাশন এবং লাইফস্টাইল', '', '', '1686833456.png', NULL, '2023-06-15 06:50:56'),
(20, 'Tours & Travel', 'ট্যুর এন্ড ট্রাভেল', 'tours-&-travel', 'ট্যুর-এন্ড-ট্রাভেল', '1688972545.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_sliders`
--

CREATE TABLE `category_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_sliders`
--

INSERT INTO `category_sliders` (`id`, `category_slider_img`, `title`, `description`, `status`, `category_id`, `subcategory_id`, `subsubcategory_id`, `created_at`, `updated_at`) VALUES
(3, '1690092121.jpg', 'jood', 'j', 1, 1, NULL, NULL, '2023-07-23 00:02:01', NULL),
(4, '1690092197.jpg', 'gooid', 'kh', 1, 10, NULL, NULL, '2023-07-23 00:03:17', NULL),
(5, '1690092278.jpg', 'food2', 'f2', 1, 1, 40, NULL, '2023-07-23 00:04:38', NULL),
(6, '1690093775.jpg', 'Special Offer', 'Special Offer', 1, 1, 2, 4, '2023-07-23 00:29:35', NULL),
(7, '1690366606.jpg', 'Tours & Travels', 'y', 1, 20, NULL, NULL, '2023-07-26 04:16:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'OFFER20', 20, '2023-07-25', 1, '2023-07-23 03:29:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_03_26_094359_create_sessions_table', 1),
(7, '2023_03_26_103613_create_admins_table', 1),
(8, '2023_03_30_041337_create_brands_table', 2),
(9, '2023_04_01_175114_create_categories_table', 3),
(10, '2023_04_02_082515_create_sub_categories_table', 4),
(11, '2023_04_03_075816_create_sub_sub_categories_table', 5),
(13, '2023_04_04_063131_create_multi_imgs_table', 6),
(15, '2023_04_04_054308_create_products_table', 7),
(16, '2023_04_06_083757_add_google_id_column', 7),
(20, '2023_04_11_090640_create_sliders_table', 8),
(21, '2023_04_12_085334_create_coupons_table', 9),
(22, '2023_04_13_050654_create_ship_divisions_table', 10),
(23, '2023_04_13_061256_create_ship_districts_table', 11),
(24, '2023_04_13_083034_create_ship_upazilas_table', 12),
(25, '2023_04_18_061252_create_wishlists_table', 13),
(32, '2023_05_04_053827_create_orders_table', 16),
(34, '2023_05_04_054042_create_order_items_table', 17),
(35, '2014_10_12_000000_create_users_table', 18),
(37, '2023_05_15_044443_create_blog_post_categories_table', 19),
(38, '2023_05_15_101652_create_blog_posts_table', 20),
(39, '2023_05_16_065537_create_site_settings_table', 21),
(40, '2023_05_16_110312_create_seos_table', 22);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(4, 5, '1686484313.Chilli.png', '2023-06-11 05:51:53', NULL),
(5, 8, '1686485924.makhon.jpg', '2023-06-11 06:18:45', NULL),
(21, 11, '1686486543.1lt mustard oil.jpg', '2023-06-11 06:29:03', NULL),
(22, 12, '1686486745.batter 500g.jpg', '2023-06-11 06:32:26', NULL),
(23, 12, '1686486746.butter.jpg', '2023-06-11 06:32:26', NULL),
(24, 13, '1686487316.24.jpg', '2023-06-11 06:41:56', NULL),
(25, 14, '1686487588.gee back.jpg', '2023-06-11 06:46:29', NULL),
(26, 14, '1686487589.gee font.jpg', '2023-06-11 06:46:29', NULL),
(27, 14, '1686487589.gee.jpg', '2023-06-11 06:46:30', NULL),
(28, 15, '1686541515.jira 250g.jpg', '2023-06-11 21:45:15', NULL),
(29, 16, '1686545385.15.jpg', '2023-06-11 22:49:45', NULL),
(30, 17, '1686546063.holod.jpg', '2023-06-11 23:01:03', NULL),
(31, 18, '1686546205.holod 250.jpg', '2023-06-11 23:03:26', NULL),
(32, 19, '1686547646.6.jpg', '2023-06-11 23:27:27', NULL),
(33, 19, '1686547647.14.jpg', '2023-06-11 23:27:27', NULL),
(34, 19, '1686547647.মরিচ এর গুড়া.jpg', '2023-06-11 23:27:27', NULL),
(35, 20, '1686547757.6.jpg', '2023-06-11 23:29:17', NULL),
(36, 20, '1686547757.মরিচ এর গুড়া.jpg', '2023-06-11 23:29:18', NULL),
(37, 21, '1686548237.4.jpg', '2023-06-11 23:37:17', NULL),
(38, 21, '1686548237.16.jpg', '2023-06-11 23:37:17', NULL),
(39, 21, '1686548237.dhonia.jpg', '2023-06-11 23:37:18', NULL),
(40, 22, '1686548402.4.jpg', '2023-06-11 23:40:03', NULL),
(41, 22, '1686548403.dhonia 250.jpg', '2023-06-11 23:40:03', NULL),
(42, 23, '1686548634.4.jpg', '2023-06-11 23:43:54', NULL),
(43, 23, '1686548634.dhonia 250.jpg', '2023-06-11 23:43:54', NULL),
(44, 24, '1686550146.banner-01.jpg', '2023-06-12 00:09:06', NULL),
(45, 24, '1686550146.banner-02.jpg', '2023-06-12 00:09:06', NULL),
(46, 25, '1686550970.chak ar mudo.jpg', '2023-06-12 00:22:50', NULL),
(47, 26, '1686551178.chak ar mudo.jpg', '2023-06-12 00:26:19', NULL),
(48, 27, '1686551573.mustard honey.jpg', '2023-06-12 00:32:53', NULL),
(49, 27, '1686551573.surisha houny.jpg', '2023-06-12 00:32:54', NULL),
(50, 28, '1686551854.23.jpg', '2023-06-12 00:37:34', NULL),
(51, 29, '1686552123.26.jpg', '2023-06-12 00:42:03', NULL),
(52, 30, '1686552448.খেজুরের ঝোলা গুড়.jpg', '2023-06-12 00:47:29', NULL),
(53, 31, '1686552628.patali gur3.jpg', '2023-06-12 00:50:29', NULL),
(54, 32, '1686553200.chia shid.jpg', '2023-06-12 01:00:00', NULL),
(55, 33, '1686561704.Sublimation mug.jpg', '2023-06-12 03:21:44', NULL),
(56, 34, '1686568627.sunsilk-co-creations-black-shine-shampoo-300ml_regular_641aafdaa76b4.jpg', '2023-06-12 05:17:07', NULL),
(57, 34, '1686568627.4w9a9971 (1).jpg', '2023-06-12 05:17:07', NULL),
(58, 35, '1690277838.WhatsApp Image 2023-07-25 at 3.27.28 PM.jpeg', '2023-07-25 03:37:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmed_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processing_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picked_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipped_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancel_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `return_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `upazila_id`, `name`, `email`, `phone`, `gender`, `date_of_birth`, `address`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(16, 13, 6, 47, 366, 'toumal mojumder', 'toumalmojumder@gmail.com', '01864504625', 'Male', '1992-10-18', '177 west kafrul', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Taka', 120.00, NULL, 'FMDS10016', '23 July 2023', 'July', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2023-07-23 03:48:34', '2023-07-23 03:48:34'),
(17, 14, 4, 28, 172, 'admin', 'admin@gmail.com', '01864504625', 'Male', '2023-07-04', '188', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Taka', 150.00, NULL, 'FMDS10017', '23 July 2023', 'July', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2023-07-23 06:28:54', '2023-07-23 06:28:54'),
(18, 14, 4, 28, 172, 'admin', 'admin@gmail.com', '01855504625', 'Male', '2023-07-04', '188', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Taka', 150.00, NULL, 'FMDS10018', '23 July 2023', 'July', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2023-07-23 06:29:46', '2023-07-23 06:29:46'),
(19, 15, 3, 25, 201, 'Md. Adnan', 'adnan@gmail.com', '01789143872', 'Male', '1997-11-30', 'Mohammadpur, Dhaka.', 'Cash On Delivery', 'Cash On Delivery', NULL, 'Taka', 1600.00, NULL, 'EM10019', '23 July 2023', 'July', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'confirm', '2023-07-23 07:35:42', '2023-07-23 07:42:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(9, 16, 5, 'red', 'small', '1', 150.00, '2023-07-23 03:48:35', NULL),
(10, 18, 5, 'red', 'small', '1', 150.00, '2023-07-23 06:29:48', NULL),
(11, 19, 25, 'red', 'small', '2', 1000.00, '2023-07-23 07:35:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@ekotamart.com', '$2y$10$im67mDN98KOugewzKDJ..uX8z/j2aa9obgHrA9XOG3p6YRHVFer/a', '2023-06-13 00:22:59'),
('admin@gmail.com', '$2y$10$BeOhIYbMvn/dSWYAlQoXvexb/ecICKP9F3V7Y7nQwsLMdQoeQ1CJq', '2023-06-13 00:23:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `product_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_tags_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_tags_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_size_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_color_bn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_descp_bn` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `sid_sps_section` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_bn`, `product_slug_en`, `product_slug_bn`, `product_code`, `product_qty`, `product_tags_en`, `product_tags_bn`, `product_size_en`, `product_size_bn`, `product_color_en`, `product_color_bn`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_bn`, `long_descp_en`, `long_descp_bn`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `sid_sps_section`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 1, 1, 24, 'Chilli (Morich) Powder 250gm', 'মরিচের গুঁড়া ২৫০ গ্রাম', 'chilli-(morich)-powder-250gm', 'মরিচের-গুঁড়া-২৫০-গ্রাম', '498400', '500', NULL, NULL, NULL, NULL, NULL, NULL, '160', '150', 'Chilli (Morich) Powder 250gm', 'মরিচের গুঁড়া ২৫০ গ্রাম', 'Ekota Mart pure chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.', 'মরিচ রঙে উজ্জ্বল, স্বাদে মূল্যবান। লাল মরিচের সেরা জাতটি আরও উষ্ণতা প্রদান করে। ক্যাপসাইসিন, গরমের প্রধান স্বাদযুক্ত যৌগ এবং ক্যাপস্যানথিন, প্রধান রঙের যৌগটি মরিচের আসল স্বাদ বজায় রাখার জন্য সঠিক অনুপাতে মিশ্রিত করা হয়।', '1686484562.jpg', 1, NULL, NULL, NULL, NULL, 1, '2023-06-11 23:22:19', '2023-06-11 23:22:19'),
(8, 1, 1, 38, 38, 'Butter 250gm', 'বাটার ২৫০ গ্রাম', 'butter-250gm', 'বাটার-২৫০-গ্রাম', '467512', '500', NULL, NULL, NULL, NULL, NULL, NULL, '300', '270', 'Butter is a dairy product, made from the fat and protein components of milk or cream.', 'বাটার হল দুগ্ধজাত পণ্য, যা দুধ বা ক্রিমের ফ্যাট এবং প্রোটিন উপাদানগুলি থেকে তৈরি।', 'Butter is a dairy product, made from the fat and protein components of milk or cream. Most butter is made from condensed cow\'s milk, but it is also produced from the milk of other mammals including sheep, goat, buffalo. We use this butter for cooking and baking. Margarine: Margarine is a substitute for butter or butter. which are made from vegetable fats or plant-based oils such as canola oil, palm fruit oil and soybean oil. * Based on the quality, the price of 1 kg of butter is above 1000 rupees. * Now it is said that what is available in the market for 500 to 700 + taka per kg of butter, is it really? They are actually high quality dalda, margarine, vegetable shortening and butter blends. We may not know that attractive food does not necessarily mean healthy food. For those of you who care about wellness and health and are looking for pure and organic products for lasting well-being. They definitely cost a bit more, but buy the product from a trusted source and after hearing it.', 'বাটার হল দুগ্ধজাত পণ্য, যা দুধ বা ক্রিমের ফ্যাট এবং প্রোটিন উপাদানগুলি থেকে তৈরি। বেশিরভাগ বাটার ঘন গরুর দুধ থেকে তৈরি, এছাড়াও ভেড়া, ছাগল, মহিষ সহ অন্যান্য স্তন্যপায়ী প্রাণীর দুধ থেকে এই বাটার উৎপাদন করা হয়। আমরা এই বাটার রান্নার কাজে ও বেকিং এর কাজে ব্যবহার করে থাকি। মার্জারিন: মার্জারিন হল বাটার বা মাখনের বিকল্প। যা ভেজিটেবল ফ্যাট বা উদ্ভিদ-ভিত্তিক তেল যেমন ক্যানোলা তেল, পাম ফলের তেল এবং সয়াবিন তেল থেকে তৈরি করা হয়। * গুনগত মানের উপর ভিত্তি করে ১ কেজি বাটারের দাম ১০০০ টাকার উপরে হয়ে থাকে। * এখন কথা হচ্ছে বাজারে যে ৫০০ থেকে ৭০০ + টাকা প্রতি কেজি বাটার বলে যা পাওয়া যায়, সেটা আসলে কি? সেগুলো আসলে উন্নত মানের ডালডা, মার্জারিন, ভেজিটেবল শর্টেনিং ও বাটার ব্লেন্ড। আমরা হয়তোবা জানিনা দেখতে আকর্ষণীয় খাবার মানেই স্বাস্থ্যকর খাবার নয়। আপনারা যারা সুস্থতা এবং স্বাস্থ্য কথা চিন্তা করেন এবং দীর্ঘস্থায়ী ভালো থাকার জন্য খাঁটি এবং অর্গানিক প্রডাক্ট খুঁজছেন। তারা অবশ্যই কিছুটা অর্থ বেশি লাগলেও বিশ্বস্ত জায়গা থেকে এবং দেখে শুনে প্রডাক্টি ক্রয় করুন।', '1686485924.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 06:18:44', NULL),
(11, 1, 1, 1, 1, 'Mustard oil (1 liter)', 'সরিষার তেল (১ লিটার)', 'mustard-oil-(1-liter)', 'সরিষার-তেল-(১-লিটার)', '575250', '499', NULL, NULL, NULL, NULL, NULL, NULL, '280', '250', 'Mustard oil is actually an oil obtained by crushing mustard seeds.', 'সরিষার তেল আদতে সরিষা বীজ নিষ্পেষণ করে পাওয়া তেল।', 'Mustard oil is actually an oil obtained by crushing mustard seeds. In addition to cooking, it is also widely used in skin care. Mustard oil is one of the ingredients of Bengali rasanabilas. Be it mustard hilsa or Tehari or Bahari all the fillings, this oil has no taste in the mouth without the intoxicating aroma. .', 'সরিষার তেল আদতে সরিষা বীজ নিষ্পেষণ করে পাওয়া তেল। রান্নার পাশাপাশি ত্বকের যত্নেও এর বিপুল ব্যবহার লক্ষ্যনীয়।সরিষার তেল (Mustard Oil) বাঙালির রসনাবিলাসের এক অন্যতম উপকরণ।আর সেটা যদি হয় কাঠের ঘানির সরিষার তেল তা হলেতো কোনাে কথাই নেই। সর্ষে ইলিশ হোক বা তেহারি অথবা বাহারি সব ভর্তা, এই তেলের মন মাতানো ঘ্রাণ ছাড়া যেনো মুখে রুচেই না। ।', '1686486542.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 06:29:03', '2023-07-11 23:56:28'),
(12, 1, 1, 38, 38, 'Butter 500gm', 'বাটার ৫০০ গ্রাম', 'butter-500gm', 'বাটার-৫০০-গ্রাম', '394167', '500', NULL, NULL, NULL, NULL, NULL, NULL, '600', '540', 'Margarine is a substitute for butter or butter.', 'মার্জারিন: মার্জারিন হল বাটার বা মাখনের বিকল্প।', 'We use this butter for cooking and baking. Margarine: Margarine is a substitute for butter or butter. which are made from vegetable fats or plant-based oils such as canola oil, palm fruit oil and soybean oil.', 'আমরা এই বাটার রান্নার কাজে ও বেকিং এর কাজে ব্যবহার করে থাকি। মার্জারিন: মার্জারিন হল বাটার বা মাখনের বিকল্প। যা ভেজিটেবল ফ্যাট বা উদ্ভিদ-ভিত্তিক তেল যেমন ক্যানোলা তেল, পাম ফলের তেল এবং সয়াবিন তেল থেকে তৈরি করা হয়।', '1686486745.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 06:32:25', NULL),
(13, 1, 1, 39, 39, 'Medjool premium (1kg)', 'মেডজুল প্রিমিয়াম (১ কেজি )', 'medjool-premium-(1kg)', 'মেডজুল-প্রিমিয়াম-(১-কেজি-)', '666473', '20', NULL, NULL, NULL, NULL, NULL, NULL, '1250', '1200', 'Medjul dates are known as the queen of dates.', 'খেজুরের রানি হিসাবে পরিচিত মেডজুল খেজুর ।', 'Medjul dates are known as the queen of dates. Soft to eat and very sweet. Medjool dates are rich in calcium and iron. Eating a few dates reduces the intensity of hunger. This fruit stimulates the stomach to take less food. On the other hand, it fills the deficiency of sugar required by the body. As a result, it prevents twisting. Calcium helps in bone formation. And dates have a lot of them. Calcium, which strengthens the bones, all the nutrients in dates, which help in digestion. Prevents constipation. Dates prevent de-hydration. Maintains sodium-potassium balance in the body.', 'খেজুরের রানি হিসাবে পরিচিত মেডজুল খেজুর । খেতে নরম এবং প্রচুর মিষ্টি হয়ে থাকে। মেডজুল খেজুরে প্রচুর ক্যালসিয়াম এবং আইরন থাকে। অল্প কয়েকটা খেজুর খেলে ক্ষুধার তীব্রতা কমে যায়। এই ফল পাকস্থলীকে কম খাবার গ্রহণে উদ্বুদ্ধ করে। অন্যদিকে শরীরের প্রয়োজনীয় শর্করার ঘাটতি পূরণ করে দেয়। ফলে মুটিয়ে যাওয়া প্রতিরোধ করে। ক্যালসিয়াম হাড় গঠনে সহায়ক। আর খেজুরে আছে প্রচুর পরিমাণ করে।ক্যালসিয়াম, যা হাড়কে মজবুত খেজুরে আছে এমন সব পুষ্টিগুণ, যা খাদ্য পরিপাকে সাহায্য করে। কোষ্ঠকাঠিন্য রোধ করে। খেজুর ডি-হাইড্রেশন রোধ করে। শরীরে সোডিয়াম-পটাশিয়ামের সমতা রক্ষা করে।', '1686487315.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-11 06:41:56', NULL),
(14, 1, 1, 1, 2, 'Ghee (500gm)', 'গাওয়া ঘি (৫০০গ্রাম)', 'ghee-(500gm)', 'গাওয়া-ঘি-(৫০০গ্রাম)', '993643', '100', NULL, NULL, NULL, NULL, NULL, NULL, '700', '630', 'We are trying to feed Pabna pure ghee to people all over the country.', 'সারা দেশের মানুষকে পাবনার খাঁটি ঘি খাওয়ানোর জন্য আমরা চেষ্টা করে যাচ্ছি ।', 'Why is pure ghee of Pabna famous this question brings a little thought in the mind, because there are 64 districts why I hear so much of pure ghee of Pabna? Pabna pure ghee is famous since the British period. Pabna Ghee is an old tradition of entire Pabna district. Where can I get pure ghee from Pabna? If you have such question then feel free to try Ekota Mart\'s ghee. We are trying to feed Pabna pure ghee to people all over the country.', 'পাবনার খাঁটি ঘি কেন বিখ্যাত এই প্রশ্নটা টি কিন্তু মনের মধ্যে একটু ভাবনা নিয়ে আসে, কারণ ৬৪টি জেলা থাকতে পাবনার খাঁটি ঘি এর কেন এত শুনাম ? মূলত সেই ব্রিটিশ আমল থেকেই পাবনার খাঁটি ঘি নামকরা । পাবনার ঘি পুরো পাবনা জেলার একটি পুরনো ঐতিহ্য । পাবনার খাঁটি ঘি কোথায় পাবো ? আপনার মনে যদি এমন প্রশ্ন আসে তা হলে আপনি নির্দ্বিধায় Ekota Mart এর ঘি খেয়ে দেখতে পারেন । সারা দেশের মানুষকে পাবনার খাঁটি ঘি খাওয়ানোর জন্য আমরা চেষ্টা করে যাচ্ছি ।', '1686487587.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 06:46:28', NULL),
(15, 1, 1, 1, 24, 'Cumin Powder 200gm', 'জিরাগুড়া ২০০গ্রাম', 'cumin-powder-200gm', 'জিরাগুড়া-২০০গ্রাম', '805783', '500', NULL, NULL, NULL, NULL, NULL, NULL, '230', '220', 'বিভিন্ন দেশে জিরার ফল শুকিয়ে গোটা অথবা গুঁড়ো মশলা হিসেবে রান্নায় ব্যবহার করা হয়।', 'In various countries, cumin seeds are dried whole or used as a powdered spice in cooking.', 'জিরা (বৈজ্ঞানিক নাম: Cuminum cyminum), জীরা বা কথ্যভাষায় জিরে হলো অ্যাপিয়াসি গোত্রের একটি পুষ্পক উদ্ভিদ। এটি মধ্যপ্রাচ্য থেকে পূর্বে ভারতীয় উপমহাদেশ পর্যন্ত বিস্তৃত অঞ্চলের স্থানীয় প্রজাতি। এর বীজ ফলের ভেতরে থাকে। বিভিন্ন দেশে জিরার ফল শুকিয়ে গোটা অথবা গুঁড়ো মশলা হিসেবে রান্নায় ব্যবহার করা হয়।', 'Cumin (scientific name: Cuminum cyminum), cumin or cumin colloquially is a flowering plant of the Apiaceae family. It is an endemic species ranging from the Middle East to the Indian subcontinent in the east. Its seeds are inside the fruit. In various countries, cumin seeds are dried whole or used as a powdered spice in cooking.', '1686541514.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 21:46:12', '2023-06-11 21:46:12'),
(16, 1, 1, 1, 24, 'Cumin Powder 400gm', 'জিরাগুড়া ৪০০গ্রাম', 'cumin-powder-400gm', 'জিরাগুড়া-৪০০গ্রাম', '216175', '500', NULL, NULL, NULL, NULL, NULL, NULL, '390', '370', 'Cuminum cyminum), cumin or cumin colloquially is a flowering plant of the Apiaceae family.', 'জীরা বা কথ্যভাষায় জিরে হলো অ্যাপিয়াসি গোত্রের একটি পুষ্পক উদ্ভিদ।', 'Cumin (scientific name: Cuminum cyminum), cumin or cumin colloquially is a flowering plant of the Apiaceae family. It is an endemic species ranging from the Middle East to the Indian subcontinent in the east. Its seeds are inside the fruit. In various countries, cumin seeds are dried whole or used as a powdered spice in cooking.', 'জিরা (বৈজ্ঞানিক নাম: Cuminum cyminum), জীরা বা কথ্যভাষায় জিরে হলো অ্যাপিয়াসি গোত্রের একটি পুষ্পক উদ্ভিদ। এটি মধ্যপ্রাচ্য থেকে পূর্বে ভারতীয় উপমহাদেশ পর্যন্ত বিস্তৃত অঞ্চলের স্থানীয় প্রজাতি। এর বীজ ফলের ভেতরে থাকে। বিভিন্ন দেশে জিরার ফল শুকিয়ে গোটা অথবা গুঁড়ো মশলা হিসেবে রান্নায় ব্যবহার করা হয়।', '1686545384.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-11 22:49:45', NULL),
(17, 1, 1, 1, 24, 'Turmeric Powder (500gm)', 'হলুদগুড়া ৫০০ গ্রাম', 'turmeric-powder-(500gm)', 'হলুদগুড়া-৫০০-গ্রাম', '791796', '500', NULL, NULL, NULL, NULL, NULL, NULL, '190', '170', 'Turmeric has many qualities in the world of spices.', 'মসলার জগতে হলুদের রয়েছে নানা গুণাবলি।', 'Turmeric has many qualities in the world of spices. Turmeric excels equally in taste as well as color. On the other hand, there is a long list in terms of qualities. Turmeric is originally a spice derived from the root of the plant, a member of the ginger family.\r\nThe original origin of turmeric is South Asia. A temperature of 20-30 degrees Celsius with plenty of water is the ideal climate for turmeric production. Apart from cooking, turmeric has been used for thousands of years and is equally used in various medicinal applications. It is believed that the name yellow is derived from the Arabic word.', 'মসলার জগতে হলুদের রয়েছে নানা গুণাবলি। স্বাদের সঙ্গে সঙ্গে রঙের ক্ষেত্রেও হলুদ সমানভাবে পারদর্শী। অন্যদিকে গুণাবলির দিক থেকেও আছে লম্বা তালিকা। হলুদ মূলত আদা গোত্রীয় পরিবারের সদস্য, সঙ্গে গাছের শিকড় থেকে প্রাপ্ত এক ধরনের মসলা।\r\nহলুদের আদি উৎপত্তিস্থল দক্ষিণ এশিয়া। প্রচুর পরিমাণ পানি সঙ্গে ২০-৩০ ডিগ্রি সেলসিয়াস তাপমাত্রা হলুদ উৎপাদনের জন্য আদর্শ আবহাওয়া। হাজার হাজার বছর ধরে ব্যবহৃত এ হলুদ রান্না ছাড়াও নানা ধরনের ঔষধি কাজের ক্ষেত্রেও সমানভাবে চর্চিত। ধারণা করা হয়, হলুদ নামটি আরবি শব্দ থেকে এসেছে।', '1686546062.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-11 23:01:03', NULL),
(18, 1, 1, 1, 24, 'Turmeric Powder (250gm)', 'হলুদগুড়া ২৫০ গ্রাম', 'turmeric-powder-(250gm)', 'হলুদগুড়া-২৫০-গ্রাম', '303660', '500', NULL, NULL, NULL, NULL, NULL, NULL, '105', '95', 'Turmeric has many qualities in the world of spices.', 'মসলার জগতে হলুদের রয়েছে নানা গুণাবলি।', 'Turmeric has many qualities in the world of spices. Turmeric excels equally in taste as well as color. On the other hand, there is a long list in terms of qualities. Turmeric is originally a spice derived from the root of the plant, a member of the ginger family.\r\nThe original origin of turmeric is South Asia. A temperature of 20-30 degrees Celsius with plenty of water is the ideal climate for turmeric production. Apart from cooking, turmeric has been used for thousands of years and is equally used in various medicinal applications. It is believed that the name yellow is derived from the Arabic word.', 'মসলার জগতে হলুদের রয়েছে নানা গুণাবলি। স্বাদের সঙ্গে সঙ্গে রঙের ক্ষেত্রেও হলুদ সমানভাবে পারদর্শী। অন্যদিকে গুণাবলির দিক থেকেও আছে লম্বা তালিকা। হলুদ মূলত আদা গোত্রীয় পরিবারের সদস্য, সঙ্গে গাছের শিকড় থেকে প্রাপ্ত এক ধরনের মসলা।\r\nহলুদের আদি উৎপত্তিস্থল দক্ষিণ এশিয়া। প্রচুর পরিমাণ পানি সঙ্গে ২০-৩০ ডিগ্রি সেলসিয়াস তাপমাত্রা হলুদ উৎপাদনের জন্য আদর্শ আবহাওয়া। হাজার হাজার বছর ধরে ব্যবহৃত এ হলুদ রান্না ছাড়াও নানা ধরনের ঔষধি কাজের ক্ষেত্রেও সমানভাবে চর্চিত। ধারণা করা হয়, হলুদ নামটি আরবি শব্দ থেকে এসেছে।', '1686546205.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-11 23:03:25', NULL),
(19, 1, 1, 1, 24, 'Chilli (Morich) Powder 400gm', 'মরিচের গুঁড়া ৪০০ গ্রাম', 'chilli-(morich)-powder-400gm', 'মরিচের-গুঁড়া-৪০০-গ্রাম', '408997', '500', NULL, NULL, NULL, NULL, NULL, NULL, '250', '240', 'Chilli (Morich) Powder 400gm', 'মরিচের গুঁড়া ৪০০ গ্রাম', 'Ekota Mart pure chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.', 'মরিচ রঙে উজ্জ্বল, স্বাদে মূল্যবান। লাল মরিচের সেরা জাতটি আরও উষ্ণতা প্রদান করে। ক্যাপসাইসিন, গরমের প্রধান স্বাদযুক্ত যৌগ এবং ক্যাপস্যানথিন, প্রধান রঙের যৌগটি মরিচের আসল স্বাদ বজায় রাখার জন্য সঠিক অনুপাতে মিশ্রিত করা হয়।', '1686547646.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 23:27:26', NULL),
(20, 1, 1, 1, 24, 'Chilli (Morich) Powder 200gm', 'মরিচের গুঁড়া ২০০ গ্রাম', 'chilli-(morich)-powder-200gm', 'মরিচের-গুঁড়া-২০০-গ্রাম', '350985', '500', NULL, NULL, NULL, NULL, NULL, NULL, '130', '125', 'Chilli (Morich) Powder 200gm', 'মরিচের গুঁড়া ২০০ গ্রাম', 'Ekota Mart pure chilli is vivid in color, precious in flavor. Best variety of red chilli provides more hotness. Capsaicin, the main flavoring compound for hotness and Capsanthin, the main coloring compound is blended in proper proportion to maintain the real taste of chili.', 'মরিচ রঙে উজ্জ্বল, স্বাদে মূল্যবান। লাল মরিচের সেরা জাতটি আরও উষ্ণতা প্রদান করে। ক্যাপসাইসিন, গরমের প্রধান স্বাদযুক্ত যৌগ এবং ক্যাপস্যানথিন, প্রধান রঙের যৌগটি মরিচের আসল স্বাদ বজায় রাখার জন্য সঠিক অনুপাতে মিশ্রিত করা হয়।', '1686547757.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 23:29:17', NULL),
(21, 1, 1, 1, 24, 'Coriander 500 gm', 'ধনিয়াগুড়া ৫০০গ্রাম', 'coriander-500-gm', 'ধনিয়াগুড়া-৫০০গ্রাম', '382461', '500', NULL, NULL, NULL, NULL, NULL, NULL, '150', '135', 'Coriander (scientific name: Coriandrum sativum) is an aromatic medicinal plant.', 'ধনিয়া বা ধনে (বৈজ্ঞানিক নাম: Coriandrum sativum) একটি সুগন্ধি ঔষধি গাছ।তবে মসলা হিসাবে এর ব্যাপক ব্যাবহার।', 'Coriander (scientific name: Coriandrum sativum) is an aromatic medicinal plant. It is an annual plant. It is a native plant of Southwest Asia and North Africa. The oil made from its seeds is used in perfumery and medicine. Coriander seeds are used as a food spice almost everywhere in the Bengal region. Coriander leaves are used in Asian chutneys and Mexican salsas.', 'ধনিয়া বা ধনে (বৈজ্ঞানিক নাম: Coriandrum sativum) একটি সুগন্ধি ঔষধি গাছ। এটি একটি একবর্ষজীবী উদ্ভিদ। এটি দক্ষিণ-পশ্চিম এশিয়া ও উত্তর আফ্রিকার স্থানীয় উদ্ভিদ। এর বীজ থেকে বানানো তেল সুগন্ধিতে, ওষুধে ব্যবহার করা হয়। বঙ্গ অঞ্চলের প্রায় সর্বত্র ধনের বীজ খাবারের মসলা হিসেবে ব্যবহৃত হয়। ধনের পাতা এশীয় চাটনি ও মেক্সিকান সালসাতে ব্যবহার করা হয়।', '1686548236.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-11 23:37:38', '2023-06-11 23:37:38'),
(22, 1, 1, 1, 24, 'Coriander 250gm', 'ধনিয়াগুড়া ২৫০গ্রাম', 'coriander-250gm', 'ধনিয়াগুড়া-২৫০গ্রাম', '326693', '500', NULL, NULL, NULL, NULL, NULL, NULL, '100', '90', 'Coriander (scientific name: Coriandrum sativum) is an aromatic medicinal plant.', 'ধনিয়া বা ধনে (বৈজ্ঞানিক নাম: Coriandrum sativum) একটি সুগন্ধি ঔষধি গাছ।তবে মসলা হিসাবে এর ব্যাপক ব্যাবহার।', 'Coriander (scientific name: Coriandrum sativum) is an aromatic medicinal plant. It is an annual plant. It is a native plant of Southwest Asia and North Africa. The oil made from its seeds is used in perfumery and medicine. Coriander seeds are used as a food spice almost everywhere in the Bengal region. Coriander leaves are used in Asian chutneys and Mexican salsas.', 'ধনিয়া বা ধনে (বৈজ্ঞানিক নাম: Coriandrum sativum) একটি সুগন্ধি ঔষধি গাছ। এটি একটি একবর্ষজীবী উদ্ভিদ। এটি দক্ষিণ-পশ্চিম এশিয়া ও উত্তর আফ্রিকার স্থানীয় উদ্ভিদ। এর বীজ থেকে বানানো তেল সুগন্ধিতে, ওষুধে ব্যবহার করা হয়। বঙ্গ অঞ্চলের প্রায় সর্বত্র ধনের বীজ খাবারের মসলা হিসেবে ব্যবহৃত হয়। ধনের পাতা এশীয় চাটনি ও মেক্সিকান সালসাতে ব্যবহার করা হয়।', '1686548402.jpg', 1, NULL, NULL, 1, NULL, 1, '2023-06-11 23:40:02', NULL),
(23, 1, 1, 1, 24, 'Coriander 200 gm', 'ধনিয়াগুড়া ২০০গ্রাম', 'coriander-200-gm', 'ধনিয়াগুড়া-২০০গ্রাম', '282735', '500', NULL, NULL, NULL, NULL, NULL, NULL, '80', '70', 'Coriander (scientific name: Coriandrum sativum) is an aromatic medicinal plant.', 'ধনিয়া বা ধনে (বৈজ্ঞানিক নাম: Coriandrum sativum) একটি সুগন্ধি ঔষধি গাছ।তবে মসলা হিসাবে এর ব্যাপক ব্যাবহার।', 'Coriander (scientific name: Coriandrum sativum) is an aromatic medicinal plant. It is an annual plant. It is a native plant of Southwest Asia and North Africa. The oil made from its seeds is used in perfumery and medicine. Coriander seeds are used as a food spice almost everywhere in the Bengal region. Coriander leaves are used in Asian chutneys and Mexican salsas.', 'ধনিয়া বা ধনে (বৈজ্ঞানিক নাম: Coriandrum sativum) একটি সুগন্ধি ঔষধি গাছ। এটি একটি একবর্ষজীবী উদ্ভিদ। এটি দক্ষিণ-পশ্চিম এশিয়া ও উত্তর আফ্রিকার স্থানীয় উদ্ভিদ। এর বীজ থেকে বানানো তেল সুগন্ধিতে, ওষুধে ব্যবহার করা হয়। বঙ্গ অঞ্চলের প্রায় সর্বত্র ধনের বীজ খাবারের মসলা হিসেবে ব্যবহৃত হয়। ধনের পাতা এশীয় চাটনি ও মেক্সিকান সালসাতে ব্যবহার করা হয়।', '1686548633.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-11 23:43:54', NULL),
(24, 18, 2, NULL, NULL, 'test1', 'test', 'test1', 'test', '711355', '200', NULL, NULL, NULL, NULL, NULL, NULL, '500', '300', 'teset', 'test', 'test', 'test', '1686550146.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-12 00:09:06', NULL),
(25, 1, 1, 40, 40, 'Natural Honey 1kg', 'প্রাকৃতিক চাকের মধু ( ১ কেজি )', 'natural-honey-1kg', 'প্রাকৃতিক-চাকের-মধু-(-১-কেজি-)', '174406', '48', NULL, NULL, NULL, NULL, NULL, NULL, '1200', '1000', 'Honey is a sweet and thick liquid that bees and other insects make from the nectar of flowers and preserves the hive.', 'মধু হল এক প্রকারের মিষ্টি ও ঘন তরল পদার্থ, যা মৌমাছি ও অন্যান্য পতঙ্গ ফুলের নির্যাস হতে তৈরি করে এবং মৌচাকে সংরক্ষণ করে।', 'Honey is a sweet and thick liquid that bees and other insects make from the nectar of flowers and preserves the hive. It is a herbal liquid with high medicinal properties; It is delicious. Honey contains about 45 nutrients. Pollen honey contains 25 to 37 percent glucose, 34 to 43 percent fructose, 0.5 to 3.0 percent sucrose, and 5 to 12 percent montose. There are also 22 percent amino acids, 28 percent mineral salts and 11 percent enzymes. It does not contain fat and protein. 100 grams of honey contains 288 calories. Honey contains antibacterial and antimicrobial properties including vitamins B1, B2, B3, B5, B6, iodine, zinc and copper.', 'মধু হল এক প্রকারের মিষ্টি ও ঘন তরল পদার্থ, যা মৌমাছি ও অন্যান্য পতঙ্গ ফুলের নির্যাস হতে তৈরি করে এবং মৌচাকে সংরক্ষণ করে।এটি উচ্চ ঔষধিগুণ সম্পন্ন একটি ভেষজ তরল ; এটি সুপেয়।মধুতে প্রায় ৪৫টি খাদ্য উপাদান থাকে। ফুলের পরাগের মধুতে থাকে ২৫ থেকে ৩৭ শতাংশ গ্লুকোজ, ৩৪ থেকে ৪৩ শতাংশ ফ্রুক্টোজ, ০.৫ থেকে ৩.০ শতাংশ সুক্রোজ এবং ৫-১২ শতাংশ মন্টোজ। আরো থাকে ২২ শতাংশ অ্যামাইনো এসিড, ২৮ শতাংশ খনিজ লবণ এবং ১১ ভাগ এনজাইম। এতে চর্বি ও প্রোটিন নেই। ১০০ গ্রাম মধুতে থাকে ২৮৮ ক্যালরি। মধুর মধ্যে রয়েছে ভিটামিন বি১, বি২, বি৩, বি৫, বি৬, আয়োডিন, জিংক ও কপার সহ অ্যান্টিব্যাকটেরিয়াল ও অ্যান্টিমাইক্রোবিয়াল উপাদান।', '1686550969.jpg', 1, 1, 1, 1, NULL, 1, '2023-06-12 00:22:50', '2023-07-23 07:42:29'),
(26, 1, 1, 40, 40, 'Natural Honey 500gm', 'প্রাকৃতিক চাকের মধু ( ৫০০গ্রাম )', 'natural-honey-500gm', 'প্রাকৃতিক-চাকের-মধু-(-৫০০গ্রাম-)', '390623', '50', NULL, NULL, NULL, NULL, NULL, NULL, '600', '500', 'Honey is a sweet and thick liquid that bees and other insects make from the nectar of flowers and preserves the hive.', 'মধু হল এক প্রকারের মিষ্টি ও ঘন তরল পদার্থ, যা মৌমাছি ও অন্যান্য পতঙ্গ ফুলের নির্যাস হতে তৈরি করে এবং মৌচাকে সংরক্ষণ করে।', 'Honey is a sweet and thick liquid that bees and other insects make from the nectar of flowers and preserves the hive. It is a herbal liquid with high medicinal properties; It is delicious. Honey contains about 45 nutrients. Pollen honey contains 25 to 37 percent glucose, 34 to 43 percent fructose, 0.5 to 3.0 percent sucrose, and 5 to 12 percent montose. There are also 22 percent amino acids, 28 percent mineral salts and 11 percent enzymes. It does not contain fat and protein. 100 grams of honey contains 288 calories. Honey contains antibacterial and antimicrobial properties including vitamins B1, B2, B3, B5, B6, iodine, zinc and copper.', 'মধু হল এক প্রকারের মিষ্টি ও ঘন তরল পদার্থ, যা মৌমাছি ও অন্যান্য পতঙ্গ ফুলের নির্যাস হতে তৈরি করে এবং মৌচাকে সংরক্ষণ করে।এটি উচ্চ ঔষধিগুণ সম্পন্ন একটি ভেষজ তরল ; এটি সুপেয়।মধুতে প্রায় ৪৫টি খাদ্য উপাদান থাকে। ফুলের পরাগের মধুতে থাকে ২৫ থেকে ৩৭ শতাংশ গ্লুকোজ, ৩৪ থেকে ৪৩ শতাংশ ফ্রুক্টোজ, ০.৫ থেকে ৩.০ শতাংশ সুক্রোজ এবং ৫-১২ শতাংশ মন্টোজ। আরো থাকে ২২ শতাংশ অ্যামাইনো এসিড, ২৮ শতাংশ খনিজ লবণ এবং ১১ ভাগ এনজাইম। এতে চর্বি ও প্রোটিন নেই। ১০০ গ্রাম মধুতে থাকে ২৮৮ ক্যালরি। মধুর মধ্যে রয়েছে ভিটামিন বি১, বি২, বি৩, বি৫, বি৬, আয়োডিন, জিংক ও কপার সহ অ্যান্টিব্যাকটেরিয়াল ও অ্যান্টিমাইক্রোবিয়াল উপাদান।', '1686551178.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 00:26:18', NULL),
(27, 1, 1, 40, 40, 'Mustard flower honey', 'সরিষা ফুলের মধু', 'mustard-flower-honey', 'সরিষা-ফুলের-মধু', '399551', '20', NULL, NULL, NULL, NULL, NULL, NULL, '450', '400', 'Characteristics of mustard flower honey This honey is very sweet. The color will be light yellow.', 'সরিষা ফুলের মধুর বৈশিষ্ট্য এই মধু খুবই মিষ্টি। রং হবে হালকা হলুদ বর্ণের।', 'Characteristics of mustard flower honey This honey is very sweet. The color will be light yellow.\r\nHowever, many of us do not know the biggest feature of this honey. — Mustard flower honey freezes in a few days in winter, and in summer it is a little delayed, it may take a few weeks or 2/3 months or a little more. But Jambei. If it doesn\'t freeze, it means there is a problem with the honey. Bottled mustard flower honey may congeal entirely, or most or all of it may congeal. Mustard flower honey accumulates and takes the form of ghee. Congealed honey will be soft, soft, and small granules.', 'সরিষা ফুলের মধুর বৈশিষ্ট্য এই মধু খুবই মিষ্টি। রং হবে হালকা হলুদ বর্ণের।\r\nতবে এই মধুর সবচেয়ে বড় যে বৈশিষ্ট্য, তা আমাদের অনেকের জানা নেই। — সরিষা ফুলের মধু শীতকালে অল্প কিছু দিনের মধ্যেই জমে যায়, আর গরমের সময় জমতে একটু দেরি হয়, কয়েক সপ্তাহ বা ২/৩ মাস বা এর চেয়ে একটু বেশি সময় লেগে যেতে পারে। তবে জমবেই। যদি না জমে, তবে বুঝতে হবে মধুতে সমস্যা আছে। বোতলে রাখা সরিষা ফুলের মধুর পুরোটাই জমে যেতে পারে অথবা বেশিরভাগ অংশ বা আংশিক জমে যাবে। সরিষা ফুলের মধু জমে অনেকটা ঘিয়ের রূপ ধারণ করে। জমে যাওয়া মধু মোলায়েম, নরম, ছোট ছোট দানাদার হবে।', '1686551573.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 00:32:53', NULL),
(28, 1, 1, 39, 39, 'Safavi or Kalmi dates (Khejur 1 kg)', 'সাফাওয়ি বা কালমি খেজুর (১ কেজি )', 'safavi-or-kalmi-dates-(khejur-1-kg)', 'সাফাওয়ি-বা-কালমি-খেজুর-(১-কেজি-)', '186737', '20', NULL, NULL, NULL, NULL, NULL, NULL, '850', '700', 'The place of origin of Kalmi dates is Madinah Munawara.', 'কালমী খেজুরের উৎপত্তিস্থল মাদীনা মুনাওয়ারা ।', 'The place of origin of Kalmi dates is Madinah Munawara. Although this date is better known as \'Safawi\' in Madina. But this \'Safawi\' date of Madina is better known as \"Kalmi\" all over the world. Its taste is very sweet. Also, these dates are brown in color and quite large in size. Many nutritionists call this date a \'superfood\'. He called it. Because, within this one date, there is treatment for anemia, intoxication, bone weakness, and heart disease. Because kalmi is a dry date and 80% of the sugar in dry dates goes directly to the blood, so dry dates are called the glucose of the desert. Dates contain amino acids and tryptophan, which are very important in the production of serotonin hormones.', 'কালমী খেজুরের উৎপত্তিস্থল মাদীনা মুনাওয়ারা । যদিও মাদীনায় এই খেজুর ‘সাফাওয়ি’ নামে অধিক পরিচিত।কিন্তু মাদীনার এই ‘সাফাওয়ি’ খেজুরই সারা বিশ্বে “কালমী” নামে অধিক পরিচিত।এর স্বাদ বেশ মিষ্টি।তাছাড়া এই খেজুর দেখতে বাদামী রঙের ও বেশ বড় আকারের হয়।অনেক পুষ্টিবিজ্ঞানী এই খেজুরকে ‘সুপারফুড’ বলে অভিহিত করেন। কারণ, এই একটা খেজুরের মাঝেই রক্তস্বল্পতা, ইনটক্সিকেশন, হাঁড়ের দুর্বলতা, ও হৃদরোগের চিকিৎসা রয়েছে।কারন কালমি একটি শুকনো খেজুর আর শুকনো খেজুরের শতকরা ৮০ ভাগই চিনি যা সরাসরি রক্তে চলে যায়, তাই শুকনো খেজুরকে মরুভূমির গ্লুকোজ বলা হয়ে থাকে৷ খেজুরে আছে অ্যামিনো অ্যাসিড ও ট্রিপটোফেন, যেটি সিরোটোনিন হরমোন তৈরিতে খুবই গুরুত্বপূর্ণ।', '1686551854.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 00:37:34', NULL),
(29, 1, 1, 39, 39, 'Dabbas dates (1 kg)', 'দাব্বাস খেজুর ( ১ কেজি )', 'dabbas-dates-(1-kg)', 'দাব্বাস-খেজুর-(-১-কেজি-)', '437635', '20', NULL, NULL, NULL, NULL, NULL, NULL, '400', '350', 'Dabbas dates are in huge demand in Bangladesh, so a large quantity of these dates are imported every year.', 'দাব্বাস খেজুর বাংলাদেশের  ব্যাপক চাহিদা থাকায় প্রতি বছর প্রচুর পরিমাণে এই খেজুর আমদানি করা হয়।', 'Dabbas dates are in huge demand in Bangladesh, so a large quantity of these dates are imported every year. Small in appearance but incomparable in taste and very cheap in price. These dates are mainly available in open and packet form. But you can get Dabbas dates only in packet form from us.\r\nAmong the different dates in Bangladesh, Dabas date is the most popular date, which is very beautiful in appearance and full of taste. Soft to eat and very sweet. Dabas dates are rich in calcium and iron.', 'দাব্বাস খেজুর বাংলাদেশের  ব্যাপক চাহিদা থাকায় প্রতি বছর প্রচুর পরিমাণে এই খেজুর আমদানি করা হয়। দেখতে ছোট কিন্তু স্বাদে অতুলনীয় এবং দামে একদম সস্তা। মূলত খোলা ও প্যাকেট অবস্থায় এই খেজুর পাওয়া যায়। কিন্তু আমাদের কাছে শুধু প্যাকেট অবস্থায় দাব্বাস খেজুরটি পাবেন ।\r\nবাংলাদেশে বিভিন্ন খেজুরের মধ্যে,ব্যাপক চাহিদা সম্পন্ন খেজুর দাবাস খেজুর, দেখতে অনেক চমৎকার এবং স্বাদেও ভরপুর। খেতে নরম এবং প্রচুর মিষ্টি হয়ে থাকে। দাবাস খেজুরে প্রচুর ক্যালসিয়াম এবং আইরন থাকে।', '1686552123.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 00:42:03', NULL),
(30, 1, 1, 40, 41, 'Date molasses (Jhola Gur 1kg)', 'ঝুলা গুড় (১ কেজি )', 'date-molasses-(jhola-gur-1kg)', 'ঝুলা-গুড়-(১-কেজি-)', '461865', '1', NULL, NULL, NULL, NULL, NULL, NULL, '600', '600', 'We all know more or less about the fame and popularity of date molasses.', 'খেজুরের গুড় সম্পর্কে আমরা কম বেশি সবাই জানি এর খ্যাতি ও জনপ্রিয়তা সম্পর্কে ।', 'We all know more or less about the fame and popularity of date molasses. So get in touch now to get pure date jaggery in Jessohar without delay', 'খেজুরের গুড় সম্পর্কে আমরা কম বেশি সবাই জানি এর খ্যাতি ও জনপ্রিয়তা সম্পর্কে । তাই দেরি না করে যশোহরের খাঁটি খেজুরের গুড় পেতে এখনি যোগাযোগ করুন', '1686552447.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 00:47:28', NULL),
(31, 1, 1, 40, 41, 'Date molasses (Patali Gur 1kg)', 'পাটালি গুড় (১ কেজি )', 'date-molasses-(patali-gur-1kg)', 'পাটালি-গুড়-(১-কেজি-)', '706969', '1', NULL, NULL, NULL, NULL, NULL, NULL, '600', '600', 'We all know more or less about the fame and popularity of date molasses.', 'খেজুরের গুড় সম্পর্কে আমরা কম বেশি সবাই জানি এর খ্যাতি ও জনপ্রিয়তা সম্পর্কে ।', 'We all know more or less about the fame and popularity of date molasses. So get in touch now to get pure date jaggery in Jessohar without delay', 'খেজুরের গুড় সম্পর্কে আমরা কম বেশি সবাই জানি এর খ্যাতি ও জনপ্রিয়তা সম্পর্কে । তাই দেরি না করে যশোহরের খাঁটি খেজুরের গুড় পেতে এখনি যোগাযোগ করুন', '1686552627.jpg', NULL, NULL, NULL, NULL, NULL, 1, '2023-06-12 00:50:28', NULL),
(32, 1, 1, 39, 42, 'Chia seeds (250gm)', 'চিয়া সিড (২৫০ গ্রাম)', 'chia-seeds-(250gm)', 'চিয়া-সিড-(২৫০-গ্রাম)', '616476', '300', NULL, NULL, NULL, NULL, NULL, NULL, '300', '270', 'For fast weight loss, mixing 2 teaspoons of chia seeds and 2 teaspoons of lemon juice in 1 glass of water in the morning and at night before going to bed on an empty stomach will give good results.', 'দ্রুত ওজন কমাতে খালি পেটে সকালে এবং রাতে ঘুমানোর আগে ১গ্লাস পানির মধ্যে ২ চা চামচ চিয়া সিড ও ২ চামচ লেবুর রস মিশিয়ে খেলে ভালো ফলাফল পাওয়া যাবে।', 'For fast weight loss, mixing 2 teaspoons of chia seeds and 2 teaspoons of lemon juice in 1 glass of water in the morning and at night before going to bed on an empty stomach will give good results.\r\n\r\nThose qualities are:\r\nIt increases strength and performance.\r\nChia seeds strengthen the immune system.\r\nChia seeds help in weight loss.\r\nChia seeds keep blood sugar (blood sugar) normal, thereby reducing the risk of diabetes.\r\nChia seeds are especially beneficial for bone health.\r\nChia seeds keep the colon clean thereby reducing the risk of colon cancer.\r\nChia seeds flush out toxins from the body.\r\nChia seeds reduce inflammation.\r\nChia seeds help with better sleep.\r\nChia seeds prevent cancer.\r\nChia seeds aid in digestion.\r\nChia seeds relieve knee and joint pain.', 'দ্রুত ওজন কমাতে খালি পেটে সকালে এবং রাতে ঘুমানোর আগে ১গ্লাস পানির মধ্যে ২ চা চামচ চিয়া সিড ও ২ চামচ লেবুর রস মিশিয়ে খেলে ভালো ফলাফল পাওয়া যাবে।\r\n\r\nযেসকল গুনাগুন রয়েছেঃ\r\nএটা শক্তি এবং কর্মক্ষমতা বৃদ্ধি করে।\r\nচিয়া সীড রোগ প্রতিরোধ ক্ষমতাকে আরও শক্তিশালী করে।\r\nচিয়া বীজ ওজন কমাতে সহায়তা করে।\r\nচিয়া সিড ব্লাড সুগার (রক্তের চিনি) স্বাভাবিক রাখে, ফলে ডায়াবেটিস হওয়ার ঝুঁকি কমায়।\r\nচিয়া বীজ হাড়ের স্বাস্থ্য রক্ষায় বিশেষ উপকারি।\r\nচিয়া সিড মলাশয় (colon) পরিষ্কার রাখে ফলে কোলন ক্যান্সারের ঝুঁকি কমায়।\r\nচিয়া সিড শরীর থেকে টক্সিন (বিষাক্ত পদার্থ) বের করে দেয়।\r\nচিয়া সীড প্রদাহজনিত সমস্যা দূর করে।\r\nচিয়া সীড ভাল ঘুম হতে সাহায্য করে।\r\nচিয়া বীজ ক্যান্সার রোধ করে।\r\nচিয়া সিড হজমে সহায়তা করে।\r\nচিয়া বীজ হাঁটু ও জয়েন্টের ব্যথা দূর করে।', '1686553199.jpg', NULL, 1, 1, NULL, NULL, 1, '2023-06-12 01:00:00', NULL),
(33, 47, 20, 42, 43, 'Sublimation Printed Mug', 'সাব্লিমেশন প্রিন্টেড মগ', 'sublimation-printed-mug', 'সাব্লিমেশন-প্রিন্টেড-মগ', '362081', '500', NULL, NULL, NULL, NULL, NULL, NULL, '320', '300', 'Sublimation Printed Mug', 'সাব্লিমেশন প্রিন্টেড মগ', 'Sublimation Printed Mug\r\n\r\nType of mug:\r\nSublimation Heat Mug\r\nSublimation Love Mug\r\nSublimation Magic Mug', 'সাব্লিমেশন প্রিন্টেড মগ\r\n\r\nType of mug:\r\nSublimation Heat Mug\r\nSublimation Love Mug\r\nSublimation Magic Mug', '1686561704.jpg', 1, 1, 1, 1, 'travels', 1, '2023-07-23 07:00:51', '2023-07-23 07:00:51'),
(34, 1, 2, 41, NULL, 'Sunsilk - Stunning Black Shine shampoo', 'সানসিল্ক - কালো শাইন শ্যাম্পু', 'sunsilk---stunning-black-shine-shampoo', 'সানসিল্ক---কালো-শাইন-শ্যাম্পু', '297289', '0', NULL, NULL, NULL, NULL, NULL, NULL, '400', '380', 'Sunsilk - Stunning Black Shine shampoo - 340ml', 'সানসিল্ক - অত্যাশ্চর্য কালো শাইন শ্যাম্পু - 340 মিলি', 'It helps prevent hair loss, strengthen its strands, and maintain smooth and soft hair. It gives shine and a fragrant scent to the hair. Benefits and features of Sunsilk shampoo: Gently cleanses your scalp of dirt and impurities.', 'এটি চুল পড়া রোধ করতে, এর স্ট্র্যান্ডগুলিকে শক্তিশালী করতে এবং মসৃণ এবং নরম চুল বজায় রাখতে সাহায্য করে। এটি চুলে চকচকে এবং একটি সুগন্ধি ঘ্রাণ দেয়। সানসিল্ক শ্যাম্পুর সুবিধা এবং বৈশিষ্ট্য: আপনার মাথার ত্বকের ময়লা এবং অমেধ্য আলতো করে পরিষ্কার করে।', '1686568626.jpg', 1, 1, NULL, NULL, NULL, 1, '2023-06-15 05:57:56', '2023-07-23 00:18:35'),
(35, 1, 11, NULL, NULL, 'Book', 'বই', 'book', 'বই', 'FMDS135', '50', NULL, NULL, NULL, NULL, NULL, NULL, '720', '600', 'A different kind of energy will work inside the human mind after reading this book.\r\nIf a person reads this book carefully and understands it. Then there will be a change in him.', 'মানুষের মনের ভিতরে এক অন্য রকম শক্তি কাজ করবে এই বইটি পড়লে। \r\nযদি কোন ব্যাক্তি এই বই নিয়ে ভালো করে মনযোগ সহকারে পড়ে এবং  মানে । তাহলে তার মধ্যে পরিবর্তন আসবেই।', 'A different kind of energy will work inside the human mind after reading this book.\r\nIf a person reads this book carefully and understands it. Then there will be a change in him.', 'মানুষের মনের ভিতরে এক অন্য রকম শক্তি কাজ করবে এই বইটি পড়লে। \r\nযদি কোন ব্যাক্তি এই বই নিয়ে ভালো করে মনযোগ সহকারে পড়ে এবং  মানে । তাহলে তার মধ্যে পরিবর্তন আসবেই।', '1690277838.jpeg', 1, 1, 1, 1, 'offer', 1, '2023-07-25 03:37:18', '2023-07-25 03:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Ekota-Mart', 'Ekota-Mart', 'bet online shop, best product, best ecommerce site, best ecommerce product', 'google analytics', NULL, NULL, '2023-07-23 04:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1kr5Ge0A6QPSzXSEygClBscYtlmsEIsDEBiBk1oG', NULL, '54.36.148.229', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaG5XcW5BZlR0QlBzaXRRMHhOQkVaaTBHZFVQY3dTRDZQY05SaDVFaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzM3L0NoZWVzZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690363895),
('2oji8bDoaGiqNfoSymHu33UI2KlvFZJw87En0gdN', NULL, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQjFhRkxFNFo3NmZhWHBMQ2U2NDRVTExFQmVHRnRablZDU25hazRyVCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjUyOiJodHRwczovL2Vrb3RhbWFydC5jb20vY2F0ZWdvcnkvMjAvVG91cnMlMjAmJTIwVHJhdmVsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMCRwOGZqb2drYUsuWnhldVNVbUsuczZleUQwZmJJR1RWaHYwd2lSVTBLL3BqbUswb1VvZGxDcSI7fQ==', 1690366633),
('2uJqqXr2nwHjWAJV16tscrMtlme12CyluuyDoL6d', NULL, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTk14ZFByVWx1eVJsZnZwZlI0ZFB0bXBhM1BjaFhuMkJYNlhBR2tvUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vY2F0ZWdvcnkvMjAvVG91cnMlMjAmJTIwVHJhdmVsIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690361989),
('4tT61MmC0ZrUcoLZU3Y1nyaIJosQPf8ZR4wtX9Hu', NULL, '54.36.148.127', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ1Rad1FxQWRTdURHTWRYQ3dKZ0VHbHpiS2ljWHh0UWRsbVhZMnppSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vdG9wbWVudS8yL0VsZWN0cm9uaWNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690361448),
('542DNOJzMYtJML6SH9sl1s3F0e145k3DLGKbV3vT', NULL, '54.36.148.218', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREQ0alNkWlRwdm9CUmdmRWozWlJQUmhxWVZmQ1o1ajEzRWV3ZjZWTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vaG93dG8vYnV5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690361381),
('5Ba8qt6RzVdszyWKZnfF0qzd1ODFVj5pcHBSA6LY', NULL, '54.36.148.157', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTWVmV2dhSktZNjZ1eEdwaWRaTHpxSTF2R0Ria2Jqa2lDYXZmRm1jSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vdG9wbWVudS8zL0dpZnQlMjBJdGVtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690361521),
('5bnHJhDbOS8IlOfjNm0z2U486W1OiHBhv9tAN9Rn', NULL, '54.36.149.69', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMnlsTUJuWDByNVJXQlNkMFlKWWtrVDlSa1ladVJyOTRBc2dyMEhLQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjY6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzMyL0V4ZXJjaXNlJTIwYW5kJTIwZml0bmVzcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690366662),
('87sfxukNzB43fySkeESf1RKPArivn16TWj6xwQJX', NULL, '54.36.149.34', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMElqN0V3Mko5Y3A3S2NuZ2NzVzY4Q3BYSzdZWk5JOWhMQTRkS0g3byI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzIzL0Jhc2tldHMlMjBCdWNrZXRzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690366699),
('8PraiiGyHZ7di8RXyu0GBBgzDilmBZ2onsP7u2cu', NULL, '54.36.148.224', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoieTZiN0JDeEFsWmk3QjNKbXN6RkN0dzg3Y0tIUEU2YkxDT0tuS2FxWiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czo0MDoiaHR0cHM6Ly93d3cuZWtvdGFtYXJ0LmNvbS91c2VyL215L29yZGVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQwOiJodHRwczovL3d3dy5la290YW1hcnQuY29tL3VzZXIvbXkvb3JkZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690361662),
('a5lNo6Uh9TebA3YJ6zmhsRxe3mVigTn71jGL80I9', NULL, '54.36.148.42', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVBEb3l4S08xWndoNklhN3ROU3lpOGZ2eDAyM0phc3J2c1NXTDJkTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vdG9wbWVudS81L1BoYXJtZWN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690361586),
('ax4Zu2HbSFp5pZIDTOLB6XDzgtOURh17C9nooA4y', NULL, '54.36.148.123', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSVh1bWkzWnA5bVNRbVJIVVI1UE1kQnhBQzZIZnJ1NGNwU25UMTVkaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzE2L0FudGlzZXB0aWNzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690366496),
('B0vD49PucnBtKXOOVNy1NSncRs1jBHBJaBfORzSR', NULL, '54.36.148.239', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzdqdnpTZEdweEJyRU5saVZsUjh4bXVYMTNuWndaVVpjVzhZWFZhZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9TZWN1cml0eS9Qb2xpY3kiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690366258),
('CFXv2ZHRaqlgjaioD9Gt4CAilQj1SmlTgqOWuxbK', NULL, '17.22.237.146', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1.1 Safari/605.1.15 (Applebot/0.1; +http://www.apple.com/go/applebot)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNE04RjJPVWZtMEhxUmg1Qk5XMlVZa01PSFVnODlEazU4ZnZhZkRpaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzEvQ29va2luZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690364392),
('CqT8zp1M03SZvBJHjgtNGeG2KYqwM7Aa92qy0fv1', NULL, '54.36.148.192', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQWFxa0lCblYxVk9abXRsb2dlY2kzODJ4TTdCblVZY3hqbVF3NDhFWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vY29udGFjdC91cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690361345),
('D5lHm8EBnPUCJU2T8FSjkCkOphYtTkVUXVT7d2r7', NULL, '54.36.148.178', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmNXcnN6TVJ3cGJRUnozZ3k2dkZ0MW11VjdVdGVsalJBMzZUakowOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX3N1Yl9jYXRlZ29yeS8yOS9CYXR0ZXJpZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690366733),
('dp1fquKJtoLsWPrWnntjX9fW1DdmAQoxR8N6cMyg', 1, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoibFdlck5wcmsxNk9leE5EdlJMUjd3ZElnQkZoYVR4R1g2cUNRalhHdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zaWRlYmFyL3RvcC1zaWRlYmFyL3ZpZXciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjM6InVybCI7YTowOnt9czo1MjoibG9naW5fYWRtaW5fNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTk6InBhc3N3b3JkX2hhc2hfYWRtaW4iO3M6NjA6IiQyeSQxMCRwOGZqb2drYUsuWnhldVNVbUsuczZleUQwZmJJR1RWaHYwd2lSVTBLL3BqbUswb1VvZGxDcSI7czo4OiJsYW5ndWFnZSI7czo2OiJiYW5nbGEiO3M6NDoiY2FydCI7YToxOntzOjc6ImRlZmF1bHQiO086Mjk6IklsbHVtaW5hdGVcU3VwcG9ydFxDb2xsZWN0aW9uIjoyOntzOjg6IgAqAGl0ZW1zIjthOjE6e3M6MzI6IjU4NWZlZGZlY2RlYTdlYzU0NTUxZGNkMWNlYzAxYWJjIjtPOjMyOiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbSI6MTE6e3M6NToicm93SWQiO3M6MzI6IjU4NWZlZGZlY2RlYTdlYzU0NTUxZGNkMWNlYzAxYWJjIjtzOjI6ImlkIjtzOjI6IjMzIjtzOjM6InF0eSI7aTozO3M6NDoibmFtZSI7czoyMzoiU3VibGltYXRpb24gUHJpbnRlZCBNdWciO3M6NToicHJpY2UiO2Q6MzAwO3M6Njoid2VpZ2h0IjtkOjE7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6Mzp7czo1OiJpbWFnZSI7czoxNDoiMTY4NjU2MTcwNC5qcGciO3M6NToiY29sb3IiO3M6MzoicmVkIjtzOjQ6InNpemUiO3M6NToic21hbGwiO31zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fXM6NzoidGF4UmF0ZSI7aTowO3M6NDk6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBhc3NvY2lhdGVkTW9kZWwiO047czo0NjoiAEdsb3VkZW1hbnNcU2hvcHBpbmdjYXJ0XENhcnRJdGVtAGRpc2NvdW50UmF0ZSI7aTowO3M6ODoiaW5zdGFuY2UiO3M6NzoiZGVmYXVsdCI7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1690366010),
('dpfQIeYXFluJerxxS9qBTAcoevHcYHYfscXQS6k4', NULL, '54.36.148.195', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWYzS0ZZQXI4bEhkcmdxanZiNUZtaUI5dUx3eTgxa2JHWFlhMkF0WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vdG9wbWVudS80L0tpZHMlMjBJdGVtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690363413),
('DQPgtOyW5gb267B0Bdw7C9WXyS7nmJCeSX8uxIvh', NULL, '54.36.148.5', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYUpzbk1LRHpqTEk4T1kwVms5c0ZHUEQ4a3o2TEpFQmRrdnhGMGNxSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vYWJvdXQvdXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690361294),
('Frvx0ixVpi1qV4917rM9Ly0i6WmJwUANMDKNUb1m', NULL, '54.36.148.146', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWUdHbk9LanVxcTViSFhKd3JaNWh2MXo2TzNOV1o2dlYxTzJ5V05YZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzE5L1Rvb3RocGFzdGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690360442),
('gV0NlWBtnMAx0l4dn0EAaEYtDbHsQU27fQUqCKdq', NULL, '147.182.158.132', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDN5UnZUbnhkbGZlbUhVN0RZQzNLSWl6cDROTG1lZldHajNxRVNFWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690360901),
('hafOhOmzkBCgS8JN6QLphdZsw5Z5SVJqclxNGMLm', NULL, '66.249.79.138', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.179 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmNFSDh6SVJpeFRMNktkT2xEamZXWnU2ejFXNnVEZll4YklSeHMzYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690364241),
('HAOlcdHLX9X1OsBveJZS1tMDVZjZWdf1bQt7d2nV', NULL, '27.147.201.241', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTNRZDVUMzR3bkJrcTVaNGROZG9qbHlhYXl3T3pDeXdlRkdlNmlhdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690359716),
('i2uWqULsQOV3YbHrMiMDYAw6QgrR17XWuDaDGyqx', NULL, '54.36.148.192', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUdVYmpabEF0cWowVG4wSzBWQkV4ZTRCYWNZY2V3MlI2bXllQXNJSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzgvRHJpZWQlMjBGaXNoIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690360581),
('igiPIKdgyoV7KOmAmMYCL5dgTkTy7PnDtlLRLNNy', NULL, '54.36.148.92', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWJWVnlSblM4S3V4RUFVNUhMTThxc2NETmcwYkREV1l4NHNnVjY5MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vbXljYXJ0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690366404),
('ip3CElvV3btV0uzJUpFRrNEPL8hxm15WWAIoDYHZ', NULL, '54.36.149.52', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHdhMk9uWThablBsNE9RYXg0NElDRzdRazB1NW05TmJXSXIxdXhLNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9ob3RfZGVhbCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690360504),
('IU1o9GKkGyON2z6ADNdB9WO7QRhC6HHRP10A28ZM', NULL, '66.249.76.163', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQlVzRXVraTB2MjdlVTlIcE5leEJ3RGZGSmExTjAxTmQ1SnRUb21DTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690365334),
('J5vFjdkifpFuXGn9vC4VrAxc2OplPobZ7ugjIEyN', NULL, '183.136.225.46', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 QIHU 360SE', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRGJUV093MWRUVDFRMUFQdkt0cXI3VGR6dVFmSDFITVJHdEtQTEVHdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690362059),
('kUUzX7s78kykA2wb1CBMdJgNi40bhSHdZ9DKmMFm', NULL, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVG9IMmtFWlVXZzBLczRGVkhNZ1hiQVhYSkpFWm8yVkFSR0tBZFpzcCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6ODoibGFuZ3VhZ2UiO3M6NzoiZW5nbGlzaCI7fQ==', 1690363333),
('MtxBiVQn4IHkJ4qAjooRcCRz2xPdYJS071gh5lT8', NULL, '54.36.148.101', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTFjT1dWMzdpNjNWdEdNVWRERlBCOWtzU3A1WHhraWd1NkdBN3lEUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfY2F0ZWdvcnkvMjcvUGFwZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690363734),
('mvBCv0p9nJe4E9RLe9ehFV1WaL5Qqoc1zS1Md3gY', NULL, '54.36.149.81', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNGlTbXUwZmNZNE8wSWl2a3RNcGYwbXh2TzFPb1dUOU9zeU83cHlHWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfY2F0ZWdvcnkvMjUvT2ZmaWNlJTIwRWxlY3Ryb25pY3MiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690363812),
('nlb89hpAI0Asi1vvsPJ2PWdTMrm32vY8xaMQ6cgK', NULL, '54.36.148.32', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1FwMlZPUENwUGVZOGdXRzNnWG1KUWEyV2REOTNick50b3lTVVp3biI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzMvRnJlc2glMjBWZWdldGFibGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690360249),
('om73KGGVzw5qDceftqpOXPQEnLKMgKCcZrRFe9Tp', NULL, '54.36.148.137', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiak15c01hTk10aGFqWDhxZDVFckNJVW1WYVE2S01KaXpvNWYwYVVUZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vdG9wbWVudS82L3Rlc3QxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690363487),
('PbLIrMtOKjPdJfFMFXyhss1dciowPAYww6ntPlZ8', NULL, '54.36.149.18', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDZJTDJDMlVYODQ3WjFGTEZOdmlDbWNBVXNXajV5UGJlTllITGtXdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzI0L1JhY2slMjBPcmdhbml6ZXIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690366764),
('pQfwaktAuaPsRywDYBI9ZhqSRRuz5VyTEap23PhY', NULL, '54.36.148.244', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaU1lZFhaZ2FsSWMya0pCdzFhSHFvUE9vMzhHYnhpbHdKbk9udUI2RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfY2F0ZWdvcnkvNi9PcmFsJTIwQ2FyZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690359812),
('PVaeriJNDMyhvssteFIAlf0H9EH3gNKRImtAPwis', NULL, '54.36.148.64', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiREtyamNWTjVzRU1wNks2azdGRnU2dnJxaUNXYktickhWdnVpSEJEWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzQyL090aGVycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690366524),
('qIn0AhEQDgYtSBkMe6CNYNQMXbjclcrUdvAACiK5', NULL, '52.167.144.38', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/103.0.5060.134 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRnZOSnVvM2NoRUs1RHJkamxXWWJFazFPeHFiVHhsUlpUeWxwZkxRayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX3N1Yl9jYXRlZ29yeS8xL09JTCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690362791),
('RuyI7C6CbpjZDP9xpzm7RWjirICbudL5roXa7IJ5', NULL, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiSzR4bElWQ2N4R0w5UXpJaXFMTWtMNjY5djVNVmF0dEVnZWZUaFU5MCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTI6ImxvZ2luX2FkbWluXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE5OiJwYXNzd29yZF9oYXNoX2FkbWluIjtzOjYwOiIkMnkkMTAkcDhmam9na2FLLlp4ZXVTVW1LLnM2ZXlEMGZiSUdUVmh2MHdpUlUwSy9wam1LMG9Vb2RsQ3EiO30=', 1690363557),
('ryYpxqRXPR4KHMFVkW2VeuQskl2xcad4TWsuk9bs', NULL, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ0pnZUZNdVY3bkN3d1BTWGVOVXduTmdUOVphYWdHeUVNUE5EZEdkcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9jYXRlZ29yeS8yMC9Ub3VycyUyMCYlMjBUcmF2ZWwiO319', 1690366667),
('sKSa1PJGXBUClBwUMfSBUg8qsjauMGR9RgRSwVny', NULL, '54.36.148.167', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM3I3M2NhV0hHa0RqTWV5c2tnb0xHSDQxR2F5TGxHcTNLNWhyUkdwbyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9TaGlwcGluZy9SZXBsYWNlbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690360540),
('sUJFvctOj21TdMPg2eUh1D58LPkdC1QFtRjqjLLe', NULL, '54.36.148.122', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiU0E5c09aN29oVzdjOGN2WHR3VHNsN2pZak1KYld1c1VhU2ZMNXRlTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vZmVhdHVyZWQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690366436),
('tcE4LdUPNBBe8k120nThkFXPWpDYGcj4PMkT7sIJ', NULL, '66.249.70.101', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.5735.179 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoic0tsUzI1Z1JBZWpiU2hRWVdSRjZMWEtzY0NNdFFIdE9WUTM3WmozVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690364240),
('tLonhRUZZf739jbEeRGt4Mf41AsXqz5NhDpNCFVg', NULL, '54.36.149.65', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ05RZXJiM3h0TlhwcE00dnZBb0c2ME5zb1kyek51bW1vNkxKdFRYQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzE5L0tpZHMlMjBGb29kIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690366589),
('TUyNMv02uEptnZPiUQWD5yQrTIvuPNcv1W2exfRn', NULL, '54.36.148.227', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYTJYT2s5MEkyYkJ3OFpBM0l5a1cySDJIWncxYTlpcVphQ3ZVclVPbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vY2F0ZWdvcnkvMS9jYXRlZ29yeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690363381),
('TyTwSMtFXmve1oZOZ5Cax2v6xuEFs1MEDpj6cD1T', NULL, '54.36.149.16', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib2ZkQ2hST3NZVjhPSzV3bzhGd3g5TDk3SWNiUWhjM0FIRXowblV3SyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTE6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX3N1Yl9jYXRlZ29yeS8yNS9SaWNlcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690366371),
('uF3i5v50Rw70RMkuCaYXQR1y3vm12ksl3TM89kwf', NULL, '54.36.148.20', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZkhydWZzaGd3b0RUMzBBQlZhV3ZQUm5adEdXVVBWU25QRmxEbEZSaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDU6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vY2F0ZWdvcnkvNS9jYXRlZ29yeSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690363451),
('ugenpC2fMrwb805ebuKmJglK9MD6NVmmWD2PaGuy', NULL, '54.36.149.17', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2p6ME8yaUtudDd4S1dDN0tjVTJDNmVNVVY0Q2YzYVhqUlltNVVabyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfY2F0ZWdvcnkvMzQvU3BvcnRzJTIwSXRlbXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690360404),
('V0wrvSSVMGHs0AzGjkmhd6yUJsPOZA83PHj5Rxdj', NULL, '54.36.148.221', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiam95NHMwMnRobk9pcXZacVZJaXhlSExYcE1HR20yMEVqRHlwbTg1UCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzIxL01vdXRod2FzaCUyME90aGVycyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690359206),
('WC7uV7Nxhn3fBSdUWqWCPgmOQaA6XYPF1tlm8mWs', NULL, '54.36.148.26', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRzBhaUUwVmFwNkl3NG5CNUE3WkhHSEdBUkRZNWJiZFdhdlpEeEFiWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzM5L0RhdGVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690366625),
('wuBVW4o01nwxd77uuebJ4zbgjkj6RK8eIavzh1MO', NULL, '54.36.148.63', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQmRwdjhWblRPaGQwdWxRaFdaYTRsajR4MW8waXpoMTlBbWUwMlJYNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX3N1Yl9jYXRlZ29yeS8xNi9NZW5zJTIwUGVyZnVtZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690366343),
('wYMLzhzYZvYP8kgw2TeCx0fnGYiHbYvHpSwJxPSP', NULL, '54.36.148.162', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHFGR1VvV1cyRFVxdkxYVlpiZ2RNRnN6RmhrOVh1QnZQamFMbGJCVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vcHJvZmlsZSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690361417),
('XbrylOSP2AgyUj3848KaY0MTFmKQYsmV5to2ZmeJ', NULL, '54.36.149.21', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZGpvOHRxWmJDa04zdkEzdnY4UXdEc0N6OTBGTHBDRHByalhOTmhYOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfY2F0ZWdvcnkvNDEvSGFpciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690360472),
('XKIbdQl9sH5atQa2TSpfDg19uw9QwvaqtiWBHqtE', NULL, '54.36.148.181', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamdDdGF0Rno3T0JNYUx4alhBUlBBTXE3WmRvblVrbkd5NzVsYlJuWCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzE2L01lbnMlMjBQZXJmdW1lIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690360333),
('XL2y2BGeGBY2ysMkI2zpSpKiFRAkn549uBd60J3j', NULL, '116.68.200.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/115.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoibGNaV2RKdHV4RWNQaDRYVkJpdGZJVTFZdTVrTlhYTjBaN3BRSDM1VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9jYXB0Y2hhL21hdGg/QzlONGJvT209Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo3OiJjYXB0Y2hhIjthOjM6e3M6OToic2Vuc2l0aXZlIjtiOjA7czozOiJrZXkiO3M6MzEyOiJleUpwZGlJNklsWlZiVU5sWkN0dmNqbHdSMmQ2UTNFeGFWWnhNVkU5UFNJc0luWmhiSFZsSWpvaWJtSjNkSEpqVkdSeUt6QlBOekZSV1ZOMlUyOXFObFpqZEM5cGNVWjFibkE1ZFVwTFdVMVliVEpoV1RCVmNHWk9UbTlLVWt0SFRHZ3JVeXRwWTFoUGMwOXpORVJhYkhCdGIyNXliREI1UVVoRVVVUXlUR1JDYlZKRlRUaFZaR3BsWVhaNlFYUmtOR3haTVVrOUlpd2liV0ZqSWpvaU1USTJaREZoWldNME9UQmpZMlJrTWprMVlURTNOVGMyT0dWaU1qSXlNakE1WkRJMVpqUmlOVFkzT0dWaU9UWmhORGcxTkdZMk9UQXdZMk5pT1RNMFlTSXNJblJoWnlJNklpSjkiO3M6NzoiZW5jcnlwdCI7YjoxO319', 1690363305),
('yDhORNNxLv1Z0WBrvXLR5mMQDLkmd53XAE5qQxV0', NULL, '54.36.148.149', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjZKd2JnNlVyZlIxaUNyWDE1V0ZJNjZzZ3BEWDFyTnNTeDFYV09SdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTQ6Imh0dHBzOi8vZWtvdGFtYXJ0LmNvbS9zdWJfc3ViX2NhdGVnb3J5LzQvRnJlc2glMjBGcnVpdCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1690360096),
('ZBlqcsLPxAOSVqg6omQg9oMMdTiCdP8QPWiXg8Es', NULL, '54.36.149.102', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieEE5QXc4bVpqalo0RUluNXhTNWcwRWpyamE1QjFMbkdLU2FqbkVabyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDk6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX3N1Yl9jYXRlZ29yeS83L01lYXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690366301),
('ZmXt0dWLY32N5GKo96fieBgUXQrlVfcGhkoLHxxA', NULL, '54.36.148.137', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYVdTYWp3OVZWZkhGTVEwNXVXSDc1azIxNU9DOVRzQWhDYzBEcWNKaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vc3ViX2NhdGVnb3J5LzE1L0tldG8lMjBGb29kIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1690366464),
('Zox6JVHiaztCs9udITemZXmAGLluVwY4NH8DUQkf', NULL, '54.36.148.92', 'Mozilla/5.0 (compatible; AhrefsBot/7.0; +http://ahrefs.com/robot/)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUTIwcUZhYUNieXpDa3VWcWFYMlFMZzh1bVVabWVjM29jWXptMlZ6ciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LmVrb3RhbWFydC5jb20vaG90X2RlYWwiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1690366557);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `district_name`, `bn_name`, `lat`, `lon`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', NULL, NULL),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', NULL, NULL),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', NULL, NULL),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd', NULL, NULL),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', NULL, NULL),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', NULL, NULL),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', NULL, NULL),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', NULL, NULL),
(9, 1, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd', NULL, NULL),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', NULL, NULL),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', NULL, NULL),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', NULL, NULL),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', NULL, NULL),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', NULL, NULL),
(15, 2, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd', NULL, NULL),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', NULL, NULL),
(17, 2, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd', NULL, NULL),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', NULL, NULL),
(19, 2, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd', NULL, NULL),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', NULL, NULL),
(21, 3, 'Satkhira', 'সাতক্ষীরা', '22.7180905', '89.0687033', 'www.satkhira.gov.bd', NULL, NULL),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', NULL, NULL),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', NULL, NULL),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', NULL, NULL),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', NULL, NULL),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', NULL, NULL),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', NULL, NULL),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', NULL, NULL),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', NULL, NULL),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', '22.6422689', '90.2003932', 'www.jhalakathi.gov.bd', NULL, NULL),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', NULL, NULL),
(32, 4, 'Pirojpur', 'পিরোজপুর', '22.5781398', '89.9983909', 'www.pirojpur.gov.bd', NULL, NULL),
(33, 4, 'Barisal', 'বরিশাল', '22.7004179', '90.3731568', 'www.barisal.gov.bd', NULL, NULL),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', NULL, NULL),
(35, 4, 'Barguna', 'বরগুনা', '22.159182', '90.125581', 'www.barguna.gov.bd', NULL, NULL),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', NULL, NULL),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', NULL, NULL),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', NULL, NULL),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', NULL, NULL),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', NULL, NULL),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', NULL, NULL),
(42, 6, 'Shariatpur', 'শরীয়তপুর', '23.2060195', '90.3477725', 'www.shariatpur.gov.bd', NULL, NULL),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', NULL, NULL),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.264145', '89.918029', 'www.tangail.gov.bd', NULL, NULL),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', NULL, NULL),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', '23.8602262', '90.0018293', 'www.manikganj.gov.bd', NULL, NULL),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', NULL, NULL),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', '23.5435742', '90.5354327', 'www.munshiganj.gov.bd', NULL, NULL),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', NULL, NULL),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', NULL, NULL),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', NULL, NULL),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', NULL, NULL),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', NULL, NULL),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', NULL, NULL),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', '25.9165451', '89.4532409', 'www.lalmonirhat.gov.bd', NULL, NULL),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', NULL, NULL),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', NULL, NULL),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', NULL, NULL),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', NULL, NULL),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', NULL, NULL),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', NULL, NULL),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', NULL, NULL),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', NULL, NULL),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd', NULL, NULL),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd', NULL, NULL),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd', NULL, NULL),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd', NULL, NULL),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd', NULL, NULL),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd', NULL, NULL),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd', NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_upazilas`
--

CREATE TABLE `ship_upazilas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) NOT NULL DEFAULT '1',
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `upazila_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_upazilas`
--

INSERT INTO `ship_upazilas` (`id`, `division_id`, `district_id`, `upazila_name`, `bn_name`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Debidwar', 'দেবিদ্বার', 'debidwar.comilla.gov.bd', NULL, NULL),
(2, 1, 1, 'Barura', 'বরুড়া', 'barura.comilla.gov.bd', NULL, NULL),
(3, 1, 1, 'Brahmanpara', 'ব্রাহ্মণপাড়া', 'brahmanpara.comilla.gov.bd', NULL, NULL),
(4, 1, 1, 'Chandina', 'চান্দিনা', 'chandina.comilla.gov.bd', NULL, NULL),
(5, 1, 1, 'Chauddagram', 'চৌদ্দগ্রাম', 'chauddagram.comilla.gov.bd', NULL, NULL),
(6, 1, 1, 'Daudkandi', 'দাউদকান্দি', 'daudkandi.comilla.gov.bd', NULL, NULL),
(7, 1, 1, 'Homna', 'হোমনা', 'homna.comilla.gov.bd', NULL, NULL),
(8, 1, 1, 'Laksam', 'লাকসাম', 'laksam.comilla.gov.bd', NULL, NULL),
(9, 1, 1, 'Muradnagar', 'মুরাদনগর', 'muradnagar.comilla.gov.bd', NULL, NULL),
(10, 1, 1, 'Nangalkot', 'নাঙ্গলকোট', 'nangalkot.comilla.gov.bd', NULL, NULL),
(11, 1, 1, 'Comilla Sadar', 'কুমিল্লা সদর', 'comillasadar.comilla.gov.bd', NULL, NULL),
(12, 1, 1, 'Meghna', 'মেঘনা', 'meghna.comilla.gov.bd', NULL, NULL),
(13, 1, 1, 'Monohargonj', 'মনোহরগঞ্জ', 'monohargonj.comilla.gov.bd', NULL, NULL),
(14, 1, 1, 'Sadarsouth', 'সদর দক্ষিণ', 'sadarsouth.comilla.gov.bd', NULL, NULL),
(15, 1, 1, 'Titas', 'তিতাস', 'titas.comilla.gov.bd', NULL, NULL),
(16, 1, 1, 'Burichang', 'বুড়িচং', 'burichang.comilla.gov.bd', NULL, NULL),
(17, 1, 1, 'Lalmai', 'লালমাই', 'lalmai.comilla.gov.bd', NULL, NULL),
(18, 1, 2, 'Chhagalnaiya', 'ছাগলনাইয়া', 'chhagalnaiya.feni.gov.bd', NULL, NULL),
(19, 1, 2, 'Feni Sadar', 'ফেনী সদর', 'sadar.feni.gov.bd', NULL, NULL),
(20, 1, 2, 'Sonagazi', 'সোনাগাজী', 'sonagazi.feni.gov.bd', NULL, NULL),
(21, 1, 2, 'Fulgazi', 'ফুলগাজী', 'fulgazi.feni.gov.bd', NULL, NULL),
(22, 1, 2, 'Parshuram', 'পরশুরাম', 'parshuram.feni.gov.bd', NULL, NULL),
(23, 1, 2, 'Daganbhuiyan', 'দাগনভূঞা', 'daganbhuiyan.feni.gov.bd', NULL, NULL),
(24, 1, 3, 'Brahmanbaria Sadar', 'ব্রাহ্মণবাড়িয়া সদর', 'sadar.brahmanbaria.gov.bd', NULL, NULL),
(25, 1, 3, 'Kasba', 'কসবা', 'kasba.brahmanbaria.gov.bd', NULL, NULL),
(26, 1, 3, 'Nasirnagar', 'নাসিরনগর', 'nasirnagar.brahmanbaria.gov.bd', NULL, NULL),
(27, 1, 3, 'Sarail', 'সরাইল', 'sarail.brahmanbaria.gov.bd', NULL, NULL),
(28, 1, 3, 'Ashuganj', 'আশুগঞ্জ', 'ashuganj.brahmanbaria.gov.bd', NULL, NULL),
(29, 1, 3, 'Akhaura', 'আখাউড়া', 'akhaura.brahmanbaria.gov.bd', NULL, NULL),
(30, 1, 3, 'Nabinagar', 'নবীনগর', 'nabinagar.brahmanbaria.gov.bd', NULL, NULL),
(31, 1, 3, 'Bancharampur', 'বাঞ্ছারামপুর', 'bancharampur.brahmanbaria.gov.bd', NULL, NULL),
(32, 1, 3, 'Bijoynagar', 'বিজয়নগর', 'bijoynagar.brahmanbaria.gov.bd    ', NULL, NULL),
(33, 1, 4, 'Rangamati Sadar', 'রাঙ্গামাটি সদর', 'sadar.rangamati.gov.bd', NULL, NULL),
(34, 1, 4, 'Kaptai', 'কাপ্তাই', 'kaptai.rangamati.gov.bd', NULL, NULL),
(35, 1, 4, 'Kawkhali', 'কাউখালী', 'kawkhali.rangamati.gov.bd', NULL, NULL),
(36, 1, 4, 'Baghaichari', 'বাঘাইছড়ি', 'baghaichari.rangamati.gov.bd', NULL, NULL),
(37, 1, 4, 'Barkal', 'বরকল', 'barkal.rangamati.gov.bd', NULL, NULL),
(38, 1, 4, 'Langadu', 'লংগদু', 'langadu.rangamati.gov.bd', NULL, NULL),
(39, 1, 4, 'Rajasthali', 'রাজস্থলী', 'rajasthali.rangamati.gov.bd', NULL, NULL),
(40, 1, 4, 'Belaichari', 'বিলাইছড়ি', 'belaichari.rangamati.gov.bd', NULL, NULL),
(41, 1, 4, 'Juraichari', 'জুরাছড়ি', 'juraichari.rangamati.gov.bd', NULL, NULL),
(42, 1, 4, 'Naniarchar', 'নানিয়ারচর', 'naniarchar.rangamati.gov.bd', NULL, NULL),
(43, 1, 5, 'Noakhali Sadar', 'নোয়াখালী সদর', 'sadar.noakhali.gov.bd', NULL, NULL),
(44, 1, 5, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.noakhali.gov.bd', NULL, NULL),
(45, 1, 5, 'Begumganj', 'বেগমগঞ্জ', 'begumganj.noakhali.gov.bd', NULL, NULL),
(46, 1, 5, 'Hatia', 'হাতিয়া', 'hatia.noakhali.gov.bd', NULL, NULL),
(47, 1, 5, 'Subarnachar', 'সুবর্ণচর', 'subarnachar.noakhali.gov.bd', NULL, NULL),
(48, 1, 5, 'Kabirhat', 'কবিরহাট', 'kabirhat.noakhali.gov.bd', NULL, NULL),
(49, 1, 5, 'Senbug', 'সেনবাগ', 'senbug.noakhali.gov.bd', NULL, NULL),
(50, 1, 5, 'Chatkhil', 'চাটখিল', 'chatkhil.noakhali.gov.bd', NULL, NULL),
(51, 1, 5, 'Sonaimori', 'সোনাইমুড়ী', 'sonaimori.noakhali.gov.bd', NULL, NULL),
(52, 1, 6, 'Haimchar', 'হাইমচর', 'haimchar.chandpur.gov.bd', NULL, NULL),
(53, 1, 6, 'Kachua', 'কচুয়া', 'kachua.chandpur.gov.bd', NULL, NULL),
(54, 1, 6, 'Shahrasti', 'শাহরাস্তি	', 'shahrasti.chandpur.gov.bd', NULL, NULL),
(55, 1, 6, 'Chandpur Sadar', 'চাঁদপুর সদর', 'sadar.chandpur.gov.bd', NULL, NULL),
(56, 1, 6, 'Matlab South', 'মতলব দক্ষিণ', 'matlabsouth.chandpur.gov.bd', NULL, NULL),
(57, 1, 6, 'Hajiganj', 'হাজীগঞ্জ', 'hajiganj.chandpur.gov.bd', NULL, NULL),
(58, 1, 6, 'Matlab North', 'মতলব উত্তর', 'matlabnorth.chandpur.gov.bd', NULL, NULL),
(59, 1, 6, 'Faridgonj', 'ফরিদগঞ্জ', 'faridgonj.chandpur.gov.bd', NULL, NULL),
(60, 1, 7, 'Lakshmipur Sadar', 'লক্ষ্মীপুর সদর', 'sadar.lakshmipur.gov.bd', NULL, NULL),
(61, 1, 7, 'Kamalnagar', 'কমলনগর', 'kamalnagar.lakshmipur.gov.bd', NULL, NULL),
(62, 1, 7, 'Raipur', 'রায়পুর', 'raipur.lakshmipur.gov.bd', NULL, NULL),
(63, 1, 7, 'Ramgati', 'রামগতি', 'ramgati.lakshmipur.gov.bd', NULL, NULL),
(64, 1, 7, 'Ramganj', 'রামগঞ্জ', 'ramganj.lakshmipur.gov.bd', NULL, NULL),
(65, 1, 8, 'Rangunia', 'রাঙ্গুনিয়া', 'rangunia.chittagong.gov.bd', NULL, NULL),
(66, 1, 8, 'Sitakunda', 'সীতাকুন্ড', 'sitakunda.chittagong.gov.bd', NULL, NULL),
(67, 1, 8, 'Mirsharai', 'মীরসরাই', 'mirsharai.chittagong.gov.bd', NULL, NULL),
(68, 1, 8, 'Patiya', 'পটিয়া', 'patiya.chittagong.gov.bd', NULL, NULL),
(69, 1, 8, 'Sandwip', 'সন্দ্বীপ', 'sandwip.chittagong.gov.bd', NULL, NULL),
(70, 1, 8, 'Banshkhali', 'বাঁশখালী', 'banshkhali.chittagong.gov.bd', NULL, NULL),
(71, 1, 8, 'Boalkhali', 'বোয়ালখালী', 'boalkhali.chittagong.gov.bd', NULL, NULL),
(72, 1, 8, 'Anwara', 'আনোয়ারা', 'anwara.chittagong.gov.bd', NULL, NULL),
(73, 1, 8, 'Chandanaish', 'চন্দনাইশ', 'chandanaish.chittagong.gov.bd', NULL, NULL),
(74, 1, 8, 'Satkania', 'সাতকানিয়া', 'satkania.chittagong.gov.bd', NULL, NULL),
(75, 1, 8, 'Lohagara', 'লোহাগাড়া', 'lohagara.chittagong.gov.bd', NULL, NULL),
(76, 1, 8, 'Hathazari', 'হাটহাজারী', 'hathazari.chittagong.gov.bd', NULL, NULL),
(77, 1, 8, 'Fatikchhari', 'ফটিকছড়ি', 'fatikchhari.chittagong.gov.bd', NULL, NULL),
(78, 1, 8, 'Raozan', 'রাউজান', 'raozan.chittagong.gov.bd', NULL, NULL),
(79, 1, 8, 'Karnafuli', 'কর্ণফুলী', 'karnafuli.chittagong.gov.bd', NULL, NULL),
(80, 1, 9, 'Coxsbazar Sadar', 'কক্সবাজার সদর', 'sadar.coxsbazar.gov.bd', NULL, NULL),
(81, 1, 9, 'Chakaria', 'চকরিয়া', 'chakaria.coxsbazar.gov.bd', NULL, NULL),
(82, 1, 9, 'Kutubdia', 'কুতুবদিয়া', 'kutubdia.coxsbazar.gov.bd', NULL, NULL),
(83, 1, 9, 'Ukhiya', 'উখিয়া', 'ukhiya.coxsbazar.gov.bd', NULL, NULL),
(84, 1, 9, 'Moheshkhali', 'মহেশখালী', 'moheshkhali.coxsbazar.gov.bd', NULL, NULL),
(85, 1, 9, 'Pekua', 'পেকুয়া', 'pekua.coxsbazar.gov.bd', NULL, NULL),
(86, 1, 9, 'Ramu', 'রামু', 'ramu.coxsbazar.gov.bd', NULL, NULL),
(87, 1, 9, 'Teknaf', 'টেকনাফ', 'teknaf.coxsbazar.gov.bd', NULL, NULL),
(88, 1, 10, 'Khagrachhari Sadar', 'খাগড়াছড়ি সদর', 'sadar.khagrachhari.gov.bd', NULL, NULL),
(89, 1, 10, 'Dighinala', 'দিঘীনালা', 'dighinala.khagrachhari.gov.bd', NULL, NULL),
(90, 1, 10, 'Panchari', 'পানছড়ি', 'panchari.khagrachhari.gov.bd', NULL, NULL),
(91, 1, 10, 'Laxmichhari', 'লক্ষীছড়ি', 'laxmichhari.khagrachhari.gov.bd', NULL, NULL),
(92, 1, 10, 'Mohalchari', 'মহালছড়ি', 'mohalchari.khagrachhari.gov.bd', NULL, NULL),
(93, 1, 10, 'Manikchari', 'মানিকছড়ি', 'manikchari.khagrachhari.gov.bd', NULL, NULL),
(94, 1, 10, 'Ramgarh', 'রামগড়', 'ramgarh.khagrachhari.gov.bd', NULL, NULL),
(95, 1, 10, 'Matiranga', 'মাটিরাঙ্গা', 'matiranga.khagrachhari.gov.bd', NULL, NULL),
(96, 1, 10, 'Guimara', 'গুইমারা', 'guimara.khagrachhari.gov.bd', NULL, NULL),
(97, 1, 11, 'Bandarban Sadar', 'বান্দরবান সদর', 'sadar.bandarban.gov.bd', NULL, NULL),
(98, 1, 11, 'Alikadam', 'আলীকদম', 'alikadam.bandarban.gov.bd', NULL, NULL),
(99, 1, 11, 'Naikhongchhari', 'নাইক্ষ্যংছড়ি', 'naikhongchhari.bandarban.gov.bd', NULL, NULL),
(100, 1, 11, 'Rowangchhari', 'রোয়াংছড়ি', 'rowangchhari.bandarban.gov.bd', NULL, NULL),
(101, 1, 11, 'Lama', 'লামা', 'lama.bandarban.gov.bd', NULL, NULL),
(102, 1, 11, 'Ruma', 'রুমা', 'ruma.bandarban.gov.bd', NULL, NULL),
(103, 1, 11, 'Thanchi', 'থানচি', 'thanchi.bandarban.gov.bd', NULL, NULL),
(104, 2, 12, 'Belkuchi', 'বেলকুচি', 'belkuchi.sirajganj.gov.bd', NULL, NULL),
(105, 2, 12, 'Chauhali', 'চৌহালি', 'chauhali.sirajganj.gov.bd', NULL, NULL),
(106, 2, 12, 'Kamarkhand', 'কামারখন্দ', 'kamarkhand.sirajganj.gov.bd', NULL, NULL),
(107, 2, 12, 'Kazipur', 'কাজীপুর', 'kazipur.sirajganj.gov.bd', NULL, NULL),
(108, 2, 12, 'Raigonj', 'রায়গঞ্জ', 'raigonj.sirajganj.gov.bd', NULL, NULL),
(109, 2, 12, 'Shahjadpur', 'শাহজাদপুর', 'shahjadpur.sirajganj.gov.bd', NULL, NULL),
(110, 2, 12, 'Sirajganj Sadar', 'সিরাজগঞ্জ সদর', 'sirajganjsadar.sirajganj.gov.bd', NULL, NULL),
(111, 2, 12, 'Tarash', 'তাড়াশ', 'tarash.sirajganj.gov.bd', NULL, NULL),
(112, 2, 12, 'Ullapara', 'উল্লাপাড়া', 'ullapara.sirajganj.gov.bd', NULL, NULL),
(113, 2, 13, 'Sujanagar', 'সুজানগর', 'sujanagar.pabna.gov.bd', NULL, NULL),
(114, 2, 13, 'Ishurdi', 'ঈশ্বরদী', 'ishurdi.pabna.gov.bd', NULL, NULL),
(115, 2, 13, 'Bhangura', 'ভাঙ্গুড়া', 'bhangura.pabna.gov.bd', NULL, NULL),
(116, 2, 13, 'Pabna Sadar', 'পাবনা সদর', 'pabnasadar.pabna.gov.bd', NULL, NULL),
(117, 2, 13, 'Bera', 'বেড়া', 'bera.pabna.gov.bd', NULL, NULL),
(118, 2, 13, 'Atghoria', 'আটঘরিয়া', 'atghoria.pabna.gov.bd', NULL, NULL),
(119, 2, 13, 'Chatmohar', 'চাটমোহর', 'chatmohar.pabna.gov.bd', NULL, NULL),
(120, 2, 13, 'Santhia', 'সাঁথিয়া', 'santhia.pabna.gov.bd', NULL, NULL),
(121, 2, 13, 'Faridpur', 'ফরিদপুর', 'faridpur.pabna.gov.bd', NULL, NULL),
(122, 2, 14, 'Kahaloo', 'কাহালু', 'kahaloo.bogra.gov.bd', NULL, NULL),
(123, 2, 14, 'Bogra Sadar', 'বগুড়া সদর', 'sadar.bogra.gov.bd', NULL, NULL),
(124, 2, 14, 'Shariakandi', 'সারিয়াকান্দি', 'shariakandi.bogra.gov.bd', NULL, NULL),
(125, 2, 14, 'Shajahanpur', 'শাজাহানপুর', 'shajahanpur.bogra.gov.bd', NULL, NULL),
(126, 2, 14, 'Dupchanchia', 'দুপচাচিঁয়া', 'dupchanchia.bogra.gov.bd', NULL, NULL),
(127, 2, 14, 'Adamdighi', 'আদমদিঘি', 'adamdighi.bogra.gov.bd', NULL, NULL),
(128, 2, 14, 'Nondigram', 'নন্দিগ্রাম', 'nondigram.bogra.gov.bd', NULL, NULL),
(129, 2, 14, 'Sonatala', 'সোনাতলা', 'sonatala.bogra.gov.bd', NULL, NULL),
(130, 2, 14, 'Dhunot', 'ধুনট', 'dhunot.bogra.gov.bd', NULL, NULL),
(131, 2, 14, 'Gabtali', 'গাবতলী', 'gabtali.bogra.gov.bd', NULL, NULL),
(132, 2, 14, 'Sherpur', 'শেরপুর', 'sherpur.bogra.gov.bd', NULL, NULL),
(133, 2, 14, 'Shibganj', 'শিবগঞ্জ', 'shibganj.bogra.gov.bd', NULL, NULL),
(134, 2, 15, 'Paba', 'পবা', 'paba.rajshahi.gov.bd', NULL, NULL),
(135, 2, 15, 'Durgapur', 'দুর্গাপুর', 'durgapur.rajshahi.gov.bd', NULL, NULL),
(136, 2, 15, 'Mohonpur', 'মোহনপুর', 'mohonpur.rajshahi.gov.bd', NULL, NULL),
(137, 2, 15, 'Charghat', 'চারঘাট', 'charghat.rajshahi.gov.bd', NULL, NULL),
(138, 2, 15, 'Puthia', 'পুঠিয়া', 'puthia.rajshahi.gov.bd', NULL, NULL),
(139, 2, 15, 'Bagha', 'বাঘা', 'bagha.rajshahi.gov.bd', NULL, NULL),
(140, 2, 15, 'Godagari', 'গোদাগাড়ী', 'godagari.rajshahi.gov.bd', NULL, NULL),
(141, 2, 15, 'Tanore', 'তানোর', 'tanore.rajshahi.gov.bd', NULL, NULL),
(142, 2, 15, 'Bagmara', 'বাগমারা', 'bagmara.rajshahi.gov.bd', NULL, NULL),
(143, 2, 16, 'Natore Sadar', 'নাটোর সদর', 'natoresadar.natore.gov.bd', NULL, NULL),
(144, 2, 16, 'Singra', 'সিংড়া', 'singra.natore.gov.bd', NULL, NULL),
(145, 2, 16, 'Baraigram', 'বড়াইগ্রাম', 'baraigram.natore.gov.bd', NULL, NULL),
(146, 2, 16, 'Bagatipara', 'বাগাতিপাড়া', 'bagatipara.natore.gov.bd', NULL, NULL),
(147, 2, 16, 'Lalpur', 'লালপুর', 'lalpur.natore.gov.bd', NULL, NULL),
(148, 2, 16, 'Gurudaspur', 'গুরুদাসপুর', 'gurudaspur.natore.gov.bd', NULL, NULL),
(149, 2, 16, 'Naldanga', 'নলডাঙ্গা', 'naldanga.natore.gov.bd', NULL, NULL),
(150, 2, 17, 'Akkelpur', 'আক্কেলপুর', 'akkelpur.joypurhat.gov.bd', NULL, NULL),
(151, 2, 17, 'Kalai', 'কালাই', 'kalai.joypurhat.gov.bd', NULL, NULL),
(152, 2, 17, 'Khetlal', 'ক্ষেতলাল', 'khetlal.joypurhat.gov.bd', NULL, NULL),
(153, 2, 17, 'Panchbibi', 'পাঁচবিবি', 'panchbibi.joypurhat.gov.bd', NULL, NULL),
(154, 2, 17, 'Joypurhat Sadar', 'জয়পুরহাট সদর', 'joypurhatsadar.joypurhat.gov.bd', NULL, NULL),
(155, 2, 18, 'Chapainawabganj Sadar', 'চাঁপাইনবাবগঞ্জ সদর', 'chapainawabganjsadar.chapainawabganj.gov.bd', NULL, NULL),
(156, 2, 18, 'Gomostapur', 'গোমস্তাপুর', 'gomostapur.chapainawabganj.gov.bd', NULL, NULL),
(157, 2, 18, 'Nachol', 'নাচোল', 'nachol.chapainawabganj.gov.bd', NULL, NULL),
(158, 2, 18, 'Bholahat', 'ভোলাহাট', 'bholahat.chapainawabganj.gov.bd', NULL, NULL),
(159, 2, 18, 'Shibganj', 'শিবগঞ্জ', 'shibganj.chapainawabganj.gov.bd', NULL, NULL),
(160, 2, 19, 'Mohadevpur', 'মহাদেবপুর', 'mohadevpur.naogaon.gov.bd', NULL, NULL),
(161, 2, 19, 'Badalgachi', 'বদলগাছী', 'badalgachi.naogaon.gov.bd', NULL, NULL),
(162, 2, 19, 'Patnitala', 'পত্নিতলা', 'patnitala.naogaon.gov.bd', NULL, NULL),
(163, 2, 19, 'Dhamoirhat', 'ধামইরহাট', 'dhamoirhat.naogaon.gov.bd', NULL, NULL),
(164, 2, 19, 'Niamatpur', 'নিয়ামতপুর', 'niamatpur.naogaon.gov.bd', NULL, NULL),
(165, 2, 19, 'Manda', 'মান্দা', 'manda.naogaon.gov.bd', NULL, NULL),
(166, 2, 19, 'Atrai', 'আত্রাই', 'atrai.naogaon.gov.bd', NULL, NULL),
(167, 2, 19, 'Raninagar', 'রাণীনগর', 'raninagar.naogaon.gov.bd', NULL, NULL),
(168, 2, 19, 'Naogaon Sadar', 'নওগাঁ সদর', 'naogaonsadar.naogaon.gov.bd', NULL, NULL),
(169, 2, 19, 'Porsha', 'পোরশা', 'porsha.naogaon.gov.bd', NULL, NULL),
(170, 2, 19, 'Sapahar', 'সাপাহার', 'sapahar.naogaon.gov.bd', NULL, NULL),
(171, 3, 20, 'Manirampur', 'মণিরামপুর', 'manirampur.jessore.gov.bd', NULL, NULL),
(172, 3, 20, 'Abhaynagar', 'অভয়নগর', 'abhaynagar.jessore.gov.bd', NULL, NULL),
(173, 3, 20, 'Bagherpara', 'বাঘারপাড়া', 'bagherpara.jessore.gov.bd', NULL, NULL),
(174, 3, 20, 'Chougachha', 'চৌগাছা', 'chougachha.jessore.gov.bd', NULL, NULL),
(175, 3, 20, 'Jhikargacha', 'ঝিকরগাছা', 'jhikargacha.jessore.gov.bd', NULL, NULL),
(176, 3, 20, 'Keshabpur', 'কেশবপুর', 'keshabpur.jessore.gov.bd', NULL, NULL),
(177, 3, 20, 'Jessore Sadar', 'যশোর সদর', 'sadar.jessore.gov.bd', NULL, NULL),
(178, 3, 20, 'Sharsha', 'শার্শা', 'sharsha.jessore.gov.bd', NULL, NULL),
(179, 3, 21, 'Assasuni', 'আশাশুনি', 'assasuni.satkhira.gov.bd', NULL, NULL),
(180, 3, 21, 'Debhata', 'দেবহাটা', 'debhata.satkhira.gov.bd', NULL, NULL),
(181, 3, 21, 'Kalaroa', 'কলারোয়া', 'kalaroa.satkhira.gov.bd', NULL, NULL),
(182, 3, 21, 'Satkhira Sadar', 'সাতক্ষীরা সদর', 'satkhirasadar.satkhira.gov.bd', NULL, NULL),
(183, 3, 21, 'Shyamnagar', 'শ্যামনগর', 'shyamnagar.satkhira.gov.bd', NULL, NULL),
(184, 3, 21, 'Tala', 'তালা', 'tala.satkhira.gov.bd', NULL, NULL),
(185, 3, 21, 'Kaliganj', 'কালিগঞ্জ', 'kaliganj.satkhira.gov.bd', NULL, NULL),
(186, 3, 22, 'Mujibnagar', 'মুজিবনগর', 'mujibnagar.meherpur.gov.bd', NULL, NULL),
(187, 3, 22, 'Meherpur Sadar', 'মেহেরপুর সদর', 'meherpursadar.meherpur.gov.bd', NULL, NULL),
(188, 3, 22, 'Gangni', 'গাংনী', 'gangni.meherpur.gov.bd', NULL, NULL),
(189, 3, 23, 'Narail Sadar', 'নড়াইল সদর', 'narailsadar.narail.gov.bd', NULL, NULL),
(190, 3, 23, 'Lohagara', 'লোহাগড়া', 'lohagara.narail.gov.bd', NULL, NULL),
(191, 3, 23, 'Kalia', 'কালিয়া', 'kalia.narail.gov.bd', NULL, NULL),
(192, 3, 24, 'Chuadanga Sadar', 'চুয়াডাঙ্গা সদর', 'chuadangasadar.chuadanga.gov.bd', NULL, NULL),
(193, 3, 24, 'Alamdanga', 'আলমডাঙ্গা', 'alamdanga.chuadanga.gov.bd', NULL, NULL),
(194, 3, 24, 'Damurhuda', 'দামুড়হুদা', 'damurhuda.chuadanga.gov.bd', NULL, NULL),
(195, 3, 24, 'Jibannagar', 'জীবননগর', 'jibannagar.chuadanga.gov.bd', NULL, NULL),
(196, 3, 25, 'Kushtia Sadar', 'কুষ্টিয়া সদর', 'kushtiasadar.kushtia.gov.bd', NULL, NULL),
(197, 3, 25, 'Kumarkhali', 'কুমারখালী', 'kumarkhali.kushtia.gov.bd', NULL, NULL),
(198, 3, 25, 'Khoksa', 'খোকসা', 'khoksa.kushtia.gov.bd', NULL, NULL),
(199, 3, 25, 'Mirpur', 'মিরপুর', 'mirpurkushtia.kushtia.gov.bd', NULL, NULL),
(200, 3, 25, 'Daulatpur', 'দৌলতপুর', 'daulatpur.kushtia.gov.bd', NULL, NULL),
(201, 3, 25, 'Bheramara', 'ভেড়ামারা', 'bheramara.kushtia.gov.bd', NULL, NULL),
(202, 3, 26, 'Shalikha', 'শালিখা', 'shalikha.magura.gov.bd', NULL, NULL),
(203, 3, 26, 'Sreepur', 'শ্রীপুর', 'sreepur.magura.gov.bd', NULL, NULL),
(204, 3, 26, 'Magura Sadar', 'মাগুরা সদর', 'magurasadar.magura.gov.bd', NULL, NULL),
(205, 3, 26, 'Mohammadpur', 'মহম্মদপুর', 'mohammadpur.magura.gov.bd', NULL, NULL),
(206, 3, 27, 'Paikgasa', 'পাইকগাছা', 'paikgasa.khulna.gov.bd', NULL, NULL),
(207, 3, 27, 'Fultola', 'ফুলতলা', 'fultola.khulna.gov.bd', NULL, NULL),
(208, 3, 27, 'Digholia', 'দিঘলিয়া', 'digholia.khulna.gov.bd', NULL, NULL),
(209, 3, 27, 'Rupsha', 'রূপসা', 'rupsha.khulna.gov.bd', NULL, NULL),
(210, 3, 27, 'Terokhada', 'তেরখাদা', 'terokhada.khulna.gov.bd', NULL, NULL),
(211, 3, 27, 'Dumuria', 'ডুমুরিয়া', 'dumuria.khulna.gov.bd', NULL, NULL),
(212, 3, 27, 'Botiaghata', 'বটিয়াঘাটা', 'botiaghata.khulna.gov.bd', NULL, NULL),
(213, 3, 27, 'Dakop', 'দাকোপ', 'dakop.khulna.gov.bd', NULL, NULL),
(214, 3, 27, 'Koyra', 'কয়রা', 'koyra.khulna.gov.bd', NULL, NULL),
(215, 3, 28, 'Fakirhat', 'ফকিরহাট', 'fakirhat.bagerhat.gov.bd', NULL, NULL),
(216, 3, 28, 'Bagerhat Sadar', 'বাগেরহাট সদর', 'sadar.bagerhat.gov.bd', NULL, NULL),
(217, 3, 28, 'Mollahat', 'মোল্লাহাট', 'mollahat.bagerhat.gov.bd', NULL, NULL),
(218, 3, 28, 'Sarankhola', 'শরণখোলা', 'sarankhola.bagerhat.gov.bd', NULL, NULL),
(219, 3, 28, 'Rampal', 'রামপাল', 'rampal.bagerhat.gov.bd', NULL, NULL),
(220, 3, 28, 'Morrelganj', 'মোড়েলগঞ্জ', 'morrelganj.bagerhat.gov.bd', NULL, NULL),
(221, 3, 28, 'Kachua', 'কচুয়া', 'kachua.bagerhat.gov.bd', NULL, NULL),
(222, 3, 28, 'Mongla', 'মোংলা', 'mongla.bagerhat.gov.bd', NULL, NULL),
(223, 3, 28, 'Chitalmari', 'চিতলমারী', 'chitalmari.bagerhat.gov.bd', NULL, NULL),
(224, 3, 29, 'Jhenaidah Sadar', 'ঝিনাইদহ সদর', 'sadar.jhenaidah.gov.bd', NULL, NULL),
(225, 3, 29, 'Shailkupa', 'শৈলকুপা', 'shailkupa.jhenaidah.gov.bd', NULL, NULL),
(226, 3, 29, 'Harinakundu', 'হরিণাকুন্ডু', 'harinakundu.jhenaidah.gov.bd', NULL, NULL),
(227, 3, 29, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.jhenaidah.gov.bd', NULL, NULL),
(228, 3, 29, 'Kotchandpur', 'কোটচাঁদপুর', 'kotchandpur.jhenaidah.gov.bd', NULL, NULL),
(229, 3, 29, 'Moheshpur', 'মহেশপুর', 'moheshpur.jhenaidah.gov.bd', NULL, NULL),
(230, 4, 30, 'Jhalakathi Sadar', 'ঝালকাঠি সদর', 'sadar.jhalakathi.gov.bd', NULL, NULL),
(231, 4, 30, 'Kathalia', 'কাঠালিয়া', 'kathalia.jhalakathi.gov.bd', NULL, NULL),
(232, 4, 30, 'Nalchity', 'নলছিটি', 'nalchity.jhalakathi.gov.bd', NULL, NULL),
(233, 4, 30, 'Rajapur', 'রাজাপুর', 'rajapur.jhalakathi.gov.bd', NULL, NULL),
(234, 4, 31, 'Bauphal', 'বাউফল', 'bauphal.patuakhali.gov.bd', NULL, NULL),
(235, 4, 31, 'Patuakhali Sadar', 'পটুয়াখালী সদর', 'sadar.patuakhali.gov.bd', NULL, NULL),
(236, 4, 31, 'Dumki', 'দুমকি', 'dumki.patuakhali.gov.bd', NULL, NULL),
(237, 4, 31, 'Dashmina', 'দশমিনা', 'dashmina.patuakhali.gov.bd', NULL, NULL),
(238, 4, 31, 'Kalapara', 'কলাপাড়া', 'kalapara.patuakhali.gov.bd', NULL, NULL),
(239, 4, 31, 'Mirzaganj', 'মির্জাগঞ্জ', 'mirzaganj.patuakhali.gov.bd', NULL, NULL),
(240, 4, 31, 'Galachipa', 'গলাচিপা', 'galachipa.patuakhali.gov.bd', NULL, NULL),
(241, 4, 31, 'Rangabali', 'রাঙ্গাবালী', 'rangabali.patuakhali.gov.bd', NULL, NULL),
(242, 4, 32, 'Pirojpur Sadar', 'পিরোজপুর সদর', 'sadar.pirojpur.gov.bd', NULL, NULL),
(243, 4, 32, 'Nazirpur', 'নাজিরপুর', 'nazirpur.pirojpur.gov.bd', NULL, NULL),
(244, 4, 32, 'Kawkhali', 'কাউখালী', 'kawkhali.pirojpur.gov.bd', NULL, NULL),
(245, 4, 32, 'Zianagar', 'জিয়ানগর', 'zianagar.pirojpur.gov.bd', NULL, NULL),
(246, 4, 32, 'Bhandaria', 'ভান্ডারিয়া', 'bhandaria.pirojpur.gov.bd', NULL, NULL),
(247, 4, 32, 'Mathbaria', 'মঠবাড়ীয়া', 'mathbaria.pirojpur.gov.bd', NULL, NULL),
(248, 4, 32, 'Nesarabad', 'নেছারাবাদ', 'nesarabad.pirojpur.gov.bd', NULL, NULL),
(249, 4, 33, 'Barisal Sadar', 'বরিশাল সদর', 'barisalsadar.barisal.gov.bd', NULL, NULL),
(250, 4, 33, 'Bakerganj', 'বাকেরগঞ্জ', 'bakerganj.barisal.gov.bd', NULL, NULL),
(251, 4, 33, 'Babuganj', 'বাবুগঞ্জ', 'babuganj.barisal.gov.bd', NULL, NULL),
(252, 4, 33, 'Wazirpur', 'উজিরপুর', 'wazirpur.barisal.gov.bd', NULL, NULL),
(253, 4, 33, 'Banaripara', 'বানারীপাড়া', 'banaripara.barisal.gov.bd', NULL, NULL),
(254, 4, 33, 'Gournadi', 'গৌরনদী', 'gournadi.barisal.gov.bd', NULL, NULL),
(255, 4, 33, 'Agailjhara', 'আগৈলঝাড়া', 'agailjhara.barisal.gov.bd', NULL, NULL),
(256, 4, 33, 'Mehendiganj', 'মেহেন্দিগঞ্জ', 'mehendiganj.barisal.gov.bd', NULL, NULL),
(257, 4, 33, 'Muladi', 'মুলাদী', 'muladi.barisal.gov.bd', NULL, NULL),
(258, 4, 33, 'Hizla', 'হিজলা', 'hizla.barisal.gov.bd', NULL, NULL),
(259, 4, 34, 'Bhola Sadar', 'ভোলা সদর', 'sadar.bhola.gov.bd', NULL, NULL),
(260, 4, 34, 'Borhan Sddin', 'বোরহান উদ্দিন', 'borhanuddin.bhola.gov.bd', NULL, NULL),
(261, 4, 34, 'Charfesson', 'চরফ্যাশন', 'charfesson.bhola.gov.bd', NULL, NULL),
(262, 4, 34, 'Doulatkhan', 'দৌলতখান', 'doulatkhan.bhola.gov.bd', NULL, NULL),
(263, 4, 34, 'Monpura', 'মনপুরা', 'monpura.bhola.gov.bd', NULL, NULL),
(264, 4, 34, 'Tazumuddin', 'তজুমদ্দিন', 'tazumuddin.bhola.gov.bd', NULL, NULL),
(265, 4, 34, 'Lalmohan', 'লালমোহন', 'lalmohan.bhola.gov.bd', NULL, NULL),
(266, 4, 35, 'Amtali', 'আমতলী', 'amtali.barguna.gov.bd', NULL, NULL),
(267, 4, 35, 'Barguna Sadar', 'বরগুনা সদর', 'sadar.barguna.gov.bd', NULL, NULL),
(268, 4, 35, 'Betagi', 'বেতাগী', 'betagi.barguna.gov.bd', NULL, NULL),
(269, 4, 35, 'Bamna', 'বামনা', 'bamna.barguna.gov.bd', NULL, NULL),
(270, 4, 35, 'Pathorghata', 'পাথরঘাটা', 'pathorghata.barguna.gov.bd', NULL, NULL),
(271, 4, 35, 'Taltali', 'তালতলি', 'taltali.barguna.gov.bd', NULL, NULL),
(272, 5, 36, 'Balaganj', 'বালাগঞ্জ', 'balaganj.sylhet.gov.bd', NULL, NULL),
(273, 5, 36, 'Beanibazar', 'বিয়ানীবাজার', 'beanibazar.sylhet.gov.bd', NULL, NULL),
(274, 5, 36, 'Bishwanath', 'বিশ্বনাথ', 'bishwanath.sylhet.gov.bd', NULL, NULL),
(275, 5, 36, 'Companiganj', 'কোম্পানীগঞ্জ', 'companiganj.sylhet.gov.bd', NULL, NULL),
(276, 5, 36, 'Fenchuganj', 'ফেঞ্চুগঞ্জ', 'fenchuganj.sylhet.gov.bd', NULL, NULL),
(277, 5, 36, 'Golapganj', 'গোলাপগঞ্জ', 'golapganj.sylhet.gov.bd', NULL, NULL),
(278, 5, 36, 'Gowainghat', 'গোয়াইনঘাট', 'gowainghat.sylhet.gov.bd', NULL, NULL),
(279, 5, 36, 'Jaintiapur', 'জৈন্তাপুর', 'jaintiapur.sylhet.gov.bd', NULL, NULL),
(280, 5, 36, 'Kanaighat', 'কানাইঘাট', 'kanaighat.sylhet.gov.bd', NULL, NULL),
(281, 5, 36, 'Sylhet Sadar', 'সিলেট সদর', 'sylhetsadar.sylhet.gov.bd', NULL, NULL),
(282, 5, 36, 'Zakiganj', 'জকিগঞ্জ', 'zakiganj.sylhet.gov.bd', NULL, NULL),
(283, 5, 36, 'Dakshinsurma', 'দক্ষিণ সুরমা', 'dakshinsurma.sylhet.gov.bd', NULL, NULL),
(284, 5, 36, 'Osmaninagar', 'ওসমানী নগর', 'osmaninagar.sylhet.gov.bd', NULL, NULL),
(285, 5, 37, 'Barlekha', 'বড়লেখা', 'barlekha.moulvibazar.gov.bd', NULL, NULL),
(286, 5, 37, 'Kamolganj', 'কমলগঞ্জ', 'kamolganj.moulvibazar.gov.bd', NULL, NULL),
(287, 5, 37, 'Kulaura', 'কুলাউড়া', 'kulaura.moulvibazar.gov.bd', NULL, NULL),
(288, 5, 37, 'Moulvibazar Sadar', 'মৌলভীবাজার সদর', 'moulvibazarsadar.moulvibazar.gov.bd', NULL, NULL),
(289, 5, 37, 'Rajnagar', 'রাজনগর', 'rajnagar.moulvibazar.gov.bd', NULL, NULL),
(290, 5, 37, 'Sreemangal', 'শ্রীমঙ্গল', 'sreemangal.moulvibazar.gov.bd', NULL, NULL),
(291, 5, 37, 'Juri', 'জুড়ী', 'juri.moulvibazar.gov.bd', NULL, NULL),
(292, 5, 38, 'Nabiganj', 'নবীগঞ্জ', 'nabiganj.habiganj.gov.bd', NULL, NULL),
(293, 5, 38, 'Bahubal', 'বাহুবল', 'bahubal.habiganj.gov.bd', NULL, NULL),
(294, 5, 38, 'Ajmiriganj', 'আজমিরীগঞ্জ', 'ajmiriganj.habiganj.gov.bd', NULL, NULL),
(295, 5, 38, 'Baniachong', 'বানিয়াচং', 'baniachong.habiganj.gov.bd', NULL, NULL),
(296, 5, 38, 'Lakhai', 'লাখাই', 'lakhai.habiganj.gov.bd', NULL, NULL),
(297, 5, 38, 'Chunarughat', 'চুনারুঘাট', 'chunarughat.habiganj.gov.bd', NULL, NULL),
(298, 5, 38, 'Habiganj Sadar', 'হবিগঞ্জ সদর', 'habiganjsadar.habiganj.gov.bd', NULL, NULL),
(299, 5, 38, 'Madhabpur', 'মাধবপুর', 'madhabpur.habiganj.gov.bd', NULL, NULL),
(300, 5, 39, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর', 'sadar.sunamganj.gov.bd', NULL, NULL),
(301, 5, 39, 'South Sunamganj', 'দক্ষিণ সুনামগঞ্জ', 'southsunamganj.sunamganj.gov.bd', NULL, NULL),
(302, 5, 39, 'Bishwambarpur', 'বিশ্বম্ভরপুর', 'bishwambarpur.sunamganj.gov.bd', NULL, NULL),
(303, 5, 39, 'Chhatak', 'ছাতক', 'chhatak.sunamganj.gov.bd', NULL, NULL),
(304, 5, 39, 'Jagannathpur', 'জগন্নাথপুর', 'jagannathpur.sunamganj.gov.bd', NULL, NULL),
(305, 5, 39, 'Dowarabazar', 'দোয়ারাবাজার', 'dowarabazar.sunamganj.gov.bd', NULL, NULL),
(306, 5, 39, 'Tahirpur', 'তাহিরপুর', 'tahirpur.sunamganj.gov.bd', NULL, NULL),
(307, 5, 39, 'Dharmapasha', 'ধর্মপাশা', 'dharmapasha.sunamganj.gov.bd', NULL, NULL),
(308, 5, 39, 'Jamalganj', 'জামালগঞ্জ', 'jamalganj.sunamganj.gov.bd', NULL, NULL),
(309, 5, 39, 'Shalla', 'শাল্লা', 'shalla.sunamganj.gov.bd', NULL, NULL),
(310, 5, 39, 'Derai', 'দিরাই', 'derai.sunamganj.gov.bd', NULL, NULL),
(311, 6, 40, 'Belabo', 'বেলাবো', 'belabo.narsingdi.gov.bd', NULL, NULL),
(312, 6, 40, 'Monohardi', 'মনোহরদী', 'monohardi.narsingdi.gov.bd', NULL, NULL),
(313, 6, 40, 'Narsingdi Sadar', 'নরসিংদী সদর', 'narsingdisadar.narsingdi.gov.bd', NULL, NULL),
(314, 6, 40, 'Palash', 'পলাশ', 'palash.narsingdi.gov.bd', NULL, NULL),
(315, 6, 40, 'Raipura', 'রায়পুরা', 'raipura.narsingdi.gov.bd', NULL, NULL),
(316, 6, 40, 'Shibpur', 'শিবপুর', 'shibpur.narsingdi.gov.bd', NULL, NULL),
(317, 6, 41, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.gazipur.gov.bd', NULL, NULL),
(318, 6, 41, 'Kaliakair', 'কালিয়াকৈর', 'kaliakair.gazipur.gov.bd', NULL, NULL),
(319, 6, 41, 'Kapasia', 'কাপাসিয়া', 'kapasia.gazipur.gov.bd', NULL, NULL),
(320, 6, 41, 'Gazipur Sadar', 'গাজীপুর সদর', 'sadar.gazipur.gov.bd', NULL, NULL),
(321, 6, 41, 'Sreepur', 'শ্রীপুর', 'sreepur.gazipur.gov.bd', NULL, NULL),
(322, 6, 42, 'Shariatpur Sadar', 'শরিয়তপুর সদর', 'sadar.shariatpur.gov.bd', NULL, NULL),
(323, 6, 42, 'Naria', 'নড়িয়া', 'naria.shariatpur.gov.bd', NULL, NULL),
(324, 6, 42, 'Zajira', 'জাজিরা', 'zajira.shariatpur.gov.bd', NULL, NULL),
(325, 6, 42, 'Gosairhat', 'গোসাইরহাট', 'gosairhat.shariatpur.gov.bd', NULL, NULL),
(326, 6, 42, 'Bhedarganj', 'ভেদরগঞ্জ', 'bhedarganj.shariatpur.gov.bd', NULL, NULL),
(327, 6, 42, 'Damudya', 'ডামুড্যা', 'damudya.shariatpur.gov.bd', NULL, NULL),
(328, 6, 43, 'Araihazar', 'আড়াইহাজার', 'araihazar.narayanganj.gov.bd', NULL, NULL),
(329, 6, 43, 'Bandar', 'বন্দর', 'bandar.narayanganj.gov.bd', NULL, NULL),
(330, 6, 43, 'Narayanganj Sadar', 'নারায়নগঞ্জ সদর', 'narayanganjsadar.narayanganj.gov.bd', NULL, NULL),
(331, 6, 43, 'Rupganj', 'রূপগঞ্জ', 'rupganj.narayanganj.gov.bd', NULL, NULL),
(332, 6, 43, 'Sonargaon', 'সোনারগাঁ', 'sonargaon.narayanganj.gov.bd', NULL, NULL),
(333, 6, 44, 'Basail', 'বাসাইল', 'basail.tangail.gov.bd', NULL, NULL),
(334, 6, 44, 'Bhuapur', 'ভুয়াপুর', 'bhuapur.tangail.gov.bd', NULL, NULL),
(335, 6, 44, 'Delduar', 'দেলদুয়ার', 'delduar.tangail.gov.bd', NULL, NULL),
(336, 6, 44, 'Ghatail', 'ঘাটাইল', 'ghatail.tangail.gov.bd', NULL, NULL),
(337, 6, 44, 'Gopalpur', 'গোপালপুর', 'gopalpur.tangail.gov.bd', NULL, NULL),
(338, 6, 44, 'Madhupur', 'মধুপুর', 'madhupur.tangail.gov.bd', NULL, NULL),
(339, 6, 44, 'Mirzapur', 'মির্জাপুর', 'mirzapur.tangail.gov.bd', NULL, NULL),
(340, 6, 44, 'Nagarpur', 'নাগরপুর', 'nagarpur.tangail.gov.bd', NULL, NULL),
(341, 6, 44, 'Sakhipur', 'সখিপুর', 'sakhipur.tangail.gov.bd', NULL, NULL),
(342, 6, 44, 'Tangail Sadar', 'টাঙ্গাইল সদর', 'tangailsadar.tangail.gov.bd', NULL, NULL),
(343, 6, 44, 'Kalihati', 'কালিহাতী', 'kalihati.tangail.gov.bd', NULL, NULL),
(344, 6, 44, 'Dhanbari', 'ধনবাড়ী', 'dhanbari.tangail.gov.bd', NULL, NULL),
(345, 6, 45, 'Itna', 'ইটনা', 'itna.kishoreganj.gov.bd', NULL, NULL),
(346, 6, 45, 'Katiadi', 'কটিয়াদী', 'katiadi.kishoreganj.gov.bd', NULL, NULL),
(347, 6, 45, 'Bhairab', 'ভৈরব', 'bhairab.kishoreganj.gov.bd', NULL, NULL),
(348, 6, 45, 'Tarail', 'তাড়াইল', 'tarail.kishoreganj.gov.bd', NULL, NULL),
(349, 6, 45, 'Hossainpur', 'হোসেনপুর', 'hossainpur.kishoreganj.gov.bd', NULL, NULL),
(350, 6, 45, 'Pakundia', 'পাকুন্দিয়া', 'pakundia.kishoreganj.gov.bd', NULL, NULL),
(351, 6, 45, 'Kuliarchar', 'কুলিয়ারচর', 'kuliarchar.kishoreganj.gov.bd', NULL, NULL),
(352, 6, 45, 'Kishoreganj Sadar', 'কিশোরগঞ্জ সদর', 'kishoreganjsadar.kishoreganj.gov.bd', NULL, NULL),
(353, 6, 45, 'Karimgonj', 'করিমগঞ্জ', 'karimgonj.kishoreganj.gov.bd', NULL, NULL),
(354, 6, 45, 'Bajitpur', 'বাজিতপুর', 'bajitpur.kishoreganj.gov.bd', NULL, NULL),
(355, 6, 45, 'Austagram', 'অষ্টগ্রাম', 'austagram.kishoreganj.gov.bd', NULL, NULL),
(356, 6, 45, 'Mithamoin', 'মিঠামইন', 'mithamoin.kishoreganj.gov.bd', NULL, NULL),
(357, 6, 45, 'Nikli', 'নিকলী', 'nikli.kishoreganj.gov.bd', NULL, NULL),
(358, 6, 46, 'Harirampur', 'হরিরামপুর', 'harirampur.manikganj.gov.bd', NULL, NULL),
(359, 6, 46, 'Saturia', 'সাটুরিয়া', 'saturia.manikganj.gov.bd', NULL, NULL),
(360, 6, 46, 'Manikganj Sadar', 'মানিকগঞ্জ সদর', 'sadar.manikganj.gov.bd', NULL, NULL),
(361, 6, 46, 'Gior', 'ঘিওর', 'gior.manikganj.gov.bd', NULL, NULL),
(362, 6, 46, 'Shibaloy', 'শিবালয়', 'shibaloy.manikganj.gov.bd', NULL, NULL),
(363, 6, 46, 'Doulatpur', 'দৌলতপুর', 'doulatpur.manikganj.gov.bd', NULL, NULL),
(364, 6, 46, 'Singiar', 'সিংগাইর', 'singiar.manikganj.gov.bd', NULL, NULL),
(365, 6, 47, 'Savar', 'সাভার', 'savar.dhaka.gov.bd', NULL, NULL),
(366, 6, 47, 'Dhamrai', 'ধামরাই', 'dhamrai.dhaka.gov.bd', NULL, NULL),
(367, 6, 47, 'Keraniganj', 'কেরাণীগঞ্জ', 'keraniganj.dhaka.gov.bd', NULL, NULL),
(368, 6, 47, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dhaka.gov.bd', NULL, NULL),
(369, 6, 47, 'Dohar', 'দোহার', 'dohar.dhaka.gov.bd', NULL, NULL),
(370, 6, 48, 'Munshiganj Sadar', 'মুন্সিগঞ্জ সদর', 'sadar.munshiganj.gov.bd', NULL, NULL),
(371, 6, 48, 'Sreenagar', 'শ্রীনগর', 'sreenagar.munshiganj.gov.bd', NULL, NULL),
(372, 6, 48, 'Sirajdikhan', 'সিরাজদিখান', 'sirajdikhan.munshiganj.gov.bd', NULL, NULL),
(373, 6, 48, 'Louhajanj', 'লৌহজং', 'louhajanj.munshiganj.gov.bd', NULL, NULL),
(374, 6, 48, 'Gajaria', 'গজারিয়া', 'gajaria.munshiganj.gov.bd', NULL, NULL),
(375, 6, 48, 'Tongibari', 'টংগীবাড়ি', 'tongibari.munshiganj.gov.bd', NULL, NULL),
(376, 6, 49, 'Rajbari Sadar', 'রাজবাড়ী সদর', 'sadar.rajbari.gov.bd', NULL, NULL),
(377, 6, 49, 'Goalanda', 'গোয়ালন্দ', 'goalanda.rajbari.gov.bd', NULL, NULL),
(378, 6, 49, 'Pangsa', 'পাংশা', 'pangsa.rajbari.gov.bd', NULL, NULL),
(379, 6, 49, 'Baliakandi', 'বালিয়াকান্দি', 'baliakandi.rajbari.gov.bd', NULL, NULL),
(380, 6, 49, 'Kalukhali', 'কালুখালী', 'kalukhali.rajbari.gov.bd', NULL, NULL),
(381, 6, 50, 'Madaripur Sadar', 'মাদারীপুর সদর', 'sadar.madaripur.gov.bd', NULL, NULL),
(382, 6, 50, 'Shibchar', 'শিবচর', 'shibchar.madaripur.gov.bd', NULL, NULL),
(383, 6, 50, 'Kalkini', 'কালকিনি', 'kalkini.madaripur.gov.bd', NULL, NULL),
(384, 6, 50, 'Rajoir', 'রাজৈর', 'rajoir.madaripur.gov.bd', NULL, NULL),
(385, 6, 51, 'Gopalganj Sadar', 'গোপালগঞ্জ সদর', 'sadar.gopalganj.gov.bd', NULL, NULL),
(386, 6, 51, 'Kashiani', 'কাশিয়ানী', 'kashiani.gopalganj.gov.bd', NULL, NULL),
(387, 6, 51, 'Tungipara', 'টুংগীপাড়া', 'tungipara.gopalganj.gov.bd', NULL, NULL),
(388, 6, 51, 'Kotalipara', 'কোটালীপাড়া', 'kotalipara.gopalganj.gov.bd', NULL, NULL),
(389, 6, 51, 'Muksudpur', 'মুকসুদপুর', 'muksudpur.gopalganj.gov.bd', NULL, NULL),
(390, 6, 52, 'Faridpur Sadar', 'ফরিদপুর সদর', 'sadar.faridpur.gov.bd', NULL, NULL),
(391, 6, 52, 'Alfadanga', 'আলফাডাঙ্গা', 'alfadanga.faridpur.gov.bd', NULL, NULL),
(392, 6, 52, 'Boalmari', 'বোয়ালমারী', 'boalmari.faridpur.gov.bd', NULL, NULL),
(393, 6, 52, 'Sadarpur', 'সদরপুর', 'sadarpur.faridpur.gov.bd', NULL, NULL),
(394, 6, 52, 'Nagarkanda', 'নগরকান্দা', 'nagarkanda.faridpur.gov.bd', NULL, NULL),
(395, 6, 52, 'Bhanga', 'ভাঙ্গা', 'bhanga.faridpur.gov.bd', NULL, NULL),
(396, 6, 52, 'Charbhadrasan', 'চরভদ্রাসন', 'charbhadrasan.faridpur.gov.bd', NULL, NULL),
(397, 6, 52, 'Madhukhali', 'মধুখালী', 'madhukhali.faridpur.gov.bd', NULL, NULL),
(398, 6, 52, 'Saltha', 'সালথা', 'saltha.faridpur.gov.bd', NULL, NULL),
(399, 7, 53, 'Panchagarh Sadar', 'পঞ্চগড় সদর', 'panchagarhsadar.panchagarh.gov.bd', NULL, NULL),
(400, 7, 53, 'Debiganj', 'দেবীগঞ্জ', 'debiganj.panchagarh.gov.bd', NULL, NULL),
(401, 7, 53, 'Boda', 'বোদা', 'boda.panchagarh.gov.bd', NULL, NULL),
(402, 7, 53, 'Atwari', 'আটোয়ারী', 'atwari.panchagarh.gov.bd', NULL, NULL),
(403, 7, 53, 'Tetulia', 'তেতুলিয়া', 'tetulia.panchagarh.gov.bd', NULL, NULL),
(404, 7, 54, 'Nawabganj', 'নবাবগঞ্জ', 'nawabganj.dinajpur.gov.bd', NULL, NULL),
(405, 7, 54, 'Birganj', 'বীরগঞ্জ', 'birganj.dinajpur.gov.bd', NULL, NULL),
(406, 7, 54, 'Ghoraghat', 'ঘোড়াঘাট', 'ghoraghat.dinajpur.gov.bd', NULL, NULL),
(407, 7, 54, 'Birampur', 'বিরামপুর', 'birampur.dinajpur.gov.bd', NULL, NULL),
(408, 7, 54, 'Parbatipur', 'পার্বতীপুর', 'parbatipur.dinajpur.gov.bd', NULL, NULL),
(409, 7, 54, 'Bochaganj', 'বোচাগঞ্জ', 'bochaganj.dinajpur.gov.bd', NULL, NULL),
(410, 7, 54, 'Kaharol', 'কাহারোল', 'kaharol.dinajpur.gov.bd', NULL, NULL),
(411, 7, 54, 'Fulbari', 'ফুলবাড়ী', 'fulbari.dinajpur.gov.bd', NULL, NULL),
(412, 7, 54, 'Dinajpur Sadar', 'দিনাজপুর সদর', 'dinajpursadar.dinajpur.gov.bd', NULL, NULL),
(413, 7, 54, 'Hakimpur', 'হাকিমপুর', 'hakimpur.dinajpur.gov.bd', NULL, NULL),
(414, 7, 54, 'Khansama', 'খানসামা', 'khansama.dinajpur.gov.bd', NULL, NULL),
(415, 7, 54, 'Birol', 'বিরল', 'birol.dinajpur.gov.bd', NULL, NULL),
(416, 7, 54, 'Chirirbandar', 'চিরিরবন্দর', 'chirirbandar.dinajpur.gov.bd', NULL, NULL),
(417, 7, 55, 'Lalmonirhat Sadar', 'লালমনিরহাট সদর', 'sadar.lalmonirhat.gov.bd', NULL, NULL),
(418, 7, 55, 'Kaliganj', 'কালীগঞ্জ', 'kaliganj.lalmonirhat.gov.bd', NULL, NULL),
(419, 7, 55, 'Hatibandha', 'হাতীবান্ধা', 'hatibandha.lalmonirhat.gov.bd', NULL, NULL),
(420, 7, 55, 'Patgram', 'পাটগ্রাম', 'patgram.lalmonirhat.gov.bd', NULL, NULL),
(421, 7, 55, 'Aditmari', 'আদিতমারী', 'aditmari.lalmonirhat.gov.bd', NULL, NULL),
(422, 7, 56, 'Syedpur', 'সৈয়দপুর', 'syedpur.nilphamari.gov.bd', NULL, NULL),
(423, 7, 56, 'Domar', 'ডোমার', 'domar.nilphamari.gov.bd', NULL, NULL),
(424, 7, 56, 'Dimla', 'ডিমলা', 'dimla.nilphamari.gov.bd', NULL, NULL),
(425, 7, 56, 'Jaldhaka', 'জলঢাকা', 'jaldhaka.nilphamari.gov.bd', NULL, NULL),
(426, 7, 56, 'Kishorganj', 'কিশোরগঞ্জ', 'kishorganj.nilphamari.gov.bd', NULL, NULL),
(427, 7, 56, 'Nilphamari Sadar', 'নীলফামারী সদর', 'nilphamarisadar.nilphamari.gov.bd', NULL, NULL),
(428, 7, 57, 'Sadullapur', 'সাদুল্লাপুর', 'sadullapur.gaibandha.gov.bd', NULL, NULL),
(429, 7, 57, 'Gaibandha Sadar', 'গাইবান্ধা সদর', 'gaibandhasadar.gaibandha.gov.bd', NULL, NULL),
(430, 7, 57, 'Palashbari', 'পলাশবাড়ী', 'palashbari.gaibandha.gov.bd', NULL, NULL),
(431, 7, 57, 'Saghata', 'সাঘাটা', 'saghata.gaibandha.gov.bd', NULL, NULL),
(432, 7, 57, 'Gobindaganj', 'গোবিন্দগঞ্জ', 'gobindaganj.gaibandha.gov.bd', NULL, NULL),
(433, 7, 57, 'Sundarganj', 'সুন্দরগঞ্জ', 'sundarganj.gaibandha.gov.bd', NULL, NULL),
(434, 7, 57, 'Phulchari', 'ফুলছড়ি', 'phulchari.gaibandha.gov.bd', NULL, NULL),
(435, 7, 58, 'Thakurgaon Sadar', 'ঠাকুরগাঁও সদর', 'thakurgaonsadar.thakurgaon.gov.bd', NULL, NULL),
(436, 7, 58, 'Pirganj', 'পীরগঞ্জ', 'pirganj.thakurgaon.gov.bd', NULL, NULL),
(437, 7, 58, 'Ranisankail', 'রাণীশংকৈল', 'ranisankail.thakurgaon.gov.bd', NULL, NULL),
(438, 7, 58, 'Haripur', 'হরিপুর', 'haripur.thakurgaon.gov.bd', NULL, NULL),
(439, 7, 58, 'Baliadangi', 'বালিয়াডাঙ্গী', 'baliadangi.thakurgaon.gov.bd', NULL, NULL),
(440, 7, 59, 'Rangpur Sadar', 'রংপুর সদর', 'rangpursadar.rangpur.gov.bd', NULL, NULL),
(441, 7, 59, 'Gangachara', 'গংগাচড়া', 'gangachara.rangpur.gov.bd', NULL, NULL),
(442, 7, 59, 'Taragonj', 'তারাগঞ্জ', 'taragonj.rangpur.gov.bd', NULL, NULL),
(443, 7, 59, 'Badargonj', 'বদরগঞ্জ', 'badargonj.rangpur.gov.bd', NULL, NULL),
(444, 7, 59, 'Mithapukur', 'মিঠাপুকুর', 'mithapukur.rangpur.gov.bd', NULL, NULL),
(445, 7, 59, 'Pirgonj', 'পীরগঞ্জ', 'pirgonj.rangpur.gov.bd', NULL, NULL),
(446, 7, 59, 'Kaunia', 'কাউনিয়া', 'kaunia.rangpur.gov.bd', NULL, NULL),
(447, 7, 59, 'Pirgacha', 'পীরগাছা', 'pirgacha.rangpur.gov.bd', NULL, NULL),
(448, 7, 60, 'Kurigram Sadar', 'কুড়িগ্রাম সদর', 'kurigramsadar.kurigram.gov.bd', NULL, NULL),
(449, 7, 60, 'Nageshwari', 'নাগেশ্বরী', 'nageshwari.kurigram.gov.bd', NULL, NULL),
(450, 7, 60, 'Bhurungamari', 'ভুরুঙ্গামারী', 'bhurungamari.kurigram.gov.bd', NULL, NULL),
(451, 7, 60, 'Phulbari', 'ফুলবাড়ী', 'phulbari.kurigram.gov.bd', NULL, NULL),
(452, 7, 60, 'Rajarhat', 'রাজারহাট', 'rajarhat.kurigram.gov.bd', NULL, NULL),
(453, 7, 60, 'Ulipur', 'উলিপুর', 'ulipur.kurigram.gov.bd', NULL, NULL),
(454, 7, 60, 'Chilmari', 'চিলমারী', 'chilmari.kurigram.gov.bd', NULL, NULL),
(455, 7, 60, 'Rowmari', 'রৌমারী', 'rowmari.kurigram.gov.bd', NULL, NULL),
(456, 7, 60, 'Charrajibpur', 'চর রাজিবপুর', 'charrajibpur.kurigram.gov.bd', NULL, NULL),
(457, 8, 61, 'Sherpur Sadar', 'শেরপুর সদর', 'sherpursadar.sherpur.gov.bd', NULL, NULL),
(458, 8, 61, 'Nalitabari', 'নালিতাবাড়ী', 'nalitabari.sherpur.gov.bd', NULL, NULL),
(459, 8, 61, 'Sreebordi', 'শ্রীবরদী', 'sreebordi.sherpur.gov.bd', NULL, NULL),
(460, 8, 61, 'Nokla', 'নকলা', 'nokla.sherpur.gov.bd', NULL, NULL),
(461, 8, 61, 'Jhenaigati', 'ঝিনাইগাতী', 'jhenaigati.sherpur.gov.bd', NULL, NULL),
(462, 8, 62, 'Fulbaria', 'ফুলবাড়ীয়া', 'fulbaria.mymensingh.gov.bd', NULL, NULL),
(463, 8, 62, 'Trishal', 'ত্রিশাল', 'trishal.mymensingh.gov.bd', NULL, NULL),
(464, 8, 62, 'Bhaluka', 'ভালুকা', 'bhaluka.mymensingh.gov.bd', NULL, NULL),
(465, 8, 62, 'Muktagacha', 'মুক্তাগাছা', 'muktagacha.mymensingh.gov.bd', NULL, NULL),
(466, 8, 62, 'Mymensingh Sadar', 'ময়মনসিংহ সদর', 'mymensinghsadar.mymensingh.gov.bd', NULL, NULL),
(467, 8, 62, 'Dhobaura', 'ধোবাউড়া', 'dhobaura.mymensingh.gov.bd', NULL, NULL),
(468, 8, 62, 'Phulpur', 'ফুলপুর', 'phulpur.mymensingh.gov.bd', NULL, NULL),
(469, 8, 62, 'Haluaghat', 'হালুয়াঘাট', 'haluaghat.mymensingh.gov.bd', NULL, NULL),
(470, 8, 62, 'Gouripur', 'গৌরীপুর', 'gouripur.mymensingh.gov.bd', NULL, NULL),
(471, 8, 62, 'Gafargaon', 'গফরগাঁও', 'gafargaon.mymensingh.gov.bd', NULL, NULL),
(472, 8, 62, 'Iswarganj', 'ঈশ্বরগঞ্জ', 'iswarganj.mymensingh.gov.bd', NULL, NULL),
(473, 8, 62, 'Nandail', 'নান্দাইল', 'nandail.mymensingh.gov.bd', NULL, NULL),
(474, 8, 62, 'Tarakanda', 'তারাকান্দা', 'tarakanda.mymensingh.gov.bd', NULL, NULL),
(475, 8, 63, 'Jamalpur Sadar', 'জামালপুর সদর', 'jamalpursadar.jamalpur.gov.bd', NULL, NULL),
(476, 8, 63, 'Melandah', 'মেলান্দহ', 'melandah.jamalpur.gov.bd', NULL, NULL),
(477, 8, 63, 'Islampur', 'ইসলামপুর', 'islampur.jamalpur.gov.bd', NULL, NULL),
(478, 8, 63, 'Dewangonj', 'দেওয়ানগঞ্জ', 'dewangonj.jamalpur.gov.bd', NULL, NULL),
(479, 8, 63, 'Sarishabari', 'সরিষাবাড়ী', 'sarishabari.jamalpur.gov.bd', NULL, NULL),
(480, 8, 63, 'Madarganj', 'মাদারগঞ্জ', 'madarganj.jamalpur.gov.bd', NULL, NULL),
(481, 8, 63, 'Bokshiganj', 'বকশীগঞ্জ', 'bokshiganj.jamalpur.gov.bd', NULL, NULL),
(482, 8, 64, 'Barhatta', 'বারহাট্টা', 'barhatta.netrokona.gov.bd', NULL, NULL),
(483, 8, 64, 'Durgapur', 'দুর্গাপুর', 'durgapur.netrokona.gov.bd', NULL, NULL),
(484, 8, 64, 'Kendua', 'কেন্দুয়া', 'kendua.netrokona.gov.bd', NULL, NULL),
(485, 8, 64, 'Atpara', 'আটপাড়া', 'atpara.netrokona.gov.bd', NULL, NULL),
(486, 8, 64, 'Madan', 'মদন', 'madan.netrokona.gov.bd', NULL, NULL),
(487, 8, 64, 'Khaliajuri', 'খালিয়াজুরী', 'khaliajuri.netrokona.gov.bd', NULL, NULL),
(488, 8, 64, 'Kalmakanda', 'কলমাকান্দা', 'kalmakanda.netrokona.gov.bd', NULL, NULL),
(489, 8, 64, 'Mohongonj', 'মোহনগঞ্জ', 'mohongonj.netrokona.gov.bd', NULL, NULL),
(490, 8, 64, 'Purbadhala', 'পূর্বধলা', 'purbadhala.netrokona.gov.bd', NULL, NULL),
(491, 8, 64, 'Netrokona Sadar', 'নেত্রকোণা সদর', 'netrokonasadar.netrokona.gov.bd', NULL, NULL),
(492, 1, 9, 'Eidgaon', 'ঈদগাঁও', 'null', NULL, NULL),
(493, 5, 39, 'Madhyanagar', 'মধ্যনগর', 'null', NULL, NULL),
(494, 6, 50, 'Dasar', 'ডাসার', 'null', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_one` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `icon`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, '1686142022.logo for web-01.png', '1690092293.png', '+88 01906-297955', '+88 01906297861', 'sales@ekotamart.com', 'Largest Online Grocery Shopping In Bangladesh', 'Mukto Bangla Shopping Complex, 5th Floor, Space No:(51-52), Mirpur-1, Dhaka 1216', 'https://www.facebook.com/EkotaMartLimited', '#', '#', 'https://www.youtube.com/@ekotamart', '2023-06-04 07:01:33', '2023-07-23 04:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `subsubcategory_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `slider_img`, `title`, `description`, `category_id`, `subcategory_id`, `subsubcategory_id`, `status`, `created_at`, `updated_at`) VALUES
(11, '1688967186.cover-1.jpg', 'Ekota Mustard Oil', 'Ekota Mustard Oil Banner', 1, 1, 1, 1, NULL, '2023-07-09 23:33:06'),
(12, '1690093828.jpg', 'Special Offer', 'Special Offer', 1, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subcategory_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_bn`, `subcategory_slug_en`, `subcategory_slug_bn`, `created_at`, `updated_at`) VALUES
(1, 1, 'Cooking', 'রান্নাবান্না', 'cooking', 'রান্নাবান্না', NULL, NULL),
(2, 1, 'Fruits & Vegetables', 'ফল এবং সবজি', 'fruits-&-vegetables', 'ফল-এবং-সবজি', NULL, '2023-06-11 03:41:03'),
(3, 1, 'Meat Fish', 'মাছ এবং মাংস', 'meat-fish', 'মাছ-এবং-মাংস', NULL, NULL),
(4, 7, 'Female Care', 'মহিলাদের ব্যবহার্য', 'female-care', 'মহিলাদের-ব্যবহার্য', NULL, '2023-06-11 04:16:07'),
(5, 7, 'Male Care', 'পুরুষদের ব্যবহার্য', 'male-care', 'পুরুষদের-ব্যবহার্য', NULL, '2023-06-11 04:16:28'),
(6, 7, 'Oral Care', 'মুখের ব্যবহার্য', 'oral-care', 'মুখের-ব্যবহার্য', NULL, '2023-06-11 04:16:40'),
(7, 3, 'Dish Wash', 'থালা বাসন পরিষ্কারক', 'dish-wash', 'থালা-বাসন-পরিষ্কারক', NULL, NULL),
(8, 3, 'Toilet Cleaning', 'টয়লেট পরিষ্কারক', 'toilet-cleaning', 'টয়লেট-পরিষ্কারক', NULL, NULL),
(9, 3, 'Laundry', 'লন্ড্রি', 'laundry', 'লন্ড্রি', NULL, NULL),
(10, 3, 'Air Freshners', 'এয়ার ফ্রেশনার', 'air-freshners', 'এয়ার-ফ্রেশনার', NULL, NULL),
(11, 2, 'Eyes', 'চোখ', 'eyes', 'চোখ', NULL, NULL),
(12, 2, 'Lips', 'ঠোঁট', 'lips', 'ঠোঁট', NULL, NULL),
(13, 2, 'Nails', 'নখ', 'nails', 'নখ', NULL, NULL),
(14, 2, 'Face', 'মুখ', 'face', 'মুখ', NULL, NULL),
(15, 8, 'Keto Food', 'কিটোর খাবার', 'keto-food', 'কিটোর-খাবার', NULL, NULL),
(16, 8, 'Antiseptics', 'এন্টিসেপ্টিক্স', 'antiseptics', 'এন্টিসেপ্টিক্স', NULL, NULL),
(17, 8, 'Handwash handrub', 'হ্যান্ডওয়াশ এবং হ্যান্ডরাব', 'handwash-handrub', 'হ্যান্ডওয়াশ-এবং-হ্যান্ডরাব', NULL, NULL),
(18, 8, 'Face Masks Safety', 'ফেস মাস্ক এবং নিরাপত্তা', 'face-masks-safety', 'ফেস-মাস্ক-এবং-নিরাপত্তা', NULL, NULL),
(19, 9, 'Kids Food', 'শিশু খাদ্য', 'kids-food', 'শিশু-খাদ্য', NULL, NULL),
(21, 10, 'Lights Electrical', 'লাইট ও বৈদ্যুতিক', 'lights-electrical', 'লাইট-ও-বৈদ্যুতিক', NULL, NULL),
(22, 10, 'Kitchen Accessories', 'রান্নাঘরের সামগ্রী', 'kitchen-accessories', 'রান্নাঘরের-সামগ্রী', NULL, NULL),
(23, 10, 'Baskets Buckets', 'বালতি গামলা ঝুড়ি', 'baskets-buckets', 'বালতি-গামলা-ঝুড়ি', NULL, NULL),
(24, 10, 'Rack Organizer', 'তাক এবং র‍্যাক', 'rack-organizer', 'তাক-এবং-র‍্যাক', NULL, NULL),
(25, 11, 'Office Electronics', 'অফিস ইলেকট্রনিক্স', 'office-electronics', 'অফিস-ইলেকট্রনিক্স', NULL, NULL),
(26, 11, 'Organizers', 'অর্গানাইজার্স', 'organizers', 'অর্গানাইজার্স', NULL, NULL),
(27, 11, 'Paper', 'কাগজ', 'paper', 'কাগজ', NULL, NULL),
(28, 11, 'School Supplies', 'স্কুল সামগ্রী', 'school-supplies', 'স্কুল-সামগ্রী', NULL, NULL),
(29, 12, 'Dog Food', 'কুকুরের খাদ্য', 'dog-food', 'কুকুরের-খাদ্য', NULL, NULL),
(30, 12, 'Cat Food', 'বিড়ালের খাদ্য', 'cat-food', 'বিড়ালের-খাদ্য', NULL, NULL),
(31, 12, 'Bird Food', 'পাখি এবং অন্যান্য পোষা খাদ্য', 'bird-food', 'পাখি-এবং-অন্যান্য-পোষা-খাদ্য', NULL, NULL),
(32, 13, 'Exercise and fitness', 'ব্যায়াম এবং ফিটনেস', 'exercise-and-fitness', 'ব্যায়াম-এবং-ফিটনেস', NULL, NULL),
(33, 13, 'Dolls Action Figures', 'পুতুল ও প্রতিকৃতি খেলনা', 'dolls-action-figures', 'পুতুল-ও-প্রতিকৃতি-খেলনা', NULL, NULL),
(34, 13, 'Sports Items', 'খেলাধুলা সামগ্রী', 'sports-items', 'খেলাধুলা-সামগ্রী', NULL, NULL),
(35, 14, 'Cloth Shopping', 'কাপড় আনুষাঙ্গিক', 'cloth-shopping', 'কাপড়-আনুষাঙ্গিক', NULL, NULL),
(36, 14, 'Money Bags', 'টাকার থলি', 'money-bags', 'টাকার-থলি', NULL, NULL),
(37, 14, 'Ladies Handbags Clutches', 'লেডিস হ্যান্ডব্যাগ এবং ক্লাচ', 'ladies-handbags-clutches', 'লেডিস-হ্যান্ডব্যাগ-এবং-ক্লাচ', NULL, NULL),
(38, 1, 'Dairy & Eggs', 'দুগ্ধজাত দ্রব্য এবং ডিম', 'dairy-&-eggs', 'দুগ্ধজাত-দ্রব্য-এবং-ডিম', NULL, NULL),
(39, 1, 'Dry Fruit & Nuts', 'ড্রাই ফ্রুটস এন্ড নাট্স', 'dry-fruit-&-nuts', 'ড্রাই-ফ্রুটস-এন্ড-নাট্স', NULL, '2023-06-12 00:52:53'),
(40, 1, 'Breakfast', 'নাস্তা', 'breakfast', 'নাস্তা', NULL, NULL),
(41, 2, 'Hair', 'চুল', 'hair', 'চুল', NULL, NULL),
(42, 20, 'Air Ticket', 'বিমানের টিকেট', 'air-ticket', 'বিমানের-টিকেট', NULL, NULL),
(43, 20, 'Vsa Processing', 'ভিসা প্রক্রিয়াকরণ', 'vsa-processing', 'ভিসা-প্রক্রিয়াকরণ', NULL, NULL),
(44, 20, 'Tourist Visa', 'পর্যটন ভিসা', 'tourist-visa', 'পর্যটন-ভিসা', NULL, NULL),
(45, 20, 'Hotel Booking', 'হোটেল বরাদ্দকরণ', 'hotel-booking', 'হোটেল-বরাদ্দকরণ', NULL, NULL),
(46, 20, 'Re-issue', 'রি-ইস্যু', 're-issue', 'রি-ইস্যু', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_categories`
--

CREATE TABLE `sub_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subsubcategory_slug_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_sub_categories`
--

INSERT INTO `sub_sub_categories` (`id`, `category_id`, `subcategory_id`, `subsubcategory_name_en`, `subsubcategory_name_bn`, `subsubcategory_slug_en`, `subsubcategory_slug_bn`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'OIL', 'তেল', 'oil', 'তেল', NULL, NULL),
(2, 1, 1, 'Ghee', 'ঘি', 'ghee', 'ঘি', NULL, NULL),
(3, 1, 2, 'Fresh Vegetable', 'তাজা সবজি', 'fresh-vegetable', 'তাজা-সবজি', NULL, NULL),
(4, 1, 2, 'Fresh Fruit', 'তাজা ফল', 'fresh-fruit', 'তাজা-ফল', NULL, NULL),
(5, 1, 3, 'Chicken Poultry', 'মুরগি এবং পোল্ট্রি', 'chicken-poultry', 'মুরগি-এবং-পোল্ট্রি', NULL, NULL),
(6, 1, 3, 'Frozen Fish', 'হিমায়িত মাছ', 'frozen-fish', 'হিমায়িত-মাছ', NULL, NULL),
(7, 1, 3, 'Meat', 'মাংস', 'meat', 'মাংস', NULL, NULL),
(8, 1, 3, 'Dried Fish', 'শুঁটকি', 'dried-fish', 'শুঁটকি', NULL, NULL),
(9, 2, 4, 'Womens Soaps', 'মহিলাদের সাবান', 'womens-soaps', 'মহিলাদের-সাবান', NULL, NULL),
(10, 2, 4, 'Hair Care', 'চুলের ব্যবহার্য', 'hair-care', 'চুলের-ব্যবহার্য', NULL, NULL),
(11, 2, 4, 'Womens Perfume', 'মহিলাদের সুগন্ধি', 'womens-perfume', 'মহিলাদের-সুগন্ধি', NULL, NULL),
(12, 2, 4, 'Female Moisturizer', 'মহিলাদের ময়েশ্চারাইজার', 'female-moisturizer', 'মহিলাদের-ময়েশ্চারাইজার', NULL, NULL),
(13, 2, 4, 'Face Wash Scrub', 'ফেস ওয়াশ এবং স্ক্রাব', 'face-wash-scrub', 'ফেস-ওয়াশ-এবং-স্ক্রাব', NULL, NULL),
(14, 2, 4, 'Female Shampoo', 'মহিলাদের শ্যাম্পু এবং কন্ডিশনার', 'female-shampoo', 'মহিলাদের-শ্যাম্পু-এবং-কন্ডিশনার', NULL, NULL),
(15, 2, 5, 'Mens Soaps', 'পুরুষদের সাবান', 'mens-soaps', 'পুরুষদের-সাবান', NULL, NULL),
(16, 2, 5, 'Mens Perfume', 'পুরুষদের সুগন্ধি', 'mens-perfume', 'পুরুষদের-সুগন্ধি', NULL, NULL),
(17, 2, 5, 'Shaving Needs', 'শেভিং এর ব্যবহার্য', 'shaving-needs', 'শেভিং-এর-ব্যবহার্য', NULL, NULL),
(18, 2, 5, 'Mens Facewash', 'পুরুষদের ফেসওয়াশ', 'mens-facewash', 'পুরুষদের-ফেসওয়াশ', NULL, NULL),
(19, 2, 6, 'Toothpastes', 'টুথপেস্ট', 'toothpastes', 'টুথপেস্ট', NULL, NULL),
(20, 2, 6, 'Toothbrushes', 'টুথব্রাশ', 'toothbrushes', 'টুথব্রাশ', NULL, NULL),
(21, 2, 6, 'Mouthwash Others', 'মাউথওয়াশ এবং অন্যান্য', 'mouthwash-others', 'মাউথওয়াশ-এবং-অন্যান্য', NULL, NULL),
(22, 9, 19, 'Milk Juice Drinks', 'দুধ, জুস এবং পানীয়', 'milk-juice-drinks', 'দুধ,-জুস-এবং-পানীয়', NULL, NULL),
(23, 9, 19, 'Toddler Food', 'শিশু খাদ্য', 'toddler-food', 'শিশু-খাদ্য', NULL, NULL),
(24, 1, 1, 'Spices', 'মশলা', 'spices', 'মশলা', NULL, NULL),
(25, 1, 1, 'Rices', 'চাল', 'rices', 'চাল', NULL, NULL),
(26, 10, 21, 'Lights', 'লাইট্স', 'lights', 'লাইট্স', NULL, NULL),
(27, 10, 21, 'Electric Multiplug', 'বৈদ্যুতিক এবং মাল্টিপ্লাগ', 'electric-multiplug', 'বৈদ্যুতিক-এবং-মাল্টিপ্লাগ', NULL, NULL),
(28, 10, 21, 'Electronics', 'ইলেকট্রনিক্স', 'electronics', 'ইলেকট্রনিক্স', NULL, NULL),
(29, 11, 25, 'Batteries', 'ব্যাটারি', 'batteries', 'ব্যাটারি', NULL, NULL),
(30, 11, 25, 'Calculators', 'ক্যালকুলেটর', 'calculators', 'ক্যালকুলেটর', NULL, NULL),
(31, 11, 26, 'Glue Tapes', 'আঠা এবং টেপ', 'glue-tapes', 'আঠা-এবং-টেপ', NULL, '2023-06-11 05:05:25'),
(32, 11, 26, 'Stapler Punch', 'স্ট্যাপলার এবং পাঞ্চ', 'stapler-punch', 'স্ট্যাপলার-এবং-পাঞ্চ', NULL, NULL),
(33, 11, 26, 'File Folder', 'ফাইলস এবং ফোল্ডার', 'file-folder', 'ফাইলস-এবং-ফোল্ডার', NULL, NULL),
(34, 11, 27, 'Printing Paper', 'প্রিন্টিং কাগজ', 'printing-paper', 'প্রিন্টিং-কাগজ', NULL, NULL),
(35, 11, 27, 'Notebook Diary', 'নোট, খাতা এবং ডায়েরি', 'notebook-diary', 'নোট,-খাতা-এবং-ডায়েরি', NULL, NULL),
(36, 11, 27, 'Card Envelope', 'কার্ড এবং খাম', 'card-envelope', 'কার্ড-এবং-খাম', NULL, NULL),
(37, 1, 38, 'Cheese', 'পনির', 'cheese', 'পনির', NULL, NULL),
(38, 1, 38, 'Butter & Sour Cream', 'মাখন এবং সাওয়ার ক্রিম', 'butter-&-sour-cream', 'মাখন-এবং-সাওয়ার-ক্রিম', NULL, NULL),
(39, 1, 39, 'Dates', 'খেজুর', 'dates', 'খেজুর', NULL, NULL),
(40, 1, 40, 'Honey', 'মধু', 'honey', 'মধু', NULL, NULL),
(41, 1, 40, 'Date molasses', 'খেজুরের গুড়', 'date-molasses', 'খেজুরের-গুড়', NULL, NULL),
(42, 1, 39, 'Others', 'অন্যান্য', 'others', 'অন্যান্য', NULL, NULL),
(43, 11, 26, 'Mug', 'মগ', 'mug', 'মগ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `top_sidebars`
--

CREATE TABLE `top_sidebars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_bn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `priority` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_sidebars`
--

INSERT INTO `top_sidebars` (`id`, `icon`, `name_en`, `name_bn`, `status`, `priority`, `created_at`, `updated_at`) VALUES
(1, '1690088486.photo-1542838132-92c53300491e.jpeg', 'Grocery', 'গ্রোসারি', '1', 1, '2023-07-17 23:05:32', '2023-07-26 03:30:31'),
(2, '1690088452.Electronic-Gadgets-PNG-Clipart-Background.png', 'Electronics', 'ইলেকট্রনিক', '1', 2, '2023-07-17 23:13:10', '2023-07-23 00:41:19'),
(3, '1690088893.png-transparent-paper-christmas-gift-christmas-gift-box-gifts-ribbon-holidays-christmas-decoration-thumbnail.png', 'Gift Item', 'উপহার সামগ্রী', '1', 3, '2023-07-17 23:15:52', '2023-07-23 00:41:27'),
(4, '1690088249.istockphoto-939438514-612x612.jpg', 'Kids Item', 'বাচ্চাদের পন্য', '0', 4, '2023-07-17 23:28:41', '2023-07-23 00:41:35'),
(5, '1690088138.169837.png', 'Pharmecy', 'ঔষধ', '1', 5, '2023-07-17 23:33:20', '2023-07-23 00:41:43'),
(6, '1690364923.ticketing.jpg', 'travels', 'ভ্রমণ', '1', 6, '2023-07-20 07:11:13', '2023-07-26 03:48:44'),
(7, '1689878930.png', 'Offer', 'Offer', '1', 7, '2023-07-20 11:33:20', '2023-07-23 00:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `top_sidebar_menu_sliders`
--

CREATE TABLE `top_sidebar_menu_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `top_sidebar_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_sidebar_menu_slider_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `date_of_birth`, `phone`, `last_seen`, `email_verified_at`, `password`, `google_id`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(13, 'toumal mojumder', 'toumalmojumder@gmail.com', '1992-10-18', '01864504625', '2023-07-23 06:21:13', NULL, 'eyJpdiI6Ik9ocWVNTWpsbHJ1d3Y4MDZMS29HRGc9PSIsInZhbHVlIjoiY2xrZmNucTFKWklJYThNSks4ckhxb0E1dDFVMHVBem1HR1I3MDU5WTRoWT0iLCJtYWMiOiJiZjlkMTkxN2ZjM2UwMTQ3Y2UxNWFlM2E4YmQ3MzMyZDk3YmIzYTQwYWI2NTRjZWIzMGM2ODMyZTUwN2I3ZjcyIiwidGFnIjoiIn0=', '101824190632850622924', NULL, NULL, NULL, '2023-07-23 03:23:44', '2023-07-23 06:21:13'),
(14, 'admin', 'admin@gmail.com', '2023-07-04', '01855504625', '2023-07-23 06:32:03', NULL, '$2y$10$bQqNfle9Vp4.19ot.ITWiuCpeA09/oJD60RCSw842lqaDjMeLgy6m', NULL, NULL, NULL, NULL, '2023-07-23 06:26:45', '2023-07-23 06:32:03'),
(15, 'Md. Adnan', 'adnan@gmail.com', '1997-11-30', '01789143872', '2023-07-23 23:27:20', NULL, '$2y$10$DtFl3z2/3sb0bcMv5G2Wbeo5Oaxp9Mp63JsCfdnfnbsYud8UAqWIi', NULL, NULL, NULL, NULL, '2023-07-23 07:33:39', '2023-07-23 23:27:20'),
(16, NULL, 'od8g1giv7x3z9@mail4you.biz', NULL, NULL, '2023-07-24 23:04:46', NULL, '$2y$10$wcs9bivgFywfNAavP3jVdOn2YN02oOmecgcYaBfBjw5URdsqWmM1y', NULL, NULL, NULL, NULL, '2023-07-24 22:59:10', '2023-07-24 23:04:46');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_sliders`
--
ALTER TABLE `category_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
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
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_upazilas`
--
ALTER TABLE `ship_upazilas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_sidebars`
--
ALTER TABLE `top_sidebars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_sidebar_menu_sliders`
--
ALTER TABLE `top_sidebar_menu_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category_sliders`
--
ALTER TABLE `category_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ship_upazilas`
--
ALTER TABLE `ship_upazilas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=495;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `sub_sub_categories`
--
ALTER TABLE `sub_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `top_sidebars`
--
ALTER TABLE `top_sidebars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `top_sidebar_menu_sliders`
--
ALTER TABLE `top_sidebar_menu_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
