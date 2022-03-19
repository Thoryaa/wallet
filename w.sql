-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 مارس 2022 الساعة 07:16
-- إصدار الخادم: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `w`
--

-- --------------------------------------------------------

--
-- بنية الجدول `add_wallet`
--

CREATE TABLE `add_wallet` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `add_wallet`
--

INSERT INTO `add_wallet` (`id`, `amount`, `date`, `user_id`) VALUES
(2, 500, '2022-03-10 14:36:36', 1),
(3, 100, '2022-03-10 14:53:22', 1),
(4, 80000, '2022-03-11 15:33:45', 1),
(5, 500, '2022-03-11 15:59:10', 1),
(6, 100, '2022-03-11 16:00:12', 1),
(7, 100, '2022-03-12 04:41:12', 1),
(8, 100, '2022-03-12 04:41:21', 1),
(9, 55, '2022-03-13 14:15:21', 1),
(10, 44, '2022-03-14 01:28:01', 1),
(11, 45, '2022-03-14 01:30:59', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `check_wallet`
--

CREATE TABLE `check_wallet` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `check_wallet`
--

INSERT INTO `check_wallet` (`id`, `amount`, `date`, `user_id`) VALUES
(3, 500, '2022-03-14 01:27:11', 1),
(4, 500, '2022-03-14 01:27:33', 1),
(5, 500, '2022-03-14 01:29:47', 1),
(6, 500, '2022-03-14 01:30:46', 1),
(7, 500, '2022-03-14 02:01:44', 1),
(8, 500, '2022-03-14 02:13:46', 1),
(9, 452, '2022-03-14 02:13:59', 1),
(10, 4528, '2022-03-14 02:25:46', 1),
(11, 452, '2022-03-14 02:27:38', 1),
(12, 452, '2022-03-14 02:40:05', 1),
(13, 500, '2022-03-14 04:43:26', 1),
(14, 500, '2022-03-14 04:52:46', 1),
(15, 500, '2022-03-14 05:57:40', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `products`
--

CREATE TABLE `products` (
  `id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `product_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `products`
--

INSERT INTO `products` (`id`, `product_name`, `price`, `product_img`) VALUES
(1, 'laptop', 500, 'lap.jpg'),
(2, 'phone', 452, 'phone.jpg'),
(3, 'wach hawawi', 899, 'watch.jpg'),
(4, 'Mac workstation', 4528, 'mac.jpg'),
(1, 'Swatch Irony YLG701 Brownee', 500, 'watch1.jpg'),
(2, 'AJMAL IZAARA EAU DE PARFUM', 452, 'par.jpg'),
(3, 'i12 Pro MAX Unlocked', 899, 'pjone.jpg');

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `password`) VALUES
(1, 'r@gmail.com', 1234),
(4, 'hamsa9469@gmail.com', 123);

-- --------------------------------------------------------

--
-- بنية الجدول `wallet`
--

CREATE TABLE `wallet` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- إرجاع أو استيراد بيانات الجدول `wallet`
--

INSERT INTO `wallet` (`id`, `amount`, `user_id`) VALUES
(1, 3500, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_wallet`
--
ALTER TABLE `add_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `check_wallet`
--
ALTER TABLE `check_wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `check_wallet_ibfk_1` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_wallet`
--
ALTER TABLE `add_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `check_wallet`
--
ALTER TABLE `check_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `add_wallet`
--
ALTER TABLE `add_wallet`
  ADD CONSTRAINT `add_wallet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- القيود للجدول `check_wallet`
--
ALTER TABLE `check_wallet`
  ADD CONSTRAINT `check_wallet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- القيود للجدول `wallet`
--
ALTER TABLE `wallet`
  ADD CONSTRAINT `wallet_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
