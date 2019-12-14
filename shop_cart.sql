-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2019 at 09:58 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'HP', 'hp', 1, '2018-01-30 09:17:34', '2018-01-30 09:17:34'),
(3, 'Sony', 'dss', 1, '2018-01-30 09:17:44', '2018-01-30 09:17:44'),
(4, 'Jamdani', 'eeee', 1, '2018-01-30 09:19:36', '2018-01-30 09:19:36'),
(5, 'Canon', 'Canon Europe, leading provider of digital cameras, digital SLR cameras,.....', 1, '2018-01-30 09:20:58', '2018-01-30 09:25:31'),
(10, 'Calvin Klein', 's', 1, '2018-01-30 09:29:15', '2018-01-30 09:29:15'),
(12, 'QKZ', 'QKZ join that fast-growing mobile industry forced to expand the production line of an earphone or Headphone accessories and become a Best Headphone Brand', 1, '2019-12-13 14:18:12', '2019-12-13 14:18:12');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', 'New Smart Phones', 1, '2018-01-30 09:03:21', '2018-01-30 09:03:21'),
(2, 'Laptop', 'New Laptop', 1, '2018-01-30 09:03:43', '2018-01-30 09:03:43'),
(3, 'Camera', 'DSLR and Digital camera', 1, '2018-01-30 09:04:17', '2018-01-30 09:04:17'),
(4, 'T shirt', 's, m l ,xl size t shirt', 1, '2018-01-30 09:06:20', '2019-12-09 05:39:12'),
(8, 'Saree', 'new', 1, '2018-01-30 09:12:26', '2018-01-30 09:12:26'),
(10, 'Backpacks', 'new', 1, '2018-01-30 09:16:21', '2018-01-30 09:16:21'),
(12, 'Earphone', 'Earphones are a small piece of equipment which you wear over or inside your ears so that you can listen to music, the radio, or your phone without anyone else hearing.', 1, '2019-12-13 14:17:07', '2019-12-13 14:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstName`, `lastName`, `email`, `password`, `phoneNo`, `address`, `created_at`, `updated_at`) VALUES
(1, 'koushik', 'kabir', 'koushikemon@gmail.com', '123456', '01684616646', 'mohammadpur', NULL, NULL),
(10, 'koushik', 'kabir', 'koushikemon@hotmail.com', '$2y$10$gmIaQ3Rt/L.FHHQNS7pu6uhIhMPJrS684yCowlEqVQD7RiGfITu5.', '01954642254', 'Mohammadpur', '2019-12-13 13:45:42', '2019-12-13 13:45:42');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_24_151141_create_categories_table', 1),
(4, '2018_01_29_083422_create_brands_table', 1),
(5, '2018_01_29_092245_create_products_table', 1),
(6, '2018_02_05_175144_create_customers_table', 2),
(7, '2018_02_07_072912_create_orders_table', 3),
(8, '2018_02_07_072942_create_shippings_table', 3),
(9, '2018_02_07_074925_create_payments_table', 4),
(10, '2018_02_07_075125_create_order_details_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `order_total` double(10,2) DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `shipping_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(8, 10, 6, NULL, 'Pending', '2019-12-13 14:33:58', '2019-12-13 14:33:58'),
(9, 10, 6, NULL, 'Pending', '2019-12-13 14:38:45', '2019-12-13 14:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_quantity`, `created_at`, `updated_at`) VALUES
(6, 6, 2, 'Harley-Davidson', 1500000.00, 1, '2018-02-11 11:34:36', '2018-02-11 11:34:36'),
(7, 7, 2, 'Harley-Davidson', 1500000.00, 2, '2018-02-11 14:03:09', '2018-02-11 14:03:09'),
(8, 7, 4, 'Xperia', 25000.00, 1, '2018-02-11 14:03:09', '2018-02-11 14:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$HGockBL89yY6uZEJKhbhD.8q1Djn6eKk.Py5S8Vt4TBFEJeJ2N6a2', '2019-12-01 13:02:19');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_type`, `payment_status`, `created_at`, `updated_at`) VALUES
(6, 6, 'Cash', 'Pending', '2018-02-11 11:34:36', '2018-02-11 11:34:36'),
(7, 7, 'Cash', 'Pending', '2018-02-11 14:03:09', '2018-02-11 14:03:09'),
(8, 8, 'Cash', 'Pending', '2019-12-13 14:33:58', '2019-12-13 14:33:58'),
(9, 9, 'Cash', 'Pending', '2019-12-13 14:38:45', '2019-12-13 14:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(10,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `product_name`, `product_price`, `product_quantity`, `short_description`, `long_description`, `product_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 'hp aaa', 50000.00, 1, '01 year international warranty', '<p>HP 14-bw066AU AMD Quad Core 14&quot; Laptop</p>\r\n\r\n<ul>\r\n	<li>AMD Dual-Core E2-9000e (1.5 GHz base frequency, up to 2 GHz burst frequency, 1 MB cache)</li>\r\n	<li>4 GB DDR4-1866 SDRAM (1 x 4 GB)</li>\r\n	<li>500 GB 5400 rpm SATA</li>\r\n	<li>&nbsp;</li>\r\n	<li>14&quot; diagonal HD SVA BrightView WLED-backlit (1366 x 768)</li>\r\n	<li>AMD Radeon&trade; R2 Graphics</li>\r\n	<li>Optical drive DVD-Writer</li>\r\n	<li>Keyboard Full-size island-style keyboard with numeric keypad</li>\r\n	<li>Pointing device Touchpad with multi-touch gesture support</li>\r\n	<li>Wireless connectivity Intel&reg; 802.11a/b/g/n/ac (1x1) Wi-Fi&reg; and Bluetooth&reg; 4.2 Combo</li>\r\n	<li>Network interface Integrated 10/100/1000 GbE LAN</li>\r\n	<li>Expansion slots 1 multi-format SD media card reader</li>\r\n	<li>External ports 1 USB 2.0; 1 HDMI; 1 RJ-45; 1 headphone/microphone combo; 2 USB 3.1 Gen 1 (Data transfer only)</li>\r\n	<li>Minimum dimensions (W x D x H) 38 x 25.38 x 2.38 cm</li>\r\n	<li>Weight 2.1 kg</li>\r\n	<li>Power supply type 45 W AC power adapter</li>\r\n	<li>Battery type 4-cell, 41 Wh Li-ion</li>\r\n	<li>Webcam HP TrueVision HD Camera with integrated digital microphone</li>\r\n	<li>Audio features Dual speakers</li>\r\n	<li>Operating System Free dos</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>01 year international warranty</p>', 'product-images/hp.jpg', 1, '2018-01-30 12:17:25', '2019-12-07 11:59:47'),
(5, 8, 4, 'Dhakay_jamdani', 3000.00, 1, 'Red Dhakai Jamdani Sarees', '<p>Red Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani SareesRed Dhakai Jamdani Sarees</p>', 'product-images/Dhakay_jamdani.jpg', 1, '2018-01-30 12:48:09', '2018-01-30 12:48:09'),
(7, 4, 6, 'Boss-half-tshirt', 620.00, 1, 'Boss-half-tshirt Boss-half-tshirt ', '<p>Boss-half-tshirt&nbsp;Boss-half-tshirt&nbsp;Boss-half-tshirt&nbsp;Boss-half-tshirt&nbsp;</p>', 'product-images/Boss-half-tshirt.jpg', 1, '2018-01-30 12:57:02', '2018-01-30 12:57:02'),
(9, 12, 12, 'QKZ-CK1', 400.00, 1, NULL, NULL, 'product-images/QKZ-CK1.jpg', 1, '2019-12-13 14:22:19', '2019-12-13 14:22:19'),
(10, 12, 12, 'QKZ-DM10', 400.00, 1, NULL, NULL, 'product-images/QKZ-DM10.jpg', 1, '2019-12-13 14:27:10', '2019-12-13 14:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `full_name`, `email_address`, `phone_number`, `address`, `created_at`, `updated_at`) VALUES
(6, 'koushik kabir', 'koushikemon@hotmail.com', '01954642254', 'Mohammadpur', '2019-12-13 14:33:14', '2019-12-13 14:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Cloud Admin', 'admin@gmail.com', '$2y$10$lVRwnSUOfg7STZMx3IryVuav2rqU5Tt.Ew6p7W3elxSIinNs7jlqC', 'EHshmaxDmkIi8UghGKz2bkQmUjfJLc9Mq717X70MZLueMBTe9S8qoj8il3bN', '2018-01-30 08:53:55', '2018-01-30 08:53:55'),
(2, 'Koushik Kabir', 'koushikemon@gmail.com', '$2y$10$KbinK6Wv.l5OCwI9tiO/tO4uMtuSvAQaWhkZO5imhD4riGCkZ4hbe', 'EhsPboXAmj3qSbyIsFuGk2wraTzZxDy6mj3RLaBO0fR0ilSkCLjtfKnZHr2a', '2019-12-01 13:02:39', '2019-12-01 13:02:39');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

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
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
