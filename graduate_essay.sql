-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 07, 2023 at 04:18 PM
-- Server version: 10.5.18-MariaDB-cll-lve
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
-- Database: `graduate_essay`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_material`
--

CREATE TABLE `additional_material` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `additional_material`
--

INSERT INTO `additional_material` (`id`, `order_id`, `user_id`, `file`, `type`, `size`, `time`) VALUES
(77, 286, 21, 'uploads/1664814380-customer4.jpg', 'image/jpeg', '78789', '2022-10-03 19:26:20'),
(78, 286, 21, 'uploads/1664814382-1664695741-Demo-file-v1.pdf', 'application/pdf', '216441', '2022-10-03 19:26:22'),
(79, 0, 27, 'uploads/1664917954-Interviewing in Social Work.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '22702', '2022-10-05 00:12:34'),
(80, 0, 27, 'uploads/1664917954-Introduction.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '18867', '2022-10-05 00:12:34'),
(81, 287, 27, 'uploads/1664917969-Evidence Hospital Acquired Infection Prevention.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '20821', '2022-10-05 00:12:49'),
(82, 287, 27, 'uploads/1664917970-Interviewing in Social Work.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '22702', '2022-10-05 00:12:50'),
(83, 287, 27, 'uploads/1664917971-Introduction.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '18867', '2022-10-05 00:12:51'),
(84, 287, 27, 'uploads/1664918011-Interviewing in Social Work.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '22702', '2022-10-05 00:13:31'),
(85, 287, 27, 'uploads/1664918045-Introduction.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '18867', '2022-10-05 00:14:05'),
(142, 289, 21, 'uploads/1665549212-customer4.jpg', 'image/jpeg', '78789', '2022-10-12 07:33:32'),
(144, 290, 21, 'uploads/1665709550-customer4.jpg', 'image/jpeg', '78789', '2022-10-14 04:05:50'),
(145, 290, 21, 'uploads/1665709550-african-american-woman.png', 'image/png', '154185', '2022-10-14 04:05:50'),
(146, 292, 27, 'uploads/1665779625-141.pdf', 'application/pdf', '266302', '2022-10-14 23:33:45'),
(147, 0, 35, 'uploads/1665867798-asadx.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '13654', '2022-10-16 00:03:18'),
(172, 0, 0, 'uploads/1665943620-customer1.png', 'image/png', '69615', '2022-10-16 21:07:00'),
(173, 0, 0, 'uploads/1665943644-customer1.png', 'image/png', '69615', '2022-10-16 21:07:24'),
(174, 0, 0, 'uploads/1665943691-customer1.png', 'image/png', '69615', '2022-10-16 21:08:11'),
(175, 0, 0, 'uploads/1665943714-customer1.png', 'image/png', '69615', '2022-10-16 21:08:34'),
(176, 0, 0, 'uploads/1665943785-customer1.png', 'image/png', '69615', '2022-10-16 21:09:45'),
(177, 295, 21, 'uploads/1665943815-customer4.jpg', 'image/jpeg', '78789', '2022-10-16 21:10:15'),
(178, 0, 21, 'uploads/1665945091-customer4.jpg', 'image/jpeg', '78789', '2022-10-16 21:31:31'),
(179, 297, 35, 'uploads/1665957199-asadx.docx', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', '13654', '2022-10-17 00:53:19'),
(192, 308, 21, 'uploads/1670435716-african-american-woman.png', 'image/png', '154185', '2022-12-07 20:55:16'),
(193, 312, 39, 'uploads/1673016745-1664695741-Demo-file-v1.pdf', 'application/pdf', '216441', '2023-01-06 17:52:25');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Norbert', 'Odhiambo', 'odhiambonorbert194@gmail.com', 'norbert', '$2y$10$uaZTmPgR9iPJwHWfCBeSquzEsDI7i1M.55xpZA0dUR0Iu1NJLuYoS', NULL, '2022-09-05 03:15:27'),
(2, 'Peter', 'Muthini', 'clemohben@gmail.com', 'Tush', '$2y$10$kPLMBRDBlwjgSG8lVP8BLufh8DoByyOkHtFNSeyH2lTuYEaUBJYRC', NULL, '2022-09-05 19:44:20'),
(3, 'Ben', 'Cason', 'cason@gmail.com', 'cason', '$2y$10$xVmUZVkst5UiJIi0Z5q2uOfTIzfPwzYYF01agzrudWz3X3XxdeDE6', NULL, '2022-09-23 15:49:31'),
(4, 'Vanessa', 'Rodger', 'maryrodger111@gmail.com', 'Vanessa', '$2y$10$ZDQs5AKO4xeTWD5enfwU6.nLWepvlG88Yykcj2dv0sXxeofLTFm6G', NULL, '2022-09-24 17:57:10'),
(5, 'lameck', 'odhiambo', 'odhiambolameck125@gmail.com', 'lahm', '$2y$10$frQP9n35pAh6nrKPeUVihO9OD5fnvlZcgInEpTBxTRpaP7dgmGHqq', NULL, '2022-10-06 05:56:27');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `text` varchar(250) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_url` varchar(250) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `completed`
--

CREATE TABLE `completed` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `writer_id` int(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `file_url` varchar(250) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `completed`
--

INSERT INTO `completed` (`id`, `name`, `email`, `writer_id`, `title`, `order_id`, `file_url`, `file_name`, `type`, `size`, `message`, `created_at`) VALUES
(2, 'Norbert Odhiambo', 'null', 1, 'Computer technology', 308, '', '', '', '', 'null', '2022-12-07 17:57:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupon`
--

CREATE TABLE `coupon` (
  `id` int(11) NOT NULL,
  `coupon_code` varchar(20) DEFAULT NULL,
  `discount` int(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiry_date` varchar(50) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `coupon`
--

INSERT INTO `coupon` (`id`, `coupon_code`, `discount`, `status`, `expiry_date`, `user_email`, `user_id`, `created_at`) VALUES
(17, 'finance', 30, 'valid', '', 'odhiambolameck125@gmail.com', '30', '2022-11-17 12:18:51'),
(18, 'GEH-QWSQD0LUGFCPCYHY', 40, 'valid', '', 'odhiambolameck125@gmail.com', '30', '2022-12-24 07:05:13'),
(19, 'GEH-LZ5HVUOG4VMXMR/D', 340, 'valid', '2022-12-24', 'odhiambolameck125@gmail.com', '30', '2022-12-24 07:18:35'),
(20, 'GEH-WE0E0PO4O3BWOXJD', 50, 'valid', '2022-12-24', 'odhiambolameck125@gmail.com', '30', '2022-12-24 07:20:19'),
(21, 'GEH-LDO0QEO0KJ9MVWIC', 75, 'valid', '2023-02-16', 'odhiambonorbert194@gmail.com', '21', '2023-02-07 13:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `delivered`
--

CREATE TABLE `delivered` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `file_url` varchar(250) DEFAULT NULL,
  `file_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `delivered`
--

INSERT INTO `delivered` (`id`, `name`, `email`, `user_id`, `title`, `order_id`, `file_url`, `file_name`, `type`, `size`, `message`, `created_at`) VALUES
(46, '', 'maryrodger111@gmail.com', 27, 'accounting', 300, 'https://drive.google.com/file/d/1pOGXdrzc51hHH-huGwuwW2HvgSFBZULr/view?usp=drivesdk', 'C26193858.pdf', 'application/pdf', '585556', '', '2022-12-04 10:35:33'),
(47, '', 'maryrodger111@gmail.com', 27, 'accounting', 300, 'https://drive.google.com/file/d/1pOGXdrzc51hHH-huGwuwW2HvgSFBZULr/view?usp=drivesdk', 'C26193858.pdf', 'application/pdf', '585556', '', '2022-12-04 10:35:45'),
(48, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 301, 'https://drive.google.com/file/d/1R-13yDP6U6KEuD5ScRrqdJ_RvFwG8TA9/view?usp=drivesdk', 'african-american-woman.png', 'image/png', '154185', '', '2022-12-07 15:00:48'),
(49, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 301, 'https://drive.google.com/file/d/1R-13yDP6U6KEuD5ScRrqdJ_RvFwG8TA9/view?usp=drivesdk', 'african-american-woman.png', 'image/png', '154185', '', '2022-12-07 15:01:02'),
(50, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 302, 'https://drive.google.com/file/d/11vnYFEAqfur5_RZg7c2awQdOOsnmv6gE/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', '', '2022-12-07 15:20:09'),
(51, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 302, 'https://drive.google.com/file/d/11vnYFEAqfur5_RZg7c2awQdOOsnmv6gE/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', '', '2022-12-07 15:20:13'),
(52, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 304, 'https://drive.google.com/file/d/1EDiEk9WdRTmuz8dyn5bKKDmuXXczqOin/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', 'ytsm,dtxrymtmyst\nsrylnosrykmtym,sr,ts', '2022-12-07 15:44:44'),
(53, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 304, 'https://drive.google.com/file/d/1EDiEk9WdRTmuz8dyn5bKKDmuXXczqOin/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', 'ytsm,dtxrymtmyst\nsrylnosrykmtym,sr,ts', '2022-12-07 15:44:50'),
(54, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 306, 'https://drive.google.com/file/d/1VdF5QtzvuaibOnDfu6mmItkR0goN44cH/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', 'ksjbrvkibisdbvisbvisbivksnkbf s\niwuegvhsyhbvihsubdvhsibvisbivbsivsbvs', '2022-12-07 16:20:43'),
(55, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 308, 'https://drive.google.com/file/d/1ddJq_Vs9bb8gy4HLRHTGqESI33XriH31/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', 'kidnbzndiubgzsyvkbsuzkbvuykbzs\nfihvbujhybfuivbuvbyuzdsvgbuszfhbvuysbvzs', '2022-12-07 17:58:39'),
(56, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', 21, 'Computer technology', 308, 'https://drive.google.com/file/d/1ddJq_Vs9bb8gy4HLRHTGqESI33XriH31/view?usp=drivesdk', 'customer4.jpg', 'image/jpeg', '78789', 'kidnbzndiubgzsyvkbsuzkbvuykbzs\nfihvbujhybfuivbuvbyuzdsvgbuszfhbvuysbvzs', '2022-12-07 17:58:47');

-- --------------------------------------------------------

--
-- Table structure for table `editor`
--

CREATE TABLE `editor` (
  `id` int(11) NOT NULL,
  `writer_id` int(10) DEFAULT NULL,
  `order_id` int(10) DEFAULT NULL,
  `text` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hidden`
--

CREATE TABLE `hidden` (
  `id` int(100) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_email` varchar(100) DEFAULT NULL,
  `words` varchar(100) DEFAULT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `coupon` varchar(100) DEFAULT NULL,
  `cpn_namedb` varchar(100) DEFAULT NULL,
  `order_client` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `total_p` varchar(100) DEFAULT NULL,
  `cpn_value` varchar(100) DEFAULT NULL,
  `timeline` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hidden`
--

INSERT INTO `hidden` (`id`, `client_id`, `client_email`, `words`, `amount`, `coupon`, `cpn_namedb`, `order_client`, `total`, `total_p`, `cpn_value`, `timeline`, `created_at`) VALUES
(108, 21, 'odhiambonorbert194@gmail.com', '1650', '109.08', '', '', '', 'null', '', 'null', '', '2022-08-19 09:37:45'),
(109, 27, 'maryrodger111@gmail.com', '275', '30.91', '', '', '', 'null', '', 'null', '', '2022-08-19 22:15:11'),
(110, 29, 'norbert@gmail.com', '1100', '70.25', '', '', '', 'null', '', 'null', '', '2022-08-20 07:46:45'),
(111, 30, 'odhiambolameck125@gmail.com', '5775', '523.31', '', '', '', 'null', '', 'null', '', '2022-08-20 14:37:56'),
(112, 21, 'odhiambonorbert194@gmail.com', '1375', '115.04', '', '', '', 'null', '', 'null', '', '2022-08-21 09:55:21'),
(113, 0, '', '1650', '117.81', '', '', '', 'null', '', 'null', '', '2022-08-21 16:08:35'),
(114, 29, 'norbert@gmail.com', '1375', '64.64', '', '', '', 'null', '', 'null', '', '2022-08-21 16:12:18'),
(115, 25, 'clemohben@gmail.com', '1375', 'NaN', '', '', '', 'null', '', 'null', '', '2022-08-22 18:51:25'),
(116, 25, 'clemohben@gmail.com', '825', '103.36', '', '', '', 'null', '', 'null', '', '2022-08-24 08:51:16'),
(117, 27, 'maryrodger111@gmail.com', '275', '21.46', '', '', '', 'null', '', 'null', '', '2022-08-31 23:40:41'),
(118, 21, 'odhiambonorbert194@gmail.com', '275', '23.18', '', '', '', 'null', '', 'null', '', '2022-09-03 05:13:29'),
(119, 21, 'odhiambonorbert194@gmail.com', '550', '33.05', '', '', '', 'null', '', 'null', '', '2022-09-03 05:14:49'),
(120, 21, 'odhiambonorbert194@gmail.com', '2475', '472.68', '', '', '', 'null', '', 'null', '', '2022-09-06 10:59:46'),
(121, 24, 'esther@gmail.com', '275', '15.45', '', '', '', 'null', '', 'null', '', '2022-09-11 09:09:31'),
(122, 24, 'esther@gmail.com', '275', '33.15', '', '', '', 'null', '', 'null', '', '2022-09-11 09:20:20'),
(123, 21, 'odhiambonorbert194@gmail.com', '275', '21.46', '', '', '', 'null', '', 'null', '', '2022-09-25 17:12:45'),
(124, 21, 'odhiambonorbert194@gmail.com', '275', '19.19', '', '', '', 'null', '', 'null', '', '2022-09-25 17:15:23'),
(125, 21, 'odhiambonorbert194@gmail.com', '275', '23.61', '', '', '', 'null', '', 'null', '', '2022-09-25 18:15:10'),
(126, 21, 'odhiambonorbert194@gmail.com', '275', '87.97', '', '', '', 'null', '', 'null', '', '2022-09-25 18:41:36'),
(127, 21, 'odhiambonorbert194@gmail.com', '275', '87.97', '', '', '', 'null', '', 'null', '', '2022-09-25 18:41:36'),
(128, 27, 'maryrodger111@gmail.com', '275', '17.28', '', '', '', 'null', '', 'null', '', '2022-10-01 20:33:37'),
(129, 27, 'maryrodger111@gmail.com', '275', '38.36', '', '', '', 'null', '', 'null', '', '2022-10-03 11:07:39'),
(130, 21, 'odhiambonorbert194@gmail.com', '1100', '115.85', '', '', '', 'null', '', 'null', '', '2022-10-03 16:26:33'),
(131, 27, 'maryrodger111@gmail.com', '275', '15.4', '', '', '', 'null', '', 'null', '', '2022-10-04 21:14:37'),
(132, 21, 'odhiambonorbert194@gmail.com', '825', '93.74', '', '', '', 'null', '', 'null', '', '2022-10-11 05:55:22'),
(133, 21, 'odhiambonorbert194@gmail.com', '275', '17.17', '', '', '', 'null', '', 'null', '', '2022-10-12 04:33:34'),
(134, 21, 'odhiambonorbert194@gmail.com', '825', '57.95', '', '', '', 'null', '', 'null', '', '2022-10-14 01:06:08'),
(135, 27, 'maryrodger111@gmail.com', '275', '23.51', '', '', '', 'null', '', 'null', '', '2022-10-14 20:33:57'),
(136, 27, 'maryrodger111@gmail.com', '275', '38.73', '', '', '', 'null', '', 'null', '', '2022-10-14 20:36:16'),
(137, 27, 'maryrodger111@gmail.com', '275', '38.73', '', '', '', 'null', '', 'null', '', '2022-10-14 20:37:51'),
(138, 35, 'miafid33@gmail.com', '275', '7.78', '', '', '', 'null', '', 'null', '', '2022-10-15 21:10:39'),
(139, 21, 'odhiambonorbert194@gmail.com', '550', '31.25', '', '', '', 'null', '', 'null', '', '2022-10-16 18:10:30'),
(140, 0, '', '275', '-0.17', '', 'mia', '', 'null', '', 'null', '', '2022-10-16 21:52:13'),
(141, 35, 'miafid33@gmail.com', '275', '-4.87', '', 'GEH-JJHBN394UKA6E9DG', '', 'null', '', 'null', '', '2022-10-16 21:54:33'),
(142, 35, 'miafid33@gmail.com', '275', '-0.65', '', 'GEH-JJHBN394UKA6E9DG', '', 'null', '', 'null', '', '2022-10-16 22:02:18'),
(143, 21, 'odhiambonorbert194@gmail.com', '825', '90.27', '', '', '', 'null', '', 'null', '', '2022-10-18 13:52:56'),
(144, 27, 'maryrodger111@gmail.com', '275', 'NaN', '', '', '', 'null', '', 'null', '', '2022-12-04 10:33:09'),
(145, 21, 'odhiambonorbert194@gmail.com', '825', '40.56', '', '', '', 'null', '', 'null', '', '2022-12-07 14:40:46'),
(146, 21, 'odhiambonorbert194@gmail.com', '825', '51.51', '', '', '', 'null', '', 'null', '', '2022-12-07 15:16:15'),
(147, 21, 'odhiambonorbert194@gmail.com', '1100', '68.68', '', '', '', 'null', '', 'null', '', '2022-12-07 15:34:38'),
(148, 21, 'odhiambonorbert194@gmail.com', '1100', '85.85', '', '', '', 'null', '', 'null', '', '2022-12-07 15:39:45'),
(149, 21, 'odhiambonorbert194@gmail.com', '1100', '68.68', '', '', '', 'null', '', 'null', '', '2022-12-07 16:13:46'),
(150, 21, 'odhiambonorbert194@gmail.com', '1100', '60.09', '', '', '', 'null', '', 'null', '', '2022-12-07 16:16:47'),
(151, 21, 'odhiambonorbert194@gmail.com', '825', '51.51', '', '', '', 'null', '', 'null', '', '2022-12-07 17:51:56'),
(152, 21, 'odhiambonorbert194@gmail.com', '825', '42.42', '', '', '', 'null', '', 'null', '', '2022-12-07 17:55:24'),
(153, 30, 'odhiambolameck125@gmail.com', '2750', '328.61', '', '', '', 'null', '', 'null', '', '2022-12-24 07:20:00'),
(154, 30, 'odhiambolameck125@gmail.com', '2750', '328.61', '', '', '', 'null', '', 'null', '', '2022-12-24 07:20:36'),
(155, 30, 'odhiambolameck125@gmail.com', '1650', '322.52', '', '', '', 'null', '', 'null', '', '2022-12-30 15:36:21'),
(156, 39, 'achiengvenessa38@gmail.com', '550', '56.66', '', '', '', 'null', '', 'null', '', '2023-01-06 14:53:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `type_of_paper` varchar(100) DEFAULT NULL,
  `subject_area` varchar(150) DEFAULT NULL,
  `academic_level` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `no_of_pages` varchar(100) DEFAULT NULL,
  `no_of_sources` varchar(100) DEFAULT NULL,
  `pp_format` varchar(100) DEFAULT NULL,
  `spacing` varchar(100) DEFAULT NULL,
  `ppt_slides` varchar(100) DEFAULT NULL,
  `writer_id` varchar(100) DEFAULT NULL,
  `writer_name` varchar(150) DEFAULT NULL,
  `deadline` varchar(100) DEFAULT NULL,
  `quality_level` varchar(100) DEFAULT NULL,
  `timeline` varchar(150) DEFAULT NULL,
  `referencing_style` varchar(100) DEFAULT NULL,
  `coupon_code` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `discount` varchar(20) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_priority` varchar(100) DEFAULT NULL,
  `instructions` varchar(1000) DEFAULT NULL,
  `notes` varchar(250) DEFAULT NULL,
  `payment_status` varchar(100) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `progress` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `date_assigned` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `type_of_paper`, `subject_area`, `academic_level`, `title`, `no_of_pages`, `no_of_sources`, `pp_format`, `spacing`, `ppt_slides`, `writer_id`, `writer_name`, `deadline`, `quality_level`, `timeline`, `referencing_style`, `coupon_code`, `total`, `discount`, `order_status`, `order_priority`, `instructions`, `notes`, `payment_status`, `url`, `progress`, `created_at`, `date_assigned`) VALUES
(300, 27, 'Accounting', 'Accounting', 'High School', 'accounting', '1', '0', 'MLA', 'Double', '0', 'null', NULL, '6 Hours', 'Premium', 'Sun Dec 04 2022 19:33:05 GMT+0300 (East Africa Time)', '0', NULL, 'NaN', NULL, 'DELIVERED', NULL, '<p>&nbsp;</p>', NULL, 'pending', NULL, NULL, '2022-12-04 10:33:07', NULL),
(308, 21, 'Annotated Bibliography', 'Computer Science', 'College', 'Computer technology', '3', '2', 'APA', 'Double', '0', '1', 'Norbert Odhiambo', '6 Hours', 'Premium', 'Thu Dec 08 2022 02:55:20 GMT+0300 (East Africa Time)', '2', NULL, '42.42', NULL, 'DELIVERED', '', '<p>dkhbsnbdnskdbs</p><p>sdkhvkskvnuosnodnsjlnvlnsvs</p>', 'kjsfkvkhbshbvhksbs\nsbvibsivksnvjnsojvnksnbjsb', 'pending', NULL, NULL, '2022-12-07 17:55:22', '2022-12-07 17:56:25'),
(309, 30, 'Admission Essay', 'Actuarial Science ', 'College', 'auct', '10', '6', 'APA', 'Double', '9', 'null', NULL, '6 Hours', 'Premium', 'Sat Dec 24 2022 16:20:34 GMT-0800 (Pacific Standard Time)', '6', NULL, '328.61', NULL, 'PENDING', NULL, '<p>&nbsp;</p>', NULL, 'pending', NULL, NULL, '2022-12-24 07:20:00', NULL),
(310, 30, 'Admission Essay', 'Actuarial Science ', 'College', 'auct', '10', '6', 'APA', 'Double', '9', 'null', NULL, '6 Hours', 'Premium', 'Sat Dec 24 2022 16:21:26 GMT-0800 (Pacific Standard Time)', '6', NULL, '328.61', NULL, 'PENDING', NULL, '<p>&nbsp;</p>', NULL, 'pending', NULL, NULL, '2022-12-24 07:20:35', NULL),
(311, 30, 'Argumentative Essay', 'Engineering', 'Masters', 'engineering', '6', '2', 'MLA', 'Double', '10', 'null', NULL, '6 Hours', 'Premium', 'Fri Dec 30 2022 13:36:11 GMT-0800 (Pacific Standard Time)', '2', NULL, '322.52', NULL, 'PENDING', NULL, '<p>title</p>', NULL, 'pending', NULL, NULL, '2022-12-30 15:36:21', NULL),
(312, 39, 'Assignment', 'Health Science', 'College', 'food health', '2', '0', 'APA', 'Double', '0', 'null', NULL, '6 Hours', 'Premium', 'Fri Jan 06 2023 23:53:27 GMT+0300 (East Africa Time)', '0', NULL, '56.66', NULL, 'PENDING', NULL, '<p>random text....</p>', NULL, 'pending', NULL, NULL, '2023-01-06 14:53:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `ord_id` varchar(10) DEFAULT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payer_id` varchar(100) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `amount` varchar(50) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(100) NOT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL,
  `footer_desc` varchar(5000) DEFAULT NULL,
  `facebook` varchar(2000) DEFAULT NULL,
  `twitter` varchar(2000) DEFAULT NULL,
  `linkedin` varchar(2000) DEFAULT NULL,
  `instagram` varchar(2000) DEFAULT NULL,
  `youtube` varchar(2000) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `map` varchar(3000) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `header_logo`, `email`, `phone`, `phone2`, `footer_logo`, `footer_desc`, `facebook`, `twitter`, `linkedin`, `instagram`, `youtube`, `address`, `city`, `state`, `country`, `pin`, `map`, `site_name`) VALUES
(1, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `pwd` varchar(200) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `last_name`, `email`, `username`, `pwd`, `country`, `phone`, `address`, `type`, `status`, `created_at`) VALUES
(21, 'Norbert', 'Odhiambo', 'odhiambonorbert194@gmail.com', NULL, '5f4dcc3b5aa765d61d8327deb882cf99', 'United States#1', '', NULL, NULL, NULL, '2022-08-19 06:51:31'),
(25, NULL, NULL, 'clemohben@gmail.com', NULL, '92ef6983861a1383b7159c4123db7a3b', 'KENYA#254', '', NULL, NULL, NULL, '2022-08-19 08:56:33'),
(27, NULL, NULL, 'maryrodger111@gmail.com', NULL, 'efc6e631bacc511cf35ec55bfcd3530a', 'KENYA#254', '', NULL, NULL, NULL, '2022-08-19 22:14:22'),
(30, 'Lahm', 'Odhis', 'odhiambolameck125@gmail.com', 'Lahm', 'efa88170397c87c264cb471f3cf86e6d', NULL, NULL, NULL, NULL, NULL, '2022-08-20 14:35:15'),
(31, 'Nandipha ', 'Ndlela', 'ndlelanandie74@gmail.com', 'Nandipha ', '8410431e62640bb5698b55a072ae9bc2', NULL, NULL, NULL, NULL, NULL, '2022-08-31 23:36:49'),
(32, 'Austin', 'Dimo', 'austinogolladimo@gmail.com', 'Jatello254', '20fb2f1b0fb5f41c5d10986bdbed8f69', NULL, NULL, NULL, NULL, NULL, '2022-09-04 21:02:30'),
(35, 'mia', 'fidelis', 'miafid33@gmail.com', 'mia', 'fc108198449213e4afcc3815b37c76b9', NULL, NULL, NULL, NULL, NULL, '2022-10-15 21:02:12'),
(38, 'Margaret', 'Ochuodho', 'writermargy@gmail.com', 'WriterMargy', 'c123a120108ef5459f73c3410173e1b0', NULL, NULL, NULL, NULL, NULL, '2022-12-24 08:15:58'),
(39, 'Vanessa', 'achieng', 'achiengvenessa38@gmail.com', 'vanessa', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, NULL, NULL, NULL, '2023-01-06 14:50:30');

-- --------------------------------------------------------

--
-- Table structure for table `upsells`
--

CREATE TABLE `upsells` (
  `id` int(100) NOT NULL,
  `order_id` tinyint(4) DEFAULT NULL,
  `upsell` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `ac_level` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `email`, `password`, `code`, `status`, `qualification`, `ac_level`, `created_at`) VALUES
(1, 'Norbert Odhiambo', 'odhiambonorbert194@gmail.com', '$2y$10$PakzwKBi0VFUpLSs.AsxF.s6l.InSaGZ9D6VNGHgMA26E6HmNDe7G', 0, 'verified', NULL, 'undergraduate', '2022-09-09 11:16:34'),
(2, 'Venessa', 'achiengvenessa38@gmail.com', '$2y$10$udnmIA0zmfbqLyC/r/gF/Ond3XxeB51wyynMVbvtxb1k6UviC9wSO', 0, 'verified', '90', 'college', '2022-09-09 12:00:27'),
(3, 'lameck odhiambo', 'odhiambolameck125@gmail.com', '$2y$10$myU7/.lon6diH2.lXvK98ue0Dth/gl4VKJ1KAbv96F.ipihM7E50G', 0, 'verified', NULL, 'masters', '2022-09-12 11:51:02'),
(4, 'Mary Roder', 'muuokiv@gmail.com', '$2y$10$fe7ga/.eVKLUJPINAHWgiuwxvZk0n1OXaCjbzIZvB2pYbjJVm.71O', 0, 'verified', NULL, NULL, '2022-09-25 16:29:58'),
(5, 'Margaret ', 'writermargy@gmail.com', '$2y$10$NY/igucvsxEdyS6vIEVsL.KtQHk2yNt38tCA/i3gGULc3DL/4cFcq', 407090, 'notverified', NULL, NULL, '2022-12-27 20:23:22'),
(6, 'Victor Okuthe ochieng ', 'okuthevictor@gmail.com', '$2y$10$EfYMytGrSm//cXw9yxyUre307tWq5u1bSTgoettLl4qCSHUoyAAKG', 753344, 'notverified', NULL, NULL, '2022-12-30 09:08:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_material`
--
ALTER TABLE `additional_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `completed`
--
ALTER TABLE `completed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon`
--
ALTER TABLE `coupon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivered`
--
ALTER TABLE `delivered`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `editor`
--
ALTER TABLE `editor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hidden`
--
ALTER TABLE `hidden`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upsells`
--
ALTER TABLE `upsells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_material`
--
ALTER TABLE `additional_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `completed`
--
ALTER TABLE `completed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon`
--
ALTER TABLE `coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `delivered`
--
ALTER TABLE `delivered`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `editor`
--
ALTER TABLE `editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hidden`
--
ALTER TABLE `hidden`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `upsells`
--
ALTER TABLE `upsells`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
