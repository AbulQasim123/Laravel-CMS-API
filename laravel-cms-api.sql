-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2025 at 01:34 PM
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
-- Database: `laravel-cms-api`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` text DEFAULT NULL,
  `content` text NOT NULL,
  `summary` text DEFAULT NULL,
  `status` enum('Draft','Published','Archived') NOT NULL DEFAULT 'Draft',
  `published_at` date DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `content`, `summary`, `status`, `published_at`, `author_id`, `created_at`, `updated_at`) VALUES
(6, 'Top 5 Budget‑Friendly Destinations for Solo Travelers', 'top-10-ott-series-to-binge-this-month-ideas', 'Hidden gems offering safety, culture, and affordability for your next adventure.', 'This article explores the future of technology.', 'Draft', '2025-07-13', 2, '2025-07-13 03:07:31', '2025-07-13 04:54:56'),
(7, 'Climate‑Smart Cities: Designing for a Greener Future', 'climatesmart-cities-designing-for-a-greener-future-insight', 'Case studies of urban planning innovations that cut emissions while boosting livability.', 'Discover insights from successful entrepreneurs.', 'Draft', '2025-07-13', 1, '2025-07-13 03:07:47', '2025-07-13 03:07:47'),
(8, 'Minimalist Fashion: Building a 10‑Piece Capsule Wardrobe', 'minimalist-fashion-building-a-10piece-capsule-wardrobe-future', 'Timeless essentials, fabric choices, and styling hacks for a clutter‑free closet.', 'A deep dive into innovative business strategies.', 'Draft', '2025-07-13', 1, '2025-07-13 03:08:01', '2025-07-13 03:08:02'),
(9, 'Personal Finance 101: Emergency Funds Explained', 'personal-finance-101-emergency-funds-explained-ideas', 'Why you need one, how much to save, and where to park the money for quick access.', 'Learn the secrets behind modern design thinking.', 'Draft', '2025-07-13', 1, '2025-07-13 03:08:16', '2025-07-13 03:08:18'),
(10, 'Five Street‑Food Delights Every Foodie Must Try', 'five-streetfood-delights-every-foodie-must-try-power', 'From Vada Pav in Mumbai to Kathi Rolls in Kolkata, savor India’s most iconic snacks.', 'A deep dive into innovative business strategies.', 'Draft', '2025-07-13', 1, '2025-07-13 03:08:28', '2025-07-13 03:08:30'),
(11, 'Cloud Gaming: Is It Really the Future of Play?', 'cloud-gaming-is-it-really-the-future-of-play-future', 'Latency, libraries, and the subscription wars—what gamers should know before jumping in.', 'This article explores the future of technology.', 'Draft', '2025-07-13', 2, '2025-07-13 03:08:40', '2025-07-13 03:08:42'),
(12, 'Mindfulness for Better Heart Health', 'mindfulness-for-better-heart-health-future', 'Studies show meditation can lower blood pressure—here’s how to start a daily practice.', 'A deep dive into innovative business strategies.', 'Draft', '2025-07-13', 1, '2025-07-13 03:08:52', '2025-07-13 03:08:54'),
(13, 'Designing a Cozy Yet Modern Living Room', 'designing-a-cozy-yet-modern-living-room-power', 'Color palettes, multifunctional furniture, and lighting tricks to refresh your space.', 'Learn the secrets behind modern design thinking.', 'Draft', '2025-07-13', 1, '2025-07-13 03:09:04', '2025-07-13 03:09:06'),
(14, 'Positive Parenting: Setting Boundaries Without Yelling', 'positive-parenting-setting-boundaries-without-yelling-power', 'Evidence‑based techniques to foster cooperation and respect at home.', 'Discover insights from successful entrepreneurs.', 'Draft', '2025-07-13', 1, '2025-07-13 03:09:17', '2025-07-13 03:09:18'),
(15, 'Navigating Coalition Politics in 2025', 'navigating-coalition-politics-in-2025-ideas', 'An analysis of alliance dynamics and policy compromises in India’s parliament.', 'Learn the secrets behind modern design thinking.', 'Draft', '2025-07-13', 1, '2025-07-13 03:09:30', '2025-07-13 03:09:30'),
(16, 'Real‑Estate Investing: Pros & Cons of REITs', 'realestate-investing-pros-cons-of-reits-moment', 'How Real Estate Investment Trusts work and whether they suit small investors.', 'This article explores the future of technology.', 'Draft', '2025-07-13', 2, '2025-07-13 03:09:44', '2025-07-13 03:09:45'),
(17, 'CRISPR Breakthroughs: Editing Genes to Cure Disease', 'crispr-breakthroughs-editing-genes-to-cure-disease-moment', 'Latest research on gene therapies targeting sickle‑cell anemia and other conditions.', 'A deep dive into innovative business strategies.', 'Draft', '2025-07-13', 1, '2025-07-13 03:09:56', '2025-07-13 03:09:57'),
(18, 'Olympics 2028: Rising Stars to Watch', 'olympics-2028-rising-stars-to-watch-future', 'Profiles of young athletes poised to make headlines on the world stage.', 'A deep dive into innovative business strategies.', 'Draft', '2025-07-13', 1, '2025-07-13 03:10:08', '2025-07-13 03:10:10'),
(19, 'Quantum‑Ready Chips: The Next Leap in Technology', 'quantumready-chips-the-next-leap-in-technology-ideas', 'How semiconductor giants are preparing hardware for a quantum‑computing age.', 'A deep dive into innovative business strategies.', 'Draft', '2025-07-13', 1, '2025-07-13 03:10:21', '2025-07-13 03:10:22'),
(20, 'Top 5 Budget‑Friendly Destinations for Solo Travelers', 'top-5-budgetfriendly-destinations-for-solo-travelers-insight', 'Hidden gems offering safety, culture, and affordability for your next adventure.', 'Discover insights from successful entrepreneurs.', 'Draft', '2025-07-13', 2, '2025-07-13 03:10:40', '2025-07-13 03:10:43');

-- --------------------------------------------------------

--
-- Table structure for table `article_category`
--

CREATE TABLE `article_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_category`
--

INSERT INTO `article_category` (`id`, `article_id`, `category_id`) VALUES
(7, 7, 14),
(8, 8, 12),
(9, 9, 13),
(10, 10, 11),
(11, 11, 19),
(12, 12, 2),
(13, 13, 6),
(14, 14, 17),
(15, 15, 9),
(16, 16, 20),
(17, 17, 3),
(18, 18, 8),
(19, 19, 21),
(20, 20, 10),
(29, 6, 23),
(30, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:0:{}s:11:\"permissions\";a:0:{}s:5:\"roles\";a:0:{}}', 1752485121);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Health', '2025-07-13 02:15:29', '2025-07-13 02:15:29'),
(3, 'Science', '2025-07-13 02:15:50', '2025-07-13 02:15:50'),
(4, 'Education', '2025-07-13 02:16:00', '2025-07-13 02:16:00'),
(5, 'Business', '2025-07-13 02:16:12', '2025-07-13 02:16:12'),
(6, 'Lifestyle', '2025-07-13 02:16:25', '2025-07-13 02:16:25'),
(7, 'Entertainment', '2025-07-13 02:16:30', '2025-07-13 02:16:30'),
(8, 'Sports', '2025-07-13 02:16:36', '2025-07-13 02:16:36'),
(9, 'Politics', '2025-07-13 02:16:41', '2025-07-13 02:16:41'),
(10, 'Travel', '2025-07-13 02:16:50', '2025-07-13 02:16:50'),
(11, 'Food', '2025-07-13 02:16:56', '2025-07-13 02:16:56'),
(12, 'Fashion', '2025-07-13 02:17:04', '2025-07-13 02:17:04'),
(13, 'Finance', '2025-07-13 02:17:11', '2025-07-13 02:17:11'),
(14, 'Environment', '2025-07-13 02:17:22', '2025-07-13 02:17:22'),
(15, 'Culture', '2025-07-13 02:17:29', '2025-07-13 02:17:29'),
(16, 'Career', '2025-07-13 02:17:36', '2025-07-13 02:17:36'),
(17, 'Parenting', '2025-07-13 02:17:42', '2025-07-13 02:17:42'),
(18, 'Books', '2025-07-13 02:17:47', '2025-07-13 02:17:47'),
(19, 'Gaming', '2025-07-13 02:17:51', '2025-07-13 02:17:51'),
(20, 'Real Estate', '2025-07-13 02:17:59', '2025-07-13 02:17:59'),
(21, 'Technology', '2025-07-13 02:25:11', '2025-07-13 03:34:42'),
(23, 'Computer', '2025-07-13 04:36:10', '2025-07-13 04:36:10');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(41, 'default', '{\"uuid\":\"68b71b98-bc2a-4ac1-a046-f8cc3e1055e2\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752398721, 1752398721),
(42, 'default', '{\"uuid\":\"496d10e4-c28a-482a-ad85-2860f2107a74\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752398721, 1752398721),
(43, 'default', '{\"uuid\":\"8b792373-0183-429a-8bb8-2d37bb1a4770\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752398757, 1752398757),
(44, 'default', '{\"uuid\":\"3b843805-670c-455b-99d5-352b6efe9119\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752398757, 1752398757),
(45, 'default', '{\"uuid\":\"b23f4db0-bb3b-43e6-99ea-32bf3a837a08\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752398763, 1752398763),
(46, 'default', '{\"uuid\":\"eab9dbc9-7c3b-4229-a596-62a8d9e60e76\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752398763, 1752398763),
(47, 'default', '{\"uuid\":\"6118a68f-6763-43f0-9c20-b70799da5140\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400197, 1752400197),
(48, 'default', '{\"uuid\":\"ef8db4ce-4d64-495e-bccb-4ffaf7f56917\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:4;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400197, 1752400197),
(49, 'default', '{\"uuid\":\"6ab8c3f4-917e-47ef-8eba-b685390c6b01\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400530, 1752400530),
(50, 'default', '{\"uuid\":\"baa6e168-248d-42e7-a80d-ec7789991738\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400530, 1752400530),
(51, 'default', '{\"uuid\":\"d68d11ce-829a-4150-8a9e-4c6912c74415\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400689, 1752400689),
(52, 'default', '{\"uuid\":\"7bcf75aa-52fa-4593-9d48-916da4d235b4\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400689, 1752400689),
(53, 'default', '{\"uuid\":\"144bc4ed-c327-49ef-bbed-18d08b3d7f11\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400730, 1752400730),
(54, 'default', '{\"uuid\":\"2afff6b1-13b0-4643-9e9b-bda79a9a5d13\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400730, 1752400730),
(55, 'default', '{\"uuid\":\"0a0daed9-4eec-4f89-a2f4-e42a6cc8c6bc\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400810, 1752400810),
(56, 'default', '{\"uuid\":\"f67b721d-08c1-4cb8-9951-d6c3fc401e81\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752400810, 1752400810),
(57, 'default', '{\"uuid\":\"f3d2deef-a0d4-4a82-897a-58e4e2cd7e6f\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752401722, 1752401722),
(58, 'default', '{\"uuid\":\"28fe2846-0739-4628-9085-07228c609015\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752401722, 1752401722),
(59, 'default', '{\"uuid\":\"9a44e332-815b-4443-9b5b-b18bf51947e6\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752401992, 1752401992),
(60, 'default', '{\"uuid\":\"91466f07-8b52-4fa2-b28e-286cf7eca4ac\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752401993, 1752401993),
(61, 'default', '{\"uuid\":\"b8049f58-0aca-45df-9b78-161f4a19a9c3\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402119, 1752402119),
(62, 'default', '{\"uuid\":\"68b6ab3f-04ad-4210-9ace-5879a77bcb07\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402119, 1752402119),
(63, 'default', '{\"uuid\":\"65aa7f0b-2b25-4025-848f-83dbf07ba65b\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402170, 1752402170),
(64, 'default', '{\"uuid\":\"6fa997ab-6aee-44ee-a939-a00f2ce20d1a\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402170, 1752402170),
(65, 'default', '{\"uuid\":\"8491c3d9-94d9-4510-a15d-865c4ace414d\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402296, 1752402296),
(66, 'default', '{\"uuid\":\"2778d9d5-b4ab-4b1f-aa73-b0fc28614c33\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402296, 1752402296),
(67, 'default', '{\"uuid\":\"6c12c7c3-c1ae-40f6-951d-163c1c95a6c5\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402418, 1752402418),
(68, 'default', '{\"uuid\":\"596d32d7-df84-48ce-9c08-bdd7dea89784\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402418, 1752402418),
(69, 'default', '{\"uuid\":\"0cc4f88e-433d-474b-bc95-d0b8066fb944\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402438, 1752402438),
(70, 'default', '{\"uuid\":\"a8c17b85-06c7-469e-bb44-4645ced52141\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402438, 1752402438),
(71, 'default', '{\"uuid\":\"ab38312e-7dda-4c65-911d-21f9d1455cbc\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402448, 1752402448),
(72, 'default', '{\"uuid\":\"68a8c661-dd0c-44da-b06b-f87f37617bd9\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402448, 1752402448),
(73, 'default', '{\"uuid\":\"59ad116d-ceaa-4816-bd23-97fe6dc09440\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402479, 1752402479),
(74, 'default', '{\"uuid\":\"4afccde5-a5ae-4adf-a946-6125e47d808f\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402479, 1752402479),
(75, 'default', '{\"uuid\":\"69c496a6-d2b4-4662-87ff-3bda02c61efe\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402615, 1752402615),
(76, 'default', '{\"uuid\":\"04472769-b34c-4138-a070-ddaac46a1313\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402615, 1752402615),
(77, 'default', '{\"uuid\":\"6fc69972-2852-4abe-9d10-2c8181428004\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402640, 1752402640),
(78, 'default', '{\"uuid\":\"f4d22a9f-91cf-47b3-8c3c-b96e810a459d\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402640, 1752402640),
(79, 'default', '{\"uuid\":\"6d88ef12-9b17-4ef3-886e-7e2cfc3281eb\",\"displayName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSlugJob\",\"command\":\"O:24:\\\"App\\\\Jobs\\\\GenerateSlugJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402653, 1752402653),
(80, 'default', '{\"uuid\":\"41c1f46d-b5a4-4de2-acf1-361f58904134\",\"displayName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\GenerateSummaryJob\",\"command\":\"O:27:\\\"App\\\\Jobs\\\\GenerateSummaryJob\\\":1:{s:7:\\\"article\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\Article\\\";s:2:\\\"id\\\";i:6;s:9:\\\"relations\\\";a:2:{i:0;s:10:\\\"categories\\\";i:1;s:6:\\\"author\\\";}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}\"}}', 0, NULL, 1752402653, 1752402653);

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_07_13_051453_create_personal_access_tokens_table', 1),
(5, '2025_07_13_051902_create_personal_access_tokens_table', 2),
(6, '2025_07_13_052303_create_permission_tables', 2),
(7, '2025_07_13_053153_create_articles_table', 3),
(8, '2025_07_13_053157_create_categories_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'api-token', 'f220d339d88b3e347e0b880ae2d140ce39a9a11cdd7446ea7d36b83a9787d490', '[\"*\"]', NULL, NULL, '2025-07-13 01:42:03', '2025-07-13 01:42:03'),
(2, 'App\\Models\\User', 1, 'api-token', '4e6a467862eb6dd6165b942a349e1b5ce0b24bc86dc2137f5faba4913bded143', '[\"*\"]', NULL, NULL, '2025-07-13 01:42:28', '2025-07-13 01:42:28'),
(5, 'App\\Models\\User', 2, 'api-token', '9647dfd3372cb89c9180ab9049cb33c9609bc0f4ff2dfd41262cef2b24e6076e', '[\"*\"]', '2025-07-13 05:00:53', NULL, '2025-07-13 02:07:20', '2025-07-13 05:00:53'),
(6, 'App\\Models\\User', 1, 'api-token', '2eb4ac6d5b602656f9562bd8b1eab791067723407aa7221e84f99ddee2cb7314', '[\"*\"]', '2025-07-13 04:51:59', NULL, '2025-07-13 02:13:22', '2025-07-13 04:51:59');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2025-07-12 23:58:54', '2025-07-12 23:58:54'),
(2, 'Author', 'web', '2025-07-12 23:58:54', '2025-07-12 23:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('itCstfJ3JemkVugLCu6hjf7Xekjvn1QuVUgtrfzE', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiMGd0d29FVmJRdHVxamVxcEVXRkl6N3BaT3JYNER4OEdyYXN4SU5zSiI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Rhc2hib2FkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXJ2aWNlLXdvcmtlci5qcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1752388387),
('jzVvf1FWLeZgMVvUjxjW7OlhShPTNvhqIGHFjcDc', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYXdjdU8zQWlmOHpyZzExV1FxTERXOFp6djlGYzhNVWJsaFVQSU5GUSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Rhc2hib2FkIjt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXJ2aWNlLXdvcmtlci5qcyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1752403594),
('QVA6E1Jx15NEon69SURgs9alI1uy8XiaDQEiOFsR', NULL, '127.0.0.1', 'PostmanRuntime/7.44.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWDgyVnFFWjhYWmZHM0ZIcEh0SVF2VnRCcEM0cE9aS0tBVGtVdWVySyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcGkvY2F0ZWdvaWVzLzIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1752397137),
('RgjwQXr92eWCAxf70OIGc7joNpoIwwF3DneOkgF9', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36', 'YTo0OntzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL2Rhc2hib2FkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IlFtUFd4RXdhbDZPVFNsald4S1NKYkczNU5yWjZIaXdTWjJVSW5hQjgiO3M6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1752386856);

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin User', 'admin@example.com', NULL, '$2y$12$sKKNIyNZ7eD1GvI0VY2Pxe72AQ2uPzwKLFr.f5H52KlT6V4Q0QRHS', NULL, '2025-07-12 23:58:54', '2025-07-12 23:58:54'),
(2, 'Author User', 'author@example.com', NULL, '$2y$12$FW2HRmgCboUyPwzXQBCF8OvZaLrymqB0D9o7d/GQOVjcZZoIQWHsW', NULL, '2025-07-12 23:58:54', '2025-07-12 23:58:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`) USING HASH,
  ADD KEY `articles_author_id_foreign` (`author_id`);

--
-- Indexes for table `article_category`
--
ALTER TABLE `article_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_category_article_id_foreign` (`article_id`),
  ADD KEY `article_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `article_category`
--
ALTER TABLE `article_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_category`
--
ALTER TABLE `article_category`
  ADD CONSTRAINT `article_category_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `article_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
