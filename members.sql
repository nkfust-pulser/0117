-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2018 at 03:27 PM
-- Server version: 5.7.19-log
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `members`
--

-- --------------------------------------------------------

--
-- Table structure for table `fdlogs`
--

CREATE TABLE `fdlogs` (
  `id` int(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `cdate` datetime NOT NULL,
  `heart` text NOT NULL,
  `liver` text NOT NULL,
  `spleen` text NOT NULL,
  `lung` text NOT NULL,
  `kidney` text NOT NULL,
  `stomach` text NOT NULL,
  `gall_brani` text NOT NULL,
  `blader` text NOT NULL,
  `the_large_intestine` text NOT NULL,
  `the_small_intestine` text NOT NULL,
  `triple_burner` text NOT NULL,
  `pericardium` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `measure_time`
--

CREATE TABLE `measure_time` (
  `id` varchar(50) NOT NULL,
  `measure_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `measure_time`
--

INSERT INTO `measure_time` (`id`, `measure_time`) VALUES
('1', '2015-10-12 15:50:00'),
('2', '2015-10-12 18:04:00'),
('3', '2015-11-06 16:07:00'),
('4', '2017-11-23 10:30:00'),
('5', '2017-11-23 10:01:00'),
('6', '2015-11-06 18:29:00'),
('7', '2015-11-06 18:23:00'),
('8', '2015-11-06 16:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `members_account`
--

CREATE TABLE `members_account` (
  `id` int(50) NOT NULL,
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mail_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members_account`
--

INSERT INTO `members_account` (`id`, `userid`, `username`, `password`, `mail_address`) VALUES
(3, 'david236', 'david-chou', '$2y$10$ESIu62ievY27u16LMTAkSuKZ3m4h0bXQnFsQ9/OjC8CuXZ9c2f64K', '123456789@gmail.com'),
(4, 'huang234', '森忠商', '$2y$10$m.6bffMYh/O/Y7..hj2.mePcttgy6KR5Dukke4T2.x/k6f7zFR/gW', 'lovelyjunkie2020@gmail.com'),
(5, 'x123456', '孫中三', '$2y$10$d9dHbUtKmFZiSxrAE6mREOtM5Z2VxR8yDYu73QLB95o.vtY4I2kbm', 'x123456@gmail.com'),
(6, 'x1234567', '峇島好勝', '$2y$10$otbbLUY/86gFTIb0qHNUoOWuNLZcpR2CeGPtP/im9PcFUdwspzt..', 'x1234567@gmail.com'),
(7, 'x12345678@gmail.com', '黃村難行', '$2y$10$ZakmK/Vs4OU4RM.PtpbJPu2EYMFvaTXlhi70TacEPw0Mpf4SSiA0.', 'x12345678@gmail.com'),
(11, 'x12345', '韃靼樂', '$2y$10$QdEr2LLxSOck2wY/.EsjTuzMvXU91QB5CRxWa57qjBLQk7gcMsFjG', 'x12345@gmail.com'),
(12, 'abc12812', '喬瑟', '$2y$10$t5K2H949izYIhbA2YOtoVuF2XwvQ/Ib2OWA9.wqnUOyh1w/qdGpCm', 'abc@gmail.com'),
(13, 'xxxxxxxx', 'xxxxxxxxxxx', '$2y$10$Cb0JnOHfWfYl6q3oaj1hp.mjFJKvIM9lWmMF3weg5PqamLGN0GKy6', 'xxxxxxxxxxxxxxxxxx'),
(14, 'zzzzzzzzzzzz', 'zzzzzz', '$2y$10$2961v5KrKLsSAnUgHXAl9eJrxmX9KXlJqPxgqcInEAash1pECnY02', 'zzzzzzzzzzzzzz'),
(15, 'avagegew', 'cccc', '$2y$10$floI6FynqRwZi/1PdX8.1.fI04GDVn3uMHWZcQJqCjNwxDlcMfJYm', 'zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz'),
(16, 'asghrwh', 'aavavb', '$2y$10$vdLQ0M.OaL3BF5puOeiEv.803WxXIfByBaXVI0YaFyX.7pbxsSpu2', 'zxzxzx'),
(17, 'aaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', '$2y$10$PiuqPpiQ1cGUMokVmaAUqODj9yjxShp32viMvRphyAFK8yU1tAYaO', 'aaaaaaaaaaa'),
(23, 'zxc123456', '僑生', '$2y$10$9xE2DELuLi3HKagcB.Fy6u/GfDNLZYkjVL/19qc6.rWAGh/YppAW6', 'zxc12346@gmail.com'),
(24, 'zxc9215712', 'dvdsbs', '$2y$10$RucbcQAGZVt7liCHmbFXZeiYH3l4Ne8rI.dGO3dGR4K2Drgu8aHOy', 'motherfuckeristyou@gmail.com'),
(25, 'qwerty', 'qwerty', '$2y$10$I0kovvFs3EbmmU/Psram2uu6W.9aOIEAkXOvZ7Sa5UOvLCiDtrULC', '1@gmail.com'),
(26, 'zxc850407', '宗緯承', '$2y$10$EOCPYlkVst02pMhw0tJUyO4oRJby6FDThb6LluJ.is9KCie20RWju', 'zxc850407@gmail.com'),
(28, 'zxc85040712', '黃色2號', '$2y$10$UxLQBnM6GY.h/OkoWpMgZ.LrMrXWgXhnJdBQURgdYCPXEdPUwPGNO', '9215712@gmail.com'),
(29, 'zxc921571278', '黃色2號', '$2y$10$hlVl5Lj5Tjy18rqcAfaNreCclcXuaFa7j5eCpI1buaCi8sqANx5NG', '880407@gmail.com'),
(30, 'you850407', '黃色3號', '$2y$10$GerJ/DthoLWyHq/ae5f7tOddJf4E6a2PtSNh0diGl7nuo4OlMNrUa', 'you9215712@nkfust.edu.tw'),
(31, 'david2020', '大為', '$2y$10$Xbt1tbJfNkqPLykqXDprWOb7AX2ZzKAbJENtaHsSoEP9UgjNqdHsy', 'david2020@gmail.com'),
(32, 'zxc1234567', '123', '$2y$10$Rtsl1eWlG9Xo1xgFwZrZxOb8isbptDJnyKfu.AVwi5DOehNSOro6u', '123456789z@gmail.com'),
(33, 'zxc123qaz', 'zxc', '$2y$10$xgQdzfxacKDvG.qFA4N.rOBDLrIV67vrwYBi8nNvM8tuD8yDLpVeq', 'zxc123@gmail.com'),
(34, 'zxcqaz123', 'zxc', '$2y$10$.e0k0GuxelZl.5ek579Wpeg5u64EIK4n7Eyp5YmyWpvmfrcxQYXL6', 'zxcqaz123@gmail.com'),
(35, 'whatthefuck123', 'whatthefuck123', '$2y$10$3HphOPqzpUOMjS6KdwcG6eZa.CYwFeJi/lsVYCKXKww.bDsJTJf/e', 'whatthefuck123@gmail.com'),
(36, 'zxc123789', '喬瑟王', '$2y$10$PsstC.ynmX4TleFA6XGz0eqIHAuSWXhMg.O2KSjk1iINB84/k0Bxe', '123789@gamil.com'),
(37, '850407123', '你就是哈', '$2y$10$oMV86suMwMPewKbONaskwOAHqcIAlHPkvqBv9RPuTGTizn8CNYKm2', '850407123@gmail.com'),
(38, '850407741', '黃色5號', '$2y$10$Ph3UpfeOpbgzZwVXCvHFLO.bNtAyCwjfHkRATXYH8HktPcx5uMI7y', '850407@gmail.com'),
(39, 'zxc850407@gmail.com', '黃色大砲', '$2y$10$JZepG30jknLFnHZnNCIRb.UsTxZQ/VcF8XldWHFY4RRG6mZMmFi22', 'zxc85040720@gmail.com'),
(40, 'zxc911789', '黃色15號', '$2y$10$MYuN4LZ0KNuE42/VYLYnruP8RFQZXKQOIDDO4sbcudbjy5.8iwfw2', 'zxc9215712@yahoo.com.tw'),
(41, 'whatthefuck12345', '黃色具跑', '$2y$10$RCoFbs1Hc5zFFToIl8uZaeGWp3esRPTXzixgck/QrMdyyrrHwGiBW', 'whatthefuck12345@gmail.com'),
(42, 'zxcxzcxzc', 'zczxcxzcxzc', '$2y$10$FLd9pn2Cu8JpXauJqjZmze4tVZmCKSJKLdOsGhMamfh6FNtt2PJEm', 'zxcxzcxzc@gmail.com'),
(43, 'zxc82456', '黃色3ck', '$2y$10$BbcII4Abk5n6GemB/nNN4uINUpJmxcX2ZAFxc6xFreqPz.TX9l/f6', '1234567@gmail.com'),
(45, 'zxc850406', '黃色3c', '$2y$10$a1y8VDEWbhqlq5B8u7m9EeoAX47u3TOKUoLeMBK0fxY5W09UZe/Ci', 'zxc123456@gmail.c'),
(46, 'zxc987123', '123456', '$2y$10$dEQxk4omyDcufSSnakcxEeimj/uY2zvpzmE8UhM8Kywmo5Qw7BYpq', '123456@gmail.com'),
(48, 'zxc921571212', 'zxc8215712', '$2y$10$bDJwEI7UUaxBAWWCcn3hv.7OPY7jCqqQiJc2IESlTRDaH0ydNh6Jy', 'fuck123@gmail.com'),
(49, 'zxc92157122', '黃智輝', '$2y$10$84qlDEECYZ4JvjvMsBKl8uMlIj3pdEVUEWQMTOEblWIVj3wB4bRWW', 'zxc9215712@gmail.com'),
(50, 'zxc8504072', 'zxc850407', '$2y$10$aysgwRHLVywaP6APnZpDc.HlHCao4mBUs5lumJBRlKueQ7xeJhsE.', 'zxc850407@gmail.com3'),
(51, 'you92157122', 'you850407', '$2y$10$UvXouhMXc7viJcuTOV9a..TZ3pPgT4f5xSwEtw/ySKI1prwr6SDM.', 'you9215712@gmail.com2'),
(52, 'you9215712', '黃智輝', '$2y$10$94nLGRXGCuLj2lF2Eo/Qc.J8v9apUqfsBjwoLNTX.ZgFTHZ/O3oA6', 'you9215712@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `peaks`
--

CREATE TABLE `peaks` (
  `id` int(50) NOT NULL,
  `userid` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `measure_time` datetime NOT NULL,
  `firstPeaks` varchar(50) DEFAULT NULL,
  `secondPeaks` varchar(50) DEFAULT NULL,
  `thirdPeaks` varchar(50) DEFAULT NULL,
  `fourthPeaks` varchar(50) DEFAULT NULL,
  `fifthPeaks` varchar(50) DEFAULT NULL,
  `sixthPeaks` varchar(50) DEFAULT NULL,
  `seventhPeaks` varchar(50) DEFAULT NULL,
  `eighthPeaks` varchar(50) DEFAULT NULL,
  `ninthPeaks` varchar(50) DEFAULT NULL,
  `tenthPeaks` varchar(50) DEFAULT NULL,
  `eleventhPeaks` varchar(50) DEFAULT NULL,
  `twelvethPeaks` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `peaks`
--

INSERT INTO `peaks` (`id`, `userid`, `measure_time`, `firstPeaks`, `secondPeaks`, `thirdPeaks`, `fourthPeaks`, `fifthPeaks`, `sixthPeaks`, `seventhPeaks`, `eighthPeaks`, `ninthPeaks`, `tenthPeaks`, `eleventhPeaks`, `twelvethPeaks`) VALUES
(8, 'zxc9215712', '2017-11-23 10:30:00', '61-0.0281472518739', '92-0.0544968438213', '123-0.0435202852798', '153-0.0582987803551', '184-0.106264600832', '215-0.0804740504954', '276-0.0318437614002', '337-0.0280493816579', '400-0.00641582843', '428-0.00724661723396', '450-0.00596231549346', '498-0.0025717551803');

-- --------------------------------------------------------

--
-- Table structure for table `physiological`
--

CREATE TABLE `physiological` (
  `辨識碼` varchar(20) NOT NULL,
  `typex` int(10) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ratio`
--

CREATE TABLE `ratio` (
  `辨識碼` varchar(20) NOT NULL,
  `typex` int(10) NOT NULL,
  `sequence` int(10) NOT NULL,
  `description` text NOT NULL,
  `basescore_low` varchar(25) NOT NULL,
  `basescore_upper` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `辨識碼` varchar(20) NOT NULL,
  `user_id` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nick_ame` varchar(15) NOT NULL,
  `birthday` date NOT NULL,
  `sex` varchar(10) NOT NULL,
  `height` varchar(10) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `c_day` varchar(10) NOT NULL,
  `history` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_information`
--

CREATE TABLE `users_information` (
  `id` int(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mail_address` varchar(100) NOT NULL,
  `user_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(10) DEFAULT NULL,
  `user_height` varchar(6) DEFAULT NULL,
  `user_weight` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_information`
--

INSERT INTO `users_information` (`id`, `userid`, `username`, `mail_address`, `user_sex`, `user_phone`, `user_height`, `user_weight`) VALUES
(1, 'bfbdfbdfb', '大聲二號', 'fdbfdbfdb', '男性', 'fdb', '111', '111'),
(2, 'fuckyou', 'yourmother', 'asfrgrwhh', NULL, NULL, NULL, NULL),
(3, 'zxc123456', '僑生', 'zxc12346@gmail.com', NULL, NULL, NULL, NULL),
(4, 'zxc9215712', 'dvdsbs', 'motherfuckeristyou@gmail.com', '男性', '0911111111', '123.12', '100.01'),
(5, 'qwerty', 'qwerty', '1@gmail.com', '男性', NULL, '000', '000'),
(6, 'zxc850407', '宗緯承', 'zxc850407@gmail.com', '男性', '0911234567', '190', '100'),
(8, 'zxc85040712', '黃色2號', '9215712@gmail.com', NULL, NULL, NULL, NULL),
(9, 'zxc921571278', '黃色2號', '880407@gmail.com', NULL, NULL, NULL, NULL),
(10, 'you850407', '黃色3號', 'you9215712@nkfust.edu.tw', NULL, NULL, NULL, NULL),
(11, 'david2020', '大為', 'david2020@gmail.com', NULL, NULL, NULL, NULL),
(12, 'zxc1234567', '123', '123456789z@gmail.com', NULL, NULL, NULL, NULL),
(13, 'zxc123qaz', 'zxc', 'zxc123@gmail.com', NULL, NULL, NULL, NULL),
(14, 'zxcqaz123', 'zxc', 'zxcqaz123@gmail.com', NULL, NULL, NULL, NULL),
(15, 'whatthefuck123', 'whatthefuck123', 'whatthefuck123@gmail.com', NULL, NULL, NULL, NULL),
(16, 'zxc123789', '喬瑟王', '123789@gamil.com', NULL, NULL, NULL, NULL),
(17, '850407123', '你就是哈', '850407123@gmail.com', NULL, NULL, NULL, NULL),
(18, '850407741', '黃色5號', '850407@gmail.com', NULL, NULL, NULL, NULL),
(19, 'zxc850407@gmail.com', '黃色大砲', 'zxc85040720@gmail.com', NULL, NULL, NULL, NULL),
(20, 'zxc911789', '黃色15號', 'zxc9215712@yahoo.com.tw', NULL, NULL, NULL, NULL),
(21, 'whatthefuck12345', '黃色具跑', 'whatthefuck12345@gmail.com', NULL, NULL, NULL, NULL),
(22, 'zxcxzcxzc', 'zczxcxzcxzc', 'zxcxzcxzc@gmail.com', NULL, NULL, NULL, NULL),
(23, 'zxc82456', '黃色3ck', '1234567@gmail.com', NULL, NULL, NULL, NULL),
(24, 'zxc850406', '黃色3c', 'zxc123456@gmail.c', NULL, NULL, NULL, NULL),
(25, 'zxc987123', '123456', '123456@gmail.com', NULL, NULL, NULL, NULL),
(26, 'zxc921571212', 'zxc8215712', 'fuck123@gmail.com', NULL, NULL, NULL, NULL),
(27, 'zxc92157122', '黃智輝', 'zxc9215712@gmail.com', NULL, NULL, NULL, NULL),
(28, 'zxc8504072', 'zxc850407', 'zxc850407@gmail.com3', NULL, NULL, NULL, NULL),
(29, 'you92157122', 'you850407', 'you9215712@gmail.com2', NULL, NULL, NULL, NULL),
(30, 'you9215712', '黃智輝', 'you9215712@gmail.com', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fdlogs`
--
ALTER TABLE `fdlogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measure_time`
--
ALTER TABLE `measure_time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_account`
--
ALTER TABLE `members_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- Indexes for table `peaks`
--
ALTER TABLE `peaks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_information`
--
ALTER TABLE `users_information`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fdlogs`
--
ALTER TABLE `fdlogs`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `members_account`
--
ALTER TABLE `members_account`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `peaks`
--
ALTER TABLE `peaks`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_information`
--
ALTER TABLE `users_information`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
