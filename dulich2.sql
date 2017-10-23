-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 03:08 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulich2`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(3, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'tam-nhin', '2017-10-20 07:55:39', '2017-10-20 07:55:39'),
(6, 5, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'gioi-thieu', '2017-10-20 08:06:58', '2017-10-20 08:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507081451_7-5.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-04 01:44:11', '2017-10-03 18:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(2, '1508376915_0.jpg', NULL, 2, '2017-10-19 01:35:15', '2017-10-19 01:35:15'),
(3, '1508377842_4-10.jpg', NULL, 3, '2017-10-19 01:50:42', '2017-10-19 01:50:42'),
(5, '1508377004_0.jpg', NULL, 5, '2017-10-19 01:36:44', '2017-10-19 01:36:44'),
(6, '1508377020_0.jpg', NULL, 6, '2017-10-19 01:37:00', '2017-10-19 01:37:00'),
(7, '1508377042_0.jpg', NULL, 4, '2017-10-19 01:37:22', '2017-10-19 01:37:22');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-10-19 01:33:44', '2017-10-19 01:33:44'),
(2, 'Trang giới thiệu', '2017-10-19 01:33:53', '2017-10-19 01:33:53'),
(3, 'Trang tin tức', '2017-10-19 01:34:01', '2017-10-19 01:34:01'),
(4, 'Trang thư viện ảnh', '2017-10-19 01:34:13', '2017-10-19 01:34:13'),
(5, 'Trang loại phòng', '2017-10-19 01:34:26', '2017-10-19 01:34:26'),
(6, 'Trang đặt phòng', '2017-10-19 01:34:36', '2017-10-19 01:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cate_gallery`
--

CREATE TABLE `cate_gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `photo` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate_gallery`
--

INSERT INTO `cate_gallery` (`id`, `name`, `alias`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Album - Đồ ăn ngon', 'album-do-an-ngon', '1508229372_4-2.jpg', '2017-10-17 09:30:13', '16:30:13'),
(2, 'Không gian sang trọng', 'khong-gian-sang-trong', '1508229659_4-3.jpg', '2017-10-17 08:40:59', '15:40:59'),
(3, 'Phòng hiện đại thoáng - mát', 'phong-hien-dai-thoang-mat', '1508233994_12.jpg', '2017-10-17 09:53:14', '16:53:14'),
(4, 'Album ảnh nổi bật', 'album-anh-noi-bat', '1508230435_13.jpg', '2017-10-17 08:53:55', '15:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Cơ sở 1', '0918273645', 'Số 1 Thái Hà, Đống Đa, Hà Nội', '2017-10-03 03:08:26', '2017-10-02 20:08:26'),
(2, 'Cơ sở 2', '091864573', '315 Trường Chinh, Đống Đa, Hà Nộ', '2017-10-03 03:08:43', '2017-10-02 20:08:43'),
(3, 'Cơ sở 3', '0987654321', '167 Giảng võ, P.Cát Linh, Q.Đống Đa, Hà Nội', '2017-10-02 20:08:59', '2017-10-02 20:08:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `ngayden` datetime DEFAULT NULL,
  `ngaydi` datetime DEFAULT NULL,
  `numb_adults` int(11) DEFAULT NULL,
  `numb_room` int(11) DEFAULT NULL,
  `numb_child` int(11) DEFAULT NULL,
  `content` text CHARACTER SET latin1,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `address`, `email`, `phone`, `ngayden`, `ngaydi`, `numb_adults`, `numb_room`, `numb_child`, `content`, `status`, `created_at`, `updated_at`) VALUES
(10, 'Hoàng Hồng Chương', 'Cầu Diễn, Từ Liêm, Hà Nội', 'chuong1194@yahoo.com', '0987654321', NULL, NULL, NULL, NULL, NULL, 'gd', 0, '2017-10-20 07:37:34', '2017-10-20 07:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `photo` text,
  `cate_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `photo`, `cate_id`, `created_at`, `updated_at`) VALUES
(1, '1508232231_4-4.jpg', 4, '2017-10-17 09:23:51', '2017-10-17 09:23:51'),
(3, '1508233254_4-9.jpg', 1, '2017-10-17 09:40:54', '2017-10-17 09:40:54'),
(4, '1508232598_4-8.jpg', 1, '2017-10-17 09:29:58', '2017-10-17 09:29:58'),
(5, '1508232675_15.jpg', 2, '2017-10-17 09:31:15', '2017-10-17 09:31:15'),
(6, '1508289001_17.jpg', 3, '2017-10-18 01:10:01', '2017-10-18 01:10:01'),
(7, '1508289022_16.jpg', 3, '2017-10-18 01:10:22', '2017-10-18 01:10:22'),
(8, '1508289837_4-2.jpg', 1, '2017-10-18 01:23:57', '2017-10-18 01:23:57'),
(9, '1508289820_4-6.jpg', 1, '2017-10-18 01:23:40', '2017-10-18 01:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`, `updated_at`) VALUES
(1, 16, NULL, NULL, '1502966468_noithatnhaodep4.png', 1, NULL, NULL, 0, '2017-08-17 10:41:08', '0000-00-00 00:00:00'),
(48, 5, NULL, NULL, '1508298244_p3.jpg', 1, NULL, NULL, 0, '2017-10-18 03:44:04', '2017-10-18 03:44:04'),
(47, 5, NULL, NULL, '1508298244_p2.png', 1, NULL, NULL, 0, '2017-10-18 03:44:04', '2017-10-18 03:44:04'),
(46, 5, NULL, NULL, '1508298244_p1.png', 1, NULL, NULL, 0, '2017-10-18 03:44:04', '2017-10-18 03:44:04'),
(49, 7, NULL, NULL, '1508490567_6.jpg', 1, NULL, NULL, 0, '2017-10-20 09:09:27', '2017-10-20 09:09:27'),
(50, 7, NULL, NULL, '1508490567_7.jpg', 1, NULL, NULL, 0, '2017-10-20 09:09:27', '2017-10-20 09:09:27'),
(51, 7, NULL, NULL, '1508490567_8.jpg', 1, NULL, NULL, 0, '2017-10-20 09:09:27', '2017-10-20 09:09:27');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1505460187_qc.png', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2017-09-15 00:23:07', '2017-09-15 00:23:07'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(46, 5, 'banner quảng cáo trang tin tức', 'http://gco.vn/', '1505460335_thumb2.png', NULL, NULL, 1, 0, 'chuyen-muc', 2, '2017-09-15 00:25:35', '2017-09-15 00:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `type` int(2) DEFAULT '0',
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `type`, `stt`, `created_at`, `updated_at`) VALUES
(2, 0, 5, 'Bí kíp đẹp - \"Vũ khí bí mật\" của các cô gái', 'bi-kip-dep-vu-khi-bi-mat-cua-cac-co-gai', '1508404330_7.jpg', '', 'Người ta nói: “Cái răng cái tóc là gốc con người”, vậy nên ngoài việc chăm sóc da mặt, cơ thể và răng miệng, mái tóc cũng là một phần không thể thiếu trong quá trình chăm sóc cơ thể của phái đẹp.', '<p><strong>7 sản phẩm dưỡng t&oacute;c tốt nhất bạn g&aacute;i n&ecirc;n c&oacute;.</strong></p>\r\n<p>Để đ&aacute;nh gi&aacute; xem một m&aacute;i t&oacute;c c&oacute; được coi l&agrave; một m&aacute;i t&oacute;c đẹp hay kh&ocirc;ng, ch&uacute;ng ta thường c&oacute; kh&aacute; nhiều c&aacute;c ti&ecirc;u ch&iacute;, chẳng hạn như chất t&oacute;c, m&agrave;u t&oacute;c, độ b&oacute;ng của t&oacute;c&hellip; Vậy n&ecirc;n, để sở hữu một m&aacute;i t&oacute;c bồng bềnh, b&oacute;ng khỏe, ch&uacute;ng ta thường phải phụ thuộc v&agrave;o kh&aacute; nhiều c&aacute;c sản phẩm dưỡng v&agrave; chăm s&oacute;c t&oacute;c. Dưới đ&acirc;y, Elle xin được gợi &yacute; cho ph&aacute;i đẹp 7 sản phẩm dưỡng t&oacute;c tốt nhất m&agrave; một bạn g&aacute;i, đặc biệt l&agrave; bạn g&aacute;i bận rộn, n&ecirc;n c&oacute;.</p>\r\n<p><strong>1. K&Eacute;RASTASE CARR&Eacute; LISSANT TOUCH-UP SHEETS</strong></p>\r\n<p>Nếu bạn l&agrave; người kh&ocirc;ng thể chợp mắt tr&ecirc;n c&aacute;c chuyến bay nếu thiếu đi gối ngủ v&agrave; lu&ocirc;n thức dậy với m&aacute;i t&oacute;c rối b&ugrave; mỗi khi chuyến bay kết th&uacute;c th&igrave; đ&acirc;y c&oacute; lẽ l&agrave; sản phẩm v&ocirc; c&ugrave;ng th&iacute;ch hợp d&agrave;nh cho bạn. Sản phẩm khiến m&aacute;i t&oacute;c của bạn v&agrave;o nếp nhanh ch&oacute;ng v&agrave; trở n&ecirc;n &oacute;ng mượt v&ocirc; c&ugrave;ng; m&ugrave;i hương nhẹ nh&agrave;ng m&agrave; sản phẩm mang lại cũng l&agrave; một điểm cộng đ&aacute;ng kể. Đặc biệt, nếu bạn l&agrave; người thường xuy&ecirc;n chịu đựng t&igrave;nh trạng t&oacute;c bị t&iacute;ch điện v&agrave; trở n&ecirc;n b&ocirc;ng x&ugrave; một c&aacute;ch kỳ lạ, đặc biệt l&agrave; sau khi bạn ngủ dậy, đ&acirc;y c&agrave;ng l&agrave; một sản phẩm m&agrave; bạn n&ecirc;n c&oacute;.</p>\r\n<p><strong>2. KIEHL&rsquo;S SILK GROOM SERUM</strong></p>\r\n<p>Sản phẩm c&oacute; chứa c&aacute;c loại dầu tự nhi&ecirc;n, bột lụa, protein đậu n&agrave;nh v&agrave; dầu jojoba c&oacute; khả năng gi&uacute;p t&oacute;c nhanh v&agrave;o nếp v&agrave; gi&uacute;p m&aacute;i t&oacute;c của bạn được giữ ẩm. Đ&acirc;y l&agrave; sản phẩm d&agrave;nh cho những c&ocirc; n&agrave;ng sở hữu m&aacute;i t&oacute;c quăn rối khi c&oacute; thể khiến ch&uacute;ng được v&agrave;o nếp tự nhi&ecirc;n, mềm mại chứ kh&ocirc;ng cứng v&agrave; kh&ocirc; như những sản phẩm th&ocirc;ng thường. Loại serum n&agrave;y cũng được xem l&agrave; sản phẩm vừa bảo vệ, vừa phục hồi v&agrave; dưỡng ẩm chuy&ecirc;n s&acirc;u cho m&aacute;i t&oacute;c của bạn.</p>\r\n<p><img class=\"img-fluid\" src=\"http://tpl.helios.vn/du-an-cong-ty/kho-giao-dien/hannah/images/news/news-detail-1.jpg\" alt=\"\" /></p>\r\n<p><strong>3. BUMBLE AND BUMBLE SURF FOAM WASH SHAMPOO</strong></p>\r\n<p>Sản phẩm dầu gội đầu tạo bọt n&agrave;y hứa hẹn sẽ khiến cho m&aacute;i t&oacute;c của bạn được gội sạch c&aacute;c cặn bẩn nhưng lại khiến ch&uacute;ng kh&ocirc;ng hề kh&ocirc;, xơ cứng m&agrave; ngược lại c&ograve;n trở n&ecirc;n gi&agrave;u độ ẩm v&agrave; b&oacute;ng mượt. M&aacute;i t&oacute;c sau khi kh&ocirc; sẽ vương một m&ugrave;i hương nhẹ v&agrave; v&ocirc; c&ugrave;ng mềm mượt, khiến bạn c&oacute; thể thoải m&aacute;i tạo kiểu duỗi thẳng hay xoăn bồng bềnh với m&aacute;i t&oacute;c của m&igrave;nh.</p>\r\n<p><strong>4. SHU UEMURA COLOR LUSTRE SULFATE &ndash; FREE BRILLIANT GLAZE SHAMPOO</strong></p>\r\n<p>Dầu gội của Shu d&agrave;nh ri&ecirc;ng cho t&oacute;c nhuộm n&agrave;y l&agrave; sản phẩm m&agrave; những c&ocirc; n&agrave;ng nhuộm t&oacute;c n&ecirc;n sở hữu. L&yacute; do l&agrave; v&igrave; dầu gội n&agrave;y sẽ hạn chế việc t&oacute;c bạn bị xuống m&agrave;u do chất l&agrave;m sạch thường c&oacute; trong c&aacute;c loại dầu gội th&ocirc;ng thường. Ngo&agrave;i ra, dầu gội Shu c&ograve;n gi&uacute;p lưu giữ những loại dầu tự nhi&ecirc;n c&oacute; tr&ecirc;n t&oacute;c của bạn với hương thơm dịu nhẹ, hứa hẹn sẽ mang đến cho bạn m&aacute;i t&oacute;c bền m&agrave;u v&agrave; mềm mượt.</p>\r\n<p><strong>5. DESERT ESSENCE COCONUT SHAMPOO</strong></p>\r\n<p>Sản phẩm n&agrave;y v&ocirc; c&ugrave;ng ph&ugrave; hợp với những c&ocirc; n&agrave;ng thường xuy&ecirc;n đi du lịch hoặc tiếp x&uacute;c thường xuy&ecirc;n với &aacute;nh nắng mặt trời. Sau khi gội dầu xong, bạn sẽ cảm nhận được những lọn t&oacute;c kh&ocirc; n&oacute;ng của m&igrave;nh được l&agrave;m dịu lại v&agrave; trở n&ecirc;n mềm mại hơn. Ngo&agrave;i ra, những dưỡng chất c&oacute; trong dầu gội cũng khiến cho m&aacute;i t&oacute;c của bạn được cung cấp đủ độ ẩm, trở n&ecirc;n b&oacute;ng mượt v&agrave; chắc khỏe hơn. Hương thơm tự nhi&ecirc;n từ những loại nguy&ecirc;n liệu thi&ecirc;n nhi&ecirc;n cũng l&agrave; điểm cộng kh&ocirc;ng thể thiếu cho sản phẩm n&agrave;y.</p>\r\n<p><strong>6. KLORANE EAU DE BRILLIANCE</strong></p>\r\n<p>Sản phẩm n&agrave;y thường được sử dụng sau khi bạn l&agrave;m kh&ocirc; m&aacute;i t&oacute;c m&igrave;nh, n&oacute; mang đến cho bạn một cảm gi&aacute;c nhẹ nh&agrave;ng như vừa được chăm s&oacute;c t&oacute;c ở salon vậy. Kh&ocirc;ng chỉ cung cấp độ ẩm cho m&aacute;i t&oacute;c m&agrave; c&ograve;n khiến những lọn t&oacute;c của ch&uacute;ng ta v&agrave;o nếp nhanh ch&oacute;ng v&agrave; phảng phất hương thơm dịu d&agrave;ng tự nhi&ecirc;n, đ&acirc;y cũng l&agrave; sản phẩm dưỡng t&oacute;c bạn n&ecirc;n đầu tư.</p>\r\n<p><strong>7. CHRISTOPHE ROBIN CLEANSING PURIFYING SCRUB WITH SEA SALT</strong></p>\r\n<p>Được xem l&agrave; một loại dầu gội thải độc cho m&aacute;i t&oacute;c, sản phẩm gi&uacute;p bạn l&agrave;m sạch s&acirc;u nhưng vẫn đảm bảo cho m&aacute;i t&oacute;c nhạy cảm của bạn c&oacute; được sự bảo vệ tốt nhất. Sản phẩm n&agrave;y kh&ocirc;ng chỉ khiến những cặn bẩn tr&ecirc;n t&oacute;c bị loại bỏ ho&agrave;n to&agrave;n m&agrave; c&ograve;n gi&uacute;p c&acirc;n bằng lại lượng dầu v&agrave; độ ẩm tự nhi&ecirc;n tr&ecirc;n da đầu. Ngo&agrave;i ra, nếu bạn l&agrave; người thường xuy&ecirc;n nhuộm t&oacute;c, sản phẩm n&agrave;y c&ograve;n đảm bảo loại bỏ hết những h&oacute;a chất l&agrave;m t&oacute;c c&ograve;n vương lại tr&ecirc;n da đầu. Sản phẩm với nguy&ecirc;n liệu l&agrave; những hạt muối biển c&ograve;n c&oacute; c&ocirc;ng dụng l&agrave;m gia tăng lưu lượng lưu th&ocirc;ng m&aacute;u, m&aacute;t xa nhẹ nh&agrave;ng cho da đầu th&ecirc;m thư th&aacute;i nhưng kh&ocirc;ng hề g&acirc;y kh&ocirc; rối hay đau r&aacute;t cho da đầu bạn. Để tiết kiệm cho t&uacute;i tiền của m&igrave;nh, bạn c&ograve;n c&oacute; thể sử dụng c&aacute;ch d&ugrave;ng th&ocirc;ng minh l&agrave; trộn sản phẩm n&agrave;y với dầu gội thường d&ugrave;ng của m&igrave;nh thay v&igrave; d&ugrave;ng ch&uacute;ng ho&agrave;n to&agrave;n cho việc gội đầu.</p>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 0, 1, '2017-10-19 09:12:10', '2017-10-19 09:12:10'),
(3, 0, 5, '7 điều bạn nên làm nếu muốn giảm cân thành công', '7-dieu-ban-nen-lam-neu-muon-giam-can-thanh-cong', '1508404321_8.jpg', '', 'Được xem là một loại dầu gội thải độc cho mái tóc, sản phẩm giúp bạn làm sạch sâu nhưng vẫn đảm bảo cho mái tóc nhạy cảm của bạn có được sự bảo vệ tốt nhất. Sản phẩm này không chỉ khiến những cặn bẩn trên tóc bị loại bỏ hoàn toàn mà còn giúp cân bằng lại lượng dầu...', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 0, 2, '2017-10-19 09:12:01', '2017-10-19 09:12:01'),
(4, 0, 5, 'Tin du lịch Việt Nam mới', 'tin-du-lich-viet-nam-moi', '1508404221_6.jpg', '', 'Mỗi hãng hàng không sẽ chọn màu sơn riêng, họa tiết trang trí đặc thù, logo … để tô điểm cho những chiếc máy bay được hãng khai thác. Mặc dù vậy, màu sơn cơ bản của máy bay luôn là trắng và bạn có bao giờ thắc mắc tại sao họ lại sơn trắng mà không phải là một màu nào khác? Dưới đây là những lý do rất thực tế liên quan đến màu sắc này.', NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 0, 3, '2017-10-19 09:10:21', '2017-10-19 09:10:21'),
(5, 0, 5, 'Tại sao máy bay  thường được sơn màu trắng', 'tai-sao-may-bay-thuong-duoc-son-mau-trang', '1508404251_2.jpg', '', 'Mỗi hãng hàng không sẽ chọn màu sơn riêng, họa tiết trang trí đặc thù, logo … để tô điểm cho những chiếc máy bay được hãng khai thác. Mặc dù vậy, màu sơn cơ bản của máy bay luôn là trắng và bạn có bao giờ thắc mắc tại sao họ lại sơn trắng mà không phải là một màu nào khác? Dưới đây là những lý do rất thực tế liên quan đến màu sắc này.', NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 0, 4, '2017-10-19 09:10:51', '2017-10-19 09:10:51'),
(6, 0, 5, 'Nên đi du lịch Mỹ vào thời điểm nào?', 'nen-di-du-lich-my-vao-thoi-diem-nao', '1508404065_5.jpg', '', NULL, NULL, 1, 1, NULL, NULL, NULL, 'tin-tuc', 0, 5, '2017-10-19 09:07:45', '2017-10-19 09:07:45'),
(7, 0, 5, 'Việt Nam đón hơn 4 triệu lượt khách quốc tế trong tháng 5', 'viet-nam-don-hon-4-trieu-luot-khach-quoc-te-trong-thang-5', '1508404027_1.jpg', '', 'Theo số liệu của Tổng cục Thống kê, khách quốc tế đến Việt Nam trong tháng 5/2016 ước đạt 757.244 lượt, giảm 4,1% so với tháng 4/2016 và tăng 30,2% so với tháng 5/2015.', NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 0, 6, '2017-10-19 09:07:07', '2017-10-19 09:07:07'),
(8, 0, 5, 'Mở nhiều chuyến bay thẳng quốc tế trong dịp hè', 'mo-nhieu-chuyen-bay-thang-quoc-te-trong-dip-he', '1508404274_3.jpg', '', 'Trong dịp Hè năm nay, nhiều hãng hàng không nước ngoài thông báo kế hoạch mở đường bay thẳng tới Việt Nam.   Điểm đến của những đường bay này tập trung chủ yếu tại các thành phố du lịch', '<p>Theo Tổng cục Du lịch, từ đầu năm đến nay, Việt Nam đ&atilde; đ&oacute;n hơn 9,44 triệu lượt kh&aacute;ch du lịch quốc tế, tăng 28,4% so với c&ugrave;ng kỳ năm 2016. Cũng trong ch&iacute;n th&aacute;ng vừa qua, lượng kh&aacute;ch du lịch trong nước đ&atilde; đạt 57,9 triệu lượt kh&aacute;ch, trong đ&oacute; c&oacute; 27,8 triệu lượt kh&aacute;ch lưu tr&uacute;. Tổng thu từ kh&aacute;ch du lịch đạt khoảng 376 ngh&igrave;n tỷ đồng, tăng 26,5%.</p>\r\n<p>Theo l&atilde;nh đạo Tổng cục Du lịch, c&oacute; được kết quả đ&aacute;ng mừng n&ecirc;u tr&ecirc;n l&agrave; nhờ nhiều chương tr&igrave;nh x&uacute;c tiến, ph&aacute;t động du lịch đ&atilde; được tổ chức tại c&aacute;c thị trường trọng điểm, nhất l&agrave; tại c&aacute;c nước Bắc &Acirc;u, Nhật Bản v&agrave; một số thị trường Đ&ocirc;ng - Nam &Aacute;. Ri&ecirc;ng trong th&aacute;ng 9 n&agrave;y, du lịch Việt Nam sẽ tham gia c&aacute;c hội chợ du lịch quốc tế lớn tại Nhật Bản, Ph&aacute;p v&agrave; hy vọng ba th&aacute;ng cuối năm, lượng kh&aacute;ch quốc tế sẽ tiếp tục tăng trưởng, ho&agrave;n th&agrave;nh mục ti&ecirc;u đ&oacute;n 13 triệu lượt kh&aacute;ch du lịch quốc tế trong năm 2017 của ng&agrave;nh.</p>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 0, 7, '2017-10-20 06:51:58', '2017-10-20 06:51:58'),
(9, 0, 5, 'Tầm nhìn - sứ mệnh', 'tam-nhin-su-menh', '', '', NULL, '<p>Từ ng&agrave;y đầu th&agrave;nh lập với những kh&oacute; khăn về nguồn vốn v&agrave; nh&acirc;n lực, giờ đ&acirc;y, GCO Group đ&atilde; x&acirc;y dựng cho m&igrave;nh một đội ngũ hơn 100 nh&acirc;n sự chuy&ecirc;n nghiệp, hệ thống văn ph&ograve;ng khang trang hơn, đầu tư trang thiết phục cho nhu cầu c&ocirc;ng việc, mở rộng c&aacute;c ph&ograve;ng ban theo từng lĩnh vực hoạt động, chuy&ecirc;n biệt về chức năng. Tr&ecirc;n mỗi lĩnh vực hoạt động GCO Group đều đạt được những th&agrave;nh tựu đ&aacute;ng nhớ. Hoạt động với phương ch&acirc;m &ldquo;GCO GROUP &ndash; Niềm tin cho doanh nghiệp&rdquo;, tất cả th&agrave;nh vi&ecirc;n GCO Group lu&ocirc;n nỗ lực ph&aacute;t triển năng lực bản th&acirc;n hướng đến cung cấp dịch vụ chuy&ecirc;n nghiệp hơn, hiệu quả hơn cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>', 1, 0, NULL, NULL, NULL, 'bai-viet', 0, 1, '2017-10-20 08:13:34', '2017-10-20 08:13:34'),
(10, 0, 5, 'Đối tác', 'doi-tac', '', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'bai-viet', 0, 2, '2017-10-20 08:13:59', '2017-10-20 08:13:59'),
(11, 0, 5, 'Về chúng tôi', 've-chung-toi', '', '', NULL, '<p>Từ ng&agrave;y đầu th&agrave;nh lập với những kh&oacute; khăn về nguồn vốn v&agrave; nh&acirc;n lực, giờ đ&acirc;y, GCO Group đ&atilde; x&acirc;y dựng cho m&igrave;nh một đội ngũ hơn 100 nh&acirc;n sự chuy&ecirc;n nghiệp, hệ thống văn ph&ograve;ng khang trang hơn, đầu tư trang thiết phục cho nhu cầu c&ocirc;ng việc, mở rộng c&aacute;c ph&ograve;ng ban theo từng lĩnh vực hoạt động, chuy&ecirc;n biệt về chức năng. Tr&ecirc;n mỗi lĩnh vực hoạt động GCO Group đều đạt được những th&agrave;nh tựu đ&aacute;ng nhớ. Hoạt động với phương ch&acirc;m &ldquo;GCO GROUP &ndash; Niềm tin cho doanh nghiệp&rdquo;, tất cả th&agrave;nh vi&ecirc;n GCO Group lu&ocirc;n nỗ lực ph&aacute;t triển năng lực bản th&acirc;n hướng đến cung cấp dịch vụ chuy&ecirc;n nghiệp hơn, hiệu quả hơn cho qu&yacute; kh&aacute;ch h&agrave;ng.</p>', 1, 0, NULL, NULL, NULL, 'bai-viet', 0, 3, '2017-10-20 08:14:14', '2017-10-20 08:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(37, 5, NULL, NULL, 'duydoan.nina@gmail.com', NULL, '', NULL, NULL, 1, 0, 'newsletter', 1, '2017-09-01 02:50:14', '2017-08-31 19:50:14'),
(38, 5, NULL, NULL, 'nguyennhan091@gmail.com', NULL, '', NULL, NULL, 1, 0, 'newsletter', 2, '2017-08-31 19:51:32', '2017-08-31 19:51:32'),
(40, 0, NULL, NULL, 'info@shoesshop.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 0, '2017-09-06 02:48:56', '2017-09-06 02:48:56'),
(42, 0, 'Hoàng Hồng Chương', NULL, 'chuonghoanghong@gmail.com', '0987654321', NULL, NULL, 'sdf', 1, 0, 'newsletter', 0, '2017-09-15 00:56:36', '2017-09-15 00:56:36'),
(43, 0, 'Nguyễn Văn A', NULL, 'a@gmail.com', '09392929', NULL, NULL, 'sfdsdf', 1, 0, 'newsletter', 0, '2017-09-15 19:48:18', '2017-09-15 19:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(34, 'Bí quyết làm đẹp', 'bi-quyet-lam-dep', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2017-10-02 20:51:46', '', '2017-10-02 20:51:46'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', NULL, '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', NULL, '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', NULL, '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', NULL, '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', NULL, '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', NULL, '2017-08-30 00:48:18'),
(31, 'Sản phẩm khác', 'san-pham-khac', '1505465773_sv3.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-15 09:49:21', '1505468961_dv4.png', '2017-09-15 02:49:21'),
(30, 'Canxi nano', 'canxi-nano', '1505465758_sv2.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-15 09:48:41', '1505468921_dv3.png', '2017-09-15 02:48:41'),
(29, 'Sản phẩm bảo vệ sức khỏe', 'san-pham-bao-ve-suc-khoe', '1505465729_sv1.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-16 04:14:59', '1505468944_dv4.png', '2017-09-15 21:14:59'),
(33, 'Sản phẩm mới nhập', 'san-pham-moi-nhap', '', NULL, 0, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-18 01:49:43', '', '2017-09-17 18:49:43'),
(35, 'Chia sẻ mẹo hay', 'chia-se-meo-hay', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2017-10-02 20:51:53', '', '2017-10-02 20:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `thuonghieu_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) NOT NULL DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `baohanh` text COLLATE utf8_unicode_ci,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `date_start` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `thuonghieu_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `properties`, `thuonghieu`, `tinhtrang`, `baohanh`, `model`, `namsanxuat`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `spbc`, `status`, `title`, `keyword`, `description`, `date_start`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 4, NULL, 1, 'Natural Glam', 'natural-glam', '1508407998_2.jpg', 50000000, 0, 70000000, NULL, '<p>Xe v&agrave; hướng dẫn vi&ecirc;n của&nbsp;<strong>c&ocirc;ng ty du lịch&nbsp;Đất Việt</strong>&nbsp;đ&oacute;n qu&yacute; kh&aacute;ch tại điểm hẹn, khởi h&agrave;nh đi Bu&ocirc;n Ma Thuột. Q&uacute;y kh&aacute;ch đi theo tỉnh lộ 74 v&agrave; quốc lộ 14 qua c&aacute;c địa danh nổi tiếng như: Đồng Xo&agrave;i, S&oacute;c Bom Bo, B&ugrave; Đăng,&hellip; v&agrave; chi&ecirc;m ngưỡng quang cảnh n&uacute;i rừng h&ugrave;ng vĩ hai b&ecirc;n đường.<br />Qu&yacute; kh&aacute;ch d&ugrave;ng cơm trưa tr&ecirc;n đường đi. Tiếp tục h&agrave;nh tr&igrave;nh đến Bu&ocirc;n Ma Thuột. Tại đ&acirc;y, qu&yacute; kh&aacute;ch tham quan khu du lịch th&aacute;c Draysap &ndash; một trong những th&aacute;c h&ugrave;ng vĩ nhất T&acirc;y Nguy&ecirc;n du lịch tết Bu&ocirc;n Ma Thuột.<br />Đo&agrave;n d&ugrave;ng bữa tối v&agrave; đến kh&aacute;ch sạn nhận ph&ograve;ng nghỉ ngơi.<br />Qu&yacute; kh&aacute;ch tự do dạo bộ ở phố n&uacute;i, thưởng thức hương vị c&agrave; ph&ecirc; nổi tiếng tại l&agrave;ng c&agrave; ph&ecirc; Trung Nguy&ecirc;n.</p>\r\n<p>NG&Agrave;Y 2: BU&Ocirc;N MA THUỘT &ndash; KON TUM &ndash; PLEIKU</p>\r\n<p><a class=\"lightbox\" href=\"http://localhost/dulich2/backend/product/images/33.jpg\"><img src=\"http://localhost/dulich2/backend/product/images/33.jpg\" alt=\"\" border=\"0\" /></a></p>\r\n<p>Qu&yacute; kh&aacute;ch d&ugrave;ng điểm t&acirc;m s&aacute;ng, l&agrave;m thủ tục trả ph&ograve;ng v&agrave; khởi h&agrave;nh đi Kon Tum. Tại đ&acirc;y, qu&yacute; kh&aacute;ch được tham quan nhiều địa danh nổi tiếng như:</p>\r\n<ul>\r\n<li>Nh&agrave; thờ gỗ</li>\r\n<li>Cầu Treo Konklor</li>\r\n<li>Đại chủng viện Thi&ecirc;n Ch&uacute;a Gi&aacute;o</li>\r\n</ul>\r\n<p>Q&uacute;y kh&aacute;ch d&ugrave;ng bữa trưa v&agrave; trở về Pleiku nhận ph&ograve;ng nghỉ ngơi.&nbsp;Sau bữa tối, qu&yacute; kh&aacute;ch tự kh&aacute;m ph&aacute; phố n&uacute;i Pleiku về đ&ecirc;m.</p>\r\n<p>NG&Agrave;Y 3: PLEIKU &ndash;&nbsp;BU&Ocirc;N MA THUỘT&nbsp;&ndash; BU&Ocirc;N Đ&Ocirc;N</p>', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '1970-01-01 01:00:00', '2017-10-20 04:09:34', '2017-10-20 04:09:34'),
(2, 5, 1, 3, NULL, 2, 'Phòng vip 2', 'phong-vip-2', '1508408020_du-lich-binhba-5-500x500.jpg', 0, 0, 0, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '2017-10-19 10:13:40', '2017-10-19 10:13:40'),
(3, 5, 1, 1, NULL, 3, 'Phòng vip 1', 'phong-vip-1', '1508462241_4.jpg', 0, 0, 0, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-10-20 01:17:21', '2017-10-20 01:17:21'),
(4, 5, 2, 2, NULL, 4, 'Phòng đơn 1', 'phong-don-1', '1508462247_5.jpg', 0, 0, 0, NULL, '<p>sdf sdfs&nbsp;</p>\r\n<p>sdf s</p>', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-10-20 01:17:27', '2017-10-20 01:17:27'),
(5, 5, 3, 1, NULL, 5, 'Phòng đôi 1', 'phong-doi-1', '1508462256_8.jpg', 0, 0, 0, NULL, '<p>NAM Hotel &amp; Spa l&agrave; điểm l&yacute; tưởng cho du kh&aacute;ch muốn kh&aacute;m ph&aacute; Đ&agrave; Nẵng. Tọa lạc tại trung t&acirc;m th&agrave;nh phố, chỉ c&aacute;ch b&atilde;i biển Mỹ Kh&ecirc; chưa đến 200m, gần c&aacute;c địa điểm du lịch, ẩm thực, trung t&acirc;m mua sắm. Vị tr&iacute; của kh&aacute;ch sạn rất thuận lợi cho những chuyến du lịch hay c&ocirc;ng t&aacute;c của Qu&yacute; kh&aacute;ch.</p>\r\n<p>Kh&aacute;ch sạn gồm 45 ph&ograve;ng được thiết kế sang trọng v&agrave; trang bị đầy đủ những tiện nghi cần thiết như: m&aacute;y lạnh, điện thoại quốc tế, TV vệ tinh, hệ thống c&aacute;p, hệ thống internet kh&ocirc;ng d&acirc;y, tủ an to&agrave;n, mini bar, ph&ograve;ng tắm c&oacute; nước n&oacute;ng c&ugrave;ng c&aacute;c dịch vụ lu&ocirc;n sẵn s&agrave;ng phục vụ du kh&aacute;ch như: trao đổi ngoại tệ, dịch vụ giặt ủi, dịch vụ thu&ecirc; xe hơi- xe m&aacute;y, v&eacute; m&aacute;y bay, dịch vụ tiếp t&acirc;n 24/24.</p>\r\n<p>Ngo&agrave;i cung cấp dịch vụ lưu tr&uacute;, NAM Hotel &amp; Spa c&ograve;n cung cấp c&aacute;c dịch vụ tiện &iacute;ch kh&aacute;c như:</p>\r\n<p>- Nam Spa: Cung cấp trọn g&oacute;i dịch vụ thư gi&atilde;n theo phong c&aacute;ch H&agrave;n Quốc gi&uacute;p phục hồi năng lượng, giải tỏa sự mệt mỏi, căng thẳng v&agrave; l&agrave;m đẹp da, mang đến cho bạn một cơ thể tr&agrave;n đầy sức sống</p>\r\n<p>- Nh&agrave; h&agrave;ng H&agrave;n Quốc - Nam Restaurant: Lẩu nướng H&agrave;n Quốc ch&iacute;nh l&agrave; thực đơn ch&iacute;nh của nh&agrave; h&agrave;ng, đặc biệt l&agrave; c&aacute;c m&oacute;n nướng hấp dẫn cả về hương vị cũng như m&agrave;u sắc.</p>\r\n<p>- Quầy Bar/Cafe cao cấp - Nam Beachview Lounge: Thưởng thức t&aacute;ch c&agrave; ph&ecirc; đậm đ&agrave; v&agrave; c&ugrave;ng bắt đầu một ng&agrave;y mới với &aacute;nh s&aacute;ng ngập tr&agrave;n từ quầy Caf&eacute; tại tầng cao nhất của kh&aacute;ch sạn. Ph&oacute;ng tầm mắt về ph&iacute;a bờ biển Mỹ Kh&ecirc; xinh đẹp, bạn sẽ sẵn s&agrave;ng cho c&ocirc;ng việc hoặc chuyến tham quan cả ng&agrave;y.</p>\r\n<p>- Cửa h&agrave;ng tiện &iacute;ch - Nam Minimart: cung cấp c&aacute;c sản phẩm tiện &iacute;ch như thực phẩm chức năng, thuốc bổ, thuốc chữa bệnh, dược mỹ phẩm, mỹ phẩm, c&aacute;c sản phẩm ti&ecirc;u d&ugrave;ng nhanh: dầu gội, sữa tắm, thức uống, &hellip;</p>', 'Diện tích: 30m2###Giường: đôi 2m', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-10-20 01:17:36', '2017-10-20 01:17:36'),
(6, 5, 2, 3, NULL, 6, 'Phòng đơn 2', 'phong-don-2', '1508462232_2.jpg', 0, 0, 0, '<p>Dịch vụ tốt, gi&aacute; ph&ograve;ng ph&ugrave; hợp, lễ t&acirc;n lễ ph&eacute;p, ph&ograve;ng m&igrave;nh đặt hơi nhỏ n&ecirc;n hơi b&iacute;, đồ uống kh&aacute;ch sạn hơi max n&ecirc;n mua ngo&agrave;i!</p>', '<p>Đ&egrave;n ch&ugrave;m trang tr&iacute; tạo kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch ấm c&uacute;ng v&agrave; sang trọng</p>\r\n<p>nh s&aacute;ng của đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch cực kỳ quan trọng trong việc trang tr&iacute; nội thất căn ph&ograve;ng. Ngo&agrave;i những c&ocirc;ng năng trang tr&iacute; chiếu s&aacute;ng th&ocirc;ng thường ch&uacute;ng c&ograve;n g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp sang trọng, ấm c&uacute;ng cho căn ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n<p>Để tạo ra một ko gian ấm &aacute;p với &aacute;nh nguồn &aacute;nh s&aacute;ng dịu nhẹ, lan tỏa bạn cần treo một chiếc đ&egrave;n ch&ugrave;m trang tr&iacute; đảm bảo cường độ &aacute;nh s&aacute;ng vừa phải, nguồn &aacute;nh s&aacute;ng t&ocirc;ng v&agrave;ng sẽ mang lại một cảm gi&aacute;c ấm &aacute;p cho căn ph&ograve;ng v&agrave; đỡ tr&oacute;i mắt . Ngo&agrave;i ra treo một đ&egrave;n ch&ugrave;m pha l&ecirc; lớn tr&ecirc;n trần của ph&ograve;ng ăn cũng rất tốt v&igrave; n&oacute; tượng trưng cho năng lượng dương, rất tốt cho c&aacute;c bữa ăn.</p>\r\n<p>Lựa chọn đ&egrave;n trang tr&iacute; ph&ugrave; hợp cho ph&ograve;ng kh&aacute;ch Đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch phải tạo được cho căn ph&ograve;ng kh&ocirc;ng gian ấm c&uacute;ng v&agrave; sang trọng. C&oacute; thể bố tr&iacute; cho ph&ograve;ng kh&aacute;ch những ngọn đ&egrave;n ch&ugrave;m đẹp lấp l&aacute;nh sẽ l&agrave;m cho ph&ograve;ng kh&aacute;ch th&ecirc;m lung linh</p>\r\n<p>C&oacute; rất nhiều loại đ&egrave;n trang tr&iacute; nội thất như đ&egrave;n ch&ugrave;m, đ&egrave;n trần, đ&egrave;n b&agrave;n, ... mỗi loại c&oacute; một ưu điểm v&agrave; c&aacute;ch b&agrave;i tr&iacute; xắp đặt ri&ecirc;ng, v&igrave; k&iacute;ch cỡ mỗi loại kh&aacute;c nhau n&ecirc;n cần phải lụa chọn cho ph&ugrave; hợp với từng kh&ocirc;ng gian</p>\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; treo đ&egrave;n ch&ugrave;m trang tr&iacute; ph&ograve;ng kh&aacute;ch cần phải hiểu r&otilde; chức năng, biết lựa chọn đ&egrave;n c&oacute; k&iacute;ch thước ph&ugrave; hợp, ngo&agrave;i việc bạn cần hiểu về đặc điểm từng loại ra th&igrave; đ&egrave;n c&ograve;n phải gắn với kh&ocirc;ng gian kiến tr&uacute;c v&agrave; nội thất.</p>', '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '2017-10-20 01:17:12', '2017-10-20 01:17:12'),
(7, 5, 2, 3, NULL, 7, 'Phòng đơn 3', 'phong-don-3', '1508462223_6.jpg', 0, 0, 0, '<p>Dịch vụ tốt, gi&aacute; ph&ograve;ng ph&ugrave; hợp, lễ t&acirc;n lễ ph&eacute;p, ph&ograve;ng m&igrave;nh đặt hơi nhỏ n&ecirc;n hơi b&iacute;, đồ uống kh&aacute;ch sạn hơi max n&ecirc;n mua ngo&agrave;i!</p>', NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '1970-01-01 01:00:00', '2017-10-20 09:09:27', '2017-10-20 09:09:27'),
(12, 5, 3, 2, NULL, 10, 'Tour du lịch Quảng Nam', 'tour-du-lich-quang-nam', '1508406411_4.jpg', 0, 0, 0, '<p>Dịch vụ tốt, gi&aacute; ph&ograve;ng ph&ugrave; hợp, lễ t&acirc;n lễ ph&eacute;p, ph&ograve;ng m&igrave;nh đặt hơi nhỏ n&ecirc;n hơi b&iacute;, đồ uống kh&aacute;ch sạn hơi max n&ecirc;n mua ngo&agrave;i!</p>', NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, NULL, '2017-10-19 10:13:42', '2017-10-19 10:13:42'),
(9, 5, 3, 2, NULL, 9, 'Tour du lịch Đà Nẵng', 'tour-du-lich-da-nang', '1508406288_5.jpg', 0, 0, 0, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '2017-10-19 09:44:48', '2017-10-19 09:44:48'),
(10, 5, 3, 2, NULL, 10, 'Tour du lịch Côn Đảo 3 Ngày 2 Đêm', 'tour-du-lich-con-dao-3-ngay-2-dem', '1508406168_4.jpg', 0, 0, 0, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '2017-10-19 09:42:48', '2017-10-19 09:42:48'),
(13, 5, 2, 2, NULL, 11, 'Tour du lịch Hàn Quốc: Seoul – Nami – Everland, giá hấp dẫn!', 'tour-du-lich-han-quoc-seoul-–-nami-–-everland-gia-hap-dan', '1508406116_3.jpg', 30000000, 0, 40000000, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, '1970-01-01 01:00:00', '2017-10-20 02:55:57', '2017-10-20 02:55:57'),
(14, 5, 2, 1, NULL, 12, 'Tour du lịch Hàn Quốc: Seoul – Nami – Everland, giá hấp dẫn!', 'tour-du-lich-han-quoc-seoul-–-nami-–-everland-gia-hap-dan', '1508406094_8.jpg', 0, 0, 0, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, NULL, NULL, '2017-10-19 09:41:34', '2017-10-19 09:41:34'),
(15, 5, 2, NULL, NULL, 13, 'Tour nước ngoài hot nhất mùa hè', 'tour-nuoc-ngoai-hot-nhat-mua-he', '1508465490_8.jpg', 0, 0, 0, NULL, NULL, '', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, NULL, NULL, '2017-10-20 02:49:39', '2017-10-20 02:49:39', '2017-10-20 02:45:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Tour trong nước', 'tour-trong-nuoc', '1508404729_7.jpg', 1, 0, NULL, NULL, NULL, '2017-10-19 09:18:49', '2017-10-19 09:18:49'),
(2, 0, 2, 'Tour nước ngoài', 'tour-nuoc-ngoai', '1508404770_du-lich-myanmar-3-500x500.jpg', 1, 0, NULL, NULL, NULL, '2017-10-19 09:19:30', '2017-10-19 09:19:30'),
(3, 0, 3, 'Tour miền trung', 'tour-mien-trung', '1508404803_nhatrang3.jpg', 1, 0, NULL, NULL, NULL, '2017-10-19 09:20:03', '2017-10-19 09:20:03'),
(4, 0, 4, 'Tour miền bắc', 'tour-mien-bac', '1508404853_du-lich-binhba-5-500x500.jpg', 1, 0, NULL, NULL, NULL, '2017-10-19 09:20:53', '2017-10-19 09:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `province_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `province_name`, `created_at`, `updated_at`) VALUES
(2, 'hai phong', '2017-09-21 07:19:34', '2017-09-21 07:19:34'),
(4, 'Hà Nội', '2017-09-21 21:47:54', '2017-09-21 21:47:54'),
(5, 'Thái Bình', '2017-09-21 21:48:05', '2017-09-21 21:48:17'),
(6, 'Hồ Chí Minh', '2017-09-25 00:14:42', '2017-09-25 00:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `image` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `image`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Du lịch', 'Du lịch', NULL, 'http://gco.vn/', 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '(04)6 290 8885', '(04)6 290 8885', '(04)3 550 1492', 'support@gco.vn', '1508399573_14775630659195_logo.png', '1508399573_14775630659195_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO 2017. All rights reserved.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761617598985!2d105.82076241501875!3d21.00219068601275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac869cd63f89%3A0xa2e71c273579f51b!2zMzE1IFRyxrDhu51uZyBDaGluaA!5e0!3m2!1sen!2s!4v1505443560797\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '1508211204_logo1.png', NULL, NULL, NULL, NULL, '2017-10-19 08:27:27', '2017-10-19 08:27:27');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 5, 'Du lịch nghỉ dưỡng', NULL, '1508400103_14776219017575_mandarin-orchard-singapore2.jpg', '', 'Thả ga du lịch với chùm tour giá vốn, vui không sợ tốn', NULL, 1, 0, 'gioi-thieu', 1, '2017-10-19 08:15:00', '2017-10-19 08:15:00'),
(2, 5, 'Biển xanh - cát trắng', NULL, '1508400195_14776218567036_thumb-con-dao-4-sao-2n1d.jpg', '', 'Du lịch biển luôn là một trải nghiệm hấp dẫn và thú vị trong bất cứ hoàn cảnh nào', NULL, 1, 0, 'gioi-thieu', 2, '2017-10-19 08:15:10', '2017-10-19 08:15:10'),
(3, 5, 'Trăng mật tuyệt vời', NULL, '1508400234_14776218124925_slider-1.jpg', '', 'Hãy thưởng thức những điều lãng mạn nhất nơi thiên đường', NULL, 1, 0, 'gioi-thieu', 3, '2017-10-19 08:15:30', '2017-10-19 08:15:30');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(259) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Chanel', 'chanel', '2017-10-04 04:27:26', '2017-10-03 21:27:26'),
(2, 'Gucci', 'gucci', '2017-10-04 04:27:46', '2017-10-03 21:27:46'),
(3, 'Guerlain', 'guerlain', '2017-10-04 04:28:06', '2017-10-03 21:28:06'),
(4, 'Christian Dior', 'christian-dior', '2017-10-04 04:28:14', '2017-10-03 21:28:14'),
(5, 'Nina Ricci', 'nina-ricci', '2017-10-04 04:28:21', '2017-10-03 21:28:21'),
(6, 'Calvin Klein', 'calvin-klein', '2017-10-04 04:28:28', '2017-10-03 21:28:28'),
(7, 'Estee Lauder', 'estee-lauder', '2017-10-04 04:28:37', '2017-10-03 21:28:37'),
(8, 'Jean Paul Gautier', 'jean-paul-gautier', '2017-10-04 04:28:41', '2017-10-03 21:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$Lm3vxVo0UYuWFSzJkpvmwOKecqZm5coQSy1D3QW/Tc8c569RgBNFK', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'Mc0QrDAe2azzsAqVTEpySEQEJDeBa30IKL1ie5H1IGhukZKBgvKgJKaZQXcx', '2017-09-25 02:31:46', '2017-09-24 19:31:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate_gallery`
--
ALTER TABLE `cate_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cate_gallery`
--
ALTER TABLE `cate_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
