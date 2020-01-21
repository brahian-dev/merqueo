-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2020 at 02:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merqueo`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventaries`
--

CREATE TABLE `inventaries` (
  `inventary_id` bigint(20) UNSIGNED NOT NULL,
  `inventary_quantity` int(11) NOT NULL,
  `date` date NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventaries`
--

INSERT INTO `inventaries` (`inventary_id`, `inventary_quantity`, `date`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 3, '2019-03-01', 1, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(2, 3, '2019-03-01', 2, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(3, 7, '2019-03-01', 3, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(4, 8, '2019-03-01', 4, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(5, 10, '2019-03-01', 5, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(6, 15, '2019-03-01', 6, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(7, 26, '2019-03-01', 7, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(8, 11, '2019-03-01', 8, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(9, 1, '2019-03-01', 9, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(10, 8, '2019-03-01', 10, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(11, 7, '2019-03-01', 11, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(12, 8, '2019-03-01', 12, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(13, 2, '2019-03-01', 13, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(14, 1, '2019-03-01', 14, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(15, 1, '2019-03-01', 15, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(16, 9, '2019-03-01', 16, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(17, 17, '2019-03-01', 17, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(18, 8, '2019-03-01', 18, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(19, 9, '2019-03-01', 19, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(20, 9, '2019-03-01', 20, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(21, 3, '2019-03-01', 21, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(22, 6, '2019-03-01', 22, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(23, 9, '2019-03-01', 23, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(24, 9, '2019-03-01', 24, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(25, 10, '2019-03-01', 25, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(26, 40, '2019-03-01', 26, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(27, 2, '2019-03-01', 27, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(28, 3, '2019-03-01', 28, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(29, 2, '2019-03-01', 29, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(30, 1, '2019-03-01', 30, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(31, 9, '2019-03-01', 31, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(32, 10, '2019-03-01', 32, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(33, 2, '2019-03-01', 33, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(34, 3, '2019-03-01', 34, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(35, 3, '2019-03-01', 35, '2020-01-21 06:46:43', '2020-01-21 06:46:43'),
(36, 6, '2019-03-01', 36, '2020-01-21 06:46:43', '2020-01-21 06:46:43');

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
(7, '2020_01_18_201853_create_products_table', 1),
(8, '2020_01_18_201912_create_providers_table', 1),
(9, '2020_01_18_201944_create_orders_table', 1),
(10, '2020_01_18_201945_create_inventaries_table', 1),
(11, '2020_01_19_014424_providers_product', 1),
(12, '2020_01_19_014821_order_product', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `order_priority` int(11) NOT NULL,
  `order_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_deliverable` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_priority`, `order_address`, `order_deliverable`, `user_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'KR 14 # 87 - 20', '2019-03-01', 'Sofia', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(2, 1, 'KR 20 # 164A - 5', '2019-03-01', 'Angel', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(3, 3, 'KR 13 # 74 - 38', '2019-03-01', 'Hocks', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(4, 1, 'CL 93 # 12 - 9', '2019-03-01', 'Michael', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(5, 1, 'CL 71 # 3 - 74', '2019-03-01', 'Bar de Alex', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(6, 2, 'KR 20 # 134A - 5', '2019-03-01', 'Sabor Criollo', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(7, 2, 'CL 80 # 14 - 38', '2019-03-01', 'El Pollo Rojo', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(8, 7, 'KR 14 # 98 - 74', '2019-03-01', 'All Salad', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(9, 1, 'KR 58 # 93 - 1', '2019-03-01', 'Parrilla y sabor', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(10, 9, 'KR 14 # 87 - 20', '2019-03-01', 'Sofia', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(11, 1, 'CL 93B # 17 - 12', '2019-03-01', 'restaurante yerbabuena', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(12, 10, 'KR 68D # 98A - 11', '2019-03-01', 'Luis David', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(13, 2, 'AC 72 # 20 - 45', '2019-03-01', 'David Carruyo', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(14, 3, 'KR 22 # 122 - 57', '2019-03-01', 'MARIO', '2020-01-21 06:46:40', '2020-01-21 06:46:40'),
(15, 8, 'KR 88 # 72A - 26', '2019-03-01', 'Harold', '2020-01-21 06:46:40', '2020-01-21 06:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `transporter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`, `transporter_name`) VALUES
(1, 1, 1, 'Nombre Transportador'),
(1, 2, 21, 'Nombre Transportador'),
(1, 37, 7, 'Nombre Transportador'),
(1, 3, 10, 'Nombre Transportador'),
(1, 4, 5, 'Nombre Transportador'),
(2, 5, 100, 'Nombre Transportador'),
(2, 6, 60, 'Nombre Transportador'),
(3, 7, 4, 'Nombre Transportador'),
(3, 8, 3, 'Nombre Transportador'),
(3, 9, 4, 'Nombre Transportador'),
(3, 10, 8, 'Nombre Transportador'),
(3, 11, 5, 'Nombre Transportador'),
(4, 12, 3, 'Nombre Transportador'),
(4, 13, 2, 'Nombre Transportador'),
(4, 14, 4, 'Nombre Transportador'),
(4, 4, 2, 'Nombre Transportador'),
(4, 15, 3, 'Nombre Transportador'),
(5, 16, 1500, 'Nombre Transportador'),
(6, 17, 2, 'Nombre Transportador'),
(6, 18, 3, 'Nombre Transportador'),
(6, 15, 2, 'Nombre Transportador'),
(6, 19, 2, 'Nombre Transportador'),
(6, 20, 3, 'Nombre Transportador'),
(7, 21, 3, 'Nombre Transportador'),
(7, 22, 2, 'Nombre Transportador'),
(7, 23, 2, 'Nombre Transportador'),
(7, 39, 4, 'Nombre Transportador'),
(7, 24, 15, 'Nombre Transportador'),
(8, 25, 3, 'Nombre Transportador'),
(8, 26, 2, 'Nombre Transportador'),
(8, 22, 4, 'Nombre Transportador'),
(8, 27, 1, 'Nombre Transportador'),
(8, 5, 1, 'Nombre Transportador'),
(9, 22, 1, 'Nombre Transportador'),
(10, 28, 1, 'Nombre Transportador'),
(11, 7, 1, 'Nombre Transportador'),
(12, 41, 1, 'Nombre Transportador'),
(12, 19, 6, 'Nombre Transportador'),
(12, 29, 1, 'Nombre Transportador'),
(12, 17, 1, 'Nombre Transportador'),
(12, 30, 1, 'Nombre Transportador'),
(13, 7, 1, 'Nombre Transportador'),
(13, 25, 2, 'Nombre Transportador'),
(13, 5, 1, 'Nombre Transportador'),
(13, 31, 25, 'Nombre Transportador'),
(14, 43, 1, 'Nombre Transportador'),
(14, 30, 1, 'Nombre Transportador'),
(14, 32, 1, 'Nombre Transportador'),
(14, 33, 1, 'Nombre Transportador'),
(14, 28, 2, 'Nombre Transportador'),
(15, 16, 3, 'Nombre Transportador'),
(15, 34, 3, 'Nombre Transportador'),
(15, 35, 3, 'Nombre Transportador'),
(15, 12, 1, 'Nombre Transportador'),
(15, 36, 1, 'Nombre Transportador');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `created_at`, `updated_at`) VALUES
(1, 'Leche', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(2, 'Huevos', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(3, 'Manzana Verde', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(4, 'Pepino Cohombro', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(5, 'Pimentn Rojo', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(6, 'Kiwi', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(7, 'Cebolla Cabezona Blanca Limpia', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(8, 'Habichuela', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(9, 'Mango Tommy Maduro', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(10, 'Tomate Chonto Pintn', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(11, 'Zanahoria Grande', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(12, 'Aguacate Maduro', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(13, 'Kale o Col Rizada', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(14, 'Cebolla Cabezona Roja Limpia', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(15, 'Tomate Chonto Maduro', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(16, 'Acelga', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(17, 'Espinaca Bogotana x 500grs', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(18, 'Ahuyama', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(19, 'Cebolla Cabezona Blanca Sin Pelar', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(20, 'Meln', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(21, 'Cebolla Cabezona Roja Sin Pelar', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(22, 'Cebolla Larga Junca x 500grs', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(23, 'Hierbabuena x 500grs', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(24, 'Lechuga Crespa Verde', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(25, 'Limon Tahit', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(26, 'Mora de Castilla', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(27, 'Piment Verde', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(28, 'Tomate Larga Vida Maduro', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(29, 'Cilantro x 500grs', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(30, 'Fresa Jugo', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(31, 'Papa R-12 Mediana', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(32, 'Curuba', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(33, 'Brócoli', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(34, 'Aguacate Hass Pintón', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(35, 'Aguacate Hass Maduro', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(36, 'Aguacate Pintón', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(37, 'Pan Bimbo', '2020-01-21 06:46:03', '2020-01-21 06:46:03'),
(39, 'Lechuga Crespa Morada', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(41, 'Banano', '2020-01-21 06:46:04', '2020-01-21 06:46:04'),
(43, 'Banano', '2020-01-21 06:46:04', '2020-01-21 06:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `providers`
--

CREATE TABLE `providers` (
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `providers`
--

INSERT INTO `providers` (`provider_id`, `provider_name`, `created_at`, `updated_at`) VALUES
(1, 'Ruby', '2020-01-21 06:46:36', '2020-01-21 06:46:36'),
(2, 'Raul', '2020-01-21 06:46:37', '2020-01-21 06:46:37'),
(3, 'Angelica', '2020-01-21 06:46:37', '2020-01-21 06:46:37');

-- --------------------------------------------------------

--
-- Table structure for table `provider_product`
--

CREATE TABLE `provider_product` (
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provider_product`
--

INSERT INTO `provider_product` (`provider_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 16),
(2, 17),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 18),
(3, 19),
(3, 20),
(3, 21),
(3, 22),
(3, 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventaries`
--
ALTER TABLE `inventaries`
  ADD PRIMARY KEY (`inventary_id`),
  ADD KEY `inventaries_product_id_foreign` (`product_id`);

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
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD KEY `order_product_order_id_foreign` (`order_id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`provider_id`);

--
-- Indexes for table `provider_product`
--
ALTER TABLE `provider_product`
  ADD KEY `provider_product_provider_id_foreign` (`provider_id`),
  ADD KEY `provider_product_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventaries`
--
ALTER TABLE `inventaries`
  MODIFY `inventary_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `providers`
--
ALTER TABLE `providers`
  MODIFY `provider_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventaries`
--
ALTER TABLE `inventaries`
  ADD CONSTRAINT `inventaries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `provider_product`
--
ALTER TABLE `provider_product`
  ADD CONSTRAINT `provider_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `provider_product_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`provider_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
