-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 02:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `raphitadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `Brands` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `count` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `isPublished` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `Brands` (`id`, `brand_name`, `description`, `count`, `logo`, `isPublished`, `createdAt`, `updatedAt`) VALUES
(1, 'Vyrtych', 'VyrtychDescryption', NULL, 'https://api.raphitajayamandiri.com/1670224215874-brands-logo.png', 0, '2022-12-05 07:10:15', '2022-12-05 07:10:15'),
(2, 'Sinoamigo', 'Sinoamigo Descryption', NULL, 'https://api.raphitajayamandiri.com/1670224238291-Grayscalefilter.png', 0, '2022-12-05 07:10:38', '2022-12-05 07:10:38'),
(3, 'TCM Lighting', 'TCM Lighting Descryption', NULL, 'https://api.raphitajayamandiri.com/1670224263918-Grayscalefilter.png', 0, '2022-12-05 07:11:03', '2022-12-05 07:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `Categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `Media` (
  `id` int(11) NOT NULL,
  `media_url` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `Media` (`id`, `media_url`, `createdAt`, `updatedAt`) VALUES
(1, 'https://api.raphitajayamandiri.com/1670383220592-Vyrtych-AQUA-70-Ex-LED-img1.png', '2022-12-07 03:20:20', '2022-12-07 03:20:20'),
(2, 'https://api.raphitajayamandiri.com/1670383252218-Vyrtych-AQUA-70-Ex-LED-img2.png', '2022-12-07 03:20:52', '2022-12-07 03:20:52'),
(3, 'https://api.raphitajayamandiri.com/1670383256674-Vyrtych-AQUA-70-Ex-LED-img3.png', '2022-12-07 03:20:56', '2022-12-07 03:20:56'),
(4, 'https://api.raphitajayamandiri.com/1670383261891-Vyrtych-AQUA-70-Ex-LED-img4.png', '2022-12-07 03:21:01', '2022-12-07 03:21:01'),
(5, 'https://api.raphitajayamandiri.com/1670383266344-Vyrtych-AQUA-70-Ex-LED-img5.png', '2022-12-07 03:21:06', '2022-12-07 03:21:06'),
(6, 'https://api.raphitajayamandiri.com/1670383271137-Vyrtych-AQUA-70-Ex-LED-img6.png', '2022-12-07 03:21:11', '2022-12-07 03:21:11'),
(7, 'https://api.raphitajayamandiri.com/1670383387936-Vyrtych-BASET-N-LED-img1.png', '2022-12-07 03:23:07', '2022-12-07 03:23:07'),
(8, 'https://api.raphitajayamandiri.com/1670383391611-Vyrtych-BASET-N-LED-img2.png', '2022-12-07 03:23:11', '2022-12-07 03:23:11'),
(9, 'https://api.raphitajayamandiri.com/1670383394993-Vyrtych-BASET-N-LED-img3.png', '2022-12-07 03:23:15', '2022-12-07 03:23:15'),
(10, 'https://api.raphitajayamandiri.com/1670383398754-Vyrtych-BASET-N-LED-img4.png', '2022-12-07 03:23:18', '2022-12-07 03:23:18'),
(11, 'https://api.raphitajayamandiri.com/1670383402648-Vyrtych-BASET-N-LED-img5.png', '2022-12-07 03:23:22', '2022-12-07 03:23:22'),
(12, 'https://api.raphitajayamandiri.com/1670383406494-Vyrtych-BASET-N-LED-img6.png', '2022-12-07 03:23:26', '2022-12-07 03:23:26'),
(13, 'https://api.raphitajayamandiri.com/1670383500315-Vyrtych-EXTEND-Ex-P-LED-img1.png', '2022-12-07 03:25:00', '2022-12-07 03:25:00'),
(14, 'https://api.raphitajayamandiri.com/1670383505054-Vyrtych-EXTEND-Ex-P-LED-img2.png', '2022-12-07 03:25:05', '2022-12-07 03:25:05'),
(15, 'https://api.raphitajayamandiri.com/1670383508840-Vyrtych-EXTEND-Ex-P-LED-img3.png', '2022-12-07 03:25:08', '2022-12-07 03:25:08'),
(16, 'https://api.raphitajayamandiri.com/1670383512615-Vyrtych-EXTEND-Ex-P-LED-img4.png', '2022-12-07 03:25:12', '2022-12-07 03:25:12'),
(17, 'https://api.raphitajayamandiri.com/1670383516049-Vyrtych-EXTEND-Ex-P-LED-img5.png', '2022-12-07 03:25:16', '2022-12-07 03:25:16'),
(18, 'https://api.raphitajayamandiri.com/1670383520007-Vyrtych-EXTEND-Ex-P-LED-img6.png', '2022-12-07 03:25:20', '2022-12-07 03:25:20'),
(19, 'https://api.raphitajayamandiri.com/1670383565050-Vyrtych-EXTRA-Ex-LED-img1.png', '2022-12-07 03:26:05', '2022-12-07 03:26:05'),
(20, 'https://api.raphitajayamandiri.com/1670383568699-Vyrtych-EXTRA-Ex-LED-img2.png', '2022-12-07 03:26:08', '2022-12-07 03:26:08'),
(21, 'https://api.raphitajayamandiri.com/1670383572271-Vyrtych-EXTRA-Ex-LED-img3.png', '2022-12-07 03:26:12', '2022-12-07 03:26:12'),
(22, 'https://api.raphitajayamandiri.com/1670383576855-Vyrtych-EXTRA-Ex-LED-img4.png', '2022-12-07 03:26:16', '2022-12-07 03:26:16'),
(23, 'https://api.raphitajayamandiri.com/1670383581597-Vyrtych-EXTRA-Ex-LED-img5.png', '2022-12-07 03:26:21', '2022-12-07 03:26:21'),
(24, 'https://api.raphitajayamandiri.com/1670383591850-Vyrtych-EXTRA-Ex-LED-img5.png', '2022-12-07 03:26:31', '2022-12-07 03:26:31'),
(25, 'https://api.raphitajayamandiri.com/1670383596642-Vyrtych-EXTRA-Ex-LED-img6.png', '2022-12-07 03:26:36', '2022-12-07 03:26:36'),
(26, 'https://api.raphitajayamandiri.com/1670383631601-Vyrtych-EXTRA-N-LED-img1.png', '2022-12-07 03:27:11', '2022-12-07 03:27:11'),
(27, 'https://api.raphitajayamandiri.com/1670383635067-Vyrtych-EXTRA-N-LED-img2.png', '2022-12-07 03:27:15', '2022-12-07 03:27:15'),
(28, 'https://api.raphitajayamandiri.com/1670383638563-Vyrtych-EXTRA-N-LED-img3.png', '2022-12-07 03:27:18', '2022-12-07 03:27:18'),
(29, 'https://api.raphitajayamandiri.com/1670383642163-Vyrtych-EXTRA-N-LED-img4.png', '2022-12-07 03:27:22', '2022-12-07 03:27:22'),
(30, 'https://api.raphitajayamandiri.com/1670383648781-Vyrtych-EXTRA-N-LED-img5.png', '2022-12-07 03:27:28', '2022-12-07 03:27:28'),
(31, 'https://api.raphitajayamandiri.com/1670383654431-Vyrtych-EXTRA-N-LED-img6.png', '2022-12-07 03:27:34', '2022-12-07 03:27:34'),
(32, 'https://api.raphitajayamandiri.com/1670383658483-Vyrtych-EXTRA-N-LED-img7.png', '2022-12-07 03:27:38', '2022-12-07 03:27:38'),
(33, 'https://api.raphitajayamandiri.com/1670383702690-Vyrtych-FILA-N-LED-img1.png', '2022-12-07 03:28:22', '2022-12-07 03:28:22'),
(34, 'https://api.raphitajayamandiri.com/1670383707745-Vyrtych-FILA-N-LED-img2.png', '2022-12-07 03:28:27', '2022-12-07 03:28:27'),
(35, 'https://api.raphitajayamandiri.com/1670383711123-Vyrtych-FILA-N-LED-img3.png', '2022-12-07 03:28:31', '2022-12-07 03:28:31'),
(36, 'https://api.raphitajayamandiri.com/1670383746836-Vyrtych-GREY-N-LED-img1.png', '2022-12-07 03:29:06', '2022-12-07 03:29:06'),
(37, 'https://api.raphitajayamandiri.com/1670383750233-Vyrtych-GREY-N-LED-img2.png', '2022-12-07 03:29:10', '2022-12-07 03:29:10'),
(38, 'https://api.raphitajayamandiri.com/1670383752983-Vyrtych-GREY-N-LED-img3.png', '2022-12-07 03:29:12', '2022-12-07 03:29:12'),
(39, 'https://api.raphitajayamandiri.com/1670383867466-image13.png', '2022-12-07 03:31:07', '2022-12-07 03:31:07'),
(40, 'https://api.raphitajayamandiri.com/1670383874500-Vyrtych-NORD-N-LED-CG-img1.png', '2022-12-07 03:31:14', '2022-12-07 03:31:14'),
(41, 'https://api.raphitajayamandiri.com/1670383880357-Vyrtych-NORD-N-LED-CG-img2.png', '2022-12-07 03:31:20', '2022-12-07 03:31:20'),
(42, 'https://api.raphitajayamandiri.com/1670383920274-image13.png', '2022-12-07 03:32:00', '2022-12-07 03:32:00'),
(43, 'https://api.raphitajayamandiri.com/1670383923156-Vyrtych-NORD-N-LED-OPG-img1.png', '2022-12-07 03:32:03', '2022-12-07 03:32:03'),
(44, 'https://api.raphitajayamandiri.com/1670383926760-Vyrtych-NORD-N-LED-OPG-img2.png', '2022-12-07 03:32:06', '2022-12-07 03:32:06'),
(45, 'https://api.raphitajayamandiri.com/1670384001837-image15.png', '2022-12-07 03:33:21', '2022-12-07 03:33:21'),
(46, 'https://api.raphitajayamandiri.com/1670384006385-Vyrtych-PITBUL-Ex-LED-img1.png', '2022-12-07 03:33:26', '2022-12-07 03:33:26'),
(47, 'https://api.raphitajayamandiri.com/1670384012068-Vyrtych-PITBUL-Ex-LED-img2.png', '2022-12-07 03:33:32', '2022-12-07 03:33:32'),
(48, 'https://api.raphitajayamandiri.com/1670384049953-image15.png', '2022-12-07 03:34:09', '2022-12-07 03:34:09'),
(49, 'https://api.raphitajayamandiri.com/1670384054524-Vyrtych-PITBUL-N-LED-img1.png', '2022-12-07 03:34:14', '2022-12-07 03:34:14'),
(50, 'https://api.raphitajayamandiri.com/1670384058596-Vyrtych-PITBUL-N-LED-img2.png', '2022-12-07 03:34:18', '2022-12-07 03:34:18'),
(51, 'https://api.raphitajayamandiri.com/1670384061752-Vyrtych-PITBUL-N-LED-img4.png', '2022-12-07 03:34:21', '2022-12-07 03:34:21'),
(52, 'https://api.raphitajayamandiri.com/1670384104735-Vyrtych-RAMBO-Ex-LED-img1.png', '2022-12-07 03:35:04', '2022-12-07 03:35:04'),
(53, 'https://api.raphitajayamandiri.com/1670384108079-Vyrtych-RAMBO-Ex-LED-img2.png', '2022-12-07 03:35:08', '2022-12-07 03:35:08'),
(54, 'https://api.raphitajayamandiri.com/1670384112121-Vyrtych-RAMBO-Ex-LED-img3.png', '2022-12-07 03:35:12', '2022-12-07 03:35:12'),
(55, 'https://api.raphitajayamandiri.com/1670384115843-Vyrtych-RAMBO-Ex-LED-img4.png', '2022-12-07 03:35:15', '2022-12-07 03:35:15'),
(56, 'https://api.raphitajayamandiri.com/1670384119121-Vyrtych-RAMBO-Ex-LED-img5.png', '2022-12-07 03:35:19', '2022-12-07 03:35:19'),
(57, 'https://api.raphitajayamandiri.com/1670384154370-Vyrtych-SALUKA-N-LED-img1.png', '2022-12-07 03:35:54', '2022-12-07 03:35:54'),
(58, 'https://api.raphitajayamandiri.com/1670384159581-Vyrtych-SALUKA-N-LED-img2.png', '2022-12-07 03:35:59', '2022-12-07 03:35:59'),
(59, 'https://api.raphitajayamandiri.com/1670384162729-Vyrtych-SALUKA-N-LED-img3.png', '2022-12-07 03:36:02', '2022-12-07 03:36:02'),
(60, 'https://api.raphitajayamandiri.com/1670384167031-Vyrtych-SALUKA-N-LED-img4.png', '2022-12-07 03:36:07', '2022-12-07 03:36:07'),
(61, 'https://api.raphitajayamandiri.com/1670384170752-Vyrtych-SALUKA-N-LED-img5.png', '2022-12-07 03:36:10', '2022-12-07 03:36:10'),
(62, 'https://api.raphitajayamandiri.com/1670384175131-Vyrtych-SALUKA-N-LED-img6.png', '2022-12-07 03:36:15', '2022-12-07 03:36:15'),
(63, 'https://api.raphitajayamandiri.com/1670384245855-Sinoamigo-SO-NT2-2SERIES-img1.png', '2022-12-07 03:37:25', '2022-12-07 03:37:25'),
(64, 'https://api.raphitajayamandiri.com/1670384249671-Sinoamigo-SO-NT2-2SERIES-img2.png', '2022-12-07 03:37:29', '2022-12-07 03:37:29'),
(65, 'https://api.raphitajayamandiri.com/1670384253530-Sinoamigo-SO-NT2-2SERIES-img3.png', '2022-12-07 03:37:33', '2022-12-07 03:37:33'),
(66, 'https://api.raphitajayamandiri.com/1670384257703-Sinoamigo-SO-NT2-2SERIES-img4.png', '2022-12-07 03:37:37', '2022-12-07 03:37:37'),
(67, 'https://api.raphitajayamandiri.com/1670384261175-Sinoamigo-SO-NT2-2SERIES-img5.png', '2022-12-07 03:37:41', '2022-12-07 03:37:41'),
(68, 'https://api.raphitajayamandiri.com/1670384265538-Sinoamigo-SO-NT2-2SERIES-img6.png', '2022-12-07 03:37:45', '2022-12-07 03:37:45'),
(69, 'https://api.raphitajayamandiri.com/1670384269255-Sinoamigo-SO-NT2-2SERIES-img7.png', '2022-12-07 03:37:49', '2022-12-07 03:37:49'),
(70, 'https://api.raphitajayamandiri.com/1670384326891-Sinoamigo-LEDSH-O1-img1.png', '2022-12-07 03:38:46', '2022-12-07 03:38:46'),
(71, 'https://api.raphitajayamandiri.com/1670384331962-Sinoamigo-LEDSH-O1-img2.png', '2022-12-07 03:38:51', '2022-12-07 03:38:51'),
(72, 'https://api.raphitajayamandiri.com/1670384335349-Sinoamigo-LEDSH-O1-img3.png', '2022-12-07 03:38:55', '2022-12-07 03:38:55'),
(73, 'https://api.raphitajayamandiri.com/1670384338768-Sinoamigo-LEDSH-O1-img4.png', '2022-12-07 03:38:58', '2022-12-07 03:38:58'),
(74, 'https://api.raphitajayamandiri.com/1670384341919-Sinoamigo-LEDSH-O1-img5.png', '2022-12-07 03:39:01', '2022-12-07 03:39:01'),
(75, 'https://api.raphitajayamandiri.com/1670384376874-Sinoamigo-LEDSF-M2-img1.png', '2022-12-07 03:39:36', '2022-12-07 03:39:36'),
(76, 'https://api.raphitajayamandiri.com/1670384380746-Sinoamigo-LEDSF-M2-img2.png', '2022-12-07 03:39:40', '2022-12-07 03:39:40'),
(77, 'https://api.raphitajayamandiri.com/1670384383811-Sinoamigo-LEDSF-M2-img3.png', '2022-12-07 03:39:43', '2022-12-07 03:39:43'),
(78, 'https://api.raphitajayamandiri.com/1670384387732-Sinoamigo-LEDSF-M2-img4.png', '2022-12-07 03:39:47', '2022-12-07 03:39:47'),
(79, 'https://api.raphitajayamandiri.com/1670384390798-Sinoamigo-LEDSF-M2-img5.png', '2022-12-07 03:39:50', '2022-12-07 03:39:50'),
(80, 'https://api.raphitajayamandiri.com/1670384394492-Sinoamigo-LEDSF-M2-img6.png', '2022-12-07 03:39:54', '2022-12-07 03:39:54'),
(81, 'https://api.raphitajayamandiri.com/1670384421944-Sinoamigo-IP65WaterproofSW06-img1.png', '2022-12-07 03:40:21', '2022-12-07 03:40:21'),
(82, 'https://api.raphitajayamandiri.com/1670384424576-Sinoamigo-IP65WaterproofSW06-img1-1.png', '2022-12-07 03:40:24', '2022-12-07 03:40:24'),
(83, 'https://api.raphitajayamandiri.com/1670384427734-Sinoamigo-IP65WaterproofSW06-img2.png', '2022-12-07 03:40:27', '2022-12-07 03:40:27'),
(84, 'https://api.raphitajayamandiri.com/1670384431125-Sinoamigo-IP65WaterproofSW06-img3.png', '2022-12-07 03:40:31', '2022-12-07 03:40:31'),
(85, 'https://api.raphitajayamandiri.com/1670384460679-Sinoamigo-LEDSH60120120W-img1.png', '2022-12-07 03:41:00', '2022-12-07 03:41:00'),
(86, 'https://api.raphitajayamandiri.com/1670384463856-Sinoamigo-LEDSH60120120W-img2.png', '2022-12-07 03:41:03', '2022-12-07 03:41:03'),
(87, 'https://api.raphitajayamandiri.com/1670384468094-Sinoamigo-LEDSH60120120W-img3.png', '2022-12-07 03:41:08', '2022-12-07 03:41:08'),
(88, 'https://api.raphitajayamandiri.com/1670384497762-Sinoamigo-LEDSH-C2SeriesIP65-img1.png', '2022-12-07 03:41:37', '2022-12-07 03:41:37'),
(89, 'https://api.raphitajayamandiri.com/1670384502139-Sinoamigo-LEDSH-C2SeriesIP65-img2.png', '2022-12-07 03:41:42', '2022-12-07 03:41:42'),
(90, 'https://api.raphitajayamandiri.com/1670384504556-Sinoamigo-LEDSH-C2SeriesIP65-img3.png', '2022-12-07 03:41:44', '2022-12-07 03:41:44'),
(91, 'https://api.raphitajayamandiri.com/1670384511151-Sinoamigo-LEDSH-C2SeriesIP65-img4.png', '2022-12-07 03:41:51', '2022-12-07 03:41:51'),
(92, 'https://api.raphitajayamandiri.com/1670384514490-Sinoamigo-LEDSH-C2SeriesIP65-img5.png', '2022-12-07 03:41:54', '2022-12-07 03:41:54'),
(93, 'https://api.raphitajayamandiri.com/1670384518003-Sinoamigo-LEDSH-C2SeriesIP65-img6.png', '2022-12-07 03:41:58', '2022-12-07 03:41:58'),
(94, 'https://api.raphitajayamandiri.com/1670384521742-Sinoamigo-LEDSH-C2SeriesIP65-img7.png', '2022-12-07 03:42:01', '2022-12-07 03:42:01'),
(95, 'https://api.raphitajayamandiri.com/1670384558989-Sinoamigo-LEDSL-R2Series-img1.png', '2022-12-07 03:42:38', '2022-12-07 03:42:38'),
(96, 'https://api.raphitajayamandiri.com/1670384562029-Sinoamigo-LEDSL-R2Series-img2.png', '2022-12-07 03:42:42', '2022-12-07 03:42:42'),
(97, 'https://api.raphitajayamandiri.com/1670384565176-Sinoamigo-LEDSL-R2Series-img3.png', '2022-12-07 03:42:45', '2022-12-07 03:42:45'),
(98, 'https://api.raphitajayamandiri.com/1670384568276-Sinoamigo-LEDSL-R2Series-img4.png', '2022-12-07 03:42:48', '2022-12-07 03:42:48'),
(99, 'https://api.raphitajayamandiri.com/1670384571629-Sinoamigo-LEDSL-R2Series-img5.png', '2022-12-07 03:42:51', '2022-12-07 03:42:51'),
(100, 'https://api.raphitajayamandiri.com/1670384753099-TCM-RMMSeries-img1.png', '2022-12-07 03:45:53', '2022-12-07 03:45:53'),
(101, 'https://api.raphitajayamandiri.com/1670384757018-TCM-RMMSeries-img2.png', '2022-12-07 03:45:57', '2022-12-07 03:45:57'),
(102, 'https://api.raphitajayamandiri.com/1670384759939-TCM-RMMSeries-img3.png', '2022-12-07 03:45:59', '2022-12-07 03:45:59'),
(103, 'https://api.raphitajayamandiri.com/1670384763704-TCM-RMMSeries-img4.png', '2022-12-07 03:46:03', '2022-12-07 03:46:03'),
(104, 'https://api.raphitajayamandiri.com/1670384776139-TCM-RMMSeries-img5.png', '2022-12-07 03:46:16', '2022-12-07 03:46:16'),
(105, 'https://api.raphitajayamandiri.com/1670384780325-TCM-RMMSeries-img6.png', '2022-12-07 03:46:20', '2022-12-07 03:46:20'),
(106, 'https://api.raphitajayamandiri.com/1670384783605-TCM-RMMSeries-img7.png', '2022-12-07 03:46:23', '2022-12-07 03:46:23'),
(107, 'https://api.raphitajayamandiri.com/1670384787142-TCM-RMMSeries-img8.png', '2022-12-07 03:46:27', '2022-12-07 03:46:27'),
(108, 'https://api.raphitajayamandiri.com/1670384821356-TCM-RMMDummySeries-img1.png', '2022-12-07 03:47:01', '2022-12-07 03:47:01'),
(109, 'https://api.raphitajayamandiri.com/1670384823844-TCM-RMMDummySeries-img2.png', '2022-12-07 03:47:03', '2022-12-07 03:47:03'),
(110, 'https://api.raphitajayamandiri.com/1670384827344-TCM-RMMDummySeries-img3.png', '2022-12-07 03:47:07', '2022-12-07 03:47:07'),
(111, 'https://api.raphitajayamandiri.com/1670384830089-TCM-RMMDummySeries-img4.png', '2022-12-07 03:47:10', '2022-12-07 03:47:10'),
(112, 'https://api.raphitajayamandiri.com/1670384834217-TCM-RMMDummySeries-img4.png', '2022-12-07 03:47:14', '2022-12-07 03:47:14'),
(113, 'https://api.raphitajayamandiri.com/1670384837345-TCM-RMMDummySeries-img5.png', '2022-12-07 03:47:17', '2022-12-07 03:47:17'),
(114, 'https://api.raphitajayamandiri.com/1670384841815-TCM-RMMDummySeries-img6.png', '2022-12-07 03:47:21', '2022-12-07 03:47:21'),
(115, 'https://api.raphitajayamandiri.com/1670384844970-TCM-RMMDummySeries-img7.png', '2022-12-07 03:47:24', '2022-12-07 03:47:24'),
(116, 'https://api.raphitajayamandiri.com/1670384848289-TCM-RMMDummySeries-img8.png', '2022-12-07 03:47:28', '2022-12-07 03:47:28'),
(117, 'https://api.raphitajayamandiri.com/1670384884546-TCM-RMMDiffuserSeries-img1.png', '2022-12-07 03:48:04', '2022-12-07 03:48:04'),
(118, 'https://api.raphitajayamandiri.com/1670384887232-TCM-RMMDiffuserSeries-img2.png', '2022-12-07 03:48:07', '2022-12-07 03:48:07'),
(119, 'https://api.raphitajayamandiri.com/1670384889828-TCM-RMMDiffuserSeries-img3.png', '2022-12-07 03:48:09', '2022-12-07 03:48:09'),
(120, 'https://api.raphitajayamandiri.com/1670384895229-TCM-RMMDiffuserSeries-img4.png', '2022-12-07 03:48:15', '2022-12-07 03:48:15'),
(121, 'https://api.raphitajayamandiri.com/1670384897717-TCM-RMMDiffuserSeries-img5.png', '2022-12-07 03:48:17', '2022-12-07 03:48:17'),
(122, 'https://api.raphitajayamandiri.com/1670384900668-TCM-RMMDiffuserSeries-img6.png', '2022-12-07 03:48:20', '2022-12-07 03:48:20'),
(123, 'https://api.raphitajayamandiri.com/1670384904868-TCM-RMMDiffuserSeries-img7.png', '2022-12-07 03:48:24', '2022-12-07 03:48:24'),
(124, 'https://api.raphitajayamandiri.com/1670384909471-TCM-RMMDiffuserSeries-img8.png', '2022-12-07 03:48:29', '2022-12-07 03:48:29'),
(125, 'https://api.raphitajayamandiri.com/1670384950777-TCM-LightTKISeries-img1.png', '2022-12-07 03:49:10', '2022-12-07 03:49:10'),
(126, 'https://api.raphitajayamandiri.com/1670384953954-TCM-LightTKISeries-img2.png', '2022-12-07 03:49:13', '2022-12-07 03:49:13'),
(127, 'https://api.raphitajayamandiri.com/1670384956978-TCM-LightTKISeries-img3.png', '2022-12-07 03:49:16', '2022-12-07 03:49:16'),
(128, 'https://api.raphitajayamandiri.com/1670384960780-TCM-LightTKISeries-img4.png', '2022-12-07 03:49:20', '2022-12-07 03:49:20'),
(129, 'https://api.raphitajayamandiri.com/1670385171089-TCM-RMM5T5-img1.png', '2022-12-07 03:52:51', '2022-12-07 03:52:51'),
(130, 'https://api.raphitajayamandiri.com/1670385174896-TCM-RMM5T5-img2.png', '2022-12-07 03:52:54', '2022-12-07 03:52:54'),
(131, 'https://api.raphitajayamandiri.com/1670385212429-TCM-SMM5-img1.png', '2022-12-07 03:53:32', '2022-12-07 03:53:32'),
(132, 'https://api.raphitajayamandiri.com/1670385215733-TCM-SMM5-img2.png', '2022-12-07 03:53:35', '2022-12-07 03:53:35'),
(133, 'https://api.raphitajayamandiri.com/1670385304036-TCM-LightBALKSeries-img1.png', '2022-12-07 03:55:04', '2022-12-07 03:55:04'),
(134, 'https://api.raphitajayamandiri.com/1670385307683-TCM-LightBALKSeries-img2.png', '2022-12-07 03:55:07', '2022-12-07 03:55:07'),
(135, 'https://api.raphitajayamandiri.com/1670385310512-TCM-LightBALKSeries-img3.png', '2022-12-07 03:55:10', '2022-12-07 03:55:10'),
(136, 'https://api.raphitajayamandiri.com/1670385313814-TCM-LightBALKSeries-img4.png', '2022-12-07 03:55:13', '2022-12-07 03:55:13'),
(137, 'https://api.raphitajayamandiri.com/1670385358274-TCM-LightGMSSeries-img1.png', '2022-12-07 03:55:58', '2022-12-07 03:55:58'),
(138, 'https://api.raphitajayamandiri.com/1670385361304-TCM-LightGMSSeries-img2.png', '2022-12-07 03:56:01', '2022-12-07 03:56:01'),
(139, 'https://api.raphitajayamandiri.com/1670385364526-TCM-LightGMSSeries-img3.png', '2022-12-07 03:56:04', '2022-12-07 03:56:04'),
(140, 'https://api.raphitajayamandiri.com/1670385367891-TCM-LightGMSSeries-img3.png', '2022-12-07 03:56:07', '2022-12-07 03:56:07'),
(141, 'https://api.raphitajayamandiri.com/1670385371303-TCM-LightGMSSeries-img4.png', '2022-12-07 03:56:11', '2022-12-07 03:56:11'),
(142, 'https://api.raphitajayamandiri.com/1670385416292-TCM-LightV-ShapeSeries-img1.png', '2022-12-07 03:56:56', '2022-12-07 03:56:56'),
(143, 'https://api.raphitajayamandiri.com/1670385419107-TCM-LightV-ShapeSeries-img2.png', '2022-12-07 03:56:59', '2022-12-07 03:56:59'),
(144, 'https://api.raphitajayamandiri.com/1670385421915-TCM-LightV-ShapeSeries-img3.png', '2022-12-07 03:57:01', '2022-12-07 03:57:01'),
(145, 'https://api.raphitajayamandiri.com/1670385425825-TCM-LightV-ShapeSeries-img4.png', '2022-12-07 03:57:05', '2022-12-07 03:57:05'),
(146, 'https://api.raphitajayamandiri.com/1670385447948-TCM-TKOSeries-img1.png', '2022-12-07 03:57:27', '2022-12-07 03:57:27'),
(147, 'https://api.raphitajayamandiri.com/1670385451008-TCM-TKOSeries-img2.png', '2022-12-07 03:57:31', '2022-12-07 03:57:31'),
(148, 'https://api.raphitajayamandiri.com/1670385453588-TCM-TKOSeries-img3.png', '2022-12-07 03:57:33', '2022-12-07 03:57:33'),
(149, 'https://api.raphitajayamandiri.com/1670385456181-TCM-TKOSeries-img4.png', '2022-12-07 03:57:36', '2022-12-07 03:57:36'),
(150, 'https://api.raphitajayamandiri.com/1670385461874-TCM-TKOSeries-img5.png', '2022-12-07 03:57:41', '2022-12-07 03:57:41'),
(151, 'https://api.raphitajayamandiri.com/1670385464997-TCM-TKOSeries-img6.png', '2022-12-07 03:57:44', '2022-12-07 03:57:44'),
(152, 'https://api.raphitajayamandiri.com/1670385505609-TCM-DustProof-img1.png', '2022-12-07 03:58:25', '2022-12-07 03:58:25'),
(153, 'https://api.raphitajayamandiri.com/1670385508935-TCM-DustProof-img2.png', '2022-12-07 03:58:28', '2022-12-07 03:58:28'),
(154, 'https://api.raphitajayamandiri.com/1670385670233-TCM-LightCPOBSeries-img1.png', '2022-12-07 04:01:10', '2022-12-07 04:01:10'),
(155, 'https://api.raphitajayamandiri.com/1670385683505-TCM-LightCPOBSeries-img2.png', '2022-12-07 04:01:23', '2022-12-07 04:01:23'),
(156, 'https://api.raphitajayamandiri.com/1670385686893-TCM-LightCPOBSeries-img3.png', '2022-12-07 04:01:26', '2022-12-07 04:01:26'),
(157, 'https://api.raphitajayamandiri.com/1670385690554-TCM-LightCPOBSeries-img4.png', '2022-12-07 04:01:30', '2022-12-07 04:01:30'),
(158, 'https://api.raphitajayamandiri.com/1670385727152-TCM-RoundBaret-img1.png', '2022-12-07 04:02:07', '2022-12-07 04:02:07'),
(159, 'https://api.raphitajayamandiri.com/1670385731012-TCM-RoundBaret-img2.png', '2022-12-07 04:02:11', '2022-12-07 04:02:11'),
(160, 'https://api.raphitajayamandiri.com/1670385766162-TCM-UfoBaret-img1.png', '2022-12-07 04:02:46', '2022-12-07 04:02:46'),
(161, 'https://api.raphitajayamandiri.com/1670385769110-TCM-UfoBaret-img2.png', '2022-12-07 04:02:49', '2022-12-07 04:02:49'),
(162, 'https://api.raphitajayamandiri.com/1670385878645-TCM-SquareBaret-img1.png', '2022-12-07 04:04:38', '2022-12-07 04:04:38'),
(163, 'https://api.raphitajayamandiri.com/1670385882151-TCM-SquareBaret-img2.png', '2022-12-07 04:04:42', '2022-12-07 04:04:42'),
(164, 'https://api.raphitajayamandiri.com/1670385908455-TCM-ExitSlimLEDSeries-img1.png', '2022-12-07 04:05:08', '2022-12-07 04:05:08'),
(165, 'https://api.raphitajayamandiri.com/1670385913388-TCM-ExitSlimLEDSeries-img2.png', '2022-12-07 04:05:13', '2022-12-07 04:05:13'),
(166, 'https://api.raphitajayamandiri.com/1670385916187-TCM-ExitSlimLEDSeries-img3.png', '2022-12-07 04:05:16', '2022-12-07 04:05:16'),
(167, 'https://api.raphitajayamandiri.com/1670385918689-TCM-ExitSlimLEDSeries-img4.png', '2022-12-07 04:05:18', '2022-12-07 04:05:18'),
(168, 'https://api.raphitajayamandiri.com/1670385921854-TCM-ExitSlimLEDSeries-img5.png', '2022-12-07 04:05:21', '2022-12-07 04:05:21'),
(169, 'https://api.raphitajayamandiri.com/1670385925071-TCM-ExitSlimLEDSeries-img6.png', '2022-12-07 04:05:25', '2022-12-07 04:05:25'),
(170, 'https://api.raphitajayamandiri.com/1670385928223-TCM-ExitSlimLEDSeries-img7.png', '2022-12-07 04:05:28', '2022-12-07 04:05:28'),
(171, 'https://api.raphitajayamandiri.com/1670385960892-TCM-ExitSlimLEDSeries-img1.png', '2022-12-07 04:06:00', '2022-12-07 04:06:00'),
(172, 'https://api.raphitajayamandiri.com/1670385963680-TCM-ExitSlimLEDSeries-img2.png', '2022-12-07 04:06:03', '2022-12-07 04:06:03'),
(173, 'https://api.raphitajayamandiri.com/1670385966815-TCM-ExitSlimLEDSeries-img3.png', '2022-12-07 04:06:06', '2022-12-07 04:06:06'),
(174, 'https://api.raphitajayamandiri.com/1670385970547-TCM-ExitSlimLEDSeries-img4.png', '2022-12-07 04:06:10', '2022-12-07 04:06:10'),
(175, 'https://api.raphitajayamandiri.com/1670385978611-TCM-ExitSlimLEDSeries-img5.png', '2022-12-07 04:06:18', '2022-12-07 04:06:18'),
(176, 'https://api.raphitajayamandiri.com/1670385982682-TCM-ExitSlimLEDSeries-img6.png', '2022-12-07 04:06:22', '2022-12-07 04:06:22'),
(177, 'https://api.raphitajayamandiri.com/1670385986818-TCM-ExitSlimLEDSeries-img7.png', '2022-12-07 04:06:26', '2022-12-07 04:06:26');

-- --------------------------------------------------------

--
-- Table structure for table `mediaproducts`
--

CREATE TABLE `MediaProducts` (
  `id` int(11) NOT NULL,
  `mediaId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mediaproducts`
--

INSERT INTO `MediaProducts` (`id`, `mediaId`, `productId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2022-12-07 03:21:23', '2022-12-07 03:21:23'),
(2, 2, 1, '2022-12-07 03:21:28', '2022-12-07 03:21:28'),
(3, 3, 1, '2022-12-07 03:21:29', '2022-12-07 03:21:29'),
(4, 4, 1, '2022-12-07 03:21:30', '2022-12-07 03:21:30'),
(5, 5, 1, '2022-12-07 03:21:31', '2022-12-07 03:21:31'),
(6, 6, 2, '2022-12-07 03:23:41', '2022-12-07 03:23:41'),
(7, 7, 2, '2022-12-07 03:23:43', '2022-12-07 03:23:43'),
(8, 8, 2, '2022-12-07 03:23:44', '2022-12-07 03:23:44'),
(9, 9, 2, '2022-12-07 03:23:46', '2022-12-07 03:23:46'),
(10, 10, 2, '2022-12-07 03:23:48', '2022-12-07 03:23:48'),
(11, 11, 2, '2022-12-07 03:24:23', '2022-12-07 03:24:23'),
(12, 12, 2, '2022-12-07 03:24:24', '2022-12-07 03:24:24'),
(13, 13, 3, '2022-12-07 03:25:32', '2022-12-07 03:25:32'),
(14, 14, 3, '2022-12-07 03:25:34', '2022-12-07 03:25:34'),
(15, 15, 3, '2022-12-07 03:25:36', '2022-12-07 03:25:36'),
(16, 16, 3, '2022-12-07 03:25:38', '2022-12-07 03:25:38'),
(17, 17, 3, '2022-12-07 03:25:39', '2022-12-07 03:25:39'),
(18, 18, 3, '2022-12-07 03:25:40', '2022-12-07 03:25:40'),
(19, 19, 4, '2022-12-07 03:26:43', '2022-12-07 03:26:43'),
(20, 20, 4, '2022-12-07 03:26:46', '2022-12-07 03:26:46'),
(21, 21, 4, '2022-12-07 03:26:47', '2022-12-07 03:26:47'),
(22, 22, 4, '2022-12-07 03:26:48', '2022-12-07 03:26:48'),
(23, 23, 4, '2022-12-07 03:26:49', '2022-12-07 03:26:49'),
(24, 24, 4, '2022-12-07 03:26:51', '2022-12-07 03:26:51'),
(25, 25, 4, '2022-12-07 03:26:52', '2022-12-07 03:26:52'),
(26, 26, 5, '2022-12-07 03:27:59', '2022-12-07 03:27:59'),
(27, 27, 5, '2022-12-07 03:28:01', '2022-12-07 03:28:01'),
(28, 28, 5, '2022-12-07 03:28:03', '2022-12-07 03:28:03'),
(29, 29, 5, '2022-12-07 03:28:05', '2022-12-07 03:28:05'),
(30, 30, 5, '2022-12-07 03:28:07', '2022-12-07 03:28:07'),
(31, 31, 5, '2022-12-07 03:28:07', '2022-12-07 03:28:07'),
(32, 32, 5, '2022-12-07 03:28:08', '2022-12-07 03:28:08'),
(34, 33, 7, '2022-12-07 03:28:41', '2022-12-07 03:28:41'),
(35, 34, 7, '2022-12-07 03:28:44', '2022-12-07 03:28:44'),
(36, 35, 7, '2022-12-07 03:28:45', '2022-12-07 03:28:45'),
(41, 36, 8, '2022-12-07 03:29:50', '2022-12-07 03:29:50'),
(42, 37, 8, '2022-12-07 03:29:52', '2022-12-07 03:29:52'),
(43, 38, 8, '2022-12-07 03:29:55', '2022-12-07 03:29:55'),
(44, 39, 9, '2022-12-07 03:31:36', '2022-12-07 03:31:36'),
(45, 40, 9, '2022-12-07 03:31:39', '2022-12-07 03:31:39'),
(46, 41, 9, '2022-12-07 03:31:40', '2022-12-07 03:31:40'),
(48, 42, 10, '2022-12-07 03:32:15', '2022-12-07 03:32:15'),
(49, 43, 10, '2022-12-07 03:32:17', '2022-12-07 03:32:17'),
(50, 44, 10, '2022-12-07 03:32:19', '2022-12-07 03:32:19'),
(52, 45, 11, '2022-12-07 03:33:45', '2022-12-07 03:33:45'),
(53, 46, 11, '2022-12-07 03:33:48', '2022-12-07 03:33:48'),
(54, 47, 11, '2022-12-07 03:33:50', '2022-12-07 03:33:50'),
(56, 48, 12, '2022-12-07 03:34:31', '2022-12-07 03:34:31'),
(57, 49, 12, '2022-12-07 03:34:46', '2022-12-07 03:34:46'),
(58, 50, 12, '2022-12-07 03:34:47', '2022-12-07 03:34:47'),
(59, 51, 12, '2022-12-07 03:34:49', '2022-12-07 03:34:49'),
(61, 52, 13, '2022-12-07 03:35:30', '2022-12-07 03:35:30'),
(62, 53, 13, '2022-12-07 03:35:33', '2022-12-07 03:35:33'),
(63, 54, 13, '2022-12-07 03:35:34', '2022-12-07 03:35:34'),
(64, 55, 13, '2022-12-07 03:35:34', '2022-12-07 03:35:34'),
(65, 56, 13, '2022-12-07 03:35:35', '2022-12-07 03:35:35'),
(67, 57, 14, '2022-12-07 03:36:37', '2022-12-07 03:36:37'),
(68, 58, 14, '2022-12-07 03:36:40', '2022-12-07 03:36:40'),
(69, 59, 14, '2022-12-07 03:36:42', '2022-12-07 03:36:42'),
(70, 60, 14, '2022-12-07 03:36:44', '2022-12-07 03:36:44'),
(71, 61, 14, '2022-12-07 03:36:45', '2022-12-07 03:36:45'),
(72, 62, 14, '2022-12-07 03:36:46', '2022-12-07 03:36:46'),
(74, 63, 15, '2022-12-07 03:37:54', '2022-12-07 03:37:54'),
(75, 64, 15, '2022-12-07 03:37:56', '2022-12-07 03:37:56'),
(76, 65, 15, '2022-12-07 03:37:57', '2022-12-07 03:37:57'),
(77, 66, 15, '2022-12-07 03:37:58', '2022-12-07 03:37:58'),
(78, 67, 15, '2022-12-07 03:37:59', '2022-12-07 03:37:59'),
(79, 68, 15, '2022-12-07 03:38:01', '2022-12-07 03:38:01'),
(80, 69, 15, '2022-12-07 03:38:03', '2022-12-07 03:38:03'),
(82, 70, 16, '2022-12-07 03:39:06', '2022-12-07 03:39:06'),
(83, 71, 16, '2022-12-07 03:39:08', '2022-12-07 03:39:08'),
(84, 72, 16, '2022-12-07 03:39:09', '2022-12-07 03:39:09'),
(85, 73, 16, '2022-12-07 03:39:10', '2022-12-07 03:39:10'),
(86, 74, 16, '2022-12-07 03:39:11', '2022-12-07 03:39:11'),
(90, 75, 17, '2022-12-07 03:39:58', '2022-12-07 03:39:58'),
(91, 76, 17, '2022-12-07 03:40:01', '2022-12-07 03:40:01'),
(92, 77, 17, '2022-12-07 03:40:02', '2022-12-07 03:40:02'),
(93, 78, 17, '2022-12-07 03:40:03', '2022-12-07 03:40:03'),
(94, 79, 17, '2022-12-07 03:40:04', '2022-12-07 03:40:04'),
(95, 80, 17, '2022-12-07 03:40:06', '2022-12-07 03:40:06'),
(97, 81, 18, '2022-12-07 03:40:37', '2022-12-07 03:40:37'),
(98, 82, 18, '2022-12-07 03:40:39', '2022-12-07 03:40:39'),
(99, 83, 18, '2022-12-07 03:40:40', '2022-12-07 03:40:40'),
(100, 84, 18, '2022-12-07 03:40:42', '2022-12-07 03:40:42'),
(102, 85, 19, '2022-12-07 03:41:12', '2022-12-07 03:41:12'),
(103, 86, 19, '2022-12-07 03:41:15', '2022-12-07 03:41:15'),
(104, 87, 19, '2022-12-07 03:41:17', '2022-12-07 03:41:17'),
(106, 88, 20, '2022-12-07 03:42:06', '2022-12-07 03:42:06'),
(107, 89, 20, '2022-12-07 03:42:10', '2022-12-07 03:42:10'),
(108, 90, 20, '2022-12-07 03:42:12', '2022-12-07 03:42:12'),
(109, 91, 20, '2022-12-07 03:42:13', '2022-12-07 03:42:13'),
(110, 92, 20, '2022-12-07 03:42:14', '2022-12-07 03:42:14'),
(111, 93, 20, '2022-12-07 03:42:15', '2022-12-07 03:42:15'),
(112, 94, 20, '2022-12-07 03:42:16', '2022-12-07 03:42:16'),
(114, 95, 21, '2022-12-07 03:42:57', '2022-12-07 03:42:57'),
(115, 96, 21, '2022-12-07 03:43:00', '2022-12-07 03:43:00'),
(116, 97, 21, '2022-12-07 03:43:01', '2022-12-07 03:43:01'),
(117, 98, 21, '2022-12-07 03:43:02', '2022-12-07 03:43:02'),
(118, 99, 21, '2022-12-07 03:43:04', '2022-12-07 03:43:04'),
(120, 100, 22, '2022-12-07 03:46:31', '2022-12-07 03:46:31'),
(121, 101, 22, '2022-12-07 03:46:33', '2022-12-07 03:46:33'),
(122, 102, 22, '2022-12-07 03:46:34', '2022-12-07 03:46:34'),
(123, 103, 22, '2022-12-07 03:46:35', '2022-12-07 03:46:35'),
(124, 104, 22, '2022-12-07 03:46:36', '2022-12-07 03:46:36'),
(125, 105, 22, '2022-12-07 03:46:38', '2022-12-07 03:46:38'),
(126, 106, 22, '2022-12-07 03:46:40', '2022-12-07 03:46:40'),
(127, 107, 22, '2022-12-07 03:46:41', '2022-12-07 03:46:41'),
(129, 108, 23, '2022-12-07 03:47:34', '2022-12-07 03:47:34'),
(130, 109, 23, '2022-12-07 03:47:36', '2022-12-07 03:47:36'),
(131, 110, 23, '2022-12-07 03:47:39', '2022-12-07 03:47:39'),
(132, 111, 23, '2022-12-07 03:47:40', '2022-12-07 03:47:40'),
(133, 112, 23, '2022-12-07 03:47:41', '2022-12-07 03:47:41'),
(134, 113, 23, '2022-12-07 03:47:42', '2022-12-07 03:47:42'),
(135, 114, 23, '2022-12-07 03:47:43', '2022-12-07 03:47:43'),
(136, 115, 23, '2022-12-07 03:47:43', '2022-12-07 03:47:43'),
(137, 116, 23, '2022-12-07 03:47:44', '2022-12-07 03:47:44'),
(139, 117, 24, '2022-12-07 03:48:34', '2022-12-07 03:48:34'),
(140, 118, 24, '2022-12-07 03:48:36', '2022-12-07 03:48:36'),
(141, 119, 24, '2022-12-07 03:48:38', '2022-12-07 03:48:38'),
(142, 120, 24, '2022-12-07 03:48:39', '2022-12-07 03:48:39'),
(143, 121, 24, '2022-12-07 03:48:40', '2022-12-07 03:48:40'),
(144, 122, 24, '2022-12-07 03:48:41', '2022-12-07 03:48:41'),
(145, 123, 24, '2022-12-07 03:48:42', '2022-12-07 03:48:42'),
(146, 124, 24, '2022-12-07 03:48:43', '2022-12-07 03:48:43'),
(153, 125, 26, '2022-12-07 03:52:04', '2022-12-07 03:52:04'),
(154, 126, 26, '2022-12-07 03:52:05', '2022-12-07 03:52:05'),
(155, 127, 26, '2022-12-07 03:52:07', '2022-12-07 03:52:07'),
(156, 128, 26, '2022-12-07 03:52:08', '2022-12-07 03:52:08'),
(157, 129, 25, '2022-12-07 03:53:04', '2022-12-07 03:53:04'),
(158, 130, 25, '2022-12-07 03:53:07', '2022-12-07 03:53:07'),
(159, 131, 27, '2022-12-07 03:54:16', '2022-12-07 03:54:16'),
(160, 132, 27, '2022-12-07 03:54:17', '2022-12-07 03:54:17'),
(161, 133, 28, '2022-12-07 03:55:31', '2022-12-07 03:55:31'),
(162, 134, 28, '2022-12-07 03:55:34', '2022-12-07 03:55:34'),
(163, 135, 28, '2022-12-07 03:55:35', '2022-12-07 03:55:35'),
(164, 136, 28, '2022-12-07 03:55:36', '2022-12-07 03:55:36'),
(166, 137, 29, '2022-12-07 03:56:23', '2022-12-07 03:56:23'),
(167, 138, 29, '2022-12-07 03:56:32', '2022-12-07 03:56:32'),
(168, 139, 29, '2022-12-07 03:56:33', '2022-12-07 03:56:33'),
(169, 140, 29, '2022-12-07 03:56:34', '2022-12-07 03:56:34'),
(170, 141, 29, '2022-12-07 03:56:35', '2022-12-07 03:56:35'),
(172, 142, 30, '2022-12-07 03:57:09', '2022-12-07 03:57:09'),
(173, 143, 30, '2022-12-07 03:57:11', '2022-12-07 03:57:11'),
(174, 144, 30, '2022-12-07 03:57:12', '2022-12-07 03:57:12'),
(175, 145, 30, '2022-12-07 03:57:13', '2022-12-07 03:57:13'),
(177, 146, 31, '2022-12-07 03:57:48', '2022-12-07 03:57:48'),
(178, 147, 31, '2022-12-07 03:57:52', '2022-12-07 03:57:52'),
(179, 148, 31, '2022-12-07 03:57:53', '2022-12-07 03:57:53'),
(180, 149, 31, '2022-12-07 03:57:54', '2022-12-07 03:57:54'),
(181, 150, 31, '2022-12-07 03:57:56', '2022-12-07 03:57:56'),
(182, 151, 31, '2022-12-07 03:57:59', '2022-12-07 03:57:59'),
(184, 152, 32, '2022-12-07 03:58:53', '2022-12-07 03:58:53'),
(185, 153, 32, '2022-12-07 03:59:01', '2022-12-07 03:59:01'),
(187, 154, 33, '2022-12-07 04:01:34', '2022-12-07 04:01:34'),
(188, 155, 33, '2022-12-07 04:01:44', '2022-12-07 04:01:44'),
(189, 156, 33, '2022-12-07 04:01:45', '2022-12-07 04:01:45'),
(190, 157, 33, '2022-12-07 04:01:46', '2022-12-07 04:01:46'),
(192, 158, 34, '2022-12-07 04:02:16', '2022-12-07 04:02:16'),
(193, 159, 34, '2022-12-07 04:02:19', '2022-12-07 04:02:19'),
(195, 160, 35, '2022-12-07 04:03:05', '2022-12-07 04:03:05'),
(196, 161, 35, '2022-12-07 04:03:08', '2022-12-07 04:03:08'),
(199, 162, 36, '2022-12-07 04:04:47', '2022-12-07 04:04:47'),
(200, 163, 36, '2022-12-07 04:04:48', '2022-12-07 04:04:48'),
(202, 164, 37, '2022-12-07 04:05:31', '2022-12-07 04:05:31'),
(203, 165, 37, '2022-12-07 04:05:34', '2022-12-07 04:05:34'),
(204, 166, 37, '2022-12-07 04:05:35', '2022-12-07 04:05:35'),
(205, 167, 37, '2022-12-07 04:05:36', '2022-12-07 04:05:36'),
(206, 168, 37, '2022-12-07 04:05:37', '2022-12-07 04:05:37'),
(207, 169, 37, '2022-12-07 04:05:38', '2022-12-07 04:05:38'),
(208, 170, 37, '2022-12-07 04:05:41', '2022-12-07 04:05:41'),
(210, 171, 38, '2022-12-07 04:06:31', '2022-12-07 04:06:31'),
(211, 172, 38, '2022-12-07 04:06:34', '2022-12-07 04:06:34'),
(212, 173, 38, '2022-12-07 04:06:35', '2022-12-07 04:06:35'),
(213, 174, 38, '2022-12-07 04:06:35', '2022-12-07 04:06:35'),
(214, 175, 38, '2022-12-07 04:06:36', '2022-12-07 04:06:36'),
(215, 176, 38, '2022-12-07 04:06:37', '2022-12-07 04:06:37'),
(216, 177, 38, '2022-12-07 04:06:38', '2022-12-07 04:06:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `brandId` int(11) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `brightness` varchar(255) DEFAULT NULL,
  `watt` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `materials` varchar(255) DEFAULT NULL,
  `iprating` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `Products` (`id`, `product_name`, `brandId`, `summary`, `brightness`, `watt`, `type`, `materials`, `iprating`, `title`, `subtitle`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Lampu Luminaire LED AQUA-70-Ex-LED', 1, 'Seri luminer LED tipe AQUA-70-Ex-LED merupakan lampu yang tahan debu dan kedap air dengan ketahanan khusus yang dirancang untuk area penerangan dengan bahaya ledakan (explosion proof). Lampu dari brand Vyrtych ini sudah tersertifikasi FTZU 17 ATE X 0052X ', '4000K, CRI +80', '110-254 V, 50-60 Hz AC', 'Industrial Light', 'Polycarbonate', 'IP68', NULL, 'https://drive.google.com/uc?export=download&id=1FxkB0jZTq2onH7F5Hz7o7sWVhg6NLzNd', '<b>Deskripsi produk</b><br>Seri luminer LED tipe AQUA-70-Ex-LED merupakan lampu dari brand Vyrtich yang tahan debu dan kedap air dengan ketahanan khusus yang dirancang untuk area penerangan dengan bahaya ledakan (explosion proof). Lampu dari brand Vyrtych ini sudah tersertifikasi FTZU 17 ATE X 0052X oleh FTZÚ Ostrava-Radvanice.<br><br><b>Ballast:</b><br>Electronic 110-254 V, 50-60 Hz AC , 220-250 V, 0 Hz DC<br><br><b>Light source:</b><br>LED, 4000K, CRI +80<br><br><b>Body:</b><br>Tabung plastik dengan diameter luar 70 mm dan tebal dinding 4 mm berbahan PC – IK10 (polycarbonate), warna transparan<br><br><b>Pemasangan:</b><br>Kencangkan di atap (langit-langit) atau dinding dengan menggunakan mounting bracket atau suspension bracket.<br><br><b>Connection:</b><br>Screwless three-pole terminal block, max. cross section of wires 4,0 mm2<br><br><b>Peralatan standar:</b><br>1pc Ex plastic cable gland M20x1,5 for diameter of cable 7-13mm, 1pc Ex plastic sealing plug<br><br><b>Masa pakai yang dihitung – modul LED:</b><br>L80B50 ta50 – 45 000 jam', '2022-12-05 07:50:48', '2022-12-05 07:50:48'),
(2, 'Lighting Fixture BASET-N-LED', 1, 'Seri lighting fixture tahan debu tipe BASET-N-LED dengan ketahanan percikan air dirancang untuk penerangan area dengan bahaya ledakan (explosion proof). Fixture lighting dari Vyrtych ini telah disertifikasi oleh FTZU Ostrava-Radvanice (tipe sertifikat FTZ', '4000K, CRI +80', '220 – 240 V, 50/60 Hz', 'Industrial Light', 'Polycarbonate', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1dclDvUnyjphN3J3lwWmLOKTpfW9SbRSU', 'Ballast:<br>EP – electronic - 220 – 240 V, 50/60 Hz, 220 – 240 V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>Bahan plastik PC (polycarbonate), warna abu-abu RAL 7035<br><br>Bahan Diffuser:<br>PC (polycarbonate) opal<br><br>Pemasangan:<br>Pasang di atap (langit-langit) atau dinding permukaan dengan menggunakan dua braket pengencang yang dapat mengunci sendiri (peralatan standar), suspensi dengan kawat atau suspender kabel.<br><br>Connections:<br>Screwless three-pole terminal block, maximum diameter of wires 2.5 mm2<br><br>Peralatan standar:<br>1 pc EX cable gland M20 for diameter of cable 7-12mm including sealing, 3x EX sealing plug, 2 pcs fastening bracket, set of pictograms (only for emergency versions - MULTI / Em)<br><br>Calculated lifetime – LED modules:<br>L80B10 ta30 – 60.000 jamL70B10 ta30 – 90.000 jam', '2022-12-06 14:47:41', '2022-12-06 14:47:41'),
(3, 'Lampu Luminaire EXTEND-Ex-P-LED', 1, 'Seri lampu luminer tahan debu tipe EXTEND-Ex-P-LED dengan ketahanan terhadap percikan air yang ditentukan untuk area penerangan dengan bahaya ledakan (explosion proof). Lampu luminer dari Vyrtych ini telah bersertifikat FTZÚ 16 ATEX 0080X oleh FTZÚ Ostrav', '4000K, CRI +80', '110 – 254V, 50/60Hz', 'Industrial Light', 'Polystyr', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1jOuDMtuDwKTnjVILs9aDyBT1HvBcCc50', 'Ballast:<br>Electronic ballast 110 – 254V, 50/60Hz AC; 220 – 250V, 0Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80<br><br>Bahan Body:<br>Bahan plastik GRP (polystyr diisi dengan fiberglass), RAL7035 (grey)<br><br>Bahan Cover:<br>PC (polycarbonate), transparent<br><br>Pemasangan:<br>Pasang langsung pada atap (langit-langit) atau dinding dengan set bracket stainless steel langit-langit, dengan set braket tiang atau suspensi dengan braket suspensi.<br><br>Connection:<br>Screwless terminal block, max. cross section of wires 4,0mm2; light fixture is ready to looping (option to connect two cables, order additional cable gland)<br><br>Peralatan standar:<br>1pc explosion-proof plastic cable gland M25x1,5 (standar untuk diameter kabel 12-18mm), 2pcs explosion-proof plastic plugs M25x1,5, double clamp of cable<br><br>Masa pakai yang dihitung – modul LED:<br>L80B50 ta55 – 50.000 jam', '2022-12-06 14:47:50', '2022-12-06 14:47:50'),
(4, 'Lampu Luminaire EXTRA-Ex-LED', 1, 'Seri lampu luminer tahan debu tipe EXTRA-Ex-LED dengan ketahanan terhadap percikan air ditentukan untuk area penerangan dengan bahaya ledakan (explosion proof). Lampu luminer dari brand Vyrtych ini telah disertifikasi oleh FTZÚ Ostrava-Radvanice (sertifik', '4000K, CRI +80', '110 – 254V, 50/60Hz', 'Industrial Light', 'Polycarbonate', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1fA9stHztC2OxwWoFRMKKumCzY84TbU8k', 'Ballast:<br>Electronic ballast 110 – 254V, 50/60Hz AC; 220 – 250V, 0Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80<br><br>Bahan Body:<br>Bahan plastik GRP (polystyr diisi dengan fiberglass), RAL7035 (grey)<br><br>Bahan Cover:<br>PC (polycarbonate), transparent<br><br>Pemasangan:<br>Pasang langsung pada atap (langit-langit) atau dinding dengan set bracket stainless steel langit-langit, dengan set braket tiang atau suspensi dengan braket suspensi.<br><br>Connection:<br>Screwless terminal block, max. cross section of wires 4,0mm2; light fixture is ready to looping (option to connect two cables, order additional cable gland)<br><br>Peralatan standar:<br>1pc explosion-proof plastic cable gland M25x1,5 (standar untuk diameter kabel 12-18mm), 2pcs explosion-proof plastic plugs M25x1,5, double clamp of cable<br><br>Masa pakai yang dihitung – modul LED:<br>L80B50 ta55 – 50.000 jam', '2022-12-06 14:47:58', '2022-12-06 14:47:58'),
(5, 'Lighting Fixture EXTRA-N-LED', 1, 'Seri pencahayaan fixture tahan debu tipe EXTRA-N-LED dengan ketahanan percikan air dirancang untuk penerangan area dengan bahaya ledakan (explosion proof). Lampu fixture dari brand Vyrtych ini sudah memiliki sertifikat tipe sertifikat FTZU 16 ATEX 0102X y', '4000K, CRI +80', '220 – 240 V, 50/60 Hz', 'Industrial Light', 'Polycarbonate', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1h9FO17wT8Z37Rw1irA3hajoAFHhsLNYR', 'Ballast:<br>EP – electronic 220 – 240 V, 50/60 Hz, 220 – 240 V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>Plastic material PC (polycarbonate), grey colour RAL 7035<br><br>Bahan Diffuser:<br>PC (polycarbonate) opal<br><br>Pemasangan:<br>Pasang di atap (langit-langit) atau dinding permukaan dengan menggunakan dua braket pengencang yang dapat mengunci sendiri (peralatan standar) atau satu set braket dinding - sudut 45°, pemasangan tiang melalui set braket tiang, suspensi dengan kawat atau suspender kabel.<br><br>Connection:<br>Screwless three-pole terminal block, maximum diameter of wires 2.5 mm2<br><br>Peralatan standar:<br>1pc EX plastic cable gland M20x1.5 (as a standard for diameter of cable 7-12mm), 1 pc EX plastic plug M20x1.5, 2 pcs stainless steel fastening bracket-AISI 304, stainless clips, double cable clip.<br><br>Calculated lifetime – LED modules:<br>L80B10 ta30 – 70.000 jamL70B10 ta30 – 100 000 jam', '2022-12-06 14:48:05', '2022-12-06 14:48:05'),
(7, 'Lighting Fixture FILA-N-LED', 1, 'Seri pencahayaan fixture tersembunyi (recessed lighting fixture) tahan debu tipe FILA-N-LED dengan ketahanan air percikan dirancang untuk area dengan bahaya ledakan (explosion proof). Lampu ini dapat digunakan terutama di kabin, bengkel atau workshop. Ser', '4000K, CRI +80', '220-240V/50-60Hz', 'Industrial Light', 'Tempered Safety Glass', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1zkuFJ_akJ3Ixg8et6oHkwt_1KDIRw-Wc', 'Ballast:<br>EVG – electronic 220-240V/50-60Hz AC, EVG – electronic 220-240V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>Painted steel sheet RAL 9003<br><br>Bahan Cover:<br>OP – opal tempered safety glass<br><br>Bahan Reflector:<br>Painted steel sheet RAL 9003<br><br>Pemasangan:<br>Pasang di atap (langit-langit) secara tersembunyi atau pasang di permukaan menggunakan rangka pemasangan<br><br>Connection:<br>Screwed connecting terminal block, maximum cable cross section 2.5 mm2<br><br>Peralatan standar:<br>2 pcs EX M20 cable glands for diameter of cable 7-12mm and 3 pcs EX M20 sealing plug<br><br>Calculated life time of LED modules:<br>L80B10 ta35 – 70.000 jamL70B10 ta35 – 100.000 jam', '2022-12-06 14:48:14', '2022-12-06 14:48:14'),
(8, 'Reflector Lighting GREY-N-LED', 1, 'Seri lampu pencahayaan reflektor tahan debu tipe GREY-N-LED dengan tingkat perlindungan IP66 dirancang untuk penerangan area dengan bahaya ledakan (explosion proof), seperti gudang dan area kerja di luar ruangan. Lampu pencahayaan dari brand Vyrtych ini t', '4000K, CRI +70', '220–240V/5060Hz', 'Industrial Light', 'Aluminium Casting & Glass', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1ypavxMhZNvhEeDm_feUrz0iidzrGjcw-', 'Ballast:<br>EP – electronic 220–240V/5060Hz<br><br>Light source:<br>LED, 4000K, CRI +70, MacAdam3<br><br>Bahan Housing:<br>Aluminium casting, black colour, RAL 9005, MATT<br><br>Bahan Diffuser:<br>Hardened safety glass<br><br>Optik:<br>S – optik pancaran sinar lebar simetris<br>AS – optik pancaran sinar lebar asimetris<br>H – optik pancaran sinar sempit simetris<br>AH – optik pancaran sinar sempit asimetris<br><br>Pemasangan:<br>Permukaan dipasang dengan braket yang dapat disesuaikan<br><br>Connection:<br>Screwless three-pole terminal block, max. diameter of wires 2.5 mm2<br><br>Peralatan standar:<br>Gland kabel EX M20 untuk diameter kabel 7-12 mm<br><br>Calculated lifetime – LED modules:<br>L80B10 ta50 °C – 60 000 jam', '2022-12-06 14:48:21', '2022-12-06 14:48:21'),
(9, 'Lighting Fixture NORD-N-LED-CG', 1, 'Seri lampu pencahayaan tersembunyi (recessed lighting fixture) tahan debu tipe NORD-N-LED dengan ketahanan percikan air dirancang untuk area dengan bahaya ledakan (explosion proof). Dapat digunakan di paint boxes dan paint shops. Lampu fixture dari Vyrtyc', '4000K, CRI +80', '220-240V/50-60Hz', 'Industrial Light', 'White Painted steel sheet', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1gfDLMJ3w7Ryy0T0v5yJfVx3SWt0zMcik', 'Ballast:<br>EP – electronic 220-240V/50-60Hz AC, 220-240V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>White painted steel sheet RAL 9003<br><br>Bahan Diffuser:<br>G – clear hardened safety glass in a frame<br><br>Bahan Optics:<br>ACL LINEAR LENS 24mm BATWING<br><br>Bahan Reflector:<br>White painted steel sheet RAL 9003<br><br>Pemasangan:<br>Pasang di atap (langit-langit) yang tersembunyi (perlu untuk memastikan alas penyangga yang cukup kuat)<br><br>Connection:<br>Screwless three-pole terminal block, max. diameter of wires 2.5 mm2<br><br>Peralatan standar:<br>2 pcs EX M20 cable glands for diameter of cable 7-12mm and 3 pcs EX M20 sealing plug<br><br>Calculated lifetime – LED modules:<br>L80B10 ta35 – 70.000 jam,L70B10 ta35 – 100 000 jam', '2022-12-06 14:48:34', '2022-12-06 14:48:34'),
(10, 'Lighting Fixture NORD-N-LED-OPG', 1, 'Seri pencahayaan fixture tersembunyi (recessed lighting fixture) tahan debu tipe NORD-N-LED dengan ketahanan percikan air dirancang untuk area dengan bahaya ledakan (explosion proof). Dapat digunakan di paint boxes dan paint shops. Seri lampu pencahayaan ', '4000K, CRI +80', '220-240V/50-60Hz', 'Industrial Light', 'White Painted steel sheet', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1gfDLMJ3w7Ryy0T0v5yJfVx3SWt0zMcik', 'Ballast:<br>EP – electronic 220-240V/50-60Hz AC, 220-240V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>White painted steel sheet RAL 9003<br><br>Bahan Diffuser:<br>OPG – opal hardened safety glass in a frame<br><br>Bahan Reflector:<br>White painted steel sheet RAL 9003<br><br>Pemasangan:<br>Lakukan pemasangan di atap (langit-langit) yang tersembunyi (perlu untuk memastikan alas penyangga yang cukup kuat)<br><br>Connection:<br>Screwless three-pole terminal block, max. diameter of wires 2.5mm2<br><br>Peralatan standar:<br>2 pcs EX M20 cable glands for diameter of cable 7-12mm and 3 pcs EX M20 sealing plug<br><br>Calculated lifetime – LED modules:<br>L80B10 ta35 – 70.000 jamL70B10 ta35 – 100 000 jam', '2022-12-06 14:48:41', '2022-12-06 14:48:41'),
(11, 'Lampu Luminaire PITBUL-Ex-LED', 1, 'Lighting luminaire Seri lampu luminaire LED tahan debu tipe PITBUL-Ex-LED dengan ketahanan terhadap percikan air dirancang untuk area penerangan dengan bahaya ledakan (explosion proof). Lampu luminer dari brand Vtyrtych ini telah disertifikasi oleh FTZÚ O', '4000K, CRI +80', '110 – 254 V, 50/60 Hz', 'Industrial Light', 'White Painted metal sheet', 'IP65', NULL, 'https://drive.google.com/uc?export=download&id=1s0IcRnEi0dKORPWRDwq28qoghOXhhORi', 'Ballast:<br>Electronic 110 – 254 V, 50/60 Hz, 220 – 250 V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80<br><br>Bahan Body:<br>White painted metal sheet RAL9003<br><br>Bahan Cover:<br>Opal tempered safety glass<br><br>Pemasangan:<br>Kencangkan dengan sekrup M8 melalui alas, dengan braket langit-langit atau braket yang dapat disesuaikan, suspensi melalui braket suspensi, ke langit-langit palsu melalui bingkai tersembunyi, pada tiang dengan set braket tiang.<br><br>Connection:<br>Screwless three-pole terminal block, max. cross section of wires 4,0 mm2<br><br>Peralatan standar:<br>1pc plastic cable gland M20x1,5 for diameter of cable 7-12mm, 1pc plastic sealing plug<br><br>Calculated lifetime – LED modules:<br>L80B50 hingga 55 °C - 50.000 jam - 418/436L80B50 hingga 60°C - 50.000 jam - 218/236', '2022-12-06 14:49:11', '2022-12-06 14:49:11'),
(12, 'Lighting Fixture PITBUL-N-LED', 1, 'Perlengkapan lampu pencahayaan fixture tahan debu tipe PITBUL-N-LED dengan ketahanan percikan air dirancang untuk penerangan area dengan bahaya ledakan (explosion proof). Seri lampu fixture dari brand Vtyrtych ini memiliki sertifikasi FTZU 17 ATEX 0129X y', '4000K, CRI +80', '220-240 V, 50/60 Hz', 'Industrial Light', 'White Painted steel sheet', 'IP65', NULL, 'https://drive.google.com/uc?export=download&id=1CVV70TFfvbVVG9EfoVhdxoyd0vo2HHw0', 'Ballast:<br>EP – electronic 220-240 V, 50/60 Hz, 220 – 240 V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>White painted steel sheet RAL 9003<br><br>Bahan Diffuser:<br>Opal hardened safety glass<br><br>Pemasangan:<br>Pemasangan langsung ke permukaan melalui sekrup M8, suspensi melalui braket suspensi, pemasangan tersembunyi melalui bingkai, pemasangan di langit-langit melalui set braket langit-langit, pemasangan tiang melalui set braket tiang, pemasangan di dinding melalui set braket yang dapat disesuaikan.<br><br>Connection:<br>Screwless three-pole terminal block, maximum diameter of wires 2.5 mm2<br><br>Peralatan standar:<br>1pc EX plastic cable gland M20x1,5 for diameter of cable 7-12mm, 1pc EX plastic sealing plug<br><br>Calculated lifetime – LED modules:<br>L80B10 ta35 – 70.000 jamL70B10 ta35 – 100 000 jam', '2022-12-06 14:49:19', '2022-12-06 14:49:19'),
(13, 'Lampu Luminaire RAMBO-Ex-LED', 1, 'Seri lampu LED luminaire tahan debu dan kedap air tipe RAMBO-Ex-LED dengan ketahanan terhadap kerusakan dan percikan air dirancang untuk penerangan area dengan bahaya ledakan (explosion proof). Lampu dari Vyrtych ini telah disertifikasi oleh FTZÚ Ostrava-', '4000K, CRI +80', '110-254 V, 50-60 Hz', 'Industrial Light', 'Polycarbonate', 'IP66 / IP67', NULL, 'https://drive.google.com/uc?export=download&id=1YBSOF0_RZiAvosjGskDXhFrPzO4YDRLx', 'Ballast:<br>Electronic 110-254 V, 50-60 Hz AC , 220-250 V, 0 Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80<br><br>Bahan Body:<br>White painted metal sheet RAL9003; plastic end caps made from PC (polycarbonate)<br><br>Bahan Cover:<br>Plastic tube with outer diameter of 70 mm and wall thickness of 4 mm made from PC-IK10 (polycarbonate), transparent colour<br><br>Pemasangan:<br>Pasangkan langsung di atap (langit-langit) atau dinding<br><br>Connection:<br>Screwless three-pole terminal block, max. cross section of wires 4,0 mm2<br><br>Peralatan standar:<br>1pc Ex plastic cable gland M20x1,5 for diameter of cable 7-13mm, <br>1pc Ex plastic sealing plug<br><br>Calculated lifetime – LED modules:<br>L80B50 ta50 – 40.000 jam', '2022-12-06 14:49:24', '2022-12-06 14:49:24'),
(14, 'Lampu Fixture SALUKA-N-LED', 1, 'Seri pencahayaan fixture tahan debu tipe SALUKA-N-LED dengan ketahanan terhadap percikan air yang dirancang untuk penerangan area dengan bahaya ledakan (explosion proof). Lampu pencahayaan fixture ini telah disertifikasi oleh FTZU Ostrava-Radvanice dengan', '4000K, CRI +80', '220-240V/50-60Hz', 'Industrial Light', 'White Painted steel sheet', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1tghMaAVOAqBek3qHIg_sUFHRSwLmgH_n', 'Ballast:<br>EP – electronic 220-240V/50-60Hz, 220-240V, 0Hz DC<br><br>Light source:<br>LED, 4000K, CRI +80, MacAdam3<br><br>Bahan Housing:<br>White painted steel sheet RAL 9003<br><br>Bahan Diffuser:<br>Opal tempered safety glass<br><br>Bahan Reflector:<br>White painted steel sheet RAL 9003<br><br>Pemasangan:<br>Pasangkan langsung di dinding atau atap (langit-langit), pemasangan di langit-langit dengan braket atap atau braket yang dapat disesuaikan, pemasangan di dinding dengan braket lengan dinding, pemasangan tiang dengan braket tiang, suspensi melalui set kait suspensi (peralatan standar)<br><br>Connection:<br>Screwless three-pole terminal block, maximum diameter of wires 2.5 mm2<br><br>Peralatan standar:<br>1 pc M20 cable gland for diameter of cable 7-12 mm, 1 pc M20 sealing plug, 2 pcs suspending hook, 2 pcs rubber gasket<br><br>Calculated lifetime – LED modules:<br>L80B10 ta40 – 70.000 jamL70B10 ta40 – 100 000 jam', '2022-12-06 14:49:33', '2022-12-06 14:49:33'),
(15, 'Solar Street Light: LED SO-NT2-2 SERIES', 2, 'Lampu Solar LED SO-NT2-2 Series merupakan lampu tenaga surya (matahari) dari brand Sinoamigo dengan tingkat kecerahan yang tinggi. Dilengkapi dengan sertifikasi IP65 yang tahan air, lampu ini dapat bertahan di berbagai kondisi cuaca. Cocok ditempatkan pad', '-', '50W - 100W', 'Street Light', 'Aluminum', 'IP65', NULL, 'https://drive.google.com/uc?export=download&id=1kVFeAhmjG1dKNgekBImRC4WEaqyLSFkt', 'Material body:<br><br><br>Solar Panel -<br> Panel surya kelas A Monocrystalline, sel surya efisiensi tinggi, modul faktor pengisian tinggi.<br><br>Aluminum Material -<br> Dapat <br><br>mentolerir lingkungan laut yang ketat atau panas tinggi dan kelembaban tinggi.<br><br>LED<br>LED chips (SMD2835)<br>LED Source With High Lumen Output<br><br>Smart Sensor<br>Jarak sensor adalah 5-10 meter, dan ketinggian pemasangan yang disarankan adalah 3-4 meter<br>Panduan Pemasangan<br>1. Pilih lokasi pencahayaan siang hari terbaik untuk memasang tiang. Tiang setinggi 3-4 meter sesuai, diameter 40-100 mm, Tebal lebih dari 2.0mm batang besi dan batang baja.<br>2. Buka kemasan dan periksa apakah komponen sudah selesai.<br>3. Hidupkan sakelar sebelum pemasangan.<br>4. Letakkan lampu surya terintegrasi ke dalam tiang. kencangkan sekrup dengan alat khusus dan pastikan cahayanya kuat.<br><br>Model Lampu Tersedia<br><br>- SO-NT2-22 - 50W<br>- SO-NT2-23 - 80W<br>- SO-NT2-24 - 100W<br>', '2022-12-06 14:50:23', '2022-12-06 14:50:23'),
(16, 'Highbay Light: LED SH-O1', 2, 'Lampu Highbay tipe LED SH-O1 merupakan seri lampu gantung dari brand Sinoamigo yang memiliki tingkat kecerahan tinggi dengan berbagai tipe. Berbahan alumunium alloy yang kuat dan cukup ringan, lampu ini juga sudah dibekali dengan proteksi IP20. Lampu ini ', '7000LM - 28000LM', '50W - 200W', 'Indoor Light', 'Alumunium Alloy', 'IP20', NULL, 'https://drive.google.com/uc?export=download&id=1s6LdJGfBEtL5R4uHyc9_o7tP62AypQqb', 'Material Body<br><br><br>Die-casting AL shell - Full Die-casting aluminum membuat kinerja pembuangan panas yang sangat baik<br><br>Lensa optik PC terintegrasi<br><br>Driver High-end Meanwall atau DONE LED Lensa optik 60°，90°，120° opsional<br><br>Chip LED Kecerahan Tinggi<br><br>Efisiensi Tinggi Philips Luminleds 3030/5050 Chip 150LM/W<br><br>Model Lampu Tersedia- SH-O150 - 50W<br>- SH-O1100 - 100W<br>- SH-O1150 - 150W<br>- SH-O1200 - 200W<br>', '2022-12-06 14:50:28', '2022-12-06 14:50:28'),
(17, 'Flood Light: LED SF-M2', 2, 'Lampu Sorot (Flood Light) tipe LED SF-M2 adalah seri lampu sorot dari Sinoamigo berbahan aluminium alloy dengan lapisan tahan korosi. Didesain khusus dengan disipasi termal yang kuat dan tahan debu dan air berkat sertifikasi IP66. Lampu ini dapat digunaka', '7000lm - 84000lm', '50W - 600W', 'Flood Light', 'Aluminum Alloy', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1cLOolvCz6KA-mzjN8_gcpJp59VKJCvYK', 'Material Body:<br><br>High-end driver optional<br>High-end Meanwell or Done LED driver optional dengan pembuangan panas yang sangat baik<br><br>Adjustable mounting bracket<br>Full die-casting aluminum made<br>Sekrup baja tahan karat<br>X in 1 connector<br><br>High Efficiency LED chips<br>Phillips Luminleds 30307505 chips 150LM/W dengan tingkat efisiensi yang tinggi', '2022-12-06 14:50:52', '2022-12-06 14:50:52'),
(18, 'Luminaire Light: LED IP65 Waterproof  SW06', 2, 'Lampu Luminaire Waterproof tipe SW06 merupakan seri lampu luminaire dari Sinoamigo yang berbahan metal dan stainless steel yang tahan air. Dilengkapi dengan sertifikasi IP65, lampu ini dapat memiliki ketahanan terhadap air dan debu. Lampu ini dapat diguna', '-', '18W - 58W', 'Industrial Light', 'Polycarbonate & Metal', 'IP65', NULL, 'https://drive.google.com/uc?export=download&id=182NPgqADCvTOrKRtXHj1_UcjNvwBm5Bz', 'Material Body:<br>ABS with Polycarbonate (PC) for cover and Metal for Reflector material with IP65 protection.<br><br>Model Lampu Tersedia<br>- SW06118 - 1x18W<br>- SW06218 - 2x18W<br>- SW06136 - 1x36W<br>- SW06236 - 2x36W<br>- SW06158 - 1x58W<br>- SW06258 - 2x58W<br>', '2022-12-06 14:50:58', '2022-12-06 14:50:58'),
(19, 'Canopy Light: LED SH60120 120W', 2, 'Lampu canopy (canopy light) tipe SH60120 dari brand Sinoamigo merupakan seri lampu atap yang memiliki tingkat efisiensi energi yang tinggi dengan cahaya yang terang. Lampu ini menggunakan Philips Lumileds dengan kualitas tinggi. Dapat digunakan pada SPBU,', '15000 LM', '120 W', 'Canopy Light', 'Aluminum Alloy', '-', NULL, 'https://drive.google.com/uc?export=download&id=1PRGU3Hb5Io1EWmTsxPhy5858L8cDSCdu', 'HIGH‐EFFICACY LED LIGHT SOURCE<br><br>Philips Lumileds Luxeon TX<br>Greater than 135lm/W high efficacy, illumina on grade LED light source.- <br>Philips Lumileds 3030 2D<br>Greater than 150lm/W high efficacy, illumina on grade LED light source. <br>Philips Lumileds 5050<br> Greater than 185lm/W high efficacy, illumina on grade LED light source.<br>Air Convection Effect<br>Desain heat sink yang masuk akal tidak hanya menjaga ventilasi tetapi juga menghindari laserasi. Jarak antara setiap modul meningkatkan kecepatan pembuangan panas dan memecahkan masalah deposisi debu.', '2022-12-06 14:51:15', '2022-12-06 14:51:15'),
(20, 'Canopy Light: LED SH-C2 Series IP65', 2, 'Seri lampu kanopi (canopy light) tipe SH-C2 series dari Sinoamigo adalah seri lampu berbahan aluminum alloy. Memiliki sertifikasi IP65 dan IK10 yang kuat terhadap ledakan dan tahan air. Lampu ini dapat digunakan pada SPBU, Pintu Tol, area gedung perkantor', '14000 lm - 28000 lm', '100W - 200W', 'Canopy Light', 'Aluminum Alloy', 'IP65', NULL, 'https://drive.google.com/uc?export=download&id=1fpCY0wfLFBQMxHWtJ_6oJuDjzBIv-fDg', 'Material body:<br><br>Full Die-casting aluminum made<br>Excellent head dissipation performance<br><br>High Efficiency LED chips<br>High Efficiency Philips Luminleds 3030/5050 chips, 150LM/W<br>Model Lampu Tersedia<br>- SH-C2100 - 100W<br>- SH-C2120 - 210W<br>- SH-C2150 - 150W<br>- SH-C2200 - 200W<br>', '2022-12-06 14:51:22', '2022-12-06 14:51:22'),
(21, 'Street Light: LED SL-R2 Series', 2, 'Lampu jalan (street light) tipe SL-R2 Series dari brand Sinoamigo merupakan lampu jalan yang tahan terhadap cuaca panas dan hujan. Dilengkapi dengan sertifikasi IP66 dan juga Philips lumileds yang memiliki efisiensi tinggi. Dapat digunakan untuk lampu pen', '7500 lm - 45000 lm', '50W - 300W', 'Street Light', 'Aluminum Alloy', 'IP66', NULL, 'https://drive.google.com/uc?export=download&id=1ejLzlzKxyPYZx-FV8PrU1mTbp_s5Fei-', 'Material body:<br>Paduan aluminium penuh yang dibuat dengan estetika modern<br>Lapisan tahan korosi<br><br>Memiliki Desain Terbaik<br>- Desain heat sink yang masuk akal, tidak hanya menjaga ventilasi tetapi juga menghindari laserasi<br>- Jarak antara setiap modul meningkatkan kecepatan pembuangan panas dan memecahkan masalah deposisi debu<br><br>Model Lampu Tersedia<br>- SL-R250 - 50W<br>- SL-R2100 - 100W<br>- SL-R2150 - 150W<br>- SL-R2200 - 200W<br>- SL-R2240 - 240W<br>- SL-R2300 - 300W<br>', '2022-12-06 14:51:29', '2022-12-06 14:51:29'),
(22, 'TCM Office Light RM M Series', 3, 'Seri office light RM M Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan memiliki ', '1000Lm', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br><br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light RM M1 - 1000Lm<br>- Office Light RM M2 - 1000Lm<br>- Office Light RM M4 - 1000Lm<br>- Office Light RM M5 - 1000Lm<br>', '2022-12-06 14:51:38', '2022-12-06 14:51:38'),
(23, 'TCM Office Light RM M Dummy Series', 3, 'Seri office light RM M + Dummy Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan m', '1000Lm', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br><br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light Dummy - 1000Lm<br>- Office Light Dummy - 1000Lm<br>- Office Light Dummy - 1000Lm<br>- Office Light Dummy - 1000Lm<br>', '2022-12-06 14:51:43', '2022-12-06 14:51:43'),
(24, 'TCM Office Light RM M Diffuser Series', 3, 'Seri office light RM M Diffuser AC Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu d', '1000Lm', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br><br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light Diffuser AC - 1000Lm<br>- Office Light Diffuser AC - 1000Lm<br>- Office Light Diffuser AC - 1000Lm<br>- Office Light Diffuser AC - 1000Lm<br>', '2022-12-06 14:51:49', '2022-12-06 14:51:49'),
(25, 'TCM Office Light RM M5 T5', 3, 'Seri office light RM M5 T5 merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi hingga 1000Lm.', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', '-', NULL, NULL, 'Material body:<br><br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- RM M5 T5 2 x 14 LF T5<br>- RM M5 T5 3 x 14 LF T5<br>- RM M5 T5 4 x 14 LF T5<br>- RM M5 T5 2 x 28 LF T5<br>- RM M5 T5 3 x 28 LF T5<br>Jika anda tertarik dengan produk tersebut, silakan tanya ketersediaan dengan menghubungi kami melalui WhatsApp atau klik <br>Tata Cara Order<br> untuk detail selengkapnya.', '2022-12-06 14:51:54', '2022-12-06 14:51:54'),
(26, 'TCM Office Light TKI Series', 3, 'Seri office light TKI Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan memiliki l', '-', '-', 'Office Light', 'Alumunium, Acrylic', 'IP20', NULL, NULL, 'Material body:<br><br>Housing made from mild steel (baja ringan)<br><br>Acrylic<br><br>Model Lampu Tersedia<br>- Office Light TKI IP20- Office Light TKI c/w Acrylic IP20', '2022-12-06 14:52:00', '2022-12-06 14:52:00'),
(27, 'TCM Office Light SM M5', 3, 'Seri office light SM M5 merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan memiliki lifeti', '-', '-', 'Office Light', 'Alumunium', 'IP20', NULL, NULL, 'Material body:<br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light SM M5 2 x 10-18<br>- Office Light SM M5 3 x 10-18<br>- Office Light SM M5 4 x 10-18<br>- Office Light SM M5 2 x 19-36<br>- Office Light SM M5 3 x 19-36<br>', '2022-12-06 14:52:05', '2022-12-06 14:52:05'),
(28, 'TCM Office Light BALK Series', 3, 'Seri office light Light BALK Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan mem', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br><br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light BALK<br>- Office Light BALK c/w WIRE Guard<br>', '2022-12-06 14:52:10', '2022-12-06 14:52:10'),
(29, 'TCM Office Light GMS Series', 3, 'Lampu tipe Office Light GMS Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan memi', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light GMS IP20<br>- Office Light GMS Prismatic IP20<br>', '2022-12-06 14:52:16', '2022-12-06 14:52:16'),
(30, 'TCM Office Light V-Shape Series', 3, 'Lampu tipe Office Light V-Shape Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan ', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light V-Shape IP20<br>- Office Light V-Shape c/w Mirror IP20<br>', '2022-12-06 14:52:21', '2022-12-06 14:52:21'),
(31, 'TCM Office Light TKO Series', 3, 'Lampu tipe Office Light TKO Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan memi', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP20', NULL, NULL, 'Material body:<br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light TKO<br>- Office Light TKO c/w Acrylic<br>- Office Light TKO c/w Wire Guard<br>', '2022-12-06 14:52:25', '2022-12-06 14:52:25'),
(32, 'TCM Office Light Dust Proof', 3, 'Lampu tipe Office Light Dust Proof merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP65, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan perc', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', 'IP65', NULL, NULL, ' Material body:<br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light Dust Proof 1 x 10-18 LED-FL<br>- Office Light Dust Proof 2 x 10-18 LED-FL<br>- Office Light Dust Proof 1 x 18-36 LED-FL<br>- Office Light Dust Proof 2 x 18-36 LED-FL<br>', '2022-12-06 14:52:31', '2022-12-06 14:52:31'),
(33, 'TCM Office Light CPOB Series', 3, 'Lampu tipe Office Light CPOB Series merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) dengan tingkat kecerahan tinggi.', '-', '-', 'Office Light', 'Baja Ringan & Alumunium', '-', NULL, NULL, 'Material body:<br>Housing made from mild steel (baja ringan)<br><br>Model Lampu Tersedia<br>- Office Light CPOB 2x18 Buka Atas<br>- Office Light CPOB 2x36 Buka Atas<br>- Office Light CPOB 2x18 Buka Bawah<br>- Office Light CPOB 2x36 Buka Bawah<br>', '2022-12-06 14:52:36', '2022-12-06 14:52:36'),
(34, 'TCM Office Light Round Baret', 3, 'Lampu tipe Office Light Round Baret merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) atau ruangan rumah anda dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tah', '-', '-', 'Room Light', '-', 'IP20', NULL, NULL, 'Model Lampu Tersedia<br>- Office Light Round Baret Silindra 20<br>- Office Light Round Baret Silindra 32<br>', '2022-12-06 14:52:40', '2022-12-06 14:52:40'),
(35, 'TCM Office Light UFO Baret', 3, 'Lampu tipe Office Light UFO Baret merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) atau ruangan rumah anda dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan', '-', '-', 'Office Light', '-', 'IP20', NULL, NULL, 'Model Lampu Tersedia<br>- Office Light UFO Baret Lunar 20<br>- Office Light UFO Baret Lunar 32<br>', '2022-12-06 14:52:45', '2022-12-06 14:52:45'),
(36, 'TCM Office Light Square Baret', 3, 'Lampu tipe Office Light Square Baret merupakan lampu atap plafon yang didesain khusus untuk penerangan kantor (office) atau ruangan rumah anda dengan tingkat kecerahan tinggi. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut ta', '-', '-', 'Office Light', '-', 'IP20', NULL, NULL, 'Model Lampu Tersedia<br>- Office Light Square Baret Square 20<br>- Office Light Square Baret Square 32<br>', '2022-12-06 14:52:52', '2022-12-06 14:52:52'),
(37, 'Emergency Light Exit Box', 3, 'Seri Emergency Light Exit Box merupakan lampu yang didesain khusus untuk kebutuhan darurat seperti pintu keluar atau penunjuk pintu emergency. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut tahan terhadap debu dan memiliki li', '-', '-', 'Emergency Light', 'Acrylic Plate', 'IP20', NULL, NULL, 'Dimensi<br>345 x 80 x 150 (mm)', '2022-12-06 14:52:58', '2022-12-06 14:52:58'),
(38, 'Emergency Light Exit Slim LED Series', 3, 'Seri Emergency Light Exit Slim LED merupakan lampu yang didesain khusus untuk kebutuhan darurat seperti pintu keluar atau penunjuk pintu emergency dengan bentuk yang lebih tipis. Dengan memiliki sertifikasi IP20, lampu dari TCM Lighting Luminaire tersebut', '-', '220-240 Volts', 'Emergency Light', 'Acrylic Plate', 'IP20', NULL, NULL, 'Material body:<br>Acrylic Plate (fire retardant)<br><br>Slimline LED Features<br>- Ultra bright white LEDs<br>- Extra low power consumption<br>- High quality, long life SMD LED module<br><br>Model Lampu Tersedia<br>- Exit Slim IP20 - 370 x 57 x 260 (mm)<br>- Exit Slim LED (Recessed) - 376 x 46 x 256 (mm)<br>- Exit Slim LED (Surface) - 376 x 46 x 256 (mm)<br>', '2022-12-06 14:53:03', '2022-12-06 14:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20221102123055-create-Categories.js'),
('20221102123309-create-Media.js'),
('20221102123315-create-Brands.js'),
('20221102123324-create-Tags.js'),
('20221102123332-create-Users.js'),
('20221102123352-create-Products.js'),
('20221120115715-create-Media-Products.js'),
('20221120123753-create-Tag-Products.js');

-- --------------------------------------------------------

--
-- Table structure for table `tagproducts`
--

CREATE TABLE `TagProducts` (
  `id` int(11) NOT NULL,
  `tagId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tagproducts`
--

INSERT INTO `TagProducts` (`id`, `tagId`, `productId`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2022-12-05 07:52:26', '2022-12-05 07:52:26'),
(2, 2, 1, '2022-12-05 07:52:27', '2022-12-05 07:52:27'),
(3, 3, 1, '2022-12-05 07:52:29', '2022-12-05 07:52:29'),
(4, 4, 1, '2022-12-05 07:52:30', '2022-12-05 07:52:30'),
(5, 5, 1, '2022-12-05 07:52:31', '2022-12-05 07:52:31'),
(6, 6, 1, '2022-12-05 07:52:33', '2022-12-05 07:52:33'),
(7, 7, 1, '2022-12-05 07:52:35', '2022-12-05 07:52:35'),
(8, 1, 2, '2022-12-06 15:00:32', '2022-12-06 15:00:32'),
(9, 8, 2, '2022-12-06 15:01:14', '2022-12-06 15:01:14'),
(10, 9, 2, '2022-12-06 15:02:56', '2022-12-06 15:02:56'),
(11, 10, 2, '2022-12-06 15:02:57', '2022-12-06 15:02:57'),
(12, 5, 2, '2022-12-06 15:03:05', '2022-12-06 15:03:05'),
(13, 6, 2, '2022-12-06 15:03:14', '2022-12-06 15:03:14'),
(14, 7, 2, '2022-12-06 15:03:15', '2022-12-06 15:03:15'),
(15, 1, 3, '2022-12-06 15:03:27', '2022-12-06 15:03:27'),
(16, 2, 3, '2022-12-06 15:05:11', '2022-12-06 15:05:11'),
(17, 3, 3, '2022-12-06 15:05:28', '2022-12-06 15:05:28'),
(18, 4, 3, '2022-12-06 15:05:33', '2022-12-06 15:05:33'),
(19, 5, 3, '2022-12-06 15:05:50', '2022-12-06 15:05:50'),
(20, 6, 3, '2022-12-06 15:05:51', '2022-12-06 15:05:51'),
(21, 7, 3, '2022-12-06 15:05:54', '2022-12-06 15:05:54'),
(22, 1, 4, '2022-12-06 15:06:00', '2022-12-06 15:06:00'),
(23, 2, 4, '2022-12-06 15:20:19', '2022-12-06 15:20:19'),
(24, 3, 4, '2022-12-06 15:20:25', '2022-12-06 15:20:25'),
(25, 4, 4, '2022-12-06 15:20:28', '2022-12-06 15:20:28'),
(26, 5, 4, '2022-12-06 15:20:39', '2022-12-06 15:20:39'),
(27, 6, 4, '2022-12-06 15:20:40', '2022-12-06 15:20:40'),
(28, 7, 4, '2022-12-06 15:20:41', '2022-12-06 15:20:41'),
(29, 1, 5, '2022-12-06 15:20:55', '2022-12-06 15:20:55'),
(30, 2, 5, '2022-12-06 15:20:56', '2022-12-06 15:20:56'),
(31, 3, 5, '2022-12-06 15:20:58', '2022-12-06 15:20:58'),
(32, 4, 5, '2022-12-06 15:21:00', '2022-12-06 15:21:00'),
(33, 5, 5, '2022-12-06 15:21:01', '2022-12-06 15:21:01'),
(34, 6, 5, '2022-12-06 15:21:02', '2022-12-06 15:21:02'),
(35, 7, 5, '2022-12-06 15:21:04', '2022-12-06 15:21:04'),
(37, 1, 4, '2022-12-06 15:23:04', '2022-12-06 15:23:04'),
(38, 1, 5, '2022-12-06 15:23:07', '2022-12-06 15:23:07'),
(39, 1, 7, '2022-12-06 15:27:11', '2022-12-06 15:27:11'),
(40, 8, 7, '2022-12-06 15:27:22', '2022-12-06 15:27:22'),
(41, 9, 7, '2022-12-06 15:27:34', '2022-12-06 15:27:34'),
(42, 10, 7, '2022-12-06 15:27:38', '2022-12-06 15:27:38'),
(43, 6, 7, '2022-12-06 15:27:42', '2022-12-06 15:27:42'),
(44, 7, 7, '2022-12-06 15:27:50', '2022-12-06 15:27:50'),
(45, 5, 7, '2022-12-06 15:27:52', '2022-12-06 15:27:52'),
(46, 1, 7, '2022-12-06 15:27:56', '2022-12-06 15:27:56'),
(47, 8, 7, '2022-12-06 15:28:03', '2022-12-06 15:28:03'),
(48, 1, 8, '2022-12-06 15:28:26', '2022-12-06 15:28:26'),
(49, 8, 8, '2022-12-06 15:28:28', '2022-12-06 15:28:28'),
(50, 9, 8, '2022-12-06 15:28:39', '2022-12-06 15:28:39'),
(51, 4, 8, '2022-12-06 15:28:40', '2022-12-06 15:28:40'),
(52, 5, 8, '2022-12-06 15:28:44', '2022-12-06 15:28:44'),
(53, 6, 8, '2022-12-06 15:28:45', '2022-12-06 15:28:45'),
(54, 7, 8, '2022-12-06 15:28:47', '2022-12-06 15:28:47'),
(55, 1, 8, '2022-12-06 15:28:52', '2022-12-06 15:28:52'),
(56, 1, 9, '2022-12-06 15:28:55', '2022-12-06 15:28:55'),
(57, 8, 9, '2022-12-06 15:29:05', '2022-12-06 15:29:05'),
(58, 9, 9, '2022-12-06 15:29:20', '2022-12-06 15:29:20'),
(59, 10, 9, '2022-12-06 15:29:21', '2022-12-06 15:29:21'),
(60, 5, 9, '2022-12-06 15:29:24', '2022-12-06 15:29:24'),
(61, 6, 9, '2022-12-06 15:29:25', '2022-12-06 15:29:25'),
(62, 7, 9, '2022-12-06 15:29:26', '2022-12-06 15:29:26'),
(63, 1, 9, '2022-12-06 15:29:28', '2022-12-06 15:29:28'),
(64, 1, 10, '2022-12-06 15:29:31', '2022-12-06 15:29:31'),
(65, 8, 10, '2022-12-06 15:29:51', '2022-12-06 15:29:51'),
(66, 9, 10, '2022-12-06 15:29:55', '2022-12-06 15:29:55'),
(67, 10, 10, '2022-12-06 15:29:56', '2022-12-06 15:29:56'),
(68, 5, 10, '2022-12-06 15:29:58', '2022-12-06 15:29:58'),
(69, 6, 10, '2022-12-06 15:30:00', '2022-12-06 15:30:00'),
(70, 7, 10, '2022-12-06 15:30:02', '2022-12-06 15:30:02'),
(71, 8, 11, '2022-12-06 15:30:14', '2022-12-06 15:30:14'),
(72, 9, 11, '2022-12-06 15:30:18', '2022-12-06 15:30:18'),
(73, 10, 11, '2022-12-06 15:30:19', '2022-12-06 15:30:19'),
(74, 1, 11, '2022-12-06 15:30:21', '2022-12-06 15:30:21'),
(75, 5, 11, '2022-12-06 15:30:24', '2022-12-06 15:30:24'),
(76, 6, 11, '2022-12-06 15:30:25', '2022-12-06 15:30:25'),
(77, 7, 11, '2022-12-06 15:30:26', '2022-12-06 15:30:26'),
(78, 1, 11, '2022-12-06 15:30:28', '2022-12-06 15:30:28'),
(79, 2, 11, '2022-12-06 15:30:29', '2022-12-06 15:30:29'),
(80, 3, 11, '2022-12-06 15:30:38', '2022-12-06 15:30:38'),
(81, 4, 11, '2022-12-06 15:30:39', '2022-12-06 15:30:39'),
(82, 5, 11, '2022-12-06 15:30:40', '2022-12-06 15:30:40'),
(83, 6, 11, '2022-12-06 15:30:41', '2022-12-06 15:30:41'),
(84, 7, 11, '2022-12-06 15:30:43', '2022-12-06 15:30:43'),
(85, 1, 12, '2022-12-06 15:30:48', '2022-12-06 15:30:48'),
(86, 2, 12, '2022-12-06 15:30:50', '2022-12-06 15:30:50'),
(87, 8, 12, '2022-12-06 15:30:52', '2022-12-06 15:30:52'),
(88, 9, 12, '2022-12-06 15:30:57', '2022-12-06 15:30:57'),
(89, 5, 12, '2022-12-06 15:31:01', '2022-12-06 15:31:01'),
(90, 6, 12, '2022-12-06 15:31:02', '2022-12-06 15:31:02'),
(91, 7, 12, '2022-12-06 15:31:03', '2022-12-06 15:31:03'),
(92, 1, 12, '2022-12-06 15:31:06', '2022-12-06 15:31:06'),
(93, 2, 12, '2022-12-06 15:31:07', '2022-12-06 15:31:07'),
(94, 3, 12, '2022-12-06 15:31:09', '2022-12-06 15:31:09'),
(95, 4, 12, '2022-12-06 15:31:10', '2022-12-06 15:31:10'),
(96, 5, 12, '2022-12-06 15:31:12', '2022-12-06 15:31:12'),
(97, 6, 12, '2022-12-06 15:31:15', '2022-12-06 15:31:15'),
(98, 7, 12, '2022-12-06 15:31:17', '2022-12-06 15:31:17'),
(99, 1, 13, '2022-12-06 15:31:49', '2022-12-06 15:31:49'),
(100, 2, 13, '2022-12-06 15:31:50', '2022-12-06 15:31:50'),
(101, 3, 13, '2022-12-06 15:31:51', '2022-12-06 15:31:51'),
(102, 4, 13, '2022-12-06 15:31:52', '2022-12-06 15:31:52'),
(103, 5, 13, '2022-12-06 15:31:53', '2022-12-06 15:31:53'),
(104, 6, 13, '2022-12-06 15:31:54', '2022-12-06 15:31:54'),
(105, 7, 13, '2022-12-06 15:31:55', '2022-12-06 15:31:55'),
(106, 1, 14, '2022-12-06 15:32:03', '2022-12-06 15:32:03'),
(107, 8, 14, '2022-12-06 15:32:05', '2022-12-06 15:32:05'),
(108, 9, 14, '2022-12-06 15:32:07', '2022-12-06 15:32:07'),
(109, 10, 14, '2022-12-06 15:32:08', '2022-12-06 15:32:08'),
(110, 5, 14, '2022-12-06 15:32:10', '2022-12-06 15:32:10'),
(111, 6, 14, '2022-12-06 15:32:11', '2022-12-06 15:32:11'),
(112, 7, 14, '2022-12-06 15:32:12', '2022-12-06 15:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `Tags` (
  `id` int(11) NOT NULL,
  `tag_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tags`
--

INSERT INTO `Tags` (`id`, `tag_name`, `createdAt`, `updatedAt`) VALUES
(1, 'Lampu Industri', '2022-12-05 07:51:35', '2022-12-05 07:51:35'),
(2, 'Luminaire', '2022-12-05 07:51:42', '2022-12-05 07:51:42'),
(3, 'LED Zone 1', '2022-12-05 07:51:47', '2022-12-05 07:51:47'),
(4, 'LED Zone 21', '2022-12-05 07:51:49', '2022-12-05 07:51:49'),
(5, 'Explosion Proof', '2022-12-05 07:51:56', '2022-12-05 07:51:56'),
(6, 'Gas Proof', '2022-12-05 07:52:00', '2022-12-05 07:52:00'),
(7, 'Hazardous Area', '2022-12-05 07:52:06', '2022-12-05 07:52:06'),
(8, 'Fixture', '2022-12-06 15:00:58', '2022-12-06 15:00:58'),
(9, 'LED Zone 2', '2022-12-06 15:02:45', '2022-12-06 15:02:45'),
(10, 'LED Zone 22', '2022-12-06 15:02:48', '2022-12-06 15:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `Brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `Categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `Media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mediaproducts`
--
ALTER TABLE `MediaProducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mediaId` (`mediaId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tagproducts`
--
ALTER TABLE `TagProducts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tagId` (`tagId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `tags`
--
ALTER TABLE `Tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `Brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `Categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `Media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `mediaproducts`
--
ALTER TABLE `MediaProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `Products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tagproducts`
--
ALTER TABLE `TagProducts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `Tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mediaproducts`
--
ALTER TABLE `MediaProducts`
  ADD CONSTRAINT `MediaProducts_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `Media` (`id`),
  ADD CONSTRAINT `MediaProducts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `Products`
  ADD CONSTRAINT `Products_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `Brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tagproducts`
--
ALTER TABLE `TagProducts`
  ADD CONSTRAINT `TagProducts_ibfk_1` FOREIGN KEY (`tagId`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `TagProducts_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
