-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 01:29 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `a1_academic_years`
--

CREATE TABLE `a1_academic_years` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `session_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_year` int(11) NOT NULL,
  `end_year` int(11) NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_running` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_academic_years`
--

INSERT INTO `a1_academic_years` (`id`, `session_year`, `start_year`, `end_year`, `note`, `is_running`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(8, 'January 2019 - January 2020', 2019, 2020, 'hghd', 1, 1, 1, 1, '2019-01-25 07:37:18', '2020-02-26 21:36:17'),
(13, 'January 2011 - January 2012', 2011, 2012, 'gffd', 1, 1, 1, 1, '2020-02-26 21:36:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a1_books`
--

CREATE TABLE `a1_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rack_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_certificates`
--

CREATE TABLE `a1_certificates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title_left` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title_middle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title_right` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_left` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_middle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_right` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_designations`
--

CREATE TABLE `a1_designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_designations`
--

INSERT INTO `a1_designations` (`id`, `name`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(17, 'Software Engineer', 'Good', 1, 1, 1, '0000-00-00 00:00:00', '2020-02-26 22:13:59'),
(18, 'Php Developer', 'Well', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_discounts`
--

CREATE TABLE `a1_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_galleries`
--

CREATE TABLE `a1_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_view_on_web` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_grades`
--

CREATE TABLE `a1_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` decimal(10,2) NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_to` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_grades`
--

INSERT INTO `a1_grades` (`id`, `name`, `point`, `mark_from`, `mark_to`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'A+', '5.00', 80, 100, 'We appreciate his performance', 1, 1, 1, '2018-02-10 23:48:09', '2019-01-23 09:48:36'),
(2, 'A', '4.00', 70, 79, 'We appreciate his performance', 1, 1, 1, '2018-02-10 23:49:35', '2019-01-23 09:48:46'),
(3, 'A-', '3.50', 60, 69, 'We appreciate his performance', 1, 1, 1, '2018-02-10 23:50:38', '2019-01-23 09:48:54'),
(4, 'B', '3.00', 50, 59, 'Not good', 1, 1, 1, '2018-02-10 23:51:30', '2019-01-23 09:49:02'),
(5, 'C', '2.50', 40, 49, 'Not good', 1, 1, 1, '2018-02-10 23:53:20', '2019-01-23 09:49:11'),
(8, 'D', '2.00', 33, 39, 'Not good', 1, 1, 1, '2018-07-15 13:43:24', '2019-01-23 09:49:20'),
(9, 'F', '0.00', 0, 32, 'Bad', 1, 1, 1, '2018-07-15 13:46:21', '2019-01-23 09:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `a1_gsms_sessions`
--

CREATE TABLE `a1_gsms_sessions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(11) NOT NULL,
  `data` blob NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_gsms_sessions`
--

INSERT INTO `a1_gsms_sessions` (`id`, `ip_address`, `timestamp`, `data`, `created_at`, `updated_at`) VALUES
(4, '103.87.212.168', 1548403475, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383430333437353b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a32333a22736d74737570657261646d696e40676d61696c2e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b70686f746f7c733a32343a2270686f746f2d313534383134383435372d736d732e706e67223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32373a224d49454e205363686f6f6c204d616e6167656d656e7420546f6f6c223b63757272656e63797c733a333a22424454223b63757272656e63795f73796d626f6c7c733a333a22e0a7b3223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a32313a224a756c792032303139202d204a756e652032303230223b7363686f6f6c5f656d61696c7c733a31363a22696e666f406d69656e2d69742e636f6d223b7363686f6f6c5f70686f6e657c733a31313a223031373231303032373030223b656e61626c655f72746c7c733a313a2230223b, NULL, NULL),
(5885, '103.87.212.168', 1548402771, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383430323737313b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a32333a22736d74737570657261646d696e40676d61696c2e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b70686f746f7c733a32343a2270686f746f2d313534383134383435372d736d732e706e67223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32373a224d49454e205363686f6f6c204d616e6167656d656e7420546f6f6c223b63757272656e63797c733a333a22424454223b63757272656e63795f73796d626f6c7c733a333a22e0a7b3223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a32313a224a756c792032303139202d204a756e652032303230223b7363686f6f6c5f656d61696c7c733a31363a22696e666f406d69656e2d69742e636f6d223b7363686f6f6c5f70686f6e657c733a31313a223031373231303032373030223b656e61626c655f72746c7c733a313a2230223b, NULL, NULL),
(90000000000075, '103.87.212.168', 1548403114, 0x5f5f63695f6c6173745f726567656e65726174657c693a313534383430333131343b69647c733a313a2231223b726f6c655f69647c733a313a2231223b656d61696c7c733a32333a22736d74737570657261646d696e40676d61696c2e636f6d223b6e616d657c733a31313a2253757065722041646d696e223b70686f6e657c733a393a22313233343835363937223b70686f746f7c733a32343a2270686f746f2d313534383134383435372d736d732e706e67223b757365725f69647c733a313a2231223b70726f66696c655f69647c733a313a2231223b7468656d657c733a31313a22646f646765722d626c7565223b7363686f6f6c5f6e616d657c733a32373a224d49454e205363686f6f6c204d616e6167656d656e7420546f6f6c223b63757272656e63797c733a333a22424454223b63757272656e63795f73796d626f6c7c733a333a22e0a7b3223b6c616e67756167657c733a373a22656e676c697368223b72756e6e696e675f796561727c733a32313a224a756c792032303139202d204a756e652032303230223b7363686f6f6c5f656d61696c7c733a31363a22696e666f406d69656e2d69742e636f6d223b7363686f6f6c5f70686f6e657c733a31313a223031373231303032373030223b656e61626c655f72746c7c733a313a2230223b, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a1_holidays`
--

CREATE TABLE `a1_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_hostels`
--

CREATE TABLE `a1_hostels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_languages`
--

CREATE TABLE `a1_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bengali` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `spanish` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `arabic` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hindi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urdu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinese` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `japanese` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `portuguese` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `russian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `french` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `korean` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `german` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `italian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `thai` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hungarian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dutch` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `latin` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `indonesian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `turkish` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `greek` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `persian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `malay` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `telugu` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `tamil` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gujarati` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `polish` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ukrainian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `panjabi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `romanian` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `burmese` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `yoruba` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hausa` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_languages`
--

INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(1, 'add', 'Add', 'যোগ করুন ', 'AÃ±adir', 'Ø¥Ø¶Ø§ÙØ©', 'à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº', 'åŠ ', 'è¿½åŠ ', 'Adicionar', 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ', 'Ajouter', 'ë”í•˜ë‹¤', 'HinzufÃ¼gen', 'Inserisci', 'à¹€à¸žà¸´à¹ˆà¸¡', 'hozzÃ¡ad', 'Toevoegen', 'addere', 'Menambahkan', 'Eklemek', 'Î ÏÎ¿ÏƒÎ¸Î­Ï„Ï‰', 'Ø§Ø¶Ø§ÙÙ‡ Ú©Ø±Ø¯Ù†', 'Tambah', 'à°šà±‡à°°à±à°šà±', 'à®•à¯‚à®Ÿà¯à®Ÿà¯', 'àª‰àª®à«‡àª°à«‹', 'Dodaj', 'Ð”Ð¾Ð´Ð°Ñ‚Ð¸', 'à¨œà©‹à©œà©‹', 'AdÄƒuga', 'á€•á€±á€«á€„á€ºá€¸', 'Fi kun', 'Æ˜ara', NULL, NULL),
(2, 'edit', 'Edit', 'সম্পাদনা করুন ', 'Editar', 'ØªØµØ­ÙŠØ­', 'à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ØªØ±Ù…ÛŒÙ…', 'ç¼–è¾‘', 'ç·¨é›†', 'Editar', 'Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'modifier', 'íŽ¸ì§‘í•˜ë‹¤', 'Bearbeiten', 'modificare', 'à¹à¸à¹‰à¹„à¸‚', 'szerkesztÃ©se', 'Bewerk', 'recensere', 'Edit', 'DÃ¼zenle', 'Î•Ï€ÎµÎ¾ÎµÏÎ³Î±ÏƒÎ¯Î±', 'ÙˆÛŒØ±Ø§ÛŒØ´', 'Edit', 'à°®à°¾à°°à±à°šà±', 'à®¤à¯†à®¾à®•à¯', 'àª¸àª‚àªªàª¾àª¦àª¿àª¤ àª•àª°à«‹', 'EdytowaÄ‡', 'Ð ÐµÐ´Ð°Ð³ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨¸à©°à¨ªà¨¾à¨¦à¨¿à¨¤ à¨•à¨°à©‹', 'EditaÈ›i | Ã—', 'Edit á€€á€­á€¯', 'á¹¢atunká»', 'Shirya', NULL, NULL),
(3, 'delete', 'Delete', 'মুছুন ', 'Borrar', 'Ø­Ø°Ù', 'à¤¹à¤Ÿà¤¾à¤¨à¤¾', 'Ø­Ø°Ù Ú©Ø±ÛŒÚº', 'åˆ é™¤', 'å‰Šé™¤', 'Excluir', 'Ð£Ð´Ð°Ð»Ð¸Ñ‚ÑŒ', 'effacer', 'ì§€ìš°ë‹¤', 'LÃ¶schen', 'Elimina', 'à¸¥à¸š', 'TÃ¶rÃ¶l', 'Verwijder', 'delere', 'Menghapus', 'silmek', 'Î”Î¹Î±Î³ÏÎ¬Ï†Ï‰', 'Ø­Ø°Ù', 'Padam', 'à°¤à±Šà°²à°—à°¿à°‚à°šà±', 'à®…à®´à®¿', 'àª•àª¾àª¢à«€ àª¨àª¾àª‚àª–à«‹', 'KasowaÄ‡', 'Ð’Ð¸Ð´Ð°Ð»Ð¸Ñ‚Ð¸', 'à¨®à¨¿à¨Ÿà¨¾à¨“', 'È˜terge', 'á€–á€»á€€á€ºá€•á€…á€ºá€•á€«', 'Paaráº¹', 'Share', NULL, NULL),
(4, 'view', 'View', 'দেখুন ', 'Ver', 'Ø±Ø£ÙŠ', 'à¤°à¤¾à¤¯', 'Ø¯ÛŒÚ©Ú¾ÛŒÚº', 'è§†å›¾', 'ãƒ“ãƒ¥ãƒ¼', 'VisÃ£o', 'ÐŸÐ¾ÑÐ¼Ð¾Ñ‚Ñ€ÐµÑ‚ÑŒ', 'vue', 'ì „ë§', 'Aussicht', 'vista', 'à¸”à¸¹', 'KilÃ¡tÃ¡s', 'Uitzicht', 'View', 'Melihat', 'GÃ¶rÃ¼nÃ¼m', 'Î˜Î­Î±', 'Ú†Ø´Ù… Ø§Ù†Ø¯Ø§Ø²', 'Lihat', 'à°šà±‚à°¡à°‚à°¡à°¿', 'à®•à®¾à®£à¯à®•', 'àªœà«àª“', 'Widok', 'Ð’Ð¸Ð´', 'à¨µà©‡à¨–à©‹', 'Vedere', 'á€€á€¼á€Šá€·á€ºá€›á€¾á€¯á€á€¼á€„á€ºá€¸', 'Wo', 'Duba', NULL, NULL),
(5, 'action', 'Action', 'একশন ', 'AcciÃ³n', 'Ø¹Ù…Ù„', 'à¤•à¤¾à¤°à¥à¤¯', 'Ø¹Ù…Ù„', 'è¡ŒåŠ¨', 'ã‚¢ã‚¯ã‚·ãƒ§ãƒ³', 'AÃ§ao', 'Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ðµ', 'action', 'ë™ìž‘', 'Aktion', 'Azione', 'à¸à¸²à¸£à¸à¸£à¸°à¸—à¸³', 'AkciÃ³', 'Actie', 'actum', 'Tindakan', 'Aksiyon', 'Î”ÏÎ¬ÏƒÎ·', 'Ø¹Ù…Ù„', 'Tindakan', 'à°¯à°¾à°•à±à°·à°¨à±', 'à®…à®¤à®¿à®°à®Ÿà®¿', 'àª•à«àª°àª¿àª¯àª¾', 'Akcja', 'Ð”Ñ–Ñ', 'à¨à¨•à¨¸à¨¼à¨¨', 'AcÈ›iune', 'á€œá€¾á€¯á€•á€ºá€›á€¾á€¬á€¸á€™á€¾á€¯', 'Ise', 'Action', NULL, NULL),
(6, 'status', 'Status', 'স্ট্যাটাস ', 'Estado', 'Ø§Ù„Ø­Ø§Ù„Ø©', 'à¤¸à¥à¤¥à¤¿à¤¤à¤¿', 'Ø­Ø§Ù„Øª', 'çŠ¶æ€', 'çŠ¶æ…‹', 'Status', 'ÐŸÐ¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ Ð´ÐµÐ»', 'statut', 'ì§€ìœ„', 'Status', 'Stato', 'à¸ªà¸–à¸²à¸™à¸°', 'Ãllapot', 'staat', 'Status', 'Status', 'durum', 'ÎšÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·', 'ÙˆØ¶Ø¹ÛŒØª', 'Status', 'à°¸à±à°¥à°¿à°¤à°¿', 'à®¨à®¿à®²à¯ˆà®®à¯ˆ', 'àª¸à«àª¥àª¿àª¤àª¿', 'Status', 'Ð¡Ñ‚Ð°Ñ‚ÑƒÑ', 'à¨¸à¨¥à¨¿à¨¤à©€', 'stare', 'á€¡á€†á€„á€ºá€·á€¡á€á€”á€ºá€¸', 'Ipo', 'Matsayi', NULL, NULL),
(7, 'select', 'Select', 'বাছাই ', 'Seleccionar', 'ØªØ­Ø¯ÙŠØ¯', 'à¤šà¥à¤¨à¤¤à¥‡ à¤¹à¥ˆà¤‚', 'Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº', 'é€‰æ‹©', 'é¸æŠž', 'Selecione', 'Ð’Ñ‹Ð±Ñ€Ð°Ñ‚ÑŒ', 'sÃ©lectionner', 'ê³ ë¥´ë‹¤', 'WÃ¤hlen', 'Selezionare', 'à¹€à¸¥à¸·à¸­à¸', 'vÃ¡laszt', 'kiezen', 'select', 'Memilih', 'seÃ§mek', 'Î•Ï€Î¹Î»Î­Î³Ï‰', 'Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯', 'Pilih', 'à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿', 'à®¤à¯‡à®°à¯à®µà¯', 'àªªàª¸àª‚àª¦ àª•àª°à«‹', 'Wybierz', 'Ð’Ð¸Ð±ÐµÑ€Ñ–Ñ‚ÑŒ', 'à¨šà©à¨£à©‹', 'SelectaÈ›i', 'á€€á€­á€¯ Select á€œá€¯á€•á€ºá€•á€«', 'Yan', 'ZaÉ“i', NULL, NULL),
(8, 'photo', 'Photo', 'ছবি ', 'Foto', 'ØµÙˆØ±Ø© ÙÙˆØªÙˆØºØ±Ø§ÙÙŠØ©', 'à¤¤à¤¸à¥à¤µà¥€à¤°', 'ØªØµÙˆÛŒØ±', 'ç…§ç‰‡', 'å†™çœŸ', 'foto', 'Ð¤Ð¾Ñ‚Ð¾', 'photo', 'ì‚¬ì§„', 'Foto', 'Foto', 'à¸ à¸²à¸žà¸–à¹ˆà¸²à¸¢', 'FÃ©nykÃ©p', 'Foto', 'photo', 'Foto', 'FotoÄŸraf', 'Ï†Ï‰Ï„Î¿Î³ÏÎ±Ï†Î¯Î±', 'Ø¹Ú©Ø³', 'Foto', 'à°«à±‹à°Ÿà±‹', 'à®ªà¯à®•à¯ˆà®ªà¯à®ªà®Ÿ', 'àª«à«‹àªŸà«‹', 'ZdjÄ™cie', 'Ð¤Ð¾Ñ‚Ð¾Ð³Ñ€Ð°Ñ„Ñ–Ñ', 'à¨«à©‹à¨Ÿà©‹', 'Fotografie', 'á€“á€¬á€á€ºá€•á€¯á€¶', 'aworan', 'Hotuna', NULL, NULL),
(9, 'upload', 'Upload', 'আপ্লোড ', 'Subir', 'ØªØ­Ù…ÙŠÙ„', 'à¤…à¤ªà¤²à¥‹à¤¡', 'Ø§Ù¾ Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº', 'ä¸Šä¼ ', 'ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰', 'Envio', 'Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚ÑŒ', 'tÃ©lÃ©charger', 'ì—…ë¡œë“œ', 'Hochladen', 'Caricare', 'à¸­à¸±à¸›à¹‚à¸«à¸¥à¸”', 'FeltÃ¶ltÃ©s', 'Uploaden', 'Index', 'Upload', 'YÃ¼kleme', 'ÎœÎµÏ„Î±Ï†ÏŒÏÏ„Ï‰ÏƒÎ·', 'Ø¨Ø§Ø±Ú¯Ø°Ø§Ø±ÛŒ', 'Muat naik', 'à°…à°ªà±à°²à±‹à°¡à±', 'à®ªà®¤à®¿à®µà¯‡à®±à¯à®±à®®à¯', 'àª…àªªàª²à«‹àª¡ àª•àª°à«‹', 'PrzekazaÄ‡ plik', 'Ð—Ð°Ð²Ð°Ð½Ñ‚Ð°Ð¶Ð¸Ñ‚Ð¸', 'à¨…à¨ªà¨²à©‹à¨¡ à¨•à¨°à©‹', 'ÃŽncÄƒrcaÈ›i', 'á€œá€½á€¾á€á€ºá€á€„á€ºá€á€¼á€„á€ºá€¸', 'Po si', 'Upload', NULL, NULL),
(10, 'created', 'Created', 'তৈরি করা হয়েছে ', 'Creado', 'Ø®Ù„Ù‚Øª', 'à¤¬à¤¨à¤¾à¤¯à¤¾ à¤¥à¤¾', 'ØªØ®Ù„ÛŒÙ‚', 'åˆ›å»º', 'ä½œæˆã—ãŸ', 'Criada', 'ÑÐ¾Ð·Ð´Ð°Ð½Ð½Ñ‹Ð¹', 'crÃ©Ã©', 'ë§Œë“¤ì–´ì§„', 'Erstellt', 'Creato', 'à¸—à¸µà¹ˆà¸ªà¸£à¹‰à¸²à¸‡à¹„à¸§à¹‰', 'AlkotÃ³', 'gemaakt', 'creatum', 'Dibuat', 'dÃ¼zenlendi', 'Î”Î·Î¼Î¹Î¿Ï…ÏÎ³Î®Î¸Î·ÎºÎµ', 'Ø§ÛŒØ¬Ø§Ø¯ Ø´Ø¯Ù‡', 'Dicipta', 'à°°à±‚à°ªà±Šà°‚à°¦à°¿à°‚à°šà°¬à°¡à°¿à°‚à°¦à°¿', 'à®‰à®°à¯à®µà®¾à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª¬àª¨àª¾àªµà«àª¯à«àª‚', 'Stworzony', 'Ð¡Ñ‚Ð²Ð¾Ñ€ÐµÐ½Ð¾', 'à¨¬à¨£à¨¾à¨‡à¨† à¨—à¨¿à¨†', 'CreatÄƒ', 'Created', 'Ti á¹£áº¹da', 'An yi', NULL, NULL),
(11, 'modified', 'Modified', 'পরিবর্তন করা হলো ', 'Modificado', 'ØªÙ… Ø§Ù„ØªØ¹Ø¯ÙŠÙ„', 'à¤¸à¤‚à¤¶à¥‹à¤§à¤¿à¤¤', 'ØªØ±Ù…ÛŒÙ…', 'æ”¹æ€§', 'å¤‰æ›´ã•ã‚ŒãŸ', 'Modificado', 'Ð¼Ð¾Ð´Ð¸Ñ„Ð¸Ñ†Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹', 'modifiÃ©', 'ìˆ˜ì • ë¨', 'GeÃ¤ndert', 'Modificata', 'à¸”à¸±à¸”à¹à¸›à¸¥à¸‡', 'MÃ³dosÃ­tott', 'gewijzigde', 'Modified', 'Diubah', 'DeÄŸiÅŸtirilmiÅŸ', 'Î¤ÏÎ¿Ï€Î¿Ï€Î¿Î¹Î®Î¸Î·ÎºÎµ', 'Ø§ØµÙ„Ø§Ø­ Ø´Ø¯Ù‡', 'Diubah suai', 'à°¸à°µà°°à°¿à°‚à°šà°¿à°¨', 'à®¤à®¿à®°à¯à®¤à¯à®¤à®ªà¯à®ªà®Ÿà¯à®Ÿ', 'àª¸àª‚àª¶à«‹àª§àª¿àª¤', 'Zmodyfikowany', 'Ð—Ð¼Ñ–Ð½ÐµÐ½Ð¾', 'à¨¸à©°à¨¸à¨¼à©‹à¨§à¨¿à¨¤', 'Modificat', 'á€•á€¼á€¯á€•á€¼á€„á€ºá€‘á€¬á€¸á€žá€±á€¬', 'Ti yipada', 'An gyara', NULL, NULL),
(12, 'manage', 'Manage', 'ম্যানেজ ', 'Gestionar', 'ØªØ¯Ø¨ÙŠØ±', 'à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤', 'Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†', 'ç®¡ç†', 'Gerir', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ', 'gÃ©rer', 'ê¾¸ë¦¬ë‹¤', 'Verwalten', 'Gestire', 'à¸ˆà¸±à¸”à¸à¸²à¸£', 'kezel', 'beheren', 'curo', 'Mengelola', 'yÃ¶netme', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¯Î¶Î¿Î½Ï„Î±Î¹', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú©Ø±Ø¯Ù†', 'Mengurus', 'à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°¡à°¾à°¨à°¿à°•à°¿', 'à®¨à®¿à®°à¯à®µà®•à®¿à®•à¯à®•à®µà¯à®®à¯', 'àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzanie', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à¨¨à¨¾, à¨•à¨¾à¨¬à©‚ à¨•à¨°à¨¨à¨¾', 'Administra', 'á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso', 'Sarrafa', NULL, NULL),
(13, 'cancel', 'Cancel', 'বাতিল ', 'Cancelar', 'Ø¥Ù„ØºØ§Ø¡', 'à¤°à¤¦à¥à¤¦ à¤•à¤°à¤¨à¤¾', 'Ù…Ù†Ø³ÙˆØ® Ú©Ø±ÛŒÚº', 'å–æ¶ˆ', 'ã‚­ãƒ£ãƒ³ã‚»ãƒ«', 'Cancelar', 'ÐžÑ‚Ð¼ÐµÐ½Ð°', 'Annuler', 'ì·¨ì†Œ', 'Stornieren', 'Annulla', 'à¸¢à¸à¹€à¸¥à¸´à¸', 'MegszÃ¼nteti', 'Annuleer', 'Cancel', 'Membatalkan', 'Ä°ptal etmek', 'ÎœÎ±Ï„Î±Î¯Ï‰ÏƒÎ·', 'Ù„ØºÙˆ', 'Batalkan', 'à°°à°¦à±à°¦à±', 'à®°à®¤à¯à®¤à¯', 'àª°àª¦ àª•àª°à«‹', 'Anuluj', 'Ð¡ÐºÐ°ÑÑƒÐ²Ð°Ñ‚Ð¸', 'à¨°à©±à¨¦ à¨•à¨°à©‹', 'Anulare', 'Cancel', 'Fagilee', 'Cancel', NULL, NULL),
(14, 'submit', 'Submit', 'সাবমিট ', 'Enviar', 'Ø®Ø¶Ø¹', 'à¤œà¤®à¤¾ à¤•à¤°à¥‡à¤‚', 'Ø¬Ù…Ø¹', 'æäº¤', 'æå‡ºã™ã‚‹', 'Enviar', 'ÐžÑ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ', 'soumettre', 'ì œì¶œ', 'einreichen', 'Sottoscrivi', 'à¹€à¸ªà¸™à¸­', 'bekÃ¼ldÃ©se', 'voorleggen', 'submit', 'Menyerahkan', 'GÃ¶nder', 'Ï…Ï€Î¿Î²Î¬Î»Î»Î¿Ï…Î½', 'Ø§Ø±Ø³Ø§Ù„', 'Hantar', 'à°¸à°®à°°à±à°ªà°¿à°‚à°šà°‚à°¡à°¿', 'à®šà®®à®°à¯à®ªà¯à®ªà®¿', 'àª¸àª¬àª®àª¿àªŸ àª•àª°à«‹', 'ZatwierdÅº', 'Ð’Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð¸Ñ‚Ð¸', 'à¨œà¨®à©à¨¹à¨¾à¨‚ à¨•à¨°à©‹', 'A depune', 'á€á€„á€ºá€žá€½á€„á€ºá€¸', 'Firaná¹£áº¹', 'Sanya', NULL, NULL),
(15, 'update', 'Update', 'আপডেট ', 'Actualizar', 'ØªØ­Ø¯ÙŠØ«', 'à¤…à¤¦à¥à¤¯à¤¤à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø§Ù¾ ÚˆÛŒÙ¹', 'æ›´æ–°', 'æ›´æ–°', 'Atualizar', 'ÐžÐ±Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ', 'mettre Ã  jour', 'ìµœì‹  ì •ë³´', 'Aktualisieren', 'Aggiornare', 'à¸›à¸£à¸±à¸šà¸›à¸£à¸¸à¸‡', 'frissÃ­tÃ©s', 'Bijwerken', 'Update', 'Memperbarui', 'GÃ¼ncelleÅŸtirme', 'Î•ÎºÏƒÏ…Î³Ï‡ÏÎ¿Î½Î¯Î¶Ï‰', 'Ø¨Ù‡ Ø±ÙˆØ² Ø±Ø³Ø§Ù†ÛŒ', 'Kemas kini', 'à°¨à°µà±€à°•à°°à°£', 'à®ªà¯à®¤à¯à®ªà¯à®ªà®¿à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª…àªªàª¡à«‡àªŸ àª•àª°à«‹', 'Aktualizacja', 'ÐžÐ½Ð¾Ð²Ð¸Ñ‚Ð¸', 'à¨…à©±à¨ªà¨¡à©‡à¨Ÿ à¨•à¨°à©‹', 'ActualizaÈ›i', 'Update á€€á€­á€¯', 'Imudojuiwá»n', 'Sabuntawa', NULL, NULL),
(16, 'no_data_found', 'No available data found ', 'দুঃখিত কোনো ডাটা পাওয়া যায়নি ', 'No hay datos disponibles encontrados', 'Ù„Ù… ÙŠØªÙ… Ø§Ù„Ø¹Ø«ÙˆØ± Ø¹Ù„Ù‰ Ø¨ÙŠØ§Ù†Ø§Øª Ù…ØªÙˆÙØ±Ø©', 'à¤•à¥‹à¤ˆ à¤‰à¤ªà¤²à¤¬à¥à¤§ à¤¡à¥‡à¤Ÿà¤¾ à¤¨à¤¹à¥€à¤‚ à¤®à¤¿à¤²à¤¾', 'Ø¯Ø³ØªÛŒØ§Ø¨ ÚˆÛŒÙ¹Ø§ Ù†ÛÛŒÚº Ù…Ù„Ø§', 'æ²¡æœ‰æ‰¾åˆ°å¯ç”¨çš„æ•°æ®', 'åˆ©ç”¨å¯èƒ½ãªãƒ‡ãƒ¼ã‚¿ãŒè¦‹ã¤ã‹ã‚Šã¾ã›ã‚“', 'NÃ£o foram encontrados dados disponÃ­veis', 'ÐÐµÑ‚ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ñ… Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'mettre Ã  jour...', 'ì‚¬ìš©í•  ìˆ˜ìžˆëŠ” ë°ì´í„°ê°€ ì—†ìŠµë‹ˆë‹¤.', 'Keine verfÃ¼gbaren Daten gefunden', 'Nessun dato disponibile trovato', 'à¹„à¸¡à¹ˆà¸žà¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸—à¸µà¹ˆà¸¡à¸µà¸­à¸¢à¸¹à¹ˆ', 'Nincs elÃ©rhetÅ‘ adat', 'Geen beschikbare gegevens gevonden', 'Notitia available non inveni', 'Tidak ditemukan data yang tersedia', 'Mevcut veri bulunamadÄ±', 'Î”ÎµÎ½ Î²ÏÎ­Î¸Î·ÎºÎ±Î½ Î´Î¹Î±Î¸Î­ÏƒÎ¹Î¼Î± Î´ÎµÎ´Î¿Î¼Î­Î½Î±', 'Ø¯Ø§Ø¯Ù‡ Ù‡Ø§ÛŒ Ù…ÙˆØ¬ÙˆØ¯ ÛŒØ§ÙØª Ù†Ø´Ø¯', 'Tiada data yang terdapat', 'à°…à°‚à°¦à±à°¬à°¾à°Ÿà±à°²à±‹ à°‰à°¨à±à°¨ à°¡à±‡à°Ÿà°¾ à°•à°¨à±à°—à±Šà°¨à°¬à°¡à°²à±‡à°¦à±', 'à®•à®¿à®Ÿà¯ˆà®•à¯à®•à®•à¯à®•à¯‚à®Ÿà®¿à®¯ à®¤à®°à®µà¯à®•à®³à¯ à®Žà®¤à¯à®µà¯à®®à¯ à®•à®¿à®Ÿà¯ˆà®•à¯à®•à®µà®¿à®²à¯à®²à¯ˆ', 'àª•à«‹àªˆ àª‰àªªàª²àª¬à«àª§ àª®àª¾àª¹àª¿àª¤à«€ àª®àª³à«€ àª¨àª¥à«€', 'Nie znaleziono Å¼adnych dostÄ™pnych danych', 'ÐÐµ Ð·Ð½Ð°Ð¹Ð´ÐµÐ½Ð¾ Ð´Ð¾ÑÑ‚ÑƒÐ¿Ð½Ð¸Ñ… Ð´Ð°Ð½Ð¸Ñ…', 'à¨•à©‹à¨ˆ à¨‰à¨ªà¨²à¨¬à¨§ à¨¡à©‡à¨Ÿà¨¾ à¨¨à¨¹à©€à¨‚ à¨®à¨¿à¨²à¨¿à¨†', 'Nu s-au gÄƒsit date disponibile', 'á€™á€»á€¾á€™á€á€½á€±á€·á€™á€›á€›á€¾á€­á€”á€­á€¯á€„á€ºá€•á€«á€’á€±á€á€¬', 'Ko si data to wa ti o wa', 'Babu samin bayanai da aka samo', NULL, NULL),
(17, 'confirm_alert', 'Are you sure you want to delete this', 'কনফার্ম এলার্ট ', 'EstÃ¡s seguro que quieres eliminar esto', 'Ù‡Ù„ Ø£Ù†Øª Ù…ØªØ£ÙƒØ¯ Ø£Ù†Ùƒ ØªØ±ÙŠØ¯ Ø­Ø°Ù Ù‡Ø°Ø§', 'à¤•à¥à¤¯à¤¾ à¤†à¤ª à¤µà¤¾à¤•à¤ˆ à¤‡à¤¸à¥‡ à¤¹à¤Ÿà¤¾à¤¨à¤¾ à¤šà¤¾à¤¹à¤¤à¥‡ à¤¹à¥ˆà¤‚', 'Ú©ÛŒØ§ Ø¢Ù¾ ÙˆØ§Ù‚Ø¹ÛŒ ÛŒÛ Ø­Ø°Ù Ú©Ø±Ù†Ø§ Ú†Ø§ÛØªÛ’ ÛÛŒÚº', 'ä½ ç¡®å®šè¦åˆ é™¤è¿™ä¸ªå—', 'ã“ã‚Œã‚’å‰Šé™¤ã—ã¦ã‚‚ã‚ˆã‚ã—ã„ã§ã™ã‹ï¼Ÿ', 'Tem certeza de que deseja excluir isso', 'Ð’Ñ‹ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ñ…Ð¾Ñ‚Ð¸Ñ‚Ðµ ÑƒÐ´Ð°Ð»Ð¸Ñ‚ÑŒ ÑÑ‚Ð¾', 'vous Ãªtes sÃ»r de vouloir supprimer ce', 'ì´ ì‚¬ì§„ì„ ì‚­ì œ í•˜ì‹œê² ìŠµë‹ˆê¹Œ?', 'MÃ¶chtest du das wirklich lÃ¶schen?', 'Sei sicuro di voler cancellare questo', 'à¸„à¸¸à¸“à¹à¸™à¹ˆà¹ƒà¸ˆà¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆà¸§à¹ˆà¸²à¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¸¥à¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸™à¸µà¹‰', 'Biztosan tÃ¶rÃ¶lni szeretnÃ©', 'Weet je zeker dat je dit wilt verwijderen?', 'Esne certus vos volo ut delete is', 'Apa kamu yakin ingin menghapus ini', 'Bunu silmek istediÄŸinizden emin misiniz', 'Î•Î¯ÏƒÏ„Îµ Î²Î­Î²Î±Î¹Î¿Î¹ ÏŒÏ„Î¹ Î¸Î­Î»ÎµÏ„Îµ Î½Î± Ï„Î¿ Î´Î¹Î±Î³ÏÎ¬ÏˆÎµÏ„Îµ', 'Ø¢ÛŒØ§ Ù…Ø·Ù…Ø¦Ù† Ù‡Ø³ØªÛŒØ¯ Ú©Ù‡ Ù…ÛŒ Ø®ÙˆØ§Ù‡ÛŒØ¯ Ø§ÛŒÙ† Ø±Ø§ Ø­Ø°Ù Ú©Ù†ÛŒØ¯', 'Adakah anda pasti mahu memadam ini', 'à°®à±€à°°à± à°¦à±€à°¨à±à°¨à°¿ à°–à°šà±à°šà°¿à°¤à°‚à°—à°¾ à°¤à±Šà°²à°—à°¿à°‚à°šà°¾à°²à°¨à±à°•à±à°‚à°Ÿà±à°¨à±à°¨à°¾à°°à°¾', 'à®‡à®¤à¯ˆ à®¨à¯€ à®¨à®¿à®šà¯à®šà®¯à®®à®¾à®• à®¨à¯€à®•à¯à®• à®µà®¿à®°à¯à®®à¯à®ªà¯à®•à®¿à®±à®¾à®¯à®¾?', 'àª¶à«àª‚ àª¤àª®à«‡ àª–àª°à«‡àª–àª° àª†àª¨à«‡ àª•àª¾àª¢à«€ àª¨àª¾àª–àªµàª¾ àª®àª¾àª‚àª—à«‹ àª›à«‹?', 'Czy na pewno chcesz to usunÄ…Ä‡?', 'Ð’Ð¸ Ð²Ð¿ÐµÐ²Ð½ÐµÐ½Ñ–, Ñ‰Ð¾ Ñ…Ð¾Ñ‡ÐµÑ‚Ðµ Ð²Ð¸Ð´Ð°Ð»Ð¸Ñ‚Ð¸ Ñ†Ðµ', 'à¨•à©€ à¨¤à©à¨¸à©€à¨‚ à¨¨à¨¿à¨¸à¨¼à¨šà¨¤ à¨°à©‚à¨ª à¨¤à©‹à¨‚ à¨‡à¨¸ à¨¨à©‚à©° à¨®à¨¿à¨Ÿà¨¾à¨‰à¨£à¨¾ à¨šà¨¾à¨¹à©à©°à¨¦à©‡ à¨¹à©‹?', 'Sigur doriÈ›i sÄƒ È™tergeÈ›i acest lucru', 'á€žá€„á€ºá€¤á€•á€šá€ºá€–á€»á€€á€ºá€–á€­á€¯á€·á€œá€­á€¯á€á€¬á€žá€±á€á€»á€¬', 'á¹¢e o da á» loju pe o fáº¹ paaráº¹ yii', 'Kuna tabbatar kana so ka share wannan', NULL, NULL),
(18, 'insert_success', 'Data inserted successfully', 'অন্তর্ভূক্তি সফল ', 'Datos insertados con Ã©xito', 'ØªÙ… Ø¥Ø¯Ø±Ø§Ø¬ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ø¨Ù†Ø¬Ø§Ø­', 'à¤¡à¥‡à¤Ÿà¤¾ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤¡à¤¾à¤²à¤¾ à¤—à¤¯à¤¾', 'ÚˆÛŒÙ¹Ø§ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø¯Ø§Ø®Ù„ ÛÙˆÚ¯Ø¦ÛŒ ÛÛ’', 'æ•°æ®æ’å…¥æˆåŠŸ', 'ãƒ‡ãƒ¼ã‚¿ãŒæ­£å¸¸ã«æŒ¿å…¥ã•ã‚ŒãŸ', 'Dados inseridos com sucesso', 'Ð”Ð°Ð½Ð½Ñ‹Ðµ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð²ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ñ‹', 'DonnÃ©es insÃ©rÃ©es avec succÃ¨s', 'ë°ì´í„°ê°€ ì„±ê³µì ìœ¼ë¡œ ì‚½ìž…ë˜ì—ˆìŠµë‹ˆë‹¤.', 'Daten wurden erfolgreich eingefÃ¼gt', 'Dati inseriti correttamente', 'à¹à¸—à¸£à¸à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§', 'Az adatok sikeresen be vannak illesztve', 'Gegevens succesvol ingevoegd', 'Data bene insertas', 'Data berhasil dimasukkan', 'Veriler baÅŸarÄ±yla eklendi', 'Î¤Î± Î´ÎµÎ´Î¿Î¼Î­Î½Î± Î­Ï‡Î¿Ï…Î½ ÎµÎ¹ÏƒÎ±Ï‡Î¸ÎµÎ¯ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±', 'Ø¯Ø§Ø¯Ù‡ Ù‡Ø§ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª ÙˆØ§Ø±Ø¯ Ø´Ø¯Ù†Ø¯', 'Data dimasukkan dengan jayanya', 'à°¡à±‡à°Ÿà°¾ à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°šà±Šà°ªà±à°ªà°¿à°‚à°šà°¬à°¡à°¿à°‚à°¦à°¿', 'à®¤à®°à®µà¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®šà¯‡à®°à¯à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª¡à«‡àªŸàª¾ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª¶àª¾àª®à«‡àª² àª•àª°à«àª¯à«‹', 'Dane wstawione pomyÅ›lnie', 'Ð”Ð°Ð½Ñ– Ð²Ð²ÐµÐ´ÐµÐ½Ñ– ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾', 'à¨¡à¨¾à¨Ÿà¨¾ à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨ªà¨¾à¨‡à¨† à¨—à¨¿à¨†', 'Datele introduse cu succes', 'á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€–á€¼á€Šá€ºá€·á€…á€½á€€á€ºá€–á€­á€¯á€·á€’á€±á€á€¬', 'Data ti a fi sii ni ifijiÅ¡áº¹', 'Bayanin da aka sanya nasara', NULL, NULL),
(19, 'insert_failed', 'Data insert failed. Please try again ', 'অন্তর্ভূক্তি ব্যর্থ ', 'La inserciÃ³n de datos fallÃ³. IntÃ©ntalo de nuevo', 'Ø£Ø®ÙÙ‚Øª Ø¹Ù…Ù„ÙŠØ© Ø¥Ø¯Ø±Ø§Ø¬ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª. Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰', 'à¤¡à¥‡à¤Ÿà¤¾ à¤¡à¤¾à¤²à¤¨à¤¾ à¤µà¤¿à¤«à¤² à¤¹à¥à¤† à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¥à¤¨: à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚', 'ÚˆÛŒÙ¹Ø§ Ø¯Ø§Ø®Ù„ Ù†Ø§Ú©Ø§Ù… ÛÙˆÚ¯ÛŒØ§. Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº', 'æ•°æ®æ’å…¥å¤±è´¥ã€‚ è¯·å†è¯•ä¸€æ¬¡', 'ãƒ‡ãƒ¼ã‚¿ã®æŒ¿å…¥ã«å¤±æ•—ã—ã¾ã—ãŸã€‚ ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„', 'A inserÃ§Ã£o de dados falhou. Por favor, tente novamente', 'ÐžÑˆÐ¸Ð±ÐºÐ° Ð²Ð²Ð¾Ð´Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·', 'Linsertion de donnÃ©es a Ã©chouÃ©. Sil vous plaÃ®t essayez', 'ë°ì´í„° ì‚½ìž…ì— ì‹¤íŒ¨í–ˆìŠµë‹ˆë‹¤. ë‹¤ì‹œ ì‹œë„ì ìœ¼ë¡œ ì—…ë°ì´íŠ¸ë˜ì—ˆìŠµë‹ˆë‹¤.í•˜ì‹­ì‹œì˜¤.', 'Daten einfÃ¼gen fehlgeschlagen. Bitte versuche es erneut', 'Inserimento dati non riuscito. Per favore riprova', 'à¹à¸—à¸£à¸à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§ à¸à¸£à¸¸à¸“à¸²à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡', 'Az adatbetÃ¶ltÃ©s meghiÃºsult. KÃ©rlek prÃ³bÃ¡ld Ãºjra', 'Gegevensinvoer mislukt. Probeer het opnieuw', 'Data inserta defecit. Quaero, iterum conare', 'Penyisipan data gagal Silahkan coba lagi', 'Veri giriÅŸi baÅŸarÄ±sÄ±z oldu. LÃ¼tfen tekrar deneyin', 'Î— ÎµÎ¹ÏƒÎ±Î³Ï‰Î³Î® Î´ÎµÎ´Î¿Î¼Î­Î½Ï‰Î½ Î±Ï€Î­Ï„Ï…Ï‡Îµ. Î Î‘Î¡Î‘ÎšÎ‘Î›Î© Ï€ÏÎ¿ÏƒÏ€Î±Î¸Î·ÏƒÎµ Î¾Î±Î½Î±', 'Ø¯Ø±Ø¬ Ø§Ø·Ù„Ø§Ø¹Ø§Øª ÙˆØ§Ø±Ø¯ Ù†Ø´Ø¯ Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ ØªÙ„Ø§Ø´ Ú©Ù†ÛŒØ¯', 'Masukkan data gagal. Sila cuba lagi', 'à°¡à±‡à°Ÿà°¾ à°šà±Šà°ªà±à°ªà°¿à°‚à°šà°¡à°‚ à°µà°¿à°«à°²à°®à±ˆà°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°²à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à®°à®µà¯ à®šà¯†à®°à¯à®• à®®à¯à®Ÿà®¿à®¯à®µà®¿à®²à¯à®²à¯ˆ. à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¡à«‡àªŸàª¾ àª¶àª¾àª®à«‡àª² àª¨àª¿àª·à«àª«àª³. àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¤àª¨ àª•àª°à«‹', 'Nie udaÅ‚o siÄ™ wstawiÄ‡ danych. ProszÄ™ sprÃ³buj ponownie', 'Ð’ÑÑ‚Ð°Ð²ÐºÐ° Ð´Ð°Ð½Ð¸Ñ… Ð½Ðµ Ð²Ð´Ð°Ð»Ð¾ÑÑ. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ° ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ‰Ðµ Ñ€Ð°Ð·', 'à¨¡à©‡à¨Ÿà¨¾ à¨¡à©à¨°à¨Ÿ à¨•à¨°à¨¨ à¨µà¨¿à©±à¨š à¨…à¨¸à¨«à¨². à¨®à©à©œ à¨•à©‹à¨¸à¨¼à¨¿à¨¸ à¨•à¨°à©‹ à¨œà©€', 'Introducerea datelor a eÈ™uat. VÄƒ rugÄƒm sÄƒ Ã®ncercaÈ›i din nou', 'á€’á€±á€á€¬á€€á€­á€¯á€‘á€Šá€·á€ºá€žá€½á€„á€ºá€¸á€™á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€á€²á€·á€•á€±á‹ á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«', 'Asun faili ti kuna. Já»wá» gbiyanju láº¹áº¹kansi', 'Saka bayanai ya kasa. Da fatan a sake gwadawa', NULL, NULL),
(20, 'update_success', 'Data updated successfully', 'হালনাগাদকরণ সফল ', 'Datos actualizados con Ã©xito', 'ØªÙ… ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ø¨Ù†Ø¬Ø§Ø­', 'à¤¡à¥‡à¤Ÿà¤¾ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤…à¤ªà¤¡à¥‡à¤Ÿ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾', 'ÚˆÛŒÙ¹Ø§ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø§Ù¾ ÚˆÛŒÙ¹ Ú©ÛŒØ§', 'æ•°æ®å·²æˆåŠŸæ›´æ–°', 'ãƒ‡ãƒ¼ã‚¿ãŒæ­£å¸¸ã«æ›´æ–°ã•ã‚ŒãŸ', 'Dados atualizados com sucesso', 'ÐžÐ±Ð½Ð¾Ð²Ð»ÐµÐ½Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ðµ', 'Data updated successfully', 'ë°ì´í„°ê°€ ì„±ê³µì ìœ¼ë¡œ ì—…ë°ì´íŠ¸ë˜ì—ˆìŠµë‹ˆë‹¤..', 'Daten wurden erfolgreich aktualisiert', 'Dati aggiornati con successo', 'à¸­à¸±à¸›à¹€à¸”à¸•à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§', 'Az adatok sikeresen frissÃ¼ltek', 'Gegevens zijn succesvol bijgewerkt', 'Updated notitia feliciter', 'Data berhasil diperbarui', 'Veri baÅŸarÄ±yla gÃ¼ncellendiVeri gÃ¼ncellemesi baÅŸarÄ±sÄ±z oldu. LÃ¼tfen tekrar deneyin', 'Î¤Î± Î´ÎµÎ´Î¿Î¼Î­Î½Î± ÎµÎ½Î·Î¼ÎµÏÏŽÎ¸Î·ÎºÎ±Î½ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±', 'Ø¯Ø§Ø¯Ù‡ Ù‡Ø§ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø¨Ù‡ Ø±ÙˆØ² Ø´Ø¯', 'Data dikemas kini berjaya', 'à°¡à±‡à°Ÿà°¾ à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°¨à°µà±€à°•à°°à°¿à°‚à°šà°¬à°¡à°¿à°‚à°¦à°¿', 'à®¤à®°à®µà¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®ªà¯à®¤à¯à®ªà¯à®ªà®¿à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª¡à«‡àªŸàª¾ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª…àªªàª¡à«‡àªŸ àª¥àª¯à«‹ àª›à«‡', 'Data zaktualizowana pomyÅ›lnie', 'Ð”Ð°Ð½Ñ– Ð¾Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾ ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾', 'à¨¡à¨¾à¨Ÿà¨¾ à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨…à¨ªà¨¡à©‡à¨Ÿ à¨•à©€à¨¤à¨¾ à¨—à¨¿à¨†', 'Datele au fost actualizate cu succes', 'á€’á€±á€á€¬á€€á€­á€¯á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬ updated', 'Ti á¹£e imudojuiwá»n imudojuiwá»n ni ifijiÅ¡áº¹', 'An sabunta bayanan da aka sabunta', NULL, NULL),
(21, 'update_failed', 'Data update failed. Please try again', 'হালনাগাদকরণ ব্যর্থ ', 'La actualizaciÃ³n de datos fallÃ³. IntÃ©ntalo de nuevo', 'ÙØ´Ù„ ØªØ­Ø¯ÙŠØ« Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª. Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰', 'à¤¡à¥‡à¤Ÿà¤¾ à¤…à¤ªà¤¡à¥‡à¤Ÿ à¤µà¤¿à¤«à¤² à¤¹à¥à¤† à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¥à¤¨: à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚', 'ÚˆÛŒÙ¹Ø§ Ø§Ù¾ ÚˆÛŒÙ¹ Ù†Ø§Ú©Ø§Ù… ÛÙˆÚ¯ÛŒØ§. Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº', 'æ•°æ®æ›´æ–°å¤±è´¥ã€‚ è¯·å†è¯•ä¸€æ¬¡', 'ãƒ‡ãƒ¼ã‚¿ã®æ›´æ–°ã«å¤±æ•—ã—ã¾ã—ãŸã€‚ ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„', 'A atualizaÃ§Ã£o de dados falhou. Por favor, tente novamente', 'ÐžÑˆÐ¸Ð±ÐºÐ° Ð¾Ð±Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ñ Ð´Ð°Ð½Ð½Ñ‹Ñ…. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·', 'La mise Ã  jour des donnÃ©es a Veuillez rÃ©essayer', 'ë°ì´í„° ì—…ë°ì´íŠ¸ì— ì‹¤íŒ¨í–ˆìŠµë‹ˆë‹¤. ë‹¤ì‹œ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'Datenaktualisierung fehlgeschlagen. Bitte versuche es erneut', 'Aggiornamento dati fallito. Per favore riprova', 'à¸à¸²à¸£à¸­à¸±à¸›à¹€à¸”à¸•à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§ à¸à¸£à¸¸à¸“à¸²à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡', 'Az adatfrissÃ­tÃ©s nem sikerÃ¼lt. KÃ©rlek prÃ³bÃ¡ld Ãºjra', 'Gegevensupdate mislukt. Probeer het opnieuw', 'Data update defecit. Quaero, iterum conare', 'Pembaruan data gagal Silahkan coba lagi', 'Veri gÃ¼ncellemesi baÅŸarÄ±sÄ±z oldu. LÃ¼tfen tekrar deneyin', 'Î— ÎµÎ½Î·Î¼Î­ÏÏ‰ÏƒÎ· Î´ÎµÎ´Î¿Î¼Î­Î½Ï‰Î½ Î±Ï€Î­Ï„Ï…Ï‡Îµ. Î Î‘Î¡Î‘ÎšÎ‘Î›Î© Ï€ÏÎ¿ÏƒÏ€Î±Î¸Î·ÏƒÎµ Î¾Î±Î½Î±', 'Ø¨Ù‡ Ø±ÙˆØ² Ø±Ø³Ø§Ù†ÛŒ Ø¯Ø§Ø¯Ù‡ Ø®Ø±Ø§Ø¨ Ø´Ø¯ Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ ØªÙ„Ø§Ø´ Ú©Ù†ÛŒØ¯', 'Kemas kini data gagal. Sila cuba lagi', 'à°¡à±‡à°Ÿà°¾ à°¨à°µà±€à°•à°°à°£ à°µà°¿à°«à°²à°®à±ˆà°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°²à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à®°à®µà¯ à®ªà¯à®¤à¯à®ªà¯à®ªà®¿à®ªà¯à®ªà¯ à®¤à¯‹à®²à¯à®µà®¿à®¯à®Ÿà¯ˆà®¨à¯à®¤à®¤à¯. à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¡à«‡àªŸàª¾ àª…àªªàª¡à«‡àªŸ àª¨àª¿àª·à«àª«àª³ àª¥àª¯à«àª‚. àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¤àª¨ àª•àª°à«‹', 'Aktualizacja danych nie powiodÅ‚a siÄ™. ProszÄ™ sprÃ³buj ponownie', 'ÐÐµ Ð²Ð´Ð°Ð»Ð¾ÑÑ Ð¾Ð½Ð¾Ð²Ð¸Ñ‚Ð¸ Ð´Ð°Ð½Ñ–. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ° ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ‰Ðµ Ñ€Ð°Ð·', 'à¨¡à¨¾à¨Ÿà¨¾ à¨…à¨ªà¨¡à©‡à¨Ÿ à¨…à¨¸à¨«à¨². à¨®à©à©œ à¨•à©‹à¨¸à¨¼à¨¿à¨¸ à¨•à¨°à©‹ à¨œà©€', 'Actualizarea datelor a eÈ™uat. VÄƒ rugÄƒm sÄƒ Ã®ncercaÈ›i din nou', 'á€’á€±á€á€¬á€€á€­á€¯ update á€€á€­á€¯á€™á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€á€²á€·á€•á€±á‹ á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«', 'Imudara data ti kuna. Já»wá» gbiyanju láº¹áº¹kansi', 'Rashin bayanin bayanai ya kasa. Da fatan a sake gwadawa', NULL, NULL),
(22, 'delete_success', 'Data deleted successully', 'সফল ভাবে মুছা হলো ', 'Datos borrados con Ã©xito', 'ØªÙ… Ø­Ø°Ù Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ø¨Ù†Ø¬Ø§Ø­', 'à¤¡à¤¾à¤Ÿà¤¾ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤¹à¤Ÿà¤¾ à¤¦à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾', 'ÚˆÛŒÙ¹Ø§ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø®Ø§Ø±Ø¬ ÛÙˆÚ¯Ø¦ÛŒ ÛÛ’', 'æ•°æ®åˆ é™¤æˆåŠŸ', 'ãƒ‡ãƒ¼ã‚¿ãŒæ­£å¸¸ã«å‰Šé™¤ã•ã‚ŒãŸ', 'Dados eliminados com sucesso', 'Ð£Ð´Ð°Ð»ÐµÐ½Ñ‹ Ð´Ð°Ð½Ð½Ñ‹Ðµ', 'DonnÃ©DonnÃ©es supprimÃ©es avec succÃ¨s', 'ë°ì´í„°ê°€ ì„±ê³µì ìœ¼ë¡œ ì‚­ì œë˜ì—ˆìŠµë‹ˆë‹¤.', 'Daten wurden erfolgreich gelÃ¶scht', 'Dati cancellati con successo', 'à¸¥à¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸ªà¸³à¹€à¸£à¹‡à¸ˆà¹à¸¥à¹‰à¸§', 'Az adatok sikeresen tÃ¶rÃ¶lve', 'Gegevens zijn met succes verwijderd', 'Data delevit feliciter', 'Data berhasil dihapus', 'Veri baÅŸarÄ±yla silindi', 'Î¤Î± Î´ÎµÎ´Î¿Î¼Î­Î½Î± Î´Î¹Î±Î³ÏÎ¬Ï†Î·ÎºÎ±Î½ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±', 'Ø¯Ø§Ø¯Ù‡ Ù‡Ø§ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø­Ø°Ù Ø´Ø¯Ù†Ø¯', 'Data berjaya dipadam', 'à°¡à±‡à°Ÿà°¾ à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°¤à±Šà°²à°—à°¿à°‚à°šà°¬à°¡à°¿à°‚à°¦à°¿', 'à®¤à®°à®µà¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®¨à¯€à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª¡à«‡àªŸàª¾ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª•àª¾àª¢à«€ àª¨àª¾àª–à«àª¯à«‹', 'Dane zostaÅ‚y pomyÅ›lnie usuniÄ™te', 'Ð”Ð°Ð½Ñ– Ð²Ð¸Ð´Ð°Ð»ÐµÐ½Ð¾ ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾', 'à¨¡à¨¾à¨Ÿà¨¾ à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨®à¨¿à¨Ÿà¨¾ à¨¦à¨¿à©±à¨¤à¨¾ à¨—à¨¿à¨†', 'Datele au fost È™terse cu succes', 'á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€–á€»á€€á€ºá€•á€…á€ºá€’á€±á€á€¬á€™á€»á€¬á€¸', 'Paaráº¹ ti paaráº¹ ni ifijiÅ¡áº¹', 'Bayanan da aka share nasarar', NULL, NULL),
(23, 'delete_failed', 'Data delete failed. Please try again', 'মুছা ব্যর্থ ', 'La eliminaciÃ³n de datos fallÃ³. IntÃ©ntalo de nuevo', 'Ø£Ø®ÙÙ‚ Ø­Ø°Ù Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª. Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰', 'à¤¡à¥‡à¤Ÿà¤¾ à¤•à¥‹ à¤µà¤¿à¤«à¤² à¤•à¤°à¤¨à¤¾ à¤µà¤¿à¤«à¤² à¤¹à¥à¤† à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¥à¤¨: à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚', 'ÚˆÛŒÙ¹Ø§ Ù†Ø§Ú©Ø§Ù… ÛÙˆÚ¯ÛŒØ§. Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº', 'æ•°æ®åˆ é™¤å¤±è´¥ã€‚ è¯·å†è¯•ä¸€æ¬¡', 'ãƒ‡ãƒ¼ã‚¿ã®å‰Šé™¤ã«å¤±æ•—ã—ã¾ã—ãŸã€‚ ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„', 'A exclusÃ£o de dados falhou. Por favor, tente novamente', 'ÐžÑˆÐ¸Ð±ÐºÐ° ÑƒÐ´Ð°Ð»ÐµÐ½Ð¸Ñ Ð´Ð°Ð½Ð½Ñ‹Ñ…. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·', 'La suppression des donnÃ©es a Ã©chouÃ©. Veuillez rÃ©essayer', 'ë°ì´í„°ë¥¼ ì‚­ì œí•˜ì§€ ëª»í–ˆìŠµë‹ˆë‹¤. ë‹¤ì‹œ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'Daten lÃ¶schen fehlgeschlagen. Bitte versuche es erneut', 'Cancellazione dei dati fallita. Per favore riprova', 'à¸à¸²à¸£à¸¥à¸šà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§ à¸à¸£à¸¸à¸“à¸²à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡', 'Az adat tÃ¶rlÃ©se nem sikerÃ¼lt. KÃ©rlek prÃ³bÃ¡ld Ãºjra', 'Gegevens verwijderen mislukt. Probeer het opnieuw', 'Delete notitia defuit. Quaero, iterum conare', 'Penghapusan data gagal Silahkan coba lagi', 'Veri silinemedi. LÃ¼tfen tekrar deneyin', 'Î— Î´Î¹Î±Î³ÏÎ±Ï†Î® Î´ÎµÎ´Î¿Î¼Î­Î½Ï‰Î½ Î±Ï€Î­Ï„Ï…Ï‡Îµ. Î Î‘Î¡Î‘ÎšÎ‘Î›Î© Ï€ÏÎ¿ÏƒÏ€Î±Î¸Î·ÏƒÎµ Î¾Î±Î½Î±', 'Ø¯Ø§Ø¯Ù‡ Ø­Ø°Ù Ø´Ø¯ Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ ØªÙ„Ø§Ø´ Ú©Ù†ÛŒØ¯', 'Pemadaman data gagal. Sila cuba lagi', 'à°¡à±‡à°Ÿà°¾ à°¤à±Šà°²à°—à°¿à°‚à°ªà± à°µà°¿à°«à°²à°®à±ˆà°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°²à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à®°à®µà¯ à®¨à¯€à®•à¯à®•à®®à¯ à®¤à¯‹à®²à¯à®µà®¿à®¯à®Ÿà¯ˆà®¨à¯à®¤à®¤à¯. à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¡à«‡àªŸàª¾ àª•àª¾àª¢à«€ àª¨àª¾àª–àªµàª¾àª®àª¾àª‚ àª¨àª¿àª·à«àª«àª³. àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¤àª¨ àª•àª°à«‹', 'Usuwanie danych nie powiodÅ‚o siÄ™. ProszÄ™ sprÃ³buj ponownie', 'ÐÐµ Ð²Ð´Ð°Ð»Ð¾ÑÑ Ð²Ð¸Ð´Ð°Ð»Ð¸Ñ‚Ð¸ Ð´Ð°Ð½Ñ–. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ° ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ‰Ðµ Ñ€Ð°Ð·', 'à¨¡à¨¾à¨Ÿà¨¾ à¨®à¨¿à¨Ÿà¨¾à¨‰à¨£à¨¾ à¨…à¨¸à¨«à¨². à¨®à©à©œ à¨•à©‹à¨¸à¨¼à¨¿à¨¸ à¨•à¨°à©‹ à¨œà©€', 'È˜tergerea datelor a eÈ™uat. VÄƒ rugÄƒm sÄƒ Ã®ncercaÈ›i din nou', 'á€’á€±á€á€¬á€€á€­á€¯á€™á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€•á€«á€–á€»á€€á€ºá€•á€…á€ºá€•á€«á€™á€Šá€ºá‹ á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«', 'Pipadanu data pa. Já»wá» gbiyanju láº¹áº¹kansi', 'Kuskuren bayanai ya kasa. Da fatan a sake gwadawa', NULL, NULL),
(24, 'sl_no', '#SL', 'ক্রমিক নম্বর ', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '# àªàª¸àªàª²', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', '#SL', NULL, NULL),
(25, 'find', 'Find', 'খুঁজুন ', 'Encontrar', 'ØªØ¬Ø¯', 'à¤–à¥‹à¤œ', 'Ù…Ù„', 'æ‰¾', 'æ¤œç´¢', 'Encontrar', 'Ð½Ð°Ð¹Ñ‚Ð¸', 'Trouver', 'ë°œê²¬', 'Finden', 'Trova', 'à¸«à¸²', 'megtalÃ¡lja', 'Vind', 'Find', 'Menemukan', 'bulmak', 'Î•ÏÏÎ·Î¼Î±', 'Ù¾ÛŒØ¯Ø§ Ú©Ø±Ø¯Ù†', 'Cari', 'à°•à°¨à±à°—à±Šà°¨à°‚à°¡à°¿', 'à®•à®£à¯à®Ÿà¯à®ªà®¿à®Ÿà®¿à®•à¯à®•', 'àª¶à«‹àª§àªµàª¾', 'OdnaleÅºÄ‡', 'Ð—Ð½Ð°Ð¹Ð´Ñ–Ñ‚ÑŒ', 'à¨²à©±à¨­à©‹', 'GÄƒsi', 'á€›á€¾á€¬á€á€½á€±á€·', 'Wa', 'Nemo', NULL, NULL),
(26, 'quick_link', 'Quick Link', 'দ্রুত লিংক ', 'Enlace rÃ¡pido', 'Ø±Ø§Ø¨Ø· Ø³Ø±ÙŠØ¹', 'à¤¤à¥à¤µà¤°à¤¿à¤¤ à¤²à¤¿à¤‚à¤•', 'ÙÙˆØ±ÛŒ Ù„Ù†Ú©', 'å¿«é€Ÿé“¾æŽ¥', 'ã‚¯ã‚¤ãƒƒã‚¯ãƒªãƒ³ã‚¯', 'Link rÃ¡pido', 'ÐŸÑ€ÑÐ¼Ð°Ñ ÑÑÑ‹Ð»ÐºÐ°', 'Lien rapide', 'ë¹ ë¥¸ ë§í¬', 'Schneller Link', 'Collegamento veloce', 'à¸¥à¸´à¸‡à¸à¹Œà¸”à¹ˆà¸§à¸™', 'Gyors link', 'Snelle link', 'Velox Link', 'Tautan Cepat', 'HÄ±zlÄ± link', 'Î“ÏÎ®Î³Î¿ÏÎ· ÏƒÏÎ½Î´ÎµÏƒÎ·', 'Ø§ØªØµØ§Ù„ Ø³Ø±ÛŒØ¹', 'Pautan Cepat', 'à°¤à±à°µà°°à°¿à°¤ à°²à°¿à°‚à°•à±', 'à®µà®¿à®°à¯ˆà®µà¯ à®‡à®£à¯ˆà®ªà¯à®ªà¯', 'àª•à«àªµàª¿àª• àª²àª¿àª‚àª•', 'Szybki link', 'Ð¨Ð²Ð¸Ð´ÐºÐ° Ð¿Ð¾ÑÐ¸Ð»Ð°Ð½Ð½Ñ', 'à¨¤à©à¨°à©°à¨¤ à¨²à¨¿à©°à¨•', 'LegÄƒturÄƒ rapidÄƒ', 'quick Link á€€á€­á€¯', 'á»Œna asopá» kiakia', 'Quick Link', NULL, NULL),
(27, 'dashboard', 'Dashboard', 'ড্যাশবোর্ড ', 'Tablero', 'Ù„ÙˆØ­Ø© Ø§Ù„Ù‚ÙŠØ§Ø¯Ø©', 'à¤¡à¥ˆà¤¶à¤¬à¥‹à¤°à¥à¤¡', 'ÚˆÛŒØ´ Ø¨ÙˆØ±Úˆ', 'ä»ªè¡¨æ¿', 'ãƒ€ãƒƒã‚·ãƒ¥ãƒœãƒ¼ãƒ‰', 'painel de controle', 'ÐŸÐ°Ð½ÐµÐ»ÑŒ Ð¿Ñ€Ð¸Ð±Ð¾Ñ€Ð¾Ð²', 'tableau de bord', 'ë°ì´í„°ë¥¼ ì‚­ì œí•˜ì§€ ëª»í–ˆê³„ê¸°ë°˜', 'Instrumententafel', 'Cruscotto', 'à¹à¸œà¸‡à¸„à¸§à¸šà¸„à¸¸à¸¡', 'IrÃ¡nyÃ­tÃ³pult', 'Dashboard', 'ashboardday', 'Dasbor', 'gÃ¶sterge paneli', 'Î¤Î±Î¼Ï€Î»ÏŒ', 'Ø¯Ø§Ø´Ø¨ÙˆØ±Ø¯', 'Papan Pemuka', 'à°¡à°¾à°·à±à°¬à±‹à°°à±à°¡à±', 'à®Ÿà®¾à®·à¯à®ªà¯‡à®¾à®°à¯à®Ÿà¯', 'àª¡à«‡àª¶àª¬à«‹àª°à«àª¡', 'Deska rozdzielcza', 'ÐŸÐ°Ð½ÐµÐ»ÑŒ Ð¿Ñ€Ð¸Ð»Ð°Ð´Ñ–Ð²', 'à¨¡à©ˆà¨¸à¨¼à¨¬à©‹à¨°à¨¡', 'Bord', 'dashboard á€€á€­á€¯', 'Dasibodu', 'Dashboard', NULL, NULL),
(28, 'list', 'List', 'তালিকা ', 'Lista', 'Ù‚Ø§Ø¦Ù…Ø©', 'à¤¸à¥‚à¤šà¥€', 'ÙÛØ±Ø³Øª', 'åå•', 'ãƒªã‚¹ãƒˆ', 'Lista', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº', 'liste', 'ëª…ë¶€', 'Liste', 'Elenco', 'à¸£à¸²à¸¢à¸à¸²à¸£', 'Lista', 'Lijst', 'album', 'Daftar', 'Liste', 'Î›Î¯ÏƒÏ„Î±', 'ÙÙ‡Ø±Ø³Øª', 'Senarai', 'à°œà°¾à°¬à°¿à°¤à°¾', 'à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯', 'àª¯àª¾àª¦à«€', 'Lista', 'ÐŸÐµÑ€ÐµÐ»Ñ–Ðº', 'à¨¸à©‚à¨šà©€', 'ListÄƒ', 'á€…á€¬á€›á€„á€ºá€¸', 'Akojá»', 'Jerin', NULL, NULL),
(29, 'setting', 'Setting', 'সেটিংস ', 'Ajuste', 'Ø¶Ø¨Ø·', 'à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤—', 'Ø³ÛŒÙ¹Ù†Ú¯', 'è®¾ç½®', 'è¨­å®š', 'ConfiguraÃ§Ã£o', 'Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ°', 'SÃ©lection', 'í™˜ê²½', 'Rahmen', 'Ambientazione', 'à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²', 'BeÃ¡llÃ­tÃ¡s', 'omgeving', 'Occasum', 'pengaturan', 'Ayar', 'Î£ÏÎ½Î¸ÎµÏƒÎ·', 'ØªÙ†Ø¸ÛŒÙ…Ø§Øª', 'Menetapkan', 'à°¸à±†à°Ÿà±à°Ÿà°¿à°‚à°—à±', 'à®…à®®à¯ˆà®ªà¯à®ªà¯ˆ', 'àª¸à«‡àªŸàª¿àª‚àª—', 'Oprawa', 'ÐÐ°Ð»Ð°ÑˆÑ‚ÑƒÐ²Ð°Ð½Ð½Ñ', 'à¨¸à©ˆà¨Ÿà¨¿à©°à¨—', 'reglaj', 'setting á€€á€­á€¯', 'Eto', 'Saitin', NULL, NULL),
(30, 'general', 'General', 'সাধারণ ', 'General', 'Ø¬Ù†Ø±Ø§Ù„ Ù„ÙˆØ§Ø¡', 'à¤¸à¤¾à¤®à¤¾à¤¨à¥à¤¯', 'Ø¬Ù†Ø±Ù„', 'ä¸€èˆ¬', 'ä¸€èˆ¬', 'Geral', 'Ð“ÐµÐ½ÐµÑ€Ð°Ð»ÑŒÐ½Ð°Ñ', 'gÃ©nÃ©ral', 'ì¼ë°˜', 'Allgemeines', 'Generale', 'à¸—à¸±à¹ˆà¸§à¹„à¸›', 'TÃ¡bornok', 'Algemeen', 'Generalis', 'Umum', 'Genel', 'Î“ÎµÎ½Î¹ÎºÏŒÏ‚', 'Ø¹Ù…ÙˆÙ…ÛŒ', 'Ketua', 'à°œà°¨à°°à°²à±', 'à®ªà¯†à®¾à®¤à¯', 'àªœàª¨àª°àª²', 'GeneraÅ‚', 'Ð“ÐµÐ½ÐµÑ€Ð°Ð»', 'à¨œà¨¨à¨°à¨²', 'General', 'á€šá€±á€˜á€¯á€šá€»', 'Gbogbogbo', 'Janar', NULL, NULL),
(31, 'payment', 'Payment', 'পেমেন্ট ', 'Pago', 'Ø¯ÙØ¹', 'à¤­à¥à¤—à¤¤à¤¾à¤¨', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ', 'ä»˜æ¬¾', 'æ”¯æ‰•ã„', 'Forma de pagamento', 'ÐžÐ¿Ð»Ð°Ñ‚Ð°', 'Paiement', 'ì§€ë¶ˆ', 'Zahlung', 'Pagamento', 'à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'FizetÃ©s', 'Betaling', 'Payment', 'Pembayaran', 'Ã–deme', 'Î Î»Î·ÏÏ‰Î¼Î®', 'Ù¾Ø±Ø¯Ø§Ø®Øª', 'Pembayaran', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà±', 'à®•à¯†à®¾à®Ÿà¯à®ªà¯à®ªà®©à®µà¯', 'àªšà«àª•àªµàª£à«€', 'ZapÅ‚ata', 'ÐžÐ¿Ð»Ð°Ñ‚Ð°', 'à¨­à©à¨—à¨¤à¨¾à¨¨', 'PlatÄƒ', 'á€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯á€›á€™á€Šá€ºá€·', 'Isanwo', 'Biyan kuÉ—i', NULL, NULL),
(32, 'theme', 'Theme', 'থিম ', 'Tema', 'Ù…ÙˆØ¶ÙˆØ¹', 'à¤µà¤¿à¤·à¤¯', 'Ø®ÛŒØ§Ù„ÛŒÛ', 'ä¸»é¢˜', 'ãƒ†ãƒ¼ãƒž', 'Tema', 'Ñ‚ÐµÐ¼Ð°', 'thÃ¨me', 'í…Œë§ˆ', 'Thema', 'Tema', 'à¸à¸£à¸°à¸—à¸¹à¹‰', 'TÃ©ma', 'Thema', 'theme', 'Tema', 'Tema', 'Î˜Î­Î¼Î±', 'Ù…ÙˆØ¶ÙˆØ¹', 'Tema', 'à°¥à±€à°®à±', 'à®¤à¯€à®®à¯', 'àª¥à«€àª®', 'Motyw', 'Ð¢ÐµÐ¼Ð°', 'à¨¥à©€à¨®', 'TemÄƒ', 'á€¡á€€á€½á€±á€¬á€„á€»á€¸', 'Akori', 'Jigo', NULL, NULL),
(33, 'language', 'Language', 'ভাষা ', 'Idioma', 'Ù„ØºØ©', 'à¤­à¤¾à¤·à¤¾', 'Ø²Ø¨Ø§Ù†', 'è¯­è¨€', 'è¨€èªž', 'LÃ­ngua', 'ÑÐ·Ñ‹Ðº', 'La langue', 'ì–¸ì–´', 'Sprache', 'linguaggio', 'à¸ à¸²à¸©à¸²', 'Nyelv', 'Taal', 'Lingua', 'Bahasa', 'Dil', 'Î“Î»ÏŽÏƒÏƒÎ±', 'Ø²Ø¨Ø§Ù†', 'Bahasa', 'à°­à°¾à°·à°¾', 'à®®à¯†à®¾à®´à®¿', 'àª­àª¾àª·àª¾', 'JÄ™zyk', 'ÐœÐ¾Ð²Ð°', 'à¨­à¨¾à¨¸à¨¼à¨¾', 'Limba', 'á€˜á€¬á€žá€¬á€…á€€á€¬á€¸', 'Ede', 'Harshe', NULL, NULL),
(34, 'administrator', 'Administrator', 'প্রশাসক ', 'Administrador', 'Ù…Ø¯ÙŠØ±', 'à¤ªà¥à¤°à¤¶à¤¾à¤¸à¤•', 'Ù…Ù†ØªØ¸Ù…', 'ç®¡ç†å‘˜', 'ç®¡ç†è€…', 'Administrador', 'Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€', 'administrateur', 'ê´€ë¦¬ìž', 'Administrator', 'Amministratore', 'à¸œà¸¹à¹‰à¸šà¸£à¸´à¸«à¸²à¸£', 'AdminisztrÃ¡tor', 'Beheerder', 'administrator', 'Administrator', 'yÃ¶netici', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„Î®Ï‚', 'Ù…Ø¯ÛŒØ±', 'Pentadbir', 'à°¨à°¿à°°à±à°µà°¾à°¹à°•à±à°¡à±', 'à®¨à®¿à®°à¯à®µà®¾à®•à®¿', 'àª¸àª‚àªšàª¾àª²àª•', 'Administrator', 'ÐÐ´Ð¼Ñ–Ð½Ñ–ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€', 'à¨ªà©à¨°à¨¬à©°à¨§à¨•', 'Administrator', 'á€¡á€¯á€•á€ºá€á€»á€¯á€•á€ºá€žá€°', 'IT', 'Mai gudanarwa', NULL, NULL),
(35, 'academic_year', 'Academic Year', 'শিক্ষাবর্ষ ', 'AÃ±o acadÃ©mico', 'Ø§Ù„Ø³Ù†Ø© Ø§Ù„Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠØ©', 'à¤¶à¥ˆà¤•à¥à¤·à¤£à¤¿à¤• à¤µà¤°à¥à¤·', 'ØªØ¹Ù„ÛŒÙ…ÛŒ Ø³Ø§Ù„', 'å­¦å¹´', 'å­¦å¹´', 'Ano acadÃªmico', 'ÐÐºÐ°Ð´ÐµÐ¼Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹ Ð³Ð¾Ð´', 'AnnÃ©e acadÃ©mique', 'í•™ë…„', 'Akademisches Jahr', 'Anno accademico', 'à¸›à¸µà¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²', 'TanÃ©v', 'Academiejaar', 'anno academic', 'Tahun akademik', 'Akademik yÄ±l', 'Î‘ÎºÎ±Î´Î·Î¼Î±ÏŠÎºÏŒ Î­Ï„Î¿Ï‚', 'Ø³Ø§Ù„ ØªØ­ØµÛŒÙ„ÛŒ', 'Tahun akademik', 'à°µà°¿à°¦à±à°¯à°¾ à°¸à°‚à°µà°¤à±à°¸à°°à°‚', 'à®•à®²à¯à®µà®¿ à®†à®£à¯à®Ÿà®¿à®²à¯', 'àª¶à«ˆàª•à«àª·àª£à«€àª• àªµàª°à«àª·', 'Rok akademicki', 'ÐÐ°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ð¹ Ñ€Ñ–Ðº', 'à¨…à¨•à¨¾à¨¦à¨®à¨¿à¨• à¨¸à¨¾à¨²', 'An academic', 'á€…á€¬á€žá€„á€ºá€”á€¾á€…á€º', 'Akáº¹ká» á»ŒdÃºn', 'Makarantar Kwalejin', NULL, NULL),
(36, 'user', 'User', 'ব্যবহারকারী ', 'Usuario', 'Ø§Ù„Ù…Ø³ØªØ¹Ù…Ù„', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾', 'ØµØ§Ø±Ù', 'ç”¨æˆ·', 'ãƒ¦ãƒ¼ã‚¶ãƒ¼', 'Do utilizador', 'Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'Utilisateur', 'ì‚¬ìš©ìž', 'Benutzer', 'Utente', 'à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸‡à¸²à¸™', 'hasznÃ¡lÃ³', 'Gebruiker', 'User', 'Pengguna', 'kullanÄ±cÄ±', 'Î§ÏÎ®ÏƒÏ„Î·Ï‚', 'Ú©Ø§Ø±Ø¨Ø±', 'Pengguna', 'à°µà°¾à°¡à±à°•à°°à°¿', 'à®ªà®¯à®©à®°à¯', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾', 'UÅ¼ytkownik', 'ÐšÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡', 'à¨¯à©‚à¨œà¨¼à¨°', 'Utilizator', 'á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€€á€­á€¯', 'Olumulo', 'Mai amfani', NULL, NULL),
(37, 'role', 'Role', 'কর্মপরিধি ', 'Papel', 'ÙˆØ¸ÙŠÙØ©', 'à¤­à¥‚à¤®à¤¿à¤•à¤¾', 'Ú©Ø±Ø¯Ø§Ø±', 'è§’è‰²', 'å½¹å‰²', 'FunÃ§Ã£o', 'Ð Ð¾Ð»ÑŒ', 'RÃ´le', 'ì—­í• ', 'Rolle', 'Ruolo', 'à¸šà¸—à¸šà¸²à¸—', 'Szerep', 'Rol', 'partes', 'Peran', 'rol', 'Î¡ÏŒÎ»Î¿Ï‚', 'Ù†Ù‚Ø´', 'Peranan', 'à°ªà°¾à°¤à±à°°', 'à®ªà®™à¯à®•à¯', 'àª­à«‚àª®àª¿àª•àª¾', 'Rola', 'Ð Ð¾Ð»ÑŒ', 'à¨­à©‚à¨®à¨¿à¨•à¨¾', 'Rol', 'á€¡á€á€”á€ºá€¸á€€á€¹á€•', 'Ipa', 'Matsayi', NULL, NULL),
(38, 'user_role', 'User Role', 'ব্যবহারকারীর কর্মপরিধি ', 'Rol del usuario', 'Ø¯ÙˆØ± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤­à¥‚à¤®à¤¿à¤•à¤¾', 'ØµØ§Ø±Ù Ú©Ø±Ø¯Ø§Ø±', 'ç”¨æˆ·è§’è‰²', 'ãƒ¦ãƒ¼ã‚¶ãƒ¼ãƒ­ãƒ¼ãƒ«', 'Papel do usuÃ¡rio', 'Ð Ð¾Ð»ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'RÃ´le dutilisateur', 'ì‚¬ìš©ìž ì—­í• ', 'Benutzer-Rolle', 'Ruolo utente', 'à¸šà¸—à¸šà¸²à¸—à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'FelhasznÃ¡lÃ³i szerepkÃ¶r', 'Gebruikersrol', 'User Partes', 'Peran pengguna', 'KullanÄ±cÄ± rolÃ¼', 'Î¡ÏŒÎ»Î¿Ï‚ Ï‡ÏÎ®ÏƒÏ„Î·', 'Ù†Ù‚Ø´ Ú©Ø§Ø±Ø¨Ø±', 'Peranan Pengguna', 'à°µà°¾à°¡à±à°•à°°à°¿ à°ªà°¾à°¤à±à°°', 'à®ªà®¯à®©à®°à¯ à®ªà®™à¯à®•à¯', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾ àª­à«‚àª®àª¿àª•àª¾', 'Rola uÅ¼ytkownika', 'Ð Ð¾Ð»ÑŒ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡Ð°', 'à¨¯à©‚à¨œà¨¼à¨° à¨­à©‚à¨®à¨¿à¨•à¨¾', 'Rolul utilizatorului', 'á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€¡á€á€”á€ºá€¸á€€á€¹á€•', 'IÅ¡áº¹ Olumulo', 'Mai amfani', NULL, NULL),
(39, 'role_permission', 'Role Permission', 'কর্মপরিধির অনুমোদন ', 'Permiso de funciÃ³n', 'Ø¥Ø°Ù† Ø§Ù„Ø¯ÙˆØ±', 'à¤­à¥‚à¤®à¤¿à¤•à¤¾ à¤…à¤¨à¥à¤®à¤¤à¤¿', 'Ú©Ø±Ø¯Ø§Ø± Ú©ÛŒ Ø§Ø¬Ø§Ø²Øª', 'è§’è‰²æƒé™', 'å½¹å‰²ã®è¨±å¯', 'PermissÃ£o de papel', 'Ð Ð¾Ð»ÐµÐ²Ð¾Ðµ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¸Ðµ', 'Permission de rÃ´le', 'ì—­í•  ê¶Œí•œ', 'Rollenberechtigungen', 'Permesso di ruolo', 'à¸à¸²à¸£à¸­à¸™à¸¸à¸à¸²à¸•à¸šà¸—à¸šà¸²à¸—', 'SzerepengedÃ©ly', 'Roltoestemming', 'Licet munus', 'Perizinan Peran', 'Rol Ä°zni', 'Î†Î´ÎµÎ¹Î± ÏÏŒÎ»Î¿Ï…', 'Ù†Ù‚Ø´ Ù…Ø¬Ø§Ø²', 'Kebenaran Peranan', 'à°ªà°¾à°¤à±à°° à°…à°¨à±à°®à°¤à°¿', 'à®ªà®™à¯à®•à¯ à®…à®©à¯à®®à®¤à®¿', 'àª­à«‚àª®àª¿àª•àª¾ àªªàª°àªµàª¾àª¨àª—à«€', 'Zezwolenie na role', 'Ð Ð¾Ð»ÐµÐ²Ð¸Ð¹ Ð´Ð¾Ð·Ð²Ñ–Ð»', 'à¨­à©‚à¨®à¨¿à¨•à¨¾ à¨¦à©€ à¨…à¨¨à©à¨®à¨¤à©€', 'Permisiune pentru roluri', 'á€¡á€á€”á€ºá€¸á€€á€¹á€•á€á€½á€„á€ºá€·á€•á€¼á€¯á€á€»á€€á€º', 'Igbese ipa', 'Yarjejeniyar aiki', NULL, NULL),
(40, 'reset_password', 'Reset Password', 'পাসওয়ার্ড পুনঃ ঠিক করুন ', 'Restablecer la contraseÃ±a', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤°à¥€à¤¸à¥‡à¤Ÿ', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø±ÛŒ Ø³ÛŒÙ¹', 'é‡è®¾å¯†ç ', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å†è¨­å®šã™ã‚‹', 'Redefinir Senha', 'Ð¡Ð±Ñ€Ð¾Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ', 'rÃ©initialiser le mot de passe', 'ì•”í˜¸ë¥¼ ìž¬ì„¤ì •', 'Passwort zurÃ¼cksetzen', 'Resetta la password', 'à¸£à¸µà¹€à¸‹à¹‡à¸•à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™', 'JelszÃ³ visszaÃ¡llÃ­tÃ¡sa', 'Reset wachtwoord', 'Reset password', 'Reset Password', 'Åžifreyi yenile', 'Î•Ï€Î±Î½Î±Ï†Î­ÏÎµÏ„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚', 'Ø¨Ø§Ø²Ù†Ø´Ø§Ù†ÛŒ Ú¯Ø°Ø±ÙˆØ§Ú˜Ù‡', 'Menetapkan semula kata laluan', 'à°°à°¹à°¸à±à°¯à°ªà°¦à°¾à°¨à±à°¨à°¿ à°®à°¾à°°à±à°šà±à°•à±‹à°‚à°¡à°¿', 'à®•à®Ÿà®µà¯à®šà¯à®šà¯†à®¾à®²à¯à®²à¯ˆ à®®à¯€à®Ÿà¯à®Ÿà®®à¯ˆà®•à¯à®•', 'àªªàª¾àª¸àªµàª°à«àª¡ àª«àª°à«€àª¥à«€ àª¸à«‡àªŸ àª•àª°à«‹', 'Zresetuj hasÅ‚o', 'Ð¡ÐºÐ¸Ð½ÑƒÑ‚Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨°à©€à¨¸à©ˆà¨Ÿ à¨•à¨°à©‹', 'Reseteaza parola', 'á€œá€»á€¾á€­á€¯á€·á€á€¾á€á€ºá€”á€¶á€•á€«á€á€ºá€¡á€¬á€¸á€™á€°á€œá€¡á€á€­á€¯á€„á€ºá€¸á€•á€¼á€”á€ºá€œá€¯á€•á€ºá€žá€Šá€º', 'Atunwo á»Œrá»igbaniwá»le', 'Sake saita kalmar sirri', NULL, NULL),
(41, 'reset_user_password', 'Reset User Password', 'ব্পাযবহারকারীর সওয়ার্ড পুনঃ ঠিক করুন ', 'Restablecer contraseÃ±a de usuario', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ù…Ø±ÙˆØ± Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤°à¥€à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚', 'ØµØ§Ø±Ù Ú©Ø§ Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø±ÛŒ Ø³ÛŒÙ¹ Ú©Ø±ÛŒÚº', 'é‡ç½®ç”¨æˆ·å¯†ç ', 'ãƒ¦ãƒ¼ã‚¶ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’ãƒªã‚»ãƒƒãƒˆã™ã‚‹', 'Redefinir Senha do UsuÃ¡rio', 'Ð¡Ð±Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'RÃ©initialiser mot de passe', 'ì‚¬ìš©ìž ì•”í˜¸ ìž¬ì„¤ì •', 'Benutzerpasswort zurÃ¼cksetzen', 'Reimposta password utente', 'à¸£à¸µà¹€à¸‹à¹‡à¸•à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'FelhasznÃ¡lÃ³i jelszÃ³ visszaÃ¡llÃ­tÃ¡sa', 'Reset gebruikerswachtwoord', 'User Password Reset', 'Reset Password Pengguna', 'KullanÄ±cÄ± ParolasÄ±nÄ± SÄ±fÄ±rla', 'Î•Ï€Î±Î½Î±Ï†Î¿ÏÎ¬ ÎºÏ‰Î´Î¹ÎºÎ¿Ï Ï‡ÏÎ®ÏƒÏ„Î·', 'ØªÙ†Ø¸ÛŒÙ… Ù…Ø¬Ø¯Ø¯ Ø±Ù…Ø² Ø¹Ø¨ÙˆØ± Ú©Ø§Ø±Ø¨Ø±', 'Tetapkan semula Kata Laluan Pengguna', 'à°¯à±‚à°œà°°à± à°ªà°¾à°¸à±à°µà°°à±à°¡à±à°¨à± à°°à±€à°¸à±†à°Ÿà± à°šà±‡à°¯à°‚à°¡à°¿', 'à®ªà®¯à®©à®°à¯ à®•à®Ÿà®µà¯à®šà¯à®šà¯Šà®²à¯à®²à¯ˆ à®®à¯€à®Ÿà¯à®Ÿà®®à¯ˆà®•à¯à®•à®µà¯à®®à¯', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾ àªªàª¾àª¸àªµàª°à«àª¡ àª«àª°à«€àª¥à«€ àª¸à«‡àªŸ àª•àª°à«‹', 'Zresetuj hasÅ‚o uÅ¼ytkownika', 'Ð¡ÐºÐ¸Ð½ÑƒÑ‚Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡Ð°', 'à¨¯à©‚à¨œà¨¼à¨° à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨°à©€à¨¸à©ˆà¨Ÿ à¨•à¨°à©‹', 'ResetaÈ›i parola de utilizator', 'á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€° Password á€€á€­á€¯ Reset', 'Atunto á»Œrá» Olumulo Titun', 'Sake saitin Kalmar Mai amfani', NULL, NULL),
(42, 'backup', 'Backup', 'ব্যাক-আপ ', 'Apoyo', 'Ø¯Ø¹Ù…', 'à¤¬à¥ˆà¤•à¤…à¤ª', 'Ø¨ÛŒÚ© Ø§Ù¾', 'å¤‡ç”¨', 'ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—', 'CÃ³pia de seguranÃ§a', 'Ð ÐµÐ·ÐµÑ€Ð²Ð½Ð¾Ðµ ÐºÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ', 'Sauvegarde', 'ì§€ì›', 'Backup', 'di riserva', 'à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥', 'biztonsÃ¡gi mentÃ©s', 'backup', 'tergum', 'Backup', 'yedek', 'Î‘Î½Ï„Î¹Î³ÏÎ¬Ï†Ï‰Î½ Î±ÏƒÏ†Î±Î»ÎµÎ¯Î±Ï‚', 'Ù¾Ø´ØªÛŒØ¨Ø§Ù† Ú¯ÛŒØ±ÛŒ', 'Sandaran', 'à°¬à±à°¯à°¾à°•à°ªà±', 'à®•à®¾à®ªà¯à®ªà¯', 'àª¬à«‡àª•àª…àªª', 'UtworzyÄ‡ kopiÄ™ zapasowÄ…', 'Ð ÐµÐ·ÐµÑ€Ð²Ð½Ðµ ÐºÐ¾Ð¿Ñ–ÑŽÐ²Ð°Ð½Ð½Ñ', 'à¨¬à©ˆà¨•à¨…à¨ª', 'Backup', 'Backup á€€á€­á€¯', 'Afáº¹yinti', 'Ajiyayyen', NULL, NULL),
(43, 'human_resource', 'Human Resource', 'মানব সম্পদ ', 'Recursos humanos', 'Ø§Ù„Ù…ÙˆØ§Ø±Ø¯ Ø§Ù„Ø¨Ø´Ø±ÙŠØ©', 'à¤®à¤¾à¤¨à¤µ à¤¸à¤‚à¤¸à¤¾à¤§à¤¨', 'Ø§Ù†Ø³Ø§Ù†ÛŒ ÙˆØ³Ø§Ø¦Ù„', 'äººåŠ›èµ„æº', 'äººçš„è³‡æº', 'Recursos humanos', 'Ð§ÐµÐ»Ð¾Ð²ÐµÑ‡ÐµÑÐºÐ¸Ðµ Ñ€ÐµÑÑƒÑ€ÑÑ‹', 'Ressource humaine', 'ì¸ì  ìžì›', 'Personal', 'Risorse umane', 'à¸—à¸£à¸±à¸žà¸¢à¸²à¸à¸£à¸šà¸¸à¸„à¸„à¸¥', 'Emberi erÅ‘forrÃ¡s', 'Human Resource', 'Humanum Resource', 'Sumber daya manusia', 'Ä°nsan kaynaklarÄ±', 'Î‘Î½Î¸ÏÏŽÏ€Î¹Î½Î¿ Î´Ï…Î½Î±Î¼Î¹ÎºÏŒ', 'Ù…Ù†Ø§Ø¨Ø¹ Ø§Ù†Ø³Ø§Ù†ÛŒ', 'Sumber Manusia', 'à°®à°¾à°¨à°µ à°µà°¨à°°à±à°²', 'à®®à®©à®¿à®¤ à®µà®³à®®à¯', 'àª®àª¾àª¨àªµ àª¸àª‚àª¸àª¾àª§àª¨', 'Zasoby ludzkie', 'Ð›ÑŽÐ´ÑÑŒÐºÐ¸Ð¹ Ñ€ÐµÑÑƒÑ€Ñ', 'à¨®à¨¾à¨¨à¨µ à¨¸à©°à¨¸à¨¾à¨§à¨¨', 'Resurse umane', 'á€œá€°á€·á€…á€½á€™á€ºá€¸á€¡á€¬á€¸á€¡á€›á€„á€ºá€¸á€¡á€™á€¼á€…á€º', 'Eda eniyan', 'Human Resource', NULL, NULL),
(44, 'designation', 'Designation', 'পদবী ', 'Designacion', 'ØªØ¹ÙŠÙŠÙ†', 'à¤ªà¤¦', 'Ø¹ÛØ¯Û', 'æŒ‡å®š', 'æŒ‡å®š', 'DesignaÃ§Ã£o', 'Ð¾Ð±Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ', 'La dÃ©signation', 'ì§€ì •', 'Bezeichnung', 'Designazione', 'à¸à¸²à¸£à¹à¸•à¹ˆà¸‡à¸•à¸±à¹‰à¸‡', 'KijelÃ¶lÃ©s', 'Aanwijzing', 'designatio', 'Penunjukan', 'tayin', 'ÎŸÎ½Î¿Î¼Î±ÏƒÎ¯Î±', 'ØªØ¹ÛŒÛŒÙ†', 'Jawatan', 'à°¹à±‹à°¦à°¾', 'à®ªà®¤à®µà®¿', 'àª¹à«‹àª¦à«àª¦à«‹', 'Przeznaczenie', 'ÐŸÐ¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½Ñ', 'à¨…à¨¹à©à¨¦à¨¾', 'Desemnare', 'á€žá€á€ºá€™á€¾á€á€ºá€›á€±á€¸', 'Ipiláº¹á¹£áº¹', 'Dama', NULL, NULL),
(45, 'employee', 'Employee', 'কর্মকর্তা ', 'Empleado', 'Ù…ÙˆØ¸Ù', 'à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€', 'Ù…Ù„Ø§Ø²Ù…', 'é›‡å‘˜', 'å¾“æ¥­å“¡', 'Empregado', 'ÐÐ°ÐµÐ¼Ð½Ñ‹Ð¹ Ñ€Ð°Ð±Ð¾Ñ‡Ð¸Ð¹', 'EmployÃ©', 'ì¢…ì—…ì›', 'Mitarbeiter', 'Dipendente', 'à¸¥à¸¹à¸à¸ˆà¹‰à¸²à¸‡', 'MunkavÃ¡llalÃ³', 'Werknemer', 'Aliquam', 'Karyawan', 'iÅŸÃ§i', 'Î¥Ï€Î¬Î»Î»Î·Î»Î¿Ï‚', 'Ú©Ø§Ø±Ù…Ù†Ø¯', 'Pekerja', 'à°‰à°¦à±à°¯à±‹à°—à°¿', 'à®ªà®£à®¿à®¯à®¾à®³à®°à¯', 'àª•àª°à«àª®àªšàª¾àª°à«€', 'Pracownik', 'ÐŸÑ€Ð°Ñ†Ñ–Ð²Ð½Ð¸Ðº', 'à¨•à¨°à¨®à¨šà¨¾à¨°à©€', 'Angajat', 'á€œá€¯á€•á€ºá€žá€¬á€¸', 'AbÃ¡ni', 'Maaikaci', NULL, NULL),
(46, 'teacher', 'Teacher', 'শিক্ষক/শিক্ষিকা ', 'Profesor', 'Ù…Ø¯Ø±Ø³', 'à¤…à¤§à¥à¤¯à¤¾à¤ªà¤•', 'Ø§Ø³ØªØ§Ø¯', 'è€å¸ˆ', 'å…ˆç”Ÿ', 'Professor', 'ÑƒÑ‡Ð¸Ñ‚ÐµÐ»ÑŒ', 'Prof', 'ì„ ìƒ', 'Lehrer', 'Insegnante', 'à¸„à¸£à¸¹', 'TanÃ¡r', 'Leraar', 'magister', 'Guru', 'Ã–ÄŸretmen', 'Î”Î¬ÏƒÎºÎ±Î»Î¿Ï‚', 'Ù…Ø¹Ù„Ù…', 'Guru', 'à°Ÿà±€à°šà°°à±', 'à®†à®šà®¿à®°à®¿à®¯à®°à¯', 'àª¶àª¿àª•à«àª·àª•', 'Nauczyciel', 'Ð’Ñ‡Ð¸Ñ‚ÐµÐ»ÑŒ', 'à¨Ÿà©€à¨šà¨°', 'Profesor', 'á€†á€›á€¬á€™', 'OlÃ¹ká»', 'Malam', NULL, NULL),
(47, 'class', 'Class', 'শ্রেণি  ', 'Clase', 'ØµÙ Ø¯Ø±Ø§Ø³ÙŠ', 'à¤•à¤•à¥à¤·à¤¾', 'Ú©Ù„Ø§Ø³', 'ç±»', 'ã‚¯ãƒ©ã‚¹', 'Classe', 'ÐšÐ»Ð°ÑÑ', 'Classe', 'ìˆ˜ì—…', 'Klasse', 'Classe', 'à¸Šà¸±à¹‰à¸™', 'OsztÃ¡ly', 'Klasse', 'genus', 'Kelas', 'SÄ±nÄ±f', 'Î¤Î¬Î¾Î·', 'Ú©Ù„Ø§Ø³', 'Kelas', 'à°•à±à°²à°¾à°¸à±', 'à®µà®°à¯à®•à¯à®•à®®à¯', 'àªµàª°à«àª—', 'Klasa', 'ÐšÐ»Ð°Ñ', 'à¨•à¨²à¨¾à¨¸', 'ClasÄƒ', 'á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸', 'Kilasi', 'Class', NULL, NULL),
(48, 'section', 'Section', 'শাখা ', 'SecciÃ³n', 'Ø§Ù„Ø¬Ø²Ø¡', 'à¤…à¤¨à¥à¤­à¤¾à¤—', 'Ø³ÛŒÚ©Ø´Ù†', 'éƒ¨åˆ†', 'ã‚»ã‚¯ã‚·ãƒ§ãƒ³', 'SeÃ§Ã£o', 'Ð Ð°Ð·Ð´ÐµÐ»', 'Section', 'ì„¹ì…˜', 'Sektion', 'Sezione', 'à¸¡à¸²à¸•à¸£à¸²', 'Szakasz', 'Sectie', 'sectioni', 'Bagian', 'BÃ¶lÃ¼m', 'Î•Î½ÏŒÏ„Î·Ï„Î±', 'Ø¨Ø®Ø´ D', 'Seksyen', 'à°µà°¿à°­à°¾à°—à°‚', 'à®ªà®¿à®°à®¿à®µà¯', 'àªµàª¿àª­àª¾àª—', 'Sekcja', 'Ð Ð¾Ð·Ð´Ñ–Ð»', 'à¨…à¨¨à©à¨­à¨¾à¨—', 'SecÈ›iune', 'á€¡á€•á€­á€¯á€„á€ºá€¸', 'Abala', 'Sashi', NULL, NULL),
(49, 'subject', 'Subject', 'বিষয় ', 'Tema', 'Ù…ÙˆØ¶ÙˆØ¹', 'à¤µà¤¿à¤·à¤¯', 'Ù…Ø¶Ù…ÙˆÙ†', 'å­¦ç§‘', 'ä»¶å', 'Subject', 'ÐŸÑ€ÐµÐ´Ð¼ÐµÑ‚', 'assujettir', 'ì œëª©', 'Gegenstand', ' Soggetto', 'à¹€à¸£à¸·à¹ˆà¸­à¸‡', 'TantÃ¡rgy', 'Onderwerpen', 'subject', 'Subyek', 'konu', 'Î˜Î­Î¼Î±', 'Ù…ÙˆØ¶ÙˆØ¹', 'Subjek', 'à°µà°¿à°·à°¯à°‚', 'à®ªà¯†à®¾à®°à¯à®³à¯', 'àªµàª¿àª·àª¯', 'Przedmiot', 'Ð¢ÐµÐ¼Ð°', 'à¨µà¨¿à¨¸à¨¼à¨¾', 'Subiect', 'á€˜á€¬á€žá€¬á€›á€•á€º', 'Koko-á»rá»', 'Subject', NULL, NULL),
(50, 'syllabus', 'Syllabus', 'পাঠ্যসূচী ', 'Silaba', 'Ø§Ù„Ù…Ù†Ù‡Ø¬', 'à¤ªà¤¾à¤ à¥à¤¯à¤•à¥à¤°à¤®', 'Ù†ØµØ§Ø¨', 'æ•™å­¦å¤§çº²', 'ã‚·ãƒ©ãƒã‚¹', 'Programa de Estudos', 'Ð£Ñ‡ÐµÐ±Ð½Ñ‹Ð¹ Ð¿Ð»Ð°Ð½', 'Programme', 'ê°•ì˜ ê³„íšì„œ', 'Lehrplan', 'Programma', 'à¸«à¸¥à¸±à¸à¸ªà¸¹à¸•à¸£', 'Tanmenet', 'Syllabus', 'Syllabus', 'Silabus', 'MÃ¼fredat', 'Î ÎµÏÎ¯Î»Î·ÏˆÎ·', 'Ø³Ø±ÙØµÙ„ Ø¯Ø±ÙˆØ³', 'Silibus', 'à°¸à°¿à°²à°¬à°¸à±', 'à®ªà®¾à®Ÿà®¤à¯à®¤à®¿à®Ÿà¯à®Ÿà®™à¯à®•à®³à¯', 'àª…àª­à«àª¯àª¾àª¸àª•à«àª°àª®', 'Konspekt', 'Ð¡Ð¸Ð»Ð°Ð±ÑƒÑ', 'à¨¸à¨¿à¨²à©‡à¨¬à¨¸', 'SilabÄƒ', 'á€žá€„á€ºá€›á€­á€¯á€¸á€Šá€½á€¾á€”á€ºá€¸á€á€™á€ºá€¸', 'Syllabus', 'Syllabus', NULL, NULL),
(51, 'routine', 'Routine', 'রুটিন ', 'Rutina', 'Ù†Ù…Ø·', 'à¤¸à¤¾à¤®à¤¾à¤¨à¥à¤¯', 'Ù…Ø¹Ù…ÙˆÙ„', 'å¸¸è§„', 'ãƒ«ãƒ¼ãƒãƒ³', 'Rotina', 'Ñ€ÑƒÑ‚Ð¸Ð½Ð½Ñ‹Ð¹', 'Routine', 'ë£¨í‹´', 'Routine', 'Routine', 'à¸à¸´à¸ˆà¸§à¸±à¸•à¸£à¸›à¸£à¸°à¸ˆà¸³à¸§à¸±à¸™', 'Rutin', 'Routine', 'exercitatione', 'Rutin', 'Rutin', 'Î¡Î¿Ï…Ï„Î¯Î½Î±', 'Ù…Ø¹Ù…ÙˆÙ„ÛŒ', 'Rutin', 'à°°à±Šà°Ÿà±€à°¨à±', 'à®µà®´à®•à¯à®•à®®à®¾à®©', 'àª¨àª¿àª¯àª®àª¿àª¤', 'Rutyna', 'Ð—Ð²Ð¸Ñ‡Ð°Ð¹Ð½Ð¸Ð¹', 'à¨°à©à¨Ÿà©€à¨¨', 'RutinÄƒ', 'á€œá€¯á€•á€ºá€›á€­á€¯á€¸á€œá€¯á€•á€ºá€…á€‰á€º', 'Ilana', 'Gyara', NULL, NULL),
(52, 'guardian', 'Guardian', 'অভিভাবক ', 'guardiÃ¡n', 'ÙˆØµÙŠ', 'à¤…à¤­à¤¿à¤­à¤¾à¤µà¤•', 'Ø³Ø±Ù¾Ø±Ø³Øª', 'ç›‘æŠ¤äºº', 'ã‚¬ãƒ¼ãƒ‡ã‚£ã‚¢ãƒ³', 'GuardiÃ£o', 'Ð±Ð»ÑŽÑÑ‚Ð¸Ñ‚ÐµÐ»ÑŒ', 'Gardien', 'ë³´í˜¸ìž', 'WÃ¤chter', 'Custode', 'à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡', 'GyÃ¡m', 'Voogd', 'custos', 'Wali', 'Gardiyan', 'ÎšÎ·Î´ÎµÎ¼ÏŒÎ½Î±Ï‚', 'Ù†Ú¯Ù‡Ø¨Ø§Ù†', 'Guardian', 'à°¸à°‚à°°à°•à±à°·à°•à±à°¡à±', 'à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯', 'àª—àª¾àª°à«àª¡àª¿àª¯àª¨', 'Opiekun', 'ÐžÐ¿Ñ–ÐºÑƒÐ½', 'à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨', 'paznic', 'á€‚á€±á€«á€€á€œá€°á€€á€¼á€®á€¸', 'Oluá¹£á»', 'Guardian', NULL, NULL),
(53, 'student', 'Student', 'ছাত্র/ছাত্রী ', 'Estudiante', 'Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…', 'à¤›à¤¾à¤¤à¥à¤°', 'Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…', 'å­¦ç”Ÿ', 'å­¦ç”Ÿ', 'Aluna', 'Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚', 'Ã‰tudiant', 'í•™ìƒ', 'SchÃ¼ler', 'Alunno', 'à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™', 'DiÃ¡k', 'Student', 'Discipulus', 'Mahasiswa', 'Ã–ÄŸrenci', 'ÎœÎ±Î¸Î·Ï„Î·Ï‚ ÏƒÏ‡Î¿Î»ÎµÎ¹Î¿Ï…', 'Ø¯Ø§Ù†Ø´Ø¬Ùˆ', 'Pelajar', 'à°µà°¿à°¦à±à°¯à°¾à°°à±à°¥à°¿', 'à®®à®¾à®£à®µà®°à¯', 'àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€', 'Student', 'Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚ÐºÐ°', 'à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€', 'Student', 'á€€á€¼á€±á€¬á€„á€»á€¸á€žá€¬á€¸', 'á»Œmá»-iwe', 'Student', NULL, NULL),
(54, 'admit', 'Admit', 'এডমিট ', 'Admitir', 'ÙŠØ¹ØªØ±Ù', 'à¤¸à¥à¤µà¥€à¤•à¤¾à¤° à¤•à¤°à¤¨à¤¾', 'ØªØ³Ù„ÛŒÙ…', 'æ‰¿è®¤', 'èªã‚ã‚‹', 'Admitem', 'ÐŸÑ€Ð¸Ð·Ð½Ð°Ð²Ð°Ñ‚ÑŒ', 'Admettre', 'ë“¤ì´ë‹¤', 'Eingestehen', 'Ammettere', 'à¸¢à¸­à¸¡à¸£à¸±à¸š', 'Beismerni', 'Toegeven', 'fateri', 'Mengakui', 'Kabul et', 'ÎŸÎ¼Î¿Î»Î¿Î³ÏŽ', 'Ø§Ù‚Ø±Ø§Ø± Ú©Ø±Ø¯Ù†', 'Mengaku', 'à°’à°ªà±à°ªà±à°•à±à°‚à°Ÿà±‡', 'à®’à®ªà¯à®ªà¯à®•à¯à®•à¯†à®¾à®³à¯à®³', 'àª¸à«àªµà«€àª•àª¾àª°à«àª¯à«àª‚', 'PrzyznaÄ‡', 'ÐŸÑ€Ð¸Ð¹Ð¼Ð°Ñ‚Ð¸', 'à¨¸à¨µà©€à¨•à¨¾à¨° à¨•à¨°à©‹', 'admite', 'á€–á€½á€±á€¬á€„á€»á€·á€†á€­á€¯', 'Gba', 'Shiga', NULL, NULL),
(55, 'attendance', 'Attendance', 'উপস্থিতি ', 'Asistencia', 'Ø§Ù„Ø­Ø¶ÙˆØ±', 'à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿', 'Ø­Ø§Ø¶Ø±ÛŒ', 'å‹¤', 'å‡ºå¸­', 'Comparecimento', 'Ð¿Ð¾ÑÐµÑ‰Ð°ÐµÐ¼Ð¾ÑÑ‚ÑŒ', 'PrÃ©sence', 'ì¶œì„', 'Teilnahme', 'partecipazione', 'à¸à¸²à¸£à¸”à¸¹à¹à¸¥à¸£à¸±à¸à¸©à¸²', 'RÃ©szvÃ©tel', 'opkomst', 'attendance', 'Kehadiran', 'katÄ±lÄ±m', 'Î Î±ÏÎ¿Ï…ÏƒÎ¯Î±', 'Ø­Ø¶ÙˆØ±', 'Kehadiran', 'à°¹à°¾à°œà°°à±', 'à®µà®°à¯à®•à¯ˆ', 'àª¹àª¾àªœàª°à«€', 'Frekwencja', 'Ð’Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ð½Ñ–ÑÑ‚ÑŒ', 'à¨¹à¨¾à¨œà¨¼à¨°à©€', 'prezenÈ›Äƒ', 'á€á€€á€ºá€›á€±á€¬á€€á€ºá€žá€°', 'Wiwa', 'Ziyarci', NULL, NULL),
(56, 'assignment', 'Assignment', 'বাড়ির কাজ ', 'AsignaciÃ³n', 'Ù…Ù‡Ù…Ø©', 'à¤…à¤¸à¤¾à¤‡à¤¨à¤®à¥‡à¤‚à¤Ÿ', 'ØªÙÙˆÛŒØ¶', 'åˆ†é…', 'å‰²ã‚Šå½“ã¦', 'Tarefa', 'Ð¿Ñ€Ð¸ÑÐ²Ð°Ð¸Ð²Ð°Ð½Ð¸Ðµ', 'Affectation', 'í• ë‹¹', 'Zuordnung', 'assegnazione', 'à¸à¸²à¸£à¸¡à¸­à¸šà¸«à¸¡à¸²à¸¢', 'Feladat', 'toewijzing', 'assignment', 'Tugas', 'atama', 'Î‘ÎÎ‘Î˜Î•Î£Î— Î•Î¡Î“Î‘Î£Î™Î‘Î£', 'ÙˆØ¸ÛŒÙÙ‡', 'tugasan', 'à°…à°¸à±†à±–à°¨à±à°®à±†à°‚à°Ÿà±', 'à®µà¯‡à®²à¯ˆà®¯à¯ˆ', 'àª¸à«‹àª‚àªªàª£à«€', 'Zadanie', 'ÐÐ°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½Ñ', 'à¨…à¨¸à¨¾à¨ˆà¨¨à¨®à©ˆà¨‚à¨Ÿ', 'Misiune', 'á€á€¬á€á€”á€ºá€€á€»á€á€²á€·á€”á€±á€›á€¬', 'Ifiraná¹£áº¹', 'Matsayi', NULL, NULL),
(57, 'submission', 'Submission', 'জমাদান ', 'SumisiÃ³n', 'ØªØ³Ù„ÙŠÙ…', 'à¤ªà¥à¤°à¤¸à¥à¤¤à¥à¤¤ à¤•à¤°à¤¨à¥‡', 'Ø¬Ù…Ø¹ Ú©Ø±Ø§Ù†Û’', 'æœä»Ž', 'æå‡º', 'SubmissÃ£o', 'Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ', 'Soumission', 'ì œì¶œ', 'Einreichung', 'Sottomissione', 'à¸ªà¹ˆà¸‡', 'BenyÃºjtÃ¡s', 'Voorlegging', 'submission', 'pengajuan', 'boyun eÄŸme', 'Î¥Ï€Î¿Î²Î¿Î»Î®', 'Ø§Ø±Ø³Ø§Ù„', 'Penyerahan', 'à°¸à°®à°°à±à°ªà°£', 'à®šà®®à®°à¯à®ªà¯à®ªà®¿à®•à¯à®•à¯à®®à¯', 'àª°àªœà«‚àª†àª¤', 'UlegÅ‚oÅ›Ä‡', 'ÐŸÐ¾Ð´Ð°Ð½Ð½Ñ', 'à¨¸à¨¬à¨®à¨¿à¨¸à¨¼à¨¨', 'supunere', 'á€”á€¬á€¸á€‘á€±á€¬á€„á€ºá€á€¼á€„á€ºá€¸', 'Iwawe', 'Shiga', NULL, NULL),
(58, 'exam', 'Exam', 'পরীক্ষা ', 'Examen', 'Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾', 'Ø§Ù…ØªØ­Ø§Ù†', 'è€ƒè¯•', 'è©¦é¨“', 'Exame', 'Ð­ÐºÐ·Ð°Ð¼ÐµÐ½', 'Examen', 'ì‹œí—˜', 'PrÃ¼fung', 'Esame', 'à¸à¸²à¸£à¸ªà¸­à¸š', 'Vizsga', 'tentamen', 'nito', 'Ujian', 'sÄ±nav', 'Î•Î¾Î­Ï„Î±ÏƒÎ·', 'Ø§Ù…ØªØ­Ø§Ù†', 'Peperiksaan', 'à°ªà°°à±€à°•à±à°·à°¾', 'à®¤à¯‡à®°à¯à®µà¯', 'àªªàª°à«€àª•à«àª·àª¾', 'Egzamin', 'Ð†ÑÐ¿Ð¸Ñ‚', 'à¨ªà©à¨°à©€à¨–à¨¿à¨†', 'Examen', 'á€…á€¬á€™á€±á€¸á€•á€½á€²', 'Idanwo', 'Binciken', NULL, NULL),
(59, 'exam_grade', 'Exam Grade', 'পরীক্ষার গ্রেড ', 'Examen de grado', 'Ø§Ù…ØªØ­Ø§Ù† Ø§Ù„ØµÙ', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤—à¥à¤°à¥‡à¤¡', 'Ø§Ù…ØªØ­Ø§Ù† Ú¯Ø±ÛŒÚˆ', 'è€ƒè¯•æˆç»©', 'è©¦é¨“ã‚°ãƒ¬ãƒ¼ãƒ‰', 'Nota da prova', 'Ð­ÐºÐ·Ð°Ð¼ÐµÐ½', 'Grade dexamen', 'ì‹œí—˜ ì„±ì ', 'PrÃ¼fungsnote', 'Voto desame', 'à¸£à¸°à¸”à¸±à¸šà¸à¸²à¸£à¸ªà¸­à¸š', 'Vizsga fokozat', 'Examencijfer', 'Romani nito', 'Kelas ujian', 'SÄ±nav Notu', 'Î’Î±Î¸Î¼ÏŒ ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½', 'Ø¯Ø±Ø¬Ù‡ Ø¢Ø²Ù…ÙˆÙ†', 'Gred Peperiksaan', 'à°ªà°°à±€à°•à±à°· à°—à±à°°à±‡à°¡à±', 'à®¤à¯‡à®°à¯à®µà¯ à®¤à®°à®®à¯', 'àªªàª°à«€àª•à«àª·àª¾ àª—à«àª°à«‡àª¡', 'StopieÅ„ egzaminu', 'Ð¡Ñ‚ÑƒÐ¿Ñ–Ð½ÑŒ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ', 'à¨à¨œà©‚à¨•à©‡à¨¸à¨¼à¨¨ à¨—à©à¨°à©‡à¨¡', 'Gradul de examen', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€†á€„á€ºá€·', 'Ayáº¹wo Ipele', 'Binciken Nazari', NULL, NULL),
(60, 'exam_term', 'Exam Term', 'পরীক্ষার টার্ম ', 'Plazo del examen', 'Ù…Ø¯Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¥€ à¤…à¤µà¤§à¤¿', 'Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ù…Ø¯Øª', 'è€ƒè¯•æœŸé™', 'è©¦é¨“æœŸé–“', 'Termo do Exame', 'Ð¡Ñ€Ð¾Ðº Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°', 'Terme dexamen', 'ì‹œí—˜ ê¸°ê°„', 'PrÃ¼fungsdauer', 'Termine desame', 'à¹€à¸‡à¸·à¹ˆà¸­à¸™à¹„à¸‚à¸à¸²à¸£à¸ªà¸­à¸š', 'VizsgaidÅ‘szak', 'Examen termijn', 'Term nito', 'Ujian Term', 'SÄ±nav Terimi', 'ÎŒÏÎ¿Ï‚ Î•Î¾Î­Ï„Î±ÏƒÎ·Ï‚', 'Ø´Ø±Ø§ÛŒØ· Ø¢Ø²Ù…ÙˆÙ†', 'Tempoh Peperiksaan', 'à°ªà°°à±€à°•à±à°·à°¾ à°Ÿà°°à±à°®à±', 'à®¤à¯‡à®°à¯à®µà¯ à®•à®¾à®²', 'àªªàª°à«€àª•à«àª·àª¾àª¨à«€ àª®à«àª¦àª¤', 'Okres egzaminacyjny', 'Ð¢ÐµÑ€Ð¼Ñ–Ð½ ÐµÐºÐ·Ð°Ð¼ÐµÐ½Ñƒ', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨®à¨¿à¨†à¨¦', 'Termen de examinare', 'á€…á€¬á€™á€±á€¸á€•á€½á€² Term', 'Ayewo Aago', 'Tambaya', NULL, NULL),
(61, 'schedule', 'Schedule', 'শিডিউল ', 'Programar', 'Ø¬Ø¯ÙˆÙ„', 'à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€', 'Ø´ÛŒÚˆÙˆÙ„', 'æ—¶é—´è¡¨', 'ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«', 'Cronograma', 'Ð“Ñ€Ð°Ñ„Ð¸Ðº', 'Programme', 'ì‹œê°„í‘œ', 'Zeitplan', 'Programma', 'à¸•à¸²à¸£à¸²à¸‡à¹€à¸§à¸¥à¸²', 'Menetrend', 'Planning', 'schedule', 'Susunan acara', 'program', 'Î ÏÏŒÎ³ÏÎ±Î¼Î¼Î±', 'Ø¨Ø±Ù†Ø§Ù…Ù‡', 'Jadual', 'à°·à±†à°¡à±à°¯à±‚à°²à±', 'à®…à®Ÿà¯à®Ÿà®µà®£à¯ˆ', 'àª¸à«‚àªšàª¿', 'Harmonogram', 'Ð Ð¾Ð·ÐºÐ»Ð°Ð´', 'à¨¸à¨®à¨¾à¨¸à©‚à¨šà©€, à¨•à¨¾à¨°à¨œ - à¨•à©à¨°à¨®', 'Programa', 'á€‡á€šá€¬á€¸', 'Iá¹£eto', 'Jadawalin', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(62, 'suggestion', 'Suggestion', 'সাজেশন ', 'Sugerencia', 'Ø§Ù‚ØªØ±Ø§Ø­', 'à¤¸à¥à¤à¤¾à¤µ', 'Ù…Ø´ÙˆØ±Û', 'å»ºè®®', 'ææ¡ˆ', 'SugestÃ£o', 'ÐŸÑ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ', 'Suggestion', 'ì•”ì‹œ', 'Vorschlag', 'Suggerimento', 'à¸‚à¹‰à¸­à¹€à¸ªà¸™à¸­à¹à¸™à¸°', 'Javaslat', 'Suggestie', 'suggestion', 'Saran', 'Ã–neri', 'Î ÏÏŒÏ„Î±ÏƒÎ·', 'Ù¾ÛŒØ´Ù†Ù‡Ø§Ø¯ÛŒ', 'Cadangan', 'à°¸à±‚à°šà°¨', 'à®ªà®°à®¿à®¨à¯à®¤à¯à®°à¯ˆ', 'àª¸à«‚àªšàª¨', 'Sugestia', 'ÐŸÑ€Ð¾Ð¿Ð¾Ð·Ð¸Ñ†Ñ–Ñ', 'à¨¸à©à¨à¨¾à¨…', 'Sugestie', 'á€¡á€€á€¼á€¶á€•á€±á€¸á€á€»á€€á€º', 'Abajade', 'Shawarwarin', NULL, NULL),
(63, 'exam_mark', 'Exam Mark', 'পরীক্ষার নম্বর ', 'Marca de examen', 'Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤šà¤¿à¤¨à¥à¤¹', 'Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø±Ú©', 'è€ƒè¯•æ ‡å¿—', 'è©¦é¨“ã®ãƒžãƒ¼ã‚¯', 'Marca de exame', 'Ð­ÐºÐ·Ð°Ð¼ÐµÐ½ Mark', 'Marque dexamen', 'ì‹œí—˜ ë§ˆí¬', 'PrÃ¼fzeichen', 'Segno dellesame', 'à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸à¸²à¸£à¸ªà¸­à¸š', 'Vizsga Mark', 'Examenmarkering', 'Mark nito', 'Tanda ujian', 'SÄ±nav iÅŸareti', 'Î•Î¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½ Î•Î¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½', 'Ø¹Ù„Ø§Ù…Øª Ø§Ù…ØªØ­Ø§Ù†', 'Ujian Mark', 'à°ªà°°à±€à°•à±à°· à°®à°¾à°°à±à°•à±', 'à®¤à¯‡à®°à¯à®µà¯ à®®à®¾à®°à¯à®•à¯', 'àªªàª°à«€àª•à«àª·àª¾ àª®àª¾àª°à«àª•', 'Znak egzaminu', 'Ð•ÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ñ–Ð¹Ð½Ð¸Ð¹ Ð·Ð½Ð°Ðº', 'à¨à¨œà©‚à¨•à©‡à¨¸à¨¼à¨¨ à¨®à¨¾à¨°à¨•', 'Exam Mark', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€™á€¬á€€á€¯', 'Aami ayáº¹wo', 'Alamar Duba', NULL, NULL),
(64, 'mark_sheet', 'Mark Sheet', 'মার্ক শীট ', 'Hoja de marca', 'Ø¹Ù„Ø§Ù…Ø© ÙˆØ±Ù‚Ø©', 'à¤…à¤‚à¤• à¤¤à¤¾à¤²à¤¿à¤•à¤¾', 'Ù…Ø§Ø±Ú© Ø´ÛŒÙ¹', 'æ ‡è®°è¡¨', 'ãƒžãƒ¼ã‚¯ã‚·ãƒ¼ãƒˆ', 'Marca Folha', 'Mark Sheet', 'Feuille de marque', 'ë§ˆí¬ ì‹œíŠ¸', 'Markierungsblatt', 'Libretto universitario', 'à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¹à¸œà¹ˆà¸™à¸‡à¸²à¸™', 'Mark Sheet', 'Mark Sheet', 'Mark Sheet', 'Lembar penilaian', 'Mark Levha', 'Î¦Ï…Î»Î»Î¬Î´Î¹Î¿ Î±Ï€Î±Î½Ï„Î®ÏƒÎµÏ‰Î½', 'Ø¨Ø±Ú¯Ù‡ Ù…Ø§Ø±Ú©', 'Mark Sheet', 'à°—à°£à°¾à°‚à°•à°¾à°² à°ªà°Ÿà±à°Ÿà°¿', 'à®®à®¤à®¿à®ªà¯à®ªà¯€à®Ÿà¯à®Ÿà¯ à®¤à®¾à®³à¯', 'àª®àª¾àª°à«àª• àª¶à«€àªŸ', 'Arkusz ocen', 'ÐœÐ°Ñ€Ðº Ð›Ð¸ÑÑ‚', 'à¨®à¨¾à¨°à¨• à¨¸à¨¼à©€à¨Ÿ', 'MarcaÈ›i foaia', 'á€™á€¬á€€á€¯á€…á€¬á€›á€½á€€á€º', 'Samisi iwe', 'Mark Sheet', NULL, NULL),
(65, 'exam_final_result', 'Exam Final Result', 'পরীক্ষার চূড়ান্ত ফলাফল ', 'Resultado final del examen', 'Ø§Ù„Ù†ØªÙŠØ¬Ø© Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠØ© Ù„Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤‚à¤¤à¤¿à¤® à¤ªà¤°à¤¿à¤£à¤¾à¤®', 'Ø§Ù…ØªØ­Ø§Ù† Ú©Û’ Ø­ØªÙ…ÛŒ Ù†ØªÛŒØ¬Û', 'è€ƒè¯•æœ€ç»ˆç»“æžœ', 'è©¦é¨“æœ€çµ‚çµæžœ', 'Resultado Final do Exame', 'Ð­ÐºÐ·Ð°Ð¼ÐµÐ½ ÐžÐºÐ¾Ð½Ñ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚', 'RÃ©sultat final de lexamen', 'ì‹œí—˜ ìµœì¢… ê²°ê³¼', 'Abschluss der PrÃ¼fung', 'Esame Risultato finale', 'à¸œà¸¥à¸ªà¸­à¸šà¸›à¸¥à¸²à¸¢à¸ à¸²à¸„', 'Vizsga vÃ©geredmÃ©ny', 'Examen Eindresultaat', 'Nito captorum eventus superae', 'Hasil Ujian Akhir Ujian', 'SÄ±nav Sonucu', 'Î¤ÎµÎ»Î¹ÎºÏŒ Î±Ï€Î¿Ï„Î­Î»ÎµÏƒÎ¼Î± ÎµÎ¾Î­Ï„Î±ÏƒÎ·Ï‚', 'Ù†ØªÛŒØ¬Ù‡ Ù†Ù‡Ø§ÛŒÛŒ Ø¢Ø²Ù…ÙˆÙ†', 'Keputusan Akhir Peperiksaan', 'à°ªà°°à±€à°•à±à°· à°«à°²à°¿à°¤à°‚', 'à®¤à¯‡à®°à¯à®µà¯ à®‡à®±à¯à®¤à®¿ à®®à¯à®Ÿà®¿à®µà¯', 'àªªàª°à«€àª•à«àª·àª¾ àª…àª‚àª¤àª¿àª® àªªàª°àª¿àª£àª¾àª®', 'Egzamin Wynik koÅ„cowy', 'ÐžÑÑ‚Ð°Ð½Ð½Ñ–Ð¹ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨…à©°à¨¤à¨¿à¨® à¨¨à¨¤à©€à¨œà©‡', 'Examen Rezultat final', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸á€›á€œá€’á€º', 'Ipari ipari ikáº¹hin', 'Binciken Æ˜arshe na Æ˜arshe', NULL, NULL),
(66, 'result', 'Result', 'ফলাফল ', 'Resultado', 'Ù†ØªÙŠØ¬Ø©', 'à¤ªà¤°à¤¿à¤£à¤¾à¤®', 'Ù†ØªÛŒØ¬Û', 'ç»“æžœ', 'çµæžœ', 'Resultado', 'Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚', 'RÃ©sultat', 'ê²°ê³¼', 'Ergebnis', 'Risultato', 'à¸œà¸¥', 'EredmÃ©ny', 'Resultaat', 'exitum', 'Hasil', 'SonuÃ§', 'Î‘Ï€Î¿Ï„Î­Î»ÎµÏƒÎ¼Î±', 'Ù†ØªÛŒØ¬Ù‡', 'Keputusan', 'à°«à°²à°¿à°¤à°‚', 'à®µà®¿à®³à¯ˆà®µà®¾à®•', 'àªªàª°àª¿àª£àª¾àª®', 'Wynik', 'Ð ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚', 'à¨¨à¨¤à©€à¨œà¨¾', 'Rezultat', 'á€›á€œá€’á€º', 'Esi', 'Sakamako', NULL, NULL),
(67, 'send', 'Send', 'প্রেরণ করুন ', 'Enviar', 'Ø¥Ø±Ø³Ø§Ù„', 'à¤­à¥‡à¤œà¤¨à¤¾', 'Ø¨Ú¾ÛŒØ¬ÛŒÚº', 'å‘é€', 'é€ä¿¡', 'Enviar', 'Ð¿Ð¾ÑÐ»Ð°Ñ‚ÑŒ', 'Envoyer', 'ë³´ë‚´ë‹¤', 'Senden', 'Inviare', 'à¸ªà¹ˆà¸‡', 'ElkÃ¼ld', 'Sturen', 'Mitte', 'Kirim', 'gÃ¶ndermek', 'Î£Ï„ÎµÎ¯Î»ÎµÏ„Îµ', 'Ø§Ø±Ø³Ø§Ù„', 'Hantar', 'à°ªà°‚à°ªà°‚à°¡à°¿', 'à®…à®©à¯à®ªà¯à®ªà¯', 'àª®à«‹àª•àª²à«‹', 'WysÅ‚aÄ‡', 'Ð’Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð¸Ñ‚Ð¸', 'à¨­à©‡à¨œà©‹', 'Trimite', 'á€•á€±á€¸á€•á€­á€¯á€·', 'Firaná¹£áº¹', 'Aika', NULL, NULL),
(68, 'mark_send_by_sms', 'Mark send by SMS', 'প্রাপ্ত নম্বর এস এম এস করুন ', 'Marca enviar por SMS', 'Ø¹Ù„Ø§Ù…Ø© Ø¥Ø±Ø³Ø§Ù„ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©', 'à¤à¤¸à¤à¤®à¤à¤¸ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤­à¥‡à¤œà¥‡à¤‚ à¤­à¥‡à¤œà¥‡à¤‚', 'Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ú©Û’ Ø°Ø±ÛŒØ¹Û Ø¨Ú¾ÛŒØ¬ÛŒÚº', 'æ ‡è®°é€šè¿‡çŸ­ä¿¡å‘é€', 'SMSã§ãƒžãƒ¼ã‚¯ã™ã‚‹', 'Marcar enviar por SMS', 'ÐžÑ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²ÐºÑƒ Ð¿Ð¾ SMS', 'Mark envoyer par SMS', 'SMSë¡œ ë³´ë‚´ê¸° í‘œì‹œ', 'Markiere per SMS', 'Mark invia tramite SMS', 'à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸§à¹ˆà¸²à¸ªà¹ˆà¸‡à¸—à¸²à¸‡ SMS', 'JelÃ¶lje be SMS-ben', 'Markeer per sms', 'Mark a mittere SMS', 'Tandai kirim melalui SMS', 'SMS ile gÃ¶nderiyi iÅŸaretle', 'Î£Î·Î¼ÎµÎ¹ÏŽÏƒÏ„Îµ Ï„Î·Î½ Î±Ï€Î¿ÏƒÏ„Î¿Î»Î® Î¼Î­ÏƒÏ‰ SMS', 'Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† Ø®ÙˆØ§Ù†Ø¯Ù‡ Ø´Ø¯Ù‡ ØªÙˆØ³Ø· SMS', 'Tandakan hantar melalui SMS', 'SMS à°¦à±à°µà°¾à°°à°¾ à°®à°¾à°°à±à°•à± à°ªà°‚à°ªà°‚à°¡à°¿', 'SMS à®®à¯‚à®²à®®à¯ à®…à®©à¯à®ªà¯à®ªà®µà¯à®®à¯', 'àªàª¸àªàª®àªàª¸ àª¦à«àªµàª¾àª°àª¾ àª®à«‹àª•àª²à«‹ àª®àª¾àª°à«àª• àª•àª°à«‹', 'Oznacz, wyÅ›lij przez SMS', 'ÐœÐ°Ñ€Ðº Ð²Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð¸Ñ‚Ð¸ SMS', 'à¨à¨¸à¨à¨®à¨à¨¸ à¨¦à©à¨†à¨°à¨¾ à¨­à©‡à¨œà©‹ à¨®à¨¾à¨°à¨• à¨•à¨°à©‹', 'Marcare trimite prin SMS', 'á€™á€¬á€€á€¯á€€á€­á€¯ SMS á€–á€½á€„á€»á€·á€•á€±á€¸á€•á€­á€¯á€·', 'Samisi firaná¹£áº¹ nipasáº¹ SMS', 'Alama aika ta SMS', NULL, NULL),
(69, 'mark_send_by_email', 'Mark send by Email', 'প্রাপ্ত নম্বর ইমেইল করুন ', 'Marcar enviar por correo electrÃ³nico', 'Ø¹Ù„Ø§Ù…Ø© Ø¥Ø±Ø³Ø§Ù„ Ø¹Ù† Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤ˆà¤®à¥‡à¤² à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤­à¥‡à¤œà¥‡à¤‚ à¤®à¤¾à¤°à¥à¤•', 'Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ú©Û’ Ø°Ø±ÛŒØ¹Û Ø¨Ú¾ÛŒØ¬ÛŒÚº', 'ç”¨ç”µå­é‚®ä»¶æ ‡è®°å‘é€', 'é›»å­ãƒ¡ãƒ¼ãƒ«ã§é€ä¿¡ã™ã‚‹', 'Marcar enviar por e-mail', 'ÐœÐ°Ñ€Ðº Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ', 'Mark envoyer par Email', 'ì „ìž ë©”ì¼ë¡œ ë³´ë‚´ê¸° í‘œì‹œ', 'Markiere per Email', 'Mark invia tramite e-mail', 'à¸¡à¸²à¸£à¹Œà¸„à¸ªà¹ˆà¸‡à¸—à¸²à¸‡à¸­à¸µà¹€à¸¡à¸¥', 'A feliratkozÃ¡s e-mailben tÃ¶rtÃ©nik', 'Markeer per e-mail', 'Email a Mark mittere', 'Tandai kirim melalui Email', 'E-postayla gÃ¶nderi iÅŸaretle', 'Î£Î·Î¼ÎµÎ¹ÏŽÏƒÏ„Îµ ÏƒÏ„ÎµÎ¯Î»Ï„Îµ Î¼Îµ Email', 'Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† Ø§Ø±Ø³Ø§Ù„ Ø§Ø² Ø·Ø±ÛŒÙ‚ Ø§ÛŒÙ…ÛŒÙ„', 'Tandakan hantar melalui E-mel', 'à°‡à°®à±†à°¯à°¿à°²à± à°¦à±à°µà°¾à°°à°¾ à°®à°¾à°°à±à°•à± à°ªà°‚à°ªà°‚à°¡à°¿', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®®à¯‚à®²à®®à¯ à®…à®©à¯à®ªà¯à®ªà®µà¯à®®à¯', 'àª‡àª®à«‡àª‡àª² àª¦à«àªµàª¾àª°àª¾ àª®à«‹àª•àª²à«‹ àª®àª¾àª°à«àª• àª•àª°à«‹', 'Zaznacz WyÅ›lij przez e-mail', 'ÐŸÐ¾Ð·Ð½Ð°Ñ‡Ð¸Ñ‚Ð¸ Ð²Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð¸Ñ‚Ð¸ Ð¿Ð¾ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñ–Ð¹ Ð¿Ð¾ÑˆÑ‚Ñ–', 'à¨ˆà¨®à©‡à¨² à¨¦à©à¨†à¨°à¨¾ à¨­à©‡à¨œà©‹ à¨®à¨¾à¨°à¨• à¨•à¨°à©‹', 'MarcaÈ›i trimiteÈ›i prin e-mail', 'á€™á€¬á€€á€¯á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€•á€±á€¸á€•á€­á€¯á€·', 'Samisi firaná¹£áº¹ nipasáº¹ Imeeli', 'Alama aika ta Imel', NULL, NULL),
(70, 'promotion', 'Promotion', 'পদোন্নতি ', 'PromociÃ³n', 'ØªØ±Ù‚ÙŠØ© ÙˆØ¸ÙŠÙÙŠØ©', 'à¤ªà¤¦à¥‹à¤¨à¥à¤¨à¤¤à¤¿', 'ÙØ±ÙˆØº', 'æå‡', 'ãƒ—ãƒ­ãƒ¢ãƒ¼ã‚·ãƒ§ãƒ³', 'PromoÃ§Ã£o', 'ÐŸÑ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ðµ', 'Promotion', 'ìŠ¹ì§„', 'BefÃ¶rderung', 'Promozione', 'à¸à¸²à¸£à¸ªà¹ˆà¸‡à¹€à¸ªà¸£à¸´à¸¡', 'promÃ³ciÃ³', 'Bevordering', 'promotio', 'Promosi', 'tanÄ±tÄ±m', 'Î ÏÎ¿Î²Î¿Î»Î®', 'ØªØ±ÙÛŒØ¹', 'Promosi', 'à°ªà±à°°à°®à±‹à°·à°¨à±', 'à®ªà®¤à®µà®¿ à®‰à®¯à®°à¯à®µà¯', 'àªªà«àª°à«‹àª¤à«àª¸àª¾àª¹àª¨', 'Awans', 'ÐŸÑ€Ð¾ÑÑƒÐ²Ð°Ð½Ð½Ñ', 'à¨ªà©à¨°à©‹à¨®à©‹à¨¸à¨¼à¨¨', 'Promovare', 'á€›á€¬á€‘á€°á€¸á€á€­á€¯á€¸á€™á€¼á€¾á€„á€·á€ºá€•á€±á€¸á€á€¼á€„á€ºá€¸', 'Igbega', 'Shawarwarin', NULL, NULL),
(71, 'library', 'Library', 'লাইব্রেরী ', 'Biblioteca', 'Ù…ÙƒØªØ¨Ø©', 'à¤ªà¥à¤¸à¥à¤¤à¤•à¤¾à¤²à¤¯', 'Ù„Ø§Ø¦Ø¨Ø±ÛŒØ±ÛŒ', 'å›¾ä¹¦é¦†', 'ã¨ã—ã‚‡ã†ã‹ã‚“', 'Biblioteca', 'Ð‘Ð¸Ð±Ð»Ð¸Ð¾Ñ‚ÐµÐºÐ°', 'BibliothÃ¨que', 'ë„ì„œê´€', 'Bibliothek', 'Biblioteca', 'à¸«à¹‰à¸­à¸‡à¸ªà¸¡à¸¸à¸”', 'KÃ¶nyvtÃ¡r', 'Bibliotheek', 'Bibliotheca', 'Perpustakaan', 'KÃ¼tÃ¼phane', 'Î’Î¹Î²Î»Î¹Î¿Î¸Î®ÎºÎ·', 'Ú©ØªØ§Ø¨Ø®Ø§Ù†Ù‡', 'Perpustakaan', 'à°²à±†à±–à°¬à±à°°à°°à±€', 'à®¨à¯‚à®²à®•à®®à¯', 'àªªà«àª¸à«àª¤àª•àª¾àª²àª¯', 'Biblioteka', 'Ð‘Ñ–Ð±Ð»Ñ–Ð¾Ñ‚ÐµÐºÐ°', 'à¨²à¨¾à¨‡à¨¬à©à¨°à©‡à¨°à©€', 'BibliotecÄƒ', 'á€…á€¬á€€á€¼á€Šá€·á€ºá€á€­á€¯á€€á€º', 'Iwadi', 'Library', NULL, NULL),
(72, 'book', 'Book', 'বই ', 'Libro', 'ÙƒØªØ§Ø¨', 'à¤•à¤¿à¤¤à¤¾à¤¬', 'Ú©ØªØ§Ø¨', 'ä¹¦', 'æœ¬', 'Livro', 'ÐšÐ½Ð¸Ð³Ð°', 'Livre', 'ë„ì„œ', 'Buch', 'Libro', 'à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­', 'KÃ¶nyv', 'Boek', 'liber', 'Book', 'Kitap', 'Î’Î¹Î²Î»Î¯Î¿', 'Ú©ØªØ§Ø¨', 'Buku', 'à°ªà±à°¸à±à°¤à°•à°‚', 'à®ªà¯à®¤à¯à®¤à®•', 'àªªà«àª¸à«àª¤àª•', 'KsiÄ…Å¼ka', 'ÐšÐ½Ð¸Ð³Ð°', 'à¨¬à©à©±à¨•', 'Carte', 'á€…á€¬á€¡á€¯á€•á€º', 'Iwe', 'Littafin', NULL, NULL),
(73, 'member', 'Member', 'সদস্য ', 'Miembro', 'Ø¹Ø¶Ùˆ', 'à¤¸à¤¦à¤¸à¥à¤¯', 'Ø±Ú©Ù†', 'ä¼šå‘˜', 'ãƒ¡ãƒ³ãƒãƒ¼', 'Membro', 'Ñ‡Ð»ÐµÐ½', 'Membre', 'íšŒì›', 'Mitglied', 'Membro', 'à¸ªà¸¡à¸²à¸Šà¸´à¸', 'Tag', 'Lid', 'socius', 'Anggota', 'Ã¼ye', 'ÎœÎ­Î»Î¿Ï‚', 'Ø¹Ø¶Ùˆ', 'Ahli', 'à°¸à°­à±à°¯à±à°¡à±', 'à®‰à®±à¯à®ªà¯à®ªà®¿à®©à®°à¯', 'àª¸àª­à«àª¯', 'CzÅ‚onek', 'Ð§Ð»ÐµÐ½', 'à¨¸à¨¦à©±à¨¸', 'Membru', 'á€¡á€–á€¾á€²á€·á€á€„á€»', 'áº¸gbáº¹', 'Memba', NULL, NULL),
(74, 'issue_and_return', 'Issue & Return', 'ইস্যু এবং ফেরত ', 'EmisiÃ³n y devoluciÃ³n', 'Ø§Ù„Ø¥ØµØ¯Ø§Ø± ÙˆØ§Ù„Ø¹ÙˆØ¯Ø©', 'à¤…à¤‚à¤• à¤”à¤° à¤µà¤¾à¤ªà¤¸à¥€', 'Ù…Ø³Ø¦Ù„Û Ø§ÙˆØ± ÙˆØ§Ù¾Ø³ÛŒ', 'é—®é¢˜å’Œå›žæŠ¥', 'å•é¡Œã¨ãƒªã‚¿ãƒ¼ãƒ³', 'Problema e retorno', 'ÐŸÑ€Ð¾Ð±Ð»ÐµÐ¼Ð° Ð¸ Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚', 'Emission et retour', 'ì´ìŠˆì™€ ë¦¬í„´', 'Problem und RÃ¼ckgabe', 'Problema e ritorno', 'à¸à¸²à¸£à¸­à¸­à¸à¹à¸¥à¸°à¸à¸²à¸£à¸„à¸·à¸™à¸ªà¸´à¸™à¸„à¹‰à¸²', 'KiadÃ¡s Ã©s visszatÃ©rÃ©s', 'Probleem en terugkeer', 'Et exitus Redi', 'Isu dan Kembali', 'SayÄ± ve Ä°ade', 'ÎˆÎºÎ´Î¿ÏƒÎ· ÎºÎ±Î¹ ÎµÏ€Î¹ÏƒÏ„ÏÎ¿Ï†Î®', 'Ù…Ø³Ø¦Ù„Ù‡ Ùˆ Ø¨Ø§Ø²Ú¯Ø´Øª', 'Isu dan Pulangan', 'à°‡à°·à±à°¯à±‚ à°®à°°à°¿à°¯à± à°°à°¿à°Ÿà°°à±à°¨à±', 'à®µà¯†à®³à®¿à®¯à¯€à®Ÿà¯ à®®à®±à¯à®±à¯à®®à¯ à®¤à®¿à®°à¯à®®à¯à®ª', 'àª‡àª¶à«àª¯à«‚ àª…àª¨à«‡ àª°à«€àªŸàª°à«àª¨', 'Wydanie i zwrot', 'ÐŸÑ€Ð¾Ð±Ð»ÐµÐ¼Ð° Ñ‚Ð° Ð¿Ð¾Ð²ÐµÑ€Ð½ÐµÐ½Ð½Ñ', 'à¨‡à¨¸à¨¼à©‚ à¨…à¨¤à©‡ à¨µà¨¾à¨ªà¨¸à©€', 'Eliberare È™i returnare', 'á€•á€¼á€¿á€”á€¬á€™á€»á€¬á€¸á€”á€¾á€„á€ºá€·á€•á€¼á€”á€ºá€žá€½á€¬á€¸', 'Oro ati Pada', 'Isar da Komawa', NULL, NULL),
(75, 'issue', 'Issue', 'ইস্যু ', 'EmisiÃ³n y devoluciÃ³n...', 'Ø§Ù„Ù‚Ø¶ÙŠØ©', 'à¤®à¥à¤¦à¥à¤¦à¤¾', 'Ù…Ø³Ø¦Ù„Û', 'é—®é¢˜', 'å•é¡Œ', 'QuestÃ£o', 'Ð²Ð¾Ð¿Ñ€Ð¾Ñ', 'ProblÃ¨me', 'ë°œí–‰ë¬¼', 'Problem', 'Problema', 'à¸›à¸±à¸à¸«à¸²', 'ProblÃ©ma', 'Kwestie', 'exitus', 'Isu', 'Konu', 'Î˜Î­Î¼Î±', 'Ù…ÙˆØ¶ÙˆØ¹', 'Isu', 'à°¸à°®à°¸à±à°¯', 'à®ªà®¿à®°à®šà¯à®šà®¿à®©à¯ˆ', 'àª®à«àª¦à«àª¦à«‹', 'Kwestia', 'ÐŸÑ€Ð¾Ð±Ð»ÐµÐ¼Ð°', 'à¨®à©à©±à¨¦à©‡', 'Problema', 'á€‘á€¯á€á€ºá€•á€¼á€”á€ºá€žá€Šá€º', 'Oro naa', 'Matsalar', NULL, NULL),
(76, 'return', 'Return', 'ফেরত ', 'Regreso', 'Ø¥Ø±Ø¬Ø§Ø¹', 'à¤µà¤¾à¤ªà¤¸à¥€', 'ÙˆØ§Ù¾Ø³ Ù„Ùˆ', 'è¿”å›ž', 'æˆ»ã‚‹', 'Retorna', 'Ð’ÐµÑ€Ð½ÑƒÑ‚ÑŒ', 'Revenir', 'ë°˜í™˜', 'RÃ¼ckkehr', 'Ritorno', 'à¸à¸¥à¸±à¸š', 'VisszatÃ©rÃ©s', 'terugkeer', 'Redi', 'Kembali', 'DÃ¶nÃ¼ÅŸ', 'Î•Î Î™Î£Î¤Î¡ÎŸÎ¦Î—', 'Ø¨Ø±Ú¯Ø´Øª', 'Kembali', 'à°°à°¿à°Ÿà°°à±à°¨à±', 'à®¤à®¿à®°à¯à®®à¯à®ª', 'àªªàª¾àª›àª¾ àª†àªµà«‹', 'PowrÃ³t', 'ÐŸÐ¾Ð²ÐµÑ€Ð½ÐµÐ½Ð½Ñ', 'à¨µà¨¾à¨ªà¨¸à©€', 'ÃŽntoarcere', 'á€•á€¼á€”á€ºá€œá€¬', 'Pada', 'Komawa', NULL, NULL),
(77, 'issue_date', 'Issue Date', 'ইস্যু তারিখ ', 'Fecha de asunto', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§ØµØ¯Ø§Ø±', 'à¤œà¤¾à¤°à¥€ à¤•à¤°à¤¨à¥‡ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿', 'ØªØ§Ø±ÛŒØ® Ø§Ø¬Ø±Ø§Ø¡', 'å‘è¡Œæ—¥æœŸ', 'ç™ºè¡Œæ—¥', 'Data de emissÃ£o', 'Ð”Ð°Ñ‚Ð° Ð²Ñ‹Ð¿ÑƒÑÐºÐ°', 'Date dÃ©mission', 'ë°œí–‰ì¼', 'Ausgabedatum', 'Data di rilascio', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¸­à¸­à¸', 'KiadÃ¡s dÃ¡tuma', 'Datum van publicatie', 'exitus Date', 'Tanggal pembuatan', 'VeriliÅŸ tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î­ÎºÎ´Î¿ÏƒÎ·Ï‚', 'ØªØ§Ø±ÛŒØ® Ø§Ù†ØªØ´Ø§Ø±', 'Tarikh Keluaran', 'à°œà°¾à°°à°¿ à°šà±‡à°¯à± à°¤à±‡à°¦à°¿', 'à®µà¯†à®³à®¿à®¯à¯€à®Ÿà¯à®Ÿà¯ à®¤à¯‡à®¤à®¿', 'àª…àª‚àª• àª¤àª¾àª°à«€àª–', 'Data wydania', 'Ð”Ð°Ñ‚Ð° Ð²Ð¸Ð¿ÑƒÑÐºÑƒ', 'à¨œà¨¾à¨°à©€ à¨•à¨°à¨¨ à¨¦à©€ à¨®à¨¿à¨¤à©€', 'Data emiterii', 'á€‘á€¯á€á€ºá€•á€¼á€”á€ºá€›á€€á€ºá€…á€½á€²', 'á»Œjá» itáº¹jade', 'Isowar ranar', NULL, NULL),
(78, 'due_date', 'Due Date', 'মেয়াদোত্তীর্ণের তারিখ ', 'Fecha de vencimiento', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§Ø³ØªØ­Ù‚Ø§Ù‚', 'à¤¨à¤¿à¤¯à¤¤ à¤¤à¤¾à¤°à¥€à¤–', 'Ø§Ø®Ø±ÛŒ ØªØ§Ø±ÛŒØ®', 'æˆªæ­¢æ—¥æœŸ', 'æœŸæ—¥', 'Data de Vencimento', 'Ð¡Ñ€Ð¾Ðº', 'Date dÃ©chÃ©ance', 'ë§ˆê°ì¼', 'Geburtstermin', 'Scadenza', 'Due Date', 'EsedÃ©kessÃ©g', 'Opleveringsdatum', 'ob Date', 'Batas tanggal terakhir', 'BitiÅŸ tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î»Î®Î¾Î·Ï‚', 'ØªØ§Ø±ÛŒØ® ØªØ­ÙˆÛŒÙ„', 'Tarikh Gagal', 'à°—à°¡à±à°µà± à°¤à±‡à°¦à°¿', 'à®¤à¯‡à®¤à®¿ à®¤à¯‡à®¤à®¿', 'àª¨àª¿àª¯àª¤ àª¤àª¾àª°à«€àª–', 'Termin pÅ‚atnoÅ›ci', 'Ð¢ÐµÑ€Ð¼Ñ–Ð½ ÑÐ¿Ð»Ð°Ñ‚Ð¸', 'à¨…à¨¦à¨¾à¨‡à¨—à©€ à¨¤à¨¾à¨°à©€à¨–', 'Data scadentÄƒ', 'á€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸á€›á€€á€º', 'Asiko to ba to', 'Kwanan wata', NULL, NULL),
(79, 'return_date', 'Return Date', 'ফেরত তারিখ ', 'Fecha de regreso', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¹ÙˆØ¯Ø©', 'à¤µà¤¾à¤ªà¤¸à¥€ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿', 'ÙˆØ§Ù¾Ø³ÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'å½’æœŸ', 'è¿”å´æ—¥', 'Data de retorno', 'Ð”Ð°Ñ‚Ð° Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚Ð°', 'Date de retour', 'ë°˜í™˜ ê¸°ì¼', 'RÃ¼ckflugdatum', 'Data di ritorno', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¸à¸¥à¸±à¸š', 'VisszatÃ©rÃ­tÃ©si dÃ¡tum', 'Retourdatum', 'Redi Date', 'Tanggal pengembalian', 'DÃ¶nÃ¼ÅŸ tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± ÎµÏ€Î¹ÏƒÏ„ÏÎ¿Ï†Î®Ï‚', 'ØªØ§Ø±ÛŒØ® Ø¨Ø§Ø²Ú¯Ø´Øª', 'Tarikh Pulang', 'à°¤à°¿à°°à°¿à°—à°¿ à°µà°šà±à°šà± à°¤à±‡à°¦à±€', 'à®¤à®¿à®°à¯à®®à¯à®ª à®¤à¯‡à®¤à®¿', 'àª°à«€àªŸàª°à«àª¨ àª¤àª¾àª°à«€àª–', 'Data powrotu', 'Ð”Ð°Ñ‚Ð° Ð¿Ð¾Ð²ÐµÑ€Ð½ÐµÐ½Ð½Ñ', 'à¨µà¨¾à¨ªà¨¸à©€ à¨¦à©€ à¨¤à¨¾à¨°à©€à¨–', 'Data retur', 'á€žá€­á€¯á€·á€•á€¼á€”á€ºá€žá€½á€¬á€¸á€žá€Šá€ºá€”á€±á€·á€…á€½á€²', 'á»Œjá» pada', 'Ranar Koma', NULL, NULL),
(80, 'new_issue', 'New Issue', 'নতুন ইস্যু ', 'Nueva ediciÃ³n', 'Ù…Ø´ÙƒÙ„Ø© Ø¬Ø¯ÙŠØ¯Ø©', 'à¤¨à¤¯à¤¾ à¤®à¥à¤¦à¥à¤¦à¤¾', 'Ù†ÛŒØ§ Ù…Ø³Ø¦Ù„Û', 'æ–°é—®é¢˜', 'æ–°ã—ã„å•é¡Œ', 'Novo problema', 'ÐÐ¾Ð²Ñ‹Ð¹ Ð²Ñ‹Ð¿ÑƒÑÐº', 'Nouveau numÃ©ro', 'ìƒˆë¡œìš´ ë¬¸ì œ', 'Neues Problem', 'Nuovo problema', 'à¸‰à¸šà¸±à¸šà¹ƒà¸«à¸¡à¹ˆ', 'Ãšj problÃ©ma', 'Nieuw probleem', 'New issue', 'Isu Baru', 'Yeni baskÄ±', 'ÎÎ•ÎŸ Î˜Î•ÎœÎ‘', 'Ù…Ø³Ø¦Ù„Ù‡ Ø¬Ø¯ÛŒØ¯', 'Isu Baru', 'à°•à±Šà°¤à±à°¤ à°¸à°‚à°šà°¿à°•', 'à®ªà¯à®¤à®¿à®¯ à®µà¯†à®³à®¿à®¯à¯€à®Ÿà¯', 'àª¨àªµà«àª‚ àª…àª‚àª•', 'Nowy problem', 'ÐÐ¾Ð²Ð¸Ð¹ Ð²Ð¸Ð¿ÑƒÑÐº', 'à¨¨à¨µà¨¾à¨‚ à¨®à¨¸à¨²à¨¾', 'ProblemÄƒ nouÄƒ', 'á€”á€šá€°á€¸ Issue', 'Oro tuntun', 'Sabon Tambaya', NULL, NULL),
(81, 'transport', 'Transport', 'পরিবহন ', 'Transporte', 'Ø§Ù„Ù…ÙˆØ§ØµÙ„Ø§Øª', 'à¤Ÿà¥à¤°à¤¾à¤‚à¤¸à¤ªà¥‹à¤°à¥à¤Ÿ', 'Ù†Ù‚Ù„ Ùˆ Ø­Ù…Ù„', 'è¿è¾“', 'è¼¸é€', 'Transporte', 'Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚', 'Transport', 'ìˆ˜ì†¡', 'Transport', 'Trasporto', 'à¸‚à¸™à¸ªà¹ˆà¸‡', 'SzÃ¡llÃ­tÃ¡s', 'Vervoer', 'onerariis', 'Mengangkut', 'taÅŸÄ±ma', 'ÎœÎµÏ„Î±Ï†Î¿ÏÎ¬', 'Ø­Ù…Ù„ Ùˆ Ù†Ù‚Ù„', 'Pengangkutan', 'à°°à°µà°¾à°£à°¾', 'à®ªà¯‡à®¾à®•à¯à®•à¯à®µà®°à®¤à¯à®¤à¯', 'àªªàª°àª¿àªµàª¹àª¨', 'Transport', 'Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚', 'à¨Ÿà©à¨°à¨¾à¨‚à¨¸à¨ªà©‹à¨°à¨Ÿ', 'Transport', 'á€á€„á€ºá€†á€±á€¬á€„á€º', 'á»Œká»', 'Mota', NULL, NULL),
(82, 'vehicle', 'Vehicle', 'যান ', 'Transporte...', 'Ù…Ø±ÙƒØ¨Ø©', 'à¤µà¤¾à¤¹à¤¨', 'Ú¯Ø§Ú‘ÛŒ', 'è½¦è¾†', 'è»Šä¸¡', 'VeÃ­culo', 'Ð¡Ñ€ÐµÐ´ÑÑ‚Ð²Ð¾ Ð¿ÐµÑ€ÐµÐ´Ð²Ð¸Ð¶ÐµÐ½Ð¸Ñ', 'VÃ©hicule', 'ì°¨ëŸ‰', 'Fahrzeug', 'Veicolo', 'à¸žà¸²à¸«à¸™à¸°', 'JÃ¡rmÅ±', 'Voertuig', 'vehiculum', 'Kendaraan', 'araÃ§', 'ÎŸÏ‡Î·Î¼Î±', 'ÙˆØ³ÛŒÙ„Ù‡ Ù†Ù‚Ù„ÛŒÙ‡', 'Kenderaan', 'à°µà°¾à°¹à°¨à°‚', 'à®µà®¾à®•à®©', 'àªµàª¾àª¹àª¨', 'Pojazd', 'ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ñ–Ð»ÑŒ', 'à¨µà¨¾à¨¹à¨¨', 'Vehicul', 'á€šá€¬á€‰á€º', 'á»Œká»', 'Mota', NULL, NULL),
(83, 'transport_route', 'Transport Route', 'পরিবহন পথ ', 'Ruta de transporte', 'Ø·Ø±ÙŠÙ‚ Ø§Ù„Ù†Ù‚Ù„', 'à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤®à¤¾à¤°à¥à¤—', 'Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ Ú©Ø§ Ø±Ø§Ø³ØªÛ', 'è¿è¾“è·¯çº¿', 'è¼¸é€ãƒ«ãƒ¼ãƒˆ', 'Rota dos transportes', 'Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ñ‹Ð¹ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚', 'Route de transport', 'ìš´ì†¡ ê²½ë¡œ', 'Transportweg', 'Itinerario di trasporto', 'à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡à¸„à¸¡à¸™à¸²à¸„à¸¡', 'SzÃ¡llÃ­tÃ¡si Ãºtvonal', 'Transportroute', 'Iter itineris onerariam', 'Rute transportasi', 'UlaÅŸÄ±m GÃ¼zergahÄ±', 'Î”Î¹Î±Î´ÏÎ¿Î¼Î® Î¼ÎµÏ„Î±Ï†Î¿ÏÎ¬Ï‚', 'Ù…Ø³ÛŒØ± Ø­Ù…Ù„ Ùˆ Ù†Ù‚Ù„', 'Laluan Pengangkutan', 'à°°à°µà°¾à°£à°¾ à°®à°¾à°°à±à°—à°‚', 'à®ªà¯‹à®•à¯à®•à¯à®µà®°à®¤à¯à®¤à¯ à®ªà®¾à®¤à¯ˆ', 'àªªàª°àª¿àªµàª¹àª¨ àª®àª¾àª°à«àª—', 'Szlak transportowy', 'Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ð¸Ð¹ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚', 'à¨Ÿà©à¨°à¨¾à¨‚à¨¸à¨ªà©‹à¨°à¨Ÿ à¨°à©‚à¨Ÿ', 'Traseul de transport', 'á€•á€­á€¯á€·á€†á€±á€¬á€„á€ºá€›á€±á€¸á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸', 'á»Œna itá»sá»na', 'Hanyar sufuri', NULL, NULL),
(84, 'hostel', 'Hostel', 'ছাত্রাবাস ', 'Hostal', 'Ù†Ø²Ù„', 'à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸', 'ÛØ§Ø³Ù¹Ù„', 'å®¿èˆ', 'ãƒ›ã‚¹ãƒ†ãƒ«', 'Hostel', 'Ð¥Ð¾ÑÑ‚ÐµÐ»', 'HÃ´tel', 'í˜¸ìŠ¤í…”', 'Herberge', 'Ostello', 'à¸—à¸µà¹ˆà¸žà¸±à¸', 'DiÃ¡kszÃ¡llÃ³', 'Herberg', 'Hostel', 'Asrama', 'Pansiyon', 'ÎžÎµÎ½Î¿Î´Î¿Ï‡ÎµÎ¯Î¿', 'Ø®ÙˆØ§Ø¨Ú¯Ø§Ù‡', 'Asrama', 'à°µà°¸à°¤à°¿à°—à±ƒà°¹à°‚', 'à®µà®¿à®Ÿà¯à®¤à®¿', 'àª›àª¾àª¤à«àª°àª¾àª²àª¯', 'Schronisko', 'Ð¥Ð¾ÑÑ‚ÐµÐ»', 'à¨¹à©‹à¨¸à¨Ÿà¨²', 'Hostel', 'á€˜á€±á€¬á€ºá€’á€«á€†á€±á€¬á€„á€º', 'Agbegbe', 'Dakunan kwanan dalibai', NULL, NULL),
(85, 'room', 'Room', 'কক্ষ ', 'HabitaciÃ³n', 'Ù…Ø¬Ø§Ù„', 'à¤•à¤•à¥à¤·', 'Ú©Ù…Ø±Û', 'æˆ¿é—´', 'ãƒ«ãƒ¼ãƒ ', 'Quarto', 'ÐšÐ¾Ð¼Ð½Ð°Ñ‚Ð°', 'Chambre', 'ë°©', 'Zimmer', 'Camera', 'à¸«à¹‰à¸­à¸‡', 'Szoba', 'Kamer', 'locus', 'Kamar', 'oda', 'Î”Ï‰Î¼Î¬Ï„Î¹Î¿', 'Ø§ØªØ§Ù‚', 'Bilik', 'à°—à°¦à°¿', 'à®…à®±à¯ˆ', 'àª°à«‚àª®', 'PokÃ³j', 'ÐÐ¾Ð¼ÐµÑ€', 'à¨•à¨®à¨°à¨¾', 'CamerÄƒ', 'á€¡á€á€”á€ºá€¸', 'Yara', 'Room', NULL, NULL),
(86, 'message', 'Message', 'বার্তা ', 'Mensaje', 'Ø±Ø³Ø§Ù„Ø©', 'à¤¸à¤‚à¤¦à¥‡à¤¶', 'Ù¾ÛŒØºØ§Ù…', 'ä¿¡æ¯', 'ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸', 'mensagem', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ', 'Message', 'ë©”ì‹œì§€', 'Botschaft', 'Messaggio', 'à¸‚à¹ˆà¸²à¸§à¸ªà¸²à¸£', 'Ãœzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'ÎœÎ®Î½Ï…Î¼Î±', 'Ù¾ÛŒØ§Ù…', 'Mesej', 'à°¸à°‚à°¦à±‡à°¶à°‚', 'à®šà¯†à®¯à¯à®¤à®¿', 'àª¸àª‚àª¦à«‡àª¶', 'WiadomoÅ›Ä‡', 'Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½Ñ', 'à¨¸à©à¨¨à©‡à¨¹à¨¾', 'Mesaj', 'á€™á€€á€ºá€†á€±á€·á€á€ºá€»á€€á€­á€¯', 'Ifiraná¹£áº¹', 'SaÆ™o', NULL, NULL),
(87, 'mail_and_sms', 'Mail & SMS', 'ইমেইল এবং এস এম এস ', 'Correo y SMS', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ ÙˆØ§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø©', 'à¤®à¥‡à¤² à¤”à¤° à¤à¤¸à¤à¤®à¤à¤¸', 'Ù…ÛŒÙ„ Ø§ÙˆØ± Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³', 'é‚®ä»¶å’ŒçŸ­ä¿¡', 'ãƒ¡ãƒ¼ãƒ«ã¨SMS', 'Correio e SMS', 'ÐŸÐ¾Ñ‡Ñ‚Ð° Ð¸ SMS', 'Mail et SMS', 'ë©”ì¼ ë° SMS', 'Mail & SMS', 'Mail e SMS', 'à¸­à¸µà¹€à¸¡à¸¥à¹à¸¥à¸° SMS', 'Mail & SMS', 'Mail & SMS', 'Mail SMS &', 'Mail & SMS', 'Posta ve SMS', 'Mail ÎºÎ±Î¹ SMS', 'Ø§ÛŒÙ…ÛŒÙ„ Ùˆ Ø§Ø³ Ø§Ù… Ø§Ø³', 'Mail & SMS', 'à°®à±†à°¯à°¿à°²à± & SMS', 'à®…à®žà¯à®šà®²à¯ & SMS', 'àª®à«‡àª‡àª² àª…àª¨à«‡ àªàª¸àªàª®àªàª¸', 'Poczta i SMS', 'ÐŸÐ¾ÑˆÑ‚Ð° Ñ‚Ð° SMS', 'à¨®à©‡à¨² à¨…à¨¤à©‡ à¨à¨¸à¨à¨®à¨à¨¸', 'Mail È™i SMS', 'á€™á€±á€¸á€œá€º & SMS á€€á€­á€¯', 'Mail & SMS', 'Mail & SMS', NULL, NULL),
(88, 'email', 'Email', 'ইমেইল ', 'Email', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤ˆà¤®à¥‡à¤²', 'Ø§ÛŒ Ù…ÛŒÙ„', 'ç”µå­é‚®ä»¶', 'Eãƒ¡ãƒ¼ãƒ«', 'O email', 'Ð­Ð». Ð°Ð´Ñ€ÐµÑ', 'Email', 'ì´ë©”ì¼', 'Email', 'E-mail', 'à¸­à¸µà¹€à¸¡à¸¥à¹Œ', 'Email', 'E-mail', 'Email', 'E-mail', 'E-posta', 'Î—Î›Î•ÎšÎ¤Î¡ÎŸÎÎ™ÎšÎ— Î”Î™Î•Î¥Î˜Î¥ÎÎ£Î—', 'Ù¾Ø³Øª Ø§Ù„Ú©ØªØ±ÙˆÙ†ÛŒÚ©', 'E-mel', 'à°‡à°®à±†à°¯à°¿à°²à±', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯', 'àª‡àª®à«‡àª‡àª²', 'E-mail', 'Ð•Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð° Ð¿Ð¾ÑˆÑ‚Ð°', 'à¨ˆ - à¨®à©‡à¨²', 'E-mail', 'á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€•á€­á€¯á€·á€›á€”á€º', 'Imeeli', 'Imel', NULL, NULL),
(89, 'sms', 'SMS', 'এস এম এস ', 'SMS', 'Ø±Ø³Ø§Ù„Ø© Ù‚ØµÙŠØ±Ø©', 'à¤à¤¸à¤à¤®à¤à¤¸', 'Ù¾ÛŒØºØ§Ù…', 'çŸ­ä¿¡', 'SMS', 'SMS', 'ÑÐ¼Ñ', 'SMS', 'SMS', 'SMS', 'sms', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡', 'SMS', 'sms', 'SMS', 'SMS', 'SMS', 'Î³ÏÎ±Ï€Ï„ÏŒ Î¼Î®Î½Ï…Î¼Î±', 'Ù¾ÛŒØ§Ù…Ú©', 'SMS', 'SMS', 'à®Žà®¸à¯à®Žà®®à¯à®Žà®¸à¯', 'àªàª¸àªàª®àªàª¸', 'SMS', 'Ð¡ÐœÐ¡', 'SMS', 'mesaj', 'á€…á€¬á€á€­á€¯', 'SMS', 'SMS', NULL, NULL),
(90, 'announcement', 'Announcement', 'ঘোষণা ', 'Anuncio', 'Ø¥Ø¹Ù„Ø§Ù†', 'à¤˜à¥‹à¤·à¤£à¤¾', 'Ø§Ø¹Ù„Ø§Ù†', 'å…¬å‘Š', 'ç™ºè¡¨', 'AnÃºncio', 'ÐžÐ±ÑŠÑÐ²Ð»ÐµÐ½Ð¸Ðµ', 'Annonce', 'ë°œí‘œ', 'AnkÃ¼ndigung', 'Annuncio', 'à¸à¸²à¸£à¸›à¸£à¸°à¸à¸²à¸¨', 'KÃ¶zlemÃ©ny', 'Aankondiging', 'denuntiatio', 'Pengumuman', 'duyuru', 'Î‘Î½Î±ÎºÎ¿Î¯Î½Ï‰ÏƒÎ·', 'Ø§Ø·Ù„Ø§Ø¹ÛŒÙ‡', 'Pengumuman', 'à°ªà±à°°à°•à°Ÿà°¨', 'à®…à®±à®¿à®µà®¿à®ªà¯à®ªà¯', 'àªœàª¾àª¹à«‡àª°àª¾àª¤', 'OgÅ‚oszenie', 'ÐžÐ³Ð¾Ð»Ð¾ÑˆÐµÐ½Ð½Ñ', 'à¨˜à©‹à¨¸à¨¼à¨£à¨¾', 'AnunÅ£', 'á€€á€¼á€±á€Šá€¬á€á€»á€€á€º', 'Ikede', 'Sanarwa', NULL, NULL),
(91, 'notice', 'Notice', 'নোটিশ ', 'darse cuenta', 'ØªÙ†ÙˆÙŠÙ‡', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸', 'Ù†ÙˆÙ¹Ø³', 'æ³¨æ„', 'é€šçŸ¥', 'Aviso prÃ©vio', 'ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ', 'Remarquer', 'ì£¼ì˜', 'Beachten', 'Avviso', 'à¹à¸ˆà¹‰à¸‡à¹ƒà¸«à¹‰à¸—à¸£à¸²à¸š', 'Ã‰rtesÃ­tÃ©s', 'Merk op', 'notitia', 'Melihat', 'ihbar', 'Î•Î¹Î´Î¿Ï€Î¿Î¯Î·ÏƒÎ·', 'Ø§Ø·Ù„Ø§Ø¹', 'Notis', 'à°¨à±‹à°Ÿà±€à°¸à±', 'à®…à®±à®¿à®µà®¿à®ªà¯à®ªà¯', 'àª¨à«‹àªŸàª¿àª¸', 'OgÅ‚oszenie', 'Ð—Ð²ÐµÑ€Ð½Ñ–Ñ‚ÑŒ ÑƒÐ²Ð°Ð³Ñƒ', 'à¨¨à©‹à¨Ÿà¨¿à¨¸', 'ÃŽnÈ™tiinÈ›are', 'á€¡á€žá€­á€•á€±á€¸á€…á€¬', 'Akiyesi', 'Lura', NULL, NULL),
(92, 'news', 'News', 'খবর ', 'Noticias', 'Ø£Ø®Ø¨Ø§Ø±', 'à¤¸à¤®à¤¾à¤šà¤¾à¤°', 'Ø®Ø¨Ø±ÛŒÚº', 'æ–°é—»', 'ãƒ‹ãƒ¥ãƒ¼ã‚¹', 'NotÃ­cia', 'ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸', 'Nouvelles', 'ë‰´ìŠ¤', 'Nachrichten', 'notizia', 'à¸‚à¹ˆà¸²à¸§', 'hÃ­rek', 'Nieuws', 'News', 'Berita', 'Haber', 'ÎÎ­Î±', 'Ø§Ø®Ø¨Ø§Ø±', 'Berita', 'à°¨à±à°¯à±‚à°¸à±', 'à®šà¯†à®¯à¯à®¤à®¿à®•à®³à¯', 'àª¸àª®àª¾àªšàª¾àª°', 'AktualnoÅ›ci', 'ÐÐ¾Ð²Ð¸Ð½Ð¸', 'à¨¨à¨¿à¨Šà¨œà¨¼', 'È˜tiri', 'á€žá€á€„á€ºá€¸', 'Awá»n iroyin', 'News', NULL, NULL),
(93, 'holiday', 'Holiday', 'ছুটির দিন ', 'Fiesta', 'ÙŠÙˆÙ… Ø§Ù„Ø§Ø¬Ø§Ø²Ø©', 'à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤•à¤¾ à¤¦à¤¿à¤¨', 'Ú†Ú¾Ù¹ÛŒÙˆÚº', 'å‡æ—¥', 'ä¼‘æ—¥', 'Feriado', 'Ð”ÐµÐ½ÑŒ Ð¾Ñ‚Ð´Ñ‹Ñ…Ð°', 'Vacances', 'íœ´ì¼', 'Urlaub', 'Vacanza', 'à¸§à¸±à¸™à¸«à¸¢à¸¸à¸”', 'Ãœnnep', 'Holiday', 'ferias', 'Liburan', 'Tatil', 'Î‘ÏÎ³Î¯Î±', 'ØªØ¹Ø·ÛŒÙ„Ø§Øª', 'Percutian', 'à°¹à°¾à°²à°¿à°¡à±‡', 'à®µà®¿à®Ÿà¯à®®à¯à®±à¯ˆ', 'àª°àªœàª¾', 'ÅšwiÄ™to', 'Ð¡Ð²ÑÑ‚Ð¾', 'à¨›à©à©±à¨Ÿà©€à¨†à¨‚', 'VacanÅ£Äƒ', 'á€¡á€¬á€¸á€œá€•á€ºá€›á€€á€ºá€™á€»á€¬á€¸', 'Isinmi', 'Holiday', NULL, NULL),
(94, 'event', 'Event', 'ইভেন্ট ', 'Evento', 'Ù‡Ø¯Ù', 'à¤˜à¤Ÿà¤¨à¤¾', 'ØªÙ‚Ø±ÛŒØ¨', 'äº‹ä»¶', 'ã‚¤ãƒ™ãƒ³ãƒˆ', 'Evento', 'ÐœÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ðµ', 'un Ã©vÃ©nement', 'í–‰ì‚¬', 'Veranstaltung', 'Evento', 'à¹€à¸«à¸•à¸¸à¸à¸²à¸£à¸“à¹Œ', 'EsemÃ©ny', 'Evenement', 'res', 'Peristiwa', 'Etkinlik', 'Î•ÎºÎ´Î®Î»Ï‰ÏƒÎ·', 'Ø±ÙˆÛŒØ¯Ø§Ø¯', 'Acara', 'à°ˆà°µà±†à°‚à°Ÿà±', 'à®¨à®¿à®•à®´à¯à®µà¯', 'àª‡àªµà«‡àª¨à«àªŸ', 'Zdarzenie', 'ÐŸÐ¾Ð´Ñ–Ñ', 'à¨˜à¨Ÿà¨¨à¨¾', 'Eveniment', 'á€¡á€–á€¼á€…á€ºá€¡á€•á€»á€€á€º', 'Iá¹£áº¹ iá¹£e', 'Event', NULL, NULL),
(95, 'visitor_info', 'Visitor Info', 'পরিদর্শকের তথ্য ', 'InformaciÃ³n del visitante', 'Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø²Ø§Ø¦Ø±', 'à¤†à¤—à¤‚à¤¤à¥à¤• à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€', 'ÙˆØ²ÛŒÙ¹Ø± Ú©ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª', 'è®¿å®¢ä¿¡æ¯', 'è¨ªå•è€…ã®æƒ…å ±', 'InformaÃ§Ã£o do visitante', 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð´Ð»Ñ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»ÐµÐ¹', 'Infos visiteurs', 'ë°©ë¬¸ìž ì •ë³´', 'Besucherinfo', 'Informazioni per i visitatori', 'à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸œà¸¹à¹‰à¹€à¸¢à¸µà¹ˆà¸¢à¸¡à¸Šà¸¡', 'LÃ¡togatÃ³informÃ¡ciÃ³k', 'Bezoekersinformatie', 'visitor Info', 'Info Pengunjung', 'ZiyaretÃ§i Bilgisi', 'Î Î»Î·ÏÎ¿Ï†Î¿ÏÎ¯ÎµÏ‚ ÎµÏ€Î¹ÏƒÎºÎµÏ€Ï„ÏŽÎ½', 'Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø¨Ø§Ø²Ø¯ÛŒØ¯ Ú©Ù†Ù†Ø¯Ù‡', 'Maklumat Pelawat', 'à°¸à°‚à°¦à°°à±à°¶à°•à±à°² à°¸à°®à°¾à°šà°¾à°°à°‚', 'à®ªà®¾à®°à¯à®µà¯ˆà®¯à®¾à®³à®°à¯ à®¤à®•à®µà®²à¯', 'àª®à«àª²àª¾àª•àª¾àª¤à«€ àª®àª¾àª¹àª¿àª¤à«€', 'Informacje dla odwiedzajÄ…cych', 'Ð†Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ñ–Ñ Ð¿Ñ€Ð¾ Ð²Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ñ‡Ñ–Ð²', 'à¨µà¨¿à¨œà¨¼à¨Ÿà¨° à¨œà¨¾à¨£à¨•à¨¾à¨°à©€', 'InformaÈ›ii despre vizitatori', 'á€§á€Šá€ºá€·á€žá€Šá€ºá€¡á€„á€ºá€–á€­á€¯', 'Alaye Alejo', 'Bayar da Bayani', NULL, NULL),
(96, 'accounting', 'Accounting', 'হিসাব ', 'Contabilidad', 'Ù…Ø­Ø§Ø³Ø¨Ø©', 'à¤²à¥‡à¤–à¤¾à¤‚à¤•à¤¨', 'Ø§Ú©Ø§Ø¤Ù†Ù¹Ù†Ú¯', 'ä¼šè®¡', 'ä¼šè¨ˆ', 'Contabilidade', 'Ð±ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€ÑÐºÐ¸Ð¹ ÑƒÑ‡ÐµÑ‚', 'ComptabilitÃ©', 'íšŒê³„', 'Buchhaltung', 'ContabilitÃ ', 'à¸à¸²à¸£à¸šà¸±à¸à¸Šà¸µ', 'SzÃ¡mvitel', 'Accounting', 'ratio', 'Akuntansi', 'Muhasebe', 'Î›Î¿Î³Î¹ÏƒÏ„Î¹ÎºÎ®', 'Ø­Ø³Ø§Ø¨Ø¯Ø§Ø±ÛŒ', 'Perakaunan', 'à°…à°•à±Œà°‚à°Ÿà°¿à°‚à°—à±', 'à®•à®£à®•à¯à®•à®¿à®¯à®²à¯', 'àª¨àª¾àª®à«àª‚', 'RachunkowoÅ›Ä‡', 'Ð‘ÑƒÑ…Ð³Ð°Ð»Ñ‚ÐµÑ€ÑÑŒÐºÐ¸Ð¹ Ð¾Ð±Ð»Ñ–Ðº', 'à¨²à©‡à¨¿à¨¾à¨•à¨¾à¨°à©€', 'Contabilitate', 'á€…á€¬á€›á€„á€ºá€¸á€€á€­á€¯á€„á€º', 'Iá¹£iro', 'Æ˜ididdiga', NULL, NULL),
(97, 'fee_type', 'Fee Type', 'ফি এর ধরণ ', 'Tipo de tarifa', 'Ù†ÙˆØ¹ Ø§Ù„Ø±Ø³ÙˆÙ…', 'à¤¶à¥à¤²à¥à¤• à¤ªà¥à¤°à¤•à¤¾à¤°', 'ÙÛŒØ³ Ù‚Ø³Ù…', 'è´¹ç”¨ç±»åž‹', 'æ–™é‡‘ã‚¿ã‚¤ãƒ—', 'Tipo de taxa', 'Ð¢Ð¸Ð¿ Ð¿Ð»Ð°Ñ‚Ñ‹', 'Type de frais', 'ìˆ˜ìˆ˜ë£Œ ìœ í˜•', 'GebÃ¼hrenart', 'Tipo di commissione', 'à¸›à¸£à¸°à¹€à¸ à¸—à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡', 'DÃ­j tÃ­pusa', 'Vergoedingstype', 'feodo Type', 'Jenis Biaya', 'Ãœcret TÃ¼rÃ¼', 'Î¤ÏÏ€Î¿Ï‚ Ï„Î­Î»Î¿Ï…Ï‚', 'Ù†ÙˆØ¹ Ù‡Ø²ÛŒÙ†Ù‡', 'Jenis Bayaran', 'à°«à±€à°œà± à°°à°•à°‚', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®µà®•à¯ˆ', 'àª«à«€ àªªà«àª°àª•àª¾àª°', 'Rodzaj opÅ‚aty', 'ÐŸÐ»Ð°Ñ‚Ð° Ñ‚Ð¸Ð¿Ñƒ', 'à¨«à©€à¨¸ à¨•à¨¿à¨¸à¨®', 'Tip de taxÄƒ', 'á€¡á€á€€á€¼á€±á€¸á€„á€½á€±á€¡á€™á€»á€­á€¯á€¸á€¡á€…á€¬á€¸', 'Iru áº¸ri', 'Fee Type', NULL, NULL),
(98, 'type', 'Type', 'ধরণ ', 'Tipo', 'Ø§ÙƒØªØ¨', 'à¤ªà¥à¤°à¤•à¤¾à¤°', 'Ù¹Ø§Ø¦Ù¾ Ú©Ø±ÛŒÚº', 'ç±»åž‹', 'ã‚¿ã‚¤ãƒ—', 'Tipo', 'Ð¢Ð¸Ð¿', 'Type', 'ìœ í˜•', 'Art', 'genere', 'à¸Šà¸™à¸´à¸”', 'tÃ­pus', 'Type', 'genus', 'Mengetik', 'tip', 'Î¤ÏÏ€Î¿Ï‚', 'ØªØ§ÛŒÙ¾ Ú©Ù†ÛŒØ¯', 'Taipkan', 'à°°à°•à°‚', 'à®µà®•à¯ˆ', 'àªªà«àª°àª•àª¾àª°', 'Rodzaj', 'Ð¢Ð¸Ð¿', 'à¨Ÿà¨¾à¨ˆà¨ª à¨•à¨°à©‹', 'Tip', 'á€•á€¯á€¶á€…á€¶', 'Iru', 'Rubuta', NULL, NULL),
(99, 'invoice', 'Invoice', 'ইনভয়েস ', 'Factura', 'ÙØ§ØªÙˆØ±Ø©', 'à¤¬à¥€à¤œà¤•', 'Ø§Ù†ÙˆØ§Ø¦Ø³', 'å‘ç¥¨', 'è«‹æ±‚æ›¸', 'Fatura', 'Ð’Ñ‹ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð½Ñ‹Ð¹ ÑÑ‡ÐµÑ‚', 'Facture dachat', 'ì†¡ìž¥', 'Rechnung', 'Fattura', 'à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'SzÃ¡mla', 'Factuur', 'cautionem', 'Faktur', 'Fatura', 'Î¤Î¹Î¼Î¿Î»ÏŒÎ³Î¹Î¿', 'ØµÙˆØ±ØªØ­Ø³Ø§Ø¨', 'Invois', 'à°µà°¾à°¯à°¿à°¸à±', 'à®µà®¿à®²à¯ˆà®ªà¯à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯', 'àª­àª°àª¤àª¿àª¯à«àª‚', 'Faktura', 'Ð Ð°Ñ…ÑƒÐ½Ð¾Ðº-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð°', 'à¨‡à¨¨à¨µà©Œà¨‡à¨¸', 'Factura fiscala', 'á€á€šá€ºá€€á€¯á€”á€ºá€…á€¬á€›á€„á€ºá€¸', 'Ifiweraná¹£áº¹', 'Invoice', NULL, NULL),
(100, 'create', 'Create', 'তোরি করুন ', 'Crear', 'Ø®Ù„Ù‚', 'à¤¸à¤°à¥à¤œà¤¨ à¤•à¤°à¤¨à¤¾', 'Ø¨Ù†Ø§Ù†Ø§', 'åˆ›å»º', 'ä½œæˆã™ã‚‹', 'Crio', 'Ð¡Ð¾Ð·Ð´Ð°Ð¹Ñ‚Ðµ', 'CrÃ©er', 'ëª¹ì‹œ ë– ë“¤ì–´ ëŒ€ë‹¤', 'Erstellen', 'Creare', 'à¸ªà¸£à¹‰à¸²à¸‡', 'Teremt', 'creÃ«ren', 'Create', 'Membuat', 'yaratmak', 'Î”Î·Î¼Î¹Î¿Ï…ÏÎ³ÏŽ', 'Ø§ÙŠØ¬Ø§Ø¯ ÙƒØ±Ø¯Ù†', 'Buat', 'à°¸à±ƒà°·à±à°Ÿà°¿à°‚à°šà±', 'à®‰à®°à¯à®µà®¾à®•à¯à®•à®µà¯à®®à¯', 'àª¬àª¨àª¾àªµà«‹', 'StwÃ³rz', 'Ð¡Ñ‚Ð²Ð¾Ñ€Ð¸Ñ‚Ð¸', 'à¨¬à¨£à¨¾à¨“', 'Crea', 'á€–á€”á€ºá€á€®á€¸', 'á¹¢áº¹da', 'Æ˜irÆ™iri', NULL, NULL),
(101, 'due_invoice', 'Due Invoice', 'মেয়াদোত্তীর্ণ ইনভয়েস ', 'Factura debida', 'Ø§Ù„ÙØ§ØªÙˆØ±Ø© Ø§Ù„Ù…Ø³ØªØ­Ù‚Ø©', 'à¤•à¤¾à¤°à¤£ à¤šà¤¾à¤²à¤¾à¤¨', 'ÙˆØ¬Û Ø§Ù†ÙˆØ§Ø¦Ø³', 'åˆ°æœŸå‘ç¥¨', 'æ”¯æ‰•è«‹æ±‚æ›¸', 'Fatura devida', 'Ð¡Ñ‡ÐµÑ‚-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð°', 'Due Facture', 'ì†¡ìž¥', 'FÃ¤llige Rechnung', 'Fattura dovuta', 'à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰à¸—à¸µà¹ˆà¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”', 'EsedÃ©kes szÃ¡mla', 'Doorlopende factuur', 'ob cautionem', 'Karena Faktur', 'Fatura FaturasÄ±', 'ÎŸÏ†ÎµÎ¹Î»ÏŒÎ¼ÎµÎ½Î¿ Ï„Î¹Î¼Î¿Î»ÏŒÎ³Î¹Î¿', 'ÙØ§Ú©ØªÙˆØ± Ù…ÙˆÙ‚Øª', 'Invois yang Dikehendaki', 'à°‡à°¨à±à°µà°¾à°¯à°¿à°¸à± à°•à°¾à°°à°£à°‚à°—à°¾', 'à®•à®¾à®°à®£à®®à®¾à®• à®µà®¿à®²à¯ˆà®ªà¯à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯', 'àª•àª¾àª°àª£à«‡ àª­àª°àª¤àª¿àª¯à«àª‚', 'Due Faktura', 'ÐÐ°Ð»ÐµÐ¶Ð½Ð¸Ð¹ Ñ€Ð°Ñ…ÑƒÐ½Ð¾Ðº-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð°', 'à¨¬à¨•à¨¾à¨‡à¨† à¨‡à¨¨à¨µà©Œà¨‡à¨¸', 'DatoritÄƒ facturii', 'á€€á€¼á€±á€¬á€„á€ºá€·á€„á€½á€±á€á€±á€¬á€„á€ºá€¸á€á€¶á€œá€½á€¾á€¬', 'Fun Iroyin', 'Saboda Bayani', NULL, NULL),
(102, 'expenditure', 'Expenditure', 'খরচ ', 'Gasto', 'Ø§Ù„Ù…ØµØ±ÙˆÙØ§Øª', 'à¤µà¥à¤¯à¤¯', 'Ø®Ø±Ú†', 'æ”¯å‡º', 'æ”¯å‡º', 'Despesa', 'Ð Ð°ÑÑ…Ð¾Ð´', 'DÃ©pense', 'ì§€ì¶œ', 'Ausgaben', 'Spesa', 'à¸£à¸²à¸¢à¸ˆà¹ˆà¸²à¸¢', 'KiadÃ¡s', 'Uitgaven', 'Custus', 'Pengeluaran', 'harcama', 'Î”Î±Ï€Î¬Î½Î·', 'Ù‡Ø²ÛŒÙ†Ù‡ Ù‡Ø§', 'Perbelanjaan', 'à°Žà°•à±à°¸à±à°ªà±†à°‚à°¡à°¿à°šà°°à±', 'à®šà¯†à®²à®µà®¿à®©à®®à¯', 'àª–àª°à«àªš', 'Wydatek', 'Ð’Ð¸Ñ‚Ñ€Ð°Ñ‚Ð¸', 'à¨–à¨°à¨šà©‡', 'Cheltuieli', 'á€žá€¯á€¶á€¸á€„á€¾á€±', 'Isanwo', 'Sakamako', NULL, NULL),
(103, 'expenditure_head', 'Expenditure Head', 'খরচ হেড ', 'Jefe de gastos', 'Ø±Ø¦ÙŠØ³ Ø§Ù„Ù†ÙÙ‚Ø§Øª', 'à¤µà¥à¤¯à¤¯ à¤¹à¥‡à¤¡', 'Ø®Ø±Ú† Ø³Ø±', 'æ”¯å‡ºè´Ÿè´£äºº', 'æ”¯å‡ºãƒ˜ãƒƒãƒ‰', 'Chefe de despesas', 'Ð ÑƒÐºÐ¾Ð²Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÑŒ Ð¾Ñ‚Ð´ÐµÐ»Ð° Ñ€Ð°ÑÑ…Ð¾Ð´Ð¾Ð²', 'Chef des dÃ©penses', 'ì§€ì¶œ í—¤ë“œ', 'Ausgabenleiter', 'Capo spese', 'à¸«à¸±à¸§à¸«à¸™à¹‰à¸²à¸„à¹ˆà¸²à¹ƒà¸Šà¹‰à¸ˆà¹ˆà¸²à¸¢', 'KiadÃ¡si vezetÅ‘', 'Uitgaven Hoofd', 'caput capitis expensi,', 'Kepala Pengeluaran', 'Harcama KafasÄ±', 'Î•Ï€Î¹ÎºÎµÏ†Î±Î»Î®Ï‚ Î´Î±Ï€Î±Î½ÏŽÎ½', 'Ø³Ø± Ù‡Ø²ÛŒÙ†Ù‡', 'Ketua Perbelanjaan', 'à°Žà°•à±à°¸à±à°ªà±†à°‚à°¡à°¿à°šà°°à± à°¹à±†à°¡à±', 'à®šà¯†à®²à®µà¯à®¤à¯ à®¤à®²à¯ˆ', 'àª–àª°à«àªš àª¹à«‡àª¡', 'Wydatki Kierownik', 'Ð“Ð¾Ð»Ð¾Ð²Ð° Ð²Ð¸Ñ‚Ñ€Ð°Ñ‚', 'à¨–à¨°à¨šà¨¾ à¨¸à¨¿à¨°', 'È˜ef de cheltuieli', 'á€¡á€žá€¯á€¶á€¸á€…á€›á€­á€á€ºá€Œá€¬á€”á€™á€¾á€°á€¸', 'Oriiye Gbese', 'Shugaban KuÉ—i', NULL, NULL),
(104, 'income', 'Income', 'আয় ', 'Ingresos', 'Ø§Ù„Ø¥ÙŠØ±Ø§Ø¯Ø§Øª', 'à¤†à¤¯', 'Ø¢Ù…Ø¯Ù†ÛŒ', 'æ”¶å…¥', 'æ‰€å¾—', 'Renda', 'Ð´Ð¾Ñ…Ð¾Ð´', 'le revenu', 'ìˆ˜ìž…', 'Einkommen', 'Reddito', 'à¹€à¸‡à¸´à¸™à¹„à¸”à¹‰', 'JÃ¶vedelem', 'Inkomen', 'reditus', 'Pendapatan', 'Gelir', 'Î•Î¹ÏƒÏŒÎ´Î·Î¼Î±', 'Ø¯Ø±Ø¢Ù…Ø¯', 'Pendapatan', 'à°†à°¦à°¾à°¯à°ªà±', 'à®µà®°à¯à®®à®¾à®©', 'àª†àªµàª•', 'DochÃ³d', 'Ð”Ð¾Ñ…Ñ–Ð´', 'à¨†à¨®à¨¦à¨¨à©€', 'Sursa de venit', 'á€á€„á€»á€„á€¾á€±', 'Owo oya', 'Kudin shiga', NULL, NULL),
(105, 'income_head', 'Income Head', 'আয় হেড ', 'Jefe de ingresos', 'Ø±Ø¦ÙŠØ³ Ø§Ù„Ø¯Ø®Ù„', 'à¤†à¤¯ à¤¹à¥‡à¤¡', 'Ø¢Ù…Ø¯Ù†ÛŒ Ú©Û’ Ø³Ø±Ø¨Ø±Ø§Û', 'æ”¶å…¥è´Ÿè´£äºº', 'æ‰€å¾—ã®é ­éƒ¨', 'Chefe de renda', 'Ð“Ð¾Ð»Ð¾Ð²Ð½Ð¾Ð¹ Ð´Ð¾Ñ…Ð¾Ð´', 'TÃªte de revenu', 'ì†Œë“ í—¤ë“œ', 'Einkommen Kopf', 'Capo reddito', 'à¸«à¸±à¸§à¸«à¸™à¹‰à¸²à¸£à¸²à¸¢à¹„à¸”à¹‰', 'JÃ¶vedelemvezetÅ‘', 'Inkomenskop', 'caput capitis reditus', 'Kepala Penghasilan', 'Gelir KafasÄ±', 'ÎšÎµÏ†Î¬Î»Î±Î¹Î¿ Î•Î¹ÏƒÎ¿Î´Î®Î¼Î±Ï„Î¿Ï‚', 'Ø³Ø± Ø¯Ø±Ø¢Ù…Ø¯', 'Ketua Pendapatan', 'à°†à°¦à°¾à°¯à°‚ à°¹à±†à°¡à±', 'à®µà®°à¯à®®à®¾à®©à®¤à¯ à®¤à®²à¯ˆà®µà®°à¯', 'àª†àªµàª• àª¹à«‡àª¡', 'GÅ‚owa dochodÃ³w', 'Ð“Ð¾Ð»Ð¾Ð²Ð° Ð´Ð¾Ñ…Ð¾Ð´Ñ–Ð²', 'à¨‡à¨¨à¨•à¨® à¨¹à©ˆà©±à¨¡', 'Cap de venit', 'á€á€„á€ºá€„á€½á€±á€á€½á€”á€ºá€Œá€¬á€”á€™á€¾á€°á€¸', 'owo oya Head', 'Shugaban Asusun', NULL, NULL),
(106, 'report', 'Report', 'রিপোর্ট ', 'Informe', 'Ø£Ø¨Ù„Øº Ø¹Ù†', 'à¤°à¤¿à¤ªà¥‹à¤°à¥à¤Ÿ', 'Ø±Ù¾ÙˆØ±Ù¹', 'æŠ¥å‘Š', 'å ±å‘Šã™ã‚‹', 'RelatÃ³rio', 'Ð¾Ñ‚Ñ‡ÐµÑ‚', 'rapport', 'ë³´ê³ ì„œ', 'Bericht', 'rapporto', 'à¸£à¸²à¸¢à¸‡à¸²à¸™', 'JelentÃ©s', 'Verslag doen van', 'Report', 'Melaporkan', 'Rapor', 'ÎšÎ±Î½Ï‰ Î‘ÎÎ‘Î¦ÎŸÎ¡Î‘', 'Ú¯Ø²Ø§Ø±Ø´', 'Laporan', 'à°¨à°¿à°µà±‡à°¦à°¿à°•', 'à®…à®±à®¿à®•à¯à®•à¯ˆ', 'àª…àª¹à«‡àªµàª¾àª²', 'Raport', 'Ð—Ð²Ñ–Ñ‚', 'à¨°à¨¿à¨ªà©‹à¨°à¨Ÿ à¨•à¨°à©‹', 'Raport', 'á€¡á€…á€®á€›á€„á€ºá€á€¶á€…á€¬', 'Iroyin', 'Rahoton', NULL, NULL),
(107, 'balance', 'Balance', 'ব্যালেন্স ', 'Equilibrar', 'ØªÙˆØ§Ø²Ù†', 'à¤¸à¤‚à¤¤à¥à¤²à¤¨', 'Ø¨Ù‚ÛŒÛ', 'å¹³è¡¡', 'ãƒãƒ©ãƒ³ã‚¹', 'Equilibrar', 'Ð‘Ð°Ð»Ð°Ð½Ñ', 'Ã‰quilibre', 'ë°¸ëŸ°ìŠ¤', 'Balance', 'Equilibrio', 'à¸ªà¸¡à¸”à¸¸à¸¥', 'EgyensÃºly', 'Balans', 'Libra', 'Keseimbangan', 'Denge', 'Î™ÏƒÎ¿ÏÏÎ¿Ï€Î¯Î±', 'ØªØ¹Ø§Ø¯Ù„', 'Seimbang', 'à°¸à°‚à°¤à±à°²à°¨à°‚', 'à®‡à®°à¯à®ªà¯à®ªà¯', 'àª¬à«‡àª²à«‡àª¨à«àª¸', 'Saldo', 'Ð‘Ð°Ð»Ð°Ð½Ñ', 'à¨¬à¨•à¨¾à¨‡à¨†', 'Echilibru', 'á€á€»á€­á€”á€ºá€á€½á€„á€ºá€œá€»á€¾á€¬', 'Iwontunws.funfun', 'Balance', NULL, NULL),
(108, 'profile', 'Profile', 'প্রোফাইল ', 'Perfil', 'Ø§Ù„Ù…Ù„Ù Ø§Ù„Ø´Ø®ØµÙŠ', 'à¤ªà¥à¤°à¥‹à¤«à¤¾à¤‡à¤²', 'Ù¾Ø±ÙˆÙØ§Ø¦Ù„', 'è½®å»“', 'ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«', 'Perfil', 'ÐŸÑ€Ð¾Ñ„Ð¸Ð»ÑŒ', 'Profil', 'ìœ¤ê³½', 'Profil', 'Profilo', 'à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸ªà¹ˆà¸§à¸™à¸•à¸±à¸§', 'Profil', 'Profiel', 'Profile', 'Profil', 'Profil', 'Î ÏÎ¿Ï†Î¯Î»', 'Ù…Ø´Ø®ØµØ§Øª', 'Profil', 'à°ªà±à°°à±Šà°«à±†à±–à°²à±', 'à®µà®¿à®µà®°à®®à¯', 'àªªà«àª°à«‹àª«àª¾àª‡àª²', 'Profil', 'ÐŸÑ€Ð¾Ñ„Ñ–Ð»ÑŒ', 'à¨ªà©à¨°à©‹à¨«à¨¾à¨ˆà¨²', 'Profil', 'á€•á€›á€­á€¯á€–á€­á€¯á€„á€ºá€¸á€€á€­á€¯', 'Profaili', 'Profile', NULL, NULL),
(109, 'my_profile', 'My Profile', 'আমার প্রোফাইল ', 'Mi perfil', 'Ù…Ù„ÙÙŠ', 'à¤®à¥‡à¤°à¥€ à¤ªà¥à¤°à¥‹à¤«à¤¾à¤‡à¤²', 'Ù…ÛŒØ±ÛŒ Ù¾Ø±ÙˆÙØ§Ø¦Ù„', 'æˆ‘çš„ç®€åŽ†', 'ç§ã®ãƒ—ãƒ­ãƒ•ã‚£ãƒ¼ãƒ«', 'Meu perfil', 'ÐœÐ¾Ð¹ Ð¿Ñ€Ð¾Ñ„Ð°Ð¹Ð»', 'Mon profil', 'ë‚´ í”„ë¡œí•„', 'Mein Profil', 'Il mio profilo', 'à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸‚à¸­à¸‡à¸‰à¸±à¸™', 'A profilom', 'Mijn profiel', 'mea Profile', 'Profil saya', 'Benim profilim', 'Î¤Î¿ Î Î¡ÎŸÎ¦Î™Î› Î¼Î¿Ï…', 'Ù¾Ø±ÙˆÙØ§ÛŒÙ„ Ù…Ù†', 'Profil saya', 'à°¨à°¾ à°œà±€à°µà°¨ à°µà°¿à°µà°°à°£', 'à®Žà®©à¯ à®šà¯à®¯à®µà®¿à®µà®°à®®à¯', 'àª®àª¾àª°à«€ àªªà«àª°à«‹àª«àª¾àªˆàª²', 'MÃ³j profil', 'ÐœÑ–Ð¹ Ð¿Ñ€Ð¾Ñ„Ñ–Ð»ÑŒ', 'à¨®à©‡à¨°à©€ à¨ªà©à¨°à©‹à¨«à¨¾à¨ˆà¨²', 'Profilul meu', 'á€¡á€€á€¼á€¾á€”á€»á€¯á€•á€»áá€€á€­á€¯á€šá€ºá€›á€±á€¸á€–á€­á€¯á€„á€º', 'Profaili mi', 'My Profile', NULL, NULL),
(110, 'logout', 'Log Out', 'লগ আউট ', 'Cerrar sesiÃ³n', 'Ø§Ù„Ø®Ø±ÙˆØ¬', 'à¤²à¥‹à¤— à¤†à¤‰à¤Ÿ', 'Ù„Ø§Ú¯ Ø¢ÙˆÙ¹', 'ç™»å‡º', 'ãƒ­ã‚°ã‚¢ã‚¦ãƒˆ', 'Sair', 'Ð’Ñ‹Ð¹Ñ‚Ð¸', 'Connectez - Out', 'ë¡œê·¸ ì•„ì›ƒ', 'Ausloggen', 'Disconnettersi', 'à¸­à¸­à¸à¸ˆà¸²à¸à¸£à¸°à¸šà¸š', 'KijelentkezÃ©s', 'Uitloggen', 'Ex Log', 'Keluar', 'Ã‡Ä±kÄ±ÅŸ Yap', 'Î‘Ï€Î¿ÏƒÏ…Î½Î´Î­ÏƒÎ·', 'Ø®Ø±ÙˆØ¬', 'Log keluar', 'à°²à°¾à°—à± à°…à°µà±à°Ÿà±', 'à®µà¯†à®³à®¿à®¯à¯‡à®±à¯', 'àª²à«‰àª— àª†àª‰àªŸ', 'Wyloguj', 'Ð’Ð¸Ð¹Ñ‚Ð¸', 'à¨²à¨¾à©±à¨— à¨†à¨Šà¨Ÿ, à¨¬à¨¾à¨¹à¨° à¨†à¨‰à¨£à¨¾', 'DeconectaÈ›i-vÄƒ', 'á€¡á€‘á€²á€€ Log', 'Jade kuro', 'An fita', NULL, NULL),
(111, 'login', 'Log In', 'লগিন ', 'Iniciar sesiÃ³n', 'ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„', 'à¤²à¥‰à¤— à¤‡à¤¨ à¤•à¤°à¥‡à¤‚', 'Ù…ÛŒÚº Ù„Ø§Ú¯ Ø§Ù† Ú©Ø±ÛŒÚº', 'ç™»å½•', 'ãƒ­ã‚°ã‚¤ãƒ³', 'Entrar', 'ÐÐ²Ñ‚Ð¾Ñ€Ð¸Ð·Ð¾Ð²Ð°Ñ‚ÑŒÑÑ', 'Sidentifier', 'ë¡œê·¸ì¸', 'Einloggen', 'Accesso', 'à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸š', 'BelÃ©pÃ©s', 'Log in', 'Log In', 'Masuk', 'Oturum aÃ§', 'Î£ÏÎ½Î´ÎµÏƒÎ·', 'ÙˆØ±ÙˆØ¯', 'Log masuk', 'à°²à°¾à°—à± à°‡à°¨à±', 'à®‰à®³à¯ à®¨à¯à®´à¯ˆ', 'àª²à«‰àª— àª‡àª¨ àª•àª°à«‹', 'Zaloguj SiÄ™', 'Ð£Ð²Ñ–Ð¹Ñ‚Ð¸', 'à¨²à¨¾à¨—à¨¿à¨¨', 'Logare', 'á€œá€±á€¬á€·á€‚á€ºá€¡á€„á€º', 'Wo ile', 'Shiga', NULL, NULL),
(112, 'forgot_password', 'Forgot Password', 'পাসওয়ার্ড ভুলে গেলে ', 'Se te olvidÃ³ tu contraseÃ±a', 'Ù‡Ù„ Ù†Ø³ÙŠØª ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤­à¥‚à¤² à¤—à¤', 'Ù¾Ø§Ø³ÙˆØ±Úˆ Ø¨Ú¾ÙˆÙ„ Ú¯Û’', 'å¿˜è®°å¯†ç ', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’ãŠå¿˜ã‚Œã§ã™ã‹', 'Esqueceu a senha', 'Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'Forgot Password', 'ë¹„ë°€ë²ˆí˜¸ë¥¼ ìžŠìœ¼ ì…¨ë‚˜ìš”', 'Passwort vergessen', 'Ha dimenticato la password', 'à¸¥à¸·à¸¡à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™', 'Elfelejtett jelszÃ³', 'Wachtwoord vergeten', 'Forgot Password', 'Lupa kata sandi', 'ParolanÄ±zÄ± mÄ± unuttunuz', 'ÎžÎµÏ‡Î¬ÏƒÎ±Ï„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ', 'Ø±Ù…Ø² Ø¹Ø¨ÙˆØ± Ø±Ø§ ÙØ±Ø§Ù…ÙˆØ´ Ú©Ø±Ø¯Ù‡ Ø§ÛŒØ¯', 'Lupa kata laluan', 'à°ªà°¾à°¸à±à°µà°°à±à°¡à± à°®à°°à±à°šà°¿à°ªà±‹à°¯à°¾à°°à°¾', 'à®•à®Ÿà®µà¯à®šà¯à®šà¯†à®¾à®²à¯à®²à¯ˆ à®®à®±à®¨à¯à®¤à¯à®µà®¿à®Ÿà¯à®Ÿà¯€à®°à¯à®•à®³à®¾', 'àªªàª¾àª¸àªµàª°à«àª¡ àª­à«‚àª²à«€ àª—àª¯àª¾ àª›à«‹', 'ZapomniaÅ‚eÅ› hasÅ‚a', 'Ð—Ð°Ð±ÑƒÐ»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨­à©à©±à¨² à¨—à¨', 'AÅ£i uitat parola', 'á€…á€€á€¬á€¸á€á€¾á€€á€ºá€€á€­á€¯á€™á€±á€·á€”á€±á€•á€«á€žá€œá€¬á€¸', 'Gbagbe á»rá» aá¹£ina bi', 'Kalmar sirri da aka manta', NULL, NULL),
(113, 'recovery_email', 'Recovery Email', 'রিকোভারি ইমেইল ', 'Correo electrÃ³nico de recuperaciÃ³n', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø§Ù„Ø§Ø³ØªØ±Ø¯Ø§Ø¯', 'à¤°à¤¿à¤•à¤µà¤°à¥€ à¤ˆà¤®à¥‡à¤²', 'Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ Ø§ÛŒ Ù…ÛŒÙ„', 'æ¢å¤é‚®ä»¶', 'å¾©æ—§ãƒ¡ãƒ¼ãƒ«', 'Email de recuperaÃ§Ã£o', 'Ð’Ð¾ÑÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹', 'E-mail de secours', 'ë³µêµ¬ ì´ë©”ì¼', 'Wiederherstellungs-E-Mail', 'Email di recupero', 'à¸­à¸µà¹€à¸¡à¸¥à¸ªà¸³à¸«à¸£à¸±à¸šà¸à¸¹à¹‰à¸„à¸·à¸™', 'HelyreÃ¡llÃ­tÃ¡si e-mail', 'Herstel e-mail', 'Email convaluisset', 'Email pemulihan', 'Kurtarma PostasÄ±', 'Email Î±Ï€Î¿ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ·Ï‚', 'Ø§ÛŒÙ…ÛŒÙ„ Ø¨Ø§Ø²ÛŒØ§Ø¨ÛŒ', 'E-mel Pemulihan', 'à°°à°¿à°•à°µà°°à±€ à°‡à°®à±†à°¯à°¿à°²à±', 'à®®à¯€à®Ÿà¯à®ªà¯ à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯', 'àªªà«àª¨àªƒàªªà«àª°àª¾àªªà«àª¤àª¿ àª‡àª®à«‡àª‡àª²', 'E-mail odzyskiwania', 'Ð•Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð° Ð¿Ð¾ÑˆÑ‚Ð° Ð²Ñ–Ð´Ð½Ð¾Ð²Ð»ÐµÐ½Ð½Ñ', 'à¨°à¨¿à¨•à¨µà¨°à©€ à¨ˆà¨®à©‡à¨²', 'E-mail de recuperare', 'recovery á€€á€­á€¯á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€•á€­á€¯á€·á€›á€”á€º', 'Imeeli igbasiláº¹', 'Maido da Imel', NULL, NULL),
(114, 'remember_me', 'Remember me', 'তথ্য সংরক্ষণ ', 'RecuÃ©rdame', 'ØªØ°ÙƒØ±Ù†Ù‰', 'à¤®à¥à¤à¥‡ à¤¯à¤¾à¤¦ à¤°à¤–à¤¨à¤¾', 'Ù…Ø¬Ú¾Û’ Ù¾ÛÚ†Ø§Ù†ØªÛ’ ÛÙˆ', 'è®°ä½æˆ‘', 'ç§ã‚’è¦šãˆã¦ã¾ã™ã‹', 'Lembre de mim', 'Ð—Ð°Ð¿Ð¾Ð¼Ð½Ð¸ Ð¼ÐµÐ½Ñ', 'Souviens-toi de moi', 'ë‚  ê¸°ì–µí•´', 'Erinnere dich an mich', 'Ricordati di me', 'à¸ˆà¸”à¸ˆà¸³à¸‰à¸±à¸™', 'EmlÃ©kezz rÃ¡m', 'Onthoud me', 'memento mei', 'Ingat saya', 'Beni hatÄ±rla', 'Î˜Ï…Î¼Î®ÏƒÎ¿Ï… Î¼Îµ', 'Ù…Ø±Ø§ Ø¨Ù‡ Ø®Ø§Ø·Ø± Ø¨Ø³Ù¾Ø§Ø±', 'Ingat saya', 'à°¨à°¨à±à°¨à± à°—à±à°°à±à°¤à± à°ªà±†à°Ÿà±à°Ÿà±à°•à±‹', 'à®Žà®©à¯à®©à¯ˆ à®¨à®¿à®©à¯ˆà®µà®¿à®²à¯ à®•à¯Šà®³à¯à®³à¯à®™à¯à®•à®³à¯', 'àª®àª¨à«‡ àª¯àª¾àª¦', 'ZapamiÄ™taj mnie', 'ÐŸÐ°Ð¼ÑÑ‚Ð°Ð¹ Ð¼ÐµÐ½Ðµ', 'à¨®à©‡à¨°à©€ à¨¯à¨¾à¨¦ à¨¹à©ˆ', 'AminteÈ™te-È›i de mine', 'á€„á€«á€·á€€á€­á€¯á€žá€á€­á€›á€•á€«', 'Ranti mi', 'Ka tuna da ni', NULL, NULL),
(115, 'school', 'School', 'স্কুল ', 'Colegio', 'Ù…Ø¯Ø±Ø³Ø©', 'à¤¸à¥à¤•à¥‚à¤²', 'Ø§Ø³Ú©ÙˆÙ„', 'å­¦æ ¡', 'å­¦æ ¡', 'Escola', 'Ð¨ÐºÐ¾Ð»Ð°', 'Ã‰cole', 'í•™êµ', 'Schule', 'Scuola', 'à¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™', 'Iskola', 'School', 'School', 'Sekolah', 'Okul', 'Î£Ï‡Î¿Î»ÎµÎ¯Î¿', 'Ù…Ø¯Ø±Ø³Ù‡', 'Sekolah', 'à°¸à±à°•à±‚à°²à±', 'à®ªà®³à¯à®³à®¿', 'àª¶àª¾àª³àª¾', 'SzkoÅ‚a', 'Ð¨ÐºÐ¾Ð»Ð°', 'à¨¸à¨•à©‚à¨²', 'ÅžcoalÄƒ', 'á€€á€¼á€±á€¬á€„á€»á€¸', 'Ile-iwe', 'Makarantar', NULL, NULL),
(116, 'name', 'Name', 'নাম ', 'Nombre', 'Ø§Ø³Ù…', 'à¤¨à¤¾à¤®', 'Ù†Ø§Ù…', 'åç§°', 'å', 'Nome', 'Ð¸Ð¼Ñ', 'prÃ©nom', 'ì´ë¦„', 'Name', 'Nome', 'à¸Šà¸·à¹ˆà¸­', 'NÃ©v', 'Naam', 'nomine', 'Nama', 'isim', 'ÎŸÎ½Î¿Î¼Î±', 'Ù†Ø§Ù…', 'Nama', 'à°ªà±‡à°°à±', 'à®ªà¯†à®¯à®°à¯', 'àª¨àª¾àª®', 'Nazwa', 'Ð†Ð¼Ñ', 'à¨¨à¨¾à¨®', 'Nume', 'á€¡á€™á€Šá€º', 'Oruko', 'Sunan', NULL, NULL),
(117, 'address', 'Address', 'ঠিকানা ', 'DirecciÃ³n', 'Ø¹Ù†ÙˆØ§Ù†', 'à¤ªà¤¤à¤¾', 'Ø§ÛŒÚˆØ±ÛŒØ³', 'åœ°å€', 'ä½æ‰€', 'EndereÃ§o', 'ÐÐ´Ñ€ÐµÑ', 'Adresse', 'ì£¼ì†Œ', 'Adresse', 'Indirizzo', 'à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆ', 'CÃ­m', 'Adres', 'oratio', 'Alamat', 'Adres', 'Î”Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ·', 'Ù†Ø´Ø§Ù†ÛŒ', 'Alamat', 'à°šà°¿à°°à±à°¨à°¾à°®à°¾', 'à®®à¯à®•à®µà®°à®¿', 'àª¸àª°àª¨àª¾àª®à«àª‚', 'Adres', 'ÐÐ´Ñ€ÐµÑÐ°', 'à¨ªà¨¤à¨¾', 'Adresa', 'á€œá€­á€•á€ºá€…á€¬', 'Adiráº¹si', 'Adireshin', NULL, NULL),
(118, 'phone', 'Phone', 'ফোন ', 'TelÃ©fono', 'Ù‡Ø§ØªÙ', 'à¤«à¤¼à¥‹à¤¨', 'ÙÙˆÙ†', 'ç”µè¯', 'é›»è©±', 'telefone', 'Ð¢ÐµÐ»ÐµÑ„Ð¾Ð½', 'Phone', 'ì „í™”', 'Telefon', 'Telefono', 'à¹‚à¸—à¸£à¸¨à¸±à¸žà¸—à¹Œ', 'Telefon', 'Telefoon', 'Phone', 'Telepon', 'Telefon', 'Î¤Î·Î»Î­Ï†Ï‰Î½Î¿', 'ØªÙ„ÙÙ†', 'Telefon', 'à°«à±‹à°¨à±', 'à®¤à¯†à®¾à®²à¯ˆà®ªà¯‡à®šà®¿', 'àª«à«‹àª¨', 'Telefon', 'Ð¢ÐµÐ»ÐµÑ„Ð¾Ð½', 'à¨«à©‹à¨¨', 'Telefon', 'á€–á€¯á€”á€ºá€¸á€”á€¶á€•á€«á€á€º', 'Foonu', 'Waya', NULL, NULL),
(119, 'footer', 'Footer', 'ফুটার ', 'Pie de pÃ¡gina', 'ØªØ°ÙŠÙŠÙ„', 'à¤«à¤¼à¥à¤Ÿà¤¬à¤¾à¤²', 'ÙÙˆÙ¹Ø±', 'é¡µè„š', 'ãƒ•ãƒƒã‚¿ãƒ¼', 'RodapÃ©', 'Ð½Ð¸Ð¶Ð½Ð¸Ð¹ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ»', 'Bas de page', 'ë³´í–‰ì¸', 'FuÃŸzeile', 'footer', 'à¸Ÿà¸¸à¸•à¸šà¸­à¸¥', 'LÃ¡bjegyzet', 'footer', 'footer', 'Footer', 'Alt Bilgi', 'Î¥Ï€Î¿ÏƒÎ­Î»Î¹Î´Î¿', 'Ù¾Ø§ÙˆØ±Ù‚ÛŒ', 'Footer', 'à°«à±à°Ÿà°°à±', 'à®…à®Ÿà®¿à®•à¯à®•à¯à®±à®¿à®ªà¯à®ªà¯', 'àª«à«‚àªŸàª°', 'Stopka', 'ÐÐ¸Ð¶Ð½Ñ–Ð¹ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ»', 'à¨ªà¨¦à¨²à©‡à¨°', 'Subsol', 'á€¡á€±á€¬á€€á€ºá€á€¼á€±', 'áº¸láº¹sáº¹', 'Hanya', NULL, NULL),
(120, 'logo', 'Logo', 'লগো ', 'Logo', 'Ø´Ø¹Ø§Ø±', 'à¤ªà¥à¤°à¤¤à¥€à¤• à¤šà¤¿à¤¨à¥à¤¹', 'Ù„ÙˆÚ¯Ùˆ', 'å•†æ ‡', 'ãƒ­ã‚´', 'Logotipo', 'Ð»Ð¾Ð³Ð¾Ñ‚Ð¸Ð¿', 'Logo', 'ì‹¬ë²Œ ë§ˆí¬', 'Logo', 'Logo', 'à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢', 'logo', 'Logo', 'logo', 'Logo', 'Logo', 'Î›Î¿Î³ÏŒÏ„Ï…Ï€Î¿', 'Ù„ÙˆÚ¯Ùˆ', 'Logo', 'à°²à±‹à°—à±‹', 'à®šà®¿à®©à¯à®©à®®à¯', 'àª²à«‰àª—à«‹', 'Logo', 'Ð›Ð¾Ð³Ð¾Ñ‚Ð¸Ð¿', 'à¨²à©‹à¨—à©‹', 'SiglÄƒ', 'á€œá€­á€¯á€‚á€­á€¯', 'Logo', 'Logo', NULL, NULL),
(121, 'title', 'Title', 'টাইটেল ', 'TÃ­tulo', 'Ø¹Ù†ÙˆØ§Ù†', 'à¤¶à¥€à¤°à¥à¤·à¤•', 'Ø¹Ù†ÙˆØ§Ù†', 'æ ‡é¢˜', 'ã‚¿ã‚¤ãƒˆãƒ«', 'TÃ­tulo', 'Ð·Ð°Ð³Ð»Ð°Ð²Ð¸Ðµ', 'Titre', 'í‘œì œ', 'Titel', 'Titolo', 'à¸«à¸±à¸§à¸‚à¹‰à¸­', 'CÃ­m', 'Titel', 'titulus', 'Judul', 'BaÅŸlÄ±k', 'Î¤Î¯Ï„Î»Î¿Ï‚', 'Ø¹Ù†ÙˆØ§Ù†', 'Tajuk', 'à°¶à±€à°°à±à°·à°¿à°•', 'à®¤à®²à¯ˆà®ªà¯à®ªà¯', 'àª¶à«€àª°à«àª·àª•', 'TytuÅ‚', 'ÐÐ°Ð·Ð²Ð°', 'à¨Ÿà¨¾à¨ˆà¨Ÿà¨²', 'Titlu', 'á€á€±á€«á€„á€ºá€¸á€…á€¥á€º', 'Aká»le', 'Title', NULL, NULL),
(122, 'total', 'Total', 'সর্বমোট ', 'Total', 'Ù…Ø¬Ù…ÙˆØ¹', 'à¤•à¥à¤²', 'Ú©Ù„', 'æ€»', 'åˆè¨ˆ', 'Total', 'Ð’ÑÐµÐ³Ð¾', 'Total', 'í•©ê³„', 'Gesamt', 'Totale', 'à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Teljes', 'Totaal', 'summa', 'Total', 'Genel Toplam', 'Î£ÏÎ½Î¿Î»Î¿', 'Ø¬Ù…Ø¹', 'Jumlah', 'à°®à±Šà°¤à±à°¤à°‚', 'à®®à¯†à®¾à®¤à¯à®¤', 'àª•à«àª²', 'CaÅ‚kowity', 'Ð’ÑÑŒÐ¾Ð³Ð¾', 'à¨•à©à©±à¨²', 'Total', 'á€…á€¯á€…á€¯á€•á€±á€«á€„á€»á€¸', 'Lapapá»', 'Jimlar', NULL, NULL),
(123, 'calendar', 'Calendar', 'ক্যালেন্ডার ', 'Calendario', 'Ø§Ù„ØªÙ‚ÙˆÙŠÙ…', 'à¤•à¥ˆà¤²à¥‡à¤‚à¤¡à¤°', 'Ú©ÛŒÙ„Ù†ÚˆØ±', 'æ—¥åŽ†', 'ã‚«ãƒ¬ãƒ³ãƒ€ãƒ¼', 'CalendÃ¡rio', 'ÐšÐ°Ð»ÐµÐ½Ð´Ð°Ñ€ÑŒ', 'Calendrier', 'ë‹¬ë ¥', 'Kalender', 'Calendario', 'à¸›à¸à¸´à¸—à¸´à¸™', 'NaptÃ¡r', 'Kalender', 'Calendar', 'Kalender', 'Takvim', 'Î—Î¼ÎµÏÎ¿Î»ÏŒÎ³Î¹Î¿', 'ØªÙ‚ÙˆÛŒÙ…', 'Kalendar', 'à°•à±à°¯à°¾à°²à±†à°‚à°¡à°°à±', 'à®¨à®¾à®Ÿà¯à®•à®¾à®Ÿà¯à®Ÿà®¿', 'àª•à«…àª²à«‡àª¨à«àª¡àª°', 'Kalendarz', 'ÐšÐ°Ð»ÐµÐ½Ð´Ð°Ñ€', 'à¨•à©ˆà¨²à©°à¨¡à¨°', 'Calendar', 'á€•á€¼á€€á€¹á€á€’á€­á€”á€º', 'Kaláº¹nda', 'Kalanda', NULL, NULL),
(124, 'statistics', 'Statistics', 'পরিসংখ্যান ', 'EstadÃ­stica', 'Ø§Ù„Ø¥Ø­ØµØ§Ø¡', 'à¤†à¤‚à¤•à¤¡à¤¼à¥‡', 'Ø§Ø¹Ø¯Ø§Ø¯ Ùˆ Ø´Ù…Ø§Ø±', 'ç»Ÿè®¡', 'çµ±è¨ˆ', 'Estatisticas', 'Ð¡Ñ‚Ð°Ñ‚Ð¸ÑÑ‚Ð¸ÐºÐ°', 'Statistiques', 'í†µê³„', 'Statistiken', 'statistica', 'à¸ªà¸–à¸´à¸•à¸´', 'Statisztika', 'Statistieken', 'Statistics', 'Statistik', 'istatistik', 'Î£Ï„Î±Ï„Î¹ÏƒÏ„Î¹ÎºÎ®', 'Ø¢Ù…Ø§Ø±', 'Statistik', 'à°—à°£à°¾à°‚à°•à°¾à°²à±', 'à®ªà¯à®³à¯à®³à®¿à®¯à®¿à®¯à®²à¯', 'àª†àª‚àª•àª¡àª¾', 'Statystyka', 'Ð¡Ñ‚Ð°Ñ‚Ð¸ÑÑ‚Ð¸ÐºÐ°', 'à¨…à©°à¨•à©œà©‡', 'Statistici', 'á€…á€¬á€›á€„á€ºá€¸á€¡á€„á€ºá€¸', 'Awá»n iá¹£iro', 'Statistics', NULL, NULL),
(125, 'latest', 'Latest', 'সর্বশেষ ', 'Ãšltimo', 'Ø¢Ø®Ø±', 'à¤¨à¤µà¥€à¤¨à¤¤à¤®', 'ØªØ§Ø²Û ØªØ±ÛŒÙ†', 'æœ€æ–°', 'æœ€æ–°', 'Mais recentes', 'ÐŸÐ¾ÑÐ»ÐµÐ´Ð½Ð¸Ð¹', 'Dernier', 'ìµœê·¼', 'Neueste', 'PiÃ¹ recente', 'à¸¥à¹ˆà¸²à¸ªà¸¸à¸”', 'LegÃºjabb', 'Laatste', 'latest', 'Terbaru', 'son', 'Î‘ÏÎ³ÏŒÏ„ÎµÏÎ¿', 'Ø¢Ø®Ø±ÛŒÙ†', 'Terkini', 'à°¤à°¾à°œà°¾', 'à®šà®®à¯€à®ªà®¤à¯à®¤à®¿à®¯', 'àª¤àª¾àªœà«‡àª¤àª°àª¨à«€', 'Najnowszy', 'ÐžÑÑ‚Ð°Ð½Ð½Ñ–', 'à¨¨à¨µà©€à¨¨à¨¤à¨®', 'Cele mai recente', 'á€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸', 'Titun', 'Bugawa', NULL, NULL),
(126, 'currency', 'Currency', 'মুদ্রা ', 'Moneda', 'Ø¯Ù‚Ø©', 'à¤®à¥à¤¦à¥à¤°à¤¾', 'Ú©Ø±Ù†Ø³ÛŒ', 'è´§å¸', 'é€šè²¨', 'Moeda', 'Ð²Ð°Ð»ÑŽÑ‚Ð°', 'Devise', 'í†µí™”', 'WÃ¤hrung', 'Moneta', 'à¹€à¸‡à¸´à¸™à¸•à¸£à¸²', 'Valuta', 'Valuta', 'monetÃ¦', 'Mata uang', 'Para birimi', 'ÎÏŒÎ¼Î¹ÏƒÎ¼Î±', 'ÙˆØ§Ø­Ø¯ Ù¾ÙˆÙ„', 'Mata wang', 'à°•à°°à±†à°¨à±à°¸à±€', 'à®¨à®¾à®£à®¯', 'àªšàª²àª£', 'Waluta', 'Ð’Ð°Ð»ÑŽÑ‚Ð°', 'à¨®à©à¨¦à¨°à¨¾', 'ValutÄƒ', 'á€„á€½á€±á€€á€¼á€±á€¸á€…á€”á€…á€º', 'Owo', 'Kudin', NULL, NULL),
(127, 'currency_symbol', 'Currency Symbol', 'মুদ্রার প্রতীক ', 'SÃ­mbolo de moneda', 'Ø±Ù…Ø² Ø§Ù„Ø¹Ù…Ù„Ø©', 'à¤®à¥à¤¦à¥à¤°à¤¾ à¤šà¤¿à¤¨à¥à¤¹', 'Ú©Ø±Ù†Ø³ÛŒ Ø¹Ù„Ø§Ù…Øª', 'è´§å¸ç¬¦å·', 'é€šè²¨è¨˜å·', 'SÃ­mbolo monetÃ¡rio', 'Ð¡Ð¸Ð¼Ð²Ð¾Ð» Ð²Ð°Ð»ÑŽÑ‚Ñ‹', 'Symbole de la monnaie', 'í†µí™” ê¸°í˜¸', 'WÃ¤hrungszeichen', 'Simbolo di valuta', 'à¸ªà¸±à¸à¸¥à¸±à¸à¸©à¸“à¹Œà¸ªà¸à¸¸à¸¥à¹€à¸‡à¸´à¸™', 'PÃ©nznem szimbÃ³lum', 'Symbool van munteenheid', 'monetÃ¦ Symbol', 'Simbol mata uang', 'Para Birimi SembolÃ¼', 'Î£ÏÎ¼Î²Î¿Î»Î¿ Î½Î¿Î¼Î¯ÏƒÎ¼Î±Ï„Î¿Ï‚', 'Ù†Ù…Ø§Ø¯ Ø§Ø±Ø²', 'Simbol mata wang', 'à°•à°°à±†à°¨à±à°¸à±€ à°šà°¿à°¹à±à°¨à°‚', 'à®¨à®¾à®£à®¯ à®šà®¿à®©à¯à®©à®®à¯', 'àª•àª°àª¨à«àª¸à«€ àªªà«àª°àª¤à«€àª•', 'Symbol waluty', 'Ð¡Ð¸Ð¼Ð²Ð¾Ð» Ð²Ð°Ð»ÑŽÑ‚Ð¸', 'à¨•à¨°à©°à¨¸à©€ à¨¨à¨¿à¨¸à¨¼à¨¾à¨¨', 'Simbolul valutei', 'á€„á€½á€±á€€á€¼á€±á€¸á€žá€„á€ºá€¹á€€á€±á€', 'Aami Owo', 'Alamar Kudin', NULL, NULL),
(128, 'note', 'Note', 'নোট ', 'Nota', 'Ù…Ù„Ø­ÙˆØ¸Ø©', 'à¤§à¥à¤¯à¤¾à¤¨ à¤¦à¥‡à¤‚', 'Ù†ÙˆÙ¹', 'æ³¨æ„', 'æ³¨æ„', 'Nota', 'Ð—Ð°Ð¼ÐµÑ‚ÐºÐ°', 'Remarque', 'ë…¸íŠ¸', 'Hinweis', 'Nota', 'à¸šà¸±à¸™à¸—à¸¶à¸', 'jegyzet', 'Notitie', 'nota', 'Catatan', 'Not', 'Î£Î·Î¼ÎµÎ¯Ï‰ÏƒÎ·', 'ØªÙˆØ¬Ù‡ Ø¯Ø§Ø´ØªÙ‡ Ø¨Ø§Ø´ÛŒØ¯', 'Nota', 'à°—à°®à°¨à°¿à°•', 'à®•à¯à®±à®¿à®ªà¯à®ªà¯', 'àª¨à«‰à«…àª§', 'Uwaga', 'ÐŸÑ€Ð¸Ð¼Ñ–Ñ‚ÐºÐ°', 'à¨¨à©‹à¨Ÿ', 'NotÄƒ', 'á€™á€¾á€á€ºá€…á€¯', 'Akiyesi', 'Lura', NULL, NULL),
(129, 'is_running', 'Is Running?', 'চলছে ', 'Â¿Esta corriendo?', 'ÙŠØ¬Ø±ÙŠØŸ', 'à¤¦à¥Œà¤¡ à¤°à¤¹à¤¾ à¤¹à¥ˆ?', 'Ø¨Ú¾Ø§Ú¯ Ø±ÛØ§ ÛÛ’ØŸ', 'åœ¨è·‘ï¼Ÿ', 'ãŒèµ°ã£ã¦ã„ã¾ã™ï¼Ÿ', 'EstÃ¡ correndo?', 'Ð‘ÐµÐ¶Ð¸Ñ‚?', 'Est en cours dexÃ©cution?', 'ë‹¬ë¦¬ê¸°?', 'LÃ¤uft?', 'Ãˆ in esecuzione?', 'à¸à¸³à¸¥à¸±à¸‡à¸§à¸´à¹ˆà¸‡?', 'Fut?', 'Is aan het rennen?', 'Is Cursor?', 'Sedang berlari?', 'Ã‡alÄ±ÅŸÄ±yor?', 'Î¤ÏÎ­Ï‡ÎµÎ¹?', 'Ø¯Ø± Ø­Ø§Ù„ Ø§Ø¬Ø±Ø§Ø³ØªØŸ', 'Adalah berlari?', 'à°ªà°°à°¿à°—à±†à°¤à±à°¤à±à°¤à±à°¨à±à°¨à°¾à°¡à±?', 'à®‡à®¯à®™à¯à®•à¯à®•à®¿à®±à®¤à¯?', 'àªšàª¾àª²à«€ àª°àª¹à«àª¯à«àª‚ àª›à«‡?', 'Biegnie?', 'Ð‘Ñ–Ð¶Ð¸Ñ‚ÑŒ?', 'à¨šà©±à¨² à¨°à¨¿à¨¹à¨¾ à¨¹à©ˆ?', 'RuleazÄƒ?', 'á€€á€­á€¯ run á€žá€œá€²?', 'Ná¹£iá¹£áº¹?', 'Yana gudana?', NULL, NULL),
(130, 'running_year', 'Running Year', 'চলতি বছর ', 'AÃ±o de ejecuciÃ³n', 'ØªØ´ØºÙŠÙ„ Ø§Ù„Ø³Ù†Ø©', 'à¤µà¤°à¥à¤· à¤šà¤² à¤°à¤¹à¤¾ à¤¹à¥ˆ', 'Ú†Ù„ Ø±ÛØ§ ÛÛ’ Ø³Ø§Ù„', 'è¿è¡Œå¹´', 'ãƒ©ãƒ³ãƒ‹ãƒ³ã‚°ãƒ»ã‚¤ãƒ¤ãƒ¼', 'Ano corrente', 'Ð‘ÐµÐ³ÑƒÑ‰Ð¸Ð¹ Ð³Ð¾Ð´', 'AnnÃ©e de fonctionnement', 'ëŸ¬ë‹ ì—°ë„', 'Laufendes Jahr', 'Anno in corso', 'à¸›à¸µà¸—à¸µà¹ˆà¸”à¸³à¹€à¸™à¸´à¸™à¸à¸²à¸£', 'FutÃ³Ã©v', 'Lopend jaar', 'anno currit', 'Tahun berjalan', 'KoÅŸu YÄ±lÄ±', 'Î¤ÏÎ­Ï‡Î¿Î½ Î­Ï„Î¿Ï‚', 'Ø¯Ø± Ø­Ø§Ù„ Ø§Ø¬Ø±Ø§ Ø³Ø§Ù„', 'Tahun Berjalan', 'à°°à°¨à±à°¨à°¿à°‚à°—à± à°‡à°¯à°°à±', 'à®‡à®¯à®™à¯à®•à¯à®®à¯ à®µà®°à¯à®Ÿà®®à¯', 'àªµàª°à«àª· àªšàª¾àª²à«€ àª°àª¹à«àª¯à«àª‚ àª›à«‡', 'Rok bieÅ¼Ä…cy', 'Ð‘Ñ–Ð³ Ð Ñ–Ðº', 'à¨°à¨¨à¨¿à©°à¨— à¨¯à©€à¨…à¨°', 'Anul de funcÈ›ionare', 'á€¡á€•á€¼á€±á€¸á€á€…á€ºá€”á€¾á€…á€ºá€á€¬', 'Ná¹£iá¹£áº¹ á»Œdun', 'Gudun Shekara', NULL, NULL),
(131, 'is_demo', 'Is Demo?', 'ডেমো ', 'Es Demo?', 'Ù‡Ù„ ØªØ¬Ø±ÙŠØ¨ÙŠØŸ', 'à¤¡à¥‡à¤®à¥‹ à¤¹à¥ˆ?', 'ÚˆÛŒÙ…Ùˆ ÛÛ’ØŸ', 'æ˜¯æ¼”ç¤ºï¼Ÿ', 'ãƒ‡ãƒ¢ã§ã™ã‹ï¼Ÿ', 'Demo?', 'Ð•ÑÑ‚ÑŒ Ð´ÐµÐ¼Ð¾?', 'Est-ce que Demo?', 'ë°ëª¨ìž…ë‹ˆê¹Œ?', 'Ist Demo?', 'Ãˆ Demo?', 'Demo?', 'A demo?', 'Is demo?', 'Demo est?', 'Apakah demo', 'Demo var mÄ±?', 'Î•Î¯Î½Î±Î¹ ÎµÏ€Î¯Î´ÎµÎ¹Î¾Î·;', 'Ø¢ÛŒØ§ Ù†Ø³Ø®Ù‡ ÛŒ Ù†Ù…Ø§ÛŒØ´ÛŒ Ø§Ø³ØªØŸ', 'Adakah Demo?', 'à°¡à±†à°®à±‹à°¨à°¾?', 'à®Ÿà¯†à®®à¯‹?', 'àª¡à«‡àª®à«‹ àª›à«‡?', 'Czy to demo?', 'Ð”ÐµÐ¼Ð¾?', 'à¨¡à©ˆà¨®à©‹ à¨¹à©ˆ?', 'Este Demo?', 'Demo á€œá€¬á€¸?', 'á¹¢e Demo?', 'Shin Demo?', NULL, NULL),
(132, 'is_active', 'Is Active?', 'সচল ', 'Â¿EstÃ¡ activo?', 'Ù‡Ù„ Ù†Ø´Ø·ØŸ', 'à¤¸à¤•à¥à¤°à¤¿à¤¯ à¤¹à¥ˆ?', 'ÙØ¹Ø§Ù„ ÛÛ’ØŸ', 'æ´»è·ƒï¼Ÿ', 'ã‚¢ã‚¯ãƒ†ã‚£ãƒ–ã§ã™ï¼Ÿ', 'EstÃ¡ ativo?', 'ÐÐºÑ‚Ð¸Ð²ÐµÐ½?', 'Cest actif?', 'í™œì„±?', 'Ist aktiv?', 'Ãˆ attivo?', 'à¸¡à¸µà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸­à¸¢à¸¹à¹ˆà¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ?', 'AktÃ­v?', 'Is actief?', 'Active est?', 'Aktif?', 'Aktif?', 'Î•Î¯Î½Î±Î¹ ÎµÎ½ÎµÏÎ³ÏŒ?', 'ÙØ¹Ø§Ù„ Ø§Ø³ØªØŸ', 'Adalah aktif?', 'à°¸à°•à±à°°à°¿à°¯à°‚à°—à°¾ à°‰à°‚à°¦à°¾?', 'à®šà¯†à®¯à®²à®¿à®²à¯ à®‡à®°à¯à®•à¯à®•à®¿à®±à®¤à®¾?', 'àª¸àª•à«àª°àª¿àª¯ àª›à«‡?', 'Jest aktywny?', 'ÐÐºÑ‚Ð¸Ð²Ð½Ð¸Ð¹?', 'à¨¸à¨°à¨—à¨°à¨® à¨¹à©ˆ?', 'Este activ?', 'Active á€€á€­á€¯á€œá€¬á€¸?', 'á¹¢e Iroyin?', 'Yana aiki?', NULL, NULL),
(133, 'active', 'Active', 'সচল ', 'Activo', 'Ù†Ø´ÙŠØ·', 'à¤¸à¤•à¥à¤°à¤¿à¤¯', 'ÙØ¹Ø§Ù„', 'æ´»æ€§', 'ã‚¢ã‚¯ãƒ†ã‚£ãƒ–', 'Ativo', 'Ð°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹', 'actif', 'ìœ íš¨í•œ', 'Aktiv', 'Attivo', 'à¸„à¸¥à¹ˆà¸­à¸‡à¹à¸„à¸¥à¹ˆà¸§', 'AktÃ­v', 'Actief', 'Active', 'Aktif', 'Aktif', 'Î•Î½ÎµÏÎ³ÏŒÏ‚', 'ÙØ¹Ø§Ù„', 'Aktif', 'à°•à±à°°à°¿à°¯à°¾à°¶à±€à°²', 'à®šà¯†à®¯à®²à®¿à®²à¯', 'àª¸àª•à«àª°àª¿àª¯', 'Aktywny', 'ÐÐºÑ‚Ð¸Ð²Ð½Ð¸Ð¹', 'à¨•à¨¿à¨°à¨¿à¨†à¨¸à¨¼à©€à¨²', 'Activ', 'á€á€€á€ºá€€á€¼á€½', 'Iroyin', 'Aiki', NULL, NULL),
(134, 'secret', 'Secret', 'গোপণ ', 'Secreto', 'Ø³Ø±', 'à¤—à¥à¤ªà¥à¤¤', 'Ø®ÙÛŒÛ', 'ç§˜å¯†', 'ç§˜å¯†', 'Segredo', 'ÑÐµÐºÑ€ÐµÑ‚', 'Secret', 'ë¹„ë°€', 'Geheimnis', 'Segreto', 'à¸¥à¸±à¸š', 'Titok', 'Geheim', 'secret', 'Rahasia', 'Gizli', 'ÎœÏ…ÏƒÏ„Î¹ÎºÏŒ', 'Ø±Ø§Ø²', 'Rahsia', 'à°¸à±€à°•à±à°°à±†à°Ÿà±', 'à®‡à®°à®•à®šà®¿à®¯', 'àª¸àª¿àª•à«àª°à«‡àªŸ', 'Sekret', 'Ð¢Ð°Ñ”Ð¼Ð½Ð¾', 'à¨°à¨¾à¨œà¨¼', 'Secret', 'á€œá€»á€¾á€­á€¯á€·á€á€¾á€€á€ºá€á€»á€€á€º', 'Ã¬ká»ká»', 'Asiri', NULL, NULL),
(135, 'api_key', 'Api Key', 'এ পি আই কী ', 'Clave API', 'Ù…ÙØªØ§Ø­ API', 'à¤à¤ªà¥€à¤†à¤ˆ à¤•à¥à¤‚à¤œà¥€', 'Ø§Û’Ù¾ÛŒ Ú©ÛŒ Ú©Ù„ÛŒ', 'Api Key', 'Api Key', 'Chave API', 'Api Key', 'ClÃ© de feu', 'API í‚¤', 'API-SchlÃ¼ssel', 'Chiave Api', 'à¸„à¸µà¸¢à¹Œ Api', 'Api Key', 'API sleutel', 'API key', 'Kunci API', 'Api Key', 'Api Key', 'Ú©Ù„ÛŒØ¯ Ø§ÛŒ Ù¾ÛŒ Ø§ÛŒ', 'Api Utama', 'à°…à°ªà°¿ à°•à±€', 'à®…à®ªà¯ à®•à¯€', 'API àª•à«€', 'Klucz API', 'Api Key', 'à¨…à¨ªà©€ à¨•à©à©°à¨œà©€', 'Api Key', 'api Key á€€á€­á€¯', 'Bá»tini Api', 'Api Key', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(136, 'key', 'Key', 'কী ', 'Llave', 'Ù…ÙØªØ§Ø­', 'à¤•à¥à¤‚à¤œà¥€', 'Ú©Ù„ÛŒØ¯ÛŒ', 'é”®', 'ã‚­ãƒ¼', 'Chave', 'ÐºÐ»ÑŽÑ‡', 'ClÃ©', 'í‚¤', 'SchlÃ¼ssel', 'Chiave', 'à¸ªà¸³à¸„à¸±à¸', 'Kulcs', 'Sleutel', 'Clavis', 'Kunci', 'anahtar', 'ÎšÎ»ÎµÎ¹Î´Î¯', 'Ú©Ù„ÛŒØ¯', 'Kunci', 'à°•à±€', 'à®šà®¾à®µà®¿', 'àª•à«€', 'Klawisz', 'ÐšÐ»ÑŽÑ‡', 'à¨•à©à©°à¨œà©€', 'Cheie', 'á€žá€±á€¬á€·', 'Bá»tini', 'Key', NULL, NULL),
(137, 'key_salt', 'Key Salt', 'কী সল্ট ', 'Key Salt', 'Ù…ÙØªØ§Ø­ Ø§Ù„Ù…Ù„Ø­', 'à¤•à¥à¤‚à¤œà¥€ à¤¨à¤®à¤•', 'Ú©Ù„ÛŒØ¯ÛŒ Ù†Ù…Ú©', 'å…³é”®ç›', 'ã‚­ãƒ¼ã‚½ãƒ«ãƒˆ', 'Sal chave', 'ÐžÑÐ½Ð¾Ð²Ð½Ð°Ñ ÑÐ¾Ð»ÑŒ', 'Sel principal', 'í‚¤ ì†”íŠ¸', 'SchlÃ¼sselsalz', 'Key Salt', 'à¹€à¸à¸¥à¸·à¸­à¹à¸à¸‡', 'FÅ‘ sÃ³', 'Key Salt', 'Key salis', 'Garam utama', 'Anahtar Tuz', 'Î’Î±ÏƒÎ¹ÎºÏŒ Î±Î»Î¬Ï„Î¹', 'Ù†Ù…Ú© Ú©Ù„ÛŒØ¯ÛŒ', 'Garam utama', 'à°•à±€ à°‰à°ªà±à°ªà±', 'à®®à¯à®•à¯à®•à®¿à®¯ à®‰à®ªà¯à®ªà¯', 'àª•à«€ àª¸à«‹àª²à«àªŸ', 'Kluczowa sÃ³l', 'ÐšÐ»ÑŽÑ‡Ð¾Ð²Ñ– ÑÐ¾Ð»Ñ–', 'à¨•à©€ à¨¸à¨²à©Œà¨²', 'Sare cheie', 'Key á€€á€­á€¯á€†á€¬á€¸', 'iyá» bá»tini', 'Key Salt', NULL, NULL),
(138, 'username', 'Username', 'ইউজার নেইম ', 'Nombre de usuario', 'Ø§Ø³Ù… Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤¨à¤¾à¤®', 'ØµØ§Ø±Ù Ú©Ø§ Ù†Ø§Ù…', 'ç”¨æˆ·å', 'ãƒ¦ãƒ¼ã‚¶ãƒ¼å', 'Nome de usuÃ¡rio', 'Ð¸Ð¼Ñ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'Nom dutilisateur', 'ì‚¬ìš©ìž ì´ë¦„', 'Nutzername', 'Nome utente', 'à¸Šà¸·à¹ˆà¸­à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'FelhasznÃ¡lÃ³nÃ©v', 'Gebruikersnaam', 'nomen usoris', 'Nama pengguna', 'KullanÄ±cÄ± adÄ±', 'ÎŒÎ½Î¿Î¼Î± Ï‡ÏÎ®ÏƒÏ„Î·', 'Ù†Ø§Ù… Ú©Ø§Ø±Ø¨Ø±ÛŒ', 'Nama pengguna', 'à°¯à±‚à°œà°°à± à°ªà±‡à°°à±', 'à®ªà®¯à®©à®°à¯à®ªà¯†à®¯à®°à¯', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾ àª¨àª¾àª®', 'Nazwa UÅ¼ytkownika', 'Ð†Ð¼Ñ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡Ð°', 'à¨¯à©‚à¨œà¨¼à¨°à¨¨à¨¾à¨®', 'Nume de utilizator', 'á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€¡á€™á€Šá€º', 'Oruká» olumulo', 'Sunan mai amfani', NULL, NULL),
(139, 'account_sid', 'Account SID', 'একাউন্ট ', 'SID de la cuenta', 'Ø­Ø³Ø§Ø¨ Ø³ÙŠØ¯', 'à¤…à¤•à¤¾à¤‰à¤‚à¤Ÿ à¤à¤¸à¤†à¤ˆà¤¡à¥€', 'Ø§Ú©Ø§Ø¤Ù†Ù¹ SID', 'å¸æˆ·SID', 'ã‚¢ã‚«ã‚¦ãƒ³ãƒˆSID', 'SID da conta', 'SID ÑƒÑ‡ÐµÑ‚Ð½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÐ¸', 'Compte SID', 'ê³„ì • SID', 'Konto SID', 'SID dellaccount', 'à¸šà¸±à¸à¸Šà¸µ SID', 'FiÃ³k SID', 'Account SID', 'ratio SID', 'Akun SID', 'Hesap SID', 'Î›Î¿Î³Î±ÏÎ¹Î±ÏƒÎ¼ÏŒÏ‚ SID', 'SID Ø­Ø³Ø§Ø¨', 'SID Akaun', 'SID à°–à°¾à°¤à°¾', 'à®•à®£à®•à¯à®•à¯ SID', 'àªàª•àª¾àª‰àª¨à«àªŸ SID', 'Identyfikator konta SID', 'Ð†Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ñ€ Ð¾Ð±Ð»Ñ–ÐºÐ¾Ð²Ð¾Ð³Ð¾ Ð·Ð°Ð¿Ð¸ÑÑƒ', 'à¨–à¨¾à¨¤à¨¾ SID', 'Cont SID', 'á€¡á€€á€±á€¬á€„á€ºá€· SID', 'SID iroyin', 'Asusun SID', NULL, NULL),
(140, 'auth_token', 'Auth Token', 'আথোরাইজড টোকেন ', 'Token de autenticaciÃ³n', 'Ø§Ù„Ø±Ù…Ø² Ø§Ù„Ù…Ù…ÙŠØ² Ù„Ù„Ù…ØµØ§Ø¯Ù‚Ø©', 'à¤”à¤¥ à¤Ÿà¥‹à¤•à¤¨', 'Ù…ØµÙ†Ù Ù¹ÙˆÚ©Ù†', 'éªŒè¯ä»¤ç‰Œ', 'èªè¨¼ãƒˆãƒ¼ã‚¯ãƒ³', 'Token Auth', 'Auth Token', 'Jeton dauthentification', 'ì¸ì¦ í† í°', 'Auth Token', 'Token di autenticazione', 'Auth Token', 'Hitel Token', 'Auth Token', 'auth Thochen', 'Token Auth', 'Auth Token', 'Auth Token', 'Auth Token', 'Token Auth', 'à°ªà±à°°à°¾à°®à°¾à°£à±€à°•à°°à°£ à°Ÿà±‹à°•à±†à°¨à±', 'à®…à®™à¯à®•à¯€à®•à®¾à®° à®Ÿà¯‹à®•à¯à®•à®©à¯', 'àª‘àª¥ àªŸà«‹àª•àª¨', 'token autoryzacji', 'ÐÐ²Ñ‚ Ñ‚Ð¾ÐºÐµÐ½', 'Auth à¨Ÿà©‹à¨•à¨¨', 'Auth Token', 'auth á€á€­á€¯á€€á€„á€º', 'auth aami', 'Auth Token', NULL, NULL),
(141, 'auth_key', 'Auth Key', 'অথোরাইজড কী ', 'Clave de autenticaciÃ³n', 'Ù…ÙØªØ§Ø­ Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø©', 'à¤ªà¥à¤°à¤®à¤¾à¤£à¤¨ à¤•à¥à¤‚à¤œà¥€', 'Ù…ØµÙ†Ù Ú©Ù„ÛŒØ¯ÛŒ', 'æŽˆæƒé”®', 'èªè¨¼ã‚­ãƒ¼', 'Chave de autenticaÃ§Ã£o', 'Auth Key', 'ClÃ© dauthentification', 'ì¸ì¦ í‚¤', 'AuthentifizierungsschlÃ¼ssel', 'Chiave dautenticazione', 'à¸„à¸µà¸¢à¹Œà¸à¸²à¸£à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸š', 'AutentikÃ¡ciÃ³s kulcs', 'Inlogcode', 'Key auth', 'Kunci otomatis', 'Auth Key', 'Auth Key', 'Ú©Ù„ÛŒØ¯ ØªØ§ÛŒÛŒØ¯', 'Auth Key', 'à°ªà±à°°à°¾à°®à°¾à°£à±€à°•à°°à°£ à°•à±€', 'à®…à®™à¯à®•à¯€à®•à®¾à®° à®µà®¿à®šà¯ˆ', 'àª‘àª¥ àª•à«€', 'Klucz autoryzujÄ…cy', 'ÐÐ²Ñ‚Ñ… ÐºÐ»ÑŽÑ‡', 'à¨”à¨¥ à¨•à©€', 'Auth Key', 'auth Key á€€á€­á€¯', 'Bá»tini Auth', 'A Key Key', NULL, NULL),
(142, 'auth_id', 'Auth ID', 'অথোরাইজড আইডি ', 'ID de autenticaciÃ³n', 'Ù…Ø¹Ø±Ù Ø§Ù„Ù…ØµØ§Ø¯Ù‚Ø©', 'à¤‘à¤¥ à¤†à¤ˆà¤¡à¥€', 'Ù…ØµÙ†Ù ID', 'èº«ä»½éªŒè¯ID', 'èªè¨¼ID', 'ID de AutenticaÃ§Ã£o', 'Auth ID', 'Authentification', 'ì¸ì¦ ID', 'Authentifizierungs-ID', 'Auth ID', 'à¸£à¸«à¸±à¸ªà¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'HitelazonosÃ­tÃ³', 'Auth ID', 'id auth', 'ID Auth', 'KimliÄŸi kimliÄŸi', 'Auth ID', 'ID Auth', 'ID pengarang', 'à°ªà±à°°à°¾à°®à°¾à°£à±€à°•à°°à°£ ID', 'à®…à®™à¯à®•à¯€à®•à®¾à®° à®à®Ÿà®¿', 'àª‘àª¥ ID', 'Auth ID', 'Auth ID', 'Auth ID', 'Auth ID', 'auth ID á€€á€­á€¯', 'Auth ID', 'ID ID', NULL, NULL),
(143, 'from_number', 'From Number', 'ফ্রম নম্বর ', 'Desde el nÃºmero', 'Ù…Ù† Ø§Ù„Ø¹Ø¯Ø¯', 'à¤¸à¤‚à¤–à¥à¤¯à¤¾ à¤¸à¥‡', 'Ù†Ù…Ø¨Ø± Ø³Û’', 'ä»Žæ•°å­—', 'ç•ªå·ã‹ã‚‰', 'Do nÃºmero', 'ÐžÑ‚ Ð½Ð¾Ð¼ÐµÑ€Ð°', 'Ã€ partir du numÃ©ro', 'ë°œì‹  ë²ˆí˜¸', 'Von Nummer', 'Dal numero', 'à¸ˆà¸²à¸à¸ˆà¸³à¸™à¸§à¸™', 'A szÃ¡mtÃ³l', 'Van nummer', 'Ex Number', 'Dari nomor', 'Numaradan', 'Î‘Ï€ÏŒ Ï„Î¿Î½ Î±ÏÎ¹Î¸Î¼ÏŒ', 'Ø§Ø² Ø´Ù…Ø§Ø±Ù‡', 'Daripada Nombor', 'à°¸à°‚à°–à±à°¯ à°¨à±à°‚à°¡à°¿', 'à®Žà®£à¯ à®‡à®°à¯à®¨à¯à®¤à¯', 'àª¸àª‚àª–à«àª¯àª¾ àªªà«àª°àª¤àª¿', 'Z numeru', 'Ð— Ñ‡Ð¸ÑÐ»Ð°', 'à¨¨à©°à¨¬à¨° à¨¤à©‹à¨‚', 'Din numÄƒrul', 'á€”á€¶á€•á€«á€á€º á€™á€¾á€….', 'Lati Ná»mba', 'Daga Lambar', NULL, NULL),
(144, 'number', 'Number', 'নম্বর ', 'NÃºmero', 'Ø±Ù‚Ù…', 'à¤¸à¤‚à¤–à¥à¤¯à¤¾', 'Ù†Ù…Ø¨Ø±', 'æ•°', 'æ•°', 'NÃºmero', 'Ð§Ð¸ÑÐ»Ð¾', 'Nombre', 'ë²ˆí˜¸', 'Nummer', 'Numero', 'à¸ˆà¸³à¸™à¸§à¸™', 'SzÃ¡m', 'Aantal', 'numerus', 'Jumlah', 'Numara', 'Î‘ÏÎ¹Î¸Î¼ÏŒÏ‚', 'Ø¹Ø¯Ø¯', 'Nombor', 'à°¸à°‚à°–à±à°¯', 'à®Žà®£à¯', 'àª¸àª‚àª–à«àª¯àª¾', 'Numer', 'ÐÐ¾Ð¼ÐµÑ€', 'à¨—à¨¿à¨£à¨¤à©€', 'NumÄƒr', 'á€‚á€á€”á€ºá€¸', 'Ná»mba', 'Lambar', NULL, NULL),
(145, 'from', 'From', 'ফ্রম ', 'De', 'Ù…Ù† Ø¹Ù†Ø¯', 'à¤¸à¥‡', 'Ø³Û’', 'ä»Ž', 'ã‹ã‚‰', 'A partir de', 'Ð˜Ð·', 'De', 'ì—ì„œ', 'Von', 'A partire dal', 'à¸ˆà¸²à¸', 'TÃ³l tÅ‘l', 'Van', 'Ex', 'Dari', 'itibaren', 'Î‘Ï€ÏŒ', 'Ø§Ø² Ø¬Ø§Ù†Ø¨', 'Dari', 'à°¨à±à°‚à°¡à°¿', 'à®‡à®°à¯à®¨à¯à®¤à¯', 'àªªà«àª°àª¤àª¿', 'Od', 'Ð’Ñ–Ð´', 'à¨¤à©‹à¨‚', 'Din', 'á€™á€¾', 'Lati', 'Daga', NULL, NULL),
(146, 'sender_id', 'Sender ID', 'প্রেরকের আইডি ', 'identificaciÃ³n del remitente', 'Ù‡ÙˆÙŠØ© Ø§Ù„Ù…Ø±Ø³Ù„', 'à¤ªà¥à¤°à¥‡à¤·à¤• à¤†à¤ˆà¤¡à¥€', 'Ø¨Ú¾ÛŒØ¬Ù†Û’ ÙˆØ§Ù„Û’ Ú©ÛŒ Ø´Ù†Ø§Ø®Øª', 'å‘ä»¶äººID', 'é€ä¿¡è€…ID', 'ID do remetente', 'Ð£Ð´Ð¾ÑÑ‚Ð¾Ð²ÐµÑ€ÐµÐ½Ð¸Ðµ Ð»Ð¸Ñ‡Ð½Ð¾ÑÑ‚Ð¸ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÐµÐ»Ñ', 'Identifiant dexpÃ©diteur', 'ë³´ë‚¸ ì‚¬ëžŒ ID', 'AbsenderidentitÃ¤t', 'identitÃ  del mittente', 'ID à¸œà¸¹à¹‰à¸ªà¹ˆà¸‡', 'Sender ID', 'zender ID', 'id mittens', 'ID pengirim', 'GÃ¶nderen KimliÄŸi', 'Ï„Î±Ï…Ï„ÏŒÏ„Î·Ï„Î± Î±Ï€Î¿ÏƒÏ„Î¿Î»Î­Î±', 'Ø´Ù†Ø§Ø³Ù‡ ÙØ±Ø³ØªÙ†Ø¯Ù‡', 'ID penghantar', 'à°ªà°‚à°ªà°¿à°¨à°µà°¾à°°à± ID', 'à®…à®©à¯à®ªà¯à®ªà®¿à®¯à®µà®°à¯ à®à®Ÿà®¿', 'àªªà«àª°à«‡àª·àª• ID', 'Identyfikator nadawcy', 'Ð†Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ñ€ Ð²Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð½Ð¸ÐºÐ°', 'à¨­à©‡à¨œà¨£ à¨µà¨¾à¨²à¨¾ ID', 'ID-ul expeditorului', 'á€•á€±á€¸á€•á€­á€¯á€·á€žá€° ID', 'Olu ID', 'Mai aikawa ID', NULL, NULL),
(147, 'activate', 'Activate', 'সচল করুন ', 'Activar', 'ØªÙØ¹ÙŠÙ„', 'à¤¸à¤•à¥à¤°à¤¿à¤¯', 'Ú†Ø§Ù„Ùˆ Ú©Ø±ÛŒÚº', 'å¯ç”¨', 'ã‚¢ã‚¯ãƒ†ã‚£ãƒ–åŒ–ã™ã‚‹', 'Ativar', 'Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'Activer', 'í™œì„±í™”', 'aktivieren Sie', 'Attivare', 'à¸à¸£à¸°à¸•à¸¸à¹‰à¸™', 'AktivÃ¡lja', 'Activeren', 'strenuus', 'Mengaktifkan', 'etkinleÅŸtirmek', 'Î˜Î­Ï„Ï‰ ÎµÎ¹Ï‚ ÎµÎ½Î­ÏÎ³ÎµÎ¹Î±Î½', 'ÙØ¹Ø§Ù„Ø³Ø§Ø²ÛŒ', 'Aktifkan', 'à°¸à°•à±à°°à°¿à°¯à°‚', 'à®šà¯†à®¯à®²à¯à®ªà®Ÿà¯à®¤à¯à®¤', 'àª¸àª•à«àª°àª¿àª¯ àª•àª°à«‹', 'Aktywuj', 'ÐÐºÑ‚Ð¸Ð²ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨¸à¨°à¨—à¨°à¨® à¨•à¨°à©‹', 'Activati', 'á€€á€­á€¯á€žá€€á€ºá€á€„á€º', 'Muu á¹£iá¹£áº¹', 'Kunna', NULL, NULL),
(148, 'label', 'Lavel', 'লেভেল ', 'Lavel', 'Lavel', 'Lavel', 'Ù„ÛŒÙ„ÛŒÙ„', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'Lavel', 'lavel', 'Lavel', 'Lavel', 'Lavel', 'lavel', 'Lavel', 'Ù„Ø§ÙˆØ¦Ù„', 'Lavel', 'Lavel', 'Lavel', 'àª²à«‡àªµà«‡àª²', 'Lavel', 'Ð›Ð°Ð²ÐµÐ»', 'à¨²à©‡à¨µà¨²', 'Lavel', 'Lavel', 'Lavel', 'Lavel', NULL, NULL),
(149, 'session_year', 'Session Year', 'সেশন ', 'AÃ±o de la sesiÃ³n', 'Ø³Ù†Ø© Ø§Ù„Ø¯ÙˆØ±Ø©', 'à¤¸à¤¤à¥à¤° à¤µà¤°à¥à¤·', 'Ø§Ø¬Ù„Ø§Ø³ Ú©Ø§ Ø³Ø§Ù„', 'ä¼šè®®å¹´', 'ã‚»ãƒƒã‚·ãƒ§ãƒ³å¹´', 'Ano da sessÃ£o', 'Ð¡ÐµÐ·Ð¾Ð½Ð½Ð¾ÑÑ‚ÑŒ', 'AnnÃ©e de la session', 'ì„¸ì…˜ ì—°ë„', 'Sitzungsjahr', 'Anno di sessione', 'à¸›à¸µà¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²', 'Session Year', 'Sessiejaar', 'Anno Sessio', 'Sesi Tahun', 'Oturum YÄ±lÄ±', 'ÎˆÏ„Î¿Ï‚ ÏƒÏ…Î½ÎµÎ´ÏÎ¯Î±Ï‚', 'Ø³Ø§Ù„ Ù†Ø´Ø³Øª', 'Tahun Sesi', 'à°¸à±†à°·à°¨à± à°‡à°¯à°°à±', 'à®…à®®à®°à¯à®µà¯ à®†à®£à¯à®Ÿà¯', 'àª¸àª¤à«àª° àªµàª°à«àª·', 'Rok sesji', 'Ð¡ÐµÑÑ–Ñ Ñ€Ð¾ÐºÑƒ', 'à¨¸à©ˆà¨¸à¨¼à¨¨ à¨¸à¨¾à¨²', 'Anul Sesiunii', 'session á€á€…á€ºá€”á€¾á€…á€ºá€á€¬', 'Akoko Odun', 'Zama Na Zama', NULL, NULL),
(150, 'is_default', 'Is Default?', 'ডিফল্ট ', 'Es predeterminado?', 'Ù‡Ù„ Ø§Ù„Ø§ÙØªØ±Ø§Ø¶ÙŠØŸ', 'à¤¡à¤¿à¤«à¤¼à¥‰à¤²à¥à¤Ÿ à¤¹à¥ˆ?', 'Ù¾ÛÙ„Û’ Ø³Û’ Ø·Û’ Ø´Ø¯Û ÛÛ’ØŸ', 'æ˜¯é»˜è®¤çš„ï¼Ÿ', 'ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã§ã™ã‹ï¼Ÿ', 'O padrÃ£o Ã©?', 'ÐŸÐ¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ?', 'Est par dÃ©faut?', 'ë””í´íŠ¸ì¸ê°€?', 'Ist Standard?', 'Ãˆ predefinito?', 'à¹€à¸›à¹‡à¸™à¸„à¹ˆà¸²à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™à¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ?', 'AlapÃ©rtelmezÃ©s?', 'Is standaard?', 'Default est?', 'Apakah Default?', 'VarsayÄ±lan mÄ±?', 'Î•Î¯Î½Î±Î¹ Ï€ÏÎ¿ÎµÏ€Î¹Î»Î¿Î³Î®;', 'Ù¾ÛŒØ´ ÙØ±Ø¶', 'Adakah Default?', 'à°¡à°¿à°«à°¾à°²à±à°Ÿà±?', 'à®‡à®¯à®²à¯à®ªà¯à®¨à®¿à®²à¯ˆà®¯à®¾?', 'àª¡àª¿àª«à«‰àª²à«àªŸ àª›à«‡?', 'Czy domyÅ›lne?', 'Ð—Ð° Ð·Ð°Ð¼Ð¾Ð²Ñ‡ÑƒÐ²Ð°Ð½Ð½ÑÐ¼?', 'à¨•à©€ à¨¡à¨¿à¨«à¨¾à¨²à¨Ÿ à¨¹à©ˆ?', 'Este implicit?', 'á€•á€¯á€¶á€™á€¾á€”á€ºá€–á€¼á€…á€ºá€žá€”á€Šá€ºá€¸', 'Ni aiyipada?', 'Shin Default?', NULL, NULL),
(151, 'module', 'Module', 'মডিউল ', 'MÃ³dulo', 'ÙˆØ­Ø¯Ø©', 'à¤®à¥‰à¤¡à¥à¤¯à¥‚à¤²', 'Ù…Ø§ÚˆÛŒÙˆÙ„', 'æ¨¡', 'ãƒ¢ã‚¸ãƒ¥ãƒ¼ãƒ«', 'MÃ³dulo', 'Ð¼Ð¾Ð´ÑƒÐ»ÑŒ', 'Module', 'ê¸°ì¤€ ì¹˜ìˆ˜', 'Modul', 'Modulo', 'à¹‚à¸¡à¸”à¸¹à¸¥', 'modul', 'module', 'OMNIBUS', 'Modul', 'modÃ¼l', 'ÎœÎ¿Î½Î¬Î´Î± Î¼Î­Ï„ÏÎ·ÏƒÎ·Ï‚', 'Ù…Ø§Ú˜ÙˆÙ„', 'Modul', 'à°®à°¾à°¡à±à°¯à±‚à°²à±', 'à®¤à¯†à®¾à®•à¯à®¤à®¿', 'àª®à«‹àª¡à«àª¯à«àª²', 'ModuÅ‚', 'ÐœÐ¾Ð´ÑƒÐ»ÑŒ', 'à¨®à©‹à¨¡à©€à¨Šà¨²', 'Modul', 'module á€á€…á€ºá€á€¯', 'Module', 'Module', NULL, NULL),
(152, 'function', 'Function', 'ফাংশন ', 'FunciÃ³n', 'ÙˆØ¸ÙŠÙØ©', 'à¤¸à¤®à¤¾à¤°à¥‹à¤¹', 'ÙÙ†Ú©Ø´Ù†', 'åŠŸèƒ½', 'é–¢æ•°', 'FunÃ§Ã£o', 'Ñ„ÑƒÐ½ÐºÑ†Ð¸Ñ', 'Fonction', 'ê¸°ëŠ¥', 'Funktion', 'Funzione', 'à¸Ÿà¸±à¸‡à¸à¹Œà¸Šà¸±à¸™', 'FunkciÃ³', 'Functie', 'Officium', 'Fungsi', 'fonksiyon', 'Î›ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±', 'Ø¹Ù…Ù„Ú©Ø±Ø¯', 'Fungsi', 'à°«à°‚à°•à±à°·à°¨à±', 'à®µà®¿à®´à®¾', 'àª•àª¾àª°à«àª¯', 'FunkcjonowaÄ‡', 'Ð¤ÑƒÐ½ÐºÑ†Ñ–Ñ', 'à¨«à©°à¨•à¨¸à¨¼à¨¨', 'FuncÅ£ie', 'á€œá€¯á€•á€ºá€†á€±á€¬á€„á€ºá€á€»á€€á€º', 'IÅ¡áº¹', 'Yanayi', NULL, NULL),
(153, 'confirm', 'Confirm', 'কনফার্ম করুন ', 'Confirmar', 'ØªØ¤ÙƒØ¯', 'à¤•à¥€ à¤ªà¥à¤·à¥à¤Ÿà¤¿ à¤•à¤°à¥‡à¤‚', 'ØªØµØ¯ÛŒÙ‚ Ú©Ø±ÛŒÚº', 'ç¡®è®¤', 'ç¢ºèª', 'confirme', 'Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¸Ñ‚ÑŒ', 'Confirmer', 'í™•ì¸', 'BestÃ¤tigen', 'Confermare', 'à¸¢à¸·à¸™à¸¢à¸±à¸™', 'megerÅ‘sÃ­t', 'Bevestigen', 'Constituo', 'Memastikan', 'Onaylamak', 'Î•Ï€Î¹Î²ÎµÎ²Î±Î¹ÏŽÎ½Ï‰', 'ØªØ§ÛŒÛŒØ¯', 'Sahkan', 'à°¨à°¿à°°à±à°§à°¾à°°à°¿à°‚à°šà°‚à°¡à°¿', 'à®‰à®±à¯à®¤à®¿à®ªà¯à®ªà®Ÿà¯à®¤à¯à®¤à®µà¯à®®à¯', 'àªªà«àª·à«àªŸàª¿ àª•àª°à«‹', 'PotwierdzaÄ‡', 'ÐŸÑ–Ð´Ñ‚Ð²ÐµÑ€Ð´ÑŒÑ‚Ðµ', 'à¨ªà©à¨¸à¨¼à¨Ÿà©€ à¨•à¨°à©‹', 'A confirma', 'á€¡á€á€Šá€ºá€•á€¼á€¯', 'Jáº¹risi', 'Tabbatar', NULL, NULL),
(154, 'database', 'Database', 'ডাটাবেজ ', 'Base de datos', 'Ù‚Ø§Ø¹Ø¯Ø© Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª', 'à¤¡à¥‡à¤Ÿà¤¾à¤¬à¥‡à¤¸', 'ÚˆÛŒÙ¹Ø§ Ø¨ÛŒØ³', 'æ•°æ®åº“', 'ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹', 'Base de dados', 'Ð‘Ð°Ð·Ð° Ð´Ð°Ð½Ð½Ñ‹Ñ…', 'Base de donnÃ©es', 'ë°ì´í„° ë² ì´ìŠ¤', 'Datenbank', 'Banca dati', 'à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥', 'adatbÃ¡zis', 'Database', 'database', 'Database', 'VeritabanÄ±', 'Î’Î¬ÏƒÎ· Î´ÎµÎ´Î¿Î¼Î­Î½Ï‰Î½', 'Ø¨Ø§Ù†Ú© Ø§Ø·Ù„Ø§Ø¹Ø§ØªÛŒ', 'Pangkalan data', 'à°¡à±‡à°Ÿà°¾à°¬à±‡à°¸à±', 'à®Ÿà¯‡à®Ÿà¯à®Ÿà®¾à®ªà¯‡à®¸à¯', 'àª¡à«‡àªŸàª¾àª¬à«‡àª', 'Baza danych', 'Ð‘Ð°Ð·Ð° Ð´Ð°Ð½Ð¸Ñ…', 'à¨¡à¨¾à¨Ÿà¨¾à¨¬à©‡à¨¸', 'BazÄƒ de date', 'á€’á€±á€á€¬á€˜á€±á€·á€…', 'Aaye data', 'Database', NULL, NULL),
(155, 'download', 'Download', 'ডাউনলোড ', 'Descargar', 'ØªØ­Ù…ÙŠÙ„', 'à¤¡à¤¾à¤‰à¤¨à¤²à¥‹à¤¡', 'ÚˆØ§Ø¤Ù† Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº', 'ä¸‹è½½', 'ãƒ€ã‚¦ãƒ³ãƒ­ãƒ¼ãƒ‰', 'Download', 'Ð¡ÐºÐ°Ñ‡Ð°Ñ‚ÑŒ', 'TÃ©lÃ©charger', 'ë‹¤ìš´ë¡œë“œ', 'Herunterladen', 'Scaricare', 'à¸”à¸²à¸§à¸™à¹Œà¹‚à¸«à¸¥à¸”', 'LetÃ¶ltÃ©s', 'Download', 'download', 'Download', 'Ä°ndir', 'ÎšÎ±Ï„ÎµÎ²Î¬ÏƒÏ„Îµ', 'Ø¯Ø§Ù†Ù„ÙˆØ¯', 'Muat turun', 'à°¡à±Œà°¨à±à°²à±‹à°¡à±', 'à®ªà®¤à®¿à®µà®¿à®±à®•à¯à®•', 'àª¡àª¾àª‰àª¨àª²à«‹àª¡ àª•àª°à«‹', 'Pobieranie', 'Ð—Ð°Ð²Ð°Ð½Ñ‚Ð°Ð¶Ð¸Ñ‚Ð¸', 'à¨¡à¨¾à¨Šà¨¨à¨²à©‹à¨¡ à¨•à¨°à©‹', 'Descarca', 'á€’á€±á€«á€„á€ºá€¸á€œá€¯á€•á€º', 'Gba lati ayelujara', 'Saukewa', NULL, NULL),
(156, 'join_date', 'Joining Date', 'যোগদানের তারিখ ', 'Dia de ingreso', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§Ù†Ø¶Ù…Ø§Ù…', 'à¤•à¤¾à¤°à¥à¤¯à¤—à¥à¤°à¤¹à¤£ à¤¤à¤¿à¤¥à¤¿', 'Ø´Ø§Ù…Ù„ ÛÙˆÙ†Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'å…¥èŒæ—¥æœŸ', 'å‚åŠ æ—¥', 'Data de ingresso', 'Ð”Ð°Ñ‚Ð° Ð²ÑÑ‚ÑƒÐ¿Ð»ÐµÐ½Ð¸Ñ', 'Date dinscription', 'ê°€ìž… ë‚ ì§œ', 'Beitrittsdatum', 'Data di adesione', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡', 'CsatlakozÃ¡si dÃ¡tum', 'Lid worden van datum', 'Adhaeret Date', 'Tanggal Bergabung', 'BirleÅŸtirme Tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± ÏƒÏÎ½Î´ÎµÏƒÎ·Ï‚', 'ØªØ§Ø±ÛŒØ® Ø¹Ø¶ÙˆÛŒØª', 'Menyertai Tarikh', 'à°¤à±‡à°¦à±€ à°šà±‡à°°à°¡à°‚', 'à®šà¯‡à®°à¯à®®à¯ à®¤à¯‡à®¤à®¿', 'àª¤àª¾àª°à«€àª– àªœà«‹àª¡àª¾àª¯àª¾', 'Data przyÅ‚Ä…czenia', 'Ð”Ð°Ñ‚Ð° Ð¿Ñ€Ð¸Ñ”Ð´Ð½Ð°Ð½Ð½Ñ', 'à¨¦à¨¾à¨–à¨² à¨¹à©‹à¨£ à¨¦à©€ à¨¤à¨¾à¨°à©€à¨–', 'Data Ã®mbinÄƒrii', 'á€”á€±á€·á€…á€½á€²á€œá€¬á€›á€±á€¬á€€á€ºá€•á€°á€¸á€•á€±á€«á€„á€ºá€¸', 'á»Œjá» Ajá»pá»', 'Ranar Jiki', NULL, NULL),
(157, 'present', 'Present', 'উপস্থিত ', 'Presente', 'à¦…à¦¨à§à¦¬à¦¾à¦¦ à¦¤à§à¦°à§à¦Ÿà¦¿', 'à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨', 'Ù…ÙˆØ¬ÙˆØ¯Û', 'å½“ä¸‹', 'ç¾åœ¨', 'Presente', 'Ð½Ð°ÑÑ‚Ð¾ÑÑ‰ÐµÐµ Ð²Ñ€ÐµÐ¼Ñ', 'PrÃ©sent', 'ì„ ë¬¼', 'Geschenk', 'Presente', 'à¸™à¸³à¹€à¸ªà¸™à¸­', 'AjÃ¡ndÃ©k', 'Aanwezig', 'praesenti', 'Menyajikan', 'Mevcut', 'Î Î±ÏÏŒÎ½', 'Ø­Ø§Ø¶Ø±', 'Hadir', 'à°ªà±à°°à°¸à±à°¤à±à°¤à°‚', 'à®¤à®±à¯à®ªà¯‡à®¾à®¤à¯ˆà®¯', 'àª¹àª¾àªœàª°', 'Obecny', 'ÐŸÐ¾Ð´Ð°Ñ€ÑƒÐ¹', 'à¨µà¨°à¨¤à¨®à¨¾à¨¨', 'Prezent', 'á€œá€€á€ºá€†á€±á€¬á€„á€º', 'Nisin', 'Gabatarwa', NULL, NULL),
(158, 'permanent', 'Permanent', 'স্থায়ী ', 'Permanente', 'Ø¯Ø§Ø¦Ù…', 'à¤¸à¥à¤¥à¤¾à¤¯à¥€', 'Ù…Ø³ØªÙ‚Ù„', 'å¸¸é©»', 'æ’ä¹…çš„ãª', 'Permanente', 'Ð¿ÐµÑ€Ð¼Ð°Ð½ÐµÐ½Ñ‚Ð½Ñ‹Ð¹', 'Permanent', 'í¼ë¨¸ë„ŒíŠ¸', 'Permanent', 'Permanente', 'à¸–à¸²à¸§à¸£', 'ÃllandÃ³', 'blijvend', 'permanent', 'Permanen', 'kalÄ±cÄ±', 'ÎœÏŒÎ½Î¹Î¼Î¿Ï‚', 'Ø¯Ø§Ø¦Ù…ÛŒ', 'Kekal', 'à°¶à°¾à°¶à±à°µà°¤', 'à®¨à®¿à®°à®¨à¯à®¤à®°', 'àª•àª¾àª¯àª®à«€', 'StaÅ‚y', 'ÐŸÐ¾ÑÑ‚Ñ–Ð¹Ð½Ð¸Ð¹', 'à¨¸à¨¥à¨¾à¨ˆ', 'Permanent', 'á€¡á€™á€¼á€²á€á€™á€ºá€¸', 'O yáº¹', 'Tabbatacce', NULL, NULL),
(159, 'gender', 'Gender', 'লিঙ্গ', 'GÃ©nero', 'Ø¬Ù†Ø³', 'à¤²à¤¿à¤‚à¤—', 'ØµÙ†Ù', 'æ€§åˆ«', 'æ€§åˆ¥', 'GÃªnero', 'ÐŸÐ¾Ð»', 'Le genre', 'ì„±ë³„', 'Geschlecht', 'Genere', 'à¹€à¸žà¸¨', 'nem', 'Geslacht', 'genus', 'Jenis kelamin', 'Cinsiyet', 'Î“Î­Î½Î¿Ï‚', 'Ø¬Ù†Ø³ÙŠØª', 'Jantina', 'à°œà±†à°‚à°¡à°°à±', 'à®ªà®¾à®²à®¿à®©à®®à¯', 'àªœàª¾àª¤àª¿', 'PÅ‚eÄ‡', 'Ð¡Ñ‚Ð°Ñ‚ÑŒ', 'à¨²à¨¿à©°à¨—', 'Gen', 'á€€á€»á€¬á€¸, á€™', 'Iwa', 'Gender', NULL, NULL),
(160, 'blood_group', 'Blood Group', 'রক্তের গ্রুপ ', 'Grupo sanguÃ­neo', 'ÙØµÙŠÙ„Ø© Ø§Ù„Ø¯Ù…', 'à¤°à¤•à¥à¤¤ à¤¸à¤®à¥‚à¤¹', 'Ø®ÙˆÙ† Ú¯Ø±ÙˆÙ¾', 'è¡€åž‹', 'è¡€æ¶²åž‹', 'Grupo sanguÃ­neo', 'Ð“Ñ€ÑƒÐ¿Ð¿Ð° ÐºÑ€Ð¾Ð²Ð¸', 'Groupe sanguin', 'í˜ˆì•¡í˜•', 'Blutgruppe', 'Gruppo sanguigno', 'à¸à¸£à¸¸à¹Šà¸›à¹€à¸¥à¸·à¸­à¸”', 'VÃ©rcsoport', 'Bloedgroep', 'Sanguine coetus', 'Golongan darah', 'Kan grubu', 'ÎŸÎ¼Î¬Î´Î± Î±Î¯Î¼Î±Ï„Î¿Ï‚', 'Ú¯Ø±ÙˆÙ‡ Ø®ÙˆÙ†ÛŒ', 'Kumpulan darah', 'à°°à°•à±à°¤à°ªà± à°—à±à°°à±‚à°ªà±', 'à®‡à®°à®¤à¯à®¤ à®µà®•à¯ˆ', 'àª¬à«àª²àª¡ àª—à«àª°à«àªª', 'Grupa krwi', 'Ð“Ñ€ÑƒÐ¿Ð° ÐºÑ€Ð¾Ð²Ñ–', 'à¨¬à¨²à©±à¨¡ à¨—à¨°à©à©±à¨ª', 'Grupa sanguinÄƒ', 'á€žá€½á€±á€¸á€¡á€¯á€•á€ºá€…á€¯', 'áº¸gbáº¹ áº¸jáº¹', 'Kungiyar Blood', NULL, NULL),
(161, 'group', 'Group', 'গ্রুপ ', 'Grupo', 'Ù…Ø¬Ù…ÙˆØ¹Ø©', 'à¤¸à¤®à¥‚à¤¹', 'Ú¯Ø±ÙˆÙ¾', 'ç»„', 'ã‚°ãƒ«ãƒ¼ãƒ—', 'Grupo', 'Ð³Ñ€ÑƒÐ¿Ð¿Ð°', 'Groupe', 'ê·¸ë£¹', 'Gruppe', 'Gruppo', 'à¸à¸¥à¸¸à¹ˆà¸¡', 'Csoport', 'Groep', 'Group', 'Kelompok', 'grup', 'ÎŸÎ¼Î¬Î´Î±', 'Ú¯Ø±ÙˆÙ‡', 'Kumpulan', 'à°—à±à°°à±‚à°ªà±', 'à®•à¯à®´à¯', 'àª—à«àª°à«àªª', 'Grupa', 'Ð“Ñ€ÑƒÐ¿Ð°', 'à¨—à¨°à©à©±à¨ª', 'grup', 'Group á€™á€¾', 'áº¸gbáº¹', 'Rukuni', NULL, NULL),
(162, 'religion', 'Religion', 'ধর্ম ', 'ReligiÃ³n', 'Ø¯ÙŠÙ†', 'à¤§à¤°à¥à¤®', 'Ù…Ø°ÛØ¨', 'å®—æ•™', 'å®—æ•™', 'ReligiÃ£o', 'Ñ€ÐµÐ»Ð¸Ð³Ð¸Ñ', 'Religion', 'ì¢…êµ', 'Religion', 'Religione', 'à¸¨à¸²à¸ªà¸™à¸²', 'VallÃ¡s', 'Religie', 'religio', 'Agama', 'Din', 'Î˜ÏÎ·ÏƒÎºÎµÎ¯Î±', 'Ø¯ÛŒÙ†', 'Agama', 'à°®à°¤à°‚', 'à®®à®¤à®®à¯', 'àª§àª°à«àª®', 'Religia', 'Ð ÐµÐ»Ñ–Ð³Ñ–Ñ', 'à¨§à¨°à¨®', 'Religie', 'á€˜á€¬á€žá€¬', 'Esin', 'Addini', NULL, NULL),
(163, 'birth_date', 'Birth Date', 'জন্ম তারিখ ', 'Fecha de nacimiento', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ù…ÙŠÙ„Ø§Ø¯', 'à¤œà¤¨à¥à¤® à¤¦à¤¿à¤¨', 'ØªØ§Ø±ÛŒØ® Ù¾ÛŒØ¯Ø§Ø¦Ø´', 'ç”Ÿæ—¥', 'èª•ç”Ÿæ—¥', 'Data de nascimento', 'Ð”Ð°Ñ‚Ð° Ñ€Ð¾Ð¶Ð´ÐµÐ½Ð¸Ñ', 'Date de naissance', 'ìƒì¼', 'Geburtsdatum', 'Data di nascita', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸à¸´à¸”', 'SzÃ¼letÃ©si dÃ¡tum', 'Geboortedatum', 'Dies natalis, diei natalis, m', 'Tanggal lahir', 'DoÄŸum gÃ¼nÃ¼', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î³Î­Î½Î½Î·ÏƒÎ·Ï‚', 'ØªØ§Ø±ÛŒØ® ØªÙˆÙ„Ø¯', 'Tarikh lahir', 'à°ªà±à°Ÿà±à°Ÿà°¿à°¨ à°¤à±‡à°¦à±€', 'à®ªà®¿à®±à®¨à¯à®¤ à®¤à¯‡à®¤à®¿', 'àªœàª¨à«àª®àª¤àª¾àª°à«€àª–', 'Data urodzenia', 'Ð”Ð°Ñ‚Ð° Ð½Ð°Ñ€Ð¾Ð´Ð¶ÐµÐ½Ð½Ñ', 'à¨œà¨¨à¨® à¨®à¨¿à¨¤à©€', 'Data nasterii', 'á€™á€½á€±á€¸á€›á€€á€º', 'Ojo ibi', 'Ranar haifuwa', NULL, NULL),
(164, 'resume', 'Resume', 'জীবনবৃত্তান্ত', 'CurrÃ­culum', 'Ø§Ø³ØªØ¦Ù†Ù', 'à¤¬à¤¾à¤¯à¥‹à¤¡à¤¾à¤Ÿà¤¾', 'Ø¯ÙˆØ¨Ø§Ø±Û Ø´Ø±ÙˆØ¹ Ú©Ø±ÛŒÚº', 'æ¢å¤', 'å±¥æ­´æ›¸', 'CurrÃ­culo', 'ÐŸÑ€Ð¾Ð´Ð¾Ð»Ð¶Ð¸Ñ‚ÑŒ', 'CV', 'ì´ë ¥ì„œ', 'Fortsetzen', 'Curriculum vitae', 'à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸¢à¹ˆà¸­', 'Ã–nÃ©letrajz', 'Hervat', 'Proin', 'Lanjut', 'Devam et', 'Î’Î™ÎŸÎ“Î¡Î‘Î¦Î™ÎšÎŸ', 'Ø®Ù„Ø§ØµÙ‡', 'Teruskan', 'à°ªà±à°¨à°ƒà°ªà±à°°à°¾à°°à°‚à°­à°‚', 'à®¤à®±à¯à®•à¯à®±à®¿à®ªà¯à®ªà¯', 'àª«àª°à«€ àª¶àª°à« àª•àª°àªµà«àª‚', 'Wznawianie', 'Ð ÐµÐ·ÑŽÐ¼Ðµ', 'à¨®à©à©œ à¨¸à¨¼à©à¨°à©‚ à¨•à¨°à©‹', 'Relua', 'á€•á€¼á€”á€ºá€…á€žá€Šá€º', 'Tun pada', 'Tsayawa', NULL, NULL),
(165, 'other_info', 'Other Info', 'অন্যান্য তথ্য ', 'Otra informaciÃ³n', 'Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ø®Ø±Ù‰', 'à¤…à¤¨à¥à¤¯ à¤¸à¥‚à¤šà¤¨à¤¾', 'Ø¯ÛŒÚ¯Ø± Ù…Ø¹Ù„ÙˆÙ…Ø§Øª', 'å…¶ä»–ä¿¡æ¯', 'ä»–ã®æƒ…å ±', 'Outras informaÃ§Ãµes', 'Ð”Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ', 'Autre info', 'ê¸°íƒ€ ì •ë³´', 'Andere Information', 'Altre informazioni', 'à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸­à¸·à¹ˆà¸™ à¹†', 'MÃ¡s informÃ¡ciÃ³', 'Andere informatie', 'alii Info', 'Info lain', 'DiÄŸer Bilgiler', 'Î†Î»Î»ÎµÏ‚ Ï€Î»Î·ÏÎ¿Ï†Î¿ÏÎ¯ÎµÏ‚', 'Ø³Ø§ÛŒØ± Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'Maklumat Lain', 'à°‡à°¤à°° à°¸à°®à°¾à°šà°¾à°°à°‚', 'à®®à®±à¯à®± à®¤à®•à®µà®²à¯', 'àª…àª¨à«àª¯ àª®àª¾àª¹àª¿àª¤à«€', 'Inne informacje', 'Ð†Ð½ÑˆÐ° Ñ–Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ñ–Ñ', 'à¨¹à©‹à¨° à¨œà¨¾à¨£à¨•à¨¾à¨°à©€', 'Alte informaÈ›ii', 'á€¡á€á€¼á€¬á€¸á€¡á€¡á€„á€ºá€–á€­á€¯', 'Alaye miiran', 'Sauran Bayanan', NULL, NULL),
(166, 'numeric', 'Numeric', 'সাংখ্যিক ', 'NumÃ©rico', 'Ø±Ù‚Ù…ÙŠØ©', 'à¤¸à¤‚à¤–à¥à¤¯à¤¾à¤¤à¥à¤®à¤•', 'ØªØ¹Ø¯Ø§Ø¯', 'æ•°å­—', 'æ•°å€¤', 'NumÃ©rico', 'Ñ‡Ð¸ÑÐ»Ð¾Ð²Ð¾Ð¹', 'NumÃ©rique', 'ìˆ«ìž', 'Numerisch', 'Numerico', 'à¹€à¸›à¹‡à¸™à¸•à¸±à¸§à¹€à¸¥à¸‚', 'numerikus', 'numerieke', 'Ordo numerorum', 'Numerik', 'SayÄ±sal', 'Î‘ÏÎ¹Î¸Î¼Î·Ï„Î¹ÎºÏŒÏ‚', 'Ø¹Ø¯Ø¯ÛŒ', 'Angka', 'à°¸à°‚à°–à±à°¯à°¾', 'à®Žà®£à¯', 'àª¸àª‚àª–à«àª¯àª¾àª¤à«àª®àª•', 'Numeryczne', 'Ð§Ð¸ÑÐµÐ»ÑŒÐ½Ð¸Ð¹', 'à¨¨à©à¨®à¨¾à¨‡à¨•', 'Numeric', 'á€‚á€á€”á€ºá€¸', 'Ná»mba', 'Numeric', NULL, NULL),
(167, 'code', 'Code', 'কোড ', 'CÃ³digo', 'Ø§Ù„Ø´ÙØ±Ø©', 'à¤•à¥‹à¤¡', 'Ú©ÙˆÚˆ', 'ç ', 'ã‚³ãƒ¼ãƒ‰', 'CÃ³digo', 'ÐšÐ¾Ð´', 'Code', 'ì•”í˜¸', 'Code', 'Codice', 'à¸£à¸«à¸±à¸ª', 'KÃ³d', 'Code', 'Code', 'Kode', 'kod', 'ÎšÏŽÎ´Î¹ÎºÎ±Ï‚', 'Ú©Ø¯', 'Kod', 'à°•à±‹à°¡à±', 'à®•à¯à®±à®¿à®¯à¯€à®Ÿà¯', 'àª•à«‹àª¡', 'Kod', 'ÐšÐ¾Ð´', 'à¨•à©‹à¨¡', 'Cod', 'á€€á€¯á€’á€º', 'Koodu', 'Code', NULL, NULL),
(168, 'pass_mark', 'Pass Mark', 'পাশ নম্বর ', 'Aprobado', 'Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±', 'à¤‰à¤¤à¥€à¤°à¥à¤£à¤¾à¤‚à¤•', 'Ù†Ø´Ø§Ù† Ù…Ø§Ø±Ú©', 'åˆæ ¼æ ‡å¿—', 'ãƒ‘ã‚¹ãƒžãƒ¼ã‚¯', 'Pass Mark', 'ÐŸÑ€Ð¾Ñ…Ð¾Ð´Ð½Ð¾Ð¹ Ð±Ð°Ð»Ð»', 'Moyenne', 'íŒ¨ìŠ¤ ë§ˆí¬', 'Mindestpunktzahl', 'Punteggio minimo', 'à¸œà¹ˆà¸²à¸™à¸¡à¸²à¸£à¹Œà¸„', 'MinimÃ¡lis pontszÃ¡m', 'Pass Mark', 'Mark Tempus', 'Pass Mark', 'GeÃ§me notu', 'Î ÎµÏÎ¬ÏƒÏ„Îµ Ï„Î¿ ÏƒÎ®Î¼Î±', 'Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù†', 'Pas Mark', 'à°ªà°¾à°¸à± à°®à°¾à°°à±à°•à±', 'à®¤à¯‡à®°à¯à®šà¯à®šà®¿ à®®à®¤à®¿à®ªà¯à®ªà¯†à®£à¯', 'àªªàª¾àª¸ àª®àª¾àª°à«àª•', 'PrzekaÅ¼ Marka', 'ÐŸÑ€Ð¾Ð¹Ñ‚Ð¸ Ð¼Ð°Ñ€ÐºÑƒ', 'à¨®à¨¾à¨°à¨• à¨ªà¨¾à¨¸ à¨•à¨°à©‹', 'Nota de trecere', 'á€™á€¬á€€á€¯á€–á€¼á€á€ºá€žá€½á€¬á€¸', 'á¹¢e ami Marku', 'Alamar tafiya', NULL, NULL),
(169, 'full_mark', 'Full Mark', 'সম্পূর্ণ নম্বর ', 'Marca completa', 'Ø¯Ø±Ø¬Ø© ÙƒØ§Ù…Ù„Ø©', 'à¤ªà¥‚à¤°à¥à¤£ à¤…à¤‚à¤•', 'Ù…Ú©Ù…Ù„ Ù†Ø´Ø§Ù†', 'æ»¡åˆ†', 'æº€ç‚¹', 'Nota mÃ¡xima', 'ÐžÑ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ Ð²ÑÐµ', 'Pleine marque', 'ë§Œì ', 'Volle Markierung', 'Full Mark', 'à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¹€à¸•à¹‡à¸¡à¸£à¸¹à¸›à¹à¸šà¸š', 'Teljes Mark', 'Volle markering', 'Mark plena', 'Tanda penuh', 'Tam not', 'Î Î»Î®ÏÎµÏ‚ ÏƒÎ®Î¼Î±', 'Ø¹Ù„Ø§Ù…Øª Ú©Ø§Ù…Ù„', 'Mark penuh', 'à°ªà±‚à°°à±à°¤à°¿ à°®à°¾à°°à±à°•à±à°²à±', 'à®®à¯à®´à¯ à®®à®¤à®¿à®ªà¯à®ªà¯†à®£à¯', 'àª¸àª‚àªªà«‚àª°à«àª£ àª®àª¾àª°à«àª•', 'PeÅ‚ny znak', 'ÐŸÐ¾Ð²Ð½Ð¸Ð¹ ÐœÐ°Ñ€Ðº', 'à¨ªà©‚à¨°à¨¾ à¨®à¨¾à¨°à¨•', 'Nota maxima', 'á€¡á€•á€¼á€Šá€ºá€·á€¡á€á€™á€¬á€€á€¯', 'Samisi Kikun', 'Alamar cikakke', NULL, NULL),
(170, 'author', 'Author', 'লেখক ', 'Autor', 'Ù…Ø¤Ù„Ù', 'à¤²à¥‡à¤–à¤•', 'Ù…ØµÙ†Ù', 'ä½œè€…', 'è‘—è€…', 'Autor', 'Ð°Ð²Ñ‚Ð¾Ñ€', 'Auteur', 'ì €ìž', 'Autor', 'Autore', 'à¸œà¸¹à¹‰à¹€à¸‚à¸µà¸¢à¸™', 'SzerzÅ‘', 'Auteur', 'auctor', 'Penulis', 'Yazar', 'Î£Ï…Î³Î³ÏÎ±Ï†Î­Î±Ï‚', 'Ù†ÙˆÛŒØ³Ù†Ø¯Ù‡', 'Pengarang', 'à°°à°šà°¯à°¿à°¤', 'à®†à®šà®¿à®°à®¿à®¯à®°à¯', 'àª²à«‡àª–àª•', 'Autor', 'ÐÐ²Ñ‚Ð¾Ñ€', 'à¨²à©‡à¨–à¨•', 'Autor', 'á€…á€¬á€›á€±á€¸á€žá€°', 'Onká»we', 'Mawallafin', NULL, NULL),
(171, 'day', 'Day', 'দিন ', 'DÃ­a', 'ÙŠÙˆÙ…', 'à¤¦à¤¿à¤¨', 'Ø¯Ù†', 'å¤©', 'æ—¥', 'Dia', 'Ð”ÐµÐ½ÑŒ', 'DayjournÃ©e', 'ì¼', 'Tag', 'Giorno', 'à¸§à¸±à¸™', 'Nap', 'Dag', 'Dies', 'Hari', 'GÃ¼n', 'Î—Î¼Î­ÏÎ±', 'Ø±ÙˆØ²', 'Hari', 'à°¡à±‡', 'à®¤à®¿à®©à®®à¯', 'àª¦àª¿àªµàª¸', 'DzieÅ„', 'Ð”ÐµÐ½ÑŒ', 'à¨¦à¨¿à¨¨', 'Zi', 'á€”á€±á€·', 'á»Œjá»', 'Ranar', NULL, NULL),
(172, 'start_time', 'Start Time', 'প্রারম্ভিক সময় ', 'Hora de inicio', 'ÙˆÙ‚Øª Ø§Ù„Ø¨Ø¯Ø¡', 'à¤¸à¤®à¤¯ à¤¶à¥à¤°à¥‚', 'ÙˆÙ‚Øª Ø¢ØºØ§Ø²', 'å¼€å§‹æ—¶é—´', 'å§‹ã¾ã‚‹æ™‚é–“', 'Hora de inÃ­cio', 'Ð’Ñ€ÐµÐ¼Ñ Ð½Ð°Ñ‡Ð°Ð»Ð°', 'Heure de dÃ©but', 'ì‹œìž‘ ì‹œê°„', 'Startzeit', 'Ora di inizio', 'à¹€à¸§à¸¥à¸²à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™', 'KezdÃ©si idÅ‘', 'Starttijd', 'Satus tempus', 'Waktu mulai', 'BaÅŸlama zamanÄ±', 'Î©ÏÎ± Î­Î½Î±ÏÎ¾Î·Ï‚', 'Ø²Ù…Ø§Ù† Ø´Ø±ÙˆØ¹', 'Masa mula', 'à°¸à°®à°¯à°‚ à°ªà±à°°à°¾à°°à°‚à°­à°¿à°‚à°šà°‚à°¡à°¿', 'à®†à®°à®®à¯à®ªà®¿à®•à¯à®•à¯à®®à¯ à®¨à¯‡à®°à®®à¯', 'àªªà«àª°àª¾àª°àª‚àª­ àª¸àª®àª¯', 'Czas rozpoczÄ™cia', 'Ð§Ð°Ñ Ð¿Ð¾Ñ‡Ð°Ñ‚ÐºÑƒ', 'à¨¸à¨¼à©à¨°à©‚à¨†à¨¤à©€ à¨¸à¨®à¨¾à¨‚', 'Timpul de Ã®ncepere', 'start á€€á€­á€¯á€¡á€á€»á€­á€”á€º', 'Aago Ibáº¹ráº¹', 'Fara lokaci', NULL, NULL),
(173, 'end_time', 'End Time', 'শেষ করার সময় ', 'Hora de finalizaciÃ³n', 'ÙˆÙ‚Øª Ø§Ù„Ù†Ù‡Ø§ÙŠØ©', 'à¤…à¤‚à¤¤à¤¿à¤® à¤¸à¤®à¤¯', 'Ø¢Ø®Ø± ÙˆÙ‚Øª', 'æ—¶é—´ç»“æŸ', 'çµ‚äº†æ™‚é–“', 'Fim do tempo', 'Ð’Ñ€ÐµÐ¼Ñ Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ð½Ð¸Ñ', 'Heure de fin', 'ì¢…ë£Œ ì‹œê°„', 'Endzeit', 'Fine del tempo', 'à¹€à¸§à¸¥à¸²à¸ªà¸´à¹‰à¸™à¸ªà¸¸à¸”', 'IdÅ‘ vÃ©ge', 'Eindtijd', 'finis Tempus', 'Akhir waktu', 'BitiÅŸ zamanÄ±', 'Î¤Î­Î»Î¿Ï‚ Ï‡ÏÏŒÎ½Î¿Ï…', 'Ø²Ù…Ø§Ù† Ù¾Ø§ÛŒØ§Ù†', 'Masa tamat', 'à°®à±à°—à°¿à°‚à°ªà± à°¸à°®à°¯à°‚', 'à®®à¯à®Ÿà®¿à®µà¯ à®¨à¯‡à®°à®®à¯', 'àª¸àª®àª¾àªªà«àª¤àª¿ àª¸àª®àª¯', 'Koniec czasu', 'ÐšÑ–Ð½ÐµÑ†ÑŒ Ñ‡Ð°ÑÑƒ', 'à¨…à©°à¨¤ à¨¸à¨®à¨¾à¨‚', 'Ora de terminare', 'á€¡á€†á€¯á€¶á€¸á€¡á€á€»á€­á€”á€º', 'Aago ipari', 'Æ˜arshen lokaci', NULL, NULL),
(174, 'start_date', 'Start Date', 'প্রারম্ভিক তারিখ ', 'Fecha de inicio', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø¨Ø¯Ø¡', 'à¤†à¤°à¤‚à¤­ à¤•à¤°à¤¨à¥‡ à¤•à¥€ à¤¤à¤¿à¤¥à¤¿', 'Ø´Ø±ÙˆØ¹ Ú©Ø±Ù†Û’ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'å¼€å§‹æ—¥æœŸ', 'é–‹å§‹æ—¥', 'Data de inÃ­cio', 'Ð”Ð°Ñ‚Ð° Ð½Ð°Ñ‡Ð°Ð»Ð°', 'Date de dÃ©but', 'ì‹œìž‘ ë‚ ì§œ', 'Anfangsdatum', 'Data dinizio', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™', 'KezdÅ‘ dÃ¡tum', 'Begin datum', 'Date incipere', 'Mulai tanggal', 'BaÅŸlangÄ±Ã§ tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î­Î½Î±ÏÎ¾Î·Ï‚', 'ØªØ§Ø±ÛŒØ® Ø´Ø±ÙˆØ¹', 'Tarikh mula', 'à°ªà±à°°à°¾à°°à°‚à°¬à°ªà± à°¤à±‡à°¦à°¿', 'à®¤à¯Šà®Ÿà®•à¯à®• à®¤à¯‡à®¤à®¿', 'àªªà«àª°àª¾àª°àª‚àª­ àª¤àª¾àª°à«€àª–', 'Data rozpoczÄ™cia', 'Ð”Ð°Ñ‚Ð° Ð¿Ð¾Ñ‡Ð°Ñ‚ÐºÑƒ', 'à¨¤à¨¾à¨°à©€à¨– à¨¸à¨¼à©à¨°à©‚', 'Data de Ã®nceput', 'á€…á€á€„á€ºá€žá€Šá€ºá€·á€›á€€á€ºá€…á€½á€²', 'á»Œjá» Báº¹ráº¹', 'Fara Farawa', NULL, NULL),
(175, 'end_date', 'End Date', 'শেষ করার তারিখ ', 'Fecha final', 'ØªØ§Ø±ÙŠØ® Ø§Ù„Ø§Ù†ØªÙ‡Ø§Ø¡', 'à¤…à¤‚à¤¤à¤¿à¤® à¤¤à¤¿à¤¥à¤¿', 'Ø¢Ø®Ø±ÛŒ ØªØ§Ø±ÛŒØ®', 'ç»“æŸæ—¥æœŸ', 'çµ‚äº†æ—¥', 'Data final', 'Ð”Ð°Ñ‚Ð° Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ð½Ð¸Ñ', 'Date de fin', 'ì¢…ë£Œì¼', 'Endtermin', 'Data di fine', 'à¸§à¸±à¸™à¸—à¸µà¹ˆà¸ªà¸´à¹‰à¸™à¸ªà¸¸à¸”', 'BefejezÃ©s dÃ¡tuma', 'Einddatum', 'finis Date', 'Tanggal akhir', 'BitiÅŸ tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Î»Î®Î¾Î·Ï‚', 'ØªØ§Ø±ÛŒØ® Ù¾Ø§ÛŒØ§Ù†', 'Tarikh tamat', 'à°†à°–à°°à°¿ à°¤à±‡à°¦à°¿', 'à®•à®Ÿà¯ˆà®šà®¿ à®¤à¯‡à®¤à®¿', 'àª…àª‚àª¤àª¿àª® àª¤àª¾àª°à«€àª–', 'Data koÅ„cowa', 'Ð”Ð°Ñ‚Ð° Ð·Ð°ÐºÑ–Ð½Ñ‡ÐµÐ½Ð½Ñ', 'à¨…à©°à¨¤ à¨¦à©€ à¨®à¨¿à¨¤à©€', 'Data de Ã®ncheiere', 'á€¡á€†á€¯á€¶á€¸á€”á€±á€·á€…á€½á€²', 'á»Œjá» ipari', 'Æ˜arshe Ranar', NULL, NULL),
(176, 'relation', 'Relation', 'সম্পর্ক ', 'RelaciÃ³n', 'Ø¹Ù„Ø§Ù‚Ø©', 'à¤°à¤¿à¤¶à¥à¤¤à¤¾', 'ØªØ¹Ù„Ù‚Ø§Øª', 'å…³ç³»', 'é–¢ä¿‚', 'RelaÃ§Ã£o', 'Ð¡Ð²ÑÐ·ÑŒ', 'Relation', 'ê´€ê³„', 'Beziehung', 'Relazione', 'à¸„à¸§à¸²à¸¡à¸ªà¸±à¸¡à¸žà¸±à¸™à¸˜à¹Œ', 'Kapcsolat', 'Relatie', 'relatione', 'Hubungan', 'iliÅŸki', 'Î£Ï‡Î­ÏƒÎ·', 'Ø±Ø§Ø¨Ø·Ù‡', 'Hubungan', 'à°°à°¿à°²à±‡à°·à°¨à±', 'à®‰à®±à®µà¯', 'àª¸àª‚àª¬àª‚àª§', 'Relacja', 'Ð’Ñ–Ð´Ð½Ð¾ÑÐ¸Ð½Ð¸', 'à¨¸à¨¬à©°à¨§', 'RelaÈ›ie', 'á€†á€¾á€±á€™á€¼á€­á€¯á€¸', 'Ibasepo', 'Hada dangantaka', NULL, NULL),
(177, 'profession', 'Profession', 'পেশা', 'ProfesiÃ³n', 'Ù…Ù‡Ù†Ø©', 'à¤µà¥à¤¯à¤µà¤¸à¤¾à¤¯', 'Ù¾ÛŒØ´Û', 'èŒä¸š', 'è·æ¥­', 'ProfissÃ£o', 'Ð¿Ñ€Ð¾Ñ„ÐµÑÑÐ¸Ñ', 'MÃ©tier', 'ì§ì—…', 'Beruf', 'Professione', 'à¸­à¸²à¸Šà¸µà¸ž', 'Szakma', 'Beroep', 'professionis', 'Profesi', 'Meslek', 'Î•Ï€Î¬Î³Î³ÎµÎ»Î¼Î±', 'Ø­Ø±ÙÙ‡', 'Profesion', 'à°µà±ƒà°¤à±à°¤à°¿', 'à®¤à¯†à®¾à®´à®¿à®²à¯', 'àªµà«àª¯àªµàª¸àª¾àª¯', 'ZawÃ³d', 'ÐŸÑ€Ð¾Ñ„ÐµÑÑ–Ñ', 'à¨ªà©‡à¨¸à¨¼à¨¾', 'Profesie', 'á€¡á€œá€¯á€•á€ºá€¡á€€á€­á€¯á€„á€º', 'Oá¹£iá¹£áº¹', 'Zama', NULL, NULL),
(178, 'roll_no', 'Roll No', 'রোল নম্বর ', 'Rollo No', 'Ø±ÙˆÙ„ Ù†Ùˆ', 'à¤…à¤¨à¥à¤•à¥à¤°à¤®à¤¾à¤‚à¤•', 'Ø±ÙˆÙ„ Ù†Ù…Ø¨Ø± Ù†ÛÛŒÚº', 'å·å·', 'ãƒ­ãƒ¼ãƒ«No', 'Roll No', 'ÐÐµÑ‚', 'Rouler Non', 'ë¡¤ ì•„ë‹ˆìš”', 'Rolle Nr', 'Rotolo n', 'à¸‰à¸šà¸±à¸šà¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸¡à¸µ', 'Roll No', 'Roll No', 'Nulla volvunt', 'Roll No', 'Rulo HayÄ±r', 'ÏÎ¿Î»ÏŒ Î±ÏÎ¹Î¸', 'Ø±ÙˆÙ„ Ù†Ù‡', 'Roll No', 'à°°à±‹à°²à± à°¨à°‚', 'à®°à¯‹à®²à¯ à®‡à®²à¯à®²à¯ˆ', 'àª°à«‹àª² àª¨àª‚', 'RzuÄ‡ nr', 'Ñ€Ð¾Ð»Ð» Ð½ÐµÐ¼Ð°Ñ”', 'à¨°à©‹à¨² à¨¨à©°à¨¬à¨° à¨¨à¨¹à©€à¨‚', 'Rola numÄƒrul', 'á€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™á€œá€¾á€­á€™á€·á€ºá€•á€¯á€¶', 'Roll Báº¹áº¹ká»', 'Roll Babu', NULL, NULL),
(179, 'registration_no', 'Registration No', 'রেজিস্ট্রেশন নম্বর ', 'NÃºmero de registro', 'Ø±Ù‚Ù… Ø§Ù„ØªØ³Ø¬ÙŠÙ„', 'à¤ªà¤‚à¤œà¥€à¤•à¤°à¤£ à¤•à¥à¤°à¤®à¤¾à¤‚à¤•', 'Ø±Ø¬Ø³Ù¹Ø±ÛŒØ´Ù† Ù†Ù…Ø¨Ø±', 'æ³¨å†Œå·', 'ç™»éŒ²ç•ªå·', 'nÃºmero de registro', 'Ð½Ð¾Ð¼ÐµÑ€ Ñ€ÐµÐ³Ð¸ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¸', 'N Â° denregistrement', 'ë“±ë¡ ë²ˆí˜¸', 'Registrierungsnr', 'Registrazione N', 'à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸—à¸°à¹€à¸šà¸µà¸¢à¸™', 'regisztrÃ¡ciÃ³s szÃ¡m', 'Registratienummer', 'No registration', 'Pendaftaran No', 'kayÄ±t numarasÄ±', 'Î±ÏÎ¹Î¸Î¼ÏŒÏ‚ ÎºÎ±Ï„Î±Ï‡ÏŽÏÎ·ÏƒÎ·Ï‚', 'Ø´Ù…Ø§Ø±Ù‡ Ø«Ø¨Øª Ù†Ø§Ù…', 'Nombor pendaftaran', 'à°¨à°®à±‹à°¦à± à°¸à°‚à°–à±à°¯', 'à®ªà®¤à®¿à®µà¯ à®Žà®£à¯', 'àª¨à«‹àª‚àª§àª£à«€ àª¨àª‚', 'Numer rejestracyjny', 'ÐÐ¾Ð¼ÐµÑ€ Ñ€ÐµÑ”ÑÑ‚Ñ€Ð°Ñ†Ñ–Ñ—', 'à¨°à¨œà¨¿à¨¸à¨Ÿà¨°à©‡à¨¸à¨¼à¨¨ à¨¨à©°à¨¬à¨°', 'nr. de inregistrare', 'á€™á€¾á€á€ºá€•á€¯á€¶á€á€„á€ºá€á€¼á€„á€ºá€¸á€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'Iforuká» siláº¹ Ko si', 'Lambar rajista', NULL, NULL),
(180, 'present_all', 'Present All', 'সকলেই উপস্থিত ', 'Presente todo', 'Ø§Ù„Ø­Ø§Ù„ÙŠ Ø§Ù„ÙƒÙ„', 'à¤¸à¤­à¥€ à¤•à¥‹ à¤ªà¥à¤°à¤¸à¥à¤¤à¥à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³Ø¨ Ù¾ÛŒØ´', 'çŽ°åœ¨æ‰€æœ‰', 'ã™ã¹ã¦ã‚’è¡¨ç¤º', 'Presente tudo', 'ÐŸÑ€ÐµÐ´ÑÑ‚Ð°Ð²Ð¸Ñ‚ÑŒ Ð²ÑÐµ', 'PrÃ©senter tout', 'ëª¨ë‘ ì„ ë¬¼í•˜ê¸°', 'Alle prÃ¤sentieren', 'Presente tutto', 'à¸™à¸³à¹€à¸ªà¸™à¸­à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Jelenleg mindet', 'Presenteer alles', 'nunc omnes', 'Hadir Semua', 'Hepsini Sunun', 'Î Î±ÏÎ¿Ï…ÏƒÎ¹Î¬ÏƒÏ„Îµ ÏŒÎ»Î±', 'Ø¯Ø± Ø­Ø§Ù„ Ø­Ø§Ø¶Ø± Ù‡Ù…Ù‡', 'Hadir Semua', 'à°…à°‚à°¦à°°à°¿à°•à±€ à°…à°‚à°¦à°¿à°‚à°šà°‚à°¡à°¿', 'à®…à®©à¯ˆà®µà®°à¯à®•à¯à®•à¯à®®à¯ à®µà®´à®™à¯à®•à®µà¯à®®à¯', 'àª¬àª§àª¾ àª¹àª¾àªœàª°', 'Przedstaw wszystko', 'ÐŸÐ¾Ð´Ð°Ñ€ÑƒÐ¹ Ð²ÑÐµ', 'à¨¸à¨­ à¨ªà©‡à¨¸à¨¼ à¨•à¨°à©‹', 'PrezentaÈ›i-vÄƒ pe toÈ›i', 'á€•á€…á€¹á€…á€¯á€•á€¹á€•á€”á€ºá€¡á€¬á€¸á€œá€¯á€¶á€¸', 'Paa Gbogbo', 'Duk Dukkan', NULL, NULL),
(181, 'late_all', 'Late All', 'সকলেই বিলম্বিত ', 'Late All', 'Ø£ÙˆØ§Ø®Ø± Ø§Ù„ÙƒÙ„', 'à¤¸à¥à¤µà¤°à¥à¤—à¥€à¤¯ à¤¸à¤­à¥€', 'Ø¯ÛŒØ± Ø³Û’', 'æ‰€æœ‰çš„æ™š', 'å¾ŒæœŸ', 'Late All', 'ÐŸÐ¾Ð·Ð´Ð½Ð¾ Ð²ÑÐµ', 'Tard tout', 'ëŠ¦ê²Œ ëª¨ë‘', 'SpÃ¤t alle', 'Tutto in ritardo', 'à¸›à¸¥à¸²à¸¢à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'KÃ©sÅ‘ minden', 'Laat alles', 'late omnes', 'Terlambat semua', 'Hep GeÃ§', 'Î‘ÏÎ³Î¬ ÎŒÎ»Î±', 'Ø§ÙˆØ§Ø®Ø± Ù‡Ù…Ù‡', 'Akhir semua', 'à°²à±‡à°Ÿà± à°…à°¨à±à°¨à±€', 'à®…à®©à¯ˆà®µà®°à¯à®•à¯à®•à¯à®®à¯', 'àª²à«‡àªŸ àª“àª²', 'PÃ³Åºno wszystkim', 'ÐŸÑ–Ð·Ð½Ð¾ Ð²ÑÐµ', 'à¨¦à©‡à¨° à¨¸à¨¾à¨°à©‡', 'Totul tÃ¢rziu', 'á€”á€¾á€±á€¬á€„á€ºá€¸á€•á€­á€¯á€„á€ºá€¸á€á€½á€„á€ºá€¡á€¬á€¸á€œá€¯á€¶á€¸', 'Paa Gbogbo', 'Late Duk', NULL, NULL),
(182, 'absent_all', 'Absent All', 'সকলেই অনুপস্থিত ', 'Ausente todo', 'ØºØ§Ø¦Ø¨ Ø§Ù„Ø¬Ù…ÙŠØ¹', 'à¤¸à¤­à¥€ à¤…à¤¨à¥à¤ªà¤¸à¥à¤¥à¤¿à¤¤', 'Ø³Ø¨ Ú©Ùˆ Ù…Ø·Ù…Ø¦Ù†', 'ç¼ºå¸­å…¨éƒ¨', 'ã™ã¹ã¦ãŒä¸åœ¨', 'Absent All', 'ÐžÑ‚ÑÑƒÑ‚ÑÑ‚Ð²ÑƒÐµÑ‚ Ð²ÑÐµ', 'Absent Tous', 'ëª¨ë‘ ì—†ìŠ´', 'Alles fehlt', 'Assente tutti', 'à¸‚à¸²à¸”à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Mindenki hiÃ¡nyzik', 'Afwezig allemaal', 'aberant aegrae', 'Tidak ada', 'Herkesten Yoksun', 'Î‘Ï€Î¿Ï…ÏƒÎ¯Î± ÏŒÎ»Ï‰Î½', 'Ù‡Ù…Ù‡ ÙˆØ¬ÙˆØ¯ Ù†Ø¯Ø§Ø±Ù†Ø¯', 'Absent All', 'à°…à°¬à±à°¸à±†à°‚à°Ÿà± à°…à°¨à±à°¨à±€', 'à®Žà®²à¯à®²à®¾à®µà®±à¯à®±à¯ˆà®¯à¯à®®à¯ à®µà®¿à®Ÿ', 'àª¬àª§àª¾ àª—à«‡àª°àª¹àª¾àªœàª°', 'Nieobecny', 'ÐÐµÐ¼Ð°Ñ” Ð²ÑÑ–Ñ…', 'à¨¸à¨¾à¨°à©€ à¨—à©ˆà¨°à¨¹à¨¾à¨œà¨¼à¨°à©€', 'Absent Toate', 'á€•á€»á€€á€ºá€€á€½á€€á€ºá€¡á€¬á€¸á€œá€¯á€¶á€¸', 'Ti ko ni Gbogbo', 'Bazuwa Duk', NULL, NULL),
(183, 'deadline', 'Deadline', 'সময়সীমা ', 'Fecha tope', 'Ø§Ù„Ù…ÙˆØ¹Ø¯ Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠ', 'à¤¸à¤®à¤¯à¤¸à¥€à¤®à¤¾', 'ÚˆÛŒÚˆ Ù„Ø§Ø¦Ù†', 'æˆªæ­¢æ—¥æœŸ', 'ç· ã‚åˆ‡ã‚Š', 'Data limite', 'ÐšÑ€Ð°Ð¹Ð½Ð¸Ð¹ ÑÑ€Ð¾Ðº', 'Date limite', 'ë§ˆê° ì‹œê°„', 'Frist', 'Scadenza', 'à¸§à¸±à¸™à¸à¸³à¸«à¸™à¸”à¸ªà¹ˆà¸‡', 'HatÃ¡ridÅ‘', 'Deadline', 'deadline', 'Batas waktu', 'Son tarih', 'Î ÏÎ¿Î¸ÎµÏƒÎ¼Î¯Î±', 'Ø¶Ø±Ø¨ Ø§Ù„Ø§Ø¬Ù„', 'Tarikh akhir', 'à°—à°¡à±à°µà±', 'à®•à®¾à®²à®•à¯à®•à¯†à®Ÿà¯à®µà¯ˆ', 'àª…àª¨à«àª¤àª¿àª® àª°à«‡àª–àª¾', 'Ostateczny termin', 'Ð¢ÐµÑ€Ð¼Ñ–Ð½ Ð´Ñ–Ñ—', 'à¨¡à©ˆà©±à¨¡à¨²à¨¾à¨ˆà¨¨', 'Termen limita', 'á€žá€á€ºá€™á€¾á€á€ºá€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸á€¡á€á€»á€­á€”á€º', 'á»Œjá» ipari', 'Kwanan lokaci', NULL, NULL),
(184, 'grade_point', 'Grade Point', 'গ্রেড পয়েন্ট ', 'Punto de Grado', 'ØªØ±Ø§ÙƒÙ…ÙŠ', 'à¤®à¥‚à¤²à¥à¤¯à¤¾à¤‚à¤•à¤¨', 'Ú¯Ø±ÛŒÚˆ Ù¾ÙˆØ§Ø¦Ù†Ù¹', 'æˆç»©ç‚¹', 'ã‚°ãƒ¬ãƒ¼ãƒ‰ãƒã‚¤ãƒ³ãƒˆ', 'Ponto de classificaÃ§Ã£o', 'Ð¢Ð¾Ñ‡ÐºÐ° Ð¾Ñ†ÐµÐ½ÐºÐ¸', 'Grade Point', 'í•™ì ', 'Notenpunkt', 'Grado', 'Grade Point', 'Grade Point', 'Grade punt', 'gradus punctum', 'Indeks Prestasi', 'Grade Point', 'Î£Î·Î¼ÎµÎ¯Î¿ Î²Î±Î¸Î¼Î¿Ï', 'Ù†Ù‚Ø·Ù‡ Ø¯Ø±Ø¬Ù‡', 'Gred Point', 'à°—à±à°°à±‡à°¡à± à°ªà°¾à°¯à°¿à°‚à°Ÿà±', 'à®•à®¿à®°à¯‡à®Ÿà¯ à®ªà¯à®³à¯à®³à®¿', 'àª—à«àª°à«‡àª¡ àªªà«‹àª‡àª¨à«àªŸ', 'Punkt Grade', 'Ð“Ñ€Ð°Ð´ÑƒÐ¹Ð¾Ð²Ð° Ñ‚Ð¾Ñ‡ÐºÐ°', 'à¨—à¨°à©‡à¨¡ à¨ªà©à¨†à¨‡à©°à¨Ÿ', 'Punct de punctaj', 'á€á€”á€ºá€¸ Point á€žá€­á€¯á€·', 'Iwe Ipele', 'Alamar Jagora', NULL, NULL),
(185, 'mark_from', 'Mark From', 'নম্বর হইতে ', 'Marcar de', 'Ø¹Ù„Ø§Ù…Ø© Ù…Ù†', 'à¤®à¤¾à¤°à¥à¤• à¤¸à¥‡', 'Ø³Û’ Ù†Ø´Ø§Ù† Ø²Ø¯ Ú©Ø±ÛŒÚº', 'é©¬å…‹ä»Ž', 'ãƒžãƒ¼ã‚¯ã™ã‚‹', 'Mark From', 'ÐžÑ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ Ð¾Ñ‚', 'Mark From', 'ë§ˆí¬ë¶€í„°', 'Mark von', 'Mark From', 'à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸ˆà¸²à¸', 'Mark From', 'Markeer van', 'Mark ex', 'Mark dari', 'Ä°ÅŸaretle', 'Î£Î·Î¼ÎµÎ¹ÏŽÏƒÏ„Îµ Î±Ï€ÏŒ', 'Ù…Ø§Ø±Ú© Ø§Ø²', 'Tanda dari', 'à°¨à±à°‚à°¡à°¿ à°®à°¾à°°à±à°•à±', 'à®‡à®°à¯à®¨à¯à®¤à¯ à®®à®¾à®°à¯à®•à¯', 'àª®àª¾àª°à«àª• àª«à«àª°à«‹àª®', 'Mark From', 'ÐŸÐ¾Ð·Ð½Ð°Ñ‡ÐºÐ° Ð·', 'à¨®à¨¾à¨°à¨• à¨¤à©‹', 'MarcheazÄƒ din', 'á€™á€¾á€…. , Mark', 'Samisi Lati', 'Alama Daga', NULL, NULL),
(186, 'mark_to', 'Mark To', 'নম্বর পর্যন্ত ', 'Marcar a', 'Ù…Ø§Ø±Ùƒ ØªÙˆ', 'à¤®à¤¾à¤°à¥à¤• à¤Ÿà¥‚', 'Ù†Ø´Ø§Ù† Ø²Ø¯ Ú©Ø±ÛŒÚº', 'æ ‡è®°ä¸º', 'ãƒžãƒ¼ã‚¯ã™ã‚‹', 'Mark To', 'ÐžÑ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ', 'Mark To', 'í‘œì‹œ ëŒ€ìƒ', 'Zu markieren', 'Mark To', 'à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸§à¹ˆà¸²à¸•à¹‰à¸­à¸‡à¸à¸²à¸£', 'JelÃ¶lje meg', 'Mark To', 'Mark Ad', 'Mark To', 'Mark To', 'Mark To', 'Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù†', 'Mark To', 'à°®à°¾à°°à±à°•à± à°Ÿà±', 'à®®à®¾à®°à¯à®•à¯ à®Ÿà¯‚', 'àª®àª¾àª°à«àª• àªŸà«', 'Mark To', 'ÐŸÐ¾Ð·Ð½Ð°Ñ‡Ð¸Ñ‚Ð¸ Ð´Ð¾', 'à¨®à¨¾à¨°à¨• à¨•à¨°à¨¨ à¨²à¨ˆ', 'MarcheazÄƒ la', 'á€™á€¬á€€á€¯á€›á€”á€º', 'Samisi Lati', 'Alama Don', NULL, NULL),
(187, 'room_no', 'Room No', 'কক্ষ নং ', 'HabitaciÃ³n no', 'ØºØ±ÙØ© Ø±Ù‚Ù…', 'à¤•à¤®à¤°à¤¾ à¤•à¥à¤°à¤®à¤¾à¤‚à¤•', 'Ú©Ù…Ø±Û Ù†Ù…Ø¨Ø±', 'æˆ¿é—´å·', 'éƒ¨å±‹ç•ªå·', 'Quarto NÃ£o', 'ÐšÐ¾Ð¼Ð½Ð°Ñ‚Ð° Ð½ÐµÑ‚', 'Chambre numÃ©ro', 'ê°ì‹¤ ë²ˆí˜¸', 'Raum Nummer', 'Stanza No', 'à¹€à¸šà¸­à¸£à¹Œà¸«à¹‰à¸­à¸‡', 'SzobaszÃ¡m', 'Kamer nummer', 'nullus locus', 'Kamar no', 'Oda numarasÄ±', 'Î‘ÏÎ¹Î¸Î¼ÏŒÏ‚ Î´Ï‰Î¼Î±Ï„Î¯Î¿Ï…', 'Ø´Ù…Ø§Ø±Ù‡ Ø§ØªØ§Ù‚', 'Nombor bilik', 'à°—à°¦à°¿ à°¸à°‚à°–à±à°¯', 'à®…à®±à¯ˆ à®‡à®²à¯à®²à¯ˆ', 'àª°à«‚àª® àª¨àª‚', 'PokÃ³j numer', 'ÐšÑ–Ð¼Ð½Ð°Ñ‚Ð° â„–', 'à¨•à¨®à¨°à¨¾ à¨¨à©°à¨¬à¨°', 'CamerÄƒ nr', 'ROOM á€á€½á€„á€ºá€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'Yara Báº¹áº¹ká»', 'Room Babu', NULL, NULL),
(188, 'attend_all', 'Attend All', 'সকলেই উপস্থিত ', 'Asistir a todos', 'Ø­Ø¶ÙˆØ± Ø§Ù„Ø¬Ù…ÙŠØ¹', 'à¤¸à¤­à¥€ à¤®à¥‡à¤‚ à¤¶à¤¾à¤®à¤¿à¤² à¤¹à¥‹à¤‚', 'Attend All', 'å…¨éƒ¨å‚åŠ ', 'ã™ã¹ã¦ã«å‡ºå¸­ã™ã‚‹', 'Participe de todos', 'Ð’ÑÐµ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸ÐºÐ¸', 'Assister Ã  tous', 'ëª¨ë‘ ì°¸ì„', 'An allen teilnehmen', 'Partecipare a tutti', 'à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Vegyen rÃ©szt mindenben', 'Woon iedereen bij', 'adtende omnes', 'Menghadiri Semua', 'Herkese KatÄ±l', 'Î Î±ÏÎ±ÎºÎ¿Î»Î¿Ï…Î¸Î®ÏƒÏ„Îµ ÏŒÎ»Î¿Ï…Ï‚', 'Ø­Ø¶ÙˆØ± Ø¯Ø± Ù‡Ù…Ù‡', 'Hadiri Semua', 'à°…à°¨à±à°¨à°¿ à°¹à°¾à°œà°°à±', 'à®Žà®²à¯à®²à®¾à®µà®±à¯à®±à®¿à®²à¯à®®à¯ à®•à®²à®¨à¯à®¤à¯à®•à¯Šà®³à¯à®³à¯à®™à¯à®•à®³à¯', 'àª¬àª§àª¾ àª¹àª¾àªœàª°à«€', 'WeÅº udziaÅ‚ w wszystkim', 'Ð’Ñ–Ð´Ð²Ñ–Ð´Ð°Ñ‚Ð¸ Ð²ÑÐµ', 'à¨¸à¨¾à¨°à©‡ à¨¹à¨¾à¨œà¨¼à¨° à¨¹à©‹à¨µà©‹', 'ParticipaÈ›i la toate', 'á€¡á€¬á€¸á€œá€¯á€¶á€¸á€á€€á€ºá€›á€±á€¬á€€á€ºá€›á€”á€º', 'Lá» gbogbo', 'Ku halarci Duk', NULL, NULL),
(189, 'mark_total', 'Mark Total', 'সর্বমোট নম্বর ', 'Mark Total', 'Ù…Ø§Ø±Ùƒ Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹', 'à¤•à¥à¤² à¤®à¤¾à¤°à¥à¤•', 'Ú©Ù„ Ù…Ø§Ø±Ú©', 'é©¬å…‹æ€»', 'ãƒžãƒ¼ã‚¯åˆè¨ˆ', 'Mark Total', 'ÐœÐ°Ñ€ÐºÐ° Ð’ÑÐµÐ³Ð¾', 'Mark Total', 'ë§ˆí¬ í•©ê³„', 'Gesamtmarkierung', 'Mark Total', 'Mark Total', 'Mark Ã–sszesen', 'Markeer Total', 'Mark Summa', 'Mark Total', 'Mark Total', 'Î£Î·Î¼ÎµÎ¯Ï‰ÏƒÎ· Î£ÏÎ½Î¿Î»Î¿', 'Ù…Ø§Ø±Ú© Ú©Ù„', 'Mark Jumlah', 'à°®à±Šà°¤à±à°¤à°‚ à°®à°¾à°°à±à°•à±', 'à®®à¯Šà®¤à¯à®¤à®®à¯ à®®à®¾à®°à¯à®•à¯', 'àª•à«àª² àªšàª¿àª¹à«àª¨', 'Mark Total', 'ÐœÐ°Ñ€Ðº Ð¢Ð¾Ñ‚Ð°Ð»', 'à¨•à©à©±à¨² à¨®à¨¿à¨²à¨¾à¨“', 'MarcheazÄƒ total', 'á€™á€¬á€€á€¯á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸', 'Samisi Kolopin', 'Mark Total', NULL, NULL),
(190, 'mark_obtain', 'Mark Obtain', 'প্রাপ্ত নম্বর ', 'Mark Obtain', 'Ø§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„Ù‰ Ø¹Ù„Ø§Ù…Ø©', 'à¤®à¤¾à¤°à¥à¤• à¤“à¤¬à¥à¤Ÿà¥‡à¤¨', 'Ù†Ø´Ø§Ù† Ø²Ø¯ Ú©Ø±ÛŒÚº', 'é©¬å…‹èŽ·å¾—', 'ãƒžãƒ¼ã‚¯å–å¾—', 'Mark Obtain', 'Mark ÐŸÐ¾Ð»ÑƒÑ‡Ð¸Ñ‚ÑŒ', 'Mark Obtain', 'ë§ˆí¬ íšë“', 'Mark Erhalten', 'Mark Ottieni', 'Mark Obtain', 'Mark Obtain', 'Markeer verkrijgen', 'Mark Vitam', 'Mark mendapatkan', 'Mark Al', 'Î£Î·Î¼Î¬Î´Î¹ Î±Ï€Î¿ÎºÏ„Î®ÏƒÏ„Îµ', 'Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¨Ù‡ Ø¯Ø³Øª Ø¢ÙˆØ±Ø¯Ù†', 'Mark Obtain', 'à°—à±à°°à±à°¤à± à°ªà±Šà°‚à°¦à°‚à°¡à°¿', 'à®®à®¾à®°à¯à®•à¯ à®ªà¯†à®±à®µà¯à®®à¯', 'àª®àª¾àª°à«àª• àª‘àª¬à«àªŸà«‡àª¨', 'Mark Obtain', 'ÐŸÐ¾Ð·Ð½Ð°Ñ‡Ñ‚Ðµ ', 'à¨®à¨¾à¨°à¨• à¨†à¨¬à¨Ÿà©ˆà©±à¨¨', 'MarcheazÄƒ ObÈ›ineÈ›i', 'á€™á€¬á€€á€¯á€›á€šá€°á€•á€«', 'Samisi Gba', 'Mark Obtain', NULL, NULL),
(191, 'remark', 'Remark', 'মন্তব্য ', 'ObservaciÃ³n', 'ØªØ¹Ù„ÙŠÙ‚', 'à¤Ÿà¤¿à¤ªà¥à¤ªà¤£à¥€', 'ØªØ¨ØµØ±Û', 'å¤‡æ³¨', 'ãƒªãƒžãƒ¼ã‚¯', 'ObservaÃ§Ã£o', 'Ð·Ð°Ð¼ÐµÑ‡Ð°Ð½Ð¸Ðµ', 'Remarque', 'ë§', 'Anmerkung', 'osservazione', 'à¸‚à¹‰à¸­à¸ªà¸±à¸‡à¹€à¸à¸•', 'MegjegyzÃ©s', 'Opmerking', 'Attende', 'Ucapan', 'dÃ¼ÅŸÃ¼nce', 'Î Î±ÏÎ±Ï„Î®ÏÎ·ÏƒÎ·', 'ÛŒØ§Ø¯Ø¯Ø§Ø´Øª', 'Catatan', 'à°µà±à°¯à°¾à°–à±à°¯', 'à®•à®°à¯à®¤à¯à®¤à¯', 'àª°à«€àª®àª¾àª°à«àª•', 'Uwaga', 'Ð—Ð°ÑƒÐ²Ð°Ð¶ÐµÐ½Ð½Ñ', 'à¨Ÿà¨¿à©±à¨ªà¨£à©€', 'RemarcÄƒ', 'á€•á€½á€±á€¬á€†á€­á€¯', 'Atokasi', 'Alamar', NULL, NULL),
(192, 'option', 'Option', 'অপশন ', 'OpciÃ³n', 'Ø§Ø®ØªÙŠØ§Ø±', 'à¤µà¤¿à¤•à¤²à¥à¤ª', 'Ø§Ø®ØªÛŒØ§Ø±', 'é€‰é¡¹', 'ã‚ªãƒ—ã‚·ãƒ§ãƒ³', 'OpÃ§Ã£o', 'Ð²Ð°Ñ€Ð¸Ð°Ð½Ñ‚', 'Option', 'ì„ íƒê¶Œ', 'MÃ¶glichkeit', 'Opzione', 'à¸•à¸±à¸§à¹€à¸¥à¸·à¸­à¸', 'vÃ¡lasztÃ¡si lehetÅ‘sÃ©g', 'Keuze', 'optionem', 'Pilihan', 'seÃ§enek', 'Î•Ï€Î¹Î»Î¿Î³Î®', 'Ú¯Ø²ÛŒÙ†Ù‡', 'Pilihan', 'à°Žà°‚à°ªà°¿à°•', 'à®µà®¿à®°à¯à®ªà¯à®ªà®®à¯', 'àªµàª¿àª•àª²à«àªª', 'Opcja', 'Ð’Ð°Ñ€Ñ–Ð°Ð½Ñ‚', 'à¨šà©‹à¨£', 'OpÈ›iune', 'option á€€á€­á€¯', 'Aá¹£ayan', 'ZaÅ¾i', NULL, NULL),
(193, 'running_session', 'Running Session', 'চলতি সেশন ', 'SesiÃ³n en ejecuciÃ³n', 'ØªØ´ØºÙŠÙ„ Ø§Ù„Ø¯ÙˆØ±Ø©', 'à¤šà¤² à¤°à¤¹à¤¾ à¤¸à¤¤à¥à¤°', 'Ú†Ù„ Ø±ÛØ§ ÛÛ’ Ø§Ø¬Ù„Ø§Ø³', 'è¿è¡Œä¼šè¯', 'ãƒ©ãƒ³ãƒ‹ãƒ³ã‚°ã‚»ãƒƒã‚·ãƒ§ãƒ³', 'SessÃ£o de corrida', 'Ð—Ð°Ð¿ÑƒÑÐº ÑÐµÐ°Ð½ÑÐ°', 'Session en cours', 'ëŸ¬ë‹ ì„¸ì…˜', 'Sitzung wird ausgefÃ¼hrt', 'Esecuzione della sessione', 'à¸à¸²à¸£à¹€à¸£à¸µà¸¢à¸à¹ƒà¸Šà¹‰à¹€à¸‹à¸ªà¸Šà¸±à¸™', 'FuttatÃ¡s', 'Sessie uitvoeren', 'currens Sessio', 'Menjalankan sesi', 'Oturum Devam Ediyor', 'Î•ÎºÏ„Î­Î»ÎµÏƒÎ· ÏƒÏ…Î½ÏŒÎ´Î¿Ï…', 'Ø¯Ø± Ø­Ø§Ù„ Ø§Ø¬Ø±Ø§', 'Sesi Berjalan', 'à°¸à±†à°·à°¨à± à°°à°¨à±à°¨à°¿à°‚à°—à±', 'à®…à®®à®°à¯à®µà¯ à®‡à®¯à®•à¯à®•à¯à®¤à®²à¯', 'àª¸àª¤à«àª° àªšàª¾àª²à«€ àª°àª¹à«àª¯à«àª‚ àª›à«‡', 'Prowadzenie sesji', 'Ð—Ð°Ð¿ÑƒÑÐº ÑÐµÑÑ–Ñ—', 'à¨šà©±à¨² à¨°à¨¹à©‡ à¨¸à©ˆà¨¸à¨¼à¨¨', 'Sesiunea de desfÄƒÈ™urare', 'á€¡á€•á€¼á€±á€¸á€á€½á€±á€·á€†á€¯á€¶á€†á€½á€±á€¸á€”á€½á€±á€¸á€•á€½á€²', 'Ipade Ná¹£iá¹£áº¹', 'Zangon Zama', NULL, NULL),
(194, 'promote_to_session', 'Promote to Session', 'উন্নীত সেশন ', 'Promover a la sesiÃ³n', 'Ø§Ù„ØªØ±Ù‚ÙŠØ© Ø¥Ù„Ù‰ Ø§Ù„Ø¬Ù„Ø³Ø©', 'à¤¸à¤¤à¥à¤° à¤•à¥‹ à¤¬à¤¢à¤¼à¤¾à¤µà¤¾ à¤¦à¥‡à¤¨à¤¾', 'Ø§Ø¬Ù„Ø§Ø³ Ù…ÛŒÚº ÙØ±ÙˆØº Ø¯ÛŒÚº', 'ä¿ƒè¿›ä¼šè®®', 'ã‚»ãƒƒã‚·ãƒ§ãƒ³ã«æ˜‡é€²', 'Promover a SessÃ£o', 'ÐŸÐ¾Ð¾Ñ‰Ñ€ÑÑ‚ÑŒ ÑÐµÑÑÐ¸ÑŽ', 'Promouvoir Ã  la session', 'ì„¸ì…˜ìœ¼ë¡œ ìŠ¹ê²©', 'Zu einer Sitzung hochstufen', 'Promuovi alla sessione', 'à¹‚à¸›à¸£à¹‚à¸¡à¸•à¹€à¸‹à¸ªà¸Šà¸±à¸™', 'ElÅ‘mozdÃ­tÃ¡sa a munkamenethez', 'Promoten naar sessie', 'Sessio autem Promovere', 'Promosikan untuk Sesi', 'Oturuma TeÅŸvik Et', 'Î ÏÎ¿Ï‰Î¸Î®ÏƒÏ„Îµ ÏƒÏ„Î· ÏƒÏÎ½Î¿Î´Î¿', 'Ø§Ø±ØªÙ‚Ø§ Ø¨Ù‡ Ø¬Ù„Ø³Ù‡', 'Menggalakkan Sesi', 'à°¸à±†à°·à°¨à±à°•à± à°ªà±à°°à°šà°¾à°°à°‚ à°šà±‡à°¯à°‚à°¡à°¿', 'à®…à®®à®°à¯à®µà¯à®•à¯à®•à¯ à®Šà®•à¯à®•à¯à®µà®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¸àª¤à«àª°àª®àª¾àª‚ àªªà«àª°àª®à«‹àªŸ àª•àª°à«‹', 'Promuj do sesji', 'Ð ÐµÐºÐ»Ð°Ð¼Ð° Ð½Ð° ÑÐµÐ°Ð½Ñ', 'à¨¸à©ˆà¨¸à¨¼à¨¨ à¨¨à©‚à©° à¨ªà©à¨°à¨®à©‹à¨Ÿ à¨•à¨°à©‹', 'PromovaÈ›i la sesiune', 'á€á€½á€±á€·á€†á€¯á€¶á€†á€½á€±á€¸á€”á€½á€±á€¸á€•á€½á€²á€™á€¾á€™á€¼á€¾á€„á€ºá€·á€á€„á€º', 'Igbelaruge si Ipade', 'Æ˜addamar zuwa Zama', NULL, NULL),
(195, 'current_class', 'Current Class', 'বর্তমান ক্লাস ', 'Clase actual', 'Ø§Ù„ÙØ¦Ø© Ø§Ù„Ø­Ø§Ù„ÙŠØ©', 'à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨ à¤•à¤•à¥à¤·à¤¾', 'Ù…ÙˆØ¬ÙˆØ¯Û Ú©Ù„Ø§Ø³', 'å½“å‰ç±»', 'ç¾åœ¨ã®ã‚¯ãƒ©ã‚¹', 'Classe atual', 'Ð¢ÐµÐºÑƒÑ‰Ð¸Ð¹ ÐºÐ»Ð°ÑÑ', 'Classe actuelle', 'í˜„ìž¬ ìˆ˜ì—…', 'Aktuelle Klasse', 'Classe corrente', 'à¸£à¸°à¸”à¸±à¸šà¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™', 'Jelenlegi osztÃ¡ly', 'Huidige klasse', 'Current Paleonemertea Class', 'Kelas sekarang', 'Mevcut SÄ±nÄ±f', 'Î¤ÏÎ­Ï‡Î¿Ï…ÏƒÎ± ÎºÎ»Î¬ÏƒÎ·', 'Ú©Ù„Ø§Ø³ Ú©Ù†ÙˆÙ†ÛŒ', 'Kelas Semasa', 'à°ªà±à°°à°¸à±à°¤à±à°¤ à°•à±à°²à°¾à°¸à±', 'à®¤à®±à¯à®ªà¯‹à®¤à¯ˆà®¯ à®µà®•à¯à®ªà¯à®ªà¯', 'àªµàª°à«àª¤àª®àª¾àª¨ àªµàª°à«àª—', 'Aktualna klasa', 'ÐŸÐ¾Ñ‚Ð¾Ñ‡Ð½Ð¸Ð¹ ÐºÐ»Ð°Ñ', 'à¨®à©Œà¨œà©‚à¨¦à¨¾ à¨•à¨²à¨¾à¨¸', 'Clasa curentÄƒ', 'á€œá€€á€ºá€›á€¾á€­á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸', 'Akoko lá»wá»lá»wá»', 'Kwanan Yanzu', NULL, NULL),
(196, 'promote_to_class', 'Promote To Class', 'উন্নীত শ্রেণী ', 'Promover a clase', 'Ø§Ù„ØªØ±Ù‚ÙŠØ© Ø¥Ù„Ù‰ Ø§Ù„ÙØµÙ„', 'à¤•à¤•à¥à¤·à¤¾ à¤•à¥‹ à¤¬à¤¢à¤¼à¤¾à¤µà¤¾ à¤¦à¥‡à¤¨à¤¾', 'Ú©Ù„Ø§Ø³ Ù…ÛŒÚº ÙØ±ÙˆØº Ø¯ÛŒÚº', 'ä¿ƒè¿›ä¸Šè¯¾', 'ã‚¯ãƒ©ã‚¹ã«æ˜‡æ ¼', 'Promover para a classe', 'ÐŸÐ¾Ð²Ñ‹ÑÐ¸Ñ‚ÑŒ ÐºÐ»Ð°ÑÑ', 'Promouvoir en classe', 'í´ëž˜ìŠ¤ë¡œ ìŠ¹ê²©', 'In die Klasse hochstufen', 'Promuovi in classe', 'à¹‚à¸›à¸£à¹‚à¸¡à¸•à¹ƒà¸™à¸Šà¸±à¹‰à¸™à¹€à¸£à¸µà¸¢à¸™', 'PromÃ³ciÃ³ az osztÃ¡lyba', 'Promoot Class', 'Promovere Ad Paleonemertea Class', 'Promosikan ke Kelas', 'SÄ±nÄ±fÄ± TanÄ±yalÄ±m', 'Î ÏÎ¿Ï‰Î¸Î®ÏƒÏ„Îµ ÏƒÏ„Î·Î½ ÎºÎ»Î¬ÏƒÎ·', 'Ø§Ø±ØªÙ‚Ø§ Ø¨Ù‡ Ú©Ù„Ø§Ø³', 'Menggalakkan Ke Kelas', 'à°•à±à°²à°¾à°¸à±à°•à°¿ à°ªà±à°°à°šà°¾à°°à°‚ à°šà±‡à°¯à°‚à°¡à°¿', 'à®µà®•à¯à®ªà¯à®ªà¯à®•à¯à®•à¯ à®Šà®•à¯à®•à¯à®µà®¿à®•à¯à®•à®µà¯à®®à¯', 'àªµàª°à«àª— àª®àª¾àªŸà«‡ àªªà«àª°à«‹àª¤à«àª¸àª¾àª¹àª¨', 'Promuj do klasy', 'Ð ÐµÐºÐ»Ð°Ð¼Ð° Ð² ÐºÐ»Ð°ÑÑ–', 'à¨•à¨²à¨¾à¨¸ à¨¨à©‚à©° à¨µà¨§à¨¾à¨“', 'PromovaÈ›i la clasÄƒ', 'á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸á€…á€±á€›á€”á€ºá€™á€¼á€¾á€„á€ºá€·á€á€„á€ºá€›á€”á€º', 'Igbelaruge Lati Kilasi', 'Æ˜addamar da Æ˜ungiya', NULL, NULL),
(197, 'next_roll_no', 'Next Roll No', 'পরবর্তী রোল নম্বর ', 'Siguiente rollo No', 'Ø§Ù„ØªØ§Ù„ÙŠ Ù„ÙØ© Ù„Ø§', 'à¤…à¤—à¤²à¤¾ à¤°à¥‹à¤² à¤¨à¤‚à¤¬à¤°', 'Ø§Ú¯Ù„Û’ Ø±ÙˆÙ„ Ù†Ù…Ø¨Ø±', 'ä¸‹ä¸€å·No', 'æ¬¡ã®ãƒ­ãƒ¼ãƒ«ç•ªå·', 'Next Roll No', 'Ð¡Ð»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹ Ñ€Ð¾Ð»Ð» ÐÐµÑ‚', 'Prochain rouleau No', 'ë‹¤ìŒ ë¡¤ ì—†ìŒ', 'NÃ¤chste Rolle Nr', 'Next Roll No', 'à¸‰à¸šà¸±à¸šà¸•à¹ˆà¸­à¹„à¸› No', 'KÃ¶vetkezÅ‘ Roll No.', 'Volgende rol Nee', 'Next Roll No', 'Gulungan Berikutnya No', 'Sonraki Rulo HayÄ±r', 'Î•Ï€ÏŒÎ¼ÎµÎ½Î¿Ï‚ Î±ÏÎ¹Î¸Î¼ÏŒÏ‚ ÏÏŒÎ»Î¿Ï…', 'Ø¨Ø¹Ø¯ÛŒ Ø±ÙˆÙ„ Ù†Ù‡', 'Rol seterusnya No', 'à°¤à°¦à±à°ªà°°à°¿ à°°à±‹à°²à± à°¸à°‚à°–à±à°¯', 'à®…à®Ÿà¯à®¤à¯à®¤ à®°à¯‹à®²à¯ à®‡à®²à¯à®²à¯ˆ', 'àª†àª—àª¾àª®à«€ àª°à«‹àª² àª¨àª‚', 'NastÄ™pna rolka nr', 'ÐÐ°ÑÑ‚ÑƒÐ¿Ð½Ð¸Ð¹ Ñ€ÑƒÐ»Ð¾Ð½ Ð½ÐµÐ¼Ð°Ñ”', 'à¨…à¨—à¨²à¨¾ à¨°à©‹à¨² à¨•à©‹à¨ˆ à¨¨à¨¹à©€à¨‚', 'UrmÄƒtorul Roll Nu', 'Next á€€á€­á€¯ Roll á€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'Eerun Oke No', 'Nemi na gaba Babu', NULL, NULL),
(198, 'promote', 'Promote', 'পদোন্নতি ', 'Promover', 'ØªØ±ÙˆØ¬ \\ ÙŠØ´Ø¬Ø¹ \\ ÙŠØ¹Ø²Ø² \\ ÙŠÙ†Ù…Ù‰ \\ ÙŠØ·ÙˆØ±', 'à¤•à¥‹ à¤¬à¤¢à¤¼à¤¾à¤µà¤¾ à¤¦à¥‡à¤¨à¤¾', 'ÙØ±ÙˆØº Ø¯ÛŒÚº', 'ä¿ƒè¿›', 'ãƒ—ãƒ­ãƒ¢ãƒ¼ã‚·ãƒ§ãƒ³', 'Promover', 'ÑÐ¾Ð´ÐµÐ¹ÑÑ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ', 'Promouvoir', 'í™ë³´', 'FÃ¶rdern', 'Promuovere', 'à¸ªà¹ˆà¸‡à¹€à¸ªà¸£à¸´à¸¡', 'NÃ©pszerÅ±sÃ­t', 'Promoten', 'Promovere', 'Memajukan', 'Desteklemek', 'Î ÏÎ¿Î¬Î³Ï‰', 'ØªØ±ÙˆÛŒØ¬', 'Menggalakkan', 'à°ªà±à°°à°®à±‹à°Ÿà±', 'à®Šà®•à¯à®•à¯à®µà®¿à®•à¯à®•', 'àªªà«àª°àª®à«‹àªŸ àª•àª°à«‹', 'PromowaÄ‡', 'Ð ÐµÐºÐ»Ð°Ð¼ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨µà¨§à¨¾à¨“', 'Promova', 'á€™á€¼á€¾á€„á€ºá€·á€á€„á€ºá€›á€”á€º', 'Igbelaruge', 'Æ˜ara', NULL, NULL),
(199, 'book_id', 'Book ID', 'বইয়ের আইডি ', 'ID de libro', 'Ù…Ø¹Ø±Ù Ø§Ù„ÙƒØªØ§Ø¨', 'à¤¬à¥à¤• à¤†à¤ˆà¤¡à¥€', 'Ú©ØªØ§Ø¨ Ú©ÛŒ Ø´Ù†Ø§Ø®Øª', 'å›¾ä¹¦ID', 'æ›¸ç±ID', 'ID do livro', 'ÐšÐ½Ð¸Ð¶Ð½Ñ‹Ð¹ Ð¸Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€', 'ID de livre', 'ë„ì„œ ID', 'Buch-ID', 'ID del libro', 'à¸£à¸«à¸±à¸ªà¸«à¸™à¸±à¸‡à¸ªà¸·à¸­', 'KÃ¶nyvazonosÃ­tÃ³', 'Boek-ID', 'id libri', 'ID buku', 'Kitap kimliÄŸi', 'Î‘Î½Î±Î³Î½Ï‰ÏÎ¹ÏƒÏ„Î¹ÎºÏŒ Î²Î¹Î²Î»Î¯Î¿Ï…', 'Ø´Ù†Ø§Ø³Ù‡ Ú©ØªØ§Ø¨', 'ID Buku', 'à°¬à±à°•à± ID', 'à®ªà¯à®¤à¯à®¤à®• à®à®Ÿà®¿', 'àª¬à«àª• ID', 'Identyfikator ksiÄ…Å¼ki', 'Ð†Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ñ€ ÐºÐ½Ð¸Ð³Ð¸', 'à¨¬à©à©±à¨• ID', 'Carte de identitate', 'á€…á€¬á€¡á€¯á€•á€º ID á€€á€­á€¯', 'Iwe iD', 'ID ID', NULL, NULL),
(200, 'isbn_no', 'ISBN No', 'আই এস বি এন নম্বর ', 'ISBN No', 'Ø±Ù‚Ù… Ø¥ÙŠØ³Ø¨Ù† Ù„Ø§', 'à¤†à¤ˆà¤à¤¸à¤¬à¥€à¤à¤¨ à¤¨à¤¹à¥€à¤‚', 'ISBN Ù†Ù…Ø¨Ø±', 'ä¹¦å·', 'ISBNã„ã„ãˆ', 'NÃºmero ISBN', 'ISBN ÐÐµÑ‚', 'ISBN Non', 'ISBN ì•„ë‹ˆì˜¤', 'ISBN Nr', 'ISBN n', 'à¹€à¸¥à¸‚ ISBN', 'ISBN szÃ¡m', 'ISBN nr', 'ISBN No', 'ISBN No', 'ISBN HayÄ±r', 'Î‘ÏÎ¹Î¸Î¼ÏŒÏ‚ ISBN', 'ISBN Ø´Ù…Ø§Ø±Ù‡', 'ISBN No', 'ISBN à°¸à°‚à°–à±à°¯', 'ISBN à®‡à®²à¯à®²à¯ˆ', 'àª†àª‡àªàª¸àª¬à«€àªàª¨ àª¨àª‚', 'Numer ISBN', 'ÐÐ¾Ð¼ÐµÑ€ ISBN', 'ISBN à¨¨à¨¹à©€à¨‚', 'ISBN nr', 'ISBN á€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'ISBN Báº¹áº¹ká»', 'ISBN Babu', NULL, NULL),
(201, 'book_cover', 'Book Cover', 'মোড়ক ', 'Tapa del libro', 'ØºÙ„Ø§Ù Ø§Ù„ÙƒØªØ§Ø¨', 'à¤ªà¥à¤¸à¥à¤¤à¤• à¤†à¤µà¤°à¤£', 'Ú©ØªØ§Ø¨ Ú©Ø§Ù¾ÙˆØ´Ø´ØŒ Ú©ØªØ§Ø¨ Ú©ÛŒ Ø¬Ù„Ø¯', 'å°é¢', 'ãƒ–ãƒƒã‚¯ã‚«ãƒãƒ¼', 'Capa de livro', 'ÐšÐ½Ð¸Ð¶Ð½Ð°Ñ Ð¾Ð±Ð»Ð¾Ð¶ÐºÐ°', 'Couverture de livre', 'ì±… í‘œì§€', 'Buchumschlag', 'Copertina del libro', 'à¸›à¸à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­', 'KÃ¶nyvborÃ­tÃ³', 'Boekomslag', 'Libro Cover', 'Sampul buku', 'Kitap kapaÄŸÄ±', 'Î•Î¾ÏŽÏ†Ï…Î»Î»Î¿ Î²Î¹Î²Î»Î¯Î¿Ï…', 'Ø¬Ù„Ø¯ Ú©ØªØ§Ø¨', 'Kulit buku', 'à°ªà±à°¸à±à°¤à°•à°ªà± à°…à°Ÿà±à°Ÿ', 'à®ªà¯à®¤à¯à®¤à®• à®‰à®±à¯ˆ', 'àªªà«àª¸à«àª¤àª• àª•àªµàª°', 'OkÅ‚adka ksiÄ…Å¼ki', 'ÐžÐ±ÐºÐ»Ð°Ð´Ð¸Ð½ÐºÐ° ÐºÐ½Ð¸Ð³Ð¸', 'à¨¬à©à©±à¨• à¨•à¨µà¨°', 'Coperta cÄƒrÈ›ii', 'á€…á€¬á€¡á€¯á€•á€ºá€¡á€–á€¯á€¶á€¸', 'Iwe Ideri iwe', 'Rufin Shafin', NULL, NULL),
(202, 'price', 'Price', 'মূল্য ', 'Precio', 'Ø§Ù„Ø³Ø¹Ø±', 'à¤®à¥‚à¤²à¥à¤¯', 'Ù‚ÛŒÙ…Øª', 'ä»·é’±', 'ä¾¡æ ¼', 'PreÃ§o', 'Ð¦ÐµÐ½Ð°', 'Prix', 'ê°€ê²©', 'Preis', 'Prezzo', 'à¸£à¸²à¸„à¸²', 'Ãr', 'Prijs', 'pretium', 'Harga', 'Fiyat', 'Î¤Î¹Î¼Î®', 'Ù‚ÛŒÙ…Øª', 'Harga', 'à°§à°°', 'à®µà®¿à®²à¯ˆ', 'àª•àª¿àª‚àª®àª¤', 'Cena Â£', 'Ð¦Ñ–Ð½Ð°', 'à¨•à©€à¨®à¨¤', 'PreÈ›', 'á€…á€»á€±á€¸á€”á€¾á€¯á€”á€ºá€¸', 'Iye owo', 'Farashin', NULL, NULL),
(203, 'quantity', 'Quantity', 'পরিমাণ ', 'Cantidad', 'ÙƒÙ…ÙŠØ©', 'à¤®à¤¾à¤¤à¥à¤°à¤¾', 'Ù…Ù‚Ø¯Ø§Ø±', 'æ•°é‡', 'é‡', 'Quantidade', 'ÐšÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾', 'QuantitÃ©', 'ìˆ˜ëŸ‰', 'Menge', 'QuantitÃ ', 'à¸›à¸£à¸´à¸¡à¸²à¸“', 'MennyisÃ©g', 'Aantal stuks', 'quantitas', 'Kuantitas', 'miktar', 'Î Î¿ÏƒÏŒÏ„Î·Ï„Î±', 'Ù…Ù‚Ø¯Ø§Ø±', 'Kuantiti', 'à°®à±Šà°¤à±à°¤à°®à±', 'à®…à®³à®µà¯', 'àªœàª¥à«àª¥à«‹', 'IloÅ›Ä‡', 'ÐšÑ–Ð»ÑŒÐºÑ–ÑÑ‚ÑŒ', 'à¨—à¨¿à¨£à¨¤à©€', 'Cantitate', 'á€¡á€›á€±á€¡á€á€½á€€á€º', 'Opolopo', 'Yawan', NULL, NULL),
(204, 'availble', 'Available', 'ব্যবহারযোগ্য ', 'Disponible', 'Ù…ØªØ§Ø­', 'à¤‰à¤ªà¤²à¤¬à¥à¤§', 'Ø¯Ø³ØªÛŒØ§Ø¨', 'å¯å¾—åˆ°', 'åˆ©ç”¨å¯èƒ½', 'acessÃ­vel', 'Ð”Ð¾ÑÑ‚ÑƒÐ¿Ð½Ñ‹Ð¹', 'Disponible', 'ìœ íš¨í•œ', 'VerfÃ¼gbar', 'A disposizione', 'à¸—à¸µà¹ˆà¸¡à¸µà¸ˆà¸³à¸«à¸™à¹ˆà¸²à¸¢', 'ElÃ©rhetÅ‘', 'Beschikbaar', 'available', 'Tersedia', 'Mevcut', 'Î”Î¹Î±Î¸Î­ÏƒÎ¹Î¼Î¿Ï‚', 'Ø¯Ø± Ø¯Ø³ØªØ±Ø³', 'Tersedia', 'à°…à°‚à°¦à±à°¬à°¾à°Ÿà±à°²à±‹', 'à®•à®¿à®Ÿà¯ˆà®•à¯à®•à¯à®®à¯', 'àª‰àªªàª²àª¬à«àª§', 'DostÄ™pny', 'Ð”Ð¾ÑÑ‚ÑƒÐ¿Ð½Ð¾', 'à¨‰à¨ªà¨²à©±à¨¬à¨§', 'Disponibil', 'á€›á€›á€¾á€­á€”á€­á€¯á€„á€º', 'Wa', 'Akwai', NULL, NULL),
(205, 'edition', 'Edition', 'সংস্করণ ', 'EdiciÃ³n', 'Ø§Ù„Ø¥ØµØ¯Ø§Ø±', 'à¤¸à¤‚à¤¸à¥à¤•à¤°à¤£', 'Ø§ÛŒÚˆÛŒØ´Ù†', 'ç‰ˆ', 'ç‰ˆ', 'EdiÃ§Ã£o', 'Ð˜Ð·Ð´Ð°Ð½Ð¸Ðµ', 'Ã‰dition', 'íŒ', 'Auflage', 'Edizione', 'à¸‰à¸šà¸±à¸š', 'KiadÃ¡s', 'Editie', 'edition', 'Edisi', 'BaskÄ±', 'Î•ÎºÎ´Î¿ÏƒÎ·', 'Ù†Ø³Ø®Ù‡', 'Edisi', 'à°Žà°¡à°¿à°·à°¨à±', 'à®ªà®¤à®¿à®ªà¯à®ªà¯', 'àª†àªµà«ƒàª¤à«àª¤àª¿', 'Wydanie', 'Ð’Ð¸Ð´Ð°Ð½Ð½Ñ', 'à¨à¨¡à©€à¨¸à¨¼à¨¨', 'EdiÈ›ie', 'Edition á€€á€­á€¯', 'Itá»sá»na', 'Edition', NULL, NULL),
(206, 'almira_rack', 'Almira No', 'তাক ', 'Almira No', 'Ø£Ù„Ù…ÙŠØ±Ø§ Ù†Ùˆ', 'à¤…à¤²à¤®à¤¿à¤°à¤¾ à¤¨à¥‹', 'Ø§Ù„Ø§Ù…Ø±Ø§ Ù†Ù…Ø¨Ø±', 'Almira No', 'Almira No', 'Almira NÃ£o', 'ÐÐ»ÑŒÐ¼Ð¸Ñ€Ð° ÐÐµÑ‚', 'Almira Non', 'Almira No', 'Almira Nein', 'Almira no', 'Almira No', 'Almira No', 'Almira Nee', 'Non Almira', 'Almira No', 'Almira HayÄ±r', 'Î‘Î»Î¼Î¯ÏÎ± ÎŒÏ‡Î¹', 'Ø¢Ù„Ù…ÛŒØ±Ø§ Ù†Ù‡', 'Almira No', 'à°…à°²à±à°®à°¿à°°à°¾ à°¨à°‚', 'à®…à®²à¯à®®à®¿à®°à®¾ à®‡à®²à¯à®²à¯ˆ', 'àª…àª²àª®àª°àª¾ àª¨àª¾', 'Almira Nie', 'ÐÐ»ÑŒÐ¼Ñ–Ñ€Ð° â„–', 'à¨…à¨²à¨®à¨¾à¨®à¨¾ à¨¨à©°', 'Almira nr', 'Almira á€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'Almira Báº¹áº¹ká»', 'Almira Babu', NULL, NULL),
(207, 'yes', 'Yes', 'হ্যাঁ ', 'SÃ­', 'Ù†Ø¹Ù… ÙØ¹Ù„Ø§', 'à¤¹à¤¾à¤', 'Ø¬ÛŒ ÛØ§Úº', 'æ˜¯', 'ã¯ã„', 'sim', 'Ð´Ð°', 'Oui', 'ì˜ˆ', 'Ja', 'sÃ¬', 'à¹ƒà¸Šà¹ˆ', 'Igen', 'Ja', 'Ita', 'iya nih', 'Evet', 'ÎÎ±Î¯', 'Ø¨Ù„Ù‡', 'Ya', 'à°…à°µà±à°¨à±', 'à®†à®®à¯', 'àª¹àª¾', 'tak', 'Ð¢Ð°Ðº', 'à¨¹à¨¾à¨‚', 'da', 'á€Ÿá€¯á€á€ºá€€á€²á€·', 'Báº¹áº¹ni', 'Ee', NULL, NULL),
(208, 'no', 'No', 'না', 'No', 'Ù„Ø§', 'à¤¨à¤¹à¥€à¤‚', 'Ù†ÛÛŒÚº', 'æ²¡æœ‰', 'ã„ã„ãˆ', 'NÃ£o', 'Ð½ÐµÑ‚', 'Non', 'ì•„ë‹ˆ', 'Nein', 'No', 'à¹„à¸¡à¹ˆ', 'Nem', 'Nee', 'nullum', 'Tidak', 'Yok hayÄ±r', 'ÎŸÏ‡Î¹', 'Ù†Ù‡', 'Tidak', 'à°¤à±‹à°¬à±à°Ÿà±à°Ÿà±à°µà±à°²', 'à®‡à®²à¯à®²à¯ˆ', 'àª¨àª¾', 'Nie', 'ÐÐµÐ¼Ð°Ñ”', 'à¨¨à¨¹à©€à¨‚', 'Nu', 'á€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'Rara', 'Aa', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(209, 'library_id', 'Library ID', 'লাইব্রেরী আইডি ', 'ID de biblioteca', 'Ù…Ø¹Ø±Ù Ø§Ù„Ù…ÙƒØªØ¨Ø©', 'à¤²à¤¾à¤‡à¤¬à¥à¤°à¥‡à¤°à¥€ à¤†à¤ˆà¤¡à¥€', 'Ù„Ø§Ø¦Ø¨Ø±ÛŒØ±ÛŒ Ú©ÛŒ Ø´Ù†Ø§Ø®Øª', 'åº“ID', 'ãƒ©ã‚¤ãƒ–ãƒ©ãƒªID', 'ID da biblioteca', 'Ð˜Ð” Ð±Ð¸Ð±Ð»Ð¸Ð¾Ñ‚ÐµÐºÐ¸', 'ID de la bibliothÃ¨que', 'ë„ì„œê´€ ID', 'Bibliotheks-ID', 'ID della biblioteca', 'ID à¸«à¹‰à¸­à¸‡à¸ªà¸¡à¸¸à¸”', 'KÃ¶nyvtÃ¡r azonosÃ­tÃ³ja', 'Bibliotheek-ID', 'id bibliothecam', 'ID Perpustakaan', 'KÃ¼tÃ¼phane kimliÄŸi', 'Î‘Î½Î±Î³Î½Ï‰ÏÎ¹ÏƒÏ„Î¹ÎºÏŒ Î²Î¹Î²Î»Î¹Î¿Î¸Î®ÎºÎ·Ï‚', 'Ø´Ù†Ø§Ø³Ù‡ Ú©ØªØ§Ø¨Ø®Ø§Ù†Ù‡', 'ID Perpustakaan', 'à°²à±ˆà°¬à±à°°à°°à±€ ID', 'à®¨à¯‚à®²à®• à®à®Ÿà®¿', 'àª²àª¾àª‡àª¬à«àª°à«‡àª°à«€ ID', 'Identyfikator biblioteki', 'Ð†Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ñ€ Ð±Ñ–Ð±Ð»Ñ–Ð¾Ñ‚ÐµÐºÐ¸', 'à¨²à¨¾à¨‡à¨¬à©à¨°à©‡à¨°à©€ à¨†à¨ˆà¨¡à©€', 'ID-ul bibliotecii', 'á€…á€¬á€€á€¼á€Šá€ºá€·á€á€­á€¯á€€á€º ID á€€á€­á€¯', 'ID ibi ipamá»', 'ID ID', NULL, NULL),
(210, 'return_this', 'Return This', 'ফেরত নিন ', 'Devuelve esto', 'Ø¹ÙˆØ¯Ø© Ù‡Ø°Ø§', 'à¤¯à¤¹ à¤µà¤¾à¤ªà¤¸à¥€ à¤•à¤°à¥‡à¤‚', 'ÙˆØ§Ù¾Ø³ Ù„Ùˆ', 'è¿”å›žè¿™ä¸ª', 'ã“ã‚Œã‚’è¿”ã™', 'Retornar isso', 'Ð’Ð¾Ð·Ð²Ñ€Ð°Ñ‰ÐµÐ½Ð¸Ðµ', 'Retournez ceci', 'ë°˜í™˜ì´', 'Gib das zurÃ¼ck', 'Restituire questo', 'à¸à¸¥à¸±à¸šà¸™à¸µà¹‰', 'Vissza', 'Keer dit terug', 'return haec', 'Kembalikan ini', 'Geri dÃ¶n', 'Î•Ï€Î¹ÏƒÏ„ÏÎ­ÏˆÏ„Îµ Î±Ï…Ï„ÏŒ', 'Ø¨Ø§Ø²Ú¯Ø´Øª Ø§ÛŒÙ†', 'Pulangkan ini', 'à°ˆ à°°à°¿à°Ÿà°°à±à°¨à±', 'à®‡à®¨à¯à®¤ à®¤à®¿à®°à¯à®®à¯à®ªà¯', 'àª† àª†àªµà«‹', 'WrÃ³Ä‡ to', 'ÐŸÐ¾Ð²ÐµÑ€Ð½Ñ–Ñ‚ÑŒ Ñ†Ðµ', 'à¨‡à¨¸ à¨¨à©‚à©° à¨µà¨¾à¨ªà¨¸ à¨•à¨°à©‹', 'ÃŽntoarce-te', 'á€¤á€žá€Šá€ºá€•á€¼á€”á€ºá€žá€½á€¬á€¸á€žá€Šá€º', 'Da eyi pada', 'Koma wannan', NULL, NULL),
(211, 'vehicle_model', 'Vehicle Model', 'যান মডেল ', 'Modelo de vehÃ­culo', 'Ù†Ù…ÙˆØ°Ø¬ Ø§Ù„Ù…Ø±ÙƒØ¨Ø©', 'à¤µà¤¾à¤¹à¤¨ à¤®à¥‰à¤¡à¤²', 'Ú¯Ø§Ú‘ÛŒ Ú©Ø§ Ù…Ø§ÚˆÙ„', 'è½¦è¾†æ¨¡åž‹', 'è»Šä¸¡ãƒ¢ãƒ‡ãƒ«', 'Modelo do veÃ­culo', 'ÐœÐ¾Ð´ÐµÐ»ÑŒ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ð¾Ð³Ð¾ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°', 'ModÃ¨le de vÃ©hicule', 'ì°¨ëŸ‰ ëª¨ë¸', 'Fahrzeugmodell', 'Modello di veicolo', 'à¹‚à¸¡à¹€à¸”à¸¥à¸£à¸–', 'JÃ¡rmÅ±modell', 'Voertuigmodel', 'vehiculum Model', 'Model Kendaraan', 'AraÃ§ modeli', 'ÎœÎ¿Î½Ï„Î­Î»Î¿ Î¿Ï‡Î®Î¼Î±Ï„Î¿Ï‚', 'Ù…Ø¯Ù„ Ø®ÙˆØ¯Ø±Ùˆ', 'Model Kenderaan', 'à°µà°¾à°¹à°¨ à°¨à°®à±‚à°¨à°¾', 'à®µà®¾à®•à®© à®®à®¾à®¤à®¿à®°à®¿', 'àªµàª¾àª¹àª¨ àª®à«‹àª¡à«‡àª²', 'model maszyny', 'ÐœÐ¾Ð´ÐµÐ»ÑŒ Ð°Ð²Ñ‚Ð¾Ð¼Ð¾Ð±Ñ–Ð»Ñ', 'à¨µà¨¾à¨¹à¨¨ à¨®à¨¾à¨¡à¨²', 'Modelul vehiculului', 'á€šá€¬á€‰á€ºá€™á€±á€¬á€ºá€’á€šá€º', 'Apáº¹áº¹ráº¹ á»ká» ayá»káº¹láº¹', 'Vehicle Model', NULL, NULL),
(212, 'driver', 'Driver', 'চালক ', 'Conductor', 'Ø³Ø§Ø¦Ù‚', 'à¤šà¤¾à¤²à¤•', 'ÚˆØ±Ø§Ø¦ÛŒÙˆØ±', 'å¸æœº', 'ãƒ‰ãƒ©ã‚¤ãƒ', 'Motorista', 'Ð’Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÑŒ', 'Chauffeur', 'ìš´ì „ì‚¬', 'Treiber', 'autista', 'à¸„à¸™à¸‚à¸±à¸šà¸£à¸–', 'SofÅ‘r', 'Bestuurder', 'agitator', 'Sopir', 'sÃ¼rÃ¼cÃ¼', 'ÎŸÎ´Î·Î³ÏŒÏ‚', 'Ø±Ø§Ù†Ù†Ø¯Ù‡', 'Pemandu', 'à°¡à±à°°à±†à±–à°µà°°à±', 'à®‡à®¯à®•à¯à®•à®¿', 'àª¡à«àª°àª¾àªˆàªµàª°', 'Kierowca', 'Ð’Ð¾Ð´Ñ–Ð¹', 'à¨¡à¨°à¨¾à¨‡à¨µà¨°', 'ConducÄƒtor auto', 'á€™á€±á€¬á€„á€ºá€¸á€žá€°', 'Awako', 'Driver', NULL, NULL),
(213, 'vehicle_license', 'Vehicle License', 'যানবাহন লাইসেন্স ', 'Licencia del vehÃ­culo', 'Ø±Ø®ØµØ© Ø§Ù„Ø³ÙŠØ§Ø±Ø©', 'à¤µà¤¾à¤¹à¤¨ à¤²à¤¾à¤‡à¤¸à¥‡à¤‚à¤¸', 'Ú¯Ø§Ú‘ÛŒØ§Úº Ù„Ø§Ø¦Ø³Ù†Ø³', 'è½¦è¾†ç‰Œç…§', 'è»Šä¸¡ãƒ©ã‚¤ã‚»ãƒ³ã‚¹', 'LicenÃ§a de veÃ­culo', 'Ð›Ð¸Ñ†ÐµÐ½Ð·Ð¸Ñ Ð½Ð° Ð°Ð²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»ÑŒ', 'Licence de vÃ©hicule', 'ì°¨ëŸ‰ ë©´í—ˆ', 'Fahrzeuglizenz', 'Licenza del veicolo', 'à¹ƒà¸šà¸‚à¸±à¸šà¸‚à¸µà¹ˆ', 'GÃ©pjÃ¡rmÅ±-engedÃ©ly', 'Voertuig licentie', 'vehiculum License', 'Lisensi Kendaraan', 'AraÃ§ LisansÄ±', 'Î†Î´ÎµÎ¹Î± Î¿Ï‡Î®Î¼Î±Ï„Î¿Ï‚', 'Ù…Ø¬ÙˆØ² Ø®ÙˆØ¯Ø±Ùˆ', 'Lesen Kenderaan', 'à°µà°¾à°¹à°¨ à°²à±ˆà°¸à±†à°¨à±à°¸à±', 'à®µà®¾à®•à®© à®‰à®°à®¿à®®à®®à¯', 'àªµàª¾àª¹àª¨ àª²àª¾àª‡àª¸àª¨à«àª¸', 'Licencja pojazdu', 'Ð›Ñ–Ñ†ÐµÐ½Ð·Ñ–Ñ Ð½Ð° Ð°Ð²Ñ‚Ð¾Ð¼Ð¾Ð±Ñ–Ð»ÑŒ', 'à¨µà¨¾à¨¹à¨¨ à¨²à¨¾à¨‡à¨¸à©ˆà¨‚à¨¸', 'LicenÈ›a vehiculului', 'á€šá€¬á€‰á€ºá€œá€­á€¯á€„á€ºá€…á€„á€º', 'Iwe-aá¹£áº¹ á»ká» ayá»káº¹láº¹', 'Takardar Lasin Jirgin', NULL, NULL),
(214, 'vehicle_contact', 'Vehicle Contact', 'যানবাহন যোগাযোগ ', 'Contacto del vehÃ­culo', 'Ø§Ù„Ø§ØªØµØ§Ù„ Ù…Ø±ÙƒØ¨Ø©', 'à¤µà¤¾à¤¹à¤¨ à¤¸à¤‚à¤ªà¤°à¥à¤•', 'Ú¯Ø§Ú‘ÛŒ Ø³Û’ Ø±Ø§Ø¨Ø·Û', 'è½¦è¾†æŽ¥è§¦', 'è»Šä¸¡ã®é€£çµ¡å…ˆ', 'Contato com o veÃ­culo', 'ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚ Ñ Ð°Ð²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»ÐµÐ¼', 'Contact du vÃ©hicule', 'ì°¨ëŸ‰ ì—°ë½ì²˜', 'Fahrzeugkontakt', 'Contatto del veicolo', 'à¸•à¸´à¸”à¸•à¹ˆà¸­à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°', 'JÃ¡rmÅ± kapcsolattartÃ³', 'Contactpersoon voor voertuigen', 'Contact vehiculum', 'Kontak Kendaraan', 'AraÃ§ TemasÄ±', 'Î•Ï€Î¹ÎºÎ¿Î¹Î½Ï‰Î½Î¯Î± Î¼Îµ Ï„Î¿ ÏŒÏ‡Î·Î¼Î±', 'ØªÙ…Ø§Ø³ Ø¨Ø§ Ø®ÙˆØ¯Ø±Ùˆ', 'Kenalan Kenderaan', 'à°µà°¾à°¹à°¨ à°¸à°‚à°ªà±à°°à°¦à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®¾à®•à®© à®¤à¯Šà®Ÿà®°à¯à®ªà¯', 'àªµàª¾àª¹àª¨ àª¸àª‚àªªàª°à«àª•', 'Kontakt z pojazdem', 'ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚ Ð· Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ð¸Ð¼ Ð·Ð°ÑÐ¾Ð±Ð¾Ð¼', 'à¨µà¨¾à¨¹à¨¨ à¨¸à©°à¨ªà¨°à¨•', 'Contactul vehiculului', 'á€šá€¬á€‰á€ºá€†á€€á€ºá€žá€½á€šá€ºá€•á€«', 'á»Œká» á»ká» ayá»káº¹láº¹', 'Sadarwar mota', NULL, NULL),
(215, 'route_start', 'Route Start', 'প্রারম্ভিক রুট ', 'Ruta de inicio', 'Ø¨Ø¯Ø§ÙŠØ© Ø§Ù„Ø·Ø±ÙŠÙ‚', 'à¤°à¥‚à¤Ÿ à¤ªà¥à¤°à¤¾à¤°à¤‚à¤­ à¤•à¤°à¥‡à¤‚', 'Ø±ÙˆÙ¹ Ø´Ø±ÙˆØ¹', 'è·¯çº¿å¼€å§‹', 'ãƒ«ãƒ¼ãƒˆã‚¹ã‚¿ãƒ¼ãƒˆ', 'ComeÃ§o da rota', 'ÐÐ°Ñ‡Ð°Ð»Ð¾ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ð°', 'DÃ©but de litinÃ©raire', 'ê²½ë¡œ ì‹œìž‘', 'Route starten', 'Route Start', 'à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡', 'Ãštvonal indÃ­tÃ¡sa', 'Route Start', 'Satus route', 'Mulai rute', 'Yol BaÅŸlat', 'ÎˆÎ½Î±ÏÎ¾Î· Î´Î¹Î±Î´ÏÎ¿Î¼Î®Ï‚', 'Ø´Ø±ÙˆØ¹ Ù…Ø³ÛŒØ±', 'Jalankan Permulaan', 'à°°à±‚à°Ÿà± à°ªà±à°°à°¾à°°à°‚à°­à°‚', 'à®µà®´à®¿ à®¤à¯Šà®Ÿà®•à¯à®•à®®à¯', 'àª°à«‚àªŸ àªªà«àª°àª¾àª°àª‚àª­', 'Rozpocznij trasÄ™', 'ÐŸÐ¾Ñ‡Ð°Ñ‚Ð¾Ðº Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ñƒ', 'à¨°à©‚à¨Ÿ à¨¸à¨Ÿà¨¾à¨°à¨Ÿ', 'UrmaÈ›i traseul', 'á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸ Start á€€á€­á€¯', 'Ibáº¹ráº¹ á»na', 'Fara hanya', NULL, NULL),
(216, 'route_end', 'Route End', 'শেষের রুট ', 'Ruta final', 'Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ø·Ø±ÙŠÙ‚', 'à¤®à¤¾à¤°à¥à¤— à¤¸à¤®à¤¾à¤ªà¥à¤¤à¤¿', 'Ø±ÙˆÙ¹ Ø§Ø®ØªØªØ§Ù…', 'è·¯çº¿ç»“æŸ', 'ãƒ«ãƒ¼ãƒˆã‚¨ãƒ³ãƒ‰', 'Fim da rota', 'ÐœÐ°Ñ€ÑˆÑ€ÑƒÑ‚Ð½Ñ‹Ð¹ ÐºÐ¾Ð½ÐµÑ†', 'Fin de la route', 'êµ­ë„ ë', 'Routenende', 'Route End', 'Route End', 'Ãštvonal vÃ©ge', 'Route einde', 'iter itineris finis', 'Akhir rute', 'GÃ¼zergah sonu', 'Î”Î¹Î±Î´ÏÎ¿Î¼Î® Î´Î¹Î±Î´ÏÎ¿Î¼Î®Ï‚', 'Ù¾Ø§ÛŒØ§Ù† Ù…Ø³ÛŒØ±', 'Laluan Akhir', 'à°®à°¾à°°à±à°—à°‚ à°Žà°‚à°¡à±', 'à®®à¯à®Ÿà®¿à®µà®Ÿà¯ˆà®¯à¯à®®à¯', 'àª°à«‚àªŸ àªàª¨à«àª¡', 'Koniec trasy', 'ÐšÑ–Ð½ÐµÑ†ÑŒ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ñƒ', 'à¨°à©‚à¨Ÿ à¨à¨‚à¨¡', 'Traseul final', 'á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸á€¡á€†á€¯á€¶á€¸', 'Ipari Ipa', 'Æ˜are Æ˜are', NULL, NULL),
(217, 'route_fare', 'Route Fare', 'রুটের ভাড়া ', 'Ruta de la ruta', 'Ø§Ù„Ø·Ø±ÙŠÙ‚ Ø§Ù„Ø£Ø¬Ø±Ø©', 'à¤°à¥‚à¤Ÿ à¤•à¤¿à¤°à¤¾à¤¯à¤¾', 'Ø±Ø§Ø³ØªÛ’ Ú©ÛŒ Ù‚Ø³Ù…', 'è·¯çº¿ç»“æŸ', 'ãƒ«ãƒ¼ãƒˆé‹è³ƒ', 'Tarifa de rota', 'ÐœÐ°Ñ€ÑˆÑ€ÑƒÑ‚Ð½Ð°Ñ Ð¿Ð»Ð°Ñ‚Ð°', 'Route Fare', 'ë…¸ì„  ìš”ê¸ˆ', 'Route Tarif', 'Itinerario', 'à¸„à¹ˆà¸²à¹‚à¸”à¸¢à¸ªà¸²à¸£à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡', 'Ãštvonali vÃ¡sÃ¡rlÃ¡s', 'Route tarief', 'Bene route', 'Tarif rute', 'Yol Ãœcreti', 'Î”Î¹Î±Î´ÏÎ¿Î¼Î® Î´Î¹Î±Î´ÏÎ¿Î¼Î®Ï‚', 'Ú©Ø±Ø§ÛŒÙ‡ ØªØ§Ú©Ø³ÛŒ', 'Tambang Laluan', 'à°°à±‚à°Ÿà± à°«à±‡à°°à±', 'à®µà®´à®¿ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àª°à«‚àªŸ àª«à«‡àª°', 'OpÅ‚ata za przejazd', 'Ð’Ð°Ñ€Ñ‚Ñ–ÑÑ‚ÑŒ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ñƒ', 'à¨°à©‚à¨Ÿ à¨•à¨¿à¨°à¨¾à¨‡à¨†', 'Route Fare', 'á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸á€œá€€á€ºá€™á€¾á€á€ºá€á€™á€»á€¬á€¸', 'Ipa itá»sá»na', 'Route Fare', NULL, NULL),
(219, 'hostel_type', 'Hostel Type', 'ছাত্রাবাসের ধরণ ', 'Tipo de Hostal', 'Ù†ÙˆØ¹ Ù†Ø²Ù„', 'à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤ªà¥à¤°à¤•à¤¾à¤°', 'ÛØ§Ø³Ù¹Ù„ Ú©ÛŒ Ù‚Ø³Ù…', 'æ—…é¦†ç±»åž‹', 'ãƒ›ã‚¹ãƒ†ãƒ«ã‚¿ã‚¤ãƒ—', 'Tipo de albergue', 'Ð¢Ð¸Ð¿ Ñ…Ð¾ÑÑ‚ÐµÐ»Ð°', 'Type dauberge', 'í˜¸ìŠ¤í…” ìœ í˜•', 'Herbergsart', 'Tipo di ostello', 'à¸›à¸£à¸°à¹€à¸ à¸— Hostel', 'SzÃ¡llÃ³ tÃ­pusa', 'Hostel type', 'Type Hostel', 'Tipe asrama', 'Pansiyon TÃ¼rÃ¼', 'Î¤ÏÏ€Î¿Ï‚ Hostel', 'Ù†ÙˆØ¹ Ø®ÙˆØ§Ø¨Ú¯Ø§Ù‡', 'Jenis Hostel', 'à°¹à°¾à°¸à±à°Ÿà°²à± à°ªà°¦à±à°§à°¤à°¿', 'à®µà®¿à®Ÿà¯à®¤à®¿ à®µà®•à¯ˆ', 'àª›àª¾àª¤à«àª°àª¾àª²àª¯àª¨à«‹ àªªà«àª°àª•àª¾àª°', 'Typ hostelu', 'Ð¢Ð¸Ð¿ Ñ…Ð¾ÑÑ‚ÐµÐ»Ñƒ', 'à¨¹à©‹à¨¸à¨Ÿà¨² à¨¦à©€ à¨•à¨¿à¨¸à¨®', 'Tipul de hostel', 'á€˜á€±á€¬á€ºá€’á€«á€†á€±á€¬á€„á€ºá€¡á€™á€»á€­á€¯á€¸á€¡á€…á€¬á€¸', 'Agbegbe Iru', 'Dakunan kwanan dalibai', NULL, NULL),
(220, 'seat_total', 'Seat Total', 'সর্বমোট সিট ', 'Asiento total', 'Ø§Ù„Ù…Ù‚Ø¹Ø¯ Ø§Ù„ÙƒÙ„ÙŠ', 'à¤¸à¥€à¤Ÿ à¤•à¥à¤²', 'Ø³ÛŒÙ¹ Ú©Ù„', 'åº§ä½æ€»æ•°', 'ã‚·ãƒ¼ãƒˆåˆè¨ˆ', 'Total do assento', 'ÐžÐ±Ñ‰ÐµÐµ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ ÑÐ¸Ð´ÑÑ‡Ð¸Ñ… Ð¼ÐµÑÑ‚', 'SiÃ¨ge Total', 'ì¢Œì„ í•©ê³„', 'Sitzplatz gesamt', 'Totale del sedile', 'à¸—à¸µà¹ˆà¸™à¸±à¹ˆà¸‡à¸£à¸§à¸¡', 'Seat Total', 'Seat Total', 'sede Summa', 'Kursi Total', 'Koltuk Toplam', 'Î˜Î­ÏƒÎ· Î£ÏÎ½Î¿Î»Î¿', 'ØµÙ†Ø¯Ù„ÛŒ Ù…Ø¬Ù…ÙˆØ¹', 'Jumlah tempat duduk', 'à°¸à±€à°Ÿà± à°®à±Šà°¤à±à°¤à°‚', 'à®®à¯Šà®¤à¯à®¤ à®Žà®£à¯à®£à®¿à®•à¯à®•à¯ˆ', 'àª¬à«‡àª àª• àª•à«àª²', 'Seat Total', 'Ð—Ð°Ð³Ð°Ð»ÑŒÐ½Ð° ÐºÑ–Ð»ÑŒÐºÑ–ÑÑ‚ÑŒ ÑÐ¸Ð´Ñ–Ð½ÑŒ', 'à¨¸à©€à¨Ÿ à¨•à©à©±à¨²', 'Seat Total', 'á€‘á€­á€¯á€„á€ºá€á€¯á€¶á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸', 'Okun apapá»', 'Tsawon kuÉ—i', NULL, NULL),
(221, 'cost_per_seat', 'Cost per Seat', 'সিট প্রতি খরচ ', 'Costo por asiento', 'Ø§Ù„ØªÙƒÙ„ÙØ© Ù„ÙƒÙ„ Ù…Ù‚Ø¹Ø¯', 'à¤¸à¥€à¤Ÿ à¤ªà¥à¤°à¤¤à¤¿ à¤¸à¥€à¤Ÿ', 'ÙÛŒ Ø³ÛŒÙ¹ Ù„Ø§Ú¯Øª', 'æ¯ä¸ªåº§ä½çš„æˆæœ¬', '1ã‚·ãƒ¼ãƒˆã‚ãŸã‚Šã®ã‚³ã‚¹ãƒˆ', 'Custo por assento', 'Ð¡Ñ‚Ð¾Ð¸Ð¼Ð¾ÑÑ‚ÑŒ Ð·Ð° Ð¼ÐµÑÑ‚Ð¾', 'CoÃ»t par siÃ¨ge', 'ì¢Œì„ ë‹¹ ë¹„ìš©', 'Kosten pro Sitzplatz', 'Costo per posto', 'à¸•à¹‰à¸™à¸—à¸¸à¸™à¸•à¹ˆà¸­à¸—à¸µà¹ˆà¸™à¸±à¹ˆà¸‡', 'TartÃ³zkodÃ¡si kÃ¶ltsÃ©g', 'Kosten per stoel', 'Sumptus per propitiatorium,', 'Biaya per Kursi', 'Koltuk BaÅŸÄ±na Maliyet', 'ÎšÏŒÏƒÏ„Î¿Ï‚ Î±Î½Î¬ Î˜Î­ÏƒÎ·', 'Ù‡Ø²ÛŒÙ†Ù‡ Ù‡Ø± ØµÙ†Ø¯Ù„ÛŒ', 'Kos setiap Tempat Duduk', 'à°¸à±€à°Ÿà±à°•à± à°–à°°à±à°šà±', 'à®‰à®Ÿà¯à®•à®Ÿà¯à®Ÿà®®à¯ˆà®ªà¯à®ªà¯à®•à¯à®•à®¾à®© à®šà¯†à®²à®µà¯', 'àª¸à«€àªŸ àª¦à«€àª  àª–àª°à«àªš', 'Koszt za miejsce', 'Ð’Ð°Ñ€Ñ‚Ñ–ÑÑ‚ÑŒ Ð·Ð° Ð¼Ñ–ÑÑ†Ðµ', 'à¨ªà©à¨°à¨¤à©€ à¨¸à©€à¨Ÿ à¨¦à©€ à¨²à¨¾à¨—à¨¤', 'Cost pe scaun', 'á€‘á€­á€¯á€„á€ºá€á€¯á€¶á€”á€¾á€¯á€”á€ºá€¸á€€á€¯á€”á€ºá€€á€»á€…á€›á€­á€á€º', 'Iye owo fun ijoko', 'Kudin da Seat', NULL, NULL),
(222, 'compose', 'Compose', 'কম্পোজ ', 'Componer', 'Ù…Ø¤Ù„Ù Ù…ÙˆØ³ÙŠÙ‚Ù‰', 'à¤²à¤¿à¤–à¤¨à¤¾', 'ØªØ­Ø±ÛŒØ± Ú©Ø±ÛŒÚº', 'æ’°å†™', 'ä½œæˆã™ã‚‹', 'Compor', 'ÐºÐ¾Ð¼Ð¿Ð¾Ð½Ð¾Ð²Ð°Ñ‚ÑŒ', 'Composer', 'ì§“ë‹¤', 'Komponieren', 'Comporre', 'à¹à¸•à¹ˆà¸‡', 'Ã–sszeÃ¡llÃ­t', 'Componeren', 'Componere epistolas', 'Menyusun', 'oluÅŸturmak', 'Î£Ï…Î½Î¸Î­Ï„Ï‰', 'Ø³Ø§Ø®ØªÙ†', 'Tuliskan', 'à°•à°‚à°ªà±‹à°œà±', 'à®Žà®´à¯à®¤à¯', 'àª²àª–à«‹', 'KomponowaÄ‡', 'Ð¡ÐºÐ»Ð°ÑÑ‚Ð¸', 'à¨²à¨¿à¨–à©‹', 'Compune', 'compose', 'á¹¢ajá»', 'Shirya', NULL, NULL),
(223, 'folder', 'Folder', 'ফোল্ডার', 'Carpeta', 'Ù…Ø¬Ù„Ø¯', 'à¤«à¤¼à¥‹à¤²à¥à¤¡à¤°', 'ÙÙˆÙ„ÚˆØ±', 'å¤¹', 'ãƒ•ã‚©ãƒ«ãƒ€', 'Pasta', 'ÑÐºÐ¾Ñ€Ð¾ÑÑˆÐ¸Ð²Ð°Ñ‚ÐµÐ»ÑŒ', 'Dossier', 'í´ë”', 'Mappe', 'Cartella', 'à¹‚à¸Ÿà¸¥à¹€à¸”à¸­à¸£à¹Œ', 'Folder', 'Map', 'folder', 'Map', 'KlasÃ¶r', 'ÎÏ„Î¿ÏƒÎ¹Î­', 'Ù¾ÙˆØ´Ù‡', 'Folder', 'à°«à±‹à°²à±à°¡à°°à±', 'à®…à®Ÿà¯ˆà®µà¯', 'àª«à«‹àª²à«àª¡àª°', 'Teczka', 'ÐŸÐ°Ð¿ÐºÐ°', 'à¨«à©‹à¨²à¨¡à¨°', 'Pliant', 'á€–á€­á€¯á€„á€»á€á€¾á€²', 'Folda', 'Jaka', NULL, NULL),
(224, 'inbox', 'Inbox', 'ইনবক্স ', 'Bandeja de entrada', 'ØµÙ†Ø¯ÙˆÙ‚ Ø§Ù„ÙˆØ§Ø±Ø¯', 'à¤‡à¤¨à¤¬à¥‰à¤•à¥à¤¸', 'Ø§Ù† Ø¨Ø§Ú©Ø³', 'æ”¶ä»¶ç®±', 'å—ä¿¡ãƒˆãƒ¬ã‚¤', 'Caixa de entrada', 'Ð²Ñ…Ð¾Ð´ÑÑ‰Ð¸Ðµ', 'BoÃ®te de rÃ©ception', 'ë°›ì€ íŽ¸ì§€í•¨', 'Posteingang', 'Posta in arrivo', 'à¸à¸¥à¹ˆà¸­à¸‡à¸‚à¸²à¹€à¸‚à¹‰à¸²', 'BejÃ¶vÅ‘', 'Postvak IN', 'inbuxo', 'Kotak masuk', 'Gelen kutusu', 'Inbox', 'ØµÙ†Ø¯ÙˆÙ‚ ÙˆØ±ÙˆØ¯ÛŒ', 'Peti masuk', 'à°‡à°¨à±à°¬à°¾à°•à±à°¸à±', 'à®‰à®Ÿà¯à®ªà¯†à®Ÿà¯à®Ÿà®¿', 'àª‡àª¨àª¬à«‰àª•à«àª¸', 'W pudeÅ‚ku', 'Ð’Ñ…Ñ–Ð´Ð½Ñ–', 'à¨‡à¨¨à¨¬à¨¾à¨•à¨¸', 'Inbox', 'inbox á€‘á€²á€™á€¾á€¬', 'Apo-iwá»le', 'Inbox', NULL, NULL),
(225, 'draft', 'Draft', 'খসড়া ', 'Borrador', 'Ù…Ø´Ø±ÙˆØ¹', 'à¤ªà¥à¤°à¤¾à¤°à¥‚à¤ª', 'ÚˆØ±Ø§ÙÙ¹', 'è‰æ¡ˆ', 'ãƒ‰ãƒ©ãƒ•ãƒˆ', 'EsboÃ§o, projeto', 'ÐŸÑ€Ð¾ÐµÐºÑ‚', 'Brouillon', 'ì´ˆì•ˆ', 'Entwurf', 'Bozza', 'à¸£à¹ˆà¸²à¸‡', 'vÃ¡zlat', 'Droogte', 'capturam', 'Konsep', 'taslak', 'Î ÏÎ¿ÏƒÏ‡Î­Î´Î¹Î¿', 'Ù¾ÛŒØ´ Ù†ÙˆÛŒØ³', 'Draf', 'à°¡à±à°°à°¾à°«à±à°Ÿà±', 'à®µà®°à¯ˆà®µà¯', 'àª¡à«àª°àª¾àª«à«àªŸ', 'Wersja robocza', 'Ð§ÐµÑ€Ð½ÐµÑ‚ÐºÐ°', 'à¨¡à¨°à¨¾à¨«à¨Ÿ', 'Proiect', 'á€™á€°á€€á€¼á€™á€ºá€¸', 'Ifaworanhan', 'Shafin', NULL, NULL),
(226, 'trash', 'Trash', 'ট্র্যাশ ', 'Basura', 'Ù‚Ù…Ø§Ù…Ø©ØŒ ÙŠØ¯Ù…Ø±ØŒ ÙŠÙ‡Ø¯Ù…', 'à¤•à¤šà¤°à¤¾', 'Ø±Ø¯ÛŒ Ú©ÛŒ Ù¹ÙˆÚ©Ø±ÛŒ', 'åžƒåœ¾', 'ã”ã¿', 'Lixo', 'Ð´Ñ€ÑÐ½ÑŒ', 'Poubelle', 'íë¬¼', 'MÃ¼ll', 'Spazzatura', 'à¸‚à¸¢à¸°', 'SzemÃ©t', 'uitschot', 'quisquiliae', 'Sampah', 'Ã‡Ã¶p', 'Î£ÎºÎ¿Ï…Ï€Î¯Î´Î¹Î±', 'Ø²Ø¨Ø§Ù„Ù‡ Ù‡Ø§', 'Sampah', 'à°Ÿà±à°°à°¾à°·à±', 'à®•à¯à®ªà¯à®ªà¯ˆà®•à¯à®•à¯', 'àªŸà«àª°à«…àª¶', 'Åšmieci', 'Ð¡Ð¼Ñ–Ñ‚Ñ‚Ñ', 'à¨Ÿà©à¨°à©ˆà¨¸à¨¼', 'Gunoi', 'á€¡á€žá€¯á€¶á€¸á€™á€›á€žá€±á€¬á€¡á€›á€¬', 'Idá»ti', 'Shara', NULL, NULL),
(227, 'message', 'Message', 'বার্তা ', 'Mensaje', 'Ø±Ø³Ø§Ù„Ø©', 'à¤¸à¤‚à¤¦à¥‡à¤¶', 'Ù¾ÛŒØºØ§Ù…', 'ä¿¡æ¯', 'ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸', 'mensagem', 'Ð¡Ð¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ', 'Message', 'ë©”ì‹œì§€', 'Botschaft', 'Messaggio', 'à¸‚à¹ˆà¸²à¸§à¸ªà¸²à¸£', 'Ãœzenet', 'Bericht', 'Nuntius', 'Pesan', 'Mesaj', 'ÎœÎ®Î½Ï…Î¼Î±', 'Ù¾ÛŒØ§Ù…', 'Mesej', 'à°¸à°‚à°¦à±‡à°¶à°‚', 'à®šà¯†à®¯à¯à®¤à®¿', 'àª¸àª‚àª¦à«‡àª¶', 'WiadomoÅ›Ä‡', 'Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½Ñ', 'à¨¸à©à¨¨à©‡à¨¹à¨¾', 'Mesaj', 'á€™á€€á€ºá€†á€±á€·á€á€ºá€»á€€á€­á€¯', 'Ifiraná¹£áº¹', 'SaÆ™o', NULL, NULL),
(228, 'discard', 'Discard', 'বাতিল ', 'Descarte', 'ØªØ¬Ø§Ù‡Ù„', 'à¤›à¥‹à¤¡à¤¼à¤¨à¤¾', 'Ø±Ú©Ú¾Ùˆ', 'ä¸¢å¼ƒ', 'ç ´æ£„', 'Descartar', 'Ð¾Ñ‚Ð±Ñ€Ð°ÑÑ‹Ð²Ð°Ñ‚ÑŒ', 'Jeter', 'í¬ê¸°', 'Verwerfen', 'Scartare', 'à¸—à¸´à¹‰à¸‡', 'Dobja', 'afdanken', 'Relinquere', 'Membuang', 'Ä±skarta', 'Î‘Ï€Î¿ÏÏÎ¯Ï€Ï„Ï‰', 'Ù†Ø§Ø¯ÛŒØ¯Ù‡ Ú¯Ø±ÙØªÙ†', 'Buang', 'à°µà°¿à°¸à±à°®à°°à°¿à°‚à°šà±', 'à®¨à®¿à®°à®¾à®•à®°à®¿', 'àª•àª¾àª¢à«€ àª¨àª¾àª–à«‹', 'OdrzucaÄ‡', 'Ð’Ñ–Ð´Ñ…Ð¸Ð»Ð¸Ñ‚Ð¸', 'à¨¬à¨°à¨–à¨¾à¨¸à¨¤ à¨•à¨°à©‹', 'decarta', 'á€…á€½á€”á€·á€ºá€•á€…á€º', 'á¹¢abá»', 'Zubar da', NULL, NULL),
(229, 'receiver_type', 'Receiver Type', 'প্রাপকের ধরণ ', 'Tipo de receptor', 'Ù†ÙˆØ¹ Ø¬Ù‡Ø§Ø² Ø§Ù„Ø§Ø³ØªÙ‚Ø¨Ø§Ù„', 'à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤à¤•à¤°à¥à¤¤à¤¾ à¤ªà¥à¤°à¤•à¤¾à¤°', 'Ø±Ø³ÛŒÙˆØ± Ú©ÛŒ Ù‚Ø³Ù…', 'æŽ¥æ”¶å™¨ç±»åž‹', 'å—ä¿¡æ©Ÿã‚¿ã‚¤ãƒ—', 'Tipo de receptor', 'Ð¢Ð¸Ð¿ Ð¿Ñ€Ð¸ÐµÐ¼Ð½Ð¸ÐºÐ°', 'Type de rÃ©cepteur', 'ìˆ˜ì‹ ê¸° ìœ í˜•', 'EmpfÃ¤ngertyp', 'Tipo di ricevitore', 'à¸›à¸£à¸°à¹€à¸ à¸—à¸•à¸±à¸§à¸£à¸±à¸šà¸ªà¸±à¸à¸à¸²à¸“', 'VevÅ‘tÃ­pus', 'Ontvanger Type', 'Type receptorem', 'Jenis Penerima', 'AlÄ±cÄ± TÃ¼rÃ¼', 'Î¤ÏÏ€Î¿Ï‚ Î´Î­ÎºÏ„Î·', 'Ù†ÙˆØ¹ Ú¯ÛŒØ±Ù†Ø¯Ù‡', 'Jenis Penerima', 'à°¸à±à°µà±€à°•à°°à±à°¤ à°ªà°¦à±à°§à°¤à°¿', 'à®ªà¯†à®±à¯à®¨à®°à¯ à®µà®•à¯ˆ', 'àª°à«€àª¸à«€àªµàª° àªªà«àª°àª•àª¾àª°', 'Typ odbiornika', 'Ð¢Ð¸Ð¿ Ð¿Ñ€Ð¸Ð¹Ð¼Ð°Ñ‡Ð°', 'à¨ªà©à¨°à¨¾à¨ªà¨¤à¨•à¨°à¨¤à¨¾ à¨•à¨¿à¨¸à¨®', 'Tip receptor', 'receiver á€¡á€™á€»á€­á€¯á€¸á€¡á€…á€¬á€¸', 'Gbigba Iru', 'Mai karÉ“a iri', NULL, NULL),
(230, 'receiver', 'Receiver', 'প্রাপক ', 'Receptor', 'Ø§Ù„Ù…ØªÙ„Ù‚ÙŠ', 'à¤°à¤¿à¤¸à¥€à¤µà¤°', 'ÙˆØµÙˆÙ„ Ú©Ù†Ù†Ø¯Û', 'æŽ¥æ”¶å™¨', 'å—ä¿¡æ©Ÿ', 'Receptor', 'ÐŸÐ¾Ð»ÑƒÑ‡Ð°Ñ‚ÐµÐ»ÑŒ', 'Destinataire', 'ë¦¬ì‹œë²„', 'EmpfÃ¤nger', 'Ricevitore', 'à¸œà¸¹à¹‰à¸£à¸±à¸š', 'Receiver', 'Ontvanger', 'receptor', 'Penerima', 'AlÄ±cÄ±', 'Î”Î­ÎºÏ„Î·Ï‚', 'Ú¯ÛŒØ±Ù†Ø¯Ù‡', 'Penerima', 'à°¸à±à°µà±€à°•à°°à±à°¤', 'à®°à®¿à®šà¯€à®µà®°à¯', 'àª°à«€àª¸à«€àªµàª°', 'Odbiorca', 'ÐŸÑ€Ð¸Ð¹Ð¼Ð°Ñ‡', 'à¨ªà©à¨°à¨¾à¨ªà¨¤à¨•à¨°à¨¤à¨¾', 'Receptor', 'á€œá€€á€ºá€á€¶', 'olugba', 'Mai karÉ“ar', NULL, NULL),
(231, 'time', 'Time', 'সময় ', 'Hora', 'Ø²Ù…Ù†', 'à¤ªà¤¹à¤°', 'ÙˆÙ‚Øª', 'æ—¶é—´', 'æ™‚é–“', 'Tempo', 'Ð’Ñ€ÐµÐ¼Ñ', 'Temps', 'ì‹œê°', 'Zeit', 'Tempo', 'à¹€à¸§à¸¥à¸²', 'IdÅ‘', 'Tijd', 'Tempus', 'Waktu', 'Zaman', 'Ï‡ÏÏŒÎ½Î¿Ï‚', 'Ø²Ù…Ø§Ù†', 'Masa', 'à°¸à°®à°¯à°‚', 'à®¨à¯‡à®°à®®à¯', 'àª¸àª®àª¯', 'Czas', 'Ð§Ð°Ñ', 'à¨¸à¨®à¨¾à¨‚', 'Timp', 'á€¡á€á€»á€­á€”á€º', 'Aago', 'Lokaci', NULL, NULL),
(232, 'read_message', 'Read Message', 'বার্তা পড়ুন ', 'Leer el mensaje', 'Ø§Ù‚Ø±Ø£ Ø§Ù„Ø±Ø³Ø§Ù„Ù‡', 'à¤¸à¤‚à¤¦à¥‡à¤¶ à¤ªà¤¢à¤¼à¤¨à¤¾', 'Ù¾ÛŒØºØ§Ù… Ù¾Ú‘Ú¾ÛŒÚº', 'é˜…è¯»æ¶ˆæ¯', 'ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ã‚’èª­ã‚€', 'Leia a mensagem', 'Ð§Ð¸Ñ‚Ð°Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ', 'Lire le message', 'ë©”ì‹œì§€ ì½ê¸°', 'Lies die Nachricht', 'Leggi il messaggio', 'à¸­à¹ˆà¸²à¸™à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡', 'Ãœzenet olvasÃ¡sa', 'Lees bericht', 'Read Nuntius', 'Baca pesan', 'MesajÄ± oku', 'Î”Î¹Î±Î²Î¬ÏƒÏ„Îµ Ï„Î¿ Î¼Î®Î½Ï…Î¼Î±', 'Ø®ÙˆØ§Ù†Ø¯Ù† Ù¾ÛŒØ§Ù…', 'Baca Mesej', 'à°¸à°‚à°¦à±‡à°¶à°‚ à°šà°¦à°µà°‚à°¡à°¿', 'à®šà¯†à®¯à¯à®¤à®¿ à®µà®¾à®šà®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¸àª‚àª¦à«‡àª¶ àªµàª¾àª‚àªšà«‹', 'CzytaÄ‡ wiadomoÅ›Ä‡', 'Ð§Ð¸Ñ‚Ð°Ñ‚Ð¸ Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½Ñ', 'à¨¸à©à¨¨à©‡à¨¹à¨¾ à¨ªà©œà©à¨¹à©‹', 'CitiÈ›i mesajul', 'á€€á€­á€¯ Message á€€á€­á€¯á€–á€á€ºá€•á€«', 'Ka Ifiraná¹£áº¹', 'Karanta SaÆ™o', NULL, NULL),
(233, 'reply', 'Reply', 'প্রত্যুত্তর ', 'Respuesta', 'Ø§Ù„Ø±Ø¯', 'à¤œà¤µà¤¾à¤¬ à¤¦à¥‡ à¤¦à¥‹', 'Ø¬ÙˆØ§Ø¨ Ø¯ÛŒÚº', 'å›žå¤', 'å¿œç­”', 'Resposta', 'ÐžÑ‚Ð²ÐµÑ‚Ð¸Ñ‚ÑŒ', 'RÃ©pondre', 'ëŒ“ê¸€', 'Antworten', 'rispondere', 'à¸•à¸­à¸š', 'VÃ¡lasz', 'Antwoord', 'Respondeo', 'Balasan', 'cevap', 'Î‘Ï€Î¬Î½Ï„Î·ÏƒÎ·', 'Ù¾Ø§Ø³Ø®', 'Balas', 'à°ªà±à°°à°¤à±à°¯à±à°¤à±à°¤à°°à°‚', 'à®ªà®¤à®¿à®²à¯', 'àªœàªµàª¾àª¬ àª†àªªà«‹', 'OdpowiadaÄ‡', 'Ð’Ñ–Ð´Ð¿Ð¾Ð²Ñ–Ð´ÑŒ', 'à¨œà¨µà¨¾à¨¬ à¨¦à¨¿à¨‰', 'RÄƒspuns', 'á€•á€¼á€”á€ºá€€á€¼á€¬á€¸á€á€»á€€á€º', 'Idahun', 'Amsa', NULL, NULL),
(234, 'attachment', 'Attachment', 'সংযুক্তি ', 'Adjunto archivo', 'Ø§Ù„Ù…Ø±ÙÙ‚', 'à¤†à¤¸à¤•à¥à¤¤à¤¿', 'Ù…Ù†Ø³Ù„Ú©Û', 'é™„ä»¶', 'ã‚¢ã‚¿ãƒƒãƒãƒ¡ãƒ³ãƒˆ', 'Anexo', 'Ð¿Ñ€Ð¸ÐºÑ€ÐµÐ¿Ð»ÐµÐ½Ð¸Ðµ', 'Attachement', 'ë¶€ì°©', 'Befestigung', 'attaccamento', 'à¸„à¸§à¸²à¸¡à¸œà¸¹à¸à¸žà¸±à¸™', 'Attachment', 'gehechtheid', 'affectum', 'Lampiran', 'Ek dosya', 'Î£Ï…Î½Î·Î¼Î¼Î­Î½Î¿', 'Ø¶Ù…ÛŒÙ…Ù‡', 'Lampiran', 'à°œà±‹à°¡à°¿à°‚à°ªà±', 'à®‡à®£à¯ˆà®ªà¯à®ªà¯', 'àªœà«‹àª¡àª¾àª£', 'ZaÅ‚Ä…cznik', 'Ð’ÐºÐ»Ð°Ð´ÐµÐ½Ð½Ñ', 'à¨…à¨Ÿà©ˆà¨šà¨®à©ˆà¨‚à¨Ÿ', 'AtaÈ™ament', 'á€•á€°á€¸á€á€½á€²á€™á€¾á€¯', 'Asopá»', 'Abin haÉ—i', NULL, NULL),
(235, 'dynamic_tag', 'Dynamic Tag', 'ডাইনামিক ট্যাগ ', 'Etiqueta dinÃ¡mica', 'Ø¹Ù„Ø§Ù…Ø© Ø¯ÙŠÙ†Ø§Ù…ÙŠÙƒÙŠØ©', 'à¤¡à¤¾à¤¯à¤¨à¥‡à¤®à¤¿à¤• à¤Ÿà¥ˆà¤—', 'Ù…ØªØ­Ø±Ú© Ù¹ÛŒÚ¯', 'åŠ¨æ€æ ‡ç­¾', 'å‹•çš„ã‚¿ã‚°', 'Tag dinÃ¢mico', 'Ð”Ð¸Ð½Ð°Ð¼Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹ Ñ‚ÐµÐ³', 'Balise dynamique', 'ë™ì  íƒœê·¸', 'Dynamische Markierung', 'Tag dinamico', 'à¹à¸—à¹‡à¸à¹à¸šà¸šà¹„à¸”à¸™à¸²à¸¡à¸´à¸', 'Dinamikus cÃ­mke', 'Dynamische tag', 'dynamic Omega', 'Tag Dinamis', 'Dinamik Etiket', 'Î”Ï…Î½Î±Î¼Î¹ÎºÎ® ÎµÏ„Î¹ÎºÎ­Ï„Î±', 'Ø¨Ø±Ú†Ø³Ø¨ Ù¾ÙˆÛŒØ§', 'Tag Dinamik', 'à°¡à±ˆà°¨à°®à°¿à°•à± à°Ÿà±à°¯à°¾à°—à±', 'à®Ÿà¯ˆà®©à®®à®¿à®•à¯ à®Ÿà¯‡à®•à¯', 'àª¡àª¾àª¯àª¨à«‡àª®àª¿àª• àªŸà«…àª—', 'Tag dynamiczny', 'Ð”Ð¸Ð½Ð°Ð¼Ñ–Ñ‡Ð½Ð¸Ð¹ Ñ‚ÐµÐ³', 'à¨¡à¨¾à¨‡à¨¨à¨¾à¨®à¨¿à¨• à¨Ÿà©ˆà¨—', 'EtichetÄƒ dinamicÄƒ', 'dynamic Tag á€€á€­á€¯', 'Atiláº¹yin Ayika', 'Dynamic Tag', NULL, NULL),
(236, 'gateway', 'Gateway', 'গেইটওয়ে ', 'Puerta', 'Ø¨ÙˆØ§Ø¨Ø©', 'à¤¦à¥à¤µà¤¾à¤°', 'Ú¯ÛŒÙ¹ ÙˆÛ’', 'ç½‘å…³', 'ã‚²ãƒ¼ãƒˆã‚¦ã‚§ã‚¤', 'Gateway', 'ÑˆÐ»ÑŽÐ·', 'passerelle', 'ê²Œì´íŠ¸ì›¨ì´', 'Tor', 'porta', 'à¸›à¸£à¸°à¸•à¸¹', 'Gateway', 'poort', 'porta', 'pintu gerbang', 'geÃ§it', 'Ï€ÏÎ»Î·', 'Ø¯Ø±ÙˆØ§Ø²Ù‡', 'Gateway', 'à°—à±‡à°Ÿà±à°µà±‡', 'à®¨à¯à®´à¯ˆà®µà®¾à®¯à®¿à®²à¯', 'àª—à«‡àªŸàªµà«‡', 'PrzejÅ›cie', 'Ð¨Ð»ÑŽÐ·', 'à¨—à©‡à¨Ÿà¨µà©‡', 'portal', 'á€á€¶á€á€«á€¸á€•á€±á€«á€€á€º', 'áº¸nu-á»na', 'Æ˜ofar waje', NULL, NULL),
(237, 'email_body', 'Email Body', 'ইমেইল বডি ', 'Cuerpo del correo electronico', 'Ù‡ÙŠØ¦Ø© Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤ˆà¤®à¥‡à¤² à¤¬à¥‰à¤¡à¥€', 'Ø§ÛŒ Ù…ÛŒÙ„ Ø¬Ø³Ù…', 'ç”µå­é‚®ä»¶æ­£æ–‡', 'ãƒ¡ãƒ¼ãƒ«æœ¬æ–‡', 'Corpo do e-mail', 'Ð¢ÐµÐ»Ð¾ Ð¿Ð¸ÑÑŒÐ¼Ð°', 'Corps de le-mail', 'ì´ë©”ì¼ ë³¸ë¬¸', 'Nachrichtentext', 'Email Corpo', 'Email Body', 'Email Body', 'E-mail body', 'Email Corpus', 'Email Tubuh', 'E-posta GÃ¶vdesi', 'Î£ÏŽÎ¼Î± Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï…', 'Ø¨Ø¯Ù† Ø§ÛŒÙ…ÛŒÙ„', 'Badan E-mel', 'à°‡à°®à±†à°¯à°¿à°²à± à°¬à°¾à°¡à±€', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®‰à®Ÿà®²à¯', 'àª‡àª®à«‡àª‡àª² àª¶àª¾àª°à«€àª°àª¿àª•', 'TreÅ›Ä‡ e-maila', 'Email Body', 'à¨ˆà¨®à©‡à¨² à¨¬à¨¾à¨¡à©€', 'Organismul de e-mail', 'á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€•á€­á€¯á€·á€›á€”á€ºá€á€”á€¹á€“á€¬á€€á€­á€¯á€šá€º', 'Imeeli Ara', 'Jikin Jiki', NULL, NULL),
(238, 'notice_for', 'Notice for', 'জন্য নোটিশ ', 'Aviso para', 'Ø¥Ø´Ø¹Ø§Ø± Ù„', 'à¤•à¥‡ à¤²à¤¿à¤ à¤¸à¥‚à¤šà¤¨à¤¾', 'Ù†ÙˆÙ¹Ø³', 'é€šçŸ¥', 'ãŠçŸ¥ã‚‰ã›', 'Aviso para', 'Ð£Ð²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸Ðµ Ð´Ð»Ñ', 'Avis pour', 'ê³µì§€ ì‚¬í•­', 'Hinweis fÃ¼r', 'Avviso per', 'à¹à¸ˆà¹‰à¸‡à¹ƒà¸«à¹‰à¸—à¸£à¸²à¸š', 'FigyelmeztetÃ©s', 'Kennisgeving voor', 'notitia est', 'Pemberitahuan untuk', 'IÃ§in bildirim', 'Î•Î¹Î´Î¿Ï€Î¿Î¯Î·ÏƒÎ· Î³Î¹Î±', 'Ø¨Ø±Ø§ÛŒ', 'Notis untuk', 'à°—à°®à°¨à°¿à°‚à°šà°‚à°¡à°¿', 'à®•à®µà®©à®¿à®•à¯à®•à®µà¯à®®à¯', 'àª®àª¾àªŸà«‡ àª¨à«‹àªŸàª¿àª¸', 'Powiadomienie dla', 'Ð—Ð²ÐµÑ€Ð½Ñ–Ñ‚ÑŒ ÑƒÐ²Ð°Ð³Ñƒ Ð½Ð°', 'à¨²à¨ˆ à¨¨à©‹à¨Ÿà¨¿à¨¸', 'NotÄƒ pentru', 'á€™á€¾á€¯á€¡á€á€½á€€á€ºá€¡á€žá€­á€•á€±á€¸á€…á€¬', 'Akiyesi fun', 'Lura don', NULL, NULL),
(239, 'date', 'Date', 'তারিখ ', 'Fecha', 'ØªØ§Ø±ÙŠØ®', 'à¤¤à¤¾à¤°à¥€à¤–', 'ØªØ§Ø±ÛŒØ®', 'æ—¥æœŸ', 'æ—¥ä»˜', 'Encontro', 'Ð”Ð°Ñ‚Ð°', 'Rendez-vous amoureux', 'ë‚ ì§œ', 'Datum', 'Data', 'à¸§à¸±à¸™à¸—à¸µà¹ˆ', 'DÃ¡tum', 'Datum', 'Date', 'Tanggal', 'tarih', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±', 'ØªØ§Ø±ÛŒØ®', 'Tarikh', 'à°¤à±‡à°¦à±€', 'à®¤à¯‡à®¤à®¿', 'àª¤àª¾àª°à«€àª–', 'Data', 'Ð”Ð°Ñ‚Ð°', 'à¨¤à¨¾à¨°à©€à¨–', 'Data', 'á€”á€±á€·á€…á€¾á€²', 'á»Œjá»', 'Kwanan wata', NULL, NULL),
(240, 'from_date', 'From Date', 'প্রারম্ভিক তারিখ ', 'Partir de la fecha', 'Ù…Ù† Ø§Ù„ØªØ§Ø±ÙŠØ®', 'à¤¤à¤¾à¤°à¥€à¤– à¤¸à¥‡', 'Ø§Ø³ ØªØ§Ø±ÛŒØ® Ø³Û’', 'ä»Žæ—¥æœŸ', 'æ—¥ä»˜ã‹ã‚‰', 'Da data', 'Ð¡ Ð´Ð°Ñ‚Ñ‹', 'Partir de la date', 'ë‚ ì§œë¶€í„°', 'Ab Datum', 'Dalla data', 'à¸ˆà¸²à¸à¸§à¸±à¸™à¸—à¸µà¹ˆ', 'DÃ¡tumtÃ³l', 'Van datum', 'Ex Date', 'Dari tanggal', 'Ä°tibaren', 'Î‘Ï€ÏŒ Ï„Î·Î½ Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±', 'Ø§Ø² ØªØ§Ø±ÛŒØ®', 'Dari tarikh', 'à°¤à±‡à°¦à±€ à°¨à±à°‚à°šà°¿', 'à®¤à¯‡à®¤à®¿ à®®à¯à®¤à®²à¯', 'àª¤àª¾àª°à«€àª–àª¥à«€', 'Od daty', 'Ð’Ñ–Ð´ Ð´Ð°Ñ‚Ð¸', 'à¨®à¨¿à¨¤à©€ à¨¤à©‹à¨‚', 'Din data', 'á€”á€±á€·á€…á€½á€²á€€á€”á€±', 'Lati á»Œjá»', 'Daga Kwanan wata', NULL, NULL),
(241, 'to_date', 'To Date', 'শেষ তারিখ ', 'Hasta la fecha', 'Ø§Ù† ÙŠØ°Ù‡Ø¨ ÙÙŠ Ù…ÙˆØ¹Ø¯', 'à¤¤à¤¾à¤°à¥€à¤– à¤¤à¤•', 'ØªØ§Ø±ÛŒØ® ØªÚ©', 'è‡³ä»Š', 'ç¾åœ¨ã¾ã§', 'AtÃ© a presente data', 'Ð’ÑÑ‚Ñ€ÐµÑ‚Ð¸Ñ‚ÑŒÑÑ1', 'Ã€ ce jour', 'ì˜¤ëŠ˜ê¹Œì§€', 'Miteinander ausgehen', 'Ad oggi', 'à¸–à¸¶à¸‡à¸§à¸±à¸™à¸—à¸µà¹ˆ', 'Randizni', 'Daten', 'Ad Date', 'Saat ini', 'BugÃ¼ne kadar', 'ÎœÎ­Ï‡ÏÎ¹ ÏƒÎ®Î¼ÎµÏÎ±', 'Ø¨Ù‡ Ø±ÙˆØ²', 'Untuk Tarikh', 'à°¤à±‡à°¦à±€ à°µà°°à°•à±', 'à®¤à¯‡à®¤à®¿', 'àª†àªœ àª¸à«àª§à«€', 'SpotykaÄ‡ siÄ™ z kimÅ›', 'Ð”Ð¾ Ð´Ð°Ñ‚Ð¸', 'à¨®à¨¿à¨¤à©€ à¨¤à©±à¨•', 'La zi', 'á€šá€”á€±á€·á€¡á€‘á€­', 'Titi di akoko yi', 'Don Kwanan wata', NULL, NULL),
(242, 'image', 'Image', 'ছবি ', 'Imagen', 'ØµÙˆØ±Ø©', 'à¤›à¤µà¤¿', 'ØªØµÙˆÛŒØ±', 'å›¾ç‰‡', 'ç”»åƒ', 'Imagem', 'ÐžÐ±Ñ€Ð°Ð·', 'Image', 'ì˜ìƒ', 'Bild', 'Immagine', 'à¸ à¸²à¸ž', 'KÃ©p', 'Beeld', 'Image', 'Gambar', 'gÃ¶rÃ¼ntÃ¼', 'Î•Î¹ÎºÏŒÎ½Î±', 'ØªØµÙˆÛŒØ±', 'Gambar', 'à°šà°¿à°¤à±à°°à°‚', 'à®ªà®Ÿ', 'àª›àª¬à«€', 'Obraz', 'Ð—Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ', 'à¨šà¨¿à©±à¨¤à¨°', 'Imagine', 'image á€€á€­á€¯', 'Aworan', 'Hoton hoto', NULL, NULL),
(243, 'event_for', 'Event for', 'জন্য ইভেন্ট ', 'Evento para', 'Ø­Ø¯Ø« Ù„', 'à¤•à¥‡ à¤²à¤¿à¤ à¤˜à¤Ÿà¤¨à¤¾', 'Ú©Û’ Ù„Ø¦Û’ ÙˆØ§Ù‚Ø¹Û', 'äº‹ä»¶', 'ã‚¤ãƒ™ãƒ³ãƒˆ', 'Evento para', 'Ð¡Ð¾Ð±Ñ‹Ñ‚Ð¸Ðµ Ð´Ð»Ñ', 'Ã‰vÃ©nement pour', 'ì´ë²¤íŠ¸', 'Ereignis fÃ¼r', 'Evento per', 'à¸à¸´à¸ˆà¸à¸£à¸£à¸¡à¸ªà¸³à¸«à¸£à¸±à¸š', 'EsemÃ©ny', 'Evenement voor', 'res enim', 'Acara untuk', 'IÃ§in Etkinlik', 'Î•ÎºÎ´Î®Î»Ï‰ÏƒÎ· Î³Î¹Î±', 'Ø±ÙˆÛŒØ¯Ø§Ø¯ Ø¨Ø±Ø§ÛŒ', 'Acara untuk', 'à°ˆà°µà±†à°‚à°Ÿà± à°•à±‹à°¸à°‚', 'à®¨à®¿à®•à®´à¯à®µà¯', 'àª®àª¾àªŸà«‡ àª‡àªµà«‡àª¨à«àªŸ', 'Wydarzenie dla', 'ÐŸÐ¾Ð´Ñ–Ñ Ð´Ð»Ñ', 'à¨²à¨ˆ à¨‡à¨µà©ˆà¨‚à¨Ÿ', 'Eveniment pentru', 'á€™á€»á€¬á€¸á€¡á€á€½á€€á€ºá€¡á€–á€¼á€…á€ºá€¡á€•á€»á€€á€º', 'Iá¹£áº¹láº¹ fun', 'Aukuwa don', NULL, NULL),
(244, 'event_place', 'Event Place', 'ইভেন্টের স্থান ', 'Lugar del evento', 'Ù…ÙƒØ§Ù† Ø§Ù„Ø­Ø¯Ø«', 'à¤‡à¤µà¥‡à¤‚à¤Ÿ à¤ªà¥à¤²à¥‡à¤¸', 'ÙˆØ§Ù‚Ø¹Û Ú©ÛŒ Ø¬Ú¯Û', 'æ´»åŠ¨åœ°ç‚¹', 'ã‚¤ãƒ™ãƒ³ãƒˆä¼šå ´', 'Lugar do Evento', 'ÐœÐµÑÑ‚Ð¾ Ð¿Ñ€Ð¾Ð²ÐµÐ´ÐµÐ½Ð¸Ñ Ð¼ÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ', 'Lieu de lÃ©vÃ©nement', 'í–‰ì‚¬ ìž¥ì†Œ', 'Veranstaltungsort', 'Luogo dellevento', 'à¸ªà¸–à¸²à¸™à¸—à¸µà¹ˆà¸ˆà¸±à¸”à¸‡à¸²à¸™', 'RendezvÃ©nyhelyszÃ­n', 'Evenementplaats', 'res Locus Iste', 'Tempat acara', 'Etkinlik Yeri', 'Î¤ÏŒÏ€Î¿Ï‚ ÎµÎºÎ´Î®Î»Ï‰ÏƒÎ·Ï‚', 'Ù…Ø­Ù„ Ø¨Ø±Ú¯Ø²Ø§Ø±ÛŒ', 'Tempat Acara', 'à°ˆà°µà±†à°‚à°Ÿà± à°ªà±à°²à±‡à°¸à±', 'à®¨à®¿à®•à®´à¯à®µà¯ à®‡à®Ÿà®®à¯', 'àª‡àªµà«‡àª¨à«àªŸ àªªà«àª²à«‡àª¸', 'Miejsce zdarzenia', 'ÐœÑ–ÑÑ†Ðµ Ð¿Ñ€Ð¾Ð²ÐµÐ´ÐµÐ½Ð½Ñ', 'à¨‡à¨µà©ˆà¨‚à¨Ÿ à¨¸à¨¥à¨¾à¨¨', 'Locul evenimentului', 'á€¡á€–á€¼á€…á€ºá€¡á€•á€»á€€á€ºá€”á€±á€›á€¬', 'Ibi ti o á¹£e', 'Tarihin Lura', NULL, NULL),
(245, 'coming_from', 'Coming From', 'থেকে আসছে ', 'Procedente de', 'Ø§Ù„Ù‚Ø§Ø¯Ù…Ø© Ù…Ù†', 'à¤¸à¥‡ à¤† à¤°à¤¹à¥€', 'Ø³Û’ Ø¢Ù†Û’ ÙˆØ§Ù„Û’', 'æ¥è‡ªï¼ˆå“ªé‡Œ', 'ã‹ã‚‰æ¥ã‚‹', 'Vindo de', 'ÐŸÑ€Ð¸Ñ…Ð¾Ð´ÑÑ‰Ð¸Ð¹ Ð¸Ð·', 'Provenir de', 'ì—ì„œ ì˜¤ëŠ”', 'Kommen von', 'Proveniente da', 'à¸¡à¸²à¸ˆà¸²à¸', 'JÃ¶n valahonnan', 'Afkomstig uit', 'Ex', 'Berasal dari', 'Gelen', 'Î Î¿Ï… Ï€ÏÎ¿Î­ÏÏ‡Î¿Î½Ï„Î±Î¹ Î±Ï€ÏŒ', 'Ø¯Ø§Ø±Ù‡ Ù…ÛŒØ§Ø¯ Ø§Ø²', 'Yang datang dari', 'à°µà°¸à±à°¤à±à°¨à±à°¨à°¦à°¿', 'à®µà®°à®µà®¿à®°à¯à®•à¯à®•à®¿à®±à®¤à¯', 'àª†àªµàª¤àª¾', 'Pochodzi z', 'Ð’Ð¸Ñ…Ð¾Ð´ÑÑ‡Ð¸ Ð·', 'à¨¤à©‹à¨‚ à¨† à¨°à¨¿à¨¹à¨¾ à¨¹à©ˆ', 'Provin de la', 'á€™á€¾á€…. á€œá€¬á€™á€šá€ºá€·', 'Wiwa Lati', 'Zuwan Daga', NULL, NULL),
(246, 'to_meet', 'To Meet', 'দেখা হবে ', 'Conocer', 'Ù„ÙƒÙŠ Ù†Ù„ØªÙ‚ÙŠ', 'à¤®à¥€à¤²à¤¨à¤¼à¤¾', 'Ù…Ù„Ù†Û’ Ú©Û’ Ù„Ø¦Û’', 'è§é¢', 'ä¼šã†', 'Encontrar', 'Ð’ÑÑ‚Ñ€ÐµÑ‡Ð°Ñ‚ÑŒÑÑ', 'Rencontrer', 'ë§Œë‚˜ë‹¤', 'Treffen', 'Incontrare', 'à¸žà¸š', 'TalÃ¡lkozni', 'Ontmoeten', 'Convenire', 'Bertemu', 'TanÄ±ÅŸmak', 'ÎÎ± ÏƒÏ…Î½Î±Î½Ï„Î·ÏƒÏ‰', 'Ø¨Ø±Ø§ÛŒ Ø¯ÛŒØ¯Ø§Ø± Ø¨Ø§', 'Berjumpa', 'à°•à°²à°µà°¡à°‚', 'à®šà®¨à¯à®¤à®¿à®•à¯à®•', 'àª®àª³àªµàª¾', 'SpotkaÄ‡', 'Ð—ÑƒÑÑ‚Ñ€Ñ–Ñ‚Ð¸', 'à¨®à¨¿à¨²à¨£ à¨²à¨ˆ', 'A Ã®ntÃ¢lni', 'á€á€½á€±á€·á€–á€­á€¯á€·', 'Lati pade', 'Don saduwa', NULL, NULL),
(247, 'reason_to_meet', 'Reason to Meet', 'দেখা করার কারণ ', 'Motivo para reunirse', 'Ø³Ø¨Ø¨ Ø§Ù„Ø§Ø¬ØªÙ…Ø§Ø¹', 'à¤®à¤¿à¤²à¤¨à¥‡ à¤•à¤¾ à¤•à¤¾à¤°à¤£', 'Ù…Ù„Ø§Ù‚Ø§Øª Ú©Ø±Ù†Û’ Ú©ÛŒ ÙˆØ¬Û', 'æ»¡è¶³çš„ç†ç”±', 'ä¼šã†ç†ç”±', 'RazÃ£o para conhecer', 'ÐŸÑ€Ð¸Ñ‡Ð¸Ð½Ð° Ð²ÑÑ‚Ñ€ÐµÑ‡Ð¸', 'Raison de rencontrer', 'ë§Œë‚˜ëŠ” ì´ìœ ', 'Grund zu treffen', 'Motivo per incontrarsi', 'à¹€à¸«à¸•à¸¸à¸œà¸¥à¸—à¸µà¹ˆà¸ˆà¸°à¸žà¸š', 'A talÃ¡lkozÃ¡s oka', 'Reden om te ontmoeten', 'Ratio ut meet', 'Alasan untuk bertemu', 'TanÄ±ÅŸma Nedeni', 'Î›ÏŒÎ³Î¿Ï‚ Î³Î¹Î± Î½Î± ÏƒÏ…Î½Î±Î½Ï„Î®ÏƒÏ‰', 'Ø¯Ù„ÛŒÙ„ Ø¨Ø±Ø§ÛŒ Ø¯ÛŒØ¯Ø§Ø±', 'Sebab untuk Bertemu', 'à°•à°²à±à°¸à±à°•à±‹à°µà°¡à°¾à°¨à°¿à°•à°¿ à°•à°¾à°°à°£à°‚', 'à®šà®¨à¯à®¤à®¿à®•à¯à®• à®•à®¾à®°à®£à®®à¯', 'àª®àª³àªµàª¾ àª•àª¾àª°àª£', 'PowÃ³d do spotkania', 'ÐŸÑ€Ð¸Ð²Ñ–Ð´ Ð·ÑƒÑÑ‚Ñ€Ñ–Ñ‚Ð¸ÑÑ', 'à¨®à¨¿à¨²à¨£ à¨¦à¨¾ à¨•à¨¾à¨°à¨¨', 'Motivul pentru a satisface', 'á€á€½á€±á€·á€†á€¯á€¶á€–á€­á€¯á€·á€¡á€€á€¼á€±á€¬á€„á€ºá€¸á€›á€„á€ºá€¸', 'Idi lati pade', 'Dalili na Saduwa', NULL, NULL),
(248, 'check_in', 'Check In', 'চেক ইন ', 'Registrarse', 'ØªØ­Ù‚Ù‚ ÙÙŠ', 'à¤šà¥‡à¤• à¤‡à¤¨', 'Ú†ÛŒÚ© Ú©Ø±ÛŒÚº', 'æŠ¥åˆ°', 'ãƒã‚§ãƒƒã‚¯ã‚¤ãƒ³', 'Check-in', 'Ð ÐµÐ³Ð¸ÑÑ‚Ñ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒÑÑ', 'Enregistrement', 'ì²´í¬ì¸', 'Check-In', 'Registrare', 'à¹€à¸Šà¹‡à¸„à¸­à¸´à¸™', 'BecsekkolÃ¡s', 'Check in', 'Reprehendo in', 'Mendaftar', 'GiriÅŸ', 'Î Î±ÏÎ±Î´Î¯Î´Ï‰ Î±Ï€Î¿ÏƒÎºÎµÏ…Î­Ï‚', 'Ú†Ú© Ú©Ø±Ø¯Ù†', 'Daftar masuk', 'à°šà±†à°•à± à°‡à°¨à± à°šà±‡à°¯à°‚à°¡à°¿', 'à®šà®°à®¿à®ªà®¾à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àªšà«‡àª• àª‡àª¨ àª•àª°à«‹', 'ZameldowaÄ‡ siÄ™', 'ÐŸÐµÑ€ÐµÐ²Ñ–Ñ€ÑŒ', 'à¨šà©ˆà©±à¨• à¨‡à¨¨ à¨•à¨°à©‹', 'Verifica', 'á€›á€±á€¬á€€á€ºá€›á€¾á€­á€€á€¼á€±á€¬á€„á€ºá€¸á€…á€¬á€›á€„á€ºá€¸á€žá€½á€„á€ºá€¸á€á€¼á€„á€ºá€¸', 'Wole sinu', 'Rajistan shiga', NULL, NULL),
(249, 'check_out', 'Check Out', 'চেক আউট ', 'Revisa', 'Ø§Ù„Ø¯ÙØ¹', 'à¤šà¥‡à¤• à¤†à¤‰à¤Ÿ', 'Ø§Ø³ Ú©Ùˆ Ø¯ÛŒÚ©Ú¾Ùˆ', 'æŸ¥çœ‹', 'ãƒã‚§ãƒƒã‚¯ã‚¢ã‚¦ãƒˆ', 'Confira', 'ÐŸÑ€Ð¾Ð²ÐµÑ€ÑÑ‚ÑŒ, Ð²Ñ‹Ð¿Ð¸ÑÑ‹Ð²Ð°Ñ‚ÑŒÑÑ', 'Check-out', 'ì²´í¬ ì•„ì›ƒ', 'Auschecken', 'Check-out', 'à¹€à¸Šà¹‡à¸„à¹€à¸­à¸²à¸—à¹Œ', 'KijelentkezÃ©s', 'Uitchecken', 'reprehendo de', 'Periksa', 'Ã‡Ä±kÄ±ÅŸ yapmak', 'ÎŸÎ»Î¿ÎºÎ»Î®ÏÏ‰ÏƒÎ· Î±Î³Î¿ÏÎ¬Ï‚', 'ÙˆØ§Ø±Ø³ÛŒ', 'Semak Keluar', 'à°¤à°¨à°¿à°–à±€ à°šà±‡à°¯à°‚à°¡à°¿', 'à®ªà®¾à®°à¯à®™à¯à®•à®³à¯', 'àª¤àªªàª¾àª¸à«‹', 'SprawdziÄ‡', 'ÐŸÐµÑ€ÐµÐ²Ñ–Ñ€Ð¸Ñ‚Ð¸', 'à¨•à¨®à¨°à¨¾ à¨›à©±à¨¡ à¨¦à¨¿à¨“', 'VerificÄƒ', 'á€‘á€½á€€á€ºá€á€½á€¬á€žá€Šá€º', 'á¹¢ayáº¹wo', 'Duba Out', NULL, NULL),
(250, 'amount', 'Amount', 'পরিমাণ ', 'Cantidad', 'ÙƒÙ…ÙŠØ©', 'à¤°à¤•à¤®', 'Ø±Ù‚Ù…', 'é‡', 'é‡', 'Montante', 'ÐšÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾', 'Montant', 'ì–‘', 'Menge', 'QuantitÃ ', 'à¸ˆà¸³à¸™à¸§à¸™', 'Ã–sszeg', 'Bedrag', 'tantum', 'Jumlah', 'Miktar', 'Î Î¿ÏƒÏŒ', 'Ù…ÛŒØ²Ø§Ù†', 'Jumlah', 'à°®à±Šà°¤à±à°¤à°‚', 'à®¤à¯†à®¾à®•à¯ˆ', 'àª°àª•àª®', 'IloÅ›Ä‡', 'Ð¡ÑƒÐ¼Ð°', 'à¨¦à©€ à¨°à¨•à¨®', 'Cantitate', 'á€„á€½á€±á€•á€™á€¬á€', 'Iye', 'Adadin', NULL, NULL),
(251, 'discount', 'Discount', 'ছাড় ', 'Descuento', 'Ø®ØµÙ…', 'à¤›à¥‚à¤Ÿ', 'ÚˆØ³Ú©Ø§Ø¤Ù†Ù¹', 'æŠ˜æ‰£', 'ãƒ‡ã‚£ã‚¹ã‚«ã‚¦ãƒ³ãƒˆ', 'Desconto', 'ÑÐºÐ¸Ð´ÐºÐ°', 'Discount', 'í• ì¸', 'Rabatt', 'Sconto', 'à¸ªà¹ˆà¸§à¸™à¸¥à¸”', 'KedvezmÃ©ny', 'Korting', 'Buy', 'Diskon', 'Ä°ndirim', 'Î•ÎºÏ€Ï„Ï‰ÏƒÎ·', 'ØªØ®ÙÛŒÙ', 'Diskaun', 'à°¡à°¿à°¸à±à°•à±Œà°‚à°Ÿà±', 'à®¤à®³à¯à®³à¯à®ªà®Ÿà®¿', 'àª¡àª¿àª¸à«àª•àª¾àª‰àª¨à«àªŸ', 'ZniÅ¼ka', 'Ð—Ð½Ð¸Ð¶ÐºÐ°', 'à¨›à©‚à¨Ÿ', 'Reducere', 'á€œá€»á€¾á€±á€¬á€·á€…á€»á€±á€¸', 'iye owo', 'Dama', NULL, NULL),
(253, 'print', 'Print', 'মুদ্রণ ', 'ImpresiÃ³n', 'Ø·Ø¨Ø§Ø¹Ø©', 'à¤›à¤¾à¤ª', 'Ù¾Ø±Ù†Ù¹ Ú©Ø±ÛŒÚº', 'æ‰“å°', 'å°åˆ·', 'ImpressÃ£o', 'Ð Ð°ÑÐ¿ÐµÑ‡Ð°Ñ‚Ð°Ñ‚ÑŒ', 'Impression', 'ì¸ì‡„', 'Drucken', 'Stampare', 'à¸žà¸´à¸¡à¸žà¹Œ', 'NyomtatÃ¡s', 'Afdrukken', 'Print', 'Mencetak', 'baskÄ±', 'Î¤Ï…Ï€ÏŽÎ½Ï‰', 'Ú†Ø§Ù¾', 'Cetak', 'à°ªà±à°°à°¿à°‚à°Ÿà±', 'à®…à®šà¯à®šà¯', 'àª›àª¾àªªà«‹', 'WydrukowaÄ‡', 'Ð”Ñ€ÑƒÐº', 'à¨›à¨¾à¨ªà©‹', 'Imprimare', 'á€•á€¯á€¶á€”á€¾á€­á€•á€º', 'Táº¹jade', 'Buga', NULL, NULL),
(254, 'paid', 'Paid', 'পরিশোধিত ', 'Pagado', 'Ø¯ÙØ¹', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¤¿à¤¯à¤¾ à¤¹à¥ˆ', 'Ø§Ø¯Ø§ Ú©ÛŒØ§', 'ä»˜è´¹', 'æœ‰æ–™', 'Pago', 'Ð¾Ð¿Ð»Ð°Ñ‡ÐµÐ½Ð½Ñ‹Ð¹', 'PayÃ©', 'ìœ ë£Œ', 'Bezahlt', 'Pagato', 'à¸•à¹‰à¸­à¸‡à¸ˆà¹ˆà¸²à¸¢', 'Fizetett', 'Betaald', 'pretium', 'Dibayar', 'Ã¶denmiÅŸ', 'ÎµÏ€Î¯ Ï€Î»Î·ÏÏ‰Î¼Î®', 'Ù¾Ø±Ø¯Ø§Ø®Øª Ø´Ø¯Ù‡', 'Dibayar', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà±', 'à®ªà®£à®®à¯', 'àªšà«‚àª•àªµà«‡àª²', 'PÅ‚atny', 'ÐžÐ¿Ð»Ð°Ñ‡ÐµÐ½Ð¸Ð¹', 'à¨¦à¨¾ à¨­à©à¨—à¨¤à¨¾à¨¨', 'PlÄƒtit', 'paid', 'San', 'An biya', NULL, NULL),
(255, 'subtotal', 'Subtotal', 'সাবটোটাল ', 'Total parcial', 'Ø­Ø§ØµÙ„ Ø§Ù„Ø¬Ù…Ø¹', 'à¤‰à¤ª-à¤¯à¥‹à¤—', 'Ø°ÛŒÙ„ÛŒ Ú©Ù„', 'å°è®¡', 'å°è¨ˆ', 'Subtotal', 'ÐŸÑ€Ð¾Ð¼ÐµÐ¶ÑƒÑ‚Ð¾Ñ‡Ð½Ñ‹Ð¹ Ð¸Ñ‚Ð¾Ð³', 'Total', 'ì†Œê³„', 'Zwischensumme', 'totale parziale', 'à¹„à¸¡à¹ˆà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'RÃ©szÃ¶sszeg', 'Subtotaal', 'Subtotal', 'Subtotal', 'ara toplam', 'ÎœÎ•Î¡Î™ÎšÎŸ Î£Î¥ÎÎŸÎ›ÎŸ', 'Ú©Ù„ Ø­Ø¬Ù…', 'jumlah kecil', 'à°ªà±‚à°°à±à°¤à°¿à°•à°¾à°¨à°¿', 'à®•à¯‚à®Ÿà¯à®Ÿà¯à®¤à¯à®¤à¯†à®¾à®•à¯ˆ', 'àªªà«‡àªŸàª¾àª¸àª°àªµàª¾àª³à«‹', 'Suma czÄ™Å›ciowa', 'Ð¡ÑƒÐ¼Ð°Ñ€Ð½Ð¾', 'à¨‰à¨ª-à¨•à©à©±à¨²', 'Subtotal', 'á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸', 'Atokun', 'Subtotal', NULL, NULL),
(256, 'method', 'Method', 'পদ্ধতি ', 'MÃ©todo', 'Ø·Ø±ÙŠÙ‚Ø©', 'à¤¤à¤°à¥€à¤•à¤¾', 'Ø·Ø±ÛŒÙ‚Û', 'æ–¹æ³•', 'æ–¹æ³•', 'MÃ©todo', 'Ð¼ÐµÑ‚Ð¾Ð´', 'MÃ©thode', 'ë°©ë²•', 'Methode', 'Metodo', 'à¸§à¸´à¸˜à¸µ', 'MÃ³dszer', 'Methode', 'modum', 'metode', 'YÃ¶ntem', 'ÎœÎ­Î¸Î¿Î´Î¿Ï‚', 'Ø±ÙˆØ´', 'Kaedah', 'à°µà°¿à°§à°¾à°¨à°‚', 'à®šà¯†à®¯à¯à®®à¯à®±à¯ˆ', 'àªªàª¦à«àª§àª¤àª¿', 'metoda', 'ÐœÐµÑ‚Ð¾Ð´', 'à¨µà¨¿à¨§à©€', 'MetodÄƒ', 'á€”á€Šá€ºá€¸á€œá€™á€ºá€¸', 'á»Œna', 'Hanyar', NULL, NULL),
(257, 'payment_via', 'Payment Via', 'পেমেন্টের মাধ্যম ', 'Pago a travÃ©s de', 'Ø§Ù„Ø¯ÙØ¹ Ø¹Ù† Ø·Ø±ÙŠÙ‚', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤•à¥‡ à¤®à¤¾à¤§à¥à¤¯à¤® à¤¸à¥‡', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Û’ Ø°Ø±ÛŒØ¹Û’', 'ä»˜æ¬¾é€šè¿‡', 'æ”¯æ‰•ã„æ–¹æ³•', 'Pagamento atravÃ©s', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Ñ‡ÐµÑ€ÐµÐ·', 'Paiement Via', 'ì§€ë¶ˆ ë¹„ì•„', 'Zahlung Ã¼ber', 'Pagamento Via', 'à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸œà¹ˆà¸²à¸™à¸—à¸²à¸‡', 'FizetÃ©s Via', 'Betaling Via', 'Payment Via', 'Pembayaran melalui', 'Ã–deme Via', 'Î Î»Î·ÏÏ‰Î¼Î® Î¼Î­ÏƒÏ‰ Via', 'Ù¾Ø±Ø¯Ø§Ø®Øª Ø§Ø² Ø·Ø±ÛŒÙ‚', 'Pembayaran Melalui', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà± à°¦à±à°µà°¾à°°à°¾', 'à®šà¯†à®²à¯à®¤à¯à®¤à¯à®®à¯ à®µà®´à®¿à®¯à®¾à®•', 'àªšà«àª•àªµàª£à«€ àªµàª¾àª¯àª¾', 'PÅ‚atnoÅ›Ä‡ przez', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Via', 'à¨¦à©à¨†à¨°à¨¾ à¨­à©à¨—à¨¤à¨¾à¨¨ à¨­à©à¨—à¨¤à¨¾à¨¨', 'Plata prin', 'á€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯á€›á€™á€Šá€ºá€·á€™á€¾á€á€…á€ºá€†á€„á€ºá€·', 'Isanwo Nipasáº¹', 'Biyan kuÉ—i ta hanyar', NULL, NULL),
(259, 'yearly', 'Yearly', 'বাৎসরিক ', 'Anual', 'Ø³Ù†ÙˆÙŠ', 'à¤¸à¤¾à¤²à¤¾à¤¨à¤¾', 'Ø³Ø§Ù„Ø§Ù†Û', 'æ¯å¹´', 'æ¯Žå¹´', 'Anual', 'ÐºÐ°Ð¶Ð´Ñ‹Ð¹ Ð³Ð¾Ð´', 'Annuel', 'ë§¤ë…„', 'JÃ¤hrlich', 'Annuale', 'à¸£à¸²à¸¢à¸›à¸µ', 'Ã‰vi', 'jaar-', 'quot annis', 'Tahunan', 'YÄ±llÄ±k', 'Î•Ï„Î®ÏƒÎ¹Î±', 'Ø³Ø§Ù„Ø§Ù†Ù‡', 'Setiap tahun', 'à°ªà±à°°à°¤à°¿à°¸à°‚à°µà°¤à±à°¸à°°à°‚', 'à®µà®°à¯à®Ÿà®¾à®¨à¯à®¤à®¿à®°à®®à¯', 'àªµàª¾àª°à«àª·àª¿àª•', 'Rocznie', 'Ð©Ð¾Ñ€Ñ–Ñ‡Ð½Ð¾', 'à¨¸à¨²à¨¾à¨¨à¨¾', 'Anual', 'á€”á€¾á€…á€ºá€¡á€œá€­á€¯á€€á€º', 'á»ŒdÃºn', 'Shekara shekara', NULL, NULL),
(260, 'tabular', 'Tabular', 'টেবুলার ', 'Tabular', 'Ù…Ø¬Ø¯ÙˆÙ„', 'à¤¤à¤¾à¤²à¤¿à¤•à¤¾ à¤•à¤¾', 'Ù¹ÛŒØ¨Ù„ÙˆÙ„Ø±', 'è¡¨æ ¼å¼çš„', 'è¡¨å½¢å¼', 'Tabular', 'Ñ‚Ð°Ð±Ð»Ð¸Ñ‡Ð½Ñ‹Ð¹', 'Tabulaire', 'í‘œì˜', 'Tabellarisch', 'di tabella', 'à¹à¸šà¸™', 'TÃ¡blÃ¡zatos', 'tabellarisch', 'Expositio canonica', 'Datar', 'yassÄ±', 'Î Î¹Î½Î±ÎºÎ¿ÎµÎ¹Î´Î®Ï‚', 'Ø¬Ø¯ÙˆÙ„ÛŒ', 'Tabular', 'à°ªà°Ÿà±à°Ÿà°¿à°•', 'à®šà¯€à®°à®®à¯ˆà®ªà¯à®ªà¯à®ªà¯', 'àª•à«‹àª·à«àªŸàª•', 'Tabelaryczny', 'Ð¢Ð°Ð±Ð»Ð¸Ñ‡Ð½Ð¸Ð¹', 'à¨¤à¨¾à¨²à©‚à¨²à¨°', 'Tabular', 'tabular', 'Tabular', 'Tabula', NULL, NULL),
(261, 'graphical', 'Graphical', 'গ্রাফিকাল ', 'GrÃ¡fico', 'Ø¨ÙŠØ§Ù†ÙŠ', 'à¤šà¤¿à¤¤à¥à¤°à¤¾à¤¤à¥à¤®à¤•', 'Ú¯Ø±Ø§ÙÛŒÚ©Ù„', 'å›¾å½¢', 'ã‚°ãƒ©ãƒ•ã‚£ã‚«ãƒ«ãª', 'GrÃ¡fico', 'Ð³Ñ€Ð°Ñ„Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹', 'Graphique', 'ê·¸ëž˜í”½', 'Grafisch', 'grafico', 'à¸à¸£à¸²à¸Ÿà¸´à¸', 'Grafikus', 'grafisch', 'graphical', 'Grafis', 'Grafiksel', 'Î“ÏÎ±Ï†Î¹ÎºÏŒÏ‚', 'Ú¯Ø±Ø§ÙÛŒÚ©ÛŒ', 'Grafik', 'à°—à±à°°à°¾à°«à°¿à°•à°²à±', 'à®µà®°à¯ˆà®µà®¿à®¯à®²à¯', 'àª—à«àª°àª¾àª«àª¿àª•àª²', 'Graficzny', 'Ð“Ñ€Ð°Ñ„Ñ–Ñ‡Ð½Ð¸Ð¹', 'à¨—à¨°à¨¾à¨«à¨¿à¨•à¨²', 'Grafic', 'graphical', 'Ti iwá»n', 'Zane-zane', NULL, NULL),
(262, 'remain', 'Remain', 'আছে ', 'Permanecer', 'ÙŠØ¨Ù‚Ù‰', 'à¤°à¤¹à¤¨à¤¾', 'Ø±ÛÙ†Ø§', 'ç•™', 'æ®‹ã£ã¦ã„ã‚‹', 'Permanecer', 'Ð¾ÑÑ‚Ð°Ð²Ð°Ñ‚ÑŒÑÑ', 'Rester', 'ë‚¨ì•„ìžˆëŠ”', 'Bleiben Ã¼brig', 'rimanere', 'à¸¢à¸±à¸‡à¸„à¸‡', 'Marad', 'Blijven', 'manent', 'Tetap', 'Kalmak', 'Î Î±ÏÎ±Î¼Î­Î½ÎµÎ¹', 'Ù…Ø§Ù†Ø¯Ù†', 'Kekal', 'à°‰à°‚à°Ÿà°¾à°¯à°¿', 'à®‡à®°à¯à®•à¯à®•à¯à®®à¯', 'àª°àª¹à«‹', 'PozostawaÄ‡', 'Ð—Ð°Ð»Ð¸ÑˆÐ¸Ñ‚Ð¸ÑÑ', 'à¨°à¨¹à¨¿à¨£ à¨¦à¨¿à¨“', 'RÄƒmÃ¢ne', 'á€€á€»á€”á€ºá€›á€…á€º', 'Duro', 'Ku tsaya', NULL, NULL),
(263, 'month', 'Month', 'মাস ', 'Mes', 'Ø´Ù‡Ø±', 'à¤®à¤¹à¥€à¤¨à¤¾', 'Ù…ÛÛŒÙ†Û', 'æœˆ', 'æœˆ', 'MÃªs', 'ÐœÐµÑÑÑ†', 'Mois', 'ë‹¬', 'Monat', 'Mese', 'à¹€à¸”à¸·à¸­à¸™', 'HÃ³nap', 'Maand', 'mense', 'Bulan', 'Ay', 'ÎœÎ®Î½Î±Ï‚', 'Ù…Ø§Ù‡', 'Bulan', 'à°¨à±†à°²', 'à®®à®¾à®¤à®®à¯', 'àª®àª¾àª¸', 'MiesiÄ…c', 'ÐœÑ–ÑÑÑ†ÑŒ', 'à¨®à¨¹à©€à¨¨à¨¾', 'LunÄƒ', 'á€œ', 'Oá¹£u', 'Watan', NULL, NULL),
(264, 'a_positive', 'A+', 'এ+ ', 'A +', 'A +', 'A+', 'A+', 'A+', 'A+', 'A+', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', 'A +', NULL, NULL),
(265, 'a_negative', 'A-', 'এ- ', 'UN-', 'Ø§-', 'à¤-', 'A-', 'ä¸€ä¸ª-', 'A-', 'UMA-', 'A-', 'A-', 'ì—ì´-', 'EIN-', 'UN-', 'A-', 'A-', 'EEN-', 'A-', 'SEBUAH-', 'A-', 'Î•ÎÎ‘-', 'A-', 'A-', 'à°’à°•-', 'à®', 'àª-', 'ZA-', 'A-', 'à¨-', 'A-', 'A-', 'A-', 'A-', NULL, NULL),
(266, 'b_positive', 'B+', 'বি+ ', 'B +', 'B +', 'à¤¬à¥€ +', 'B+', 'B+', 'B+', 'B+', 'B +', 'B+', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'à®ªà®¿', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', 'B +', NULL, NULL),
(267, 'b_negative', 'B-', 'বি-', 'SEGUNDO-', 'Ø¨-', 'à¤¬à¥€', 'B-', 'B-', 'B-', 'B-', 'B-', 'B-', 'ë¹„-', 'B-', 'B-', 'B-', 'B-', 'B-', 'Sed placerat scelerisque', 'B-', 'B-', 'Î£Î™-', 'B-', 'B-', 'B-', 'à®ªà®¿-', 'àª¬à«€-', 'B-', 'B-', 'à¨¬à©€-', 'B-', 'á€•á€«á€˜á€°á€¸á€›á€¾á€„á€»', 'B-', 'B-', NULL, NULL),
(268, 'o_positive', 'O+', 'ও+', 'O +', 'O +', 'O+', 'Ø§Û’ +', 'O+', 'O+', 'O+', 'O +', 'O+', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'Domine +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'O +', 'á€¡á€­á€¯ +', 'O +', 'O +', NULL, NULL),
(269, 'o_negative', 'O-', 'ও-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'ì˜í˜•-', 'O-', 'O-', 'O-', 'O-', 'O-', 'O-', 'HAI-', 'O-', 'ÎŸ-', 'O-', 'O-', 'O-', 'O-', 'àª“-', 'O-', 'O-', 'à¨“-', 'O-', 'O-', 'O-', 'O-', NULL, NULL),
(270, 'ab_positive', 'AB+', 'এবি+', 'AB +', 'AB +', 'à¤à¤¬à¥€ +', 'AB+', 'AB+', 'AB+', 'AB+', 'AB +', 'AB+', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'àªàª¬à«€ +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', 'AB +', NULL, NULL),
(271, 'ab_negative', 'AB-', 'এবি-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB', 'AB', 'AB-', 'AB-', 'Î‘Î’-', 'AB-', 'AB-', 'AB-', 'à®®à¯‡à®¾à®²à®¿à®©à¯', 'àªàª¬à«€-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', 'AB-', NULL, NULL),
(272, 'vendor', 'Vendor', 'বিক্রেতা ', 'Vendedor', 'Ø¨Ø§Ø¦Ø¹', 'à¤µà¤¿à¤•à¥à¤°à¥‡à¤¤à¤¾', 'ÙˆÛŒÙ†ÚˆØ±', 'AB-', 'ãƒ™ãƒ³ãƒ€ãƒ¼', 'Fornecedor', 'Ð¿Ñ€Ð¾Ð´Ð°Ð²ÐµÑ†', 'Vendeur', 'ê³µê¸‰ ì—…ì²´', 'VerkÃ¤ufer', 'venditore', 'à¸œà¸¹à¹‰à¸‚à¸²à¸¢', 'EladÃ³', 'Verkoper', 'vendor', 'Penjaja', 'satÄ±cÄ±', 'Î ÏÎ¿Î¼Î·Î¸ÎµÏ…Ï„Î®', 'ÙØ±ÙˆØ´Ù†Ø¯Ù‡', 'Penjual', 'Vendor', 'à®µà®¿à®±à¯à®ªà®©à¯ˆà®¯à®¾à®³à®°à¯', 'àªµà«‡àª¨à«àª¡àª°', 'Sprzedawca', 'ÐŸÐ¾ÑÑ‚Ð°Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ðº', 'à¨µà¨¿à¨•à¨°à©‡à¨¤à¨¾', 'VÃ¢nzÄƒtor', 'á€›á€±á€¬á€„á€ºá€¸á€á€»á€žá€°', 'Oluwo', 'Mai sayarwa', NULL, NULL),
(273, 'relative', 'Relative', 'সম্পর্ক ', 'Relativo', 'Ù†Ø³Ø¨ÙŠØ§', 'à¤¸à¤¾à¤ªà¥‡à¤•à¥à¤·', 'Ø±Ø´ØªÛ Ø¯Ø§Ø±', 'ç›¸å¯¹çš„', 'ç›¸å¯¾', 'Relativo', 'ÐžÑ‚Ð½Ð¾ÑÐ¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹', 'Relatif', 'ìƒëŒ€ì ì¸', 'Relativ', 'Parente', 'à¸à¸²à¸•à¸´', 'RelatÃ­v', 'Familielid', 'relativum', 'Relatif', 'baÄŸÄ±l', 'Î£Ï…Î³Î³ÎµÎ½Î®Ï‚', 'Ù†Ø³Ø¨Øª ÙØ§Ù…ÛŒÙ„ÛŒ', 'Relatif', 'à°¸à°‚à°¬à°‚à°§à°¿à°¤', 'à®‰à®±à®µà®¿à®©à®°à¯', 'àª¸àª‚àª¬àª‚àª§à«€', 'Krewny', 'Ð’Ñ–Ð´Ð½Ð¾ÑÐ½Ð¸Ð¹', 'à¨¿à¨°à¨¸à¨¼à¨¤à©‡à¨¦à¨¾à¨°', 'Relativ', 'á€†á€½á€±á€™á€»á€­á€¯á€¸', 'ojulumo', 'Aboki', NULL, NULL),
(274, 'friend', 'Friend', 'বন্ধু ', 'Amigo', 'ØµØ¯ÙŠÙ‚', 'à¤¦à¥‹à¤¸à¥à¤¤', 'Ø¯ÙˆØ³Øª', 'æœ‹å‹', 'å‹äºº', 'Amigos', 'Ð”Ñ€ÑƒÐ³', 'Ami', 'ì¹œêµ¬', 'Freund', 'Amico', 'à¹€à¸žà¸·à¹ˆà¸­à¸™', 'BarÃ¡t', 'Vriend', 'amica', 'Teman', 'ArkadaÅŸ', 'Î¦Î¯Î»Î¿Ï‚', 'Ø¯ÙˆØ³Øª', 'Kawan', 'à°¸à±à°¨à±‡à°¹à°¿à°¤à±à°¨à°¿', 'à®¨à®£à¯à®ªà®©à¯', 'àª®àª¿àª¤à«àª°', 'Przyjaciel', 'Ð”Ñ€ÑƒÐ³', 'à¨¦à©‹à¨¸à¨¤', 'Prieten', 'á€™á€­á€á€»á€†á€¾á€±', 'á»Œráº¹', 'Aboki', NULL, NULL),
(275, 'family', 'Family', 'পরিবার ', 'Familia', 'Ø£Ø³Ø±Ø©', 'à¤ªà¤°à¤¿à¤µà¤¾à¤°', 'Ø®Ø§Ù†Ø¯Ø§Ù†', 'å®¶åº­', 'å®¶æ—', 'FamÃ­lia', 'ÑÐµÐ¼ÑŒÑ', 'Famille', 'ê°€ì¡±', 'Familie', 'Famiglia', 'à¸„à¸£à¸­à¸šà¸„à¸£à¸±à¸§', 'CsalÃ¡d', 'Familie', 'familia', 'Keluarga', 'Aile', 'ÎŸÎ¹ÎºÎ¿Î³Î­Î½ÎµÎ¹Î±', 'Ø®Ø§Ù†ÙˆØ§Ø¯Ù‡', 'Keluarga', 'à°•à±à°Ÿà±à°‚à°¬', 'à®•à¯à®Ÿà¯à®®à¯à®ª', 'àª•à«ŒàªŸà«àª‚àª¬àª¿àª•', 'Rodzina', 'Ð¡Ñ–Ð¼Ñ', 'à¨ªà¨°à¨¿à¨µà¨¾à¨°', 'Familie', 'á€™á€­á€žá€¬á€¸á€…á€¯', 'ÃŒdÃ­lÃ©', 'Iyali', NULL, NULL),
(276, 'interview', 'Interview', 'সাক্ষাৎকার ', 'Entrevista', 'Ù…Ù‚Ø§Ø¨Ù„Ø©', 'à¤¸à¤¾à¤•à¥à¤·à¤¾à¤¤à¥à¤•à¤¾à¤°', 'Ø§Ù†Ù¹Ø±ÙˆÛŒÙˆ', 'è®¿é—®', 'ã‚¤ãƒ³ã‚¿ãƒ“ãƒ¥ãƒ¼', 'Entrevista', 'Ð˜Ð½Ñ‚ÐµÑ€Ð²ÑŒÑŽ', 'Entretien', 'íšŒê²¬', 'Interview', 'Colloquio', 'à¸ªà¸±à¸¡à¸ à¸²à¸©à¸“à¹Œ', 'InterjÃº', 'Interview', 'colloquium', 'Wawancara', 'RÃ¶portaj', 'Î£Ï…Î½Î­Î½Ï„ÎµÏ…Î¾Î·', 'Ù…ØµØ§Ø­Ø¨Ù‡', 'Temu bual', 'à°‡à°‚à°Ÿà°°à±à°µà±à°¯à±‚', 'à®ªà¯‡à®Ÿà¯à®Ÿà®¿', 'àª®à«àª²àª¾àª•àª¾àª¤', 'Wywiad', 'Ð†Ð½Ñ‚ÐµÑ€Ð²ÑŽ', 'à¨‡à©°à¨Ÿà¨°à¨µà¨¿à¨Š', 'Interviu', 'á€¡á€„á€ºá€á€¬á€—á€»á€°á€¸', 'Ibarawe', 'Tambayar', NULL, NULL),
(277, 'meeting', 'Meeting', 'মিটিং ', 'ReuniÃ³n', 'Ù„Ù‚Ø§Ø¡', 'à¤®à¥à¤²à¤¾à¤•à¤¾à¤¤', 'Ø§Ø¬Ù„Ø§Ø³', 'ä¼šè®®', 'ä¼šè­°', 'encontro', 'Ð’ÑÑ‚Ñ€ÐµÑ‡Ð°', 'RÃ©union', 'ëª¨ìž„', 'Treffen', 'Incontro', 'à¸à¸²à¸£à¸›à¸£à¸°à¸Šà¸¸à¸¡', 'TalÃ¡lkozÃ³', 'Vergadering', 'occurrens', 'Pertemuan', 'ToplantÄ±', 'Î£Ï…Î½Î¬Î½Ï„Î·ÏƒÎ·', 'Ù…Ù„Ø§Ù‚Ø§Øª', 'Mesyuarat', 'à°¸à°®à°¾à°µà±‡à°¶à°‚', 'à®šà®¨à¯à®¤à®¿à®¤à¯à®¤à®²à¯', 'àª¬à«‡àª àª•', 'Spotkanie', 'Ð—ÑƒÑÑ‚Ñ€Ñ–Ñ‡', 'à¨®à©€à¨Ÿà¨¿à©°à¨—', 'ÃŽntÃ¢lnire', 'á€¡á€…á€Šá€ºá€¸á€¡á€á€±á€¸', 'Ipade', 'Haduwa', NULL, NULL),
(278, 'mandatory', 'Mandatory', 'বাধ্যতামূলক ', 'Obligatorio', 'Ø¥Ù„Ø²Ø§Ù…ÙŠ', 'à¤…à¤¨à¤¿à¤µà¤¾à¤°à¥à¤¯', 'Ù„Ø§Ø²Ù…ÛŒ', 'å¼ºåˆ¶æ€§', 'å¿…é ˆ', 'ObrigatÃ³rio', 'ÐžÐ±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ðµ', 'Obligatoire', 'í•„ìˆ˜', 'Verpflichtend', 'Obbligatorio', 'à¸ˆà¸³à¹€à¸›à¹‡à¸™', 'KÃ¶telezÅ‘', 'Verplicht', 'amet', 'Wajib', 'Zorunlu', 'Î•Ï€Î¹Ï„Î±ÎºÏ„Î¹ÎºÏŒÏ‚', 'Ø§Ø¬Ø¨Ø§Ø±ÛŒ', 'Mandatori', 'à°¤à°ªà±à°ªà°¨à°¿à°¸à°°à°¿', 'à®•à®Ÿà¯à®Ÿà®¾à®¯à®®à®¾à®•à¯à®®à¯', 'àª«àª°àªœàª¿àª¯àª¾àª¤', 'ObowiÄ…zkowy', 'ÐžÐ±Ð¾Ð²ÑÐ·ÐºÐ¾Ð²Ð¸Ð¹', 'à¨²à¨¾à¨œà¨¼à¨®à©€', 'Obligatoriu', 'á€¡á€á€„á€ºá€¸á€¡á€€á€»á€•á€ºá€–á€¼á€…á€ºá€žá€±á€¬', 'Dandan', 'M', NULL, NULL),
(279, 'optional', 'Optional', 'ঐচ্ছিক ', 'Opcional', 'Ø§Ø®ØªÙŠØ§Ø±ÙŠ', 'à¤à¤šà¥à¤›à¤¿à¤•', 'Ø§Ø®ØªÛŒØ§Ø±ÛŒ', 'å¯é€‰çš„', 'ã‚ªãƒ—ã‚·ãƒ§ãƒ³', 'Opcional', 'ÐÐµÐ¾Ð±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹', 'Optionnel', 'ì„ íƒ ê³¼ëª©', 'Wahlweise', 'Opzionale', 'à¹„à¸¡à¹ˆà¸ˆà¸³à¹€à¸›à¹‡à¸™', 'VÃ¡laszthatÃ³', 'facultatief', 'libitum', 'Pilihan', 'Ä°steÄŸe baÄŸlÄ±', 'Î ÏÎ¿Î±Î¹ÏÎµÏ„Î¹ÎºÏŒÏ‚', 'Ø§Ø®ØªÛŒØ§Ø±ÛŒ', 'Pilihan', 'à°à°šà±à°›à°¿à°•à°®à±', 'à®µà®¿à®°à¯à®ªà¯à®ª', 'àªµà«ˆàª•àª²à«àªªàª¿àª•', 'Opcjonalny', 'ÐÐµÐ¾Ð±Ð¾Ð²ÑÐ·ÐºÐ¾Ð²Ð¾', 'à¨µà¨¿à¨•à¨²à¨ªà¨¿à¨•', 'facultativ', 'optional', 'Aá¹£ayan', 'Zabin', NULL, NULL),
(280, 'science', 'Science', 'বিজ্ঞান ', 'Ciencia', 'Ø¹Ù„Ù…', 'à¤µà¤¿à¤œà¥à¤žà¤¾à¤¨', 'Ø³Ø§Ø¦Ù†Ø³', 'ç§‘å­¦', 'ç§‘å­¦', 'CiÃªncia', 'ÐÐ°ÑƒÐºÐ°', 'Science', 'ê³¼í•™', 'Wissenschaft', 'Scienza', 'à¸§à¸´à¸—à¸¢à¸²à¸¨à¸²à¸ªà¸•à¸£à¹Œ', 'TudomÃ¡ny', 'Wetenschap', 'scientia', 'Ilmu', 'Bilim', 'Î•Ï€Î¹ÏƒÏ„Î®Î¼Î·', 'Ø¹Ù„ÙˆÙ… Ù¾Ø§ÛŒÙ‡', 'Sains', 'à°¸à±†à±–à°¨à±à°¸à±', 'à®…à®±à®¿à®µà®¿à®¯à®²à¯', 'àªµàª¿àªœà«àªžàª¾àª¨', 'Nauka', 'ÐÐ°ÑƒÐºÐ°', 'à¨µà¨¿à¨—à¨¿à¨†à¨¨', 'ÅžtiinÅ£Äƒ', 'á€žá€­á€•á€¹á€•á€¶', 'Imá»', 'Kimiyya', NULL, NULL),
(281, 'arts', 'Arts', 'মানবিক ', 'Letras', 'ÙÙ†ÙˆÙ†', 'à¤•à¤²à¤¾', 'Ø¢Ø±Ù¹Ø³', 'è‰ºæœ¯', 'èŠ¸è¡“', 'Artes', 'Ð¸ÑÐºÑƒÑÑÑ‚Ð²Ð°', 'Arts', 'ê¸°ì˜ˆ', 'Kunst', 'Arts', 'à¸¨à¸´à¸¥à¸›à¸°', 'Arts', 'Arts', 'artium', 'Seni', 'Sanat', 'Î¤Î­Ï‡Î½ÎµÏ‚', 'Ù‡Ù†Ø±Ù‡Ø§', 'Seni', 'à°†à°°à±à°Ÿà±à°¸à±', 'à®•à®²à¯ˆ', 'àª†àª°à«àªŸàª¸', 'Sztuka', 'ÐœÐ¸ÑÑ‚ÐµÑ†Ñ‚Ð²Ð¾', 'à¨†à¨°à¨Ÿà¨¸', 'Arte', 'á€á€­á€‡á€¹á€‡á€¬', 'á»Œgbá»n', 'Arts', NULL, NULL),
(282, 'commerce', 'Commerce', 'ব্যবসায় শিক্ষা ', 'Comercio', 'ØªØ¬Ø§Ø±Ø©', 'à¤µà¥à¤¯à¤¾à¤ªà¤¾à¤°', 'Ú©Ø§Ù…Ø±Ø³', 'å•†ä¸š', 'ã‚³ãƒžãƒ¼ã‚¹', 'ComÃ©rcio', 'ÐºÐ¾Ð¼Ð¼ÐµÑ€Ñ†Ð¸Ñ', 'Commerce', 'ìƒì—…', 'Handel', 'Commercio', 'à¸žà¸²à¸“à¸´à¸Šà¸¢à¹Œ', 'kereskedelem', 'Handel', 'Commerce', 'Perdagangan', 'Ticaret', 'Î•Î¼Ï€ÏŒÏÎ¹Î¿', 'Ø¨Ø§Ø²Ø±Ú¯Ø§Ù†ÛŒ', 'Perdagangan', 'à°•à°¾à°®à°°à±à°¸à±', 'à®µà®°à¯à®¤à¯à®¤à®•', 'àªµàª¾àª£àª¿àªœà«àª¯', 'Handel', 'Ð¢Ð¾Ñ€Ð³Ñ–Ð²Ð»Ñ', 'à¨µà¨£à¨œ', 'ComerÅ£', 'á€›á€±á€¬á€„á€ºá€¸á€á€šá€ºá€–á€±á€«á€€á€ºá€€á€¬á€¸á€á€¼á€„á€ºá€¸', 'Okoowo', 'Kasuwanci', NULL, NULL),
(283, 'saturday', 'Saturday', 'শনিবার ', 'sÃ¡bado', 'ÙŠÙˆÙ… Ø§Ù„Ø³Ø¨Øª', 'à¤¶à¤¨à¤¿à¤µà¤¾à¤°', 'ÛÙØªÛ', 'æ˜ŸæœŸå…­', 'åœŸæ›œæ—¥', 'sÃ¡bado', 'ÑÑƒÐ±Ð±Ð¾Ñ‚Ð°', 'samedi', 'í† ìš”ì¼', 'Samstag', 'Sabato', 'à¸§à¸±à¸™à¹€à¸ªà¸²à¸£à¹Œ', 'szombat', 'zaterdag', 'Saturni', 'Sabtu', 'Cumartesi', 'Î£Î¬Î²Î²Î±Ï„Î¿', 'Ø´Ù†Ø¨Ù‡', 'Sabtu', 'à°¶à°¨à°¿à°µà°¾à°°à°‚', 'à®šà®©à®¿à®•à¯à®•à®¿à®´à®®à¯ˆ', 'àª¶àª¨àª¿àªµàª¾àª°', 'sobota', 'Ð¡ÑƒÐ±Ð¾Ñ‚Ð°', 'à¨¸à¨¼à¨¨à©€à¨µà¨¾à¨°', 'sÃ¢mbÄƒtÄƒ', 'á€…á€”á€±á€”á€±á€·', 'á»Œjá» Satidee', 'Asabar', NULL, NULL),
(284, 'sunday', 'Sunday', 'রবিবার ', 'domingo', 'Ø§Ù„Ø£Ø­Ø¯', 'à¤°à¤µà¤¿à¤µà¤¾à¤°', 'Ø§ØªÙˆØ§Ø±', 'æ˜ŸæœŸæ—¥', 'æ—¥æ›œæ—¥', 'domingo', 'Ð’Ð¾ÑÐºÑ€ÐµÑÐµÐ½ÑŒÐµ', 'dimanche', 'ì¼ìš”ì¼', 'Sonntag', 'Domenica', 'à¸§à¸±à¸™à¸­à¸²à¸—à¸´à¸•à¸¢à¹Œ', 'vasÃ¡rnap', 'zondag', 'Solis', 'Minggu', 'Pazar', 'ÎšÏ…ÏÎ¹Î±ÎºÎ®', 'ÛŒÚ©Ø´Ù†Ø¨Ù‡', 'Ahad', 'à°†à°¦à°¿à°µà°¾à°°à°‚', 'à®žà®¾à®¯à®¿à®±à¯', 'àª°àªµàª¿àªµàª¾àª°', 'niedziela', 'ÐÐµÐ´Ñ–Ð»Ñ', 'à¨à¨¤à¨µà¨¾à¨°', 'duminicÄƒ', 'á€á€”á€„á€ºá€¹á€‚á€”á€½á€±', 'Sunday', 'Lahadi', NULL, NULL),
(285, 'monday', 'Monday', 'সোমবার ', 'lunes', 'Ø§Ù„Ø¥Ø«Ù†ÙŠÙ†', 'à¤¸à¥‹à¤®à¤µà¤¾à¤°', 'Ø³ÙˆÙ…ÙˆØ§Ø±', 'æ˜ŸæœŸä¸€', 'æœˆæ›œ', 'Segunda-feira', 'Ð¿Ð¾Ð½ÐµÐ´ÐµÐ»ÑŒÐ½Ð¸Ðº', 'Lundi', 'ì›”ìš”ì¼', 'Montag', 'Lunedi', 'à¸§à¸±à¸™à¸ˆà¸±à¸™à¸—à¸£à¹Œ', 'hÃ©tfÅ‘', 'maandag', 'dies Lunae', 'Senin', 'Pazartesi', 'Î”ÎµÏ…Ï„Î­ÏÎ±', 'Ø¯ÙˆØ´Ù†Ø¨Ù‡', 'Isnin', 'à°¸à±‹à°®à°µà°¾à°°à°‚', 'à®¤à®¿à®™à¯à®•à®Ÿà¯à®•à®¿à®´à®®à¯ˆ', 'àª¸à«‹àª®àªµàª¾àª°', 'poniedziaÅ‚ek', 'ÐŸÐ¾Ð½ÐµÐ´Ñ–Ð»Ð¾Ðº', 'à¨¸à©‹à¨®à¨µà¨¾à¨°', 'luni', 'á€á€”á€„á€ºá€¹á€œá€¬á€”á€±á€·', 'Awá»n aará»', 'Litinin', NULL, NULL),
(286, 'tuesday', 'Tuesday', 'মঙ্গলবার ', 'martes', 'Ø§Ù„Ø«Ù„Ø§Ø«Ø§Ø¡', 'à¤®à¤‚à¤—à¤²à¤µà¤¾à¤°', 'Ù…Ù†Ú¯Ù„', 'æ˜ŸæœŸäºŒ', 'ç«æ›œæ—¥', 'terÃ§a', 'Ð²Ñ‚Ð¾Ñ€Ð½Ð¸Ðº', 'Mardi', 'í™”ìš”ì¼', 'Dienstag', 'martedÃ¬', 'à¸§à¸±à¸™à¸­à¸±à¸‡à¸„à¸²à¸£', 'kedd', 'dinsdag', 'Martis', 'Selasa', 'SalÄ±', 'Î¤ÏÎ¯Ï„Î·', 'Ø³Ù‡Ø´Ù†Ø¨Ù‡', 'Selasa', 'à°®à°‚à°—à°³à°µà°¾à°°à°‚', 'à®šà¯†à®µà¯à®µà®¾à®¯à¯à®•à¯à®•à®¿à®´à®®à¯ˆ', 'àª®àª‚àª—àª³àªµàª¾àª°à«‡', 'wtorek', 'Ð’Ñ–Ð²Ñ‚Ð¾Ñ€Ð¾Ðº', 'à¨®à©°à¨—à¨²à¨µà¨¾à¨°', 'marÅ£i', 'á€¡á€„á€ºá€¹á€‚á€«á€”á€±á€·', 'Ojoba', 'Talata', NULL, NULL),
(287, 'wednesday', 'Wednesday', 'বুধবার ', 'miÃ©rcoles', 'Ø§Ù„Ø£Ø±Ø¨Ø¹Ø§Ø¡', 'à¤¬à¥à¤§à¤µà¤¾à¤°', 'Ø¨Ø¯Ú¾', 'æ˜ŸæœŸä¸‰', 'æ°´æ›œæ—¥', 'Quarta-feira', 'ÑÑ€ÐµÐ´Ð°', 'Mercredi', 'ìˆ˜ìš”ì¼', 'Mittwoch', 'mercoledÃ¬', 'à¸§à¸±à¸™à¸žà¸¸à¸˜', 'szerda', 'woensdag', 'Mercurii', 'Rabu', 'Ã‡arÅŸamba', 'Î¤ÎµÏ„Î¬ÏÏ„Î·', 'Ú†Ù‡Ø§Ø± Ø´Ù†Ø¨Ù‡', 'Rabu', 'à°¬à±à°§à°µà°¾à°°à°‚', 'à®ªà¯à®¤à®©à¯à®•à®¿à®´à®®à¯ˆ', 'àª¬à«àª§àªµàª¾àª°', 'Å›roda', 'Ð¡ÐµÑ€ÐµÐ´Ð°', 'à¨¬à©à©±à¨§à¨µà¨¾à¨°', 'miercuri', 'á€—á€¯á€’á€¹á€“á€Ÿá€°á€¸á€”á€±á€·', 'á»Œjá»rÃº', 'Laraba', NULL, NULL),
(288, 'thursday', 'Thursday', 'বৃহঃস্পতিবার ', 'jueves', 'Ø§Ù„Ø®Ù…ÙŠØ³', 'à¤—à¥à¤°à¥‚à¤µà¤¾à¤°', 'Ø¬Ù…Ø¹Ø±Ø§Øª', 'æ˜ŸæœŸå››', 'æœ¨æ›œæ—¥', 'Quinta-feira', 'Ð§ÐµÑ‚Ð²ÐµÑ€Ð³', 'Jeudi', 'ëª©ìš”ì¼', 'Donnerstag', 'giovedi', 'à¸§à¸±à¸™à¸žà¸¤à¸«à¸±à¸ªà¸šà¸”à¸µ', 'csÃ¼tÃ¶rtÃ¶k', 'donderdag', 'Iovis', 'Kamis', 'PerÅŸembe', 'Î Î­Î¼Ï€Ï„Î·', 'Ù¾Ù†Ø¬ Ø´Ù†Ø¨Ù‡', 'Khamis', 'à°—à±à°°à±à°µà°¾à°°à°‚', 'à®µà®¿à®¯à®¾à®´à®•à¯à®•à®¿à®´à®®à¯ˆ', 'àª—à«àª°à«àªµàª¾àª°', 'czwartek', 'Ð§ÐµÑ‚Ð²ÐµÑ€', 'à¨µà©€à¨°à¨µà¨¾à¨°', 'joi', 'á€€á€¼á€¬á€žá€•á€á€±á€¸á€”á€±á€·', 'Ojobo', 'Alhamis', NULL, NULL),
(289, 'friday', 'Friday', 'শুক্রবার ', 'viernes', 'ÙŠÙˆÙ… Ø§Ù„Ø¬Ù…Ø¹Ø©', 'à¤¶à¥à¤•à¥à¤°à¤µà¤¾à¤°', 'Ø¬Ù…Ø¹Û', 'æ˜ŸæœŸäº”', 'é‡‘æ›œæ—¥', 'Sexta-feira', 'Ð¿ÑÑ‚Ð½Ð¸Ñ†Ð°', 'Vendredi', 'ê¸ˆìš”ì¼', 'Freitag', 'VenerdÃ¬', 'à¸§à¸±à¸™à¸¨à¸¸à¸à¸£à¹Œ', 'pÃ©ntek', 'vrijdag', 'Veneris', 'Jumat', 'Cuma', 'Î Î±ÏÎ±ÏƒÎºÎµÏ…Î®', 'Ø¬Ù…Ø¹Ù‡', 'Jumaat', 'à°¶à±à°•à±à°°à°µà°¾à°°à°‚', 'à®µà¯†à®³à¯à®³à®¿', 'àª¶à«àª•à«àª°àªµàª¾àª°', 'piÄ…tek', 'ÐŸÑÑ‚Ð½Ð¸Ñ†Ñ', 'à¨¸à¨¼à©à©±à¨•à¨°à¨µà¨¾à¨°', 'vineri', 'á€žá€±á€¬á€€á€¼á€¬á€”á€±á€·', 'á»Œjá» áº¸tÃ¬', 'Jummaa', NULL, NULL),
(290, 'january', 'January', 'জানুয়ারী ', 'enero', 'ÙƒØ§Ù†ÙˆÙ† Ø§Ù„Ø«Ø§Ù†ÙŠ', 'à¤œà¤¨à¤µà¤°à¥€', 'Ø¬Ù†ÙˆØ±ÛŒ', 'ä¸€æœˆ', '1æœˆ', 'janeiro', 'ÑÐ½Ð²Ð°Ñ€ÑŒ', 'janvier', 'ì¼ì›”', 'Januar', 'gennaio', 'à¸¡à¸à¸£à¸²à¸„à¸¡', 'januÃ¡r', 'januari-', 'Ianuarii', 'Januari', 'Ocak', 'Î™Î±Î½Î¿Ï…Î¬ÏÎ¹Î¿Ï‚', 'Ú˜Ø§Ù†ÙˆÛŒÙ‡', 'Januari', 'à°œà°¨à°µà°°à°¿', 'à®œà®©à®µà®°à®¿', 'àªœàª¾àª¨à«àª¯à«àª†àª°à«€', 'styczeÅ„', 'Ð¡Ñ–Ñ‡ÐµÐ½ÑŒ', 'à¨œà¨¨à¨µà¨°à©€', 'ianuarie', 'á€‡á€”á€¹á€”á€á€«á€›á€®á€œ', 'Oá¹£Ã¹', 'Janairu', NULL, NULL),
(291, 'february', 'February', 'ফেব্রুয়ারী ', 'febrero', 'Ø´Ù‡Ø± ÙØ¨Ø±Ø§ÙŠØ±', 'à¤«à¤°à¤µà¤°à¥€', 'ÙØ±ÙˆØ±ÛŒ', 'äºŒæœˆ', '2æœˆ', 'fevereiro', 'Ñ„ÐµÐ²Ñ€Ð°Ð»ÑŒ', 'fÃ©vrier', 'ì´ì›”', 'Februar', 'febbraio', 'à¸à¸¸à¸¡à¸ à¸²à¸žà¸±à¸™à¸˜à¹Œ', 'februÃ¡r', 'februari', 'Februarius', 'Februari', 'Åžubat', 'Î¦ÎµÎ²ÏÎ¿Ï…Î¬ÏÎ¹Î¿Ï‚', 'ÙÙˆØ±ÛŒÙ‡', 'Februari', 'à°«à°¿à°¬à±à°°à°µà°°à°¿', 'à®ªà®¿à®ªà¯à®°à®µà®°à®¿', 'àª«à«‡àª¬à«àª°à«àª†àª°à«€', 'luty', 'Ð›ÑŽÑ‚Ð¸Ð¹', 'à¨«à¨°à¨µà¨°à©€', 'februarie', 'á€–á€±á€–á€±á€«á€ºá€á€«á€›á€®á€œ', 'KÃ­nnÃ­', 'Fabrairu', NULL, NULL),
(292, 'march', 'March', 'মার্চ ', 'marzo', 'Ù…Ø§Ø±Ø³', 'à¤®à¤¾à¤°à¥à¤š', 'Ù…Ø§Ø±Ú†', 'æ¸¸è¡Œ', 'è¡Œé€²', 'marcha', 'ÐœÐ°Ñ€Ñ‚', 'Mars', 'í–‰ì§„', 'MÃ¤rz', 'marzo', 'à¸¡à¸µà¸™à¸²à¸„à¸¡', 'mÃ¡rcius', 'maart', 'Martii', 'Maret', 'Mart', 'ÎœÎ¬ÏÏ„Î¹Î¿Ï‚', 'Ù…Ø§Ø±Ø³', 'Mac', 'à°®à°¾à°°à±à°šà°¿', 'à®®à®¾à®°à¯à®šà¯', 'àª•à«àªš', 'Marsz', 'Ð‘ÐµÑ€ÐµÐ·ÐµÐ½ÑŒ', 'à¨®à¨¾à¨°à¨š', 'Martie', 'á€™á€á€ºá€œ', 'Oá¹£Ã¹', 'Maris', NULL, NULL),
(293, 'april', 'April', 'এপ্রিল ', 'abril', 'Ø£Ø¨Ø±ÙŠÙ„', 'à¤…à¤ªà¥à¤°à¥ˆà¤²', 'Ø§Ù¾Ø±ÛŒÙ„', 'å››æœˆ', '4æœˆ', 'abril', 'Ð°Ð¿Ñ€ÐµÐ»ÑŒ', 'avril', '4 ì›”', 'April', 'aprile', 'à¹€à¸¡à¸©à¸²à¸¢à¸™', 'Ã¡prilis', 'april', 'Aprilis', 'April', 'Nisan', 'Î‘Ï€ÏÎ¯Î»Î¹Î¿Ï‚', 'Ø¢ÙˆØ±ÛŒÙ„', 'April', 'à°à°ªà±à°°à°¿à°²à±', 'à®à®ªà¯à®°à®²à¯', 'àªàªªà«àª°àª¿àª²', 'kwiecieÅ„', 'ÐšÐ²Ñ–Ñ‚ÐµÐ½ÑŒ', 'à¨…à¨ªà©à¨°à©ˆà¨²', 'Aprilie', 'á€§á€•á€¼á€®á€œ', 'Káº¹rin', 'Afrilu', NULL, NULL),
(294, 'may', 'May', 'মে ', 'Mayo', 'Ù‚Ø¯', 'à¤®à¤ˆ', 'Ù…Ø¦ÛŒ', 'å¯èƒ½', '5æœˆ', 'Pode', 'Ð¼Ð°Ð¹', 'mai', 'í•  ìˆ˜ìžˆë‹¤', 'Kann', 'potrebbe', 'à¸­à¸²à¸ˆ', 'Lehet', 'mei', 'May', 'Mungkin', 'MayÄ±s ayÄ±', 'Î•Î½Î´Î­Ï‡ÎµÏ„Î±Î¹', 'Ù…Ù…Ú©Ù† Ø§Ø³Øª', 'Mungkin', 'à°®à±‡', 'à®®à¯‡', 'àª®à«‡', 'MoÅ¼e', 'ÐœÐ¾Ð¶Ðµ', 'à¨®à¨ˆ', 'Mai', 'á€™á€±', 'á¹¢e', 'Mayu', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(295, 'june', 'June', 'জুন ', 'junio', 'ÙŠÙˆÙ†ÙŠÙˆ', 'à¤œà¥‚à¤¨', 'Ø¬ÙˆÙ†', 'å…­æœˆ', 'å…­æœˆ', 'Junho', 'Ð¸ÑŽÐ½ÑŒ', 'juin', 'ìœ ì›”', 'Juni', 'giugno', 'à¸¡à¸´à¸–à¸¸à¸™à¸²à¸¢à¸™', 'jÃºnius', 'juni-', 'June', 'Juni', 'Haziran', 'Î™Î¿ÏÎ½Î¹Î¿Ï‚', 'Ú˜ÙˆØ¦Ù†', 'Jun', 'à°œà±‚à°¨à±', 'à®œà¯‚à®©à¯', 'àªœà«‚àª¨', 'czerwiec', 'Ð§ÐµÑ€Ð²ÐµÐ½ÑŒ', 'à¨œà©‚à¨¨', 'iunie', 'á€‡á€½á€”á€ºá€œ', 'Okudu', 'Yuni', NULL, NULL),
(296, 'july', 'July', 'জুলাই ', 'julio', 'ÙŠÙˆÙ„ÙŠÙˆ', 'à¤œà¥à¤²à¤¾à¤ˆ', 'Ø¬ÙˆÙ„Ø§Ø¦ÛŒ', 'ä¸ƒæœˆ', '7æœˆ', 'Julho', 'Ð¸ÑŽÐ»ÑŒ', 'juillet', 'ì¹ ì›”', 'Juli', 'luglio', 'à¸à¸£à¸à¸Žà¸²à¸„à¸¡', 'jÃºlius', 'juli-', 'Iulii', 'Juli', 'Temmuz', 'Î™Î¿ÏÎ»Î¹Î¿Ï‚', 'Ø¬ÙˆÙ„Ø§ÛŒ', 'Julai', 'à°œà±‚à°²à±†à±–', 'à®œà¯‚à®²à¯ˆ', 'àªœà«àª²àª¾àªˆ', 'lipiec', 'Ð›Ð¸Ð¿ÐµÐ½ÑŒ', 'à¨œà©à¨²à¨¾à¨ˆ', 'iulie', 'á€‡á€°á€œá€­á€¯á€„á€ºá€œ', 'Keje', 'Yuli', NULL, NULL),
(297, 'august', 'August', 'আগস্ট ', 'agosto', 'Ø£ØºØ³Ø·Ø³', 'à¤…à¤—à¤¸à¥à¤¤', 'Ø§Ú¯Ø³Øª', 'å…«æœˆ', '8æœˆ', 'agosto', 'Ð°Ð²Ð³ÑƒÑÑ‚ÐµÐ¹ÑˆÐ¸Ð¹', 'aoÃ»t', 'íŒ”ì›”', 'August', 'agosto', 'à¸ªà¸´à¸‡à¸«à¸²à¸„à¸¡', 'augusztus', 'augustus', 'August', 'Agustus', 'AÄŸustos', 'Î‘ÏÎ³Î¿Ï…ÏƒÏ„Î¿Ï‚', 'Ø¢Ú¯ÙˆØ³Øª', 'Ogos', 'à°†à°—à°¸à±à°Ÿà±', 'à®†à®•à®¸à¯à®Ÿà¯', 'àª“àª—àª¸à«àªŸ', 'sierpieÅ„', 'Ð¡ÐµÑ€Ð¿ÐµÐ½ÑŒ', 'à¨…à¨—à¨¸à¨¤', 'August', 'á€žá€¼á€‚á€¯á€á€ºá€œ', 'Oá¹£Ã¹ Káº¹já»', 'Agusta', NULL, NULL),
(298, 'september', 'September', 'সেপ্টেম্বর ', 'septiembre', 'Ø³Ø¨ØªÙ…Ø¨Ø±', 'à¤¸à¤¿à¤¤à¤‚à¤¬à¤°', 'Ø³ØªÙ…Ø¨Ø±', 'ä¹æœˆ', '9æœˆ', 'setembro', 'ÑÐµÐ½Ñ‚ÑÐ±Ñ€ÑŒ', 'septembre', 'êµ¬ì›”', 'September', 'settembre', 'à¸à¸±à¸™à¸¢à¸²à¸¢à¸™', 'szeptember', 'september', 'September', 'September', 'EylÃ¼l', 'Î£ÎµÏ€Ï„Î­Î¼Î²ÏÎ¹Î¿Ï‚', 'Ø³Ù¾ØªØ§Ù…Ø¨Ø±', 'September', 'à°¸à±†à°ªà±à°Ÿà±†à°‚à°¬à°°à±', 'à®šà¯†à®ªà¯à®Ÿà®®à¯à®ªà®°à¯', 'àª¸àªªà«àªŸà«‡àª®à«àª¬àª°', 'wrzesieÅ„', 'Ð’ÐµÑ€ÐµÑÐµÐ½ÑŒ', 'à¨¸à¨¿à¨¤à©°à¨¬à¨°', 'Septembrie', 'á€…á€€á€ºá€á€„á€ºá€˜á€¬á€œ', 'Oá¹£u Káº¹san', 'Satumba', NULL, NULL),
(299, 'october', 'October', 'অক্টোবর ', 'octubre', 'Ø´Ù‡Ø± Ø§ÙƒØªÙˆØ¨Ø±', 'à¤…à¤•à¥à¤Ÿà¥‚à¤¬à¤°', 'Ø§Ú©ØªÙˆØ¨Ø±', 'åæœˆ', '10æœˆ', 'Outubro', 'Ð¾ÐºÑ‚ÑÐ±Ñ€Ñ', 'octobre', 'ì‹­ì›”', 'Oktober', 'ottobre', 'à¸•à¸¸à¸¥à¸²à¸„à¸¡', 'oktÃ³ber', 'oktober', 'Octobris', 'Oktober', 'Ekim', 'ÎŸÎºÏ„ÏŽÎ²ÏÎ¹Î¿Ï‚', 'Ø§Ú©ØªØ¨Ø±', 'Oktober', 'à°…à°•à±à°Ÿà±‹à°¬à°°à±', 'à®…à®•à¯à®Ÿà¯‡à®¾à®ªà®°à¯', 'àª“àª•à«àªŸà«‹àª¬àª°', 'paÅºdziernik', 'Ð–Ð¾Ð²Ñ‚ÐµÐ½ÑŒ', 'à¨…à¨•à¨¤à©‚à¨¬à¨°', 'octombrie', 'á€¡á€±á€¬á€€á€ºá€á€­á€¯á€˜á€¬á€œ', 'Oá¹£u Káº¹wa', 'Oktoba', NULL, NULL),
(300, 'november', 'November', 'নভেম্বর ', 'noviembre', 'Ø´Ù‡Ø± Ù†ÙˆÙÙ…Ø¨Ø±', 'à¤¨à¤µà¤‚à¤¬à¤°', 'Ù†ÙˆÙ…Ø¨Ø±', 'åä¸€æœˆ', '11æœˆ', 'novembro', 'Ð½Ð¾ÑÐ±Ñ€ÑŒ', 'novembre', 'ì‹­ì¼ì›”', 'November', 'novembre', 'à¸žà¸¤à¸¨à¸ˆà¸´à¸à¸²à¸¢à¸™', 'november', 'november', 'November', 'November', 'KasÄ±m', 'ÎÎ¿Î­Î¼Î²ÏÎ¹Î¿Ï‚', 'Ù†ÙˆØ§Ù…Ø¨Ø±', 'November', 'à°¨à°µà°‚à°¬à°°à±', 'à®¨à®µà®®à¯à®ªà®°à¯', 'àª¨àªµà«‡àª®à«àª¬àª°', 'listopad', 'Ð›Ð¸ÑÑ‚Ð¾Ð¿Ð°Ð´', 'à¨¨à¨µà©°à¨¬à¨°', 'noiembrie', 'á€”á€­á€¯á€á€„á€ºá€˜á€¬á€œ', 'Ká»kÃ nlÃ¡ Oá¹£Ã¹', 'Nuwamba', NULL, NULL),
(301, 'december', 'December', 'ডিসেম্বর ', 'diciembre', 'Ø¯ÙŠØ³Ù…Ø¨Ø±', 'à¤¦à¤¿à¤¸à¤‚à¤¬à¤°', 'Ø¯Ø³Ù…Ø¨Ø±', 'åäºŒæœˆ', '12æœˆ', 'dezembro', 'Ð”ÐµÐºÐ°Ð±Ñ€ÑŒ', 'dÃ©cembre', '12 ì›”', 'Dezember', 'dicembre', 'à¸˜à¸±à¸™à¸§à¸²à¸„à¸¡', 'december', 'december', 'December', 'Desember', 'AralÄ±k', 'Î”ÎµÎºÎ­Î¼Î²ÏÎ¹Î¿Ï‚', 'Ø¯Ø³Ø§Ù…Ø¨Ø±', 'Disember', 'à°¡à°¿à°¸à±†à°‚à°¬à°°à±', 'à®Ÿà®¿à®šà®®à¯à®ªà®°à¯', 'àª¡àª¿àª¸à«‡àª®à«àª¬àª°', 'grudzieÅ„', 'Ð“Ñ€ÑƒÐ´ÐµÐ½ÑŒ', 'à¨¦à¨¸à©°à¨¬à¨°', 'decembrie', 'á€’á€®á€‡á€„á€ºá€˜á€¬á€œ', 'Oá¹£Ã¹ KejÃ¬lÃ¡', 'Disamba', NULL, NULL),
(302, 'boys', 'Boy', 'বালক ', 'Chico', 'ØµØ¨ÙŠ', 'à¤²à¤¡à¤¼à¤•à¤¾', 'Ù„Ú‘Ú©Ø§', 'ç”·å­©', 'ç”·ã®å­', 'Garoto', 'Ð¼Ð°Ð»ÑŒÑ‡Ð¸Ðº', 'GarÃ§on', 'ì†Œë…„', 'Junge', 'Ragazzo', 'à¹€à¸”à¹‡à¸à¸œà¸¹à¹‰à¸Šà¸²à¸¢', 'FiÃº', 'Jongen', 'Puer', 'Anak laki-laki', 'OÄŸlan', 'Î‘Î³ÏŒÏÎ¹', 'Ù¾Ø³Ø±', 'Budak lelaki', 'à°¬à°¾à°¯à±', 'à®šà®¿à®±à¯à®µà®©à¯', 'àª¬à«‹àª¯', 'ChÅ‚opak', 'Ð¥Ð»Ð¾Ð¿Ñ‡Ð¸Ðº', 'à¨®à©à©°à¨¡à¨¾', 'BÄƒiat', 'á€šá€±á€¬á€€á€ºá€»á€¬á€¸á€œá€±á€¸', 'á»Œmá»kunrin', 'Yaro', NULL, NULL),
(303, 'girls', 'Girl', 'বালিকা ', 'NiÃ±a', 'ÙØªØ§Ø©', 'à¤²à¤¡à¤¼à¤•à¥€', 'Ù„Ú‘Ú©ÛŒ', 'å¥³å­©', 'å¥³ã®å­', 'Menina', 'Ð´ÐµÐ²ÑƒÑˆÐºÐ°', 'Fille', 'ì†Œë…€', 'MÃ¤dchen', 'Ragazza', 'à¸ªà¸²à¸§', 'LÃ¡ny', 'Meisje', 'puella', 'Gadis', 'KÄ±z', 'ÎšÎ¿ÏÎ¯Ï„ÏƒÎ¹', 'Ø¯Ø®ØªØ±', 'Gadis', 'à°—à°°à±à°²à±', 'à®ªà¯†à®£à¯', 'àª—àª°à«àª²', 'Dziewczyna', 'Ð”Ñ–Ð²Ñ‡Ð¸Ð½Ð°', 'à¨•à©à©œà©€', 'FatÄƒ', 'á€™á€­á€”á€ºá€¸á€€á€œá€±á€¸', 'á»Œdá»má»bÃ¬nrin', 'Yarinya ', NULL, NULL),
(304, 'combine', 'Combine', 'সমন্বিত ', 'Combinar', 'Ø¯Ù…Ø¬', 'à¤œà¥‹à¤¡à¤¼à¤¨à¤¾', 'ÛŒÚ©Ø¬Ø§', 'ç»“åˆ', 'çµåˆã™ã‚‹', 'Combinar', 'ÑÐºÐ¾Ð¼Ð±Ð¸Ð½Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'Combiner', 'ì½¤ë°”ì¸', 'Kombinieren', 'combinare', 'à¸£à¸§à¸¡à¸à¸±à¸™', 'KombÃ¡jn', 'Combineren', 'miscere', 'Menggabungkan', 'birleÅŸtirmek', 'Î£Ï…Î½Î´Ï…Î±ÏƒÎ¼ÏŒÏ‚', 'ØªØ±Ú©ÛŒØ¨ Ú©Ø±Ø¯Ù†', 'Gabung', 'à°®à°¿à°³à°¿à°¤à°‚', 'à®‡à®£à¯ˆà®•à¯à®•', 'àª­à«‡àª—à«àª‚ àª•àª°à«‹', 'PoÅ‚Ä…czyÄ‡', 'ÐšÐ¾Ð¼Ð±Ñ–Ð½ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨œà©à©œà©‹', 'Combina', 'á€•á€±á€«á€„á€ºá€¸á€…á€•á€º', 'Darapá»', 'HaÉ—a', NULL, NULL),
(305, 'ac', 'AC', 'এসি ', 'C.A.', 'AC', 'à¤à¤¸à¥€', 'AC', 'AC', 'äº¤æµ', 'AC', 'Ð¿ÐµÑ€ÐµÐ¼ÐµÐ½Ð½Ñ‹Ð¹ Ñ‚Ð¾Ðº', 'AC', 'êµë¥˜', 'Wechselstrom', 'AC', 'à¹„à¸Ÿà¸Ÿà¹‰à¸²à¸à¸£à¸°à¹à¸ªà¸ªà¸¥à¸±à¸š', 'AC', 'AC', 'n:', 'AC', 'AC', 'ÎœÎ•Î¤Î‘ Î§Î¡Î™Î£Î¤ÎŸÎ', 'AC', 'AC', 'AC', 'à®à®šà®¿', 'àªàª¸à«€', 'AC', 'AC', 'AC', 'AC', 'AC á€¡', 'AC', 'AC', NULL, NULL),
(306, 'non_ac', 'Non AC', 'নন এসি ', 'No AC', 'ØºÙŠØ± Ø£Ø³', 'à¤—à¥ˆà¤° à¤à¤¸à¥€', 'ØºÛŒØ± AC', 'éžäº¤æµ', 'éžAC', 'NÃ£o AC', 'Non AC', 'Pas ca', 'ë¹„ AC', 'Nicht Wechselstrom', 'Non AC', 'à¹„à¸¡à¹ˆà¹ƒà¸Šà¹ˆ AC', 'Nem AC', 'Niet AC', 'non Passage', 'Non AC', 'AC olmayan', 'ÎœÎ· AC', 'ØºÛŒØ± AC', 'Bukan AC', 'à°¨à°¾à°¨à± AC', 'à®…à®²à¯à®²à®¾à®¤ à®à®šà®¿', 'àª¬àª¿àª¨ àªàª¸à«€', 'Bez klimatyzacji', 'ÐÐµ AC', 'à¨—à©ˆà¨° à¨à¨¸à©€', 'Non AC', 'non AC á€¡', 'Ko si AC', 'Ba AC', NULL, NULL),
(307, 'male', 'Male', 'পুরুষ ', 'Masculino', 'Ø§Ù„Ø°ÙƒØ±', 'à¤¨à¤°', 'Ù…Ø±Ø¯', 'ç”·', 'ç”·æ€§', 'Masculino', 'Ð¼ÑƒÐ¶Ñ‡Ð¸Ð½Ð°', 'MÃ¢le', 'ë‚¨ì„±', 'MÃ¤nnlich', 'Maschio', 'à¸Šà¸²à¸¢', 'FÃ©rfi', 'Mannetje', 'Masculum', 'Pria', 'Erkek', 'Î‘ÏÏƒÎµÎ½Î¹ÎºÏŒÏ‚', 'Ù†Ø±', 'Lelaki', 'à°®à°—', 'à®†à®£à¯', 'àªªà«àª°à«‚àª·', 'MÄ™ski', 'Ð§Ð¾Ð»Ð¾Ð²Ñ–Ðº', 'à¨®à¨°à¨¦', 'Masculin', 'á€¡á€‘á€®á€¸', 'Okunrin', 'Namiji', NULL, NULL),
(308, 'female', 'Female', 'নারী ', 'Hembra', 'Ø¥Ù†Ø§Ø«Ø§', 'à¤®à¤¹à¤¿à¤²à¤¾', 'Ø¹ÙˆØ±Øª', 'å¥³', 'å¥³æ€§', 'FÃªmea', 'Ð¶ÐµÐ½ÑÐºÐ¸Ð¹', 'Femelle', 'ì—¬ìž', 'Weiblich', 'Femmina', 'à¸«à¸à¸´à¸‡', 'NÅ‘i', 'Vrouw', 'feminam', 'Wanita', 'KadÄ±n', 'Î˜Î·Î»Ï…ÎºÏŒÏ‚', 'Ø²Ù†', 'Perempuan', 'à°®à°¹à°¿à°³', 'à®ªà¯†à®£à¯', 'àª¸à«àª¤à«àª°à«€', 'PÅ‚eÄ‡ Å¼eÅ„ska', 'Ð–Ñ–Ð½ÐºÐ°', 'à¨”à¨°à¨¤', 'Femeie', 'á€¡á€™á€¼á€­á€¯á€¸á€žá€™á€®á€¸', 'Obinrin', 'Mace', NULL, NULL),
(309, 'unpaid', 'Unpaid', 'অপরিশোধিত ', 'No pagado', 'ØºÙŠØ± Ù…Ø¯ÙÙˆØ¹', 'à¤…à¤µà¥ˆà¤¤à¤¨à¤¿à¤•', 'Ù†Ø§Ù… Ù†ÛØ§Ø¯', 'æœªä»˜', 'æœªæ‰•ã„', 'NÃ£o remunerado', 'Ð½ÐµÐ¾Ð¿Ð»Ð°Ñ‡ÐµÐ½Ð½Ñ‹Ð¹', 'Non payÃ©', 'ì§€ë¶ˆë˜ì§€ ì•Šì€', 'Unbezahlt', 'non pagato', 'à¸¢à¸±à¸‡à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸Šà¸³à¸£à¸°', 'Kifizetetlen', 'onbetaald', 'insolutis', 'Tidak dibayar', 'Ã¶denmemiÅŸ', 'Î‘Ï€Î»Î®ÏÏ‰Ï„Î¿Ï‚', 'Ø¨Ø¯ÙˆÙ† Ù¾Ø±Ø¯Ø§Ø®Øª Ù‡Ø²ÛŒÙ†Ù‡', 'Tidak dibayar', 'à°šà±†à°²à±à°²à°¿à°‚à°šà°¨à°¿', 'à®šà¯†à®²à¯à®¤à¯à®¤à®ªà¯à®ªà®Ÿà®¾à®¤', 'àª…àªµà«‡àª¤àª¨', 'Nie zapÅ‚acony', 'ÐÐµÑÐ¿Ð»Ð°Ñ‡ÐµÐ½Ñ–', 'à¨…à¨µà©‡à¨¤à¨¨à¨•', 'neplÄƒtit', 'á€™á€›á€á€²á€·', 'Aisanwo', 'Ba a biya', NULL, NULL),
(310, 'partial', 'Partial', 'আংশিক ', 'Parcial', 'Ø¬Ø²Ø¦ÙŠ', 'à¤†à¤‚à¤¶à¤¿à¤•', 'Ø¬Ø²ÙˆÛŒ', 'å±€éƒ¨', 'éƒ¨åˆ†', 'Parcial', 'Ñ‡Ð°ÑÑ‚Ð¸Ñ‡Ð½Ñ‹Ð¹', 'Partiel', 'ë¶€ë¶„', 'Teilweise', 'Parziale', 'à¹€à¸›à¹‡à¸™à¸šà¸²à¸‡à¸ªà¹ˆà¸§à¸™', 'RÃ©szleges', 'partieel', 'sive partiales', 'Sebagian', 'KÄ±smi', 'ÎœÎµÏÎ¹ÎºÏŒÏ‚', 'Ø¬Ø²Ø¦ÙŠ', 'Separa', 'à°ªà°¾à°•à±à°·à°¿à°•à°‚', 'à®ªà®•à¯à®¤à®¿', 'àª†àª‚àª¶àª¿àª•', 'CzÄ™Å›ciowy', 'Ð§Ð°ÑÑ‚ÐºÐ¾Ð²Ð¾', 'à¨…à¨§à©‚à¨°à¨¾', 'ParÈ›ial', 'á€á€…á€­á€á€ºá€á€’á€±á€žá€–á€¼á€…á€ºá€žá€±á€¬', 'Apa kan', 'M', NULL, NULL),
(311, 'father', 'Father', 'পিতা ', 'Padre', 'Ø§Ù„Ø¢Ø¨', 'à¤ªà¤¿à¤¤à¤¾', 'Ø¨Ø§Ù¾', 'çˆ¶äº²', 'ãŠçˆ¶ã•ã‚“', 'Pai', 'ÐžÑ‚ÐµÑ†', 'PÃ¨re', 'ì•„ë²„ì§€', 'Father', 'Padre', 'à¸žà¹ˆà¸­', 'Apa', 'Vader', 'Pater', 'Ayah', 'baba', 'Î Î±Ï„Î­ÏÎ±Ï‚', 'Ù¾Ø¯Ø±', 'Bapa', 'à°¤à°‚à°¡à±à°°à°¿', 'à®…à®ªà¯à®ªà®¾', 'àªªàª¿àª¤àª¾', 'Ojciec', 'Ð‘Ð°Ñ‚ÑŒÐºÐ¾', 'à¨ªà¨¿à¨¤à¨¾ à¨œà©€', 'TatÄƒ', 'á€–á€á€„á€º', 'Baba', 'Uba', NULL, NULL),
(312, 'mother', 'Mother', 'মাতা ', 'Madre', 'Ø£Ù…', 'à¤®à¤¾à¤‚', 'Ù…Ø§Úº', 'æ¯äº²', 'æ¯', 'MÃ£e', 'ÐœÐ°Ð¼Ð°', 'MÃ¨re', 'ì–´ë¨¸ë‹ˆ', 'Mutter', 'Madre', 'à¹à¸¡à¹ˆ', 'Anya', 'Moeder', 'Mater', 'Ibu', 'anne', 'ÎœÎ·Ï„Î­ÏÎ±', 'Ù…Ø§Ø¯Ø±', 'Ibu', 'à°¤à°²à±à°²à°¿', 'à®¤à®¾à®¯à¯', 'àª®àª§àª°', 'Mama', 'ÐœÐ°Ð¼Ð°', 'à¨®à¨¾à¨¤à¨¾ à¨œà©€', 'MamÄƒ', 'á€™á€­á€á€„á€º', 'Iya', 'Uwar', NULL, NULL),
(313, 'sister', 'Sister', 'বোন ', 'Hermana', 'Ø£Ø®Øª', 'à¤¬à¤¹à¤¨', 'Ø¯ÛŒØ¯ÛŒ', 'å¦¹å¦¹', 'ã‚·ã‚¹ã‚¿ãƒ¼', 'IrmÃ£', 'Ð¡ÐµÑÑ‚Ñ€Ð°', 'sÅ“ur', 'ì—¬ìž í˜•ì œ', 'Schwester', 'Sorella', 'à¸™à¹‰à¸­à¸‡à¸ªà¸²à¸§', 'lÃ¡nytestvÃ©r', 'Zus', 'Soror', 'Saudara', 'KÄ±z kardeÅŸ', 'Î‘Î´ÎµÎ»Ï†Î®', 'Ø®ÙˆØ§Ù‡Ø±', 'Kakak', 'à°¸à±‹à°¦à°°à°¿', 'à®šà®•à¯‡à®¾à®¤à®°à®¿', 'àª¬àª¹à«‡àª¨', 'Siostra', 'Ð¡ÐµÑÑ‚Ñ€Ð°', 'à¨­à©ˆà¨£', 'sorÄƒ', 'á€¡á€…á€ºá€™', 'Arabinrin', 'yaruwa', NULL, NULL),
(314, 'brother', 'Brother', 'ভাই ', 'Hermano', 'Ø´Ù‚ÙŠÙ‚', 'à¤­à¤¾à¤ˆ', 'Ø¨Ú¾Ø§Ø¦ÛŒ', 'å“¥å“¥', 'å…„', 'IrmÃ£o', 'Ð‘Ñ€Ð°Ñ‚', 'frÃ¨re', 'ë™ë£Œ', 'Bruder', 'Fratello', 'à¸žà¸µà¹ˆà¸Šà¸²à¸¢', 'fiÃº testvÃ©r', 'Broer', 'Frater', 'Saudara', 'Erkek kardeÅŸ', 'Î‘Î´ÎµÎ»Ï†ÏŒÏ‚', 'Ø¨Ø±Ø§Ø¯Ø±', 'adik', 'à°¬à±à°°à°¦à°°à±', 'à®šà®•à¯‡à®¾à®¤à®°à®©à¯', 'àª­àª¾àªˆ', 'Brat', 'Ð‘Ñ€Ð°Ñ‚', 'à¨­à¨°à¨¾', 'Frate', 'á€¡á€…á€ºá€€á€­á€¯', 'Arakunrin', 'É—anuwana', NULL, NULL),
(315, 'uncle', 'Uncle', 'চাচা ', 'TÃ­o', 'Ø§Ø®Ùˆ Ø§Ù„Ø§Ù…', 'à¤šà¤¾à¤šà¤¾', 'Ú†Ø§Ú†Ø§', 'å”å”', 'å”çˆ¶', 'Tio', 'Ð”ÑÐ´Ñ', 'Oncle', 'ì‚¼ì´Œ', 'Onkel', 'Zio', 'à¸¥à¸¸à¸‡', 'NagybÃ¡csi', 'Oom', 'avunculus', 'Paman', 'Amca dayÄ±', 'Î˜ÎµÎ¯Î¿Ï‚', 'Ø¯Ø§ÛŒÛŒ', 'Paman', 'à°…à°‚à°•à±à°²à±', 'à®®à®¾à®®à®¾', 'àª…àª‚àª•àª²', 'Wujek', 'Ð”ÑÐ´ÑŒÐºÐ¾', 'à¨…à©°à¨•à¨²', 'unchi', 'á€˜á€€á€¼á€®á€¸', 'aburo', 'kawuna', NULL, NULL),
(316, 'maternal_uncle', 'Maternal Uncle', 'মামা ', 'TÃ­o materno', 'Ø§Ù„Ø®Ø§Ù„', 'à¤®à¤¾ à¤®à¤¾', 'Ù…Ø§Ù…ÙˆÚº', 'èˆ…', 'æ¯æ–¹ã®å”çˆ¶', 'Tio materno', 'Ð”ÑÐ´Ñ Ð¿Ð¾ Ð¼Ð°Ñ‚ÐµÑ€Ð¸', 'Oncle maternel', 'ìž„ì‚°ë¶€ ì‚¼ì´Œ', 'Onkel mÃ¼tterlicherseits', 'Zio materno', 'à¸„à¸¸à¸“à¹à¸¡à¹ˆà¸¥à¸¸à¸‡', 'Anyai nagybÃ¡tyja', 'Moeder oom', 'AVONCULUS', 'Paman ibu', 'Annelik Amca', 'ÎŸ Î¼Î·Ï„ÏÎ¹ÎºÏŒÏ‚ Î¸ÎµÎ¯Î¿Ï‚', 'Ø¯Ø§ÛŒÛŒ', 'Bapa saudara', 'à°®à±‡à°¨à°®à°¾à°®', 'à®¤à®¾à®¯à¯ à®®à®¾à®®à®¾', 'àª®àª¾àª¤à«ƒàª¤à«àªµ àª…àª‚àª•àª²', 'Wujek od strony matki', 'ÐœÐ°Ñ‚ÐµÑ€Ð¸Ð½ÑÑŒÐºÐ¸Ð¹ Ð´ÑÐ´ÑŒÐºÐ¾', 'à¨®à¨¾à¨µà¨¾à¨‚ à¨¦à¨¾ à¨…à©°à¨•à¨²', 'Unchiul matern', 'á€™á€­á€á€„á€ºá€¥á€®á€¸á€œá€±á€¸', 'obi aburo', 'Mahaifiyar uwa', NULL, NULL),
(317, 'other_relative', 'Other Relative', 'অন্যান্য আত্মীয় ', 'Otro pariente', 'Ù‚Ø±ÙŠØ¨ Ø§Ø®Ø±', 'à¤…à¤¨à¥à¤¯ à¤°à¤¿à¤¶à¥à¤¤à¥‡à¤¦à¤¾à¤°', 'Ø¯ÙˆØ³Ø±Û’ Ø±Ø´ØªÛ’ Ø¯Ø§Ø±', 'å…¶ä»–äº²å±ž', 'ãã®ä»–ã®ç›¸å¯¾', 'Outro parente', 'Ð”Ñ€ÑƒÐ³Ð¾Ð¹ Ñ€Ð¾Ð´ÑÑ‚Ð²ÐµÐ½Ð½Ð¸Ðº', 'Autre Relatif', 'ë‹¤ë¥¸ ì¹œì²™', 'Anderer Verwandter', 'Altro parente', 'à¸à¸²à¸•à¸´à¸­à¸·à¹ˆà¸™ à¹†', 'MÃ¡sik rokon', 'Ander familielid', 'aliud Relativum', 'Relatif lainnya', 'DiÄŸer akraba', 'Î‘Î»Î»Î¿Ï‚ ÏƒÏ…Î³Î³ÎµÎ½Î·Ï‚', 'Ø®ÙˆÛŒØ´Ø§ÙˆÙ†Ø¯ Ø¯ÛŒÚ¯Ø±', 'Saudara lain', 'à°®à°°à±Šà°• à°¬à°‚à°§à±à°µà±', 'à®®à®±à¯à®± à®‰à®±à®µà®¿à®©à®°à¯', 'àª…àª¨à«àª¯ àª¸àª‚àª¬àª‚àª§à«€', 'Inne wzglÄ™dne', 'Ð†Ð½ÑˆÐ¸Ð¹ Ñ€Ð¾Ð´Ð¸Ñ‡', 'à¨¹à©‹à¨° à¨°à¨¿à¨¸à¨¼à¨¤à©‡à¨¦à¨¾à¨°', 'AltÄƒ rudÄƒ', 'á€†á€½á€±á€™á€»á€­á€¯á€¸á€€á€á€á€¼á€¬á€¸', 'Ebi miiran', 'Wasu dangi', NULL, NULL),
(318, 'cash', 'Cash', 'নগদ ', 'Efectivo', 'Ø§Ù„Ø³ÙŠÙˆÙ„Ø© Ø§Ù„Ù†Ù‚Ø¯ÙŠØ©', 'à¤•à¥ˆà¤¶', 'Ù†Ù‚Ø¯', 'çŽ°é‡‘', 'ç¾é‡‘', 'Dinheiro', 'Ð”ÐµÐ½ÐµÐ¶Ð½Ñ‹Ðµ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð°', 'En espÃ¨ces', 'í˜„ê¸ˆ', 'Kasse', 'Contanti', 'à¹€à¸‡à¸´à¸™à¸ªà¸”', 'KÃ©szpÃ©nz', 'Contant geld', 'Cash', 'Kas', 'Nakit', 'ÎœÎµÏ„ÏÎ·Ï„Î¬', 'Ù†Ù‚Ø¯ÛŒ', 'Tunai', 'à°•à±à°¯à°¾à°·à±', 'à®ªà®£à®®à¯', 'àª•à«‡àª¶', 'GotÃ³wka', 'Ð“Ð¾Ñ‚Ñ–Ð²ÐºÐ°', 'à¨¨à¨•à¨¦', 'Bani gheata', 'á€„á€½á€±á€žá€¬á€¸', 'Owo owo', 'tsabar kudi', NULL, NULL),
(319, 'cheque', 'Cheque', 'চেক ', 'Comprobar', 'Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù†', 'à¤šà¥‡à¤•', 'Ú†ÛŒÚ© Ú©Ø±ÛŒÚº', 'æ£€æŸ¥', 'ãƒã‚§ãƒƒã‚¯', 'Verifica', 'ÐŸÑ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ', 'VÃ©rifier', 'ê²€ì‚¬', 'PrÃ¼fen', 'Dai unocchiata', 'à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸š', 'JelÃ¶lje be', 'Controleren', 'represserat', 'Memeriksa', 'Kontrol', 'Î•Î»ÎµÎ³Ï‡Î¿Ï‚', 'Ø¨Ø±Ø±Ø³ÛŒ', 'Semak', 'à°¤à°¨à°¿à°–à±€', 'à®šà®°à®¿à®ªà®¾à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àª¤àªªàª¾àª¸à«‹', 'Czek', 'ÐŸÐµÑ€ÐµÐ²Ñ–Ñ€Ñ‚Ðµ', 'à¨šà©ˆà¨•', 'Verifica', 'á€…á€…á€ºá€†á€±á€¸á€á€¼á€„á€ºá€¸', 'á¹¢ayáº¹wo', 'Duba', NULL, NULL),
(320, 'paypal', 'Paypal', 'পেপাল ', 'Paypal', 'Ø¨Ø§ÙŠ Ø¨Ø§Ù„', 'Paypal', 'Ù¾Û’ Ù¾Ø§Ù„', 'è´å®', 'Paypal', 'Paypal', 'Paypal', 'Pay Pal', 'íŽ˜ì´íŒ”', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Paypal', 'Coin Paypal', 'Paypal', 'Paypal', 'Paypal', 'Ù¾ÛŒ Ù¾Ø§Ù„', 'Paypal', 'Paypal', 'à®ªà¯‡à®ªà®¾à®²à¯', 'àªªà«‡àªªàª²', 'Paypal', 'Paypal', 'à¨ªà©‡à¨ªà¨¾à¨²', 'Paypal', 'paypal', 'PayPal', 'Paypal', NULL, NULL),
(321, 'stripe', 'Stripe', 'স্ট্রাইপ ', 'Raya', 'Ø´Ø±ÙŠØ·', 'à¤ªà¤Ÿà¥à¤Ÿà¥€', 'Ù¾Ù¹ÛŒ', 'æ¡çº¹', 'ã‚¹ãƒˆãƒ©ã‚¤ãƒ—', 'Listra', 'Ð½Ð°ÑˆÐ¸Ð²ÐºÐ°', 'Bande', 'ì¤„ë¬´ëŠ¬', 'Streifen', 'Banda', 'à¸£à¸´à¹‰à¸§', 'CsÃ­k', 'Streep', 'clavo', 'Garis', 'Åžerit', 'Î¤Î±Î¹Î½Î¯Î±', 'Ø®Ø· Ø®Ø·ÛŒ', 'Stripe', 'à°—à±€à°¤', 'à®•à¯‡à®¾à®Ÿà¯à®•à®³à¯', 'àª—à«‡àª°à«àª¨à«‹', 'Naszywka', 'Ð¡Ð¼ÑƒÐ³Ð°', 'à¨§à©±à¨¬à¨¾', 'Dunga', 'á€¡á€…á€„á€ºá€¸', 'adikala', 'Stripe', NULL, NULL),
(322, 'payumoney', 'PayUMoney', 'পেইউ মানি ', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'PayUMoney', 'Payumoney', 'PayUMoney', 'PayUMoney', 'àªªà«‡àª¯àª®àª¨à«€', 'PayUMoney', 'PayUMoney', 'à¨ªà©ˆà¨°à¨¾à¨®à¨®à¨¨à©€', 'PayUMoney', 'PayUMoney', 'PayIMEMB', 'PayPony', NULL, NULL),
(323, 'clicktell', 'Clicktell', 'ক্লিকটেল ', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'í´ë¦­', 'Klicken', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Ú©Ù„ÛŒÚ© Ú©Ù†ÛŒØ¯', 'Clicktell', 'Clicktell', 'Clicktell', 'àª•à«àª²àª¿àª•àªŸà«‡àª²', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Clicktell', 'Táº¹Táº¹', 'Clicktell', NULL, NULL),
(324, 'twilio', 'Twilio', 'ট্যুইলো ', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'Twilio', 'àªŸà«àªµà«€àª²à«‹', 'Twilio', 'Ð¢Ð²Ñ–Ð»Ñ–Ð¾', 'à¨Ÿà¨µà¨¿à¨²à©€à¨“', 'Twilio', 'Twilio', 'Twilio', 'Twilio', NULL, NULL),
(325, 'bulk', 'Bulk', 'বাল্ক ', 'Abultar', 'Ø­Ø¬Ù…', 'à¤¥à¥‹à¤•', 'Ø¨Ù„Ú©', 'å—', 'ãƒãƒ«ã‚¯', 'Massa', 'Ð½Ð°ÑÑ‹Ð¿Ð½Ð¾Ð¹', 'masse', 'ëŒ€ë¶€ë¶„', 'Bulk', 'Massa', 'à¸‚à¸™à¸²à¸”à¹ƒà¸«à¸à¹ˆ', 'tÃ¶meg', 'massa', 'mole', 'Jumlah besar', 'yÄ±ÄŸÄ±n', 'ÎŸÎ³ÎºÎ¿Ï‚', 'ÙÙ„Ù‡', 'Pukal', 'à°¬à°²à±à°•à±', 'à®®à¯†à®¾à®¤à¯à®¤', 'àª¬àª²à«àª•', 'ObjÄ™toÅ›Ä‡', 'ÐœÐ°ÑÐ¾Ð²Ð° Ñ‡Ð°ÑÑ‚ÐºÐ°', 'à¨¬à¨²à¨•', 'masÄƒ', 'á€‘á€¯á€‘á€Šá€º', 'olopobobo', 'Girma', NULL, NULL),
(326, 'msg91', 'MSG91', 'মেসেজ৯১ ', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', 'MSG91', NULL, NULL),
(327, 'plivo', 'Plivo', 'প্লিভো ', 'Plivo', 'Plivo', 'Plivo', 'Ù¾Ù„ÛŒÙˆ', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Pliva', 'í”Œë¼ ë³´', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Plivo', 'Î Î»Î¯Î²Î¿', 'Ù¾Ù„ÙˆÛŒÙˆ', 'Plivo', 'Plivo', 'Plivo', 'àªªà«àª²àª¿àªµà«‹', 'Plivo', 'ÐŸÐ»Ñ–Ð²Ð¾', 'à¨ªà¨²à¨µà¨¾', 'Plivo', 'Plivo', 'Plivo', 'Plivo', NULL, NULL),
(328, 'second', 'Second', 'দ্বিতীয় ', 'Segundo', 'Ø«Ø§Ù†ÙŠØ§', 'à¤¦à¥‚à¤¸à¤°à¤¾', 'Ø¯ÙˆØ³Ø±Ø§', 'ç¬¬äºŒ', 'äºŒç•ªç›®', 'Segundo', 'Ð²Ñ‚Ð¾Ñ€Ð¾Ð¹', 'Seconde', 'ë‘˜ì§¸', 'Zweite', 'Secondo', 'à¸—à¸µà¹ˆà¸ªà¸­à¸‡', 'MÃ¡sodik', 'Tweede', 'secundi', 'Kedua', 'Ä°kinci', 'Î”ÎµÏÏ„ÎµÏÎ¿Ï‚', 'Ø¯ÙˆÙ…ÛŒÙ†', 'Kedua', 'à°°à±†à°‚à°¡à°µ', 'à®‡à®°à®£à¯à®Ÿà®¾à®µà®¤à¯', 'àª¬à«€àªœà«àª‚', 'druga', 'Ð”Ñ€ÑƒÐ³Ð¸Ð¹', 'à¨¦à©‚à¨œà¨¾', 'Al doilea', 'á€’á€¯á€á€­á€š', 'Keji', 'Na biyu', NULL, NULL),
(329, 'minute', 'Minute', 'মিনিট ', 'Minuto', 'Ø§Ù„Ù„Ø­Ø¸Ø©', 'à¤®à¤¿à¤¨à¤Ÿ', 'Ù…Ù†Ù¹', 'åˆ†é’Ÿ', 'åˆ†', 'Minuto', 'Ð¼Ð¸Ð½ÑƒÑ‚', 'Minute', 'ë¶„', 'Minute', 'minuto', 'à¸™à¸²à¸—à¸µ', 'Perc', 'Minuut', 'minute', 'Menit', 'Dakika', 'Î›ÎµÏ€Ï„ÏŒ', 'Ø¯Ù‚ÛŒÙ‚Ù‡', 'Minit', 'à°¨à°¿à°®à°¿à°·à°‚', 'à®®à®¿à®©à®¿à®Ÿà¯', 'àª®àª¿àª¨àª¿àªŸ', 'Minuta', 'Ð¥Ð²Ð¸Ð»Ð¸Ð½Ð°', 'à¨®à¨¿à©°à¨Ÿ', 'Minut', 'á€™á€­á€”á€…á€º', 'Iá¹£áº¹ju', 'Minti', NULL, NULL),
(330, 'hour', 'Hour', 'ঘন্টা ', 'Hora', 'Ø³Ø§Ø¹Ø©', 'à¤˜à¤‚à¤Ÿà¤¾', 'Ù‚ÛŒØ§Ù…Øª', 'å°æ—¶', 'æ™‚é–“', 'Hora', 'Ð§Ð°Ñ', 'Heure', 'ì‹œê°„', 'Stunde', 'Ora', 'à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡', 'Ã“ra', 'Uur', 'hora', 'Jam', 'Saat', 'Î©ÏÎ±', 'Ø³Ø§Ø¹Øª', 'Jam', 'à°…à°µà°°à±', 'à®¹à®µà®°à¯', 'àª•àª²àª¾àª•', 'Godzina', 'Ð“Ð¾Ð´Ð¸Ð½Ð°', 'à¨˜à©°à¨Ÿà©‡', 'Ora', 'á€”á€¬á€›á€®', 'Wakati', 'Saa', NULL, NULL),
(331, 'week', 'Week', 'সপ্তাহ ', 'Semana', 'Ø£Ø³Ø¨ÙˆØ¹', 'à¤¸à¤ªà¥à¤¤à¤¾à¤¹', 'ÛÙØªÛ', 'å‘¨', 'é€±é–“', 'Semana', 'ÐÐµÐ´ÐµÐ»ÑŽ', 'La semaine', 'ì£¼', 'Woche', 'Settimana', 'à¸ªà¸±à¸›à¸”à¸²à¸«à¹Œ', 'HÃ©t', 'Week', 'week', 'Minggu', 'Hafta', 'Î•Î²Î´Î¿Î¼Î¬Î´Î±', 'Ù‡ÙØªÙ‡', 'Minggu', 'à°µà°¾à°°à°‚', 'à®µà¯€à®•à¯', 'àª…àª àªµàª¾àª¡àª¿àª¯à«àª‚', 'TydzieÅ„', 'Ð¢Ð¸Ð¶Ð´ÐµÐ½ÑŒ', 'à¨¹à¨«à¨¤à¨¾', 'SÄƒptÄƒmÃ¢nÄƒ', 'á€›á€€á€ºá€žá€á€¹á€á€•á€á€º', 'Osu', 'mako', NULL, NULL),
(332, 'decade', 'Decade', 'দশক ', 'DÃ©cada', 'Ø¹Ù‚Ø¯', 'à¤¦à¤¶à¤•', 'Ø¯ÛØ§Ø¦ÛŒ', 'å', '10å¹´', 'DÃ©cada', 'Ð´ÐµÑÑÑ‚Ð¸Ð»ÐµÑ‚Ð¸Ðµ', 'DÃ©cennie', 'ë¡œì‚¬ë¦¬ì˜¤ ì—¼ì£¼', 'Dekade', 'Decennio', 'à¸—à¸¨à¸§à¸£à¸£à¸©', 'Ã‰vtized', 'Decennium', 'decennium', 'Dasawarsa', 'OnyÄ±l', 'Î”ÎµÎºÎ±ÎµÏ„Î¯Î±', 'Ø¯Ù‡Ù‡', 'Dekad', 'à°¦à°¶à°¾à°¬à±à°¦à°‚', 'à®ªà®¤à¯à®¤à®¾à®£à¯à®Ÿà®¿à®©à¯', 'àª¦àª¾àª¯àª•àª¾', 'Dekada', 'Ð”ÐµÑÑÑ‚Ð¸Ð»Ñ–Ñ‚Ñ‚Ñ', 'à¨¦à¨¹à¨¾à¨•à©‡', 'Deceniu', 'á€†á€šá€ºá€”á€¾á€…á€º', 'á»Œdun máº¹wa', 'Shekaru goma', NULL, NULL),
(333, 'ago', 'Ago', 'আগে ', 'Hace', 'Ù…Ù†Ø°', 'à¤ªà¥‚à¤°à¥à¤µ', 'Ù¾ÛÙ„Û’', 'å‰', 'å‰', 'AtrÃ¡s', 'Ð¢Ð¾Ð¼Ñƒ Ð½Ð°Ð·Ð°Ð´', 'Depuis', 'ì „ì—', 'Vor', 'Fa', 'à¸¡à¸²à¹à¸¥à¹‰à¸§', 'EzelÅ‘tt', 'Geleden', 'ante', 'Ago', 'Ã–nce', 'Î ÏÎ¹Î½', 'Ù¾ÛŒØ´', 'Ago', 'à°•à±à°°à°¿à°¤à°‚', 'à®®à¯à®©à¯à®ªà¯', 'àªªàª¹à«‡àª²àª¾àª‚', 'Temu', 'ÐÐ°Ñ€ÐµÑˆÑ‚Ñ–', 'à¨ªà¨¹à¨¿à¨²à¨¾à¨‚', 'ÃŽn urmÄƒ', 'á€œá€½á€”á€ºá€á€²á€·á€á€²á€·', 'Aago', 'da suka wuce', NULL, NULL),
(334, 'from_now', 'From Now', 'এখন থেকে ', 'Desde ahora', 'Ù…Ù† Ø§Ù„Ø§Ù†', 'à¤…à¤¬ à¤¸à¥‡', 'Ø§Ø¨Ú¾ÛŒ Ø³Û’', 'çŽ°åœ¨èµ·', 'ä»Šã‹ã‚‰', 'A partir de agora', 'ÐžÑ‚Ð½Ñ‹Ð½Ðµ', 'Ã€ partir de maintenant', 'ì§€ê¸ˆë¶€í„°', 'In', 'Da adesso', 'à¸ˆà¸²à¸à¸™à¸µà¹‰', 'MostantÃ³l', 'Vanaf nu', 'Nunc', 'Mulai sekarang', 'Åžu andan itibaren', 'Î‘Ï€ÏŒ Ï„ÏŽÏÎ±', 'Ø§Ø² Ø­Ø§Ù„Ø§', 'Dari sekarang', 'à°‡à°ªà±à°ªà°Ÿà°¿ à°¨à±à°‚à°¡à°¿', 'à®‡à®ªà¯à®ªà¯‹à®¤à¯ à®‡à®°à¯à®¨à¯à®¤à¯', 'àª¹àªµà«‡àª¥à«€', 'Od teraz', 'Ð’Ñ–Ð´ Ñ‚ÐµÐ¿ÐµÑ€', 'à¨¹à©à¨£ à¨¤à©‹', 'De acum', 'á€šá€á€¯á€€á€”á€±', 'Lati Bayi', 'Daga Yanzu', NULL, NULL),
(335, 'bill_to', 'Bill To', 'বিল ট্যু ', 'Cobrar a', 'ÙØ§ØªÙˆØ±Ø© Ø§Ù„Ù‰', 'à¤¬à¤¿à¤² à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤à¤•à¤°à¥à¤¤à¤¾', 'Ú©Ø§ Ø¨Ù„', 'è®°è´¦åˆ°', 'è«‹æ±‚æ›¸é€ä»˜å…ˆ', 'Projeto de lei para', 'ÐŸÐ»Ð°Ñ‚ÐµÐ»ÑŒÑ‰Ð¸Ðº', 'Facturer', 'ì²­êµ¬ì„œ ìˆ˜ì‹ ', 'Gesetzesentwurf fÃ¼r', 'Fatturare a', 'à¸ªà¹ˆà¸‡à¹€à¸šà¸´à¸à¹„à¸›à¸—à¸µà¹ˆ', 'Bill To', 'Rekening naar', 'Ad Bill', 'Pembayaran kepada', 'Ya fatura edilecek', 'Bill To', 'Ø¨ÛŒÙ„ ØªØ§', 'Bill To', 'à°¬à°¿à°²à± à°Ÿà±', 'à®ªà®¿à®²à¯ à®šà¯†à®¯à¯à®¯', 'àª®àª¾àªŸà«‡ àª¬àª¿àª²', 'rachunek do', 'Ð‘Ñ–Ð»Ð» Ð¢Ð¾Ð´', 'à¨¬à¨¿à¨² à¨•à¨°à©‹', 'Proiect de lege pentru', 'á€‘á€¶á€„á€½á€±á€á€±á€¬á€„á€ºá€¸á€á€¶á€žá€Šá€º', 'Isanowo fun', 'Lissafta zuwa', NULL, NULL),
(336, 'password', 'Password', 'পাসওয়ার্ড ', 'ContraseÃ±a', 'ÙƒÙ„Ù…Ù‡ Ø§Ù„Ø³Ø±', 'à¤ªà¤¾à¤°à¤£ à¤¶à¤¬à¥à¤¦', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ', 'å¯†ç ', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰', 'Senha', 'Ð¿Ð°Ñ€Ð¾Ð»ÑŒ', 'Mot de passe', 'ì•”í˜¸', 'Passwort', 'Parola dordine', 'à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™', 'JelszÃ³', 'Wachtwoord', 'Password', 'Kata sandi', 'Parola', 'ÎšÏ‰Î´Î¹ÎºÏŒÏ‚ Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚', 'Ú©Ù„Ù…Ù‡ Ø¹Ø¨ÙˆØ±', 'Kata laluan', 'à°ªà°¾à°¸à±à°µà°°à±à°¡à±', 'à®•à®Ÿà®µà¯à®šà¯à®šà¯†à®¾à®²à¯', 'àªªàª¾àª¸àªµàª°à«àª¡', 'HasÅ‚o', 'ÐŸÐ°Ñ€Ð¾Ð»ÑŒ', 'à¨ªà¨¾à¨¸à¨µà¨°à¨¡', 'Parola', 'Password á€€á€­á€¯', 'á»Œrá»igbaniwá»le', 'Kalmar sirri', NULL, NULL),
(337, 'manage_theme', 'Manage Theme', 'থিম ব্যবস্থাপনা ', 'Administrar el tema', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹', 'à¤¥à¥€à¤® à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ØªÚ¾ÛŒÙ… Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ä¸»é¢˜', 'ãƒ†ãƒ¼ãƒžã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Tema', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‚ÐµÐ¼Ð¾Ð¹', 'GÃ©rer le thÃ¨me', 'í…Œë§ˆ ê´€ë¦¬', 'Thema verwalten', 'Gestisci temi', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸˜à¸µà¸¡', 'TÃ©ma kezelÃ©se', 'Thema beheren', 'curo Natus', 'Kelola Tema', 'TemayÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î˜Î­Î¼Î±Ï„Î¿Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª ØªÙ…', 'Uruskan Tema', 'à°¥à±€à°®à±à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯€à®®à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¥à«€àª® àª¸àª‚àªšàª¾àª²àª¿àª¤ àª•àª°à«‹', 'ZarzÄ…dzaj motywem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ‚ÐµÐ¼Ð¾ÑŽ', 'à¨¥à©€à¨® à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i tema', 'á€¡á€“á€­á€€á€¡á€€á€¼á€±á€¬á€„á€ºá€¸á€¡á€›á€¬á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Akori', 'Sarrafa Jigo', NULL, NULL),
(338, 'manage_language', 'Manage Language', 'ভাষা ব্যবস্থাপনা ', 'Administrar el lenguaje', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù„ØºØ©', 'à¤­à¤¾à¤·à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø²Ø¨Ø§Ù† Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è¯­è¨€', 'è¨€èªžã®ç®¡ç†', 'Gerenciar Idioma', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ·Ñ‹ÐºÐ¾Ð¼', 'GÃ©rer la langue', 'ì–¸ì–´ ê´€ë¦¬', 'Sprache verwalten', 'Gestisci la lingua', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ à¸²à¸©à¸²', 'A nyelv kezelÃ©se', 'Taal beheren', 'Lingua curo', 'Kelola Bahasa', 'Dili YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î³Î»ÏŽÏƒÏƒÎ±Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø²Ø¨Ø§Ù†', 'Uruskan Bahasa', 'à°­à°¾à°·à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à¯Šà®´à®¿ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª­àª¾àª·àª¾ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj jÄ™zykiem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¼Ð¾Ð²Ð¾ÑŽ', 'à¨­à¨¾à¨¸à¨¼à¨¾ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i limba', 'á€˜á€¬á€žá€¬á€…á€€á€¬á€¸á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Ede', 'Sarrafa Harshe', NULL, NULL),
(339, 'manage_academic_year', 'Manage Academic Year', 'শিক্ষাবর্ষ ব্যবস্থাপনা ', 'Administrar el aÃ±o acadÃ©mico', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø³Ù†Ø© Ø§Ù„Ø¯Ø±Ø§Ø³ÙŠØ©', 'à¤…à¤•à¤¾à¤¦à¤®à¤¿à¤• à¤µà¤°à¥à¤· à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'ØªØ¹Ù„ÛŒÙ…ÛŒ Ø³Ø§Ù„ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å­¦å¹´', 'ã‚¢ã‚«ãƒ‡ãƒŸãƒƒã‚¯ã‚¤ãƒ¤ãƒ¼ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar o Ano AcadÃªmico', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑƒÑ‡ÐµÐ±Ð½Ñ‹Ð¼ Ð³Ð¾Ð´Ð¾Ð¼', 'GÃ©rer lannÃ©e acadÃ©mique', 'í•™ìŠµ ì—°ë„ ê´€ë¦¬', 'Akademisches Jahr verwalten', 'Gestisci lanno accademico', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸›à¸µà¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²', 'TanulmÃ¡nyi Ã©v kezelÃ©se', 'Academisch jaar beheren', 'Curo Academic Year', 'Mengelola Tahun Akademik', 'Akademik YÄ±lÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Î±ÎºÎ±Î´Î·Î¼Î±ÏŠÎºÏŒ Î­Ï„Î¿Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø³Ø§Ù„ ØªØ­ØµÛŒÙ„ÛŒ', 'Urus Tahun Akademik', 'à°µà°¿à°¦à±à°¯à°¾ à°¸à°‚à°µà°¤à±à°¸à°°à°‚ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®•à®²à¯à®µà®¿ à®†à®£à¯à®Ÿà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¶à«ˆàª•à«àª·àª£àª¿àª• àªµàª°à«àª·àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj Rokiem akademickim', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð½Ð°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ð¼ Ñ€Ð¾ÐºÑƒ', 'à¨…à¨•à¨¾à¨¦à¨®à¨¿à¨• à¨¸à¨¾à¨² à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i anul academic', 'á€•á€Šá€¬á€›á€±á€¸á€†á€­á€¯á€„á€ºá€›á€¬á€á€…á€ºá€”á€¾á€…á€ºá€á€¬á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso á»dun áº¹ká»', 'Sarrafa Shekarar Kwalejin', NULL, NULL),
(340, 'manage_role', 'Manage Role', 'কর্মপরিধি ব্যবস্থাপনা ', 'Administrar rol', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¯ÙˆØ±', 'à¤°à¥‹à¤² à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø±ÙˆÙ„ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è§’è‰²', 'å½¹å‰²ã®ç®¡ç†', 'Gerenciar o papel', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€Ð¾Ð»ÑŒÑŽ', 'Manage Role', 'ì—­í•  ê´€ë¦¬', 'Rolle verwalten', 'Gestisci il ruolo', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸šà¸—à¸šà¸²à¸—', 'A szerep kezelÃ©se', 'Rol beheren', 'Partes quas curo', 'Kelola Peran', 'RolÃ¼ YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÏÏŒÎ»Î¿Ï…', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù†Ù‚Ø´', 'Mengurus Peranan', 'à°ªà°¾à°¤à±à°°à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®°à¯‹à®²à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª°à«‹àª² àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj rolÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ€Ð¾Ð»Ð»ÑŽ', 'à¨­à©‚à¨®à¨¿à¨•à¨¾ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i rolul', 'á€¡á€á€”á€ºá€¸á€€á€¹á€•á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Ipa', 'Sarrafa Matsayi', NULL, NULL),
(341, 'manage_user', 'Manage User', 'ব্যবহারকারী ব্যবস্থাপনা ', 'Administrar usuario', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ØµØ§Ø±Ù Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ç”¨æˆ·', 'ãƒ¦ãƒ¼ã‚¶ãƒ¼ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar UsuÃ¡rio', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸', 'Manage User', 'ì‚¬ìš©ìž ê´€ë¦¬', 'Benutzer verwalten', 'Gestisci utente', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'FelhasznÃ¡lÃ³ kezelÃ©se', 'Beheer gebruiker', 'usorum regere', 'Kelola Pengguna', 'KullanÄ±cÄ±yÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï‡ÏÎ®ÏƒÏ„Î·', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú©Ø§Ø±Ø¨Ø±', 'Urus Pengguna', 'à°µà°¿à°¨à°¿à°¯à±‹à°—à°¦à°¾à°°à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®¯à®©à®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾àª¨à«‡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj UÅ¼ytkownikiem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡ÐµÐ¼', 'à¨¯à©‚à¨œà¨¼à¨° à¨¨à©‚à©° à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i utilizatorul', 'á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso olumulo', 'Sarrafa Mai amfani', NULL, NULL),
(342, 'manage_designation', 'Manage Designation', 'পদবি ব্যবস্থাপনা ', 'Administrar DesignaciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØªØ¹ÙŠÙŠÙ†', 'à¤ªà¤¦à¤¨à¤¾à¤® à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø¹ÛØ¯Û Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æŒ‡å®š', 'æŒ‡å®šç®¡ç†', 'Gerenciar DesignaÃ§Ã£o', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¾Ð±Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer la dÃ©signation', 'ì§€ì • ê´€ë¦¬', 'Benennung verwalten', 'Gestire la designazione', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸²à¸£à¸à¸³à¸«à¸™à¸”', 'A kijelÃ¶lÃ©s kezelÃ©se', 'Aanwijzing beheren', 'curo VOCABULUM', 'Kelola Penunjukan', 'TanÄ±mlamayÄ± YÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¿Î½Î¿Î¼Î±ÏƒÎ¯Î±Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª ØªØ¹ÛŒÛŒÙ†', 'Urus Jawatan', 'à°¹à±‹à°¦à°¾à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¨à®¿à®°à¯à®µà®•à®¿à®¤à¯à®¤à®²à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¹à«‹àª¦à«àª¦à«‹ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj oznaczeniem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ Ð¿Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½ÑÐ¼', 'à¨¡à¨¿à¨œà¨¼à¨¾à¨ˆà¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i desemnarea', 'á€žá€á€ºá€™á€¾á€á€ºá€•á€±á€¸á€‘á€¬á€¸á€á€¼á€„á€ºá€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n Apáº¹ráº¹', 'Sarrafa Zama', NULL, NULL),
(343, 'manage_employee', 'Manage Employee', 'কর্মকর্তা ব্যবস্থাপনা ', 'Administrar Empleado', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ¸Ù', 'à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù…Ù„Ø§Ø²Ù… Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å‘˜å·¥', 'å¾“æ¥­å“¡ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Empregado', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ°Ð¼Ð¸', 'GÃ©rer lemployÃ©', 'ì§ì› ê´€ë¦¬', 'Mitarbeiter verwalten', 'Gestisci dipendente', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸žà¸™à¸±à¸à¸‡à¸²à¸™', 'Alkalmazottak kezelÃ©se', 'Beheer werknemer', 'Aliquam curo', 'Mengelola Karyawan', 'Ã‡alÄ±ÅŸanÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿Î½ Ï…Ï€Î¬Î»Î»Î·Î»Î¿', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú©Ø§Ø±Ù…Ù†Ø¯', 'Urus Pekerja', 'à°‰à°¦à±à°¯à±‹à°—à°¿à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®£à®¿à®¯à®¾à®³à®°à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª•àª°à«àª®àªšàª¾àª°à«€àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj pracownikiem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¿Ñ€Ð°Ñ†Ñ–Ð²Ð½Ð¸ÐºÐ¾Ð¼', 'à¨•à¨°à¨®à¨šà¨¾à¨°à©€ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i angajatul', 'á€‘á€™á€ºá€¸á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso awá»n AbÃ¡ni', 'Sarrafa Maaikata', NULL, NULL),
(344, 'manage_teacher', 'Manage Teacher', 'শিক্ষক ব্যবস্থাপনা ', 'Administra al maestro', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø¹Ù„Ù…', 'à¤¶à¤¿à¤•à¥à¤·à¤• à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ù¹ÛŒÚ†Ø± Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ•™å¸ˆ', 'æ•™å¸«ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar professor', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑƒÑ‡Ð¸Ñ‚ÐµÐ»ÐµÐ¼', 'GÃ©rer lenseignant', 'êµì‚¬ ê´€ë¦¬', 'Lehrer verwalten', 'Gestisci insegnante', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸„à¸£à¸¹', 'TanÃ¡r kezelÃ©se', 'Beheer de docent', 'curo Teacher', 'Kelola Guru', 'Ã–ÄŸretmen YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿Î½ Î”Î¬ÏƒÎºÎ±Î»Î¿', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù…Ø¹Ù„Ù…', 'Menguruskan Guru', 'à°Ÿà±€à°šà°°à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿ ', 'à®†à®šà®¿à®°à®¿à®¯à®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¶àª¿àª•à«àª·àª•àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj nauczycielem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð²Ñ‡Ð¸Ñ‚ÐµÐ»ÐµÐ¼', 'à¨…à¨§à¨¿à¨†à¨ªà¨• à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i Ã®nvÄƒÈ›Äƒtorul', 'á€¡á€›á€¾á€„á€ºá€˜á€¯á€›á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n Oluká»ni', 'Sarrafa Malam', NULL, NULL),
(345, 'manage_class', 'Manage Class', 'শ্রেণি ব্যবস্থাপনা ', 'Administrar clase', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ÙØ¦Ø©', 'à¤•à¥à¤²à¤¾à¤¸ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ú©Ù„Ø§Ø³ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ç­çº§', 'ã‚¯ãƒ©ã‚¹ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Classe', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ»Ð°ÑÑÐ¾Ð¼', 'GÃ©rer la classe', 'ìˆ˜ì—… ê´€ë¦¬', 'Klasse verwalten', 'Gestisci classe', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Class', 'OsztÃ¡ly kezelÃ©se', 'Beheer klasse', 'curo Paleonemertea Class', 'Kelola Kelas', 'SÄ±nÄ±fÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ ÎºÎ»Î¬ÏƒÎ·Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú©Ù„Ø§Ø³', 'Urus Kelas', 'à°•à±à°²à°¾à°¸à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®•à¯à®ªà¯à®ªà¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª•à«àª²àª¾àª¸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj klasÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ ÐºÐ»Ð°ÑÐ¾Ð¼', 'à¨•à¨²à¨¾à¨¸ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i clasa', 'Class á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Kilasi', 'Sarrafa Kundin', NULL, NULL),
(346, 'manage_section', 'Manage Section', 'শাখা ব্যবস্থাপনা ', 'Administrar la SecciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù‚Ø³Ù…', 'à¤…à¤¨à¥à¤­à¤¾à¤— à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³ÛŒÚ©Ø´Ù† Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†éƒ¨åˆ†', 'ã‚»ã‚¯ã‚·ãƒ§ãƒ³ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar SeÃ§Ã£o', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€Ð°Ð·Ð´ÐµÐ»Ð°Ð¼Ð¸', 'GÃ©rer la section', 'ì„¹ì…˜ ê´€ë¦¬', 'Abschnitt verwalten', 'Gestisci sezione', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ªà¹ˆà¸§à¸™', 'SzekciÃ³ kezelÃ©se', 'Beheer sectie', 'curo sect', 'Kelola Bagian', 'BÃ¶lÃ¼mÃ¼ YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ ÎµÎ½ÏŒÏ„Î·Ï„Î±Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¨Ø®Ø´', 'Urus Seksyen', 'à°µà°¿à°­à°¾à°—à°‚ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®¿à®°à®¿à®µà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªµàª¿àª­àª¾àª— àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj sekcjÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ€Ð¾Ð·Ð´Ñ–Ð»Ð¾Ð¼', 'à¨¸à©ˆà¨•à¨¸à¨¼à¨¨ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i secÈ›iunea', 'á€•á€¯á€’á€ºá€™á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Apakan', 'Sarrafa Sashe', NULL, NULL),
(347, 'manage_subject', 'Manage Subject', 'বিষয় ব্যবস্থাপনা ', 'Administrar Asunto', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹', 'à¤µà¤¿à¤·à¤¯ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù…ÙˆØ¶ÙˆØ¹ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ä¸»é¢˜', 'ä»¶åã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Assunto', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€ÐµÐ´Ð¼ÐµÑ‚Ð°Ð¼Ð¸', 'GÃ©rer le sujet', 'ì£¼ì œ ê´€ë¦¬', 'Betreff verwalten', 'Gestisci soggetto', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¸±à¸§à¹€à¸£à¸·à¹ˆà¸­à¸‡', 'Subject kezelÃ©se', 'Beheer het onderwerp', 'curo Subject', 'Kelola Subjek', 'Konuyu YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¸Î­Î¼Î±Ï„Î¿Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù…ÙˆØ¶ÙˆØ¹', 'Uruskan Subjek', 'à°µà°¿à°·à°¯à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à®²à¯ˆà®ªà¯à®ªà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªµàª¿àª·àª¯ àª¸àª‚àªšàª¾àª²àª¿àª¤ àª•àª°à«‹', 'ZarzÄ…dzaj tematem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ñ‚ÐµÐ¼Ð¾ÑŽ', 'à¨µà¨¿à¨¸à¨¼à¨¾ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i subiectul', 'á€¡á€€á€¼á€±á€¬á€„á€ºá€¸á€¡á€›á€¬á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Koko-á»rá»', 'Sarrafa Takardar', NULL, NULL),
(348, 'manage_syllabus', 'Manage Syllabus', 'সিলেবাস ব্যবস্থাপনা ', 'Administrar plan de estudios', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ù†Ù‡Ø¬', 'à¤µà¤¿à¤·à¤¯ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Syllabus Ú©Ùˆ Ù…Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ•™å­¦å¤§çº²', 'ã‚·ãƒ©ãƒã‚¹ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar o Syllabus', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ð³Ñ€Ð°Ð¼Ð¼Ð¾Ð¹', 'GÃ©rer le syllabus', 'ê°•ì˜ ê³„íšì„œ ê´€ë¦¬', 'Syllabus verwalten', 'Gestisci il Sillabo', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Syllabus', 'A tanterv kezelÃ©se', 'Syllabus beheren', 'curo Syllabus', 'Mengelola Silabus', 'Ders PlanÄ±nÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ Î´Î¹Î´Î±ÎºÏ„Î­Î±Ï‚ ÏÎ»Î·Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø¯Ø±Ø³ÛŒ', 'Uruskan Sukatan pelajaran', 'à°¸à°¿à°²à°¬à°¸à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®¾à®Ÿà®¤à¯à®¤à®¿à®Ÿà¯à®Ÿà®¤à¯à®¤à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª…àª­à«àª¯àª¾àª¸àª•à«àª°àª® àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj programem Syllabus', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð½Ð°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ð¼ Ð¿Ð»Ð°Ð½Ð¾Ð¼', 'à¨¸à¨¿à¨²à©‡à¨¬à¨¸ à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i programa', 'á€žá€„á€ºá€›á€­á€¯á€¸á€™á€¬á€á€­á€€á€¬á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso awá»n Syllabus', 'Sarrafa Syllabus', NULL, NULL),
(349, 'manage_routine', 'Manage Routine', 'রুটিন ব্যবস্থাপনা ', 'Administrar la rutina', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø±ÙˆØªÙŠÙ†ÙŠØ©', 'à¤¨à¤¿à¤¯à¤®à¤¿à¤¤ à¤°à¥‚à¤ª à¤¸à¥‡ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø±ÙˆÙ¹ÛŒÙ† Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ä¾‹ç¨‹', 'ãƒ«ãƒ¼ãƒãƒ³ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar rotina', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€ÐµÐ³ÑƒÐ»ÑÑ€Ð½Ð¾ÑÑ‚ÑŒÑŽ', 'GÃ©rer les routines', 'ë£¨í‹´ ê´€ë¦¬', 'Routine verwalten', 'Gestisci routine', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸›à¸£à¸°à¸ˆà¸³', 'RutinkezelÃ©s', 'Beheer routine', 'curo DEFUNCTORIUS', 'Kelola Rutin', 'Rutini YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ ÏÎ¿Ï…Ï„Î¯Î½Î±Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù…Ø¹Ù…ÙˆÙ„', 'Urus Rutin', 'à°°à±Šà°Ÿà±€à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®´à®•à¯à®•à®®à®¾à®© à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¨àª¿àª¯àª®àª¿àª¤ àª°à«‚àªªà«‡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj procedurÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð·Ð²Ð¸Ñ‡Ð°Ð¹Ð½Ð¸Ð¼', 'à¨°à©à¨Ÿà©€à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i rutina', 'á€•á€¯á€¶á€™á€¾á€”á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Iá¹£akoso', 'Sarrafa Gyara', NULL, NULL),
(350, 'manage_guardian', 'Manage Guardian', 'অভিভাবক ব্যবস্থাপনা ', 'Administrar Guardian', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¬Ø§Ø±Ø¯ÙŠØ§Ù†', 'à¤¸à¤‚à¤°à¤•à¥à¤·à¤• à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ú¯Ø§Ø±ÚˆÛŒÙ† Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ç›‘æŠ¤äºº', 'Guardianã‚’ç®¡ç†ã™ã‚‹', 'Manage Guardian', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¾Ð¿ÐµÐºÑƒÐ½Ð¾Ð¼', 'Manage Guardian', 'Guardian ê´€ë¦¬', 'WÃ¤chter verwalten', 'Gestisci il guardiano', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Guardian', 'Guardian kezelÃ©se', 'Beheer Guardian', 'curo Custodes', 'Mengelola wali', 'Koruyucuyu yÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿Î½ ÎšÎ·Î´ÎµÎ¼ÏŒÎ½Î±', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù†Ú¯Ù‡Ø¨Ø§Ù†', 'Urus Guardian', 'à°—à°¾à°°à±à°¡à°¿à°¯à°¨à±à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª—àª¾àª°à«àª¡àª¿àª¯àª¨ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj opiekunem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¾Ñ…Ð¾Ñ€Ð¾Ð½Ñ†ÐµÐ¼', 'à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i Gardianul', 'á€‚á€«á€¸á€’á€®á€¸á€šá€”á€ºá€¸á€žá€á€„á€ºá€¸á€…á€¬á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Iá¹£akoso', 'Sarrafa Guardian', NULL, NULL),
(351, 'manage_student', 'Manage Student', 'ছাত্র/ছাত্রী ব্যবস্থাপনা ', 'Administrar estudiante', 'Ø¯Ø§Ø±Ø© Ø§Ù„Ø·Ø§Ù„Ø¨', 'à¤›à¤¾à¤¤à¥à¤° à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å­¦ç”Ÿ', 'å­¦ç”Ÿã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar aluno', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð¼', 'GÃ©rer lÃ©tudiant', 'í•™ìƒ ê´€ë¦¬', 'SchÃ¼ler verwalten', 'Gestisci studente', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™', 'DiÃ¡k kezelÃ©se', 'Beheer de student', 'Discipulus curo', 'Kelola Siswa', 'Ã–ÄŸrenciyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¦Î¿Î¹Ï„Î·Ï„ÏŽÎ½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²', 'Uruskan Pelajar', 'à°µà°¿à°¦à±à°¯à°¾à°°à±à°¥à°¿à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à®¾à®£à®µà®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj uczniem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð¼', 'à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i elevul', 'á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n á»má»-iwe', 'Sarrafa dalibi', NULL, NULL),
(352, 'manage_assignment', 'Manage Assignment', 'বাড়ির কাজ ব্যবস্থাপনা ', 'Administrar la asignaciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØªØ¹ÙŠÙŠÙ†', 'à¤…à¤¸à¤¾à¤‡à¤¨à¤®à¥‡à¤‚à¤Ÿ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§ÛØªÙ…Ø§Ù… Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ä½œä¸š', 'å‰²ã‚Šå½“ã¦ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar AtribuiÃ§Ã£o', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð½Ð°Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer laffectation', 'ë°°ì • ê´€ë¦¬', 'Zuordnung verwalten', 'Gestire lincarico', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸²à¸£à¸¡à¸­à¸šà¸«à¸¡à¸²à¸¢', 'HozzÃ¡rendelÃ©s kezelÃ©se', 'Toewijzing beheren', 'curo adsignatione', 'Kelola Penugasan', 'Ã–dev YÃ¶netimi', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ ÎµÎºÏ‡ÏŽÏÎ·ÏƒÎ·Ï‚', 'ØªØ®ØµÛŒØµ Ù…Ø¯ÛŒØ±ÛŒØª', 'Urus Tugasan', 'à°…à°ªà±à°ªà°—à°¿à°‚à°¤à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®£à®¿à®¯à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¸à«‹àª‚àªªàª£à«€àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj przypisaniem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð·Ð°Ð²Ð´Ð°Ð½Ð½ÑÐ¼', 'à¨¨à¨¿à¨°à¨§à¨¾à¨°à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i asignarea', 'á€á€¬á€á€”á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n iá¹£áº¹', 'Sarrafa Ayyukan', NULL, NULL),
(353, 'manage_submission', 'Manage Submission', 'জমাদান ব্যবস্থাপনা ', 'Administrar presentaciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¥Ø±Ø³Ø§Ù„', 'à¤¸à¤¬à¤®à¤¿à¤¶à¤¨ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø¬Ù…Ø¹ Ú©Ø±Ø§Ù†Û’ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æäº¤', 'æå‡ºã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Envio', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ð»ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer la soumission', 'ì œì¶œ ê´€ë¦¬', 'Einreichung verwalten', 'Gestisci invio', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸²à¸£à¸ªà¹ˆà¸‡', 'Feladat kezelÃ©se', 'Inzending beheren', 'curo Submission', 'Mengelola Pengiriman', 'GÃ¶ndermeyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï…Ï€Î¿Î²Î¿Î»Î®Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§Ø±Ø³Ø§Ù„', 'Urus Penyerahan', 'à°¸à°®à°°à±à°ªà°£à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà®®à®°à¯à®ªà¯à®ªà®¿à®ªà¯à®ªà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¸àª¬àª®àª¿àª¶àª¨ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj przesÅ‚aniem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¿Ð¾Ð´Ð°Ð½Ð½ÑÐ¼', 'à¨¸à¨¬à¨®à¨¿ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i depunerea', 'á€á€„á€ºá€•á€¼á€™á€¾á€¯á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n Gbigbanilaaye', 'Sarrafa Yarjejeniya', NULL, NULL),
(354, 'manage_grade', 'Manage Grade', 'গ্রেড ব্যবস্থাপনা ', 'Administrar Grado', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØµÙ', 'à¤—à¥à¤°à¥‡à¤¡ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ú¯Ø±ÛŒÚˆ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æˆç»©', 'ã‚°ãƒ¬ãƒ¼ãƒ‰ç®¡ç†', 'Gerenciar classificaÃ§Ã£o', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ»Ð°ÑÑÐ¾Ð¼', 'GÃ©rer la note', 'í•™ë…„ ê´€ë¦¬', 'Klasse verwalten', 'Gestisci Grado', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸£à¸°à¸”à¸±à¸š', 'Kezelje a fokozatot', 'Beheer Grade', 'curo Romani', 'Kelola Grade', 'SÄ±nÄ±fÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î²Î±Î¸Î¼Î¿Ï', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø±Ø¬Ù‡', 'Urus Gred', 'à°—à±à°°à±‡à°¡à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à®°à®®à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª—à«àª°à«‡àª¡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj ocenÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¾Ñ†Ñ–Ð½ÐºÐ¾ÑŽ', 'à¨—à¨°à©‡à¨¡ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i gradul', 'á€¡á€†á€„á€ºá€·á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Iwá»n', 'Sarrafa sauti', NULL, NULL),
(355, 'manage_exam_term', 'Manage Exam Term', 'পরীক্ষার টার্ম ব্যবস্থাপনা ', 'Administrar el tÃ©rmino del examen', 'Ø¥Ø¯Ø§Ø±Ø© Ù…Ø¯Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤µà¤§à¤¿ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ø§ØµØ·Ù„Ø§Ø­ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è€ƒè¯•æœŸé™', 'è©¦é¨“æœŸé–“ã‚’ç®¡ç†ã™ã‚‹', 'Termo de gerenciamento de exames', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÑ€Ð¾ÐºÐ¾Ð¼ Ñ€Ð°ÑÑÐ¼Ð¾Ñ‚Ñ€ÐµÐ½Ð¸Ñ', 'GÃ©rer le terme dexamen', 'ì‹œí—˜ ê¸°ê°„ ê´€ë¦¬', 'PrÃ¼fungsbedingung verwalten', 'Gestisci il termine dellesame', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸£à¸°à¸¢à¸°à¸ªà¸­à¸š', 'VizsgaidÅ‘szak kezelÃ©se', 'Beheer examenperiode', 'Curo termino IV', 'Mengelola Ujian Term', 'SÄ±nav SÃ¼resini YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿Î½ ÏŒÏÎ¿ ÎµÎ¾Î­Ï„Î±ÏƒÎ·Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯ÙˆØ±Ù‡ Ø§Ù…ØªØ­Ø§Ù†', 'Mengurus Terma Ujian', 'à°ªà°°à±€à°•à±à°·à°¾ à°Ÿà°°à±à°®à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯‡à®°à¯à®µà¯ à®•à®¾à®² à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª°à«€àª•à«àª·àª¾ àª®à«àª¦àª¤àª¨à«€ àªµà«àª¯àªµàª¸à«àª¥àª¾ àª•àª°à«‹', 'ZarzÄ…dzaj egzaminem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ‚ÐµÑ€Ð¼Ñ–Ð½Ð¾Ð¼ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨®à¨¿à¨†à¨¦ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i termenul de examinare', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€€á€¬á€œá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso akoko Aawo', 'Sarrafa Jarrabawa', NULL, NULL),
(356, 'manage_exam_schedule', 'Manage Exam Schedule', 'পরীক্ষার শিডিউল ব্যবস্থাপনা ', 'Administrar el horario del examen', 'Ø¥Ø¯Ø§Ø±Ø© Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†Ø§Øª', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø§Ù…ØªØ­Ø§Ù† Ø´ÛŒÚˆÙˆÙ„ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è€ƒè¯•æ—¶é—´è¡¨', 'è©¦é¨“ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«ã‚’ç®¡ç†ã™ã‚‹', 'Manejar o horÃ¡rio do Exame', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸ÐµÐ¼ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð¾Ð²', 'GÃ©rer le calendrier des examens', 'ì‹œí—˜ ì¼ì • ê´€ë¦¬', 'PrÃ¼fungsablauf verwalten', 'Gestisci il calendario degli esami', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸³à¸«à¸™à¸”à¸à¸²à¸£à¸ªà¸­à¸š', 'A vizsgaÃ¼temezÃ©s kezelÃ©se', 'Beheer examenschema', 'Curo Test Morbi rhoncus', 'Kelola Jadwal Ujian', 'SÄ±nav Takvimini YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Ï€ÏÏŒÎ³ÏÎ±Î¼Î¼Î± ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø§Ù…ØªØ­Ø§Ù†Ø§Øª', 'Mengurus Jadual Peperiksaan', 'à°ªà°°à±€à°•à±à°·à°¾ à°·à±†à°¡à±à°¯à±‚à°²à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯‡à®°à¯à®µà¯ à®…à®Ÿà¯à®Ÿà®µà®£à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª°à«€àª•à«àª·àª¾àª¨à«àª‚ àª¶à«‡àª¡à«àª¯à«‚àª² àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj harmonogramem egzaminu', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ€Ð¾Ð·ÐºÐ»Ð°Ð´Ð¾Ð¼ Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð²', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨…à¨¨à©à¨¸à©‚à¨šà©€ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i programul de examen', 'á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€ºá€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€á€»á€­á€”á€ºá€‡á€šá€¬á€¸', 'á¹¢akoso Akadii Akadá»', 'Sarrafa Jirgin Nazarin', NULL, NULL),
(357, 'manage_suggestion', 'Manage Suggestion', 'সাজেশন ব্যবস্থাপনা ', 'Administrar sugerencia', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø§Ù‚ØªØ±Ø§Ø­', 'à¤¸à¥à¤à¤¾à¤µ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ØªØ¬ÙˆÛŒØ² Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å»ºè®®', 'ææ¡ˆã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar sugestÃ£o', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer la suggestion', 'ì œì•ˆ ê´€ë¦¬', 'VorschlÃ¤ge verwalten', 'Gestire suggerimenti', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸„à¸³à¹à¸™à¸°à¸™à¸³', 'Javaslat kezelÃ©se', 'Suggestie beheren', 'curo Suggestion', 'Kelola Saran', 'Ã–neriyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ Ï€ÏÏŒÏ„Î±ÏƒÎ·Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù¾ÛŒØ´Ù†Ù‡Ø§Ø¯ÛŒ', 'Uruskan Cadangan', 'à°¸à±‚à°šà°¨ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®°à®¿à®¨à¯à®¤à¯à®°à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¸à«‚àªšàª¨ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj sugestiÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð¿Ñ€Ð¾Ð¿Ð¾Ð·Ð¸Ñ†Ñ–Ñ”ÑŽ', 'à¨¸à©à¨à¨¾à¨… à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i sugestiile', 'á€¡á€€á€¼á€¶á€•á€¼á€¯á€á€»á€€á€ºá€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso á»Œrá»', 'Sarrafa Bayani', NULL, NULL),
(358, 'manage_exam_attendance', 'Manage Exam Attendance', 'পরীক্ষায় উপস্থিতি ব্যবস্থাপনা ', 'Administrar la asistencia al examen', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù…ØªØ­Ø§Ù† Ø§Ù„Ø­Ø¶ÙˆØ±', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ø­Ø§Ø¶Ø±ÛŒ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è€ƒè¯•è€ƒå‹¤', 'è©¦é¨“å‡ºå¸­ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar atendimento ao exame', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð¾Ð¼', 'GÃ©rer la prÃ©sence aux examens', 'ì‹œí—˜ ì¶œì„ ê´€ë¦¬', 'PrÃ¼fungsbesuch verwalten', 'Gestisci la frequenza degli esami', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸à¸²à¸£à¸ªà¸­à¸š', 'VizsgÃ¡lati rÃ©szvÃ©tel kezelÃ©se', 'Beheer examen aanwezigheid', 'Curo IV Attendance', 'Mengelola Kehadiran Ujian', 'SÄ±nav KatÄ±lÄ±mÄ±nÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÏƒÏ…Î¼Î¼ÎµÏ„Î¿Ï‡Î®Ï‚ ÏƒÏ„Î¹Ï‚ ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÎ¹Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø­Ø¶ÙˆØ± Ø¯Ø± Ø¢Ø²Ù…ÙˆÙ†', 'Menguruskan Kehadiran Peperiksaan', 'à°ªà°°à±€à°•à±à°·à°¾ à°¹à°¾à°œà°°à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯‡à®°à¯à®µà¯à®ªà¯ à®ªà®£à®¿à®•à®³à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª°à«€àª•à«àª·àª¾ àªàªŸà«‡àª¨à«àª¡àª¨à«àª¸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj uczestnictwem w egzaminie', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ Ð²Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ð½Ð½ÑÐ¼ Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð²', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¹à¨¾à¨œà¨¼à¨°à©€ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i participarea la examene', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€á€€á€ºá€›á€±á€¬á€€á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso akoko isinwo', 'Sarrafa Harkokin Binciken', NULL, NULL),
(359, 'manage_mark', 'Manage Mark', 'নম্বর ব্যবস্থাপনা ', 'Administrar marca', 'Ø¥Ø¯Ø§Ø±Ø© Ù…Ø§Ø±Ùƒ', 'à¤®à¤¾à¤°à¥à¤• à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù…Ø§Ø±Ú© Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ ‡è®°', 'ãƒžãƒ¼ã‚¯ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar marca', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¼ÐµÑ‚ÐºÐ¾Ð¹', 'GÃ©rer la marque', 'ë§ˆí¬ ê´€ë¦¬', 'Mark verwalten', 'Gestisci Marco', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Mark', 'Mark kezelÃ©se', 'Beheer Mark', 'Mark curo', 'Kelola Mark', 'MarkÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÏƒÎ®Î¼Î±Ï„Î¿Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ', 'Urus Mark', 'à°®à°¾à°°à±à°•à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à®¾à®°à¯à®•à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª®àª¾àª°à«àª• àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj Markem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð·Ð½Ð°ÐºÐ¾Ð¼', 'à¨®à¨¾à¨°à¨• à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i marca', 'á€™á€¬á€€á€¯á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Samisi', 'Sarrafa Alama', NULL, NULL),
(360, 'manage_mark_sheet', 'Manage Mark Sheet', 'নম্বরপত্র ব্যবস্থাপনা ', 'Administrar la hoja de marca', 'Ø¥Ø¯Ø§Ø±Ø© Ø¹Ù„Ø§Ù…Ø© ÙˆØ±Ù‚Ø©', 'à¤®à¤¾à¤°à¥à¤• à¤¶à¥€à¤Ÿ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù…Ø§Ø±Ú© Ø´ÛŒÙ¹ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ ‡è®°è¡¨', 'ãƒžãƒ¼ã‚¯ã‚·ãƒ¼ãƒˆã‚’ç®¡ç†ã™ã‚‹', 'Manage Mark Sheet', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¼ÐµÑ‚ÐºÐ¾Ð¹', 'GÃ©rer la feuille de marque', 'ë§ˆí¬ ì‹œíŠ¸ ê´€ë¦¬', 'Mark Sheet verwalten', 'Gestisci Mark Sheet', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹à¸œà¹ˆà¸™à¸¡à¸²à¸£à¹Œà¸„', 'MÃ¡rkajelzÃ©s kezelÃ©se', 'Markeringsblad beheren', 'Curo Mark Sheet', 'Kelola Lembar Mark', 'Marka SayfasÄ±nÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï†ÏÎ»Î»Î¿Ï… ÏƒÎ·Î¼ÎµÎ¯Ï‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¨Ø±Ú¯Ù‡ Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ', 'Urus Mark Sheet', 'à°®à°¾à°°à±à°•à± à°·à±€à°Ÿà±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à®¾à®°à¯à®•à¯ à®¤à®¾à®³à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª®àª¾àª°à«àª•àª¶à«€àªŸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj arkuszem markerÃ³w', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ Ñ‚Ð°Ð±Ð»Ð¸Ñ†ÐµÑŽ Ð¼Ð°Ñ€ÐºÑƒÐ²Ð°Ð½Ð½Ñ', 'à¨®à¨¾à¨°à¨• à¨¸à¨¼à©€à¨Ÿ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i foaia de marcÄƒ', 'á€™á€¬á€€á€¯á€…á€¬á€›á€½á€€á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso á¹¢iá¹£isi Marisi', 'Sarrafa Takardar Market', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(361, 'manage_exam_result', 'Manage Exam Result', 'পরীক্ষার ফলাফল ব্যবস্থাপনা ', 'Administrar el resultado del examen', 'Ø¥Ø¯Ø§Ø±Ø© Ù†ØªÙŠØ¬Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤ªà¤°à¤¿à¤£à¤¾à¤® à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§Ù…ØªØ­Ø§Ù† Ú©Û’ Ù†ØªØ§Ø¦Ø¬ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è€ƒè¯•ç»“æžœ', 'è©¦é¨“çµæžœã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Resultado do Exame', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð¾Ð¼ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°', 'GÃ©rer le rÃ©sultat dexamen', 'ì‹œí—˜ ê²°ê³¼ ê´€ë¦¬', 'PrÃ¼fungsergebnis verwalten', 'Gestisci risultato esame', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¥à¸¥à¸±à¸žà¸˜à¹Œà¸à¸²à¸£à¸ªà¸­à¸š', 'VizsgÃ¡lati eredmÃ©ny kezelÃ©se', 'Beheer examenresultaat', 'Curo Test Result', 'Mengelola Hasil Ujian', 'SÄ±nav SonuÃ§larÄ±nÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î‘Ï€Î¿Ï„Î­Î»ÎµÏƒÎ¼Î± Î•Î¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù†ØªÛŒØ¬Ù‡ Ø¢Ø²Ù…ÙˆÙ†', 'Urus Keputusan Peperiksaan', 'à°ªà°°à±€à°•à±à°· à°«à°²à°¿à°¤à°‚ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯‡à®°à¯à®µà¯ à®®à¯à®Ÿà®¿à®µà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª°à«€àª•à«àª·àª¾àª¨à«àª‚ àªªàª°àª¿àª£àª¾àª® àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wynikami egzaminu', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð¾Ð¼ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¨à¨¤à©€à¨œà©‡ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i rezultatul examenului', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€›á€œá€’á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso abajade abajade', 'Sarrafa sakamakon binciken', NULL, NULL),
(362, 'manage_promotion', 'Manage Promotion', 'পদোন্নিতি ব্যবস্থাপনা ', 'Administrar promociÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØªØ±ÙˆÙŠØ¬', 'à¤ªà¤¦à¥‹à¤¨à¥à¤¨à¤¤à¤¿ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÙØ±ÙˆØº Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æŽ¨å¹¿', 'ãƒ—ãƒ­ãƒ¢ãƒ¼ã‚·ãƒ§ãƒ³ã®ç®¡ç†', 'Gerenciar PromoÃ§Ã£o', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð¶ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer la promotion', 'í”„ë¡œëª¨ì…˜ ê´€ë¦¬', 'Werbung verwalten', 'Gestisci la promozione', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹‚à¸›à¸£à¹‚à¸¡à¸Šà¸±à¸™', 'A promÃ³ciÃ³ kezelÃ©se', 'Promotie beheren', 'curo Promotio', 'Kelola Promosi', 'Promosyonu YÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï€ÏÎ¿ÏŽÎ¸Î·ÏƒÎ·Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª ØªØ¨Ù„ÛŒØº', 'Uruskan Promosi', 'à°ªà±à°°à°šà°¾à°°à°‚ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®¿à®³à®®à¯à®ªà®°à®¤à¯à®¤à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªà«àª°àª®à«‹àª¶àª¨ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj promocjÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ Ð¿Ñ€Ð¾ÑÑƒÐ²Ð°Ð½Ð½ÑÐ¼', 'à¨¤à¨°à©±à¨•à©€ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i promovarea', 'á€™á€¼á€¾á€„á€ºá€·á€á€„á€ºá€›á€±á€¸á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Ipolowo', 'Sarrafa gabatarwa', NULL, NULL),
(363, 'manage_book', 'Manage Book', 'বই ব্যবস্থাপনা ', 'Administrar libro', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ÙƒØªØ§Ø¨', 'à¤ªà¥à¤¸à¥à¤¤à¤• à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ú©ØªØ§Ø¨ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ä¹¦ç±', 'æ›¸ç±ã‚’ç®¡ç†ã™ã‚‹', 'Manage Book', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ½Ð¸Ð³Ð¾Ð¹', 'GÃ©rer le livre', 'ë„ì„œ ê´€ë¦¬', 'Buch verwalten', 'Gestisci il libro', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­', 'KÃ¶nyv kezelÃ©se', 'Beheer het boek', 'curo Books', 'Kelola Buku', 'KitabÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î’Î¹Î²Î»Î¯Î¿Ï…', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú©ØªØ§Ø¨', 'Urus Buku', 'à°¬à±à°•à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà¯à®¤à¯à®¤à®•à®¤à¯à®¤à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¬à«àª• àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj ksiÄ…Å¼kÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ ÐºÐ½Ð¸Ð³Ð¾ÑŽ', 'à¨¬à©à©±à¨• à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i cartea', 'á€…á€¬á€¡á€¯á€•á€ºá€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso Iwe', 'Sarrafa Littafin', NULL, NULL),
(364, 'manage_library_member', 'Manage Library Member', 'লাইব্রেরী সদস্য ব্যবস্থাপনা ', 'Administrar miembro de la biblioteca', 'Ø¥Ø¯Ø§Ø±Ø© Ø¹Ø¶Ùˆ Ø§Ù„Ù…ÙƒØªØ¨Ø©', 'à¤²à¤¾à¤‡à¤¬à¥à¤°à¥‡à¤°à¥€ à¤¸à¤¦à¤¸à¥à¤¯ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù„Ø§Ø¦Ø¨Ø±ÛŒØ±ÛŒ Ø§Ø±Ø§Ú©ÛŒÙ† Ú©Ùˆ Ù…Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å›¾ä¹¦é¦†æˆå‘˜', 'å›³æ›¸é¤¨å“¡ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Membro da Biblioteca', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‡Ð»ÐµÐ½Ð¾Ð¼ Ð±Ð¸Ð±Ð»Ð¸Ð¾Ñ‚ÐµÐºÐ¸', 'GÃ©rer un membre de bibliothÃ¨que', 'ë„ì„œê´€ íšŒì› ê´€ë¦¬', 'Bibliotheksmitglied verwalten', 'Gestisci membro della biblioteca', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ªà¸¡à¸²à¸Šà¸´à¸à¸«à¹‰à¸­à¸‡à¸ªà¸¡à¸¸à¸”', 'A kÃ¶nyvtÃ¡ri tagok kezelÃ©se', 'Beheer bibliotheeklid', 'Curo library Member', 'Kelola Anggota Perpustakaan', 'KÃ¼tÃ¼phane Ãœyesini YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¼Î­Î»Î¿Ï…Ï‚ Î¼Î­Î»Î¿Ï…Ï‚ Î²Î¹Î²Î»Î¹Î¿Î¸Î®ÎºÎ·Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¹Ø¶Ùˆ Ú©ØªØ§Ø¨Ø®Ø§Ù†Ù‡', 'Urus Ahli Perpustakaan', 'à°²à±ˆà°¬à±à°°à°°à±€ à°¸à°­à±à°¯à±à°¡à°¿à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¨à¯‚à®²à®• à®‰à®±à¯à®ªà¯à®ªà®¿à®©à®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª²àª¾àª‡àª¬à«àª°à«‡àª°à«€ àª¸àª­à«àª¯ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj czÅ‚onkiem biblioteki', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ Ñ‡Ð»ÐµÐ½Ð¾Ð¼ Ð±Ñ–Ð±Ð»Ñ–Ð¾Ñ‚ÐµÐºÐ¸', 'à¨²à¨¾à¨‡à¨¬à©à¨°à©‡à¨°à©€ à¨®à©ˆà¨‚à¨¬à¨° à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i membrul bibliotecii', 'á€…á€¬á€€á€¼á€Šá€ºá€·á€á€­á€¯á€€á€ºá€¡á€–á€½á€²á€·á€á€„á€ºá€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n ÃŒkÃ wÃ© áº¸gbáº¹', 'Sarrafa Library Member', NULL, NULL),
(365, 'manage_issue_and_return', 'Manage Issue & Return', 'ইস্যু এবং ফেরত ব্যবস্থাপনা ', 'Administrar problema y devoluciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø´ÙƒÙ„Ø© ÙˆØ§Ù„Ø¹ÙˆØ¯Ø©', 'à¤…à¤‚à¤• à¤”à¤° à¤µà¤¾à¤ªà¤¸à¥€ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ù…Ø³Ø¦Ù„Û Ø§ÙˆØ± ÙˆØ§Ù¾Ø³ÛŒ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†é—®é¢˜å’Œé€€è´§', 'å•é¡Œã¨ãƒªã‚¿ãƒ¼ãƒ³ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Problema e Retorno', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð²Ñ‹Ð¿ÑƒÑÐºÐ¾Ð¼ Ð¸ Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‚Ð¾Ð¼', 'GÃ©rer le problÃ¨me et le retour', 'ë¬¸ì œ ë° ë°˜í™˜ ê´€ë¦¬', 'Problem und RÃ¼ckgabe verwalten', 'Gestisci problema e ritorno', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸›à¸±à¸à¸«à¸²à¹à¸¥à¸°à¸à¸²à¸£à¸ªà¹ˆà¸‡à¸„à¸·à¸™', 'A kibocsÃ¡tÃ¡s Ã©s a visszatÃ©rÃ©s kezelÃ©se', 'Beheer kwestie en terugkeer', 'Curo Part et Redi', 'Kelola Masalah dan Kembali', 'SayÄ± ve Ä°adeyi YÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ Î­ÎºÎ´Î¿ÏƒÎ·Ï‚ ÎºÎ±Î¹ Ï„Î·Ï‚ ÎµÏ€Î¹ÏƒÏ„ÏÎ¿Ï†Î®Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù…Ø³Ø¦Ù„Ù‡ Ùˆ Ø¨Ø§Ø²Ú¯Ø´Øª', 'Menguruskan Isu dan Pulangan', 'à°‡à°·à±à°¯à±‚ à°®à°°à°¿à°¯à± à°°à°¿à°Ÿà°°à±à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'Issue & Return à® à®¨à®¿à®°à¯à®µà®•à®¿', 'àª…àª‚àª• àª…àª¨à«‡ àª°à«€àªŸàª°à«àª¨ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj problemem i zwrotem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¿Ñ€Ð¾Ð±Ð»ÐµÐ¼Ð¾ÑŽ Ñ‚Ð° Ð¿Ð¾Ð²ÐµÑ€Ð½ÐµÐ½Ð½ÑÐ¼', 'à¨¸à¨®à©±à¨¸à¨¿à¨† à¨…à¨¤à©‡ à¨µà¨¾à¨ªà¨¸à©€ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i emisiunea È™i returnarea', 'á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€² Issue & á€•á€¼á€”á€ºá€žá€½á€¬á€¸', 'á¹¢akoso oro & Pada', 'Sarrafa Fitawa & Komawa', NULL, NULL),
(366, 'manage_vehicle', 'Manage Vehicle', 'যানবাহন ব্যবস্থাপনা ', 'Administrar vehÃ­culo', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø±ÙƒØ¨Ø§Øª', 'à¤µà¤¾à¤¹à¤¨ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ú¯Ø§Ú‘ÛŒ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è½¦è¾†', 'è»Šä¸¡ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar veÃ­culo', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ñ‹Ð¼ ÑÑ€ÐµÐ´ÑÑ‚Ð²Ð¾Ð¼', 'GÃ©rer le vÃ©hicule', 'ì°¨ëŸ‰ ê´€ë¦¬', 'Fahrzeug verwalten', 'Gestisci veicolo', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°', 'JÃ¡rmÅ± kezelÃ©se', 'Beheer voertuig', 'curo vehiculum', 'Kelola Kendaraan', 'AracÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ ÏŒÏ‡Î·Î¼Î±', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø®ÙˆØ¯Ø±Ùˆ', 'Menguruskan Kenderaan', 'à°µà°¾à°¹à°¨à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®¾à®•à®©à®¤à¯à®¤à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªµàª¾àª¹àª¨àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj pojazdem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ð¸Ð¼ Ð·Ð°ÑÐ¾Ð±Ð¾Ð¼', 'à¨µà¨¾à¨¹à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i vehiculul', 'á€šá€¬á€‰á€ºá€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso á»ká»', 'Sarrafa abin hawa', NULL, NULL),
(367, 'manage_route', 'Manage Route', 'রুট ব্যবস্থাপনা ', 'Administrar ruta', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø·Ø±ÙŠÙ‚', 'à¤°à¥‚à¤Ÿ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø±ÙˆÙ¹ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è·¯çº¿', 'ãƒ«ãƒ¼ãƒˆã‚’ç®¡ç†ã™ã‚‹', 'Gerencie a rota', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ð¾Ð¼', 'GÃ©rer la route', 'ê²½ë¡œ ê´€ë¦¬', 'Route verwalten', 'Gestisci percorso', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡', 'Ãštvonal kezelÃ©se', 'Beheer route', 'curo itineris', 'Kelola Rute', 'GÃ¼zergahÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î´Î¹Î±Î´ÏÎ¿Î¼Î®Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù…Ø³ÛŒØ±', 'Urus Laluan', 'à°®à°¾à°°à±à°—à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®´à®¿ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª°à«‚àªŸàª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj trasÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ð¾Ð¼', 'à¨°à©‚à¨Ÿ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i rutÄƒ', 'á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso Itá»sá»na', 'Sarrafa Hanya', NULL, NULL),
(368, 'manage_transport_member', 'Manage Transport Member', 'যাতায়াত সদস্য ব্যবস্থাপনা ', 'Administrar miembro de transporte', 'Ø¥Ø¯Ø§Ø±Ø© Ø¹Ø¶Ùˆ Ø§Ù„Ù†Ù‚Ù„', 'à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤¸à¤¦à¤¸à¥à¤¯ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ Ø§Ø±Ø§Ú©ÛŒÙ† Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†äº¤é€šä¼šå‘˜', 'ç§»é€ãƒ¡ãƒ³ãƒãƒ¼ã®ç®¡ç†', 'Gerenciar o Membro do Transporte', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð¾Ð¼', 'Manage Transport Member', 'ì „ì†¡ êµ¬ì„±ì› ê´€ë¦¬', 'Transportmitglied verwalten', 'Gestisci membro di trasporto', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ªà¸¡à¸²à¸Šà¸´à¸à¸à¸²à¸£à¸‚à¸™à¸ªà¹ˆà¸‡', 'A kÃ¶zlekedÃ©si kÃ©pviselÅ‘ kezelÃ©se', 'Beheer transportlid', 'Curo onerariam Member', 'Kelola Anggota Transport', 'TaÅŸÄ±yÄ±cÄ± Ãœyeyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Î¼Î­Î»Î¿Ï‚ Î¼ÎµÏ„Î±Ï†Î¿ÏÎ¬Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø­Ù…Ù„ Ùˆ Ù†Ù‚Ù„', 'Urus Ahli Pengangkutan', 'à°°à°µà°¾à°£à°¾ à°¸à°­à±à°¯à±à°¨à°¿à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà¯‹à®•à¯à®•à¯à®µà®°à®¤à¯à®¤à¯ à®‰à®±à¯à®ªà¯à®ªà®¿à®©à®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª°àª¿àªµàª¹àª¨ àª¸àª­à«àª¯àª¨à«‡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj czÅ‚onkiem transportu', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ñ‡Ð»ÐµÐ½Ð¾Ð¼ Ñ‚Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ñƒ', 'à¨Ÿà¨°à¨¾à¨‚à¨¸à¨ªà©‹à¨°à¨Ÿ à¨®à©ˆà¨‚à¨¬à¨° à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i transportul membru', 'á€•á€­á€¯á€·á€†á€±á€¬á€„á€ºá€›á€±á€¸á€¡á€–á€½á€²á€·á€á€„á€ºá€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n á»Œká»-ajo', 'Sarrafa Sanya Manyan', NULL, NULL),
(369, 'manage_hostel', 'Manage Hostel', 'ছাত্রাবাস ব্যবস্থাপনা ', 'Administrar Hostel', 'Ø¥Ø¯Ø§Ø±Ø© Ù†Ø²Ù„', 'à¤¹à¥‹à¤¸à¥à¤Ÿà¤² à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÛØ§Ù„ÛŒÙ†Úˆ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ—…é¦†', 'ãƒ›ã‚¹ãƒ†ãƒ«ã‚’ç®¡ç†ã™ã‚‹', 'Manage Hostel', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ…Ð¾ÑÑ‚ÐµÐ»Ð¾Ð¼', 'GÃ©rer lauberge', 'í˜¸ìŠ¤í…” ê´€ë¦¬', 'Hostel verwalten', 'Gestisci lostello', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Hostel', 'Kezelheti a Hostelet', 'Beheer Hostel', 'curo Hostel', 'Kelola Hostel', 'Pansiyon YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿Î½ Î¾ÎµÎ½ÏŽÎ½Î±', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø®ÙˆØ§Ø¨Ú¯Ø§Ù‡', 'Urus Asrama', 'à°¹à°¾à°¸à±à°Ÿà°²à±à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'Hostel à®¨à®¿à®°à¯à®µà®•à®¿', 'àª›àª¾àª¤à«àª°àª¾àª²àª¯àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj Hostelem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ…Ð¾ÑÑ‚ÐµÐ»', 'à¨¹à©‹à¨¸à¨Ÿà¨² à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i Pensiune', 'á€˜á€±á€¬á€ºá€’á€«á€†á€±á€¬á€„á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n ile ayagbe', 'Sarrafa dakunan kwanan dalibai', NULL, NULL),
(370, 'manage_room', 'Manage Room', 'কক্ষ ব্যবস্থাপনা ', 'Administrar habitaciÃ³n', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ØºØ±ÙØ©', 'à¤•à¤•à¥à¤· à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ú©Ù…Ø±Û’ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å®¤', 'éƒ¨å±‹ã‚’ç®¡ç†ã™ã‚‹', 'Manage Room', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÐºÐ¾Ð¼Ð½Ð°Ñ‚Ð¾Ð¹', 'GÃ©rer la piÃ¨ce', 'ë°© ê´€ë¦¬', 'Raum verwalten', 'Gestisci stanza', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¹‰à¸­à¸‡', 'A szoba kezelÃ©se', 'Beheer kamer', 'curo volutpat', 'Kelola Ruang', 'Oda YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î´Ï‰Î¼Î±Ï„Î¯Î¿Ï…', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§ØªØ§Ù‚', 'Urus Bilik', 'à°—à°¦à°¿à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®…à®±à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª°à«‚àª® àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj pokojem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ ÐºÑ–Ð¼Ð½Ð°Ñ‚Ð¾ÑŽ', 'à¨•à¨®à¨°à¨¾ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i camera', 'á€¡á€á€”á€ºá€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso yara', 'Sarrafa dakin', NULL, NULL),
(371, 'manage_hostel_member', 'Manage Hostel Member', 'ছাত্রাবাস সদস্য ব্যবস্থাপনা ', 'Manage Hostel Member', 'Ø¥Ø¯Ø§Ø±Ø© Ø¹Ø¶Ùˆ ÙÙŠ Ù‡ÙˆØ³ØªÙŠÙ„', 'à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤•à¤¾ à¤¸à¤¦à¤¸à¥à¤¯ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÛØ§Ù„ÛŒÙ†Úˆ Ú©Û’ Ø±Ú©Ù† Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ—…é¦†ä¼šå‘˜', 'ãƒ›ã‚¹ãƒ†ãƒ«ãƒ¡ãƒ³ãƒãƒ¼ã®ç®¡ç†', 'Manage Hostel Member', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ…Ð¾ÑÑ‚ÐµÐ»Ð¾Ð¼', 'GÃ©rer le membre dauberge', 'í˜¸ìŠ¤í…” íšŒì› ê´€ë¦¬', 'Hostel-Mitglied verwalten', 'Gestisci membro dellostello', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ªà¸¡à¸²à¸Šà¸´à¸ Hostel', 'KezelÅ‘tagok kezelÃ©se', 'Beheer Hostel Lid', 'Curo Member Hostel', 'Kelola anggota asrama', 'YÃ¶netici Hostel ÃœyeliÄŸi', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Î¼Î­Î»Î¿Ï‚ Ï„Î¿Ï… Î¾ÎµÎ½ÏŽÎ½Î±', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§Ø´ØªØ±Ø§Ú©ÛŒ', 'Menguruskan Ahli Asrama', 'à°¹à°¾à°¸à±à°Ÿà°²à± à°¸à°­à±à°¯à±à°¨à°¿à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'Hostel à®‰à®±à¯à®ªà¯à®ªà®¿à®©à®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª›àª¾àª¤à«àª°àª¾àª²àª¯ àª¸àª­à«àª¯àª¨à«‡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj Hostelem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ñ‡Ð»ÐµÐ½Ð¾Ð¼ Ð³ÑƒÑ€Ñ‚Ð¾Ð¼', 'à¨¹à©‹à¨¸à¨Ÿà¨² à¨®à©ˆà¨‚à¨¬à¨° à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i un membru al cÄƒminului', 'á€˜á€±á€¬á€ºá€’á€«á€†á€±á€¬á€„á€ºá€¡á€–á€½á€²á€·á€á€„á€ºá€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n á»má» áº¹gbáº¹ ile-ogun', 'Sarrafa Dakunan kwanan dalibai Member', NULL, NULL),
(372, 'manage_message', 'Manage Message', 'বার্তা ব্যবস্থাপনা ', 'Administrar mensaje', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø±Ø³Ø§Ù„Ø©', 'à¤¸à¤‚à¤¦à¥‡à¤¶ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù¾ÛŒØºØ§Ù… Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ¶ˆæ¯', 'ãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Mensagem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer le message', 'ë©”ì‹œì§€ ê´€ë¦¬', 'Nachricht verwalten', 'Gestisci il messaggio', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡', 'Ãœzenet kezelÃ©se', 'Beheer bericht', 'curo Nuntius', 'Kelola pesan', 'Ä°letiyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¼Î·Î½Ï…Î¼Î¬Ï„Ï‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù¾ÛŒØ§Ù…', 'Uruskan Mesej', 'à°¸à°‚à°¦à±‡à°¶à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà¯†à®¯à¯à®¤à®¿à®¯à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¸àª‚àª¦à«‡àª¶ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wiadomoÅ›ciÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½ÑÐ¼', 'à¨¸à©à¨¨à©‡à¨¹à¨¾ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i mesajul', 'á€€á€­á€¯ Message á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso Ifiraná¹£áº¹', 'Sarrafa SaÆ™o', NULL, NULL),
(373, 'manage_email', 'Manage Email', 'ইমেইল ব্যবস্থাপনা ', 'Administrar correo electrÃ³nico', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤ˆà¤®à¥‡à¤² à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§ÛŒ Ù…ÛŒÙ„ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†é‚®ä»¶', 'ãƒ¡ãƒ¼ãƒ«ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Email', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ð¾Ð¹', 'GÃ©rer lemail', 'ì´ë©”ì¼ ê´€ë¦¬', 'E-Mail verwalten', 'Gestisci email', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸­à¸µà¹€à¸¡à¸¥', 'E-mail kezelÃ©se', 'Beheer e-mail', 'curo Email', 'Kelola Email', 'E-postayÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î¼Î·Î½Ï…Î¼Î¬Ï„Ï‰Î½ Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï…', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§ÛŒÙ…ÛŒÙ„', 'Urus E-mel', 'à°‡à°®à±†à°¯à°¿à°²à±à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª‡àª®à«‡àª‡àª² àª¸àª‚àªšàª¾àª²àª¿àª¤ àª•àª°à«‹', 'ZarzÄ…dzaj pocztÄ… e-mail', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾ÑŽ Ð¿Ð¾ÑˆÑ‚Ð¾ÑŽ', 'à¨ˆà¨®à©‡à¨² à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i e-mailul', 'á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Imeeli', 'Sarrafa Imel', NULL, NULL),
(374, 'manage_sms', 'Manage SMS', 'এস এম এস ব্যবস্থাপনা ', 'Administrar SMS', 'Ø¥Ø¯Ø§Ø±Ø© Ø³Ù…Ø²', 'à¤à¤¸à¤à¤®à¤à¤¸ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†çŸ­ä¿¡', 'SMSã®ç®¡ç†', 'Gerenciar SMS', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ SMS', 'GÃ©rer les SMS', 'SMS ê´€ë¦¬', 'SMS verwalten', 'Gestisci SMS', 'à¸ˆà¸±à¸”à¸à¸²à¸£ SMS', 'SMS kezelÃ©se', 'Beheer SMS', 'curo SMS', 'Kelola SMS', 'SMSi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· SMS', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§Ø³ Ø§Ù… Ø§Ø³', 'Uruskan SMS', 'SMS à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'SMS à® à®¨à®¿à®°à¯à®µà®•à®¿', 'àªàª¸àªàª®àªàª¸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj SMS-em', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ SMS', 'SMS à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i SMS-ul', 'SMS á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso SMS', 'Sarrafa SMS', NULL, NULL),
(375, 'manage_notice', 'Manage Notice', 'নোটিশ ব্যবস্থাপনা ', 'Administrar aviso', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¥Ø´Ø¹Ø§Ø±', 'à¤¨à¥‹à¤Ÿà¤¿à¤¸ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù†ÙˆÙ¹Ø³ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†é€šçŸ¥', 'é€šçŸ¥ã®ç®¡ç†', 'Gerenciar Aviso', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑƒÐ²ÐµÐ´Ð¾Ð¼Ð»ÐµÐ½Ð¸ÐµÐ¼', 'GÃ©rer lavis', 'ê³µì§€ ê´€ë¦¬', 'Benachrichtigung verwalten', 'Gestisci avviso', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸›à¸£à¸°à¸à¸²à¸¨', 'Ã‰rtesÃ­tÃ©s kezelÃ©se', 'Beheer Kennisgeving', 'curo Notitia', 'Mengelola Pemberitahuan', 'Bildirimi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î·Î½ ÎµÎ¹Î´Î¿Ï€Î¿Î¯Î·ÏƒÎ·', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§Ø·Ù„Ø§Ø¹ÛŒÙ‡', 'Urus Notis', 'à°¨à±‹à°Ÿà±€à°¸à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®…à®±à®¿à®µà®¿à®ªà¯à®ªà¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¨à«‹àªŸàª¿àª¸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj zawiadomieniem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½ÑÐ¼', 'à¨¨à©‹à¨Ÿà¨¿à¨¸ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i notificarea', 'á€žá€á€­á€•á€¼á€¯á€•á€«á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Akiyesi', 'Sarrafa sanarwa', NULL, NULL),
(376, 'manage_news', 'Manage News', 'খবর ব্যবস্থাপনা ', 'Administrar noticias', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø£Ø®Ø¨Ø§Ø±', 'à¤¸à¤®à¤¾à¤šà¤¾à¤° à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø®Ø¨Ø±ÛŒÚº Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ–°é—»', 'ãƒ‹ãƒ¥ãƒ¼ã‚¹ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar NotÃ­cias', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð½Ð¾Ð²Ð¾ÑÑ‚ÑÐ¼Ð¸', 'GÃ©rer les actualitÃ©s', 'ë‰´ìŠ¤ ê´€ë¦¬', 'Nachrichten verwalten', 'Gestisci notizie', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸‚à¹ˆà¸²à¸§à¸ªà¸²à¸£', 'HÃ­rek kezelÃ©se', 'Beheer nieuws', 'curo News', 'Kelola Berita', 'Haberleri YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎµÎ¹Î´Î®ÏƒÎµÏ‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø§Ø®Ø¨Ø§Ø±', 'Urus Berita', 'à°µà°¾à°°à±à°¤à°²à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà¯†à®¯à¯à®¤à®¿à®•à®³à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¸àª®àª¾àªšàª¾àª° àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wiadomoÅ›ciami', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð½Ð¾Ð²Ð¸Ð½Ð°Ð¼Ð¸', 'à¨–à¨¼à¨¬à¨°à¨¾à¨‚ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i È™tirile', 'á€žá€á€„á€ºá€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n Iroyin', 'Sarrafa labarai', NULL, NULL),
(377, 'manage_holiday', 'Manage Holiday', 'ছুটি ব্যবস্থাপনা ', 'Administrar vacaciones', 'Ø¥Ø¯Ø§Ø±Ø© Ø¹Ø·Ù„Ø©', 'à¤›à¥à¤Ÿà¥à¤Ÿà¥€ à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ú†Ú¾Ù¹ÛŒÙˆÚº Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å‡æœŸ', 'ä¼‘æ—¥ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar fÃ©rias', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¾Ñ‚Ð´Ñ‹Ñ…Ð¾Ð¼', 'GÃ©rer les vacances', 'íœ´ì¼ ê´€ë¦¬', 'Feiertage verwalten', 'Gestisci le vacanze', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸§à¸±à¸™à¸«à¸¢à¸¸à¸”', 'NyaralÃ¡s kezelÃ©se', 'Vakantie beheren', 'curo Holiday', 'Kelola Liburan', 'Tatili YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î”Î¹Î±ÎºÎ¿Ï€ÏŽÎ½', 'Ù…Ø¯ÛŒØ±ÛŒØª ØªØ¹Ø·ÛŒÙ„Ø§Øª', 'Urus Percutian', 'à°¹à°¾à°²à°¿à°¡à±‡ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®¿à®Ÿà¯à®®à¯à®±à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¹à«‹àª²àª¿àª¡à«‡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wakacjami', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð²Ñ–Ð´Ð¿Ð¾Ñ‡Ð¸Ð½ÐºÐ¾Ð¼', 'à¨¹à¨¾à¨²à©€à¨† à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i sÄƒrbÄƒtorile', 'á€¡á€¬á€¸á€œá€•á€ºá€›á€€á€ºá€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso Isinmi', 'Sarrafa hutu', NULL, NULL),
(378, 'manage_event', 'Manage Event', 'ইভেন্ট ব্যবস্থাপনা ', 'Administrar evento', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø­Ø¯Ø«', 'à¤ˆà¤µà¥‡à¤‚à¤Ÿ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§ÛŒÙˆÙ†Ù¹ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†äº‹ä»¶', 'ã‚¤ãƒ™ãƒ³ãƒˆã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar Evento', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸ÐµÐ¼', 'GÃ©rer lÃ©vÃ©nement', 'ì´ë²¤íŠ¸ ê´€ë¦¬', 'Ereignis verwalten', 'Gestisci evento', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸´à¸ˆà¸à¸£à¸£à¸¡', 'EsemÃ©ny kezelÃ©se', 'Beheer evenement', 'curo Vicis', 'Kelola Acara', 'EtkinliÄŸi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î¿Ï… ÏƒÏ…Î¼Î²Î¬Î½Ï„Î¿Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø±ÙˆÛŒØ¯Ø§Ø¯', 'Uruskan Acara', 'à°ˆà°µà±†à°‚à°Ÿà±à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¨à®¿à®•à®´à¯à®µà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª‡àªµà«‡àª¨à«àªŸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wydarzeniem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¿Ð¾Ð´Ñ–Ñ”ÑŽ', 'à¨‡à¨µà©ˆà¨‚à¨Ÿ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i evenimentul', 'Event á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n Ti oyan', 'Sarrafa Ayyukan', NULL, NULL),
(379, 'manage_visitor', 'Manage Visitor', 'পরিদর্শক ব্যবস্থাপনা ', 'Administrar visitante', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø²Ø§Ø¦Ø±', 'à¤µà¤¿à¤œà¤¼à¤¿à¤Ÿà¤° à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÙˆØ²ÛŒÙ¹Ø± Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è®¿é—®è€…', 'è¨ªå•è€…ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar visitantes', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð¾ÑÐµÑ‚Ð¸Ñ‚ÐµÐ»ÐµÐ¼', 'GÃ©rer le visiteur', 'ë°©ë¬¸ìž ê´€ë¦¬', 'Besucher verwalten', 'Gestisci visitatore', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¹à¹‰à¹€à¸‚à¹‰à¸²à¸Šà¸¡', 'A lÃ¡togatÃ³ kezelÃ©se', 'Beheer bezoeker', 'curo Visitor', 'Kelola Pengunjung', 'ZiyaretÃ§iyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎµÏ€Î¹ÏƒÎºÎµÏ€Ï„ÏŽÎ½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¨Ø§Ø²Ø¯ÛŒØ¯ Ú©Ù†Ù†Ø¯Ù‡', 'Urus Pelawat', 'à°¸à°‚à°¦à°°à±à°¶à°•à±à°²à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®¾à®°à¯à®µà¯ˆà®¯à®¾à®³à®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª®à«àª²àª¾àª•àª¾àª¤à«€àª¨à«‡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj odwiedzajÄ…cym', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð²Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ñ‡ÐµÐ¼', 'à¨µà¨¿à¨œà¨¼à¨¿à¨Ÿà¨° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i vizitatorul', 'á€§á€Šá€ºá€·á€žá€Šá€ºá€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Alejo', 'Sarrafa baÆ™o', NULL, NULL),
(380, 'manage_fee_type', 'Manage Fee Type', 'ফি এর ধরণ ব্যবস্থাপনা ', 'Administrar tipo de tarifa', 'Ø¥Ø¯Ø§Ø±Ø© Ù†ÙˆØ¹ Ø§Ù„Ø±Ø³ÙˆÙ…', 'à¤¶à¥à¤²à¥à¤• à¤ªà¥à¤°à¤•à¤¾à¤° à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'ÙÛŒØ³ Ù‚Ø³Ù… Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è´¹ç”¨ç±»åž‹', 'æ‰‹æ•°æ–™ã‚¿ã‚¤ãƒ—ã®ç®¡ç†', 'Gerenciar Tipo de Taxa', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð¾Ð¼', 'GÃ©rer le type de frais', 'ìˆ˜ìˆ˜ë£Œ ìœ í˜• ê´€ë¦¬', 'GebÃ¼hrenart verwalten', 'Gestisci tipo di tariffa', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸›à¸£à¸°à¹€à¸ à¸—à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡', 'KezelÃ©si dÃ­j kezelÃ©se', 'Beheer Fee Type', 'Curo Save Type', 'Mengelola Jenis Biaya', 'Ãœcret Tipini YÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„ÏÏ€Î¿Ï… Î±Î¼Î¿Î¹Î²Î®Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù†ÙˆØ¹ Ù‡Ø²ÛŒÙ†Ù‡', 'Urus Jenis Bayaran', 'à°«à±€à°œà± à°°à°•à°‚ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®µà®•à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª«à«€ àªªà«àª°àª•àª¾àª°àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj typem opÅ‚aty', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ„Ð¾Ñ€Ð¼Ð°Ð¼Ð¸ Ð¾Ð¿Ð»Ð°Ñ‚Ð¸', 'à¨«à©€à¨¸ à¨¦à©€ à¨•à¨¿à¨¸à¨® à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i tipul de taxÄƒ', 'á€€á€¼á€±á€¸á€¡á€™á€»á€­á€¯á€¸á€¡á€…á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n iru owo sisan', 'Sarrafa Nauin Farashin', NULL, NULL),
(381, 'manage_invoice', 'Manage Invoice', 'ইনভয়েস ব্যবস্থাপনা ', 'Administrar Factura', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ÙØ§ØªÙˆØ±Ø©', 'à¤šà¤¾à¤²à¤¾à¤¨ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å‘ç¥¨', 'è«‹æ±‚æ›¸ã®ç®¡ç†', 'Gerenciar Fatura', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÑ‡ÐµÑ‚Ð¾Ð¼', 'GÃ©rer la facture', 'ì†¡ìž¥ ê´€ë¦¬', 'Rechnung verwalten', 'Gestisci la fattura', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰', 'SzÃ¡mla kezelÃ©se', 'Factuur beheren', 'curo cautionem', 'Kelola Faktur', 'Fatura YÃ¶netimi', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î¹Î¼Î¿Î»Î¿Î³Î¯Î¿Ï…', 'Ù…Ø¯ÛŒØ±ÛŒØª ÙØ§Ú©ØªÙˆØ±', 'Urus Invois', 'à°µà°¾à°¯à°¿à°¸à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®¿à®²à¯ˆà®ªà¯à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª‡àª¨à«àªµà«‰àª‡àª¸ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj fakturÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ñ€Ð°Ñ…ÑƒÐ½ÐºÐ¾Ð¼-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð¾ÑŽ', 'à¨šà¨²à¨¾à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i factura', 'á€„á€½á€±á€á€±á€¬á€„á€ºá€¸á€á€¶á€œá€½á€¾á€¬á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso IÅ¡iro', 'Sarrafa daftari', NULL, NULL),
(382, 'manage_due_invoice', 'Manage Due Invoice', 'মেয়াদোত্তীর্ণ ইনভয়েস ব্যবস্থাপনা ', 'Administrar la factura adeudada', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ÙØ§ØªÙˆØ±Ø© Ø§Ù„Ù…Ø³ØªØ­Ù‚Ø©', 'à¤¨à¤¿à¤¯à¤¤ à¤šà¤¾à¤²à¤¾à¤¨ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø°Ù…Û Ø¯Ø§Ø±ÛŒ Ø§Ù†ÙˆØ§Ø¦Ø³ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†åˆ°æœŸå‘ç¥¨', 'æ”¯æ‰•è«‹æ±‚ã®ç®¡ç†', '`Gerenciar a Fatura devida', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÑ‡ÐµÑ‚-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð¾Ð¹', 'GÃ©rer la facture due', 'ì†¡ìž¥ ì²˜ë¦¬', 'FÃ¤llige Rechnung verwalten', 'Gestire la dovuta fattura', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹ƒà¸šà¹à¸ˆà¹‰à¸‡à¸«à¸™à¸µà¹‰à¸—à¸µà¹ˆà¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”', 'BetÃ¶ltÃ©si szÃ¡mla kezelÃ©se', 'Beheer de verschuldigde factuur', 'Ob cautionem Curo', 'Kelola Tagihan Karena', 'Ã–denen Fatura YÃ¶netimi', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î¿Ï… Î¿Ï†ÎµÎ¹Î»ÏŒÎ¼ÎµÎ½Î¿Ï… Ï„Î¹Î¼Î¿Î»Î¿Î³Î¯Î¿Ï…', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø­Ø³Ø§Ø¨ ÙÙˆØ±ÛŒ', 'Urus Invois yang Dikehendaki', 'à°µà°¾à°¯à°¿à°¸à± à°µà°¾à°¯à°¿à°¸à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®•à®¾à®°à®£à®®à®¾à®• à®µà®¿à®²à¯ˆà®ªà¯à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª•àª¾àª°àª£à«‡ àª­àª°àª¤àª¿àª¯à«àª‚ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj niezobowiÄ…zujÄ…cÄ… fakturÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð½Ð°Ð»ÐµÐ¶Ð½Ð¸Ð¼ Ñ€Ð°Ñ…ÑƒÐ½ÐºÐ¾Ð¼-Ñ„Ð°ÐºÑ‚ÑƒÑ€Ð¾ÑŽ', 'à¨¬à¨¾à¨¹à¨°à©€ à¨šà¨²à¨¾à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i factura datoratÄƒ', 'á€€á€¼á€±á€¬á€„á€ºá€·á€„á€½á€±á€á€±á€¬á€„á€ºá€¸á€á€¶á€œá€½á€¾á€¬á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso IÅ¡iro Ibáº¹ráº¹', 'Sarrafa Æ˜ari Bayarwa', NULL, NULL),
(383, 'manage_expenditure_head', 'Manage Expenditure Head', 'খরচের হেড ব্যবস্থাপনা ', 'Administrar Jefe de Gastos', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù†ÙÙ‚Ø§Øª Ø±Ø¦ÙŠØ³', 'à¤µà¥à¤¯à¤¯ à¤ªà¥à¤°à¤®à¥à¤– à¤•à¤¾ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø§Ø®Ø±Ø§Ø¬Ø§Øª Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ”¯å‡ºä¸»ç®¡', 'æ”¯å‡ºé ­ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar CabeÃ§a de Despesas', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€ÑƒÐºÐ¾Ð²Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÐµÐ¼ Ñ€Ð°ÑÑ…Ð¾Ð´Ð¾Ð²', 'GÃ©rer le chef des dÃ©penses', 'ì§€ì¶œ í—¤ë“œ ê´€ë¦¬', 'Ausgabenleiter verwalten', 'Gestisci il capo delle spese', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¸±à¸§à¸«à¸™à¹‰à¸²à¸„à¹ˆà¸²à¹ƒà¸Šà¹‰à¸ˆà¹ˆà¸²à¸¢', 'KezelÃ©si kÃ¶ltsÃ©g kezelÃ©se', 'Beheer uitgavenhoofd', 'Curo capite sis crustum', 'Mengelola Kepala Biaya', 'Harcama KafasÄ±nÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎµÏ€Î¹ÎºÎµÏ†Î±Î»Î®Ï‚ Î´Î±Ï€Î±Î½ÏŽÎ½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø³Ø± Ù‡Ø²ÛŒÙ†Ù‡', 'Menguruskan Ketua Perbelanjaan', 'à°µà±à°¯à°¯ à°¹à±†à°¡à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà¯†à®²à®µà¯à®¤à¯ à®¤à®²à¯ˆà®ªà¯à®ªà¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª–àª°à«àªš àª¹à«‡àª¡àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj gÅ‚owÄ… wydatkÃ³w', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð²Ð¸Ñ‚Ñ€Ð°Ñ‚Ð°Ð¼Ð¸ Ð³Ð¾Ð»Ð¾Ð²Ð¸', 'à¨–à¨¼à¨°à¨šà©‡ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i È™eful cheltuielilor', 'á€¡á€žá€¯á€¶á€¸á€…á€›á€­á€á€ºá€Œá€¬á€”á€™á€¾á€°á€¸á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso ori oá¹£uwá»n', 'Sarrafa Shugaban KuÉ—i', NULL, NULL),
(384, 'manage_expenditure', 'Manage Expenditure', 'খরচ ব্যবস্থাপনা ', 'Administrar el gasto', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù†ÙÙ‚Ø§Øª', 'à¤µà¥à¤¯à¤¯ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§Ø®Ø±Ø§Ø¬Ø§Øª Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ”¯å‡º', 'æ”¯å‡ºã®ç®¡ç†', 'Gerenciar Despesas', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€Ð°ÑÑ…Ð¾Ð´Ð°Ð¼Ð¸', 'GÃ©rer les dÃ©penses', 'ì§€ì¶œ ê´€ë¦¬', 'Ausgaben verwalten', 'Gestisci le spese', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸„à¹ˆà¸²à¹ƒà¸Šà¹‰à¸ˆà¹ˆà¸²à¸¢', 'A kiadÃ¡sok kezelÃ©se', 'Uitgaven beheren', 'curo Custus', 'Mengelola Pengeluaran', 'HarcamalarÄ± YÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Ï‰Î½ Î´Î±Ï€Î±Î½ÏŽÎ½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù‡Ø²ÛŒÙ†Ù‡ Ù‡Ø§', 'Urus Perbelanjaan', 'à°µà±à°¯à°¯à°¾à°²à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà¯†à®²à®µà¯à®•à®³à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª–àª°à«àªš àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wydatkami', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð²Ð¸Ñ‚Ñ€Ð°Ñ‚Ð°Ð¼Ð¸', 'à¨–à¨°à¨š à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i cheltuielile', 'á€¡á€žá€¯á€¶á€¸á€…á€›á€­á€á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso owo sisan', 'Sarrafa KuÉ—i', NULL, NULL),
(385, 'manage_income_head', 'Manage Income Head', 'আয় হেড ব্যবস্থাপনা ', 'Administrar cabeza de ingresos', 'Ø¥Ø¯Ø§Ø±Ø© Ø±Ø£Ø³ Ø§Ù„Ø¯Ø®Ù„', 'à¤†à¤¯ à¤¹à¥‡à¤¡ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø§Ù†Ú©Ù… Ø³Ø± Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ”¶å…¥è´Ÿè´£äºº', 'æ‰€å¾—ç®¡ç†ã‚’ã™ã‚‹', 'Gerencie o Chefe de Renda', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð´Ð¾Ñ…Ð¾Ð´Ð¾Ð¼', 'GÃ©rer le revenu', 'ì†Œë“ í—¤ë“œ ê´€ë¦¬', 'Einkommenskopf verwalten', 'Gestisci il reddito', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¸±à¸§à¸«à¸™à¹‰à¸²à¸£à¸²à¸¢à¹„à¸”à¹‰', 'A jÃ¶vedelemfej kezelÃ©se', 'Beheer inkomstenstroom', 'Reditus in caput Curo', 'Mengelola Kepala Pendapatan', 'Gelir KafasÄ±nÄ± YÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎºÎµÏ†Î±Î»Î®Ï‚ ÎµÎ¹ÏƒÎ¿Î´Î®Î¼Î±Ï„Î¿Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø±Ø¢Ù…Ø¯ Ø³Ø±', 'Urus Ketua Pendapatan', 'à°†à°¦à°¾à°¯à°‚ à°¹à±†à°¡à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®°à¯à®®à®¾à®©à®¤à¯ à®¤à®²à¯ˆà®ªà¯à®ªà¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª‡àª¨à«àª•àª® àª¹à«‡àª¡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj gÅ‚owÄ… przychodÃ³w', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð³Ð¾Ð»Ð¾Ð²Ð¾ÑŽ Ð´Ð¾Ñ…Ð¾Ð´Ñ–Ð²', 'à¨‡à¨¨à¨•à¨® à¨¹à©ˆà¨¡ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i capul venitului', 'á€á€„á€ºá€„á€½á€±á€á€½á€”á€ºá€Œá€¬á€”á€™á€¾á€°á€¸á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso Ori-ori Owo Oya', 'Sarrafa Shugaban Asusun', NULL, NULL),
(386, 'manage_income', 'Manage Income', 'আয় ব্যবস্থাপনা ', 'Administrar ingresos', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¯Ø®Ù„', 'à¤†à¤¯ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø¢Ù…Ø¯Ù†ÛŒ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ”¶å…¥', 'åŽå…¥ã‚’ç®¡ç†ã™ã‚‹', 'Gerar Renda', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð´Ð¾Ñ…Ð¾Ð´Ð¾Ð¼', 'GÃ©rer le revenu', 'ì†Œë“ ê´€ë¦¬', 'Einkommen verwalten', 'Gestire il reddito', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸£à¸²à¸¢à¹„à¸”à¹‰', 'Kezelje a jÃ¶vedelmet', 'Beheer het inkomen', 'curo Reditus', 'Mengelola Penghasilan', 'Geliri YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· ÎµÏƒÏŒÎ´Ï‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø±Ø¢Ù…Ø¯', 'Urus Pendapatan', 'à°†à°¦à°¾à°¯à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®µà®°à¯à®®à®¾à®©à®¤à¯à®¤à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª†àªµàª•àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj dochodem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð´Ð¾Ñ…Ð¾Ð´Ð¾Ð¼', 'à¨†à¨®à¨¦à¨¨à©€ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i Venitul', 'á€á€„á€ºá€„á€½á€±á€á€½á€”á€ºá€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso awá»n Owo-ori', 'Sarrafa samun kudin shiga', NULL, NULL),
(387, 'responsibility', 'Responsibility', 'দায়িত্ব ', 'Responsabilidad', 'Ø§Ù„Ù…Ø³Ø¦ÙˆÙ„ÙŠØ©', 'à¤œà¤¼à¤¿à¤®à¥à¤®à¥‡à¤¦à¤¾à¤°à¥€', 'Ø°Ù…Û Ø¯Ø§Ø±ÛŒ', 'è´£ä»»', 'è²¬ä»»', 'Responsabilidade', 'ÐžÐ±ÑÐ·Ð°Ð½Ð½Ð¾ÑÑ‚ÑŒ', 'ResponsabilitÃ©', 'ì±…ìž„', 'Verantwortung', 'ResponsabilitÃ ', 'à¸„à¸§à¸²à¸¡à¸£à¸±à¸šà¸œà¸´à¸”à¸Šà¸­à¸š', 'FelelÅ‘ssÃ©g', 'Verantwoordelijkheid', 'responsibility', 'Tanggung jawab', 'sorumluluk', 'Î•Ï…Î¸ÏÎ½Î·', 'Ù…Ø³Ø¦ÙˆÙ„ÙŠØª', 'Tanggungjawab', 'à°¬à°¾à°§à±à°¯à°¤', 'à®ªà¯†à®¾à®±à¯à®ªà¯à®ªà¯', 'àªœàªµàª¾àª¬àª¦àª¾àª°à«€', 'OdpowiedzialnoÅ›Ä‡', 'Ð’Ñ–Ð´Ð¿Ð¾Ð²Ñ–Ð´Ð°Ð»ÑŒÐ½Ñ–ÑÑ‚ÑŒ', 'à¨œà¨¼à¨¿à©°à¨®à©‡à¨µà¨¾à¨°à©€', 'Responsabilitate', 'á€á€¬á€á€”á€º', 'OjÃºá¹£e', 'alhakin', NULL, NULL),
(388, 'new', 'New', 'নতুন ', 'Nuevo', 'Ø§Ù„Ø¬Ø¯ÙŠØ¯', 'à¤¨à¤¯à¤¾', 'Ù†Ø¦ÛŒ', 'æ–°', 'æ–°ã—ã„', 'Novo', 'Ð½Ð¾Ð²Ñ‹Ð¹', 'Nouveau', 'ìƒˆë¡œìš´', 'Neu', 'Nuovo', 'à¹ƒà¸«à¸¡à¹ˆ', 'Ãšj', 'nieuwe', 'novus', 'Baru', 'Yeni', 'ÎÎ­Î¿Ï‚', 'Ø¬Ø¯ÛŒØ¯', 'Baru', 'à°¨à±à°¯à±‚', 'à®ªà¯à®¤à®¿à®¯', 'àª¨àªµà«àª‚', 'Nowy', 'ÐÐ¾Ð²Ð¸Ð¹', 'à¨¨à¨µà¨¾à¨‚', 'Nou', 'á€”á€šá€°á€¸', 'Titun', 'sabon', NULL, NULL),
(389, 'private_messaging', 'Private Messaging', 'ব্যক্তিগত মেসেজিং ', 'MensajerÃ­a privada', 'Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ø®Ø§ØµØ©', 'à¤¨à¤¿à¤œà¥€ à¤®à¥‡à¤¸à¥‡à¤œà¤¿à¤‚à¤—', 'Ø°Ø§ØªÛŒ Ù¾ÛŒØºØ§Ù… Ø±Ø³Ø§Ù†ÛŒ', 'ç§äººæ¶ˆæ¯', 'ãƒ—ãƒ©ã‚¤ãƒ™ãƒ¼ãƒˆãƒ¡ãƒƒã‚»ãƒ¼ã‚¸ãƒ³ã‚°', 'Mensagens privadas', 'Ð§Ð°ÑÑ‚Ð½Ñ‹Ðµ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ñ', 'Messagerie privÃ©e', 'ë¹„ê³µê°œ ë©”ì‹œì§€', 'Private Nachrichten', 'Messaggistica privata', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸ªà¹ˆà¸§à¸™à¸•à¸±à¸§', 'PrivÃ¡t Ã¼zenetkÃ¼ldÃ©s', 'PrivÃ©berichten', 'Secretum Nuntius', 'Pesan Pribadi', 'Ã–zel MesajlaÅŸma', 'Î™Î´Î¹Ï‰Ï„Î¹ÎºÎ¬ Î¼Î·Î½ÏÎ¼Î±Ï„Î±', 'Ù¾ÛŒØ§Ù… Ø®ØµÙˆØµÛŒ', 'Mesej Persendirian', 'à°ªà±à°°à±ˆà°µà±‡à°Ÿà± à°¸à°‚à°¦à±‡à°¶à°‚', 'à®¤à®©à®¿à®¯à®¾à®°à¯ à®šà¯†à®¯à¯à®¤à®¿', 'àª–àª¾àª¨àª—à«€ àª®à«‡àª¸à«‡àªœàª¿àª‚àª—', 'Prywatne wiadomoÅ›ci', 'ÐŸÑ€Ð¸Ð²Ð°Ñ‚Ð½Ñ– Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½Ñ', 'à¨ªà©à¨°à¨¾à¨ˆà¨µà©‡à¨Ÿ à¨¸à©à¨¨à©‡à¨¹à¨¾', 'Mesageria privatÄƒ', 'á€•á€¯á€‚á€¹á€‚á€œá€­á€€ Messaging á€€á€­á€¯', 'Fifiraná¹£áº¹ Aladani', 'Private SaÆ™o', NULL, NULL),
(390, 'activate_now', 'Activate Now', 'কার্যকর করুন ', 'Activar ahora', 'Ù†Ø´Ø· Ø§Ù„Ø¢Ù†', 'à¤…à¤¬ à¤¸à¤•à¥à¤°à¤¿à¤¯ à¤•à¤°à¥‡à¤‚', 'Ø§Ø¨Ú¾ÛŒ Ú†Ø§Ù„Ùˆ Ú©Ø±ÛŒÚº', 'ç«‹å³æ¿€æ´»', 'ä»Šã™ãã‚¢ã‚¯ãƒ†ã‚£ãƒ–ã«ã™ã‚‹', 'Ative agora', 'ÐÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ', 'Activer maintenant', 'ì§€ê¸ˆ ì‹¤í–‰ ì‹œì¼œë¼', 'Jetzt aktivieren', 'Attivare ora', 'à¹€à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¹€à¸”à¸µà¹‹à¸¢à¸§à¸™à¸µà¹‰', 'AktivÃ¡ld most', 'Activeer nu', 'Nunc strenuus', 'Sekarang aktif', 'Åžimdi aktifleÅŸtir', 'Î•Î½ÎµÏÎ³Î¿Ï€Î¿Î¯Î·ÏƒÎ· Ï„ÏŽÏÎ±', 'Ù‡Ù… Ø§Ú©Ù†ÙˆÙ† ÙØ¹Ø§Ù„ Ú©Ù†', 'Aktifkan sekarang', 'à°‡à°ªà±à°ªà±à°¡à± à°¸à°•à±à°°à°¿à°¯à°‚ à°šà±‡à°¯à°‚à°¡à°¿', 'à®‡à®ªà¯à®ªà¯‹à®¤à¯ à®šà¯†à®¯à®²à¯à®ªà®Ÿà¯à®¤à¯à®¤à®µà¯à®®à¯', 'àª¹àª®àª£àª¾àª‚ àª¸àª•à«àª°àª¿àª¯ àª•àª°à«‹', 'Aktywuj teraz', 'ÐÐºÑ‚Ð¸Ð²ÑƒÐ²Ð°Ñ‚Ð¸ Ð·Ð°Ñ€Ð°Ð·', 'à¨¹à©à¨£ à¨¸à¨°à¨—à¨°à¨® à¨•à¨°à©‹', 'Activeaza acum', 'á€¡á€á€¯á€á€±á€¬á€·á€€á€­á€¯á€žá€€á€ºá€á€„á€º', 'Muu Nisisiyi á¹£iá¹£áº¹', 'Kunna Yanzu', NULL, NULL),
(391, 'in_activate_now', 'Inactivate Now', 'অকার্যকর করুন ', 'Inactivate ahora', 'ØªØ¹Ø·ÙŠÙ„ Ø§Ù„Ø¢Ù†', 'à¤…à¤¬ à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯ à¤•à¤°à¥‡à¤‚', 'Ø§Ø¨ ØºÛŒØ± ÙØ¹Ø§Ù„', 'ç«‹å³åœç”¨', 'ä»Šã™ãéžã‚¢ã‚¯ãƒ†ã‚£ãƒ–åŒ–ã™ã‚‹', 'Inactive agora', 'Ð˜Ð½Ð°ÐºÑ‚Ð¸Ð²Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ ÑÐµÐ¹Ñ‡Ð°Ñ', 'DÃ©sactiver maintenant', 'ì§€ê¸ˆ ë¹„í™œì„±í™”', 'Inaktivieren Sie jetzt', 'Inactivate Now', 'à¸¢à¸à¹€à¸¥à¸´à¸à¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¹€à¸”à¸µà¹‹à¸¢à¸§à¸™à¸µà¹‰', 'InaktivÃ¡lÃ¡s most', 'Inactiveren nu', 'Nunc inactivate', 'Nonaktifkan Sekarang', 'Åžimdi devre dÄ±ÅŸÄ± bÄ±rak', 'Î‘Ï€ÎµÎ½ÎµÏÎ³Î¿Ï€Î¿Î¹Î®ÏƒÏ„Îµ Ï„ÏŽÏÎ±', 'ØºÛŒØ±ÙØ¹Ø§Ù„ Ú©Ù†', 'Tidak aktif sekarang', 'à°‡à°ªà±à°ªà±à°¡à±‡ à°¨à°¿à°·à±à°•à±à°°à°¿à°¯à°‚ à°šà±‡à°¯à°‚à°¡à°¿', 'à®‡à®ªà¯à®ªà¯‹à®¤à¯ à®®à¯à®Ÿà®•à¯à®•à¯', 'àª¹àªµà«‡ àª¨àª¿àª·à«àª•à«àª°àª¿àª¯ àª•àª°à«‹', 'Dezaktywuj teraz', 'Ð†Ð½Ð°ÐºÑ‚Ð¸Ð²ÑƒÐ²Ð°Ñ‚Ð¸ Ð·Ð°Ñ€Ð°Ð·', 'à¨¹à©à¨£ à¨…à¨¯à©‹à¨— à¨•à¨°à©‹', 'DezactivaÈ›i acum', 'á€¡á€á€¯á€á€±á€¬á€· Inactivate', 'Inactivate Bayi', 'Æ˜asashe Yanzu', NULL, NULL),
(392, 'non_member', 'Non Member', 'অসদস্য ', 'No es miembro', 'ØºÙŠØ± Ø§Ù„Ø£Ø¹Ø¶Ø§Ø¡', 'à¤—à¥ˆà¤° - à¤¸à¤¦à¤¸à¥à¤¯', 'ØºÛŒØ± Ø±Ú©Ù†', 'éžä¼šå‘˜', 'éžä¼šå“¡', 'NÃ£o membro', 'ÐÐµ ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸Ðº', 'Non membre', 'ë¹„ ë©¤ë²„', 'Nicht-Mitglied', 'Non membro', 'à¹„à¸¡à¹ˆà¹ƒà¸Šà¹ˆà¸ªà¸¡à¸²à¸Šà¸´à¸', 'Nem tag', 'Geen lid', 'non Member', 'Bukan anggota', 'Ãœye olmayan', 'ÎœÎ· Î¼Î­Î»Î¿Ï‚', 'ØºÛŒØ±Ø¹Ø¶Ùˆ', 'Bukan Ahli', 'à°¸à°­à±à°¯à±à°¡à± à°•à°¾à°¦à±', 'à®‰à®±à¯à®ªà¯à®ªà®¿à®©à®°à¯ à®‡à®²à¯à®²à¯ˆ', 'àª¬àª¿àª¨ àª¸àª­à«àª¯', 'bez czÅ‚onka', 'ÐÐµ ÑƒÑ‡Ð°ÑÐ½Ð¸Ðº', 'à¨—à©ˆà¨° à¨®à©ˆà¨‚à¨¬à¨°', 'Nu e membru', 'non á€¡á€–á€½á€²á€·á€á€„á€º', 'Ko omo', 'Ba Memba', NULL, NULL),
(393, 'sender', 'Sender', 'প্রেরক ', 'Remitente', 'Ù…Ø±Ø³Ù„', 'à¤ªà¥à¤°à¥‡à¤·à¤•', 'Ù…Ø±Ø³Ù„', 'æ‰€æœ‰', 'é€ä¿¡è€…', 'Remetente', 'Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÐµÐ»ÑŒ', 'ExpÃ©diteur', 'ë³´ë‚´ëŠ” ì‚¬ëžŒ', 'Absender', 'Mittente', 'à¸œà¸¹à¹‰à¸ªà¹ˆà¸‡', 'FeladÃ³', 'Afzender', 'mittens', 'Pengirim', 'GÃ¶nderen', 'Î‘Ï€Î¿ÏƒÏ„Î¿Î»Î­Î±Ï‚', 'ÙØ±Ø³ØªÙ†Ø¯Ù‡', 'Pengirim', 'à°ªà°‚à°ªà°¿à°¨à°µà°¾à°°à±', 'à®…à®©à¯à®ªà¯à®ªà¯à®¨à®°à¯', 'àªªà«àª°à«‡àª·àª•', 'Nadawca', 'Ð’Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð½Ð¸Ðº', 'à¨­à©‡à¨œà¨£ à¨µà¨¾à¨²à¨¾', 'Expeditor', 'á€•á€±á€¸á€•á€­á€¯á€·á€žá€°', 'Oluá¹£áº¹', 'Mai aikawa', NULL, NULL),
(394, 'all', 'All', 'সকল ', 'Todas', 'Ø§Ù„ÙƒÙ„', 'à¤¸à¤¬', 'Ø³Ø¨', 'æ‰€æœ‰', 'ã™ã¹ã¦', 'Todos', 'Ð’ÑÐµ', 'Tout', 'ëª¨ë“ ', 'Alle', 'Tutti', 'à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Minden', 'Alle', 'Omnis', 'Semua', 'HerÅŸey', 'ÎŸÎ»Î±', 'Ù‡Ù…Ù‡', 'Semua', 'à°…à°¨à±à°¨à°¿', 'à®…à®©à¯ˆà®¤à¯à®¤à¯', 'àª¬àª§àª¾', 'Wszystko', 'Ð’ÑÐµ', 'à¨¸à¨­', 'Toate', 'á€¡á€¬á€¸á€œá€¯á€¶á€¸', 'Gbogbo', 'Duk', NULL, NULL),
(395, 'bank', 'Bank', 'ব্যাংক ', 'Banco', 'Ø¨Ù†Ùƒ', 'à¤¬à¥ˆà¤‚à¤•', 'Ø¨ÛŒÙ†Ú©', 'Bank', 'ãƒãƒ³ã‚¯', 'Banco', 'Ð‘Ð°Ð½ÐºÐ°', 'Banque', 'ì€í–‰', 'Bank', 'Banca', 'à¸˜à¸™à¸²à¸„à¸²à¸£', 'Bank', 'Bank', 'Bank', 'Bank', 'Banka', 'Î¤ÏÎ¬Ï€ÎµÎ¶Î±', 'Ø¨Ø§Ù†Ú©', 'Bank', 'à°¬à±à°¯à°¾à°‚à°•à±', 'à®µà®™à¯à®•à®¿', 'àª¬à«‡àª¨à«àª•', 'Bank', 'Ð‘Ð°Ð½Ðº', 'à¨¬à©ˆà¨‚à¨•', 'bancÄƒ', 'á€€á€™á€ºá€¸', 'ifowo pamo', 'Bank', NULL, NULL),
(396, 'first_name', 'First Name', 'প্রথম নাম ', 'Nombre de pila', 'Ø§Ù„Ø§Ø³Ù… Ø§Ù„Ø§ÙˆÙ„', 'à¤ªà¤¹à¤²à¤¾ à¤¨à¤¾à¤®', 'Ù¾ÛÙ„Ø§ Ù†Ø§Ù…', 'åå­—', 'ãƒ•ã‚¡ãƒ¼ã‚¹ãƒˆãƒãƒ¼ãƒ ', 'Primeiro nome', 'Ð˜Ð¼Ñ', 'PrÃ©nom', 'ì´ë¦„', 'Vorname', 'Nome di battesimo', 'à¸Šà¸·à¹ˆà¸­à¸ˆà¸£à¸´à¸‡', 'KeresztnÃ©v', 'Voornaam', 'Praenomen', 'Nama depan', 'Ä°sim', 'ÎŸÎ½Î¿Î¼Î±', 'Ù†Ø§Ù… Ú©ÙˆÚ†Ú©', 'Nama pertama', 'à°®à±Šà°¦à°Ÿà°¿ à°ªà±‡à°°à±', 'à®®à¯à®¤à®²à¯ à®ªà¯†à®¯à®°à¯', 'àªªà«àª°àª¥àª® àª¨àª¾àª®', 'ImiÄ™', 'Ð†Ð¼Ñ', 'à¨ªà¨¹à¨¿à¨²à¨¾ à¨¨à¨¾à¨‚', 'Nume', 'á€”á€¬á€™á€Šá€º', 'Oruká» kini', 'Sunan rana', NULL, NULL),
(397, 'expire', 'Expire', 'মেয়াদোত্তীর্ণ ', 'Expirar', 'ØªÙ†Ù‚Ø¶ÙŠ', 'à¤¸à¤®à¤¯ à¤¸à¥€à¤®à¤¾ à¤¸à¤®à¤¾à¤ªà¥à¤¤', 'Ù…ÛŒØ¹Ø§Ø¯ Ø®ØªÙ…', 'åˆ°æœŸ', 'å¤±åŠ¹', 'Expirar', 'Ð¸ÑÑ‚ÐµÐºÐ°Ñ‚ÑŒ', 'Expirer', 'ë‚´ì‰¬ë‹¤', 'Verfallen', 'scadere', 'à¸«à¸¡à¸”à¸­à¸²à¸¢à¸¸', 'LejÃ¡r', 'vervallen', 'exspirare', 'Berakhir', 'sona ermek', 'Î•ÎºÏ€Î½Î­Ï‰', 'Expire', 'Tamat tempoh', 'à°—à°¡à±à°µà±', 'à®•à®¾à®²à®¾à®µà®¤à®¿', 'àª¸àª®àª¾àªªà«àª¤àª¿', 'WygasaÄ‡', 'Ð—Ð°ÐºÑ–Ð½Ñ‡ÑƒÑ”Ñ‚ÑŒÑÑ', 'à¨®à¨¿à¨†à¨¦ à¨–à¨¤à¨®', 'Expira', 'á€‘á€½á€€á€ºá€žá€€á€ºá€›á€¾á€°', 'Ti pari', 'ya Æ™are', NULL, NULL),
(398, 'card', 'Card', 'কার্ড ', 'Tarjeta', 'Ø¨Ø·Ø§Ù‚Ø©', 'à¤•à¤¾à¤°à¥à¤¡', 'Ú©Ø§Ø±Úˆ', 'å¡', 'ã‚«ãƒ¼ãƒ‰', 'CartÃ£o', 'ÐšÐ°Ñ€Ñ‚Ð°', 'Carte', 'ì¹´ë“œ', 'Karte', 'Carta', 'à¸šà¸±à¸•à¸£', 'KÃ¡rtya', 'Kaart', 'Card', 'Kartu', 'kart', 'ÎšÎ¬ÏÏ„Î±', 'Ú©Ø§Ø±Øª', 'Kad', 'à°•à°¾à°°à±à°¡à±', 'à®…à®Ÿà¯à®Ÿà¯ˆ', 'àª•àª¾àª°à«àª¡', 'Karta', 'ÐšÐ°Ñ€Ñ‚Ð°', 'à¨•à¨¾à¨°à¨¡', 'Card', 'á€€á€’á€º', 'Kaadi', 'Katin', NULL, NULL),
(399, 'cvv', 'CVV', 'সি ডাব্লিউ ', 'CVV', 'CVV', 'à¤¸à¥€à¤µà¥€à¤µà¥€', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'CVV', 'àª¸à«€àªµà«€àªµà«€', 'CVV', 'CVV', 'à¨¸à©€à¨µà©€à¨µà©€', 'CVV', 'CVV', 'CVV', 'CVV', NULL, NULL),
(400, 'year', 'Year', 'বছর ', 'AÃ±o', 'Ø¹Ø§Ù…', 'à¤¸à¤¾à¤²', 'Ø³Ø§Ù„', 'å¹´', 'å¹´', 'Ano', 'Ð“Ð¾Ð´', 'An', 'ë…„', 'Jahr', 'Anno', 'à¸›à¸µ', 'Ã‰v', 'Jaar', 'annos singulos', 'Tahun', 'YÄ±l', 'Î•Ï„Î¿Ï‚', 'Ø³Ø§Ù„', 'Tahun', 'à°‡à°¯à°°à±', 'à®†à®£à¯à®Ÿà¯', 'àªµàª°à«àª·', 'Rok', 'Ð Ñ–Ðº', 'à¨¸à¨¾à¨²', 'An', 'á€á€¯á€”á€¾á€…á€º', 'Odun', 'Shekara', NULL, NULL),
(401, 'quick', 'Quick', 'তাড়াতাড়ি ', 'RÃ¡pido', 'Ø¨Ø³Ø±Ø¹Ø©', 'à¤¶à¥€à¤˜à¥à¤°', 'ÙÙˆØ±ÛŒ', 'å¿«', 'ã‚¯ã‚¤ãƒƒã‚¯', 'RÃ¡pido', 'Ð‘Ñ‹ÑÑ‚Ñ€Ð¾', 'Rapide', 'ë¹¨ë¦¬', 'Schnell', 'Presto', 'à¸£à¸§à¸”à¹€à¸£à¹‡à¸§', 'Gyors', 'Snel', 'Velox', 'Cepat', 'HÄ±zlÄ±', 'Î“ÏÎ®Î³Î¿ÏÎ±', 'Ø³Ø±ÛŒØ¹', 'Cepat', 'à°¶à±€à°˜à±à°°', 'à®µà®¿à®°à¯ˆà®µà¯', 'àªàª¡àªªà«€', 'Szybki', 'Ð¨Ð²Ð¸Ð´ÐºÐ¸Ð¹', 'à¨¤à©‡à¨œà¨¼', 'Rapid', 'á€œá€»á€„á€ºá€™á€¼á€”á€ºá€žá€±á€¬', 'Awá»n á»na', 'Da sauri', NULL, NULL),
(402, 'daily', 'Daily', 'দৈনিক ', 'Diario', 'Ø§Ù„ÙŠÙˆÙ…ÙŠ', 'à¤°à¥‹à¤œ', 'Ø±ÙˆØ²Ø§Ù†Û', 'æ—¥å¸¸', 'æ¯Žæ—¥', 'Diariamente', 'Ð•Ð¶ÐµÐ´Ð½ÐµÐ²Ð½Ð¾', 'du quotidien', 'ë§¤ì¼', 'TÃ¤glich', 'Quotidiano', 'à¸›à¸£à¸°à¸ˆà¸³à¸§à¸±à¸™', 'Napi', 'Dagelijks', 'Daily', 'Harian', 'GÃ¼nlÃ¼k', 'ÎšÎ±Î¸Î·Î¼ÎµÏÎ¹Î½Î¬', 'Ø±ÙˆØ²Ø§Ù†Ù‡', 'Harian', 'à°¡à±†à±–à°²à±€', 'à®Ÿà¯†à®¯à¯à®²à®¿', 'àª¦à«ˆàª¨àª¿àª•', 'Codziennie', 'Ð©Ð¾Ð´Ð½Ñ', 'à¨°à©‹à¨œà¨¼à¨¾à¨¨à¨¾', 'Zilnic', 'á€”á€±á€·á€…á€‰á€º', 'Lojoojumá»', 'kowace rana', NULL, NULL),
(403, 'monthly', 'Monthly', 'মাসিক ', 'Mensual', 'Ø´Ù‡Ø±ÙŠØ§', 'à¤®à¤¹à¥€à¤¨à¥‡ à¤•à¥‡', 'Ù…Ø§ÛØ§Ù†Û', 'æ¯æœˆä¸€æ¬¡', 'æ¯Žæœˆ', 'Por mÃªs', 'ÐµÐ¶ÐµÐ¼ÐµÑÑÑ‡Ð½Ð¾', 'Mensuel', 'ì›”ê°„ ê°„í–‰ë¬¼', 'Monatlich', 'Mensile', 'à¸£à¸²à¸¢à¹€à¸”à¸·à¸­à¸™', 'Havi', 'Maandelijks', 'Vestibulum', 'Bulanan', 'AylÄ±k', 'ÎœÎ·Î½Î¹Î±Î¯Î¿Ï‚', 'Ù…Ø§Ù‡Ø§Ù†Ù‡', 'Bulanan', 'à°®à°‚à°¤à±à°²à±€', 'à®®à®¾à®¤à®¾à®¨à¯à®¤à®¿à®°', 'àª®àª¾àª¸àª¿àª•', 'MiesiÄ™czny', 'Ð©Ð¾Ð¼Ñ–ÑÑÑ†Ñ', 'à¨®à¨¹à©€à¨¨à¨¾à¨µà¨¾à¨°', 'Lunar', 'á€œá€…á€‰á€º', 'Oá¹£ooá¹£u', 'Kwanan wata', NULL, NULL),
(404, 'group_by_data', 'Group by Data', 'গ্রুপ বাই ডাটা ', 'Agrupar por datos', 'Ø§Ù„Ù…Ø¬Ù…ÙˆØ¹Ø© Ø­Ø³Ø¨ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª', 'à¤¸à¤®à¥‚à¤¹ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¡à¥‡à¤Ÿà¤¾', 'ÚˆÛŒÙ¹Ø§ Ú©ÛŒ Ø·Ø±Ù Ø³Û’ Ú¯Ø±ÙˆÙ¾', 'æŒ‰æ•°æ®åˆ†ç»„', 'ãƒ‡ãƒ¼ã‚¿ã§ã‚°ãƒ«ãƒ¼ãƒ—åŒ–ã™ã‚‹', 'Agrupar por Dados', 'Ð“Ñ€ÑƒÐ¿Ð¿Ð° Ð¿Ð¾ Ð´Ð°Ð½Ð½Ñ‹Ð¼', 'Grouper par donnÃ©es', 'ë°ì´í„°ë¡œ ê·¸ë£¹í™”', 'Nach Daten gruppieren', 'Raggruppa per dati', 'à¸ˆà¸±à¸”à¸à¸¥à¸¸à¹ˆà¸¡à¸•à¸²à¸¡à¸‚à¹‰à¸­à¸¡à¸¹à¸¥', 'Csoport adatok szerint', 'Groeperen op gegevens', 'Ordina Data', 'Kelompokkan menurut Data', 'Veri Gruplama', 'ÎŸÎ¼Î±Î´Î¿Ï€Î¿Î¹Î®ÏƒÏ„Îµ Î¼Îµ Î”ÎµÎ´Î¿Î¼Î­Î½Î±', 'Ú¯Ø±ÙˆÙ‡ Ø¨Ø§ Ø¯Ø§Ø¯Ù‡ Ù‡Ø§', 'Kumpulan mengikut Data', 'à°¡à±‡à°Ÿà°¾ à°¦à±à°µà°¾à°°à°¾ à°¸à°®à±‚à°¹à°‚', 'à®¤à®°à®µà¯ à®®à¯‚à®²à®®à¯ à®•à¯à®´à¯', 'àª¡à«‡àªŸàª¾ àª¦à«àªµàª¾àª°àª¾ àª—à«àª°à«àªª', 'Grupuj wedÅ‚ug danych', 'Ð“Ñ€ÑƒÐ¿ÑƒÐ²Ð°Ñ‚Ð¸ Ð·Ð° Ð´Ð°Ð½Ð¸Ð¼Ð¸', 'à¨¡à©ˆà¨Ÿà¨¾ à¨¦à©à¨†à¨°à¨¾ à¨¸à¨®à©‚à¨¹', 'Grup dupÄƒ date', 'á€’á€±á€á€¬á€™á€»á€¬á€¸á€žá€–á€¼á€„á€ºá€· Group á€™á€¾', 'Agbegbe nipasáº¹ Data', 'Æ˜ungiya ta hanyar Data', NULL, NULL),
(405, 'resign_date', 'Resign Date', 'ইস্তফার তারিখ ', 'Fecha de renuncia', 'Ø§Ø³ØªÙ‚Ø§Ù„Ø© Ø§Ù„ØªØ§Ø±ÙŠØ®', 'à¤‡à¤¸à¥à¤¤à¥€à¤«à¤¾ à¤¤à¤¾à¤°à¥€à¤–', 'Ø§Ø³ØªØ¹ÙÛŒ Ú©ÛŒ ØªØ§Ø±ÛŒØ®', 'è¾žèŒæ—¥æœŸ', 'è¾žè·æ—¥', 'Data de rescisÃ£o', 'Ð”Ð°Ñ‚Ð° ÑÐ¿Ð¸ÑÐ°Ð½Ð¸Ñ', 'Date de dÃ©mission', 'ì‚¬ìž„ ë‚ ì§œ', 'Datum zurÃ¼ckgeben', 'Data di dimettersi', 'à¸¥à¸²à¸­à¸­à¸à¸§à¸±à¸™à¸—à¸µà¹ˆ', 'LemondÃ¡s dÃ¡tuma', 'Ontslagdatum', 'Date abdicare', 'Tanggal pengunduran diri', 'AyrÄ±lÄ±ÅŸ Tarihi', 'Î—Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î± Ï€Î±ÏÎ±Î¯Ï„Î·ÏƒÎ·Ï‚', 'ØªØ§Ø±ÛŒØ® Ø§Ø³ØªØ¹ÙØ§', 'Tarikh Mengundurkan', 'à°¤à±‡à°¦à±€à°¨à°¿ à°°à°¾à°œà±€à°¨à°¾à°®à°¾ à°šà±‡à°¯à°‚à°¡à°¿', 'à®¤à¯‡à®¤à®¿ à®µà®¿à®²à®•à¯à®•à¯', 'àª°àª¾àªœà«€àª¨àª¾àª®à«àª‚ àª¤àª¾àª°à«€àª–', 'Data rezygnacji', 'Ð”Ð°Ñ‚Ð° Ð²Ñ–Ð´ÑÑ‚Ð°Ð²ÐºÐ¸', 'à¨¦à¨¾à¨¨ à¨•à¨°à¨¨ à¨¦à©€ à¨®à¨¿à¨¤à©€', 'Data renunÈ›Äƒrii', 'á€”á€±á€·á€…á€½á€²á€”á€¯á€á€ºá€‘á€½á€€á€º', 'Fi á»já» siláº¹', 'murabus Kwanan wata', NULL, NULL),
(406, 'invalid_login', 'Invalid Email OR password.', 'অননুমোদিত লগিন ', 'Correo electrÃ³nico o contraseÃ±a invÃ¡lidos', 'Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø£Ùˆ ÙƒÙ„Ù…Ø© Ø§Ù„Ø³Ø± Ø®Ø§Ø·Ø¦Ø©.', 'à¤…à¤®à¤¾à¤¨à¥à¤¯ à¤ˆà¤®à¥‡à¤² à¤¯à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡à¥¤', 'ØºÙ„Ø· Ø§ÛŒ Ù…ÛŒÙ„ ÛŒØ§ Ù¾Ø§Ø³ ÙˆØ±Úˆ.', 'æ— æ•ˆçš„ç”µå­é‚®ä»¶æˆ–å¯†ç ã€‚', 'ç„¡åŠ¹ãªãƒ¡ãƒ¼ãƒ«ã‚¢ãƒ‰ãƒ¬ã‚¹ã¾ãŸã¯ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã€‚', 'Email ou senha invÃ¡lida.', 'ÐÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð¸Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ.', 'Email ou mot de passe invalide.', 'ì´ë©”ì¼ ë˜ëŠ” ë¹„ë°€ë²ˆí˜¸ê°€ ìž˜ëª»ë˜ì—ˆìŠµë‹ˆë‹¤.', 'UngÃ¼ltige E-Mail oder Passwort.', 'E-mail o password non validi.', 'à¸­à¸µà¹€à¸¡à¸¥à¸«à¸£à¸·à¸­à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¹„à¸¡à¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'Rossz email cÃ­m vagy jelszÃ³.', 'Ongeldig e-mailadres of wachtwoord.', 'Aliquam-mailem scribeant vel tessera fuit.', 'Email atau kata sandi tidak valid', 'GeÃ§ersiz e-posta veya ÅŸifre.', 'Î›Î¬Î¸Î¿Ï‚ Î´Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï… Î® ÎºÏ‰Î´Î¹ÎºÏŒÏ‚ Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚.', 'Ø§ÛŒÙ…ÛŒÙ„ ÛŒØ§ Ú©Ù„Ù…Ù‡ Ø¹Ø¨ÙˆØ± Ù†Ø§Ù…Ø¹ØªØ¨Ø± Ø§Ø³Øª', 'Email atau kata laluan tidak sah.', 'à°šà±†à°²à±à°²à°¨à°¿ à°‡à°®à±†à°¯à°¿à°²à± à°²à±‡à°¦à°¾ à°ªà°¾à°¸à±à°µà°°à±à°¡à±.', 'à®¤à®µà®±à®¾à®© à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®…à®²à¯à®²à®¤à¯ à®•à®Ÿà®µà¯à®šà¯à®šà¯†à®¾à®²à¯.', 'àªˆ àª®à«‡àªˆàª² àª…àª¥àªµàª¾ àªªàª¾àª¸àªµàª°à«àª¡ àª–à«‹àªŸà«‹ àª›à«‡.', 'NieprawidÅ‚owy e-mail lub hasÅ‚o.', 'ÐÐµÐ²Ñ–Ñ€Ð½Ð° Ð°Ð´Ñ€ÐµÑÐ° ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ñ— Ð¿Ð¾ÑˆÑ‚Ð¸ Ð°Ð±Ð¾ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ.', 'à¨—à¨²à¨¤ à¨ˆà¨®à©‡à¨² à¨œà¨¾à¨‚ à¨ªà¨¾à¨¸à¨µà¨°à¨¡.', 'E-mail nevalidÄƒ sau parola.', 'á€™á€¾á€¬á€¸á€”á€±á€žá€±á€¬á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€žá€­á€¯á€·á€™á€Ÿá€¯á€á€ºá€…á€€á€¬á€¸á€á€¾á€€á€ºá€€á€­á€¯á‹', 'Imeeli Invalid TABI á»rá»igbaniwá»le.', 'Imel mara inganci ko kalmar sirri.', NULL, NULL),
(407, 'remember_me', 'Remember Me', 'আমাকে স্মরণ রাখা হোক ', 'RecuÃ©rdame', 'ØªØ°ÙƒØ±Ù†Ù‰', 'à¤®à¥à¤à¥‡ à¤¯à¤¾à¤¦ à¤°à¤–à¤¨à¤¾', 'Ù…Ø¬Ú¾Û’ Ù¾ÛÚ†Ø§Ù†ØªÛ’ ÛÙˆ', 'è®°ä½æˆ‘', 'ç§ã‚’è¦šãˆã¦ã¾ã™ã‹', 'Lembre de mim', 'Ð—Ð°Ð¿Ð¾Ð¼Ð½Ð¸ Ð¼ÐµÐ½Ñ', 'Souviens-toi de moi', 'ë‚  ê¸°ì–µí•´', 'Erinnere dich an mich', 'Ricordati di me', 'à¸ˆà¸”à¸ˆà¸³à¸‰à¸±à¸™', 'EmlÃ©kezz rÃ¡m', 'Onthoud me', 'memento mihi', 'Ingat saya', 'Beni hatÄ±rla', 'Î˜Ï…Î¼Î®ÏƒÎ¿Ï… Î¼Îµ', 'Ù…Ø±Ø§ Ø¨Ù‡ Ø®Ø§Ø·Ø± Ø¨Ø³Ù¾Ø§Ø±', 'Ingat saya', 'à°¨à°¨à±à°¨à± à°—à±à°°à±à°¤à± à°ªà±†à°Ÿà±à°Ÿà±à°•à±‹', 'à®Žà®©à¯à®©à¯ˆ à®¨à®¿à®©à¯ˆà®µà®¿à®²à¯ à®•à¯Šà®³à¯à®³à¯à®™à¯à®•à®³à¯', 'àª®àª¨à«‡ àª¯àª¾àª¦', 'ZapamiÄ™taj mnie', 'ÐŸÐ°Ð¼ÑÑ‚Ð°Ð¹ Ð¼ÐµÐ½Ðµ', 'à¨®à©‡à¨°à©€ à¨¯à¨¾à¨¦ à¨¹à©ˆ', 'AminteÈ™te-È›i de mine', 'á€„á€«á€·á€€á€­á€¯á€žá€á€­á€›á€•á€«', 'Ranti mi', 'Ka tuna da ni', NULL, NULL),
(408, 'lost_your_password', 'Lost your password?', 'পাসওয়ার্ড হারিয়েছে ', 'Â¿Perdiste tu contraseÃ±a?', 'ÙÙ‚Ø¯Øª ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø§Ù„Ø®Ø§ØµØ© Ø¨ÙƒØŸ', 'à¤†à¤ªà¤•à¤¾ à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤–à¥‹ à¤—à¤¯à¤¾ à¤¹à¥ˆ?', 'Ø§Ù¾Ù†Ø§ Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø¨Ú¾ÙˆÙ„ Ú¯Ø¦Û’ØŸ', 'å¿˜è®°å¯†ç ï¼Ÿ', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã‚’å¿˜ã‚Œã¾ã—ãŸã‹ï¼Ÿ', 'Perdeu sua senha?', 'Ð—Ð°Ð±Ñ‹Ð»Ð¸ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'Mot de passe perdu?', 'ë¹„ë°€ë²ˆí˜¸ë¥¼ ìžŠì–´ ë²„ë ¸ìŠµë‹ˆê¹Œ?', 'Passwort vergessen?', 'Hai perso la password?', 'à¸¥à¸·à¸¡à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™?', 'Elvesztetted a jelszavadat?', 'Wachtwoord vergeten?', 'Perdidit vestri password?', 'Kehilangan password?', 'Åžifreni mi unuttun?', 'ÎˆÏ‡Î±ÏƒÎµÏ‚ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ ÏƒÎ¿Ï…?', 'Ø±Ù…Ø² Ø¹Ø¨ÙˆØ± Ø®ÙˆØ¯ Ø±Ø§ ÙØ±Ø§Ù…ÙˆØ´ Ú©Ø±Ø¯Ù‡ Ø§ÛŒØ¯ØŸ', 'Lupa kata kunci?', 'à°®à±€ à°ªà°¾à°¸à±à°µà°°à±à°¡à±à°¨à± à°•à±‹à°²à±à°ªà±‹à°¯à°¾à°°à°¾?', 'à®‰à®™à¯à®•à®³à¯ à®•à®Ÿà®µà¯à®šà¯à®šà¯Šà®²à¯à®²à¯ˆ à®‡à®´à®¨à¯à®¤à¯€à®°à¯à®•à®³à®¾?', 'àª¤àª®àª¾àª°à«‹ àªªàª¾àª¸àªµàª°à«àª¡ àª–à«‹àªµàª¾àªˆ àª—àª¯à«‹?', 'ZgubiÅ‚eÅ› hasÅ‚o?', 'Ð—Ð°Ð±ÑƒÐ»Ð¸ ÑÐ²Ñ–Ð¹ Ð¿Ð°Ñ€Ð¾Ð»ÑŒ?', 'à¨¤à©à¨¹à¨¾à¨¡à¨¾ à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨­à©à©±à¨² à¨—à¨ à¨¹à©‹?', 'Ti-ai pierdut parola?', 'á€žá€„á€ºá€·á€›á€²á€·á€…á€€á€¬á€¸á€á€¾á€€á€ºá€€á€­á€¯á€†á€¯á€¶á€¸á€›á€¾á€¯á€¶á€¸á€á€²á€·á€›?', 'Ti padanu á»rá» igbaniwá»le ráº¹?', 'Ka manta kalmarka ta sirri?', NULL, NULL),
(409, 'back_to_login', 'Back to Login', 'লগিনে ফিরে আসুন ', 'AtrÃ¡s para iniciar sesiÃ³n', 'Ø§Ù„Ø¹ÙˆØ¯Ø© Ø¥Ù„Ù‰ ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„', 'à¤²à¥‰à¤—à¤¿à¤¨ à¤ªà¤° à¤µà¤¾à¤ªà¤¸ à¤œà¤¾à¤à¤‚', 'Ù„Ø§Ú¯ Ø§Ù† Ù¾Ø± ÙˆØ§Ù¾Ø³', 'å›žåˆ°ç™»å…¥', 'ãƒ­ã‚°ã‚¤ãƒ³ã«æˆ»ã‚‹', 'Volte ao login', 'Ð’ÐµÑ€Ð½ÑƒÑ‚ÑŒÑÑ Ð½Ð° ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ñƒ Ð²Ñ…Ð¾Ð´Ð°', 'Retour connexion', 'ë¡œê·¸ì¸ìœ¼ë¡œ ëŒì•„ ê°€ê¸°', 'ZurÃ¼ck zur Anmeldung', 'Torna al login', 'à¸à¸¥à¸±à¸šà¹„à¸›à¸—à¸µà¹ˆà¸¥à¹‡à¸­à¸à¸­à¸´à¸™', 'Vissza a bejelentkezÃ©shez', 'Terug naar Inloggen', 'Back to Login', 'Kembali untuk masuk', 'GiriÅŸ sayfasÄ±na dÃ¶n', 'Î•Ï€Î¹ÏƒÏ„ÏÎ¿Ï†Î® ÏƒÏ„Î·Î½ ÏƒÎµÎ»Î¯Î´Î± ÎµÎ¹ÏƒÏŒÎ´Î¿Ï…', 'Ø¨Ø§Ø²Ú¯Ø´Øª Ø¨Ù‡ ØµÙØ­Ù‡ ÙˆØ±ÙˆØ¯', 'Kembali ke Log masuk', 'à°¤à°¿à°°à°¿à°—à°¿ à°²à°¾à°—à°¿à°¨à± à°…à°µà±à°µà°‚à°¡à°¿', 'à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®‰à®³à¯à®¨à¯à®´à¯ˆà®¯à®µà¯à®®à¯', 'àª²à«‰àª—àª¿àª¨ àªªàª° àªªàª¾àª›àª¾ àªœàª¾àª“', 'PowrÃ³t do logowania', 'ÐŸÐ¾Ð²ÐµÑ€Ð½ÑƒÑ‚Ð¸ÑÑ Ð´Ð¾ Login', 'à¨²à©Œà¨—à¨¿à¨¨ à¨¤à©‡ à¨µà¨¾à¨ªà¨¸', 'ÃŽnapoi la autentificare', 'á€”á€±á€¬á€€á€ºá€€á€»á€±á€¬á€á€„á€ºá€™á€Šá€ºá€™á€¾', 'Pada si Wiwá»le', 'Komawa zuwa shiga', NULL, NULL),
(410, 'instruction', 'Instruction', 'নির্দেশনা ', 'InstrucciÃ³n', 'ØªØ¹Ù„ÙŠÙ…Ø§Øª', 'à¤…à¤¨à¥à¤¦à¥‡à¤¶', 'ÛØ¯Ø§ÛŒØ§Øª', 'æŒ‡ä»¤', 'å‘½ä»¤', 'InstruÃ§Ã£o', 'Ð¸Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ð¸Ñ', 'Instruction', 'êµìˆ˜', 'Anweisung', 'istruzione', 'à¸„à¸³à¹à¸™à¸°à¸™à¸³', 'UtasÃ­tÃ¡s', 'Instructie', 'Disciplinam', 'Petunjuk', 'Talimat', 'Î•Î½Ï„Î¿Î»Î®', 'Ø¯Ø³ØªÙˆØ±Ø§Ù„Ø¹Ù…Ù„', 'Arahan', 'à°‡à°¨à±à°¸à±à°Ÿà±à°°à°•à±à°·à°¨à±', 'à®µà®´à®¿à®®à¯à®±à¯ˆ', 'àª¸à«‚àªšàª¨àª¾', 'Instrukcja', 'Ð†Ð½ÑÑ‚Ñ€ÑƒÐºÑ†Ñ–Ñ', 'à¨¨à¨¿à¨°à¨¦à©‡à¨¸à¨¼', 'instrucÈ›ie', 'á€Šá€½á€¾á€”á€ºá€€á€¼á€¬á€¸á€á€»á€€á€º', 'Ilana', 'Umarni', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(411, 'manage_user_instruction', 'Please add Teacher, Employee, Student and Guardian before manage users.', 'ব্যবহারকারীর নির্দেশনা ব্যবস্থাপনা ', 'Agregue Maestro, Empleado, Estudiante y Tutor antes de administrar usuarios.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ù…Ø¹Ù„Ù… ÙˆØ§Ù„Ù…ÙˆØ¸Ù ÙˆØ§Ù„Ø·Ø§Ù„Ø¨ ÙˆØ§Ù„Ø¬Ø§Ø±Ø¯ÙŠØ§Ù† Ù‚Ø¨Ù„ Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù…ÙŠÙ†.', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾à¤“à¤‚ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤¶à¤¿à¤•à¥à¤·à¤•, à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€, à¤›à¤¾à¤¤à¥à¤° à¤”à¤° à¤¸à¤‚à¤°à¤•à¥à¤·à¤• à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… ØµØ§Ø±ÙÛŒÙ† Ú©Ùˆ Ù…Ù†Ø¸Ù… Ú©Ø±Ù†Û’ Ø³Û’ Ù‚Ø¨Ù„ Ø§Ø³ØªØ§Ø¯ØŒ Ù…Ù„Ø§Ø²Ù…ØŒ Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ø§ÙˆØ± Ú¯Ø§Ø±ÚˆÛŒÙ† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'åœ¨ç®¡ç†ç”¨æˆ·ä¹‹å‰ï¼Œè¯·æ·»åŠ æ•™å¸ˆï¼Œå‘˜å·¥ï¼Œå­¦ç”Ÿå’Œç›‘æŠ¤äººã€‚', 'ãƒ¦ãƒ¼ã‚¶ãƒ¼ã‚’ç®¡ç†ã™ã‚‹å‰ã«æ•™å¸«ã€å¾“æ¥­å“¡ã€å­¦ç”Ÿã€ä¿è­·è€…ã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione Professor, Empregado, Estudante e GuardiÃ£o antes de administrar usuÃ¡rios.', 'ÐŸÐµÑ€ÐµÐ´ Ñ‚ÐµÐ¼, ÐºÐ°Ðº ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»ÑÐ¼Ð¸, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ð£Ñ‡Ð¸Ñ‚ÐµÐ»Ñ, Ð Ð°Ð±Ð¾Ñ‚Ð½Ð¸ÐºÐ°, Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚Ð° Ð¸ Ð¥Ñ€Ð°Ð½Ð¸Ñ‚ÐµÐ»Ñ.', 'Veuillez ajouter un enseignant, un employÃ©', 'ì‚¬ìš©ìžë¥¼ ê´€ë¦¬í•˜ê¸° ì „ì— êµì‚¬, ì§ì›, í•™ìƒ ë° ë³´í˜¸ìžë¥¼ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie Teacher, Employee, Student und Guardian hinzu, bevor Sie Benutzer verwalten.', 'Prima di gestire gli utenti, aggiungi Insegnante, Dipendente, Studente e Guardiano.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡ Teacher, Employee, Student à¹à¸¥à¸° Guardian à¸à¹ˆà¸­à¸™à¸—à¸µà¹ˆà¸ˆà¸°à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'KÃ©rjÃ¼k, add hozzÃ¡ tanÃ¡r, alkalmazott, tanulÃ³ Ã©s gondnok, mielÅ‘tt kezelnÃ© a felhasznÃ¡lÃ³kat.', 'Voeg docent, medewerker, student en bewaker toe voordat u gebruikers beheert.', 'Placere addere: Magister bone, Aliquam, antequam student et episcopum administrare users.', 'Tolong tambahkan Guru, Karyawan, Pelajar dan Wali sebelum mengelola pengguna.', 'KullanÄ±cÄ±larÄ± yÃ¶netmeden Ã¶nce lÃ¼tfen Ã–ÄŸretmen, Ã‡alÄ±ÅŸan, Ã–ÄŸrenci ve Koruyucuyu ekleyin.', 'Î ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Î´Î¬ÏƒÎºÎ±Î»Î¿, Ï…Ï€Î¬Î»Î»Î·Î»Î¿, Ï†Î¿Î¹Ï„Î·Ï„Î® ÎºÎ±Î¹ Ï†ÏÎ»Î±ÎºÎ± Ï€ÏÎ¹Î½ Î´Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿Ï…Ï‚ Ï‡ÏÎ®ÏƒÏ„ÎµÏ‚.', 'Ù‚Ø¨Ù„ Ø§Ø² Ù…Ø¯ÛŒØ±ÛŒØª Ú©Ø§Ø±Ø¨Ø±Ø§Ù†ØŒ Ù„Ø·ÙØ§ Ù…Ø¹Ù„Ù…ØŒ Ú©Ø§Ø±Ù…Ù†Ø¯ØŒ Ø¯Ø§Ù†Ø´Ø¬Ùˆ Ùˆ Ù†Ú¯Ù‡Ø¨Ø§Ù† Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah Guru, Pekerja, Pelajar dan Penjaga sebelum mengurus pengguna.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°µà°¿à°¨à°¿à°¯à±‹à°—à°¦à°¾à°°à±à°²à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°¡à°¾à°¨à°¿à°•à°¿ à°®à±à°‚à°¦à± Teacher, à°‰à°¦à±à°¯à±‹à°—à°¿, à°¸à±à°Ÿà±‚à°¡à±†à°‚à°Ÿà± à°®à°°à°¿à°¯à± à°—à°¾à°°à±à°¡à°¿à°¯à°¨à±à°²à°¨à± à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿.', 'à®ªà®¯à®©à®°à¯à®•à®³à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿à®•à¯à®• à®®à¯à®©à¯ à®†à®šà®¿à®°à®¿à®¯à®°à¯, à®ªà®£à®¿à®¯à®¾à®³à®°à¯, à®®à®¾à®£à®µà®°à¯ à®®à®±à¯à®±à¯à®®à¯ à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯ à®†à®•à®¿à®¯à¯‹à®°à¯ˆà®šà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾àª“ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹ àª¤à«‡ àªªàª¹à«‡àª²àª¾àª‚ àª¶àª¿àª•à«àª·àª•, àª•àª°à«àª®àªšàª¾àª°à«€, àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€ àª…àª¨à«‡ àªµàª¾àª²à«€àª“ àª‰àª®à«‡àª°à«‹.', 'Przed zarzÄ…dzaniem uÅ¼ytkownikami dodaj Nauczyciela, Pracownika, Studenta i Opiekuna.', 'Ð”Ð¾ Ñ‚Ð¾Ð³Ð¾, ÑÐº ÐºÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡Ð°Ð¼Ð¸, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ ', 'à¨‰à¨ªà¨­à©‹à¨—à¨¤à¨¾à¨µà¨¾à¨‚ à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à¨¨ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨…à¨§à¨¿à¨†à¨ªà¨•, à¨•à¨°à¨®à¨šà¨¾à¨°à©€, à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€ à¨…à¨¤à©‡ à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨ à¨œà©‹à©œà©‹', 'AdÄƒugaÈ›i profesor, angajat, student È™i gardian Ã®nainte de a administra utilizatorii.', 'á€¡á€›á€¾á€„á€ºá€˜á€¯á€›á€¬á€¸, á€‘á€™á€ºá€¸, á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€”á€¾á€„á€ºá€·á€‚á€«á€¸á€’á€®á€¸á€šá€”á€ºá€¸á€™á€á€­á€¯á€„á€ºá€™á€®á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€² add á€•á€±á€¸á€•á€«á‹', 'Já»wá» fi Oluká», Oluká»ni, Akeko ati Olutá»ju á¹£aju á¹¢akoso awá»n olumulo.', 'Da fatan a Æ™ara malami, maaikaci, dalibi da kuma tsare kafin gudanar da masu amfani.', NULL, NULL),
(413, 'add_employee_instruction', 'Please add Designation before add Employee.', 'কর্মকর্তার নির্দেশনা যোগ করুন ', 'Agregue DesignaciÃ³n antes de agregar Empleado.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© ØªØ¹ÙŠÙŠÙ† Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ù…ÙˆØ¸Ù.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚ à¤œà¥‹à¤¡à¤¼à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤ªà¤¦à¤¨à¤¾à¤® à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'Ù…Ù„Ø§Ø²Ù…Øª Ú©Ùˆ Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù‚Ø¨Ù„ Ø¹ÛØ¯Û Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'è¯·åœ¨æ·»åŠ å‘˜å·¥ä¹‹å‰æ·»åŠ æŒ‡å®šã€‚', 'å¾“æ¥­å“¡ã‚’è¿½åŠ ã™ã‚‹å‰ã«æŒ‡å®šã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione DesignaÃ§Ã£o antes de adicionar Empregado.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÐžÐ±Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ, Ð¿Ñ€ÐµÐ¶Ð´Ðµ Ñ‡ÐµÐ¼ Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¡Ð¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ°.', 'Veuillez ajouter la dÃ©signation avant dajouter un employÃ©.', 'Employeeë¥¼ ì¶”ê°€í•˜ê¸° ì „ì— ì§€ì •ì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie die Bezeichnung hinzu, bevor Sie Mitarbeiter hinzufÃ¼gen.', 'Aggiungi la designazione prima di aggiungere un dipendente.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡à¸à¸²à¸£à¸à¸³à¸«à¸™à¸”à¸à¹ˆà¸­à¸™à¹€à¸žà¸´à¹ˆà¸¡ Employee', 'KÃ©rjÃ¼k, add hozzÃ¡ a jelÃ¶lÃ©st, mielÅ‘tt hozzÃ¡adja a MunkavÃ¡llalÃ³t.', 'Voeg een aanwijzing toe voordat u werknemer toevoegt.', 'Aliquam VOCABULUM addere placet in conspectu add.', 'Harap tambahkan Penunjukan sebelum menambahkan Karyawan.', 'LÃ¼tfen Ã‡alÄ±ÅŸan eklemeden Ã¶nce AdlandÄ±rma ekleyin.', 'Î ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Î ÏÎ¿ÏƒÎ´Î¹Î¿ÏÎ¹ÏƒÎ¼ÏŒÏ‚ Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Î¥Ï€Î¬Î»Î»Î·Î»Î¿.', 'Ù‚Ø¨Ù„ Ø§Ø² Ø§ÙØ²ÙˆØ¯Ù† Ú©Ø§Ø±Ù…Ù†Ø¯ Ù„Ø·ÙØ§ Ù†Ø§Ù…Ú¯Ø°Ø§Ø±ÛŒ Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah Jawatan sebelum menambah Pekerja.', 'à°‰à°¦à±à°¯à±‹à°—à°¿à°¨à°¿ à°šà±‡à°°à±à°šà°¡à°¾à°¨à°¿à°•à°¿ à°®à±à°‚à°¦à± à°¹à±‹à°¦à°¾à°¨à± à°œà°¤ à°šà±‡à°¯à°‚à°¡à°¿.', 'à®ªà®£à®¿à®¯à®¾à®³à®°à¯ˆ à®šà¯‡à®°à¯à®•à¯à®• à®®à¯à®©à¯ à®¨à®¿à®¯à®®à®©à®¤à¯à®¤à¯ˆà®šà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'àªàª®à«àªªà«àª²à«‹àª¯à«€ àª‰àª®à«‡àª°à«‹ àªªàª¹à«‡àª²àª¾àª‚ àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª¹à«‹àª¦à«àª¦à«‹ àª‰àª®à«‡àª°à«‹.', 'Dodaj Oznaczenie przed dodaniem pracownika.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Ð¿Ð¾Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½Ñ, Ð¿ÐµÑ€Ñˆ Ð½Ñ–Ð¶ Ð´Ð¾Ð´Ð°Ñ‚Ð¸ ÑÐ¿Ñ–Ð²Ñ€Ð¾Ð±Ñ–Ñ‚Ð½Ð¸ÐºÐ°.', 'à¨•à¨°à¨®à¨šà¨¾à¨°à©€ à¨¨à©‚à©° à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à¨¨ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨ªà©à¨°à¨¸à¨¼à©°à¨¸à¨¾ à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à©‹', 'AdÄƒugaÈ›i o denumire Ã®nainte de a adÄƒuga un angajat.', 'á€žá€á€ºá€™á€¾á€á€ºá€•á€±á€¸á€‘á€¬á€¸á€á€¼á€„á€ºá€¸á€™á€á€­á€¯á€„á€ºá€™á€®á€”á€ºá€‘á€™á€ºá€¸á€•á€±á€«á€„á€ºá€¸á€‘á€Šá€·á€ºá€•á€±á€«á€„á€ºá€¸á€‘á€Šá€ºá€·á€•á€±á€¸á€•á€«á‹', 'Jowo fi Ami siláº¹ á¹£aaju ki o to fi AbÃ¡ni á¹£iá¹£áº¹.', 'Da fatan a kara Zabin kafin Æ™ara maaikaci.', NULL, NULL),
(414, 'add_class_instruction', 'Please add Teacher before add Class.', 'শ্রেণীর নির্দেশনা যোগ করুন ', 'Por favor agregue Maestro antes de agregar Clase.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¶Ø§ÙØ© Ù…Ø¹Ù„Ù… Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ø§Ù„ÙØµÙ„ Ø§Ù„Ø¯Ø±Ø§Ø³ÙŠ.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤•à¤•à¥à¤·à¤¾ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¶à¤¿à¤•à¥à¤·à¤• à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'Ú©Ù„Ø§Ø³ Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù‚Ø¨Ù„ Ù¹ÛŒÚ†Ø± Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'è¯·åœ¨æ·»åŠ è¯¾ç¨‹ä¹‹å‰æ·»åŠ æ•™å¸ˆ', 'ã‚¯ãƒ©ã‚¹ã‚’è¿½åŠ ã™ã‚‹å‰ã«æ•™å¸«ã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Adicione o professor antes de adicionar a classe.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ð£Ñ‡Ð¸Ñ‚ÐµÐ»Ñ Ð¿ÐµÑ€ÐµÐ´ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÐµÐ¼ ÐºÐ»Ð°ÑÑÐ°.', 'Veuillez ajouter un enseignant avant dajouter une classe.', 'ìˆ˜ì—…ì„ ì¶”ê°€í•˜ê¸° ì „ì— ì„ ìƒë‹˜ì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie den Lehrer hinzu, bevor Sie die Klasse hinzufÃ¼gen.', 'Aggiungi linsegnante prima di aggiungere la lezione.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡à¸„à¸£à¸¹à¸à¹ˆà¸­à¸™à¹€à¸žà¸´à¹ˆà¸¡à¸£à¸°à¸”à¸±à¸š', 'Add hozzÃ¡ a TanÃ¡rt, mielÅ‘tt hozzÃ¡adnÃ¡ az osztÃ¡lyt.', 'Voeg docent toe voordat u lesgroep toevoegt.', 'Magister add addere placet in conspectu Ps.', 'Tolong tambahkan Guru sebelum menambahkan Kelas.', 'SÄ±nÄ±fÄ± eklemeden Ã¶nce lÃ¼tfen Ã–ÄŸretmen ekleyin.', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Î”Î¬ÏƒÎºÎ±Î»Î¿ Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Ï„Î·Î½ ÎºÎ±Ï„Î·Î³Î¿ÏÎ¯Î±.', 'Ù‚Ø¨Ù„ Ø§Ø² Ø§ÙØ²ÙˆØ¯Ù† Ú©Ù„Ø§Ø³ØŒ Ù„Ø·ÙØ§ Ù…Ø¹Ù„Ù… Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambahkan Guru sebelum menambah Kelas.', 'à°•à±à°²à°¾à°¸à± à°¨à± à°œà±‹à°¡à°¿à°‚à°šà±à°Ÿà°•à± à°®à±à°‚à°¦à±à°—à°¾ à°Ÿà±€à°šà°°à±à°¨à°¿ à°šà±‡à°°à±à°šà±à°®à±.', 'à®µà®°à¯à®•à¯à®•à®®à¯ à®šà¯‡à®°à¯à®•à¯à®• à®®à¯à®©à¯ à®†à®šà®¿à®°à®¿à®¯à®°à¯ à®šà¯‡à®°à¯à®•à¯à®•.', 'àªàª¡ àª•à«àª²àª¾àª¸ àªªàª¹à«‡àª²àª¾àª‚ àª¶àª¿àª•à«àª·àª• àª‰àª®à«‡àª°à«‹.', 'Dodaj Nauczyciela przed dodaniem klasy.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Ð£Ñ‡Ð¸Ñ‚ÐµÐ»Ñ Ð¿ÐµÑ€ÐµÐ´ Ð´Ð¾Ð´Ð°Ð²Ð°Ð½Ð½ÑÐ¼ ÐšÐ»Ð°ÑÑƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨à¨¡ à¨•à¨²à¨¾à¨¸ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨…à¨§à¨¿à¨†à¨ªà¨• à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à©‹.', 'AdÄƒugaÈ›i profesor Ã®nainte de a adÄƒuga Clasa.', 'Class á€€á€­á€¯ add á€™á€á€­á€¯á€„á€ºá€™á€®á€†á€›á€¬ add á€•á€±á€¸á€•á€«á‹', 'Já»wá» fi Oluká» á¹£aaju ki o to fi Kilasi sii.', 'Da fatan a kara Malam kafin Æ™ara Class.', NULL, NULL),
(427, 'add_section_instruction', 'Please add Teacher & Class before add Section.', 'শাখার নির্দেশনা ব্যবস্থাপনা ', 'Por favor agregue Maestro y Clase antes de agregar la SecciÃ³n.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ù…Ø¹Ù„Ù… ÙˆÙØ¦Ø© Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ù‚Ø³Ù….', 'à¤…à¤¨à¥à¤­à¤¾à¤— à¤œà¥‹à¤¡à¤¼à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¶à¤¿à¤•à¥à¤·à¤• à¤”à¤° à¤•à¤•à¥à¤·à¤¾ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚', 'Ø³ÛŒÚ©Ø´Ù† Ù…ÛŒÚº Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù‚Ø¨Ù„ Ù¹ÛŒÚ†Ø± Ø§ÙˆØ± Ú©Ù„Ø§Ø³ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'åœ¨æ·»åŠ éƒ¨åˆ†ä¹‹å‰ï¼Œè¯·æ·»åŠ æ•™å¸ˆå’Œç­çº§ã€‚', 'ã‚»ã‚¯ã‚·ãƒ§ãƒ³ã‚’è¿½åŠ ã™ã‚‹å‰ã«æ•™å¸«ã¨ã‚¯ãƒ©ã‚¹ã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione professor e classe antes de adicionar seÃ§Ã£o.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Teacher & Class Ð¿ÐµÑ€ÐµÐ´ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÐµÐ¼ Ñ€Ð°Ð·Ð´ÐµÐ»Ð°.', 'Veuillez ajouter lenseignant et la classe avant dajouter la section.', 'ì„¹ì…˜ì„ ì¶”ê°€í•˜ê¸° ì „ì— êµì‚¬ì™€ ìˆ˜ì—…ì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie Lehrer und Klasse hinzu, bevor Sie Abschnitt hinzufÃ¼gen.', 'Aggiungi insegnante e classe prima di aggiungere la sezione.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡ Teacher & Class à¸à¹ˆà¸­à¸™à¹€à¸žà¸´à¹ˆà¸¡à¸ªà¹ˆà¸§à¸™', 'Add add Teacher & Class hozzÃ¡adÃ¡sa elÅ‘tt szekciÃ³.', 'Voeg docent en klas toe voordat u sectie toevoegt.', 'Genus: Magister add & sectionem addere velit ante.', 'Tolong tambahkan Guru & Kelas sebelum menambahkan Bagian.', 'BÃ¶lÃ¼m eklemeden Ã¶nce lÃ¼tfen Ã–ÄŸretmen ve SÄ±nÄ±f ekleyin.', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î¿ Î´Î¬ÏƒÎºÎ±Î»Î¿ ÎºÎ±Î¹ Ï„Î·Î½ Ï„Î¬Î¾Î· Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ ÎµÎ½ÏŒÏ„Î·Ï„Î±.', 'Ù„Ø·ÙØ§ Ù‚Ø¨Ù„ Ø§Ø² Ø§ÙØ²ÙˆØ¯Ù† Ø¨Ø®Ø´ Ù…Ø¹Ù„Ù… Ùˆ Ú©Ù„Ø§Ø³ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯', 'Sila tambah Guru & Kelas sebelum menambah Seksyen.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°µà°¿à°­à°¾à°—à°¾à°¨à±à°¨à°¿ à°œà±‹à°¡à°¿à°‚à°šà±‡ à°®à±à°‚à°¦à± Teacher & Class à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿.', 'à®ªà®¿à®°à®¿à®µà¯ à®šà¯‡à®°à¯à®µà®¤à®±à¯à®•à¯ à®®à¯à®©à¯à®©à®°à¯ à®†à®šà®¿à®°à®¿à®¯à®°à¯ à®®à®±à¯à®±à¯à®®à¯ à®µà®•à¯à®ªà¯à®ªà¯ˆà®šà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'àªµàª¿àª­àª¾àª— àª‰àª®à«‡àª°à«‹ àªªàª¹à«‡àª²àª¾àª‚ àª¶àª¿àª•à«àª·àª• àª…àª¨à«‡ àªµàª°à«àª— àª‰àª®à«‡àª°à«‹.', 'Dodaj nauczyciela i zajÄ™cia, zanim dodasz sekcjÄ™.', 'Ð”Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Ñ€Ð¾Ð·Ð´Ñ–Ð» ', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¸à©ˆà¨•à¨¸à¨¼à¨¨ à¨œà©‹à©œà¨¨ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨…à¨§à¨¿à¨†à¨ªà¨• à¨…à¨¤à©‡ à¨•à¨²à¨¾à¨¸ à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à©‹.', 'VÄƒ rugÄƒm sÄƒ adÄƒugaÈ›i un profesor È™i o clasÄƒ Ã®nainte de a adÄƒuga secÈ›iunea.', 'add á€•á€¯á€’á€ºá€™á€™á€á€­á€¯á€„á€ºá€™á€®á€¡á€›á€¾á€„á€ºá€˜á€¯á€›á€¬á€¸ & Class á€€á€­á€¯ add á€•á€±á€¸á€•á€«á‹', 'Já»wá» fi Oluká» ati Kilasi á¹£aaju ki o to fi Abala kan kun.', 'Da fatan a Æ™ara Malami da Class kafin Æ™ara Sashe.', NULL, NULL),
(428, 'class_add_alert', 'Please add Class', 'শ্রেণি যোগ এলার্ট ', 'Por favor agrega Clase', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© ÙØ¦Ø©', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤•à¤•à¥à¤·à¤¾ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ú©Ù„Ø§Ø³ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº', 'è¯·æ·»åŠ Class', 'ã‚¯ãƒ©ã‚¹ã‚’è¿½åŠ ã—ã¦ãã ã•ã„', 'Por favor, adicione Classe', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÐºÐ»Ð°ÑÑ', 'Veuillez ajouter une classe', 'ìˆ˜ì—…ì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie Klasse hinzu', 'Per favore aggiungi Class', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡ Class', 'Add osztÃ¡ly', 'Voeg alstublieft Klasse toe', 'Placere addere Paleonemertea Class', 'Tolong tambahkan Kelas', 'LÃ¼tfen SÄ±nÄ±f ekle', 'Î ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î·Î½ ÎºÎ»Î¬ÏƒÎ·', 'Ù„Ø·ÙØ§ Ú©Ù„Ø§Ø³ Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯', 'Sila tambah Kelas', 'à°¦à°¯à°šà±‡à°¸à°¿ à°•à±à°²à°¾à°¸à±à°¨à± à°œà±‹à°¡à°¿à°‚à°šà±', 'à®µà®•à¯à®ªà¯à®ªà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àªµàª°à«àª— àª‰àª®à«‡àª°à«‹', 'Dodaj klasÄ™', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ ÐºÐ»Ð°Ñ', 'à¨•à¨²à¨¾à¨¸ à¨¸à¨¼à¨¾à¨®à¨¿à¨² à¨•à¨°à©‹ à¨œà©€', 'AdÄƒugaÈ›i Clasa', 'Class á€€á€­á€¯ add á€•á€±á€¸á€•á€«', 'Já»wá» fi Kilasi sii', 'Da fatan a kara Class', NULL, NULL),
(429, 'add_student_instruction', 'Please add Guardian, Class & Section before add Student.', '', 'Agregue GuardiÃ¡n, Clase y SecciÃ³n antes de agregar Estudiante.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø¬Ø§Ø±Ø¯ÙŠØ§Ù†ØŒ ÙØ¦Ø© ÙˆÙ‚Ø³Ù… Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ø·Ø§Ù„Ø¨.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤›à¤¾à¤¤à¥à¤° à¤œà¥‹à¤¡à¤¼à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤…à¤­à¤¿à¤­à¤¾à¤µà¤•, à¤•à¤•à¥à¤·à¤¾ à¤”à¤° à¤…à¤¨à¥à¤­à¤¾à¤— à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Ø¦Û’ Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©Ùˆ Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù¾ÛÙ„Û’ Ú¯Ø§Ø±ÚˆÛŒÙ†ØŒ Ú©Ù„Ø§Ø³ Ø§ÙˆØ± Ø³ÛŒÚ©Ø´Ù† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'æ·»åŠ å­¦ç”Ÿå‰è¯·æ·»åŠ ç›‘æŠ¤äººï¼Œè¯¾ç¨‹å’Œç§‘å®¤ã€‚', 'ç”Ÿå¾’ã‚’è¿½åŠ ã™ã‚‹å‰ã«Guardianã€Classï¼†Sectionã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione Guardian, Class & Section antes de adicionar Student.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Guardian, Class & Section Ð¿ÐµÑ€ÐµÐ´ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÐµÐ¼ Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚Ð°.', 'Veuillez ajouter Guardian, Class & Section avant dajouter Student.', 'í•™ìƒì„ ì¶”ê°€í•˜ê¸° ì „ì— Guardian, Class & Sectionì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie Guardian, Class & Section hinzu, bevor Sie Student hinzufÃ¼gen.', 'Aggiungi Guardian, Class & Section prima di aggiungere Student.', 'à¸à¸£à¸¸à¸“à¸²à¹€à¸žà¸´à¹ˆà¸¡ Guardian, Class & Section à¸à¹ˆà¸­à¸™à¹€à¸žà¸´à¹ˆà¸¡ Student', 'Add hozzÃ¡ Guardian, Class & Section hozzÃ¡adÃ¡sa elÅ‘tt Add Student.', 'Voeg Guardian, Class & Section toe voordat je Student toevoegt.', 'Adde sis custos, adde prius Discipulus Class sect.', 'Tolong tambahkan Guardian, Class & Section sebelum menambahkan Student.', 'Ã–ÄŸrenci eklemeden Ã¶nce lÃ¼tfen Guardian, Class & Sectionu ekleyin.', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Guardian, Class & Section Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Student.', 'Ù‚Ø¨Ù„ Ø§Ø² Ø§ÙØ²ÙˆØ¯Ù† Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²ØŒ Ù„Ø·ÙØ§ GuardianØŒ Class & Section Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah Guardian, Kelas & Seksyen sebelum menambah Pelajar.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°µà°¿à°¦à±à°¯à°¾à°°à±à°¥à°¿à°¨à°¿ à°œà±‹à°¡à°¿à°‚à°šà±‡ à°®à±à°‚à°¦à± à°—à°¾à°°à±à°¡à°¿à°¯à°¨à±, à°•à±à°²à°¾à°¸à± & à°¸à±†à°•à±à°·à°¨à±à°¨à°¿ à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿.', 'à®®à®¾à®£à®µà®°à¯ à®šà¯‡à®°à¯à®•à¯à®•à¯à®®à¯ à®®à¯à®©à¯à®ªà¯ à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯, à®µà®•à¯à®ªà¯à®ªà¯ & à®ªà®•à¯à®¤à®¿ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'àª‰àª®à«‡àª°à«‹ àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€ àªªàª¹à«‡àª²àª¾àª‚ àª—àª¾àª°à«àª¡àª¿àª¯àª¨, àªµàª°à«àª— àª…àª¨à«‡ àªµàª¿àª­àª¾àª— àª‰àª®à«‡àª°à«‹.', 'Przed dodaniem ucznia dodaj opiekuna, klasÄ™ i sekcjÄ™.', 'ÐŸÐµÑ€Ñˆ Ð½Ñ–Ð¶ Ð´Ð¾Ð´Ð°Ñ‚Ð¸ Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Guardian, Class & Section.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€ à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à¨¨ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨, à¨•à¨²à¨¾à¨¸ à¨…à¨¤à©‡ à¨¸à©ˆà¨•à¨¸à¨¼à¨¨ à¨¸à¨¼à¨¾à¨®à¨¿à¨² à¨•à¨°à©‹.', 'VÄƒ rugÄƒm sÄƒ adÄƒugaÈ›i Guardian, Class & Section Ã®nainte de a adÄƒuga Student.', 'á€‚á€«á€¸á€’á€®á€¸á€šá€”á€ºá€¸, á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸ & á€•á€¯á€’á€ºá€™á€™á€á€­á€¯á€„á€ºá€™á€®á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸ add add á€•á€±á€¸á€•á€«á‹', 'Jowo fi Olutá»ju, Kilasi & Abala Å¡aaju ki o to fi á»má»-iwe kun.', 'Da fatan a kara Guardian, Class & Sashe kafin Æ™ara Student.', NULL, NULL),
(430, 'add_assignment_instruction', 'Please add Class & Subject before add Assignment.', 'à¦¯à§‹à¦—à¦¦à¦¾à¦¨ à¦¯à§‹à¦— à¦•à¦°à¦¾à¦° à¦†à¦—à§‡ à¦•à§à¦²à¦¾à¦¸ à¦à¦¬à¦‚ à¦¬à¦¿à¦·à¦¯à¦¼ à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'Agregue Clase y Asunto antes de agregar AsignaciÃ³n.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¶Ø§ÙØ© Ø§Ù„ÙØ¦Ø© ÙˆØ§Ù„Ù…ÙˆØ¶ÙˆØ¹ Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ø§Ù„ØªØ¹ÙŠÙŠÙ†.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤…à¤¸à¤¾à¤‡à¤¨à¤®à¥‡à¤‚à¤Ÿ à¤œà¥‹à¤¡à¤¼à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤•à¤•à¥à¤·à¤¾ à¤”à¤° à¤µà¤¿à¤·à¤¯ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'ØªÙÙˆÛŒØ¶ Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù¾ÛÙ„Û’ Ú©Ù„Ø§Ø³ Ø§ÙˆØ± Ù…Ø¶Ù…ÙˆÙ† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'è¯·åœ¨æ·»åŠ ä½œä¸šä¹‹å‰æ·»åŠ è¯¾ç¨‹å’Œä¸»é¢˜ã€‚', 'å‰²ã‚Šå½“ã¦ã‚’è¿½åŠ ã™ã‚‹å‰ã«ã‚¯ãƒ©ã‚¹ã¨ä»¶åã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione Class & Subject antes de adicionar AtribuiÃ§Ã£o.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Class & Subject Ð¿ÐµÑ€ÐµÐ´ Ð´Ð¾Ð±Ð°Ð²Ð»ÐµÐ½Ð¸ÐµÐ¼ Assignment.', 'Veuillez ajouter la classe et le sujet avant dajouter une affectation.', 'ê³¼ì œë¥¼ ì¶”ê°€í•˜ê¸° ì „ì— ìˆ˜ì—… ë° ê³¼ì œë¥¼ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie Klasse und Betreff hinzu, bevor Sie die Zuweisung hinzufÃ¼gen.', 'Per favore aggiungi Class & Subject prima di aggiungere Assignment.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡ Class & Subject à¸à¹ˆà¸­à¸™à¸—à¸µà¹ˆà¸ˆà¸°à¹€à¸žà¸´à¹ˆà¸¡ Assignment', 'Add hozzÃ¡ az OsztÃ¡lyt Ã©s a tÃ©mÃ¡t, mielÅ‘tt hozzÃ¡rendelheti.', 'Voeg Klasse en Onderwerp toe voordat u Toewijzing toevoegt.', 'Class placet, adde prius adsignatione add.', 'Harap tambahkan Kelas & Subjek sebelum menambahkan Penugasan.', 'Ã–dev eklemek iÃ§in lÃ¼tfen SÄ±nÄ±f ve Konuyu ekleyin.', 'Î ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î·Î½ ÎºÎ»Î¬ÏƒÎ· ÎºÎ±Î¹ Ï„Î¿ Î¸Î­Î¼Î± Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Ï„Î·Î½ ÎµÏ€Î¹Î»Î¿Î³Î® Î‘Î½Ï„Î¹ÏƒÏ„Î¿Î¯Ï‡Î¹ÏƒÎ·.', 'Ù„Ø·ÙØ§ Ú©Ù„Ø§Ø³ Ùˆ Ù…ÙˆØ¶ÙˆØ¹ Ø±Ø§ Ù‚Ø¨Ù„ Ø§Ø² Ø§Ø¶Ø§ÙÙ‡ Ø´Ø¯Ù† Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah Kelas & Subjek sebelum menambah Tugasan.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°…à°¸à±ˆà°¨à±à°®à±†à°‚à°Ÿà±à°¨à± à°œà±‹à°¡à°¿à°‚à°šà±‡ à°®à±à°‚à°¦à± à°•à±à°²à°¾à°¸à± & à°¸à°¬à±à°œà±†à°•à±à°Ÿà± à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿.', 'à®’à®¤à¯à®•à¯à®•à¯€à®Ÿà¯à®Ÿà¯ˆà®šà¯ à®šà¯‡à®°à¯à®•à¯à®•à¯à®®à¯ à®®à¯à®©à¯à®ªà¯ à®µà®•à¯à®ªà¯à®ªà¯ & à®¤à®²à¯ˆà®ªà¯à®ªà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª‰àª®à«‡àª°àª¤àª¾ àªªàª¹à«‡àª²àª¾ àª¸àª­àª¾ àª…àª¨à«‡ àªµàª¿àª·àª¯ àª‰àª®à«‡àª°à«‹.', 'Przed dodaniem zadania dodaj klasÄ™ i temat.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ ÐºÐ»Ð°Ñ Ñ– Ñ‚ÐµÐ¼Ñƒ, Ð¿ÐµÑ€Ñˆ Ð½Ñ–Ð¶ Ð´Ð¾Ð´Ð°Ñ‚Ð¸ Ð°ÑÐ¸Ð³Ð½ÑƒÐ²Ð°Ð½Ð½Ñ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨…à¨¸à¨¾à¨ˆà¨¨à¨®à©ˆà¨‚à¨Ÿ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨•à¨²à¨¾à¨¸ à¨…à¨¤à©‡ à¨µà¨¿à¨¸à¨¼à¨¾ à¨œà©‹à©œà©‹.', 'AdÄƒugaÈ›i ClasÄƒ È™i Subiect Ã®nainte de a adÄƒuga Atribuire.', 'add á€á€¬á€á€”á€ºá€™á€á€­á€¯á€„á€ºá€™á€®á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸ & á€¡á€€á€¼á€±á€¬á€„á€ºá€¸á€¡á€›á€¬ add á€•á€±á€¸á€•á€«á‹', 'Já»wá» fi Kilasi & Koko á¹£aaju ki o to fi iá¹£áº¹-á¹£iá¹£e kun.', 'Da fatan a kara Class & Rubutun kafin Æ™ara Matsayi.', NULL, NULL),
(431, 'add_exam_schedule_instruction', 'Please add Exam, Class & Subject before add Exm Schedule.', 'à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€ à¦¯à§‹à¦— à¦•à¦°à¦¾à¦° à¦†à¦—à§‡ à¦ªà¦°à§€à¦•à§à¦·à¦¾, à¦¶à§à¦°à§‡à¦£à§€ à¦“ à¦¬à¦¸à§à¦¤à§ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨à¥¤', 'Agregue Examen, Clase y Objeto antes de agregar el Horario del Examen.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¶Ø§ÙØ© Ø§Ù…ØªØ­Ø§Ù†ØŒ ÙØ¦Ø© & ÙƒØ§Ø¦Ù† Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†.', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾, à¤•à¤•à¥à¤·à¤¾ à¤”à¤° à¤µà¤¸à¥à¤¤à¥ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚', 'Ø§Ù…ØªØ­Ø§Ù† Ø´ÛŒÚˆÙˆÙ„ Ù…ÛŒÚº Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù¾ÛÙ„Û’ØŒ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ú©Ù„Ø§Ø³ Ø§ÙˆØ± Ø¢Ø¨Ø¬ÛŒÚ©Ù¹ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'åœ¨æ·»åŠ è€ƒè¯•æ—¶é—´è¡¨ä¹‹å‰ï¼Œè¯·æ·»åŠ è€ƒè¯•ï¼Œè¯¾ç¨‹å’Œå¯¹è±¡ã€‚', 'Exam Scheduleã‚’è¿½åŠ ã™ã‚‹å‰ã«ã€Examã€Classï¼†Objectã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione o Exame, Classe e Objeto antes de adicionar o Programa de Exames.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ð­ÐºÐ·Ð°Ð¼ÐµÐ½, ÐšÐ»Ð°ÑÑ Ð¸ ÐžÐ±ÑŠÐµÐºÑ‚, Ð¿Ñ€ÐµÐ¶Ð´Ðµ Ñ‡ÐµÐ¼ Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð“Ñ€Ð°Ñ„Ð¸Ðº ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°.', 'Veuillez ajouter lexamen, la classe et lobjet avant dajouter lhoraire dexamen.', 'Exam Scheduleì„ ì¶”ê°€í•˜ê¸° ì „ì— Exam, Class & Objectë¥¼ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie PrÃ¼fung, Klasse und Objekt hinzu, bevor Sie den PrÃ¼fungsplan hinzufÃ¼gen.', 'Aggiungi esame, classe e oggetto prima di aggiungere la pianificazione degli esami.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡à¸à¸²à¸£à¸ªà¸­à¸šà¸§à¸´à¸Šà¸² & à¸§à¸±à¸•à¸–à¸¸à¸à¹ˆà¸­à¸™à¹€à¸žà¸´à¹ˆà¸¡à¸•à¸²à¸£à¸²à¸‡à¸à¸²à¸£à¸ªà¸­à¸š', 'Add Exam, Class & Object hozzÃ¡adÃ¡sa az Exam Schedule hozzÃ¡adÃ¡sÃ¡hoz.', 'Voeg Examen, Klasse & Object toe voordat u het Exam Schedule toevoegt.', 'Placere addere IV, addere IV Class Object coram arcu.', 'Harap tambahkan Ujian, Kelas & Objek sebelum menambahkan Jadwal Ujian.', 'SÄ±nav Takvimi eklemeden Ã¶nce lÃ¼tfen SÄ±nav, SÄ±nÄ±f ve Nesneyi ekleyin.', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Î•Î¾ÎµÏ„Î¬ÏƒÎµÎ¹Ï‚, Î¤Î¬Î¾Î· & Î‘Î½Ï„Î¹ÎºÎµÎ¯Î¼ÎµÎ½Î¿ Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Ï„Î¿ Î ÏÏŒÎ³ÏÎ±Î¼Î¼Î± Î•Î¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½.', 'Ù‚Ø¨Ù„ Ø§Ø² Ø§ÙØ²ÙˆØ¯Ù† Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø¢Ø²Ù…ÙˆÙ†ØŒ Ù„Ø·ÙØ§ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ú©Ù„Ø§Ø³ Ùˆ Ø´ÛŒØ¡ Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah Peperiksaan, Kelas & Objek sebelum menambah Jadual Peperiksaan.', 'à°ªà°°à±€à°•à±à°·à°¾ à°·à±†à°¡à±à°¯à±‚à°²à±à°¨à± à°œà±‹à°¡à°¿à°‚à°šà±‡ à°®à±à°‚à°¦à± à°ªà°°à±€à°•à±à°·, à°•à±à°²à°¾à°¸à± & à°†à°¬à±à°œà±†à°•à±à°Ÿà± à°šà±‡à°°à±à°šà°‚à°¡à°¿.', 'à®¤à¯‡à®°à¯à®µà¯ à®…à®Ÿà¯à®Ÿà®µà®£à¯ˆ à®šà¯‡à®°à¯à®•à¯à®• à®®à¯à®©à¯ à®®à¯à®©à¯, à®µà®•à¯à®ªà¯à®ªà¯ & à®ªà¯Šà®°à¯à®³à¯ à®šà¯‡à®°à¯à®•à¯à®• à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯.', 'àªªàª°à«€àª•à«àª·àª¾ àª¶à«‡àª¡à«àª¯à«‚àª² àª‰àª®à«‡àª°à«‹ àªªàª¹à«‡àª²àª¾àª‚ àªªàª°à«€àª•à«àª·àª¾àª¨à«€, àªµàª°à«àª— àª…àª¨à«‡ àª‘àª¬à«àªœà«‡àª•à«àªŸ àª‰àª®à«‡àª°à«‹', 'Dodaj egzamin, klasÄ™ i obiekt przed dodaniem harmonogramu egzaminu.', 'Ð”Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Ñ–ÑÐ¿Ð¸Ñ‚, ÐºÐ»Ð°Ñ Ñ– Ð¾Ð±Ñ”ÐºÑ‚ Ð¿ÐµÑ€ÐµÐ´ Ð´Ð¾Ð´Ð°Ð²Ð°Ð½Ð½ÑÐ¼ Ð³Ñ€Ð°Ñ„Ñ–ÐºÐ° Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¸à¨¼à¨¡à¨¿à¨Šà¨² à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à¨¨ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨ªà©à¨°à©€à¨–à¨¿à¨†, à¨•à¨²à¨¾à¨¸ à¨…à¨¤à©‡ à¨”à¨¬à¨œà©ˆà¨•à¨Ÿ à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à©‹.', 'AdÄƒugaÈ›i examen, clasÄƒ È™i obiect Ã®nainte de a adÄƒuga programul de examinare.', 'á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸ & á€¡á€›á€¬á€á€á€¹á€‘á€¯á€™á€á€­á€¯á€„á€ºá€™á€®á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€á€»á€­á€”á€ºá€‡á€šá€¬á€¸á€€á€­á€¯á€‘á€Šá€·á€ºá€žá€½á€„á€ºá€¸, á€…á€¬á€™á€±á€¸á€•á€½á€² add á€•á€±á€¸á€•á€«á‹', 'Já»wá» fi káº¹hÃ¬n, Kilasi & Ohun á¹£aaju ki o to á¹£ayáº¹wo Akáº¹ká» Idaduro.', 'Da fatan a kara gwadawa, Class & Object kafin Æ™ara Nazarin Jarrabawa.', NULL, NULL),
(432, 'add_exam_suggestion_instruction', 'Please add Exam, Class & Subject before add Exam Suggestion.', 'à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦ªà¦°à¦¾à¦®à¦°à§à¦¶ à¦¯à§‹à¦— à¦•à¦°à¦¾à¦° à¦†à¦—à§‡ à¦ªà¦°à§€à¦•à§à¦·à¦¾, à¦¶à§à¦°à§‡à¦£à§€ à¦à¦¬à¦‚ à¦¬à¦¿à¦·à¦¯à¦¼ à¦¯à§à¦•à§à¦¤ à¦•à¦°à§à¦¨à¥¤', 'Agregue Examen, Clase y Asunto antes de agregar Exm Sugerencia.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ø§Ù…ØªØ­Ø§Ù†ØŒ ÙØ¦Ø© & Ø§Ù„Ù…ÙˆØ¶ÙˆØ¹ Ù‚Ø¨Ù„ Ø¥Ø¶Ø§ÙØ© Ø§Ù‚ØªØ±Ø§Ø­ Ø¥ÙƒØ³Ù….', 'Exm à¤¸à¥à¤à¤¾à¤µ à¤œà¥‹à¤¡à¤¼à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾, à¤•à¤•à¥à¤·à¤¾ à¤”à¤° à¤µà¤¿à¤·à¤¯ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'Ø§Û’ Ø§ÛŒÙ… Ø§ÛŒÙ… ØªØ¬Ø§ÙˆÛŒØ² Ú©Ùˆ Ø´Ø§Ù…Ù„ Ú©Ø±Ù†Û’ Ø³Û’ Ù‚Ø¨Ù„ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ú©Ù„Ø§Ø³ Ø§ÙˆØ± Ù…Ø¶Ù…ÙˆÙ† Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'åœ¨æ·»åŠ Exmå»ºè®®ä¹‹å‰ï¼Œè¯·æ·»åŠ è€ƒè¯•ï¼Œè¯¾ç¨‹å’Œä¸»é¢˜ã€‚', 'Exmææ¡ˆã‚’è¿½åŠ ã™ã‚‹å‰ã«ã€Examã€Classï¼†Subjectã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione Exame, Classe e Assunto antes de adicionar Exm SugestÃ£o.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ Ð­ÐºÐ·Ð°Ð¼ÐµÐ½, ÐšÐ»Ð°ÑÑ Ð¸ Ð¢ÐµÐ¼Ð°, Ð¿Ñ€ÐµÐ¶Ð´Ðµ Ñ‡ÐµÐ¼ Ð´Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð¿Ñ€ÐµÐ´Ð»Ð¾Ð¶ÐµÐ½Ð¸Ðµ Exm.', 'Sil vous plaÃ®t ajouter lexamen, la classe et le sujet avant dajouter la suggestion dExm.', 'Exm ì œì•ˆì„ ì¶”ê°€í•˜ê¸° ì „ì— Exam, Class & Subjectë¥¼ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie Exam, Class & Subject hinzu, bevor Sie Exm Suggestion hinzufÃ¼gen.', 'Aggiungi Exam, Class e Subject prima di aggiungere Exm Suggestion.', 'à¹‚à¸›à¸£à¸”à¹€à¸žà¸´à¹ˆà¸¡à¸à¸²à¸£à¸ªà¸­à¸šà¸§à¸´à¸Šà¸² & à¸«à¸±à¸§à¹€à¸£à¸·à¹ˆà¸­à¸‡à¸à¹ˆà¸­à¸™à¹€à¸žà¸´à¹ˆà¸¡à¸„à¸³à¹à¸™à¸°à¸™à¸³ Exm', 'Add Exam, Class & Subject hozzÃ¡adÃ¡sa az Exm Suggestion hozzÃ¡adÃ¡sÃ¡hoz', 'Voeg examen, klasse en onderwerp toe voordat u Exm-suggestie toevoegt.', 'IV addere placet, adde prius Class Exm Suggestion.', 'Harap tambahkan Ujian, Kelas & Subjek sebelum menambahkan Saran Muka.', 'Exm Ã–neri eklemeden Ã¶nce lÃ¼tfen SÄ±nav, SÄ±nÄ±f ve Konuyu ekleyin.', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÏ„Îµ Ï„Î·Î½ ÎµÎ¾Î­Ï„Î±ÏƒÎ·, Ï„Î·Î½ ÎºÎ»Î¬ÏƒÎ· ÎºÎ±Î¹ Ï„Î¿ Î¸Î­Î¼Î± Ï€ÏÎ¹Î½ Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Ï„Î·Î½ Ï€ÏÏŒÏ„Î±ÏƒÎ· Exm.', 'Ù„Ø·ÙØ§ Ù‚Ø¨Ù„ Ø§Ø² Ø§ÙØ²ÙˆØ¯Ù† Ù¾ÛŒØ´Ù†Ù‡Ø§Ø¯ ExmØŒ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ú©Ù„Ø§Ø³ Ùˆ Ù…ÙˆØ¶ÙˆØ¹ Ø±Ø§ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah Peperiksaan, Kelas & Subjek sebelum menambah Cadangan Exm.', 'à°¦à°¯à°šà±‡à°¸à°¿ Exm à°¸à±‚à°šà°¨à°¨à± à°œà±‹à°¡à°¿à°‚à°šà±‡ à°®à±à°‚à°¦à± à°ªà°°à±€à°•à±à°·, à°•à±à°²à°¾à°¸à± & à°µà°¿à°·à°¯à°‚ à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿.', 'Exm à®ªà®°à®¿à®¨à¯à®¤à¯à®°à¯ˆà®•à®³à¯ˆ à®šà¯‡à®°à¯à®•à¯à®•à¯à®®à¯ à®®à¯à®©à¯ à®¤à¯‡à®°à¯, à®µà®•à¯à®ªà¯à®ªà¯ & à®¤à®²à¯ˆà®ªà¯à®ªà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'Exm àª¸à«‚àªšàª¨ àª‰àª®à«‡àª°àª¤àª¾ àªªàª¹à«‡àª²àª¾àª‚ àªªàª°à«€àª•à«àª·àª¾, àªµàª°à«àª— àª…àª¨à«‡ àªµàª¿àª·àª¯ àª‰àª®à«‡àª°à«‹.', 'Dodaj Exam, Class & Subject, zanim dodasz Exm Suggestion.', 'Ð”Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Exm Suggestion, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Ñ–ÑÐ¿Ð¸Ñ‚, ÐºÐ»Ð°Ñ Ñ– Ñ‚ÐµÐ¼Ñƒ.', 'à¨à¨•à¨¸à¨® à¨¸à©à¨à¨¾à¨… à¨¸à¨¼à¨¾à¨®à¨² à¨•à¨°à¨¨ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨à¨—à¨œà¨¼à©à¨–, à¨•à¨²à¨¾à¨¸ à¨…à¨¤à©‡ à¨µà¨¿à¨¸à¨¼à¨¾ à¨œà©‹à©œà©‹.', 'VÄƒ rugÄƒm sÄƒ adÄƒugaÈ›i Exam, Class & Subject Ã®nainte de a adÄƒuga Sugestie Exm.', 'á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸ & á€¡á€€á€¼á€±á€¬á€„á€ºá€¸á€¡á€›á€¬á€™á€á€­á€¯á€„á€ºá€™á€® Exm á€¡á€€á€¼á€¶á€•á€¼á€¯á€á€»á€€á€ºá€‘á€•á€ºá€‘á€Šá€ºá€·, á€…á€¬á€™á€±á€¸á€•á€½á€² add á€•á€±á€¸á€•á€«á‹', 'Já»wá» fi káº¹hÃ¬n, Kilasi & Koko á¹£aaju ki o to fi Alaye pataki sii.', 'Da fatan a sake gwada jarrabawa, Class & Subject kafin Æ™ara Exm Shawarwari.', NULL, NULL),
(433, 'login_success', 'You have successfully logged In.', 'à¦†à¦ªà¦¨à¦¿ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦²à¦— à¦‡à¦¨ à¦•à¦°à§‡à¦›à§‡à¦¨.', 'Has iniciado sesiÃ³n correctamente.', 'Ù„Ù‚Ø¯ Ù‚Ù…Øª Ø¨ØªØ³Ø¬ÙŠÙ„ Ø§Ù„Ø¯Ø®ÙˆÙ„ Ø¨Ù†Ø¬Ø§Ø­.', 'à¤†à¤ª à¤¸à¤«à¤²à¤¤à¤¾ à¤ªà¥‚à¤°à¥à¤µà¤• à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤•à¤° à¤šà¥à¤•à¥‡ à¤¹à¥ˆà¤‚à¥¤', 'Ø¢Ù¾ Ù†Û’ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø§Ù† Ù…ÛŒÚº Ù„Ø§Ú¯ Ø§Ù† Ú©ÛŒØ§ ÛÛ’.', 'æ‚¨å·²æˆåŠŸç™»å½•ã€‚', 'ã‚ãªãŸã¯æ­£å¸¸ã«ãƒ­ã‚°ã‚¤ãƒ³ã—ã¾ã—ãŸã€‚', 'VocÃª fez login com sucesso.', 'Ð’Ñ‹ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð²Ð¾ÑˆÐ»Ð¸ Ð².', 'Vous avez rÃ©ussi Ã  vous connecter', 'ë¡œê·¸ì¸í–ˆìŠµë‹ˆë‹¤.', 'Sie haben sich erfolgreich angemeldet.', 'Hai effettuato il log in con successo.', 'à¸„à¸¸à¸“à¹€à¸‚à¹‰à¸²à¸ªà¸¹à¹ˆà¸£à¸°à¸šà¸šà¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§', 'Sikeresen bejelentkezett.', 'Je bent succesvol ingelogd.', 'Et tu bene initium.', 'Anda berhasil masuk', 'BaÅŸarÄ±yla giriÅŸ yaptÄ±nÄ±z.', 'ÎˆÏ‡ÎµÏ„Îµ ÎµÏ€Î¹Ï„Ï…Ï‡ÏŽÏ‚ ÏƒÏ…Î½Î´ÎµÎ¸ÎµÎ¯.', 'Ø´Ù…Ø§ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª ÙˆØ§Ø±Ø¯ Ø´Ø¯ÛŒØ¯.', 'Anda berjaya melog masuk.', 'à°®à±€à°°à± à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°²à°¾à°—à°¿à°¨à± à°šà±‡à°¸à°¾à°°à±.', 'à®¨à¯€à®™à¯à®•à®³à¯ à®‰à®³à¯à®¨à¯à®´à¯ˆà®¨à¯à®¤à¯à®³à¯à®³à¯€à®°à¯à®•à®³à¯.', 'àª¤àª®à«‡ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª²à«‹àª— àª‡àª¨ àª•àª°à«àª¯à«àª‚ àª›à«‡.', 'Logowanie zakoÅ„czone powodzeniem.', 'Ð’Ð¸ ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾ Ð²Ð²Ñ–Ð¹ÑˆÐ»Ð¸ Ð² ÑÐ¸ÑÑ‚ÐµÐ¼Ñƒ.', 'à¨¤à©à¨¸à©€à¨‚ à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨²à¨¾à¨— à¨‡à¨¨ à¨•à©€à¨¤à¨¾ à¨¹à©ˆ.', 'AÈ›i fost conectat (Äƒ) cu succes.', 'á€žá€„á€·á€ºá€¡á€œá€šá€ºáŒá€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬ logged á€•á€«á€•á€¼á€®á‹', 'O ti wá»le Wole ni ilá»siwaju.', 'An samu nasarar shiga cikin.', NULL, NULL),
(434, 'wrong_email', 'You have entered wrong email address', 'à¦†à¦ªà¦¨à¦¿ à¦­à§à¦² à¦‡à¦®à§‡à¦² à¦ à¦¿à¦•à¦¾à¦¨à¦¾ à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à§‡à¦›à§‡à¦¨', 'IngresÃ³ una direcciÃ³n de correo electrÃ³nico incorrecta', 'Ù„Ù‚Ø¯ Ø£Ø¯Ø®Ù„Øª Ø¹Ù†ÙˆØ§Ù† Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø®Ø§Ø·Ø¦Ø§', 'à¤†à¤ªà¤¨à¥‡ à¤—à¤²à¤¤ à¤ˆà¤®à¥‡à¤² à¤ªà¤¤à¤¾ à¤¦à¤°à¥à¤œ à¤•à¤¿à¤¯à¤¾ à¤¹à¥ˆ', 'Ø¢Ù¾ Ù†Û’ ØºÙ„Ø· Ø§ÛŒ Ù…ÛŒÙ„ Ù¾ØªÛ Ø¯Ø±Ø¬ Ú©ÛŒØ§ ÛÛ’', 'æ‚¨è¾“å…¥äº†é”™è¯¯çš„ç”µå­é‚®ä»¶åœ°å€', 'ã‚ãªãŸã¯é–“é•ã£ãŸé›»å­ãƒ¡ãƒ¼ãƒ«ã‚¢ãƒ‰ãƒ¬ã‚¹ã‚’å…¥åŠ›ã—ã¾ã—ãŸ', 'VocÃª digitou um endereÃ§o de e-mail incorreto', 'Ð’Ñ‹ Ð²Ð²ÐµÐ»Ð¸ Ð½ÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹', 'Vous avez entrÃ© une adresse e-mail incorrecte', 'ìž˜ëª»ëœ ì´ë©”ì¼ ì£¼ì†Œë¥¼ ìž…ë ¥í–ˆìŠµë‹ˆë‹¤.', 'Sie haben eine falsche E-Mail-Adresse eingegeben', 'Hai inserito un indirizzo email errato', 'à¸„à¸¸à¸“à¸›à¹‰à¸­à¸™à¸—à¸µà¹ˆà¸­à¸¢à¸¹à¹ˆà¸­à¸µà¹€à¸¡à¸¥à¸œà¸´à¸”', 'Rossz e-mail cÃ­met adott meg', 'U hebt een verkeerd e-mailadres ingevoerd', 'Et ingressi sunt nefas inscriptio', 'Anda telah memasukkan alamat email salah', 'YanlÄ±ÅŸ e-posta adresini girdiniz', 'ÎˆÏ‡ÎµÏ„Îµ ÎµÎ¹ÏƒÎ¬Î³ÎµÎ¹ Î»Î¬Î¸Î¿Ï‚ Î´Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï…', 'Ø´Ù…Ø§ Ø¢Ø¯Ø±Ø³ Ø§ÛŒÙ…ÛŒÙ„ Ø§Ø´ØªØ¨Ø§Ù‡ ÙˆØ§Ø±Ø¯ Ú©Ø±Ø¯Ù‡ Ø§ÛŒØ¯', 'Anda telah memasukkan alamat e-mel yang salah', 'à°®à±€à°°à± à°¤à°ªà±à°ªà± à°‡à°®à±†à°¯à°¿à°²à± à°šà°¿à°°à±à°¨à°¾à°®à°¾à°¨à± à°¨à°®à±‹à°¦à± à°šà±‡à°¸à°¾à°°à±', 'à®¨à¯€à®™à¯à®•à®³à¯ à®¤à®µà®±à®¾à®© à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®®à¯à®•à®µà®°à®¿à®¯à¯ˆ à®‰à®³à¯à®³à®¿à®Ÿà¯à®Ÿà¯à®³à¯à®³à¯€à®°à¯à®•à®³à¯', 'àª¤àª®à«‡ àª–à«‹àªŸà«‹ àª‡àª®à«‡àª‡àª² àª¸àª°àª¨àª¾àª®à«àª‚ àª¦àª¾àª–àª² àª•àª°à«àª¯à«àª‚ àª›à«‡', 'PodaÅ‚eÅ› zÅ‚y adres e-mail', 'Ð’Ð¸ Ð²Ð²ÐµÐ»Ð¸ Ð½ÐµÐ¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñƒ Ð°Ð´Ñ€ÐµÑÑƒ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ñ— Ð¿Ð¾ÑˆÑ‚Ð¸', 'à¨¤à©à¨¸à©€à¨‚ à¨—à¨²à¨¤ à¨ˆà¨®à©‡à¨² à¨ªà¨¤à¨¾ à¨¦à¨¾à¨–à¨² à¨•à©€à¨¤à¨¾ à¨¹à©ˆ', 'AÈ›i introdus o adresÄƒ de e-mail greÈ™itÄƒ', 'á€žá€„á€»á€žá€Šá€»á€™á€¾á€¬á€¸á€šá€½á€„á€ºá€¸á€á€²á€·á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€œá€­á€•á€ºá€…á€¬á€‘á€²á€žá€­á€¯á€·á€á€„á€ºá€á€²á€·á€€á€¼', 'O ti táº¹ adiráº¹si imeeli ti ko tá»', 'An shigar da adireshin email bata daidai', NULL, NULL),
(435, 'reset_email_success', 'Password reset email sent successfully. Please check you email', ' 62/5000 à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦°à¦¿à¦¸à§‡à¦Ÿ à¦‡à¦®à§‡à¦² à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à¦¯à¦¼à§‡à¦›à§‡ à¦†à¦ªà¦¨à¦¿ à¦‡à¦®à§‡à¦² à¦šà§‡à¦• à¦•à¦°à§à¦¨', 'El correo electrÃ³nico de restablecimiento de contraseÃ±a se enviÃ³ correctamente. Por favor revisa tu correo electrÃ³nico', 'ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù„Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± Ø¨Ù†Ø¬Ø§Ø­. ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ø¨Ø±ÙŠØ¯Ùƒ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤°à¥€à¤¸à¥‡à¤Ÿ à¤ˆà¤®à¥‡à¤² à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤­à¥‡à¤œà¤¾ à¤—à¤¯à¤¾ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤†à¤ªà¤•à¥‹ à¤ˆà¤®à¥‡à¤² à¤œà¤¾à¤‚à¤šà¥‡à¤‚', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ Ø¯ÙˆØ¨Ø§Ø±Û ØªØ±ØªÛŒØ¨ Ø§ÛŒ Ù…ÛŒÙ„ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø¨Ú¾ÛŒØ¬Ø§ Ú¯ÛŒØ§. Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø¢Ù¾ Ú©Ùˆ Ø§ÛŒ Ù…ÛŒÙ„ Ú†ÛŒÚ© Ú©Ø±ÛŒÚº', 'å¯†ç é‡ç½®é‚®ä»¶å‘é€æˆåŠŸã€‚ è¯·æ£€æŸ¥ä½ çš„ç”µå­é‚®ä»¶', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ãƒªã‚»ãƒƒãƒˆãƒ¡ãƒ¼ãƒ«ãŒæ­£å¸¸ã«é€ä¿¡ã•ã‚Œã¾ã—ãŸã€‚ ãƒ¡ãƒ¼ãƒ«ã‚’ãƒã‚§ãƒƒã‚¯ã—ã¦ãã ã•ã„', 'Senha de redefiniÃ§Ã£o de senha enviada com sucesso. Verifique seu e-mail', 'Ð¡Ð±Ñ€Ð¾Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ Ð±Ñ‹Ð» ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½ÑƒÑŽ Ð¿Ð¾Ñ‡Ñ‚Ñƒ', 'Password reset email sent successfully. Please check you email', 'ë¹„ë°€ë²ˆí˜¸ ìž¬ì„¤ì • ì´ë©”ì¼ì´ ì„±ê³µì ìœ¼ë¡œ ì „ì†¡ë˜ì—ˆìŠµë‹ˆë‹¤. ì´ë©”ì¼ì„ í™•ì¸í•˜ì‹­ì‹œì˜¤.', 'E-Mail zur ZurÃ¼cksetzung des Kennworts erfolgreich gesendet Bitte Ã¼berprÃ¼fen Sie Ihre E-Mail', 'Email di reimpostazione della password inviata correttamente. Per favore controlla la tua email', 'à¸­à¸µà¹€à¸¡à¸¥à¸£à¸µà¹€à¸‹à¹‡à¸•à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸–à¸¹à¸à¸ªà¹ˆà¸‡à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§ à¹‚à¸›à¸£à¸”à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¸­à¸µà¹€à¸¡à¸¥à¸‚à¸­à¸‡à¸„à¸¸à¸“', 'A jelszÃ³-visszaÃ¡llÃ­tÃ³ e-mail sikeresen elkÃ¼ldve. KÃ©rjÃ¼k, ellenÅ‘rizze az e-mailt', 'Wachtwoord reset e-mail succesvol verzonden. Controleer je e-mail', 'Reddere email password misit tincidunt. Placere reprehendo vestri email', 'Email reset password berhasil dikirim Silahkan cek email anda', 'Åžifre sÄ±fÄ±rlama e-postasÄ± baÅŸarÄ±yla gÃ¶nderildi. LÃ¼tfen e-postayÄ± kontrol et', 'Î¤Î¿ Î¼Î®Î½Ï…Î¼Î± Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï… ÎµÏ€Î±Î½Î±Ï†Î¿ÏÎ¬Ï‚ ÎºÏ‰Î´Î¹ÎºÎ¿Ï Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚ Î­Î³Î¹Î½Îµ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î± Î Î±ÏÎ±ÎºÎ±Î»ÏŽ ÎµÎ»Î­Î³Î¾Ï„Îµ Ï„Î¿ email ÏƒÎ±Ï‚', 'Ø§ÛŒÙ…ÛŒÙ„ Ø§Ø±Ø³Ø§Ù„ÛŒ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§Ø±Ø³Ø§Ù„ Ø´Ø¯. Ù„Ø·ÙØ§ Ø§ÛŒÙ…ÛŒÙ„ Ø±Ø§ Ø¨Ø±Ø±Ø³ÛŒ Ú©Ù†ÛŒØ¯', 'E-mel tetapan semula kata laluan berjaya dihantar. Sila semak e-mel anda', 'à°ªà°¾à°¸à±à°µà°°à±à°¡à± à°°à±€à°¸à±†à°Ÿà± à°‡à°®à±†à°¯à°¿à°²à± à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°ªà°‚à°ªà°¬à°¡à°¿à°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à±€à°•à± à°‡à°®à±†à°¯à°¿à°²à± à°¤à°¨à°¿à°–à±€ à°šà±‡à°¯à°‚à°¡à°¿', 'à®•à®Ÿà®µà¯à®šà¯à®šà¯Šà®²à¯ à®®à¯€à®Ÿà¯à®Ÿà®®à¯ˆà®ªà¯à®ªà¯ à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®…à®©à¯à®ªà¯à®ªà®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯. à®¤à®¯à®µà¯à®šà¯†à®¯à¯à®¤à¯ à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ˆ à®šà®°à®¿à®ªà®¾à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àªªàª¾àª¸àªµàª°à«àª¡ àª°à«€àª¸à«‡àªŸ àª‡àª®à«‡àª‡àª² àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª®à«‹àª•àª²à«àª¯à«‹ àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª¤àª®àª¨à«‡ àª‡àª®à«‡àª‡àª² àª¤àªªàª¾àª¸à«‹', 'E-mail z resetem hasÅ‚a zostaÅ‚ wysÅ‚any pomyÅ›lnie. ProszÄ™ sprawdziÄ‡ e-mail', 'Ð•Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð° Ð°Ð´Ñ€ÐµÑÐ° Ð´Ð»Ñ Ð²Ñ–Ð´Ð½Ð¾Ð²Ð»ÐµÐ½Ð½Ñ Ð¿Ð°Ñ€Ð¾Ð»Ñ ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾ Ð²Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾. Ð‘ÑƒÐ´ÑŒ-Ð»Ð°ÑÐºÐ°, Ð¿ÐµÑ€ÐµÐ²Ñ–Ñ€Ñ‚Ðµ, Ñ‡Ð¸ Ñ” Ð²Ð°Ð¼ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾ÑŽ Ð¿Ð¾ÑˆÑ‚Ð¾ÑŽ', 'à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨°à©€à¨¸à©ˆà¨Ÿ à¨ˆà¨®à©‡à¨² à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨­à©‡à¨œà¨¿à¨† à¨—à¨¿à¨† à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¤à©à¨¹à¨¾à¨¨à©‚à©° à¨ˆà¨®à©‡à¨² à¨¦à©€ à¨œà¨¾à¨‚à¨š à¨•à¨°à©‹', 'Emailul de resetare a parolei a fost trimis cu succes VÄƒ rugÄƒm sÄƒ verificaÈ›i prin e-mail', 'á€…á€€á€¬á€¸á€á€¾á€€á€ºá€•á€¼á€”á€ºá€Šá€¾á€­á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€€á€­á€¯á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€…á€±á€œá€½á€¾á€á€ºá€á€²á€·á€žá€Šá€ºá‹ á€žá€„á€»á€žá€Šá€»á€€á€­á€¯á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€…á€…á€ºá€†á€±á€¸á€•á€«', 'á»Œrá»igbaniwá»le atunto imeeli ti firaná¹£áº¹ ni ifijiÅ¡áº¹ Jowo á¹£ayáº¹wo o imeeli', 'Sake saitin imel kalmar sirri da aka aika. Da fatan a duba ku email', NULL, NULL),
(436, 'unexpected_error', 'Unexpected error occured', 'à¦…à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¶à¦¿à¦¤ à¦¤à§à¦°à§à¦Ÿà¦¿ à¦˜à¦Ÿà§‡à¦›à§‡', 'OcurriÃ³ un error inesperado', 'Ø­Ø¯Ø« Ø®Ø·Ø£ ØºÙŠØ± Ù…ØªÙˆÙ‚Ø¹', 'à¤…à¤¨à¤ªà¥‡à¤•à¥à¤·à¤¿à¤¤ à¤¤à¥à¤°à¥à¤Ÿà¤¿ à¤¹à¥à¤ˆ', 'ØºÛŒØ± Ù…ØªÙˆÙ‚Ø¹ ØºÙ„Ø·ÛŒ ÛÙˆØ¦ÛŒ', 'æ„å¤–çš„é”™è¯¯å‘ç”Ÿ', 'äºˆæœŸã—ãªã„ã‚¨ãƒ©ãƒ¼ãŒç™ºç”Ÿã—ã¾ã—ãŸ', 'Ocorreu um erro inesperado', 'ÐŸÑ€Ð¾Ð¸Ð·Ð¾ÑˆÐ»Ð° Ð½ÐµÐ¿Ñ€ÐµÐ´Ð²Ð¸Ð´ÐµÐ½Ð½Ð°Ñ Ð¾ÑˆÐ¸Ð±ÐºÐ°', 'Une erreur inattendue sest produite', 'ì˜ˆê¸°ì¹˜ ì•Šì€ ì˜¤ë¥˜ê°€ ë°œìƒí–ˆìŠµë‹ˆë‹¤.', 'Unerwarteter Fehler ist aufgetreten', 'Si Ã¨ verificato un errore imprevisto', 'à¹€à¸à¸´à¸”à¸‚à¹‰à¸­à¸œà¸´à¸”à¸žà¸¥à¸²à¸”à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸„à¸²à¸”à¸„à¸´à¸”', 'VÃ¡ratlan hiba tÃ¶rtÃ©nt', 'Er is een onverwachte fout opgetreden', 'Error occurrit inopinatum', 'Terjadi kesalahan tak terduga', 'Beklenmedik bir hata oluÅŸtu', 'Î Î±ÏÎ¿Ï…ÏƒÎ¹Î¬ÏƒÏ„Î·ÎºÎµ Î¼Î· Î±Î½Î±Î¼ÎµÎ½ÏŒÎ¼ÎµÎ½Î¿ ÏƒÏ†Î¬Î»Î¼Î±', 'Ø®Ø·Ø§ÛŒ ØºÛŒØ±Ù…Ù†ØªØ¸Ø±Ù‡ Ø±Ø® Ø¯Ø§Ø¯Ù‡ Ø§Ø³Øª', 'Ralat tidak dijangka berlaku', 'à°Šà°¹à°¿à°‚à°šà°¨à°¿ à°²à±‹à°ªà°‚ à°¸à°‚à°­à°µà°¿à°‚à°šà°¿à°‚à°¦à°¿', 'à®Žà®¤à®¿à®°à¯à®ªà®¾à®°à®¾à®¤ à®ªà®¿à®´à¯ˆ à®à®±à¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª…àª¨àªªà«‡àª•à«àª·àª¿àª¤ àª­à«‚àª² àª†àªµà«€', 'PojawiÅ‚ siÄ™ nieoczekiwany bÅ‚Ä…d', 'ÐÐµÑÐ¿Ð¾Ð´Ñ–Ð²Ð°Ð½Ð° Ð¿Ð¾Ð¼Ð¸Ð»ÐºÐ°', 'à¨…à¨šà¨¾à¨¨à¨• à¨¤à¨°à©à©±à¨Ÿà©€ à¨‰à¨¤à¨ªà©°à¨¨ à¨¹à©‹à¨ˆ', 'A apÄƒrut o eroare neaÈ™teptatÄƒ', 'á€™á€™á€»á€¾á€±á€¬á€ºá€œá€„á€·á€ºá€˜á€²á€¡á€™á€¾á€¬á€¸á€–á€¼á€…á€ºá€•á€½á€¬á€¸á€á€²á€·á€žá€Šá€º', 'Aá¹£iá¹£e airotáº¹láº¹ kan á¹£áº¹láº¹', 'An sami kuskure marar kuskure', NULL, NULL),
(437, 'password_reset_error', 'Password length must be 6-12 Character and match with Confirm password', 'à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡à§‡à¦° à¦¦à§ˆà¦°à§à¦˜à§à¦¯ 6-12 à¦…à¦•à§à¦·à¦° à¦à¦¬à¦‚ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦ªà¦¾à¦¸à¦“à¦¯à¦¼à¦¾à¦°à§à¦¡à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦®à§‡à¦²à§‡', 'La longitud de la contraseÃ±a debe ser de 6-12 caracteres y coincide con Confirmar contraseÃ±a', 'ÙŠØ¬Ø¨ Ø£Ù† ÙŠÙƒÙˆÙ† Ø·ÙˆÙ„ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ± 6-12 Ø­Ø±Ù ÙˆØªØ·Ø§Ø¨Ù‚ Ù…Ø¹ ØªØ£ÙƒÙŠØ¯ ÙƒÙ„Ù…Ø© Ø§Ù„Ù…Ø±ÙˆØ±', 'à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤•à¥€ à¤²à¤‚à¤¬à¤¾à¤ˆ 6-12 à¤µà¤°à¥à¤£ à¤”à¤° à¤ªà¤¾à¤¸à¤µà¤°à¥à¤¡ à¤•à¥€ à¤ªà¥à¤·à¥à¤Ÿà¤¿ à¤•à¥‡ à¤¸à¤¾à¤¥ à¤®à¥ˆà¤š à¤¹à¥‹à¤¨à¤¾ à¤šà¤¾à¤¹à¤¿à¤', 'Ù¾Ø§Ø³ ÙˆØ±Úˆ Ú©ÛŒ Ù„Ù…Ø¨Ø§Ø¦ÛŒ 6-12 ÛÙˆÙ†Ø§ Ø¶Ø±ÙˆØ±ÛŒ ÛÛ’ Ø§ÙˆØ± Ø§Ø³ Ú©ÛŒ ØªØµØ¯ÛŒÙ‚ Ú©ÛŒ Ù¾Ø§Ø³ ÙˆØ±Úˆ Ú©Û’ Ø³Ø§ØªÚ¾ Ù…ÛŒÚ† ÛÙˆÙ†Ø§ Ú†Ø§ÛÛŒÛ’', 'å¯†ç é•¿åº¦å¿…é¡»æ˜¯6-12ä¸ªå­—ç¬¦å¹¶ä¸”ä¸Žç¡®è®¤å¯†ç ç›¸åŒ¹é…', 'ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã®é•·ã•ã¯6ã€œ12æ–‡å­—ã§ã€ãƒ‘ã‚¹ãƒ¯ãƒ¼ãƒ‰ã®ç¢ºèªã¨ä¸€è‡´ã™ã‚‹å¿…è¦ãŒã‚ã‚Šã¾ã™', 'O comprimento da senha deve ser de 6 a 12 caracteres e combinar com Confirmar senha', 'Ð”Ð»Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ Ð´Ð¾Ð»Ð¶Ð½Ð° Ð±Ñ‹Ñ‚ÑŒ 6-12 ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð² Ð¸ ÑÐ¾Ð¾Ñ‚Ð²ÐµÑ‚ÑÑ‚Ð²Ð¾Ð²Ð°Ñ‚ÑŒ Ð¿Ð°Ñ€Ð¾Ð»ÑŽ Ð¿Ð¾Ð´Ñ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ñ.', 'la longueur du mot de passe doit Ãªtre comprise entre 6 et 12 caractÃ¨res et correspondre avec Confirmer le mot de passe', 'ë¹„ë°€ë²ˆí˜¸ ê¸¸ì´ëŠ” 6-12 ìž ì—¬ì•¼í•˜ë©° ë¹„ë°€ë²ˆí˜¸ í™•ì¸ê³¼ ì¼ì¹˜í•´ì•¼í•©ë‹ˆë‹¤.', 'Die PasswortlÃ¤nge muss 6-12 Zeichen lang sein und mit Passwort bestÃ¤tigen Ã¼bereinstimmen', 'La lunghezza della password deve essere di 6-12 caratteri e corrisponde a Conferma password', 'à¸£à¸«à¸±à¸ªà¸œà¹ˆà¸²à¸™à¸•à¹‰à¸­à¸‡à¸¢à¸²à¸§ 6-12 à¸•à¸±à¸§à¸­à¸±à¸à¸©à¸£à¹à¸¥à¸°à¸•à¸£à¸‡à¸à¸±à¸šà¸£à¸«à¸±à¸ªà¸¢à¸·à¸™à¸¢à¸±à¸™', 'A jelszÃ³ hosszÃºsÃ¡gÃ¡nak 6-12 karakterbÅ‘l kell Ã¡llnia, Ã©s meg kell egyeznie a JelszÃ³ megerÅ‘sÃ­tÃ©sÃ©vel', 'Wachtwoordlengte moet 6-12 tekens zijn en overeenkomen met Wachtwoord bevestigen', '6-12 longitudinem esse pares ignoro Character Confirm ignoro', 'Panjang kata sandi harus 6-12 Karakter dan cocok dengan Confirm password', 'Åžifre uzunluÄŸu 6-12 karakter olmalÄ±dÄ±r ve ParolayÄ± onayla ile eÅŸleÅŸmelidir.', 'Î¤Î¿ Î¼Î®ÎºÎ¿Ï‚ Ï„Î¿Ï… ÎºÏ‰Î´Î¹ÎºÎ¿Ï Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚ Ï€ÏÎ­Ï€ÎµÎ¹ Î½Î± ÎµÎ¯Î½Î±Î¹ 6-12 Ï‡Î±ÏÎ±ÎºÏ„Î®ÏÎµÏ‚ ÎºÎ±Î¹ Î½Î± Ï„Î±Î¹ÏÎ¹Î¬Î¶ÎµÎ¹ Î¼Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ ÎµÏ€Î¹Î²ÎµÎ²Î±Î¯Ï‰ÏƒÎ·Ï‚', 'Ø·ÙˆÙ„ Ø±Ù…Ø² Ø¹Ø¨ÙˆØ± Ø¨Ø§ÛŒØ¯ 6 ØªØ§ 12 Ø­Ø±Ù Ø¨Ø§Ø´Ø¯ Ùˆ Ø¨Ø§ ØªØ§ÛŒÛŒØ¯ Ø±Ù…Ø² Ø¹Ø¨ÙˆØ± Ù…Ø·Ø§Ø¨Ù‚Øª Ø¯Ø§Ø±Ø¯', 'Panjang kata laluan mesti 6-12 Watak dan padan dengan Sahkan kata laluan', 'à°ªà°¾à°¸à± à°µà°°à±à°¡à± à°ªà±Šà°¡à°µà± 6-12 à°‰à°‚à°¡à°¾à°²à°¿', 'à®•à®Ÿà®µà¯à®šà¯à®šà¯Šà®²à¯ à®¨à¯€à®³à®®à¯ à®‡à®°à¯à®•à¯à®• à®µà¯‡à®£à¯à®Ÿà¯à®®à¯ 6-12 à®Žà®´à¯à®¤à¯à®¤à¯ à®®à®±à¯à®±à¯à®®à¯ à®•à®Ÿà®µà¯à®šà¯à®šà¯Šà®²à¯à®²à¯ˆ à®‰à®±à¯à®¤à®¿à®ªà¯à®ªà®Ÿà¯à®¤à¯à®¤à®²à¯ à®ªà¯Šà®°à¯à®¨à¯à®¤à®µà®¿à®²à¯à®²à¯ˆ', 'àªªàª¾àª¸àªµàª°à«àª¡àª¨à«€ àª²àª‚àª¬àª¾àªˆ 6-12 àª…àª•à«àª·àª° àª¹à«‹àªµàª¾ àªœà«‹àªˆàª àª…àª¨à«‡ àªªàª¾àª¸àªµàª°à«àª¡àª¨à«€ àªªà«àª·à«àªŸàª¿ àª•àª°à«‹', 'DÅ‚ugoÅ›Ä‡ hasÅ‚a musi wynosiÄ‡ 6-12 Znak i dopasowanie z PotwierdÅº hasÅ‚o', 'Ð”Ð¾Ð²Ð¶Ð¸Ð½Ð° Ð¿Ð°Ñ€Ð¾Ð»Ñ Ð¿Ð¾Ð²Ð¸Ð½Ð½Ð° Ð±ÑƒÑ‚Ð¸ 6-12 ÑÐ¸Ð¼Ð²Ð¾Ð»Ñ–Ð² Ñ– Ð²Ñ–Ð´Ð¿Ð¾Ð²Ñ–Ð´Ð°Ñ‚Ð¸ Ð· Ð¿Ñ–Ð´Ñ‚Ð²ÐµÑ€Ð´Ð¶ÐµÐ½Ð½ÑÐ¼ Ð¿Ð°Ñ€Ð¾Ð»Ñ', 'à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨¦à©€ à¨²à©°à¨¬à¨¾à¨ˆ 6-12 à¨…à©±à¨–à¨° à¨¹à©‹à¨£à©€ à¨šà¨¾à¨¹à©€à¨¦à©€ à¨¹à©ˆ à¨…à¨¤à©‡ à¨ªà¨¾à¨¸à¨µà¨°à¨¡ à¨¨à¨¾à¨² à¨ªà©à¨¸à¨¼à¨Ÿà©€ à¨•à¨°à©‹', 'Lungimea parolei trebuie sÄƒ fie 6-12 Caracter È™i sÄƒ se potriveascÄƒ cu Confirmare parolÄƒ', 'Password á€€á€­á€¯á€¡á€›á€¾á€Šá€º Confirm password á€€á€­á€¯á€¡á€á€° 6-12 á€¡á€€á€¹á€á€›á€¬á€”á€¾á€„á€ºá€·á€•á€½á€²á€…á€‰á€ºá€–á€¼á€…á€ºá€›á€•á€«á€™á€Šá€º', 'Ipari ipari á»rá»igbaniwá»le gbá»dá» jáº¹ 6-12 Ti ohun kiká» ati baramu páº¹lu Jáº¹risi á»rá»igbaniwá»le', 'Dole ne kalmar wucewa ta kasance ta 6-12 HaÉ—i da wasa tare da Tabbatar da kalmar sirri', NULL, NULL),
(438, 'in_active', 'Inactive', 'à¦¨à¦¿à¦·à§à¦•à§à¦°à¦¿à¦¯à¦¼', 'Inactivo', 'ØºÙŠØ± Ù†Ø´Ø·', 'à¤¨à¤¿à¤·à¥à¤•à¥à¤°à¤¿à¤¯', 'ØºÛŒØ± ÙØ¹Ø§Ù„', 'å¾…ç”¨', 'éžã‚¢ã‚¯ãƒ†ã‚£ãƒ–', 'Inativo', 'ÐÐµÐ°ÐºÑ‚Ð¸Ð²Ð½Ñ‹Ð¹', 'Inactif', 'ë¹„í™œì„±', 'Inaktiv', 'Inattivo', 'à¹€à¸‰à¸·à¹ˆà¸­à¸¢à¸Šà¸²', 'tÃ©tlen', 'Inactief', 'Ut ultrices vestibulum', 'Tidak aktif', 'etkisiz', 'Î‘Î´ÏÎ±Î½Î®Ï‚', 'ØºÛŒØ± ÙØ¹Ø§Ù„', 'Tidak aktif', 'à°•à±à°°à°¿à°¯à°¾à°°à°¹à°¿à°¤', 'à®šà¯†à®¯à®²à¯à®ªà®Ÿà®¾', 'àª¨àª¿àª·à«àª•à«àª°àª¿àª¯', 'Nieaktywny', 'ÐÐµÐ°ÐºÑ‚Ð¸Ð²Ð½Ð¸Ð¹', 'à¨¨à¨¿à¨¸à¨¼à¨•à¨¿à¨°à¨¿à¨†', 'Inactiv', 'á€™á€œá€¾á€¯á€•á€ºá€›á€¾á€¬á€¸á€á€á€ºá€žá€±á€¬', 'Inactive', 'Mai aiki', NULL, NULL),
(440, 'fill_out_all_data', 'Please fill up all field data', 'à¦¸à¦®à¦¸à§à¦¤ à¦•à§à¦·à§‡à¦¤à§à¦°à§‡à¦° à¦¤à¦¥à§à¦¯ à¦ªà§‚à¦°à¦£ à¦•à¦°à§à¦¨ à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡', 'Complete todos los datos de campo', 'ÙŠØ±Ø¬Ù‰ Ù…Ù„Ø¡ Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„Ù…ÙŠØ¯Ø§Ù†ÙŠØ©', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤¸à¤­à¥€ à¤«à¤¼à¥€à¤²à¥à¤¡ à¤¡à¥‡à¤Ÿà¤¾ à¤­à¤°à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… ØªÙ…Ø§Ù… ÙÛŒÙ„Úˆ ÚˆÛŒÙ¹Ø§ Ú©Ùˆ Ø¨Ú¾Ø±ÛŒÚº', 'è¯·å¡«å†™æ‰€æœ‰çš„çŽ°åœºæ•°æ®', 'ã™ã¹ã¦ã®ãƒ•ã‚£ãƒ¼ãƒ«ãƒ‰ãƒ‡ãƒ¼ã‚¿ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„', 'Complete todos os dados de campo', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð·Ð°Ð¿Ð¾Ð»Ð½Ð¸Ñ‚Ðµ Ð²ÑÐµ Ð¿Ð¾Ð»ÐµÐ²Ñ‹Ðµ Ð´Ð°Ð½Ð½Ñ‹Ðµ', 'Sil vous plaÃ®t remplir toutes les donnÃ©es de terrain', 'ëª¨ë“  í•„ë“œ ë°ì´í„°ë¥¼ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼llen Sie alle Felddaten aus', 'Si prega di compilare tutti i dati del campo', 'à¹‚à¸›à¸£à¸”à¸à¸£à¸­à¸à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸Ÿà¸´à¸¥à¸”à¹Œà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'KÃ©rjÃ¼k, tÃ¶ltse ki az Ã¶sszes mezÅ‘adatot', 'Vul alle veldgegevens in', 'Obsecro, universi agri data fillup', 'Silahkan isi semua data lapangan', 'LÃ¼tfen tÃ¼m alan verilerini doldurun', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ ÏƒÏ…Î¼Ï€Î»Î·ÏÏŽÏƒÏ„Îµ ÏŒÎ»Î± Ï„Î± Î´ÎµÎ´Î¿Î¼Î­Î½Î± Ï€ÎµÎ´Î¯Î¿Ï…', 'Ù„Ø·ÙØ§ ØªÙ…Ø§Ù… Ø§Ø·Ù„Ø§Ø¹Ø§Øª ÙÛŒÙ„Ø¯ Ø±Ø§ Ù¾Ø± Ú©Ù†ÛŒØ¯', 'Sila mengisi semua data medan', 'à°¦à°¯à°šà±‡à°¸à°¿ à°…à°¨à±à°¨à°¿ à°•à±à°·à±‡à°¤à±à°° à°¡à±‡à°Ÿà°¾à°¨à± à°ªà±‚à°°à°¿à°‚à°šà°‚à°¡à°¿', 'à®…à®©à¯ˆà®¤à¯à®¤à¯ à®ªà¯à®² à®¤à®°à®µà¯ à®¨à®¿à®°à®ªà¯à®ªà®µà¯à®®à¯', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª¤àª®àª¾àª® àª«à«€àª²à«àª¡ àª¡à«‡àªŸàª¾ àª­àª°à«‹', 'ProszÄ™ odflukowaÄ‡ wszystkie dane pola', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð·Ð°Ð¿Ð¾Ð²Ð½Ñ–Ñ‚ÑŒ Ð²ÑÑ– Ð´Ð°Ð½Ñ– Ð¿Ð¾Ð»Ñ', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¸à¨¾à¨°à©‡ à¨«à©€à¨²à¨¡ à¨¡à¨¾à¨Ÿà¨¾ à¨­à¨° à¨¦à¨¿à¨“', 'CompletaÈ›i toate datele cÃ¢mpului', 'á€¡á€¬á€¸á€œá€¯á€¶á€¸á€œá€šá€ºá€€á€½á€„á€ºá€¸á€’á€±á€á€¬ fillup á€€á€»á€±á€¸á€‡á€°á€¸á€•á€¼á€¯.', 'Jowo fi gbogbo data aaye kun', 'Da fatan a cika dukkan bayanan filin', NULL, NULL),
(441, 'email_send_failed', 'Email sent failed. Please try again.', 'à¦‡à¦®à§‡à¦² à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¬à§à¦¯à¦°à§à¦¥ à¦¹à¦¯à¦¼à§‡à¦›à§‡à¥¤ à¦…à¦¨à§à¦—à§à¦°à¦¹à¦ªà§‚à¦°à§à¦¬à¦• à¦†à¦¬à¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à§à¦¨.', 'El correo electrÃ³nico enviado fallÃ³. IntÃ©ntalo de nuevo.', 'Ø£Ø®ÙÙ‚ Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ. Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰.', 'à¤ˆà¤®à¥‡à¤² à¤­à¥‡à¤œà¤¾ à¤µà¤¿à¤«à¤² à¤°à¤¹à¤¾à¥¤ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¥à¤¨: à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø§ÛŒ Ù…ÛŒÙ„ Ø¨Ú¾ÛŒØ¬Ø§ Ú¯ÛŒØ§. Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº.', 'ç”µå­é‚®ä»¶å‘é€å¤±è´¥ è¯·å†è¯•ä¸€æ¬¡ã€‚', 'é€ä¿¡ã•ã‚ŒãŸãƒ¡ãƒ¼ãƒ«ã¯å¤±æ•—ã—ã¾ã—ãŸ ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„ã€‚', 'E-mail enviado falhou. Por favor, tente novamente.', 'ÐÐµ ÑƒÐ´Ð°Ð»Ð¾ÑÑŒ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ñ‚ÑŒ ÑÐ¾Ð¾Ð±Ñ‰ÐµÐ½Ð¸Ðµ Ð¿Ð¾ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ðµ. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·.', 'Email envoyÃ© a Ã©chouÃ©. Veuillez rÃ©essayer.', 'ì „ì†¡ ëœ ì´ë©”ì¼ì´ ì‹¤íŒ¨í–ˆìŠµë‹ˆë‹¤. ë‹¤ì‹œ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'E-Mail sendet fehlgeschlagen. Bitte versuchen Sie es.', 'Email inviata fallita. Per favore riprova.', 'à¸­à¸µà¹€à¸¡à¸¥à¸—à¸µà¹ˆà¸ªà¹ˆà¸‡à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§ à¸à¸£à¸¸à¸“à¸²à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡.', 'Az elkÃ¼ldÃ¶tt e-mail nem sikerÃ¼lt. KÃ©rlek prÃ³bÃ¡ld Ãºjra.', 'E-mail verzonden mislukt. Probeer het opnieuw.', 'Misimus defecit. Quaero, iterum conare.', 'Email terkirim gagal Silahkan coba lagi', 'E-posta gÃ¶nderilemedi. LÃ¼tfen tekrar deneyin.', 'Î¤Î¿ Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÏŒ Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿ Ï€Î¿Ï… ÏƒÏ„Î¬Î»Î¸Î·ÎºÎµ Î±Ï€Î­Ï„Ï…Ï‡Îµ Î Î‘Î¡Î‘ÎšÎ‘Î›Î© Ï€ÏÎ¿ÏƒÏ€Î±Î¸Î·ÏƒÎµ Î¾Î±Î½Î±.', 'Ø§ÛŒÙ…ÛŒÙ„ Ø§Ø±Ø³Ø§Ù„ Ù†Ø´Ø¯. Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ ØªÙ„Ø§Ø´ Ú©Ù†ÛŒØ¯.', 'E-mel dihantar gagal. Sila cuba lagi.', 'à°‡à°®à±†à°¯à°¿à°²à± à°ªà°‚à°ªà°¡à°‚ à°µà°¿à°«à°²à°®à±ˆà°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°²à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿.', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®…à®©à¯à®ªà¯à®ªà®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯ à®¤à¯‹à®²à¯à®µà®¿à®¯à®Ÿà¯ˆà®¨à¯à®¤à®¤à¯. à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯.', 'àª‡àª®à«‡àª‡àª² àª®à«‹àª•àª²àªµàª¾àª®àª¾àª‚ àª¨àª¿àª·à«àª«àª³ àª¥àª¯à«àª‚. àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¤àª¨ àª•àª°à«‹.', 'Nie udaÅ‚o siÄ™ wysÅ‚aÄ‡ e-maila. ProszÄ™ sprÃ³buj ponownie.', 'ÐÐµ Ð²Ð´Ð°Ð»Ð¾ÑÑ Ð½Ð°Ð´Ñ–ÑÐ»Ð°Ñ‚Ð¸ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ðµ Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½Ñ. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ° ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ‰Ðµ Ñ€Ð°Ð·.', 'à¨­à©‡à¨œà©€ à¨—à¨ˆ à¨ˆà¨®à©‡à¨² à¨«à©‡à¨²à©à¨¹ à¨¹à©‹à¨ˆ. à¨®à©à©œ à¨•à©‹à¨¸à¨¼à¨¿à¨¸ à¨•à¨°à©‹ à¨œà©€.', 'Emailul trimis a eÈ™uat. VÄƒ rugÄƒm sÄƒ Ã®ncercaÈ›i din nou.', 'á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€•á€­á€¯á€·á€›á€”á€ºá€™á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€±á€œá€½á€¾á€á€ºá€á€²á€·á€žá€Šá€ºá‹ á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«á‹', 'Ifiraná¹£áº¹ imeeli ti kuna. Já»wá» gbiyanju láº¹áº¹kansi.', 'An aika imel da aka aika ya kasa. Da fatan a sake gwadawa.', NULL, NULL),
(442, 'email_send_success', 'Email sent successfully', 'à¦‡à¦®à§‡à¦² à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à¦¯à¦¼à§‡à¦›à§‡', 'Correo electrÃ³nico enviado con Ã©xito', 'ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ø¨Ù†Ø¬Ø§Ø­', 'à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤­à¥‡à¤œà¤¾ à¤—à¤¯à¤¾ à¤ˆà¤®à¥‡à¤²', 'Ø§ÛŒ Ù…ÛŒÙ„ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø¨Ú¾ÛŒØ¬Ø§ Ú¯ÛŒØ§', 'ç”µå­é‚®ä»¶å‘é€æˆåŠŸ', 'é›»å­ãƒ¡ãƒ¼ãƒ«ã‚’æ­£å¸¸ã«é€ä¿¡', 'E-mail enviado com sucesso', 'Ð¿Ð¸ÑÑŒÐ¼Ð¾ ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾', 'E-mail envoyÃ© avec succÃ¨s', 'ì´ë©”ì¼ì´ ì „ì†¡ë˜ì—ˆìŠµë‹ˆë‹¤.', 'Email wurde erfolgreich Versendet', 'email inviata correttamente', 'à¸ªà¹ˆà¸‡à¸­à¸µà¹€à¸¡à¸¥à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§', 'Az e-mail sikeresen elkÃ¼ldve', 'E-mail met succes verzonden', 'Email ad bene', 'Email berhasil dikirim', 'e-posta baÅŸarÄ±yla gÃ¶nderildi', 'Î¤Î¿ email ÏƒÏ„Î¬Î»Î¸Î·ÎºÎµ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±', 'Ø§ÛŒÙ…ÛŒÙ„ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§Ø±Ø³Ø§Ù„ Ø´Ø¯', 'E-mel berjaya dihantar', 'à°‡à°®à±†à°¯à°¿à°²à± à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°ªà°‚à°ªà°¬à°¡à°¿à°‚à°¦à°¿', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®…à®©à¯à®ªà¯à®ªà®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª‡àª®à«‡àª‡àª² àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª®à«‹àª•àª²à«àª¯à«‹', 'E-mail wysÅ‚any pomyÅ›lnie', 'Ð•Ð»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð° Ð¿Ð¾ÑˆÑ‚Ð° Ð½Ð°Ð´Ñ–Ð¹ÑˆÐ»Ð° ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾', 'à¨ˆà¨®à©‡à¨² à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨­à©‡à¨œà¨¿à¨† à¨—à¨¿à¨†', 'Email-ul a fost trimis cu succes', 'á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€€á€­á€¯á€…á€œá€¾á€±á€á€»á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€•á€­á€¯á€·á€›á€”á€º', 'Imeeli firaná¹£áº¹ ni ifijiÅ¡áº¹', 'Imel da aka aika da nasarar', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(443, 'sms_send_failed', 'Sms send failed. Please try again', 'à¦à¦¸à¦à¦®à¦à¦¸ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¬à§à¦¯à¦°à§à¦¥ à¦¹à¦¯à¦¼à§‡à¦›à§‡ à¦…à¦¨à§à¦—à§à¦°à¦¹à¦ªà§‚à¦°à§à¦¬à¦• à¦†à¦¬à¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à§à¦¨', 'SMS enviado fallido. IntÃ©ntalo de nuevo', 'Ø£Ø±Ø³Ù„ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø© Ø³Ù…Ø². Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰', 'à¤à¤¸à¤à¤®à¤à¤¸ à¤­à¥‡à¤œà¤¨à¤¾ à¤µà¤¿à¤«à¤² à¤¹à¥à¤† à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¥à¤¨: à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚', 'Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ù†Ø§Ú©Ø§Ù… ÛÙˆÚ¯Ø¦Û’. Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº', 'çŸ­ä¿¡å‘é€å¤±è´¥ã€‚ è¯·å†è¯•ä¸€æ¬¡', 'SMSé€ä¿¡ã«å¤±æ•—ã—ã¾ã—ãŸã€‚ ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„', 'Sms send falhou. Por favor, tente novamente', 'ÐžÑˆÐ¸Ð±ÐºÐ° Ð¾Ñ‚Ð¿Ñ€Ð°Ð²ÐºÐ¸ sms Ð½Ðµ ÑƒÐ´Ð°Ð»Ð°ÑÑŒ. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·', 'Lenvoi de sms a Ã©chouÃ©. Veuillez rÃ©essayer', 'SMS ì „ì†¡ì— ì‹¤íŒ¨í–ˆìŠµë‹ˆë‹¤. ë‹¤ì‹œ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'SMS senden fehlgeschlagen. Bitte versuche es erneut', 'Invio SMS fallito. Per favore riprova', 'à¸ªà¹ˆà¸‡ sms à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§ à¸à¸£à¸¸à¸“à¸²à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡', 'A sms kÃ¼ldÃ©s nem sikerÃ¼lt. KÃ©rlek prÃ³bÃ¡ld Ãºjra', 'Sms verzenden mislukt. Probeer het opnieuw', 'Mittere SMS defecit. Quaero, iterum conare', 'Sms send gagal Silahkan coba lagi', 'SMS gÃ¶ndermek baÅŸarÄ±sÄ±z oldu. LÃ¼tfen tekrar deneyin', 'Î— Î±Ï€Î¿ÏƒÏ„Î¿Î»Î® SMS Î±Ï€Î­Ï„Ï…Ï‡Îµ. Î Î‘Î¡Î‘ÎšÎ‘Î›Î© Ï€ÏÎ¿ÏƒÏ€Î±Î¸Î·ÏƒÎµ Î¾Î±Î½Î±', 'Ù¾ÛŒØ§Ù…Ú© Ø§Ø±Ø³Ø§Ù„ Ù†Ø´Ø¯ Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ ØªÙ„Ø§Ø´ Ú©Ù†ÛŒØ¯', 'Hantar sms gagal. Sila cuba lagi', 'SMS à°ªà°‚à°ªà°¡à°‚ à°µà°¿à°«à°²à°®à±ˆà°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°²à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿', 'Sms à®…à®©à¯à®ªà¯à®ª à®®à¯à®Ÿà®¿à®¯à®µà®¿à®²à¯à®²à¯ˆ. à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯', 'àªàª¸àªàª®àªàª¸ àª®à«‹àª•àª²àªµàª¾àª®àª¾àª‚ àª¨àª¿àª·à«àª«àª³. àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¤àª¨ àª•àª°à«‹', 'Nie udaÅ‚o siÄ™ wysÅ‚aÄ‡ SMS-a. ProszÄ™ sprÃ³buj ponownie', 'ÐÐµ Ð²Ð´Ð°Ð»Ð¾ÑÑ Ð½Ð°Ð´Ñ–ÑÐ»Ð°Ñ‚Ð¸ SMS-Ð¿Ð¾Ð²Ñ–Ð´Ð¾Ð¼Ð»ÐµÐ½Ð½Ñ. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ° ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ‰Ðµ Ñ€Ð°Ð·', 'à¨à¨¸à¨à¨®à¨à¨¸ à¨­à©‡à¨œà¨£à¨¾ à¨…à¨¸à¨«à¨² à¨®à©à©œ à¨•à©‹à¨¸à¨¼à¨¿à¨¸ à¨•à¨°à©‹ à¨œà©€', 'Sms-ul trimite nu a reuÈ™it. VÄƒ rugÄƒm sÄƒ Ã®ncercaÈ›i din nou', 'sms á€•á€»á€€á€ºá€€á€½á€€á€ºá€•á€±á€¸á€•á€­á€¯á€·á€•á€«á‹ á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«', 'Ifiraná¹£áº¹ Sms ti kuna. Já»wá» gbiyanju láº¹áº¹kansi', 'Sms aika ya kasa. Da fatan a sake gwadawa', NULL, NULL),
(444, 'sms_send_success', 'Sms sent successfully', 'à¦à¦¸à¦à¦®à¦à¦¸ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦ªà¦¾à¦ à¦¾à¦¨à§‹ à¦¹à¦¯à¦¼à§‡à¦›à§‡', 'SMS enviado satisfactoriamente', 'ØªÙ… Ø¥Ø±Ø³Ø§Ù„ Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø© Ø¨Ù†Ø¬Ø§Ø­', 'à¤à¤¸à¤à¤®à¤à¤¸ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤­à¥‡à¤œà¤¾ à¤—à¤¯à¤¾', 'Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ Ø¨Ú¾ÛŒØ¬Û’ Ú¯Ø¦Û’', 'çŸ­ä¿¡å‘é€æˆåŠŸ', 'SMSãŒæ­£å¸¸ã«é€ä¿¡ã•ã‚Œã¾ã—ãŸ', 'SMS enviado com Ãªxito', 'Sms ÑƒÑÐ¿ÐµÑˆÐ½Ð¾ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½', 'SMS envoyÃ© avec succÃ¨s', 'SMSê°€ ì„±ê³µì ìœ¼ë¡œ ë³´ëƒˆìŠµë‹ˆë‹¤.', 'SMS erfolgreich versendet', 'SMS inviato correttamente', 'à¸ªà¹ˆà¸‡ sms à¹€à¸£à¸µà¸¢à¸šà¸£à¹‰à¸­à¸¢à¹à¸¥à¹‰à¸§', 'A sms sikeresen elkÃ¼ldve', 'SMS succesvol verzonden', 'SMS misit feliciter', 'Sms berhasil dikirim', 'SMS baÅŸarÄ±yla gÃ¶nderildi', 'Î¤Î± SMS Î±Ï€Î¿ÏƒÏ„Î­Î»Î»Î¿Î½Ï„Î±Î¹ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±', 'Ø§Ø³ Ø§Ù… Ø§Ø³ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§Ø±Ø³Ø§Ù„ Ø´Ø¯', 'Sms dihantar berjaya', 'Sms à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°ªà°‚à°ªà°¬à°¡à°¿à°‚à°¦à°¿', 'Sms à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®…à®©à¯à®ªà¯à®ªà®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àªàª¸àªàª®àªàª¸ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª®à«‹àª•àª²à«àª¯à«‹ àª›à«‡', 'SMS wysÅ‚any z powodzeniem', 'Ð¡ÐœÐ¡ ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾ Ð²Ñ–Ð´Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¾', 'SMS à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨­à©‡à¨œà¨¿à¨† à¨—à¨¿à¨†', 'Sms-urile au fost trimise cu succes', 'á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€€á€­á€¯á€…á€œá€¾á€±á€á€» sms', 'Sms rÃ¡n ni ifijiÅ¡áº¹', 'Sms ya aika da nasarar', NULL, NULL),
(445, 'clickatell_mo_no', 'Mo Number', 'MO à¦¸à¦‚à¦–à§à¦¯à¦¾', 'NÃºmero Mo', 'Ù…Ùˆ Ø¹Ø¯Ø¯', 'à¤®à¥‹ à¤¨à¤‚à¤¬à¤°', 'Ù…Ùˆ Ù†Ù…Ø¨Ø±', 'èŽ«æ•°', 'Moç•ªå·', 'NÃºmero Mo', 'ÐÐ¾Ð¼ÐµÑ€ Mo', 'Mo Number', 'ëª¨ ë²ˆí˜¸', 'Mo Nummer', 'Numero Mo', 'à¸ˆà¸³à¸™à¸§à¸™à¹‚à¸¡', 'Mo szÃ¡m', 'Mo-nummer', 'Mo Number', 'Nomor Mo', 'Mo NumarasÄ±', 'Î‘ÏÎ¹Î¸Î¼ÏŒÏ‚ Mo', 'Ø´Ù…Ø§Ø±Ù‡ Ù…', 'Nombor Mo', 'à°®à±‹ à°¸à°‚à°–à±à°¯', 'à®®à¯‹ à®Žà®£à¯', 'àª®à«‹ àª¸àª‚àª–à«àª¯àª¾', 'Numer Mo', 'ÐÐ¾Ð¼ÐµÑ€ ÐœÐ¾', 'à¨®à©‹ à¨¨à©°à¨¬à¨°', 'NumÄƒrul Mo', 'mo á€¡á€›á€±á€¡á€á€½á€€á€º', 'Mo Number', 'Mo Number', NULL, NULL),
(446, 'setup_your_sms_gateway', 'Please set up your expected sms gateway correctly ', 'à¦…à¦¨à§à¦—à§à¦°à¦¹ à¦•à¦°à§‡ à¦†à¦ªà¦¨à¦¾à¦° à¦ªà§à¦°à¦¤à§à¦¯à¦¾à¦¶à¦¿à¦¤ à¦à¦¸à¦à¦®à¦à¦¸ à¦—à§‡à¦Ÿà¦“à¦¯à¦¼à§‡ à¦¸à¦ à¦¿à¦•à¦­à¦¾à¦¬à§‡ à¦¸à§‡à¦Ÿ à¦†à¦ª à¦•à¦°à§à¦¨', 'Configure su puerta de enlace de SMS esperado correctamente', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¹Ø¯Ø§Ø¯ Ø¨ÙˆØ§Ø¨Ø© Ø§Ù„Ø±Ø³Ø§Ø¦Ù„ Ø§Ù„Ù‚ØµÙŠØ±Ø© Ø§Ù„Ù…ØªÙˆÙ‚Ø¹Ø© Ø¨Ø´ÙƒÙ„ ØµØ­ÙŠØ­', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤…à¤ªà¤¨à¤¾ à¤…à¤ªà¥‡à¤•à¥à¤·à¤¿à¤¤ à¤à¤¸à¤à¤®à¤à¤¸ à¤—à¥‡à¤Ÿà¤µà¥‡ à¤¸à¤¹à¥€ à¤¢à¤‚à¤— à¤¸à¥‡ à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ø§Ù¾Ù†Û’ Ù…ØªÙˆÙ‚Ø¹ Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ú¯ÛŒÙ¹ ÙˆÛ’ Ú©Ùˆ ØµØ­ÛŒØ­ Ø·Ø±ÛŒÙ‚Û’ Ø³Û’ Ù…Ù‚Ø±Ø± Ú©Ø±ÛŒÚº', 'è¯·æ­£ç¡®è®¾ç½®æ‚¨çš„é¢„æœŸçš„çŸ­ä¿¡ç½‘å…³', 'äºˆæƒ³ã•ã‚Œã‚‹SMSã‚²ãƒ¼ãƒˆã‚¦ã‚§ã‚¤ã‚’æ­£ã—ãè¨­å®šã—ã¦ãã ã•ã„', 'Configure o seu esperado sms gateway corretamente', 'ÐŸÑ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹Ñ‚Ðµ ÑÐ²Ð¾Ð¹ Ð¾Ð¶Ð¸Ð´Ð°ÐµÐ¼Ñ‹Ð¹ sms-ÑˆÐ»ÑŽÐ·', 'Veuillez configurer votre passerelle SMS attendue correctement', 'ì˜ˆìƒë˜ëŠ” SMS ê²Œì´íŠ¸ì›¨ì´ë¥¼ ì˜¬ë°”ë¥´ê²Œ ì„¤ì •í•˜ì‹­ì‹œì˜¤.', 'Bitte richten Sie Ihr erwartetes SMS-Gateway korrekt ein', 'Si prega di configurare il vostro gateway sms previsto correttamente', 'à¹‚à¸›à¸£à¸”à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¹€à¸à¸•à¹€à¸§à¸¢à¹Œ sms à¸—à¸µà¹ˆà¸„à¸¸à¸“à¸•à¹‰à¸­à¸‡à¸à¸²à¸£à¹‚à¸”à¸¢à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rjÃ¼k, helyesen Ã¡llÃ­tsa be az elvÃ¡rt sms-Ã¡tjÃ¡rÃ³t', 'Stel uw verwachte sms-gateway correct in', 'SMS porta quaeso erigas bene sperandum', 'Harap siapkan gateway sms yang Anda harapkan dengan benar', 'LÃ¼tfen beklenen sms aÄŸ geÃ§idinizi doÄŸru bir ÅŸekilde ayarlayÄ±n.', 'Î¡Ï…Î¸Î¼Î¯ÏƒÏ„Îµ ÏƒÏ‰ÏƒÏ„Î¬ Ï„Î·Î½ Î±Î½Î±Î¼ÎµÎ½ÏŒÎ¼ÎµÎ½Î· Ï€ÏÎ»Î· sms', 'Ù„Ø·ÙØ§ Ø¯Ø±ÙˆØ§Ø²Ù‡ Ù…ÙˆØ±Ø¯ Ø§Ù†ØªØ¸Ø§Ø± Ø§Ø³ Ø§Ù… Ø§Ø³ Ù…ÙˆØ±Ø¯ Ù†Ø¸Ø± Ø±Ø§ Ø¯Ø±Ø³Øª ØªÙ†Ø¸ÛŒÙ… Ú©Ù†ÛŒØ¯', 'Sila buat gerbang sms yang diharapkan', 'à°¦à°¯à°šà±‡à°¸à°¿ à°®à±€ à°†à°¶à°¿à°‚à°šà°¿à°¨ SMS à°—à±‡à°Ÿà± à°¸à°°à°¿à°—à±à°—à°¾ à°…à°®à°°à±à°šà°‚à°¡à°¿', 'à®‰à®™à¯à®•à®³à¯ à®Žà®¤à®¿à®°à¯à®ªà®¾à®°à¯à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®®à¯ à®Žà®¸à¯à®Žà®®à¯à®Žà®¸à¯ à®¨à¯à®´à¯ˆà®µà®¾à®¯à¯ˆ à®šà®°à®¿à®¯à®¾à®• à®…à®®à¯ˆà®•à¯à®•à®µà¯à®®à¯', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª¤àª®àª¾àª°àª¾ àª…àªªà«‡àª•à«àª·àª¿àª¤ àªàª¸àªàª®àªàª¸ àª—à«‡àªŸàªµà«‡àª¨à«‡ àª¯à«‹àª—à«àª¯ àª°à«€àª¤à«‡ àª¸à«‡àªŸ àª•àª°à«‹', 'ProszÄ™ poprawnie skonfigurowaÄ‡ oczekiwanÄ… bramÄ™ sms', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¾ Ð½Ð°Ð»Ð°ÑˆÑ‚ÑƒÐ¹Ñ‚Ðµ Ð¾Ñ‡Ñ–ÐºÑƒÐ²Ð°Ð½Ð¸Ð¹ ÑˆÐ»ÑŽÐ· sms', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨†à¨ªà¨£à©‡ à¨‰à¨®à©€à¨¦à¨µà¨¾à¨° SMS à¨—à©‡à¨Ÿà¨µà©‡ à¨¨à©‚à©° à¨¸à¨¹à©€ à¨¢à©°à¨— à¨¨à¨¾à¨² à¨¸à©ˆà¨Ÿ à¨…à¨ª à¨•à¨°à©‹', 'VÄƒ rugÄƒm sÄƒ configuraÈ›i corect poarta de aÈ™teptare pentru sms', 'á€™á€¾á€”á€ºá€™á€¾á€”á€ºá€€á€”á€ºá€€á€”á€ºá€žá€„á€ºá€·á€›á€²á€·á€™á€»á€¾á€±á€¬á€ºá€™á€¾á€”á€ºá€¸ sms á€€á€­á€¯á€á€¶á€á€«á€¸á€•á€±á€«á€€á€ºá€€á€­á€¯ set up á€€á€­á€¯ á€€á€»á€±á€¸á€‡á€°á€¸á€•á€¼á€¯.', 'Jowo gbe á»na áº¹nu sms ti o ti á¹£e yáº¹ ráº¹ siláº¹ tá»', 'Don Allah a kafa hanyar Æ™oÆ™arin sms da ake tsammani a daidai', NULL, NULL),
(447, 'already_exist', 'This data already exists in database. Please try another one.', 'à¦à¦‡ à¦¡à§‡à¦Ÿà¦¾ à¦¡à¦¾à¦Ÿà¦¾à¦¬à§‡à¦¸à§‡ à¦‡à¦¤à¦¿à¦®à¦§à§à¦¯à§‡ à¦¬à¦¿à¦¦à§à¦¯à¦®à¦¾à¦¨à¥¤ à¦…à¦¨à§à¦¯ à¦à¦•à¦Ÿà¦¿ à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à§à¦¨à¥¤', 'Esta informaciÃ³n ya existe en la base de datos. Por favor prueba con otro.', 'Ù‡Ø°Ù‡ Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ù…ÙˆØ¬ÙˆØ¯Ø© Ø¨Ø§Ù„ÙØ¹Ù„ ÙÙŠ Ù‚Ø§Ø¹Ø¯Ø© Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª. Ø§Ù„Ø±Ø¬Ø§Ø¡ Ù…Ø­Ø§ÙˆÙ„Ø© ØªØ¬Ø±Ø¨Ø© Ø£Ø®Ø±Ù‰.', 'à¤¡à¥‡à¤Ÿà¤¾à¤¬à¥‡à¤¸ à¤®à¥‡à¤‚ à¤¯à¤¹ à¤¡à¥‡à¤Ÿà¤¾ à¤ªà¤¹à¤²à¥‡ à¤¸à¥‡ à¤®à¥Œà¤œà¥‚à¤¦ à¤¹à¥ˆ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤•à¥‹à¤ˆ à¤¦à¥‚à¤¸à¤°à¤¾ à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚', 'ÚˆÛŒÙ¹Ø§ Ø¨ÛŒØ³ Ù…ÛŒÚº ÛŒÛ ÚˆÛŒÙ¹Ø§ Ù¾ÛÙ„Û’ ÛÛŒ Ù…ÙˆØ¬ÙˆØ¯ ÛÛ’. Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§ÛŒÚ© Ø§ÙˆØ± Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº.', 'è¿™ä¸ªæ•°æ®å·²ç»å­˜åœ¨äºŽæ•°æ®åº“ä¸­ã€‚ è¯·å°è¯•å¦ä¸€ä¸ªã€‚', 'ã“ã®ãƒ‡ãƒ¼ã‚¿ã¯ã™ã§ã«ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹ã«å­˜åœ¨ã—ã¾ã™ã€‚ åˆ¥ã®ã‚‚ã®ã‚’ãŠè©¦ã—ãã ã•ã„ã€‚', 'Estes dados jÃ¡ existem no banco de dados. Por favor, tente outro.', 'Ð­Ñ‚Ð¸ Ð´Ð°Ð½Ð½Ñ‹Ðµ ÑƒÐ¶Ðµ ÑÑƒÑ‰ÐµÑÑ‚Ð²ÑƒÑŽÑ‚ Ð² Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ…. ÐŸÐ¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ð¾Ð´Ð¸Ð½.', 'Ces donnÃ©es existent dÃ©jÃ  dans la base de donnÃ©es. Sil vous plaÃ®t essayer un autre.', 'ì´ ë°ì´í„°ëŠ” ì´ë¯¸ ë°ì´í„°ë² ì´ìŠ¤ì— ìžˆìŠµë‹ˆë‹¤. ë‹¤ë¥¸ ê²ƒì„ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'Diese Daten existieren bereits in der Datenbank. Bitte versuchen Sie es mit einem anderen.', 'Questi dati esistono giÃ  nel database. Si prega di provare un altro.', 'à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸™à¸µà¹‰à¸¡à¸µà¸­à¸¢à¸¹à¹ˆà¹à¸¥à¹‰à¸§à¹ƒà¸™à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥ à¹‚à¸›à¸£à¸”à¸¥à¸­à¸‡à¸­à¸µà¸à¸­à¸±à¸™à¸«à¸™à¸¶à¹ˆà¸‡', 'Ez az adat mÃ¡r lÃ©tezik az adatbÃ¡zisban. PrÃ³bÃ¡lj ki egyet.', 'Deze gegevens bestaan al in de database. Probeer een andere.', 'Hoc etiam existit in database notitia. Aliquam alia.', 'Data ini sudah ada di database. Silakan coba yang lain.', 'Bu veriler zaten veritabanÄ±nda mevcut. LÃ¼tfen baÅŸka bir tane deneyin.', 'Î‘Ï…Ï„Î¬ Ï„Î± Î´ÎµÎ´Î¿Î¼Î­Î½Î± Ï…Ï€Î¬ÏÏ‡Î¿Ï…Î½ Î®Î´Î· ÏƒÏ„Î· Î²Î¬ÏƒÎ· Î´ÎµÎ´Î¿Î¼Î­Î½Ï‰Î½. Î”Î¿ÎºÎ¹Î¼Î¬ÏƒÏ„Îµ Î¬Î»Î»Î¿.', 'Ø§ÛŒÙ† Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ù‚Ø¨Ù„Ø§ Ø¯Ø± Ù¾Ø§ÛŒÚ¯Ø§Ù‡ Ø¯Ø§Ø¯Ù‡ ÙˆØ¬ÙˆØ¯ Ø¯Ø§Ø±Ø¯. Ù„Ø·ÙØ§ ÛŒÚ©ÛŒ Ø¯ÛŒÚ¯Ø± Ø±Ø§ Ø§Ù…ØªØ­Ø§Ù† Ú©Ù†ÛŒØ¯', 'Data ini sudah wujud dalam pangkalan data. Sila cuba yang lain.', 'à°ˆ à°¡à±‡à°Ÿà°¾ à°‡à°ªà±à°ªà°Ÿà°¿à°•à±‡ à°¡à±‡à°Ÿà°¾à°¬à±‡à°¸à±à°²à±‹ à°‰à°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°°à±Šà°•à°¦à°¾à°¨à±à°¨à°¿ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿.', 'à®¤à®°à®µà¯ à®à®±à¯à®•à®©à®µà¯‡ à®¤à®°à®µà¯à®¤à¯à®¤à®³à®¤à¯à®¤à®¿à®²à¯ à®‰à®³à¯à®³à®¤à¯. à®¤à®¯à®µà¯à®šà¯†à®¯à¯à®¤à¯ à®µà¯‡à®±à¯Šà®°à¯ à®’à®©à¯à®±à¯ˆ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯.', 'àª¡à«‡àªŸàª¾ àª¡à«‡àªŸàª¾àª¬à«‡àªàª®àª¾àª‚ àª† àª¡à«‡àªŸàª¾ àªªàª¹à«‡àª²à«‡àª¥à«€ àª¹àª¾àªœàª° àª›à«‡. àª•à«ƒàªªàª¾ àª•àª°à«€ àª¬à«€àªœà«€ àª•à«‹àªˆàª¨à«‹ àªªà«àª°àª¯àª¾àª¸ àª•àª°à«‹.', 'Te dane juÅ¼ istniejÄ… w bazie danych. ProszÄ™ sprÃ³bowaÄ‡ innego.', 'Ð¦Ñ– Ð´Ð°Ð½Ñ– Ð²Ð¶Ðµ Ñ–ÑÐ½ÑƒÑŽÑ‚ÑŒ Ñƒ Ð±Ð°Ð·Ñ– Ð´Ð°Ð½Ð¸Ñ…. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ–Ð½ÑˆÐ¸Ð¹.', 'à¨‡à¨¹ à¨¡à©‡à¨Ÿà¨¾ à¨¡à©‡à¨Ÿà¨¾à¨¬à©‡à¨¸ à¨µà¨¿à©±à¨š à¨®à©Œà¨œà©‚à¨¦ à¨¹à©ˆ. à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¹à©‹à¨° à¨•à©‹à¨ˆ à¨•à©‹à¨¸à¨¼à¨¿à¨¸à¨¼ à¨•à¨°à©‹.', 'Aceste date existÄƒ deja Ã®n baza de date. ÃŽncearcÄƒ altul.', 'á€’á€® data á€•á€¼á€®á€¸á€žá€¬á€¸á€’á€±á€á€¬á€˜á€±á€·á€…á€›á€¾á€­á‹ á€¡á€á€¼á€¬á€¸á€á€¥á€®á€¸á€á€Šá€ºá€¸á€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«á‹', 'Data yi táº¹láº¹ wa ni ibi ipamá» data. Já»wá» á¹£e idanwo miiran.', 'Wannan bayanai sun riga sun kasance a cikin bayanai. Da fatan a gwada wani.', NULL, NULL),
(448, 'valid_file_format_doc', 'Document file format: pdf, .doc, .docx or .txt', 'à¦¡à¦•à§à¦®à§‡à¦¨à§à¦Ÿ à¦«à¦¾à¦‡à¦² à¦«à¦°à¦®à§‡à¦Ÿ: à¦ªà¦¿à¦¡à¦¿à¦à¦«, .à¦¡à¦•, .à¦¡à§‹à¦¸à¦¿à¦¸ à¦“à¦° .à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ', 'Formato de archivo de documento: pdf, .doc, .docx o .txt', 'ØªÙ†Ø³ÙŠÙ‚ Ù…Ù„Ù Ø§Ù„Ù…Ø³ØªÙ†Ø¯: Ø¨Ø¯Ù Ø£Ùˆ .doc Ø£Ùˆ .docx Ø£Ùˆ .txt', 'à¤¦à¤¸à¥à¤¤à¤¾à¤µà¥‡à¤œà¤¼ à¤«à¤¼à¤¾à¤‡à¤² à¤ªà¥à¤°à¤¾à¤°à¥‚à¤ª: à¤ªà¥€à¤¡à¥€à¤à¤«, .doc, .docx à¤¯à¤¾ .txt', 'Ø¯Ø³ØªØ§ÙˆÛŒØ² ÙØ§Ø¦Ù„ Ú©ÛŒ Ø´Ú©Ù„: Ù¾ÛŒ ÚˆÛŒ Ø§ÛŒÙØŒ .docØŒ .docx ÛŒØ§ .txt', 'æ–‡æ¡£æ–‡ä»¶æ ¼å¼ï¼špdfï¼Œ.docï¼Œ.docxæˆ–.txt', 'ãƒ‰ã‚­ãƒ¥ãƒ¡ãƒ³ãƒˆãƒ•ã‚¡ã‚¤ãƒ«å½¢å¼ï¼špdfã€.docã€.docxã€ã¾ãŸã¯.txt', 'Formato do arquivo de documento: pdf, .doc, .docx ou .txt', 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ð° Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°: pdf, .doc, .docx Ð¸Ð»Ð¸ .txt', 'Format de fichier de document: pdf, .doc, .docx ou .txt', 'ë¬¸ì„œ íŒŒì¼ í˜•ì‹ : pdf, .doc, .docx ë˜ëŠ” .txt', 'Dokumentdateiformat: pdf, .doc, .docx oder .txt', 'Formato del documento: pdf, .doc, .docx o .txt', 'à¸£à¸¹à¸›à¹à¸šà¸šà¹„à¸Ÿà¸¥à¹Œà¹€à¸­à¸à¸ªà¸²à¸£: pdf, .doc, .docx à¸«à¸£à¸·à¸­. txt', 'Dokumentum fÃ¡jlformÃ¡tum: pdf, .doc, .docx vagy .txt', 'Document bestandsformaat: pdf, .doc, .docx of .txt', 'Documentum formae q.e.: pdf, .doc, aut .docx .txt', 'Format file dokumen: pdf, .doc, .docx, atau .txt', 'Belge dosyasÄ± biÃ§imi: pdf, .doc, .docx veya .txt', 'ÎœÎ¿ÏÏ†Î® Î±ÏÏ‡ÎµÎ¯Î¿Ï… ÎµÎ³Î³ÏÎ¬Ï†Î¿Ï…: pdf, .doc, .docx Î® .txt', 'ÙØ±Ù…Øª ÙØ§ÛŒÙ„ Ø§Ø³Ù†Ø§Ø¯: pdfØŒ .docØŒ .docx ÛŒØ§ .txt', 'Format fail dokumen: pdf, .doc, .docx atau .txt', 'à°¡à°¾à°•à±à°¯à±à°®à±†à°‚à°Ÿà± à°«à±ˆà°²à± à°«à°¾à°°à±à°®à°¾à°Ÿà±: pdf, .doc, .docx à°²à±‡à°¦à°¾ .txt', 'à®†à®µà®£ à®•à¯‹à®ªà¯à®ªà¯ à®µà®Ÿà®¿à®µà®®à¯: pdf, .doc, .docx à®…à®²à¯à®²à®¤à¯ .txt', 'àª¦àª¸à«àª¤àª¾àªµà«‡àªœ àª«àª¾àª‡àª² àª«à«‹àª°à«àª®à«‡àªŸ: àªªà«€àª¡à«€àªàª«, .àª¡à«‹àª•, ..docx àª…àª¥àªµàª¾ .txt', 'Format pliku dokumentu: pdf, .doc, .docx lub .txt', 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ñƒ Ð´Ð¾ÐºÑƒÐ¼ÐµÐ½Ñ‚Ð°: pdf, .doc, .docx Ð°Ð±Ð¾ .txt', 'à¨¦à¨¸à¨¤à¨¾à¨µà©‡à¨œà¨¼ à¨«à¨¾à¨ˆà¨² à¨«à¨¾à¨°à¨®à©ˆà¨Ÿ: à¨ªà©€ à¨¡à©€ à¨à¨«, .à¨¡à©Œà¨•, .à¨¡à©Œà¨•à¨¸ à¨œà¨¾à¨‚ .txt', 'Formatul fiÈ™ierului documentului: pdf, .doc, .docx sau .txt', 'á€…á€¬á€›á€½á€€á€ºá€…á€¬á€á€™á€ºá€¸á€–á€­á€¯á€„á€ºá€€á€­á€¯ format á€”á€²á€·: pdf, .doc, .docx á€žá€­á€¯á€·á€™á€Ÿá€¯á€á€º .txt', 'Faili faili faili: pdf, .doc, .docx or .txt', 'Tsarin fayil na fayil: pdf, .doc, .docx ko .txt', NULL, NULL),
(453, 'valid_file_format_img', 'Image file format: .jpg, .jpeg, .png or .gif', 'à¦‡à¦®à§‡à¦œ à¦«à¦¾à¦‡à¦² à¦«à¦°à¦®à§‡à¦Ÿ: .à¦œà§‡à¦ªà¦¿à¦œà¦¿, .à¦œà§‡à¦ªà§‡à¦—, .à¦ªà¦‚ à¦“à¦° .à¦—à¦¿à¦«à¥¤', 'Formato de archivo de imagen: .jpg, .jpeg, .png o .gif', 'ØªÙ†Ø³ÙŠÙ‚ Ù…Ù„Ù Ø§Ù„ØµÙˆØ±Ø©: .jpg Ø£Ùˆ .jpeg Ø£Ùˆ ÙŠÙ†Øº Ø£Ùˆ .gif', 'à¤›à¤µà¤¿ à¤«à¤¼à¤¾à¤‡à¤² à¤ªà¥à¤°à¤¾à¤°à¥‚à¤ª: .jpg, .jpeg, .png à¤¯à¤¾ .gif', 'ØªØµÙˆÛŒØ±ÛŒ ÙØ§Ø¦Ù„ Ú©ÛŒ Ø´Ú©Ù„: .jpgØŒ .jpegØŒ .png ÛŒØ§ .gif', 'å›¾åƒæ–‡ä»¶æ ¼å¼ï¼š.jpgï¼Œ.jpegï¼Œ.pngæˆ–.gif', 'ç”»åƒãƒ•ã‚¡ã‚¤ãƒ«å½¢å¼ï¼š.jpgã€.jpegã€.pngã€.gif', 'Formato do arquivo de imagem: .jpg, .jpeg, .png ou .gif', 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ð° Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ñ: .jpg, .jpeg, .png Ð¸Ð»Ð¸ .gif', 'Format de fichier image: .jpg, .jpeg, .png ou .gif', 'ì´ë¯¸ì§€ íŒŒì¼ í˜•ì‹ : .jpg, .jpeg, .png ë˜ëŠ” .gif', 'Bilddateiformat: .jpg, .jpeg, .png oder .gif', 'Formato file immagine: .jpg, .jpeg, .png o .gif', 'à¸£à¸¹à¸›à¹à¸šà¸šà¹„à¸Ÿà¸¥à¹Œà¸£à¸¹à¸›à¸ à¸²à¸ž: .jpg, .jpeg, .png à¸«à¸£à¸·à¸­. gif', 'KÃ©pfÃ¡jl formÃ¡tuma: .jpg, .jpeg, .png vagy .gif', 'Afbeeldingsbestandsindeling: .jpg, .jpeg, .png of .gif', 'Image formae q.e.: .jpg, .jpeg, aut png .gif', 'Format file gambar: .jpg, .jpeg, .png, atau .gif', 'Resim dosyasÄ± biÃ§imi: .jpg, .jpeg, .png veya .gif', 'ÎœÎ¿ÏÏ†Î® Î±ÏÏ‡ÎµÎ¯Î¿Ï… ÎµÎ¹ÎºÏŒÎ½Î±Ï‚: .jpg, .jpeg, .png Î® .gif', 'ÙØ±Ù…Øª ÙØ§ÛŒÙ„ ØªØµÙˆÛŒØ±ÛŒ: .jpgØŒ .jpegØŒ .png ÛŒØ§ .gif', 'Format fail imej: .jpg, .jpeg, .png atau .gif', 'à°‡à°®à±‡à°œà± à°«à±ˆà°²à± à°«à°¾à°°à±à°®à°¾à°Ÿà±: .jpg, .jpeg, .png à°²à±‡à°¦à°¾ .gif', 'à®ªà®Ÿ à®•à¯‹à®ªà¯à®ªà¯ à®µà®Ÿà®¿à®µà®®à¯ˆà®ªà¯à®ªà¯: .jpg, .jpeg, .png à®…à®²à¯à®²à®¤à¯. Gif', 'àª›àª¬à«€ àª«àª¾àª‡àª² àª«à«‹àª°à«àª®à«‡àªŸ: .jpg, .jpeg, .png àª…àª¥àªµàª¾ .gif', 'Format pliku obrazu: .jpg, .jpeg, .png lub .gif', 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ñƒ Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½ÑŒ: .jpg, .jpeg, .png Ð°Ð±Ð¾ .gif', 'à¨šà¨¿à©±à¨¤à¨° à¨«à¨¾à¨‡à¨² à¨«à¨¾à¨°à¨®à©ˆà¨Ÿ: .jpg, .jpeg, .png à¨œà¨¾à¨‚ .gif', 'Formatul fiÈ™ierului imagine: .jpg, .jpeg, .png sau .gif', 'image file format á€”á€²á€·: .jpg, á€á€½á€±á€–á€¼á€…á€ºá€á€²á€· JPEG, .png á€žá€­á€¯á€·á€™á€Ÿá€¯á€á€º .gif', 'Aworan faili kika: .jpg, .jpeg, .png tabi .gif', 'Tsarin fayil na hotuna: .jpg, .jpeg, .png ko .gif', NULL, NULL),
(455, 'select_valid_file_format', 'Please select a valid file format.', 'à¦à¦•à¦Ÿà¦¿ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦«à¦¾à¦‡à¦² à¦«à¦°à¦®à§‡à¦Ÿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤', 'Seleccione un formato de archivo vÃ¡lido.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ­Ø¯ÙŠØ¯ ØªÙ†Ø³ÙŠÙ‚ Ù…Ù„Ù ØµØ§Ù„Ø­.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤µà¥ˆà¤§ à¤«à¤¼à¤¾à¤‡à¤² à¤ªà¥à¤°à¤¾à¤°à¥‚à¤ª à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§ÛŒÚ© Ø¯Ø±Ø³Øª ÙØ§Ø¦Ù„ Ú©ÛŒ Ø´Ú©Ù„ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº.', 'è¯·é€‰æ‹©ä¸€ä¸ªæœ‰æ•ˆçš„æ–‡ä»¶æ ¼å¼ã€‚', 'æœ‰åŠ¹ãªãƒ•ã‚¡ã‚¤ãƒ«å½¢å¼ã‚’é¸æŠžã—ã¦ãã ã•ã„ã€‚', 'Selecione um formato de arquivo vÃ¡lido.', 'Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´Ð¾Ð¿ÑƒÑÑ‚Ð¸Ð¼Ñ‹Ð¹ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ð°.', 'Veuillez sÃ©lectionner un format de fichier valide', 'ìœ íš¨í•œ íŒŒì¼ í˜•ì‹ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.', 'Bitte wÃ¤hlen Sie ein gÃ¼ltiges Dateiformat.', 'Si prega di selezionare un formato di file valido.', 'à¹‚à¸›à¸£à¸”à¹€à¸¥à¸·à¸­à¸à¸£à¸¹à¸›à¹à¸šà¸šà¹„à¸Ÿà¸¥à¹Œà¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rjÃ¼k, vÃ¡lasszon egy Ã©rvÃ©nyes fÃ¡jlformÃ¡tumot.', 'Selecteer alstublieft een geldig bestandsformaat.', 'Placere eligere formae q.e. valet.', 'Silahkan pilih format file yang valid.', 'LÃ¼tfen geÃ§erli bir dosya biÃ§imi seÃ§in.', 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Î¼Î¹Î± Î­Î³ÎºÏ…ÏÎ· Î¼Î¿ÏÏ†Î® Î±ÏÏ‡ÎµÎ¯Î¿Ï….', 'Ù„Ø·ÙØ§ ÛŒÚ© ÙØ±Ù…Øª ÙØ§ÛŒÙ„ Ù…Ø¹ØªØ¨Ø± Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯', 'Sila pilih format fail yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à±à°¬à°¾à°Ÿà± à°…à°¯à±à°¯à±‡ à°«à±ˆà°²à± à°†à°•à±ƒà°¤à°¿à°¨à°¿ à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®šà¯†à®²à¯à®²à¯à®ªà®Ÿà®¿à®¯à®¾à®•à¯à®®à¯ à®•à¯‹à®ªà¯à®ªà¯ à®µà®Ÿà®¿à®µà®¤à¯à®¤à¯ˆ à®¤à¯‡à®°à¯à®¨à¯à®¤à¯†à®Ÿà¯à®•à¯à®•à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª•à«‹àªˆ àª®àª¾àª¨à«àª¯ àª«àª¾àª‡àª² àª«à«‹àª°à«àª®à«‡àªŸ àªªàª¸àª‚àª¦ àª•àª°à«‹.', 'Wybierz prawidÅ‚owy format pliku.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð¸Ð±ÐµÑ€Ñ–Ñ‚ÑŒ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¸Ð¹ Ñ„Ð¾Ñ€Ð¼Ð°Ñ‚ Ñ„Ð°Ð¹Ð»Ñƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à©±à¨• à¨µà©ˆà¨§ à¨«à¨¾à¨‡à¨² à¨«à¨¾à¨°à¨®à©ˆà¨Ÿ à¨šà©à¨£à©‹.', 'SelectaÈ›i un format de fiÈ™ier valid.', 'á€á€­á€¯á€„á€ºá€œá€¯á€¶á€žá€±á€¬á€–á€­á€¯á€„á€º format á€€á€­á€¯á€›á€½á€±á€¸á€á€»á€šá€ºá€•á€«á‹', 'Já»wá» yan á»na kika faili ti o wulo.', 'Da fatan za a zaÉ“i tsarin fayil mai aiki.', NULL, NULL),
(467, 'select_a_file', 'Please select a valid file.', 'à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦à¦•à¦Ÿà¦¿ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦«à¦¾à¦‡à¦² à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤', 'Seleccione un archivo vÃ¡lido.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ­Ø¯ÙŠØ¯ Ù…Ù„Ù ØµØ§Ù„Ø­.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤®à¤¾à¤¨à¥à¤¯ à¤«à¤¼à¤¾à¤‡à¤² à¤šà¥à¤¨à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§ÛŒÚ© Ø¯Ø±Ø³Øª ÙØ§Ø¦Ù„ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº.', 'è¯·é€‰æ‹©ä¸€ä¸ªæœ‰æ•ˆçš„æ–‡ä»¶ã€‚', 'æœ‰åŠ¹ãªãƒ•ã‚¡ã‚¤ãƒ«ã‚’é¸æŠžã—ã¦ãã ã•ã„ã€‚', 'Selecione um arquivo vÃ¡lido.', 'Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ñ„Ð°Ð¹Ð».', 'Veuillez sÃ©lectionner un fichier valide', 'ì˜¬ë°”ë¥¸ íŒŒì¼ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.', 'Bitte wÃ¤hlen Sie eine gÃ¼ltige Datei.', 'Si prega di selezionare un file valido.', 'à¹‚à¸›à¸£à¸”à¹€à¸¥à¸·à¸­à¸à¹„à¸Ÿà¸¥à¹Œà¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rjÃ¼k, vÃ¡lasszon egy Ã©rvÃ©nyes fÃ¡jlt.', 'Selecteer alstublieft een geldig bestand.', 'Placere eligere file valet.', 'Silahkan pilih file yang valid.', 'LÃ¼tfen geÃ§erli bir dosya seÃ§in.', 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Î­Î½Î± Î­Î³ÎºÏ…ÏÎ¿ Î±ÏÏ‡ÎµÎ¯Î¿.', 'Ù„Ø·ÙØ§ ÛŒÚ© ÙØ§ÛŒÙ„ Ù…Ø¹ØªØ¨Ø± Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯', 'Sila pilih fail yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à±à°¬à°¾à°Ÿà± à°…à°¯à±à°¯à±‡ à°«à±ˆà°²à±à°¨à± à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®šà¯†à®²à¯à®²à¯à®ªà®Ÿà®¿à®¯à®¾à®•à¯à®®à¯ à®•à¯‹à®ªà¯à®ªà¯ˆà®¤à¯ à®¤à¯‡à®°à¯à®¨à¯à®¤à¯†à®Ÿà¯à®•à¯à®•à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª•à«‹àªˆ àª®àª¾àª¨à«àª¯ àª«àª¾àª‡àª² àªªàª¸àª‚àª¦ àª•àª°à«‹.', 'ProszÄ™ wybraÄ‡ poprawny plik.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð¸Ð±ÐµÑ€Ñ–Ñ‚ÑŒ Ð´Ñ–Ð¹ÑÐ½Ð¸Ð¹ Ñ„Ð°Ð¹Ð».', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à©±à¨• à¨µà©ˆà¨§ à¨«à¨¾à¨‡à¨² à¨šà©à¨£à©‹.', 'SelectaÈ›i un fiÈ™ier valid.', 'á€á€­á€¯á€„á€ºá€œá€¯á€¶á€žá€±á€¬á€–á€­á€¯á€„á€ºá€€á€­á€¯á€›á€½á€±á€¸á€•á€±á€¸á€•á€«á‹', 'Já»wá» yan faili ti o wulo.', 'Da fatan a zaÉ“i fayil mai aiki.', NULL, NULL),
(477, 'input_valid_amount', 'Please input valid amount.', 'à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦ªà¦°à¦¿à¦®à¦¾à¦£ à¦‡à¦¨à¦ªà§à¦Ÿ à¦•à¦°à§à¦¨à¥¤', 'Por favor ingrese un monto vÃ¡lido.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ù…Ø¨Ù„Øº ØµØ§Ù„Ø­.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤µà¥ˆà¤§ à¤°à¤¾à¤¶à¤¿ à¤‡à¤¨à¤ªà¥à¤Ÿ à¤•à¤°à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§Ù† Ù¾Ù¹ Ø¯Ø±Ø³Øª Ø±Ù‚Ù….', 'è¯·è¾“å…¥æœ‰æ•ˆé‡‘é¢ã€‚', 'æœ‰åŠ¹ãªé‡‘é¡ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'Digite o valor vÃ¡lido.', 'Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½ÑƒÑŽ ÑÑƒÐ¼Ð¼Ñƒ.', 'Veuillez entrer un montant valide', 'ìœ íš¨í•œ ê¸ˆì•¡ì„ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte geben Sie den gÃ¼ltigen Betrag ein.', 'Si prega di inserire un importo valido.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™à¸ˆà¸³à¸™à¸§à¸™à¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rem adja meg az Ã©rvÃ©nyes Ã¶sszeget.', 'Voer een geldig bedrag in.', 'Initus placere ratum tantum.', 'Mohon masukan jumlah yang benar.', 'LÃ¼tfen geÃ§erli tutarÄ± giriniz.', 'ÎšÎ±Ï„Î±Ï‡Ï‰ÏÎ¯ÏƒÏ„Îµ Î­Î³ÎºÏ…ÏÎ¿ Ï€Î¿ÏƒÏŒ.', 'Ù„Ø·ÙØ§ Ù…Ù‚Ø¯Ø§Ø± Ù…Ø¹ØªØ¨Ø± ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯', 'Sila masukkan jumlah yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à°¨à°¿ à°®à±Šà°¤à±à°¤à°‚ à°‡à°¨à±à°ªà±à°Ÿà± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®¤à®¯à®µà¯à®šà¯†à®¯à¯à®¤à¯ à®‰à®³à¯à®³à¯€à®Ÿà¯ à®šà¯†à®²à¯à®²à¯à®ªà®Ÿà®¿à®¯à®¾à®© à®¤à¯Šà®•à¯ˆ.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª®àª¾àª¨à«àª¯ àª°àª•àª® àª‡àª¨àªªà«àªŸ àª•àª°à«‹.', 'WprowadÅº prawidÅ‚owÄ… kwotÄ™.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð´Ñ–Ð¹ÑÐ½Ñƒ ÑÑƒÐ¼Ñƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¯à©‹à¨— à¨°à¨•à¨® à¨‡à©°à¨ªà©à©±à¨Ÿ à¨•à¨°à©‹.', 'IntroduceÈ›i suma validÄƒ.', 'input á€€á€­á€¯á€á€›á€¬á€¸á€á€„á€ºá€„á€½á€±á€•á€™á€¬á€á€•á€«á‹', 'Já»wá» iye owo titáº¹ sii.', 'Da fatan shigar da adadin shigarwa.', NULL, NULL),
(552, 'input_valid_payment_setting', 'Please input correct payment setting.', 'à¦ªà§à¦²à¦¿à¦œ à¦‡à¦¨à¦ªà§à¦Ÿ à¦•à¦¾à¦°à§‡à¦•à§à¦Ÿ à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à§‡à¦Ÿà¦¿à¦‚à¥¤', 'Ingrese la configuraciÃ³n de pago correcta.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø¥Ø¹Ø¯Ø§Ø¯ Ø§Ù„Ø¯ÙØ¹ Ø§Ù„ØµØ­ÙŠØ­.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤¸à¤¹à¥€ à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤— à¤‡à¤¨à¤ªà¥à¤Ÿ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Ø¦Û’ Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ø¯Ø±Ø³Øª Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©ÛŒ ØªØ±ØªÛŒØ¨ Ù…ÛŒÚº Ø§Ù† Ù¾Ù¹', 'è¯·è¾“å…¥æ­£ç¡®çš„ä»˜æ¬¾è®¾ç½®ã€‚', 'æ­£ã—ã„æ”¯æ‰•ã„è¨­å®šã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'Por favor, insira a configuraÃ§Ã£o de pagamento correta.', 'Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½ÑƒÑŽ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÑƒ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð°.', 'Veuillez entrer le paramÃ¨tre de paiement correct.', 'ì˜¬ë°”ë¥¸ ì§€ë¶ˆ ì„¤ì •ì„ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte geben Sie die richtige Zahlungseinstellung ein.', 'Si prega di inserire le impostazioni di pagamento corrette.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rjÃ¼k, adja meg a helyes fizetÃ©si beÃ¡llÃ­tÃ¡st.', 'Voer de juiste betalingsinstelling in.', 'Initus bene placent mercedem occasum.', 'Harap masukan pengaturan pembayaran yang benar.', 'LÃ¼tfen doÄŸru Ã¶deme ayarÄ±nÄ± giriniz.', 'Î•Î¹ÏƒÎ±Î³Î¬Î³ÎµÏ„Îµ Ï„Î· ÏƒÏ‰ÏƒÏ„Î® ÏÏÎ¸Î¼Î¹ÏƒÎ· Ï€Î»Î·ÏÏ‰Î¼Î®Ï‚.', 'Ù„Ø·ÙØ§ ØªÙ†Ø¸ÛŒÙ… Ù¾Ø±Ø¯Ø§Ø®Øª Ø¯Ø±Ø³Øª Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila masukkan tetapan pembayaran yang betul.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°¸à°°à±ˆà°¨ à°šà±†à°²à±à°²à°¿à°‚à°ªà± à°¸à±†à°Ÿà±à°Ÿà°¿à°‚à°—à±à°¨à± à°‡à°¨à±à°ªà±à°Ÿà± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®šà®°à®¿à®¯à®¾à®© à®•à®Ÿà¯à®Ÿà®£ à®…à®®à¯ˆà®ªà¯à®ªà¯ˆ à®‰à®³à¯à®³à®¿à®Ÿà¯à®•.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª¯à«‹àª—à«àª¯ àªšà«àª•àªµàª£à«€ àª¸à«‡àªŸàª¿àª‚àª— àª‡àª¨àªªà«àªŸ àª•àª°à«‹.', 'WprowadÅº poprawne ustawienie pÅ‚atnoÅ›ci.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ð¸Ð¹ Ð¿Ð°Ñ€Ð°Ð¼ÐµÑ‚Ñ€ Ð¾Ð¿Ð»Ð°Ñ‚Ð¸.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¸à¨¹à©€ à¨­à©à¨—à¨¤à¨¾à¨¨ à¨¸à©ˆà¨Ÿà¨¿à©°à¨— à¨‡à¨¨à¨ªà©à¨Ÿ à¨•à¨°à©‹.', 'IntroduceÈ›i setarea de platÄƒ corectÄƒ.', 'input á€€á€­á€¯á€™á€¾á€”á€ºá€€á€”á€ºá€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯ setting á€€á€­á€¯á€•á€«á‹', 'Já»wá» á¹£e ipinnu eto sisan ti o tá».', 'Da fatan a shigar da saitin biya daidai.', NULL, NULL),
(556, 'in_demo_db_backup', 'In demo database backp is disabled.', 'à¦¡à§‡à¦®à§‹ à¦¡à§‡à¦Ÿà¦¾à¦¬à§‡à¦¸ à¦¬à§à¦¯à¦¾à¦•à¦†à¦ªà§‡ à¦¬à¦¨à§à¦§ à¦•à¦°à¦¾ à¦†à¦›à§‡à¥¤', 'En la copia de seguridad de la base de datos demo estÃ¡ desactivado', 'ÙÙŠ Ø§Ù„Ù†Ø³Ø® Ø§Ù„Ø§Ø­ØªÙŠØ§Ø·ÙŠ Ù‚Ø§Ø¹Ø¯Ø© Ø§Ù„Ø¨ÙŠØ§Ù†Ø§Øª Ø§Ù„ØªØ¬Ø±ÙŠØ¨ÙŠ Ù…Ø¹Ø·Ù„.', 'à¤¡à¥‡à¤®à¥‹ à¤¡à¥‡à¤Ÿà¤¾à¤¬à¥‡à¤¸ à¤¬à¥ˆà¤•à¤…à¤ª à¤®à¥‡à¤‚ à¤…à¤•à¥à¤·à¤® à¤¹à¥ˆ', 'ÚˆÛŒÙ…Ùˆ ÚˆÛŒÙ¹Ø§ Ø¨ÛŒØ³ Ú©Ø§ Ø¨ÛŒÚ© Ø§Ù¾ ØºÛŒØ± ÙØ¹Ø§Ù„ ÛÛ’.', 'åœ¨æ¼”ç¤ºæ•°æ®åº“ä¸­ï¼Œå¤‡ä»½è¢«ç¦ç”¨ã€‚', 'ãƒ‡ãƒ¢ã§ã¯ã€ãƒ‡ãƒ¼ã‚¿ãƒ™ãƒ¼ã‚¹ã®ãƒãƒƒã‚¯ã‚¢ãƒƒãƒ—ãŒç„¡åŠ¹ã«ãªã£ã¦ã„ã¾ã™ã€‚', 'No backup do banco de dados demo estÃ¡ desativado.', 'Ð’ Ð´ÐµÐ¼Ð¾Ð½ÑÑ‚Ñ€Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð¹ Ð±Ð°Ð·Ðµ Ð´Ð°Ð½Ð½Ñ‹Ñ… Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ð¾Ðµ ÐºÐ¾Ð¿Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð¸Ðµ Ð¾Ñ‚ÐºÐ»ÑŽÑ‡ÐµÐ½Ð¾.', 'Dans la sauvegarde de base de donnÃ©es dÃ©mo est dÃ©sactivÃ©.', 'ë°ëª¨ì—ì„œ ë°ì´í„°ë² ì´ìŠ¤ ë°±ì—…ì´ ë¹„í™œì„±í™”ë˜ì—ˆìŠµë‹ˆë‹¤.', 'In der Demo ist die Datenbanksicherung deaktiviert.', 'Nel backup del database demo Ã¨ disabilitato.', 'à¹ƒà¸™à¸à¸²à¸£à¸ªà¸³à¸£à¸­à¸‡à¸à¸²à¸™à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸•à¸±à¸§à¸­à¸¢à¹ˆà¸²à¸‡à¸–à¸¹à¸à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™', 'A demo adatbÃ¡zis-mentÃ©s le van tiltva.', 'In demo-database is back-up uitgeschakeld.', 'In demo database tergum is disabled.', 'Dalam backup database demo dinonaktifkan.', 'Demo veritabanÄ±nda yedekleme devre dÄ±ÅŸÄ± bÄ±rakÄ±ldÄ±.', 'Î£Ï„Î·Î½ ÎµÏ†ÎµÎ´ÏÎ¹ÎºÎ® Î²Î¬ÏƒÎ· Î´ÎµÎ´Î¿Î¼Î­Î½Ï‰Î½ ÎµÏ€Î¯Î´ÎµÎ¹Î¾Î·Ï‚ ÎµÎ¯Î½Î±Î¹ Î±Ï€ÎµÎ½ÎµÏÎ³Î¿Ï€Î¿Î¹Î·Î¼Î­Î½Î·.', 'Ø¯Ø± Ù†Ø³Ø®Ù‡ Ù¾Ø´ØªÛŒØ¨Ø§Ù† ØªÙ‡ÛŒÙ‡ Ù†Ø³Ø®Ù‡ ÛŒ Ù†Ù…Ø§ÛŒØ´ÛŒ ØºÛŒØ± ÙØ¹Ø§Ù„ Ø´Ø¯Ù‡ Ø§Ø³Øª.', 'Dalam sandaran pangkalan data demo dilumpuhkan.', 'à°¡à±†à°®à±‹ à°¡à±‡à°Ÿà°¾à°¬à±‡à°¸à± à°¬à±à°¯à°¾à°•à°ªà± à°¡à°¿à°¸à±‡à°¬à±à°²à±.', 'à®Ÿà¯†à®®à¯‹ à®¤à®°à®µà¯à®¤à¯à®¤à®³ à®•à®¾à®ªà¯à®ªà¯ à®‰à®³à¯à®³ à®®à¯à®Ÿà®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà¯à®³à¯à®³à®¤à¯.', 'àª¡à«‡àª®à«‹ àª¡à«‡àªŸàª¾àª¬à«‡àª¸ àª¬à«‡àª•àª…àªª àª®àª¾àª‚ àª…àª•à«àª·àª® àª›à«‡.', 'W kopii zapasowej bazy danych demo jest wyÅ‚Ä…czone.', 'Ð£ Ð´ÐµÐ¼Ð¾-Ð±Ð°Ð·Ñ– Ð´Ð°Ð½Ð¸Ñ… Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ðµ ÐºÐ¾Ð¿Ñ–ÑŽÐ²Ð°Ð½Ð½Ñ Ð²Ð¸Ð¼ÐºÐ½ÐµÐ½Ð¾.', 'à¨¡à©ˆà¨®à©‹ à¨¡à¨¾à¨Ÿà¨¾à¨¬à©‡à¨¸ à¨¬à©ˆà¨•à¨…à©±à¨ª à¨…à¨¯à©‹à¨— à¨¹à©ˆ.', 'ÃŽn baza de date demonstrativÄƒ, copia de rezervÄƒ este dezactivatÄƒ.', 'á€žá€›á€¯á€•á€ºá€•á€¼á€’á€±á€á€¬á€˜á€±á€·á€…á€™á€¾á€¬á€á€±á€¬á€· backup á€œá€¯á€•á€ºá€‘á€¬á€¸á€€á€­á€¯á€•á€­á€á€ºá€‘á€¬á€¸á€žá€Šá€ºá‹', 'Ni ipamá» afáº¹yinti ipamá» jáº¹ alaabo.', 'A cikin dimbin bayanan bayanan yanar gizo an kashe.', NULL, NULL),
(557, 'this_room_already_allocated', 'This room already allocated at this time.', 'à¦à¦‡ à¦°à§à¦®à§‡ à¦‡à¦¤à¦¿à¦®à¦§à§à¦¯à§‡ à¦à¦‡ à¦¸à¦®à¦¯à¦¼à§‡ à¦¬à¦°à¦¾à¦¦à§à¦¦ à¦•à¦°à¦¾ à¦†à¦›à§‡à¥¤', 'Esta habitaciÃ³n ya estÃ¡ asignada en este momento.', 'Ù‡Ø°Ù‡ Ø§Ù„ØºØ±ÙØ© Ø§Ù„Ù…Ø®ØµØµØ© Ø¨Ø§Ù„ÙØ¹Ù„ ÙÙŠ Ù‡Ø°Ø§ Ø§Ù„ÙˆÙ‚Øª.', 'à¤‡à¤¸ à¤•à¤®à¤°à¥‡ à¤®à¥‡à¤‚ à¤ªà¤¹à¤²à¥‡ à¤¸à¥‡ à¤¹à¥€ à¤‡à¤¸ à¤¸à¤®à¤¯ à¤†à¤µà¤‚à¤Ÿà¤¿à¤¤ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ à¤¹à¥ˆà¥¤', 'Ø§Ø³ Ú©Ù…Ø±Û’ Ú©Ùˆ Ø§Ø³ ÙˆÙ‚Øª Ù¾ÛÙ„Û’ Ù…Ø®ØªØµ Ú©Ø±Ø¯ÛŒØ§ Ú¯ÛŒØ§ ÛÛ’.', 'è¿™ä¸ªæˆ¿é—´å·²ç»åœ¨è¿™ä¸ªæ—¶å€™åˆ†é…äº†ã€‚', 'ã“ã®éƒ¨å±‹ã¯ã“ã®æ™‚ç‚¹ã§ã™ã§ã«å‰²ã‚Šå½“ã¦ã‚‰ã‚Œã¦ã„ã¾ã™ã€‚', 'Este quarto jÃ¡ foi alocado neste momento.', 'Ð­Ñ‚Ð° ÐºÐ¾Ð¼Ð½Ð°Ñ‚Ð° ÑƒÐ¶Ðµ Ð²Ñ‹Ð´ÐµÐ»ÐµÐ½Ð° Ð² ÑÑ‚Ð¾ Ð²Ñ€ÐµÐ¼Ñ.', 'Cette piÃ¨ce est dÃ©jÃ  allouÃ©e Ã  ce moment.', 'ì´ ë°©ì€ ì´ë¯¸ì´ ì‹œê°„ì— í• ë‹¹ë˜ì—ˆìŠµë‹ˆë‹¤.', 'Dieses Zimmer ist zu dieser Zeit bereits vergeben.', 'Questa stanza Ã¨ giÃ  stata assegnata in questo momento.', 'à¸«à¹‰à¸­à¸‡à¸™à¸µà¹‰à¸¡à¸µà¸à¸²à¸£à¸ˆà¸±à¸”à¸ªà¸£à¸£à¹„à¸§à¹‰à¹à¸¥à¹‰à¸§à¹ƒà¸™à¸‚à¸“à¸°à¸™à¸µà¹‰', 'Ez a szoba mÃ¡r kiosztott ebben az idÅ‘ben.', 'Deze kamer is al toegewezen op dit moment.', 'Hic locus iam ante hoc tempus partita imperia.', 'Kamar ini sudah dialokasikan saat ini.', 'Bu oda zaten bu saatte tahsis edilmiÅŸ.', 'Î‘Ï…Ï„ÏŒ Ï„Î¿ Î´Ï‰Î¼Î¬Ï„Î¹Î¿ Î­Ï‡ÎµÎ¹ Î®Î´Î· Î´Î¹Î±Ï„ÎµÎ¸ÎµÎ¯ Î±Ï…Ï„Î® Ï„Î· ÏƒÏ„Î¹Î³Î¼Î®.', 'Ø§ÛŒÙ† Ø§ØªØ§Ù‚ Ø¯Ø± Ø­Ø§Ù„ Ø­Ø§Ø¶Ø± Ø§Ø®ØªØµØ§Øµ Ø¯Ø§Ø¯Ù‡ Ø´Ø¯Ù‡ Ø§Ø³Øª.', 'Bilik ini sudah diperuntukkan pada masa ini.', 'à°ˆ à°—à°¦à°¿ à°‡à°ªà±à°ªà°Ÿà°¿à°•à±‡ à°ˆ à°¸à°®à°¯à°‚à°²à±‹ à°•à±‡à°Ÿà°¾à°¯à°¿à°‚à°šà°¬à°¡à°¿à°‚à°¦à°¿.', 'à®‡à®¨à¯à®¤ à®…à®±à¯ˆ à®à®±à¯à®•à®©à®µà¯‡ à®‡à®¨à¯à®¤ à®¨à¯‡à®°à®¤à¯à®¤à®¿à®²à¯ à®’à®¤à¯à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà¯à®³à¯à®³à®¤à¯.', 'àª† àª–àª‚àª¡ àªªàª¹à«‡àª²à«‡àª¥à«€ àªœ àª† àª¸àª®àª¯à«‡ àª«àª¾àª³àªµàªµàª¾àª®àª¾àª‚ àª†àªµà«àª¯à«‹ àª›à«‡.', 'Ten pokÃ³j zostaÅ‚ juÅ¼ przydzielony w tym momencie.', 'Ð¦ÐµÐ¹ Ð½Ð¾Ð¼ÐµÑ€ ÑƒÐ¶Ðµ Ð²Ð¸Ð´Ñ–Ð»ÐµÐ½Ð¸Ð¹ Ð² Ñ†ÐµÐ¹ Ñ‡Ð°Ñ.', 'à¨‡à¨¹ à¨•à¨®à¨°à¨¾ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨¹à©€ à¨‡à¨¸ à¨¸à¨®à©‡à¨‚ à¨¨à¨¿à¨°à¨§à¨¾à¨°à¨¤ à¨•à©€à¨¤à¨¾ à¨—à¨¿à¨† à¨¹à©ˆ.', 'AceastÄƒ camerÄƒ deja alocatÄƒ Ã®n acest moment.', 'á€’á€®á€¡á€á€”á€ºá€¸á€€á€•á€¼á€®á€¸á€žá€¬á€¸á€¤á€¡á€á€»á€­á€”á€ºá€á€½á€„á€ºá€á€½á€²á€á€±á‹', 'Yara yii ti á¹£etoto ni akoko yii.', 'Wannan dakin da aka riga aka ba shi a wannan lokaci.', NULL, NULL),
(558, 'only_student_can_submit', 'Only student can submit assignment.', 'à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦›à¦¾à¦¤à§à¦°  à¦à¦¸à¦¾à¦‡à¦¨à¦®à§‡à¦¨à§à¦Ÿ à¦œà¦®à¦¾ à¦¦à¦¿à¦¤à§‡ à¦ªà¦¾à¦°à§‡à¦¨à¥¤', 'Solo el alumno puede enviar una tarea.', 'ÙŠÙ…ÙƒÙ† Ù„Ù„Ø·Ø§Ù„Ø¨ ÙÙ‚Ø· ØªÙ‚Ø¯ÙŠÙ… Ø§Ù„Ù…Ù‡Ù…Ø©.', 'à¤•à¥‡à¤µà¤² à¤›à¤¾à¤¤à¥à¤° à¤…à¤¸à¤¾à¤‡à¤¨à¤®à¥‡à¤‚à¤Ÿ à¤¸à¤¬à¤®à¤¿à¤Ÿ à¤•à¤° à¤¸à¤•à¤¤à¥‡ à¤¹à¥ˆà¤‚', 'ØµØ±Ù Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… ØªÙÙˆÛŒØ¶ Ø¬Ù…Ø¹ Ú©Ø± Ø³Ú©ØªØ§ ÛÛ’.', 'åªæœ‰å­¦ç”Ÿå¯ä»¥æäº¤ä½œä¸šã€‚', 'å­¦ç”Ÿã ã‘ãŒèª²é¡Œã‚’æå‡ºã§ãã¾ã™ã€‚', 'Somente o aluno pode enviar a atribuiÃ§Ã£o.', 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ ÑƒÑ‡ÐµÐ½Ð¸Ðº Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿Ð¾Ð´Ð°Ñ‚ÑŒ Ð·Ð°Ð´Ð°Ð½Ð¸Ðµ.', 'Seul lÃ©tudiant peut soumettre une affectation.', 'í•™ìƒ ë§Œ ê³¼ì œë¥¼ ì œì¶œí•  ìˆ˜ ìžˆìŠµë‹ˆë‹¤.', 'Nur der Student kann eine Aufgabe einreichen.', 'Solo lo studente puÃ² presentare un incarico.', 'à¹€à¸‰à¸žà¸²à¸°à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¹€à¸—à¹ˆà¸²à¸™à¸±à¹‰à¸™à¸—à¸µà¹ˆà¸ªà¸²à¸¡à¸²à¸£à¸–à¸ªà¹ˆà¸‡à¸‡à¸²à¸™à¹„à¸”à¹‰', 'Csak a hallgatÃ³ kÃ¼ldhet megbÃ­zÃ¡st.', 'Alleen studenten kunnen een opdracht indienen.', 'Tantum submittere potest studiosus carminibus Marcianis.', 'Hanya siswa yang bisa menyerahkan tugas.', 'Sadece Ã¶ÄŸrenci Ã¶devi gÃ¶nderebilir.', 'ÎœÏŒÎ½Î¿ Î¿ Ï†Î¿Î¹Ï„Î·Ï„Î®Ï‚ Î¼Ï€Î¿ÏÎµÎ¯ Î½Î± Ï…Ï€Î¿Î²Î¬Î»ÎµÎ¹ ÎµÏÎ³Î±ÏƒÎ¯Î±.', 'ÙÙ‚Ø· Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² Ù…ÛŒ ØªÙˆØ§Ù†Ø¯ ØªØ³Ù„Ø· Ø±Ø§ Ø§Ø±Ø³Ø§Ù„ Ú©Ù†Ø¯', 'Hanya pelajar sahaja yang boleh menghantar tugasan.', 'à°®à°¾à°¤à±à°°à°®à±‡ à°µà°¿à°¦à±à°¯à°¾à°°à±à°¥à°¿ à°…à°ªà±à°ªà°—à°¿à°‚à°šà°¿à°¨ à°¸à°®à°°à±à°ªà°¿à°‚à°šà°µà°šà±à°šà±.', 'à®®à®¾à®£à®µà®°à¯ à®®à®Ÿà¯à®Ÿà¯à®®à¯‡ à®¨à®¿à®¯à®®à®¿à®•à¯à®• à®®à¯à®Ÿà®¿à®¯à¯à®®à¯.', 'àª®àª¾àª¤à«àª° àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€ àª¸à«‹àª‚àªªàª£à«€ àª¸àª¬àª®àª¿àªŸ àª•àª°à«€ àª¶àª•à«‡ àª›à«‡', 'Tylko uczeÅ„ moÅ¼e przesÅ‚aÄ‡ zadanie.', 'Ð¢Ñ–Ð»ÑŒÐºÐ¸ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚ Ð¼Ð¾Ð¶Ðµ Ð¿Ð¾Ð´Ð°Ñ‚Ð¸ Ð·Ð°Ð²Ð´Ð°Ð½Ð½Ñ.', 'à¨¸à¨¿à¨°à¨«à¨¼ à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€ à¨¹à©€ à¨•à©°à¨® à¨¸à©Œà¨‚à¨ª à¨¸à¨•à¨¦à©‡ à¨¹à¨¨.', 'Numai elevul poate trimite o sarcinÄƒ.', 'á€žá€¬á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€á€¬á€á€”á€ºá€€á€»á€›á€¬á€á€„á€ºá€•á€¼á€”á€­á€¯á€„á€ºá€•á€«á€á€šá€ºá‹', 'á»Œmá»de nikan le fi iá¹£áº¹ raná¹£áº¹.', 'Makarantar kawai za ta iya aikawa da aiki.', NULL, NULL),
(559, 'exam_final_result', 'Exam final result', 'à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦šà§‚à¦¡à¦¼à¦¾à¦¨à§à¦¤ à¦«à¦²à¦¾à¦«à¦²', 'Resultado final del examen', 'Ø§Ù„Ù†ØªÙŠØ¬Ø© Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠØ© Ù„Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤‚à¤¤à¤¿à¤® à¤ªà¤°à¤¿à¤£à¤¾à¤®', 'Ø§Ù…ØªØ­Ø§Ù† Ø­ØªÙ…ÛŒ Ù†ØªÛŒØ¬Û', 'è€ƒè¯•æœ€ç»ˆç»“æžœ', 'è©¦é¨“ã®æœ€çµ‚çµæžœ', 'Resultado final do exame', 'ÐžÐºÐ¾Ð½Ñ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°', 'RÃ©sultat final de lexamen', 'ì‹œí—˜ ìµœì¢… ê²°ê³¼', 'PrÃ¼fung Endergebnis', 'Esame finale', 'à¸œà¸¥à¸ªà¸­à¸šà¸ªà¸¸à¸”à¸—à¹‰à¸²à¸¢', 'Vizsga vÃ©geredmÃ©ny', 'Eindresultaat examen', 'Effectus finalis nito', 'Hasil akhir ujian', 'SÄ±nav nihai sonucu', 'Î•Î¾Î­Ï„Î±ÏƒÎ· Ï„ÎµÎ»Î¹ÎºÎ¿Ï Î±Ï€Î¿Ï„ÎµÎ»Î­ÏƒÎ¼Î±Ï„Î¿Ï‚', 'Ù†ØªÛŒØ¬Ù‡ Ù†Ù‡Ø§ÛŒÛŒ Ø¢Ø²Ù…ÙˆÙ†', 'Keputusan akhir peperiksaan', 'à°¤à±à°¦à°¿ à°«à°²à°¿à°¤à°‚ à°ªà°°à±€à°•à±à°·', 'à®‡à®±à¯à®¤à®¿ à®®à¯à®Ÿà®¿à®µà¯ à®¤à¯‡à®°à¯à®µà¯', 'àªªàª°à«€àª•à«àª·àª¾àª¨à«€ àª…àª‚àª¤àª¿àª® àªªàª°àª¿àª£àª¾àª®', 'Egzamin koÅ„cowy egzaminu', 'ÐžÑÑ‚Ð°Ð½Ð½Ñ–Ð¹ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ', 'à¨‡à¨®à¨¤à¨¿à¨¹à¨¾à¨¨ à¨¦à©‡ à¨†à¨–à¨°à©€ à¨¨à¨¤à©€à¨œà©‡', 'Exam final final', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸á€›á€œá€’á€º', 'Ipari ikáº¹hin ipari', 'Binciken Æ™arshe na binciken', NULL, NULL),
(560, 'required_field', 'This field is required.', 'à¦«à¦¿à¦²à§à¦¡ à¦Ÿà¦¿  à¦…à¦¬à¦¶à§à¦¯à¦‡ à¦ªà§‚à¦°à¦£ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤', 'Este campo es requerido.', 'Ù‡Ø°Ù‡ Ø§Ù„Ø®Ø§Ù†Ø© Ù…Ø·Ù„ÙˆØ¨Ù‡.', 'à¤¯à¤¹ à¤«à¤¼à¥€à¤²à¥à¤¡ à¤†à¤µà¤¶à¥à¤¯à¤• à¤¹à¥ˆ.', 'Ø§Ø³ Ú©Ùˆ Ù¾Ø± Ú©Ø±Ù†Ø§ Ø¶Ø±ÙˆØ±ÛŒ ÛÛ’.', 'è¿™æ˜¯å¿…å¡«æ ã€‚', 'ã“ã®é …ç›®ã¯å¿…é ˆã§ã™ã€‚', 'Este campo Ã© obrigatÃ³rio.', 'Ð­Ñ‚Ð¾ Ð¿Ð¾Ð»Ðµ Ð¾Ð±ÑÐ·Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ðº Ð·Ð°Ð¿Ð¾Ð»Ð½ÐµÐ½Ð¸ÑŽ.', 'Ce champ est requis.', 'ì´ ìž…ë ¥ëž€ì€ í•„ìˆ˜ í•­ëª©ìž…ë‹ˆë‹¤.', 'Dieses Feld wird benÃ¶tigt.', 'Questo campo Ã¨ obbligatorio.', 'à¸•à¹‰à¸­à¸‡à¸£à¸°à¸šà¸¸à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸™à¸µà¹‰', 'Ez a mezÅ‘ kÃ¶telezÅ‘.', 'Dit veld is verplicht.', 'Hic ager requiritur.', 'Bagian ini diperlukan.', 'Bu alan gereklidir.', 'Î‘Ï…Ï„ÏŒ Ï„Î¿ Ï€ÎµÎ´Î¯Î¿ Î±Ï€Î±Î¹Ï„ÎµÎ¯Ï„Î±Î¹.', 'Ø§ÛŒÙ† ÙÛŒÙ„Ø¯ Ù…ÙˆØ±Ø¯ Ù†ÛŒØ§Ø² Ø§Ø³Øª', 'Bidang ini diperlukan.', 'à°ˆ à°–à°¾à°³à±€à°¨à°¿ à°¤à°ªà±à°ªà°¨à°¿à°¸à°°à°¿à°—à°¾ à°ªà±‚à°°à°¿à°‚à°šà°µà°²à±†à°¨à±.', 'à®‡à®¨à¯à®¤ à®ªà¯à®²à®®à¯ à®¤à¯‡à®µà¯ˆ.', 'àª† àª•à«àª·à«‡àª¤à«àª° àªœàª°à«‚àª°à«€ àª›à«‡.', 'To pole jest wymagane.', 'Ð¦Ðµ Ð¿Ð¾Ð»Ðµ Ñ” Ð¾Ð±Ð¾Ð²ÑÐ·ÐºÐ¾Ð²Ð¸Ð¼.', 'à¨‡à¨¸ à¨«à©€à¨²à¨¡ à¨¦à©€ à¨²à©‹à©œ à¨¹à©ˆ.', 'Acest cÃ¢mp este obligatoriu.', 'á€¤á€…á€¬á€€á€½á€€á€ºá€œá€•á€ºá€™á€¾á€¬á€–á€¼á€Šá€ºá€·á€›á€”á€ºá€œá€­á€¯á€¡á€•á€ºá€•á€«á€žá€Šá€ºá‹', 'E ni lati se nkan si aye yi.', 'Wannan fillin ana bukatansa.', NULL, NULL),
(561, 'enter_valid_email', 'Please enter a valid email address.', 'à¦à¦•à¦Ÿà¦¿ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦‡à¦®à§‡à¦‡à¦² à¦ à¦¿à¦•à¦¾à¦¨à¦¾ à¦²à¦¿à¦–à§à¦¨à¥¤', 'Por favor, introduce una direcciÃ³n de correo electrÃ³nico vÃ¡lida.', 'Ø±Ø¬Ø§Ø¡ Ù‚Ù… Ø¨Ø¥Ø¯Ø®Ø§Ù„ Ø¨Ø±ÙŠØ¯ Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ØµØ­ÙŠØ­.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤µà¥ˆà¤§ à¤ˆ - à¤®à¥‡à¤² à¤à¤¡à¥à¤°à¥‡à¤¸ à¤¡à¤¾à¤²à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Ø¦Û’ Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ù‚Ø§Ø¨Ù„ Ù‚Ø¨ÙˆÙ„ Ø§ÛŒ Ù…ÛŒÙ„ Ø§ÛŒÚˆØ±ÛŒØ³ Ù„Ú©Ú¾ÛŒÚº.', 'è¯·è¾“å…¥æœ‰æ•ˆçš„ç”µå­é‚®ä»¶åœ°å€ã€‚', 'æœ‰åŠ¹ãªãƒ¡ãƒ¼ãƒ«ã‚¢ãƒ‰ãƒ¬ã‚¹ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'Por favor insira um endereÃ§o de e-mail vÃ¡lido.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹.', 'Sil vous plaÃ®t, mettez une adresse email valide.', 'ìœ íš¨í•œ ì´ë©”ì¼ ì£¼ì†Œë¥¼ ìž…ë ¥í•˜ì„¸ìš”.', 'Bitte geben Sie eine gÃ¼ltige E-Mail-Adresse ein.', 'Si prega di inserire un indirizzo email valido.', 'à¸à¸£à¸¸à¸“à¸²à¹ƒà¸ªà¹ˆà¸­à¸µà¹€à¸¡à¸¥à¹Œà¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡.', 'KÃ©rjÃ¼k valÃ³s e-mail cÃ­met adjon meg!', 'Gelieve een geldig e-mailadres in te geven.', 'Please enter inscriptio electronica valida.', 'Silakan isi alamat email.', 'GeÃ§erli bir e.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ ÎµÎ¹ÏƒÎ¬Î³ÎµÏ„Îµ Î¼Î¹Î± Î­Î³ÎºÏ…ÏÎ· Î´Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï….', 'Ù„Ø·ÙØ§ ÛŒÚ© Ø¢Ø¯Ø±Ø³ Ø§ÛŒÙ…ÛŒÙ„ Ù…Ø¹ØªØ¨Ø± ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila masukkan alamat emel yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à±à°¬à°¾à°Ÿà± à°…à°¯à±à°¯à±‡ à°‡à°®à±†à°¯à°¿à°²à± à°šà°¿à°°à±à°¨à°¾à°®à°¾à°¨à± à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®šà®°à®¿à®¯à®¾à®© à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®®à¯à®•à®µà®°à®¿à®¯à¯ˆ à®‰à®³à¯à®³à®¿à®Ÿà®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª•à«‹àªˆ àª®àª¾àª¨à«àª¯ àª‡àª®à«‡àª‡àª² àª¸àª°àª¨àª¾àª®à«àª‚ àª¦àª¾àª–àª² àª•àª°à«‹.', 'ProszÄ™ wpisaÄ‡ aktualny adres e-mail.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð´Ñ–Ð¹ÑÐ½Ñƒ Ð°Ð´Ñ€ÐµÑÑƒ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ñ— Ð¿Ð¾ÑˆÑ‚Ð¸.', 'à¨‡à©±à¨• à¨œà¨¾à¨‡à¨œ à¨ˆà¨®à©‡à¨² à¨ªà¨¤à¨¾ à¨¦à¨°à¨œ à¨•à¨°à©‹.', 'Te rog introdu o adresa de email valida.', 'á€€á€»á€±á€¸á€‡á€°á€¸á€•á€¼á‹ á€™á€¾á€”á€ºá€€á€”á€ºá€žá€±á€¬á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€œá€­á€•á€ºá€…á€¬á€€á€­á€¯á€‘á€Šá€·á€ºá€žá€½á€„á€ºá€¸á€•á€«á‹', 'Jowo fun fun wa ni imeli re to je otito.', 'Don Allah shigar da adireshin i-mel mai inganci.', NULL, NULL),
(562, 'enter_valid_url', 'Please enter a valid URL.', 'à¦à¦•à¦Ÿà¦¿ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦‡à¦‰à¦†à¦°à¦à¦² à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à§à¦¨à¥¤', 'Por favor introduzca un URL vÃ¡lido.', 'Ø£Ø¯Ø®Ù„ Ø±Ø§Ø¨Ø· ØµØ­ÙŠØ­ Ù…Ù† ÙØ¶Ù„Ùƒ.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤®à¤¾à¤¨à¥à¤¯ à¤¯à¥‚à¤†à¤°à¤à¤² à¤¦à¤°à¥à¤œ à¤•à¥€à¤œà¤¿à¤à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§ÛŒÚ© Ø¯Ø±Ø³Øª URL Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº.', 'è¯·è¾“å…¥æœ‰æ•ˆç½‘å€ã€‚', 'æœ‰åŠ¹ãªURLã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'Por favor, insira um URL vÃ¡lido.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÐºÐ¾Ñ€Ñ€ÐµÐºÑ‚Ð½Ñ‹Ð¹ Ð°Ð´Ñ€ÐµÑ.', 'Veuillez entrer une URL valide', 'ìœ íš¨í•œ URLì„ ìž…ë ¥ í•´ì£¼ì„¸ìš”.', 'Bitte geben Sie eine gÃ¼ltige URL ein.', 'Per favore, inserisci un URL valido.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™ URL à¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡.', 'KÃ©rem, Ã­rjon be egy Ã©rvÃ©nyes url-t.', 'Voer een geldige URL in.', 'Please enter validum URL.', 'Masukkan URL yang valid', 'LÃ¼tfen geÃ§erli bir adres girin.', 'Î•Î¹ÏƒÎ±Î³Î¬Î³ÎµÏ„Îµ Î¼Î¹Î± Î­Î³ÎºÏ…ÏÎ· Î´Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· URL.', 'Ù„Ø·ÙØ§ ÛŒÚ© Ù†Ø´Ø§Ù†ÛŒ ÙˆØ¨ Ù…Ø¹ØªØ¨Ø± ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila masukkan URL yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à±à°¬à°¾à°Ÿà± à°…à°¯à±à°¯à±‡ URL à°¨à± à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®šà®°à®¿à®¯à®¾à®© à®‡à®£à¯ˆà®¯ à®®à¯à®•à®µà®°à®¿à®¯à®¿à®©à¯ˆ à®ªà®¤à®¿à®µà¯ à®šà¯†à®¯à¯à®¯à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª®àª¾àª¨à«àª¯ URL àª¦àª¾àª–àª² àª•àª°à«‹', 'ProszÄ™ podaÄ‡ poprawny adres URL.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð´Ñ–Ð¹ÑÐ½Ñƒ URL-Ð°Ð´Ñ€ÐµÑÑƒ.', 'à¨‡à©±à¨• à¨µà©ˆà¨§ URL à¨¦à¨¾à¨–à¨² à¨•à¨°à©‹.', 'IntroduceÈ›i o adresÄƒ URL validÄƒ.', 'á€á€­á€¯á€„á€ºá€œá€¯á€¶á€žá€±á€¬ URL á€€á€­á€¯á€›á€­á€¯á€€á€ºá€‘á€Šá€ºá€·á€•á€±á€¸á€•á€«á‹', 'Jowo táº¹ URL ti o wulo.', 'Da fatan a shigar da adireshin mai amfani.', NULL, NULL),
(563, 'enter_valid_date', 'Please enter a valid date.', 'à¦à¦•à¦Ÿà¦¿ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦¤à¦¾à¦°à¦¿à¦– à¦²à¦¿à¦–à§à¦¨ à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡à¥¤', 'Por favor introduzca una fecha valida.', 'Ø§Ø±Ø¬ÙˆÙƒ Ø§Ø¯Ø®Ù„ ØªØ§Ø±ÙŠØ® ØµØ­ÙŠØ­.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤®à¤¾à¤¨à¥à¤¯ à¤¤à¤¿à¤¥à¤¿ à¤ªà¥à¤°à¤µà¤¿à¤·à¥à¤Ÿ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§ÛŒÚ© Ø¯Ø±Ø³Øª ØªØ§Ø±ÛŒØ® Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº.', 'è¯·è¾“å…¥ä¸€ä¸ªæœ‰æ•ˆçš„æ—¥æœŸã€‚', 'æœ‰åŠ¹ãªæ—¥ä»˜ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'Por favor insira uma data vÃ¡lida.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½ÑƒÑŽ Ð´Ð°Ñ‚Ñƒ.', 'Veuillez entrer une date valide.', 'ìœ íš¨í•œ ë‚ ì§œë¥¼ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte gib ein korrektes Datum an.', 'Per favore, inserisci una data valida.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™à¸§à¸±à¸™à¸—à¸µà¹ˆà¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rjÃ¼k, adjon meg egy Ã©rvÃ©nyes dÃ¡tumot.', 'Vul alstublieft een geldige datum in.', 'Please enter validum diem.', 'Harap masukkan tanggal yang valid.', 'LÃ¼tfen geÃ§erli bir tarih giriniz.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ ÎµÎ¹ÏƒÎ¬Î³ÎµÏ„Îµ Î¼Î¯Î± Î­Î³ÎºÏ…ÏÎ· Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±.', 'Ù„Ø·ÙØ§ ÛŒÚ© ØªØ§Ø±ÛŒØ® Ù…Ø¹ØªØ¨Ø± ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila masukkan tarikh yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à±à°¬à°¾à°Ÿà± à°…à°¯à±à°¯à±‡ à°¤à±‡à°¦à±€à°¨à°¿ à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®šà¯†à®²à¯à®²à¯à®ªà®Ÿà®¿à®¯à®¾à®•à¯à®®à¯ à®¤à¯‡à®¤à®¿ à®‰à®³à¯à®³à®¿à®Ÿà¯à®•.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª®àª¾àª¨à«àª¯ àª¤àª¾àª°à«€àª– àª¦àª¾àª–àª² àª•àª°à«‹.', 'ProszÄ™ wprowadÅº poprawnÄ… datÄ™.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð´Ñ–Ð¹ÑÐ½Ñƒ Ð´Ð°Ñ‚Ñƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à©±à¨• à¨µà©ˆà¨§ à¨¤à¨¾à¨°à©€à¨– à¨¦à¨°à¨œ à¨•à¨°à©‹', 'VÄƒ rugÄƒm sÄƒ introduceÈ›i o datÄƒ validÄƒ.', 'á€™á€¾á€”á€ºá€€á€”á€ºá€žá€±á€¬á€›á€€á€ºá€…á€½á€²á€á€…á€ºá€á€¯á€›á€­á€¯á€€á€ºá€‘á€Šá€ºá€·á€•á€±á€¸á€•á€«á‹', 'Jowo táº¹ á»já» ti o wulo.', 'Da fatan a shigar da kwanan wata mai aiki.', NULL, NULL),
(564, 'enter_valid_number', 'Please enter a valid number.', 'à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦à¦•à¦Ÿà¦¿ à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦¨à¦®à§à¦¬à¦° à¦²à¦¿à¦–à§à¦¨à¥¤', 'Por favor ingrese un nÃºmero valido.', 'Ù…Ù† ÙØ¶Ù„Ùƒ Ø£Ø¯Ø®Ù„ Ø±Ù‚Ù…Ø§ ØµØ§Ù„Ø­Ø§.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤¸à¤¹à¥€ à¤¸à¤‚à¤–à¥à¤¯à¤¾ à¤¡à¤¾à¤²à¤¿à¤¯à¥‡à¥¤', 'Ø¨Ø±Ø§Û Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ø§ÛŒÚ© Ø¯Ø±Ø³Øª Ù†Ù…Ø¨Ø± Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº.', 'è¯·è¾“å…¥ä¸€ä¸ªæœ‰æ•ˆçš„å·ç ã€‚', 'æœ‰åŠ¹ãªæ•°å€¤ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'por favor insira um nÃºmero vÃ¡lido.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÐºÐ¾Ñ€Ñ€ÐµÐºÑ‚Ð½Ð¾Ðµ Ñ‡Ð¸ÑÐ»Ð¾.', 'Sil vous plait, entrez un nombre valide.', 'ì˜¬ë°”ë¥¸ ë²ˆí˜¸ë¥¼ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte geben Sie eine gÃ¼ltige Nummer ein.', 'Per favore, inserire un numero valido.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™à¸«à¸¡à¸²à¸¢à¹€à¸¥à¸‚à¸—à¸µà¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡', 'KÃ©rjÃ¼k, adjon meg Ã©rvÃ©nyes szÃ¡mot.', 'Voer alstublieft een geldig nummer in.', 'Please enter validum est numerus.', 'Masukkan nomor yang valid', 'LÃ¼tfen geÃ§erli bir numara girin.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ ÎµÎ¹ÏƒÎ¬Î³ÎµÏ„Îµ Î­Î½Î±Î½ Î­Î³ÎºÏ…ÏÎ¿ Î±ÏÎ¹Î¸Î¼ÏŒ.', 'Ù„Ø·ÙØ§ ÛŒÚ© Ø´Ù…Ø§Ø±Ù‡ ØªÙ„ÙÙ† Ù…Ø¹ØªØ¨Ø± ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila masukkan nombor yang sah.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°šà±†à°²à±à°²à±à°¬à°¾à°Ÿà± à°…à°¯à±à°¯à±‡ à°¸à°‚à°–à±à°¯à°¨à± à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®šà®°à®¿à®¯à®¾à®© à®Žà®£à¯à®£à¯ˆ à®‰à®³à¯à®³à®¿à®Ÿà¯à®•.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª•à«‹àªˆ àª®àª¾àª¨à«àª¯ àª¨àª‚àª¬àª° àª¦àª¾àª–àª² àª•àª°à«‹.', 'ProszÄ™ wprowadziÄ‡ poprawny numer.', 'Ð’Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð´Ñ–Ð¹ÑÐ½Ð¸Ð¹ Ð½Ð¾Ð¼ÐµÑ€.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à©±à¨• à¨ªà©à¨°à¨®à¨¾à¨£à¨¿à¨• à¨¸à©°à¨–à¨¿à¨† à¨¦à¨°à¨œ à¨•à¨°à©‹.', 'IntroduceÈ›i un numÄƒr valid.', 'á€á€­á€¯á€„á€ºá€œá€¯á€¶á€žá€±á€¬á€¡á€›á€±á€¡á€á€½á€€á€ºá€€á€­á€¯á€›á€­á€¯á€€á€ºá€‘á€Šá€ºá€·á€•á€±á€¸á€•á€«á‹', 'Jowo táº¹ ná»mba ná»mba kan.', 'Da fatan a shigar da lambar mai aiki.', NULL, NULL),
(565, 'enter_only_digit', 'Please enter only digits.', 'à¦…à¦¨à§à¦—à§à¦°à¦¹ à¦•à¦°à§‡ à¦¶à§à¦§à§à¦®à¦¾à¦¤à§à¦° à¦¸à¦‚à¦–à§à¦¯à¦¾ à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à¦¾à¦¨à¥¤', 'Por favor ingrese solo dÃ­gitos.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥Ø¯Ø®Ø§Ù„ Ø£Ø±Ù‚Ø§Ù… ÙÙ‚Ø·.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤•à¥‡à¤µà¤² à¤…à¤‚à¤• à¤¦à¤°à¥à¤œ à¤•à¤°à¥‡à¤‚à¥¤', 'ØµØ±Ù ÛÙ†Ø¯Ø³ÙˆÚº Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº.', 'è¯·åªè¾“å…¥æ•°å­—ã€‚', 'æ•°å­—ã®ã¿å…¥åŠ›ã—ã¦ä¸‹ã•ã„ã€‚', 'Digite apenas dÃ­gitos.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ð²Ð¾Ð´Ð¸Ñ‚Ðµ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ†Ð¸Ñ„Ñ€Ñ‹.', 'Merci de nentrer que des chiffres.', 'ìˆ«ìž ë§Œ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte gib nur Ziffern ein.', 'Per favore, inserisci solo cifre.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™à¸•à¸±à¸§à¹€à¸¥à¸‚à¹€à¸—à¹ˆà¸²à¸™à¸±à¹‰à¸™', 'KÃ©rem csak szÃ¡mjegyeket adjon meg.', 'Alleen cijfers invoeren a.u.b.', 'PDF nisi constet.', 'Harap masukkan angka saja.', 'LÃ¼tfen sadece rakam giriniz.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ ÎµÎ¹ÏƒÎ¬Î³ÎµÏ„Îµ Î¼ÏŒÎ½Î¿ ÏˆÎ·Ï†Î¯Î±.', 'Ù„Ø·ÙØ§ ÙÙ‚Ø· Ø±Ù‚Ù… Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯', 'Sila masukkan angka sahaja.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°…à°‚à°•à±†à°²à± à°®à°¾à°¤à±à°°à°®à±‡ à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®‡à®²à®•à¯à®•à®™à¯à®•à®³à¯ˆ à®®à®Ÿà¯à®Ÿà¯à®®à¯ à®‰à®³à¯à®³à®¿à®Ÿà¯à®•.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª®àª¾àª¤à«àª° àª…àª‚àª•à«‹ àª¦àª¾àª–àª² àª•àª°à«‹', 'WprowadÅº tylko cyfry.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ð»Ð¸ÑˆÐµ Ñ†Ð¸Ñ„Ñ€Ð¸.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¸à¨¿à¨°à¨« à¨…à©°à¨• à¨­à¨°à©‹.', 'Te rog introdu doar cifre.', 'á€žá€¬á€‚á€á€”á€ºá€¸á€›á€­á€¯á€€á€ºá€‘á€Šá€ºá€·á€•á€±á€¸á€•á€«á‹', 'Já»wá» táº¹ awá»n ná»mba nikan sii.', 'Da fatan a shigar da lambobi kawai.', NULL, NULL),
(566, 'enter_same_value_again', 'Please enter the same value again.', 'à¦†à¦¬à¦¾à¦° à¦à¦•à¦‡ à¦­à§à¦¯à¦¾à¦²à§ à¦²à¦¿à¦–à§à¦¨ à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡à¥¤', 'Por favor, introduzca el mismo valor de nuevo.', 'Ù…Ù† ÙØ¸Ù„Ùƒ Ø§Ø¯Ø®Ù„ Ù†ÙØ³ Ø§Ù„Ù‚ÙŠÙ…Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤«à¤¿à¤° à¤¸à¥‡ à¤µà¤¹à¥€ à¤¸à¤‚à¤–à¥à¤¯à¤¾ à¤¡à¤¾à¤²à¤¿à¤¯à¥‡à¥¤', 'Ø§ÛŒÚ© Ø¨Ø§Ø± Ù¾Ú¾Ø± Ø§ÛŒÚ© ÛÛŒ Ù‚ÛŒÙ…Øª Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº.', 'è¯·å†æ¬¡å¡«å†™åŒç­‰æ•°å€¼ã€‚', 'ã‚‚ã†ä¸€åº¦åŒã˜å€¤ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„ã€‚', 'Por favor entre com o mesmo valor novamente.', 'ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¾Ð´Ð½Ð¾ Ð¸ Ñ‚Ð¾ Ð¶Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ.', 'Entrez Ã  nouveau la mÃªme valeur sil vous plait.', 'ë‹¤ì‹œ ë™ì¼í•œ ê°’ì„ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Bitte geben Sie den gleichen Wert erneut ein.', 'Si prega di inserire di nuovo lo stesso valore.', 'à¹‚à¸›à¸£à¸”à¸›à¹‰à¸­à¸™à¸„à¹ˆà¸²à¹€à¸”à¸´à¸¡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡', 'KÃ©rem, Ã­rja be ugyanazt az Ã©rtÃ©ket Ãºjra.', 'Voer dezelfde waarde opnieuw in.', 'PDF simile est.', 'Harap masukkan nilai yang sama lagi.', 'LÃ¼tfen aynÄ± deÄŸeri tekrar giriniz.', 'Î•Î¹ÏƒÎ±Î³Î¬Î³ÎµÏ„Îµ Î¾Î±Î½Î¬ Ï„Î·Î½ Î¯Î´Î¹Î± Ï„Î¹Î¼Î®.', 'Ù„Ø·ÙØ§ Ù…Ø¬Ø¯Ø¯Ø§ Ù‡Ù…Ø§Ù† Ù…Ù‚Ø¯Ø§Ø± Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila masukkan nilai yang sama sekali lagi.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°³à±€ à°…à°¦à±‡ à°µà°¿à°²à±à°µà°¨à± à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®®à®±à¯à®ªà®Ÿà®¿à®¯à¯à®®à¯ à®…à®¤à¯‡ à®®à®¤à®¿à®ªà¯à®ªà¯ˆ à®…à®´à¯à®¤à¯à®¤à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àª¸àª®àª¾àª¨ àª®à«‚àª²à«àª¯ àª¦àª¾àª–àª² àª•àª°à«‹.', 'WprowadÅº ponownie tÄ™ samÄ… wartoÅ›Ä‡.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ñ‚Ðµ ÑÐ°Ð¼Ðµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð½Ñ Ð·Ð½Ð¾Ð²Ñƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¦à©à¨¬à¨¾à¨°à¨¾ à¨‰à¨¹à©€ à¨®à©à©±à¨² à¨¦à¨°à¨œ à¨•à¨°à©‹.', 'IntroduceÈ›i din nou aceeaÈ™i valoare.', 'á€‘á€•á€ºá€á€°á€Šá€®á€á€²á€·á€á€”á€ºá€–á€­á€¯á€¸á€€á€­á€¯á€‘á€Šá€·á€ºá€•á€±á€¸á€•á€«á‹', 'Jowo táº¹ iye kanna naa láº¹áº¹kansi.', 'Da fatan a sake shigar da wannan darajar.', NULL, NULL),
(567, 'pls_fix_this', 'Please fix this field.', 'à¦à¦‡à¦Ÿà¦¾ à¦ à¦¿à¦• à¦•à¦°à§à¦¨à¥¤', 'Por favor arregla este campo.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø¥ØµÙ„Ø§Ø­ Ù‡Ø°Ø§ Ø§Ù„Ø­Ù‚Ù„.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤¯à¤¹ à¤«à¤¼à¥€à¤²à¥à¤¡ à¤ à¥€à¤• à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ø§Ø³ ÙÛŒÙ„Úˆ Ú©Ùˆ Ù¹Ú¾ÛŒÚ© Ú©Ø±ÛŒÚº.', 'è¯·ä¿®å¤è¿™ä¸€å—ã€‚', 'ã“ã®ãƒ•ã‚£ãƒ¼ãƒ«ãƒ‰ã‚’ç›´ã—ã¦ãã ã•ã„ã€‚', 'Por favor, corrija este campo.', 'Ð˜ÑÐ¿Ñ€Ð°Ð²ÑŒÑ‚Ðµ ÑÑ‚Ð¾ Ð¿Ð¾Ð»Ðµ.', 'Veuillez corriger ce champ.', 'ì´ í•­ëª©ì„ ìˆ˜ì •í•˜ì—¬ì£¼ì‹­ì‹œì˜¤.', 'Bitte repariere dieses Feld.', 'Si prega di correggere questo campo.', 'à¹‚à¸›à¸£à¸”à¹à¸à¹‰à¹„à¸‚à¸Ÿà¸´à¸¥à¸”à¹Œà¸™à¸µà¹‰', 'KÃ©rlek, javÃ­tsd ki ezt a mezÅ‘t.', 'Corrigeer dit veld.', 'Placere figere ipsa cellula compleatur.', 'Perbaiki bidang ini', 'Bu alanÄ± dÃ¼zeltin lÃ¼tfen.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ Î´Î¹Î¿ÏÎ¸ÏŽÏƒÏ„Îµ Î±Ï…Ï„ÏŒ Ï„Î¿ Ï€ÎµÎ´Î¯Î¿.', 'Ù„Ø·ÙØ§ Ø§ÛŒÙ† ÙÛŒÙ„Ø¯ Ø±Ø§ Ø§ØµÙ„Ø§Ø­ Ú©Ù†ÛŒØ¯', 'Sila betulkan medan ini.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°ˆ à°«à±€à°²à±à°¡à±à°¨à± à°ªà°°à°¿à°·à±à°•à°°à°¿à°‚à°šà°‚à°¡à°¿.', 'à®¤à®¯à®µà¯à®šà¯†à®¯à¯à®¤à¯ à®‡à®¨à¯à®¤ à®•à®³à®¤à¯à®¤à¯ˆ à®šà®°à®¿à®šà¯†à®¯à¯à®¯à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª† àª«à«€àª²à«àª¡àª¨à«‡ àª à«€àª• àª•àª°à«‹.', 'ProszÄ™ poprawiÄ‡ to pole.', 'Ð’Ð¸Ð¿Ñ€Ð°Ð²Ñ‚Ðµ Ñ†Ðµ Ð¿Ð¾Ð»Ðµ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à¨¸ à¨–à©‡à¨¤à¨° à¨¨à©‚à©° à¨ à©€à¨• à¨•à¨°à©‹.', 'VÄƒ rugÄƒm sÄƒ remediaÈ›i acest cÃ¢mp.', 'á€’á€®á€œá€šá€ºá€€á€­á€¯ fix á€•á€±á€¸á€•á€«á‹', 'Já»wá» á¹£atunká» aaye yii.', 'Da fatan a gyara wannan filin.', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(613, 'permission_denied', 'You have no permission to access this page.', 'à¦†à¦ªà¦¨à¦¿ à¦à¦‡ à¦ªà§ƒà¦·à§à¦ à¦¾ à¦…à§à¦¯à¦¾à¦•à§à¦¸à§‡à¦¸ à¦•à¦°à¦¾à¦° à¦…à¦¨à§à¦®à¦¤à¦¿ à¦¨à§‡à¦‡à¥¤', 'No tienes permiso para acceder a esta pÃ¡gina.', 'Ù„ÙŠØ³ Ù„Ø¯ÙŠÙƒ Ø¥Ø°Ù† Ù„Ù„Ø¯Ø®ÙˆÙ„ Ø¥Ù„Ù‰ Ù‡Ø°Ù‡ Ø§Ù„ØµÙØ­Ø©.', 'à¤†à¤ªà¤•à¥‹ à¤‡à¤¸ à¤ªà¥ƒà¤·à¥à¤  à¤•à¥‹ à¤à¤•à¥à¤¸à¥‡à¤¸ à¤•à¤°à¤¨à¥‡ à¤•à¥€ à¤…à¤¨à¥à¤®à¤¤à¤¿ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆà¥¤', 'Ø¢Ù¾ Ú©Ùˆ Ø§Ø³ ØµÙØ­Û ØªÚ© Ø±Ø³Ø§Ø¦ÛŒ Ø­Ø§ØµÙ„ Ú©Ø±Ù†Û’ Ú©ÛŒ Ø§Ø¬Ø§Ø²Øª Ù†ÛÛŒÚº ÛÛ’.', 'æ‚¨æ— æƒè®¿é—®æ­¤é¡µé¢ã€‚', 'ã“ã®ãƒšãƒ¼ã‚¸ã«ã‚¢ã‚¯ã‚»ã‚¹ã™ã‚‹æ¨©é™ã¯ã‚ã‚Šã¾ã›ã‚“ã€‚', 'VocÃª nÃ£o tem permissÃ£o para acessar esta pÃ¡gina.', 'Ð£ Ð²Ð°Ñ Ð½ÐµÑ‚ Ñ€Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¸Ñ Ð½Ð° Ð´Ð¾ÑÑ‚ÑƒÐ¿ Ðº ÑÑ‚Ð¾Ð¹ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ðµ.', 'Vous nÃªtes pas autorisÃ© Ã  accÃ©der Ã  cette page.', 'ì´ íŽ˜ì´ì§€ì— ì•¡ì„¸ìŠ¤ í•  ìˆ˜ìžˆëŠ” ê¶Œí•œì´ ì—†ìŠµë‹ˆë‹¤.', 'Sie haben keine Berechtigung, auf diese Seite zuzugreifen.', 'Non hai il permesso di accedere a questa pagina.', 'à¸„à¸¸à¸“à¹„à¸¡à¹ˆà¸¡à¸µà¸ªà¸´à¸—à¸˜à¸´à¹Œà¹€à¸‚à¹‰à¸²à¸–à¸¶à¸‡à¸«à¸™à¹‰à¸²à¸™à¸µà¹‰', 'Nincs engedÃ©lye ennek az oldalnak az elÃ©rÃ©sÃ©re.', 'U hebt geen toestemming om deze pagina te openen.', 'Nullas tibi accessere hanc paginam permission.', 'Anda tidak memiliki izin untuk mengakses halaman ini.', 'Bu sayfaya eriÅŸmek iÃ§in herhangi bir iznin yok.', 'Î”ÎµÎ½ Î­Ï‡ÎµÏ„Îµ ÎºÎ±Î¼Î¯Î± Î¬Î´ÎµÎ¹Î± Ï€ÏÏŒÏƒÎ²Î±ÏƒÎ·Ï‚ ÏƒÎµ Î±Ï…Ï„Î®Î½ Ï„Î· ÏƒÎµÎ»Î¯Î´Î±.', 'Ø´Ù…Ø§ Ø§Ø¬Ø§Ø²Ù‡ Ø¯Ø³ØªØ±Ø³ÛŒ Ø¨Ù‡ Ø§ÛŒÙ† ØµÙØ­Ù‡ Ù†Ø¯Ø§Ø±ÛŒØ¯.', 'Anda tidak mempunyai kebenaran untuk mengakses halaman ini.', 'à°ˆ à°ªà±‡à°œà±€à°¨à°¿ à°ªà±à°°à°¾à°ªà±à°¯à°¤ à°šà±‡à°¯à°¡à°¾à°¨à°¿à°•à°¿ à°®à±€à°•à± à°…à°¨à±à°®à°¤à°¿ à°²à±‡à°¦à±.', 'à®‡à®¨à¯à®¤à®ªà¯ à®ªà®•à¯à®•à®¤à¯à®¤à¯ˆ à®…à®£à¯à®• à®‰à®™à¯à®•à®³à¯à®•à¯à®•à¯ à®…à®©à¯à®®à®¤à®¿ à®‡à®²à¯à®²à¯ˆ.', 'àª† àªªà«ƒàª·à«àª àª¨à«‡ àªàª•à«àª¸à«‡àª¸ àª•àª°àªµàª¾àª¨à«€ àª¤àª®àª¾àª°à«€ àªªàª¾àª¸à«‡ àª•à«‹àªˆ àªªàª°àªµàª¾àª¨àª—à«€ àª¨àª¥à«€', 'Nie masz uprawnieÅ„ dostÄ™pu do tej strony.', 'Ð’Ð¸ Ð½Ðµ Ð¼Ð°Ñ”Ñ‚Ðµ Ð´Ð¾Ð·Ð²Ð¾Ð»Ñƒ Ð½Ð° Ð´Ð¾ÑÑ‚ÑƒÐ¿ Ð´Ð¾ Ñ†Ñ–Ñ”Ñ— ÑÑ‚Ð¾Ñ€Ñ–Ð½ÐºÐ¸.', 'à¨¤à©à¨¹à¨¾à¨¨à©‚à©° à¨‡à¨¸ à¨ªà©‡à¨œ à¨¨à©‚à©° à¨à¨•à¨¸à©ˆà¨¸ à¨•à¨°à¨¨ à¨¦à©€ à¨•à©‹à¨ˆ à¨…à¨¨à©à¨®à¨¤à©€ à¨¨à¨¹à©€à¨‚ à¨¹à©ˆ.', 'Nu aveÈ›i permisiunea de a accesa aceastÄƒ paginÄƒ.', 'á€žá€„á€ºá€¤á€…á€¬á€™á€€á€»á€¼á€”á€¾á€¬á€€á€­á€¯á€á€„á€ºá€›á€±á€¬á€€á€ºá€–á€­á€¯á€·á€™á€á€½á€„á€ºá€·á€•á€¼á€¯á€á€»á€€á€ºá€›á€¾á€­á€žá€Šá€ºá‹', 'O ko ni igbanilaaye lati wá»le si oju-ewe yii.', 'Ba ku da izini don samun damar wannan shafin.', NULL, NULL),
(614, 'invalid_transaction_pls_try_again', 'Invalid transaction please try again.', 'à¦‡à¦¨à¦­à§à¦¯à¦¾à¦²à¦¿à¦¡ à¦²à§‡à¦¨à¦¦à§‡à¦¨ à¦†à¦¬à¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à§à¦¨à¥¤', 'TransacciÃ³n invÃ¡lida, intÃ©ntalo de nuevo.', 'Ø§Ù„Ù…Ø¹Ø§Ù…Ù„Ø© ØºÙŠØ± ØµØ§Ù„Ø­Ø© ÙŠØ±Ø¬Ù‰ Ø§Ù„Ù…Ø­Ø§ÙˆÙ„Ø© Ù…Ø±Ø© Ø£Ø®Ø±Ù‰.', 'à¤…à¤®à¤¾à¤¨à¥à¤¯ à¤²à¥‡à¤¨à¤¦à¥‡à¤¨ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤«à¤¿à¤° à¤¸à¥‡ à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚', 'ØºÙ„Ø· Ù¹Ø±Ø§Ù†Ø²ÛŒÚ©Ø´Ù† Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº.', 'æ— æ•ˆçš„äº¤æ˜“è¯·å†è¯•ä¸€æ¬¡ã€‚', 'ãƒˆãƒ©ãƒ³ã‚¶ã‚¯ã‚·ãƒ§ãƒ³ãŒç„¡åŠ¹ã§ã™ã€‚ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„ã€‚', 'TransaÃ§Ã£o invÃ¡lida, tente novamente.', 'ÐÐµÐ´ÐµÐ¹ÑÑ‚Ð²Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ñ‹Ðµ Ñ‚Ñ€Ð°Ð½Ð·Ð°ÐºÑ†Ð¸Ð¸ Ð¿Ð¾Ð²Ñ‚Ð¾Ñ€Ð¸Ñ‚Ðµ Ð¿Ð¾Ð¿Ñ‹Ñ‚ÐºÑƒ.', 'Transaction non valide, veuillez rÃ©essayer.', 'ìž˜ëª»ëœ ê±°ëž˜ìž…ë‹ˆë‹¤. ë‹¤ì‹œ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'UngÃ¼ltige Transaktion. Bitte versuche es erneut.', 'Transazione non valida, riprova.', 'à¸˜à¸¸à¸£à¸à¸£à¸£à¸¡à¹„à¸¡à¹ˆà¸–à¸¹à¸à¸•à¹‰à¸­à¸‡à¹‚à¸›à¸£à¸”à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡', 'Ã‰rvÃ©nytelen Ã¼gylet, prÃ³bÃ¡ld Ãºjra.', 'Ongeldige transactie probeer het opnieuw.', 'Aliquam nulla re.', 'Transaksi tidak valid silahkan dicoba lagi.', 'GeÃ§ersiz iÅŸlem lÃ¼tfen tekrar deneyin.', 'ÎœÎ· Î­Î³ÎºÏ…ÏÎ· ÏƒÏ…Î½Î±Î»Î»Î±Î³Î® Î´Î¿ÎºÎ¹Î¼Î¬ÏƒÏ„Îµ Î¾Î±Î½Î¬.', 'Ù…Ø¹Ø§Ù…Ù„Ù‡ Ù†Ø§Ù…Ø¹ØªØ¨Ø± Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ Ø§Ù…ØªØ­Ø§Ù† Ú©Ù†ÛŒØ¯', 'Transaksi tidak sah sila cuba lagi.', 'à°šà±†à°²à±à°²à°¨à°¿ à°²à°¾à°µà°¾à°¦à±‡à°µà±€ à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°³à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿.', 'à®¤à®µà®±à®¾à®© à®ªà®°à®¿à®µà®°à¯à®¤à¯à®¤à®©à¯ˆ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯.', 'àª…àª®àª¾àª¨à«àª¯ àªµà«àª¯àªµàª¹àª¾àª° àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¾àª¸ àª•àª°à«‹.', 'NieprawidÅ‚owa transakcja, sprÃ³buj ponownie.', 'ÐÐµÐ´Ñ–Ð¹ÑÐ½Ð° Ñ‚Ñ€Ð°Ð½Ð·Ð°ÐºÑ†Ñ–Ñ. ÐŸÐ¾Ð²Ñ‚Ð¾Ñ€Ñ–Ñ‚ÑŒ ÑÐ¿Ñ€Ð¾Ð±Ñƒ.', 'à¨—à¨²à¨¤ à¨Ÿà©à¨°à¨¾à¨‚à¨œà©ˆà¨•à¨¸à¨¼à¨¨ à¨«à¨¿à¨° à¨•à©‹à¨¸à¨¼à¨¿à¨¸à¨¼ à¨•à¨°à©‹.', 'TranzacÈ›ie nevalidÄƒ Ã®ncercaÈ›i din nou.', 'á€™á€¾á€¬á€¸á€”á€±á€žá€±á€¬á€„á€½á€±á€•á€±á€¸á€„á€½á€±á€šá€°á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€€á€¼á€Šá€·á€ºá€•á€«á‹', 'Iá¹£owo idaniloju ko tá» gbiyanju tun gbiyanju.', 'Kasuwanci mara inganci a sake gwadawa.', NULL, NULL),
(615, 'payment_success', 'Payment has been successfully.', 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦¹à¦¯à¦¼à§‡à¦›à§‡à¥¤', 'El pago ha sido exitoso.', 'ØªÙ… Ø§Ù„Ø¯ÙØ¹ Ø¨Ù†Ø¬Ø§Ø­.', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ à¤¹à¥ˆ', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§Ù…ÛŒØ§Ø¨ ÛÙˆÚ¯Ø¦ÛŒ ÛÛ’.', 'ä»˜æ¬¾å·²æˆåŠŸã€‚', 'æ”¯æ‰•ã„ã¯æ­£å¸¸ã«å®Œäº†ã—ã¾ã—ãŸã€‚', 'O pagamento foi feito com sucesso.', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð¿Ñ€Ð¾ÑˆÐ»Ð° ÑƒÑÐ¿ÐµÑˆÐ½Ð¾.', 'Le paiement a Ã©tÃ© effectuÃ© avec succÃ¨s.', 'ì§€ë¶ˆì´ ì™„ë£Œë˜ì—ˆìŠµë‹ˆë‹¤.', 'Die Zahlung wurde erfolgreich ausgefÃ¼hrt.', 'Il pagamento Ã¨ andato a buon fine.', 'à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸ªà¸³à¹€à¸£à¹‡à¸ˆà¹à¸¥à¹‰à¸§', 'A kifizetÃ©s sikeresen megtÃ¶rtÃ©nt.', 'De betaling is succesvol verlopen.', 'Solucionis fuerit feliciter.', 'Pembayaran sudah berhasil', 'Ã–deme baÅŸarÄ±yla yapÄ±ldÄ±.', 'Î— Ï€Î»Î·ÏÏ‰Î¼Î® Î¿Î»Î¿ÎºÎ»Î·ÏÏŽÎ¸Î·ÎºÎµ Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±.', 'Ù¾Ø±Ø¯Ø§Ø®Øª Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª Ø§Ù†Ø¬Ø§Ù… Ø´Ø¯Ù‡ Ø§Ø³Øª', 'Pembayaran telah berjaya.', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà± à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾ à°‰à°‚à°¦à°¿.', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®‰à®³à¯à®³à®¤à¯.', 'àªšà«àª•àªµàª£à«€ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àª•àª°àªµàª¾àª®àª¾àª‚ àª†àªµà«€ àª›à«‡', 'PÅ‚atnoÅ›Ä‡ zostaÅ‚a pomyÅ›lnie.', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð±ÑƒÐ»Ð° ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾ÑŽ.', 'à¨­à©à¨—à¨¤à¨¾à¨¨ à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨•à©€à¨¤à¨¾ à¨—à¨¿à¨† à¨¹à©ˆ', 'Plata a fost efectuatÄƒ cu succes.', 'á€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯á€›á€™á€Šá€ºá€·á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€–á€¼á€…á€ºá€á€²á€·á€žá€Šá€ºá‹', 'Isanwo ti wa ni ifijiÅ¡áº¹.', 'Biyan bashi ya samu nasarar.', NULL, NULL),
(616, 'payment_failed', 'Payment failed. Please try again.', 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦¬à§à¦¯à¦°à§à¦¥ à¦¹à¦¯à¦¼à§‡à¦›à§‡. à¦…à¦¨à§à¦—à§à¦°à¦¹à¦ªà§‚à¦°à§à¦¬à¦• à¦†à¦¬à¦¾à¦° à¦šà§‡à¦·à§à¦Ÿà¦¾ à¦•à¦°à§à¦¨à¥¤', 'Pago fallido. IntÃ©ntalo de nuevo.', 'Ø¹Ù…Ù„ÙŠØ© Ø§Ù„Ø¯ÙØ¹ ÙØ´Ù„Øª. Ø­Ø§ÙˆÙ„ Ù…Ø±Ø© Ø§Ø®Ø±Ù‰.', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤…à¤¸à¤«à¤² à¤¹à¥à¤†à¥¤ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¥à¤¨: à¤ªà¥à¤°à¤¯à¤¾à¤¸ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ù†Ø§Ú©Ø§Ù… ÛÙˆÚ¯Ø¦ÛŒ. Ø¯ÙˆØ¨Ø§Ø±Û Ú©ÙˆØ´Ø´ Ú©Ø±ÛŒÚº.', 'æ”¯ä»˜å¤±è´¥ã€‚ è¯·å†è¯•ä¸€æ¬¡ã€‚', 'æ”¯æ‰•ã„ã«å¤±æ•—ã—ã¾ã—ãŸã€‚ ã‚‚ã†ä¸€åº¦ãŠè©¦ã—ãã ã•ã„ã€‚', 'Pagamento falhou. Por favor, tente novamente.', 'ÐŸÐ»Ð°Ñ‚ÐµÐ¶ Ð½Ðµ Ð¿Ñ€Ð¾ÑˆÐµÐ». ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð¿Ð¾Ð¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ ÐµÑ‰Ðµ Ñ€Ð°Ð·.', 'Paiement Ã©chouÃ©. Veuillez rÃ©essayer.', 'ê²°ì œ ì‹¤íŒ¨. ë‹¤ì‹œ ì‹œë„í•˜ì‹­ì‹œì˜¤.', 'Bezahlung fehlgeschlagen. Bitte versuche es erneut.', 'Pagamento fallito. Per favore riprova.', 'à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§ à¸à¸£à¸¸à¸“à¸²à¸¥à¸­à¸‡à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡.', 'FizetÃ©s meghiÃºsult. KÃ©rlek prÃ³bÃ¡ld Ãºjra.', 'Betaling mislukt. Probeer het opnieuw.', 'Payment defecit. Quaero, iterum conare.', 'Pembayaran gagal. Silahkan coba lagi', 'Ã–deme baÅŸarÄ±sÄ±z. LÃ¼tfen tekrar deneyin.', 'Î— Ï€Î»Î·ÏÏ‰Î¼Î® Î±Ï€Î­Ï„Ï…Ï‡Îµ. Î Î‘Î¡Î‘ÎšÎ‘Î›Î© Ï€ÏÎ¿ÏƒÏ€Î±Î¸Î·ÏƒÎµ Î¾Î±Î½Î±.', 'Ù¾Ø±Ø¯Ø§Ø®Øª Ù†Ø§Ù…ÙˆÙÙ‚. Ù„Ø·ÙØ§ Ø¯ÙˆØ¨Ø§Ø±Ù‡ ØªÙ„Ø§Ø´ Ú©Ù†ÛŒØ¯.', 'Pembayaran gagal. Sila cuba lagi.', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà± à°µà°¿à°«à°²à°®à±†à±–à°‚à°¦à°¿. à°¦à°¯à°šà±‡à°¸à°¿ à°®à°³à±à°²à±€ à°ªà±à°°à°¯à°¤à±à°¨à°¿à°‚à°šà°‚à°¡à°¿.', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®¤à¯‹à®²à¯à®µà®¿à®¯à®Ÿà¯ˆà®¨à¯à®¤à®¤à¯. à®¤à®¯à®µà¯ à®šà¯†à®¯à¯à®¤à¯ à®®à¯€à®£à¯à®Ÿà¯à®®à¯ à®®à¯à®¯à®±à¯à®šà®¿à®•à¯à®•à®µà¯à®®à¯.', 'àªšà«‚àª•àªµàª£à«€ àª¨àª¿àª·à«àª«àª³. àª®àª¹à«‡àª°àª¬àª¾àª¨à«€ àª•àª°à«€àª¨à«‡ àª«àª°à«€àª¥à«€ àªªà«àª°àª¯àª¤àª¨ àª•àª°à«‹.', 'PÅ‚atnoÅ›Ä‡ nie powiodÅ‚a siÄ™. ProszÄ™ sprÃ³buj ponownie.', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð½Ðµ Ð²Ð¸ÐºÐ¾Ð½Ð°Ð½Ð°. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ° ÑÐ¿Ñ€Ð¾Ð±ÑƒÐ¹Ñ‚Ðµ Ñ‰Ðµ Ñ€Ð°Ð·.', 'à¨­à©à¨—à¨¤à¨¾à¨¨ à¨…à¨¸à¨«à¨². à¨®à©à©œ à¨•à©‹à¨¸à¨¼à¨¿à¨¸ à¨•à¨°à©‹ à¨œà©€.', 'Plata esuata. VÄƒ rugÄƒm sÄƒ Ã®ncercaÈ›i din nou.', 'á€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯á€›á€™á€Šá€ºá€·á€™á€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€á€²á€·á€•á€«á€˜á€°á€¸á‹ á€‘á€•á€ºá€€á€¼á€­á€¯á€¸á€…á€¬á€¸á€•á€«á‹', 'Isanwo ti kuna. Já»wá» gbiyanju láº¹áº¹kansi.', 'Baya ya biya. Da fatan a sake gwadawa.', NULL, NULL),
(617, 'you_have_remain_character', 'You have remain character/ letter ', 'à¦†à¦ªà¦¨à¦¾à¦° à¦…à¦•à§à¦·à¦° à¦¬à¦¾à¦•à¦¿ à¦†à¦›à§‡à¥¤', 'Has quedado personaje / carta', 'Ù„Ø¯ÙŠÙƒ Ø­Ø±Ù / Ø­Ø±Ù', 'à¤†à¤ª à¤šà¤°à¤¿à¤¤à¥à¤° / à¤ªà¤¤à¥à¤° à¤°à¤¹ à¤—à¤ à¤¹à¥ˆà¤‚', 'Ø¢Ù¾ Ú©Ø§ Ú©Ø±Ø¯Ø§Ø± / Ø®Ø· Ø¨Ø§Ù‚ÛŒ ÛÛ’', 'ä½ ä¿æŒå­—ç¬¦/å­—æ¯', 'ã‚ãªãŸã¯æ–‡å­—/æ–‡å­—ã®ã¾ã¾ã§ã™', 'VocÃª permaneceu carÃ¡ter / carta', 'Ð£ Ð²Ð°Ñ ÐµÑÑ‚ÑŒ ÑÐ¸Ð¼Ð²Ð¾Ð» / Ð¿Ð¸ÑÑŒÐ¼Ð¾', 'Vous avez reste caractÃ¨re / lettre', 'ë¬¸ìž / ë¬¸ìžë¡œ ë‚¨ì•˜ìŠµë‹ˆë‹¤.', 'Du hast Charakter / Brief behalten', 'Hai carattere / lettera rimasti', 'à¸„à¸¸à¸“à¸¢à¸±à¸‡à¸¡à¸µà¸•à¸±à¸§à¸­à¸±à¸à¸©à¸£ / à¸•à¸±à¸§à¸­à¸±à¸à¸©à¸£', 'Ã–n tovÃ¡bbra is karakter / betÅ± marad', 'Je bent karakter / letter gebleven', 'Vos autem manent ingenii / litterae', 'Anda tetap memiliki karakter / huruf', 'Karakter / mektup kalmÄ±ÅŸsÄ±n', 'ÎˆÏ‡ÎµÏ„Îµ Ï€Î±ÏÎ±Î¼ÎµÎ¯Î½ÎµÎ¹ Ï‡Î±ÏÎ±ÎºÏ„Î®ÏÎ± / Î³ÏÎ¬Î¼Î¼Î±', 'Ø´Ù…Ø§ Ø´Ø®ØµÛŒØª / Ù†Ø§Ù…Ù‡ Ø±Ø§ Ø¨Ø§Ù‚ÛŒ Ù…ÛŒÚ¯Ø°Ø§Ø±ÛŒØ¯', 'Anda mempunyai watak / huruf tetap', 'à°®à±€à°°à± à°…à°•à±à°·à°°à°‚ / à°…à°•à±à°·à°°à°‚', 'à®¨à¯€à®™à¯à®•à®³à¯ à®Žà®´à¯à®¤à¯à®¤à¯ / à®•à®Ÿà®¿à®¤à®®à®¾à®•à®µà¯‡ à®‡à®°à¯à®•à¯à®• à®µà¯‡à®£à¯à®Ÿà¯à®®à¯', 'àª¤àª®à«‡ àª…àª•à«àª·àª° / àª…àª•à«àª·àª° àª°àª¹à«‡àª²àª¾ àª›à«‡', 'PozostaÅ‚eÅ› postaciÄ… / literÄ…', 'Ð’Ð¸ Ð·Ð°Ð»Ð¸ÑˆÐ¸Ñ‚ÐµÑÑ ÑÐ¸Ð¼Ð²Ð¾Ð»Ð¾Ð¼ / Ð»Ð¸ÑÑ‚Ð¾Ð¼', 'à¨¤à©à¨¸à©€à¨‚ à¨…à©±à¨–à¨° / à¨ªà©±à¨¤à¨° à¨°à¨¹à©‡ à¨¹à©‹', 'Tu rÄƒmÃ¢i caracter / scrisoare', 'á€žá€„á€»á€žá€Šá€»á€‡á€¬á€á€ºá€€á€±á€¬á€„á€º / á€¡á€€á€¹á€á€›á€¬á€†á€€á€ºá€œá€€á€ºá€á€Šá€ºá€›á€¾á€­á€€á€¼á€•á€«á€•á€¼á€®', 'O ti wa ni iwa / láº¹ta', 'Ka kasance hali / wasika', NULL, NULL),
(618, 'running_year_instructions', 'You have to set running session year from general setting.', 'à¦†à¦ªà¦¨à¦¾à¦•à§‡ à¦¸à¦¾à¦§à¦¾à¦°à¦£ à¦¸à§‡à¦Ÿà¦¿à¦‚ à¦¥à§‡à¦•à§‡ à¦šà¦²à¦®à¦¾à¦¨ à¦¸à§‡à¦¶à¦¨  à¦¸à§‡à¦Ÿ à¦•à¦°à¦¤à§‡ à¦¹à¦¬à§‡à¥¤', 'Debe configurar el aÃ±o de la sesiÃ³n en ejecuciÃ³n desde la configuraciÃ³n general.', 'Ù„Ø¯ÙŠÙƒ Ù„ØªØ¹ÙŠÙŠÙ† Ø¯ÙˆØ±Ø© Ø§Ù„Ø¹Ø§Ù… Ù…Ù† Ø§Ù„Ø¥Ø¹Ø¯Ø§Ø¯ Ø§Ù„Ø¹Ø§Ù….', 'à¤†à¤ªà¤•à¥‹ à¤¸à¤¾à¤®à¤¾à¤¨à¥à¤¯ à¤¸à¥‡à¤Ÿà¤¿à¤‚à¤— à¤¸à¥‡ à¤šà¤¾à¤²à¥‚ à¤¸à¤¤à¥à¤° à¤µà¤°à¥à¤· à¤¸à¥‡à¤Ÿ à¤•à¤°à¤¨à¤¾ à¤¹à¥‹à¤—à¤¾à¥¤', 'Ø¢Ù¾ Ú©Ùˆ Ø³ÛŒØ´Ù† Ø³Ø§Ù„ Ú†Ù„ Ø±ÛØ§ ÛÛ’ Ø¬Ù†Ø±Ù„ ØªØ±ØªÛŒØ¨ Ø³Û’.', 'æ‚¨å¿…é¡»ä»Žå¸¸è§„è®¾ç½®ä¸­è®¾ç½®è¿è¡Œä¼šè¯å¹´ã€‚', 'å®Ÿè¡Œä¸­ã®ã‚»ãƒƒã‚·ãƒ§ãƒ³ã®å¹´ã¯ä¸€èˆ¬è¨­å®šã‹ã‚‰è¨­å®šã™ã‚‹å¿…è¦ãŒã‚ã‚Šã¾ã™ã€‚', 'VocÃª deve definir o ano da sessÃ£o em execuÃ§Ã£o a partir da configuraÃ§Ã£o geral.', 'Ð’Ñ‹ Ð´Ð¾Ð»Ð¶Ð½Ñ‹ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ñ‚ÐµÐºÑƒÑ‰Ð¸Ð¹ Ð³Ð¾Ð´ ÑÐµÐ°Ð½ÑÐ° Ð¸Ð· Ð¾Ð±Ñ‰ÐµÐ¹ Ð½Ð°ÑÑ‚Ñ€Ð¾Ð¹ÐºÐ¸.', 'Vous devez dÃ©finir lannÃ©e de la session en cours Ã  partir du paramÃ¨tre gÃ©nÃ©ral.', 'ì¼ë°˜ ì„¸ì…˜ ì„¤ì •ì—ì„œ ì‹¤í–‰ ì„¸ì…˜ ì—°ë„ë¥¼ ì„¤ì •í•´ì•¼í•©ë‹ˆë‹¤.', 'Sie mÃ¼ssen das laufende Jahr aus der allgemeinen Einstellung auswÃ¤hlen.', 'Ãˆ necessario impostare lanno della sessione corrente dallimpostazione generale.', 'à¸„à¸¸à¸“à¸•à¹‰à¸­à¸‡à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸›à¸µà¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸ˆà¸²à¸à¸à¸²à¸£à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²à¸—à¸±à¹ˆà¸§à¹„à¸›', 'Be kell Ã¡llÃ­tania a futÃ³ Ã©vfolyamot az Ã¡ltalÃ¡nos beÃ¡llÃ­tÃ¡sbÃ³l.', 'U moet het lopende zittingsjaar van de algemene instelling instellen.', 'Vos have ut currit ab anno generalis sessioni occasum.', 'Anda harus mengatur running session year dari general setting.', 'Ã‡alÄ±ÅŸan oturum yÄ±lÄ±nÄ± genel ayardan ayarlamanÄ±z gerekir.', 'Î ÏÎ­Ï€ÎµÎ¹ Î½Î± ÏÏ…Î¸Î¼Î¯ÏƒÎµÏ„Îµ Ï„Î¿ Î­Ï„Î¿Ï‚ Î»ÎµÎ¹Ï„Î¿Ï…ÏÎ³Î¯Î±Ï‚ Î±Ï€ÏŒ Ï„Î· Î³ÎµÎ½Î¹ÎºÎ® ÏÏÎ¸Î¼Î¹ÏƒÎ·.', 'Ø´Ù…Ø§ Ø¨Ø§ÛŒØ¯ Ø³Ø§Ù„ Ø§Ø¬Ø±Ø§ÛŒ Ø³Ø§Ù„ Ø±Ø§ Ø§Ø² ØªÙ†Ø¸ÛŒÙ… Ø¹Ù…ÙˆÙ…ÛŒ ØªÙ†Ø¸ÛŒÙ… Ú©Ù†ÛŒØ¯.', 'Anda perlu menetapkan tahun sesi berjalan dari tetapan umum.', 'à°®à±€à°°à± à°¸à°¾à°§à°¾à°°à°£ à°¸à±†à°Ÿà±à°Ÿà°¿à°‚à°—à± à°¨à±à°‚à°¡à°¿ à°¸à±†à°·à°¨à± à°¸à°‚à°µà°¤à±à°¸à°°à°¾à°¨à±à°¨à°¿ à°…à°®à°°à±à°šà°¾à°²à°¿.', 'à®ªà¯Šà®¤à¯ à®…à®®à¯ˆà®ªà¯à®ªà®¿à®²à®¿à®°à¯à®¨à¯à®¤à¯ à®…à®®à®°à¯à®µà¯ à®†à®£à¯à®Ÿà¯ à®‡à®¯à®™à¯à®• à®µà¯‡à®£à¯à®Ÿà¯à®®à¯.', 'àª¤àª®àª¾àª°à«‡ àª¸àª¾àª®àª¾àª¨à«àª¯ àª¸à«‡àªŸàª¿àª‚àª—àª¥à«€ àªšàª¾àª²à« àª¸àª¤à«àª° àªµàª°à«àª· àª¸à«‡àªŸ àª•àª°àªµà«àª‚ àªªàª¡àª¶à«‡.', 'Musisz ustawiÄ‡ rok sesji na podstawie ustawieÅ„ ogÃ³lnych.', 'Ð’Ð¸ Ð¿Ð¾Ð²Ð¸Ð½Ð½Ñ– Ð²ÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚Ð¸ Ð¿Ð¾Ñ‚Ð¾Ñ‡Ð½Ð¸Ð¹ Ñ€Ñ–Ðº ÑÐµÐ°Ð½ÑÑƒ Ð·Ð° Ð·Ð°Ð³Ð°Ð»ÑŒÐ½Ð¸Ð¼ Ð½Ð°Ð»Ð°ÑˆÑ‚ÑƒÐ²Ð°Ð½Ð½ÑÐ¼.', 'à¨¤à©à¨¹à¨¾à¨¨à©‚à©° à¨¸à¨§à¨¾à¨°à¨£ à¨¸à©ˆà¨Ÿà¨¿à©°à¨— à¨¤à©‹à¨‚ à¨šà¨¾à¨²à©‚ à¨¸à©ˆà¨¸à¨¼à¨¨ à¨µà¨°à¨œà¨¼à¨¨ à¨¸à©ˆà¨Ÿ à¨•à¨°à¨¨à¨¾ à¨¹à©‹à¨µà©‡à¨—à¨¾.', 'Trebuie sÄƒ setaÈ›i anul de desfÄƒÈ™urare a sesiunii din setarea generalÄƒ.', 'á€žá€„á€»á€žá€Šá€»á€šá€±á€˜á€¯á€šá€» setting á€€á€­á€¯á€™á€¾ session á€á€…á€ºá€”á€¾á€…á€º running á€á€„á€ºá€‘á€¬á€¸á€›á€”á€ºá€›á€¾á€­á€žá€Šá€ºá‹', 'O ni lati seto á»dun igbasáº¹ ná¹£iá¹£áº¹ lati ipo gbogbogbo.', 'Dole ne ku saita shekara ta gudu daga saiti na gaba.', NULL, NULL),
(619, 'privilege_not_setting', 'The Role Permission for this user not yet set.', 'à¦à¦‡ à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦œà¦¨à§à¦¯ à¦­à§‚à¦®à¦¿à¦•à¦¾ à¦…à¦¨à§à¦®à¦¤à¦¿ à¦à¦–à¦¨à¦“ à¦¸à§‡à¦Ÿ à¦•à¦°à¦¾ à¦¹à§Ÿà¦¨à¦¿à¥¤', 'El permiso de funciÃ³n para este usuario aÃºn no se ha establecido.', 'Ù„Ù… ÙŠØªÙ… ØªØ¹ÙŠÙŠÙ† Ø¥Ø°Ù† Ø§Ù„Ø¯ÙˆØ± Ù„Ù‡Ø°Ø§ Ø§Ù„Ù…Ø³ØªØ®Ø¯Ù… Ø¨Ø¹Ø¯.', 'à¤‡à¤¸ à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤•à¥‡ à¤²à¤¿à¤ à¤­à¥‚à¤®à¤¿à¤•à¤¾ à¤…à¤¨à¥à¤®à¤¤à¤¿ à¤…à¤­à¥€ à¤¤à¤• à¤¸à¥‡à¤Ÿ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆ', 'Ø§Ø³ ØµØ§Ø±Ù Ú©ÛŒÙ„Ø¦Û’ Ø§Ø¨Ú¾ÛŒ ØªÚ© Ú©Ø±Ø¯Ø§Ø± Ú©ÛŒ Ø§Ø¬Ø§Ø²Øª Ù†ÛÛŒÚº ÛÛ’.', 'æ­¤ç”¨æˆ·çš„è§’è‰²æƒé™å°šæœªè®¾ç½®ã€‚', 'ã“ã®ãƒ¦ãƒ¼ã‚¶ãƒ¼ã®ãƒ­ãƒ¼ãƒ«æ¨©é™ã¯ã¾ã è¨­å®šã•ã‚Œã¦ã„ã¾ã›ã‚“ã€‚', 'A PermissÃ£o de FunÃ§Ã£o para este usuÃ¡rio ainda nÃ£o estÃ¡ configurado.', 'Ð Ð°Ð·Ñ€ÐµÑˆÐµÐ½Ð¸Ðµ Ñ€Ð¾Ð»Ð¸ Ð´Ð»Ñ ÑÑ‚Ð¾Ð³Ð¾ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ ÐµÑ‰Ðµ Ð½Ðµ ÑƒÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾.', 'Lautorisation de rÃ´le pour cet utilisateur nest pas encore dÃ©finie.', 'ì´ ì‚¬ìš©ìžì— ëŒ€í•œ ì—­í•  ê¶Œí•œì´ ì•„ì§ ì„¤ì •ë˜ì§€ ì•Šì•˜ìŠµë‹ˆë‹¤.', 'Die Rollenberechtigung fÃ¼r diesen Benutzer wurde noch nicht festgelegt.', 'Autorizzazione ruolo per questo utente non ancora impostato.', 'à¸ªà¸´à¸—à¸˜à¸´à¹Œà¸à¸²à¸£à¹ƒà¸Šà¹‰à¸‡à¸²à¸™à¸šà¸—à¸šà¸²à¸—à¸ªà¸³à¸«à¸£à¸±à¸šà¸œà¸¹à¹‰à¹ƒà¸Šà¹‰à¸£à¸²à¸¢à¸™à¸µà¹‰à¸¢à¸±à¸‡à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸•à¸±à¹‰à¸‡à¸„à¹ˆà¸²', 'A szerepkÃ¶r engedÃ©lye erre a felhasznÃ¡lÃ³ra mÃ©g nincs beÃ¡llÃ­tva.', 'De rolmachtiging voor deze gebruiker is nog niet ingesteld.', 'De munere licentiam concedere quod nondum user set.', 'Izin Peran untuk pengguna ini belum ditetapkan.', 'Bu kullanÄ±cÄ± iÃ§in Role Permission henÃ¼z ayarlanmadÄ±.', 'Î— Î¬Î´ÎµÎ¹Î± ÏÏŒÎ»Î¿Ï… Î³Î¹Î± Î±Ï…Ï„ÏŒÎ½ Ï„Î¿ Ï‡ÏÎ®ÏƒÏ„Î· Î´ÎµÎ½ Î­Ï‡ÎµÎ¹ Î¿ÏÎ¹ÏƒÏ„ÎµÎ¯ Î±ÎºÏŒÎ¼Î±.', 'Ù…Ø¬ÙˆØ² Ù†Ù‚Ø´ Ø¨Ø±Ø§ÛŒ Ø§ÛŒÙ† Ú©Ø§Ø±Ø¨Ø± Ù‡Ù†ÙˆØ² ØªØ¹ÛŒÛŒÙ† Ù†Ø´Ø¯Ù‡ Ø§Ø³Øª.', 'Kebenaran Peranan untuk pengguna ini belum ditetapkan.', 'à°ˆ à°µà°¿à°¨à°¿à°¯à±‹à°—à°¦à°¾à°°à± à°•à±‹à°¸à°‚ à°°à±‹à°²à± à°…à°¨à±à°®à°¤à°¿ à°‡à°‚à°•à°¾ à°¸à±†à°Ÿà± à°šà±‡à°¯à°¬à°¡à°²à±‡à°¦à±.', 'à®‡à®¨à¯à®¤ à®ªà®¯à®©à®°à¯à®•à¯à®•à®¾à®© à®°à¯‹à®²à¯ à®…à®©à¯à®®à®¤à®¿ à®‡à®©à¯à®©à¯à®®à¯ à®…à®®à¯ˆà®•à¯à®•à®ªà¯à®ªà®Ÿà®µà®¿à®²à¯à®²à¯ˆ.', 'àª† àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾ àª®àª¾àªŸà«‡ àª°à«‹àª² àªªàª°àªµàª¾àª¨àª—à«€ àª¹àªœà« àª¸à«àª§à«€ àª¸à«‡àªŸ àª¨àª¥à«€.', 'Uprawnienia roli dla tego uÅ¼ytkownika jeszcze nie zostaÅ‚y ustawione.', 'Ð Ð¾Ð»ÑŒÐ¾Ð²Ð¸Ð¹ Ð´Ð¾Ð·Ð²Ñ–Ð» Ð´Ð»Ñ Ñ†ÑŒÐ¾Ð³Ð¾ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡Ð° Ñ‰Ðµ Ð½Ðµ Ð²ÑÑ‚Ð°Ð½Ð¾Ð²Ð»ÐµÐ½Ð¾.', 'à¨‡à¨¸ à¨‰à¨ªà¨­à©‹à¨—à¨¤à¨¾ à¨²à¨ˆ à¨­à©‚à¨®à¨¿à¨•à¨¾ à¨¦à©€ à¨…à¨¨à©à¨®à¨¤à©€ à¨…à¨œà©‡ à¨µà©€ à¨¸à©ˆà¨Ÿ à¨¨à¨¹à©€à¨‚ à¨•à©€à¨¤à©€ à¨—à¨ˆ.', 'Permisiunea de rol pentru acest utilizator nu a fost Ã®ncÄƒ setatÄƒ.', 'á€žá€±á€¸á€™á€žá€á€ºá€™á€¾á€á€ºá€’á€®á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€™á€»á€¬á€¸á€¡á€á€½á€€á€ºá€¡á€á€”á€ºá€¸á€€á€¹á€•á€á€½á€„á€·á€ºá€•á€¼á€¯á€á€»á€€á€ºá‹', 'Igbese Ilana fun olumulo yii ko sibáº¹sibáº¹ á¹£eto.', 'Æ˜ungiyar izinin mai amfani ba tukuna an saita ba.', NULL, NULL),
(620, 'add_syllabus_instruction', 'Please add academic year before create syllabus.', 'à¦ªà¦¾à¦ à§à¦¯à¦¸à§‚à¦šà§€ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à¦¾à¦° à¦†à¦—à§‡ à¦…à¦¨à§à¦—à§à¦°à¦¹à¦ªà§‚à¦°à§à¦¬à¦•  à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦• à¦¬à¦›à¦° à¦…à§à¦¯à¦¾à¦¡ à¦•à¦°à§à¦¨à¥¤', 'Agregue el aÃ±o acadÃ©mico antes de crear el plan de estudios.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ø¶Ø§ÙØ© Ø§Ù„Ø¹Ø§Ù… Ø§Ù„Ø¯Ø±Ø§Ø³ÙŠ Ù‚Ø¨Ù„ Ø¥Ù†Ø´Ø§Ø¡ Ø§Ù„Ù…Ù†Ù‡Ø¬.', 'à¤ªà¤¾à¤ à¥à¤¯à¤•à¥à¤°à¤® à¤¬à¤¨à¤¾à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤¶à¥ˆà¤•à¥à¤·à¤£à¤¿à¤• à¤µà¤°à¥à¤· à¤œà¥‹à¤¡à¤¼à¥‡à¤‚à¥¤', 'Ù†ØµØ§Ø¨ Ú©Ùˆ ØªØ®Ù„ÛŒÙ‚ Ú©Ø±Ù†Û’ Ø³Û’ Ù¾ÛÙ„Û’ ØªØ¹Ù„ÛŒÙ…ÛŒ Ø³Ø§Ù„ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº.', 'è¯·åœ¨åˆ›å»ºæ•™å­¦å¤§çº²ä¹‹å‰æ·»åŠ å­¦å¹´ã€‚', 'ã‚·ãƒ©ãƒã‚¹ã‚’ä½œæˆã™ã‚‹å‰ã«å­¦å¹´ã‚’è¿½åŠ ã—ã¦ãã ã•ã„ã€‚', 'Por favor, adicione ano acadÃªmico antes de criar programas.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð¾Ð±Ð°Ð²ÑŒÑ‚Ðµ ÑƒÑ‡ÐµÐ±Ð½Ñ‹Ð¹ Ð³Ð¾Ð´ Ð´Ð¾ ÑÐ¾Ð·Ð´Ð°Ð½Ð¸Ñ ÑƒÑ‡ÐµÐ±Ð½Ð¾Ð³Ð¾ Ð¿Ð»Ð°Ð½Ð°.', 'Veuillez ajouter une annÃ©e acadÃ©mique avant de crÃ©er un syllabus.', 'êµê³¼ë¥¼ ë§Œë“¤ê¸° ì „ì— í•™ë…„ì„ ì¶”ê°€í•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼gen Sie akademisches Jahr vor dem Erstellen des Lehrplans hinzu.', 'Per favore aggiungi lanno accademico prima di creare il programma.', 'à¸à¸£à¸¸à¸“à¸²à¹€à¸žà¸´à¹ˆà¸¡à¸›à¸µà¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²à¸à¹ˆà¸­à¸™à¸—à¸µà¹ˆà¸ˆà¸°à¸ªà¸£à¹‰à¸²à¸‡à¸«à¸¥à¸±à¸à¸ªà¸¹à¸•à¸£', 'KÃ©rjÃ¼k, add meg az egyetemi Ã©vet a tanterv lÃ©trehozÃ¡sa elÅ‘tt.', 'Voeg academiejaar toe voordat u een syllabus maakt.', 'Anno ante partum aliter digerere velit academic add.', 'Harap tambahkan tahun akademik sebelum membuat silabus.', 'MÃ¼fredat oluÅŸturmadan Ã¶nce lÃ¼tfen akademik yÄ±l ekleyin.', 'Î Î±ÏÎ±ÎºÎ±Î»ÎµÎ¯ÏƒÎ¸Îµ Î½Î± Ï€ÏÎ¿ÏƒÎ¸Î­ÏƒÎµÏ„Îµ Î±ÎºÎ±Î´Î·Î¼Î±ÏŠÎºÏŒ Î­Ï„Î¿Ï‚ Ï€ÏÎ¹Î½ Î´Î·Î¼Î¹Î¿Ï…ÏÎ³Î®ÏƒÎµÏ„Îµ Ï„Î¿ Î±Î½Î±Î»Ï…Ï„Î¹ÎºÏŒ Ï€ÏÏŒÎ³ÏÎ±Î¼Î¼Î±.', 'Ù„Ø·ÙØ§ Ø³Ø§Ù„ ØªØ­ØµÛŒÙ„ÛŒ Ø±Ø§ Ù‚Ø¨Ù„ Ø§Ø² Ø§ÛŒØ¬Ø§Ø¯ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø¯Ø±Ø³ÛŒ Ø§Ø¶Ø§ÙÙ‡ Ú©Ù†ÛŒØ¯.', 'Sila tambah tahun akademik sebelum membuat sukatan pelajaran.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°¸à°¿à°²à°¬à°¸à± à°¸à±ƒà°·à±à°Ÿà°¿à°‚à°šà°¡à°¾à°¨à°¿à°•à°¿ à°®à±à°‚à°¦à± à°µà°¿à°¦à±à°¯à°¾à°¸à°‚à°µà°¤à±à°¸à°°à°‚ à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿.', 'à®ªà®¾à®Ÿà®¤à¯à®¤à®¿à®Ÿà¯à®Ÿà®¤à¯à®¤à¯ˆ à®‰à®°à¯à®µà®¾à®•à¯à®• à®®à¯à®©à¯ à®•à®²à¯à®µà®¿ à®†à®£à¯à®Ÿà¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯.', 'àª…àª­à«àª¯àª¾àª¸àª•à«àª°àª® àª¬àª¨àª¾àªµàªµàª¾ àªªàª¹à«‡àª²àª¾àª‚ àª¶à«ˆàª•à«àª·àª£àª¿àª• àªµàª°à«àª· àª‰àª®à«‡àª°à«‹.', 'Dodaj rok akademicki przed utworzeniem sylabusa.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð´Ð¾Ð´Ð°Ð¹Ñ‚Ðµ Ð½Ð°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ð¹ Ñ€Ñ–Ðº, Ð¿ÐµÑ€Ñˆ Ð½Ñ–Ð¶ ÑÑ‚Ð²Ð¾Ñ€ÑŽÐ²Ð°Ñ‚Ð¸ Ð½Ð°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ð¹ Ð¿Ð»Ð°Ð½.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¸à¨¿à¨²à©‡à¨¬à¨¸ à¨¬à¨£à¨¾à¨‰à¨£ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨…à¨•à¨¾à¨¦à¨®à¨¿à¨• à¨¸à¨¾à¨² à¨œà©‹à©œà©‹', 'VÄƒ rugÄƒm sÄƒ adÄƒugaÈ›i un an universitar Ã®nainte de a crea programa.', 'á€žá€„á€ºá€›á€­á€¯á€¸á€Šá€½á€¾á€”á€ºá€¸á€á€™á€ºá€¸á€–á€”á€ºá€á€®á€¸á€™á€á€­á€¯á€„á€ºá€™á€®á€•á€Šá€¬á€žá€„á€ºá€”á€¾á€…á€º add á€•á€±á€¸á€•á€«á‹', 'Jowo fi á»já»-áº¹ká» áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-áº¹ká»-', 'Da fatan za a kara shekara ta ilimi kafin Æ™irÆ™irar salo.', NULL, NULL),
(621, 'academic_year_setting', 'Please setting academic year.', 'à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦• à¦¬à¦›à¦° à¦¸à§‡à¦Ÿà¦¿à¦‚ à¦•à¦°à§à¦¨à¥¤', 'Por favor, ajuste el aÃ±o acadÃ©mico.', 'ÙŠØ±Ø¬Ù‰ ØªØ­Ø¯ÙŠØ¯ Ø§Ù„Ø³Ù†Ø© Ø§Ù„Ø¯Ø±Ø§Ø³ÙŠØ©.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤¶à¥ˆà¤•à¥à¤·à¤£à¤¿à¤• à¤µà¤°à¥à¤· à¤¸à¥‡à¤Ÿ à¤•à¤°à¤¨à¤¾', 'Ø¨Ø±Ø§Ø¦Û’ Ù…ÛØ±Ø¨Ø§Ù†ÛŒ ØªØ¹Ù„ÛŒÙ…ÛŒ Ø³Ø§Ù„ Ù‚Ø§Ø¦Ù… Ú©Ø±ÛŒÚº.', 'è¯·è®¾ç½®å­¦å¹´ã€‚', 'å­¦å¹´ã‚’è¨­å®šã—ã¦ãã ã•ã„ã€‚', 'Por favor, marque o ano lectivo.', 'Ð£ÐºÐ°Ð¶Ð¸Ñ‚Ðµ ÑƒÑ‡ÐµÐ±Ð½Ñ‹Ð¹ Ð³Ð¾Ð´.', 'Veuillez dÃ©finir lannÃ©e acadÃ©mique.', 'í•™ë…„ì„ ì •í•˜ì‹­ì‹œì˜¤.', 'Bitte legen Sie das akademische Jahr fest.', 'Si prega di fissare lanno accademico.', 'à¹‚à¸›à¸£à¸”à¸•à¸±à¹‰à¸‡à¸›à¸µà¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²', 'KÃ©rjÃ¼k, Ã¡llÃ­ts be a tanÃ©vre.', 'Gelieve het academiejaar in te stellen.', 'Academici ponere placuit.', 'Tolong atur tahun akademik.', 'LÃ¼tfen akademik yÄ±lÄ± ayarlayÄ±n.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ Î¿ÏÎ¯ÏƒÏ„Îµ Î±ÎºÎ±Î´Î·Î¼Î±ÏŠÎºÏŒ Î­Ï„Î¿Ï‚.', 'Ù„Ø·ÙØ§ Ø³Ø§Ù„ ØªØ­ØµÛŒÙ„ÛŒ Ø±Ø§ ØªÙ†Ø¸ÛŒÙ… Ú©Ù†ÛŒØ¯.', 'Sila tentukan tahun akademik.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°µà°¿à°¦à±à°¯à°¾ à°¸à°‚à°µà°¤à±à°¸à°°à°¾à°¨à±à°¨à°¿ à°à°°à±à°ªà°¾à°Ÿà± à°šà±‡à°¯à°‚à°¡à°¿.', 'à®•à®²à¯à®µà®¿ à®†à®£à¯à®Ÿà¯ à®…à®®à¯ˆà®•à¯à®•à®µà¯à®®à¯.', 'àª¶à«ˆàª•à«àª·àª£àª¿àª• àªµàª°à«àª· àª¸à«‡àªŸ àª•àª°à«‹.', 'ProszÄ™ ustawiÄ‡ rok akademicki.', 'Ð’ÐºÐ°Ð¶Ñ–Ñ‚ÑŒ Ð½Ð°Ð²Ñ‡Ð°Ð»ÑŒÐ½Ð¸Ð¹ Ñ€Ñ–Ðº.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨…à¨•à¨¾à¨¦à¨®à¨¿à¨• à¨¸à¨¾à¨² à¨¸à©ˆà©±à¨Ÿ à¨•à¨°à©‹.', 'VÄƒ rugÄƒm sÄƒ setaÈ›i anul universitar.', 'á€•á€Šá€¬á€žá€„á€ºá€”á€¾á€…á€º setting á€•á€«á‹', 'Já»wá» á¹£e eto eto áº¹ká».', 'Don Allah a kafa shekara ta ilimi.', NULL, NULL),
(622, 'add_routine_instruction', 'Must be good combination (between room, time, teacher, day & subject) for routine.', 'à¦°à§à¦Ÿà¦¿à¦¨à§‡à¦° à¦œà¦¨à§à¦¯ à¦­à¦¾à¦²à§‹ à¦¸à¦®à¦¨à§à¦¬à§Ÿ (à¦°à§à¦®, à¦¸à¦®à¦¯à¦¼, à¦¶à¦¿à¦•à§à¦·à¦•, à¦¦à¦¿à¦¨ à¦à¦¬à¦‚ à¦¬à¦¿à¦·à¦¯à¦¼ à¦®à¦§à§à¦¯à§‡) à¦¹à¦¤à§‡ à¦¹à¦¬à§‡à¥¤', 'Debe ser una buena combinaciÃ³n (entre la habitaciÃ³n, el tiempo, el maestro, el dÃ­a y el tema) para la rutina.', 'ÙŠØ¬Ø¨ Ø£Ù† ØªÙƒÙˆÙ† ØªØ±ÙƒÙŠØ¨Ø© Ø¬ÙŠØ¯Ø© (Ø¨ÙŠÙ† Ø§Ù„ØºØ±ÙØ© ÙˆØ§Ù„ÙˆÙ‚Øª ÙˆØ§Ù„Ù…Ø¹Ù„Ù… ÙˆØ§Ù„ÙŠÙˆÙ… ÙˆØ§Ù„Ù…ÙˆØ¶ÙˆØ¹) Ù„Ù„Ø±ÙˆØªÙŠÙ†.', 'à¤¦à¤¿à¤¨à¤šà¤°à¥à¤¯à¤¾ à¤•à¥‡ à¤²à¤¿à¤ à¤…à¤šà¥à¤›à¥‡ à¤¸à¤‚à¤¯à¥‹à¤œà¤¨ (à¤•à¤®à¤°à¥‡, à¤¸à¤®à¤¯, à¤¶à¤¿à¤•à¥à¤·à¤•, à¤¦à¤¿à¤¨ à¤”à¤° à¤µà¤¿à¤·à¤¯ à¤•à¥‡ à¤¬à¥€à¤š) à¤¹à¥‹à¤¨à¤¾ à¤šà¤¾à¤¹à¤¿à¤à¥¤', 'Ù…Ø¹Ù…ÙˆÙ„ Ú©Û’ Ù„Ø¦Û’ Ø§Ú†Ú¾Ø§ Ù…Ø¬Ù…ÙˆØ¹Û (Ú©Ù…Ø±Û’ØŒ ÙˆÙ‚ØªØŒ Ø§Ø³ØªØ§Ø¯ØŒ Ø¯Ù† Ø§ÙˆØ± Ù…ÙˆØ¶ÙˆØ¹ Ú©Û’ Ø¯Ø±Ù…ÛŒØ§Ù†) ÛÙˆÙ†Ø§ Ø¶Ø±ÙˆØ±ÛŒ ÛÛ’.', 'å¿…é¡»æ˜¯å¸¸è§„çš„è‰¯å¥½ç»„åˆï¼ˆæˆ¿é—´ï¼Œæ—¶é—´ï¼Œè€å¸ˆï¼Œæ—¥æœŸå’Œä¸»é¢˜ï¼‰ã€‚', 'ãƒ«ãƒ¼ãƒãƒ³ã®ãŸã‚ã«ã¯ã€ï¼ˆéƒ¨å±‹ã€æ™‚é–“ã€æ•™å¸«ã€æ—¥ã€ãƒ†ãƒ¼ãƒžã®é–“ã®ï¼‰è‰¯ã„çµ„ã¿åˆã‚ã›ã§ãªã‘ã‚Œã°ãªã‚Šã¾ã›ã‚“ã€‚', 'Deve ser uma boa combinaÃ§Ã£o (entre sala, tempo, professor, dia e assunto) para a rotina.', 'Ð”Ð¾Ð»Ð¶Ð½Ð° Ð±Ñ‹Ñ‚ÑŒ Ñ…Ð¾Ñ€Ð¾ÑˆÐ°Ñ ÐºÐ¾Ð¼Ð±Ð¸Ð½Ð°Ñ†Ð¸Ñ (Ð¼ÐµÐ¶Ð´Ñƒ ÐºÐ¾Ð¼Ð½Ð°Ñ‚Ð¾Ð¹, Ð²Ñ€ÐµÐ¼ÐµÐ½ÐµÐ¼, ÑƒÑ‡Ð¸Ñ‚ÐµÐ»ÐµÐ¼, Ð´Ð½ÐµÐ¼ Ð¸ ÑÑƒÐ±ÑŠÐµÐºÑ‚Ð¾Ð¼) Ð´Ð»Ñ Ñ€ÑƒÑ‚Ð¸Ð½Ñ‹.', 'Doit Ãªtre une bonne combinaison (entre la piÃ¨ce, lheure, lenseignant, le jour et le sujet) pour la routine.', 'í‰ì†Œì—ëŠ” (ë°©, ì‹œê°„, ì„ ìƒë‹˜, ë‚® ê³¼ëª© ì‚¬ì´ì—) ì¢‹ì€ ì¡°í•©ì´ì–´ì•¼í•©ë‹ˆë‹¤.', 'Muss eine gute Kombination sein (zwischen Raum, Zeit, Lehrer, Tag und Thema) fÃ¼r die Routine.', 'Deve essere una buona combinazione (tra stanza, orario, insegnante, giorno e materia) per la routine.', 'à¸•à¹‰à¸­à¸‡à¹€à¸›à¹‡à¸™à¸Šà¸¸à¸”à¸—à¸µà¹ˆà¸”à¸µ (à¸£à¸°à¸«à¸§à¹ˆà¸²à¸‡à¸«à¹‰à¸­à¸‡à¹€à¸§à¸¥à¸²à¸„à¸£à¸¹à¸§à¸±à¸™à¹à¸¥à¸°à¹€à¸£à¸·à¹ˆà¸­à¸‡) à¹€à¸›à¹‡à¸™à¸›à¸£à¸°à¸ˆà¸³', 'JÃ³ kombinÃ¡ciÃ³nak kell lennie (helyisÃ©g, idÅ‘, tanÃ¡r, nap Ã©s tÃ©ma kÃ¶zÃ¶tt) a rutinhoz.', 'Moet een goede combinatie zijn (tussen kamer, tijd, docent, dag en onderwerp) voor routine.', 'Bonum est combination (inter locus, tempus, magister, & re die), pro exercitatione.', 'Harus kombinasi yang baik (antara ruang, waktu, guru, hari & subjek) untuk rutinitas.', 'Rutin iÃ§in iyi bir kombinasyon (oda, zaman, Ã¶ÄŸretmen, gÃ¼n ve konu arasÄ±nda) olmalÄ±.', 'Î ÏÎ­Ï€ÎµÎ¹ Î½Î± ÎµÎ¯Î½Î±Î¹ ÎºÎ±Î»ÏŒÏ‚ ÏƒÏ…Î½Î´Ï…Î±ÏƒÎ¼ÏŒÏ‚ (Î¼ÎµÏ„Î±Î¾Ï Î´Ï‰Î¼Î±Ï„Î¯Î¿Ï…, Ï‡ÏÏŒÎ½Î¿Ï…, ÎºÎ±Î¸Î·Î³Î·Ï„Î®, Î¼Î­ÏÎ± & Î¸Î­Î¼Î±) Î³Î¹Î± ÏÎ¿Ï…Ï„Î¯Î½Î±.', 'ØªØ±Ú©ÛŒØ¨ Ù…Ù†Ø§Ø³Ø¨ (Ø¨ÛŒÙ† Ø§ØªØ§Ù‚ØŒ Ø²Ù…Ø§Ù†ØŒ Ù…Ø¹Ù„Ù…ØŒ Ø±ÙˆØ² Ùˆ Ù…ÙˆØ¶ÙˆØ¹) Ø¨Ø§ÛŒØ¯ Ø¨Ù‡ ØµÙˆØ±Øª Ù…Ù†Ø¸Ù… Ø¨Ø§Ø´Ø¯.', 'Harus menjadi kombinasi yang baik (antara bilik, masa, guru, hari & mata pelajaran) untuk rutin.', 'à°°à±Šà°Ÿà±€à°¨à± à°•à±‹à°¸à°‚ à°®à°‚à°šà°¿ à°•à°²à°¯à°¿à°• (à°—à°¦à°¿, à°¸à°®à°¯à°‚, à°—à±à°°à±à°µà±, à°°à±‹à°œà± & à°µà°¿à°·à°¯à°‚ à°®à°§à±à°¯) à°‰à°‚à°¡à°¾à°²à°¿.', 'à®µà®´à®•à¯à®•à®®à®¾à®© à®•à®²à®µà¯ˆà®¯à®¾à®• à®‡à®°à¯à®•à¯à®• à®µà¯‡à®£à¯à®Ÿà¯à®®à¯ (à®…à®±à¯ˆà®•à¯à®•à¯, à®¨à¯‡à®°à®®à¯, à®†à®šà®¿à®°à®¿à®¯à®°à¯, à®¨à®¾à®³à¯ & à®ªà¯Šà®°à¯à®³à¯).', 'àª¨àª¿àª¤à«àª¯àª•à«àª°àª® àª®àª¾àªŸà«‡ àª¸àª¾àª°àª¾ àª¸àª‚àª¯à«‹àªœàª¨ (àª–àª‚àª¡, àª¸àª®àª¯, àª¶àª¿àª•à«àª·àª•, àª¦àª¿àªµàª¸ àª…àª¨à«‡ àªµàª¿àª·àª¯ àªµàªšà«àªšà«‡) àª¹à«‹àªµà«‹ àªœà«‹àªˆàª.', 'Musi to byÄ‡ dobra kombinacja (miÄ™dzy pokojem, czasem, nauczycielem, dniem i tematem) dla rutyny.', 'ÐŸÐ¾Ð²Ð¸Ð½Ð½Ð¾ Ð±ÑƒÑ‚Ð¸ Ð³Ð°Ñ€Ð½Ð¾ÑŽ ÐºÐ¾Ð¼Ð±Ñ–Ð½Ð°Ñ†Ñ–Ñ”ÑŽ (Ð¼Ñ–Ð¶ ÐºÑ–Ð¼Ð½Ð°Ñ‚Ð¾ÑŽ, Ñ‡Ð°ÑÐ¾Ð¼, Ð²Ñ‡Ð¸Ñ‚ÐµÐ»ÐµÐ¼, Ð´Ð½ÐµÐ¼ Ñ‚Ð° Ð¿Ñ€ÐµÐ´Ð¼ÐµÑ‚Ð¾Ð¼) Ð´Ð»Ñ Ð·Ð²Ð¸Ñ‡Ð°Ð¹Ð½Ð¾Ñ— Ñ€Ð¾Ð±Ð¾Ñ‚Ð¸.', 'à¨°à©à¨Ÿà©€à¨¨ à¨²à¨ˆ à¨µà¨§à©€à¨† à¨®à¨¿à¨¸à¨¼à¨°à¨¨ à¨¹à©‹à¨£à¨¾ (à¨•à¨®à¨°à©‡, à¨¸à¨®à©‡à¨‚, à¨…à¨§à¨¿à¨†à¨ªà¨•, à¨¦à¨¿à¨¨ à¨…à¨¤à©‡ à¨µà¨¿à¨¸à¨¼à©‡ à¨µà¨¿à¨šà¨•à¨¾à¨°).', 'Trebuie sÄƒ fie o combinaÈ›ie bunÄƒ (Ã®ntre camerÄƒ, timp, profesor, zi È™i subiect) pentru rutinÄƒ.', 'á€œá€¯á€•á€ºá€›á€­á€¯á€¸á€œá€¯á€•á€ºá€…á€‰á€ºá€¡á€˜á€­á€¯á€· (á€¡á€á€”á€ºá€¸á€á€…á€ºá€á€”á€ºá€¸á€¡á€€á€¼á€¬á€¸, á€¡á€á€»á€­á€”á€º, á€†á€›á€¬, á€”á€±á€· & á€˜á€¬á€žá€¬á€›á€•á€º) á€€á€±á€¬á€„á€ºá€¸á€žá€±á€¬á€•á€±á€«á€„á€ºá€¸á€…á€•á€ºá€–á€¼á€…á€ºá€›á€™á€Šá€ºá‹', 'Gbá»dá» jáº¹ apapo ti o dara (laarin yara, akoko, oluká», á»já» & akori) fun iá¹£iro.', 'Dole ne ya kasance haÉ—in hade (tsakanin É—aki, lokaci, malami, rana da batun) don na yau da kullum.', NULL, NULL),
(623, 'exam_attendance_instruction', 'Please create exam schedule for this Exam, Class, Section & Subject.', 'à¦à¦‡ à¦ªà¦°à§€à¦•à§à¦·à¦¾, à¦•à§à¦²à¦¾à¦¸, à¦¸à§‡à¦•à¦¶à¦¨ à¦“ à¦¬à¦¿à¦·à§Ÿà§‡à¦° à¦œà¦¨à§à¦¯ à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨à¥¤', 'Por favor, cree un cronograma de exÃ¡menes para este examen, clase, secciÃ³n y tema.', 'ÙŠØ±Ø¬Ù‰ Ø¥Ù†Ø´Ø§Ø¡ Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†Ø§Øª Ù„Ù‡Ø°Ø§ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†ØŒ ÙØ¦Ø©ØŒ Ù‚Ø³Ù… ÙˆØ§Ù„Ù…ÙˆØ¶ÙˆØ¹.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤‡à¤¸ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾, à¤•à¤•à¥à¤·à¤¾, à¤§à¤¾à¤°à¤¾ à¤”à¤° à¤µà¤¿à¤·à¤¯ à¤•à¥‡ à¤²à¤¿à¤ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¬à¤¨à¤¾à¤à¤‚à¥¤', 'Ø¨Ø±Ø§Ø¦Û’ Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ø§Ø³ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ú©Ù„Ø§Ø³ØŒ Ø³ÛŒÚ©Ø´Ù† Ø§ÙˆØ± Ù…ÙˆØ¶ÙˆØ¹ Ú©ÛŒÙ„Ø¦Û’ Ø§Ù…ØªØ­Ø§Ù† Ø´ÛŒÚˆÙˆÙ„ Ø¨Ù†Ø§Ø¦ÛŒÚº.', 'è¯·ä¸ºæ­¤è€ƒè¯•ï¼Œç­çº§ï¼Œç§‘ç›®å’Œç§‘ç›®åˆ›å»ºè€ƒè¯•æ—¶é—´è¡¨ã€‚', 'ã“ã®è©¦é¨“ã€ã‚¯ãƒ©ã‚¹ã€ã‚»ã‚¯ã‚·ãƒ§ãƒ³ï¼†ã‚µãƒ–ã‚¸ã‚§ã‚¯ãƒˆã®è©¦é¨“ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«ã‚’ä½œæˆã—ã¦ãã ã•ã„ã€‚', 'Crie um cronograma de exame para este Exame, Classe, SeÃ§Ã£o e Assunto.', 'Ð¡Ð¾Ð·Ð´Ð°Ð¹Ñ‚Ðµ Ñ€Ð°ÑÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð¾Ð² Ð´Ð»Ñ ÑÑ‚Ð¾Ð³Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°, ÐºÐ»Ð°ÑÑÐ°, Ñ€Ð°Ð·Ð´ÐµÐ»Ð° Ð¸ Ñ‚ÐµÐ¼Ñ‹.', 'Veuillez crÃ©er un horaire dexamen pour cet examen, classe, section et sujet.', 'ì´ ì‹œí—˜, í´ëž˜ìŠ¤, ì„¹ì…˜ ë° ì œëª©ì— ëŒ€í•œ ì‹œí—˜ ì¼ì •ì„ ìž‘ì„±í•˜ì‹­ì‹œì˜¤.', 'Bitte erstellen Sie einen PrÃ¼fungsplan fÃ¼r diese PrÃ¼fung, Klasse, Abschnitt und Thema.', 'Si prega di creare un programma desame per questo esame, classe, sezione e argomento.', 'à¹‚à¸›à¸£à¸”à¸ªà¸£à¹‰à¸²à¸‡à¸à¸³à¸«à¸™à¸”à¸à¸²à¸£à¸ªà¸­à¸šà¸ªà¸³à¸«à¸£à¸±à¸šà¸à¸²à¸£à¸ªà¸­à¸šà¸§à¸´à¸Šà¸² Class, Section & Subject', 'KÃ©rjÃ¼k, hozzon lÃ©tre vizsgaÃ¼temezÃ©st ehhez a vizsgahoz, osztÃ¡lyhoz, szekciÃ³hoz Ã©s tÃ¡rgyhoz.', 'Maak een examenrooster voor dit examen, de cursus, sectie en onderwerp.', 'Placere creare nito schedule hoc IV: I classis, & Art subiectum.', 'Tolong buat jadwal ujian untuk Ujian, Kelas, Seksi & Subjek ini.', 'LÃ¼tfen bu SÄ±nav, Ders, BÃ¶lÃ¼m ve Konunun sÄ±nav takvimini oluÅŸturun.', 'Î”Î·Î¼Î¹Î¿Ï…ÏÎ³Î®ÏƒÏ„Îµ Ï„Î¿ Ï€ÏÏŒÎ³ÏÎ±Î¼Î¼Î± ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½ Î³Î¹Î± Î±Ï…Ï„Î®Î½ Ï„Î·Î½ ÎµÎ¾Î­Ï„Î±ÏƒÎ·, ÎºÎ»Î¬ÏƒÎ·, ÎµÎ½ÏŒÏ„Î·Ï„Î± & Î¸Î­Î¼Î±.', 'Ù„Ø·ÙØ§ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø¢Ø²Ù…ÙˆÙ† Ø¨Ø±Ø§ÛŒ Ø§ÛŒÙ† Ø¢Ø²Ù…ÙˆÙ†ØŒ Ú©Ù„Ø§Ø³ØŒ Ø¨Ø®Ø´ Ùˆ Ù…ÙˆØ¶ÙˆØ¹ Ø§ÛŒØ¬Ø§Ø¯ Ú©Ù†ÛŒØ¯.', 'Sila buat jadual peperiksaan untuk Peperiksaan, Kelas, Bahagian & Subjek ini.', 'à°ˆ à°ªà°°à±€à°•à±à°·, à°¤à°°à°—à°¤à°¿, à°µà°¿à°­à°¾à°—à°‚ & à°µà°¿à°·à°¯à°‚ à°•à±‹à°¸à°‚ à°ªà°°à±€à°•à±à°· à°·à±†à°¡à±à°¯à±‚à°²à± à°¸à±ƒà°·à±à°Ÿà°¿à°‚à°šà°‚à°¡à°¿.', 'à®‡à®¨à¯à®¤à®ªà¯ à®ªà®°à¯€à®Ÿà¯à®šà¯ˆ, à®µà®•à¯à®ªà¯à®ªà¯, à®ªà®¿à®°à®¿à®µà¯ à®®à®±à¯à®±à¯à®®à¯ à®ªà®¾à®Ÿà®¨à¯†à®±à®¿à®•à¯à®•à®¾à®© à®ªà®°à¯€à®Ÿà¯à®šà¯ˆ à®…à®Ÿà¯à®Ÿà®µà®£à¯ˆà®¯à¯ˆ à®‰à®°à¯à®µà®¾à®•à¯à®•à®µà¯à®®à¯.', 'àª† àªªàª°à«€àª•à«àª·àª¾, àªµàª°à«àª—, àªµàª¿àª­àª¾àª— àª…àª¨à«‡ àªµàª¿àª·àª¯ àª®àª¾àªŸà«‡ àªªàª°à«€àª•à«àª·àª¾ àª¶à«‡àª¡à«àª¯à«‚àª² àª¬àª¨àª¾àªµà«‹.', 'UtwÃ³rz harmonogram egzaminÃ³w dla tego egzaminu, klasy, sekcji i przedmiotu.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, ÑÑ‚Ð²Ð¾Ñ€Ñ–Ñ‚ÑŒ Ð³Ñ€Ð°Ñ„Ñ–Ðº Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð² Ð´Ð»Ñ Ñ†ÑŒÐ¾Ð³Ð¾ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ, ÐºÐ»Ð°ÑÑƒ, Ñ€Ð¾Ð·Ð´Ñ–Ð»Ñƒ Ñ‚Ð° Ñ‚ÐµÐ¼Ð¸.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à¨¸ à¨ªà©à¨°à©€à¨–à¨¿à¨†, à¨•à¨²à¨¾à¨¸, à¨­à¨¾à¨— à¨…à¨¤à©‡ à¨µà¨¿à¨¸à¨¼à©‡ à¨¦à©‡ à¨²à¨ˆ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¸à¨¼à¨¡à¨¿à¨Šà¨² à¨¬à¨£à¨¾à¨“.', 'VÄƒ rugÄƒm sÄƒ creaÈ›i un program de examen pentru acest examen, clasÄƒ, secÈ›iune È™i subiect.', ', á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸, á€•á€¯á€’á€ºá€™ & á€¡á€€á€¼á€±á€¬á€„á€ºá€¸á€¡á€›á€¬á€€á€’á€®á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€˜á€­á€¯á€·á€¡á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€á€»á€­á€”á€ºá€‡á€šá€¬á€¸á€€á€­á€¯á€–á€”á€ºá€á€®á€¸á€•á€±á€¸á€•á€«á‹', 'Jowo á¹£áº¹da iá¹£eto ayáº¹wo fun Aká»wo yii, Kilasi, Abala & Koko.', 'Don Allah a halicci jimillar jarrabawar wannan jarrabawar, Class, Sashe & Sashe.', NULL, NULL),
(624, 'exam_mark_instruction', 'Please ensure Exam Schedule and Exam Attendance before Exam Mark Entry.', 'à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦®à¦¾à¦°à§à¦• à¦à¦£à§à¦Ÿà§à¦°à¦¿ à¦†à¦—à§‡ à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€ à¦à¦¬à¦‚ à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨à¥¤', 'Por favor asegÃºrese de Horario de Examen y Asistencia al Examen antes de la Entrada de la Marca de Examen.', 'ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ£ÙƒØ¯ Ù…Ù† Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†Ø§Øª ÙˆØ­Ø¶ÙˆØ± Ø§Ù„Ø§Ù…ØªØ­Ø§Ù† Ù‚Ø¨Ù„ Ø¯Ø®ÙˆÙ„ Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†.', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤®à¤¾à¤°à¥à¤• à¤à¤‚à¤Ÿà¥à¤°à¥€ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€ à¤”à¤° à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¸à¥à¤¨à¤¿à¤¶à¥à¤šà¤¿à¤¤ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø±Ú© Ø§Ù†Ù¹Ø±ÛŒ Ø³Û’ Ù¾ÛÙ„Û’ Ø§Ù…ØªØ­Ø§Ù† Ø´ÛŒÚˆÙˆÙ„ Ø§ÙˆØ± Ø§Ù…ØªØ­Ø§Ù† Ø­Ø§Ø¶Ø±ÛŒ Ú©Ùˆ ÛŒÙ‚ÛŒÙ†ÛŒ Ø¨Ù†Ø§Ø¦ÛŒÚº.', 'å…¥å­¦è€ƒè¯•å‰ï¼Œè¯·ç¡®ä¿è€ƒè¯•æ—¶é—´è¡¨å’Œè€ƒè¯•å‡ºå‹¤ã€‚', 'è©¦é¨“ã®ãƒžãƒ¼ã‚¯å…¥åŠ›ã®å‰ã«è©¦é¨“ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«ã¨è©¦é¨“å‡ºå¸­ã‚’ç¢ºèªã—ã¦ãã ã•ã„ã€‚', 'Por favor, assegure o horÃ¡rio de exame e a participaÃ§Ã£o no exame antes da entrada na marca do exame.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ð¸Ð¾Ð½Ð½Ñ‹Ðµ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ñ‹ Ð¸ ÑÐºÐ·Ð°Ð¼ÐµÐ½ Ð¿Ð¾ÑÐµÑ‰Ð°ÐµÐ¼Ð¾ÑÑ‚Ð¸ Ð´Ð¾ ÑÐ´Ð°Ñ‡Ð¸ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð° ÐœÐ°Ñ€Ðº.', 'Veuillez vous assurer de respecter le calendrier des examens et la participation aux examens avant lentrÃ©e Ã  lexamen.', 'ì‹œí—˜ ë§ˆí¬ ìž…ë ¥ ì „ì— ì‹œí—˜ ì¼ì •ê³¼ ì‹œí—˜ ì¶œì„ì„ í™•ì¸í•˜ì‹­ì‹œì˜¤.', 'Bitte stellen Sie sicher, dass der PrÃ¼fungsplan und die Anwesenheit der PrÃ¼fung vor der Eintragung der PrÃ¼fungsnote eingehalten werden.', 'Si prega di assicurare la pianificazione degli esami e la frequenza degli esami prima delliscrizione.', 'à¹‚à¸›à¸£à¸”à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¸•à¸²à¸£à¸²à¸‡à¸à¸²à¸£à¸ªà¸­à¸šà¹à¸¥à¸°à¸à¸²à¸£à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸à¸²à¸£à¸ªà¸­à¸šà¸à¹ˆà¸­à¸™à¸à¸²à¸£à¸ªà¸­à¸šà¸‚à¸­à¸‡ Mark Entry', 'KÃ©rjÃ¼k, gyÅ‘zÅ‘djÃ¶n meg arrÃ³l, hogy az Exam Mark Entry Ã©s Exam Attendance Exam Mark Entry elÅ‘tt van.', 'Zorg ervoor dat het examenrooster en het examen aanwezig zijn vÃ³Ã³r de inzending van het examen.', 'Test Morbi rhoncus velit, ut et IV ante Attendance Mark Test Entry.', 'Harap pastikan Jadwal Ujian dan Ujian Kehadiran sebelum Entri Tanda Ujian.', 'SÄ±nav iÅŸareti girmeden Ã¶nce lÃ¼tfen SÄ±nav Takvimi ve SÄ±nav Ekibinden emin olunuz.', 'Î’ÎµÎ²Î±Î¹Ï‰Î¸ÎµÎ¯Ï„Îµ ÏŒÏ„Î¹ Î­Ï‡ÎµÏ„Îµ Ï€ÏÎ¿Î³ÏÎ±Î¼Î¼Î±Ï„Î¯ÏƒÎµÎ¹ Ï„Î¹Ï‚ ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÎ¹Ï‚ ÎºÎ±Î¹ Ï„Î·Î½ ÎµÎ¾Î­Ï„Î±ÏƒÎ· Ï€ÏÎ¹Î½ Ï„Î·Î½ ÎµÎ³Î³ÏÎ±Ï†Î®.', 'Ù„Ø·ÙØ§ Ù‚Ø¨Ù„ Ø§Ø² Ø§Ù…ØªØ­Ø§Ù† Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¨Ù‡ Ø¹Ù†ÙˆØ§Ù† Ø®ÙˆØ§Ù†Ø¯Ù‡ Ø´Ø¯Ù‡ ØªØ³Øª Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø¢Ø²Ù…ÙˆÙ† Ùˆ Ø­Ø¶ÙˆØ± Ø¯Ø± Ø¢Ø²Ù…ÙˆÙ† Ø±Ø§ ØªØ¶Ù…ÛŒÙ† Ú©Ù†ÛŒØ¯.', 'Sila pastikan Jadual Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Peperiksaan.', 'à°ªà°°à±€à°•à±à°·à°¾ à°ªà°°à±€à°•à±à°· à°·à±†à°¡à±à°¯à±‚à°²à± à°®à°°à°¿à°¯à± à°ªà°°à±€à°•à±à°·à°¾ à°¹à°¾à°œà°°à± à°¨à°¿à°°à±à°§à°¾à°°à°¿à°‚à°šà°¡à°¾à°¨à°¿à°•à°¿ à°¦à°¯à°šà±‡à°¸à°¿ à°®à°¾à°°à±à°•à± à°Žà°‚à°Ÿà±à°°à±€ à°ªà°°à±€à°•à±à°·.', 'à®ªà®°à¯€à®Ÿà¯à®šà¯ˆà®•à¯à®•à¯ à®®à¯à®©à¯ à®¤à¯‡à®°à¯à®µà¯à®ªà¯ à®ªà®°à¯€à®Ÿà¯à®šà¯ˆ à®®à®±à¯à®±à¯à®®à¯ à®ªà®°à¯€à®Ÿà¯à®šà¯ˆ à®ªà¯†à®±à¯à®¤à®²à¯ à®†à®•à®¿à®¯à®µà®±à¯à®±à¯ˆ à®‰à®±à¯à®¤à®¿à®ªà¯à®ªà®Ÿà¯à®¤à¯à®¤à¯à®•.', 'àªªàª°à«€àª•à«àª·àª¾ àª®àª¾àª°à«àª• àªàª¨à«àªŸà«àª°à«€ àªªàª¹à«‡àª²àª¾àª‚ àªªàª°à«€àª•à«àª·àª¾àª¨à«€ àª¸à«‚àªšàª¿ àª…àª¨à«‡ àªªàª°à«€àª•à«àª·àª¾ àª¹àª¾àªœàª°à«€ àª¨àª•à«àª•à«€ àª•àª°à«‹.', 'NaleÅ¼y upewniÄ‡ siÄ™, Å¼e harmonogram egzaminÃ³w i udziaÅ‚ w egzaminach poprzedzÄ… wejÅ›cie do egzaminu.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²ÐºÐ°Ð¶Ñ–Ñ‚ÑŒ Ñ‡Ð°Ñ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ Ñ– Ð²Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ð½Ñ–ÑÑ‚ÑŒ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ Ð¿ÐµÑ€ÐµÐ´ Ð¿Ð¾Ñ‡Ð°Ñ‚ÐºÐ¾Ð¼ Ð²ÑÑ‚ÑƒÐ¿ÐºÐ¸ Ð´Ð¾ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ.', 'à¨à¨œà©‚à¨•à©‡à¨¸ à¨®à¨¾à¨°à¨• à¨à¨‚à¨Ÿà¨°à©€ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¸à¨¼à¨¡à¨¿à¨Šà¨² à¨…à¨¤à©‡ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¹à¨¾à¨œà¨¼à¨°à©€ à¨¯à¨•à©€à¨¨à©€ à¨¬à¨£à¨¾à¨‰.', 'AsiguraÈ›i-vÄƒ cÄƒ aÈ›i verificat programul de examen È™i examenul Ã®nainte de Ã®nscrierea Ã®n examen.', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€™á€¬á€€á€¯ Entry á€™á€á€­á€¯á€„á€ºá€™á€®á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€á€»á€­á€”á€ºá€‡á€šá€¬á€¸á€”á€¾á€„á€ºá€·á€…á€¬á€™á€±á€¸á€•á€½á€²á€á€€á€ºá€›á€±á€¬á€€á€ºá€žá€±á€á€»á€¬á€•á€«á€…á€±á‹', 'Já»wá» á¹£e idaniloju Akoko Idaduro ati Akoká» Ibáº¹wo á¹£aaju titáº¹ Aká»siláº¹ Aká»siláº¹.', 'Da fatan a tabbatar da Gwargwadon Binciken da Jarraba Tambaya kafin jarrabawar Mark Mark.', NULL, NULL),
(625, 'mark_sheet_instruction', 'Please ensure Exam Attendance and Exam Mark to find Mark Sheet.', 'à¦®à¦¾à¦°à§à¦• à¦¶à¦¿à¦Ÿ à¦–à§à¦à¦œà§‡ à¦ªà§‡à¦¤à§‡ à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦à§à¦¯à¦¾à¦Ÿà§‡à¦¨à¦¡à§‡à¦¨à§à¦¸ à¦à¦¬à¦‚ à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦®à¦¾à¦°à§à¦• à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨à¥¤', 'AsegÃºrate de que la Asistencia al examen y la Marca del examen encuentren la Hoja de calificaciones.', 'ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ£ÙƒØ¯ Ù…Ù† Ø§Ù…ØªØ­Ø§Ù† Ø§Ù„Ø­Ø¶ÙˆØ± ÙˆØ§Ù…ØªØ­Ø§Ù† Ø¹Ù„Ø§Ù…Ø© Ù„Ø¥ÙŠØ¬Ø§Ø¯ Ø¹Ù„Ø§Ù…Ø© ÙˆØ±Ù‚Ø©.', 'à¤®à¤¾à¤°à¥à¤• à¤¶à¥€à¤Ÿ à¤•à¥‹ à¤–à¥‹à¤œà¤¨à¥‡ à¤•à¥‡ à¤²à¤¿à¤ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤”à¤° à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤‚à¤• à¤•à¥‹ à¤¸à¥à¤¨à¤¿à¤¶à¥à¤šà¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ù…Ø§Ø±Ú© Ø´ÛŒÙ¹ Ú©Ùˆ ØªÙ„Ø§Ø´ Ú©Ø±Ù†Û’ Ú©Û’ Ù„Ø¦Û’ Ø§Ù…ØªØ­Ø§Ù† Ø­Ø§Ø¶Ø±ÛŒ Ø§ÙˆØ± Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø±Ú© Ú©Ùˆ ÛŒÙ‚ÛŒÙ†ÛŒ Ø¨Ù†Ø§Ø¦ÛŒÚº.', 'è¯·ç¡®ä¿è€ƒè¯•å‡ºå¸­å’Œè€ƒè¯•æ ‡å¿—æ‰¾åˆ°æ ‡è®°è¡¨ã€‚', 'ãƒžãƒ¼ã‚¯ã‚·ãƒ¼ãƒˆã‚’è¦‹ã¤ã‘ã‚‹ã«ã¯ã€è©¦é¨“å‡ºå¸­ã¨è©¦é¨“ãƒžãƒ¼ã‚¯ã‚’ç¢ºèªã—ã¦ãã ã•ã„ã€‚', 'Certifique-se da presenÃ§a do exame e da marca do exame para encontrar a folha de marca.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½ Ð¿Ð¾ÑÐµÑ‰Ð°ÐµÐ¼Ð¾ÑÑ‚Ð¸ Ð¸ ÑÐºÐ·Ð°Ð¼ÐµÐ½ ÐœÐ°Ñ€Ðº, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð½Ð°Ð¹Ñ‚Ð¸ Mark Sheet.', 'Veuillez vous assurer de la prÃ©sence Ã  lexamen et de la note dexamen pour trouver la feuille de notes.', 'ë§ˆí¬ ì‹œíŠ¸ë¥¼ ì°¾ìœ¼ë ¤ë©´ ì‹œí—˜ ì¶œì„ê³¼ ì‹œí—˜ ë§ˆí¬ë¥¼ í™•ì¸í•˜ì‹­ì‹œì˜¤.', 'Bitte stellen Sie sicher, dass die PrÃ¼fungsteilnahme und die PrÃ¼fungsnote Mark-Sheet finden.', 'Si prega di assicurare la partecipazione agli esami e il marchio dellesame per trovare il foglio dei voti.', 'à¹‚à¸›à¸£à¸”à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¸§à¹ˆà¸²à¸¡à¸µà¸œà¸¹à¹‰à¹€à¸‚à¹‰à¸²à¸ªà¸­à¸šà¹à¸¥à¸°à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸ªà¸­à¸šà¹€à¸žà¸·à¹ˆà¸­à¸«à¸² Mark Sheet', 'KÃ©rjÃ¼k, hogy az Exam Attendance Ã©s a Exam Mark-ot talÃ¡lja meg a Mark Sheet-et.', 'Zorg ervoor dat u een examenformulier en een examencertificaat aantreft om het beoordelingsformulier te vinden.', 'Placere operam ad inveniendum Mark Mark Chapter OMNIBUS June IV Sheet.', 'Harap pastikan Ujian Kehadiran dan Tanda Ujian untuk menemukan Lembar Tandai.', 'Marka Belgesini bulmak iÃ§in lÃ¼tfen SÄ±nav DevamÄ±nÄ± ve SÄ±nav Ä°ÅŸaretini saÄŸlayÄ±n.', 'Î’ÎµÎ²Î±Î¹Ï‰Î¸ÎµÎ¯Ï„Îµ ÏŒÏ„Î¹ Î­Ï‡ÎµÏ„Îµ Ï€Î±ÏÎ±ÎºÎ¿Î»Î¿Ï…Î¸Î®ÏƒÎµÎ¹ Ï„Î·Î½ ÎµÎ¾Î­Ï„Î±ÏƒÎ· ÎºÎ±Î¹ ÎµÎ¾ÎµÏ„Î¬ÏƒÏ„Îµ Ï„Î¿ Î³Î¹Î± Î½Î± Î²ÏÎµÎ¯Ï„Îµ Ï„Î¿ Ï†ÏÎ»Î»Î¿ ÏƒÎ·Î¼ÎµÎ¯Ï‰ÏƒÎ·Ï‚.', 'Ù„Ø·ÙØ§ Ø§Ø² Ø¨Ø§Ø²Ø¯ÛŒØ¯ Ú©Ù†Ù†Ø¯Ù‡ Ø§Ù…ØªØ­Ø§Ù† Ùˆ Ø¹Ù„Ø§Ù…Øª Ø¢Ø²Ù…ÙˆÙ† Ø§Ø·Ù…ÛŒÙ†Ø§Ù† Ø­Ø§ØµÙ„ Ú©Ù†ÛŒØ¯ ØªØ§ Ø¹Ù„Ø§Ù…Øª ÙˆØ±Ù‚ Ø±Ø§ Ù¾ÛŒØ¯Ø§ Ú©Ù†ÛŒØ¯.', 'Sila pastikan Kehadiran Peperiksaan dan Ujian Peperiksaan untuk mencari Mark Sheet.', 'à°®à°¾à°°à±à°•à± à°·à±€à°Ÿà±à°¨à± à°•à°¨à±à°—à±Šà°¨à°¡à°¾à°¨à°¿à°•à°¿ à°ªà°°à±€à°•à±à°·à°¾ à°¹à°¾à°œà°°à± à°®à°°à°¿à°¯à± à°ªà°°à±€à°•à±à°·à°¾ à°®à°¾à°°à±à°•à± à°¨à± à°¨à°¿à°°à±à°§à°¾à°°à°¿à°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®®à®¾à®°à¯à®•à¯ à®¤à®¾à®³à¯ à®•à®£à¯à®Ÿà¯à®ªà®¿à®Ÿà®¿à®•à¯à®• à®¤à¯‡à®°à¯à®šà¯à®šà®¿ à®®à®±à¯à®±à¯à®®à¯ à®¤à¯‡à®°à¯à®µà¯ à®®à®¾à®°à¯à®•à¯ à®‰à®±à¯à®¤à®¿ à®šà¯†à®¯à¯à®¯à®µà¯à®®à¯.', 'àª®àª¾àª°à«àª• àª¶à«€àªŸ àª¶à«‹àª§àªµàª¾ àª®àª¾àªŸà«‡ àªªàª°à«€àª•à«àª·àª¾àª¨à«€ àª¹àª¾àªœàª°à«€ àª…àª¨à«‡ àªªàª°à«€àª•à«àª·àª¾ àª®àª¾àª°à«àª• àª•àª°à«‹.', 'Prosimy o upewnienie siÄ™, Å¼e obecnoÅ›Ä‡ na egzaminie i znak egzaminu jest zaznaczona.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð¿ÐµÐ²Ð½Ñ–Ñ‚ÑŒÑÑ, Ñ‰Ð¾ Ð²Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ñ‡Ñ– Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð² Ñ– ÐµÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ñ–Ð¹Ð½Ñ– ÐºÐ²Ð¸Ñ‚ÐºÐ¸ Ð·Ð½Ð°Ð¹Ð´ÐµÑ‚Ðµ Ð»Ð¸ÑÑ‚Ñ–Ð²ÐºÐ¸.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨®à¨¾à¨°à¨• à¨¸à¨¼à©€à¨Ÿ à¨¨à©‚à©° à¨²à©±à¨­à¨£ à¨²à¨ˆ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¹à¨¾à¨œà¨¼à¨°à©€ à¨…à¨¤à©‡ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨ªà©±à¨¤à¨° à¨¨à©‚à©° à¨¯à¨•à©€à¨¨à©€ à¨¬à¨£à¨¾à¨“.', 'AsiguraÈ›i-vÄƒ cÄƒ aÈ›i participat la examen È™i la examen pentru a gÄƒsi o coalÄƒ Mark.', 'á€™á€¬á€€á€¯á€…á€¬á€›á€½á€€á€ºá€›á€¾á€¬á€á€½á€±á€·á€™á€¾á€…á€¬á€™á€±á€¸á€•á€½á€²á€á€€á€ºá€›á€±á€¬á€€á€ºá€á€¼á€„á€ºá€¸á€”á€¾á€„á€ºá€·á€…á€¬á€™á€±á€¸á€•á€½á€²á€™á€¬á€€á€¯á€žá€±á€á€»á€¬á€•á€«á€…á€±á‹', 'Jowo rii daju pe idaduro Ijadii ati á¹¢ayáº¹wo Marku lati wa Mark Sheet.', 'Da fatan a tabbatar da Hannun Binciken da Takaddun Mark don neman Mark Sheet.', NULL, NULL),
(626, 'exam_result_instruction', 'Please ensure Exam Mark and Exam Attendance before Final Mark Entry.', 'à¦šà§‚à¦¡à¦¼à¦¾à¦¨à§à¦¤ à¦®à¦¾à¦°à§à¦• à¦à¦£à§à¦Ÿà§à¦°à¦¿ à¦†à¦—à§‡ à¦ªà¦°à§€à¦•à§à¦·à¦¾ à¦®à¦¾à¦°à§à¦• à¦à¦¬à¦‚ à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿ à¦¨à¦¿à¦¶à§à¦šà¦¿à¦¤ à¦•à¦°à§à¦¨à¥¤', 'Por favor, asegÃºrese de la marca de examen y la asistencia al examen antes de la entrada de la marca final.', 'ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ£ÙƒØ¯ Ù…Ù† Ø§Ù…ØªØ­Ø§Ù† Ø¹Ù„Ø§Ù…Ø© ÙˆØ§Ù…ØªØ­Ø§Ù† Ø§Ù„Ø­Ø¶ÙˆØ± Ù‚Ø¨Ù„ Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠ Ø§Ù„Ø¯Ø®ÙˆÙ„.', 'à¤…à¤‚à¤¤à¤¿à¤® à¤®à¤¾à¤°à¥à¤• à¤ªà¥à¤°à¤µà¤¿à¤·à¥à¤Ÿà¤¿ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤®à¤¾à¤°à¥à¤• à¤”à¤° à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿ à¤¸à¥à¤¨à¤¿à¤¶à¥à¤šà¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÙØ§Ø¦Ù† Ù…Ø§Ø±Ú© Ø§Ù†Ù¹Ø±ÛŒ Ø³Û’ Ù¾ÛÙ„Û’ Ø§Ù…ØªØ­Ø§Ù† Ú©Û’ Ù†Ø´Ø§Ù† Ø§ÙˆØ± Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ø­Ø§Ø¶Ø±ÛŒ ÛŒÙ‚ÛŒÙ†ÛŒ Ø¨Ù†Ø§Ø¦ÛŒÚº.', 'è¯·åœ¨æœ€ç»ˆæ ‡è®°è¾“å…¥å‰ç¡®ä¿è€ƒè¯•æ ‡å¿—å’Œè€ƒè¯•å‡ºå‹¤ã€‚', 'æœ€çµ‚ãƒžãƒ¼ã‚¯è¨˜å…¥å‰ã«è©¦é¨“ãƒžãƒ¼ã‚¯ã¨è©¦é¨“å‡ºå¸­ã‚’ç¢ºèªã—ã¦ãã ã•ã„ã€‚', 'Certifique-se de Exame da marca e da presenÃ§a do exame antes da entrada na marca final.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑƒÐ±ÐµÐ´Ð¸Ñ‚ÐµÑÑŒ, Ñ‡Ñ‚Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½ Ð¸ ÑƒÑ‡Ð°ÑÑ‚Ð¸Ðµ Ð² ÑÐºÐ·Ð°Ð¼ÐµÐ½Ðµ Ð¿ÐµÑ€ÐµÐ´ Ð¾ÐºÐ¾Ð½Ñ‡Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾Ð¹ Ð·Ð°Ð¿Ð¸ÑÑŒÑŽ.', 'Sil vous plaÃ®t assurez-vous dexamen et de prÃ©sence Ã  lexamen avant lentrÃ©e de la note finale.', 'ìµœì¢… ì ìˆ˜ ìž…ë ¥ ì „ì— ì‹œí—˜ ì ìˆ˜ì™€ ì‹œí—˜ ì¶œì„ì„ í™•ì¸í•˜ì‹­ì‹œì˜¤.', 'Bitte stellen Sie sicher, dass Sie die PrÃ¼fung und die Teilnahme an der PrÃ¼fung vor der endgÃ¼ltigen Noteneingabe erhalten.', 'Si prega di assicurare la certificazione degli esami e la partecipazione agli esami prima della registrazione del voto finale.', 'à¹‚à¸›à¸£à¸”à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¹ƒà¸«à¹‰à¹à¸™à¹ˆà¹ƒà¸ˆà¸§à¹ˆà¸²à¸¡à¸µà¸œà¸¹à¹‰à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸à¸²à¸£à¸ªà¸­à¸šà¹à¸¥à¸°à¸à¸²à¸£à¸ªà¸­à¸šà¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸à¸²à¸£à¹à¸‚à¹ˆà¸‡à¸‚à¸±à¸™à¸à¹ˆà¸­à¸™à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸à¸²à¸£à¹à¸‚à¹ˆà¸‡à¸‚à¸±à¸™ Final Mark Entry', 'KÃ©rjÃ¼k, gyÅ‘zÅ‘djÃ¶n meg az Exam Mark Ã©s Exam Attendance elÅ‘tt a vÃ©gsÅ‘ belÃ©pÃ©si bejegyzÃ©st.', 'Zorg ervoor dat het examen en het examen aanwezig zijn vÃ³Ã³r de definitieve inschrijving.', 'Mark quaeso ensure nito et Finalis nito apud Attendance Mark Entry.', 'Harap pastikan Tanda Ujian dan Ujian Kehadiran sebelum Entri Mark Akhir.', 'Nihai Ä°ÅŸaret GiriÅŸinden Ã¶nce lÃ¼tfen SÄ±nav Ä°mzasÄ± ve SÄ±nav Ekibinden emin olun.', 'Î Î±ÏÎ±ÎºÎ±Î»ÎµÎ¯ÏƒÎ¸Îµ Î½Î± Î²ÎµÎ²Î±Î¹Ï‰Î¸ÎµÎ¯Ï„Îµ Î³Î¹Î± Ï„Î·Î½ ÎµÎ¾Î­Ï„Î±ÏƒÎ· ÎºÎ±Î¹ Ï„Î·Î½ ÎµÎ¾Î­Ï„Î±ÏƒÎ· Ï€ÏÎ¹Î½ Ï„Î·Î½ Ï„ÎµÎ»Î¹ÎºÎ® ÎµÎ³Î³ÏÎ±Ï†Î®.', 'Ù„Ø·ÙØ§ Ù‚Ø¨Ù„ Ø§Ø² ÙˆØ±ÙˆØ¯ Ø¨Ù‡ Ù†Ø´Ø±ÛŒÙ‡ Ù†Ù‡Ø§ÛŒÛŒ Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒ Ø¢Ø²Ù…ÙˆÙ† Ùˆ Ø­Ø¶ÙˆØ± Ø¢Ø²Ù…ÙˆÙ† Ø±Ø§ ØªØ¶Ù…ÛŒÙ† Ú©Ù†ÛŒØ¯.', 'Sila pastikan Peperiksaan dan Kehadiran Peperiksaan sebelum Kemasukan Tanda Akhir.', 'à°«à±ˆà°¨à°²à± à°®à°¾à°°à±à°•à± à°Žà°‚à°Ÿà±à°°à±€à°•à°¿ à°®à±à°‚à°¦à± à°ªà°°à±€à°•à±à°· à°®à°¾à°°à±à°•à± à°®à°°à°¿à°¯à± à°ªà°°à±€à°•à±à°·à°¾ à°¹à°¾à°œà°°à±à°¨à± à°¨à°¿à°°à±à°§à°¾à°°à°¿à°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®‡à®±à¯à®¤à®¿à®¯à®¾à®£à¯à®Ÿà¯ à®®à®¾à®°à¯à®•à¯ à®¨à¯à®´à¯ˆà®µà¯à®®à¯à®±à¯ˆà®¯à®¿à®²à¯ à®¤à¯‡à®°à¯à®µà¯à®ªà¯ à®ªà®°à¯€à®Ÿà¯à®šà¯ˆ à®®à®±à¯à®±à¯à®®à¯ à®¤à¯‡à®°à¯à®µà¯à®ªà¯ à®ªà®£à®¿à®•à®³à¯ˆ à®‰à®±à¯à®¤à®¿ à®šà¯†à®¯à¯à®¯à¯à®™à¯à®•à®³à¯.', 'àª…àª‚àª¤àª¿àª® àª®àª¾àª°à«àª• àªàª¨à«àªŸà«àª°à«€ àªªàª¹à«‡àª²àª¾àª‚ àªªàª°à«€àª•à«àª·àª¾ àª®àª¾àª°à«àª• àª…àª¨à«‡ àªªàª°à«€àª•à«àª·àª¾àª¨à«€ àª¹àª¾àªœàª°à«€ àª¨àª¿àª¶à«àªšàª¿àª¤ àª•àª°à«‹.', 'Prosimy o upewnienie siÄ™, Å¼e Egzamin i Egzaminacja Egzaminu odbywajÄ… siÄ™ przed Ostatecznym Wpisem.', 'ÐžÐ·Ð½Ð°Ð¹Ð¾Ð¼Ñ‚ÐµÑÑ Ð· ÑƒÑ‡Ð°ÑÐ½Ð¸ÐºÐ°Ð¼Ð¸ Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð² Ñ‚Ð° ÑƒÑ‡Ð°ÑÐ½Ð¸ÐºÐ°Ð¼Ð¸ Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð² Ð¿ÐµÑ€ÐµÐ´ Ð¿Ð¾Ñ‡Ð°Ñ‚ÐºÐ¾Ð¼ Ð²ÑÑ‚ÑƒÐ¿Ð½Ð¾Ð³Ð¾ Ð·Ð°Ð¿Ð¸ÑÑƒ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨…à©°à¨¤à¨® à¨®à¨¾à¨°à¨• à¨à¨‚à¨Ÿà¨°à©€ à¨¤à©‹à¨‚ à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨…à©°à¨• à¨…à¨¤à©‡ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¹à¨¾à¨œà¨¼à¨°à©€ à¨¯à¨•à©€à¨¨à©€ à¨¬à¨£à¨¾à¨‰.', 'AsiguraÈ›i-vÄƒ cÄƒ examinaÈ›i examenul È™i examenul Ã®nainte de Ã®nscrierea Ã®n marcajul final.', 'á€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸á€™á€¬á€€á€¯ Entry á€™á€á€­á€¯á€„á€ºá€™á€®á€…á€¬á€™á€±á€¸á€•á€½á€²á€™á€¬á€€á€¯á€”á€²á€·á€…á€¬á€™á€±á€¸á€•á€½á€²á€á€€á€ºá€›á€±á€¬á€€á€ºá€žá€±á€á€»á€¬á€•á€«á€…á€±á‹', 'Já»wá» á¹£e idaniloju Atiláº¹ká» Aká»siláº¹ ati isinwo Iwoye á¹£aaju á¹¢iá¹£e Aká»siláº¹ Titáº¹.', 'Da fatan a tabbatar da Takaddun Mark da Takaddama na Aiki kafin shigarwa na karshe.', NULL, NULL),
(627, 'promotion_instruction_1', 'Please choose carefully Running Session & Promote Session.', 'à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦¸à¦¾à¦¬à¦§à¦¾à¦¨à§‡ à¦šà¦²à¦®à¦¾à¦¨ à¦¸à§‡à¦¶à¦¨  à¦à¦¬à¦‚ à¦ªà§à¦°à¦®à§‹à¦Ÿ à¦¸à§‡à¦¶à¦¨ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤', 'Elija cuidadosamente Ejecutar sesiÃ³n y promover sesiÃ³n.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ Ø§Ø®ØªÙŠØ§Ø± Ø¨Ø¹Ù†Ø§ÙŠØ© ØªØ´ØºÙŠÙ„ Ø¬Ù„Ø³Ø© ÙˆØªØ¹Ø²ÙŠØ² Ø§Ù„Ø¯ÙˆØ±Ø©.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤¸à¤¾à¤µà¤§à¤¾à¤¨à¥€ à¤¸à¥‡ à¤šà¤² à¤°à¤¹à¥‡ à¤¸à¤¤à¥à¤° à¤”à¤° à¤¸à¤¤à¥à¤° à¤•à¥‹ à¤¬à¤¢à¤¼à¤¾à¤µà¤¾ à¤¦à¥‡à¤‚ à¤šà¥à¤¨à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø±Ù†Ù†Ú¯ Ø³ÛŒØ´Ù† Ø§ÙˆØ± Ø³ÛŒØ´Ù† Ú©Ùˆ ÙØ±ÙˆØº Ø¯ÛŒÙ†Û’ Ú©Û’ Ù„Û“ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº.', 'è¯·è°¨æ…Žé€‰æ‹©è¿è¡Œä¼šè®®å’ŒæŽ¨å¹¿ä¼šè®®ã€‚', 'æ…Žé‡ã«å®Ÿè¡Œã‚»ãƒƒã‚·ãƒ§ãƒ³ã¨ãƒ—ãƒ­ãƒ¢ãƒ¼ãƒˆã‚»ãƒƒã‚·ãƒ§ãƒ³ã‚’é¸æŠžã—ã¦ãã ã•ã„ã€‚', 'Por favor, escolha cuidadosamente a SessÃ£o de SessÃ£o e PromoÃ§Ã£o.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ñ‚Ñ‰Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Â«Ð—Ð°Ð¿ÑƒÑÐº ÑÐµÐ°Ð½ÑÐ°Â» Ð¸ Â«Ð¡Ð¾Ð´ÐµÐ¹ÑÑ‚Ð²Ð¸ÐµÂ».', 'Sil vous plaÃ®t choisir soigneusement session en cours et promouvoir la session.', 'ì‹ ì¤‘í•˜ê²Œ ì„¸ì…˜ ë° í”„ë¡œëª¨ì…˜ ì„¸ì…˜ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.', 'Bitte wÃ¤hlen Sie sorgfÃ¤ltig ', 'Si prega di scegliere attentamente Running Session & Promoting Session.', 'à¹€à¸¥à¸·à¸­à¸à¹€à¸‹à¸ªà¸Šà¸±à¸™à¹à¸¥à¸°à¹€à¸‹à¸ªà¸Šà¸±à¸™à¸ªà¹ˆà¸‡à¹€à¸ªà¸£à¸´à¸¡à¸à¸²à¸£à¸‚à¸²à¸¢à¸­à¸¢à¹ˆà¸²à¸‡à¸£à¸­à¸šà¸„à¸­à¸š', 'KÃ©rjÃ¼k, gondosan vÃ¡lassza a FuttatÃ¡s Ã©s a kampÃ¡ny elÅ‘mozdÃ­tÃ¡sÃ¡t.', 'Kies zorgvuldig Sessie uitvoeren en sessie promoten.', 'Placere eligere diligenter & Thronus Sessio Promovere Sessio.', 'Harap pilih Session & Promote Session dengan hati-hati.', 'LÃ¼tfen dikkatle Ã‡alÄ±ÅŸmayÄ± SeÃ§in ve Oturumu TanÄ±tÄ±n.', 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Ï€ÏÎ¿ÏƒÎµÎºÏ„Î¹ÎºÎ¬ Ï„Î·Î½ ÎµÎºÏ„Î­Î»ÎµÏƒÎ· Ï„Î·Ï‚ ÏƒÏ…Î½ÏŒÎ´Î¿Ï… ÎºÎ±Î¹ Ï„Î·Î½ Ï€ÏÎ¿ÏŽÎ¸Î·ÏƒÎ· Ï„Î·Ï‚ ÏƒÏ…Î½ÏŒÎ´Î¿Ï….', 'Ù„Ø·ÙØ§ Ø¨Ø§ Ø¯Ù‚Øª Ø¯Ø± Ø­Ø§Ù„ Ø§Ø¬Ø±Ø§ Session & Promote Session Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯.', 'Sila pilih Sesi Berjalan & Sesi Promosi dengan hati-hati.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°¸à±†à°·à°¨à± à°°à°¨à±à°¨à°¿à°‚à°—à± & à°ªà±à°°à°šà°¾à°°à°‚ à°¸à±†à°·à°¨à±à°¨à± à°œà°¾à°—à±à°°à°¤à±à°¤à°—à°¾ à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®…à®®à®°à¯à®µà¯ à®‡à®¯à®•à¯à®•à¯à®¤à®²à¯ à®®à®±à¯à®±à¯à®®à¯ à®…à®®à®°à¯à®µà¯ à®Šà®•à¯à®•à¯à®µà®¿à®•à¯à®• à®•à®µà®©à®®à®¾à®•à®¤à¯ à®¤à¯‡à®°à¯à®¨à¯à®¤à¯†à®Ÿà¯à®™à¯à®•à®³à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª•àª¾àª³àªœà«€àªªà«‚àª°à«àªµàª• àªšàª¾àª²à«€ àª°àª¹à«‡àª² àª¸àª¤à«àª° àª…àª¨à«‡ àªªà«àª°àª®à«‹àª¶àª¨ àª¸àª¤à«àª° àªªàª¸àª‚àª¦ àª•àª°à«‹.', 'ProszÄ™ wybraÄ‡ ostroÅ¼nie Running Session & Promote Session.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð¾Ð±ÐµÑ€ÐµÐ¶Ð½Ð¾ Ð²Ð¸Ð±Ð¸Ñ€Ð°Ð¹Ñ‚Ðµ Ð·Ð°Ð¿ÑƒÑÐº ÑÐµÐ°Ð½ÑÑƒ Ñ‚Ð° Ð¿Ñ€Ð¾ÑÑƒÐ½ÑŒÑ‚Ðµ ÑÐµÐ°Ð½Ñ.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨§à¨¿à¨†à¨¨ à¨¨à¨¾à¨² à¨šà©±à¨² à¨°à¨¹à©‡ à¨¸à©ˆà¨¸à¨¼à¨¨ à¨¨à©‚à©° à¨šà©à¨£à©‹ à¨…à¨¤à©‡ à¨¸à©ˆà¨¸à¨¼à¨¨ à¨¨à©‚à©° à¨ªà©à¨°à¨®à©‹à¨Ÿ à¨•à¨°à©‹.', 'AlegeÈ›i cu atenÈ›ie Rularea sesiunii È™i promovarea sesiunii.', 'á€á€½á€±á€·á€†á€¯á€¶á€†á€½á€±á€¸á€”á€½á€±á€¸á€•á€½á€² & á€á€½á€±á€·á€†á€¯á€¶á€†á€½á€±á€¸á€”á€½á€±á€¸á€•á€½á€²á€™á€¼á€¾á€„á€·á€ºá€á€„á€ºá€€á€­á€¯ run á€‚á€›á€¯á€á€…á€­á€¯á€€á€ºá€›á€½á€±á€¸á€á€»á€šá€ºá€•á€«á‹', 'Jowo yan á¹¢eto Niláº¹ Ikáº¹ká» ati Igbimá» Ikáº¹ká».', 'Da fatan za a zaÉ“a a zahiri a Gudun Zama da Tsarin Zama.', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(628, 'promotion_instruction_2', 'Please choose carefully Current Class & Promote to Class.', 'à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦¸à¦¾à¦¬à¦§à¦¾à¦¨à§‡ à¦¬à¦°à§à¦¤à¦®à¦¾à¦¨ à¦•à§à¦²à¦¾à¦¸  à¦à¦¬à¦‚ à¦ªà§à¦°à¦®à§‹à¦Ÿ à¦•à§à¦²à¦¾à¦¸ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤', 'Por favor, elija con cuidado la Clase actual y Promocione a la clase.', 'ÙŠØ±Ø¬Ù‰ Ø§Ø®ØªÙŠØ§Ø± Ø¨Ø¹Ù†Ø§ÙŠØ© Ø§Ù„ÙØ¦Ø© Ø§Ù„Ø­Ø§Ù„ÙŠØ© ÙˆØ§Ù„ØªØ±Ù‚ÙŠØ© Ø¥Ù„Ù‰ ÙØ¦Ø©.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤§à¥à¤¯à¤¾à¤¨ à¤¦à¥‡à¤‚ à¤µà¤°à¥à¤¤à¤®à¤¾à¤¨ à¤•à¤•à¥à¤·à¤¾ à¤”à¤° à¤¶à¥à¤°à¥‡à¤£à¥€ à¤®à¥‡à¤‚ à¤ªà¥à¤°à¤šà¤¾à¤° à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§Ø­ØªÛŒØ§Ø· Ø³Û’ Ù…ÙˆØ¬ÙˆØ¯Û Ú©Ù„Ø§Ø³ Ú©Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ø±ÛŒÚº Ø§ÙˆØ± Ú©Ù„Ø§Ø³ Ù…ÛŒÚº ÙØ±ÙˆØº Ø¯ÛŒÚº.', 'è¯·ä»”ç»†é€‰æ‹©å½“å‰è¯¾ç¨‹å¹¶æå‡åˆ°è¯¾å ‚ã€‚', 'æ…Žé‡ã«é¸æŠžã—ã¦ãã ã•ã„ç¾åœ¨ã®ã‚¯ãƒ©ã‚¹ã¨ã‚¯ãƒ©ã‚¹ã¸ã®æ˜‡æ ¼', 'Por favor, escolha cuidadosamente a classe atual e promova a classe.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð²Ð½Ð¸Ð¼Ð°Ñ‚ÐµÐ»ÑŒÐ½Ð¾ Ð¢ÐµÐºÑƒÑ‰Ð¸Ð¹ ÐºÐ»Ð°ÑÑ Ð¸ Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð³Ð°Ð¹Ñ‚Ðµ ÐºÐ»Ð°ÑÑ.', 'Sil vous plaÃ®t choisir soigneusement classe actuelle et promouvoir Ã  la classe.', 'ì£¼ì˜ ê¹Šê²Œ ì„ íƒí•˜ì‹­ì‹œì˜¤ Current Class & Class to Promote.', 'Bitte wÃ¤hlen Sie sorgfÃ¤ltig Aktuelle Klasse und Promote to Class.', 'Si prega di scegliere attentamente Classe corrente e promozione in classe.', 'à¹‚à¸›à¸£à¸”à¹€à¸¥à¸·à¸­à¸ Class à¸›à¸±à¸ˆà¸ˆà¸¸à¸šà¸±à¸™à¹à¸¥à¸°à¹‚à¸›à¸£à¹‚à¸¡à¸• Class', 'KÃ©rem, gondosan vÃ¡lassza az AktuÃ¡lis osztÃ¡ly Ã©s az elÅ‘adÃ¡s osztÃ¡lyba.', 'Gelieve zorgvuldig te kiezen Huidige klasse en promotie naar klas.', 'Placere eligere diligenter Current Class Promovere in Ps.', 'Silakan pilih kelas yang sekarang dengan hati-hati & promosikan ke kelas.', 'LÃ¼tfen GeÃ§erli SÄ±nÄ±fÄ± SeÃ§in ve SÄ±nÄ±fÄ± TanÄ±tÄ±n.', 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Ï€ÏÎ¿ÏƒÎµÎºÏ„Î¹ÎºÎ¬ Ï„Î·Î½ Ï„ÏÎ­Ï‡Î¿Ï…ÏƒÎ± ÎºÎ»Î¬ÏƒÎ· ÎºÎ±Î¹ Ï„Î·Î½ Ï€ÏÎ¿ÏŽÎ¸Î·ÏƒÎ· ÏƒÏ„Î·Î½ ÎºÎ»Î¬ÏƒÎ·.', 'Ù„Ø·ÙØ§ Ø¯Ù‚Øª Ú©Ù„Ø§Ø³ ÙØ¹Ù„ÛŒ Ø±Ø§ Ø§Ø±ØªÙ‚Ø§ Ø¯Ù‡ÛŒØ¯ Ùˆ Ú©Ù„Ø§Ø³ Ø±Ø§ Ø§Ø±ØªÙ‚Ø§ Ø¯Ù‡ÛŒØ¯.', 'Sila pilih Kelas Semasa & Menggalakkan Kelas dengan berhati-hati.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°•à±à°²à°¾à°¸à±à°•à± à°ªà±à°°à°¸à±à°¤à±à°¤ à°•à±à°²à°¾à°¸à± & à°ªà±à°°à°®à±‹à°Ÿà±à°¨à± à°œà°¾à°—à±à°°à°¤à±à°¤à°—à°¾ à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®¤à®±à¯à®ªà¯‹à®¤à¯ˆà®¯ à®µà®•à¯à®ªà¯à®ªà¯ à®®à®±à¯à®±à¯à®®à¯ à®µà®•à¯à®ªà¯à®ªà¯à®•à¯à®•à¯ à®Šà®•à¯à®•à¯à®µà®¿à®•à¯à®•à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª•àª¾àª³àªœà«€àªªà«‚àª°à«àªµàª• àªµàª°à«àª¤àª®àª¾àª¨ àªµàª°à«àª— àªªàª¸àª‚àª¦ àª•àª°à«‹ àª…àª¨à«‡ àªµàª°à«àª—àª®àª¾àª‚ àªªà«àª°àª®à«‹àªŸ àª•àª°à«‹.', 'Wybierz ostroÅ¼nie Obecna klasa i promuj do klasy.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð¾Ð±ÐµÑ€ÐµÐ¶Ð½Ð¾ Ð²Ð¸Ð±Ð¸Ñ€Ð°Ð¹Ñ‚Ðµ Ð¿Ð¾Ñ‚Ð¾Ñ‡Ð½Ð¸Ð¹ ÐºÐ»Ð°Ñ Ñ‚Ð° Ñ€ÐµÐºÐ»Ð°Ð¼ÑƒÐ¹Ñ‚Ðµ Ð´Ð¾ ÐºÐ»Ð°ÑÑƒ.', 'à¨•à©à¨°à¨¿à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨§à¨¿à¨†à¨¨ à¨¨à¨¾à¨² à¨µà¨°à¨¤à¨®à¨¾à¨¨ à¨•à¨²à¨¾à¨¸ à¨…à¨¤à©‡ à¨ªà©à¨°à©‹à¨®à©‹à¨Ÿ à¨¤à©‹à¨‚ à¨•à¨²à¨¾à¨¸ à¨šà©à¨£à©‹.', 'AlegeÈ›i cu atenÈ›ie Clasa curentÄƒ È™i promovaÈ›i Ã®n clasÄƒ.', 'á€œá€€á€ºá€›á€¾á€­á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸á€‚á€›á€¯á€á€…á€­á€¯á€€á€ºá€€á€­á€¯á€›á€¾á€±á€¸á€á€šá€»á€¼ & Class á€€á€­á€¯á€™á€¾á€™á€¼á€¾á€„á€·á€ºá€á€„á€ºá€•á€«á‹', 'Já»wá» yan abojuto Kilasi lá»wá»lá»wá» & Igbelaruge si Kilasi.', 'Da fatan za a zaÉ“a a hankali A halin yanzu Class & Yi Nasara zuwa Class.', NULL, NULL),
(629, 'promotion_instruction_3', 'Please complete the process of Exam, Exam Schedule, Exam Attendance, Exam Mark & Final Result.', 'à¦…à¦¨à§à¦—à§à¦°à¦¹à¦ªà§‚à¦°à§à¦¬à¦• à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦ªà§à¦°à¦•à§à¦°à¦¿à¦¯à¦¼à¦¾, à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦¸à¦®à¦¯à¦¼à¦¸à§‚à¦šà§€, à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦‰à¦ªà¦¸à§à¦¥à¦¿à¦¤à¦¿, à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦šà¦¿à¦¹à§à¦¨ à¦à¦¬à¦‚ à¦šà§‚à¦¡à¦¼à¦¾à¦¨à§à¦¤ à¦«à¦²à¦¾à¦«à¦² à¦¸à¦®à§à¦ªà¦¨à§à¦¨ à¦•à¦°à§à¦¨à¥¤', 'Complete el proceso de Examen, Programa de examen, Asistencia de examen, Marca de examen y Resultado final.', 'ÙŠØ±Ø¬Ù‰ Ø¥ÙƒÙ…Ø§Ù„ Ø¹Ù…Ù„ÙŠØ© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†ØŒ Ø¬Ø¯ÙˆÙ„ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†Ø§ØªØŒ Ø§Ù…ØªØ­Ø§Ù† Ø§Ù„Ø­Ø¶ÙˆØ±ØŒ Ø¹Ù„Ø§Ù…Ø© Ø§Ù„Ø§Ù…ØªØ­Ø§Ù† ÙˆØ§Ù„Ù†ØªÙŠØ¬Ø© Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠØ©.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾, à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€, à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿, à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤‚à¤• à¤”à¤° à¤…à¤‚à¤¤à¤¿à¤® à¤ªà¤°à¤¿à¤£à¤¾à¤® à¤•à¥€ à¤ªà¥à¤°à¤•à¥à¤°à¤¿à¤¯à¤¾ à¤•à¥‹ à¤ªà¥‚à¤°à¤¾ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ø§Ù…ØªØ­Ø§Ù†ØŒ Ø§Ù…ØªØ­Ø§Ù† Ø´ÛŒÚˆÙˆÙ„ØŒ Ø§Ù…ØªØ­Ø§Ù† Ø­Ø§Ø¶Ø±ÛŒØŒ Ø§Ù…ØªØ­Ø§Ù† Ù…Ø§Ø±Ú© Ø§ÙˆØ± Ø­ØªÙ…ÛŒ Ù†ØªØ§Ø¦Ø¬ Ú©Ø§ Ø¹Ù…Ù„ Ù…Ú©Ù…Ù„ Ú©Ø±ÛŒÚº.', 'è¯·å®Œæˆè€ƒè¯•ï¼Œè€ƒè¯•æ—¶é—´è¡¨ï¼Œè€ƒè¯•è€ƒå‹¤ï¼Œè€ƒè¯•æ ‡å¿—å’Œæœ€ç»ˆç»“æžœçš„è¿‡ç¨‹ã€‚', 'è©¦é¨“ã€è©¦é¨“ã®ã‚¹ã‚±ã‚¸ãƒ¥ãƒ¼ãƒ«ã€è©¦é¨“ã®å‡ºå¸­ã€è©¦é¨“ã®ãƒžãƒ¼ã‚¯ã¨æœ€çµ‚çµæžœã®ãƒ—ãƒ­ã‚»ã‚¹ã‚’å®Œäº†ã—ã¦ãã ã•ã„ã€‚', 'Por favor, complete o processo de exame, horÃ¡rio de exames, atendimento ao exame, marca de exame e resultado final.', 'Ð—Ð°Ð²ÐµÑ€ÑˆÐ¸Ñ‚Ðµ Ð¿Ñ€Ð¾Ñ†ÐµÑÑ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°, ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð³Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°, ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°Ñ†Ð¸Ð¾Ð½Ð½Ð¾Ð³Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°, ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð° Ð¸ Ð¸Ñ‚Ð¾Ð³Ð¾Ð²Ð¾Ð³Ð¾ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð°.', 'Veuillez complÃ©ter le processus dexamen, le programme dexamen, la prÃ©sence aux examens, la note dexamen et le rÃ©sultat final.', 'ì‹œí—˜, ì‹œí—˜ ì¼ì •, ì‹œí—˜ ì°¸ì„, ì‹œí—˜ ì ìˆ˜ ë° ìµœì¢… ê²°ê³¼ì˜ ê³¼ì •ì„ ì™„ë£Œí•˜ì‹­ì‹œì˜¤.', 'Bitte fÃ¼hren Sie den Prozess der PrÃ¼fung, des PrÃ¼fungsplans, der PrÃ¼fungsbesuch, der PrÃ¼fungsnote und des Abschlussergebnisses durch.', 'Si prega di completare il processo di esame, pianificazione dellesame, partecipazione agli esami, voto dellesame e risultato finale.', 'à¸à¸£à¸¸à¸“à¸²à¸à¸£à¸­à¸à¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡à¸à¸²à¸£à¸ªà¸­à¸š, à¸à¸³à¸«à¸™à¸”à¸à¸²à¸£à¸ªà¸­à¸š, à¹€à¸‚à¹‰à¸²à¸£à¹ˆà¸§à¸¡à¸à¸²à¸£à¸ªà¸­à¸š, à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸à¸²à¸£à¸ªà¸­à¸šà¹à¸¥à¸°à¸œà¸¥à¸à¸²à¸£à¸—à¸”à¸ªà¸­à¸šà¸‚à¸±à¹‰à¸™à¸ªà¸¸à¸”à¸—à¹‰à¸²à¸¢', 'KÃ©rjÃ¼k, tÃ¶ltse ki a vizsga, az Ã©rettsÃ©gi vizsga, az Ã©rettsÃ©gi, a vizsgajegy Ã©s a vÃ©geredmÃ©ny folyamatÃ¡t.', 'Voltooi het proces van examen, examenroosters, examen, examen en eindresultaat.', 'Placere perficere processus MACROCYTOSIS, Exam Schedule, OMNIBUS June IV: Mark Chapter & exitu rerum.', 'Selesaikan proses Ujian, Jadwal Ujian, Ujian Kehadiran, Tanda Ujian & Hasil Akhir.', 'LÃ¼tfen SÄ±nav, SÄ±nav Takvimi, SÄ±nav KatÄ±lÄ±mÄ±, SÄ±nav Sonucu ve Final SonuÃ§ sÃ¼recini tamamlayÄ±n.', 'Î Î±ÏÎ±ÎºÎ±Î»Î¿ÏÎ¼Îµ ÏƒÏ…Î¼Ï€Î»Î·ÏÏŽÏƒÏ„Îµ Ï„Î· Î´Î¹Î±Î´Î¹ÎºÎ±ÏƒÎ¯Î± Ï„Î·Ï‚ ÎµÎ¾Î­Ï„Î±ÏƒÎ·Ï‚, Ï„Î¿Ï… Ï€ÏÎ¿Î³ÏÎ¬Î¼Î¼Î±Ï„Î¿Ï‚ ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½, Ï„Î·Ï‚ ÏƒÏ…Î¼Î¼ÎµÏ„Î¿Ï‡Î®Ï‚ ÏƒÏ„Î¹Ï‚ ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÎ¹Ï‚, Ï„Î¿Ï… ÎµÎ¾ÎµÏ„Î±ÏƒÏ„Î¹ÎºÎ¿Ï ÏƒÎ·Î¼ÎµÎ¹ÏŽÎ¼Î±Ï„Î¿Ï‚ ÎºÎ±Î¹ Ï„Î¿Ï… Ï„ÎµÎ»Î¹ÎºÎ¿Ï Î±Ï€Î¿Ï„ÎµÎ»Î­ÏƒÎ¼Î±Ï„Î¿Ï‚.', 'Ù„Ø·ÙØ§ Ø±ÙˆÙ†Ø¯ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ø¨Ø±Ù†Ø§Ù…Ù‡ Ø§Ù…ØªØ­Ø§Ù†ØŒ Ø­Ø¶ÙˆØ± Ø§Ù…ØªØ­Ø§Ù†ØŒ Ù…Ø¹Ø§ÛŒÙ†Ù‡ Ø¢Ø²Ù…ÙˆÙ† Ùˆ Ù†ØªÛŒØ¬Ù‡ Ù†Ù‡Ø§ÛŒÛŒ Ø±Ø§ ØªÚ©Ù…ÛŒÙ„ Ú©Ù†ÛŒØ¯.', 'Sila lengkapkan proses Peperiksaan, Jadual Peperiksaan, Kehadiran Peperiksaan, Peperiksaan Ujian & Keputusan Akhir.', 'à°ªà°°à±€à°•à±à°·à°¾ à°ªà±à°°à°•à±à°°à°¿à°¯ à°ªà±‚à°°à±à°¤à°¿ à°šà±‡à°¯à°‚à°¡à°¿, à°ªà°°à±€à°•à±à°·à°¾ à°·à±†à°¡à±à°¯à±‚à°²à±, à°ªà°°à±€à°•à±à°·à°¾ à°¹à°¾à°œà°°à±, à°ªà°°à±€à°•à±à°· à°®à°¾à°°à±à°•à± & à°«à±ˆà°¨à°²à± à°«à°²à°¿à°¤à°‚.', 'à®ªà®°à¯€à®Ÿà¯à®šà¯ˆ à®šà¯†à®¯à®²à¯à®®à¯à®±à¯ˆ, à®¤à¯‡à®°à¯à®µà¯ à®…à®Ÿà¯à®Ÿà®µà®£à¯ˆ, à®¤à¯‡à®°à¯à®µà¯ à®•à®²à®¨à¯à®¤à¯à®°à¯ˆà®¯à®¾à®Ÿà®²à¯, à®¤à¯‡à®°à¯à®µà¯ à®®à®¾à®°à¯à®•à¯ & à®‡à®±à¯à®¤à®¿ à®®à¯à®Ÿà®¿à®µà¯ à®®à¯à®Ÿà®¿à®•à¯à®•.', 'àªªàª°à«€àª•à«àª·àª¾, àªªàª°à«€àª•à«àª·àª¾ àª¶à«‡àª¡à«àª¯à«‚àª², àªªàª°à«€àª•à«àª·àª¾ àª¹àª¾àªœàª°à«€, àªªàª°à«€àª•à«àª·àª¾ àª®àª¾àª°à«àª• àª…àª¨à«‡ àª…àª‚àª¤àª¿àª® àªªàª°àª¿àª£àª¾àª®àª¨à«€ àªªà«àª°àª•à«àª°àª¿àª¯àª¾ àªªà«‚àª°à«àª£ àª•àª°à«‹.', 'Prosimy o wypeÅ‚nienie procesu egzaminu, egzaminu, egzaminu, egzaminu i koÅ„cowego wyniku.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð·Ð°Ð¿Ð¾Ð²Ð½Ñ–Ñ‚ÑŒ Ð¿Ñ€Ð¾Ñ†ÐµÐ´ÑƒÑ€Ñƒ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ, Ð³Ñ€Ð°Ñ„Ñ–ÐºÑƒ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ, Ð²Ñ–Ð´Ð²Ñ–Ð´ÑƒÐ²Ð°Ð½Ñ–ÑÑ‚ÑŒ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ, Ð¾Ñ†Ñ–Ð½ÐºÑƒ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ Ñ‚Ð° Ð¾ÑÑ‚Ð°Ñ‚Ð¾Ñ‡Ð½Ð¸Ð¹ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨ªà©à¨°à©€à¨–à¨¿à¨†, à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¸à¨¼à¨¡à¨¿à¨Šà¨², à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¹à¨¾à¨œà¨¼à¨°à©€, à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨…à©°à¨• à¨…à¨¤à©‡ à¨…à©°à¨¤à¨¿à¨® à¨¨à¨¤à©€à¨œà©‡ à¨¦à©€ à¨ªà©à¨°à¨•à¨¿à¨°à¨¿à¨† à¨ªà©‚à¨°à©€ à¨•à¨°à©‹.', 'CompletaÈ›i procesul de examen, program de examen, examen, examen È™i rezultat final.', 'á€…á€¬á€™á€±á€¸á€•á€½á€², á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€á€»á€­á€”á€ºá€‡á€šá€¬á€¸, á€…á€¬á€™á€±á€¸á€•á€½á€²á€á€€á€ºá€›á€±á€¬á€€á€º, á€…á€¬á€™á€±á€¸á€•á€½á€², Mark & Final á€›á€œá€’á€ºá€™á€»á€¬á€¸áá€œá€¯á€•á€ºá€„á€”á€ºá€¸á€…á€‰á€ºá€€á€­á€¯á€¡á€•á€¼á€®á€¸á€žá€á€ºá€•á€±á€¸á€•á€«á‹', 'Já»wá» pari awá»n ilana ti káº¹hÃ¬n, Akoká»wo Itanwo, Aá¹£á»wo Iwoye, Aá¹£ayáº¹wo ayáº¹wo ati Ipari ikáº¹hin.', 'Don Allah a kammala aikin nazarin, Nazarin Jirgin, Jirgin Tambaya, Alamar Duba & Sakamako na Æ™arshe.', NULL, NULL),
(630, 'promotion_instruction_4', 'Please double check all Students Total Marks, Obtain Mark, Average Grade Point & Next Class Roll No.', 'à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡ à¦¸à¦•à¦² à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦° à¦®à§‹à¦Ÿ à¦¨à¦®à§à¦¬à¦°, à¦ªà§à¦°à¦¾à¦ªà§à¦¤ à¦¨à¦®à§à¦¬à¦°, à¦—à¦¡à¦¼ à¦—à§à¦°à§‡à¦¡ à¦ªà¦¯à¦¼à§‡à¦¨à§à¦Ÿ à¦à¦¬à¦‚ à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¶à§à¦°à§‡à¦£à§€ à¦°à§‹à¦² à¦¨à¦®à§à¦¬à¦° à¦šà§‡à¦• à¦•à¦°à§à¦¨à¥¤', 'Verifique por favor todas las marcas totales de estudiantes, obtenga la marca, el promedio de calificaciones y la siguiente clase.', 'ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ Ù…Ù† Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø·Ù„Ø§Ø¨ Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø¹Ù„Ø§Ù…Ø§ØªØŒ ÙˆØ§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„Ù‰ Ø¹Ù„Ø§Ù…Ø©ØŒ Ù…ØªÙˆØ³Ø· Ø¯Ø±Ø¬Ø© Ù†Ù‚Ø·Ø© Ùˆ Ø§Ù„ØªØ§Ù„ÙŠ ÙØ¦Ø© Ù„ÙØ© Ø±Ù‚Ù…', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾, à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤¨à¥à¤¸à¥‚à¤šà¥€, à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤‰à¤ªà¤¸à¥à¤¥à¤¿à¤¤à¤¿, à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤…à¤‚à¤• à¤”à¤° à¤…à¤‚à¤¤à¤¿à¤® à¤ªà¤°à¤¿à¤£à¤¾à¤® à¤•à¥€ à¤ªà¥à¤°à¤•à¥à¤°à¤¿à¤¯à¤¾ à¤•à¥‹ à¤ªà¥‚à¤°à¤¾ à¤•à¤°à¥‡à¤‚à¥¤', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… ØªÙ…Ø§Ù… Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù…ÙˆÚº Ú©Ùˆ Ú©Ù„ Ù…Ø§Ø±Ú©Ø³ Ú†ÛŒÚ© Ú©Ø±ÛŒÚºØŒ Ù…Ø§Ø±Ú© Ø­Ø§ØµÙ„ Ú©Ø±ÛŒÚºØŒ Ø§ÙˆØ³Ø· Ú¯Ø±ÛŒÚˆ Ù¾ÙˆØ§Ø¦Ù†Ù¹ Ø§ÙˆØ± Ø§Ú¯Ù„Û’ Ú©Ù„Ø§Ø³ Ø±ÙˆÙ„ Ù†Ù…Ø¨Ø±', 'è¯·ä»”ç»†æ£€æŸ¥æ‰€æœ‰å­¦ç”Ÿçš„æ€»åˆ†ï¼ŒèŽ·å¾—åˆ†æ•°ï¼Œå¹³å‡åˆ†å’Œä¸‹ä¸€ç­çš„å·å·', 'ç”Ÿå¾’ã®åˆè¨ˆæ¨™ç« ã€æ¨™ç« ã®å–å¾—ã€å¹³å‡ç­‰ç´šç‚¹ãŠã‚ˆã³æ¬¡ã®ã‚¯ãƒ©ã‚¹ã®ãƒ­ãƒ¼ãƒ«ç•ªå·ã‚’å†åº¦ç¢ºèªã—ã¦ãã ã•ã„', 'Por favor, verifique novamente todas as Marcas Total de Estudantes, Obter Marca, Ponto MÃ©dico e PrÃ³xima Classe Roll No.', 'ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, Ð´Ð²Ð°Ð¶Ð´Ñ‹ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÑŒÑ‚Ðµ Ð²ÑÐµ ÑƒÑ‡Ð°Ñ‰Ð¸ÐµÑÑ, Ð¾Ð±Ñ‰ÐµÐµ ÐºÐ¾Ð»Ð¸Ñ‡ÐµÑÑ‚Ð²Ð¾ Ð±Ð°Ð»Ð»Ð¾Ð², Ð¿Ð¾Ð»ÑƒÑ‡Ð¸Ñ‚Ðµ Ð¾Ñ†ÐµÐ½ÐºÑƒ, ÑÑ€ÐµÐ´Ð½ÑŽÑŽ Ð¾Ñ†ÐµÐ½ÐºÑƒ Ð¸ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹ ÐºÐ»Ð°ÑÑ.', 'Veuillez vÃ©rifier toutes les notes totales des Ã©lÃ¨ves, obtenir la note, la note moyenne et la prochaine classe', 'ëª¨ë“  í•™ìƒ ìˆ˜ í‘œ, ì ìˆ˜ íšë“, í‰ê·  ì„±ì  ì ìˆ˜ ë° ë‹¤ìŒ ë“±ê¸‰ ë¡¤ ìˆ˜ë¥¼ ë‹¤ì‹œ í™•ì¸í•˜ì‹­ì‹œì˜¤.', 'Bitte Ã¼berprÃ¼fen Sie alle SchÃ¼ler-Gesamtpunkte, erhalten Sie Mark, Durchschnittspunkt und nÃ¤chste Klasse Roll-Nr.', 'Si prega di ricontrollare tutti gli indicatori Total Marks, Obtain Mark, Average Grade Point e Next Class.', 'à¹‚à¸›à¸£à¸”à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸„à¸°à¹à¸™à¸™à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”, à¸”à¸¹à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢, à¸„à¸°à¹à¸™à¸™à¹€à¸‰à¸¥à¸µà¹ˆà¸¢à¹à¸¥à¸°à¸¥à¸³à¸”à¸±à¸šà¸–à¸±à¸”à¹„à¸›à¹€à¸¥à¸‚à¸—à¸µà¹ˆà¸¡à¹‰à¸§à¸™', 'KÃ©rem, ellenÅ‘rizze az Ã¶sszes diÃ¡kok teljes pontszÃ¡mÃ¡t, szerezze meg a pontszÃ¡mot, Ã¡tlag pontot Ã©s a kÃ¶vetkezÅ‘ osztÃ¡lyÃº tekercset.', 'Controleer alsjeblieft alle studenten totaalcijfers, cijfer behalen, gemiddelde cijferpunt en volgende klasserol nr.', 'Velit gemino reprehendo omnes alumni Romanum marcas, Mark Alleluia, & mediocris gradus punctum Next Class Roll No.', 'Harap periksa kembali semua Siswa Total Marks, Dapatkan Mark, Rata-rata Nilai Kelas & Gulungan Kelas Berikutnya No.', 'LÃ¼tfen tÃ¼m Ã–ÄŸrencilerin Toplam Ä°ÅŸaretlerini, Ä°ÅŸaretle, Ortalama Puan PuanÄ± ve Sonraki SÄ±nÄ±f Rulo NumarasÄ±nÄ± kontrol edin.', 'Î Î±ÏÎ±ÎºÎ±Î»ÏŽ ÎµÎ»Î­Î³Î¾Ï„Îµ Î´Î¹Ï€Î»Î¬ ÏŒÎ»Î¿Ï…Ï‚ Ï„Î¿Ï…Ï‚ Î¼Î±Î¸Î·Ï„Î­Ï‚ Î£ÏÎ½Î¿Î»Î¿ ÏƒÎ·Î¼ÎµÎ¯Ï‰Î½, Î±Ï€Î¿ÎºÏ„Î®ÏƒÏ„Îµ Ï„Î¿ ÏƒÎ®Î¼Î±, Ï„Î¿ Î¼Î­ÏƒÎ¿ Î²Î±Î¸Î¼ÏŒ Î²Î±Î¸Î¼Î¿Ï ÎºÎ±Î¹ Ï„Î¿ ÎµÏ€ÏŒÎ¼ÎµÎ½Î¿ ÎºÏÎºÎ»Î¿', 'Ù„Ø·ÙØ§ ØªÙ…Ø§Ù… Ø¯Ø§Ù†Ø´Ø¬ÙˆÛŒØ§Ù† Ú©Ù„ Ø¹Ø§Ù„Ù…Øª Ù‡Ø§ØŒ Ø¹Ù„Ø§Ù…Øª Ú¯Ø°Ø§Ø±ÛŒØŒ Ø±ØªØ¨Ù‡ Ù…ØªÙˆØ³Ø· Ùˆ Ø±ÙˆÙ„ Ø¨Ø¹Ø¯ÛŒ Ú©Ù„Ø§Ø³ Ø±Ø§ Ø¨Ø±Ø±Ø³ÛŒ Ú©Ù†ÛŒØ¯', 'Sila semak semula semua Markah Jumlah Pelajar, Dapatkan Tanda, Nilai Gred Purata & No.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°®à±Šà°¤à±à°¤à°‚ à°¸à±à°Ÿà±‚à°¡à±†à°‚à°Ÿà±à°¸à± à°®à±Šà°¤à±à°¤à°‚ à°®à°¾à°°à±à°•à±à°¸à±, à°®à°¾à°°à±à°•à±, à°¸à°—à°Ÿà± à°—à±à°°à±‡à°¡à± à°ªà°¾à°¯à°¿à°‚à°Ÿà± & à°¤à°¦à±à°ªà°°à°¿ à°•à±à°²à°¾à°¸à± à°°à±‹à°²à± à°¨à±†à°‚à°¬à°°à±à°¨à°¿ à°¤à°¨à°¿à°–à±€ à°šà±‡à°¯à°‚à°¡à°¿.', 'à®®à®¾à®£à®µà®°à¯ à®®à¯Šà®¤à¯à®¤ à®®à®¾à®°à¯à®•à¯à®¸à¯, à®®à®¾à®°à¯à®•à¯, à®šà®°à®¾à®šà®°à®¿ à®¤à®° à®ªà¯à®³à¯à®³à®¿ à®®à®±à¯à®±à¯à®®à¯ à®…à®Ÿà¯à®¤à¯à®¤ à®µà®•à¯à®ªà¯à®ªà¯ à®°à¯‹à®²à¯ à®Žà®£à¯ à®†à®•à®¿à®¯à®µà®±à¯à®±à¯ˆà®ªà¯ à®ªà¯†à®±à¯à®•.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àª¬àª§àª¾àª‚ àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€àª¨àª¾ àª•à«àª² àª—à«àª£àª¨à«€ àª¤àªªàª¾àª¸ àª•àª°à«‹, àª®àª¾àª°à«àª•, àª¸àª°à«‡àª°àª¾àª¶ àª—à«àª°à«‡àª¡ àªªà«‹àª‡àª¨à«àªŸ àª…àª¨à«‡ àª†àª—àª³àª¨à«‹ àªµàª°à«àª— àª°à«‹àª² àª¨àª‚àª¬àª° àª®à«‡àª³àªµà«‹.', 'SprawdÅº dokÅ‚adnie wszystkie oceny uczniÃ³w, zdobÄ…dÅº ocenÄ™, Å›redniÄ… ocenÄ™ i numer nastÄ™pnej klasy', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð¿Ð¾Ð´Ð²Ñ–Ð¹Ð½Ð¾ Ð¿ÐµÑ€ÐµÐ²Ñ–Ñ€Ñ‚Ðµ Ð²ÑÑ– ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¸ Ð·Ð°Ð³Ð°Ð»ÑŒÐ½Ð¸Ñ… Ð·Ð½Ð°ÐºÑ–Ð², Ð¾Ñ‚Ñ€Ð¸Ð¼Ð°Ð¹Ñ‚Ðµ Ð·Ð½Ð°Ðº, ÑÐµÑ€ÐµÐ´Ð½ÑŽ Ð¾Ñ†Ñ–Ð½ÐºÑƒ Ñ‚Ð¾Ñ‡ÐºÐ¸ Ñ‚Ð° Ð½Ð°ÑÑ‚ÑƒÐ¿Ð½Ð¸Ð¹ ÐºÐ»Ð°Ñ Roll No.', 'à¨•à©à¨°à¨¿à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨¸à¨¾à¨°à©‡ à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€à¨†à¨‚ à¨¦à©‡ à¨•à©à©±à¨² à¨…à©°à¨• à¨ªà¨¤à¨¾ à¨•à¨°à©‹, à¨ªà©à¨°à¨¾à¨ªà¨¤ à¨•à¨°à©‹ à¨®à¨¾à¨°à¨•, à¨”à¨¸à¨¤ à¨—à¨°à©‡à¨¡ à¨ªà©à¨†à¨‡à©°à¨Ÿ à¨…à¨¤à©‡ à¨…à¨—à¨²à¨¾ à¨•à¨²à¨¾à¨¸ à¨°à©‹à¨² à¨¨à©°à¨¬à¨°', 'VerificaÈ›i dublu toÈ›i studenÈ›ii Mark Total, ObÈ›ineÈ›i marca, Punctul mediu È™i urmÄƒtoarea clasÄƒ Roll Nr.', 'á€¡á€™á€¾á€á€ºá€•á€»á€™á€ºá€¸á€™á€»á€¾á€¡á€†á€„á€ºá€·á€•á€½á€­á€¯á€„á€ºá€· & Next á€€á€­á€¯á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸ Roll, á€™á€¬á€€á€¯á€›á€šá€°á€•á€«á€¡á€•á€±á€«á€„á€ºá€¸á€á€­á€¯á€·, á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€™á€»á€¬á€¸á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸ Marks á€…á€…á€ºá€†á€±á€¸á€”á€¾á€…á€ºá€† á€€á€»á€±á€¸á€‡á€°á€¸á€•á€¼á€¯.', 'Já»wá» á¹£e ayáº¹wo láº¹áº¹meji gbogbo Awá»n akáº¹ká» Awá»n ami ni gbogbo, Gba Samisi, Oá¹£uwá»n Ipele Apapá» & Eerun Ká»á»kan Ibáº¹ká» No.', 'Don Allah sau biyu duba duk daliban Æ˜idaya Æ˜ididdiga Alamomi, Sami Mark, Matsakaicin Matsayi Bayyana & Kayan Kayan Kira.', NULL, NULL),
(631, 'promotion_instruction_5', 'All things are 100% correct Then Promote Students to Next Class.', 'à¦¸à¦¬à¦•à¦¿à¦›à§à¦° 100% à¦¸à¦ à¦¿à¦• à¦¤à¦¾à¦°à¦ªà¦° à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€à¦¦à§‡à¦° à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¶à§à¦°à§‡à¦£à§€à¦¤à§‡ à¦‰à¦¨à§à¦¨à§€à¦¤ à¦•à¦°à§à¦¨à¥¤', 'Todas las cosas son 100% correctas. Luego, promueva a los estudiantes a la siguiente clase.', 'Ø¬Ù…ÙŠØ¹ Ø§Ù„Ø£Ø´ÙŠØ§Ø¡ ØµØ­ÙŠØ­Ø© 100Ùª Ø«Ù… ØªØ¹Ø²ÙŠØ² Ø§Ù„Ø·Ù„Ø§Ø¨ Ø¥Ù„Ù‰ Ø§Ù„Ø¯Ø±Ø¬Ø© Ø§Ù„ØªØ§Ù„ÙŠØ©.', 'à¤¸à¤­à¥€ à¤šà¥€à¤œà¥‡à¤‚ 100% à¤¸à¤¹à¥€ à¤¹à¥ˆà¤‚, à¤«à¤¿à¤° à¤›à¤¾à¤¤à¥à¤°à¥‹à¤‚ à¤•à¥‹ à¤…à¤—à¤²à¥€ à¤•à¤•à¥à¤·à¤¾ à¤®à¥‡à¤‚ à¤¬à¤¢à¤¼à¤¾à¤µà¤¾ à¤¦à¥‡à¤¨à¤¾à¥¤', 'ØªÙ…Ø§Ù… Ú†ÛŒØ²ÛŒÚº 100Ùª Ø¯Ø±Ø³Øª ÛÛŒÚºØŒ Ù¾Ú¾Ø± Ø·Ù„Ø¨Ø§Ø¡ Ú©Ùˆ Ø§Ú¯Ù„Ø§ Ú©Ù„Ø§Ø³ Ù…ÛŒÚº ÙØ±ÙˆØº Ø¯ÛŒÚº.', 'æ‰€æœ‰çš„äº‹æƒ…éƒ½æ˜¯100ï¼…æ­£ç¡®çš„ï¼Œç„¶åŽä¿ƒè¿›å­¦ç”Ÿä¸‹ä¸€è¯¾ã€‚', 'ã™ã¹ã¦ã®ã‚‚ã®ãŒ100ï¼…æ­£ã—ã„ã§ã™ã€‚æ¬¡ã«ã€å­¦ç”Ÿã‚’æ¬¡ã®ã‚¯ãƒ©ã‚¹ã«æ˜‡æ ¼ã•ã›ã¾ã™ã€‚', 'Todas as coisas estÃ£o 100% corretas. Em seguida, promova alunos para a prÃ³xima classe.', 'Ð’ÑÐµ Ð²ÐµÑ‰Ð¸ Ð½Ð° 100% Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ‹. Ð—Ð°Ñ‚ÐµÐ¼ Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð³Ð°Ð¹Ñ‚Ðµ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð² Ð² ÑÐ»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹ ÐºÐ»Ð°ÑÑ.', 'Toutes les choses sont 100% correctes Puis promouvoir les Ã©tudiants Ã  la prochaine classe.', 'ëª¨ë“  ê²ƒì€ 100 % ì •í™•í•©ë‹ˆë‹¤. ê·¸ëŸ° ë‹¤ìŒ í•™ìƒë“¤ì„ ë‹¤ìŒ í•™ê¸‰ìœ¼ë¡œ ìŠ¹ê¸‰í•˜ì‹­ì‹œì˜¤.', 'Alle Dinge sind zu 100% korrekt. Dann fÃ¶rdern Sie die SchÃ¼ler zur nÃ¤chsten Klasse.', 'Tutte le cose sono corrette al 100%, quindi promuovi gli studenti alla prossima lezione.', 'à¸—à¸¸à¸à¸­à¸¢à¹ˆà¸²à¸‡à¸–à¸¹à¸à¸•à¹‰à¸­à¸‡ 100% à¹à¸¥à¹‰à¸§à¹‚à¸›à¸£à¹‚à¸¡à¸•à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¹ƒà¸«à¹‰à¹€à¸‚à¹‰à¸²à¸Šà¸±à¹‰à¸™à¹€à¸£à¸µà¸¢à¸™à¸–à¸±à¸”à¹„à¸›', 'Minden dolog 100% -ban helyes, majd elÅ‘segÃ­ti a diÃ¡kokat a kÃ¶vetkezÅ‘ osztÃ¡lyba.', 'Alle dingen zijn 100% correct. Promoot vervolgens studenten naar de volgende klas.', 'Et bene omnia sunt, C% Next Promovere studentibus ad generalia Ps.', 'Semua hal 100% benar Lalu Promosikan Siswa ke Kelas Selanjutnya.', 'Her ÅŸey% 100 doÄŸrudur Sonra Ã–ÄŸrencileri Bir Sonraki SÄ±nÄ±fta TanÄ±tÄ±n.', 'ÎŒÎ»Î± Ï„Î± Ï€ÏÎ¬Î³Î¼Î±Ï„Î± ÎµÎ¯Î½Î±Î¹ 100% ÏƒÏ‰ÏƒÏ„Î¬ Î£Ï„Î· ÏƒÏ…Î½Î­Ï‡ÎµÎ¹Î± Ï€ÏÎ¿Ï‰Î¸Î®ÏƒÏ„Îµ Ï„Î¿Ï…Ï‚ Î¼Î±Î¸Î·Ï„Î­Ï‚ ÏƒÏ„Î·Î½ ÎµÏ€ÏŒÎ¼ÎµÎ½Î· Ï„Î¬Î¾Î·.', 'Ù‡Ù…Ù‡ Ú†ÛŒØ² 100Ùª Ø¯Ø±Ø³Øª Ø§Ø³Øª Ø³Ù¾Ø³ Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ²Ø§Ù† Ø±Ø§ Ø¨Ù‡ Ú©Ù„Ø§Ø³ Ø¨Ø¹Ø¯ÛŒ Ø§Ø±ØªÙ‚Ø§ Ø¯Ù‡ÛŒØ¯.', 'Semua perkara adalah 100% betul Kemudian Menggalakkan Pelajar ke Kelas Seterusnya.', 'à°…à°¨à±à°¨à°¿ à°µà°¿à°·à°¯à°¾à°²à± 100% à°¸à°°à±ˆà°¨à°µà°¿, à°¤à°°à±à°µà°¾à°¤ à°¸à±à°Ÿà±‚à°¡à±†à°‚à°Ÿà±à°¸à± à°¸à±à°Ÿà±‚à°¡à±†à°‚à°Ÿà±à°¸à± à°Ÿà± à°•à±à°²à°¾à°¸à± à°Ÿà± à°•à±à°²à°¾à°¸à±.', 'à®Žà®²à¯à®²à®¾ à®µà®¿à®·à®¯à®™à¯à®•à®³à¯à®®à¯ 100% à®šà®°à®¿à®¯à®¾à®©à®µà¯ˆ, à®ªà®¿à®©à¯à®©à®°à¯ à®®à®¾à®£à®µà®°à¯à®•à®³à¯ à®…à®Ÿà¯à®¤à¯à®¤ à®µà®•à¯à®ªà¯à®ªà¯à®•à¯à®•à¯ à®Šà®•à¯à®•à¯à®µà®¿à®•à¯à®•à®¿à®©à¯à®±à®©.', 'àª¬àª§à«€ àªµàª¸à«àª¤à«àª“ 100% àª¸àª¾àªšà«€ àª›à«‡ àªªàª›à«€ àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€àª“àª¨à«‡ àª†àª—àª¾àª®à«€ àªµàª°à«àª—àª®àª¾àª‚ àªªà«àª°àª®à«‹àªŸ àª•àª°à«‹.', 'Wszystkie rzeczy sÄ… w 100% poprawne NastÄ™pnie promuj uczniÃ³w do nastÄ™pnej klasy.', 'Ð’ÑÑ– Ñ€ÐµÑ‡Ñ– Ð¿Ñ€Ð°Ð²Ð¸Ð»ÑŒÐ½Ñ– Ð½Ð° 100%. ÐŸÐ¾Ñ‚Ñ–Ð¼ Ð¿Ñ€Ð¾ÑÑƒÐ²Ð°Ð¹Ñ‚Ðµ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ñ–Ð² Ð´Ð¾ Ð½Ð°ÑÑ‚ÑƒÐ¿Ð½Ð¾Ð³Ð¾ ÐºÐ»Ð°ÑÑƒ.', 'à¨¸à¨¾à¨°à©€à¨†à¨‚ à¨šà©€à¨œà¨¼à¨¾à¨‚ 100% à¨ à©€à¨• à¨¹à¨¨. à¨«à¨¿à¨° à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€à¨†à¨‚ à¨¨à©‚à©° à¨…à¨—à¨²à©€ à¨•à¨²à¨¾à¨¸ à¨µà¨¿à¨š à¨‰à¨¤à¨¸à¨¼à¨¾à¨¹à¨¿à¨¤ à¨•à¨°à©‹.', 'Toate lucrurile sunt 100% corecte Apoi promoveazÄƒ elevii Ã®n clasa urmÄƒtoare.', 'á€á€•á€ºá€žá€­á€™á€ºá€¸á€žá€±á€¬á€¡á€›á€¬á€á€­á€¯á€·á€€á€­á€¯á€‘á€­á€¯á€¡á€á€« Next á€€á€­á€¯á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸á€™á€¾á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€™á€»á€¬á€¸á€™á€¼á€¾á€„á€·á€ºá€á€„á€º 100% á€™á€¾á€”á€ºá€€á€”á€ºá€–á€¼á€…á€ºá€€á€¼á€žá€Šá€ºá‹', 'Gbogbo ohun ni o wa 100% atuná¹£e Láº¹hinna á¹¢áº¹da Awá»n Ile-iwe si Kilasi Oju.', 'Dukkanin abubuwa 100% daidai Saan nan kuma Æ™addara É—aliban zuwa Kashi na gaba.', NULL, NULL),
(632, 'average_grade_point', 'GPA', 'à¦œà¦¿à¦ªà¦¿à¦', 'GPA', 'Ø§Ù„Ù…Ø¹Ø¯Ù„ Ø§Ù„ØªØ±Ø§ÙƒÙ…ÙŠ', 'à¤œà¥€à¤ªà¥€à¤', 'Ø¬ÛŒ Ù¾ÛŒ Ø§Û’', 'ç­‰çº§ç‚¹å¹³å‡å€¼', 'å¹³å‡ç­‰ç´šç‚¹', 'gpa', 'Ð¾Ñ†ÐµÐ½ÐºÐ°', 'gpa', 'í•™ì ', 'gpa', 'gpa', 'à¹€à¸à¸£à¸”à¹€à¸‰à¸¥à¸µà¹ˆà¸¢', 'gpa', 'gpa', 'gpa', 'gpa', 'not ortalamasÄ±nÄ±', 'gpa', 'Ø¯Ø±Ø¬Ù‡ Ø§Ù…ØªÛŒØ§Ø²', 'gpa', 'à°—à±à°°à±‡à°¡à± à°ªà°¾à°¯à°¿à°‚à°Ÿà±', 'à®¤à®° à®ªà¯à®³à¯à®³à®¿', 'àªœà«€àªªàª¾', 'gpa', 'Ð“ÐŸÐ°', 'à¨œà©€à¨ªà©€à¨', 'grad punct', 'á€á€”á€ºá€¸á€¡á€™á€¾á€á€º', 'gpa', 'gpa', NULL, NULL),
(633, 'please_select_a_route', 'Please select a Route.', 'à¦à¦•à¦Ÿà¦¿ à¦°à§à¦Ÿ à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨à¥¤', 'Seleccione una ruta.', 'Ø§Ù„Ø±Ø¬Ø§Ø¡ ØªØ­Ø¯ÙŠØ¯ Ù…Ø³Ø§Ø±.', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤à¤• à¤°à¥‚à¤Ÿ à¤šà¥à¤¨à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ø±Ø§Ø³Øª Ø±Ø§Ø³ØªÛ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº.', 'è¯·é€‰æ‹©è·¯çº¿ã€‚', 'ãƒ«ãƒ¼ãƒˆã‚’é¸æŠžã—ã¦ãã ã•ã„ã€‚', 'Selecione uma Rota.', 'Ð’Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚.', 'Veuillez sÃ©lectionner un itinÃ©raire.', 'ê²½ë¡œë¥¼ ì„ íƒí•˜ì‹­ì‹œì˜¤.', 'Bitte wÃ¤hlen Sie eine Route.', 'Si prega di selezionare una rotta.', 'à¹‚à¸›à¸£à¸”à¹€à¸¥à¸·à¸­à¸à¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡', 'KÃ©rjÃ¼k, vÃ¡lasszon ki egy Ãºtvonalat.', 'Selecteer alstublieft een route.', 'Placere eligere Iter itineris.', 'Silakan pilih Rute.', 'LÃ¼tfen bir GÃ¼zergah seÃ§in.', 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Î¼Î¹Î± Î´Î¹Î±Î´ÏÎ¿Î¼Î®.', 'Ù„Ø·ÙØ§ ÛŒÚ© Ù…Ø³ÛŒØ± Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯', 'Sila pilih Laluan.', 'à°¦à°¯à°šà±‡à°¸à°¿ à°’à°• à°®à°¾à°°à±à°—à°‚ à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿.', 'à®¤à®¯à®µà¯à®šà¯†à®¯à¯à®¤à¯ à®’à®°à¯ à®ªà®¾à®¤à¯ˆ à®¤à¯‡à®°à¯à®¨à¯à®¤à¯†à®Ÿà¯à®•à¯à®•à®µà¯à®®à¯.', 'àª•à«ƒàªªàª¾ àª•àª°à«€àª¨à«‡ àªàª• àª°àª¸à«àª¤à«‹ àªªàª¸àª‚àª¦ àª•àª°à«‹', 'Wybierz trasÄ™.', 'Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð²Ð¸Ð±ÐµÑ€Ñ–Ñ‚ÑŒ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚.', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨‡à©±à¨• à¨°à©‚à¨Ÿ à¨šà©à¨£à©‹.', 'SelectaÈ›i o rutÄƒ.', 'á€á€…á€ºá€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸á€›á€½á€±á€¸á€á€»á€šá€ºá€•á€«á‹', 'Já»wá» yan Itá»sá»na kan.', 'Da fatan a zaÉ“i hanyar.', NULL, NULL),
(634, 'return_success', 'Book return successfully', 'à¦¬à¦‡ à¦¸à¦«à¦²à¦­à¦¾à¦¬à§‡ à¦«à§‡à¦°à¦¤ à¦¹à§Ÿà§‡à¦›à§‡à¥¤', 'Libro devuelto con Ã©xito', 'Ø¹ÙˆØ¯Ø© Ø§Ù„ÙƒØªØ§Ø¨ Ø¨Ù†Ø¬Ø§Ø­', 'à¤¬à¥à¤• à¤¸à¤«à¤²à¤¤à¤¾à¤ªà¥‚à¤°à¥à¤µà¤• à¤µà¤¾à¤ªà¤¸', 'Ú©ØªØ§Ø¨ Ú©Ø§Ù…ÛŒØ§Ø¨ÛŒ Ø³Û’ ÙˆØ§Ù¾Ø³ÛŒ', 'é¢„è®¢æˆåŠŸ', 'æ›¸ç±ã®è¿”å“ã«æˆåŠŸ', 'Livro de retorno com sucesso', 'Ð£ÑÐ¿ÐµÑˆÐ½Ð¾Ðµ Ð²Ð¾Ð·Ð²Ñ€Ð°Ñ‰ÐµÐ½Ð¸Ðµ ÐºÐ½Ð¸Ð³Ð¸', 'Le retour du livre a rÃ©ussi', 'ë„ì„œ ë°˜í™˜ ì„±ê³µ', 'Buchen Sie erfolgreich zurÃ¼ck', 'Prenota con successo', 'à¸«à¸™à¸±à¸‡à¸ªà¸·à¸­à¸„à¸·à¸™à¸ªà¸³à¹€à¸£à¹‡à¸ˆà¹à¸¥à¹‰à¸§', 'A kÃ¶nyv sikeres visszaadÃ¡sa', 'Boek teruggave succesvol', 'Revertetur libro prospere', 'Pesan berhasil kembali', 'Kitap iadesi baÅŸarÄ±yla gerÃ§ekleÅŸtirildi', 'Î•Ï€Î±Î½Î±Ï†Î¿ÏÎ¬ Î²Î¹Î²Î»Î¯Î¿Ï… Î¼Îµ ÎµÏ€Î¹Ï„Ï…Ï‡Î¯Î±', 'Ø¨Ø§Ø²Ú¯Ø´Øª Ú©ØªØ§Ø¨ Ø¨Ø§ Ù…ÙˆÙÙ‚ÛŒØª', 'Pulangan buku berjaya', 'à°ªà±à°¸à±à°¤à°•à°‚ à°¤à°¿à°°à°¿à°—à°¿ à°µà°¿à°œà°¯à°µà°‚à°¤à°‚à°—à°¾', 'à®ªà¯à®¤à¯à®¤à®•à®®à¯ à®µà¯†à®±à¯à®±à®¿à®•à®°à®®à®¾à®• à®¤à®¿à®°à¯à®®à¯à®ªà®¿à®¯à®¤à¯', 'àªšà«‹àªªàª¡à«‡ àª¸àª«àª³àª¤àª¾àªªà«‚àª°à«àªµàª• àªµàª³àª¤àª°', 'Zwrot ksiÄ…Å¼ki powodzeniem', 'ÐšÐ½Ð¸Ð³Ð° Ð¿Ð¾Ð²ÐµÑ€Ñ‚Ð°Ñ”Ñ‚ÑŒÑÑ ÑƒÑÐ¿Ñ–ÑˆÐ½Ð¾', 'à¨•à¨¿à¨¤à¨¾à¨¬ à¨¸à¨«à¨²à¨¤à¨¾à¨ªà©‚à¨°à¨µà¨• à¨µà¨¾à¨ªà¨¸ à¨†à¨‰à¨‚à¨¦à©€ à¨¹à©ˆ', 'Revenirea la carte a reuÈ™it', 'á€…á€¬á€¡á€¯á€•á€ºá€¡á€±á€¬á€„á€ºá€™á€¼á€„á€ºá€…á€½á€¬á€•á€¼á€”á€ºá€œá€¬', 'Iwe pada ni ifijiÅ¡áº¹', 'Book dawo da nasara', NULL, NULL),
(635, 'due_amount', 'Due Amount', 'à¦¬à¦¾à¦•à¦¿ à¦Ÿà¦¾à¦•à¦¾', 'Cantidad debida', 'Ù…Ø¨Ù„Øº Ù…Ø³ØªØ­Ù‚', 'à¤¦à¥‡à¤¯ à¤°à¤¾à¤¶à¤¿', 'Ø¨Ø§Ù‚ÛŒ Ø±Ù‚Ù…', 'åˆ°æœŸé‡‘é¢', 'é‡‘é¡', 'Valor devedor', 'ÐÐ°Ð´Ð»ÐµÐ¶Ð°Ñ‰ÐµÐ¹ ÑÑƒÐ¼Ð¼Ñ‹', 'Montant dÃ»', 'ë§Œê¸° ê¸ˆì•¡', 'FÃ¤lliger Betrag', 'Importo dovuto', 'à¸ˆà¸³à¸™à¸§à¸™à¹€à¸‡à¸´à¸™à¸—à¸µà¹ˆà¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”', 'Teljes Ã¶sszeg', 'Te betalen bedrag', 'ob Aliquam', 'Jumlah kematian', 'Ã–denecek meblaÄŸ', 'ÎŸÏ†ÎµÎ¹Î»ÏŒÎ¼ÎµÎ½Î¿ Ï€Î¿ÏƒÏŒ', 'Ù…Ù‚Ø¯Ø§Ø± Ù‚Ø§Ø¨Ù„ ØªÙˆØ¬Ù‡', 'Jumlah terhutang', 'à°®à±Šà°¤à±à°¤à°‚ à°ªà°°à°¿à°®à°¾à°£à°‚', 'à®¨à®¿à®²à¯à®µà¯ˆ à®¤à¯†à®¾à®•à¯ˆ', 'àª¨àª¿àª¯àª¤ àª°àª•àª®', 'Kwota naleÅ¼na', 'ÐÐ°Ð»ÐµÐ¶Ð½Ð° ÑÑƒÐ¼Ð°', 'à¨•à¨®à¨¾à¨ˆ à¨°à¨•à¨®', 'Suma datorata', 'á€€á€¼á€±á€¬á€„á€ºá€·á€„á€½á€±á€•á€™á€¬á€', 'Fun iye', 'Saboda Adadin', NULL, NULL),
(636, 'user_active_status', 'Your account is not active. Please contact with administrator.', 'à¦†à¦ªà¦¨à¦¾à¦° à¦…à§à¦¯à¦¾à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦¸à¦•à§à¦°à¦¿à¦¯à¦¼ à¦¨à¦¯à¦¼à¥¤ à¦ªà§à¦°à¦¶à¦¾à¦¸à¦•à§‡à¦° à¦¸à¦™à§à¦—à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§à¦¨ à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡à¥¤', 'Su cuenta no estÃ¡ activa. Por favor, pÃ³ngase en contacto con el administrador.', 'Ø­Ø³Ø§Ø¨Ùƒ ØºÙŠØ± ÙØ¹Ø§Ù„. ÙŠØ±Ø¬Ù‰ Ø§Ù„Ø§ØªØµØ§Ù„ Ø¨Ø§Ù„Ù…Ø´Ø±Ù.', 'à¤†à¤ªà¤•à¤¾ à¤–à¤¾à¤¤à¤¾ à¤¸à¤•à¥à¤°à¤¿à¤¯ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆà¥¤ à¤•à¥ƒà¤ªà¤¯à¤¾ à¤µà¥à¤¯à¤µà¤¸à¥à¤¥à¤¾à¤ªà¤• à¤¸à¥‡ à¤¸à¤‚à¤ªà¤°à¥à¤• à¤•à¤°à¥‡à¤‚', 'Ø¢Ù¾ Ú©Ø§ Ø§Ú©Ø§Ø¤Ù†Ù¹ ÙØ¹Ø§Ù„ Ù†ÛÛŒÚº ÛÛ’. Ø¨Ø±Ø§Ø¦Û’ Ù…ÛØ±Ø¨Ø§Ù†ÛŒ Ù…Ù†ØªØ¸Ù… Ú©Û’ Ø³Ø§ØªÚ¾ Ø±Ø§Ø¨Ø·Û Ú©Ø±ÛŒÚº.', 'æ‚¨çš„å¸æˆ·ä¸æ´»è·ƒã€‚ è¯·ä¸Žç®¡ç†å‘˜è”ç³»ã€‚', 'ã‚ãªãŸã®ã‚¢ã‚«ã‚¦ãƒ³ãƒˆã¯ã‚¢ã‚¯ãƒ†ã‚£ãƒ–ã§ã¯ã‚ã‚Šã¾ã›ã‚“ã€‚ ç®¡ç†è€…ã«é€£çµ¡ã—ã¦ãã ã•ã„ã€‚', 'Sua conta nÃ£o estÃ¡ ativa. Entre em contato com o administrador.', 'Ð’Ð°ÑˆÐ° ÑƒÑ‡ÐµÑ‚Ð½Ð°Ñ Ð·Ð°Ð¿Ð¸ÑÑŒ Ð½ÐµÐ°ÐºÑ‚Ð¸Ð²Ð½Ð°. ÐŸÐ¾Ð¶Ð°Ð»ÑƒÐ¹ÑÑ‚Ð°, ÑÐ²ÑÐ¶Ð¸Ñ‚ÐµÑÑŒ Ñ Ð°Ð´Ð¼Ð¸Ð½Ð¸ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð¾Ð¼.', 'Votre compte nest pas actif. Sil vous plaÃ®t contacter avec ladministrateur.', 'ê·€í•˜ì˜ ê³„ì •ì´ í™œì„±í™”ë˜ì–´ ìžˆì§€ ì•ŠìŠµë‹ˆë‹¤. ê´€ë¦¬ìžì—ê²Œ ë¬¸ì˜í•˜ì‹­ì‹œì˜¤.', 'Dein Konto ist nicht aktiv. Bitte kontaktieren Sie den Administrator.', 'Il tuo account non Ã¨ attivo. Si prega di contattare con lamministratore.', 'à¸šà¸±à¸à¸Šà¸µà¸‚à¸­à¸‡à¸„à¸¸à¸“à¹„à¸¡à¹ˆà¸—à¸³à¸‡à¸²à¸™ à¹‚à¸›à¸£à¸”à¸•à¸´à¸”à¸•à¹ˆà¸­à¸œà¸¹à¹‰à¸”à¸¹à¹à¸¥à¸£à¸°à¸šà¸š', 'FiÃ³kod nem aktÃ­v. KÃ©rjÃ¼k, lÃ©pjen kapcsolatba a rendszergazdÃ¡val.', 'Uw account is niet actief. Neem contact op met de beheerder.', 'Ratio tua est activae. Placere contactus administrator.', 'Akunmu tidak aktif. Silahkan kontak dengan administrator.', 'HesabÄ±nÄ±z aktif deÄŸil. LÃ¼tfen yÃ¶netici ile iletiÅŸime geÃ§in.', 'ÎŸ Î»Î¿Î³Î±ÏÎ¹Î±ÏƒÎ¼ÏŒÏ‚ ÏƒÎ±Ï‚ Î´ÎµÎ½ ÎµÎ¯Î½Î±Î¹ ÎµÎ½ÎµÏÎ³ÏŒÏ‚. Î•Ï€Î¹ÎºÎ¿Î¹Î½Ï‰Î½Î®ÏƒÏ„Îµ Î¼Îµ Ï„Î¿Î½ Î´Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„Î®.', 'Ø­Ø³Ø§Ø¨ Ø´Ù…Ø§ ÙØ¹Ø§Ù„ Ù†ÛŒØ³Øª Ù„Ø·ÙØ§ Ø¨Ø§ Ù…Ø¯ÛŒØ± ØªÙ…Ø§Ø³ Ø¨Ú¯ÛŒØ±ÛŒØ¯', 'Akaun anda tidak aktif. Sila hubungi dengan pentadbir.', 'à°®à±€ à°–à°¾à°¤à°¾ à°šà±à°°à±à°•à±à°—à°¾ à°²à±‡à°¦à±. à°¦à°¯à°šà±‡à°¸à°¿ à°¨à°¿à°°à±à°µà°¾à°¹à°•à±à°¡à°¿à°¤à±‹ à°¸à°‚à°ªà±à°°à°¦à°¿à°‚à°šà°‚à°¡à°¿.', 'à®‰à®™à¯à®•à®³à¯ à®•à®£à®•à¯à®•à¯ à®šà¯†à®¯à®²à®¿à®²à¯ à®‡à®²à¯à®²à¯ˆ. à®¨à®¿à®°à¯à®µà®¾à®•à®¿à®¯à¯à®Ÿà®©à¯ à®¤à¯Šà®Ÿà®°à¯à®ªà¯ à®•à¯Šà®³à¯à®³à®µà¯à®®à¯.', 'àª¤àª®àª¾àª°à«àª‚ àªàª•àª¾àª‰àª¨à«àªŸ àª¸àª•à«àª°àª¿àª¯ àª¨àª¥à«€. àª¸àª‚àªšàª¾àª²àª• àª¸àª¾àª¥à«‡ àª¸àª‚àªªàª°à«àª• àª•àª°à«‹.', 'Twoje konto nie jest aktywne. Skontaktuj siÄ™ z administratorem.', 'Ð’Ð°Ñˆ Ð¾Ð±Ð»Ñ–ÐºÐ¾Ð²Ð¸Ð¹ Ð·Ð°Ð¿Ð¸Ñ Ð½Ðµ Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¸Ð¹. Ð‘ÑƒÐ´ÑŒ Ð»Ð°ÑÐºÐ°, Ð·Ð²ÑÐ¶Ñ–Ñ‚ÑŒÑÑ Ð· Ð°Ð´Ð¼Ñ–Ð½Ñ–ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€Ð¾Ð¼.', 'à¨¤à©à¨¹à¨¾à¨¡à¨¾ à¨–à¨¾à¨¤à¨¾ à¨•à¨¿à¨°à¨¿à¨†à¨¸à¨¼à©€à¨² à¨¨à¨¹à©€à¨‚ à¨¹à©ˆ. à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨ªà©à¨°à¨¬à©°à¨§à¨• à¨¨à¨¾à¨² à¨¸à©°à¨ªà¨°à¨• à¨•à¨°à©‹', 'Contul dvs. nu este activ. ContactaÈ›i administratorul.', 'á€žá€„á€ºá€·á€¡á€€á€±á€¬á€„á€ºá€·á€á€€á€ºá€€á€¼á€½á€™á€Ÿá€¯á€á€ºá€•á€«á€˜á€°á€¸á‹ á€…á€®á€™á€¶á€á€”á€ºá€·á€á€½á€²á€žá€°á€”á€¾á€„á€ºá€·á€¡á€á€°á€€á€­á€¯á€†á€€á€ºá€žá€½á€šá€ºá€•á€«á‹', 'Akoto ráº¹ ko á¹£iá¹£áº¹. Já»wá» kan si páº¹lu alakoso.', 'Asusunku ba aiki ba ne. Da fatan a tuntuÉ“i mai gudanarwa.', NULL, NULL),
(637, 'certificate', 'Certificate', 'à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ', 'Certificado', 'Ø´Ù‡Ø§Ø¯Ø©', 'à¤ªà¥à¤°à¤®à¤¾à¤£à¤ªà¤¤à¥à¤°', 'Ø³Ø±Ù¹ÛŒÙÛŒÚ©ÛŒÙ¹', 'è¯ä¹¦', 'è¨¼æ˜Žæ›¸', 'Certificado', 'ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚', 'Certificat', 'ì¦ëª…ì„œ', 'Zertifikat', 'Certificato', 'à¹ƒà¸šà¸£à¸±à¸šà¸£à¸­à¸‡', 'BizonyÃ­tvÃ¡ny', 'Certificaat', 'libellum', 'Sertifikat', 'sertifika', 'Î Î¹ÏƒÏ„Î¿Ï€Î¿Î¹Î·Ï„Î¹ÎºÏŒ', 'Ú¯ÙˆØ§Ù‡ÛŒ', 'Sijil', 'à°¸à°°à±à°Ÿà°¿à°«à°¿à°•à±†à°Ÿà±', 'à®šà®¾à®©à¯à®±à®¿à®¤à®´à¯', 'àªªà«àª°àª®àª¾àª£àªªàª¤à«àª°', 'Certyfikat', 'Ð¡ÐµÑ€Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚', 'à¨¸à¨°à¨Ÿà©€à¨«à¨¿à¨•à©‡à¨Ÿ', 'Certificat', 'á€œá€€á€ºá€™á€¾á€á€º', 'Ijáº¹risi', 'Certificate', NULL, NULL),
(638, 'generate', 'Generate', 'à¦œà§‡à¦¨à¦¾à¦°à§‡à¦Ÿ', 'Generar', 'ØªÙˆÙÙŠØ±', 'à¤‰à¤¤à¥à¤ªà¤¨à¥à¤¨', 'Ù¾ÛŒØ¯Ø§', 'ç”Ÿæˆ', 'ç”Ÿæˆã™ã‚‹', 'Gerar', 'Ð³ÐµÐ½ÐµÑ€Ð¸Ñ€Ð¾Ð²Ð°Ñ‚ÑŒ', 'produire', 'ì¼ìœ¼í‚¤ë‹¤', 'Generieren', 'creare', 'à¸œà¸¥à¸´à¸•', 'generÃ¡l', 'voortbrengen', 'generate', 'Menghasilkan', 'Ã¼retmek', 'Î Î±ÏÎ¬Î³Ï‰', 'ØªÙˆÙ„ÛŒØ¯ Ù…ÛŒ Ú©Ù†Ù†Ø¯', 'Jana', 'à°°à±‚à°ªà±Šà°‚à°¦à°¿à°‚à°šà°‚à°¡à°¿', 'à®‰à®°à¯à®µà®¾à®•à¯à®•à¯à®¤à®²à¯', 'àªªà«‡àª¦àª¾', 'GenerowaÄ‡', 'Ð“ÐµÐ½ÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨¬à¨£à¨¾à¨‰', 'Genera', 'á€–á€½á€…á€»á€•á€¾á€«á€¸á€…á€±', 'á¹¢e ina', 'Samar da', NULL, NULL),
(639, 'manage_certificate_type', 'Manage Certificate Type', 'à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ à¦ªà§à¦°à¦•à¦¾à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar tipo de certificado', 'Ø¥Ø¯Ø§Ø±Ø© Ù†ÙˆØ¹ Ø§Ù„Ø´Ù‡Ø§Ø¯Ø©', 'à¤ªà¥à¤°à¤®à¤¾à¤£à¤ªà¤¤à¥à¤° à¤ªà¥à¤°à¤•à¤¾à¤° à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³Ø±Ù¹ÛŒÙÚ©ÛŒÙ¹ Ú©ÛŒ Ù‚Ø³Ù… Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è¯ä¹¦ç±»åž‹', 'è¨¼æ˜Žæ›¸ã‚¿ã‚¤ãƒ—ã®ç®¡ç†', 'Gerenciar tipo de certificado', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ‚Ð¸Ð¿Ð¾Ð¼ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð°', 'GÃ©rer le type de certificat', 'ì¸ì¦ì„œ ìœ í˜• ê´€ë¦¬', 'Verwalten Sie den Zertifikatstyp', 'Gestisci tipo di certificato', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸›à¸£à¸°à¹€à¸ à¸—à¹ƒà¸šà¸£à¸±à¸šà¸£à¸­à¸‡', 'TanÃºsÃ­tvÃ¡nytÃ­pus kezelÃ©se', 'Beheer het certificaattype', 'Quisque Curo Type', 'Kelola Jenis Sertifikat', 'Sertifika TÃ¼rÃ¼nÃ¼ yÃ¶netin', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„ÏÏ€Î¿Ï… Ï€Î¹ÏƒÏ„Î¿Ï€Î¿Î¹Î·Ï„Î¹ÎºÎ¿Ï', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù†ÙˆØ¹ Ú¯ÙˆØ§Ù‡ÛŒ', 'Urus Jenis Sijil', 'à°¸à°°à±à°Ÿà°¿à°«à°¿à°•à±†à°Ÿà± à°°à°•à°‚ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà®¾à®©à¯à®±à®¿à®¤à®´à¯ à®µà®•à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªà«àª°àª®àª¾àª£àªªàª¤à«àª°àª¨à«‹ àªªà«àª°àª•àª¾àª° àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj typem certyfikatu', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ‚Ð¸Ð¿Ð¾Ð¼ ÑÐµÑ€Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð°', 'à¨¸à¨°à¨Ÿà©€à¨«à¨¿à¨•à©‡à¨Ÿ à¨¦à©€ à¨•à¨¿à¨¸à¨® à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i tipul certificatului', 'á€œá€€á€ºá€™á€¾á€á€ºá€¡á€™á€»á€­á€¯á€¸á€¡á€…á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n Ijáº¹risi Iru', 'Sarrafa Takaddun shaida', NULL, NULL),
(642, 'main_certificate_text', 'Certificate Text', 'à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ à¦¬à¦¿à¦·à¦¯à¦¼à¦¬à¦¸à§à¦¤à§', 'Certificado de texto', 'Ù†Øµ Ø§Ù„Ø´Ù‡Ø§Ø¯Ø©', 'à¤ªà¥à¤°à¤®à¤¾à¤£à¤ªà¤¤à¥à¤° à¤ªà¤¾à¤ ', 'Ø³Ø±Ù¹ÛŒÙÚ©ÛŒÙ¹ Ù…ØªÙ†', 'è¯ä¹¦æ–‡æœ¬', 'è¨¼æ˜Žæ›¸ã®ãƒ†ã‚­ã‚¹ãƒˆ', 'Texto do Certificado', 'Ð¢ÐµÐºÑÑ‚ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð°', 'Texte du certificat', 'ì¸ì¦ì„œ í…ìŠ¤íŠ¸', 'Zertifikatstext', 'Testo del certificato', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸£à¸±à¸šà¸£à¸­à¸‡', 'TanÃºsÃ­tvÃ¡nyszÃ¶veg', 'Certificaattekst', 'libellum Text', 'Teks Sertifikat', 'Sertifika Metni', 'ÎšÎµÎ¯Î¼ÎµÎ½Î¿ Ï€Î¹ÏƒÏ„Î¿Ï€Î¿Î¹Î·Ï„Î¹ÎºÎ¿Ï', 'Ù…ØªÙ† Ú¯ÙˆØ§Ù‡ÛŒ', 'Teks Sijil', 'à°¸à°°à±à°Ÿà°¿à°«à°¿à°•à±†à°Ÿà± à°Ÿà±†à°•à±à°¸à±à°Ÿà±', 'à®šà®¾à®©à¯à®±à®¿à®¤à®´à¯ à®‰à®°à¯ˆ', 'àªªà«àª°àª®àª¾àª£àªªàª¤à«àª° àªŸà«‡àª•à«àª¸à«àªŸ', 'Tekst certyfikatu', 'Ð¢ÐµÐºÑÑ‚ ÑÐµÑ€Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð°', 'à¨¸à¨°à¨Ÿà©€à¨«à¨¿à¨•à©‡à¨Ÿ à¨Ÿà©ˆà¨•à¨¸à¨Ÿ', 'Textul certificatului', 'á€œá€€á€ºá€™á€¾á€á€ºá€…á€¬á€žá€¬á€¸', 'Iwe ijáº¹risi', 'Takaddun shaida', NULL, NULL),
(643, 'footer_left', 'Footer Left Text', 'à¦«à§à¦Ÿà¦¾à¦° à¦¬à¦¾à¦® à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ', 'Texto de pie de pÃ¡gina a la izquierda', 'ØªØ°ÙŠÙŠÙ„ Ø§Ù„Ù†Øµ Ø§Ù„Ø£ÙŠØ³Ø±', 'à¤ªà¤¾à¤¦ à¤²à¥‡à¤– à¤µà¤¾à¤® à¤ªà¤¾à¤ ', 'ÙÙˆÙ¹Ø± Ø¨Ø§Ø¦ÛŒÚº Ù…ØªÙ†', 'é¡µè„šå·¦è¾¹çš„æ–‡å­—', 'ãƒ•ãƒƒã‚¿ãƒ¼å·¦ã®ãƒ†ã‚­ã‚¹ãƒˆ', 'RodapÃ© do texto Ã  esquerda', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ Ð»ÐµÐ²Ñ‹Ð¹ Ñ‚ÐµÐºÑÑ‚', 'Pied gauche Texte', 'ê¼¬ë¦¬ë§ ì™¼ìª½ í…ìŠ¤íŠ¸', 'FuÃŸzeile linken Text', 'Testo a piÃ¨ di pagina a sinistra', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸—à¹‰à¸²à¸¢à¸à¸£à¸°à¸”à¸²à¸©à¸—à¹‰à¸²à¸¢', 'Footer Left Text', 'Voettekst Linkertekst', 'Reliquit Footer Text', 'Footer Left Text', 'Altbilgi Sol Metin', 'Î¥Ï€Î¿ÏƒÎ­Î»Î¹Î´Î¿ Î±ÏÎ¹ÏƒÏ„ÎµÏÏŒ ÎºÎµÎ¯Î¼ÎµÎ½Î¿', 'Ù¾Ø§ÙˆØ±Ù‚ÛŒ Ù…ØªÙ† Ú†Ù¾', 'Teks Kiri Kaki', 'à°«à±à°Ÿà°°à± à°Žà°¡à°® à°Ÿà±†à°•à±à°¸à±à°Ÿà±', 'à®…à®Ÿà®¿à®•à¯à®•à¯à®±à®¿à®ªà¯à®ªà¯ à®‡à®Ÿà®¤à¯ à®‰à®°à¯ˆ', 'àª«à«‚àªŸàª° àª¡àª¾àª¬à«‡ àªŸà«‡àª•à«àª¸à«àªŸ', 'Footer Left Text', 'ÐÐ¸Ð¶Ð½Ñ–Ð¹ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ» Ð»Ñ–Ð²Ð¾Ñ€ÑƒÑ‡', 'à¨ªà¨¦à¨²à©‡à¨– à¨–à©±à¨¬à©‡ à¨ªà¨¾à¨ ', 'Subtitrarea textului din subsol', 'footer á€œá€€á€ºá€á€²á€…á€¬á€žá€¬á€¸', 'Onká» Left áº¸sáº¹', 'Rubutun Hagu na Hagu', NULL, NULL),
(644, 'footer_middle', 'Footer Middle Text', 'à¦«à§à¦Ÿà¦¾à¦° à¦®à¦§à§à¦¯à¦® à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ', 'Texto intermedio del pie de pÃ¡gina', 'ØªØ°ÙŠÙŠÙ„ Ø§Ù„ØµÙØ­Ø© Ø§Ù„ÙˆØ³Ø·Ù‰ Ø§Ù„Ù†Øµ', 'à¤ªà¤¾à¤¦ à¤²à¥‡à¤– à¤®à¤§à¥à¤¯ à¤ªà¤¾à¤ ', 'ÙÙˆÙ¹Ø± Ù…Ø´Ø±Ù‚ ÙˆØ³Ø·ÛŒ', 'é¡µè„šä¸­é—´æ–‡æœ¬', 'ãƒ•ãƒƒã‚¿ãƒ¼ä¸­é–“ãƒ†ã‚­ã‚¹ãƒˆ', 'Texto do rodapÃ©', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ Ñ‚ÐµÐºÑÑ‚ Ð½Ð¸Ð¶Ð½ÐµÐ³Ð¾ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ»Ð°', 'Pied Moyen Texte', 'ê¼¬ë¦¬ë§ ì¤‘ê°„ í…ìŠ¤íŠ¸', 'FuÃŸzeile mittlerer Text', 'Footer Middle Text', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸£à¸°à¸”à¸±à¸šà¸à¸¥à¸²à¸‡à¸‚à¸­à¸‡à¸—à¹‰à¸²à¸¢à¸à¸£à¸°à¸”à¸²à¸©', 'LÃ¡bra kÃ¶zÃ©psÅ‘ szÃ¶veg', 'Voettekst Middelste tekst', 'Medio Footer Text', 'Footer Middle Text', 'Altbilgi Orta Metin', 'Î¥Ï€Î¿ÏƒÎ­Î»Î¹Î´Î¿ ÎœÎ­ÏƒÎ¿ ÎºÎµÎ¯Î¼ÎµÎ½Î¿', 'Footer Middle Text', 'Teks Tengah Footer', 'à°«à±à°Ÿà°°à± à°®à°§à±à°¯ à°Ÿà±†à°•à±à°¸à±à°Ÿà±', 'à®…à®Ÿà®¿à®•à¯à®•à¯à®±à®¿à®ªà¯à®ªà¯ à®¨à®Ÿà¯ à®‰à®°à¯ˆ', 'àª«à«‚àªŸàª° àª®àª§à«àª¯ àª²àª–àª¾àª£', 'Stopka Å›rodkowy tekst', 'ÐÐ¸Ð¶Ð½Ñ–Ð¹ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ» ÑÐµÑ€ÐµÐ´Ð½Ñ–Ð¹ Ñ‚ÐµÐºÑÑ‚', 'à¨«à©à©±à¨Ÿà¨° à¨®à©±à¨§ à¨ªà¨¾à¨ ', 'Subtitrarea textului de mijloc', 'footer á€¡á€œá€šá€»á€•á€­á€¯á€„á€»á€¸á€…á€¬á€žá€¬á€¸', 'áº¸ká» Agbegbe Aarin', 'Rubutun Tsakiyar Tsakiya', NULL, NULL),
(645, 'footer_right', 'Footer Right Text', 'à¦«à§à¦Ÿà¦¾à¦° à¦¡à¦¾à¦¨ à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ', 'Texto a la derecha del pie de pÃ¡gina', 'ØªØ°ÙŠÙŠÙ„ Ø§Ù„Ù†Øµ Ø§Ù„Ø£ÙŠÙ…Ù†', 'à¤ªà¤¾à¤¦ à¤²à¥‡à¤– à¤¸à¤¹à¥€ à¤Ÿà¥‡à¤•à¥à¤¸à¥à¤Ÿ', 'ÙÙˆÙ¹Ø± ØµØ­ÛŒØ­ Ù…ØªÙ†', 'é¡µè„šæ­£ç¡®çš„æ–‡æœ¬', 'ãƒ•ãƒƒã‚¿å³ã®ãƒ†ã‚­ã‚¹ãƒˆ', 'Texto Ã  direita do rodapÃ©', 'ÐÐ¸Ð¶Ð½Ð¸Ð¹ Ñ‚ÐµÐºÑÑ‚ Ð½Ð¸Ð¶Ð½ÐµÐ³Ð¾ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ»Ð°', 'Pied droit Texte', 'ê¼¬ë¦¬ë§ ì˜¤ë¥¸ìª½ í…ìŠ¤íŠ¸', 'FuÃŸzeile rechten Text', 'PiÃ¨ di pagina a destra', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡à¸Šà¸´à¸”à¸‚à¸§à¸²', 'LÃ¡bfej jobb szÃ¶veg', 'Voettekst juiste tekst', 'Ius Footer Text', 'Footer Right Text', 'Altbilgi SaÄŸ Metin', 'Î¥Ï€Î¿ÏƒÎ·Î¼ÎµÎ¯Ï‰ÏƒÎ· ÎºÎµÎ¹Î¼Î­Î½Î¿Ï… Ï…Ï€Î¿ÏƒÎ­Î»Î¹Î´Î¿Ï…', 'Ù…ØªÙ† Ø³Ù…Øª Ø±Ø§Ø³Øª Ù¾Ø§ÙˆØ±Ù‚ÛŒ', 'Teks Kanan Footer', 'à°«à±à°Ÿà°°à± à°°à±ˆà°Ÿà± à°Ÿà±†à°•à±à°¸à±à°Ÿà±', 'à®…à®Ÿà®¿à®•à¯à®•à¯à®±à®¿à®ªà¯à®ªà¯ à®µà®²à®¤à¯ à®‰à®°à¯ˆ', 'àª«à«‚àªŸàª° àªœàª®àª£à«‹ àªŸà«‡àª•à«àª¸à«àªŸ', 'Stopka Prawy tekst', 'ÐÐ¸Ð¶Ð½Ñ–Ð¹ ÐºÐ¾Ð»Ð¾Ð½Ñ‚Ð¸Ñ‚ÑƒÐ» Ð¿Ñ€Ð°Ð²Ð¾Ñ€ÑƒÑ‡', 'à¨ªà¨¦à¨²à©‡à¨– à¨¸à©±à¨œà©‡ à¨ªà¨¾à¨ ', 'Footer dreapta text', 'footer á€Šá€¬á€…á€¬á€žá€¬á€¸', 'Oro á»Œtun áº¸ka', 'Rubutattun Kalmomin Tsaida', NULL, NULL),
(646, 'background', 'Background', 'à¦¬à§à¦¯à¦¾à¦•à¦—à§à¦°à¦¾à¦‰à¦¨à§à¦¡', 'Fondo', 'Ø®Ù„ÙÙŠØ©', 'à¤ªà¥ƒà¤·à¥à¤ à¤­à¥‚à¤®à¤¿', 'Ù¾Ø³ Ù…Ù†Ø¸Ø±', 'èƒŒæ™¯', 'ãƒãƒƒã‚¯ã‚°ãƒ©ã‚¦ãƒ³ãƒ‰', 'fundo', 'Ð—Ð°Ð´Ð½Ð¸Ð¹ Ð¿Ð»Ð°Ð½', 'Contexte', 'ë°°ê²½', 'Hintergrund', 'sfondo', 'à¸žà¸·à¹‰à¸™à¸«à¸¥à¸±à¸‡', 'HÃ¡ttÃ©r', 'Achtergrond', 'Maecenas vitae', 'Latar Belakang', 'Arka fon', 'Î™ÏƒÏ„Î¿ÏÎ¹ÎºÏŒ', 'Ø²Ù…ÛŒÙ†Ù‡', 'Latar Belakang', 'à°¨à±‡à°ªà°¥à±à°¯', 'à®ªà®¿à®©à¯à®©à®£à®¿', 'àªªà«ƒàª·à«àª àª­à«‚àª®àª¿', 'tÅ‚o', 'ÐŸÐµÑ€ÐµÐ´ÑƒÐ¼Ð¾Ð²Ð¸', 'à¨ªà¨¿à¨›à©‹à¨•à©œ', 'fundal', 'á€”á€±á€¬á€€á€ºá€á€¶á€žá€™á€­á€¯á€„á€ºá€¸', 'Atiláº¹hin', 'Bayani', NULL, NULL),
(647, 'manage_certificate', 'Manage Certificate', 'à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar Certificado', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø´Ù‡Ø§Ø¯Ø©', 'à¤ªà¥à¤°à¤®à¤¾à¤£ à¤ªà¤¤à¥à¤° à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³Ø±Ù¹ÛŒÙÚ©ÛŒÙ¹ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è¯ä¹¦', 'è¨¼æ˜Žæ›¸ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar certificado', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ð¼', 'GÃ©rer le certificat', 'ì¸ì¦ì„œ ê´€ë¦¬', 'Zertifikat verwalten', 'Gestisci certificato', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹ƒà¸šà¸£à¸±à¸šà¸£à¸­à¸‡', 'TanÃºsÃ­tvÃ¡ny kezelÃ©se', 'Beheer het certificaat', 'Quisque curo', 'Kelola Sertifikat', 'SertifikayÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î¿Ï… Ï€Î¹ÏƒÏ„Î¿Ï€Î¿Î¹Î·Ï„Î¹ÎºÎ¿Ï', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú¯ÙˆØ§Ù‡ÛŒ', 'Urus Sijil', 'à°¸à°°à±à°Ÿà°¿à°«à°¿à°•à±†à°Ÿà±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà®¾à®©à¯à®±à®¿à®¤à®´à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªà«àª°àª®àª¾àª£àªªàª¤à«àª°àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj certyfikatem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ ÑÐµÑ€Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ð¼', 'à¨¸à¨°à¨Ÿà©€à¨«à¨¿à¨•à©‡à¨Ÿ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i certificatul', 'á€œá€€á€ºá€™á€¾á€á€ºá€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso Ijáº¹risi', 'Sarrafa Takaddun shaida', NULL, NULL),
(648, 'manage_gallery', 'Manage Gallery', 'à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar GalerÃ­a', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…Ø¹Ø±Ø¶', 'à¤—à¥ˆà¤²à¤°à¥€ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', ' Ú¯ÛŒÙ„Ø±ÛŒ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å›¾åº“', 'ã‚®ãƒ£ãƒ©ãƒªãƒ¼ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar galeria', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð³Ð°Ð»ÐµÑ€ÐµÐµÐ¹', 'GÃ©rer la galerie', 'ê°¤ëŸ¬ë¦¬ ê´€ë¦¬', 'Galerie verwalten', 'Gestisci Galleria', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¹à¸à¸¥à¹€à¸¥à¸­à¸£à¸µ', 'GalÃ©ria kezelÃ©se', 'Galerij beheren', 'curo Gallery', 'Kelola Galeri', 'Galeriyi yÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ Î“ÎºÎ±Î»ÎµÏÎ¯', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú¯Ø§Ù„Ø±ÛŒ', 'Urus Galeri', 'à°—à±à°¯à°¾à°²à°°à±€à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯Šà®•à¯à®ªà¯à®ªà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª—à«‡àª²à«‡àª°à«€ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj galeriÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð³Ð°Ð»ÐµÑ€ÐµÑ”ÑŽ', 'à¨—à©ˆà¨²à¨°à©€ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i galeria', 'á€•á€¼á€á€”á€ºá€¸á€™á€»á€¬á€¸á€€á€­á€¯á€…á€®á€™á€¶á€€á€½á€•á€ºá€€á€²', 'á¹¢akoso Awá»n Aworan', 'Sarrafa hotuna', NULL, NULL),
(649, 'gallery', 'Gallery', 'à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿', 'GalerÃ­a', 'ØµØ§Ù„Ø© Ø¹Ø±Ø¶', 'à¤—à¥‡à¤²à¤°à¥€', 'Ù†Ú¯Ø§Ø±Ø®Ø§Ù†Û', 'ç”»å»Š', 'ã‚®ãƒ£ãƒ©ãƒªãƒ¼', 'Galeria', 'Ð“Ð°Ð»ÐµÑ€ÐµÑ', 'Galerie', 'ê°±ë„', 'Galerie', 'Galleria', 'à¹€à¸‰à¸¥à¸µà¸¢à¸‡', 'KÃ©ptÃ¡r', 'Galerij', 'gallery', 'Galeri', 'galeri', 'Î•ÎºÎ¸ÎµÏƒÎ¹Î±ÎºÏŒÏ‚ Ï‡ÏŽÏÎ¿Ï‚', 'Ø¢Ù„Ø¨ÙˆÙ… Ø¹Ú©Ø³', 'Galeri', 'à°—à±à°¯à°¾à°²à°°à±€', 'à®•à¯‡à®²à®°à®¿', 'àª—à«‡àª²à«‡àª°à«€', 'Galeria', 'Ð“Ð°Ð»ÐµÑ€ÐµÑ', 'à¨—à©ˆà¨²à¨°à©€', 'Galerie', 'á€•á€¼á€á€”á€ºá€¸', 'Awá»n ohun á»gbÃ¬n', 'Gallery', NULL, NULL),
(650, 'is_view_on_web', 'Is View on Web?', 'à¦“à¦¯à¦¼à§‡à¦¬ à¦¦à§‡à¦–à§à¦¨ à¦•à¦¿?', 'Â¿Ver en la web?', 'Ù‡Ùˆ Ø¹Ø±Ø¶ Ø¹Ù„Ù‰ Ø´Ø¨ÙƒØ© Ø§Ù„Ø¥Ù†ØªØ±Ù†ØªØŸ', 'à¤µà¥‡à¤¬ à¤ªà¤° à¤¦à¥‡à¤–à¥‡à¤‚ à¤•à¥à¤¯à¤¾ à¤¹à¥ˆ?', 'Ú©ÛŒØ§ ÙˆÛŒØ¨ Ù¾Ø± Ù†Ø¸Ø± ÛÛ’ØŸ', 'åœ¨ç½‘ä¸ŠæŸ¥çœ‹ï¼Ÿ', 'Webä¸Šã§ã®è¡¨ç¤ºã§ã™ã‹ï¼Ÿ', 'Ver na Web?', 'ÐŸÑ€Ð¾ÑÐ¼Ð¾Ñ‚Ñ€ Ð² Ð˜Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ðµ?', 'Est-ce que View on Web?', 'ì›¹ì—ì„œë³´ê¸°ìž…ë‹ˆê¹Œ?', 'Ist im Web zu sehen?', 'La vista Ã¨ sul Web?', 'à¸”à¸¹à¸šà¸™à¹€à¸§à¹‡à¸šà¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ?', 'MegtekintÃ©s a weben?', 'Is View on Web?', 'View in Web est?', 'Apakah Lihat di Web?', 'Webde GÃ¶rÃ¼ntÃ¼leme mi?', 'Î•Î¯Î½Î±Î¹ Î· Ï€ÏÎ¿Î²Î¿Î»Î® ÏƒÏ„Î¿ Web;', 'Ø¢ÛŒØ§ Ù†Ù…Ø§ÛŒØ´ Ø¯Ø± ÙˆØ¨ Ø§Ø³ØªØŸ', 'Adakah Lihat di Web?', 'à°µà±†à°¬à±à°²à±‹ à°µà±€à°•à±à°·à°¿à°‚à°šà°¾à°²à°¾?', 'à®‡à®£à¯ˆà®¯à®¤à¯à®¤à®¿à®²à¯ à®ªà®¾à®°à¯à®•à¯à®•à®¿à®±à®¤à®¾?', 'àªµà«‡àª¬ àªªàª° àªœà«àª“ àª›à«‹?', 'Czy widok w sieci?', 'Ð§Ð¸ Ñ” Ð¿ÐµÑ€ÐµÐ³Ð»ÑÐ´ Ð² Ð†Ð½Ñ‚ÐµÑ€Ð½ÐµÑ‚Ñ–?', 'à¨•à©€ à¨µà©ˆà¨¬ à¨¤à©‡ à¨¨à¨œà¨¼à¨° à¨¹à©ˆ?', 'VizualizaÈ›i pe Web?', 'á€€á€¼á€Šá€ºá€·á€›á€”á€ºá€€á€ºá€˜á€ºá€•á€±á€«á€ºá€œá€¬á€¸?', 'Wo ni oju-iwe ayelujara?', 'Shin View a Yanar?', NULL, NULL),
(651, 'cover_image', 'Cover Image', 'à¦•à¦­à¦¾à¦° à¦šà¦¿à¦¤à§à¦°', 'Imagen de portada', 'ØµÙˆØ±Ø© Ø§Ù„ØºÙ„Ø§Ù', 'à¤•à¤µà¤° à¤›à¤µà¤¿', 'Ú©ÙˆØ± ØªØµÙˆÛŒØ±', 'å°é¢å›¾ç‰‡', 'è¡¨ç´™ç”»åƒ', 'Imagem de capa', 'Ð˜Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸Ðµ Ð¾Ð±Ð»Ð¾Ð¶ÐºÐ¸', 'Image de couverture', 'í‘œì§€ ì´ë¯¸ì§€', 'Titelbild', 'Immagine di copertina', 'à¸ à¸²à¸žà¸›à¸', 'BorÃ­tÃ³kÃ©p', 'Omslagfoto', 'No Cover Image', 'Gambar sampul', 'Kapak resmi', 'Î•Î¹ÎºÏŒÎ½Î± ÎµÎ¾Ï‰Ï†ÏÎ»Î»Î¿Ï…', 'ØªØµÙˆÛŒØ± Ø±ÙˆÛŒ Ø¬Ù„Ø¯', 'Cover Image', 'à°šà°¿à°¤à±à°°à°‚ à°•à°µà°°à±', 'à®ªà®Ÿà®¤à¯à®¤à¯ˆ à®®à®±à¯ˆ', 'àª•àªµàª° àª›àª¬à«€', 'OkÅ‚adka', 'ÐžÐ±ÐºÐ»Ð°Ð´Ð¸Ð½ÐºÐ° Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½Ñ', 'à¨•à¨µà¨° à¨šà¨¿à©±à¨¤à¨°', 'Imagine de copertÄƒ', 'á€¡á€–á€¯á€¶á€¸á€•á€¯á€¶á€›á€­á€•á€º', 'Aworan Ideri', 'Rufin Hotuna', NULL, NULL),
(652, 'media_gallery', 'Media Gallery', 'à¦®à¦¿à¦¡à¦¿à¦¯à¦¼à¦¾ à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à§€', 'GalerÃ­a media', 'Ù…Ø¹Ø±Ø¶ Ø§Ù„ÙˆØ³Ø§Ø¦Ø·', 'à¤®à¥€à¤¡à¤¿à¤¯à¤¾ à¤—à¥ˆà¤²à¤°à¥€', 'Ù…ÛŒÚˆÛŒØ§ Ú¯ÛŒÙ„Ø±ÛŒ', 'åª’ä½“åº“', 'ãƒ¡ãƒ‡ã‚£ã‚¢ã‚®ãƒ£ãƒ©ãƒªãƒ¼', 'Galeria de mÃ­dia', 'ÐœÐµÐ´Ð¸Ð°-Ð³Ð°Ð»ÐµÑ€ÐµÑ', 'Galerie des mÃ©dias', 'ë¯¸ë””ì–´ ê°¤ëŸ¬ë¦¬', 'Medien Gallerie', 'Galleria multimediale', 'Media Gallery', 'MÃ©dia GalÃ©ria', 'media galerij', 'Gallery', 'Galeri media', 'Medya Galerisi', 'ÎˆÎºÎ¸ÎµÏƒÎ· Î¼Î­ÏƒÏ‰Î½', 'Ú¯Ø§Ù„Ø±ÛŒ Ø±Ø³Ø§Ù†Ù‡', 'Galeri Media', 'à°®à±€à°¡à°¿à°¯à°¾ à°—à±à°¯à°¾à°²à°°à±€', 'à®®à¯€à®Ÿà®¿à®¯à®¾ à®¤à¯Šà®•à¯à®ªà¯à®ªà¯', 'àª®à«€àª¡àª¿àª¯àª¾ àª—à«‡àª²à«‡àª°à«€', 'Galeria multimediÃ³w', 'ÐœÐµÐ´Ñ–Ð° Ð³Ð°Ð»ÐµÑ€ÐµÑ', 'à¨®à©€à¨¡à©€à¨† à¨—à©ˆà¨²à¨°à©€', 'Galerie media', 'á€™á€®á€’á€®á€šá€¬á€•á€¼á€á€”á€ºá€¸', 'Media Gallery', 'Media Gallery', NULL, NULL),
(653, 'manage_gallery_image', 'Manage Gallery Image', 'à¦—à§à¦¯à¦¾à¦²à¦¾à¦°à¦¿ à¦šà¦¿à¦¤à§à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar imagen de la galerÃ­a', 'Ø¥Ø¯Ø§Ø±Ø© ØµÙˆØ±Ø© Ø§Ù„Ù…Ø¹Ø±Ø¶', 'à¤—à¥ˆà¤²à¤°à¥€ à¤›à¤µà¤¿ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ú¯Ø§Ù„Ø±ÛŒ Ú©ÛŒ ØªØµÙˆÛŒØ± Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù…', 'ç®¡ç†å›¾åº“å›¾åƒ', 'ã‚®ãƒ£ãƒ©ãƒªãƒ¼ç”»åƒã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar a imagem da galeria', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¸Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð¸ÐµÐ¼ Ð³Ð°Ð»ÐµÑ€ÐµÐ¸', 'GÃ©rer la galerie', 'ê°¤ëŸ¬ë¦¬ ì´ë¯¸ì§€ ê´€ë¦¬', 'Galeriebild verwalten', 'Gestisci limmagine della galleria', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸ à¸²à¸žà¹à¸à¸¥à¸¥à¸­à¸£à¸µà¹ˆ', 'GalÃ©ria kÃ©p kezelÃ©se', 'Galerijafbeelding beheren', 'Curo Image Gallery', 'Kelola Gambar Galeri', 'Galeri Resmi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ ÎµÎ¹ÎºÏŒÎ½Î±Ï‚ Ï„Î·Ï‚ Î³ÎºÎ±Î»ÎµÏÎ¯', 'Ù…Ø¯ÛŒØ±ÛŒØª ØªØµÙˆÛŒØ± Ú¯Ø§Ù„Ø±ÛŒ', 'Urus Imej Galeri', 'à°—à±à°¯à°¾à°²à°°à±€ à°šà°¿à°¤à±à°°à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯Šà®•à¯à®ªà¯à®ªà¯ à®ªà®Ÿ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª—à«‡àª²à«‡àª°à«€ àª›àª¬à«€ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj obrazem galerii', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ Ð·Ð¾Ð±Ñ€Ð°Ð¶ÐµÐ½Ð½ÑÐ¼ Ð³Ð°Ð»ÐµÑ€ÐµÑ—', 'à¨—à©ˆà¨²à¨°à©€ à¨šà¨¿à©±à¨¤à¨° à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i imaginea galeriei', 'á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€•á€¼á€á€”á€ºá€¸á€•á€¯á€¶á€›á€­á€•á€º', 'á¹¢akoso awá»n Aworan Aworan', 'Sarrafa Hotuna Hotuna', NULL, NULL),
(654, 'caption', 'Caption', 'à¦•à§à¦¯à¦¾à¦ªà¦¶à¦¨', 'SubtÃ­tulo', 'Ø´Ø±Ø­', 'à¤¶à¥€à¤°à¥à¤·à¤•', 'Ú©ÛŒÙ¾Ø´Ù†', 'æ ‡é¢˜', 'ã‚­ãƒ£ãƒ—ã‚·ãƒ§ãƒ³', 'Rubrica', 'Ñ‚Ð¸Ñ‚Ñ€', 'LÃ©gende', 'í‘œì œ', 'Bildbeschriftung', 'Didascalia', 'à¸„à¸³à¸šà¸£à¸£à¸¢à¸²à¸¢à¸ à¸²à¸ž', 'Felirat', 'Onderschrift', 'caption', 'Caption', 'altyazÄ±', 'Î›ÎµÎ¶Î¬Î½Ï„Î±', 'Ø¹Ù†ÙˆØ§Ù†', 'Keterangan', 'à°¶à±€à°°à±à°·à°¿à°•', 'à®¤à®²à¯ˆà®ªà¯à®ªà¯', 'àª•à«…àªªà«àª¶àª¨', 'Podpis', 'ÐŸÑ–Ð´Ð¿Ð¸Ñ', 'à¨¸à©à¨°à¨–à©€', 'LegendÄƒ', 'caption', 'Caption', 'Caption', NULL, NULL),
(655, 'frontend', 'Frontend', 'à¦«à§à¦°à¦¨à§à¦Ÿà§‡à¦¨à§à¦¡', 'Interfaz', 'Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ù…Ù‚Ø¯Ù…Ø©', 'à¤«à¤¼à¥à¤°à¤‚à¤Ÿ à¤à¤‚à¤¡', 'ÙØ±Ù†Ù¹ Ø§ÛŒÙ†Úˆ', 'å‰ç«¯', 'ãƒ•ãƒ­ãƒ³ãƒˆã‚¨ãƒ³ãƒ‰', 'A parte dianteira', 'Ð’Ð½ÐµÑˆÐ½Ð¸Ð¹ Ð¸Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹Ñ', 'LextrÃ©mitÃ© avant', 'í”„ë¡ íŠ¸ ì—”ë“œ', 'Vorderes Ende', 'Fine frontale', 'à¸ªà¹ˆà¸§à¸™à¸«à¸™à¹‰à¸²', 'frontend', 'Voorkant', 'Frontend', 'Paling depan', 'BaÅŸlangÄ±Ã§ aÅŸamasÄ±', 'Î¦ÏÎ±Î½Îº', 'Ø¸Ø§Ù‡Ø±', 'Frontend', 'à°«à±à°°à°‚à°Ÿà±†à°‚à°¡à±', 'à®®à¯à®©à¯à®¨à®¿à®²à¯ˆ', 'àª…àª—à«àª°àª­àª¾àª—', 'Frontend', 'Ð†Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹Ñ', 'à¨…à¨—à¨°à¨¾à¨‚à¨¤', 'ÃŽn faÈ›Äƒ', 'á€›á€¾á€±á€·á€†á€¯á€¶á€¸á€€á€­á€¯', 'Software ti o pese atá»kun si eto miiran', 'Gabatarwa', NULL, NULL),
(656, 'manage_frontend', 'Manage Frontend', 'à¦«à§à¦°à¦¨à§à¦Ÿà§‡à¦¨à§à¦¡ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar frontend', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„ÙˆØ§Ø¬Ù‡Ø© Ø§Ù„Ø£Ù…Ø§Ù…ÙŠØ©', 'à¤…à¤—à¥à¤°à¤­à¤¾à¤— à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÙØ±Ù†Ù¹ Ø§ÛŒÙ†Úˆ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å‰ç«¯', 'ãƒ•ãƒ­ãƒ³ãƒˆã‚¨ãƒ³ãƒ‰ã®ç®¡ç†', 'Gerenciar front-end', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Frontend', 'GÃ©rer le frontend', 'í”„ë¡ íŠ¸ ì—”ë“œ ê´€ë¦¬', 'Frontend verwalten', 'Gestisci il frontend', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Frontend', 'A Frontend kezelÃ©se', 'Frontend beheren', 'curo Frontend', 'Kelola Frontend', 'Ã–n UÃ§u YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Frontend', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¸Ø§Ù‡Ø±', 'Uruskan Frontend', 'à°«à±à°°à°‚à°Ÿà±†à°‚à°¡à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'Frontend à®¨à®¿à®°à¯à®µà®•à®¿', 'àª…àª—à«àª°àª­àª¾àª— àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj frontendem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ–Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÐ¾Ð¼', 'à¨«à¨°à©°à¨Ÿà¨à¨‚à¨¡ à¨¨à©‚à©° à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i Frontend', 'Frontend á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n Iwaju', 'Sarrafa Gyara', NULL, NULL),
(657, 'manage_frontend_page', 'Manage Frontend Page', 'à¦«à§à¦°à¦¨à§à¦Ÿà§‡à¦¨à§à¦¡ à¦ªà§ƒà¦·à§à¦ à¦¾ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar la pÃ¡gina frontend', 'Ø¥Ø¯Ø§Ø±Ø© ØµÙØ­Ø© Ø§Ù„ÙˆØ§Ø¬Ù‡Ø© Ø§Ù„Ø£Ù…Ø§Ù…ÙŠØ©', 'à¤«à¥à¤°à¤‚à¤Ÿà¤à¤£à¥à¤¡ à¤ªà¥‡à¤œ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ÙØ±Ù†Ù¹ Ø§ÛŒÙ†Úˆ Ù¾ÛŒØ¬ Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†å‰ç«¯é¡µé¢', 'ãƒ•ãƒ­ãƒ³ãƒˆã‚¨ãƒ³ãƒ‰ã®ç®¡ç†ãƒšãƒ¼ã‚¸', 'Gerenciar pÃ¡gina front-end', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†ÐµÐ¹ Frontend', 'GÃ©rer la page frontend', 'í”„ë¡ íŠ¸ ì—”ë“œ íŽ˜ì´ì§€ ê´€ë¦¬', 'Frontend-Seite verwalten', 'Gestisci la pagina di frontend', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸«à¸™à¹‰à¸²à¸ªà¹ˆà¸§à¸™à¸«à¸™à¹‰à¸²', 'A Frontend oldal kezelÃ©se', 'Frontend-pagina beheren', 'Curo Frontend Page', 'Kelola Frontend Page', 'Ã–n UÃ§ SayfasÄ±nÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î£ÎµÎ»Î¯Î´Î±Ï‚ Frontend', 'Ù…Ø¯ÛŒØ±ÛŒØª ØµÙØ­Ù‡ Ø¸Ø§Ù‡Ø±ÛŒ', 'Urus Halaman Frontend', 'à°«à±à°°à°‚à°Ÿà±†à°‚à°¡à± à°ªà±‡à°œà±€à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'Frontend à®ªà®•à¯à®•à®¤à¯à®¤à¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿à®•à¯à®•à®µà¯à®®à¯', 'àª…àª—à«àª° àªªà«‡àªœàª®àª¾àª‚ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj stronÄ… frontendowÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ ÑÑ‚Ð¾Ñ€Ñ–Ð½ÐºÐ¾ÑŽ Ñ–Ð½Ñ‚ÐµÑ€Ñ„ÐµÐ¹ÑÑƒ', 'à¨«à¨°à©°à¨Ÿà¨à¨‚à¨¡ à¨ªà©°à¨¨à¨¾ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i pagina Frontend', 'Frontend á€…á€¬á€™á€»á€€á€ºá€”á€¾á€¬á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²', 'á¹¢akoso awá»n Iwaju oju-iwe', 'Sarrafa Shafin Farko', NULL, NULL),
(658, 'school_fax', 'School Fax', 'à¦¸à§à¦•à§à¦² à¦«à§à¦¯à¦¾à¦•à§à¦¸', 'Fax escolar', 'ÙØ§ÙƒØ³ Ø§Ù„Ù…Ø¯Ø±Ø³Ø©', 'à¤¸à¥à¤•à¥‚à¤² à¤«à¤¼à¥ˆà¤•à¥à¤¸', 'Ø§Ø³Ú©ÙˆÙ„ ÙÛŒÚ©Ø³', 'å­¦æ ¡ä¼ çœŸ', 'å­¦æ ¡ã®ãƒ•ã‚¡ãƒƒã‚¯ã‚¹', 'Fax escolar', 'Ð¨ÐºÐ¾Ð»ÑŒÐ½Ñ‹Ð¹ Ð¤Ð°ÐºÑ', 'Fax de lÃ©cole', 'í•™êµ íŒ©ìŠ¤', 'Schulfax', 'Fax della scuola', 'à¹à¸Ÿà¸à¸‹à¹Œà¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™', 'Iskolai fax', 'Schoolfax', 'Fax School', 'Faks Sekolah', 'Okul faksÄ±', 'Î£Ï‡Î¿Î»Î¹ÎºÏŒ Ï†Î±Î¾', 'Ù…Ø¯Ø±Ø³Ù‡ ÙÚ©Ø³', 'Faks Sekolah', 'à°¸à±à°•à±‚à°²à± à°«à±à°¯à°¾à°•à±à°¸à±', 'à®ªà®³à¯à®³à®¿ à®¤à¯Šà®²à¯ˆà®¨à®•à®²à¯', 'àª¶àª¾àª³àª¾ àª«à«‡àª•à«àª¸', 'Faks szkolny', 'Ð¨ÐºÑ–Ð»ÑŒÐ½Ð¸Ð¹ Ñ„Ð°ÐºÑ', 'à¨¸à¨•à©‚à¨² à¨«à©ˆà¨•à¨¸', 'Scoala de fax', 'á€€á€»á€±á€¬á€„á€ºá€¸á€…á€¬á€¡á€¯á€•á€ºá€–á€€á€ºá€…á€º', 'Fax Ile-iwe', 'Fax Fax', NULL, NULL),
(659, 'school_geocode', 'School Location Code', 'à¦¸à§à¦•à§à¦² à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨ à¦•à§‹à¦¡', 'CÃ³digo de ubicaciÃ³n de la escuela', 'Ø±Ù…Ø² Ù…ÙˆÙ‚Ø¹ Ø§Ù„Ù…Ø¯Ø±Ø³Ø©', 'à¤¸à¥à¤•à¥‚à¤² à¤¸à¥à¤¥à¤¾à¤¨ à¤•à¥‹à¤¡', 'Ø³Ú©ÙˆÙ„ Ú©ÛŒ Ø¬Ú¯Û Ú©Ø§ Ú©ÙˆÚˆ', 'å­¦æ ¡ä½ç½®ä»£ç ', 'å­¦æ ¡ã®å ´æ‰€ã‚³ãƒ¼ãƒ‰', 'CÃ³digo de localizaÃ§Ã£o da escola', 'ÐšÐ¾Ð´ Ð¼ÐµÑÑ‚Ð° Ñ€Ð°ÑÐ¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð¸Ñ ÑˆÐºÐ¾Ð»Ñ‹', 'Code de lieu de lÃ©cole', 'í•™êµ ìœ„ì¹˜ ì½”ë“œ', 'Standortcode der Schule', 'Codice di posizione della scuola', 'à¸£à¸«à¸±à¸ªà¸ªà¸–à¸²à¸™à¸—à¸µà¹ˆà¸•à¸±à¹‰à¸‡à¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™', 'Iskola helykÃ³dja', 'School locatiecode', 'Location schola Code', 'Kode Lokasi Sekolah', 'Okul Yeri Kodu', 'ÎšÏ‰Î´Î¹ÎºÏŒÏ‚ Ï„Î¿Ï€Î¿Î¸ÎµÏƒÎ¯Î±Ï‚ ÏƒÏ‡Î¿Î»ÎµÎ¯Î¿Ï…', 'Ú©Ø¯ Ù…Ø¯Ø±Ø³Ù‡ Ù…Ø­Ù„ Ø³Ú©ÙˆÙ†Øª', 'Kod Lokasi Sekolah', 'à°¸à±à°•à±‚à°²à± à°¸à±à°¥à°¾à°¨à°¾à°¨à±à°¨à°¿ à°µà±€à°§à°¿ à°šà°¿à°°à±à°¨à°¾à°®à°¾', 'à®ªà®³à¯à®³à®¿ à®‡à®Ÿà®¤à¯à®¤à¯ˆ', 'àª¶àª¾àª³àª¾ àª¸à«àª¥àª¾àª¨ àª•à«‹àª¡', 'Kod lokalizacji szkoÅ‚y', 'ÐšÐ¾Ð´ Ð¼Ñ–ÑÑ†ÐµÐ¿Ð¾Ð»Ð¾Ð¶ÐµÐ½Ð½Ñ ÑˆÐºÐ¾Ð»Ð¸', 'à¨¸à¨•à©‚à¨² à¨¸à¨¥à¨¾à¨¨ à¨•à©‹à¨¡', 'Codul locaÈ›iei È™colii', 'á€€á€»á€±á€¬á€„á€ºá€¸á€…á€¬á€¡á€¯á€•á€ºá€á€Šá€ºá€”á€±á€›á€¬ Code á€€á€­á€¯', 'Iwe Ilana Ile-iwe', 'Lambar Æ˜arin Makaranta', NULL, NULL),
(660, 'facebook_url', 'Facebook URL', 'à¦«à§‡à¦¸à¦¬à§à¦• à¦‡à¦‰à¦†à¦°à¦à¦²', 'Facebook URL', 'URL Ø§Ù„ÙÙŠØ³Ø¨ÙˆÙƒ', 'à¤«à¥‡à¤¸à¤¬à¥à¤• à¤¯à¥à¤†à¤°à¤à¤²', 'ÙÛŒØ³ Ø¨Ú© ÛŒÙˆ Ø¢Ø± Ø§ÛŒÙ„', 'Facebookç½‘å€', 'Facebookã®', 'URL Facebook', 'URL-Ð°Ð´Ñ€ÐµÑ Facebook', 'Ladresse URL de Facebook', 'Facebook URL', 'Facebook URL', 'URL di Facebook', 'URL à¸‚à¸­à¸‡ Facebook', 'Facebook URL', 'Facebook URL', 'Facebook URL', 'URL Facebook', 'Facebook URL', 'Î”Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· URL Ï„Î¿Ï… Facebook', 'URL ÙÛŒØ³ Ø¨ÙˆÚ©', 'URL Facebook', 'Facebook URL', 'à®ªà¯‡à®¸à¯à®ªà¯à®•à¯ URL', 'àª«à«‡àª¸àª¬à«àª• URL', 'URL facebooka', 'URL-Ð°Ð´Ñ€ÐµÑÐ° Ð½Ð° Facebook', 'à¨«à©‡à¨¸à¨¬à©à©±à¨• URL', 'URL-ul Facebook', 'Facebook á€™á€¾á€¬ URL á€€á€­á€¯', 'URL URL', 'Facebook URL', NULL, NULL),
(661, 'twitter_url', 'Twitter URL', 'à¦Ÿà§à¦‡à¦Ÿà¦¾à¦° à¦‡à¦‰à¦†à¦°à¦à¦²', 'URL de Twitter', 'Ø±Ø§Ø¨Ø· ØªÙˆÙŠØªØ±', 'à¤Ÿà¥à¤µà¤¿à¤Ÿà¤° à¤¯à¥‚à¤†à¤°à¤à¤²', 'Ù¹ÙˆÛŒÙ¹Ø± ÛŒÙˆ Ø¢Ø± Ø§ÛŒÙ„', 'Twitterç½‘å€', 'Twitterã®', 'URL do Twitter', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL di Twitter', 'URL Twitter', 'Twitter URL', 'Twitter-URL', 'URL Twitter', 'URL Twitter', 'Twitter URL', 'Î”Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· URL Twitter', 'URL ØªÙˆÛŒÛŒØªØ±', 'URL Twitter', 'Twitter URL', 'à®Ÿà¯à®µà®¿à®Ÿà¯à®Ÿà®°à¯ URL', 'àªŸà«àªµàª¿àªŸàª° URL', 'Adres URL Twittera', 'URL-Ð°Ð´Ñ€ÐµÑÐ° Twitter', 'à¨Ÿà¨µà¨¿à©±à¨Ÿà¨° URL', 'URL-ul Twitter', 'Twitter á€€á€­á€¯ URL á€€á€­á€¯', 'Twitter URL', 'Twitter URL', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(662, 'linkedin_url', 'Linkedin URL', 'à¦²à¦¿à¦™à§à¦•à¦¡à¦¿à¦¨ à¦‡à¦‰à¦†à¦°à¦à¦²', 'URL de Linkedin', 'Linkedin URL', 'à¤²à¤¿à¤‚à¤•à¥à¤¡à¤¿à¤¨ à¤¯à¥‚à¤†à¤°à¤à¤²', 'Ù„Ù†Ú©ÚˆÛŒÙ† ÛŒÙˆ Ø¢Ø± Ø§ÛŒÙ„', 'Linkedinç½‘å€', 'ãƒªãƒ³ã‚¯å…ˆã®', 'URL do Linkedin', 'Ð¡ÑÑ‹Ð»ÐºÐ° Ð½Ð° Linkedin', 'URL Linkedin', 'ë§í¬ ëœ URL', 'VerknÃ¼pfte URL', 'URL di Linkedin', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'LinkedIn URL', 'URL Linkedin', 'Linkedin URLsi', 'Linkedin URL', 'Ù†Ø´Ø§Ù†ÛŒ Ø§ÛŒÙ†ØªØ±Ù†ØªÛŒ Ù„ÛŒÙ†Ú©Ø¯ÛŒÙ†', 'URL Linkedin', 'à°²à°¿à°‚à°•à± à°šà±‡à°¸à°¿à°¨ URL', 'à®‡à®£à¯ˆà®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿ URL', 'Linkedin URL', 'Linkedin URL', 'Linkedin URL', 'à¨²à¨¿à©°à¨•à¨¡à¨¿à¨¨ à¨¯à©‚à¨†à¨°à¨à¨²', 'Linkedin URL', 'linkedin URL á€€á€­á€¯', 'Linkedin URL', 'Linkedin URL', NULL, NULL),
(663, 'google_plus_url', 'Google Plus URL', 'à¦—à§à¦—à¦² à¦ªà§à¦²à¦¾à¦¸ à¦‡à¦‰à¦†à¦°à¦à¦²', 'URL de Google Plus', 'Ø¬ÙˆØ¬Ù„ Ø¨Ù„Ø³ URL', 'Google Plus URL', 'Google Plus URL', 'Google Plusç½‘å€', 'Google Plusã®', 'URL do Google Plus', 'URL-Ð°Ð´Ñ€ÐµÑ Google Plus', 'URL Google Plus', 'Google í”ŒëŸ¬ìŠ¤ URL', 'Google Plus-URL', 'URL di Google Plus', 'URL Google Plus', 'Google Plus URL', 'Google Plus URL', 'Google Plus URL', 'URL Google Plus', 'Google ArtÄ± URL', 'Î”Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· URL Google Plus', 'Ú¯ÙˆÚ¯Ù„ Ù¾Ù„Ø§Ø³ URL', 'URL Google Plus', 'à°—à±‚à°—à±à°²à± à°ªà±à°²à°¸à± URL', 'à®•à¯‚à®•à®¿à®³à¯ à®ªà®¿à®³à®¸à¯ URL', 'Google Plus URL', 'Adres URL Google Plus', 'URL-Ð°Ð´Ñ€ÐµÑÐ° Google Plus', 'Google Plus URL', 'Adresa URL Google Plus', 'Google Plus URL á€€á€­á€¯', 'URL Google Plus', 'Google Plus URL', NULL, NULL),
(664, 'youtube_url', 'Youtube URL', 'à¦‡à¦‰à¦Ÿà¦¿à¦‰à¦¬ à¦‡à¦‰à¦†à¦°à¦à¦²', 'URL de Youtube', 'Ø¹Ù†ÙˆØ§Ù† URL Ø¹Ù„Ù‰ Youtube', 'à¤¯à¥‚à¤¥à¤Ÿà¥à¤¯à¥‚à¤¬ à¤¯à¥‚à¤†à¤°à¤à¤²', 'ÛŒÙˆ Ù¹ÛŒÙˆØ¨ ÛŒÙˆ Ø¢Ø± Ø§ÛŒÙ„', 'YouTubeç½‘å€', 'YouTubeã®', 'URL do Youtube', 'URL Youtube', 'URL Youtube', 'YouTube URL', 'YouTube-URL', 'URL di Youtube', 'URL à¸‚à¸­à¸‡ Youtube', 'Youtube URL', 'YouTube-URL', 'URL Videos', 'URL Youtube', 'Youtube URLsi', 'Youtube URL', 'URL ÛŒÙˆØªÛŒÙˆØ¨', 'URL Youtube', 'Youtube URL', 'Youtube URL', 'YouTube URL', 'Adres URL w YouTube', 'URL-Ð°Ð´Ñ€ÐµÑÐ° YouTube', 'à¨¯à©‚à¨Ÿà¨¿à¨Šà¨¬ à¨¯à©‚à¨†à¨°à¨à¨²', 'Adresa URL Youtube', 'Youtube á€€á€­á€¯ URL á€€á€­á€¯', 'Youtube URL', 'Youtube URL', NULL, NULL),
(665, 'instagram_url', 'Instagram URL', 'à¦‡à¦¨à¦¸à§à¦Ÿà¦¾à¦—à§à¦°à¦¾à¦® à¦‡à¦‰à¦†à¦°à¦à¦²', 'URL de Instagram', 'Ø¹Ù†ÙˆØ§Ù† Ø§Ù†Ø³ØªØºØ±Ø§Ù…', 'Instagram URL', 'Instagram ÛŒÙˆ Ø¢Ø± Ø§ÛŒÙ„', 'Instagramç½‘å€', 'Instagram URL', 'URL do Instagram', 'URL-Ð°Ð´Ñ€ÐµÑ Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'URL di Instagram', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'URL Instagram', 'Instagram URL', 'Î”Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· URL Instagram', 'URL Ù†Ù…Ø§ÛŒØ´ Ù…Ø´Ø®ØµØ§Øª Ø¹Ù…ÙˆÙ…ÛŒ', 'URL Instagram', 'Instagram URL', 'Instagram URL', 'Instagram URL', 'Adres URL Instagrama', 'URL-Ð°Ð´Ñ€ÐµÑÐ° Instagram', 'Instagram URL', 'AdresÄƒ URL Instagram', 'Instagram á€€á€­á€¯ URL á€€á€­á€¯', 'Instagram URL', 'Instagram URL', NULL, NULL),
(666, 'pinterest_url', 'Pinterest URL', 'à¦ªà¦¿à¦¨à§à¦Ÿà¦¾à¦°à§‡à¦¸à§à¦Ÿ à¦‡à¦‰à¦†à¦°à¦à¦²', '', 'Pinterest URL', 'Pinterest à¤¯à¥‚à¤†à¤°à¤à¤²', 'Pinterest ÛŒÙˆ Ø¢Ø± Ø§ÛŒÙ„', 'Pinterestç½‘å€', 'Pinterest URL', 'URL do Pinterest', 'URL-Ð°Ð´Ñ€ÐµÑ Pinterest', 'URL de Pinterest', 'ê´€ì‹¬ìžˆëŠ” URL', 'Pinterest-URL', 'URL di Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'URL Pinterest', 'URL Pinterest', 'Pinterest URL', 'Î”Î¹ÎµÏÎ¸Ï…Î½ÏƒÎ· URL Pinterest', 'Ø¢Ø¯Ø±Ø³ Ø§ÛŒÙ†ØªØ±Ù†ØªÛŒ Pinterest', 'URL Pinterest', 'Pinterest URL', 'Pinterest URL', 'Pinterest URL', 'URL na Pinterest', 'Pinterest URL', 'Pinterest à¨¯à©‚à¨†à¨°à¨à¨²', 'Adresa URL Pinterest', 'Pinterest URL á€€á€­á€¯', 'Pinterest URL', 'URL din', NULL, NULL),
(667, 'page', 'Page', 'à¦ªà§ƒà¦·à§à¦ à¦¾', 'PÃ¡gina', 'ØµÙØ­Ø©', 'à¤ªà¥ƒà¤·à¥à¤ ', 'ØµÙØ­Û', 'é¡µ', 'ãƒšãƒ¼ã‚¸', 'PÃ¡gina', 'ÑÑ‚Ñ€Ð°Ð½Ð¸Ñ†Ð°', 'Page', 'íŽ˜ì´ì§€', 'Seite', 'Pagina', 'à¸«à¸™à¹‰à¸²', 'oldal', 'Pagina', 'page', 'Halaman', 'Sayfa', 'Î£ÎµÎ»Î¯Î´Î±', 'ØµÙØ­Ù‡', 'Halaman', 'à°ªà±‡à°œà±€', 'à®ªà®•à¯à®•à®®à¯', 'àªªàª¾àª¨à«àª‚', 'Strona', 'Ð¡Ñ‚Ð¾Ñ€Ñ–Ð½ÐºÐ°', 'à¨ªà©°à¨¨à¨¾', 'PaginÄƒ', 'á€…á€¬á€™á€»á€€á€ºá€”á€¾á€¬', 'Page', 'Page', NULL, NULL),
(668, 'description', 'Description', 'à¦¬à¦¿à¦¬à¦°à¦£', 'DescripciÃ³n', 'ÙˆØµÙ', 'à¤µà¤¿à¤µà¤°à¤£', 'ØªÙØµÛŒÙ„', 'æè¿°', 'èª¬æ˜Ž', 'DescriÃ§Ã£o', 'ÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ', 'La description', 'ê¸°ìˆ ', 'Beschreibung', 'Descrizione', 'à¸¥à¸±à¸à¸©à¸“à¸°', 'LeÃ­rÃ¡s', 'Beschrijving', 'Description', 'Deskripsi', 'AÃ§Ä±klama', 'Î ÎµÏÎ¹Î³ÏÎ±Ï†Î®', 'Ø´Ø±Ø­', 'Penerangan', 'à°µà°¿à°µà°°à°£', 'à®µà®¿à®³à®•à¯à®•à®®à¯', 'àªµàª°à«àª£àª¨', 'Opis', 'ÐžÐ¿Ð¸Ñ', 'à¨µà¨°à¨£à¨¨', 'Descriere', 'á€–á€±á€«á€ºá€•á€¼á€á€»á€€á€º', 'Apejuwe', 'Bayani', NULL, NULL),
(669, 'manage_slider', 'Manage Slider', 'à¦¸à§à¦²à¦¾à¦‡à¦¡à¦¾à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar control deslizante', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù…ØªØ²Ù„Ø¬', 'à¤¸à¥à¤²à¤¾à¤‡à¤¡à¤° à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³Ù„Ø§Ø¦ÛŒÚˆØ± Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ»‘å—', 'ã‚¹ãƒ©ã‚¤ãƒ€ãƒ¼ã®ç®¡ç†', 'Gerenciar Slider', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ ÑÐ»Ð°Ð¹Ð´ÐµÑ€Ð¾Ð¼', 'GÃ©rer le curseur', 'ìŠ¬ë¼ì´ë” ê´€ë¦¬', 'Schieberegler verwalten', 'Gestisci il dispositivo di scorrimento', 'à¸ˆà¸±à¸”à¸à¸²à¸£ Slider', 'A csÃºszka kezelÃ©se', 'Beheer schuifregelaar', 'curo Slider', 'Kelola Slider', 'KaydÄ±rÄ±cÄ±yÄ± YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ ÏÏ…Î¸Î¼Î¹ÏƒÏ„Î¹ÎºÏŒ', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù„ØºØ²Ø§Ù†', 'Urus Slider', 'à°¸à±à°²à±ˆà°¡à°°à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®¸à¯à®²à¯ˆà®Ÿà®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª¸à«àª²àª¾àª‡àª¡àª° àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj suwakiem', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸ ÑÐ»Ð°Ð¹Ð´ÐµÑ€Ð¾Ð¼', 'à¨¸à¨²à¨¾à¨ˆà¨¡à¨° à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i cursorul', 'Slider á€€á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n igbasáº¹', 'Sarrafa Slider', NULL, NULL),
(670, 'slider', 'Slider', 'à¦¸à§à¦²à¦¾à¦‡à¦¡à¦¾à¦°', 'Control deslizante', 'Ø§Ù„Ù…Ù†Ø²Ù„Ù‚', 'à¤¸à¥à¤²à¤¾à¤‡à¤¡à¤°', 'Ø³Ù„Ø§Ø¦ÛŒÚˆØ±', 'æ»‘å—', 'ã‚¹ãƒ©ã‚¤ãƒ€ãƒ¼', 'Slider', 'Ð¿Ð¾Ð»Ð·ÑƒÐ½Ð¾Ðº', 'Slider', 'ìŠ¬ë¼ì´ë”', 'Schieberegler', 'Slider', 'Slider', 'Slider', 'schuif', 'labor lapsus', 'Slider', 'kaydÄ±rÄ±cÄ±', 'ÎŸÎ»Î¹ÏƒÎ¸Î·Ï„Î®Ï‚', 'Ù„ØºØ²Ù†Ø¯Ù‡', 'Slider', 'à°¸à±à°²à±†à±–à°¡à°°à±', 'à®¸à¯à®²à¯ˆà®Ÿà®°à¯', 'àª¸à«àª²àª¾àª‡àª¡àª°', 'Suwak', 'Ð¡Ð»Ð°Ð¹Ð´ÐµÑ€', 'à¨¸à¨²à¨¾à¨ˆà¨¡à¨°', 'cursor', 'slider', 'Yiyá»', 'Zamawa', NULL, NULL),
(672, 'hourly', 'Hourly', 'à¦ªà§à¦°à¦¤à¦¿ à¦˜à¦£à§à¦Ÿà¦¾à¦¯à¦¼', 'Cada hora', 'Ø¨Ø§Ø³ØªÙ…Ø±Ø§Ø±', 'à¤ªà¥à¤°à¤¤à¤¿ à¤˜à¤‚à¤Ÿà¤¾', 'Ú¯Ú¾Ù†Ù¹Û ÙˆØ§Ø±', 'æ¯å°æ—¶', 'æ¯Žæ™‚', 'De hora em hora', 'Ð¿Ð¾Ñ‡Ð°ÑÐ¾Ð²Ð¾Ð¹', 'Horaire', 'ë§¤ì‹œê°„', 'StÃ¼ndlich', 'ogni ora', 'à¸—à¸¸à¸à¹†à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡', 'Ã“rÃ¡nkÃ©nti', 'ieder uur', 'hourly', 'Per jam', 'Saatlik', 'Î©ÏÎ¹Î±Î¯Î¿Ï‚', 'Ø³Ø§Ø¹ØªÛŒ', 'Jam', 'à°ªà±à°°à°¤à°¿à°—à°‚à°Ÿ', 'à®®à®£à®¿à®•à¯à®•à¯†à®¾à®°à¯à®®à¯à®±à¯ˆ', 'àª…àªµàª°àª²à«€', 'Cogodzinny', 'ÐŸÐ¾Ð³Ð¾Ð´Ð¸Ð½Ð½Ð¾', 'à¨˜à©°à¨Ÿà¨¾', 'ore', 'á€”á€¬á€›á€®á€á€­á€¯á€„á€ºá€¸', 'Wakati', 'Saa', NULL, NULL),
(673, 'admission_fee', 'Admission Fee', 'à¦­à¦°à§à¦¤à¦¿ à¦«à¦¿', 'Precio de admisiÃ³n', 'Ø±Ø³ÙˆÙ… Ø§Ù„Ø¯Ø®ÙˆÙ„', 'à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤¶à¥à¤²à¥à¤•', 'Ø¯Ø§Ø®Ù„Û ÙÛŒØ³', 'å…¥åœºè´¹', 'å…¥å ´æ–™', 'Taxa de admissÃ£o', 'ÐŸÐ»Ð°Ñ‚Ð° Ð·Ð° Ð²Ñ…Ð¾Ð´', 'Frais dadmission', 'ìž…ìž¥ë£Œ', 'AufnahmegebÃ¼hr', 'Tassa di ammissione', 'à¸„à¹ˆà¸²à¸•à¸±à¹‹à¸§', 'JelentkezÃ©si kÃ¶ltsÃ©g', 'Toegangsprijs', 'Praesent pretium', 'Uang masuk', 'GiriÅŸ Ã¼creti', 'Î•Î¹ÏƒÎ¹Ï„Î®ÏÎ¹Î¿', 'Ù‡Ø²ÛŒÙ†Ù‡ Ù¾Ø°ÛŒØ±Ø´', 'Yuran kemasukan', 'à°ªà±à°°à°µà±‡à°¶ à°°à±à°¸à±à°®à±', 'à®šà¯‡à®°à¯à®•à¯à®•à¯ˆ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àªªà«àª°àªµà«‡àª¶ àª«à«€', 'OpÅ‚ata za wstÄ™p', 'Ð’ÑÑ‚ÑƒÐ¿Ð½Ð¸Ð¹ Ð²Ð½ÐµÑÐ¾Ðº', 'à¨¦à¨¾à¨–à¨¼à¨²à¨¾ à¨«à¨¼à©€à¨¸', 'Taxa de admitere', 'á€á€„á€ºá€€á€¼á€±á€¸', 'Gbigba Gbigba wá»le', 'Kudin shiga', NULL, NULL),
(674, 'is_applicable', 'Is Applicable?', 'à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯?', 'Â¿Es aplicable?', 'Ù‡Ù„ Ù‚Ø§Ø¨Ù„ Ù„Ù„ØªØ·Ø¨ÙŠÙ‚ØŸ', 'à¤‰à¤ªà¤¯à¥à¤•à¥à¤¤ à¤¹à¥ˆ?', 'Ù‚Ø§Ø¨Ù„ Ø§Ø·Ù„Ø§Ù‚ ÛÛ’ØŸ', 'é€‚ç”¨ï¼Ÿ', 'é©ç”¨å¯èƒ½ã§ã™ã‹ï¼Ÿ', 'Ã‰ aplicÃ¡vel?', 'ÐŸÑ€Ð¸Ð¼ÐµÐ½Ð¸Ð¼Ð¾?', 'Est applicable?', 'í•´ë‹¹ ì‚¬í•­ì´ ìžˆìŠµë‹ˆê¹Œ?', 'Anwendbar?', 'Ãˆ applicabile?', 'à¹ƒà¸Šà¹‰à¹„à¸”à¹‰à¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ?', 'AlkalmazhatÃ³?', 'Is toepasbaar?', 'Est Lorem?', 'Apakah Berlaku?', 'Uygulanabilir mi', 'Î™ÏƒÏ‡ÏÎµÎ¹;', 'Ù…Ù†Ø§Ø³Ø¨ Ø§Ø³ØªØŸ', 'Adakah berkenaan?', 'à°µà°°à±à°¤à°¿à°‚à°šà°¦à°—à°¿à°¨à°¦à°¿', 'à®ªà¯Šà®°à¯à®¨à¯à®¤à®•à¯à®•à¯‚à®Ÿà®¿à®¯à®¤à®¾?', 'àª²àª¾àª—à« àª›à«‡?', 'Ma zastosowanie?', 'Ð§Ð¸ Ð·Ð°ÑÑ‚Ð¾ÑÐ¾Ð²ÑƒÑ”Ñ‚ÑŒÑÑ?', 'à¨•à©€ à¨‡à¨¹ à¨²à¨¾à¨—à©‚ à¨¹à©à©°à¨¦à¨¾ à¨¹à©ˆ?', 'Este aplicabil?', 'application á€–á€¼á€…á€ºá€•á€«á€á€šá€º?', 'á¹¢e o wa?', 'Shin ya dace?', NULL, NULL),
(675, 'payroll', 'Payroll', 'à¦ªà§‡à¦°à§‹à¦²', 'NÃ³mina de sueldos', 'ÙƒØ´Ù Ø±ÙˆØ§ØªØ¨', 'à¤ªà¥‡à¤°à¥‹à¤²', 'Ù¾Û’ Ø±ÙˆÙ„', 'å·¥èµ„è¡¨', 'çµ¦ä¸Žè¨ˆç®—', 'Folha de pagamento', 'ÐÐ°Ñ‡Ð¸ÑÐ»ÐµÐ½Ð¸Ðµ Ð·Ð°Ñ€Ð°Ð±Ð¾Ñ‚Ð½Ð¾Ð¹ Ð¿Ð»Ð°Ñ‚Ñ‹', 'Paie', 'ê¸‰ì—¬', 'Lohn-und Gehaltsabrechnung', 'Libro paga', 'à¸šà¸±à¸à¸Šà¸µà¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™', 'Payroll', 'Loonlijst', 'Mauris scelerisque', 'Daftar gaji', 'MaaÅŸ bordrosu', 'ÎšÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· Î¼Î¹ÏƒÎ¸Î¿Î´Î¿ÏƒÎ¯Î±Ï‚', 'Ø­Ù‚ÙˆÙ‚ Ùˆ Ø¯Ø³ØªÙ…Ø²Ø¯', 'Penggajian', 'à°ªà±‡à°°à±‹à°²à±', 'à®šà®®à¯à®ªà®³à®ªà¯à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯', 'àªªà«‡àª°à«‹àª²', 'Lista pÅ‚ac', 'Ð—Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'à¨ªà©‡à¨°à©‹à¨²', 'stat de platÄƒ', 'á€¡á€á€…á€¬á€›á€„á€ºá€¸', 'Owo-owo sisan', 'Biyan kuÉ—i', NULL, NULL),
(676, 'salary', 'Salary', 'à¦¬à§‡à¦¤à¦¨', 'Salario', 'Ø±Ø§ØªØ¨', 'à¤µà¥‡à¤¤à¤¨', 'ØªÙ†Ø®ÙˆØ§Û', 'è–ªæ°´', 'çµ¦æ–™', 'SalÃ¡rio', 'Ð—Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'Un salaire', 'ë´‰ê¸‰', 'Gehalt', 'Stipendio', 'à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™', 'FizetÃ©s', 'Salaris', 'salarium', 'Gaji', 'MaaÅŸ', 'ÎœÎ¹ÏƒÎ¸ÏŒÏ‚', 'Ø­Ù‚ÙˆÙ‚', 'Gaji', 'à°œà±€à°¤à°‚', 'à®šà®®à¯à®ªà®³à®®à¯', 'àªªàª—àª¾àª°', 'Wynagrodzenie', 'Ð—Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'à¨¤à¨¨à¨–à¨¾à¨¹', 'Salariu', 'á€œá€…á€¬', 'Iyawo', 'Salary', NULL, NULL),
(677, 'history', 'History', 'à¦‡à¦¤à¦¿à¦¹à¦¾à¦¸', 'Historia', 'Ø§Ù„ØªØ§Ø±ÙŠØ®', 'à¤‡à¤¤à¤¿à¤¹à¤¾à¤¸', 'ÛØ³Ù¹Ø±ÛŒ', 'åŽ†å²', 'æ­´å²', 'HistÃ³ria', 'Ð¸ÑÑ‚Ð¾Ñ€Ð¸Ñ', 'Histoire', 'ì—­ì‚¬', 'Geschichte', 'Storia', 'à¸›à¸£à¸°à¸§à¸±à¸•à¸´à¸¨à¸²à¸ªà¸•à¸£à¹Œ', 'TÃ¶rtÃ©nelem', 'Geschiedenis', 'Historia', 'Sejarah', 'TarihÃ§e', 'Î™ÏƒÏ„Î¿ÏÎ¯Î±', 'ØªØ§Ø±ÛŒØ®', 'Sejarah', 'à°šà°°à°¿à°¤à±à°°', 'à®µà®°à®²à®¾à®±à¯', 'àª‡àª¤àª¿àª¹àª¾àª¸', 'Historia', 'Ð†ÑÑ‚Ð¾Ñ€Ñ–Ñ', 'à¨‡à¨¤à¨¿à¨¹à¨¾à¨¸', 'Istorie', 'á€žá€™á€­á€¯á€„á€ºá€¸', 'Itan', 'Tarihi', NULL, NULL),
(678, 'manage_salary_grade', 'Manage Salary Grade', 'à¦¬à§‡à¦¤à¦¨ à¦—à§à¦°à§‡à¦¡ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾', 'Administrar grado de salario', 'Ø¥Ø¯Ø§Ø±Ø© Ø¯Ø±Ø¬Ø© Ø§Ù„Ø±Ø§ØªØ¨', 'à¤µà¥‡à¤¤à¤¨ à¤—à¥à¤°à¥‡à¤¡ à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'ØªÙ†Ø®ÙˆØ§Û Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†è–ªé‡‘ç­‰çº§', 'çµ¦ä¸Žã‚°ãƒ¬ãƒ¼ãƒ‰ã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar o salÃ¡rio', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð¾Ð¹', 'GÃ©rer le salaire', 'ê¸‰ì—¬ ë“±ê¸‰ ê´€ë¦¬', 'HistoryManage Gehaltsstufe', 'Gestire il livello di stipendio', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸£à¸°à¸”à¸±à¸šà¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™', 'FizetÃ©si fokozat kezelÃ©se', 'Beheer salarislijst', 'Curo MERCES Romani', 'Kelola Grade Gaji', 'MaaÅŸ Notunu YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¹ÏƒÏ„ÎµÎ¯Ï„Îµ Ï„Î¿ Î²Î±Î¸Î¼ÏŒ Î¼Î¹ÏƒÎ¸Î¿Î´Î¿ÏƒÎ¯Î±Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø­Ù‚ÙˆÙ‚ Ùˆ Ø¯Ø³ØªÙ…Ø²Ø¯', 'Menguruskan Gred Gaji', 'à°œà±€à°¤à°‚ à°—à±à°°à±‡à°¡à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà®®à¯à®ªà®³ à®‰à®¯à®°à¯à®µà¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª—àª¾àª° àª—à«àª°à«‡àª¡ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj poziomem wynagrodzeÅ„', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ ÐºÐ»Ð°ÑÐ¾Ð¼ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð¸', 'à¨¸à©ˆà¨²à¨°à©€ à¨—à©à¨°à©‡à¨¡ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i gradul de salarizare', 'á€œá€…á€¬á€¡á€†á€„á€ºá€·á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n á»Œya Salaye', 'Sarrafa Takardar Lissafin KuÉ—i', NULL, NULL),
(679, 'salary_grade', 'Salary Grade', 'à¦¬à§‡à¦¤à¦¨ à¦—à§à¦°à§‡à¦¡', 'Grado de salario', 'Ø±Ø§ØªØ¨', 'à¤µà¥‡à¤¤à¤¨ à¤—à¥à¤°à¥‡à¤¡', 'ØªÙ†Ø®ÙˆØ§Û Ú¯Ø±ÛŒÚˆ', 'è–ªé‡‘ç­‰çº§', 'çµ¦ä¸Žç­‰ç´š', 'Grau Salarial', 'Ð£Ñ€Ð¾Ð²ÐµÐ½ÑŒ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ñ‹', 'Grade salarial', 'ê¸‰ì—¬ ë“±ê¸‰', 'Gehaltsstufe', 'Grado di stipendio', 'à¸£à¸°à¸”à¸±à¸šà¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™', 'FizetÃ©si fokozat', 'Salarisrang', 'Romani stipendio', 'Grade Gaji', 'MaaÅŸ Notu', 'ÎœÎ¹ÏƒÎ¸ÏŒÏ‚ Î²Î±Î¸Î¼Î¿Ï', 'Ø¯Ø±Ø¬Ù‡ Ø­Ù‚ÙˆÙ‚ Ùˆ Ø¯Ø³ØªÙ…Ø²Ø¯', 'Gred Gaji', 'à°œà±€à°¤à°‚ à°—à±à°°à±‡à°¡à±', 'à®šà®®à¯à®ªà®³à®®à¯ à®¤à®°', 'àªªàª—àª¾àª° àª—à«àª°à«‡àª¡', 'Wynagrodzenie', 'Ð—Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'à¨¸à©ˆà¨²à¨°à©€ à¨—à©à¨°à©‡à¨¡', 'Gradul de salarizare', 'á€œá€…á€¬á€¡á€†á€„á€ºá€·', 'Iye owo-iwe', 'Salary Salary', NULL, NULL),
(680, 'grade_name', 'Grade Name', 'à¦—à§à¦°à§‡à¦¡ à¦¨à¦¾à¦®', 'Nombre de grado', 'Ø§Ø³Ù… Ø§Ù„ØµÙ', 'à¤—à¥à¤°à¥‡à¤¡ à¤•à¤¾ à¤¨à¤¾à¤®', 'Ú¯Ø±ÛŒÚˆ Ú©Ø§ Ù†Ø§Ù…', 'æˆç»©åç§°', 'ã‚°ãƒ¬ãƒ¼ãƒ‰å', 'Nome da classe', 'Ð˜Ð¼Ñ ÐºÐ»Ð°ÑÑÐ°', 'Nom de grade', 'í•™ë…„ ì´ë¦„', 'Benennungsname', 'Nome di qualitÃ ', 'à¸Šà¸·à¹ˆà¸­à¸Šà¸±à¹‰à¸™à¹€à¸£à¸µà¸¢à¸™', 'Grade Name', 'Grade naam', 'nomen gradus', 'Nama Kelas', 'SÄ±nÄ±f adÄ±', 'ÎŒÎ½Î¿Î¼Î± Î²Î±Î¸Î¼Î¿Ï', 'Ù†Ø§Ù… Ø¯Ø±Ø¬Ù‡', 'Nama Gred', 'à°—à±à°°à±‡à°¡à± à°ªà±‡à°°à±', 'à®¤à®°à®®à¯ à®ªà¯†à®¯à®°à¯', 'àª—à«àª°à«‡àª¡ àª¨àª¾àª®', 'Nazwa klasy', 'ÐÐ°Ð·Ð²Ð° ÐºÐ»Ð°ÑÑƒ', 'à¨—à¨°à©‡à¨¡ à¨¨à¨¾à¨®', 'Numele clasei', 'grade á€¡á€™á€Šá€º', 'Oruká» Ipele', 'Sunan suna', NULL, NULL),
(681, 'basic_salary', 'Basic Salary', 'à¦®à§‚à¦² à¦¬à§‡à¦¤à¦¨', 'Salario base', 'Ø±Ø§ØªØ¨ Ø§Ø³Ø§Ø³ÙŠ', 'à¤®à¥‚à¤² à¤µà¥‡à¤¤à¤¨', 'Ø¨Ù†ÛŒØ§Ø¯ÛŒ ØªÙ†Ø®ÙˆØ§Û', 'åŸºç¡€å·¥èµ„', 'åŸºæœ¬çµ¦', 'SalÃ¡rio bÃ¡sico', 'ÐžÑÐ½Ð¾Ð²Ð½Ð°Ñ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'Salaire de base', 'ê¸°ë³¸ ê¸‰ì—¬', 'Grundgehalt', 'Salario di base', 'à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸—à¸±à¹ˆà¸§à¹„à¸›', 'AlapilletmÃ©ny', 'Basis salaris', 'Basic stipendio', 'Gaji pokok', 'Temel maaÅŸ', 'Î’Î±ÏƒÎ¹ÎºÎ¿Ï Î¼Î¹ÏƒÎ¸Î¿Ï', 'Ø­Ù‚ÙˆÙ‚ Ù¾Ø§ÛŒÙ‡', 'Gaji pokok', 'à°®à±‚à°² à°µà±‡à°¤à°¨à°‚', 'à®…à®Ÿà®¿à®ªà¯à®ªà®Ÿà¯ˆ à®šà®®à¯à®ªà®³à®®à¯', 'àªªà«àª°àª¾àª¥àª®àª¿àª• àªµà«‡àª¤àª¨', 'Podstawowe wynagrodzenie', 'ÐžÑÐ½Ð¾Ð²Ð½Ð° Ð·Ð°Ñ€Ð¾Ð±Ñ–Ñ‚Ð½Ð° Ð¿Ð»Ð°Ñ‚Ð°', 'à¨¬à©‡à¨¸à¨¿à¨• à¨¸à©ˆà¨²à¨°à©€', 'Salariu de baza', 'á€¡á€á€¼á€±á€á€¶á€œá€…á€¬', 'Ipiláº¹ Ipiláº¹', 'Salaye na asali', NULL, NULL),
(682, 'house_rent', 'House Rent', 'à¦˜à¦° à¦­à¦¾à¦¡à¦¼à¦¾', 'Alquiler de casa', 'Ø¥ÙŠØ¬Ø§Ø± Ø§Ù„Ù…Ù†Ø²Ù„', 'à¤˜à¤° à¤•à¤¾ à¤•à¤¿à¤°à¤¾à¤¯à¤¾', 'Ú¯Ú¾Ø± Ú©Ø§ Ú©Ø±Ø§ÛŒÛ', 'æˆ¿ç§Ÿ', 'å®¶è³ƒ', 'Aluguel de casa', 'ÐÑ€ÐµÐ½Ð´Ð° Ð´Ð¾Ð¼Ð°', 'Location de maison', 'ì§‘ ìž„ëŒ€', 'Hausmiete', 'Affitto della casa', 'à¸šà¹‰à¸²à¸™à¹€à¸Šà¹ˆà¸²', 'House Rent', 'Huur', 'HABITATIO', 'Sewa Rumah', 'Ev Kiralama', 'Î•Î½Î¿Î¯ÎºÎ¹Î¿ ÏƒÏ€Î¹Ï„Î¹Î¿Ï', 'Ø§Ø¬Ø§Ø±Ù‡ Ø®Ø§Ù†Ù‡', 'Rumah sewa', 'à°¹à±Œà°¸à± à°…à°¦à±à°¦à±†', 'à®µà¯€à®Ÿà¯à®Ÿà¯ à®µà®¾à®Ÿà®•à¯ˆ', 'àª¹àª¾àª‰àª¸ àª­àª¾àª¡à«àª‚', 'Dom na wynajem', 'ÐžÑ€ÐµÐ½Ð´Ð° Ð¶Ð¸Ñ‚Ð»Ð°', 'à¨¹à¨¾à¨Šà¨¸ à¨°à©ˆà¨‚à¨Ÿ', 'Chiria casei', 'á€¡á€­á€™á€ºá€Œá€¬á€¸á€›á€”á€º', 'Ile Iyalo', 'House Rent', NULL, NULL),
(683, 'medical', 'Medical', 'à¦®à§‡à¦¡à¦¿à¦•à§‡à¦²', 'MÃ©dico', 'Ø·Ø¨ÙŠ', 'à¤®à¥‡à¤¡à¤¿à¤•à¤²', 'Ø·Ø¨ÛŒ', 'åŒ»', 'åŒ»ç™‚', 'MÃ©dico', 'Ð¼ÐµÐ´Ð¸Ñ†Ð¸Ð½ÑÐºÐ°Ñ', 'MÃ©dical', 'ì˜ë£Œ', 'Medizinisch', 'Medico', 'à¸—à¸²à¸‡à¸à¸²à¸£à¹à¸žà¸—à¸¢à¹Œ', 'Orvosi', 'Medisch', 'Medical', 'Medis', 'TÄ±bbi', 'Î™Î±Ï„ÏÎ¹ÎºÏŒÏ‚', 'Ù¾Ø²Ø´Ú©ÛŒ', 'Perubatan', 'à°®à±†à°¡à°¿à°•à°²à±', 'à®®à®°à¯à®¤à¯à®¤à¯à®µ', 'àª¤àª¬à«€àª¬à«€', 'Medyczny', 'ÐœÐµÐ´Ð¸Ñ‡Ð½Ð¸Ð¹', 'à¨®à©ˆà¨¡à©€à¨•à¨²', 'Medical', 'á€†á€±á€¸á€˜á€€á€ºá€†á€­á€¯á€„á€ºá€›á€¬', 'Egbogi', 'Medical', NULL, NULL),
(684, 'over_time_hourly_rate', 'Over Time Hourly Rate', 'à¦“à¦­à¦¾à¦° à¦Ÿà¦¾à¦‡à¦® à¦˜à¦¨à§à¦Ÿà¦¾à¦¯à¦¼ à¦°à§‡à¦Ÿ', 'Sobre la tarifa por hora del tiempo', 'Ù…Ø¹ Ù…Ø±ÙˆØ± Ø§Ù„ÙˆÙ‚Øª Ù…Ø¹Ø¯Ù„ Ø¨Ø§Ù„Ø³Ø§Ø¹Ø©', 'à¤¸à¤®à¤¯ à¤ªà¥à¤°à¤¤à¤¿ à¤˜à¤‚à¤Ÿà¤¾ à¤¦à¤° à¤¸à¥‡ à¤…à¤§à¤¿à¤•', 'ÙˆÙ‚Øª Ú©Û’ Ø§ÙˆÙ‚Ø§Øª Ú©ÛŒ Ø´Ø±Ø­ Ú©Û’ Ø¯ÙˆØ±Ø§Ù†', 'éšæ—¶é—´å˜åŒ–çš„å°æ—¶è´¹çŽ‡', 'æ™‚é–“ã”ã¨ã®æ™‚é–“åˆ¥æ–™é‡‘', 'Taxa horÃ¡ria por hora', 'Ð¡Ñ‡Ð°ÑÑ‚ÑŒÐµ Ð² Ñ‡Ð°Ñ', 'Taux horaire au fil du temps', 'ì‹œê°„ë³„ ì‹œê°„ë‹¹ ìš”ê¸ˆ', 'Stundensatz Ã¼ber die Zeit', 'Over Time Rate oraria', 'à¸­à¸±à¸•à¸£à¸²à¸£à¸²à¸¢à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡à¸•à¹ˆà¸­à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡', 'TÃ¶bb mint Ã³rÃ¡nkÃ©nti arÃ¡ny', 'Na verloop van tijd uurtarief', 'Per Rate Tempus Hourly', 'Over Time Hourly Rate', 'Zaman Ä°Ã§indekiler HÄ±zÄ±', 'Î§ÏÏŒÎ½Î¿Ï‚ Î±Î½Î¬ ÏŽÏÎ±', 'Ø¯Ø± Ø·ÙˆÙ„ Ø³Ø§Ø¹Øª Ø¨Ù‡ ØµÙˆØ±Øª Ø³Ø§Ø¹Øª', 'Lebih Kadar Masa Berkala', 'à°“à°µà°°à± à°Ÿà±ˆà°®à± à°—à°‚à°Ÿà°°à±‹ à°°à±‡à°Ÿà±', 'à®“à®µà®°à¯ à®Ÿà¯ˆà®®à¯ à®®à®£à®¿à®¨à¯‡à®° à®µà®¿à®•à®¿à®¤à®®à¯', 'àª¸àª®àª¯àª¨à«‹ àª¸àª®àª¯ àª¦à«€àª  àª¦àª°', 'Ponadgodzinna stawka', 'Ð— Ñ‡Ð°ÑÐ¾Ð¼ Ð² Ð³Ð¾Ð´Ð¸Ð½Ñƒ', 'à¨µà©±à¨§ à¨¸à¨®à¨¾à¨‚ à¨˜à©°à¨Ÿà¨¾ à¨¦à¨°', 'Rata orarÄƒ a timpului', 'á€¡á€á€»á€­á€”á€ºá€”á€¬á€›á€®á€¡á€œá€­á€¯á€€á€ºá€”á€¾á€¯á€”á€ºá€¸á€€á€»á€±á€¬á€º', 'Akoko Iwá»n Akoká» Oá¹£uwá»n', 'Fiye da Lokaci Na Yau', NULL, NULL),
(685, 'provident_fund', 'Provident Fund', 'à¦¤à¦¹à¦¬à¦¿à¦²', 'fondo de PrevisiÃ³n', 'ØµÙ†Ø¯ÙˆÙ‚ Ø§Ù„Ø§Ø¯Ø®Ø§Ø±', 'à¤­à¤µà¤¿à¤·à¥à¤¯ à¤¨à¤¿à¤§à¤¿', 'Ù¾Ø±Ø§ÙˆÛŒÚˆÙ†Ù¹ ÙÙ†Úˆ', 'å…¬ç§¯é‡‘', 'æº–å‚™åŸºé‡‘', 'fundo de previdÃªncia', 'Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ñ‹Ð¹ Ñ„Ð¾Ð½Ð´', 'Fonds de prÃ©voyance', 'í”„ë¡œ ë¹„ì „ ê¸°ê¸ˆ', 'Vorsorgefonds', 'fondo di previdenza', 'à¸à¸­à¸‡à¸—à¸¸à¸™à¸ªà¸³à¸£à¸­à¸‡à¹€à¸¥à¸µà¹‰à¸¢à¸‡à¸Šà¸µà¸ž', 'segÃ©lyalap', 'Provident Fund', 'fiscus provident', 'dana penghematan', 'ihtiyat fonu', 'Ï„Î±Î¼ÎµÎ¯Î¿ Ï€ÏÎ¿Î½Î¿Î¯Î±Ï‚', 'ØµÙ†Ø¯ÙˆÙ‚', 'kumpulan Wang Simpanan', 'à°­à°µà°¿à°·à±à°¯ à°¨à°¿à°§à°¿', 'à®µà®°à¯à®™à¯à®•à®¾à®² à®µà¯ˆà®ªà¯à®ªà¯ à®¨à®¿à®¤à®¿', 'àªªà«àª°à«‹àªµàª¿àª¡àª¨à«àªŸ àª«àª‚àª¡', 'Fundusz Provident', 'Ñ€ÐµÐ·ÐµÑ€Ð²Ð½Ð¾Ð³Ð¾ Ñ„Ð¾Ð½Ð´Ñƒ', 'à¨ªà©à¨°à¨¾à¨µà©€à¨¡à©ˆà¨‚à¨Ÿ à¨«à©°à¨¡', 'Fondul Provident', 'Provident Fund á€€', 'Iwe-iá¹£owo Pipese', 'Asusun bada', NULL, NULL),
(686, 'hourly_rate', 'Hourly Rate', 'à¦ªà§à¦°à¦¤à¦¿ à¦˜à¦£à§à¦Ÿà¦¾à¦° à¦®à§‚à¦²à§à¦¯', 'Tarifa por hora', 'Ø§Ù„Ù…Ø¹Ø¯Ù„ Ø¨Ø§Ù„Ø³Ø§Ø¹Ø©', 'à¤ªà¥à¤°à¤¤à¤¿ à¤˜à¤‚à¤Ÿà¤¾ - à¤¦à¤°', ' ÙÛŒ Ú¯Ú¾Ù†Ù¹Û Ú©ÛŒ Ø´Ø±Ø­', 'æ¯å°æ—¶æ”¶è´¹', 'æ™‚çµ¦', 'Taxa horÃ¡ria', 'Ð§Ð°ÑÐ¾Ð²Ð°Ñ ÑÑ‚Ð°Ð²ÐºÐ°', 'Taux horaire', 'ì‹œê°„ë‹¹ ìš”ê¸ˆ', 'Stundensatz', 'Tariffa oraria', 'à¸­à¸±à¸•à¸£à¸²à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡', 'Ã“radÃ­j', 'Uurtarief', 'Hourly rate', 'Tarif per jam', 'Saatlik Ã¼cret', 'Î©ÏÎ¿Î¼Î¯ÏƒÎ¸Î¹Î¿', 'Ù†Ø±Ø® Ø³Ø§Ø¹ØªÛŒ', 'Kadar jam', 'à°—à°‚à°Ÿà°•à± à°°à±‡à°Ÿà±', 'à®¨à¯‡à®° à®µà®¿à®•à®¿à®¤à®®à¯', 'àª…àªµàª°àª²à«€ àª°à«‡àªŸ', 'Stawka godzinowa', 'ÐŸÐ¾Ð³Ð¾Ð´Ð¸Ð½Ð½Ð° ÑÑ‚Ð°Ð²ÐºÐ°', 'à¨˜à©°à¨Ÿà©‡ à¨¦à©€ à¨¦à¨°', 'Rata orarÄƒ', 'á€¡á€œá€¯á€•á€ºá€á€»á€­á€”á€ºá€”á€¬á€›á€®á€”á€¾á€¯á€”á€ºá€¸', 'Oá¹£uwá»n wakati', 'Ranar Saa', NULL, NULL),
(687, 'allowance', 'Allowance', 'à¦­à¦¾à¦¤à¦¾', 'Tolerancia', 'Ø¨Ø¯Ù„', 'à¤­à¤¤à¥à¤¤à¤¾', 'Ø§Ù„Ø§Ø¤Ù†Ø³', 'æ´¥è´´', 'æ‰‹å½“', 'Abono', 'Ð¿Ð¾ÑÐ¾Ð±Ð¸Ðµ', 'Allocation', 'ìˆ˜ë‹¹', 'Beihilfe', 'indennitÃ ', 'à¹€à¸šà¸µà¹‰à¸¢à¹€à¸¥à¸µà¹‰à¸¢à¸‡', 'JuttatÃ¡s', 'Toelage', 'Allocacio', 'Tunjangan', 'Ã¶denek', 'Î•Ï€Î¯Î´Î¿Î¼Î±', 'Ú©Ù…Ú© Ù‡Ø²ÛŒÙ†Ù‡', 'Elaun', 'à°…à°¨à±à°®à°¤à°¿', 'à®…à®²à®µà®©à¯à®¸à¯', 'àª­àª¥à«àª¥à«àª‚', 'Dodatek', 'Ð”Ð¾Ð¿Ð¾Ð¼Ð¾Ð³Ð°', 'à¨­à©±à¨¤à¨¾', 'alocaÈ›ie', 'á€¡á€á€½á€„á€·á€º', 'Gbese', 'Allowance', NULL, NULL),
(688, 'deduction', 'Deduction', 'à¦¬à¦¾à¦¦', 'DeducciÃ³n', 'Ø§Ù„Ù…Ø³ØªÙ‚Ø·Ø¹', 'à¤•à¤Ÿà¥Œà¤¤à¥€', 'Ú©Ù¹ÙˆØªÛŒ', 'æ‰£é™¤', 'æŽ§é™¤', 'DeduÃ§Ã£o', 'Ð´ÐµÐ´ÑƒÐºÑ†Ð¸Ñ', 'DÃ©duction', 'ê³µì œ', 'Abzug', 'Deduzione', 'à¸à¸²à¸£à¸«à¸±à¸', 'LevonÃ¡s', 'Aftrek', 'deductio', 'Deduksi', 'kesinti', 'Î‘Ï†Î±Î¯ÏÎµÏƒÎ·', 'Ú©Ø³Ø±', 'Potongan', 'à°¤à±€à°¸à°¿à°µà±‡à°¤à°¤à±€à°¸à°¿à°µà±‡à°¤', 'à®¤à¯à®ªà¯à®ªà®±à®¿à®¯à¯à®®à¯', 'àª•àªªàª¾àª¤', 'Odliczenie', 'Ð’Ñ–Ð´Ñ€Ð°Ñ…ÑƒÐ²Ð°Ð½Ð½Ñ', 'à¨•à¨Ÿà©Œà¨¤à©€', 'Deducere', 'á€”á€¾á€¯á€á€ºá€šá€°á€á€¼á€„á€ºá€¸', 'Iyá»kuro', 'Ragewa', NULL, NULL),
(689, 'gross_salary', 'Gross Salary', 'à¦®à§‹à¦Ÿ à¦¬à§‡à¦¤à¦¨', 'Salario bruto', 'Ø§Ù„Ø±Ø§ØªØ¨ Ø§Ù„ÙƒÙ„Ù‰', 'à¤¸à¤•à¤² à¤µà¥‡à¤¤à¤¨', 'Ù…Ø¬Ù…ÙˆØ¹ÛŒ ØªÙ†Ø®ÙˆØ§Û', 'æ€»è–ªæ°´', 'ç·çµ¦ä¸Ž', 'SalÃ¡rio Bruto', 'Ð’Ð°Ð»Ð¾Ð²Ð°Ñ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'Salaire brut', 'ì´ ê¸‰ì—¬', 'Bruttogehalt', 'Stipendio lordo', 'à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸‚à¸±à¹‰à¸™à¸•à¹‰à¸™', 'BruttÃ³ bÃ©r', 'Brutosalaris', 'Crassa salarium', 'Gaji kotor', 'BrÃ¼t maaÅŸ', 'Î‘ÎºÎ±Î¸Î¬ÏÎ¹ÏƒÏ„Î¿ Î¼Î¹ÏƒÎ¸ÏŒ', 'Ø­Ù‚ÙˆÙ‚ Ùˆ Ø¯Ø³ØªÙ…Ø²Ø¯ Ù†Ø§Ø®Ø§Ù„Øµ', 'Gaji kasar', 'à°¸à±à°¥à±‚à°² à°œà±€à°¤à°‚', 'à®®à¯†à®¾à®¤à¯à®¤ à®šà®®à¯à®ªà®³à®®à¯', 'àª•à«àª² àªªàª—àª¾àª°', 'Wynagrodzenie brutto', 'Ð—Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð° Ð±Ñ€ÑƒÑ‚Ñ‚Ð¾', 'à¨•à©à©±à¨² à¨¤à¨¨à¨–à¨¼à¨¾à¨¹', 'Salariu brut', 'á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸á€œá€…á€¬', 'Gross Salary', 'Rawan kudi mai yawa', NULL, NULL),
(690, 'net_salary', 'Net Salary', 'à¦¨à§‡à¦Ÿ à¦¬à§‡à¦¤à¦¨', 'Sueldo neto', 'ØµØ§ÙÙŠ Ø§Ù„Ø±Ø§ØªØ¨', 'à¤•à¥à¤² à¤µà¥‡à¤¤à¤¨', 'Ù†ÛŒÙ¹ ØªÙ†Ø®ÙˆØ§Û', 'å‡€å·¥èµ„', 'ãƒãƒƒãƒˆçµ¦ä¸Ž', 'SalÃ¡rio lÃ­quido', 'Ð§Ð¸ÑÑ‚Ð°Ñ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'Salaire net', 'ìˆœ ê¸‰ì—¬', 'Nettogehalt', 'Salario netto', 'à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™à¸ªà¸¸à¸—à¸˜à¸´', 'NettÃ³ bÃ©r', 'Netto salaris', 'Net MERCES', 'Gaji bersih', 'Net maaÅŸ', 'ÎšÎ±Î¸Î±ÏÏŒÏ‚ Î¼Î¹ÏƒÎ¸ÏŒÏ‚', 'Ø­Ù‚ÙˆÙ‚ Ø®Ø§Ù„Øµ', 'Gaji Bersih', 'à°¨à°¿à°•à°° à°œà±€à°¤à°‚', 'à®¨à®¿à®•à®° à®šà®®à¯à®ªà®³à®®à¯', 'àª¨à«‡àªŸ àªªàª—àª¾àª°', 'Wynagrodzenie netto', 'Ð§Ð¸ÑÑ‚Ð° Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ð°', 'Net Salary', 'Salariu net', 'net á€€á€œá€…á€¬', 'Apapá» owo-ori', 'Raayin Netarwa', NULL, NULL),
(691, 'manage_payment', 'Manage Payment', 'à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar el pago', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ø¯ÙØ¹', 'à¤­à¥à¤—à¤¤à¤¾à¤¨ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ä»˜æ¬¾', 'ãŠæ”¯æ‰•ã„ã®ç®¡ç†', 'Gerenciar Pagamento', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð°Ð¼Ð¸', 'GÃ©rer le paiement', 'ì§€ë¶ˆ ê´€ë¦¬', 'Zahlung verwalten', 'Gestisci il pagamento', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸²à¸£à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™', 'FizetÃ©s kezelÃ©se', 'Beheer de betaling', 'curo Payment', 'Kelola Pembayaran', 'Ã–demeyi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ Ï€Î»Î·ÏÏ‰Î¼Î®Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù¾Ø±Ø¯Ø§Ø®Øª', 'Urus Pembayaran', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªšà«àª•àªµàª£à«€ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj pÅ‚atnoÅ›ciÄ…', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ð¿Ð»Ð°Ñ‚ÐµÐ¶Ð°Ð¼Ð¸', 'à¨­à©à¨—à¨¤à¨¾à¨¨ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i plata', 'á€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯á€›á€™á€Šá€ºá€·á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Isanwo', 'Sarrafa Biyan kuÉ—i', NULL, NULL),
(692, 'salary_type', 'Salary Type', 'à¦¬à§‡à¦¤à¦¨ à¦ªà§à¦°à¦•à¦¾à¦°', 'Tipo de salario', 'Ù†ÙˆØ¹ Ø§Ù„Ø±Ø§ØªØ¨', 'à¤µà¥‡à¤¤à¤¨ à¤ªà¥à¤°à¤•à¤¾à¤°', 'ØªÙ†Ø®ÙˆØ§Û Ú©ÛŒ Ù‚Ø³Ù…', 'è–ªèµ„ç±»åž‹', 'çµ¦ä¸Žã‚¿ã‚¤ãƒ—', 'Tipo salarial', 'Ð¢Ð¸Ð¿ Ð·Ð°Ñ€Ð¿Ð»Ð°Ñ‚Ñ‹', 'Type de salaire', 'ê¸‰ì—¬ ìœ í˜•', 'Gehaltsart', 'Tipo di stipendio', 'à¸›à¸£à¸°à¹€à¸ à¸—à¹€à¸‡à¸´à¸™à¹€à¸”à¸·à¸­à¸™', 'FizetÃ©si tÃ­pus', 'Salaris Type', 'Type stipendio', 'Tipe Gaji', 'MaaÅŸ TÃ¼rÃ¼', 'Î¤ÏÏ€Î¿Ï‚ Î¼Î¹ÏƒÎ¸Î¿Î´Î¿ÏƒÎ¯Î±Ï‚', 'Ù†ÙˆØ¹ Ø­Ù‚ÙˆÙ‚', 'Jenis Gaji', 'à°œà±€à°¤à°‚ à°ªà°¦à±à°§à°¤à°¿', 'à®šà®®à¯à®ªà®³ à®µà®•à¯ˆ', 'àªªàª—àª¾àª° àªªà«àª°àª•àª¾àª°', 'Rodzaj wynagrodzenia', 'Ð¢Ð¸Ð¿ Ð·Ð°Ñ€Ð¾Ð±Ñ–Ñ‚Ð½Ð¾Ñ— Ð¿Ð»Ð°Ñ‚Ð¸', 'à¨¤à¨¨à¨–à¨¾à¨¹ à¨¦à©€ à¨•à¨¿à¨¸à¨®', 'Tip de salariu', 'á€œá€…á€¬á€¡á€™á€»á€­á€¯á€¸á€¡á€…á€¬á€¸', 'Iyawo Iru', 'Nauin Salary', NULL, NULL),
(693, 'payment_to', 'Payment To', 'à¦œà¦¾à¦¹à¦¾à¦•à§‡à¦ªà§‡à¦®à§‡à¦¨à§à¦Ÿ  à¦•à¦°à¦¾ à¦¹à¦¬à§‡', 'Pago Para', 'Ø¯ÙØ¹ Ù„', 'à¤•à¥‹ à¤­à¥à¤—à¤¤à¤¾à¤¨', 'Ø§Ø¯Ø§Ø¦ÛŒÚ¯ÛŒ Ú©Ø±Ù†Û’ Ú©Û’ Ù„Ø¦Û’', 'æ”¯ä»˜', 'ã¸ã®æ”¯æ‰•ã„', 'Pagamento para', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð”Ð»Ñ', 'Paiement Ã ', 'ì§€ë¶ˆ ëŒ€ìƒ', 'Zahlung an', 'pagamento a', 'à¸Šà¸³à¸£à¸°à¹€à¸‡à¸´à¸™à¸–à¸¶à¸‡', 'FizetÃ©s ... rÃ©szÃ©re', 'Betaling aan', 'Ad Payment', 'pembayaran untuk', 'IÃ§in Ã¶deme', 'Î Î»Î·ÏÏ‰Î¼Î® ÏƒÎµ', 'Ù¾Ø±Ø¯Ø§Ø®Øª Ø¨Ù‡', 'bayaran kepada', 'à°šà±†à°²à±à°²à°¿à°‚à°ªà±', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®•à®Ÿà¯à®Ÿ', 'àªšà«àª•àªµàª£à«€ àª®àª¾àªŸà«‡', 'PÅ‚atnoÅ›Ä‡ Do', 'ÐžÐ¿Ð»Ð°Ñ‚Ð° Ð´Ð¾', 'à¨­à©à¨—à¨¤à¨¾à¨¨ à¨•à¨°à¨¨ à¨²à¨ˆ', 'plata catre', 'á€›á€”á€ºá€„á€½á€±á€•á€±á€¸á€á€»á€±á€™á€¾á€¯á€›á€™á€Šá€ºá€·', 'Isanwo Lati', 'Biya Don', NULL, NULL),
(694, 'over_time_total_hour', 'Over Time Total Hour', 'à¦“à¦­à¦¾à¦° à¦Ÿà¦¾à¦‡à¦®  à¦®à§‹à¦Ÿ à¦˜à¦¨à§à¦Ÿà¦¾', 'Hora total en el tiempo', 'Ù…Ø¹ Ù…Ø±ÙˆØ± Ø§Ù„ÙˆÙ‚Øª Ø¥Ø¬Ù…Ø§Ù„ÙŠ Ø³Ø§Ø¹Ø©', 'à¤¸à¤®à¤¯ à¤•à¥à¤² à¤˜à¤‚à¤Ÿà¥‡ à¤¸à¥‡ à¤…à¤§à¤¿à¤•', 'Ú©Ù„ ÙˆÙ‚Øª Ú©Û’ Ø³Ø§ØªÚ¾', 'éšç€æ—¶é—´çš„æŽ¨ç§»', 'åˆè¨ˆæ™‚é–“', 'Over Time Total Hour', 'Ð¡ Ñ‚ÐµÑ‡ÐµÐ½Ð¸ÐµÐ¼ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð¸', 'Au fil du temps Total heure', 'ì‹œê°„ì´ ì§€ë‚¨ì— ë”°ë¼ ì´ ì‹œê°„', 'Ãœber die Zeit insgesamt Stunde', 'Oltre lora totale', 'à¹€à¸¡à¸·à¹ˆà¸­à¸£à¸§à¸¡à¹€à¸§à¸¥à¸²à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'IdÅ‘ alatt Teljes Ã³ra', 'Na verloop van tijd Totaal uur', 'Total super Hour', 'Over Time Total Hour', 'Zamanla Toplam Saat', 'Î£Ï…Î½Î¿Î»Î¹ÎºÎ® ÏŽÏÎ± ÎºÎ±Ï„Î¬ Ï„Î· Î´Î¹Î¬ÏÎºÎµÎ¹Î± Ï„Î¿Ï… Ï‡ÏÏŒÎ½Î¿Ï…', 'Ø¯Ø± Ø·ÙˆÙ„ Ø²Ù…Ø§Ù† Ú©Ù„ Ø³Ø§Ø¹Øª', 'Lebih Masa Jumlah Jam', 'à°“à°µà°°à± à°Ÿà±ˆà°‚ à°Ÿà±‹à°Ÿà°²à± à°…à°µà°°à±', 'à®®à¯Šà®¤à¯à®¤ à®¨à¯‡à®°à®®à¯ à®®à¯Šà®¤à¯à®¤ à®¨à¯‡à®°à®®à¯', 'àª¸àª®àª¯ àª•à«àª² àª•àª²àª¾àª• àª‰àªªàª°', 'ÅÄ…czna liczba godzin w czasie', 'Ð— Ñ‡Ð°ÑÐ¾Ð¼ Ð·Ð°Ð³Ð°Ð»ÑŒÐ½Ð° Ð³Ð¾Ð´Ð¸Ð½Ð°', 'à¨Ÿà¨¾à¨ˆà¨® à¨•à©à¨² à¨˜à©°à¨Ÿà¨¾ à¨µà©±à¨§', 'Ora pe orÄƒ totalÄƒ', 'á€¡á€á€»á€­á€”á€ºá€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸á€”á€¬á€›á€®á€€á€»á€±á€¬á€º', 'Aago Aago Lapapá» wakati', 'Bayan Lokaci Kayan Saa', NULL, NULL),
(695, 'over_time_amount', 'Over Time Amount', 'à¦“à¦­à¦¾à¦° à¦Ÿà¦¾à¦‡à¦® à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Sobre el tiempo Monto', 'Ø¹Ù„Ù‰ Ù…Ø± Ø§Ù„Ø²Ù…Ù† Ø§Ù„Ù…Ø¨Ù„Øº', 'à¤¸à¤®à¤¯ à¤°à¤¾à¤¶à¤¿ à¤•à¥‡ à¤¸à¤¾à¤¥', 'ÙˆÙ‚Øª Ú©ÛŒ Ø±Ù‚Ù… Ú©Û’ Ø¯ÙˆØ±Ø§Ù†', 'éšç€æ—¶é—´çš„æŽ¨ç§»', 'æ™‚é–“çµŒéŽã«ä¼´ã†é‡‘é¡', 'Ao longo do tempo', 'Ð¡ÑƒÐ¼Ð¼Ð° Ð·Ð° Ñ€Ð°Ð·', 'Au fil du temps', 'ì‹œê°„ ê²½ê³¼ì— ë”°ë¥¸ ê¸ˆì•¡', 'Ãœber Zeit Betrag', 'Over Time Amount', 'à¹€à¸¡à¸·à¹ˆà¸­à¹€à¸§à¸¥à¸²à¸œà¹ˆà¸²à¸™à¹„à¸›', 'TÃ¶bb idÅ‘ alatt', 'Over tijd Bedrag', 'Per Aliquam tempus', 'Over Time Amount', 'Zamana GÃ¶re Tutar', 'Î Î¿ÏƒÏŒ Over Time', 'Ø¨ÛŒØ´ Ø§Ø² Ù…Ù‚Ø¯Ø§Ø± Ø²Ù…Ø§Ù†', 'Jumlah Lebih Masa', 'à°“à°µà°°à± à°Ÿà±ˆà°‚ à°®à±Šà°¤à±à°¤à°‚', 'à®“à®µà®°à¯ à®Ÿà¯ˆà®®à¯ à®¤à¯Šà®•à¯ˆ', 'àª¸àª®àª¯àª¨à«‹ àª°àª•àª®', 'Kwota w czasie', 'ÐÐ°Ð´Ð¼Ñ–Ñ€Ð½Ð° ÑÑƒÐ¼Ð°', 'à¨¸à¨®à©‡à¨‚ à¨¦à©€ à¨®à¨¾à¨¤à¨°à¨¾ à¨¤à©‹à¨‚ à¨µà©±à¨§', 'Valoarea peste timp', 'á€¡á€á€»á€­á€”á€ºá€•á€™á€¬á€á€€á€»á€±á€¬á€º', 'Iye Iye Aago', 'Yawan Lokaci', NULL, NULL),
(696, 'total_hour', 'Total Hour', 'à¦®à§‹à¦Ÿ à¦˜à¦¨à§à¦Ÿà¦¾', 'Hora total', 'Ù…Ø¬Ù…ÙˆØ¹ Ø§Ù„Ø³Ø§Ø¹Ø©', 'à¤•à¥à¤² à¤˜à¤‚à¤Ÿà¥‡', 'Ú©Ù„ Ú¯Ú¾Ù†Ù¹Û’', 'æ€»æ—¶æ•°', 'åˆè¨ˆæ™‚é–“', 'Hora Total', 'ÐžÐ±Ñ‰Ð¸Ð¹ Ñ‡Ð°Ñ', 'Heure totale', 'ì´ ì‹œê°„', 'Gesamtstunde', 'Ora totale', 'à¸£à¸§à¸¡à¸Šà¸±à¹ˆà¸§à¹‚à¸¡à¸‡', 'Teljes Ã³ra', 'Totaal uur', 'summa Hour', 'Jam Total', 'Toplam Saat', 'Î£Ï…Î½Î¿Î»Î¹ÎºÎ® ÏŽÏÎ±', 'Ø³Ø§Ø¹Øª Ú©Ù„', 'Jumlah Jam', 'à°®à±Šà°¤à±à°¤à°‚ à°…à°µà°°à±', 'à®®à¯Šà®¤à¯à®¤ à®®à®£à®¿', 'àª•à«àª² àª•àª²àª¾àª•', 'Godzina ogÃ³Å‚em', 'Ð—Ð°Ð³Ð°Ð»ÑŒÐ½Ð° ÐºÑ–Ð»ÑŒÐºÑ–ÑÑ‚ÑŒ Ð³Ð¾Ð´Ð¸Ð½', 'à¨•à©à©±à¨² à¨˜à©°à¨Ÿà¨¾', 'Ora totalÄƒ', 'á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸á€”á€¬á€›á€®', 'Lapapá» wakati', 'Jimlar Saa', NULL, NULL),
(697, 'bonus', 'Bonus', 'à¦¬à§‹à¦¨à¦¾à¦¸', 'Prima', 'Ø¹Ù„Ø§ÙˆØ©', 'à¤¬à¥‹à¤¨à¤¸', ' Ø¨ÙˆÙ†Ø³', 'å¥–é‡‘', 'ãƒœãƒ¼ãƒŠã‚¹', 'BÃ´nus', 'Ð±Ð¾Ð½ÑƒÑ', 'Prime', 'ë³´ë„ˆìŠ¤', 'Bonus', 'indennitÃ ', 'à¹‚à¸šà¸™à¸±à¸ª', 'pÃ³tlÃ©k', 'Bonus', 'Bonus', 'Bonus', 'Bonus', 'Î”ÏŽÏÎ¿', 'Ø¬Ø§ÛŒØ²Ù‡', 'Bonus', 'à°…à°¦à°¨à°ªà±', 'à®ªà¯‡à®¾à®©à®¸à¯', 'àª¬à«‹àª¨àª¸', 'Premia', 'Ð‘Ð¾Ð½ÑƒÑ', 'à¨¬à©‹à¨¨à¨¸', 'PrimÄƒ', 'á€†á€¯á€„á€¾á€±', 'Ajeseku', 'Bonus', NULL, NULL),
(698, 'penalty', 'Penalty', 'à¦œà¦°à¦¿à¦®à¦¾à¦¨à¦¾', 'Pena', 'Ø¶Ø±Ø¨Ø© Ø¬Ø²Ø§Ø¡', 'à¤¦à¤‚à¤¡', 'Ø¬Ø±Ù…Ø§Ù†Û', 'ç½šæ¬¾', 'ãƒšãƒŠãƒ«ãƒ†ã‚£', 'Pena', 'Ð½ÐµÑƒÑÑ‚Ð¾Ð¹ÐºÐ°', 'Peine', 'íŒ¨ë„í‹°', 'Elfmeter', 'Pena', 'à¸à¸²à¸£à¸¥à¸‡à¹‚à¸—à¸©', 'BÃ¼ntetÃ©s', 'boete', 'supplicium', 'Penalti', 'Ceza', 'Î Î¿Î¹Î½Î®', 'Ù…Ø¬Ø§Ø²Ø§Øª', 'Penalti', 'à°ªà±†à°¨à°¾à°²à±à°Ÿà±€', 'à®…à®ªà®°à®¾à®¤à®®à¯', 'àª¦àª‚àª¡', 'Rzut karny', 'Ð¨Ñ‚Ñ€Ð°Ñ„', 'à¨ªà©ˆà¨¨à¨²à¨Ÿà©€', 'Penalizare', 'á€•á€¼á€…á€ºá€’á€á€º', 'Ipaba', 'Zama', NULL, NULL),
(699, 'gross_amount', 'Gross Amount', 'à¦®à§‹à¦Ÿ à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Cantidad bruta', 'Ø§Ù„Ù…Ø¨Ù„Øº Ø§Ù„Ø¥Ø¬Ù…Ø§Ù„ÙŠ', 'à¤¸à¤•à¤² à¤°à¤¾à¤¶à¤¿', 'Ù…Ø¬Ù…ÙˆØ¹ÛŒ Ø±Ù‚Ù…', 'æ€»é¢', 'ç·é¡', 'Quantidade bruta', 'Ð¡ÑƒÐ¼Ð¼Ð° Ð±Ñ€ÑƒÑ‚Ñ‚Ð¾', 'Montant brut', 'ì´ì•¡', 'Bruttobetrag', 'Importo lordo', 'à¸¢à¸­à¸”à¸£à¸§à¸¡', 'BruttÃ³ Ã¶sszeg', 'Brutobedrag', 'Crassa pondus', 'Jumlah bruto', 'BrÃ¼t miktar', 'Î‘ÎºÎ±Î¸Î¬ÏÎ¹ÏƒÏ„Î¿ Ï€Î¿ÏƒÏŒ', 'Ù…Ù‚Ø¯Ø§Ø± Ù†Ø§Ø®Ø§Ù„Øµ', 'Jumlah kasar', 'à°¸à±à°¥à±‚à°² à°®à±Šà°¤à±à°¤à°‚', 'à®®à¯Šà®¤à¯à®¤ à®¤à¯Šà®•à¯ˆ', 'àª•à«àª² àª°àª•àª®', 'Kwota brutto', 'Ð’Ð°Ð»Ð¾Ð²Ð° ÑÑƒÐ¼Ð°', 'à¨•à©à©±à¨² à¨°à¨•à¨®', 'Valoarea brutÄƒ', 'á€…á€¯á€…á€¯á€•á€±á€«á€„á€ºá€¸á€„á€½á€±á€•á€™á€¬á€', 'Iye nla', 'Babban Asalin', NULL, NULL),
(700, 'net_amount', 'Net Amount', 'à¦¨à§‡à¦Ÿ à¦ªà¦°à¦¿à¦®à¦¾à¦£', 'Importe neto', 'ÙƒÙ…ÙŠØ© Ø§Ù„Ø´Ø¨ÙƒØ©', 'à¤¶à¥à¤¦à¥à¤§ à¤°à¤¾à¤¶à¤¿', 'Ø§ØµÙ„ Ø±Ù‚Ù…', 'å‡€é¢', 'æ­£å‘³é‡‘é¡', 'Valor lÃ­quido', 'Ð§Ð¸ÑÑ‚Ð°Ñ ÑÑƒÐ¼Ð¼Ð°', 'Montant net', 'ìˆœì•¡', 'Netto-Betrag', 'Importo netto', 'à¸›à¸£à¸´à¸¡à¸²à¸“à¸ªà¸¸à¸—à¸˜à¸´', 'NettÃ³ Ã¶sszege', 'Netto bedrag', 'Net amount', 'Jumlah bersih', 'Net tutar', 'ÎšÎ±Î¸Î±ÏÏŒ Ï€Î¿ÏƒÏŒ', 'Ù…Ù‚Ø¯Ø§Ø± Ø®Ø§Ù„Øµ', 'Jumlah bersih', 'à°¨à°¿à°•à°° à°®à±Šà°¤à±à°¤à°‚', 'à®¨à®¿à®•à®° à®¤à¯Šà®•à¯ˆ', 'àª¨à«‡àªŸ àª°àª•àª®', 'Kwota netto', 'Ð§Ð¸ÑÑ‚Ð° ÑÑƒÐ¼Ð°', 'à¨•à©à©±à¨² à¨°à¨¾à¨¸à¨¼à©€', 'Cantitate netÄƒ', 'net á€„á€½á€±á€•á€™á€¬á€', 'Iye apapá»', 'Babban Asusun', NULL, NULL),
(701, 'is_applicable_discount', 'Is Applicable Discount?', 'à¦¡à¦¿à¦¸à¦•à¦¾à¦‰à¦¨à§à¦Ÿ à¦•à¦¿ à¦ªà§à¦°à¦¯à§‹à¦œà§à¦¯?', 'Â¿Es un descuento aplicable?', 'Ù‡Ùˆ Ø§Ù„Ø®ØµÙ… Ù„Ù„ØªØ·Ø¨ÙŠÙ‚ØŸ', 'à¤²à¤¾à¤—à¥‚ à¤›à¥‚à¤Ÿ à¤¹à¥ˆ?', 'Ù‚Ø§Ø¨Ù„ Ø§Ø·Ù„Ø§Ù‚ ÚˆØ³Ú©Ø§Ø¤Ù†Ù¹ ÛÛ’ØŸ', 'æ˜¯å¦é€‚ç”¨æŠ˜æ‰£ï¼Ÿ', 'é©ç”¨å‰²å¼•ã‚ã‚Šã¾ã™ã‹ï¼Ÿ', 'Ã‰ um desconto aplicÃ¡vel?', 'ÐŸÑ€Ð¸Ð¼ÐµÐ½Ð¸Ð¼Ð°Ñ ÑÐºÐ¸Ð´ÐºÐ°?', 'Est-ce que le rabais applicable?', 'ì ìš© ê°€ëŠ¥í•œ í• ì¸ì¸ê°€?', 'Ist der Rabatt gÃ¼ltig?', 'Ãˆ lo sconto applicabile?', 'à¸ªà¹ˆà¸§à¸™à¸¥à¸”à¸—à¸µà¹ˆà¹ƒà¸Šà¹‰à¸šà¸±à¸‡à¸„à¸±à¸šà¸«à¸£à¸·à¸­à¹„à¸¡à¹ˆ?', 'AlkalmazhatÃ³ kedvezmÃ©ny?', 'Is toepasselijke korting?', 'Price est applicabilis?', 'Apakah Diskon yang Berlaku?', 'Uygulanabilir Ä°ndirim mi?', 'Î•Ï†Î±ÏÎ¼ÏŒÎ¶ÎµÏ„Î±Î¹ Î­ÎºÏ€Ï„Ï‰ÏƒÎ·;', 'Ø¢ÛŒØ§ ØªØ®ÙÛŒÙ Ù…Ù†Ø§Ø³Ø¨ Ø§Ø³ØªØŸ', 'Adakah Diskaun Berkenaan?', 'à°µà°°à±à°¤à°¿à°‚à°šà°¦à°—à°¿à°¨ à°¡à°¿à°¸à±à°•à±Œà°‚à°Ÿà± à°‰à°‚à°¦à°¾?', 'à®ªà¯Šà®°à¯à®¨à¯à®¤à®•à¯à®•à¯‚à®Ÿà®¿à®¯ à®¤à®³à¯à®³à¯à®ªà®Ÿà®¿?', 'àª²àª¾àª—à« àª¡àª¿àª¸à«àª•àª¾àª‰àª¨à«àªŸ àª›à«‡?', 'Czy obowiÄ…zuje zniÅ¼ka?', 'Ð§Ð¸ Ð·Ð°ÑÑ‚Ð¾ÑÐ¾Ð²ÑƒÑ”Ñ‚ÑŒÑÑ Ð·Ð½Ð¸Ð¶ÐºÐ°?', 'à¨•à©€ à¨›à©‚à¨Ÿ à¨¨à©‚à©° à¨²à¨¾à¨—à©‚ à¨•à¨°à¨¨à¨¾ à¨¹à©ˆ?', 'Este o reducere aplicabilÄƒ?', 'á€žá€€á€ºá€†á€­á€¯á€„á€ºá€žá€±á€¬á€œá€»á€¾á€±á€¬á€·á€›á€¾á€­á€•á€«á€žá€œá€¬á€¸?', 'á¹¢e á¹¢e Kan Owo?', 'Shin rangwamen da aka dace?', NULL, NULL),
(702, 'hostel_fee', 'Hostel Fee', 'à¦¹à§‹à¦¸à§à¦Ÿà§‡à¦² à¦«à¦¿', 'Tarifa del albergue', 'Hostel Fee', 'à¤›à¤¾à¤¤à¥à¤°à¤¾à¤µà¤¾à¤¸ à¤¶à¥à¤²à¥à¤•', 'ÛØ§Ø³Ù¹Ù„ ÙÛŒØ³', 'æ—…é¦†è´¹ç”¨', 'ãƒ›ã‚¹ãƒ†ãƒ«æ–™é‡‘', 'Taxa de Albergue', 'Ð¥Ð¾ÑÑ‚ÐµÐ»', 'Frais dauberge', 'í˜¸ìŠ¤í…” ìš”ê¸ˆ', 'JugendherbergsgebÃ¼hr', 'Tassa dellostello', 'à¸„à¹ˆà¸²à¸—à¸µà¹ˆà¸žà¸±à¸', 'Hostel Fee', 'Hostel Fee', 'pretium Hostel', 'Biaya Hostel', 'Hostel Ãœcreti', 'Hostel Fee', 'Ù‡Ø²ÛŒÙ†Ù‡ ÙˆÛŒØ²Ø§', 'Yuran Asrama', 'à°¹à°¾à°¸à±à°Ÿà°²à± à°°à±à°¸à±à°®à±', 'à®µà®¿à®Ÿà¯à®¤à®¿ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àª›àª¾àª¤à«àª°àª¾àª²àª¯ àª«à«€', 'OpÅ‚ata Hostel', 'ÐšÐ¾Ð¼Ñ–ÑÑ–Ñ Ð·Ð° Ñ…Ð¾ÑÑ‚Ð¸Ð½Ð³', 'à¨¹à©‹à¨¸à¨Ÿà¨² à¨«à©€à¨¸', 'Hostel Fee', 'á€˜á€±á€¬á€ºá€’á€«á€†á€±á€¬á€„á€ºá€€á€¼á€±á€¸', 'Ile-iá¹£áº¹ ile ayagbe', 'Kushin kwanan dalibai', NULL, NULL),
(703, 'transport_fee', 'Transport Fee', 'à¦ªà¦°à¦¿à¦¬à¦¹à¦¨ à¦«à¦¿', 'Tarifa de transporte', 'Ù…ØµØ§Ø±ÙŠÙ Ø§Ù„Ø´Ø­Ù†', 'à¤ªà¤°à¤¿à¤µà¤¹à¤¨ à¤¶à¥à¤²à¥à¤•', 'Ù¹Ø±Ø§Ù†Ø³Ù¾ÙˆØ±Ù¹ ÙÛŒØ³', 'è¿è¾“è´¹', 'è¼¸é€æ–™', 'Tarifa de transporte', 'Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ñ‹Ð¹ ÑÐ±Ð¾Ñ€', 'Frais de transport', 'ìš´ì†¡ë£Œ', 'Transportkosten', 'Tassa di trasporto', 'à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸à¸²à¸£à¸‚à¸™à¸ªà¹ˆà¸‡', 'SzÃ¡llÃ­tÃ¡si dÃ­j', 'Transportkosten', 'pretium onerariam', 'Biaya transportasi', 'TaÅŸÄ±ma Ã¼creti', 'Î¤Î­Î»Î· ÎœÎµÏ„Î±Ï†Î¿ÏÎ¬Ï‚', 'Ù‡Ø²ÛŒÙ†Ù‡ Ø­Ù…Ù„ ÙˆÙ†Ù‚Ù„', 'Yuran Pengangkutan', 'à°°à°µà°¾à°£à°¾ à°°à±à°¸à±à°®à±', 'à®ªà¯‹à®•à¯à®•à¯à®µà®°à®¤à¯à®¤à¯ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àªŸà«àª°àª¾àª¨à«àª¸àªªà«‹àª°à«àªŸ àª«à«€', 'OpÅ‚ata transportowa', 'Ð¢Ñ€Ð°Ð½ÑÐ¿Ð¾Ñ€Ñ‚Ð½Ð° Ð¿Ð»Ð°Ñ‚Ð°', 'à¨Ÿà¨°à¨¾à¨‚à¨¸à¨ªà©‹à¨°à¨Ÿ à¨«à©€à¨¸', 'TaxÄƒ de transport', 'á€•á€­á€¯á€·á€†á€±á€¬á€„á€ºá€›á€±á€¸á€€á€¼á€±á€¸', 'Awá»n owo á»ká» irin-ajo', 'Kudin sufuri', NULL, NULL),
(704, 'certificate_fee', 'Certificate Fee', 'à¦¸à¦¾à¦°à§à¦Ÿà¦¿à¦«à¦¿à¦•à§‡à¦Ÿ à¦«à¦¿', 'Cuota de certificado', 'Ø±Ø³ÙˆÙ… Ø§Ù„Ø´Ù‡Ø§Ø¯Ø©', 'à¤ªà¥à¤°à¤®à¤¾à¤£à¤ªà¤¤à¥à¤° à¤¶à¥à¤²à¥à¤•', 'Ø³Ø±Ù¹ÛŒÙÚ©ÛŒÙ¹ ÙÛŒØ³', 'è¯ä¹¦è´¹ç”¨', 'è¨¼æ˜Žæ›¸æ–™é‡‘', 'Taxa de certificado', 'ÐŸÐ»Ð°Ñ‚Ð° Ð·Ð° ÑÐµÑ€Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚', 'Frais de certificat', 'ìˆ˜ë£Œì¦', 'ZertifikatgebÃ¼hr', 'Tassa di certificazione', 'à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸à¸²à¸£à¸£à¸±à¸šà¸£à¸­à¸‡', 'TanÃºsÃ­tvÃ¡nydÃ­j', 'Certificaatkosten', 'pretium certificatorium', 'Biaya Sertifikat', 'Sertifika Ãœcreti', 'Î‘Î¼Î¿Î¹Î²Î® Ï€Î¹ÏƒÏ„Î¿Ï€Î¿Î¹Î·Ï„Î¹ÎºÎ¿Ï', 'Ù‡Ø²ÛŒÙ†Ù‡ Ú¯ÙˆØ§Ù‡ÛŒÙ†Ø§Ù…Ù‡', 'Yuran Sijil', 'à°¸à°°à±à°Ÿà°¿à°«à°¿à°•à±†à°Ÿà± à°«à±€à°œà±', 'à®šà®¾à®©à¯à®±à®¿à®¤à®´à¯ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àªªà«àª°àª®àª¾àª£àªªàª¤à«àª° àª«à«€', 'OpÅ‚ata za certyfikat', 'Ð¡Ð²Ñ–Ð´Ð¾Ñ†Ñ‚Ð²Ð°', 'à¨¸à¨°à¨Ÿà©€à¨«à¨¿à¨•à©‡à¨Ÿ à¨«à©€à¨¸', 'TaxÄƒ de certificat', 'á€œá€€á€ºá€™á€¾á€á€ºá€', 'Ijáº¹risi iwe-áº¹ri', 'Takardar shaidar', NULL, NULL),
(705, 'exam_fee', 'Exam Fee', 'à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦«à¦¿', 'Tasa de examen', 'Ø±Ø³ÙˆÙ… Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†', 'à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤¶à¥à¤²à¥à¤•', 'Ø§Ù…ØªØ­Ø§Ù† ÙÛŒØ³', 'è€ƒè¯•è´¹ç”¨', 'è©¦é¨“è²»ç”¨', 'Taxa de exame', 'ÐŸÐ»Ð°Ñ‚Ð° Ð·Ð° ÑÐºÐ·Ð°Ð¼ÐµÐ½', 'Frais dexamen', 'ì‹œí—˜ ë¹„ìš©', 'PrÃ¼fungsgebÃ¼hr', 'Tassa desame', 'à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸à¸²à¸£à¸ªà¸­à¸š', 'Vizsga dÃ­j', 'Examengeld', 'nito pretium', 'Biaya Ujian', 'SÄ±nav Ãœcreti', 'Î¤Î­Î»Î¿Ï‚ ÎµÎ¾Î­Ï„Î±ÏƒÎ·Ï‚', 'Ù‡Ø²ÛŒÙ†Ù‡ Ø¢Ø²Ù…ÙˆÙ†', 'Yuran Peperiksaan', 'à°ªà°°à±€à°•à±à°· à°°à±à°¸à±à°®à±', 'à®¤à¯‡à®°à¯à®µà¯ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àªªàª°à«€àª•à«àª·àª¾ àª«à«€', 'OpÅ‚ata egzaminacyjna', 'Ð†ÑÐ¿Ð¸Ñ‚', 'à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨«à©€à¨¸', 'Exam TaxÄƒ', 'á€…á€¬á€™á€±á€¸á€•á€½á€²á€€á€¼á€±á€¸', 'Iye owowowo', 'Binciken Binciken', NULL, NULL),
(706, 'monthly_fee', 'Monthly Tution Fee', 'à¦®à¦¾à¦¸à¦¿à¦• à¦Ÿà¦¿à¦‰à¦¶à¦¨ à¦«à¦¿', 'Cuota de matrÃ­cula mensual', 'Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ø¯Ø±Ø§Ø³ÙŠØ© Ø§Ù„Ø´Ù‡Ø±ÙŠØ©', 'à¤®à¤¾à¤¸à¤¿à¤• à¤¶à¤¿à¤•à¥à¤·à¤£ à¤¶à¥à¤²à¥à¤•', 'Ù…Ø§ÛØ§Ù†Û Ù¹ÛŒÙˆØ´Ù† ÙÛŒØ³', 'æ¯æœˆå­¦è´¹', 'æœˆé¡æŽˆæ¥­æ–™', 'Mensalidade Mensal', 'Ð•Ð¶ÐµÐ¼ÐµÑÑÑ‡Ð½Ð°Ñ Ð¿Ð»Ð°Ñ‚Ð° Ð·Ð° Ð¾Ð±ÑƒÑ‡ÐµÐ½Ð¸Ðµ', 'Frais de scolaritÃ© mensuels', 'ì›” ìˆ˜ì—…ë£Œ', 'Monatliche StudiengebÃ¼hr', 'Quota di iscrizione mensile', 'à¸„à¹ˆà¸²à¹€à¸¥à¹ˆà¸²à¹€à¸£à¸µà¸¢à¸™à¸£à¸²à¸¢à¹€à¸”à¸·à¸­à¸™', 'Havi tandÃ­j', 'Maandelijks collegegeld', 'Menstrua feodo DISCIPLINA', 'Biaya Kuliah Bulanan', 'AylÄ±k Ã–ÄŸrenim Ãœcreti', 'ÎœÎ·Î½Î¹Î±Î¯Î¿ Ï„Î­Î»Î¿Ï‚ Ï†Î¿Î¯Ï„Î·ÏƒÎ·Ï‚', 'Ù‡Ø²ÛŒÙ†Ù‡ ØªØ­ØµÛŒÙ„ Ù…Ø§Ù‡Ø§Ù†Ù‡', 'Yuran Tuisyen Bulanan', 'à°®à°‚à°¤à±à°²à±€ à°Ÿà±à°¯à±‚à°·à°¨à± à°«à±€à°œà±', 'à®®à®¾à®¤à®¾à®¨à¯à®¤à®¿à®° à®•à®Ÿà¯à®Ÿà®£à®®à¯ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àª®àª¾àª¸àª¿àª• àªŸàª¯à«àª¶àª¨ àª«à«€', 'OpÅ‚ata miesiÄ™czna za naukÄ™', 'Ð©Ð¾Ð¼Ñ–ÑÑÑ‡Ð½Ð° Ð¿Ð»Ð°Ñ‚Ð° Ð·Ð° Ð½Ð°Ð²Ñ‡Ð°Ð½Ð½Ñ', 'à¨®à¨¹à©€à¨¨à¨¾à¨µà¨¾à¨° à¨Ÿà¨¿à¨Šà¨¸à¨¼à¨¨ à¨«à©€à¨¸', 'TaxÄƒ lunarÄƒ de È™colarizare', 'á€œá€…á€‰á€ºá€€á€»á€°á€›á€¾á€„á€ºá€€á€¼á€±á€¸', 'Awá»n owo Ikáº¹ká» Oá¹£ooá¹£u Oá¹£ooá¹£u', 'Biyan ku] a] e na watanni', NULL, NULL),
(707, 'about', 'About', 'à¦à¦¬à¦¾à¦‰à¦Ÿ', 'Acerca de', 'Ø­ÙˆÙ„', 'à¤•à¥‡ à¤¬à¤¾à¤°à¥‡ à¤®à¥‡à¤‚', 'Ú©Û’ Ø¨Ø§Ø±Û’ Ù…ÛŒÚº', 'å…³äºŽ', 'ç´„', 'Sobre', 'ÐžÐºÐ¾Ð»Ð¾', 'Sur', 'ì•½', 'Ãœber', 'Di', 'à¹€à¸à¸µà¹ˆà¸¢à¸§à¸à¸±à¸š', 'RÃ³l rÅ‘l', 'Over', 'circa', 'Tentang', 'hakkÄ±nda', 'Î£Ï‡ÎµÏ„Î¹ÎºÎ¬ Î¼Îµ', 'Ø¯Ø± Ø¨Ø§Ø±Ù‡', 'Mengenai', 'à°—à±à°°à°¿à°‚à°šà°¿', 'à®ªà®±à¯à®±à®¿', 'àªµàª¿àª¶à«‡', 'O', 'ÐŸÑ€Ð¾', 'à¨‡à¨¸ à¨¬à¨¾à¨°à©‡', 'Despre', 'á€¡á€€á€½á€±á€¬á€„á€»á€¸', 'Nipa', 'Game da', NULL, NULL),
(708, 'social_link', 'Social Link', 'à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦• à¦²à¦¿à¦‚à¦•', 'VÃ­nculo social', 'ÙˆØµÙ„Ø© Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠØ©', 'à¤¸à¤¾à¤®à¤¾à¤œà¤¿à¤• à¤²à¤¿à¤‚à¤•', 'Ø³ÙˆØ´Ù„ Ù„Ù†Ú©', 'ç¤¾äº¤é“¾æŽ¥', 'ã‚½ãƒ¼ã‚·ãƒ£ãƒ«ãƒªãƒ³ã‚¯', 'Link social', 'Ð¡Ð¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð°Ñ ÑÐ²ÑÐ·ÑŒ', 'Lien social', 'ì†Œì…œ ë§í¬', 'Soziale Verbindung', 'Collegamento sociale', 'Social Link', 'KÃ¶zÃ¶ssÃ©gi link', 'Sociale link', 'Social Link', 'Jaringan sosial', 'Sosyal link', 'ÎšÎ¿Î¹Î½Ï‰Î½Î¹ÎºÎ® ÏƒÏÎ½Î´ÎµÏƒÎ·', 'Ù¾ÛŒÙˆÙ†Ø¯ Ø§Ø¬ØªÙ…Ø§Ø¹ÛŒ', 'Pautan Sosial', 'à°¸à°¾à°®à°¾à°œà°¿à°• à°²à°¿à°‚à°•à±', 'à®šà®®à¯‚à®• à®‡à®£à¯ˆà®ªà¯à®ªà¯', 'àª¸àª¾àª®àª¾àªœàª¿àª• àª²àª¿àª‚àª•', 'Link spoÅ‚ecznoÅ›ciowy', 'Ð¡Ð¾Ñ†Ñ–Ð°Ð»ÑŒÐ½Ð° ÐŸÐ¾ÑÐ¸Ð»Ð°Ð½Ð½Ñ', 'à¨¸à©‹à¨¸à¨¼à¨² à¨²à¨¿à©°à¨•', 'LegÄƒturÄƒ socialÄƒ', 'á€œá€°á€™á€¾á€¯ Link á€€á€­á€¯', 'Asopá» Awujá»', 'Æ˜ungiyar Jiki', NULL, NULL),
(709, 'get_in_touch', 'Get in Touch', 'à¦¸à§à¦ªà¦°à§à¦¶ à¦•à¦°à§à¦¨', 'Estar en contacto', 'Ø§Ø¨Ù‚Ù‰ Ø¹Ù„Ù‰ ØªÙˆØ§ØµÙ„', 'à¤¸à¤‚à¤ªà¤°à¥à¤• à¤®à¥‡à¤‚ à¤°à¤¹à¥‹', 'Ø±Ø§Ø¨Ø·Û’ Ù…ÛŒÚº Ø±ÛÙ†Ø§', 'ä¿æŒè”ç³»', 'é€£çµ¡ã™ã‚‹', 'Entrar em contato', 'Ð¡Ð²ÑÐ·Ð°Ñ‚ÑŒÑÑ', 'Entrer en contact', 'ì—°ë½í•˜ê¸°', 'In Kontakt kommen', 'Mettiti in contatto', 'à¹„à¸”à¹‰à¸£à¸±à¸šà¸à¸²à¸£à¸•à¸´à¸”à¸•à¹ˆà¸­', 'Felveszi a kapcsolatot', 'Neem contact op', 'Get in Touch', 'Berhubungan', 'Temasta olmak', 'Î•ÏÏ‡Î¿Î¼Î±Î¹ ÏƒÎµ ÎµÏ€Î±Ï†Î®', 'Ø¯Ø± ØªÙ…Ø§Ø³ Ø¨ÙˆØ¯Ù†', 'Dapatkan Sentuhan', 'à°…à°‚à°¦à±à°¬à°¾à°Ÿà±à°²à±‹ à°‰à°‚à°¡à±', 'à®¤à¯†à®¾à®Ÿà®°à¯à®ªà®¿à®²à¯ à®‡à®°à¯à®™à¯à®•à®³à¯', 'àª¸àª‚àªªàª°à«àª•àª®àª¾àª‚ àª°àª¹à«‡àªµàª¾', 'BÄ…dÅº w kontakcie', 'Ð‘ÑƒÐ´ÐµÐ¼Ð¾ Ð½Ð° Ð·Ð²ÑÐ·ÐºÑƒ', 'à¨¸à©°à¨ªà¨°à¨• à¨µà¨¿à©±à¨š à¨°à¨¹à©‡', 'IntraÈ›i Ã®n contact', 'Touch á€€á€­á€¯á€¡á€á€½á€€á€º Get', 'Gba ni Fá»wá»kan', 'Samun shiga', NULL, NULL),
(710, 'staff', 'Staff', 'à¦•à¦°à§à¦®à§€', 'Personal', 'Ø§Ù„Ø¹Ø§Ù…Ù„ÙŠÙ†', 'à¤•à¤°à¥à¤®à¤šà¤¾à¤°à¥€', 'Ø§Ø³Ù¹Ø§Ù', 'å‘˜å·¥', 'ã‚¹ã‚¿ãƒƒãƒ•', 'FuncionÃ¡rios', 'Ð¡Ð¾Ñ‚Ñ€ÑƒÐ´Ð½Ð¸ÐºÐ¸', 'Personnel', 'ì§ì›', 'Mitarbeiter', 'Personale', 'à¸šà¸¸à¸„à¸¥à¸²à¸à¸£', 'SzemÃ©lyzet', 'Personeel', 'Staff', 'Staf', 'Personel', 'Î ÏÎ¿ÏƒÏ‰Ï€Î¹ÎºÏŒ', 'Ú©Ø§Ø±Ú©Ù†Ø§Ù†', 'Kakitangan', 'à°¸à±à°Ÿà°¾à°«à±', 'à®Šà®´à®¿à®¯à®°à¯à®•à®³à¯', 'àª¸à«àªŸàª¾àª«', 'Personel', 'ÐŸÐµÑ€ÑÐ¾Ð½Ð°Ð»', 'à¨¸à¨Ÿà¨¾à¨«à¨¼', 'Personal', 'á€á€”á€ºá€‘á€™á€ºá€¸', 'Oá¹£iá¹£áº¹', 'Maaikata', NULL, NULL),
(711, 'contact_us', 'Contact Us', 'à¦†à¦®à¦¾à¦¦à§‡à¦° à¦¸à¦¾à¦¥à§‡ à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦— à¦•à¦°à§à¦¨', 'ContÃ¡ctenos', 'Ø§ØªØµÙ„ Ø¨Ù†Ø§', 'à¤¹à¤®à¤¸à¥‡ à¤¸à¤‚à¤ªà¤°à¥à¤• à¤•à¤°à¥‡à¤‚', 'ÛÙ… Ø³Û’ Ø±Ø§Ø¨Ø·Û Ú©Ø±ÛŒÚº', 'è”ç³»æˆ‘ä»¬', 'ãŠå•ã„åˆã‚ã›', 'Contate-Nos', 'Ð¡Ð²ÑÐ¶Ð¸Ñ‚ÐµÑÑŒ Ñ Ð½Ð°Ð¼Ð¸', 'Contactez nous', 'ì—°ë½ì²˜', 'Kontaktiere uns', 'Contattaci', 'à¸•à¸´à¸”à¸•à¹ˆà¸­à¹€à¸£à¸²', 'LÃ©pjen kapcsolatba velÃ¼nk', 'Neem contact met ons op', 'Nobis loquere', 'Hubungi kami', 'Bizimle iletiÅŸime geÃ§in', 'Î•Ï€Î¹ÎºÎ¿Î¹Î½Ï‰Î½Î®ÏƒÏ„Îµ Î¼Î±Î¶Î¯ Î¼Î±Ï‚', 'ØªÙ…Ø§Ø³ Ø¨Ø§ Ù…Ø§', 'Hubungi Kami', 'à°®à°®à±à°®à°²à±à°¨à°¿ à°¸à°‚à°ªà±à°°à°¦à°¿à°‚à°šà°‚à°¡à°¿', 'à®Žà®™à¯à®•à®³à¯ˆ à®¤à¯†à®¾à®Ÿà®°à¯à®ªà¯ à®•à¯†à®¾à®³à¯à®³', 'àª…àª®àª¾àª°à«‹ àª¸àª‚àªªàª°à«àª• àª•àª°à«‹', 'Skontaktuj siÄ™ z nami', 'Ð—Ð²ÑÐ¶Ñ–Ñ‚ÑŒÑÑ Ð· Ð½Ð°Ð¼Ð¸', 'à¨¸à¨¾à¨¡à©‡ à¨¨à¨¾à¨² à¨¸à©°à¨ªà¨°à¨• à¨•à¨°à©‹', 'Contacteaza-ne', 'á€€á€¼á€¾á€”á€»á€¯á€•á€»á€á€­á€¯á€·á€€á€­á€¯á€†á€€á€»á€žá€¾á€šá€»á€›á€”á€»', 'Pe wa', 'TuntuÉ“i Mu', NULL, NULL),
(712, 'comment', 'Comment', 'à¦®à¦¨à§à¦¤à¦¬à§à¦¯', 'Comentario', 'ØªØ¹Ù„ÙŠÙ‚', 'à¤Ÿà¤¿à¤ªà¥à¤ªà¤£à¥€', 'ØªØ¨ØµØ±Û', 'è¯„è®º', 'ã‚³ãƒ¡ãƒ³ãƒˆ', 'Comente', 'ÐšÐ¾Ð¼Ð¼ÐµÐ½Ñ‚Ð°Ñ€Ð¸Ð¹', 'Commentaire', 'ë…¼í‰', 'Kommentar', 'Commento', 'à¸„à¸´à¸”à¹€à¸«à¹‡à¸™', 'MegjegyzÃ©s', 'Commentaar', 'comment', 'Komentar', 'Yorum Yap', 'Î£Ï‡ÏŒÎ»Î¹Î¿', 'Ø§Ø¸Ù‡Ø§Ø± Ù†Ø¸Ø±', 'Komen', 'à°µà±à°¯à°¾à°–à±à°¯', 'à®•à®°à¯à®¤à¯à®¤à¯', 'àªŸàª¿àªªà«àªªàª£à«€ àª•àª°à«‹', 'Komentarz', 'ÐšÐ¾Ð¼ÐµÐ½Ñ‚Ð°Ñ€', 'à¨Ÿà¨¿à©±à¨ªà¨£à©€', 'cometariu', 'á€™á€¾á€á€ºá€á€»á€€á€º', 'á»Œrá»Ã¬wÃ²ye', 'Sharhi', NULL, NULL),
(713, 'read_more', 'Read More', 'à¦†à¦°à¦“ à¦ªà¦¡à¦¼à§à¦¨', 'Lee mas', 'Ø§Ù‚Ø±Ø£ Ø£ÙƒØ«Ø±', 'à¤”à¤° à¤ªà¤¢à¥‹', 'Ù…Ø²ÛŒØ¯ Ù¾Ú‘Ú¾', 'é˜…è¯»æ›´å¤š', 'ç¶šãã‚’èª­ã‚€', 'consulte Mais informaÃ§Ã£o', 'ÐŸÑ€Ð¾Ñ‡Ð¸Ñ‚Ð°Ð¹Ñ‚Ðµ Ð±Ð¾Ð»ÑŒÑˆÐµ', 'Lire la suite', 'ë” ì½ê¸°', 'Weiterlesen', 'Leggi di piÃ¹', 'à¸­à¹ˆà¸²à¸™à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸•à¸´à¸¡', 'Olvass tovÃ¡bb', 'Lees verder', 'Lege plus', 'Baca lebih banyak', 'Daha fazla oku', 'Î”Î¹Î±Î²Î¬ÏƒÏ„Îµ Ï€ÎµÏÎ¹ÏƒÏƒÏŒÏ„ÎµÏÎ±', 'Ø§Ø¯Ø§Ù…Ù‡ Ù…Ø·Ù„Ø¨', 'Baca Lebih Lanjut', 'à°‡à°‚à°•à°¾ à°šà°¦à°µà°‚à°¡à°¿', 'à®®à¯‡à®²à¯à®®à¯ à®µà®¾à®šà®¿à®•à¯à®•', 'àªµàª§à« àªµàª¾àª‚àªšà«‹', 'Czytaj wiÄ™cej', 'Ð§Ð¸Ñ‚Ð°Ñ‚Ð¸ Ð´Ð°Ð»Ñ–', 'à¨¹à©‹à¨° à¨ªà©œà©à¨¹à©‹', 'Citeste mai mult', 'á€†á€€á€ºá€–á€á€ºá€›á€”á€º', 'Ka siwaju', 'Kara karantawa', NULL, NULL),
(714, 'terms_and_condition', 'Terms & Condition', 'à¦¬à¦¿à¦§à¦¿ - à¦¨à¦¿à¦·à§‡à¦§ à¦à¦¬à¦‚ à¦¶à¦°à§à¦¤à¦¾à¦¬à¦²à§€', 'TÃ©rminos y Condiciones', 'Ø§Ù„Ø´Ø±ÙˆØ· ÙˆØ§Ù„Ø£Ø­ÙƒØ§Ù…', 'à¤¨à¤¿à¤¯à¤® à¤µ à¤¶à¤°à¥à¤¤', 'Ø´Ø±Ø§Ø¦Ø· Ø§ÙˆØ± Ø­Ø§Ù„Øª', 'æ¡æ¬¾ä¸Žåè®®', 'åˆ©ç”¨è¦ç´„', 'Termos e CondiÃ§Ãµes', 'Ð£ÑÐ»Ð¾Ð²Ð¸Ñ Ð¸ ÑƒÑÐ»Ð¾Ð²Ð¸Ñ', 'Termes et conditions', 'ì•½ê´€ ë° ì¡°ê±´', 'Allgemeine GeschÃ¤ftsbedingungen', 'Termini e condizioni', 'à¸‚à¹‰à¸­à¸•à¸à¸¥à¸‡à¹à¸¥à¸°à¹€à¸‡à¸·à¹ˆà¸­à¸™à¹„à¸‚', 'FelhasznÃ¡lÃ¡si feltÃ©telek', 'Regels en voorwaarden', 'Terms & Condition', 'Syarat & Ketentuan', 'Åžartlar ve koÅŸullar', 'ÎŒÏÎ¿Î¹ & Î ÏÎ¿Ï‹Ï€Î¿Î¸Î­ÏƒÎµÎ¹Ï‚', 'Ø´Ø±Ø§ÛŒØ· Ùˆ Ø¶ÙˆØ§Ø¨Ø·', 'Terma dan syarat', 'à°¨à°¿à°¯à°®à°¾à°²à± & à°¨à°¿à°¬à°‚à°§à°¨', 'à®µà®¿à®¤à®¿à®®à¯à®±à¯ˆà®•à®³à¯ & à®¨à®¿à®ªà®¨à¯à®¤à®©à¯ˆ', 'àª¶àª°àª¤à«‹ àª…àª¨à«‡ àª¸à«àª¥àª¿àª¤àª¿', 'Zasady i warunki', 'Ð£Ð¼Ð¾Ð²Ð¸ Ñ‚Ð° ÑƒÐ¼Ð¾Ð²Ð¸', 'à¨¸à¨¼à¨°à¨¤à¨¾à¨‚ à¨…à¨¤à©‡ à¨¸à¨¼à¨°à¨¤à¨¾à¨‚', 'Termeni si conditii', 'á€…á€Šá€ºá€¸á€™á€»á€‰á€ºá€¸á€…á€Šá€ºá€¸á€€á€™á€ºá€¸á€™á€»á€¬á€¸ & á€¡á€á€¼á€±á€¡á€”á€±', 'Awá»n ofin & IpÃ²', 'Terms & Yanayin', NULL, NULL),
(715, 'privacy_policy', 'Privacy Policy', 'à¦—à§‹à¦ªà¦¨à§€à¦¯à¦¼à¦¤à¦¾ à¦¨à§€à¦¤à¦¿', 'PolÃ­tica de privacidad', 'Ø³ÙŠØ§Ø³Ø© Ø§Ù„Ø®ØµÙˆØµÙŠØ©', 'à¤—à¥‹à¤ªà¤¨à¥€à¤¯à¤¤à¤¾ à¤¨à¥€à¤¤à¤¿', 'Ù¾Ø±Ø§Ø¦ÛŒÙˆÛŒØ³ÛŒ Ù¾Ø§Ù„ÛŒØ³ÛŒ', 'éšç§æ”¿ç­–', 'å€‹äººæƒ…å ±ä¿è­·æ–¹é‡', 'PolÃ­tica de Privacidade', 'Ð¿Ð¾Ð»Ð¸Ñ‚Ð¸ÐºÐ° ÐºÐ¾Ð½Ñ„Ð¸Ð´ÐµÐ½Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾ÑÑ‚Ð¸', 'Politique de confidentialitÃ©', 'ê°œì¸ ì •ë³´ ì •ì±…', 'Datenschutz-Bestimmungen', 'politica sulla riservatezza', 'à¸™à¹‚à¸¢à¸šà¸²à¸¢à¸ªà¹ˆà¸§à¸™à¸šà¸¸à¸„à¸„à¸¥', 'AdatvÃ©delmi irÃ¡nyelvek', 'Privacybeleid', 'Privacy policy', 'Kebijakan pribadi', 'Gizlilik PolitikasÄ±', 'Î Î¿Î»Î¹Ï„Î¹ÎºÎ® Î‘Ï€Î¿ÏÏÎ®Ï„Î¿Ï…', 'Ø³ÛŒØ§Ø³Øª Ø­ÙØ¸ Ø­Ø±ÛŒÙ… Ø®ØµÙˆØµÛŒ', 'Dasar Privasi', 'à°—à±‹à°ªà±à°¯à°¤à°¾ à°µà°¿à°§à°¾à°¨à°‚', 'à®¤à®©à®¿à®¯à¯à®°à®¿à®®à¯ˆ à®•à¯Šà®³à¯à®•à¯ˆ', 'àª—à«‹àªªàª¨à«€àª¯àª¤àª¾ àª¨à«€àª¤àª¿', 'Polityka prywatnoÅ›ci', 'ÐŸÐ¾Ð»Ñ–Ñ‚Ð¸ÐºÐ° ÐºÐ¾Ð½Ñ„Ñ–Ð´ÐµÐ½Ñ†Ñ–Ð¹Ð½Ð¾ÑÑ‚Ñ–', 'à¨ªà¨°à¨¾à¨ˆà¨µà©‡à¨Ÿ à¨¨à©€à¨¤à©€', 'Politica de confidentialitate', 'á€€á€­á€¯á€šá€ºá€›á€±á€¸á€¡á€á€»á€€á€ºá€¡á€œá€€á€ºá€™á€°á€á€«á€’', 'ÃŒpamá» Afihan', 'takardar kebantawa', NULL, NULL),
(716, 'event_info', 'Event Info', 'à¦‡à¦­à§‡à¦¨à§à¦Ÿ à¦¤à¦¥à§à¦¯', 'InformaciÃ³n del evento', 'Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø­Ø¯Ø«', 'à¤ˆà¤µà¥‡à¤‚à¤Ÿ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€', 'ÙˆØ§Ù‚Ø¹Û Ú©ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª', 'æ´»åŠ¨ä¿¡æ¯', 'ã‚¤ãƒ™ãƒ³ãƒˆæƒ…å ±', 'InformaÃ§Ã£o do Evento', 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ ÑÐ¾Ð±Ñ‹Ñ‚Ð¸Ð¸', 'Informations sur lÃ©vÃ©nement', 'ì´ë²¤íŠ¸ ì •ë³´', 'Ereignisinformationen', 'Informazioni sullevento', 'à¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¹€à¸«à¸•à¸¸à¸à¸²à¸£à¸“à¹Œ', 'EsemÃ©ny informÃ¡ciÃ³', 'Evenement info', 'res Info', 'Info Acara', 'Etkinlik Bilgisi', 'Î Î»Î·ÏÎ¿Ï†Î¿ÏÎ¯ÎµÏ‚ ÎµÎºÎ´Î®Î»Ï‰ÏƒÎ·Ï‚', 'Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø±ÙˆÛŒØ¯Ø§Ø¯', 'Maklumat Acara', 'à°ˆà°µà±†à°‚à°Ÿà± à°¸à°®à°¾à°šà°¾à°°à°‚', 'à®¨à®¿à®•à®´à¯à®µà¯ à®¤à®•à®µà®²à¯', 'àª‡àªµà«‡àª¨à«àªŸ àª®àª¾àª¹àª¿àª¤à«€', 'Informacje o wydarzeniu', 'Ð†Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ñ–Ñ Ð¿Ñ€Ð¾ Ð¿Ð¾Ð´Ñ–Ñ—', 'à¨‡à¨µà©ˆà¨‚à¨Ÿ à¨œà¨¾à¨£à¨•à¨¾à¨°à©€', 'InformaÈ›ii despre eveniment', 'á€¡á€–á€¼á€…á€ºá€¡á€•á€»á€€á€ºá€¡á€„á€ºá€–á€­á€¯', 'Alaye ti oyan', 'Bayanin Event', NULL, NULL),
(717, 'admission_form', 'Admission Form', 'à¦­à¦°à§à¦¤à¦¿à¦° à¦«à¦°à§à¦®', 'Formulario de admisiÃ³n', 'Ø´ÙƒÙ„ Ø§Ù„Ù‚Ø¨ÙˆÙ„', 'à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤«à¤¾à¤°à¥à¤®', 'Ø¯Ø§Ø®Ù„Û ÙØ§Ø±Ù…', 'å…¥åœºè¡¨æ ¼', 'å…¥å­¦å¼', 'FormulÃ¡rio de admissÃ£o', 'Ð¤Ð¾Ñ€Ð¼Ð° Ð¿Ñ€Ð¸ÐµÐ¼Ð°', 'Formulaire dadmission', 'ìž…í•™ í—ˆê°€ì„œ', 'Aufnahmeformular', 'Modulo di ammissione', 'à¹à¸šà¸šà¸Ÿà¸­à¸£à¹Œà¸¡à¹€à¸‚à¹‰à¸²à¸¨à¸¶à¸à¸©à¸²', 'FelvÃ©teli Å±rlap', 'Toelatingsformulier', 'Admission Form', 'Formulir Pendaftaran', 'Kabul formu', 'ÎˆÎ½Ï„Ï…Ï€Î¿ Î•Î¹ÏƒÎ±Î³Ï‰Î³Î®Ï‚', 'ÙØ±Ù… Ù¾Ø°ÛŒØ±Ø´', 'Borang Kemasukan', 'à°…à°¡à±à°®à°¿à°·à°¨à± à°«à°¾à°°à°‚', 'à®šà¯‡à®°à¯à®•à¯à®•à¯ˆ à®ªà®Ÿà®¿à®µà®®à¯', 'àªªà«àª°àªµà«‡àª¶ àª«à«‹àª°à«àª®', 'Formularz przyjÄ™cia', 'Ð¤Ð¾Ñ€Ð¼Ð° Ð¿Ñ€Ð¸Ð¹Ð¾Ð¼Ñƒ', 'à¨¦à¨¾à¨–à¨¼à¨²à¨¾ à¨«à¨¾à¨°à¨®', 'Formular de admitere', 'á€á€”á€ºá€á€¶á€á€»á€€á€º Form á€€á€­á€¯', 'Fá»á»mu Gbigba', 'Takardar izinin shiga', NULL, NULL),
(718, 'home', 'Home', 'à¦¹à§‹à¦®', 'Casa', ' Ø§Ù„ØµÙØ­Ø© Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠØ©', 'à¤¹à¥‹à¤®', 'Ú¯Ú¾Ø±', 'å®¶', 'ãƒ›ãƒ¼ãƒ ', 'Casa', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', 'Accueil', 'ì§‘', 'Zuhause', 'Casa', 'à¸šà¹‰à¸²à¸™', 'itthon', 'Huis', 'domum', 'Rumah', 'Ev', 'Î£Ï€Î¯Ï„Î¹', 'Ø®Ø§Ù†Ù‡', 'Rumah', 'à°¹à±‹à°®à±', 'à®®à¯à®•à®ªà¯à®ªà¯', 'àª¹à«‹àª®', 'Dom', 'Ð‘ÑƒÐ´Ð¸Ð½Ð¾Ðº', 'à¨˜à¨°', 'AcasÄƒ', 'á€”á€±á€¡á€­á€™á€º', 'Ile', 'Home', NULL, NULL),
(719, 'previous', 'Previous', 'à¦ªà§‚à¦°à§à¦¬à¦¬à¦°à§à¦¤à§€', 'Anterior', 'Ø³Ø§Ø¨Ù‚', 'à¤ªà¤¿à¤›à¤²à¤¾', 'Ù¾Ú†Ú¾Ù„Ø§', 'ä»¥å‰', 'å‰', 'Anterior', 'Ð¿Ñ€ÐµÐ´Ñ‹Ð´ÑƒÑ‰Ð¸Ð¹', 'prÃ©cÃ©dent', 'ë„ˆë¬´ ì´ë¥¸', 'Bisherige', 'Precedente', 'à¸à¹ˆà¸­à¸™', 'ElÅ‘zÅ‘', 'voorgaand', 'priorem', 'Sebelumnya', 'Ã–nceki', 'Î ÏÎ¿Î·Î³Î¿ÏÎ¼ÎµÎ½Î¿Ï‚', 'Ù‚Ø¨Ù„ÛŒ', 'Sebelum ini', 'à°®à±à°¨à±à°ªà°Ÿà°¿', 'à®®à¯à®¨à¯à®¤à¯ˆà®¯', 'àª…àª—àª¾àª‰àª¨àª¾', 'Poprzedni', 'ÐŸÐ¾Ð¿ÐµÑ€ÐµÐ´Ð½Ñ–Ð¹', 'à¨ªà¨¿à¨›à¨²à¨¾', 'Anterior', 'á€œá€½á€”á€ºá€á€²á€·á€žá€±á€¬', 'Táº¹láº¹', 'A baya', NULL, NULL),
(720, 'last_name', 'Last Name', 'à¦¨à¦¾à¦®à§‡à¦° à¦¶à§‡à¦·à¦¾à¦‚à¦¶', 'Apellido', 'Ø§Ù„ÙƒÙ†ÙŠØ©', 'à¤…à¤‚à¤¤à¤¿à¤® à¤¨à¤¾à¤®', 'Ø¢Ø®Ø±ÛŒ Ù†Ø§Ù…', 'å§“ ', 'è‹—å­—', 'Ãšltimo nome', 'Ð¤Ð°Ð¼Ð¸Ð»Ð¸Ñ', 'Nom de famille', 'ì„±', 'Familienname, Nachname', 'Cognome', 'à¸™à¸²à¸¡à¸ªà¸à¸¸à¸¥', 'VezetÃ©knÃ©v', 'Achternaam', 'Cognomen', 'Nama keluarga', 'SoyadÄ±', 'Î•Ï€Î¯Î¸ÎµÏ„Î¿', 'Ù†Ø§Ù… Ø®Ø§Ù†ÙˆØ§Ø¯Ú¯ÛŒ', 'Nama terakhir', 'à°šà°¿à°µà°°à°¿ à°ªà±‡à°°à±', 'à®•à®Ÿà¯ˆà®šà®¿ à®ªà¯†à®¯à®°à¯', 'àª›à«‡àª²à«àª²à«àª‚ àª¨àª¾àª®', 'Nazwisko', 'ÐŸÑ€Ñ–Ð·Ð²Ð¸Ñ‰Ðµ', 'à¨†à¨–à¨°à©€ à¨¨à¨¾à¨‚à¨®', 'Numele de familie', 'á€™á€»á€­á€¯á€¸á€”á€½á€šá€ºá€¡á€™á€Šá€º', 'Oruko idile', 'Sunan mahaifa', NULL, NULL),
(721, 'school_fax', 'Fax', 'à¦«à§à¦¯à¦¾à¦•à§à¦¸', 'Fax', 'ÙØ§ÙƒØ³', 'à¤«à¥ˆà¤•à¥à¤¸', 'ÙÛŒÚ©Ø³', 'ä¼ çœŸ', 'ãƒ•ã‚¡ãƒƒã‚¯ã‚¹', 'Fax', 'Ñ„Ð°ÐºÑ', 'Fax', 'íŒ©ìŠ¤', 'Fax', 'Fax', 'à¹à¸Ÿà¸à¸‹à¹Œ', 'Fax', 'Fax', 'Fax', 'Fax', 'Faks', 'Î¦Î±Î¾', 'ÙÚ©Ø³', 'Faks', 'à°«à±à°¯à°¾à°•à±à°¸à±', 'à®¤à¯†à®¾à®²à¯ˆà®¨à®•à®²à¯', 'àª«à«‡àª•à«àª¸', 'Faks', 'Ð¤Ð°ÐºÑ', 'à¨«à©ˆà¨•à¨¸', 'Fax', 'á€–á€€á€ºá€…á€º', 'Faksi', 'Fax', NULL, NULL),
(722, 'admission', 'Admission', 'à¦­à¦°à§à¦¤à¦¿', 'AdmisiÃ³n', 'Ù‚Ø¨ÙˆÙ„', 'à¤¦à¤¾à¤–à¤¿à¤²à¤¾', 'Ø¯Ø§Ø®Ù„Û', 'å…¥åœº', 'å…¥å ´æ–™', 'AdmissÃ£o', 'Ð²Ñ…Ð¾Ð´', 'Admission', 'ìž…ìž¥', 'Eintritt', 'Ammissione', 'à¸à¸²à¸£à¸£à¸±à¸šà¹€à¸‚à¹‰à¸²', 'BelÃ©pÃ©s', 'Toelating', 'Praesent', 'Penerimaan', 'kabul', 'Î‘Î´ÎµÎ¹Î±', 'Ù¾Ø°ÛŒØ±Ø´', 'Kemasukan', 'à°…à°¡à±à°®à°¿à°·à°¨à±', 'à®šà¯‡à®°à¯à®•à¯à®•à¯ˆ', 'àªªà«àª°àªµà«‡àª¶', 'WstÄ™p', 'Ð’Ñ…Ñ–Ð´', 'à¨¦à¨¾à¨–à¨¼à¨²à¨¾', 'Admitere', 'á€á€„á€ºá€á€½á€„á€·á€ºá€•á€±á€¸á€á€¼á€„á€ºá€¸', 'Gbigba wá»le', 'Shiga', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(723, 'check_at_least_one', 'Please check at least one checkbox', 'à¦…à¦¨à§à¦¤à¦¤ à¦à¦•à¦Ÿà¦¿ à¦šà§‡à¦•à¦¬à¦•à§à¦¸ à¦šà§‡à¦• à¦•à¦°à§à¦¨ à¦¦à¦¯à¦¼à¦¾ à¦•à¦°à§‡', 'Por favor marque al menos una casilla', 'ÙŠØ±Ø¬Ù‰ Ø§Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ù…Ø±Ø¨Ø¹ Ø§Ø®ØªÙŠØ§Ø± ÙˆØ§Ø­Ø¯ Ø¹Ù„Ù‰ Ø§Ù„Ø£Ù‚Ù„', 'à¤•à¥ƒà¤ªà¤¯à¤¾ à¤•à¤® à¤¸à¥‡ à¤•à¤® à¤à¤• à¤šà¥‡à¤•à¤¬à¥‰à¤•à¥à¤¸ à¤•à¥‹ à¤šà¥‡à¤• à¤•à¤°à¥‡à¤‚', 'Ø¨Ø±Ø§Û Ú©Ø±Ù… Ú©Ù… Ø§Ø² Ú©Ù… Ø§ÛŒÚ© Ú†ÛŒÚ© Ø¨Ø§Ú©Ø³ Ú†ÛŒÚ© Ú©Ø±ÛŒÚº', 'è¯·è‡³å°‘æ£€æŸ¥ä¸€ä¸ªå¤é€‰æ¡†', 'å°‘ãªãã¨ã‚‚1ã¤ã®ãƒã‚§ãƒƒã‚¯ãƒœãƒƒã‚¯ã‚¹ã‚’ã‚ªãƒ³ã«ã—ã¦ãã ã•ã„', 'Por favor, marque pelo menos uma caixa de seleÃ§Ã£o', 'Ð£ÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚Ðµ Ñ…Ð¾Ñ‚Ñ Ð±Ñ‹ Ð¾Ð´Ð¸Ð½ Ñ„Ð»Ð°Ð¶Ð¾Ðº', 'Veuillez cocher au moins une case', 'í•˜ë‚˜ ì´ìƒì˜ í™•ì¸ëž€ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.', 'Bitte kreuzen Sie mindestens eine Checkbox an', 'Si prega di verificare almeno una casella di controllo', 'à¹‚à¸›à¸£à¸”à¹€à¸¥à¸·à¸­à¸à¸Šà¹ˆà¸­à¸‡à¸—à¸³à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢à¸­à¸¢à¹ˆà¸²à¸‡à¸™à¹‰à¸­à¸¢à¸«à¸™à¸¶à¹ˆà¸‡à¸£à¸²à¸¢à¸à¸²à¸£', 'KÃ©rjÃ¼k, ellenÅ‘rizze legalÃ¡bb egy jelÃ¶lÅ‘nÃ©gyzetet', 'Controleer minimaal Ã©Ã©n selectievakje', 'Please saltem reprehendo', 'Silakan periksa setidaknya satu kotak centang', 'LÃ¼tfen en az bir onay kutusunu iÅŸaretleyin', 'Î•Ï€Î¹Î»Î­Î¾Ï„Îµ Ï„Î¿Ï…Î»Î¬Ï‡Î¹ÏƒÏ„Î¿Î½ Î­Î½Î± Ï€Î»Î±Î¯ÏƒÎ¹Î¿ ÎµÎ»Î­Î³Ï‡Î¿Ï…', 'Ù„Ø·ÙØ§ Ø­Ø¯Ø§Ù‚Ù„ ÛŒÚ© Ú©Ø§Ø¯Ø± Ø±Ø§ Ø¨Ø±Ø±Ø³ÛŒ Ú©Ù†ÛŒØ¯', 'Sila semak sekurang-kurangnya satu kotak semak', 'à°¦à°¯à°šà±‡à°¸à°¿ à°•à°¨à±€à°¸à°‚ à°’à°• à°šà±†à°•à±à°¬à°¾à°•à±à°¸à±à°¨à± à°¤à°¨à°¿à°–à±€ à°šà±‡à°¯à°‚à°¡à°¿', 'à®•à¯à®±à¯ˆà®¨à¯à®¤à®¤à¯ à®’à®°à¯ à®ªà¯†à®Ÿà¯à®Ÿà®¿à®¯à¯ˆ à®šà®°à®¿à®ªà®¾à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àª•à«ƒàªªàª¾ àª•àª°à«€ àª“àª›àª¾àª®àª¾àª‚ àª“àª›à«àª‚ àªàª• àªšà«‡àª•àª¬à«‰àª•à«àª¸ àª¤àªªàª¾àª¸à«‹', 'Zaznacz co najmniej jedno pole wyboru', 'ÐŸÐµÑ€ÐµÐ²Ñ–Ñ€Ñ‚Ðµ Ñ…Ð¾Ñ‡Ð° Ð± Ð¾Ð´Ð½Ñƒ Ð¿Ñ€Ð°Ð¿Ð¾Ñ€ÐµÑ†ÑŒ', 'à¨•à¨¿à¨°à¨ªà¨¾ à¨•à¨°à¨•à©‡ à¨˜à©±à¨Ÿà©‹ à¨˜à©±à¨Ÿ à¨‡à©±à¨• à¨šà©ˆà¨•à¨¬à©Œà¨•à¨¸ à¨¦à©€ à¨œà¨¾à¨‚à¨š à¨•à¨°à©‹', 'VerificaÈ›i cel puÈ›in o casetÄƒ de selectare', 'á€¡á€”á€Šá€ºá€¸á€†á€¯á€¶á€¸ checkbox á€€á€­á€¯á€…á€…á€ºá€†á€±á€¸á€•á€«', 'Jowo á¹£ayáº¹wo á¹£ayáº¹wo o kere ju apoti kan', 'Da fatan a duba akalla akwati É—aya', NULL, NULL),
(724, 'extra_charge', 'Extra Charge', 'à¦…à¦¤à¦¿à¦°à¦¿à¦•à§à¦¤ à¦®à§‚à¦²à§à¦¯', 'Carga extra', 'Ø±Ø³ÙˆÙ… Ø§Ø¶Ø§ÙÙŠØ©', 'à¤…à¤¤à¤¿à¤°à¤¿à¤•à¥à¤¤ à¤ªà¥à¤°à¤­à¤¾à¤°', 'Ø§Ø¶Ø§ÙÛŒ Ú†Ø§Ø±Ø¬', 'é¢å¤–æ”¶è´¹', 'è¿½åŠ ã®è²»ç”¨', 'Custo extra', 'Ð”Ð¾Ð¿Ð¾Ð»Ð½Ð¸Ñ‚ÐµÐ»ÑŒÐ½Ð°Ñ Ð¿Ð»Ð°Ñ‚Ð°', 'SupplÃ©ment', 'ì¶”ê°€ ìš”ê¸ˆ', 'Aufpreis', 'Costo aggiuntivo', 'à¸„à¹ˆà¸²à¸šà¸£à¸´à¸à¸²à¸£à¸žà¸´à¹€à¸¨à¸©', 'FelÃ¡r', 'Toeslag', 'extra crimen', 'Biaya tambahan', 'Ek Ã¼cret', 'Î•Ï€Î¹Ï€Î»Î­Î¿Î½ Ï‡ÏÎ­Ï‰ÏƒÎ·', 'Ù‡Ø²ÛŒÙ†Ù‡ Ø§Ø¶Ø§ÙÛŒ', 'Caj tambahan', 'à°…à°¦à°¨à°ªà± à°§à°°', 'à®•à¯‚à®Ÿà¯à®¤à®²à¯ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àªµàª§àª¾àª°àª¾àª¨à«€ àª•àª¿àª®àª¤', 'Dodatkowa opÅ‚ata', 'Ð”Ð¾Ð´Ð°Ñ‚ÐºÐ¾Ð²Ð¸Ð¹ Ð·Ð±Ñ–Ñ€', 'à¨µà¨¾à¨§à©‚ à¨šà¨¾à¨°à¨œ', 'Tarif suplimentar', 'á€¡á€•á€­á€¯á€„á€½á€±á€€á€±á€¬á€€á€ºá€á€¶á€™á€¾á€¯', 'Afikun Afikun', 'Karin caji', NULL, NULL),
(725, 'ccavenue', 'CCAvenue', 'à¦¸à¦¿à¦¸à¦¿ à¦à¦­à¦¿à¦¨à¦¿à¦‰', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ccavenue', 'CCAvenue', 'CCAvenue', 'Î•Ï€Î¹Ï€Î»Î­Î¿Î½ Ï‡ÏÎ­Ï‰ÏƒÎ·', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'CCAvenue', 'Ibi Ilana', 'Cibiyar', NULL, NULL),
(726, 'merchant_key', 'Merchant Key', 'à¦®à¦¾à¦°à§à¦šà§‡à¦¨à§à¦Ÿ à¦•à¦¿', 'Clave del comerciante', 'Ù…ÙØªØ§Ø­ Ø§Ù„ØªØ§Ø¬Ø±', 'à¤µà¥à¤¯à¤¾à¤ªà¤¾à¤°à¥€ à¤•à¥à¤‚à¤œà¥€', 'Ù…Ø±Ú†Ù†Ù¹ Ú©Ù„ÛŒØ¯ÛŒ', 'å•†å®¶é’¥åŒ™', 'ãƒžãƒ¼ãƒãƒ£ãƒ³ãƒˆã‚­ãƒ¼', 'Chave do comerciante', 'Ð¢Ð¾Ñ€Ð³Ð¾Ð²Ñ‹Ð¹ ÐºÐ»ÑŽÑ‡', 'ClÃ© du marchand', 'íŒë§¤ìž í‚¤', 'HÃ¤ndlerschlÃ¼ssel', 'Chiave del commerciante', 'Merchant Key', 'Merchant kulcs', 'Verkopersleutel', 'Key mercator', 'Kunci Pedagang', 'SatÄ±cÄ± AnahtarÄ±', 'Î•Î¼Ï€Î¿ÏÎ¹ÎºÏŒ ÎºÎ»ÎµÎ¹Î´Î¯', 'Ú©Ù„ÛŒØ¯ ØªØ¬Ø§Ø±ÛŒ', 'Kunci Pedagang', 'à°®à°°à±à°šà°‚à°Ÿà± à°•à±€', 'Merchant Key', 'àªµà«‡àªªàª¾àª°à«€ àª•à«€', 'Klucz sprzedawcy', 'Ð¢Ð¾Ñ€Ð³Ð¾Ð²ÐµÐ»ÑŒÐ½Ð¸Ð¹ ÐºÐ»ÑŽÑ‡', 'à¨µà¨ªà¨¾à¨°à©€ à¨•à©à©°à¨œà©€', 'Cheia comerciantului', 'á€€á€¯á€”á€ºá€žá€Šá€º Key á€€á€­á€¯', 'Oluá¹£owo Iá¹£owo', 'MaÉ“alli mai ciniki', NULL, NULL),
(727, 'merchant_mid', 'Merchant MID', 'à¦®à¦¾à¦°à§à¦šà§‡à¦¨à§à¦Ÿ à¦®à¦¿à¦¡à§', 'Merchant MID', 'Merchant MID', 'à¤µà¥à¤¯à¤¾à¤ªà¤¾à¤°à¥€ à¤à¤®à¤†à¤ˆà¤¡à¥€', 'Ù…Ø±Ú†Ù†Ù¹ MID', 'å•†å®¶MID', 'Merchant MID', 'Comerciante MID', 'Merchant MID', 'Marchand MID', 'íŒë§¤ìž MID', 'HÃ¤ndler-MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'MEDIUS mercator', 'Merchant MID', 'Merchant MID', 'Merchant MID', 'Ù…Ø±Ú†Ù†Øª MID', 'Merchant MID', 'à°®à°°à±à°šà±†à°‚à°Ÿà± MID', 'Merchant MID', 'àª®àª°à«àªšàª¨à«àªŸ MID', 'Merchant MID', 'Merchant MID', 'à¨µà¨ªà¨¾à¨°à©€ à¨®à¨¿à¨¡', 'Meridian MID', 'á€€á€¯á€”á€ºá€žá€Šá€ºá€œá€šá€º', 'Iá¹£owo Iá¹£owo', 'MID M', NULL, NULL),
(728, 'paytm', 'PayTM', 'à¦ªà§‡ à¦Ÿà¦¿à¦®', 'PayTM', 'PayTM', 'Paytm', 'Ù¾ÛŒ Ù¹ÛŒ Ù¹ÛŒ Ø§ÛŒÙ…', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'BezahlenTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'Paytm', 'Paytm', 'àªªà«‡àªŸà«€àªàª®', 'PayTM', 'PayTM', 'PayTM', 'PayTM', 'Paytm', 'PayTM', 'PayTM', NULL, NULL),
(729, 'website', 'Website', 'à¦“à§Ÿà§‡à¦¬à¦¸à¦¾à¦‡à¦Ÿ', 'Sitio web', 'Ù…ÙˆÙ‚Ø¹ Ø§Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤µà¥‡à¤¬à¤¸à¤¾à¤‡à¤Ÿ', 'ÙˆÛŒØ¨ Ø³Ø§Ø¦Ù¹', 'ç½‘ç«™', 'ã‚¦ã‚§ãƒ–ã‚µã‚¤ãƒˆ', 'Local na rede Internet', 'Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚', 'Site Internet', 'ì›¹ ì‚¬ì´íŠ¸', 'Webseite', 'Sito web', 'à¹€à¸§à¹‡à¸šà¹„à¸‹à¸•à¹Œ', 'Weboldal', 'Website', 'website', 'Situs web', 'Web sitesi', 'Î”Î¹ÎºÏ„Ï…Î±ÎºÏŒÏ‚ Ï„ÏŒÏ€Î¿Ï‚', 'Ø³Ø§ÛŒØª Ø§ÛŒÙ†ØªØ±Ù†ØªÛŒ', 'Laman web', 'à°µà±†à°¬à±à°¸à±†à±–à°Ÿà±', 'à®‡à®£à¯ˆà®¯à®¤à®³à®®à¯', 'àªµà«‡àª¬àª¸àª¾àª‡àªŸ', 'Stronie internetowej', 'Ð’ÐµÐ±-ÑÐ°Ð¹Ñ‚', 'à¨µà©ˆà©±à¨¬à¨¸à¨¾à¨‡à¨Ÿ', 'website', 'á€á€€á€ºá€˜á€ºá€†á€­á€¯á€€á€º', 'Aaye ayelujara', 'Yanar Gizo', NULL, NULL),
(730, 'text_local', 'Text Local', 'à¦Ÿà§‡à¦•à§à¦¸à¦Ÿ à¦²à§‹à¦•à¦¾à¦²', 'Texto local', 'Ù†Øµ Ù…Ø­Ù„ÙŠ', 'à¤ªà¤¾à¤  à¤¸à¥à¤¥à¤¾à¤¨à¥€à¤¯', 'Ù…ØªÙ† Ù…Ù‚Ø§Ù…ÛŒ', 'æ–‡å­—æœ¬åœ°', 'ãƒ†ã‚­ã‚¹ãƒˆãƒ­ãƒ¼ã‚«ãƒ«', 'Texto local', 'Ð¢ÐµÐºÑÑ‚Ð¾Ð²Ñ‹Ðµ Ð»Ð¾ÐºÐ°Ð»ÑŒÐ½Ñ‹Ðµ', 'Texte local', 'í…ìŠ¤íŠ¸ ë¡œì»¬', 'Text lokal', 'Testo locale', 'à¸‚à¹‰à¸­à¸„à¸§à¸²à¸¡ Local', 'Helyi szÃ¶veg', 'Tekst Lokaal', 'Locus text', 'Teks Lokal', 'Metin Yerel', 'ÎšÎµÎ¯Î¼ÎµÎ½Î¿ Ï„Î¿Ï€Î¹ÎºÏŒ', 'Ù…ØªÙ† Ù…Ø­Ù„ÛŒ', 'Teks Tempatan', 'à°¸à±à°¥à°¾à°¨à°¿à°• à°Ÿà±†à°•à±à°¸à±à°Ÿà±', 'à®‰à®³à¯à®³à¯‚à®°à¯ à®‰à®°à¯ˆ', 'àªŸà«‡àª•à«àª¸à«àªŸ àª²à«‹àª•àª²', 'Tekst lokalny', 'Ð¢ÐµÐºÑÑ‚ Ð»Ð¾ÐºÐ°Ð»ÑŒÐ½Ð¾', 'à¨Ÿà©ˆà¨•à¨¸à¨Ÿ à¨¸à¨¥à¨¾à¨¨à¨•', 'Text local', 'á€…á€¬á€žá€¬á€¸á€™á€’á€±á€žá€á€¶', 'á»Œrá» Agbegbe', 'Text Local', NULL, NULL),
(731, 'hash_key', 'Hash Key', 'à¦¹à§à¦¯à¦¾à¦¶ à¦•à§€', 'Clave hash', 'Ù…ÙØªØ§Ø­ Ø§Ù„ØªØ¬Ø²Ø¦Ø©', 'à¤¹à¥ˆà¤¶ à¤•à¥à¤‚à¤œà¥€', 'ÛØ´ Ú©Ù„ÛŒØ¯ÛŒ', 'æ•£åˆ—é”®', 'ãƒãƒƒã‚·ãƒ¥ã‚­ãƒ¼', 'Chave de hash', 'Ð¥ÑÑˆ-ÐºÐ»ÑŽÑ‡', 'Touche diÃ¨se', 'í•´ì‹œ í‚¤', 'Hash-SchlÃ¼ssel', 'Tasto cancelletto', 'à¸„à¸µà¸¢à¹Œà¹à¸®à¸Š', 'Hash gomb', 'Hash sleutel', 'Key Nullam', 'Kunci Hash', 'Kare tuÅŸu', 'ÎšÎ»ÎµÎ¹Î´Î¯ Hash', 'Ú©Ù„ÛŒØ¯ Ù‡Ø´', 'Hash Key', 'à°¹à°¾à°·à± à°•à±€', 'à®¹à®¾à®·à¯ à®•à¯€', 'àª¹à«‡àª¶ àª•à«€', 'Klucz skrÃ³tu', 'Hash Key', 'à¨¹à©ˆà¨¸à¨¼ à¨•à©à©°à¨œà©€', 'Tasta Diez', 'hash Key á€€á€­á€¯', 'Bá»tini Iwá»n', 'Hash Key', NULL, NULL),
(732, 'sms_country', 'SMS Country', 'à¦à¦¸ à¦à¦® à¦à¦¸ à¦•à¦¾à¦¨à§à¦Ÿà§à¦°à¦¿', 'PaÃ­s SMS', 'Ø¨Ù„Ø¯ SMS', 'à¤à¤¸à¤à¤®à¤à¤¸ à¤¦à¥‡à¤¶', 'Ø§ÛŒØ³ Ø§ÛŒÙ… Ø§ÛŒØ³ Ù…Ù„Ú©', 'SMSå›½å®¶', 'SMSå›½', 'PaÃ­s SMS', 'Ð¡Ñ‚Ñ€Ð°Ð½Ð° SMS', 'SMS Pays', 'SMS êµ­ê°€', 'SMS Land', 'Paese SMS', 'à¸›à¸£à¸°à¹€à¸—à¸¨ SMS', 'SMS orszÃ¡g', 'SMS-land', 'SMS patriae', 'Negara SMS', 'SMS Ãœlke', 'SMS Î§ÏŽÏÎ±', 'Ø§Ø³ Ø§Ù… Ø§Ø³ Ú©Ø´ÙˆØ±', 'SMS Negara', 'SMS à°¦à±‡à°¶à°‚', 'SMS à®¨à®¾à®Ÿà¯', 'àªàª¸àªàª®àªàª¸ àª¦à«‡àª¶', 'Kraj SMS', 'SMS ÐšÑ€Ð°Ñ—Ð½Ð°', 'à¨à¨¸à¨à¨®à¨à¨¸ à¨¦à©‡à¨¸à¨¼', 'Èšara SMS', 'SMS á€€á€­á€¯á€”á€­á€¯á€„á€ºá€„á€¶', 'SMS Latin', 'SMS Country', NULL, NULL),
(733, 'school_code', 'School Code', 'à¦¸à§à¦•à§à¦² à¦•à§‹à¦¡', 'CÃ³digo escolar', 'ÙƒÙˆØ¯ Ù…Ø¯Ø±Ø³Ø©', 'à¤¸à¥à¤•à¥‚à¤² à¤•à¥‹à¤¡', 'Ø³Ú©ÙˆÙ„ Ú©ÙˆÚˆ', 'å­¦å·', 'å­¦æ ¡ã‚³ãƒ¼ãƒ‰', 'CÃ³digo escolar', 'Ð¨ÐºÐ¾Ð»ÑŒÐ½Ñ‹Ð¹ ÐºÐ¾Ð´', 'Code dÃ©tablissement', 'í•™êµ ì½”ë“œ', 'Schulcode', 'Codice della scuola', 'à¸£à¸«à¸±à¸ªà¹‚à¸£à¸‡à¹€à¸£à¸µà¸¢à¸™', 'IskolÃ¡k kÃ³dja', 'Schoolcode', 'Code School', 'Kode Sekolah', 'Okul Kodu', 'Î£Ï‡Î¿Î»Î¹ÎºÏŒÏ‚ ÎºÏŽÎ´Î¹ÎºÎ±Ï‚', 'Ú©Ø¯ Ù…Ø¯Ø±Ø³Ù‡', 'Kod Sekolah', 'à°¸à±à°•à±‚à°²à± à°•à±‹à°¡à±', 'à®ªà®³à¯à®³à®¿ à®•à¯à®±à®¿à®¯à¯€à®Ÿà¯', 'àª¶àª¾àª³àª¾ àª•à«‹àª¡', 'Kod szkoÅ‚y', 'Ð¨ÐºÑ–Ð»ÑŒÐ½Ð¸Ð¹ ÐºÐ¾Ð´ÐµÐºÑ', 'à¨¸à¨•à©‚à¨² à¨•à©‹à¨¡', 'Codul È™colii', 'á€€á€»á€±á€¬á€„á€ºá€¸á€…á€¬á€¡á€¯á€•á€º Code á€€á€­á€¯', 'Koodu Ile-iwe', 'Lambar Makarantar', NULL, NULL),
(734, 'enable_rtl', 'Enable RTL', 'à¦à¦¨à¦¾à¦¬à¦² à¦†à¦° à¦Ÿà¦¿ à¦à¦²', 'Activar RTL', 'ØªÙ…ÙƒÙŠÙ† RTL', 'à¤†à¤°à¤Ÿà¥€à¤à¤² à¤¸à¤•à¥à¤·à¤® à¤•à¤°à¥‡à¤‚', 'RTL Ú©Ùˆ ÙØ¹Ø§Ù„ Ú©Ø±ÛŒÚº', 'å¯ç”¨RTL', 'RTLã‚’æœ‰åŠ¹ã«ã™ã‚‹', 'Ativar RTL', 'Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ RTL', 'Activer RTL', 'RTL ì‚¬ìš©', 'Aktivieren Sie RTL', 'Abilita RTL', 'à¹€à¸›à¸´à¸”à¹ƒà¸Šà¹‰à¸‡à¸²à¸™ RTL', 'EngedÃ©lyezze az RTL engedÃ©lyezÃ©sÃ©t', 'Schakel RTL in', 'Admitte License', 'Aktifkan RTL', 'RTLyi etkinleÅŸtir', 'Î•Î½ÎµÏÎ³Î¿Ï€Î¿Î¯Î·ÏƒÎ· RTL', 'ÙØ¹Ø§Ù„ Ú©Ø±Ø¯Ù† RTL', 'Dayakan RTL', 'RTL à°ªà±à°°à°¾à°°à°‚à°­à°¿à°‚à°šà±', 'RTL à® à®‡à®¯à®•à¯à®•à¯', 'RTL àª¸àª•à«àª·àª® àª•àª°à«‹', 'WÅ‚Ä…cz RTL', 'Ð£Ð²Ñ–Ð¼ÐºÐ½ÑƒÑ‚Ð¸ RTL', 'RTL à¨¨à©‚à©° à¨¸à¨®à¨°à©±à¨¥ à¨¬à¨£à¨¾à¨“', 'ActiveazÄƒ RTL', 'á€˜á€”á€ºá€á€…á€º Enable', 'Mu RTL á¹£iá¹£áº¹', 'Enable RTL', NULL, NULL),
(735, 'enable_frontend', 'Enable Frontend', 'à¦à¦¨à¦¾à¦¬à¦² à¦«à§à¦°à¦¨à§à¦Ÿà¦à¦¨à§à¦¡', 'Habilitar Frontend', 'ØªÙ…ÙƒÙŠÙ† Ø§Ù„ÙˆØ§Ø¬Ù‡Ø© Ø§Ù„Ø£Ù…Ø§Ù…ÙŠØ©', 'Frontend à¤¸à¤•à¥à¤·à¤® à¤•à¤°à¥‡à¤‚', 'ÙØ±Ù†Ù¹ Ø§ÛŒÙ†Úˆ Ú©Ùˆ ÙØ¹Ø§Ù„ Ú©Ø±ÛŒÚº', 'å¯ç”¨å‰ç«¯', 'ãƒ•ãƒ­ãƒ³ãƒˆã‚¨ãƒ³ãƒ‰ã‚’æœ‰åŠ¹ã«ã™ã‚‹', 'Ativar Frontend', 'Ð’ÐºÐ»ÑŽÑ‡Ð¸Ñ‚ÑŒ Frontend', 'Activer le frontend', 'í”„ë¡ íŠ¸ ì—”ë“œ ì‚¬ìš©', 'Frontend aktivieren', 'Abilita Frontend', 'à¹€à¸›à¸´à¸”à¹ƒà¸Šà¹‰ Frontend', 'EngedÃ©lyezze a Frontendet', 'Frontend inschakelen', 'Admitte Frontend', 'Aktifkan Frontend', 'Ã–n UÃ§u EtkinleÅŸtir', 'Î•Î½ÎµÏÎ³Î¿Ï€Î¿Î¹Î®ÏƒÏ„Îµ Ï„Î¿ Frontend', 'ÙØ¹Ø§Ù„ Ú©Ø±Ø¯Ù† Ø¸Ø§Ù‡Ø±', 'Dayakan Frontend', 'à°«à±à°°à°‚à°Ÿà±†à°‚à°¡à±à°¨à°¿ à°ªà±à°°à°¾à°°à°‚à°­à°¿à°‚à°šà°‚à°¡à°¿', 'Frontend à® à®‡à®¯à®•à¯à®•à¯', 'àª…àª—à«àª°àª­àª¾àª—àª¨à«‡ àª¸àª•à«àª·àª® àª•àª°à«‹', 'WÅ‚Ä…cz interfejs uÅ¼ytkownika', 'Ð£Ð²Ñ–Ð¼ÐºÐ½ÑƒÑ‚Ð¸ Frontend', 'à¨«à¨°à©°à¨Ÿà¨à¨‚à¨¡ à¨¨à©‚à©° à¨¸à¨®à¨°à©±à¨¥ à¨¬à¨£à¨¾à¨“', 'ActivaÈ›i Frontend', 'Frontend Enable', 'Mu Frontend á¹£iá¹£áº¹', 'Æ˜ara FarfaÉ—a', NULL, NULL),
(736, 'session_start_month', 'Session Start Month', 'à¦¸à§‡à¦¶à¦¨ à¦¶à§à¦°à§ à¦®à¦¾à¦¸', 'Mes de inicio de sesiÃ³n', 'Ø´Ù‡Ø± Ø¨Ø¯Ø¡ Ø§Ù„Ø¬Ù„Ø³Ø§Øª', 'à¤¸à¤¤à¥à¤° à¤ªà¥à¤°à¤¾à¤°à¤‚à¤­ à¤®à¤¹à¥€à¤¨à¤¾', 'Ø³ÛŒØ´Ù† Ø´Ø±ÙˆØ¹ Ù…Ø§Û', 'ä¼šè®®å¼€å§‹æœˆ', 'ã‚»ãƒƒã‚·ãƒ§ãƒ³é–‹å§‹æœˆ', 'MÃªs de InÃ­cio da SessÃ£o', 'ÐÐ°Ñ‡Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð¼ÐµÑÑÑ† ÑÐµÐ°Ð½ÑÐ°', 'Mois de dÃ©but de la session', 'ì„¸ì…˜ ì‹œìž‘ ë‹¬', 'Sitzungsstartmonat', 'Mese di inizio sessione', 'à¹€à¸”à¸·à¸­à¸™à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™à¸‚à¸­à¸‡à¹€à¸‹à¸ªà¸Šà¸±à¸™', 'Session Start Month', 'Sessie startmaand', 'Satus mense Sessio', 'Bulan Awal Sesi', 'Oturum BaÅŸlangÄ±Ã§ AyÄ±', 'ÎœÎ®Î½Î±Ï‚ ÎˆÎ½Î±ÏÎ¾Î·Ï‚ Î£Ï…Î½ÏŒÎ´Î¿Ï…', 'Ù…Ø§Ù‡ Ø´Ø±ÙˆØ¹ Ø¬Ù„Ø³Ù‡', 'Bulan Mula Sesi', 'à°¸à±†à°·à°¨à± à°ªà±à°°à°¾à°°à°‚à°­à°‚ à°¨à±†à°²', 'à®…à®®à®°à¯à®µà¯ à®¤à¯Šà®Ÿà®•à¯à®• à®®à®¾à®¤à®®à¯', 'àª¸àª¤à«àª° àªªà«àª°àª¾àª°àª‚àª­ àª®àª¹àª¿àª¨à«‹', 'MiesiÄ…c rozpoczÄ™cia sesji', 'ÐœÑ–ÑÑÑ†ÑŒ Ð·Ð°ÑÐ½ÑƒÐ²Ð°Ð½Ð½Ñ ÑÐµÑÑ–Ñ—', 'à¨¸à©ˆà¨¸à¨¼à¨¨ à¨¸à¨¼à©à¨°à©‚ à¨•à¨°à©‹ à¨®à¨¹à©€à¨¨à¨¾', 'Luna de Ã®ncepere a sesiunii', 'session Start á€€á€­á€¯á€œ', 'Akoko Ibere Aká»', 'Zama Saiti', NULL, NULL),
(737, 'session_end_month', 'Session End Month', 'à¦¸à§‡à¦¶à¦¨ à¦¶à§‡à¦· à¦®à¦¾à¦¸', 'Mes de final de sesiÃ³n', 'Ø¬Ù„Ø³Ø© Ù†Ù‡Ø§ÙŠØ© Ø§Ù„Ø´Ù‡Ø±', 'à¤¸à¤¤à¥à¤° à¤…à¤‚à¤¤ à¤®à¤¹à¥€à¤¨à¥‡', 'Ø§Ø¬Ù„Ø§Ø³ Ø§Ø®ØªØªØ§Ù… Ù…Ø§Û', 'ä¼šè®®ç»“æŸæœˆ', 'ã‚»ãƒƒã‚·ãƒ§ãƒ³çµ‚äº†æœˆ', 'MÃªs Final da SessÃ£o', 'ÐšÐ¾Ð½ÐµÑ‡Ð½Ñ‹Ð¹ Ð¼ÐµÑÑÑ† ÑÐµÐ°Ð½ÑÐ°', 'Session Fin du mois', 'ì„¸ì…˜ ì¢…ë£Œ ì›”', 'Sitzungsende Monat', 'Sessione Fine mese', 'à¹€à¸”à¸·à¸­à¸™à¸ªà¸´à¹‰à¸™à¸ªà¸¸à¸”à¹€à¸‹à¸ªà¸Šà¸±à¸™', 'Session End HÃ³nap', 'Session End Month', 'Sessio finem mense', 'Bulan Akhir Sesi', 'Oturum BitiÅŸ AyÄ±', 'ÎœÎ®Î½Î±Ï‚ Î»Î®Î¾Î·Ï‚ Ï€ÎµÏÎ¹ÏŒÎ´Î¿Ï… ÏƒÏÎ½Î´ÎµÏƒÎ·Ï‚', 'Ù…Ø§Ù‡ Ù¾Ø§ÛŒØ§Ù† Ø¬Ù„Ø³Ù‡', 'Bulan Tamat Sesi', 'à°¸à±†à°·à°¨à± à°®à±à°—à°¿à°‚à°ªà± à°¨à±†à°²', 'à®…à®®à®°à¯à®µà¯ à®®à¯à®Ÿà®¿à®µà¯ à®®à®¾à®¤à®®à¯', 'àª¸àª¤à«àª° àª¸àª®àª¾àªªà«àª¤àª¿ àª®àª¹àª¿àª¨à«‹', 'MiesiÄ…c zakoÅ„czenia sesji', 'Session End Month', 'à¨¸à©ˆà¨¸à¨¼à¨¨ à¨…à©°à¨¤ à¨¦à©€ à¨®à¨¹à©€à¨¨à¨¾', 'Luna sfÃ¢rÈ™itului sesiunii', 'session á€¡á€†á€¯á€¶á€¸á€œ', 'Ipari Ilana Ipade', 'Æ˜arshen Watan Æ˜arshe', NULL, NULL),
(738, 'admission_no', 'Admission  No', 'à¦­à¦°à§à¦¤à¦¿ à¦¨à¦®à§à¦¬à¦°', 'AdmisiÃ³n no', 'Ø±Ù‚Ù… Ø§Ù„Ù‚Ø¨ÙˆÙ„', 'à¤ªà¥à¤°à¤µà¥‡à¤¶ à¤¸à¤‚à¤–à¥à¤¯à¤¾', 'Ø¯Ø§Ø®Ù„Û Ù†Ù…Ø¨Ø±', 'å…¥åœºå·', 'å…¥å ´ç„¡æ–™', 'AdmissÃ£o NÃ£o', 'Ð’Ñ…Ð¾Ð´ ÐÐµÑ‚', 'Admission No', 'ìž…ìž¥ë£Œ ì—†ìŒ', 'Eintritt Nr', 'Ingresso n', 'à¸„à¹ˆà¸²à¹€à¸‚à¹‰à¸²à¸Šà¸¡', 'FelvÃ©teli szÃ¡ma', 'Toegangsnummer', 'Praesent nulla', 'Penerimaan No', 'GiriÅŸ No', 'Î•Î¹ÏƒÎ±Î³Ï‰Î³Î® Î±ÏÎ¹Î¸', 'Ù¾Ø°ÛŒØ±Ø´ Ø´Ù…Ø§Ø±Ù‡', 'Kemasukan No', 'à°…à°¡à±à°®à°¿à°·à°¨à± à°¸à°‚à°–à±à°¯', 'à®šà¯‡à®°à¯à®•à¯à®•à¯ˆ à®Žà®£à¯', 'àªªà«àª°àªµà«‡àª¶ àª¨àª‚', 'MiesiÄ…c zakoÅ„czenia sesji', 'Ð’Ñ…Ñ–Ð´ â„–', 'à¨¦à¨¾à¨–à¨²à¨¾ à¨¨à©°à¨¬à¨°', 'Admitere nr', 'á€á€”á€ºá€á€¶á€á€»á€€á€ºá€¡á€˜á€šá€ºá€žá€°á€™á€»á€¾á€™', 'Gbigbawá»le Báº¹áº¹ká»', 'Shiga Aa', NULL, NULL),
(740, 'age', 'Age', 'à¦¬à¦¯à¦¼à¦¸', 'AÃ±os', 'Ø¹Ù…Ø±', 'à¤†à¤¯à¥', 'Ø¹Ù…Ø±', 'å¹´é¾„', 'å¹´é½¢', 'Era', 'Ð’Ð¾Ð·Ñ€Ð°ÑÑ‚', 'Ã‚ge', 'ë‚˜ì´', 'Alter', 'EtÃ ', 'à¸­à¸²à¸¢à¸¸', 'Kor', 'Leeftijd', 'age', 'Usia', 'YaÅŸ', 'Î—Î»Î¹ÎºÎ¯Î±', 'Ø³Ù†', 'Umur', 'à°µà°¯à°¸à±', 'à®µà®¯à®¤à¯', 'àª‰àª‚àª®àª°', 'Wiek', 'Ð’Ñ–Ðº', 'à¨‰à¨®à¨°', 'VÃ¢rstÄƒ', 'á€¡á€žá€€á€ºá€¡á€›á€½á€šá€º', 'á»Œjá» ori', 'Shekaru', NULL, NULL),
(741, 'transfer', 'Transfer', 'à¦¹à¦¸à§à¦¤à¦¾à¦¨à§à¦¤à¦°', 'Transferir', 'Ù†Ù‚Ù„', 'à¤¸à¥à¤¥à¤¾à¤¨à¤¾à¤‚à¤¤à¤°à¤£', 'Ù…Ù†ØªÙ‚Ù„ÛŒ', 'è½¬è®©', 'è»¢é€', 'Transferir', 'ÐŸÐµÑ€ÐµÐ²Ð¾Ð´', 'Transfert', 'ì´ì „', 'Transfer', 'Trasferimento', 'à¹‚à¸­à¸™', 'ÃtruhÃ¡zÃ¡s', 'Overdracht', 'De translatione', 'Transfer', 'Aktar', 'ÎœÎ•Î¤Î‘Î¦ÎŸÎ¡Î‘', 'Ø§Ù†ØªÙ‚Ø§Ù„', 'Pemindahan', 'à°Ÿà±à°°à°¾à°¨à±à°¸à±à°«à°°à±', 'à®®à®¾à®±à¯à®±à®®à¯', 'àªªàª°àª¿àªµàª¹àª¨', 'Transfer', 'Ð¢Ñ€Ð°Ð½ÑÑ„ÐµÑ€', 'à¨Ÿà©à¨°à¨¾à¨‚à¨¸à¨«à¨° à¨•à¨°à©‹', 'Transfer', 'á€œá€½á€¾á€²á€•á€¼á€±á€¬á€„á€ºá€¸', 'Gbigbe lá»', 'Canja wurin', NULL, NULL),
(742, 'health_condition', 'Health Condition', 'à¦¸à§à¦¬à¦¾à¦¸à§à¦¥à§à¦¯à§‡à¦° à¦…à¦¬à¦¸à§à¦¥à¦¾', 'Estado de salud', 'Ø§Ù„Ø­Ø§Ù„Ø© Ø§Ù„ØµØ­ÙŠØ©', 'à¤¸à¥à¤µà¤¾à¤¸à¥à¤¥à¥à¤¯ à¤•à¥€ à¤¸à¥à¤¥à¤¿à¤¤à¤¿', 'ØµØ­Øª Ú©ÛŒ Ú©ÛŒÙÛŒØª', 'å¥åº·çŠ¶å†µ', 'å¥åº·çŠ¶æ…‹', 'CondiÃ§Ã£o de saÃºde', 'Ð¡Ð¾ÑÑ‚Ð¾ÑÐ½Ð¸Ðµ Ð·Ð´Ð¾Ñ€Ð¾Ð²ÑŒÑ', 'Ã‰tat de santÃ©', 'ê±´ê°• ìƒíƒœ', 'Gesundheitszustand', 'Condizione di salute', 'à¹€à¸‡à¸·à¹ˆà¸­à¸™à¹„à¸‚à¸ªà¸¸à¸‚à¸ à¸²à¸ž', 'EgÃ©szsÃ©gi Ã¡llapot', 'Gezondheid', 'salutem Description', 'Kondisi kesehatan', 'SaÄŸlÄ±k durumu', 'Î— ÎºÎ±Ï„Î¬ÏƒÏ„Î±ÏƒÎ· Ï„Î·Ï‚ Ï…Î³ÎµÎ¯Î±Ï‚', 'ÙˆØ¶Ø¹ÛŒØª Ø³Ù„Ø§Ù…ØªÛŒ', 'Keadaan kesihatan', 'à°†à°°à±‹à°—à±à°¯ à°¸à±à°¥à°¿à°¤à°¿', 'à®‰à®Ÿà®²à¯ à®¨à®¿à®²à¯ˆ', 'àª†àª°à«‹àª—à«àª¯àª¨à«€ àª¸à«àª¥àª¿àª¤àª¿', 'Stan zdrowia', 'Ð¡Ñ‚Ð°Ð½ Ð·Ð´Ð¾Ñ€Ð¾Ð²Ñ', 'à¨¸à¨¿à¨¹à¨¤ à¨¦à©€ à¨¸à¨¥à¨¿à¨¤à©€', 'Starea de sÄƒnÄƒtate', 'á€€á€”á€»á€¼á€¸á€™á€¬á€›á€±á€¸á€¡á€á€¼á€±á€¡á€”á€±', 'Ipo ilera', 'Yanayin Lafiya', NULL, NULL),
(743, 'national_id', 'National ID', 'à¦œà¦¾à¦¤à§€à¦¯à¦¼ à¦†à¦‡à¦¡à¦¿', 'IdentificaciÃ³n nacional', 'Ø§Ù„Ù‡ÙˆÙŠØ© Ø§Ù„ÙˆØ·Ù†ÙŠØ©', 'à¤°à¤¾à¤·à¥à¤Ÿà¥à¤°à¥€à¤¯ à¤ªà¤¹à¤šà¤¾à¤¨ à¤ªà¤¤à¥à¤°', 'Ù‚ÙˆÙ…ÛŒ Ø´Ù†Ø§Ø®ØªÛŒ', 'å›½æ°‘èº«ä»½è¯', 'å›½æ°‘ID', 'identidade nacional', 'ÐÐ°Ñ†Ð¸Ð¾Ð½Ð°Ð»ÑŒÐ½Ñ‹Ð¹ Ð¸Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€', 'carte didentitÃ©', 'êµ­ë¦½ ID', 'Personalausweis', 'ID nazionale', 'à¸£à¸«à¸±à¸ªà¸›à¸£à¸°à¸ˆà¸³à¸•à¸±à¸§à¸›à¸£à¸°à¸Šà¸²à¸Šà¸™', 'Nemzeti azonosÃ­tÃ³', 'Nationaal ID', 'National ID', 'ID Nasional', 'Ulusal KimliÄŸi', 'Î•Î¸Î½Î¹ÎºÎ® Ï„Î±Ï…Ï„ÏŒÏ„Î·Ï„Î±', 'Ú©Ø¯ Ù…Ù„ÛŒ', 'ID kebangsaan', 'à°œà°¾à°¤à±€à°¯ à°—à±à°°à±à°¤à°¿à°‚à°ªà±', 'à®¤à¯‡à®šà®¿à®¯ à®à®Ÿà®¿', 'àª°àª¾àª·à«àªŸà«àª°à«€àª¯ ID', 'DowÃ³d osobisty', 'ÐÐ°Ñ†Ñ–Ð¾Ð½Ð°Ð»ÑŒÐ½Ð¸Ð¹ ID', 'à¨°à¨¾à¨¸à¨¼à¨Ÿà¨°à©€ à¨†à¨ˆà¨¡à©€', 'buletin', 'á€¡á€™á€»á€­á€¯á€¸á€žá€¬á€¸ ID á€€á€­á€¯', 'ID orile-ede', 'ID na kasa', NULL, NULL),
(744, 'relation_with', 'Relation With Guardian', 'à¦—à¦¾à¦°à§à¦¡à¦¿à¦¯à¦¼à¦¾à¦¨ à¦¸à¦™à§à¦—à§‡ à¦¸à¦®à§à¦ªà¦°à§à¦•', 'RelaciÃ³n con Guardian', 'Ø§Ù„Ø¹Ù„Ø§Ù‚Ø© Ù…Ø¹ Ø§Ù„Ø¬Ø§Ø±Ø¯ÙŠØ§Ù†', 'à¤…à¤­à¤¿à¤­à¤¾à¤µà¤• à¤•à¥‡ à¤¸à¤¾à¤¥ à¤¸à¤‚à¤¬à¤‚à¤§', 'Ú¯Ø§Ø±ÚˆÛŒÙ† Ú©Û’ Ø³Ø§ØªÚ¾ ØªØ¹Ù„Ù‚Ø§Øª', 'ä¸Žå«æŠ¥çš„å…³ç³»', 'ã‚¬ãƒ¼ãƒ‡ã‚£ã‚¢ãƒ³ã¨ã®é–¢ä¿‚', 'RelaÃ§Ã£o Com GuardiÃ£o', 'Ð¡Ð²ÑÐ·ÑŒ Ñ Ð¾Ð¿ÐµÐºÑƒÐ½Ð¾Ð¼', 'Relation avec Guardian', 'ê°€ë””ì–¸ê³¼ì˜ ê´€ê³„', 'Beziehung mit dem WÃ¤chter', 'Relazione con Guardian', 'à¸„à¸§à¸²à¸¡à¸ªà¸±à¸¡à¸žà¸±à¸™à¸˜à¹Œà¸à¸±à¸š Guardian', 'Kapcsolat az ÅrzÅ‘vel', 'Relatie met Guardian', 'In relatione Custodes', 'Hubungan dengan Guardian', 'Guardian ile Ä°liÅŸkisi', 'Î£Ï‡Î­ÏƒÎ· Î¼Îµ Ï„Î¿Î½ ÎšÎ·Î´ÎµÎ¼ÏŒÎ½Î±', 'Ø±Ø§Ø¨Ø·Ù‡ Ø¨Ø§ Ù†Ú¯Ù‡Ø¨Ø§Ù†', 'Hubungan dengan Guardian', 'à°—à°¾à°°à±à°¡à°¿à°¯à°¨à±à°¤à±‹ à°¸à°‚à°¬à°‚à°§à°‚', 'à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯ à®‰à®Ÿà®©à¯ à®‰à®±à®µà¯', 'àª—àª¾àª°à«àª¡àª¿àª¯àª¨ àª¸àª¾àª¥à«‡ àª¸àª‚àª¬àª‚àª§', 'Relacja z opiekunem', 'Ð’Ñ–Ð´Ð½Ð¾ÑˆÐµÐ½Ð½Ñ Ð´Ð¾ Ð¾Ð¿Ñ–ÐºÑƒÐ½Ð°', 'à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨ à¨¨à¨¾à¨² à¨¸à¨¬à©°à¨§', 'RelaÈ›ia cu Gardianul', 'á€‚á€«á€¸á€’á€®á€¸á€šá€”á€ºá€¸á€žá€á€„á€ºá€¸á€…á€¬á€”á€¾á€„á€ºá€·á€†á€€á€ºá€†á€¶á€›á€±á€¸', 'Ibasepo páº¹lu Alagbato', 'Abota da Guardian', NULL, NULL),
(745, 'education', 'Education', 'à¦¶à¦¿à¦•à§à¦·à¦¾', 'EducaciÃ³n', 'Ø§Ù„ØªØ¹Ù„ÙŠÙ…', 'à¤¶à¤¿à¤•à¥à¤·à¤¾', 'ØªØ¹Ù„ÛŒÙ…', 'æ•™è‚²', 'æ•™è‚²', 'EducaÃ§Ã£o', 'Ð¾Ð±Ñ€Ð°Ð·Ð¾Ð²Ð°Ð½Ð¸Ðµ', 'Ã‰ducation', 'êµìœ¡', 'Bildung', 'Formazione scolastica', 'à¸à¸²à¸£à¸¨à¸¶à¸à¸©à¸²', 'OktatÃ¡s', 'Onderwijs', 'Education', 'pendidikan', 'EÄŸitim', 'Î•ÎºÏ€Î±Î¯Î´ÎµÏ…ÏƒÎ·', 'ØªØ­ØµÛŒÙ„Ø§Øª', 'Pendidikan', 'à°šà°¦à±à°µà±', 'à®•à®²à¯à®µà®¿', 'àª¶àª¿àª•à«àª·àª£', 'Edukacja', 'ÐžÑÐ²Ñ–Ñ‚Ð°', 'à¨¸à¨¿à©±à¨–à¨¿à¨†', 'EducaÅ£ie', 'á€•á€Šá€¬á€›á€±á€¸', 'Eko', 'Ilimi', NULL, NULL),
(746, 'information', 'Information', 'à¦¤à¦¥à§à¦¯', 'InformaciÃ³n', 'Ù…Ø¹Ù„ÙˆÙ…Ø§Øª', 'à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€', 'Ù…Ø¹Ù„ÙˆÙ…Ø§Øª', 'ä¿¡æ¯', 'æƒ…å ±', 'Em formaÃ§Ã£o', 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ', 'Information', 'ì •ë³´', 'Information', 'Informazione', 'à¸‚à¹‰à¸­à¸¡à¸¹à¸¥', 'InformÃ¡ciÃ³', 'Informatie', 'Information', 'Informasi', 'Bilgi', 'Î Î»Î·ÏÎ¿Ï†Î¿ÏÎ¯ÎµÏ‚', 'Ø§Ø·Ù„Ø§Ø¹Ø§Øª', 'Maklumat', 'à°¸à°®à°¾à°šà°¾à°°à°‚', 'à®¤à®•à®µà®²à¯', 'àª®àª¾àª¹àª¿àª¤à«€', 'Informacja', 'Ð†Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ñ–Ñ', 'à¨œà¨¾à¨£à¨•à¨¾à¨°à©€', 'informaÈ›ie', 'á€žá€á€„á€ºá€¸á€¡á€á€»á€€á€ºá€¡á€œá€€á€º', 'Alaye', 'Bayani', NULL, NULL),
(747, 'basic', 'Basic', 'à¦®à§Œà¦²à¦¿à¦•', 'BASIC', 'Ø§Ù„Ø£Ø³Ø§Ø³ÙŠØ©', 'à¤¬à¥à¤¨à¤¿à¤¯à¤¾à¤¦à¥€', 'Ø¨Ù†ÛŒØ§Ø¯ÛŒ', 'åŸºæœ¬', 'ãƒ™ãƒ¼ã‚·ãƒƒã‚¯', 'Basic', 'Ð¾ÑÐ½Ð¾Ð²Ð½Ð¾Ð¹', 'De base', 'ê¸°ë³¸', 'Basic', 'Di base', 'à¸‚à¸±à¹‰à¸™à¸žà¸·à¹‰à¸™à¸à¸²à¸™', 'AlapvetÅ‘', 'basis-', 'basic', 'Dasar', 'Temel', 'Î’Î±ÏƒÎ¹ÎºÏŒÏ‚', 'Ù¾Ø§ÛŒÙ‡ Ø§ÛŒ', 'Asas', 'à°ªà±à°°à°¾à°¥à°®à°¿à°•', 'à®…à®Ÿà®¿à®ªà¯à®ªà®Ÿà¯ˆ', 'àªªàª¾àª¯àª¾àª¨à«€', 'Podstawowy', 'ÐžÑÐ½Ð¾Ð²Ð½Ð¸Ð¹', 'à¨¬à©‡à¨¸à¨¿à¨•', 'De bazÄƒ', 'á€¡á€á€¼á€±á€á€¶á€•á€Šá€¬', 'Ipiláº¹', 'Basic', NULL, NULL),
(748, 'other', 'Other', 'à¦…à¦¨à§à¦¯à¦¾à¦¨à§à¦¯', 'Otro', 'Ø¢Ø®Ø±', 'à¤…à¤¨à¥à¤¯', 'Ø¯ÛŒÚ¯Ø±', 'å…¶ä»–', 'ãã®ä»–', 'De outros', 'Ð”Ñ€ÑƒÐ³Ð¸Ðµ', 'Autre', 'ë‹¤ë¥¸', 'Andere', 'Altro', 'à¸­à¸·à¹ˆà¸™ à¹†', 'MÃ¡s', 'anders', 'alius', 'Lain', 'DiÄŸer', 'Î‘Î»Î»Î±', 'Ø¯ÛŒÚ¯Ø±', 'Lain-lain', 'à°‡à°¤à°°', 'à®®à®±à¯à®±', 'àª…àª¨à«àª¯', 'Inny', 'Ð†Ð½ÑˆÐ¸Ð¹', 'à¨¹à©‹à¨°', 'Alte', 'á€¡á€á€¼á€¬á€¸', 'Miiran', 'Sauran', NULL, NULL),
(749, 'contact', 'Contact', 'à¦¯à§‹à¦—à¦¾à¦¯à§‹à¦—', 'Contacto', 'Ø§ØªØµÙ„', 'à¤¸à¤‚à¤ªà¤°à¥à¤• à¤•à¤°à¥‡à¤‚', 'Ø±Ø§Ø¨Ø·Û Ú©Ø±ÛŒÚº', 'è”ç³»', 'æŽ¥è§¦', 'Contato', 'ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚', 'Contact', 'ì ‘ì´‰', 'Kontakt', 'Contatto', 'à¸•à¸´à¸”à¸•à¹ˆà¸­', 'Kapcsolatba lÃ©pni', 'Contact', 'Contact', 'Kontak', 'Temas', 'Î•Ï€Î¹ÎºÎ¿Î¹Î½Ï‰Î½Î¯Î±', 'ØªÙ…Ø§Ø³', 'Hubungi', 'à°¸à°‚à°ªà±à°°à°¦à°¿à°‚à°šà°‚à°¡à°¿', 'à®¤à¯†à®¾à®Ÿà®°à¯à®ªà¯', 'àª¸àª‚àªªàª°à«àª• àª•àª°à«‹', 'Kontakt', 'Ð—Ð²ÑÐ·Ð°Ñ‚Ð¸ÑÑ', 'à¨¸à©°à¨ªà¨°à¨• à¨•à¨°à©‹', 'a lua legatura', 'á€‘á€­á€á€¾á€±á€·', 'Kan si', 'Saduwa', NULL, NULL),
(750, 'academic', 'Academic', 'à¦à¦•à¦¾à¦¡à§‡à¦®à¦¿à¦•', 'AcadÃ©mico', 'Ø£ÙƒØ§Ø¯ÙŠÙ…ÙŠ', 'à¤…à¤•à¤¾à¤¦à¤®à¤¿à¤•', 'ØªØ¹Ù„ÛŒÙ…ÛŒ', 'å­¦æœ¯çš„', 'ã‚¢ã‚«ãƒ‡ãƒŸãƒƒã‚¯', 'AcadÃªmico', 'Ð°ÐºÐ°Ð´ÐµÐ¼Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹', 'AcadÃ©mique', 'í•™ìƒ', 'Akademisch', 'Accademico', 'à¸§à¸´à¸Šà¸²à¸à¸²à¸£', 'AkadÃ©miai', 'Academic', 'academic', 'Akademik', 'Akademik', 'Î‘ÎºÎ±Î´Î·Î¼Î±ÏŠÎºÏŒÏ‚', 'Ø¹Ù„Ù…ÛŒ', 'Akademik', 'à°…à°•à°¡à°®à°¿à°•à±', 'à®…à®•à®¾à®Ÿà®®à®¿à®•à¯', 'àª¶à«ˆàª•à«àª·àª£àª¿àª•', 'Akademicki', 'ÐÐºÐ°Ð´ÐµÐ¼Ñ–Ñ‡Ð½Ð¸Ð¹', 'à¨…à¨•à¨¾à¨¦à¨®à¨¿à¨•', 'Academic', 'á€•á€Šá€¬á€›á€±á€¸á€†á€­á€¯á€„á€ºá€›á€¬', 'Ile áº¹ká»', 'Kwalejin', NULL, NULL),
(751, 'vehicle_for_route', 'Vehicle for Route', 'à¦°à§à¦Ÿ à¦¯à¦¾à¦¨à¦¬à¦¾à¦¹à¦¨', 'VehÃ­culo para la ruta', 'Ù…Ø±ÙƒØ¨Ø© Ù„Ù„Ø·Ø±ÙŠÙ‚', 'à¤®à¤¾à¤°à¥à¤— à¤•à¥‡ à¤²à¤¿à¤ à¤µà¤¾à¤¹à¤¨', 'Ø±ÙˆÙ¹ Ú©Û’ Ù„Ø¦Û’ Ú¯Ø§Ú‘ÛŒ', 'è·¯çº¿è½¦è¾†', 'ãƒ«ãƒ¼ãƒˆã®è»Šä¸¡', 'VeÃ­culo para rota', 'ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ð¸Ð»ÑŒ Ð´Ð»Ñ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ð°', 'VÃ©hicule pour Route', 'êµ­ë„ ìš© ì°¨ëŸ‰', 'Fahrzeug fÃ¼r die Route', 'Veicolo per il percorso', 'à¸¢à¸²à¸™à¸žà¸²à¸«à¸™à¸°à¸ªà¸³à¸«à¸£à¸±à¸šà¹€à¸ªà¹‰à¸™à¸—à¸²à¸‡', 'JÃ¡rmÅ± az Ãºtvonalhoz', 'Voertuig voor route', 'Vehiculum itineris', 'Kendaraan untuk Rute', 'GÃ¼zergah iÃ§in araÃ§', 'ÎŸÏ‡Î®Î¼Î±Ï„Î¿Ï‚ Î³Î¹Î± Ï„Î· Î´Î¹Î±Î´ÏÎ¿Î¼Î®', 'ÙˆØ³ÛŒÙ„Ù‡ Ù†Ù‚Ù„ÛŒÙ‡ Ø¨Ø±Ø§ÛŒ Ù…Ø³ÛŒØ±', 'Kenderaan untuk Laluan', 'à°®à°¾à°°à±à°—à°‚ à°•à±‹à°¸à°‚ à°µà°¾à°¹à°¨à°‚', 'à®ªà®¾à®¤à¯ˆà®•à¯à®•à®¾à®© à®µà®¾à®•à®©à®®à¯', 'àª°à«‚àªŸ àª®àª¾àªŸà«‡ àªµàª¾àª¹àª¨', 'Pojazd dla trasy', 'ÐÐ²Ñ‚Ð¾Ð¼Ð¾Ð±Ñ–Ð»ÑŒ Ð´Ð»Ñ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ñƒ', 'à¨°à©‚à¨Ÿ à¨²à¨ˆ à¨µà¨¾à¨¹à¨¨', 'Vehicul pentru traseu', 'á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸á€™á€»á€¬á€¸á€¡á€á€½á€€á€ºá€šá€¬á€‰á€º', 'á»Œká» ayá»káº¹láº¹ fun Itá»sá»na', 'Mota don Hanyar', NULL, NULL),
(752, 'fee', 'Fee', 'à¦«à§€', 'Cuota', 'Ø±Ø³ÙˆÙ…', 'à¤¶à¥à¤²à¥à¤•', 'ÙÛŒØ³', 'è´¹ç”¨', 'è²»ç”¨', 'Taxa', 'Ð¿Ð»Ð°Ñ‚Ð°', 'Frais', 'ë³´ìˆ˜', 'GebÃ¼hr', 'tassa', 'à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡', 'DÃ­j', 'honorarium', 'fee', 'Biaya', 'Ã¼cret', 'Î¤Î­Î»Î·', 'Ù‡Ø²ÛŒÙ†Ù‡', 'Bayaran', 'à°«à±€à°œà±', 'à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àª«à«€', 'OpÅ‚ata', 'ÐšÐ¾Ð¼Ñ–ÑÑ–Ñ', 'à¨«à©€à¨¸', 'taxÄƒ', 'á€€á€¼á€±á€¸', 'Awá»n owo sisan', 'Fee', NULL, NULL),
(753, 'stop_name', 'Stop Name', 'à¦¸à§à¦Ÿà¦ª à¦¨à¦¾à¦®', 'Nombre de parada', 'Ø§Ø³Ù… Ø§Ù„ØªÙˆÙ‚Ù', 'à¤¨à¤¾à¤® à¤¬à¤‚à¤¦ à¤•à¤°à¥‹', 'Ù†Ø§Ù… Ø¨Ù†Ø¯ Ú©Ø±Ùˆ', 'åœæ­¢åç§°', 'åœæ­¢å', 'Parar Nome', 'ÐžÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ð¸Ð¼Ñ', 'ArrÃªter le nom', 'ì´ë¦„ ì¤‘ì§€', 'Stoppen Sie den Namen', 'Arresta il nome', 'à¸Šà¸·à¹ˆà¸­à¸«à¸¢à¸¸à¸”', 'Nevezzen meg nevet', 'Stop Naam', 'nomen subsisto', 'Hentikan Nama', 'AdÄ± Durdur', 'Î”Î¹Î±ÎºÎ¿Ï€Î® Î¿Î½ÏŒÎ¼Î±Ï„Î¿Ï‚', 'Ù†Ø§Ù… ØªÙˆÙ‚Ù', 'Hentikan Nama', 'à°ªà±‡à°°à± à°†à°ªà°‚à°¡à°¿', 'à®ªà¯†à®¯à®°à¯ à®¨à®¿à®±à¯à®¤à¯à®¤à¯', 'àª¨àª¾àª® àª°à«‹àª•à«‹', 'Zatrzymaj nazwÄ™', 'Ð—ÑƒÐ¿Ð¸Ð½Ð¸Ñ‚Ð¸ Ñ–Ð¼Ñ', 'à¨¨à¨¾à¨‚ à¨°à©‹à¨•à©‹', 'OpriÈ›i numele', 'á€¡á€™á€Šá€ºá€›á€•á€ºá€á€”á€ºá€·', 'Duro Oruká»', 'Tsaya sunan', NULL, NULL),
(754, 'stop_km', 'Stop KM', 'à¦¸à§à¦Ÿà¦ª à¦•à§‡ à¦à¦®', 'Detener KM', 'ÙˆÙ‚Ù ÙƒÙ…', 'à¤•à¥‡à¤à¤® à¤¬à¤‚à¤¦ à¤•à¤°à¥‹', 'KM Ø¨Ù†Ø¯ Ú©Ø±Ùˆ', 'åœæ­¢KM', 'KMã‚’åœæ­¢', 'Pare KM', 'Ð¡Ñ‚Ð¾Ð¿ ÐšÐœ', 'ArrÃªtez KM', 'KM ì¤‘ì§€', 'Stoppen Sie KM', 'Stop KM', 'à¸«à¸¢à¸¸à¸” KM', 'Stop KM', 'Stop KM', 'nolite KM', 'Hentikan KM', 'KM durdur', 'Î”Î¹Î±ÎºÎ¿Ï€Î® KM', 'ØªÙˆÙ‚Ù KM', 'Hentikan KM', 'KM à°†à°ªà±', 'KM à® à®¨à®¿à®±à¯à®¤à¯à®¤à®µà¯à®®à¯', 'KM àª°à«‹àª•à«‹', 'Zatrzymaj KM', 'Ð—ÑƒÐ¿Ð¸Ð½Ð¸Ñ‚Ð¸ ÐšÐœ', 'KM à¨°à©‹à¨•à©‹', 'OpriÈ›i KM', 'KM á€›á€•á€ºá€á€”á€ºá€·', 'Duro KM', 'Tsaya KM', NULL, NULL),
(755, 'stop_fare', 'Stop Fare', 'à¦¸à§à¦Ÿà¦ª à¦­à¦¾à¦¡à¦¼à¦¾', 'Detener la tarifa', 'ÙˆÙ‚Ù Ø§Ù„Ø£Ø¬Ø±Ø©', 'à¤•à¤¿à¤°à¤¾à¤¯à¤¾ à¤¬à¤‚à¤¦ à¤•à¤°à¥‹', 'Ú©Ø±Ø§ÛŒÛ Ø¨Ù†Ø¯ Ú©Ø±Ùˆ', 'åœæ­¢ç¥¨ä»·', 'é‹è³ƒã‚’åœæ­¢ã™ã‚‹', 'Parar tarifa', 'ÐžÑÑ‚Ð°Ð½Ð¾Ð²Ð¸Ñ‚ÑŒ Ñ‚Ð°Ñ€Ð¸Ñ„', 'ArrÃªter le tarif', 'ìš´ìž„ í• ì¸', 'Stop Fare', 'Stop Fare', 'à¸«à¸¢à¸¸à¸”à¸„à¹ˆà¸²à¹‚à¸”à¸¢à¸ªà¸²à¸£', 'Stop Fare', 'Stop tarief', 'Bene subsisto', 'Hentikan Tarif', 'Ãœcreti Durdur', 'Î£Ï„Î±Î¼Î±Ï„Î®ÏƒÏ„Îµ Ï„Î¿ Î¦ÏŒÏÎµÎ¼Î±', 'Ú©Ø±Ø§ÛŒÙ‡ Ø±Ø§ Ù…ØªÙˆÙ‚Ù Ú©Ù†ÛŒØ¯', 'Hentikan tambang', 'à°«à±‡à°°à± à°†à°ªà°¿à°µà±‡à°¯à°¿', 'à®ƒà®ªà¯‡à®°à¯ à®¨à®¿à®±à¯à®¤à¯à®¤à¯', 'àª­àª¾àª¡à«àª‚ àª°à«‹àª•à«‹', 'Stop Fare', 'Ð—ÑƒÐ¿Ð¸Ð½Ð¸Ñ‚Ð¸ Ð²Ð°Ñ€Ñ‚Ñ–ÑÑ‚ÑŒ Ð¿Ñ€Ð¾Ñ—Ð·Ð´Ñƒ', 'à¨«à¨¾à¨° à¨°à©‹à¨•à©‹', 'OpriÈ›i tariful', 'stop á€œá€€á€ºá€™á€¾á€á€ºá€á€™á€»á€¬á€¸', 'Duro Iduro', 'Dakatar da Fare', NULL, NULL),
(756, 'add_more', 'Add More', 'à¦†à¦°à§‹ à¦¯à§‹à¦— à¦•à¦°à§‹', 'AÃ±adir mÃ¡s', 'Ø£Ø¶Ù Ø§Ù„Ù…Ø²ÙŠØ¯', 'à¤…à¤§à¤¿à¤• à¤œà¥‹à¤¡à¤¼à¥‡à¤‚', 'Ù…Ø²ÛŒØ¯ Ø´Ø§Ù…Ù„ Ú©Ø±ÛŒÚº', 'æ·»åŠ æ›´å¤š', 'ã•ã‚‰ã«è¿½åŠ ', 'Adicione mais', 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ Ð±Ð¾Ð»ÑŒÑˆÐµ', 'Ajouter plus', 'ë” ì¶”ê°€', 'Mehr hinzufÃ¼gen', 'Aggiungere altro', 'à¹€à¸žà¸´à¹ˆà¸¡à¸­à¸µà¸', 'Adj hozzÃ¡ tÃ¶bbet', 'Voeg meer toe', 'Add More', 'Tambahkan Lebih Banyak', 'Daha ekle', 'Î ÏÏŒÏƒÎ¸ÎµÏƒÎµ Ï€ÎµÏÎ¹ÏƒÏƒÏŒÏ„ÎµÏÎ±', 'Ø§Ø¶Ø§ÙÙ‡ Ú©Ø±Ø¯Ù† Ø¨ÛŒØ´ØªØ±', 'Tambah lebih banyak', 'à°®à°°à°¿à°¨à±à°¨à°¿ à°œà±‹à°¡à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à¯‡à®²à¯à®®à¯ à®šà¯‡à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àªµàª§à« àª‰àª®à«‡àª°à«‹', 'Dodaj wiÄ™cej', 'Ð”Ð¾Ð´Ð°Ñ‚Ð¸ Ð±Ñ–Ð»ÑŒÑˆÐµ', 'à¨¹à©‹à¨° à¨œà©‹à©œà©‹', 'AdÄƒuga mai mult', 'á€”á€±á€¬á€€á€ºá€‘á€•á€º Add', 'Fi Die e sii', 'Æ˜ara Æ˜ari', NULL, NULL),
(757, 'route_stop_fare', 'Route Stop Fare', 'à¦°à§à¦Ÿ à¦¸à§à¦Ÿà¦ª à¦­à¦¾à¦¡à¦¼à¦¾', 'Ruta detener tarifa', 'Route Stop Fare', 'à¤®à¤¾à¤°à¥à¤— à¤¬à¤‚à¤¦ à¤•à¤¿à¤°à¤¾à¤¯à¤¾', 'Ø±ÙˆÙ¹ Ø³Ù¹Ø§Ù¾ Ú©Ø±Ø§ÛŒÛ', 'è·¯çº¿æ­¢æŸç¥¨ä»·', 'ãƒ«ãƒ¼ãƒˆã‚¹ãƒˆãƒƒãƒ—é‹è³ƒ', 'Tarifa de parada de rota', 'ÐœÐ°Ñ€ÑˆÑ€ÑƒÑ‚Ð½Ð°Ñ Ð¾ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ°', 'ItinÃ©raire Tarif darrÃªt', 'ë…¸ì„  ì •ì§€ ìš”ê¸ˆ', 'Route Stop Tarif', 'Route Stop Fare', 'à¸«à¸¢à¸¸à¸”à¸à¸²à¸£à¹€à¸”à¸´à¸™à¸—à¸²à¸‡', 'Ãštvonal leÃ¡llÃ­tÃ¡sa', 'Route stop tarief', 'Bene nolite route', 'Route Stop Fare', 'Rota Durdurma Ãœcreti', 'Î”Î¹Î±ÎºÎ¿Ï€Î® Î´Î¹Î±Î´ÏÎ¿Î¼Î®Ï‚', 'Ù‡Ø²ÛŒÙ†Ù‡ ØªÙˆÙ‚Ù Ù…Ø³ÛŒØ±', 'Bayaran Henti Laluan', 'à°°à±‚à°Ÿà± à°¸à±à°Ÿà°¾à°ªà± à°«à±‡à°°à±', 'à®µà®´à®¿ à®¨à®¿à®±à¯à®¤à¯à®¤à¯ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àª°à«‚àªŸ àª¸à«àªŸà«‹àªª àª«à«‡àª°', 'Cena przejazdu trasy', 'Ð’Ð°Ñ€Ñ‚Ñ–ÑÑ‚ÑŒ Ð·ÑƒÐ¿Ð¸Ð½ÐºÐ¸ Ð¼Ð°Ñ€ÑˆÑ€ÑƒÑ‚Ñƒ', 'à¨°à©‚à¨Ÿ à¨¸à¨Ÿà¨¾à¨ª à¨«à¨°à¨¾à¨ˆ', 'Traseul opri tariful', 'á€œá€™á€ºá€¸á€€á€¼á€±á€¬á€„á€ºá€¸ Stop á€œá€€á€ºá€™á€¾á€á€ºá€á€™á€»á€¬á€¸', 'Ilana Duro Itá»sá»na', 'fitar da Tsaya Tsaya', NULL, NULL),
(758, 'next_year', 'Next Year', 'à¦†à¦—à¦¾à¦®à§€ à¦¬à¦›à¦°', 'El prÃ³ximo aÃ±o', 'Ø§Ù„Ø¹Ø§Ù… Ø§Ù„Ù‚Ø§Ø¯Ù…', 'à¤…à¤—à¤²à¥‡ à¤µà¤°à¥à¤·', 'Ø§Ú¯Ù„Û’ Ø³Ø§Ù„', 'æ˜Žå¹´', 'æ¥å¹´', 'PrÃ³ximo ano', 'Ð¡Ð»ÐµÐ´ÑƒÑŽÑ‰Ð¸Ð¹ Ð³Ð¾Ð´', 'LannÃ©e prochaine', 'ë‚´ë…„', 'NÃ¤chstes Jahr', 'Lanno prossimo', 'à¸›à¸µà¸«à¸™à¹‰à¸²', 'KÃ¶vetkezÅ‘ Ã©v', 'Volgend jaar', 'Proximo anno', 'Tahun depan', 'Gelecek yÄ±l', 'Î¤Î¿Ï… Ï‡ÏÏŒÎ½Î¿Ï…', 'Ø³Ø§Ù„ Ø¢ÛŒÙ†Ø¯Ù‡', 'Tahun hadapan', 'à°µà°šà±à°šà±‡ à°¸à°‚à°µà°¤à±à°¸à°°à°‚', 'à®…à®Ÿà¯à®¤à¯à®¤ à®µà®°à¯à®Ÿà®®à¯', 'àª†àª—àª¾àª®à«€ àªµàª°à«àª·', 'NastÄ™pny rok', 'ÐÐ°ÑÑ‚ÑƒÐ¿Ð½Ð¾Ð³Ð¾ Ñ€Ð¾ÐºÑƒ', 'à¨…à¨—à¨²à©‡ à¨¸à¨¾à¨²', 'Anul urmator', 'á€”á€±á€¬á€€á€ºá€”á€¾á€…á€º', 'Odun to nbo', 'Kashe na gaba', NULL, NULL),
(759, 'manage_next_year_student', 'Manage Next Year Student', 'à¦ªà¦°à¦¬à¦°à§à¦¤à§€ à¦¬à¦›à¦° à¦›à¦¾à¦¤à§à¦° à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar estudiante del prÃ³ximo aÃ±o', 'Ø¥Ø¯Ø§Ø±Ø© Ø·Ø§Ù„Ø¨ Ø§Ù„Ø¹Ø§Ù… Ø§Ù„Ù‚Ø§Ø¯Ù…', 'à¤…à¤—à¤²à¥‡ à¤µà¤°à¥à¤· à¤›à¤¾à¤¤à¥à¤° à¤•à¥‹ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø§Ú¯Ù„Û’ Ø³Ø§Ù„ Ú©Û’ Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©Ø§ Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ˜Žå¹´å­¦ç”Ÿ', 'æ¥å¹´ã®å­¦ç”Ÿã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar o aluno do prÃ³ximo ano', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð¡Ñ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð¼ ÑÐ»ÐµÐ´ÑƒÑŽÑ‰ÐµÐ³Ð¾ Ð³Ð¾Ð´Ð°', 'GÃ©rer lÃ©tudiant de lannÃ©e prochaine', 'ë‹¤ìŒ í•™ë…„ í•™ìƒ ê´€ë¦¬', 'Verwalten Sie nÃ¤chstes Jahr Student', 'Gestisci studente del prossimo anno', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸™à¸±à¸à¸¨à¸¶à¸à¸©à¸²à¸›à¸µà¸–à¸±à¸”à¹„à¸›', 'A kÃ¶vetkezÅ‘ Ã©v hallgatÃ³jÃ¡nak kezelÃ©se', 'Volgend jaar student beheren', 'Curo Next Year Student', 'Kelola Siswa Tahun Depan', 'Gelecek YÄ±l Ã–ÄŸrenci YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï†Î¿Î¹Ï„Î·Ï„Î®Ï‚ ÎµÏ€ÏŒÎ¼ÎµÎ½Î¿Ï… Î­Ï„Î¿Ï…Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª Ø¯Ø§Ù†Ø´ Ø¢Ù…ÙˆØ² Ø³Ø§Ù„ Ø¢ÛŒÙ†Ø¯Ù‡', 'Mengurus Pelajar Tahun Depan', 'à°¤à°¦à±à°ªà°°à°¿ à°‡à°¯à°°à± à°¸à±à°Ÿà±‚à°¡à±†à°‚à°Ÿà±à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®…à®Ÿà¯à®¤à¯à®¤ à®†à®£à¯à®Ÿà¯ à®®à®¾à®£à®µà®°à¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àª†àª—àª¾àª®à«€ àªµàª°à«àª· àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€ àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj przyszÅ‚ym studentem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ð¾Ð¼ Ð½Ð°ÑÑ‚ÑƒÐ¿Ð½Ð¾Ð³Ð¾ Ñ€Ð¾ÐºÑƒ', 'à¨…à¨—à¨²à©‡ à¨¸à¨¾à¨² à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€ à¨¦à¨¾ à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à©‹', 'GestionaÈ›i elevul anului viitor', 'Next á€€á€­á€¯á€á€…á€ºá€”á€¾á€…á€ºá€á€¬á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso awá»n á»má»-iwe tÃ³kÃ n', 'Sarrafa ÆŠabban Kashe na gaba', NULL, NULL),
(760, 'enter_purchase_code', 'Enter Purchase Code', 'à¦•à§à¦°à¦¯à¦¼ à¦•à§‹à¦¡ à¦²à¦¿à¦–à§à¦¨', 'Ingrese el cÃ³digo de compra', 'Ø£Ø¯Ø®Ù„ Ø±Ù…Ø² Ø§Ù„Ø´Ø±Ø§Ø¡', 'à¤–à¤°à¥€à¤¦ à¤•à¥‹à¤¡ à¤¦à¤°à¥à¤œ à¤•à¤°à¥‡à¤‚', 'Ø®Ø±ÛŒØ¯Ø§Ø±ÛŒ Ú©ÙˆÚˆ Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº', 'è¾“å…¥è´­ä¹°ä»£ç ', 'è³¼å…¥ã‚³ãƒ¼ãƒ‰ã‚’å…¥åŠ›', 'Digite o cÃ³digo de compra', 'Ð’Ð²ÐµÐ´Ð¸Ñ‚Ðµ ÐºÐ¾Ð´ Ð¿Ð¾ÐºÑƒÐ¿ÐºÐ¸', 'Entrer le code dachat', 'êµ¬ë§¤ ì½”ë“œ ìž…ë ¥', 'Geben Sie den Kaufcode ein', 'Inserisci il codice di acquisto', 'à¸›à¹‰à¸­à¸™à¸£à¸«à¸±à¸ªà¸à¸²à¸£à¸ªà¸±à¹ˆà¸‡à¸‹à¸·à¹‰à¸­', 'Ãrja be a beszerzÃ©si kÃ³dot', 'Voer de aankoopcode in', 'Enter code Purchase', 'Masukkan Kode Pembelian', 'SatÄ±nalma kodunu giriniz', 'Î•Î¹ÏƒÎ±Î³Î¬Î³ÎµÏ„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ Î±Î³Î¿ÏÎ¬Ï‚', 'Ú©Ø¯ Ø®Ø±ÛŒØ¯ Ø±Ø§ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯', 'Masukkan Kod Pembelian', 'à°•à±Šà°¨à±à°—à±‹à°²à± à°•à±‹à°¡à±à°¨à± à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿', 'à®•à¯Šà®³à¯à®®à¯à®¤à®²à¯ à®•à¯‹à®Ÿà¯ à®‰à®³à¯à®³à®¿à®Ÿà®µà¯à®®à¯', 'àª–àª°à«€àª¦à«€ àª•à«‹àª¡ àª¦àª¾àª–àª² àª•àª°à«‹', 'WprowadÅº kod zakupu', 'Ð’Ð²ÐµÐ´Ñ–Ñ‚ÑŒ ÐºÐ¾Ð´ Ð¿Ð¾ÐºÑƒÐ¿ÐºÐ¸', 'à¨–à¨°à©€à¨¦ à¨•à©‹à¨¡ à¨¦à¨¾à¨–à¨² à¨•à¨°à©‹', 'IntroduceÈ›i codul de cumpÄƒrare', 'á€¡á€›á€…á€ºá€€á€» Code á€€á€­á€¯á€›á€­á€¯á€€á€ºá€‘á€Šá€ºá€·á€•á€«', 'Táº¹ koodu rira', 'Shigar da Dokar Siya', NULL, NULL),
(761, 'purchase_code', 'Purchase Code', 'à¦•à§à¦°à¦¯à¦¼ à¦•à§‹à¦¡', 'CÃ³digo de compra', 'ÙƒÙˆØ¯ Ø´Ø±Ø§Ø¡', 'à¤–à¤°à¥€à¤¦ à¤•à¥‹à¤¡', 'Ø®Ø±ÛŒØ¯Ø§Ø±ÛŒ Ú©ÙˆÚˆ', 'è´­ä¹°ä»£ç ', 'è³¼å…¥ã‚³ãƒ¼ãƒ‰', 'CÃ³digo de Compra', 'ÐšÐ¾Ð´ Ð¿Ð¾ÐºÑƒÐ¿ÐºÐ¸', 'Code dachat', 'êµ¬ë§¤ ì½”ë“œ', 'Kaufcode', 'Codice dacquisto', 'à¸£à¸«à¸±à¸ªà¸à¸²à¸£à¸ªà¸±à¹ˆà¸‡à¸‹à¸·à¹‰à¸­', 'VÃ¡sÃ¡rlÃ¡si kÃ³d', 'Aankoopcode', 'Purchase Code', 'Kode Pembelian', 'SatÄ±n alma kodu', 'ÎšÏ‰Î´Î¹ÎºÏŒÏ‚ Î±Î³Î¿ÏÎ¬Ï‚', 'Ú©Ø¯ Ø®Ø±ÛŒØ¯', 'Kod Pembelian', 'à°•à±Šà°¨à±à°—à±‹à°²à± à°•à±‹à°¡à±', 'à®•à¯Šà®³à¯à®®à¯à®¤à®²à¯ à®•à¯‹à®Ÿà¯', 'àª–àª°à«€àª¦à«€ àª•à«‹àª¡', 'Kup kod', 'ÐšÐ¾Ð´ Ð¿Ð¾ÐºÑƒÐ¿Ð¾Ðº', 'à¨–à¨°à©€à¨¦ à¨•à©‹à¨¡', 'Codul de cumpÄƒrare', 'á€¡á€›á€…á€ºá€€á€» Code á€€á€­á€¯', 'Koodu rira', 'Katin sayen', NULL, NULL),
(762, 'parent', 'Parent', 'à¦ªà¦¿à¦¤à¦¾à¦®à¦¾à¦¤à¦¾', 'Padre', 'Ø§Ù„Ø£Ø¨ÙˆÙŠÙ†', 'à¤®à¤¾à¤¤à¤¾-à¤ªà¤¿à¤¤à¤¾', 'ÙˆØ§Ù„Ø¯ÛŒÙ†', 'äº²', 'è¦ª', 'Pai', 'Ñ€Ð¾Ð´Ð¸Ñ‚ÐµÐ»ÑŒ', 'Parent', 'ë¶€ëª¨ì˜', 'Elternteil', 'Genitore', 'à¸œà¸¹à¹‰à¸›à¸à¸„à¸£à¸­à¸‡', 'SzÃ¼lÅ‘', 'Ouder', 'parens', 'Induk', 'ebeveyn', 'ÎœÎ·Ï„ÏÎ¹ÎºÎ® ÎµÏ„Î±Î¹ÏÎµÎ¯Î±', 'ÙˆØ§Ù„Ø¯ÛŒÙ†', 'Ibu bapa', 'à°®à°¾à°¤à±ƒ', 'à®ªà¯†à®±à¯à®±à¯‡à®¾à®°à¯', 'àª®àª¾àª¤àª¾àªªàª¿àª¤àª¾', 'Rodzic', 'Ð‘Ð°Ñ‚ÑŒÐºÐ¾', 'à¨®à¨¾à¨ªà©‡', 'MamÄƒ', 'á€™á€­á€˜', 'Obi', 'Uba', NULL, NULL),
(763, 'written', 'Written', 'à¦²à¦¿à¦–à¦¿à¦¤', 'Escrito', 'Ù…ÙƒØªÙˆØ¨', 'à¤²à¤¿à¤–à¤¾ à¤¹à¥à¤†', 'Ù„Ú©Ú¾Ø§ ÛÙˆØ§', 'ä¹¦é¢', 'æ›¸ã‹ã‚ŒãŸ', 'Escrito', 'Ð½Ð°Ð¿Ð¸ÑÐ°Ð½Ð¾', 'Ã‰crit', 'ì“´', 'Geschrieben', 'Scritto', 'à¹€à¸‚à¸µà¸¢à¸™', 'Ãrott', 'Geschreven', 'Scriptum', 'Tertulis', 'YazÄ±lÄ±', 'Î“ÏÎ±Ï€Ï„ÏŒÏ‚', 'Ù†ÙˆØ´ØªÙ‡ Ø´Ø¯Ù‡ Ø§Ø³Øª', 'Ditulis', 'à°°à°¾à°¸à°¿à°¨', 'à®Žà®´à¯à®¤à®ªà¯à®ªà®Ÿà¯à®Ÿà®¤à¯', 'àª²àª–à«‡àª²à«àª‚', 'Pisemny', 'ÐÐ°Ð¿Ð¸ÑÐ°Ð½Ð¾', 'à¨²à¨¿à¨–à¨¿à¨† à¨—à¨¿à¨†', 'Scris', 'Written', 'Ká»we', 'An rubuta', NULL, NULL),
(764, 'practical', 'Practical', 'à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦¿à¦•', 'PrÃ¡ctico', 'Ø¹Ù…Ù„ÙŠ', 'à¤µà¥à¤¯à¤¾à¤µà¤¹à¤¾à¤°à¤¿à¤•', 'Ø¹Ù…Ù„ÛŒ', 'å®žé™…çš„', 'å®Ÿè·µçš„', 'PrÃ¡tico', 'Ð¿Ñ€Ð°ÐºÑ‚Ð¸Ñ‡ÐµÑÐºÐ¸Ð¹', 'Pratique', 'ì‹¤ìš©ì ì¸', 'Praktisch', 'pratico', 'à¸›à¸£à¸°à¸¢à¸¸à¸à¸•à¹Œ', 'Gyakorlati', 'praktisch', 'practical', 'Praktis', 'Pratik', 'Î ÏÎ±ÎºÏ„Î¹ÎºÏŒÏ‚', 'Ú©Ø§Ø±Ø¨Ø±Ø¯ÛŒ', 'Praktikal', 'à°ªà±à°°à°¾à°•à±à°Ÿà°¿à°•à°²à±', 'à®¨à®Ÿà¯ˆà®®à¯à®±à¯ˆ', 'àªªà«àª°àª¾àª¯à«‹àª—àª¿àª•', 'Praktyczny', 'ÐŸÑ€Ð°ÐºÑ‚Ð¸Ñ‡Ð½Ð¸Ð¹', 'à¨µà¨¿à¨¹à¨¾à¨°à¨•', 'Practic', 'á€œá€€á€ºá€á€½á€±á€·', 'Ilowo', 'M', NULL, NULL),
(765, 'tutorial', 'Tutorial', 'à¦Ÿà¦¿à¦‰à¦Ÿà¦°à¦¿à¦†à¦²', 'Tutorial', 'Ø§Ù„Ø¯ÙˆØ±Ø© Ø§Ù„ØªØ¹Ù„ÙŠÙ…ÙŠØ©', 'à¤Ÿà¥à¤¯à¥‚à¤Ÿà¥‹à¤°à¤¿à¤¯à¤²', 'Ø³Ø¨Ù‚', 'æ•™ç¨‹', 'ãƒãƒ¥ãƒ¼ãƒˆãƒªã‚¢ãƒ«', 'Tutorial', 'Ð ÑƒÐºÐ¾Ð²Ð¾Ð´ÑÑ‚Ð²Ð¾', 'Didacticiel', 'ì§€ë„ ì‹œê°„', 'Tutorial', 'lezione', 'à¹€à¸à¸µà¹ˆà¸¢à¸§à¸à¸±à¸šà¸à¸²à¸£à¸ªà¸­à¸™', 'oktatÃ³i', 'Tutorial', 'doceo', 'Tutorial', 'EÄŸitimi', 'Î¦ÏÎ¿Î½Ï„Î¹ÏƒÏ„Î®ÏÎ¹Î¿', 'Ø¢Ù…ÙˆØ²Ø´', 'Tutorial', 'à°Ÿà±à°¯à±à°Ÿà±‹à°°à°¿à°¯à°²à±', 'à®ªà®¯à®¿à®±à¯à®šà®¿', 'àªŸà«àª¯à«àªŸà«‹àª°à«€àª¯àª²', 'Seminarium', 'ÐŸÑ–Ð´Ñ€ÑƒÑ‡Ð½Ð¸Ðº', 'à¨Ÿà¨¿à¨Šà¨Ÿà©‹à¨°à¨¿à¨…à¨²', 'Tutorial', 'tutorial', 'Ibaá¹£epá»', 'Koyawa', NULL, NULL),
(766, 'viva', 'Viva', 'à¦­à¦¾à¦‡à¦­à¦¾', 'Viva', 'ØªØ­ÙŠØ§', 'à¤¸à¤²à¤¾à¤®', 'Ø²Ø¨Ø§Ù†ÛŒ', 'æ¬¢å‘¼å£°', 'ãƒ“ãƒ', 'Viva', 'Ð´Ð° Ð·Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐµÑ‚', 'Viva', 'ë§Œì„¸', 'Viva', 'Viva', 'à¸‚à¸­à¹ƒà¸«à¹‰à¸¡à¸µà¸­à¸²à¸¢à¸¸à¸¢à¸·à¸™à¸¢à¸²à¸§', 'Ã©ljen', 'Viva', 'Vivaldi', 'Viva', 'sÃ¶zlÃ¼', 'Viva', 'ÙˆÛŒÙˆØ§', 'Viva', 'à°µà°¿à°µà°¾', 'à®µà®¿à®µà®¾', 'àªµàª¿àªµàª¾', 'Wiwat', 'Ð’Ñ–Ð²Ð°', 'à¨µà¨¿à¨µà¨¾', 'Viva', 'Viva', 'Viva', 'Viva', NULL, NULL),
(767, 'mark', 'Mark', 'à¦®à¦¾à¦°à§à¦•', 'marca', 'Ø¹Ù„Ø§Ù…Ø©', 'à¤¨à¤¿à¤¶à¤¾à¤¨', 'Ù…Ø§Ø±Ú©', 'æ ‡è®°', 'ãƒžãƒ¼ã‚¯', 'Marca', 'Ð¾Ñ‚Ð¼ÐµÑ‚ÐºÐ°', 'marque', 'í‘œ', 'Kennzeichen', 'marchio', 'à¹€à¸„à¸£à¸·à¹ˆà¸­à¸‡à¸«à¸¡à¸²à¸¢', 'Mark', 'Mark', 'Evangelium secundum Marcum', 'Menandai', 'iÅŸaret', 'Î£Î·Î¼Î¬Î´Î¹', 'Ø¹Ù„Ø§Ù…Øª', 'Mark', 'à°®à°¾à°°à±à°•à±', 'à®®à®¾à®°à¯à®•à¯', 'àªšàª¿àª¹à«àª¨', 'znak', 'ÐœÐ°Ñ€ÐºÐ°', 'à¨®à¨¾à¨°à¨•', 'marcÄƒ', 'á€¡á€™á€¾á€á€º', 'Samisi', 'Mark', NULL, NULL),
(768, 'obtain', 'Obtain', 'à¦ªà§à¦°à¦¾à¦ªà§à¦¤', 'Obtener', 'Ø§Ù„Ø­ØµÙˆÙ„ Ø¹Ù„Ù‰', 'à¤ªà¥à¤°à¤¾à¤ªà¥à¤¤', 'Ø­Ø§ØµÙ„ Ú©Ø±ÛŒÚº', 'èŽ·å¾—', 'å…¥æ‰‹ã—ã¾ã™', 'Obtivermos', 'Ð¿Ð¾Ð»ÑƒÑ‡Ð°Ñ‚ÑŒ', 'Obtenir', 'ì–»ë‹¤', 'Erhalten', 'Ottenere', 'à¹„à¸”à¹‰à¸£à¸±à¸š', 'Szerezze', 'Verkrijgen', 'Vitam', 'Memperoleh', 'elde etmek', 'Î‘Ï€Î¿ÎºÏ„ÏŽ', 'Ø¨Ù‡ Ø¯Ø³Øª Ø¢ÙˆØ±Ø¯Ù†', 'Dapatkan', 'à°ªà±Šà°‚à°¦à°Ÿà°¾à°¨à°¿à°•à°¿', 'à®ªà¯†à®±à¯à®¤à®²à¯', 'àª®à«‡àª³àªµà«‹', 'UzyskaÄ‡', 'ÐžÑ‚Ñ€Ð¸Ð¼Ð°Ñ‚Ð¸', 'à¨ªà©à¨°à¨¾à¨ªà¨¤ à¨•à¨°à©‹', 'ObÈ›ine', 'á€›á€›á€¾á€­á€žá€Šá€º', 'Gba', 'Samun', NULL, NULL),
(769, 'result_card', 'Result Card', 'à¦«à¦²à¦¾à¦«à¦² à¦•à¦¾à¦°à§à¦¡', 'Tarjeta de resultado', 'Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ù†ØªÙŠØ¬Ø©', 'à¤ªà¤°à¤¿à¤£à¤¾à¤® à¤•à¤¾à¤°à¥à¤¡', 'Ù†ØªÛŒØ¬Û Ú©Ø§Ø±Úˆ', 'ç»“æžœå¡', 'çµæžœã‚«ãƒ¼ãƒ‰', 'CartÃ£o de Resultado', 'ÐšÐ°Ñ€Ñ‚Ð° Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð¾Ð²', 'Carte de rÃ©sultat', 'ê²°ê³¼ ì¹´ë“œ', 'Ergebniskarte', 'Scheda dei risultati', 'à¸à¸²à¸£à¹Œà¸”à¸œà¸¥à¸¥à¸±à¸žà¸˜à¹Œ', 'EredmÃ©nykÃ¡rtya', 'Resultaatkaart', 'effectus Card', 'Kartu Hasil', 'SonuÃ§ KartÄ±', 'ÎšÎ¬ÏÏ„Î± Î±Ï€Î¿Ï„ÎµÎ»ÎµÏƒÎ¼Î¬Ï„Ï‰Î½', 'Ù†ØªÛŒØ¬Ù‡ Ú©Ø§Ø±Øª', 'Kad Keputusan', 'à°«à°²à°¿à°¤à°‚ à°•à°¾à°°à±à°¡à±', 'à®®à¯à®Ÿà®¿à®µà¯ à®…à®Ÿà¯à®Ÿà¯ˆ', 'àªªàª°àª¿àª£àª¾àª® àª•àª¾àª°à«àª¡', 'Karta wynikÃ³w', 'Ð ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚ ÐºÐ°Ñ€Ñ‚ÐºÐ¸', 'à¨¨à¨¤à©€à¨œà¨¾ à¨•à¨¾à¨°à¨¡', 'Cardul de rezultate', 'á€›á€œá€’á€º Card á€€á€­á€¯', 'Kaadi Kaadi', 'Katin Amintacce', NULL, NULL),
(770, 'bus_stop', 'Bus Stop', 'à¦¬à¦¾à¦¸ à¦¸à§à¦Ÿà¦ª', 'Parada de autobÃºs', 'Ù…ÙˆÙ‚Ù Ø¨Ø§Øµ', 'à¤¬à¤¸ à¤¸à¥à¤Ÿà¥‰à¤ª', 'Ø¨Ø³ Ø§Ø³Ù¹Ø§Ù¾', 'å…¬äº¤è½¦ç«™', 'ãƒã‚¹åœ', 'Ponto de Ã´nibus', 'ÐÐ²Ñ‚Ð¾Ð±ÑƒÑÐ½Ð°Ñ Ð¾ÑÑ‚Ð°Ð½Ð¾Ð²ÐºÐ°', 'ArrÃªt de bus', 'ë²„ìŠ¤ ì •ë¥˜ìž¥', 'Bushaltestelle', 'Fermata dellautobus', 'à¸›à¹‰à¸²à¸¢à¸£à¸–à¹€à¸¡à¸¥à¹Œ', 'BuszmegÃ¡llÃ³', 'Bushalte', 'bus Sistere', 'Pemberhentian bus', 'OtobÃ¼s duraÄŸÄ±', 'Î£Ï„Î¬ÏƒÎ· Î»ÎµÏ‰Ï†Î¿ÏÎµÎ¯Î¿Ï…', 'Ø§ÛŒØ³ØªÚ¯Ø§Ù‡ Ø§ØªÙˆØ¨ÙˆØ³', 'Perhentian bas', 'à°¬à°¸à± à°¸à±à°Ÿà°¾à°ªà±', 'à®ªà¯‡à®°à¯à®¨à¯à®¤à¯ à®¨à®¿à®±à¯à®¤à¯à®¤à®®à¯', 'àª¬àª¸ àª¸à«àªŸà«‹àªª', 'Przystanek autobusowy', 'ÐÐ²Ñ‚Ð¾Ð±ÑƒÑÐ½Ð° Ð·ÑƒÐ¿Ð¸Ð½ÐºÐ°', 'à¨¬à©±à¨¸ à¨…à©±à¨¡à¨¾', 'StaÈ›ie de autobuz', 'á€˜á€á€ºá€…á€ºá€€á€¬á€¸á€™á€¾á€á€ºá€á€­á€¯á€„á€º', 'Ibudo oko', 'Bus Stop', NULL, NULL),
(771, 'grade', 'Grade', 'à¦—à§à¦°à§‡à¦¡', 'Grado', 'Ø¯Ø±Ø¬Ø©', 'à¤—à¥à¤°à¥‡à¤¡', 'Ú¯Ø±ÛŒÚˆ', 'å¹´çº§', 'ã‚°ãƒ¬ãƒ¼ãƒ‰', 'Grau', 'ÐºÐ»Ð°ÑÑ', 'QualitÃ©', 'í•™ë…„', 'Klasse', 'Grado', 'à¹€à¸à¸£à¸”', 'Fokozat', 'Rang', 'gradus', 'Kelas', 'sÄ±nÄ±f', 'Î’Î±Î¸Î¼ÏŒÏ‚', 'Ù…Ù‚Ø·Ø¹ ØªØ­ØµÛŒÙ„ÛŒ', 'Gred', 'à°—à±à°°à±‡à°¡à±', 'à®¤à®°', 'àª—à«àª°à«‡àª¡', 'StopieÅ„', 'ÐžÑ†Ñ–Ð½ÐºÐ°', 'à¨—à¨°à©‡à¨¡', 'calitate', 'grade', 'Ipele', 'Grade', NULL, NULL),
(772, 'point', 'Point', 'à¦ªà§Ÿà§‡à¦¨à§à¦Ÿ', 'Punto', 'Ù†Ù‚Ø·Ø©', 'à¤¬à¤¿à¤‚à¤¦à¥', 'Ù¾ÙˆØ§Ø¦Ù†Ù¹', 'ç‚¹', 'ãƒã‚¤ãƒ³ãƒˆ', 'Ponto', 'Ñ‚Ð¾Ñ‡ÐºÐ°', 'Point', 'í¬ì¸íŠ¸', 'Punkt', 'Punto', 'à¸ˆà¸¸à¸”', 'Pont', 'Punt', 'Point', 'Titik', 'Puan', 'Î£Î·Î¼ÎµÎ¯Î¿', 'Ù†Ù‚Ø·Ù‡', 'Titik', 'à°ªà°¾à°¯à°¿à°‚à°Ÿà±', 'à®ªà¯à®³à¯à®³à®¿', 'àª¬àª¿àª‚àª¦à«', 'Punkt', 'Ð¢Ð¾Ñ‡ÐºÐ°', 'à¨¬à¨¿à©°à¨¦à©‚', 'Punct', 'á€¡á€™á€¾á€á€º', 'Ojuami', 'Point', NULL, NULL),
(773, 'lowest', 'Lowest', 'à¦¸à¦°à§à¦¬à¦¨à¦¿à¦®à§à¦¨', 'MÃ¡s bajo', 'Ø£Ø¯Ù†Ù‰', 'à¤¸à¤¬à¤¸à¥‡ à¤•à¤®', 'Ø³Ø¨ Ø³Û’ Ú©Ù…', 'æœ€ä½Ž', 'æœ€ä½Ž', 'Menor', 'Ð½Ð¸Ð·ÑˆÐ¸Ð¹', 'Le plus bas', 'ìµœì €', 'Niedrigste', 'minore', 'à¸•à¹ˆà¸³à¸—à¸µà¹ˆà¸ªà¸¸à¸”', 'A legalacsonyabb', 'laagste', 'lowest', 'Terendah', 'En dÃ¼ÅŸÃ¼k', 'Î§Î±Î¼Î·Î»ÏŒÏ„ÎµÏÎ¿', 'Ù¾Ø§ÛŒÛŒÙ† ØªØ±ÛŒÙ†', 'Terendah', 'à°…à°¤à±à°¯à°²à±à°ª', 'à®•à¯à®±à¯ˆà®¨à¯à®¤', 'àª¨à«àª¯à«‚àª¨àª¤àª®', 'NajniÅ¼szy', 'ÐÐ°Ð¹Ð¼ÐµÐ½ÑˆÐ¸Ð¹', 'à¨¸à¨­ à¨¤à©‹à¨‚ à¨˜à©±à¨Ÿ', 'Cel mai mic', 'á€”á€­á€™á€ºá€·á€†á€¯á€¶á€¸', 'Ti o kere julá»', 'Æ˜ananan', NULL, NULL),
(774, 'height', 'Height', 'à¦¸à¦°à§à¦¬à§‹à¦šà§à¦š', 'Altura', 'Ø§Ø±ØªÙØ§Ø¹', 'à¤Šà¤‚à¤šà¤¾à¤ˆ', 'Ø§ÙˆÙ†Ú†Ø§Ø¦ÛŒ', 'é«˜åº¦', 'é«˜ã•', 'Altura', 'Ð’Ñ‹ÑÐ¾Ñ‚Ð°', 'la taille', 'ì‹ ìž¥', 'HÃ¶he', 'Altezza', 'à¸„à¸§à¸²à¸¡à¸ªà¸¹à¸‡', 'MagassÃ¡g', 'Hoogte', 'altitudo', 'Tinggi', 'YÃ¼kseklik', 'Î¥ÏˆÎ¿Ï‚', 'Ø§Ø±ØªÙØ§Ø¹', 'Ketinggian', 'à°Žà°¤à±à°¤à±', 'à®‰à®¯à®°à®®à¯', 'àªŠàª‚àªšàª¾àªˆ', 'WysokoÅ›Ä‡', 'Ð’Ð¸ÑÐ¾Ñ‚Ð°', 'à¨•à©±à¨¦', 'ÃŽnÄƒlÅ£ime', 'á€¡á€™á€¼á€„á€·á€º', 'Iga', 'Hawan', NULL, NULL),
(775, 'position', 'Position', 'à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨', 'PosiciÃ³n', 'Ù…ÙˆØ¶Ø¹', 'à¤ªà¤¦', 'Ù…Ù‚Ø§Ù…', 'ä½ç½®', 'Position', 'PosiÃ§Ã£o', 'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ', 'Position', 'ìœ„ì¹˜', 'Position', 'Posizione', 'à¸•à¸³à¹à¸«à¸™à¹ˆà¸‡', 'PozÃ­ciÃ³', 'Positie', 'statum', 'Posisi', 'pozisyon', 'Î˜Î­ÏƒÎ·', 'Ù…ÙˆÙ‚Ø¹ÛŒØª', 'Jawatan', 'à°¸à±à°¥à°¾à°¨à°‚', 'à®¨à®¿à®²à¯ˆ', 'àªªà«‹àªàª¿àª¶àª¨', 'Pozycja', 'ÐŸÐ¾Ð·Ð¸Ñ†Ñ–Ñ', 'à¨¸à¨¥à¨¿à¨¤à©€', 'PoziÅ£ie', 'á€›á€¬á€‘á€°á€¸', 'Ipo', 'Matsayi', NULL, NULL),
(776, 'merit_list', 'Merit List', 'à¦®à§‡à¦§à¦¾ à¦¤à¦¾à¦²à¦¿à¦•à¦¾', 'Lista de mÃ©rito', 'Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø§Ø³ØªØ­Ù‚Ø§Ù‚', 'à¤®à¥‡à¤°à¤¿à¤Ÿ à¤¸à¥‚à¤šà¥€', 'Ù…ÛŒØ±Ù¹ Ú©ÛŒ ÙÛØ±Ø³Øª', 'ä¼˜ç‚¹åˆ—è¡¨', 'ãƒ¡ãƒªãƒƒãƒˆãƒªã‚¹ãƒˆ', 'Lista de MÃ©rito', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð·Ð°ÑÐ»ÑƒÐ³', 'Liste de mÃ©rite', 'ìž¥ì  ëª©ë¡', 'Leistungsliste', 'Lista dei Meriti', 'à¸£à¸²à¸¢à¸Šà¸·à¹ˆà¸­à¸šà¸¸à¸', 'Ã‰rdemjegy', 'Merit List', 'merito List', 'Daftar Kelebihan', 'Liyakat listesi', 'Î›Î¯ÏƒÏ„Î± Î±Î¾Î¹ÏŽÎ½', 'ÙÙ‡Ø±Ø³Øª Ø´Ø§ÛŒØ³ØªÚ¯ÛŒ', 'Senarai Merit', 'à°®à±†à°°à°¿à°Ÿà± à°œà°¾à°¬à°¿à°¤à°¾', 'à®¤à®•à¯à®¤à®¿ à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à¯', 'àª®à«‡àª°àª¿àªŸ àª²àª¿àª¸à«àªŸ', 'Lista zasÅ‚uÅ¼onych', 'Ð¡Ð¿Ð¸ÑÐ¾Ðº Ð·Ð°ÑÐ»ÑƒÐ³', 'à¨®à©ˆà¨°à¨¿à¨Ÿ à¨²à¨¿à¨¸à¨Ÿ', 'Lista de merit', 'á€€á€±á€¬á€„á€ºá€¸á€™á€¾á€¯á€€á€¯á€žá€­á€¯á€œá€ºá€™á€»á€¬á€¸á€…á€¬á€›á€„á€ºá€¸', 'Ã€tÃ²ká» áº¸rá»', 'Lissafin Æ˜asa', NULL, NULL),
(777, 'passed', 'Passed', 'à¦‰à¦¤à§à¦¤à§€à¦°à§à¦£', 'Pasado', 'Ù…Ø±Øª', 'à¤¬à¥€à¤¤à¤¨à¥‡ à¤•à¥‡', 'Ù…Ù†Ø¸ÙˆØ±', 'é€šè¿‡', 'åˆæ ¼', 'Passado', 'ÐŸÑ€Ð¾ÑˆÐ»Ð¾', 'PassÃ©', 'í•©ê²©', 'Bestanden', 'Passato', 'à¸œà¹ˆà¸²à¸™', 'elmÃºlt', 'Geslaagd', 'transierunt', 'Lulus', 'geÃ§ti', 'Î Î­ÏÎ±ÏƒÎµ', 'Ú¯Ø°Ø´Øª', 'Lulus', 'Passed', 'à®•à®Ÿà®¨à¯à®¤à¯', 'àªªàª¸àª¾àª° àª¥àªˆ', 'PrzeszedÅ‚', 'ÐŸÑ€Ð¾Ð¹Ð´ÐµÐ½Ð¾', 'à¨ªà¨¾à¨¸ à¨¹à©‹à¨‡à¨†', 'A trecut', 'á€œá€½á€”á€º', 'Ti ká»ja', 'An wuce', NULL, NULL),
(778, 'failed', 'Failed', 'à¦¬à§à¦¯à¦°à§à¦¥', 'Ha fallado', 'ÙØ´Ù„', 'à¤…à¤¨à¥à¤¤à¥à¤¤à¥€à¤°à¥à¤£ à¤¹à¥‹à¤¨à¤¾', 'Ù†Ø§Ú©Ø§Ù…', 'å¤±è´¥', 'å¤±æ•—', 'Falhou', 'ÐÐµ ÑÐ¼Ð¾Ð³Ð»Ð¸', 'Ã‰chouÃ©', 'ì‹¤íŒ¨í•œ', 'Gescheitert', 'mancato', 'à¸¥à¹‰à¸¡à¹€à¸«à¸¥à¸§', 'nem sikerÃ¼lt', 'mislukt', 'Deficio', 'Gagal', 'BaÅŸarÄ±sÄ±z oldu', 'Î‘Ï€Î­Ï„Ï…Ï‡Îµ', 'Ù†Ø§Ù…ÙˆÙÙ‚', 'Gagal', 'à°µà°¿à°«à°²à°®à±†à±–à°‚à°¦à°¿', 'à®¤à¯‡à®¾à®²à¯à®µà®¿', 'àª¨àª¿àª·à«àª«àª³ àª¥àª¯à«àª‚', 'Nie powiodÅ‚o siÄ™', 'ÐŸÐ¾Ð¼Ð¸Ð»ÐºÐ°', 'à¨…à¨¸à¨«à¨²', 'A eÈ™uat', 'Failed', 'Kuna', 'Ba a yi nasarar ba', NULL, NULL),
(779, 'manage_result', 'Manage Result', 'à¦«à¦²à¦¾à¦«à¦² à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar el resultado', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù†ØªÙŠØ¬Ø©', 'à¤ªà¤°à¤¿à¤£à¤¾à¤® à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ù†ØªØ§Ø¦Ø¬ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†ç»“æžœ', 'çµæžœã‚’ç®¡ç†ã™ã‚‹', 'Gerenciar resultado', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð°Ð¼Ð¸', 'GÃ©rer le rÃ©sultat', 'ê²°ê³¼ ê´€ë¦¬', 'Ergebnis verwalten', 'Gestisci risultato', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸œà¸¥à¸¥à¸±à¸žà¸˜à¹Œ', 'EredmÃ©ny kezelÃ©se', 'Resultaat beheren', 'curo results', 'Kelola Hasil', 'Sonucu YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Î±Ï€Î¿Ï„ÎµÎ»ÎµÏƒÎ¼Î¬Ï„Ï‰Î½', 'Ù…Ø¯ÛŒØ±ÛŒØª Ù†ØªÛŒØ¬Ù‡', 'Uruskan Keputusan', 'à°«à°²à°¿à°¤à°¾à°¨à±à°¨à°¿ à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®®à¯à®Ÿà®¿à®µà¯ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªàª°àª¿àª£àª¾àª® àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzaj wynikiem', 'Ð£Ð¿Ñ€Ð°Ð²Ð»Ñ–Ð½Ð½Ñ Ñ€ÐµÐ·ÑƒÐ»ÑŒÑ‚Ð°Ñ‚Ð¾Ð¼', 'à¨¨à¨¤à©€à¨œà¨¾ à¨ªà©à¨°à¨¬à©°à¨§à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i rezultatul', 'á€›á€œá€’á€ºá€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢iá¹£e Abajade', 'Sarrafa sakamakon', NULL, NULL),
(780, 'manage', 'Manage', 'à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Gestionar', 'ØªØ¯Ø¨ÙŠØ±', 'à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤', 'Ø§Ù†ØªØ¸Ø§Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†', 'ç®¡ç†', 'Gerir', 'ÑƒÐ¿Ñ€Ð°Ð²Ð»ÑÑ‚ÑŒ', 'GÃ©rer', 'ê¾¸ë¦¬ë‹¤', 'Verwalten', 'Gestire', 'à¸ˆà¸±à¸”à¸à¸²à¸£', 'kezel', 'beheren', 'curo', 'Mengelola', 'yÃ¶netme', 'Î”Î¹Î±Ï‡ÎµÎ¹ÏÎ¯Î¶Î¿Î½Ï„Î±Î¹', 'Ù…Ø¯ÛŒØ±ÛŒØª Ú©Ø±Ø¯Ù†', 'Mengurus', 'à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°¡à°¾à°¨à°¿à°•à°¿', 'à®¨à®¿à®°à¯à®µà®•à®¿à®•à¯à®•à®µà¯à®®à¯', 'àª®à«‡àª¨à«‡àªœ àª•àª°à«‹', 'ZarzÄ…dzanie', 'ÐšÐµÑ€ÑƒÐ²Ð°Ñ‚Ð¸', 'à¨ªà©à¨°à¨¬à©°à¨§ à¨•à¨°à¨¨à¨¾, à¨•à¨¾à¨¬à©‚ à¨•à¨°à¨¨à¨¾', 'Administra', 'á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso', 'Sarrafa', NULL, NULL),
(781, 'admitted', 'Admitted', 'à¦­à¦°à§à¦¤à¦¿', 'Aceptado', 'Ø§Ø¹ØªØ±Ù', 'à¤¸à¥à¤µà¥€à¤•à¤¾à¤° à¤•à¤¿à¤¯à¤¾', 'Ø§Ø¹ØªØ±Ø§Ù', 'æ‰¿è®¤', 'æŽˆä¸Žã•ã‚ŒãŸ', 'Admitido', 'Ð”Ð¾Ð¿ÑƒÑÐºÐ°ÑŽÑ‚ÑÑ', 'Admis', 'ìˆ˜ë½ í•œ', 'Zugelassen', 'Ammesso', 'à¸—à¸µà¹ˆà¸¢à¸­à¸¡à¸£à¸±à¸š', 'FelvÃ©telt nyer', 'toegelaten', 'admissus', 'Mengakui', 'kabul edilmiÅŸ', 'Î Î±ÏÎ¬Î´ÎµÎºÏ„Î¿Ï‚', 'Ù¾Ø°ÛŒØ±ÙØªÙ‡', 'Diterima', 'à°šà±‡à°°à°¿à°¨à°µà°¾à°°à°¿', 'à®…à®©à¯à®®à®¤à®¿à®•à¯à®•à®ªà¯à®ªà®Ÿà¯à®Ÿà®¾à®°à¯', 'àª¸à«àªµà«€àª•à«ƒàª¤', 'PrzyznaÅ‚', 'ÐŸÑ€Ð¸Ð¹Ð½ÑÑ‚Ð¾', 'à¨¦à¨¾à¨–à¨²', 'Admis', 'á€á€”á€ºá€á€¶', 'Ti gba', 'Admitted', NULL, NULL),
(782, 'promoted', 'Promoted', 'à¦‰à¦¨à§à¦¨à§€à¦¤', 'Promovido', 'Ø±Ù‚ÙŠØ©', 'à¤ªà¥à¤°à¤šà¤¾à¤°à¤¿à¤¤', 'ÙØ±ÙˆØº Ø¯ÛŒØ§', 'ææ‹”', 'ãƒ—ãƒ­ãƒ¢ãƒ¼ãƒˆ', 'Promovido', 'ÐŸÐ¾Ð²Ñ‹ÑˆÐµÐ½', 'Promu', 'ìŠ¹ê²© ëœ', 'GefÃ¶rdert', 'Promossa', 'à¸à¸²à¸£à¹€à¸¥à¸·à¹ˆà¸­à¸™à¸•à¸³à¹à¸«à¸™à¹ˆà¸‡', 'promotÃ¡lt', 'gepromoveerd', 'promoted', 'Dipromosikan', 'TanÄ±tÄ±lan', 'Î ÏÎ¿Ï‰Î¸Î®Î¸Î·ÎºÎµ', 'ØªØ±ÙˆÛŒØ¬ Ø´Ø¯Ù‡', 'Dipromosikan', 'à°ªà±à°°à°®à±‹à°Ÿà±', 'à®µà®¿à®³à®®à¯à®ªà®°', 'àª¬àª¢àª¤à«€', 'Lansowany', 'ÐŸÑ€Ð¾Ð¼Ð¾Ñ‚Ð¾Ð²Ð°Ð½Ð¸Ð¹', 'à¨ªà©à¨°à¨®à©‹à¨Ÿ à¨•à©€à¨¤à¨¾', 'Promovat', 'á€›á€¬á€‘á€°á€¸á€á€­á€¯á€¸', 'Igbegaga', 'Ci gaba', NULL, NULL),
(783, 'drop_out', 'Drop Out', 'à¦¬à¦¾à¦¦ à¦ªà¦°à¦¾', 'Abandonar', 'Ø£ÙˆÙ‚Ø¹', 'à¤¡à¥à¤°à¥‰à¤ª à¤†à¤‰à¤Ÿ', 'Ø¨Ø§ÛØ± Ú†Ú¾ÙˆÚ‘', 'é€€å‡º', 'è„±è½', 'Cair fora', 'Ð’Ñ‹Ð±Ñ‹Ð²Ð°Ñ‚ÑŒ', 'Abandonner', 'íƒˆë½', 'Aussteigen', 'Buttare fuori', 'à¸›à¸¥à¹ˆà¸­à¸¢à¸­à¸­à¸', 'Kidobni', 'Afvaller', 'EXSTILLO', 'Keluar', 'BÄ±rakmak', 'Î•Î³ÎºÎ±Ï„Î±Î»ÎµÎ¯Ï€Ï‰', 'Ø±Ù‡Ø§ Ú©Ø±Ø¯Ù†', 'Tercicir', 'à°µà°¦à°¿à°²à°¿à°µà±‡à°¯à°¡à°‚', 'à®µà¯†à®³à®¿à®¯à¯‡à®±à¯à®±à¯', 'àª›à«‹àª¡à«€ àª¦à«€àª§à«‡àª²', 'WycofaÄ‡ siÄ™', 'Ð’Ð¸ÐºÐ¸Ð½ÑƒÑ‚Ð¸', 'à¨›à©±à¨¡ à¨¦à©‡à¨£à¨¾', 'RenunÈ›a', 'á€”á€¾á€¯á€á€ºá€‘á€½á€€á€ºá€žá€Šá€º', 'Eniti o ko lati se nkan', 'Daina', NULL, NULL),
(784, 'advanced', 'Advanced', 'à¦…à¦—à§à¦°à¦¿à¦®', 'Avanzado', 'Ø§Ù„Ù…ØªÙ‚Ø¯Ù…Ø©', 'à¤‰à¤¨à¥à¤¨à¤¤', 'Ø§Ø¹Ù„ÛŒ Ø¯Ø±Ø¬Û’ Ú©ÛŒ', 'é«˜çº§', 'ä¸Šç´š', 'AvanÃ§ado', 'Ð¿Ñ€Ð¾Ð´Ð²Ð¸Ð½ÑƒÑ‚Ñ‹Ð¹', 'AvancÃ©e', 'ë§Žì€', 'Fortgeschritten', 'Avanzate', 'à¸ªà¸¹à¸‡', 'Fejlett', 'gevorderd', 'provectus', 'Maju', 'ileri', 'Î ÏÎ¿Ï‡Ï‰ÏÎ·Î¼Î­Î½Î¿Ï‚', 'Ù¾ÛŒØ´Ø±ÙØªÙ‡', 'Advanced', 'à°†à°§à±à°¨à°¿à°•', 'à®®à¯‡à®®à¯à®ªà®Ÿà¯à®Ÿ', 'àª…àª¦à«àª¯àª¤àª¨', 'zaawansowane', 'Ð Ð¾Ð·ÑˆÐ¸Ñ€ÐµÐ½Ð¸Ð¹', 'à¨¤à¨•à¨¨à©€à¨•à©€', 'Avansat', 'á€¡á€†á€„á€ºá€·á€™á€¼á€„á€ºá€·', 'Ti ni ilá»siwaju', 'Na ci gaba', NULL, NULL),
(785, 'collection', 'Collection', 'à¦¸à¦‚à¦—à§à¦°à¦¹', 'ColecciÃ³n', 'Ù…Ø¬Ù…ÙˆØ¹Ø©', 'à¤¸à¤‚à¤—à¥à¤°à¤¹', 'Ù…Ø¬Ù…ÙˆØ¹Û', 'é‡‡é›†', 'ã‚³ãƒ¬ã‚¯ã‚·ãƒ§ãƒ³', 'ColeÃ§Ã£o', 'ÐšÐ¾Ð»Ð»ÐµÐºÑ†Ð¸Ñ', 'Collection', 'ìˆ˜ì§‘', 'Sammlung', 'Collezione', 'à¸Šà¸¸à¸”', 'GyÅ±jtemÃ©ny', 'Verzameling', 'collectio', 'Koleksi', 'Toplamak', 'Î£Ï…Î»Î»Î¿Î³Î®', 'Ù…Ø¬Ù…ÙˆØ¹Ù‡', 'Koleksi', 'à°•à°²à±†à°•à±à°·à°¨à±', 'à®šà¯‡à®•à®°à®¿à®ªà¯à®ªà¯', 'àª¸àª‚àª—à«àª°àª¹', 'Kolekcja', 'ÐšÐ¾Ð»ÐµÐºÑ†Ñ–Ñ', 'à¨­à©°à¨¡à¨¾à¨°', 'Colectie', 'á€…á€¯á€†á€±á€¬á€„á€ºá€¸á€™á€¾á€¯', 'Gbigba', 'Tarin', NULL, NULL),
(786, 'avg_of_all_exam', 'Average of All Exam', 'à¦¸à¦¬ à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦—à¦¡à¦¼', 'Promedio de todos los exÃ¡menes', 'Ù…ØªÙˆØ³Ø· ÙƒÙ„ Ø§Ù„Ø§Ù…ØªØ­Ø§Ù†Ø§Øª', 'à¤¸à¤­à¥€ à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¤¾ à¤”à¤¸à¤¤', 'ØªÙ…Ø§Ù… Ø§Ù…ØªØ­Ø§Ù†ÙˆÚº Ú©Ø§ Ø§ÙˆØ³Ø·', 'æ‰€æœ‰è€ƒè¯•çš„å¹³å‡å€¼', 'ã™ã¹ã¦ã®è©¦é¨“ã®å¹³å‡', 'MÃ©dia de todos os exames', 'Ð¡Ñ€ÐµÐ´Ð½ÐµÐµ Ð·Ð½Ð°Ñ‡ÐµÐ½Ð¸Ðµ Ð²ÑÐµÐ³Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°', 'Moyenne de tous les examens', 'ëª¨ë“  ì‹œí—˜ì˜ í‰ê· ', 'Durchschnitt aller PrÃ¼fungen', 'Media di tutti gli esami', 'à¸„à¹ˆà¸²à¹€à¸‰à¸¥à¸µà¹ˆà¸¢à¸‚à¸­à¸‡à¸à¸²à¸£à¸ªà¸­à¸šà¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Ãtlagos Ã¶sszes vizsgÃ¡ja', 'Gemiddelde van alle examen', 'Omnes mediocris de nito', 'Rata-Rata Semua Ujian', 'TÃ¼m sÄ±navÄ±n ortalamasÄ±', 'ÎœÎ­ÏƒÎ¿Ï‚ ÏŒÏÎ¿Ï‚ ÏŒÎ»Ï‰Î½ Ï„Ï‰Î½ ÎµÎ¾ÎµÏ„Î¬ÏƒÎµÏ‰Î½', 'Ù…ÛŒØ§Ù†Ú¯ÛŒÙ† Ø§Ù…ØªØ­Ø§Ù†Ø§Øª', 'Purata Semua Peperiksaan', 'à°…à°¨à±à°¨à°¿ à°ªà°°à±€à°•à±à°·à°² à°¸à°—à°Ÿà±', 'à®…à®©à¯ˆà®¤à¯à®¤à¯ à®¤à¯‡à®°à¯à®µà¯ à®šà®°à®¾à®šà®°à®¿', 'àª¤àª®àª¾àª® àªªàª°à«€àª•à«àª·àª¾àª¨à«àª‚ àª¸àª°à«‡àª°àª¾àª¶', 'Åšrednia wszystkich egzaminÃ³w', 'Ð¡ÐµÑ€ÐµÐ´Ð½Ñ–Ð¹ Ð±Ð°Ð» ÑƒÑÑ–Ñ… Ñ–ÑÐ¿Ð¸Ñ‚Ñ–Ð²', 'à¨¸à¨­ à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¦à¨¾ à¨”à¨¸à¨¤', 'Media tuturor examenelor', 'á€¡á€¬á€¸á€œá€¯á€¶á€¸á€…á€¬á€™á€±á€¸á€•á€½á€²áá€•á€»á€™á€ºá€¸á€™á€»á€¾', 'Iwá»n ti Gbogbo Ayáº¹wo', 'Matsayin Duk Kwara', NULL, NULL);
INSERT INTO `a1_languages` (`id`, `label`, `english`, `bengali`, `spanish`, `arabic`, `hindi`, `urdu`, `chinese`, `japanese`, `portuguese`, `russian`, `french`, `korean`, `german`, `italian`, `thai`, `hungarian`, `dutch`, `latin`, `indonesian`, `turkish`, `greek`, `persian`, `malay`, `telugu`, `tamil`, `gujarati`, `polish`, `ukrainian`, `panjabi`, `romanian`, `burmese`, `yoruba`, `hausa`, `created_at`, `updated_at`) VALUES
(787, 'only_of_fianl_exam', 'Only Based on Final Exam', 'à¦¶à§à¦§à§ à¦«à¦¾à¦‡à¦¨à¦¾à¦² à¦ªà¦°à§€à¦•à§à¦·à¦¾à¦° à¦­à¦¿à¦¤à§à¦¤à¦¿à¦¤à§‡', 'Solo basado en el examen final', 'ÙŠØ¹ØªÙ…Ø¯ ÙÙ‚Ø· Ø¹Ù„Ù‰ Ø§Ù„Ø§Ø®ØªØ¨Ø§Ø± Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠ', 'à¤•à¥‡à¤µà¤² à¤…à¤‚à¤¤à¤¿à¤® à¤ªà¤°à¥€à¤•à¥à¤·à¤¾ à¤•à¥‡ à¤†à¤§à¤¾à¤° à¤ªà¤°', 'ØµØ±Ù Ø­ØªÙ…ÛŒ Ø§Ù…ØªØ­Ø§Ù† Ú©ÛŒ Ø¨Ù†ÛŒØ§Ø¯ Ù¾Ø±', 'ä»…åŸºäºŽæœŸæœ«è€ƒè¯•', 'æœ€çµ‚è©¦é¨“ã®ã¿ã«åŸºã¥ã„ã¦', 'Apenas com base no exame final', 'Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð½Ð° Ð¾ÑÐ½Ð¾Ð²Ðµ Ð¸Ñ‚Ð¾Ð³Ð¾Ð²Ð¾Ð³Ð¾ ÑÐºÐ·Ð°Ð¼ÐµÐ½Ð°', 'Seulement basÃ© sur lexamen final', 'ìµœì¢… ì‹œí—˜ì—ë§Œ ê·¼ê±° í•¨', 'Nur basierend auf der AbschlussprÃ¼fung', 'Solo in base allesame finale', 'à¸‚à¸¶à¹‰à¸™à¸­à¸¢à¸¹à¹ˆà¸à¸±à¸šà¸à¸²à¸£à¸ªà¸­à¸šà¸›à¸¥à¸²à¸¢à¸ à¸²à¸„', 'Csak a zÃ¡rÃ³vizsga alapjÃ¡n', 'Alleen gebaseerd op eindexamen', 'Ex tantum Exam', 'Hanya Berdasarkan Ujian Akhir', 'Sadece Final SÄ±navÄ±na DayalÄ±', 'Î’Î±ÏƒÎ¯Î¶ÎµÏ„Î±Î¹ Î¼ÏŒÎ½Î¿ ÏƒÏ„Î·Î½ Ï„ÎµÎ»Î¹ÎºÎ® ÎµÎ¾Î­Ï„Î±ÏƒÎ·', 'ÙÙ‚Ø· Ø¨Ø± Ø§Ø³Ø§Ø³ Ø¢Ø²Ù…ÙˆÙ† Ù†Ù‡Ø§ÛŒÛŒ', 'Hanya Berdasarkan Peperiksaan Akhir', 'à°…à°‚à°¤à°¿à°® à°ªà°°à±€à°•à±à°·à°² à°†à°§à°¾à°°à°‚à°—à°¾ à°®à°¾à°¤à±à°°à°®à±‡', 'à®‡à®±à¯à®¤à®¿ à®¤à¯‡à®°à¯à®µà¯ à®…à®Ÿà®¿à®ªà¯à®ªà®Ÿà¯ˆà®¯à®¿à®²à¯ à®®à®Ÿà¯à®Ÿà¯à®®à¯‡', 'àª®àª¾àª¤à«àª° àª…àª‚àª¤àª¿àª® àªªàª°à«€àª•à«àª·àª¾ àªªàª° àª†àª§àª¾àª°àª¿àª¤', 'Tylko na podstawie egzaminu koÅ„cowego', 'Ð¢Ñ–Ð»ÑŒÐºÐ¸ Ð½Ð° Ð¿Ñ–Ð´ÑÑ‚Ð°Ð²Ñ– Ð¾ÑÑ‚Ð°Ñ‚Ð¾Ñ‡Ð½Ð¾Ð³Ð¾ Ñ–ÑÐ¿Ð¸Ñ‚Ñƒ', 'à¨•à©‡à¨µà¨² à¨…à©°à¨¤à¨¿à¨® à¨ªà©à¨°à©€à¨–à¨¿à¨† à¨¦à©‡ à¨†à¨§à¨¾à¨° à¨¤à©‡', 'Numai pe baza examenului final', 'á€žá€¬á€”á€±á€¬á€€á€ºá€†á€¯á€¶á€¸á€…á€¬á€™á€±á€¸á€•á€½á€²á€¡á€•á€±á€«á€º á€¡á€á€¼á€±á€á€¶.', 'Nikan Da lori Igbeyewo Ayáº¹wo', 'Binciken Bincike ne kawai', NULL, NULL),
(788, 'template', 'Template', 'à¦Ÿà§‡à¦®à¦ªà§à¦²à§‡à¦Ÿ', 'Modelo', 'Ù‚Ø§Ù„Ø¨', 'à¤–à¤¾à¤•à¤¾', 'Ø³Ø§Ù†Ú†Û’', 'æ¨¡æ¿', 'ãƒ†ãƒ³ãƒ—ãƒ¬ãƒ¼ãƒˆ', 'Modelo', 'ÑˆÐ°Ð±Ð»Ð¾Ð½', 'ModÃ¨le', 'ì£¼í˜•', 'Vorlage', 'Modello', 'à¹à¸šà¸š', 'Sablon', 'Sjabloon', 'Home', 'Template', 'ÅŸablon', 'Î ÏÏŒÏ„Ï…Ï€Î¿', 'Ù‚Ø§Ù„Ø¨', 'Templat', 'à°®à±‚à°¸', 'à®Ÿà¯†à®®à¯à®ªà¯à®³à¯‡à®Ÿà¯', 'àª¢àª¾àª‚àªšà«‹', 'Szablon', 'Ð¨Ð°Ð±Ð»Ð¾Ð½', 'à¨Ÿà©ˆà¨‚à¨ªà¨²à©‡à¨Ÿ', 'Format', 'template', 'Awoá¹£e', 'Samfurin', NULL, NULL),
(789, 'absent', 'Absent', 'à¦…à¦¨à§à¦ªà¦¸à§à¦¥à¦¿à¦¤', 'Ausente', 'ØºØ§Ø¦Ø¨', 'à¤…à¤¨à¥à¤ªà¤¸à¥à¤¥à¤¿à¤¤', 'ØºÛŒØ± Ø­Ø§Ø¶Ø±', 'ç¼ºå¸­', 'ä¸åœ¨', 'Ausente', 'ÐÐµÑ‚ Ð½Ð° Ð¼ÐµÑÑ‚Ðµ', 'Absent', 'ì—†ëŠ”', 'Abwesend', 'Assente', 'à¸‚à¸²à¸”', 'HiÃ¡nyzÃ³', 'Afwezig', 'absens', 'Tidak hadir', 'Yok', 'Î‘Ï€ÏŽÎ½', 'ØºØ§ÛŒØ¨', 'Tidak hadir', 'à°†à°¬à±à°¸à±†à°‚à°Ÿà±', 'à®‡à®°à¯à®•à¯à®•à®¾à®¤à¯', 'àª—à«‡àª°àª¹àª¾àªœàª°', 'Nieobecny', 'Ð’Ñ–Ð´ÑÑƒÑ‚Ð½Ñ', 'à¨—à©ˆà¨°à¨¹à¨¾à¨œà¨¼à¨°à©€', 'Absent', 'á€™á€›á€¾á€­á€žá€±á€¬', 'Ti ko ni', 'Ba ya nan', NULL, NULL),
(790, 'due_fee', 'Due Fee', 'à¦¬à¦¾à¦•à¦¿ à¦«à¦¿', 'Cuota debida', 'Ø§Ù„Ø±Ø³ÙˆÙ… Ø§Ù„Ù…Ø³ØªØ­Ù‚Ø©', 'à¤¶à¥à¤²à¥à¤• à¤¶à¥à¤²à¥à¤•', 'ÙˆØ¬Û Ø³Û’ ÙÛŒØ³', 'åˆ°æœŸè´¹ç”¨', 'å»¶æ»žæ–™', 'Taxa devida', 'Ð”Ð¾Ð»Ð¶Ð½Ð°Ñ Ð¿Ð»Ð°Ñ‚Ð°', 'Frais dus', 'ì—°íšŒë¹„', 'FÃ¤llige GebÃ¼hr', 'Tariffa dovuta', 'à¸„à¹ˆà¸²à¸˜à¸£à¸£à¸¡à¹€à¸™à¸µà¸¢à¸¡à¸„à¸£à¸šà¸à¸³à¸«à¸™à¸”', 'DÃ­jkÃ¶teles', 'Verschuldigde vergoeding', 'ob pretium', 'Uang Muka', 'Due Ãœcreti', 'Î ÏÎ¿ÎºÎ±Ï„Î±Î²Î¿Î»Î®', 'Ù¾Ø±Ø¯Ø§Ø®Øª Ù‡Ø²ÛŒÙ†Ù‡', 'Bayaran terhutang', 'à°ˆ à°°à±à°¸à±à°®à±', 'à®•à®Ÿà¯à®Ÿà®£ à®•à®Ÿà¯à®Ÿà®£à®®à¯', 'àª¨àª¿àª¯à«àª•à«àª¤ àª«à«€', 'NaleÅ¼na opÅ‚ata', 'Ð”ÐµÐºÐ»Ð°Ñ€Ð°Ñ†Ñ–Ñ', 'à¨¨à¨¿à¨¯à©à¨•à¨¤à©€ à¨«à©€à¨¸', 'TaxÄƒ de platÄƒ', 'á€€á€¼á€±á€¬á€„á€ºá€·á€€á€¼á€±á€¸', 'Nitori Owo', 'Saboda haraji', NULL, NULL),
(791, 'activity_log', 'Activity Log', 'à¦•à¦¾à¦°à§à¦¯ à¦¬à¦¿à¦¬à¦°à¦£', 'Registro de actividades', 'Ø³Ø¬Ù„ Ø§Ù„Ù†Ø´Ø§Ø·Ø§Øª', 'à¤—à¤¤à¤¿à¤µà¤¿à¤§à¤¿ à¤²à¥‰à¤—', 'Ø³Ø±Ú¯Ø±Ù…ÛŒ Ù„Ø§Ú¯ Ø§Ù†', 'æ´»åŠ¨æ—¥å¿—', 'æ´»å‹•è¨˜éŒ²', 'Registro de atividade', 'Ð–ÑƒÑ€Ð½Ð°Ð» Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚Ð¸', 'Journal dactivitÃ©', 'í™œë™ ë¡œê·¸', 'AktivitÃ¤tsprotokoll', 'Registro delle attivitÃ ', 'à¸šà¸±à¸™à¸—à¸¶à¸à¸à¸´à¸ˆà¸à¸£à¸£à¸¡', 'NaplÃ³t', 'Activiteiten logboek', 'Actio iniuriarum', 'Log aktivitas', 'Etkinlik GÃ¼nlÃ¼ÄŸÃ¼', 'Î‘ÏÏ‡ÎµÎ¯Î¿ ÎºÎ±Ï„Î±Î³ÏÎ±Ï†Î®Ï‚ Î´ÏÎ±ÏƒÏ„Î·ÏÎ¹ÏŒÏ„Î·Ï„Î±Ï‚', 'Ú¯Ø²Ø§Ø±Ø´ ÙØ¹Ø§Ù„ÛŒØª', 'Log aktiviti', 'à°•à°¾à°°à±à°¯à°¾à°šà°°à°£ à°²à°¾à°—à±', 'à®¨à®Ÿà®µà®Ÿà®¿à®•à¯à®•à¯ˆ à®ªà®¤à®¿à®µà¯', 'àªªà«àª°àªµà«ƒàª¤à«àª¤àª¿ àª²à«‰àª—', 'Dziennik aktywnoÅ›ci', 'Ð–ÑƒÑ€Ð½Ð°Ð» Ð°ÐºÑ‚Ð¸Ð²Ð½Ð¾ÑÑ‚Ñ–', 'à¨¸à¨°à¨—à¨°à¨®à©€ à¨²à¨¾à¨—', 'Jurnalul de activitate', 'á€œá€¾á€¯á€•á€ºá€›á€¾á€¬á€¸á€™á€¾á€¯á€™á€¾á€á€ºá€á€™á€ºá€¸', 'Wá»le iá¹£áº¹', 'Sabis na Ayyuka', NULL, NULL),
(792, 'generate_csv', 'Generate CSV', 'à¦¸à¦¿à¦à¦¸à¦­à¦¿ à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨', 'Generar CSV', 'Ø¥Ù†Ø´Ø§Ø¡ Ù…Ù„Ù CSV', 'à¤¸à¥€à¤à¤¸à¤µà¥€ à¤‰à¤¤à¥à¤ªà¤¨à¥à¤¨ à¤•à¤°à¥‡à¤‚', 'CSV Ø¨Ù†Ø§Ø¦ÛŒÚº', 'ç”ŸæˆCSV', 'CSVã‚’ç”Ÿæˆã™ã‚‹', 'Gerar CSV', 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ CSV', 'GÃ©nÃ©rer un fichier CSV', 'CSV ìƒì„±', 'CSV generieren', 'Genera CSV', 'à¸ªà¸£à¹‰à¸²à¸‡ CSV', 'CSV lÃ©trehozÃ¡sa', 'CSV genereren', 'CSV generate', 'Hasilkan CSV', 'CSV oluÅŸtur', 'Î”Î·Î¼Î¹Î¿Ï…ÏÎ³Î¯Î± CSV', 'Ø§ÛŒØ¬Ø§Ø¯ CSV', 'Menjana CSV', 'CSV à°¨à± à°¸à±ƒà°·à±à°Ÿà°¿à°‚à°šà°‚à°¡à°¿', 'CSV à® à®‰à®°à¯à®µà®¾à®•à¯à®•à®µà¯à®®à¯', 'CSV àªœàª¨àª°à«‡àªŸ àª•àª°à«‹', 'Wygeneruj plik CSV', 'Ð¡Ñ‚Ð²Ð¾Ñ€Ð¸Ñ‚Ð¸ CSV', 'à¨¸à©€à¨à¨¸à¨µà©€ à¨¬à¨£à¨¾à¨‰', 'GeneraÈ›i CSV', 'CSV á€€á€­á€¯ Generate', 'Fi CSV ti o lagbara', 'Samar da CSV', NULL, NULL),
(793, 'csv_file', 'CSV File', 'à¦¸à¦¿à¦à¦¸à¦­à¦¿ à¦«à¦¾à¦‡à¦²', 'Archivo CSV', 'Ù…Ù„Ù CSV', 'à¤¸à¥€à¤à¤¸à¤µà¥€ à¤«à¤¼à¤¾à¤‡à¤²', 'CSV ÙØ§Ø¦Ù„', 'CSVæ–‡ä»¶', 'CSVãƒ•ã‚¡ã‚¤ãƒ«', 'Arquivo CSV', 'Ð¤Ð°Ð¹Ð» CSV', 'Fichier CSV', 'CSV íŒŒì¼', 'CSV-Datei', 'File CSV', 'à¹„à¸Ÿà¸¥à¹Œ CSV', 'CSV fÃ¡jl', 'CSV-bestand', 'File CSV', 'File CSV', 'CSV DosyasÄ±', 'Î‘ÏÏ‡ÎµÎ¯Î¿ CSV', 'ÙØ§ÛŒÙ„ CSV', 'Fail CSV', 'CSV à°«à±ˆà°²à±', 'CSV à®•à¯‹à®ªà¯à®ªà¯', 'CSV àª«àª¾àª‡àª²', 'Plik CSV', 'CSV-Ñ„Ð°Ð¹Ð»', 'CSV à¨«à¨¾à¨ˆà¨²', 'FiÈ™ier CSV', 'CSV á€–á€­á€¯á€„á€ºá€–á€­á€¯á€„á€ºá€™á€¾á€á€ºá€á€™á€ºá€¸', 'Faili CSV', 'Fayil É—in CSV', NULL, NULL),
(794, 'id', 'ID', 'à¦†à¦‡à¦¡à¦¿', 'CARNÃ‰ DE IDENTIDAD', 'Ù‡ÙˆÙŠØ© Ø´Ø®ØµÙŠØ©', 'à¤†à¤ˆà¤¡à¥€', 'ID', 'ID', 'ID', 'identidade', 'Ð¯ Ð‘Ð«', 'ID', 'ì‹ ë¶„ì¦', 'ICH WÃœRDE', 'ID', 'ID', 'ID', 'ID kaart', 'id', 'ID', 'Ä°D', 'Ï„Î±Ï…Ï„ÏŒÏ„Î·Ï„Î±', 'Ø´Ù†Ø§Ø³Ù‡', 'ID', 'ID', 'à®à®Ÿà®¿', 'ID', 'ID', 'Ð†Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ñ€', 'ID', 'ID-ul', 'ID á€€á€­á€¯', 'ID', 'ID', NULL, NULL),
(795, 'bulk_student_instruction_1', 'At first select the Class and Section', 'à¦ªà§à¦°à¦¥à¦®à§‡ à¦•à§à¦²à¦¾à¦¸ à¦à¦¬à¦‚ à¦¬à¦¿à¦­à¦¾à¦— à¦¨à¦¿à¦°à§à¦¬à¦¾à¦šà¦¨ à¦•à¦°à§à¦¨', 'Al principio, seleccione la Clase y la SecciÃ³n', 'ÙÙŠ Ø§Ù„Ø¨Ø¯Ø§ÙŠØ© Ø­Ø¯Ø¯ Ø§Ù„ÙØµÙ„ ÙˆØ§Ù„Ù‚Ø³Ù…', 'à¤ªà¤¹à¤²à¥‡ à¤•à¤•à¥à¤·à¤¾ à¤”à¤° à¤…à¤¨à¥à¤­à¤¾à¤— à¤•à¤¾ à¤šà¤¯à¤¨ à¤•à¤°à¥‡à¤‚', 'Ø³Ø¨ Ø³Û’ Ù¾ÛÙ„Û’ Ú©Ù„Ø§Ø³ Ø§ÙˆØ± Ø³ÛŒÚ©Ø´Ù† Ú©Ùˆ Ù…Ù†ØªØ®Ø¨ Ú©Ø±ÛŒÚº', 'é¦–å…ˆé€‰æ‹©Classå’ŒSection', 'ã¾ãšã‚¯ãƒ©ã‚¹ã¨ã‚»ã‚¯ã‚·ãƒ§ãƒ³ã‚’é¸æŠžã—ã¾ã™ã€‚', 'Inicialmente selecione a Classe e SeÃ§Ã£o', 'Ð¡Ð½Ð°Ñ‡Ð°Ð»Ð° Ð²Ñ‹Ð±ÐµÑ€Ð¸Ñ‚Ðµ ÐºÐ»Ð°ÑÑ Ð¸ Ñ€Ð°Ð·Ð´ÐµÐ»', 'Au dÃ©but, sÃ©lectionnez la classe et la section', 'ë¨¼ì € í´ëž˜ìŠ¤ì™€ ì„¹ì…˜ì„ ì„ íƒí•˜ì‹­ì‹œì˜¤.', 'WÃ¤hlen Sie zunÃ¤chst die Klasse und den Abschnitt aus', 'Inizialmente seleziona la classe e la sezione', 'à¸•à¸­à¸™à¹à¸£à¸à¹ƒà¸«à¹‰à¹€à¸¥à¸·à¸­à¸ Class à¹à¸¥à¸° Section', 'ElÅ‘szÃ¶r vÃ¡lassza ki az osztÃ¡lyt Ã©s a szakaszt', 'Selecteer eerst de klasse en sectie', 'Â§ eligere et in primo classis', 'Mula-mula pilih Kelas dan Bagian', 'Ä°lk Ã¶nce SÄ±nÄ±f ve BÃ¶lÃ¼mÃ¼ seÃ§in', 'Î‘ÏÏ‡Î¹ÎºÎ¬ ÎµÏ€Î¹Î»Î­Î¾Ï„Îµ Ï„Î·Î½ ÎºÎ»Î¬ÏƒÎ· ÎºÎ±Î¹ Ï„Î·Î½ ÎµÎ½ÏŒÏ„Î·Ï„Î±', 'Ø§Ø¨ØªØ¯Ø§ Ú©Ù„Ø§Ø³ Ùˆ Ø¨Ø®Ø´ Ø±Ø§ Ø§Ù†ØªØ®Ø§Ø¨ Ú©Ù†ÛŒØ¯', 'Pada mulanya pilih Kelas dan Bahagian', 'à°®à±Šà°¦à°Ÿ à°•à±à°²à°¾à°¸à± à°®à°°à°¿à°¯à± à°¸à±†à°•à±à°·à°¨à± à°Žà°‚à°šà±à°•à±‹à°‚à°¡à°¿', 'à®®à¯à®¤à®²à®¿à®²à¯ à®µà®•à¯à®ªà¯à®ªà¯ à®®à®±à¯à®±à¯à®®à¯ à®ªà®¿à®°à®¿à®µà¯ à®¤à¯‡à®°à¯à®¨à¯à®¤à¯†à®Ÿà¯à®•à¯à®•à®µà¯à®®à¯', 'àªªà«àª°àª¥àª® àªµàª°à«àª— àª…àª¨à«‡ àªµàª¿àª­àª¾àª— àªªàª¸àª‚àª¦ àª•àª°à«‹', 'Najpierw wybierz klasÄ™ i sekcjÄ™', 'Ð¡Ð¿Ð¾Ñ‡Ð°Ñ‚ÐºÑƒ Ð²Ð¸Ð±ÐµÑ€Ñ–Ñ‚ÑŒ ÐºÐ»Ð°Ñ Ñ– Ñ€Ð¾Ð·Ð´Ñ–Ð»', 'à¨ªà¨¹à¨¿à¨²à¨¾à¨‚ à¨•à¨²à¨¾à¨¸ à¨…à¨¤à©‡ à¨¸à©ˆà¨•à¨¸à¨¼à¨¨ à¨¦à©€ à¨šà©‹à¨£ à¨•à¨°à©‹', 'Mai Ã®ntÃ¢i selectaÈ›i Clasa È™i secÈ›iunea', 'á€•á€‘á€™á€¥á€®á€¸á€†á€¯á€¶á€¸á€™á€¾á€¬á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸á€”á€¾á€„á€ºá€·á€•á€¯á€’á€ºá€™á€€á€­á€¯ select', 'Ni aká»ká» yan Kilasi ati Abala', 'Da farko zaÉ“i Class da Sashe', NULL, NULL),
(796, 'bulk_student_instruction_2', 'Generate CSV file', 'à¦¸à¦¿à¦à¦¸à¦­à¦¿ à¦«à¦¾à¦‡à¦² à¦¤à§ˆà¦°à¦¿ à¦•à¦°à§à¦¨', 'Generar archivo CSV', 'Ø¥Ù†Ø´Ø§Ø¡ Ù…Ù„Ù CSV', 'à¤¸à¥€à¤à¤¸à¤µà¥€ à¤«à¤¼à¤¾à¤‡à¤² à¤œà¥‡à¤¨à¤°à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚', 'CSV ÙØ§Ø¦Ù„ Ø¨Ù†Ø§Ø¦ÛŒÚº', 'ç”ŸæˆCSVæ–‡ä»¶', 'CSVãƒ•ã‚¡ã‚¤ãƒ«ã‚’ç”Ÿæˆã™ã‚‹', 'Gerar arquivo CSV', 'Ð¡Ð¾Ð·Ð´Ð°Ð½Ð¸Ðµ Ñ„Ð°Ð¹Ð»Ð° CSV', 'GÃ©nÃ©rer un fichier CSV', 'CSV íŒŒì¼ ìƒì„±', 'Generieren Sie eine CSV-Datei', 'Genera file CSV', 'à¸ªà¸£à¹‰à¸²à¸‡à¹„à¸Ÿà¸¥à¹Œ CSV', 'CSV fÃ¡jl lÃ©trehozÃ¡sa', 'Genereer CSV-bestand', 'CSV lima generate', 'Hasilkan file CSV', 'CSV dosyasÄ± oluÅŸtur', 'Î”Î·Î¼Î¹Î¿Ï…ÏÎ³Î¯Î± Î±ÏÏ‡ÎµÎ¯Î¿Ï… CSV', 'Ø§ÛŒØ¬Ø§Ø¯ ÙØ§ÛŒÙ„ CSV', 'Buat fail CSV', 'CSV à°«à±ˆà°²à±à°¨à± à°¸à±ƒà°·à±à°Ÿà°¿à°‚à°šà°‚à°¡à°¿', 'CSV à®•à¯‹à®ªà¯à®ªà¯ˆ à®‰à®°à¯à®µà®¾à®•à¯à®•à®µà¯à®®à¯', 'CSV àª«àª¾àª‡àª² àªœàª¨àª°à«‡àªŸ àª•àª°à«‹', 'Wygeneruj plik CSV', 'Ð¡Ñ‚Ð²Ð¾Ñ€Ð¸Ñ‚Ð¸ Ñ„Ð°Ð¹Ð» CSV', 'CSV à¨«à¨¾à¨ˆà¨² à¨‰à¨¤à¨ªà©°à¨¨ à¨•à¨°à©‹', 'GeneraÈ›i fiÈ™ierul CSV', 'CSV á€–á€­á€¯á€„á€º Generate', 'Fifáº¹ CSV faili', 'Samar da fayil CSV', NULL, NULL),
(797, 'bulk_student_instruction_3', 'Open the downloaded CSV file and enter student information with unique email', 'à¦¡à¦¾à¦‰à¦¨à¦²à§‹à¦¡ à¦•à¦°à¦¾ à¦¸à¦¿à¦à¦¸à¦­à¦¿ à¦«à¦¾à¦‡à¦²à¦Ÿà¦¿ à¦–à§à¦²à§à¦¨ à¦à¦¬à¦‚ à¦‡à¦‰à¦¨à¦¿à¦• à¦‡à¦®à§‡à¦²à§‡à¦° à¦®à¦¾à¦§à§à¦¯à¦®à§‡ à¦¶à¦¿à¦•à§à¦·à¦¾à¦°à§à¦¥à§€ à¦¤à¦¥à§à¦¯ à¦ªà§à¦°à¦¬à§‡à¦¶ à¦•à¦°à§à¦¨', 'Abra el archivo CSV descargado e ingrese la informaciÃ³n del estudiante con un correo electrÃ³nico Ãºnico', 'Ø§ÙØªØ­ Ù…Ù„Ù CSV Ø§Ù„Ø°ÙŠ ØªÙ… ØªÙ†Ø²ÙŠÙ„Ù‡ ÙˆØ£Ø¯Ø®Ù„ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ø§Ù„Ø·Ø§Ù„Ø¨ Ø¨Ø±Ø³Ø§Ù„Ø© Ø¨Ø±ÙŠØ¯ Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ ÙØ±ÙŠØ¯Ø©', 'à¤¡à¤¾à¤‰à¤¨à¤²à¥‹à¤¡ à¤•à¥€ à¤—à¤ˆ CSV à¤«à¤¼à¤¾à¤‡à¤² à¤–à¥‹à¤²à¥‡à¤‚ à¤”à¤° à¤…à¤¦à¥à¤µà¤¿à¤¤à¥€à¤¯ à¤ˆà¤®à¥‡à¤² à¤•à¥‡ à¤¸à¤¾à¤¥ à¤›à¤¾à¤¤à¥à¤° à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¤°à¥à¤œ à¤•à¤°à¥‡à¤‚', 'ÚˆØ§Ø¤Ù† Ù„ÙˆÚˆ Ú©Ø±Ø¯Û CSV ÙØ§Ø¦Ù„ Ú©Ùˆ Ú©Ú¾ÙˆÙ„ÛŒÚº Ø§ÙˆØ± Ø·Ø§Ù„Ø¨ Ø¹Ù„Ù… Ú©ÛŒ Ù…Ø¹Ù„ÙˆÙ…Ø§Øª Ú©Ùˆ Ù…Ù†ÙØ±Ø¯ Ø§ÛŒ Ù…ÛŒÙ„ Ú©Û’ Ø³Ø§ØªÚ¾ Ø¯Ø±Ø¬ Ú©Ø±ÛŒÚº', 'æ‰“å¼€ä¸‹è½½çš„CSVæ–‡ä»¶ï¼Œå¹¶ä½¿ç”¨å”¯ä¸€çš„ç”µå­é‚®ä»¶è¾“å…¥å­¦ç”Ÿä¿¡æ¯', 'ãƒ€ã‚¦ãƒ³ãƒ­ãƒ¼ãƒ‰ã—ãŸCSVãƒ•ã‚¡ã‚¤ãƒ«ã‚’é–‹ãã€ãƒ¦ãƒ‹ãƒ¼ã‚¯ãªãƒ¡ãƒ¼ãƒ«ã§å­¦ç”Ÿæƒ…å ±ã‚’å…¥åŠ›ã—ã¦ãã ã•ã„', 'Abra o arquivo CSV baixado e insira as informaÃ§Ãµes do aluno com e-mail exclusivo', 'ÐžÑ‚ÐºÑ€Ð¾Ð¹Ñ‚Ðµ Ð·Ð°Ð³Ñ€ÑƒÐ¶ÐµÐ½Ð½Ñ‹Ð¹ CSV-Ñ„Ð°Ð¹Ð» Ð¸ Ð²Ð²ÐµÐ´Ð¸Ñ‚Ðµ Ð¸Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸ÑŽ Ð¾ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚Ðµ Ñ ÑƒÐ½Ð¸ÐºÐ°Ð»ÑŒÐ½Ñ‹Ð¼ Ð°Ð´Ñ€ÐµÑÐ¾Ð¼ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹', 'Ouvrez le fichier CSV tÃ©lÃ©chargÃ© et entrez les informations sur lÃ©tudiant avec un e-mail unique', 'ë‹¤ìš´ë¡œë“œë°›ì€ CSV íŒŒì¼ì„ ì—´ì–´ ê³ ìœ  í•œ ì´ë©”ì¼ ì£¼ì†Œë¡œ í•™ìƒ ì •ë³´ë¥¼ ìž…ë ¥í•˜ì‹­ì‹œì˜¤.', 'Ã–ffnen Sie die heruntergeladene CSV-Datei und geben Sie die SchÃ¼lerinformationen mit einer eindeutigen E-Mail-Adresse ein', 'Apri il file CSV scaricato e inserisci le informazioni dello studente con une-mail univoca', 'à¹€à¸›à¸´à¸”à¹„à¸Ÿà¸¥à¹Œ CSV à¸—à¸µà¹ˆà¸”à¸²à¸§à¸™à¹Œà¹‚à¸«à¸¥à¸”à¹à¸¥à¸°à¹ƒà¸ªà¹ˆà¸‚à¹‰à¸­à¸¡à¸¹à¸¥à¸‚à¸­à¸‡à¸™à¸±à¸à¹€à¸£à¸µà¸¢à¸™à¸”à¹‰à¸§à¸¢à¸­à¸µà¹€à¸¡à¸¥à¸—à¸µà¹ˆà¹„à¸¡à¹ˆà¸‹à¹‰à¸³à¸à¸±à¸™', 'Nyissa meg a letÃ¶ltÃ¶tt CSV-fÃ¡jlt, Ã©s adja meg a hallgatÃ³i adatokat egyedi e-mail cÃ­mmel', 'Open het gedownloade CSV-bestand en geef studentinformatie op met unieke e-mail', 'Downloaded CSV lima notitia aperire et intrare studiosum cum unique inscriptio', 'Buka file CSV yang diunduh dan masukkan informasi siswa dengan email unik', 'Ä°ndirilen CSV dosyasÄ±nÄ± aÃ§Ä±n ve benzersiz e-posta ile Ã¶ÄŸrenci bilgilerini girin', 'Î‘Î½Î¿Î¯Î¾Ï„Îµ Ï„Î¿ Î±ÏÏ‡ÎµÎ¯Î¿ CSV Ï€Î¿Ï… ÎºÎ±Ï„ÎµÎ²Î¬ÏƒÎ±Ï„Îµ ÎºÎ±Î¹ ÎµÎ¹ÏƒÎ¬Î³ÎµÏ„Îµ Ï„Î¹Ï‚ Ï€Î»Î·ÏÎ¿Ï†Î¿ÏÎ¯ÎµÏ‚ ÏƒÏ€Î¿Ï…Î´Î±ÏƒÏ„ÏŽÎ½ Î¼Îµ Î¼Î¿Î½Î±Î´Î¹ÎºÎ¬ Î¼Î·Î½ÏÎ¼Î±Ï„Î± Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï…', 'ÙØ§ÛŒÙ„ CSV Ø¯Ø§Ù†Ù„ÙˆØ¯ Ø´Ø¯Ù‡ Ø±Ø§ Ø¨Ø§Ø² Ú©Ù†ÛŒØ¯ Ùˆ Ø§Ø·Ù„Ø§Ø¹Ø§Øª Ø¯Ø§Ù†Ø´Ø¬ÙˆÛŒÛŒ Ø±Ø§ Ø¨Ø§ Ø§ÛŒÙ…ÛŒÙ„ Ù…Ù†Ø­ØµØ± Ø¨Ù‡ ÙØ±Ø¯ ÙˆØ§Ø±Ø¯ Ú©Ù†ÛŒØ¯', 'Buka fail CSV yang dimuat turun dan masukkan maklumat pelajar dengan e-mel yang unik', 'à°¡à±Œà°¨à±à°²à±‹à°¡à± à°šà±‡à°¸à°¿à°¨ CSV à°«à±ˆà°²à±à°¨à± à°¤à±†à°°à°¿à°šà°¿ à°µà°¿à°¦à±à°¯à°¾à°°à±à°¥à°¿ à°‡à°®à±†à°¯à°¿à°²à± à°¸à°®à°¾à°šà°¾à°°à°¾à°¨à±à°¨à°¿ à°à°•à±ˆà°• à°‡à°®à±†à°¯à°¿à°²à±à°¤à±‹ à°¨à°®à±‹à°¦à± à°šà±‡à°¯à°‚à°¡à°¿', 'à®ªà®¤à®¿à®µà®¿à®±à®•à¯à®•à®®à¯ à®šà¯†à®¯à¯à®¯à®ªà¯à®ªà®Ÿà¯à®Ÿ CSV à®•à¯‹à®ªà¯à®ªà¯ˆ à®¤à®¿à®±à®¨à¯à®¤à¯, à®¤à®©à®¿à®ªà¯à®ªà®Ÿà¯à®Ÿ à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®®à¯‚à®²à®®à¯ à®®à®¾à®£à®µà®°à¯ à®¤à®•à®µà®²à¯ˆ à®‰à®³à¯à®³à®¿à®Ÿà®µà¯à®®à¯', 'àª¡àª¾àª‰àª¨àª²à«‹àª¡ àª•àª°à«‡àª² CSV àª«àª¾àª‡àª²àª¨à«‡ àª–à«‹àª²à«‹ àª…àª¨à«‡ àª…àª¨àª¨à«àª¯ àª‡àª®à«‡àª‡àª² àª¸àª¾àª¥à«‡ àªµàª¿àª¦à«àª¯àª¾àª°à«àª¥à«€ àª®àª¾àª¹àª¿àª¤à«€ àª¦àª¾àª–àª² àª•àª°à«‹', 'OtwÃ³rz pobrany plik CSV i wprowadÅº informacje o uczniu za pomocÄ… unikatowego adresu e-mail', 'Ð’Ñ–Ð´ÐºÑ€Ð¸Ð¹Ñ‚Ðµ Ð·Ð°Ð²Ð°Ð½Ñ‚Ð°Ð¶ÐµÐ½Ð¸Ð¹ Ñ„Ð°Ð¹Ð» CSV Ñ‚Ð° Ð²Ð²ÐµÐ´Ñ–Ñ‚ÑŒ Ñ–Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ñ–ÑŽ Ð¿Ñ€Ð¾ ÑÑ‚ÑƒÐ´ÐµÐ½Ñ‚ Ñ–Ð· ÑƒÐ½Ñ–ÐºÐ°Ð»ÑŒÐ½Ð¾ÑŽ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾ÑŽ Ð°Ð´Ñ€ÐµÑÐ¾ÑŽ', 'à¨¡à¨¾à¨Šà¨¨à¨²à©‹à¨¡ à¨•à©€à¨¤à©€ CSV à¨«à¨¾à¨ˆà¨² à¨–à©‹à¨²à©‹ à¨…à¨¤à©‡ à¨µà¨¿à¨²à©±à¨–à¨£ à¨ˆà¨®à©‡à¨² à¨¦à©‡ à¨¨à¨¾à¨² à¨µà¨¿à¨¦à¨¿à¨†à¨°à¨¥à©€ à¨œà¨¾à¨£à¨•à¨¾à¨°à©€ à¨¦à¨°à¨œ à¨•à¨°à©‹', 'DeschideÈ›i fiÈ™ierul CSV descÄƒrcat È™i introduceÈ›i informaÈ›ii despre student cu e-mail unic', 'á€’á€±á€«á€„á€ºá€¸ CSV á€–á€­á€¯á€„á€ºá€€á€­á€¯á€–á€½á€„á€ºá€·á€•á€¼á€®á€¸á€‘á€°á€¸á€á€¼á€¬á€¸á€á€²á€·á€¡á€®á€¸á€™á€±á€¸á€œá€ºá€”á€¾á€„á€ºá€·á€€á€»á€±á€¬á€„á€ºá€¸á€žá€¬á€¸á€žá€á€„á€ºá€¸á€¡á€á€»á€€á€ºá€¡á€œá€€á€ºá€‘á€Šá€ºá€·á€žá€½á€„á€ºá€¸', 'Å ii faili CSV ti a gba lati ayelujara ati táº¹ alaye ile-iwe páº¹lu alaye imeeli ti o yatá»', 'Bude fayil din CSV da aka sauke kuma shigar da bayanan dalibai tare da imel na musamman', NULL, NULL),
(798, 'bulk_student_instruction_4', 'Take the Guardian ID from Guardian list', 'à¦—à¦¾à¦°à§à¦¡à¦¿à¦¯à¦¼à¦¾à¦¨ à¦¤à¦¾à¦²à¦¿à¦•à¦¾ à¦¥à§‡à¦•à§‡ à¦—à¦¾à¦°à§à¦¡à¦¿à¦¯à¦¼à¦¾à¦¨ à¦†à¦‡à¦¡à¦¿ à¦¨à¦¿à¦¨', 'Tome la ID de Guardian de la lista de Guardian', 'Ø®Ø° Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ø¬Ø§Ø±Ø¯ÙŠØ§Ù† Ù…Ù† Ù‚Ø§Ø¦Ù…Ø© Ø§Ù„Ø¬Ø§Ø±Ø¯ÙŠØ§Ù†', 'à¤…à¤­à¤¿à¤­à¤¾à¤µà¤• à¤¸à¥‚à¤šà¥€ à¤¸à¥‡ à¤—à¤¾à¤°à¥à¤œà¤¿à¤¯à¤¨ à¤†à¤ˆà¤¡à¥€ à¤²à¥‡à¤‚', 'Ú¯Ø§Ø±ÚˆÛŒÙ† Ú©ÛŒ Ø´Ù†Ø§Ø®Øª Ø³Û’ Ú¯Ø§Ø±ÚˆÛŒÙ† Ú©ÛŒ ÙÛØ±Ø³Øª Ù„Û’ Ù„Ùˆ', 'ä»ŽGuardianåˆ—è¡¨ä¸­èŽ·å–Guardian ID', 'Guardianãƒªã‚¹ãƒˆã‹ã‚‰Guardian IDã‚’å–å¾—ã™ã‚‹', 'Pegue o Guardian ID da lista do Guardian', 'Ð’Ð¾Ð·ÑŒÐ¼Ð¸Ñ‚Ðµ Ð¸Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ð¸ÐºÐ°Ñ‚Ð¾Ñ€ Guardian Ð¸Ð· ÑÐ¿Ð¸ÑÐºÐ° Guardian', 'Prenez lidentifiant Guardian de la liste Guardian', 'Guardian ëª©ë¡ì—ì„œ Guardian ID ê°€ì ¸ ì˜¤ê¸°', 'Nimm die WÃ¤chter-ID aus der WÃ¤chterliste', 'Prendi lID Guardian dallelenco dei guardiani', 'à¸™à¸³ ID Guardian à¸ˆà¸²à¸à¸£à¸²à¸¢à¸à¸²à¸£ Guardian', 'Vegye a Guardian azonosÃ­tÃ³t a Guardian listÃ¡bÃ³l', 'Neem de Guardian ID van de Guardian-lijst', 'Guardiani accipere a Guardiano id album', 'Ambil ID Guardian dari daftar Guardian', 'Guardian IDsini Guardian listesinden alÄ±n', 'Î Î¬ÏÏ„Îµ Ï„Î¿Î½ ÎºÏ‰Î´Î¹ÎºÏŒ Guardian Î±Ï€ÏŒ Ï„Î· Î»Î¯ÏƒÏ„Î± Guardian', 'Ù†Ú¯Ø§Ù‡ÛŒ Ø¨Ù‡ Ø´Ù†Ø§Ø³Ù‡ Ù†Ú¯Ù‡Ø¨Ø§Ù† Ø§Ø² ÙÙ‡Ø±Ø³Øª Ú¯Ø§Ø±Ø¯ÛŒÙ†', 'Ambil ID Guardian dari senarai Guardian', 'à°—à°¾à°°à±à°¡à°¿à°¯à°¨à± à°à°¡à°¿ à°¨à±à°‚à°¡à°¿ à°—à°¾à°°à±à°¡à°¿à°¯à°¨à± à°à°¡à°¿à°¨à°¿ à°¤à±€à°¸à±à°•à±‹à°‚à°¡à°¿', 'à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯ à®à®Ÿà®¿ à®•à®¾à®°à¯à®Ÿà®¿à®¯à®©à¯ à®ªà®Ÿà¯à®Ÿà®¿à®¯à®²à®¿à®²à¯ à®‡à®°à¯à®¨à¯à®¤à¯ à®Žà®Ÿà¯à®¤à¯à®¤à¯à®•à¯ à®•à¯Šà®³à¯à®³à¯à®™à¯à®•à®³à¯', 'àª—àª¾àª°à«àª¡àª¿àª¯àª¨ àª¸à«‚àªšàª¿àª®àª¾àª‚àª¥à«€ àª—àª¾àª°à«àª¡àª¿àª¯àª¨ ID àª²à«‹', 'WeÅº identyfikator Guardian z listy Guardian', 'Ð’Ñ–Ð·ÑŒÐ¼Ñ–Ñ‚ÑŒ Ñ–Ð´ÐµÐ½Ñ‚Ð¸Ñ„Ñ–ÐºÐ°Ñ‚Ð¾Ñ€ Ð¾Ð¿Ñ–ÐºÑƒÐ½Ð° Ð· ÑÐ¿Ð¸ÑÐºÑƒ Ð¾Ñ…Ð¾Ñ€Ð¾Ð½Ñ†Ñ–Ð²', 'à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨ à¨¸à©‚à¨šà©€ à¨¤à©‹à¨‚ à¨—à¨¾à¨°à¨¡à©€à¨…à¨¨ à¨†à¨ˆà¨¡à©€ à¨²à¨µà©‹', 'LuaÈ›i ID-ul Guardian din lista Guardian', 'á€‚á€«á€¸á€’á€®á€¸á€šá€”á€ºá€¸ list á€€á€”á€±á€‚á€«á€¸á€’á€®á€¸á€šá€”á€ºá€¸ ID á€€á€­á€¯á€šá€°á€•á€«', 'Mu ID IDE kuro lati akojá» Awá»n olutá»ju', 'ÆŠauki ID na Guardian daga jerin sunayen Guardian', NULL, NULL),
(799, 'bulk_student_instruction_5', 'Save the edited CSV file', 'à¦¸à¦®à§à¦ªà¦¾à¦¦à¦¿à¦¤ à¦¸à¦¿à¦à¦¸à¦­à¦¿  à¦«à¦¾à¦‡à¦² à¦¸à¦‚à¦°à¦•à§à¦·à¦£ à¦•à¦°à§à¦¨', 'Guarde el archivo CSV editado', 'Ø§Ø­ÙØ¸ Ù…Ù„Ù CSV Ø§Ù„Ø°ÙŠ ØªÙ… ØªØ­Ø±ÙŠØ±Ù‡', 'à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤¸à¥€à¤à¤¸à¤µà¥€ à¤«à¤¼à¤¾à¤‡à¤² à¤¸à¤¹à¥‡à¤œà¥‡à¤‚', 'ØªØ±Ù…ÛŒÙ… Ø´Ø¯Û CSV ÙØ§Ø¦Ù„ Ú©Ùˆ Ù…Ø­ÙÙˆØ¸ Ú©Ø±ÛŒÚº', 'ä¿å­˜å·²ç¼–è¾‘çš„CSVæ–‡ä»¶', 'ç·¨é›†ã—ãŸCSVãƒ•ã‚¡ã‚¤ãƒ«ã‚’ä¿å­˜ã™ã‚‹', 'Salve o arquivo CSV editado', 'Ð¡Ð¾Ñ…Ñ€Ð°Ð½Ð¸Ñ‚ÑŒ Ð¾Ñ‚Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð½Ð½Ñ‹Ð¹ Ñ„Ð°Ð¹Ð» CSV', 'Enregistrez le fichier CSV modifiÃ©', 'íŽ¸ì§‘ ëœ CSV íŒŒì¼ ì €ìž¥', 'Speichern Sie die bearbeitete CSV-Datei', 'Salva il file CSV modificato', 'à¸šà¸±à¸™à¸—à¸¶à¸à¹„à¸Ÿà¸¥à¹Œ CSV à¸—à¸µà¹ˆà¹à¸à¹‰à¹„à¸‚à¹à¸¥à¹‰à¸§', 'Mentse a szerkesztett CSV fÃ¡jlt', 'Sla het bewerkte CSV-bestand op', 'CSV lima edited by salvificem', 'Simpan file CSV yang diedit', 'DÃ¼zenlenen CSV dosyasÄ±nÄ± kaydet', 'Î‘Ï€Î¿Î¸Î·ÎºÎµÏÏƒÏ„Îµ Ï„Î¿ ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÎ¼Î­Î½Î¿ Î±ÏÏ‡ÎµÎ¯Î¿ CSV', 'ÙØ§ÛŒÙ„ CSV ÙˆÛŒØ±Ø§ÛŒØ´ Ø´Ø¯Ù‡ Ø±Ø§ Ø°Ø®ÛŒØ±Ù‡ Ú©Ù†ÛŒØ¯', 'Simpan fail CSV yang diedit', 'à°¸à°µà°°à°¿à°‚à°šà°¿à°¨ CSV à°«à±ˆà°²à±à°¨à± à°¸à±‡à°µà± à°šà±‡à°¯à°‚à°¡à°¿', 'à®¤à®¿à®°à¯à®¤à¯à®¤à®ªà¯à®ªà®Ÿà¯à®Ÿ CSV à®•à¯‹à®ªà¯à®ªà¯ˆ à®šà¯‡à®®à®¿', 'àª¸àª‚àªªàª¾àª¦àª¿àª¤ CSV àª«àª¾àª‡àª² àª¸àª¾àªšàªµà«‹', 'Zapisz edytowany plik CSV', 'Ð—Ð±ÐµÑ€ÐµÐ³Ñ‚Ð¸ Ñ€ÐµÐ´Ð°Ð³Ð¾Ð²Ð°Ð½Ð¸Ð¹ Ñ„Ð°Ð¹Ð» CSV', 'à¨¸à©°à¨ªà¨¾à¨¦à¨¿à¨¤ CSV à¨«à¨¾à¨ˆà¨² à¨¸à©à¨°à©±à¨–à¨¿à¨…à¨¤ à¨•à¨°à©‹', 'SalvaÈ›i fiÈ™ierul CSV editat', 'á€¡á€†á€­á€¯á€•á€« edited CSV á€–á€­á€¯á€„á€º Save', 'Fipamá» faili CSV ti o satunká»', 'Ajiye fayil É—in CSV da aka gyara', NULL, NULL),
(800, 'bulk_student_instruction_6', 'Upload again CSV file you just edited and submit', 'à¦à¦¡à¦¿à¦Ÿ à¦•à¦°à¦¾ à¦«à¦¾à¦‡à¦²à¦Ÿà¦¿ à¦†à¦¬à¦¾à¦° à¦†à¦ªà¦²à§‹à¦¡ à¦•à¦°à§à¦¨ à¦à¦¬à¦‚ à¦¸à¦¾à¦¬à¦®à¦¿à¦Ÿ à¦•à¦°à§à¦¨', 'Sube de nuevo el archivo CSV que acabas de editar y enviar', 'Ù‚Ù… Ø¨ØªØ­Ù…ÙŠÙ„ Ù…Ù„Ù CSV Ù…Ø±Ø© Ø£Ø®Ø±Ù‰ Ù‚Ù…Øª Ø¨ØªØ­Ø±ÙŠØ±Ù‡ ÙˆØ¥Ø±Ø³Ø§Ù„Ù‡', 'à¤«à¤¿à¤° à¤¸à¥‡ à¤¸à¤‚à¤ªà¤¾à¤¦à¤¿à¤¤ à¤”à¤° à¤œà¤®à¤¾ à¤•à¤°à¥‡à¤‚ CSV à¤«à¤¼à¤¾à¤‡à¤² à¤…à¤ªà¤²à¥‹à¤¡ à¤•à¤°à¥‡à¤‚', 'Ø¯ÙˆØ¨Ø§Ø±Û ØªØ±Ù…ÛŒÙ… Ú©Ø±ÛŒÚº Ø§ÙˆØ± Ø¬Ù…Ø¹ Ú©Ø±Ø§Ø¦ÛŒÚº CSV ÙØ§Ø¦Ù„ Ø¯ÙˆØ¨Ø§Ø±Û Ø§Ù¾ Ù„ÙˆÚˆ Ú©Ø±ÛŒÚº', 'å†æ¬¡ä¸Šä¼ æ‚¨åˆšç¼–è¾‘å¹¶æäº¤çš„CSVæ–‡ä»¶', 'ç·¨é›†ã—ã¦é€ä¿¡ã—ãŸCSVãƒ•ã‚¡ã‚¤ãƒ«ã‚’å†åº¦ã‚¢ãƒƒãƒ—ãƒ­ãƒ¼ãƒ‰ã™ã‚‹', 'Carregue novamente o ficheiro CSV que acabou de editar e envie', 'Ð—Ð°Ð³Ñ€ÑƒÐ·Ð¸Ñ‚Ðµ ÑÐ½Ð¾Ð²Ð° CSV-Ñ„Ð°Ð¹Ð», ÐºÐ¾Ñ‚Ð¾Ñ€Ñ‹Ð¹ Ð²Ñ‹ Ñ‚Ð¾Ð»ÑŒÐºÐ¾ Ñ‡Ñ‚Ð¾ Ð¾Ñ‚Ñ€ÐµÐ´Ð°ÐºÑ‚Ð¸Ñ€Ð¾Ð²Ð°Ð»Ð¸ Ð¸ Ð¾Ñ‚Ð¿Ñ€Ð°Ð²Ð¸Ð»Ð¸', 'TÃ©lÃ©chargez Ã  nouveau le fichier CSV que vous venez dÃ©diter et de soumettre', 'ë°©ê¸ˆ ìˆ˜ì •í•˜ê³  ì œì¶œ í•œ CSV íŒŒì¼ì„ ë‹¤ì‹œ ì—…ë¡œë“œí•˜ì‹­ì‹œì˜¤.', 'Laden Sie erneut die CSV-Datei hoch, die Sie gerade bearbeitet und gesendet haben', 'Carica di nuovo il file CSV che hai appena modificato e invia', 'à¸­à¸±à¸›à¹‚à¸«à¸¥à¸”à¸­à¸µà¸à¸„à¸£à¸±à¹‰à¸‡à¹„à¸Ÿà¸¥à¹Œ CSV à¸—à¸µà¹ˆà¸„à¸¸à¸“à¹€à¸žà¸´à¹ˆà¸‡à¹à¸à¹‰à¹„à¸‚à¹à¸¥à¸°à¸ªà¹ˆà¸‡', 'TÃ¶ltse meg Ãºjra a szerkesztett Ã©s benyÃºjtott CSV fÃ¡jlt', 'Upload opnieuw CSV-bestand dat u zojuist hebt bewerkt en verzendt', 'CSV lima upload denuo edidit et vos iustus submittere', 'Unggah lagi file CSV yang baru saja Anda edit dan kirim', 'DÃ¼zenlediÄŸiniz ve gÃ¶nderdiÄŸiniz yeni CSV dosyasÄ±nÄ± tekrar yÃ¼kleyin', 'Î‘Î½ÎµÎ²Î¬ÏƒÏ„Îµ Î¾Î±Î½Î¬ Î±ÏÏ‡ÎµÎ¯Î¿ CSV Ï€Î¿Ï… Î¼ÏŒÎ»Î¹Ï‚ ÎµÏ€ÎµÎ¾ÎµÏÎ³Î±ÏƒÏ„Î®ÎºÎ±Ï„Îµ ÎºÎ±Î¹ Ï…Ï€Î¿Î²Î¬Î»Î±Ï„Îµ', 'Ø¯ÙˆØ¨Ø§Ø±Ù‡ ÙØ§ÛŒÙ„ CSV Ø±Ø§ Ú©Ù‡ ÙˆÛŒØ±Ø§ÛŒØ´ Ú©Ø±Ø¯Ù‡ Ø§ÛŒØ¯ Ø¨Ø§Ø±Ú¯Ø°Ø§Ø±ÛŒ Ú©Ù†ÛŒØ¯ Ùˆ Ø§Ø±Ø³Ø§Ù„ Ú©Ù†ÛŒØ¯', 'Muat naik fail CSV yang baru sahaja anda edit dan hantar', 'à°®à°³à±à°³à±€ à°…à°ªà±à°²à±‹à°¡à± CSV à°«à±ˆà°²à± à°®à±€à°°à± à°¸à°µà°°à°¿à°‚à°šà°¿à°¨ à°®à°°à°¿à°¯à± à°¸à°®à°°à±à°ªà°¿à°‚à°šà°‚à°¡à°¿', 'à®ªà®¤à®¿à®µà¯‡à®±à¯à®± à®®à¯€à®£à¯à®Ÿà¯à®®à¯ CSV à®•à¯‹à®ªà¯à®ªà¯ˆ à®¨à¯€à®™à¯à®•à®³à¯ à®¤à®¿à®°à¯à®¤à¯à®¤à®ªà¯à®ªà®Ÿà¯à®Ÿà¯ à®šà®®à®°à¯à®ªà¯à®ªà®¿à®•à¯à®•à®µà¯à®®à¯', 'àª¤àª®à«‡ àª¹àª®àª£àª¾àª‚ àª¸àª‚àªªàª¾àª¦àª¿àª¤ àª…àª¨à«‡ àª¸àª¬àª®àª¿àªŸ àª•àª°à«‹ àª›à«‹ àª¤à«‡ CSV àª«àª¾àª‡àª² àª«àª°à«€àª¥à«€ àª…àªªàª²à«‹àª¡ àª•àª°à«‹', 'PrzeÅ›lij ponownie plik CSV, ktÃ³ry wÅ‚aÅ›nie edytowaÅ‚eÅ› i przesÅ‚aÅ‚eÅ›', 'Ð—Ð°Ð²Ð°Ð½Ñ‚Ð°Ð¶Ñ‚Ðµ Ñ„Ð°Ð¹Ð» CSV, ÑÐºÐ¸Ð¹ Ð²Ð¸ Ñ‰Ð¾Ð¹Ð½Ð¾ Ñ€ÐµÐ´Ð°Ð³ÑƒÐ²Ð°Ð»Ð¸ Ñ‚Ð° Ð¿Ð¾Ð´Ð°Ð»Ð¸', 'à¨¦à©à¨¬à¨¾à¨°à¨¾ CSV à¨«à¨¾à¨ˆà¨² à¨…à¨ªà¨²à©‹à¨¡ à¨•à¨°à©‹ à¨œà©‹ à¨¤à©à¨¸à©€à¨‚ à¨¹à©à¨£à©‡ à¨¸à©°à¨ªà¨¾à¨¦à¨¿à¨¤ à¨…à¨¤à©‡ à¨ªà©à¨°à¨¸à¨¤à©à¨¤ à¨•à¨°à¨¦à©‡ à¨¹à©‹', 'ÃŽncÄƒrcaÈ›i din nou fiÈ™ierul CSV pe care tocmai l-aÈ›i editat È™i trimis', 'CSV á€–á€­á€¯á€„á€ºá€›á€¯á€¶ edited á€žá€„á€º file á€™á€»á€¬á€¸á€”á€¾á€„á€ºá€·á€á€„á€ºá€žá€½á€„á€ºá€¸á€žá€Šá€ºá€”á€±á€¬á€€á€ºá€á€–á€”á€º Upload á€œá€¯á€•á€ºá€•á€«', 'á¹¢e atunse faili CSV ti o á¹£atunká» ati firaná¹£áº¹', 'Shigar da fayil É—in CSV kawai da aka gyara da kuma mika shi', NULL, NULL),
(801, 'manage_activity', 'Manage Activity', 'à¦•à¦¾à¦°à§à¦¯à¦•à¦²à¦¾à¦ª à¦ªà¦°à¦¿à¦šà¦¾à¦²à¦¨à¦¾ à¦•à¦°à§à¦¨', 'Administrar actividad', 'Ø¥Ø¯Ø§Ø±Ø© Ø§Ù„Ù†Ø´Ø§Ø·', 'à¤—à¤¤à¤¿à¤µà¤¿à¤§à¤¿ à¤ªà¥à¤°à¤¬à¤‚à¤§à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³Ø±Ú¯Ø±Ù…ÛŒ Ú©Ø§ Ù†Ø¸Ù… Ú©Ø±ÛŒÚº', 'ç®¡ç†æ´»åŠ¨', 'ã‚¢ã‚¯ãƒ†ã‚£ãƒ“ãƒ†ã‚£ã®ç®¡ç†', 'Gerenciar atividade', 'Ð£Ð¿Ñ€Ð°Ð²Ð»ÐµÐ½Ð¸Ðµ Ð´ÐµÑÑ‚ÐµÐ»ÑŒÐ½Ð¾ÑÑ‚ÑŒÑŽ', 'GÃ©rer lactivitÃ©', 'í™œë™ ê´€ë¦¬', 'AktivitÃ¤t verwalten', 'Gestisci attivitÃ ', 'à¸ˆà¸±à¸”à¸à¸²à¸£à¸à¸´à¸ˆà¸à¸£à¸£à¸¡', 'TevÃ©kenysÃ©g kezelÃ©se', 'Activiteit beheren', 'curo activitate', 'Kelola Aktivitas', 'EtkinliÄŸi YÃ¶net', 'Î”Î¹Î±Ï‡ÎµÎ¯ÏÎ¹ÏƒÎ· Ï„Î·Ï‚ Î´ÏÎ±ÏƒÏ„Î·ÏÎ¹ÏŒÏ„Î·Ï„Î±Ï‚', 'Ù…Ø¯ÛŒØ±ÛŒØª ÙØ¹Ø§Ù„ÛŒØª', 'Urus Aktiviti', 'à°•à°¾à°°à±à°¯à°¾à°šà°°à°£à°¨à± à°¨à°¿à°°à±à°µà°¹à°¿à°‚à°šà°‚à°¡à°¿', 'à®šà¯†à®¯à®²à¯à®ªà®¾à®Ÿà¯à®Ÿà¯ˆ à®¨à®¿à®°à¯à®µà®•à®¿', 'àªªà«àª°àªµà«ƒàª¤à«àª¤àª¿àª¨à«àª‚ àª¸àª‚àªšàª¾àª²àª¨ àª•àª°à«‹', 'ZarzÄ…dzaj aktywnoÅ›ciÄ…', 'ÐšÐµÑ€ÑƒÐ²Ð°Ð½Ð½Ñ Ð´Ñ–ÑÐ»ÑŒÐ½Ñ–ÑÑ‚ÑŽ', 'à¨¸à¨°à¨—à¨°à¨®à©€ à¨µà¨¿à¨µà¨¸à¨¥à¨¿à¨¤ à¨•à¨°à©‹', 'GestionaÈ›i activitatea', 'Activity á€€á€­á€¯á€…á€®á€™á€¶á€á€”á€·á€ºá€á€½á€²á€›á€”á€º', 'á¹¢akoso Awá»n aá¹£ayan iá¹£áº¹', 'Sarrafa Ayyukan', NULL, NULL),
(802, 'activity', 'Activity', 'à¦•à¦¾à¦°à§à¦¯à¦•à¦²à¦¾à¦ª', 'Actividad', 'Ù†Ø´Ø§Ø·', 'à¤—à¤¤à¤¿à¤µà¤¿à¤§à¤¿', 'Ø³Ø±Ú¯Ø±Ù…ÛŒ', 'æ´»åŠ¨', 'ã‚¢ã‚¯ãƒ†ã‚£ãƒ“ãƒ†ã‚£', 'Atividade', 'ÐœÐµÑ€Ð¾Ð¿Ñ€Ð¸ÑÑ‚Ð¸Ñ', 'ActivitÃ©', 'í™œë™', 'AktivitÃ¤t', 'AttivitÃ ', 'à¸à¸´à¸ˆà¸à¸£à¸£à¸¡', 'TevÃ©kenysÃ©g', 'Activiteit', 'actio', 'Aktivitas', 'Aktivite', 'Î”ÏÎ±ÏƒÏ„Î·ÏÎ¹ÏŒÏ„Î·Ï„Î±', 'ÙØ¹Ø§Ù„ÛŒØª', 'Aktiviti', 'à°•à°¾à°°à±à°¯à°¾à°šà°°à°£', 'à®šà¯†à®¯à®²à¯à®ªà®¾à®Ÿà¯', 'àªªà«àª°àªµà«ƒàª¤à«àª¤àª¿', 'CzynnoÅ›Ä‡', 'Ð”Ñ–ÑÐ»ÑŒÐ½Ñ–ÑÑ‚ÑŒ', 'à¨¸à¨°à¨—à¨°à¨®à©€', 'Activitate', 'á€œá€¾á€¯á€•á€ºá€›á€¾á€¬á€¸á€™á€¾á€¯', 'Iá¹£áº¹', 'Ayyuka', NULL, NULL),
(803, 'default_time_zone', 'Default Time Zone', 'à¦¡à¦¿à¦«à¦²à§à¦Ÿ à¦Ÿà¦¾à¦‡à¦® à¦œà§‹à¦¨', 'Zona horaria predeterminada', 'Ø§Ù„Ù…Ù†Ø·Ù‚Ø© Ø§Ù„Ø²Ù…Ù†ÙŠØ© Ø§Ù„Ø§ÙØªØ±Ø§Ø¶ÙŠØ©', 'à¤¡à¤¿à¤«à¤¼à¥‰à¤²à¥à¤Ÿ à¤¸à¤®à¤¯ à¤•à¥à¤·à¥‡à¤¤à¥à¤°', 'ÚˆÛŒÙØ§Ù„Ù¹ Ù¹Ø§Ø¦Ù… Ø²ÙˆÙ†', 'é»˜è®¤æ—¶åŒº', 'ãƒ‡ãƒ•ã‚©ãƒ«ãƒˆã®ã‚¿ã‚¤ãƒ ã‚¾ãƒ¼ãƒ³', 'Fuso horÃ¡rio padrÃ£o', 'Ð§Ð°ÑÐ¾Ð²Ð¾Ð¹ Ð¿Ð¾ÑÑ Ð¿Ð¾ ÑƒÐ¼Ð¾Ð»Ñ‡Ð°Ð½Ð¸ÑŽ', 'Fuseau horaire par dÃ©faut', 'ê¸°ë³¸ ì‹œê°„ëŒ€', 'Standardzeitzone', 'Fuso orario predefinito', 'à¹€à¸‚à¸•à¹€à¸§à¸¥à¸²à¹€à¸£à¸´à¹ˆà¸¡à¸•à¹‰à¸™', 'AlapÃ©rtelmezett idÅ‘zÃ³na', 'Standaard tijdzone', 'Default Time Zone', 'Zona Waktu Default', 'VarsayÄ±lan Zaman Dilimi', 'Î ÏÎ¿ÎµÏ€Î¹Î»ÎµÎ³Î¼Î­Î½Î· Î¶ÏŽÎ½Î· ÏŽÏÎ±Ï‚', 'Ù…Ù†Ø·Ù‚Ù‡ Ø²Ù…Ø§Ù†ÛŒ Ù¾ÛŒØ´ ÙØ±Ø¶', 'Zon Masa Lalai', 'à°¡à°¿à°«à°¾à°²à±à°Ÿà± à°Ÿà±ˆà°®à± à°œà±‹à°¨à±', 'à®‡à®¯à®²à¯à®ªà¯à®¨à®¿à®²à¯ˆ à®¨à¯‡à®° à®®à®£à¯à®Ÿà®²à®®à¯', 'àª¡àª¿àª«à«‰àª²à«àªŸ àª¸àª®àª¯ àªà«‹àª¨', 'DomyÅ›lna strefa czasowa', 'Ð§Ð°ÑÐ¾Ð²Ð¸Ð¹ Ð¿Ð¾ÑÑ Ð·Ð° Ð·Ð°Ð¼Ð¾Ð²Ñ‡ÑƒÐ²Ð°Ð½Ð½ÑÐ¼', 'à¨¡à¨¿à¨«à¨¾à¨²à¨Ÿ à¨¸à¨®à¨¾à¨‚ à¨œà¨¼à©‹à¨¨', 'Fusul orar implicit', 'default á€¡á€á€»á€­á€”á€ºá€‡á€¯á€”á€º', 'Aago Aago Aiyipada', 'Yanayin lokaci na tsohuwar', NULL, NULL),
(804, 'check_all', 'Check All', 'à¦¸à¦¬ à¦Ÿà¦¿à¦• à¦šà¦¿à¦¹à§à¦¨ à¦¦à¦¿à¦¨', 'Verificar todo', 'ØªØ­Ù‚Ù‚ Ù…Ù† Ø§Ù„ÙƒÙ„', 'à¤¸à¤­à¥€ à¤•à¥€ à¤œà¤¾à¤‚à¤š à¤•à¤°à¥‹', 'Ø³Ø¨ Ú†ÛŒÚ© Ú©Ø±ÛŒÚº', 'é€‰æ‹©æ‰€æœ‰', 'ã™ã¹ã¦ãƒã‚§ãƒƒã‚¯', 'Verificar tudo', 'ÐžÑ‚Ð¼ÐµÑ‚Ð¸Ñ‚ÑŒ Ð²ÑÐµ', 'VÃ©rifie tout', 'ëª¨ë‘ í™•ì¸', 'Alle Ã¼berprÃ¼fen', 'Seleziona tutto', 'à¹€à¸¥à¸·à¸­à¸à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'EllenÅ‘rizni mind', 'Controleer alles', 'reprehendo omnes', 'Periksa Semua', 'TÃ¼mÃ¼nÃ¼ Kontrol Et', 'Î•Î»ÎµÎ³Î¾Îµ Ï„Î± Î¿Î»Î±', 'Ø¨Ø±Ø±Ø³ÛŒ Ù‡Ù…Ù‡', 'Memeriksa semua', 'à°…à°¨à±à°¨à°¿à°‚à°Ÿà°¿à°¨à±€ à°¤à°¨à°¿à°–à±€ à°šà±‡à°¯à°‚à°¡à°¿', 'à®Žà®²à¯à®²à®¾à®®à¯ à®šà®°à®¿à®ªà®¾à®°à¯à®•à¯à®•à®µà¯à®®à¯', 'àª¬àª§àª¾ àª¤àªªàª¾àª¸à«‹', 'Zaznacz wszystkie', 'ÐŸÐµÑ€ÐµÐ²Ñ–Ñ€Ð¸Ñ‚Ð¸ Ð²ÑÐµ', 'à¨¸à¨¾à¨°à©‡ à¨šà©ˆà©±à¨• à¨•à¨°à©‹', 'SelectaÈ›i toate', 'á€¡á€¬á€¸á€œá€¯á€¶á€¸á€…á€…á€ºá€•á€«', 'á¹¢ayáº¹wo Gbogbo', 'Duba Duk', NULL, NULL),
(805, 'uncheck_all', 'Uncheck All', 'à¦¸à¦¬ à¦Ÿà¦¿à¦• à¦šà¦¿à¦¹à§à¦¨ à¦¤à§à¦²à§‡ à¦¦à¦¿à¦¨', 'Desmarcar todo', 'Ø§Ù„ØºØ§Ø¡Ø§Ù„ÙƒÙ„', 'à¤¸à¤¬ à¤•à¥‹ à¤…à¤šà¤¯à¤¨à¤¿à¤¤ à¤•à¤°à¥‡à¤‚', 'Ø³Ø¨Ú¾ÛŒ Ú©Ùˆ Ù†Ø´Ø§Ù† Ø²Ø¯ Ú©Ø±ÛŒÚº', 'å–æ¶ˆæ‰€æœ‰', 'ã™ã¹ã¦ã®ãƒã‚§ãƒƒã‚¯ã‚’å¤–ã™', 'Desmarcar todos', 'Ð¡Ð½ÑÑ‚ÑŒ Ð²ÑÐµ', 'DÃ©cocher tout', 'ëª¨ë‘ ì„ íƒ ì·¨ì†Œ', 'Alle deaktivieren', 'Deseleziona tutto', 'à¸¢à¸à¹€à¸¥à¸´à¸à¸à¸²à¸£à¹€à¸¥à¸·à¸­à¸à¸—à¸±à¹‰à¸‡à¸«à¸¡à¸”', 'Minden vÃ¡lasztÃ¡s tÃ¶rlÃ©se', 'Deselecteer alles', 'omnes Licens', 'Jangan tandai semua', 'TÃ¼mÃ¼nÃ¼ iÅŸaretleme', 'Î‘Ï€Î¿ÎµÏ€Î¹Î»Î¿Î³Î® ÏŒÎ»Ï‰Î½', 'Ù‡Ù…Ù‡ Ù…ÙˆØ§Ø±Ø¯ Ø±Ø§ Ø§Ø² Ø­Ø§Ù„Øª Ø§Ù†ØªØ®Ø§Ø¨ Ø®Ø§Ø±Ø¬ Ú©Ù†ÛŒØ¯', 'Nyahtanda Semua', 'à°…à°¨à±à°¨à±€ à°¤à°¨à°¿à°–à±€ à°šà±‡à°¯à°¿', 'à®…à®©à¯ˆà®¤à¯à®¤à¯ˆà®¯à¯à®®à¯ à®…à®•à®±à¯à®±à®µà¯à®®à¯', 'àª¬àª§àª¾àª¨à«‡ àª…àª¨àªšà«‡àª• àª•àª°à«‹', 'Odznacz wszystkie', 'Ð—Ð½Ñ–Ð¼Ñ–Ñ‚ÑŒ Ð¿Ñ€Ð°Ð¿Ð¾Ñ€ÐµÑ†ÑŒ Ð±Ñ–Ð»Ñ Ð²ÑÑ–Ñ…', 'à¨¸à¨­ à¨¹à¨Ÿà¨¾à¨“', 'Deselecteaza tot', 'Uncheck á€¡á€¬á€¸á€œá€¯á€¶á€¸', 'á¹¢ii Gbogbo ráº¹', 'Cire Dukkan', NULL, NULL),
(806, 'statement', 'Statement', 'à¦¸à§à¦Ÿà§‡à¦Ÿà¦®à§‡à¦¨à§à¦Ÿ', 'DeclaraciÃ³n', 'Ø¨ÙŠØ§Ù†', 'à¤¬à¤¯à¤¾à¤¨', 'Ø¨ÛŒØ§Ù†', 'å£°æ˜Ž', 'ã‚¹ãƒ†ãƒ¼ãƒˆãƒ¡ãƒ³ãƒˆ', 'DeclaraÃ§Ã£o', 'ÑƒÑ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ð¸Ðµ', 'DÃ©claration', 'ì„±ëª…ì„œ', 'ErklÃ¤rung', 'dichiarazione', 'à¸„à¸³à¹à¸–à¸¥à¸‡', 'Nyilatkozat', 'Uitspraak', 'dicitur', 'Pernyataan', 'Beyan', 'Î”Î®Î»Ï‰ÏƒÎ·', 'Ø¨ÛŒØ§Ù†ÛŒÙ‡', 'Kenyataan', 'à°ªà±à°°à°•à°Ÿà°¨', 'à®…à®±à®¿à®•à¯à®•à¯ˆ', 'àª¨àª¿àªµà«‡àª¦àª¨', 'Komunikat', 'Ð—Ð°ÑÐ²Ð°', 'à¨¬à¨¿à¨†à¨¨', 'AfirmaÈ›ie', 'á€‘á€¯á€á€ºá€•á€¼á€”á€ºá€á€»á€€á€º', 'GbÃ³lÃ³hÃ¹n', 'Bayanin', NULL, NULL),
(807, 'transaction', 'Transaction', 'à¦²à§‡à¦¨à¦¦à§‡à¦¨', 'TransacciÃ³n', 'Ø¹Ù…Ù„ÙŠØ© ØªØ¬Ø§Ø±ÙŠØ©', 'à¤²à¥‡à¤¨-à¤¦à¥‡à¤¨', 'Ù¹Ø±Ø§Ù†Ø²ÛŒÚ©Ø´Ù†', 'äº¤æ˜“', 'ãƒˆãƒ©ãƒ³ã‚¶ã‚¯ã‚·ãƒ§ãƒ³', 'TransaÃ§Ã£o', 'Ð¡Ð´ÐµÐ»ÐºÐ°', 'Transaction', 'íŠ¸ëžœìž­ì…˜', 'Transaktion', 'Transazione', 'à¸à¸²à¸£à¸‹à¸·à¹‰à¸­à¸‚à¸²à¸¢', 'TranzakciÃ³', 'Transactie', 'transaction', 'Transaksi', 'iÅŸlem', 'Î£Ï…Î½Î±Î»Î»Î±Î³Î®', 'Ù…Ø¹Ø§Ù…Ù„Ù‡', 'Transaksi', 'à°²à°¾à°µà°¾à°¦à±‡à°µà±€', 'à®ªà®°à®¿à®µà®°à¯à®¤à¯à®¤à®©à¯ˆ', 'àªµà«àª¯àªµàª¹àª¾àª°', 'Transakcja', 'Ð¢Ñ€Ð°Ð½Ð·Ð°ÐºÑ†Ñ–Ñ', 'à¨Ÿà©à¨°à¨¾à¨‚à¨œà©ˆà¨•à¨¸à¨¼à¨¨', 'TranzacÅ£ie', 'á€€á€­á€…á€¹á€…', 'Iá¹£owo', 'Maamala', NULL, NULL),
(808, 'debit', 'Debit', 'à¦¡à§‡à¦¬à¦¿à¦Ÿ', 'DÃ©bito', 'Ù…Ø¯ÙŠÙ†', 'à¤¨à¤¾à¤®à¥‡', 'ÚˆÛŒØ¨Ù¹', 'å€Ÿæ–¹', 'ãƒ‡ãƒ“ãƒƒãƒˆ', 'DÃ©bito', 'Ð”ÐµÐ±ÐµÑ‚', 'DÃ©bit', 'ì°¨ë³€', 'Lastschrift', 'Addebito', 'à¸«à¸±à¸à¸šà¸±à¸à¸Šà¸µ', 'tartozÃ¡s', 'Debiteren', 'Debita', 'Debet', 'borÃ§', 'Î§ÏÎ­Ï‰ÏƒÎ·', 'Ø¨Ø¯Ù‡ÛŒ', 'Debit', 'à°¡à±†à°¬à°¿à°Ÿà±', 'à®Ÿà¯†à®ªà®¿à®Ÿà¯', 'àª¡à«‡àª¬àª¿àªŸ', 'ObciÄ…Å¼yÄ‡', 'Ð”ÐµÐ±ÐµÑ‚', 'à¨¡à©ˆà¨¬à¨¿à¨Ÿ', 'Debit', 'debit', 'Debit', 'HaÉ—i', NULL, NULL),
(809, 'credit', 'Credit', 'à¦•à§à¦°à§‡à¦¡à¦¿à¦Ÿ', 'CrÃ©dito', 'Ø§Ø¦ØªÙ…Ø§Ù†', 'à¤¶à¥à¤°à¥‡à¤¯', 'Ú©Ø±ÛŒÚˆÙ¹', 'ä¿¡ç”¨', 'ã‚¯ãƒ¬ã‚¸ãƒƒãƒˆ', 'CrÃ©dito', 'ÐºÑ€ÐµÐ´Ð¸Ñ‚', 'CrÃ©dit', 'ì‹ ìš©', 'Kredit', 'Credito', 'à¹€à¸„à¸£à¸”à¸´à¸•', 'Hitel', 'Credit', 'fidem', 'Kredit', 'Kredi', 'Î Î¯ÏƒÏ„Ï‰ÏƒÎ·', 'Ø§Ø¹ØªØ¨Ø§Ø±', 'Kredit', 'à°•à±à°°à±†à°¡à°¿à°Ÿà±', 'à®•à®Ÿà®©à¯', 'àª•à«àª°à«‡àª¡àª¿àªŸ', 'Kredyt', 'ÐšÑ€ÐµÐ´Ð¸Ñ‚', 'à¨•à©à¨°à©ˆà¨¡à¨¿à¨Ÿ', 'Credit', 'á€¡á€€á€¼á€½á€±á€¸', 'Ike', 'Credit', NULL, NULL),
(810, 'reset_user_email', 'Reset User Email', 'à¦¬à§à¦¯à¦¬à¦¹à¦¾à¦°à¦•à¦¾à¦°à§€à¦° à¦‡à¦®à§‡à¦² à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Restablecer correo electrÃ³nico', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ Ù„Ù„Ù…Ø³ØªØ®Ø¯Ù…', 'à¤‰à¤ªà¤¯à¥‹à¤—à¤•à¤°à¥à¤¤à¤¾ à¤ˆà¤®à¥‡à¤² à¤°à¥€à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚', 'ØµØ§Ø±Ù Ø§ÛŒ Ù…ÛŒÙ„ Ø±ÛŒ Ø³ÛŒÙ¹ Ú©Ø±ÛŒÚº', 'é‡ç½®ç”¨æˆ·ç”µå­é‚®ä»¶', 'ãƒ¦ãƒ¼ã‚¶ãƒ¼ã®é›»å­ãƒ¡ãƒ¼ãƒ«ã‚’ãƒªã‚»ãƒƒãƒˆã™ã‚‹', 'Redefinir email do usuÃ¡rio', 'Ð¡Ð±Ñ€Ð¾Ñ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ð¹ Ð¿Ð¾Ñ‡Ñ‚Ñ‹ Ð¿Ð¾Ð»ÑŒÐ·Ð¾Ð²Ð°Ñ‚ÐµÐ»Ñ', 'RÃ©initialiser lemail', 'ì‚¬ìš©ìž ì´ë©”ì¼ ìž¬ì„¤ì •', 'Benutzer-E-Mail zurÃ¼cksetzen', 'Reimposta e-mail utente', 'à¸£à¸µà¹€à¸‹à¹‡à¸•à¸­à¸µà¹€à¸¡à¸¥à¸œà¸¹à¹‰à¹ƒà¸Šà¹‰', 'FelhasznÃ¡lÃ³i e-mail visszaÃ¡llÃ­tÃ¡sa', 'Reset gebruikersmail', 'Mobile Version Email', 'Setel ulang Email Pengguna', 'KullanÄ±cÄ± e-postasÄ±nÄ± sÄ±fÄ±rla', 'Î•Ï€Î±Î½Î±Ï†Î¿ÏÎ¬ Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï… Ï‡ÏÎ®ÏƒÏ„Î·', 'ØªÙ†Ø¸ÛŒÙ… Ù…Ø¬Ø¯Ø¯ Ø§ÛŒÙ…ÛŒÙ„ Ú©Ø§Ø±Ø¨Ø±', 'Tetapkan semula E-mel Pengguna', 'à°¯à±‚à°œà°°à± à°‡à°®à±†à°¯à°¿à°²à±à°¨à± à°°à±€à°¸à±†à°Ÿà± à°šà±‡à°¯à°‚à°¡à°¿', 'à®ªà®¯à®©à®°à¯ à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®®à¯€à®Ÿà¯à®Ÿà®®à¯ˆ', 'àªµàªªàª°àª¾àª¶àª•àª°à«àª¤àª¾ àª‡àª®à«‡àª‡àª² àª«àª°à«€àª¥à«€ àª¸à«‡àªŸ àª•àª°à«‹', 'Zresetuj e-mail uÅ¼ytkownika', 'Ð¡ÐºÐ¸Ð½ÑƒÑ‚Ð¸ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ñƒ Ð°Ð´Ñ€ÐµÑÑƒ ÐºÐ¾Ñ€Ð¸ÑÑ‚ÑƒÐ²Ð°Ñ‡Ð°', 'à¨°à©€à¨¸à©ˆà¨Ÿ à¨¯à©‚à¨œà¨° à¨ˆà¨®à©‡à¨²', 'ResetaÈ›i e-mailul utilizatorului', 'á€¡á€žá€¯á€¶á€¸á€•á€¼á€¯á€žá€°á€¡á€®á€¸á€™á€±á€¸á€œá€º Reset', 'Atunto Olumulo Olumulo', 'Sake saitin Imel mai amfani', NULL, NULL),
(811, 'reset_email', 'Reset Email', 'à¦‡à¦®à§‡à¦² à¦°à¦¿à¦¸à§‡à¦Ÿ à¦•à¦°à§à¦¨', 'Restablecer Email', 'Ø¥Ø¹Ø§Ø¯Ø© ØªØ¹ÙŠÙŠÙ† Ø§Ù„Ø¨Ø±ÙŠØ¯ Ø§Ù„Ø¥Ù„ÙƒØªØ±ÙˆÙ†ÙŠ', 'à¤ˆà¤®à¥‡à¤² à¤°à¥€à¤¸à¥‡à¤Ÿ à¤•à¤°à¥‡à¤‚', 'Ø§ÛŒ Ù…ÛŒÙ„ Ø±ÛŒ Ø³ÛŒÙ¹ Ú©Ø±ÛŒÚº', 'é‡ç½®é‚®ç®±', 'é›»å­ãƒ¡ãƒ¼ãƒ«ã‚’ãƒªã‚»ãƒƒãƒˆã™ã‚‹', 'Redefinir email', 'Ð¡Ð±Ñ€Ð¾ÑÐ¸Ñ‚ÑŒ ÑÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½ÑƒÑŽ Ð¿Ð¾Ñ‡Ñ‚Ñƒ', 'Reset Email', 'ì´ë©”ì¼ ìž¬ì„¤ì •', 'E-Mail zurÃ¼cksetzen', 'Ripristina email', 'à¸£à¸µà¹€à¸‹à¹‡à¸•à¸­à¸µà¹€à¸¡à¸¥', 'E-mail visszaÃ¡llÃ­tÃ¡sa', 'Reset e-mail', 'Reddere praeferentias Email', 'Setel ulang Email', 'E-postayÄ± sÄ±fÄ±rla', 'Î•Ï€Î±Î½Î±Ï†Î¿ÏÎ¬ Î·Î»ÎµÎºÏ„ÏÎ¿Î½Î¹ÎºÎ¿Ï Ï„Î±Ï‡Ï…Î´ÏÎ¿Î¼ÎµÎ¯Î¿Ï…', 'ØªÙ†Ø¸ÛŒÙ… Ù…Ø¬Ø¯Ø¯ Ø§ÛŒÙ…ÛŒÙ„', 'Tetapkan semula E-mel', 'à°‡à°®à±†à°¯à°¿à°²à±à°¨à± à°°à±€à°¸à±†à°Ÿà± à°šà±‡à°¯à°‚à°¡à°¿', 'à®®à®¿à®©à¯à®©à®žà¯à®šà®²à¯ à®®à¯€à®Ÿà¯à®Ÿà®®à¯ˆ', 'àª‡àª®à«‡àª‡àª² àª«àª°à«€àª¥à«€ àª¸à«‡àªŸ àª•àª°à«‹', 'Zresetuj email', 'Ð¡ÐºÐ¸Ð´Ð°Ð½Ð½Ñ ÐµÐ»ÐµÐºÑ‚Ñ€Ð¾Ð½Ð½Ð¾Ñ— Ð¿Ð¾ÑˆÑ‚Ð¸', 'à¨ˆà¨®à©‡à¨² à¨¦à©à¨¬à¨¾à¨°à¨¾ à¨¸à©ˆà¨Ÿ à¨•à¨°à©‹', 'ResetaÈ›i e-mailul', 'á€¡á€®á€¸á€™á€±á€¸á€œá€º Reset', 'Tunto Imeeli', 'Sake saita Imel', NULL, NULL),
(812, 'date_format', 'Date Format', 'à¦¡à§‡à¦Ÿ à¦«à¦°à¦®à§‡à¦Ÿ', 'Formato de fecha', 'ØµÙŠØºØ© Ø§Ù„ØªØ§Ø±ÙŠØ®', 'à¤¡à¥‡à¤Ÿà¤¾ à¤ªà¥à¤°à¤¾à¤°à¥‚à¤ª', 'ØªØ§Ø±ÛŒØ® Ú©ÛŒ Ø´Ú©Ù„', 'æ—¥æœŸæ ¼å¼', 'æ—¥ä»˜å½¢å¼', 'Formato de data', 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ð´Ð°Ñ‚Ñ‹', 'Format de date', 'ë‚ ì§œ í˜•ì‹', 'Datumsformat', 'Formato data', 'à¸£à¸¹à¸›à¹à¸šà¸šà¸§à¸±à¸™à¸—à¸µà¹ˆ', 'DÃ¡tum formÃ¡tum', 'Datumnotatie', 'Forma Date', 'Format tanggal', 'Tarih formatÄ±', 'ÎœÎ¿ÏÏ†Î® Î·Î¼ÎµÏÎ¿Î¼Î·Î½Î¯Î±Ï‚', 'ÙØ±Ù…Øª ØªØ§Ø±ÛŒØ®', 'Format tarikh', 'à°¤à±‡à°¦à±€ à°«à°¾à°°à±à°®à°¾à°Ÿà±', 'à®¤à¯‡à®¤à®¿ à®µà®Ÿà®¿à®µà®®à¯ˆà®ªà¯à®ªà¯', 'àª¤àª¾àª°à«€àª– àª«à«‹àª°à«àª®à«‡àªŸ', 'Format daty', 'Ð¤Ð¾Ñ€Ð¼Ð°Ñ‚ Ð´Ð°Ñ‚Ð¸', 'à¨¤à¨¾à¨°à©€à¨– à¨«à¨¾à¨°à¨®à©ˆà¨Ÿ', 'Formatul datei', 'á€”á€±á€·á€…á€½á€²á€•á€¯á€¶á€…á€¶', 'á»Œjá» kika', 'Kwanan wata Tsarin', NULL, NULL),
(813, 'social', 'Social', 'à¦¸à¦¾à¦®à¦¾à¦œà¦¿à¦•', 'Social', 'Ø§Ø¬ØªÙ…Ø§Ø¹ÙŠ', 'à¤¸à¤¾à¤®à¤¾à¤œà¤¿à¤•', 'Ø³Ù…Ø§Ø¬ÛŒ', 'ç¤¾ä¼š', 'ã‚½ãƒ¼ã‚·ãƒ£ãƒ«', 'Social', 'Ð¡Ð¾Ñ†Ð¸Ð°Ð»ÑŒÐ½Ð¾Ðµ', 'Social', 'ì‚¬íšŒì ì¸', 'Sozial', 'Sociale', 'à¸ªà¸±à¸‡à¸„à¸¡', 'TÃ¡rsadalmi', 'sociaal', 'Social', 'Sosial', 'Sosyal', 'ÎšÎ¿Î¹Î½Ï‰Î½Î¹ÎºÏŒÏ‚', 'Ø§Ø¬ØªÙ…Ø§Ø¹ÛŒ', 'Sosial', 'à°¸à°¾à°®à°¾à°œà°¿à°•', 'à®šà®®à¯‚à®•', 'àª¸àª¾àª®àª¾àªœàª¿àª•', 'SpoÅ‚eczny', 'Ð¡Ð¾Ñ†Ñ–Ð°Ð»ÑŒÐ½Ð¸Ð¹', 'à¨¸à¨®à¨¾à¨œà¨¿à¨•', 'Social', 'á€œá€°á€™á€¾á€¯á€›á€±á€¸', 'Awujá»', 'Social', NULL, NULL),
(814, 'position_in_class', 'Position in Class', 'à¦•à§à¦²à¦¾à¦¸à§‡ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨', 'PosiciÃ³n en clase', 'Ù…ÙˆÙ‚Ù ÙÙŠ Ø§Ù„ØµÙ', 'à¤•à¤•à¥à¤·à¤¾ à¤®à¥‡à¤‚ à¤¸à¥à¤¥à¤¿à¤¤à¤¿', 'Ú©Ù„Ø§Ø³ Ù…ÛŒÚº Ù…Ù‚Ø§Ù…', 'åœ¨è¯¾å ‚ä¸Šçš„ä½ç½®', 'ã‚¯ãƒ©ã‚¹å†…ã®ä½ç½®', 'PosiÃ§Ã£o na classe', 'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð² ÐºÐ»Ð°ÑÑÐµ', 'Position en classe', 'í´ëž˜ìŠ¤ì˜ ìœ„ì¹˜', 'Position in der Klasse', 'Posizione in classe', 'à¸•à¸³à¹à¸«à¸™à¹ˆà¸‡à¹ƒà¸™à¸Šà¸±à¹‰à¸™à¹€à¸£à¸µà¸¢à¸™', 'PozÃ­ciÃ³ az osztÃ¡lyban', 'Positie in de klas', 'Statum Paleonemertea Class', 'Posisi di Kelas', 'SÄ±nÄ±ftaki pozisyonu', 'Î˜Î­ÏƒÎ· ÏƒÏ„Î·Î½ Ï„Î¬Î¾Î·', 'Ù…ÙˆÙ‚Ø¹ÛŒØª Ø¯Ø± Ú©Ù„Ø§Ø³', 'Kedudukan dalam Kelas', 'à°¤à°°à°—à°¤à°¿ à°²à±‹ à°¸à±à°¥à°¾à°¨à°‚', 'à®µà®•à¯à®ªà¯à®ªà®¿à®²à¯ à®¨à®¿à®²à¯ˆ', 'àªµàª°à«àª—àª®àª¾àª‚ àª¸à«àª¥àª¾àª¨', 'Pozycja w klasie', 'ÐŸÐ¾Ð·Ð¸Ñ†Ñ–Ñ Ð² ÐºÐ»Ð°ÑÑ–', 'à¨•à¨²à¨¾à¨¸ à¨µà¨¿à¨š à¨¸à¨¥à¨¿à¨¤à©€', 'PoziÈ›ia Ã®n clasÄƒ', 'á€¡á€á€”á€ºá€¸á€¡á€…á€¬á€¸á€‘á€²á€™á€¾á€¬á€›á€¬á€‘á€°á€¸', 'Ipo ni Kilasi', 'Matsayi a Class', NULL, NULL),
(815, 'position_in_section', 'Position in Section', 'à¦¬à¦¿à¦­à¦¾à¦—à§‡ à¦…à¦¬à¦¸à§à¦¥à¦¾à¦¨', 'PosiciÃ³n en la SecciÃ³n', 'Ù…ÙˆÙ‚Ù ÙÙŠ Ø§Ù„Ù‚Ø³Ù…', 'à¤–à¤‚à¤¡ à¤®à¥‡à¤‚ à¤¸à¥à¤¥à¤¿à¤¤à¤¿', 'Ø³ÛŒÚ©Ø´Ù† Ù…ÛŒÚº Ù…Ù‚Ø§Ù…', 'åœ¨éƒ¨åˆ†ä¸­çš„ä½ç½®', 'ã‚»ã‚¯ã‚·ãƒ§ãƒ³å†…ã®ä½ç½®', 'PosiÃ§Ã£o na seÃ§Ã£o', 'Ð”Ð¾Ð»Ð¶Ð½Ð¾ÑÑ‚ÑŒ Ð² Ñ€Ð°Ð·Ð´ÐµÐ»Ðµ', 'Position dans la section', 'ì„¹ì…˜ì˜ ìœ„ì¹˜', 'Position im Abschnitt', 'Posizione nella sezione', 'à¸•à¸³à¹à¸«à¸™à¹ˆà¸‡à¹ƒà¸™à¸ªà¹ˆà¸§à¸™', 'PozÃ­ciÃ³ a fejezetben', 'Positie in sectie', 'Situ Art', 'Posisi dalam Bagian', 'BÃ¶lÃ¼mdeki pozisyon', 'Î˜Î­ÏƒÎ· ÏƒÏ„Î·Î½ Î•Î½ÏŒÏ„Î·Ï„Î±', 'Ù…ÙˆÙ‚Ø¹ÛŒØª Ø¯Ø± Ø¨Ø®Ø´', 'Kedudukan dalam Seksyen', 'à°µà°¿à°­à°¾à°—à°‚à°²à±‹ à°¸à±à°¥à°¾à°¨à°‚', 'à®ªà®¿à®°à®¿à®µà®¿à®²à¯ à®¨à®¿à®²à¯ˆ', 'àªµàª¿àª­àª¾àª—àª®àª¾àª‚ àª¸à«àª¥àª¾àª¨', 'Pozycja w sekcji', 'ÐŸÐ¾Ð·Ð¸Ñ†Ñ–Ñ Ð² Ñ€Ð¾Ð·Ð´Ñ–Ð»Ñ–', 'à¨¸à©ˆà¨•à¨¸à¨¼à¨¨ à¨µà¨¿à©±à¨š à¨¸à¨¥à¨¿à¨¤à©€', 'PoziÈ›ia Ã®n secÈ›iune', 'Section á€™á€¾á€¬á€›á€¬á€‘á€°á€¸', 'Ipo ni Abala', 'Matsayi a Sashi', NULL, NULL),
(816, 'percentage', 'Percentage', 'à¦¶à¦¤à¦•à¦°à¦¾ à¦¹à¦¾à¦°', 'Porcentaje', 'Ø§Ù„Ù†Ø³Ø¨Ø© Ø§Ù„Ù…Ø¦ÙˆÙŠØ©', 'à¤ªà¥à¤°à¤¤à¤¿à¤¶à¤¤', 'ÙÛŒ ØµØ¯', 'ç™¾åˆ†æ¯”', 'ãƒ‘ãƒ¼ã‚»ãƒ³ãƒ†ãƒ¼ã‚¸', 'Percentagem', 'Ð¿Ñ€Ð¾Ñ†ÐµÐ½Ñ‚', 'Pourcentage', 'ë°±ë¶„ìœ¨', 'Prozentsatz', 'Percentuale', 'à¸£à¹‰à¸­à¸¢à¸¥à¸°', 'SzÃ¡zalÃ©k', 'Percentage', 'CENTESIMA', 'Persentase', 'YÃ¼zde', 'Î Î¿ÏƒÎ¿ÏƒÏ„ÏŒ', 'Ø¯Ø±ØµØ¯', 'Peratusan', 'à°¶à°¾à°¤à°‚', 'à®šà®¤à®µà®¿à®¤à®®à¯', 'àªŸàª•àª¾àªµàª¾àª°à«€', 'Odsetek', 'Ð’Ñ–Ð´ÑÐ¾Ñ‚Ð¾Ðº', 'à¨ªà©à¨°à¨¤à©€à¨¸à¨¼à¨¤', 'Procent', 'á€›á€¬á€á€­á€¯á€„á€ºá€”á€¾á€¯á€”á€ºá€¸', 'Ogorun', 'Kashi', NULL, NULL),
(817, 'principal', 'Principal', 'à¦…à¦§à§à¦¯à¦•à§à¦·', 'Director de escuela', 'Ø§Ù„Ù…Ø§Ù„Ùƒ', 'à¤ªà¥à¤°à¤§à¤¾à¤¨ à¤…à¤§à¥à¤¯à¤¾à¤ªà¤•', 'Ù¾Ø±Ù†Ø³Ù¾Ù„', 'ä¸»è¦', 'ä¸»è¦ãª', 'Diretor', 'Ð¿Ñ€Ð¸Ð½Ñ†Ð¸Ð¿Ð°Ð»', 'Principal', 'ì£¼ìš”í•œ', 'Schulleiter', 'Principale', 'à¸«à¸¥à¸±à¸', 'FÅ‘', 'principaal', 'principalem', 'Kepala Sekolah', 'anapara', 'Î”Î™Î•Î¥Î˜Î¥ÎÎ¤Î¡Î™Î‘ ÏƒÏ‡Î¿Î»ÎµÎ¹Î¿Ï…', 'Ø³Ø±Ù¾Ø±Ø³Øª', 'Pengetua', 'à°ªà±à°°à°¿à°¨à±à°¸à°¿à°ªà°¾à°²à±', 'à®®à¯à®¤à®²à¯à®µà®°à¯', 'àª†àªšàª¾àª°à«àª¯àª¶à«àª°à«€', 'Dyrektor', 'Ð“Ð¾Ð»Ð¾Ð²Ð½Ð¸Ð¹', 'à¨ªà©à¨°à¨¿à©°à¨¸à©€à¨ªà¨²', 'Principal', 'á€€á€¼á€±á€¬á€„á€»á€¸á€¡á€¯á€•á€»á€€á€½á€®á€¸', 'Ilana', 'Babban', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a1_modules`
--

CREATE TABLE `a1_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_modules`
--

INSERT INTO `a1_modules` (`id`, `module_name`, `module_slug`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Setting', 'setting', 1, 1, 1, '2017-11-13 16:55:19', '2017-11-13 16:57:10'),
(2, 'Theme', 'theme', 1, 1, 0, '2017-12-12 07:34:52', '0000-00-00 00:00:00'),
(3, 'Language', 'language', 1, 1, 0, '2017-12-12 07:36:11', '0000-00-00 00:00:00'),
(4, 'Administrator', 'administrator', 1, 1, 0, '2017-12-12 07:36:35', '0000-00-00 00:00:00'),
(5, 'Human Resource', 'hrm', 1, 1, 0, '2017-12-12 07:38:30', '0000-00-00 00:00:00'),
(6, 'Teacher', 'teacher', 1, 1, 0, '2017-12-12 07:39:01', '0000-00-00 00:00:00'),
(7, 'Academic Activity', 'academic', 1, 1, 0, '2017-12-12 07:42:24', '0000-00-00 00:00:00'),
(8, 'Guardian', 'guardian', 1, 1, 0, '2017-12-12 07:43:01', '0000-00-00 00:00:00'),
(9, 'Student', 'student', 1, 1, 0, '2017-12-12 07:43:28', '0000-00-00 00:00:00'),
(10, 'Attendance', 'attendance', 1, 1, 0, '2017-12-12 07:45:03', '0000-00-00 00:00:00'),
(11, 'Assignment', 'assignment', 1, 1, 0, '2017-12-12 07:45:45', '0000-00-00 00:00:00'),
(12, 'Exam', 'exam', 1, 1, 0, '2017-12-12 07:46:13', '0000-00-00 00:00:00'),
(13, 'Exam Mark', 'exam', 1, 1, 1, '2017-12-13 18:00:00', '2017-12-14 03:07:46'),
(14, 'Library', 'library', 1, 1, 0, '2017-12-12 07:46:33', '0000-00-00 00:00:00'),
(15, 'Transport', 'transport', 1, 1, 0, '2017-12-12 07:46:52', '0000-00-00 00:00:00'),
(16, 'Hostel', 'hostel', 1, 1, 0, '2017-12-12 07:47:15', '0000-00-00 00:00:00'),
(17, 'Message, Email & SMS', 'message', 1, 1, 1, '2017-12-12 07:47:48', '2017-12-14 02:48:49'),
(18, 'Announcement', 'announcement', 1, 1, 0, '2017-12-12 07:48:23', '0000-00-00 00:00:00'),
(19, 'Event', 'event', 1, 1, 0, '2017-12-12 07:48:36', '0000-00-00 00:00:00'),
(20, 'Visitor Info', 'visitor', 1, 1, 0, '2017-12-12 07:49:05', '0000-00-00 00:00:00'),
(21, 'Accounting', 'accounting', 1, 1, 0, '2017-12-12 07:49:32', '0000-00-00 00:00:00'),
(22, 'Report', 'report', 1, 1, 0, '2017-12-12 07:51:09', '0000-00-00 00:00:00'),
(23, 'Certificate', 'certificate', 1, 2, 0, '2018-03-17 10:27:14', '0000-00-00 00:00:00'),
(24, 'Media Gallery', 'gallery', 1, 1, 0, '2018-03-22 00:46:46', '0000-00-00 00:00:00'),
(25, 'Frontend', 'frontend', 1, 1, 0, '2018-03-22 21:40:22', '0000-00-00 00:00:00'),
(26, 'Payroll', 'payroll', 1, 1, 0, '2018-03-24 20:07:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_news`
--

CREATE TABLE `a1_news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_news`
--

INSERT INTO `a1_news` (`id`, `title`, `date`, `image`, `news1`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Today education minister has visited XYZ Campus', '2019-01-16', 'news-1548152111-sms.jpg', 'Primary and secondary education minister N Mahesh visited the city’s iconic Maharaja’s High School here on Monday morning and inspected the institution for over three hours.\r\nHe held discussions with students about the problems they are facing at the school. The minister also attended some classes and held discussions with teachers on reasons for poor enrolment. He directed the authorities of the department of public instruction (DPI) to finalize an action plan to improve the school admission ratio in the coming years.\r\nMahesh, accompanied by DDPI Mamata and senior officers of the department, visited the school between 9.30am and 12.45pm. One of the major issues discussed was the dwindling number of enrolment in the school, and the reasons behind it.\r\nMahesh said that two decades ago, the school’s student strength was 700-800, while it has come down to 120-130 now. “This is a major cause for concern. The schoolteachers must ensure more admissions. Else, who will they hold classes for?” he asked.\r\nMahesh pointed out that every year, around 4,000 students join high schools from 22 government higher primary schools in the city. Among them, 60% join private high schools. The rest join nearby government high schools. “This has resulted in the drop in admissions at Maharaja’s High School. Schoolteachers here must try and bring at least 500 students coming out of primary schools,” he advised.\r\nThe school has necessary facilities, including the smart class. The quality of education imparted here is good. The onus is on teachers to meet parents and teachers at primary schools and explain them about this iconic school, he said.\r\nVehicle facility\r\nDPI officers explained to the minister the various challenges faced by government high schools while attracting students. Many students prefer schools in their neighbourhood as it pre-empts the need for transport, they said.\r\nThe minister said he will discuss the issue with senior authorities in Bengaluru, and find how vehicle facilities can be provided to students to reach government schools.\r\nThe minister also advised the officers to ensure better facilities to students to make government schools the preferred choice. “We need to ensure quality teaching, and by this, we can make students naturally join government schools,” he said.', 1, 2, 0, '2019-01-22 10:15:11', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_pages`
--

CREATE TABLE `a1_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_pages`
--

INSERT INTO `a1_pages` (`id`, `page_slug`, `page_name`, `page_title`, `page_description`, `page_image`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'about-us', 'About Us', 'About Us', '<span style=\"color: rgb(0, 0, 0); font-family: Montserrat; font-size: 16px; text-align: justify;\">Mien IT is a Graphics, Web Solutions, Mobile Apps and Software Development company. Since 2016, we have aimed to provide affordable web design, custom programming, readymade scripts, forum templates and search engine optimization to our clients. We have our own team of professionals and we do not outsource your job to complete a project. We also develop Accounting Software, Real Estate CRM Software, ERP Software, and CRM Software of various kinds. Our company also develops dynamic and static websites. We customize our client\'s software based on their needs. We design and develop a customized project only after thorough consultation with our clients. You can always reach us during normal business hours by phone or through our online portals. We make sure that you get a design that you love. We provide you the highest level of service with a very quick turnaround, and our design work speaks for itself. This is your one stop place to find all that you need to take your company to the next level.</span><br>', 'frontend-page-1548146324-sms.jpg', 1, 1, 1, '2018-03-23 04:25:58', '2019-01-22 08:38:44'),
(2, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', '<p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-bottom: 15px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', '', 1, 1, 0, '2018-04-08 00:00:17', '0000-00-00 00:00:00'),
(3, 'terms-conditions', 'Terms & Conditions', 'Terms & Conditions', '<b style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></p><p><b style=\"margin: 0px; padding: 0px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem Ipsum</b><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\"><br></span></p>', '', 1, 1, 0, '2018-04-08 00:00:56', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_payment_settings`
--

CREATE TABLE `a1_payment_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `paypal_api_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_api_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_api_signature` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paypal_demo` tinyint(4) NOT NULL,
  `paypal_extra_charge` double(10,2) NOT NULL,
  `paypal_status` tinyint(4) NOT NULL,
  `stripe_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_demo` tinyint(4) NOT NULL,
  `stripe_extra_charge` double(10,2) NOT NULL,
  `stripe_status` tinyint(4) NOT NULL,
  `payumoney_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payumoney_salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payumoney_demo` tinyint(4) NOT NULL,
  `payu_extra_charge` double(10,2) NOT NULL,
  `payumoney_status` tinyint(4) NOT NULL,
  `ccavenue_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccavenue_salt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccavenue_demo` tinyint(4) NOT NULL,
  `ccavenue_extra_charge` double(10,2) NOT NULL,
  `ccavenue_status` tinyint(4) NOT NULL,
  `paytm_merchant_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytm_merchant_mid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytm_merchant_website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytm_demo` tinyint(4) NOT NULL,
  `paytm_extra_charge` double(10,2) NOT NULL,
  `paytm_status` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_payment_settings`
--

INSERT INTO `a1_payment_settings` (`id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `paypal_email`, `paypal_demo`, `paypal_extra_charge`, `paypal_status`, `stripe_secret`, `stripe_demo`, `stripe_extra_charge`, `stripe_status`, `payumoney_key`, `payumoney_salt`, `payumoney_demo`, `payu_extra_charge`, `payumoney_status`, `ccavenue_key`, `ccavenue_salt`, `ccavenue_demo`, `ccavenue_extra_charge`, `ccavenue_status`, `paytm_merchant_key`, `paytm_merchant_mid`, `paytm_merchant_website`, `paytm_demo`, `paytm_extra_charge`, `paytm_status`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'hfj', 'hfj', 'hfj', '', 0, 0.00, 0, '', 0, 0.00, 0, '', '', 0, 0.00, 0, '', '', 0, 0.00, 0, '', '', '', 0, 0.00, 0, 1, 1, 1, '2017-08-24 04:58:24', '2018-07-01 01:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `a1_purchases`
--

CREATE TABLE `a1_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_purchases`
--

INSERT INTO `a1_purchases` (`id`, `purchase_code`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, '5c05e426-5beb-4075-bac2-c2ae56d979e4', 1, 1, 0, '2019-01-25 07:37:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_roles`
--

CREATE TABLE `a1_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_roles`
--

INSERT INTO `a1_roles` (`id`, `slug`, `name`, `note`, `is_default`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin User', '1', 1, 0, 1, '2018-08-13 06:15:17', '2020-02-25 06:08:41'),
(2, 'admin', 'Admin', 'Admin User', '1', 1, 0, 0, '2017-08-13 07:01:36', '0000-00-00 00:00:00'),
(3, 'guardian', 'Guardian', 'Guardian/Parent User', '1', 1, 0, 1, '2017-08-13 07:02:05', '2018-02-08 19:59:22'),
(4, 'student', 'Student', 'Student User', '1', 1, 0, 1, '2017-08-13 07:02:24', '2018-02-08 19:59:34'),
(5, 'teacher', 'Teacher', 'Teacher User', '1', 1, 0, 1, '2017-08-13 07:02:51', '2018-02-08 19:59:46'),
(6, 'accountant', 'Accountant', 'Accountant User', '1', 1, 0, 1, '2017-08-13 07:04:00', '2018-02-08 20:00:07'),
(7, 'librarian', 'Librarian', 'Librarian User', '1', 1, 0, 1, '2017-08-13 07:04:18', '2018-02-08 20:00:22'),
(8, 'receptioniast', 'Receptioniast', 'Receptionist/ Front Desk User', '1', 1, 0, 1, '2017-08-13 07:04:36', '2018-02-08 20:02:30'),
(9, 'staff', 'Staff', 'General Staff User', '0', 1, 0, 1, '2017-08-13 07:05:01', '2018-08-04 10:20:09'),
(10, 'servent', 'Servent', 'Servent User', '0', 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a1_routes`
--

CREATE TABLE `a1_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_start` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_end` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `a1_salary_grades`
--

CREATE TABLE `a1_salary_grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) DEFAULT NULL,
  `transport` double(10,2) DEFAULT NULL,
  `medical` double(10,2) DEFAULT NULL,
  `over_time_hourly_rate` double(10,2) DEFAULT NULL,
  `provident_fund` double(10,2) DEFAULT NULL,
  `hourly_rate` double(10,2) NOT NULL,
  `total_allowance` double(10,2) DEFAULT NULL,
  `total_deduction` double(10,2) DEFAULT NULL,
  `gross_salary` double(10,2) DEFAULT NULL,
  `net_salary` double(10,2) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_salary_grades`
--

INSERT INTO `a1_salary_grades` (`id`, `grade_name`, `basic_salary`, `house_rent`, `transport`, `medical`, `over_time_hourly_rate`, `provident_fund`, `hourly_rate`, `total_allowance`, `total_deduction`, `gross_salary`, `net_salary`, `note`, `user_agent`, `activity`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Grade A', 25000.00, 5000.00, 5000.00, 5000.00, 500.00, 10000.00, 1000.00, 15000.00, 15000.00, 40000.00, 30000.00, '1simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', 1, 1, 1, '2018-03-25 03:51:01', '2018-04-08 01:20:25'),
(2, 'Grade B', 20000.00, 4000.00, 4000.00, 4000.00, 400.00, 8000.00, 800.00, 12000.00, 8000.00, 32000.00, 24000.00, 'Dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', 1, 1, 1, '2018-03-25 04:53:12', '2018-04-08 01:21:38'),
(3, 'Grade C', 16000.00, 3000.00, 3000.00, 3000.00, 300.00, 6000.00, 600.00, 9000.00, 6000.00, 25000.00, 19000.00, 'Printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', 1, 1, 0, '2018-04-08 01:24:12', '0000-00-00 00:00:00'),
(4, 'Grade D', 12000.00, 2500.00, 2500.00, 2500.00, 250.00, 5000.00, 500.00, 7500.00, 7500.00, 19500.00, 14500.00, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '', '', 1, 1, 0, '2018-04-08 01:25:22', '0000-00-00 00:00:00'),
(5, 'Grade E', 10000.00, 2000.00, 2000.00, 2000.00, 200.00, 4000.00, 400.00, 6000.00, 4000.00, 16000.00, 12000.00, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', '', '', 1, 1, 1, '2018-04-08 01:26:12', '2018-06-13 15:18:52'),
(11, 'gb', 109786.00, 6745.00, 457.00, 54.00, 56.00, 56.00, 65.00, 0.00, 0.00, 0.00, 0.00, 'bvn', '', '', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '5432535', 534.00, 45.00, 4.00, 4.00, 4.00, 4.00, 4.00, 0.00, 0.00, 0.00, 0.00, 'gfdhg', '', '', 1, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'GradeE', 34254325.00, 43.00, 43.00, 3243.00, 324.00, 324.00, 34.00, 432.00, 324.00, 32.00, 324.00, 'sdfd', '1', 'demo', 1, 1, 1, '2020-02-28 23:11:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a1_settings`
--

CREATE TABLE `a1_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_start_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_end_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `running_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_geocode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_rtl` tinyint(4) NOT NULL,
  `enable_frontend` tinyint(4) NOT NULL,
  `final_result_type` tinyint(4) NOT NULL,
  `default_time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_date_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_plus_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_settings`
--

INSERT INTO `a1_settings` (`id`, `school_code`, `school_name`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `language`, `footer`, `logo`, `session_start_month`, `session_end_month`, `running_year`, `school_fax`, `school_geocode`, `enable_rtl`, `enable_frontend`, `final_result_type`, `default_time_zone`, `sms_date_format`, `facebook_url`, `twitter_url`, `linkedin_url`, `google_plus_url`, `youtube_url`, `instagram_url`, `pinterest_url`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'MIEN SMT ', 'MIEN School Management Tool', 'Mirpur-1, Dhaka- 1216', '01721002700', 'info@mien-it.com', 'BDT', '৳', 'english', 'Copyright Â© MIEN IT', '1548145409-school-logo.jpg', 'january', 'january', 'January 2019 - January 2020', '', '23.923133, 90.385283', 0, 1, 1, 'Asia/Dhaka', 'M j, Y', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://plus.google.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, 1, 1, '2017-08-23 03:40:28', '2019-01-25 07:37:54');

-- --------------------------------------------------------

--
-- Table structure for table `a1_sliders`
--

CREATE TABLE `a1_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_sliders`
--

INSERT INTO `a1_sliders` (`id`, `title`, `image`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'SMT ONLINE ', 'home-slider-1548155356-sms.jpg', 1, 1, 0, '2019-01-22 11:09:16', '0000-00-00 00:00:00'),
(2, 'SMT ONLINE ', 'home-slider-1548155391-sms.jpg', 1, 1, 0, '2019-01-22 11:09:51', '0000-00-00 00:00:00'),
(3, 'SMT ONLINE ', 'home-slider-1548155405-sms.jpg', 1, 1, 0, '2019-01-22 11:10:05', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_sms_settings`
--

CREATE TABLE `a1_sms_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clickatell_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clickatell_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clickatell_api_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clickatell_from_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clickatell_status` tinyint(4) NOT NULL,
  `twilio_account_sid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_auth_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_from_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clickatell_mo_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twilio_status` tinyint(4) NOT NULL,
  `bulk_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulk_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bulk_status` tinyint(4) NOT NULL,
  `msg91_auth_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg91_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `msg91_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plivo_auth_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plivo_auth_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plivo_from_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plivo_status` tinyint(4) NOT NULL,
  `textlocal_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `textlocal_hash_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `textlocal_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `textlocal_status` tinyint(4) NOT NULL,
  `smscountry_username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smscountry_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smscountry_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `smscountry_status` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_sms_settings`
--

INSERT INTO `a1_sms_settings` (`id`, `clickatell_username`, `clickatell_password`, `clickatell_api_key`, `clickatell_from_number`, `clickatell_status`, `twilio_account_sid`, `twilio_auth_token`, `twilio_from_number`, `clickatell_mo_no`, `twilio_status`, `bulk_username`, `bulk_password`, `bulk_status`, `msg91_auth_key`, `msg91_sender_id`, `msg91_status`, `plivo_auth_id`, `plivo_auth_token`, `plivo_from_number`, `plivo_status`, `textlocal_username`, `textlocal_hash_key`, `textlocal_sender_id`, `textlocal_status`, `smscountry_username`, `smscountry_password`, `smscountry_sender_id`, `smscountry_status`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', 0, '', '', '', '', 0, '', '', 0, '', '', '0', '', '', '', 0, '', '', '', 0, '', '', '', 0, 1, 1, 1, '2017-08-24 07:22:49', '2018-06-30 14:03:38');

-- --------------------------------------------------------

--
-- Table structure for table `a1_themes`
--

CREATE TABLE `a1_themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_themes`
--

INSERT INTO `a1_themes` (`id`, `name`, `slug`, `color_code`, `description`, `is_active`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'DodgerBlue ', 'dodger-blue', '#00376b', 'cbcvbced', 1, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(2, 'Black ', 'black', '#23282d', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(3, 'LightSeaGreen ', 'light-sea-green', '#20B2AA', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(4, 'MediumPurple ', 'medium-purple', '#9370DB', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(5, 'Orchid', 'orchid', '#DA70D6', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(6, 'RebeccaPurple ', 'rebecca-purple', '#663399', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(7, 'Red', 'red', '#e80000', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(8, 'SlateGray', 'slate-gray', '#2A3F54', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(9, 'Maroon', 'maroon', '#800000', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(10, 'DarkOrange', 'dark-orange', '#FF8C00', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(11, 'DeepPink', 'deep-pink', '#FF1493', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43'),
(12, 'LimeGreen', 'lime-green', '#32CD32', 'cbcvbced', 0, 1, 0, 0, '2017-08-18 06:59:25', '2017-08-18 07:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `a1_vehicles`
--

CREATE TABLE `a1_vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_allocated` tinyint(4) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_emails`
--

CREATE TABLE `b1_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receivers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `email_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `absent_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_email_templates`
--

CREATE TABLE `b1_email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_events`
--

CREATE TABLE `b1_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_exams`
--

CREATE TABLE `b1_exams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_expenditure_heads`
--

CREATE TABLE `b1_expenditure_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_gallery_images`
--

CREATE TABLE `b1_gallery_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gallery_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_income_heads`
--

CREATE TABLE `b1_income_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `head_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b1_income_heads`
--

INSERT INTO `b1_income_heads` (`id`, `academic_year_id`, `head_type`, `title`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 8, 'transport', 'Transport Fee', 'This Fee is for Transport Fee collection and not Editable.', 1, 1, 1, '2018-02-09 22:03:56', '2018-06-23 13:32:21'),
(2, 8, 'hostel', 'Hostel Fee', 'This Fee is fixed for Hostel Fee collection.', 1, 1, 1, '2018-02-09 22:04:38', '2018-06-23 13:33:22'),
(4, 8, 'fee', 'Student Monthly Tuition Fee', '', 1, 1, 0, '2019-01-23 13:00:02', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `b1_messages`
--

CREATE TABLE `b1_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_notices`
--

CREATE TABLE `b1_notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b1_notices`
--

INSERT INTO `b1_notices` (`id`, `role_id`, `title`, `date`, `notice`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Student Hall Evacuation Notice', '2019-01-23', 'All the residential personnel including students should evacuate the campus within the evening today.\r\n@Authority', 1, 2, 0, '2019-01-22 10:13:19', '0000-00-00 00:00:00'),
(2, 1, 'About due payment', '2019-01-16', 'All students are requested to pay their dues within the deadline', 1, 1, 0, '2019-01-22 10:30:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `b1_operations`
--

CREATE TABLE `b1_operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED DEFAULT NULL,
  `operation_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operation_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_view_vissible` tinyint(4) NOT NULL,
  `is_add_vissible` tinyint(4) NOT NULL,
  `is_edit_vissible` tinyint(4) NOT NULL,
  `is_delete_vissible` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b1_operations`
--

INSERT INTO `b1_operations` (`id`, `module_id`, `operation_name`, `operation_slug`, `is_view_vissible`, `is_add_vissible`, `is_edit_vissible`, `is_delete_vissible`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'General Setting', 'setting', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 10:06:25', '2018-02-08 19:24:50'),
(2, 1, 'Payment Setting', 'payment', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 10:06:55', '2018-02-08 19:24:40'),
(3, 1, 'SMS Setting', 'sms', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 10:07:07', '2018-02-08 19:05:32'),
(4, 2, 'Theme', 'theme', 1, 0, 1, 0, 1, 1, 1, '2017-12-12 10:08:39', '2018-01-03 01:02:51'),
(5, 3, 'Language', 'language', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:09:22', '2018-01-03 01:03:03'),
(6, 4, 'Academic Year', 'year', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:10:34', '2018-01-03 01:03:18'),
(7, 4, 'User Role', 'role', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:10:55', '2018-01-03 01:03:31'),
(8, 4, 'Role Permission', 'permission', 1, 0, 1, 0, 1, 1, 1, '2017-12-12 10:12:10', '2018-01-03 01:05:00'),
(10, 5, 'Designation', 'designation', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:15:38', '2018-01-03 01:07:38'),
(11, 5, 'Employee', 'employee', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:15:55', '2018-01-03 01:19:54'),
(12, 6, 'Teacher', 'teacher', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:17:22', '2018-01-03 01:25:07'),
(14, 7, 'Classes', 'classes', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:19:01', '2018-01-03 01:25:17'),
(15, 7, 'Section', 'section', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:19:24', '2018-01-03 01:25:24'),
(16, 7, 'Subject', 'subject', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:19:48', '2018-01-03 01:25:33'),
(17, 7, 'Syllabus', 'syllabus', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:20:32', '2018-01-03 01:25:54'),
(18, 7, 'Class Routine', 'routine', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:20:56', '2018-01-03 01:26:13'),
(19, 7, 'Promotion', 'promotion', 1, 1, 0, 0, 1, 1, 1, '2017-12-12 10:21:17', '2018-02-08 19:42:57'),
(20, 8, 'Guardian', 'guardian', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 10:23:32', '2018-01-03 01:29:06'),
(21, 9, 'Student', 'student', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 11:58:56', '2018-01-03 01:29:15'),
(23, 10, 'Employee Attendance', 'employee', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:00:10', '2018-01-03 01:30:19'),
(24, 10, 'Teacher Attendance', 'teacher', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:00:51', '2018-01-03 01:29:52'),
(25, 10, 'Student Attendance', 'student', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:01:17', '2018-01-03 01:30:01'),
(26, 11, 'Assignment', 'assignment', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:02:08', '2018-01-03 01:30:40'),
(28, 12, 'Exam Term', 'exam', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:03:30', '2018-02-08 19:49:25'),
(29, 12, 'Exam Grade', 'grade', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:03:56', '2018-01-03 01:31:56'),
(30, 12, 'Exam Schedule', 'schedule', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:04:58', '2018-01-03 01:32:14'),
(31, 12, 'Exam Suggestion', 'suggestion', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:05:18', '2018-01-03 01:32:30'),
(32, 12, 'Exam Attendance', 'attendance', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:05:43', '2018-01-03 01:32:58'),
(33, 13, 'Exam Mark', 'mark', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:06:04', '2018-01-03 01:33:16'),
(34, 13, 'Mark Sheet', 'marksheet', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:06:24', '2018-01-03 01:34:08'),
(35, 13, 'Exam Final Result', 'finalresult', 1, 1, 1, 0, 1, 1, 1, '2017-12-12 12:06:41', '2018-06-27 07:45:08'),
(37, 14, 'Library Book', 'book', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:09:17', '2018-01-03 01:36:02'),
(38, 14, 'Library Member', 'member', 1, 1, 0, 1, 1, 1, 1, '2017-12-12 12:09:33', '2018-01-03 01:36:24'),
(40, 15, 'Vehicle', 'vehicle', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:10:49', '2018-01-03 01:37:11'),
(41, 15, 'Transport Route', 'route', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:11:17', '2018-01-03 01:41:27'),
(42, 15, 'Transport Member', 'member', 1, 1, 0, 1, 1, 1, 1, '2017-12-12 12:11:39', '2018-01-03 01:41:46'),
(43, 16, 'Hostel', 'hostel', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:12:16', '2018-01-03 01:41:55'),
(44, 16, 'Hostel Room', 'room', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:12:37', '2018-01-03 01:42:02'),
(45, 16, 'Hostel Member', 'member', 1, 1, 0, 1, 1, 1, 1, '2017-12-12 12:13:00', '2018-01-03 01:42:23'),
(47, 17, 'Email', 'mail', 1, 1, 0, 1, 1, 1, 1, '2017-12-12 12:15:57', '2018-01-03 01:44:16'),
(48, 17, 'Text SMS', 'text', 1, 1, 0, 1, 1, 1, 1, '2017-12-12 12:16:17', '2018-01-03 01:44:25'),
(50, 18, 'Notice', 'notice', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:20:38', '2018-01-03 01:47:39'),
(51, 18, 'News', 'news', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:20:54', '2018-01-03 01:47:46'),
(52, 18, 'Holiday', 'holiday', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:21:08', '2018-01-03 01:47:53'),
(53, 19, 'Event', 'event', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:21:35', '2018-01-03 01:48:00'),
(54, 20, 'Visitor Info', 'visitor', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:22:05', '2018-01-03 01:48:15'),
(56, 21, 'Expenditure Head', 'exphead', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:23:51', '2018-01-03 01:48:23'),
(57, 21, 'Expenditure', 'expenditure', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:24:14', '2018-01-03 01:48:32'),
(58, 21, 'Income Head', 'incomehead', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:24:42', '2018-01-03 01:48:39'),
(59, 21, 'Income', 'income', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:24:54', '2018-01-03 01:48:59'),
(60, 21, 'Invoice', 'invoice', 1, 1, 1, 1, 1, 1, 1, '2017-12-12 12:25:16', '2018-01-03 01:49:12'),
(61, 21, 'Payment', 'payment', 1, 1, 0, 0, 1, 1, 1, '2017-12-12 12:25:34', '2018-01-03 01:49:47'),
(62, 22, 'Report', 'report', 1, 0, 0, 0, 1, 1, 1, '2017-12-12 12:26:16', '2018-01-03 01:50:00'),
(63, 4, 'Manage User', 'user', 1, 0, 1, 0, 1, 1, 1, '2017-12-13 14:13:49', '2018-01-03 01:35:43'),
(64, 4, 'Reset User Password', 'password', 0, 0, 1, 0, 1, 1, 1, '2017-12-13 14:14:23', '2018-01-03 01:05:11'),
(65, 4, 'Backup Database', 'backup', 1, 0, 0, 0, 1, 1, 1, '2017-12-13 14:14:39', '2018-02-08 19:29:33'),
(66, 14, 'Issue & Return', 'issue', 1, 1, 1, 0, 1, 1, 1, '2017-12-14 02:46:37', '2018-01-03 01:37:01'),
(67, 13, 'Mark send by SMS', 'text', 1, 1, 0, 1, 1, 1, 1, '2017-12-14 03:09:58', '2018-01-03 01:34:45'),
(68, 13, 'Mark send by Email', 'mail', 1, 1, 0, 1, 1, 1, 1, '2017-12-14 03:10:15', '2018-01-03 01:35:13'),
(69, 17, 'message', 'message', 1, 1, 1, 1, 1, 2, 2, '2018-01-13 02:53:53', '2018-01-13 03:06:22'),
(70, 23, 'CertificateType', 'type', 1, 1, 1, 1, 1, 2, 0, '2018-03-17 10:28:43', '0000-00-00 00:00:00'),
(71, 23, 'Certificate', 'certificate', 1, 0, 0, 0, 1, 1, 0, '2018-03-18 03:06:40', '0000-00-00 00:00:00'),
(72, 24, 'Gallery', 'gallery', 1, 1, 1, 1, 1, 1, 1, '2018-03-22 00:47:27', '2018-03-22 00:48:03'),
(73, 24, 'Image', 'image', 1, 1, 1, 1, 1, 1, 0, '2018-03-22 00:47:51', '0000-00-00 00:00:00'),
(74, 25, 'Frontend', 'frontend', 1, 1, 1, 1, 1, 1, 0, '2018-03-22 23:06:49', '0000-00-00 00:00:00'),
(75, 26, 'Salary Grade', 'grade', 1, 1, 1, 1, 1, 1, 0, '2018-03-24 20:08:21', '0000-00-00 00:00:00'),
(76, 26, 'Payment', 'payment', 1, 1, 1, 1, 1, 1, 0, '2018-03-24 20:09:05', '0000-00-00 00:00:00'),
(77, 25, 'Home Slider', 'slider', 1, 1, 1, 1, 1, 1, 0, '2018-03-27 12:04:48', '0000-00-00 00:00:00'),
(78, 26, 'History', 'history', 1, 0, 0, 0, 1, 1, 0, '2018-03-31 18:39:23', '0000-00-00 00:00:00'),
(79, 21, 'Discount', 'discount', 1, 1, 1, 1, 1, 1, 0, '2018-06-05 07:52:25', '0000-00-00 00:00:00'),
(80, 21, 'Fee Type', 'feetype', 1, 1, 1, 1, 1, 1, 0, '2018-06-15 05:25:47', '0000-00-00 00:00:00'),
(81, 13, 'Result Card', 'resultcard', 1, 0, 0, 0, 1, 1, 0, '2018-06-23 08:21:23', '0000-00-00 00:00:00'),
(82, 13, 'Exam Result', 'examresult', 1, 1, 1, 0, 1, 1, 0, '2018-06-27 06:43:47', '0000-00-00 00:00:00'),
(83, 4, 'SMS Template', 'smstemplate', 1, 1, 1, 1, 1, 1, 0, '2018-07-02 03:04:26', '0000-00-00 00:00:00'),
(84, 4, 'Email Template', 'emailtemplate', 1, 1, 1, 1, 1, 1, 0, '2018-07-02 03:04:52', '0000-00-00 00:00:00'),
(85, 4, 'Activity Log', 'activitylog', 1, 0, 0, 1, 1, 1, 0, '2018-07-04 04:05:11', '0000-00-00 00:00:00'),
(86, 9, 'Bulk Import', 'bulk', 0, 1, 0, 0, 1, 1, 0, '2018-07-08 03:26:43', '0000-00-00 00:00:00'),
(87, 10, 'Absent Email', 'absentemail', 1, 1, 0, 1, 1, 1, 0, '2018-07-08 08:15:12', '0000-00-00 00:00:00'),
(88, 10, 'Absent SMS', 'absentsms', 1, 1, 0, 1, 1, 1, 0, '2018-07-08 08:15:49', '0000-00-00 00:00:00'),
(89, 21, 'Due Fee Email', 'duefeeemail', 1, 1, 0, 1, 1, 1, 0, '2018-07-09 02:44:10', '0000-00-00 00:00:00'),
(90, 21, 'Due Fee SMS', 'duefeesms', 1, 1, 0, 1, 1, 1, 0, '2018-07-09 02:44:38', '0000-00-00 00:00:00'),
(91, 13, 'Result Email', 'resultemail', 1, 1, 0, 1, 1, 1, 0, '2018-07-09 07:44:49', '0000-00-00 00:00:00'),
(92, 13, 'Result SMS', 'resultsms', 1, 1, 0, 1, 1, 1, 0, '2018-07-09 07:45:17', '0000-00-00 00:00:00'),
(93, 4, 'Email Reset', 'email', 0, 0, 1, 0, 1, 1, 0, '2018-07-19 12:20:00', '0000-00-00 00:00:00'),
(94, 9, 'Student Activity', 'activity', 1, 1, 1, 1, 1, 1, 0, '2018-07-19 12:22:58', '0000-00-00 00:00:00'),
(95, 13, 'Merit List', 'meritlist', 1, 0, 0, 0, 1, 1, 1, '2018-08-04 07:48:02', '2018-08-04 07:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `b1_rooms`
--

CREATE TABLE `b1_rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `hostel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_seat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_route_stops`
--

CREATE TABLE `b1_route_stops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `stop_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stop_km` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stop_fare` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_sms_templates`
--

CREATE TABLE `b1_sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_text_messages`
--

CREATE TABLE `b1_text_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receivers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sms_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `absent_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b1_users`
--

CREATE TABLE `b1_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `finger_print` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reset_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_logged_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b1_users`
--

INSERT INTO `b1_users` (`id`, `finger_print`, `unique_id`, `role_id`, `reset_key`, `status`, `last_logged_in`, `email`, `email_verified_at`, `password`, `created_by`, `modified_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 1, '1', '1', '1', 'admin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'T0usg35QXN9WKPUUbGJu5qf2TN5IyFpW3idqjYf8LWNegHeV6Eq9NjRvOBS0', NULL, NULL),
(2, '2', '2', 4, '1', '1', '1', 'dshjdsf@gmail.com', NULL, '$2y$10$5ZBlvbmtY9aoLNE34P6CPOe9j.30XEZN38qKonPn6bQURmmKwG50y', 1, 1, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, '2020-02-29 04:41:07'),
(3, '3', '3', 3, '1', '1', '1', 'supadmin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(4, '4', '4', 4, '1', '1', '1', 'supadmidn12@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(5, '5', '5', 5, '1', '1', '1', 'user@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(6, '6', '6', 6, '1', '1', '1', 'user12@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(7, '7', '7', 7, '1', '1', '1', 'sudfassdapadmin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(8, '8', '8', 8, '1', '1', '1', '2supadmcxzvin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(9, '9', '9', 9, '1', '1', '1', '2supadmixczcxn@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(10, '10', '10', 10, '1', '1', '1', '1supavxczvcdmin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(25, '1', '5e59e51b9aee0', 1, '1', '1', '1', 'employee@gmail.com', NULL, '$2y$10$y8NVPjp18cuJkgRS247FbuPEQPu7YS7nmLsX7Ghyn.5jLgZLfBx0S', 1, 1, NULL, '2020-02-28 22:14:19', NULL),
(26, '1', '5e5a019c9a7dd', 3, '1', '1', '1', 'cse.delwarhossain@gmail.com', NULL, '$2y$10$KpYMyCyRwVCSyUDQ/MJI2.IRZsDHfzfNWE0bX79BezZpPWa7KQJiq', 1, 1, NULL, '2020-02-29 00:15:56', NULL),
(27, '1', '5e5a06dde3934', 1, '1', '1', '1', 'ssain@gmail.com', NULL, '$2y$10$d9.Th0xrgfdckwPXyw43muKFnVVno70U3FIgwdVRLS.oLOUsB4cDW', 1, 1, NULL, '2020-02-29 00:38:22', NULL),
(28, '1', '5e5a1b163d3d2', 2, '1', '1', '1', 'yeapes@gmail.com', NULL, '$2y$10$2KZpBkW3hNeVmDeCqUKUDObkvwGUQzelgac/XzS/vkndDwZioG4G6', 1, 1, NULL, '2020-02-29 02:04:38', NULL),
(30, '1', '5e5a1fe7079a4', 2, '1', '1', '1', 'admwwwin@admin.com', NULL, '$2y$10$Vo3YNKyRO2lVEOPmNf1Cv.5uJeg.xf5gvyYblks.D0bta367kPHya', 1, 1, NULL, '2020-02-29 02:25:11', NULL),
(32, '1', '5e5a2031a0619', 1, '1', '1', '1', 'asdz1@gmail.com', NULL, '$2y$10$hDENyzmet39TGdvFdQj16ui04cMReWeZ9.8zArW8lc/HTifJGHWfO', 1, 1, NULL, '2020-02-29 02:26:25', '2020-02-29 04:14:04'),
(33, '1', '5e5a4e7243fcb', 1, '1', '1', '1', 'adfdsfds@addfgmin.com', NULL, '$2y$10$P57tMVFKwAdaf4EE8SWXvuh/3AHE9D0ZFbh5.551VO8L3byw3grhq', 1, 1, NULL, '2020-02-29 05:43:46', NULL),
(36, '1', '5e5a4f79c8dee', 1, '1', '1', '1', 'hgfds@addfgmin.com', NULL, '$2y$10$.FrIjtFgJbyNcgvTIbWLUOMZ.a7r79i8ZCSv6xJ9UGoK8BjwM.qeS', 1, 1, NULL, '2020-02-29 05:48:09', NULL),
(37, '1', '5e5a50dba5196', 1, '1', '1', '1', 'adminbncn@admin.com', NULL, '$2y$10$wcAHc9g9juLyHg4wEz4B6.SNNd8yZWpYdu.7huCmHjR2nzJU2vGki', 1, 1, NULL, '2020-02-29 05:54:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c1_activity_logs`
--

CREATE TABLE `c1_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_activity_logs`
--

INSERT INTO `c1_activity_logs` (`id`, `user_id`, `role_id`, `name`, `phone`, `ip_address`, `user_agent`, `activity`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:18:00', '0000-00-00 00:00:00'),
(2, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:21:27', '0000-00-00 00:00:00'),
(3, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:23:29', '0000-00-00 00:00:00'),
(4, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:24:26', '0000-00-00 00:00:00'),
(5, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:24:37', '0000-00-00 00:00:00'),
(6, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Update Profile', 1, 1, 0, '2019-01-22 08:25:13', '0000-00-00 00:00:00'),
(7, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Update Password', 1, 1, 0, '2019-01-22 08:26:57', '0000-00-00 00:00:00'),
(8, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 21:27:55', '0000-00-00 00:00:00'),
(9, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:28:10', '0000-00-00 00:00:00'),
(10, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 21:29:12', '0000-00-00 00:00:00'),
(11, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:29:25', '0000-00-00 00:00:00'),
(12, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 21:29:49', '0000-00-00 00:00:00'),
(13, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:30:22', '0000-00-00 00:00:00'),
(14, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:30:29', '0000-00-00 00:00:00'),
(15, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a Employee : Sabbir', 1, 1, 0, '2019-01-22 08:33:50', '0000-00-00 00:00:00'),
(16, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 2, 0, '2019-01-21 21:36:06', '0000-00-00 00:00:00'),
(17, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 21:36:39', '0000-00-00 00:00:00'),
(18, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a frontend page : About Us', 1, 1, 0, '2019-01-22 08:38:44', '0000-00-00 00:00:00'),
(19, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:39:59', '0000-00-00 00:00:00'),
(20, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:40:23', '0000-00-00 00:00:00'),
(21, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-22 08:40:30', '0000-00-00 00:00:00'),
(22, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 21:40:41', '0000-00-00 00:00:00'),
(23, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:41:50', '0000-00-00 00:00:00'),
(24, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 21:43:52', '0000-00-00 00:00:00'),
(25, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Update Profile', 1, 1, 0, '2019-01-22 09:14:17', '0000-00-00 00:00:00'),
(26, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 22:14:23', '0000-00-00 00:00:00'),
(27, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 22:14:28', '0000-00-00 00:00:00'),
(28, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated language label for : bengali', 1, 1, 0, '2019-01-22 09:14:51', '0000-00-00 00:00:00'),
(29, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated language label for : bengali', 1, 1, 0, '2019-01-22 09:21:05', '0000-00-00 00:00:00'),
(30, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated language label for : bengali', 1, 1, 0, '2019-01-22 09:25:35', '0000-00-00 00:00:00'),
(31, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated language label for : bengali', 1, 1, 0, '2019-01-22 09:41:35', '0000-00-00 00:00:00'),
(32, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-22 09:41:43', '0000-00-00 00:00:00'),
(33, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : english', 1, 1, 0, '2019-01-22 09:43:56', '0000-00-00 00:00:00'),
(34, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a Teacher : Abdullah', 1, 1, 0, '2019-01-22 09:48:02', '0000-00-00 00:00:00'),
(35, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Teacher : Abdullah', 1, 1, 0, '2019-01-22 09:48:18', '0000-00-00 00:00:00'),
(36, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a Teacher : Main Uddin', 1, 1, 0, '2019-01-22 09:50:07', '0000-00-00 00:00:00'),
(37, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a Teacher : Rifat Farzana', 1, 1, 0, '2019-01-22 09:52:21', '0000-00-00 00:00:00'),
(38, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a class :Class 1', 1, 1, 0, '2019-01-22 09:52:58', '0000-00-00 00:00:00'),
(39, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a class :Class 2', 1, 1, 0, '2019-01-22 09:53:35', '0000-00-00 00:00:00'),
(40, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a class :Class 3', 1, 1, 0, '2019-01-22 09:53:53', '0000-00-00 00:00:00'),
(41, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : Bangla for class : Class 1', 1, 1, 0, '2019-01-22 09:54:53', '0000-00-00 00:00:00'),
(42, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : English for class : Class 1', 1, 1, 0, '2019-01-22 09:55:18', '0000-00-00 00:00:00'),
(43, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : Mathematics for class : Class 1', 1, 1, 0, '2019-01-22 09:55:47', '0000-00-00 00:00:00'),
(44, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 23:09:40', '0000-00-00 00:00:00'),
(45, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a notice : Student Hall Evacuation Notice', 1, 2, 0, '2019-01-22 10:13:19', '0000-00-00 00:00:00'),
(46, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a news : Today education minister has visited XYZ Campus', 1, 2, 0, '2019-01-22 10:15:11', '0000-00-00 00:00:00'),
(47, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged out', 1, 2, 0, '2019-01-21 23:28:50', '0000-00-00 00:00:00'),
(48, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 1, 0, '2019-01-21 23:29:22', '0000-00-00 00:00:00'),
(49, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a notice : About due payment', 1, 1, 0, '2019-01-22 10:30:29', '0000-00-00 00:00:00'),
(50, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 23:55:08', '0000-00-00 00:00:00'),
(51, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 23:55:30', '0000-00-00 00:00:00'),
(52, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-21 23:56:08', '0000-00-00 00:00:00'),
(53, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-21 23:56:15', '0000-00-00 00:00:00'),
(54, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:03:47', '0000-00-00 00:00:00'),
(55, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:04:00', '0000-00-00 00:00:00'),
(56, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:05:11', '0000-00-00 00:00:00'),
(57, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:05:57', '0000-00-00 00:00:00'),
(58, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:06:28', '0000-00-00 00:00:00'),
(59, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been upload slider image : SMT ONLINE ', 1, 1, 0, '2019-01-22 11:09:16', '0000-00-00 00:00:00'),
(60, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been upload slider image : SMT ONLINE ', 1, 1, 0, '2019-01-22 11:09:51', '0000-00-00 00:00:00'),
(61, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been upload slider image : SMT ONLINE ', 1, 1, 0, '2019-01-22 11:10:05', '0000-00-00 00:00:00'),
(62, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:24:59', '0000-00-00 00:00:00'),
(63, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:25:09', '0000-00-00 00:00:00'),
(64, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:25:59', '0000-00-00 00:00:00'),
(65, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:26:04', '0000-00-00 00:00:00'),
(66, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:33:32', '0000-00-00 00:00:00'),
(67, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:33:59', '0000-00-00 00:00:00'),
(68, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:36:50', '0000-00-00 00:00:00'),
(69, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:38:37', '0000-00-00 00:00:00'),
(70, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:38:41', '0000-00-00 00:00:00'),
(71, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:38:45', '0000-00-00 00:00:00'),
(72, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:43:41', '0000-00-00 00:00:00'),
(73, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 00:43:46', '0000-00-00 00:00:00'),
(74, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 00:43:52', '0000-00-00 00:00:00'),
(75, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:44:04', '0000-00-00 00:00:00'),
(76, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 00:44:16', '0000-00-00 00:00:00'),
(77, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:51:42', '0000-00-00 00:00:00'),
(78, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Update Profile', 1, 2, 0, '2019-01-22 11:52:27', '0000-00-00 00:00:00'),
(79, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 00:52:35', '0000-00-00 00:00:00'),
(80, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:53:14', '0000-00-00 00:00:00'),
(81, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:53:16', '0000-00-00 00:00:00'),
(82, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:53:16', '0000-00-00 00:00:00'),
(83, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:53:16', '0000-00-00 00:00:00'),
(84, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:53:17', '0000-00-00 00:00:00'),
(85, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:53:17', '0000-00-00 00:00:00'),
(86, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 00:56:54', '0000-00-00 00:00:00'),
(87, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 00:56:58', '0000-00-00 00:00:00'),
(88, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 00:59:24', '0000-00-00 00:00:00'),
(89, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 01:01:05', '0000-00-00 00:00:00'),
(90, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 01:01:15', '0000-00-00 00:00:00'),
(91, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 01:02:15', '0000-00-00 00:00:00'),
(92, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 01:03:17', '0000-00-00 00:00:00'),
(93, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 01:03:21', '0000-00-00 00:00:00'),
(94, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 01:07:14', '0000-00-00 00:00:00'),
(95, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 06:33:08', '0000-00-00 00:00:00'),
(96, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 07:16:46', '0000-00-00 00:00:00'),
(97, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 1, 0, '2019-01-22 16:24:36', '0000-00-00 00:00:00'),
(98, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 17:51:15', '0000-00-00 00:00:00'),
(99, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 17:51:53', '0000-00-00 00:00:00'),
(100, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 18:03:01', '0000-00-00 00:00:00'),
(101, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 18:03:06', '0000-00-00 00:00:00'),
(102, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 18:09:25', '0000-00-00 00:00:00'),
(103, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 18:09:29', '0000-00-00 00:00:00'),
(104, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 18:10:39', '0000-00-00 00:00:00'),
(105, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 18:10:55', '0000-00-00 00:00:00'),
(106, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 18:33:26', '0000-00-00 00:00:00'),
(107, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 18:34:09', '0000-00-00 00:00:00'),
(108, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 18:34:25', '0000-00-00 00:00:00'),
(109, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 18:52:41', '0000-00-00 00:00:00'),
(110, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 18:52:51', '0000-00-00 00:00:00'),
(111, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-01-22 18:52:56', '0000-00-00 00:00:00'),
(112, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process a Payment for : zealouszeesanf@gmail.com', 1, 2, 0, '2019-01-23 05:53:09', '0000-00-00 00:00:00'),
(113, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 1, 0, '2019-01-22 19:46:03', '0000-00-00 00:00:00'),
(114, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated language label for : bengali', 1, 1, 0, '2019-01-23 07:15:08', '0000-00-00 00:00:00'),
(115, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-23 07:15:15', '0000-00-00 00:00:00'),
(116, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : english', 1, 2, 0, '2019-01-23 08:22:58', '0000-00-00 00:00:00'),
(117, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 2, 0, '2019-01-22 22:38:48', '0000-00-00 00:00:00'),
(118, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-22 22:39:03', '0000-00-00 00:00:00'),
(119, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added Bulk Student', 1, 1, 0, '2019-01-23 09:47:15', '0000-00-00 00:00:00'),
(120, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : A+', 1, 1, 0, '2019-01-23 09:48:36', '0000-00-00 00:00:00'),
(121, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : A', 1, 1, 0, '2019-01-23 09:48:46', '0000-00-00 00:00:00'),
(122, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : A-', 1, 1, 0, '2019-01-23 09:48:54', '0000-00-00 00:00:00'),
(123, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : B', 1, 1, 0, '2019-01-23 09:49:02', '0000-00-00 00:00:00'),
(124, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : C', 1, 1, 0, '2019-01-23 09:49:11', '0000-00-00 00:00:00'),
(125, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : D', 1, 1, 0, '2019-01-23 09:49:20', '0000-00-00 00:00:00'),
(126, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a exam Grade : F', 1, 1, 0, '2019-01-23 09:49:27', '0000-00-00 00:00:00'),
(127, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been udated an Exam : First Term', 1, 1, 0, '2019-01-23 09:50:09', '0000-00-00 00:00:00'),
(128, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been udated an Exam : Second Term', 1, 1, 0, '2019-01-23 09:50:19', '0000-00-00 00:00:00'),
(129, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been udated an Exam : Final Term', 1, 1, 0, '2019-01-23 09:50:30', '0000-00-00 00:00:00'),
(130, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 09:51:27', '0000-00-00 00:00:00'),
(131, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 09:52:15', '0000-00-00 00:00:00'),
(132, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 09:52:42', '0000-00-00 00:00:00'),
(133, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Bangla', 1, 1, 0, '2019-01-23 09:52:58', '0000-00-00 00:00:00'),
(134, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, English', 1, 1, 0, '2019-01-23 09:53:09', '0000-00-00 00:00:00'),
(135, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Mathematics', 1, 1, 0, '2019-01-23 09:53:18', '0000-00-00 00:00:00'),
(136, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 09:54:00', '0000-00-00 00:00:00'),
(137, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 09:54:49', '0000-00-00 00:00:00'),
(138, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 09:55:08', '0000-00-00 00:00:00'),
(139, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 09:55:33', '0000-00-00 00:00:00'),
(140, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 09:55:44', '0000-00-00 00:00:00'),
(141, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 09:56:05', '0000-00-00 00:00:00'),
(142, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Class 1', 1, 1, 0, '2019-01-23 09:56:24', '0000-00-00 00:00:00'),
(143, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process and save exam result for class: Class 1', 1, 1, 0, '2019-01-23 09:57:11', '0000-00-00 00:00:00'),
(144, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam final result for class: Class 1', 1, 1, 0, '2019-01-23 09:57:28', '0000-00-00 00:00:00'),
(145, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter result card for class: Class 1, Sabbir ', 1, 1, 0, '2019-01-23 09:58:16', '0000-00-00 00:00:00'),
(146, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Class 1', 1, 1, 0, '2019-01-23 09:59:31', '0000-00-00 00:00:00'),
(147, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process and save exam result for class: Class 1', 1, 1, 0, '2019-01-23 09:59:35', '0000-00-00 00:00:00'),
(148, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Class 1', 1, 1, 0, '2019-01-23 10:00:33', '0000-00-00 00:00:00'),
(149, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Class 1', 1, 1, 0, '2019-01-23 10:00:49', '0000-00-00 00:00:00'),
(150, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-22 23:41:57', '0000-00-00 00:00:00'),
(151, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 00:59:54', '0000-00-00 00:00:00'),
(152, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 01:00:08', '0000-00-00 00:00:00'),
(153, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 01:05:23', '0000-00-00 00:00:00'),
(154, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 01:51:15', '0000-00-00 00:00:00'),
(155, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been process student attendance', 1, 1, 0, '2019-01-23 12:55:37', '0000-00-00 00:00:00'),
(156, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been process a Payment for : zealouszeesan@gmail.com', 1, 1, 0, '2019-01-23 12:57:44', '0000-00-00 00:00:00'),
(157, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been created a fee type : Student Monthly Tuition Fee', 1, 1, 0, '2019-01-23 13:00:02', '0000-00-00 00:00:00'),
(158, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been created a invoice : 250.00', 1, 1, 0, '2019-01-23 13:01:05', '0000-00-00 00:00:00'),
(159, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-23 13:11:36', '0000-00-00 00:00:00'),
(160, 1, 1, 'Super Admin', '123485697', '45.127.245.12', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been activated a language : english', 1, 1, 0, '2019-01-23 13:11:44', '0000-00-00 00:00:00'),
(161, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 04:59:44', '0000-00-00 00:00:00'),
(162, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themered', 1, 1, 0, '2019-01-23 16:02:35', '0000-00-00 00:00:00'),
(163, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Thememedium-purple', 1, 1, 0, '2019-01-23 16:02:41', '0000-00-00 00:00:00'),
(164, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themeslate-gray', 1, 1, 0, '2019-01-23 16:03:05', '0000-00-00 00:00:00'),
(165, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process student attendance', 1, 1, 0, '2019-01-23 16:06:01', '0000-00-00 00:00:00'),
(166, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 05:10:30', '0000-00-00 00:00:00'),
(167, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 05:10:39', '0000-00-00 00:00:00'),
(168, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a Employee : Masum', 1, 1, 0, '2019-01-23 16:12:56', '0000-00-00 00:00:00'),
(169, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 05:13:28', '0000-00-00 00:00:00'),
(172, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 05:17:08', '0000-00-00 00:00:00'),
(173, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Class 1', 1, 1, 0, '2019-01-23 16:17:37', '0000-00-00 00:00:00'),
(174, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Class 1', 1, 1, 0, '2019-01-23 16:18:27', '0000-00-00 00:00:00'),
(180, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added Bulk Student', 1, 1, 0, '2019-01-23 16:59:57', '0000-00-00 00:00:00'),
(181, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a section : B for class : Class 1', 1, 1, 0, '2019-01-23 17:03:45', '0000-00-00 00:00:00'),
(182, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added Bulk Student', 1, 1, 0, '2019-01-23 17:04:27', '0000-00-00 00:00:00'),
(183, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added Bulk Student', 1, 1, 0, '2019-01-23 17:06:49', '0000-00-00 00:00:00'),
(184, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a section : B for class : Class 3', 1, 1, 0, '2019-01-23 17:08:17', '0000-00-00 00:00:00'),
(185, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a Guardian : Jesan', 1, 1, 0, '2019-01-23 17:34:26', '0000-00-00 00:00:00'),
(186, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : Physics for class : Class 1', 1, 1, 0, '2019-01-23 17:35:26', '0000-00-00 00:00:00'),
(187, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : Chemistry for class : Class 1', 1, 1, 0, '2019-01-23 17:35:53', '0000-00-00 00:00:00'),
(188, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : Higher Mathematics for class : Class 1', 1, 1, 0, '2019-01-23 17:36:29', '0000-00-00 00:00:00'),
(189, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added a sucject : ICT for class : Class 1', 1, 1, 0, '2019-01-23 17:37:03', '0000-00-00 00:00:00'),
(190, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 17:38:30', '0000-00-00 00:00:00'),
(191, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 17:38:58', '0000-00-00 00:00:00'),
(192, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 17:39:38', '0000-00-00 00:00:00'),
(193, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Bangla', 1, 1, 0, '2019-01-23 17:40:04', '0000-00-00 00:00:00'),
(194, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, English', 1, 1, 0, '2019-01-23 17:40:20', '0000-00-00 00:00:00'),
(195, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Mathematics', 1, 1, 0, '2019-01-23 17:40:26', '0000-00-00 00:00:00'),
(196, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Physics', 1, 1, 0, '2019-01-23 17:40:32', '0000-00-00 00:00:00'),
(197, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Chemistry', 1, 1, 0, '2019-01-23 17:41:00', '0000-00-00 00:00:00'),
(198, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Higher Mathematics', 1, 1, 0, '2019-01-23 17:41:06', '0000-00-00 00:00:00'),
(199, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Higher Mathematics', 1, 1, 0, '2019-01-23 17:41:10', '0000-00-00 00:00:00'),
(200, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created an exam schedule for class : Class 1', 1, 1, 0, '2019-01-23 17:42:03', '0000-00-00 00:00:00');
INSERT INTO `c1_activity_logs` (`id`, `user_id`, `role_id`, `name`, `phone`, `ip_address`, `user_agent`, `activity`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(201, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, Higher Mathematics', 1, 1, 0, '2019-01-23 17:42:18', '0000-00-00 00:00:00'),
(202, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:42:36', '0000-00-00 00:00:00'),
(203, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 17:46:33', '0000-00-00 00:00:00'),
(204, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:46:46', '0000-00-00 00:00:00'),
(205, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 17:48:43', '0000-00-00 00:00:00'),
(206, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:48:53', '0000-00-00 00:00:00'),
(207, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 17:50:38', '0000-00-00 00:00:00'),
(208, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:51:01', '0000-00-00 00:00:00'),
(209, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 17:52:38', '0000-00-00 00:00:00'),
(210, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:52:59', '0000-00-00 00:00:00'),
(211, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 17:54:04', '0000-00-00 00:00:00'),
(212, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:54:15', '0000-00-00 00:00:00'),
(213, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Class 1', 1, 1, 0, '2019-01-23 17:55:18', '0000-00-00 00:00:00'),
(214, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Class 1', 1, 1, 0, '2019-01-23 17:55:30', '0000-00-00 00:00:00'),
(215, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Class 1', 1, 1, 0, '2019-01-23 17:55:57', '0000-00-00 00:00:00'),
(216, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process and save exam result for class: Class 1', 1, 1, 0, '2019-01-23 17:57:16', '0000-00-00 00:00:00'),
(217, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam final result for class: Class 1', 1, 1, 0, '2019-01-23 17:57:32', '0000-00-00 00:00:00'),
(218, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam final result for class: Class 1', 1, 1, 0, '2019-01-23 17:57:41', '0000-00-00 00:00:00'),
(219, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter result card for class: Class 1, Sabbir ', 1, 1, 0, '2019-01-23 17:58:56', '0000-00-00 00:00:00'),
(220, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter result card for class: Class 1, Hamim', 1, 1, 0, '2019-01-23 17:59:04', '0000-00-00 00:00:00'),
(221, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter result card for class: Class 1, Sumon', 1, 1, 0, '2019-01-23 17:59:10', '0000-00-00 00:00:00'),
(222, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been promoted a class : Class 1', 1, 1, 0, '2019-01-23 18:00:36', '0000-00-00 00:00:00'),
(223, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Class 1', 1, 1, 0, '2019-01-23 18:06:34', '0000-00-00 00:00:00'),
(224, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process and save exam result for class: Class 1', 1, 1, 0, '2019-01-23 18:06:41', '0000-00-00 00:00:00'),
(225, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Class 1', 1, 1, 0, '2019-01-23 18:06:56', '0000-00-00 00:00:00'),
(226, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process and save exam result for class: Class 1', 1, 1, 0, '2019-01-23 18:07:01', '0000-00-00 00:00:00'),
(227, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam final result for class: Class 1', 1, 1, 0, '2019-01-23 18:07:25', '0000-00-00 00:00:00'),
(228, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-23 18:12:46', '0000-00-00 00:00:00'),
(229, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-23 18:14:07', '0000-00-00 00:00:00'),
(230, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a academic Year : January 2019 - December 2020', 1, 1, 0, '2019-01-23 18:14:45', '0000-00-00 00:00:00'),
(231, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a academic Year : January 2019 - December 2020', 1, 1, 0, '2019-01-23 18:14:59', '0000-00-00 00:00:00'),
(232, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a academic Year : January 2020 - December 2021', 1, 1, 0, '2019-01-23 18:16:57', '0000-00-00 00:00:00'),
(236, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 17:17:29', '0000-00-00 00:00:00'),
(237, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 17:18:14', '0000-00-00 00:00:00'),
(238, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 17:18:20', '0000-00-00 00:00:00'),
(239, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 17:18:20', '0000-00-00 00:00:00'),
(240, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 17:44:01', '0000-00-00 00:00:00'),
(241, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-24 04:44:10', '0000-00-00 00:00:00'),
(242, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : english', 1, 1, 0, '2019-01-24 04:44:39', '0000-00-00 00:00:00'),
(243, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 17:45:03', '0000-00-00 00:00:00'),
(244, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 18:51:27', '0000-00-00 00:00:00'),
(245, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 18:51:30', '0000-00-00 00:00:00'),
(246, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 18:53:48', '0000-00-00 00:00:00'),
(247, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 1, 0, '2019-01-23 18:55:04', '0000-00-00 00:00:00'),
(248, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged out', 1, 1, 0, '2019-01-23 18:56:00', '0000-00-00 00:00:00'),
(249, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:00:21', '0000-00-00 00:00:00'),
(250, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:00:24', '0000-00-00 00:00:00'),
(251, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:19:43', '0000-00-00 00:00:00'),
(252, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:19:47', '0000-00-00 00:00:00'),
(253, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:20:16', '0000-00-00 00:00:00'),
(254, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:20:37', '0000-00-00 00:00:00'),
(255, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 1, 0, '2019-01-23 19:21:03', '0000-00-00 00:00:00'),
(256, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:21:43', '0000-00-00 00:00:00'),
(257, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:23:04', '0000-00-00 00:00:00'),
(258, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:23:07', '0000-00-00 00:00:00'),
(259, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:23:16', '0000-00-00 00:00:00'),
(260, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:23:32', '0000-00-00 00:00:00'),
(261, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-24 06:28:07', '0000-00-00 00:00:00'),
(262, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-01-24 06:31:02', '0000-00-00 00:00:00'),
(263, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:31:15', '0000-00-00 00:00:00'),
(264, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:31:22', '0000-00-00 00:00:00'),
(265, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:32:06', '0000-00-00 00:00:00'),
(266, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:32:14', '0000-00-00 00:00:00'),
(267, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:32:34', '0000-00-00 00:00:00'),
(268, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:32:36', '0000-00-00 00:00:00'),
(269, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:33:46', '0000-00-00 00:00:00'),
(270, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:33:52', '0000-00-00 00:00:00'),
(271, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 19:33:55', '0000-00-00 00:00:00'),
(272, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged out', 1, 1, 0, '2019-01-23 19:37:39', '0000-00-00 00:00:00'),
(273, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 19:38:10', '0000-00-00 00:00:00'),
(274, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 21:13:13', '0000-00-00 00:00:00'),
(275, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:13:37', '0000-00-00 00:00:00'),
(276, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 21:15:57', '0000-00-00 00:00:00'),
(277, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:16:12', '0000-00-00 00:00:00'),
(278, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themedodger-blue', 1, 1, 0, '2019-01-24 08:24:22', '0000-00-00 00:00:00'),
(281, 1, 1, 'Super Admin', '123485697', '103.49.203.142', 'Mozilla/5.0 (Linux; U; Android 8.1.0; en-US; INE-LX2 Build/HUAWEIINE-LX2) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.9.10.1159 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:34:46', '0000-00-00 00:00:00'),
(282, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 21:35:08', '0000-00-00 00:00:00'),
(283, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:35:14', '0000-00-00 00:00:00'),
(284, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 21:36:29', '0000-00-00 00:00:00'),
(285, 1, 1, 'Super Admin', '123485697', '103.49.203.142', 'Mozilla/5.0 (Linux; U; Android 8.1.0; en-US; INE-LX2 Build/HUAWEIINE-LX2) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/57.0.2987.108 UCBrowser/12.9.10.1159 Mobile Safari/537.36', 'Has been process student attendance', 1, 1, 0, '2019-01-24 08:37:44', '0000-00-00 00:00:00'),
(287, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:38:22', '0000-00-00 00:00:00'),
(293, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 21:49:56', '0000-00-00 00:00:00'),
(294, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:50:55', '0000-00-00 00:00:00'),
(295, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 21:54:47', '0000-00-00 00:00:00'),
(296, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 21:55:42', '0000-00-00 00:00:00'),
(297, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-24 08:55:54', '0000-00-00 00:00:00'),
(298, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been activated a language : english', 1, 1, 0, '2019-01-24 08:56:09', '0000-00-00 00:00:00'),
(299, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themedodger-blue', 1, 1, 0, '2019-01-24 08:56:17', '0000-00-00 00:00:00'),
(300, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been sent an Email : AIS Module Grapichal Report not showing', 1, 1, 0, '2019-01-24 09:17:41', '0000-00-00 00:00:00'),
(301, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-23 23:40:31', '0000-00-00 00:00:00'),
(302, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 23:40:36', '0000-00-00 00:00:00'),
(303, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-24 00:00:36', '0000-00-00 00:00:00'),
(304, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-24 00:00:49', '0000-00-00 00:00:00'),
(305, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-24 00:05:10', '0000-00-00 00:00:00'),
(306, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-24 00:56:58', '0000-00-00 00:00:00'),
(307, 1, 1, 'Super Admin', '123485697', '119.30.35.224', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-24 04:12:27', '0000-00-00 00:00:00'),
(308, 1, 1, 'Super Admin', '123485697', '119.30.35.224', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-24 15:47:08', '0000-00-00 00:00:00'),
(309, 1, 1, 'Super Admin', '123485697', '119.30.35.224', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been activated a language : english', 1, 1, 0, '2019-01-24 15:47:36', '0000-00-00 00:00:00'),
(310, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-24 19:07:41', '0000-00-00 00:00:00'),
(311, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been logged in', 1, 1, 0, '2019-01-24 20:35:43', '0000-00-00 00:00:00'),
(312, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a academic Year : July 2016 - June 2017', 1, 1, 0, '2019-01-25 07:36:23', '0000-00-00 00:00:00'),
(313, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a academic Year : July 2017 - June 2018', 1, 1, 0, '2019-01-25 07:36:27', '0000-00-00 00:00:00'),
(314, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a academic Year : July 2018 - June 2019', 1, 1, 0, '2019-01-25 07:36:30', '0000-00-00 00:00:00'),
(315, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a academic Year : July 2019 - June 2020', 1, 1, 0, '2019-01-25 07:36:32', '0000-00-00 00:00:00'),
(316, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a academic Year : January 2019 - December 2020', 1, 1, 0, '2019-01-25 07:36:36', '0000-00-00 00:00:00'),
(317, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a academic Year : January 2020 - December 2021', 1, 1, 0, '2019-01-25 07:36:38', '0000-00-00 00:00:00'),
(318, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a academic Year : January 2019 - January 2020', 1, 1, 0, '2019-01-25 07:37:18', '0000-00-00 00:00:00'),
(319, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated general setting', 1, 1, 0, '2019-01-25 07:37:54', '0000-00-00 00:00:00'),
(320, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a class : Class 1', 1, 1, 0, '2019-01-25 07:38:14', '0000-00-00 00:00:00'),
(321, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a class : Class 2', 1, 1, 0, '2019-01-25 07:38:17', '0000-00-00 00:00:00'),
(322, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a class : Class 3', 1, 1, 0, '2019-01-25 07:38:20', '0000-00-00 00:00:00'),
(323, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Abul Kasem', 1, 1, 0, '2019-01-25 07:47:36', '0000-00-00 00:00:00'),
(324, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a Teacher : Abdullah', 1, 1, 0, '2019-01-25 07:47:50', '0000-00-00 00:00:00'),
(325, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a Teacher : Main Uddin', 1, 1, 0, '2019-01-25 07:47:53', '0000-00-00 00:00:00'),
(326, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been deleted a Teacher : Rifat Farzana', 1, 1, 0, '2019-01-25 07:47:58', '0000-00-00 00:00:00'),
(327, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Hasan Mashruf', 1, 1, 0, '2019-01-25 07:50:05', '0000-00-00 00:00:00'),
(328, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Ariful Haq Pandit', 1, 1, 0, '2019-01-25 07:51:30', '0000-00-00 00:00:00'),
(329, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Ms. Sheuly Jahan', 1, 1, 0, '2019-01-25 07:52:51', '0000-00-00 00:00:00'),
(330, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated a Teacher : Ms. Sheuly Jahan', 1, 1, 0, '2019-01-25 07:53:38', '0000-00-00 00:00:00'),
(331, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Monika Gope', 1, 1, 0, '2019-01-25 07:55:06', '0000-00-00 00:00:00'),
(332, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Nilufar Yeasmin', 1, 1, 0, '2019-01-25 07:56:38', '0000-00-00 00:00:00'),
(333, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a class :Class Six', 1, 1, 0, '2019-01-25 07:57:38', '0000-00-00 00:00:00'),
(334, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a class :Class Seven', 1, 1, 0, '2019-01-25 07:58:34', '0000-00-00 00:00:00'),
(335, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a class :Class Eight', 1, 1, 0, '2019-01-25 07:59:32', '0000-00-00 00:00:00'),
(336, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a class :Class Nine', 1, 1, 0, '2019-01-25 08:00:18', '0000-00-00 00:00:00'),
(337, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created a class :Clas Ten', 1, 1, 0, '2019-01-25 08:01:15', '0000-00-00 00:00:00'),
(338, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated a class :Six', 1, 1, 0, '2019-01-25 08:01:35', '0000-00-00 00:00:00'),
(339, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated a class :Seven', 1, 1, 0, '2019-01-25 08:01:43', '0000-00-00 00:00:00'),
(340, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated a class :Eight', 1, 1, 0, '2019-01-25 08:01:51', '0000-00-00 00:00:00'),
(341, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated a class :Nine', 1, 1, 0, '2019-01-25 08:02:01', '0000-00-00 00:00:00'),
(342, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been updated a class :Ten', 1, 1, 0, '2019-01-25 08:02:10', '0000-00-00 00:00:00'),
(343, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 1 for class : Six', 1, 1, 0, '2019-01-25 08:04:35', '0000-00-00 00:00:00'),
(344, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 1 for class : Seven', 1, 1, 0, '2019-01-25 08:05:27', '0000-00-00 00:00:00'),
(345, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 1 for class : Eight', 1, 1, 0, '2019-01-25 08:05:49', '0000-00-00 00:00:00'),
(346, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 1 for class : Nine', 1, 1, 0, '2019-01-25 08:06:11', '0000-00-00 00:00:00'),
(347, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 1 for class : Ten', 1, 1, 0, '2019-01-25 08:06:29', '0000-00-00 00:00:00'),
(348, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 2 for class : Six', 1, 1, 0, '2019-01-25 08:07:59', '0000-00-00 00:00:00'),
(349, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 2 for class : Seven', 1, 1, 0, '2019-01-25 08:08:53', '0000-00-00 00:00:00'),
(350, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 2 for class : Eight', 1, 1, 0, '2019-01-25 08:09:16', '0000-00-00 00:00:00'),
(351, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 2 for class : Nine', 1, 1, 0, '2019-01-25 08:09:33', '0000-00-00 00:00:00'),
(352, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Bangla 2 for class : Ten', 1, 1, 0, '2019-01-25 08:09:59', '0000-00-00 00:00:00'),
(353, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 1 for class : Six', 1, 1, 0, '2019-01-25 08:11:06', '0000-00-00 00:00:00'),
(354, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 1 for class : Seven', 1, 1, 0, '2019-01-25 08:11:23', '0000-00-00 00:00:00'),
(355, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 1 for class : Eight', 1, 1, 0, '2019-01-25 08:11:40', '0000-00-00 00:00:00'),
(356, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 1 for class : Nine', 1, 1, 0, '2019-01-25 08:12:00', '0000-00-00 00:00:00'),
(357, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 1 for class : Ten', 1, 1, 0, '2019-01-25 08:12:15', '0000-00-00 00:00:00'),
(358, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 2 for class : Six', 1, 1, 0, '2019-01-25 08:13:47', '0000-00-00 00:00:00'),
(359, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 2 for class : Seven', 1, 1, 0, '2019-01-25 08:14:32', '0000-00-00 00:00:00'),
(360, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 2 for class : Eight', 1, 1, 0, '2019-01-25 08:14:56', '0000-00-00 00:00:00'),
(361, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 2 for class : Nine', 1, 1, 0, '2019-01-25 08:15:15', '0000-00-00 00:00:00'),
(362, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : English 2 for class : Ten', 1, 1, 0, '2019-01-25 08:15:39', '0000-00-00 00:00:00'),
(363, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-24 21:19:35', '0000-00-00 00:00:00'),
(364, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Mathematics for class : Six', 1, 1, 0, '2019-01-25 08:20:52', '0000-00-00 00:00:00'),
(365, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Mathematics for class : Seven', 1, 1, 0, '2019-01-25 08:21:16', '0000-00-00 00:00:00'),
(366, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Mathematics for class : Eight', 1, 1, 0, '2019-01-25 08:21:39', '0000-00-00 00:00:00'),
(367, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Mathematics for class : Nine', 1, 1, 0, '2019-01-25 08:22:01', '0000-00-00 00:00:00'),
(368, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Mathematics for class : Ten', 1, 1, 0, '2019-01-25 08:22:18', '0000-00-00 00:00:00'),
(369, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : BDGS for class : Six', 1, 1, 0, '2019-01-25 08:22:53', '0000-00-00 00:00:00'),
(370, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : BDGS for class : Seven', 1, 1, 0, '2019-01-25 08:23:14', '0000-00-00 00:00:00'),
(371, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : BDGS for class : Eight', 1, 1, 0, '2019-01-25 08:23:33', '0000-00-00 00:00:00'),
(372, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : BDGS for class : Nine', 1, 1, 0, '2019-01-25 08:23:51', '0000-00-00 00:00:00'),
(373, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : BDGS for class : Ten', 1, 1, 0, '2019-01-25 08:24:13', '0000-00-00 00:00:00'),
(374, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a Teacher : Mawlana Muhaiminul Islam', 1, 1, 0, '2019-01-25 08:28:11', '0000-00-00 00:00:00'),
(375, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Religion for class : Six', 1, 1, 0, '2019-01-25 08:29:01', '0000-00-00 00:00:00'),
(376, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Religion for class : Seven', 1, 1, 0, '2019-01-25 08:29:24', '0000-00-00 00:00:00'),
(377, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Religion for class : Eight', 1, 1, 0, '2019-01-25 08:29:43', '0000-00-00 00:00:00'),
(378, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Religion for class : Nine', 1, 1, 0, '2019-01-25 08:30:05', '0000-00-00 00:00:00'),
(379, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added a sucject : Religion for class : Ten', 1, 1, 0, '2019-01-25 08:30:27', '0000-00-00 00:00:00'),
(380, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been added syllabus : First Term Syllabus for class : Six', 1, 1, 0, '2019-01-25 08:31:13', '0000-00-00 00:00:00'),
(381, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an Exam : First Term', 1, 1, 0, '2019-01-25 08:32:17', '0000-00-00 00:00:00'),
(382, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:33:07', '0000-00-00 00:00:00'),
(383, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:33:38', '0000-00-00 00:00:00'),
(384, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:34:05', '0000-00-00 00:00:00'),
(385, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:34:35', '0000-00-00 00:00:00'),
(386, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:34:58', '0000-00-00 00:00:00'),
(387, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:35:32', '0000-00-00 00:00:00'),
(388, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been created an exam schedule for class : Six', 1, 1, 0, '2019-01-25 08:35:54', '0000-00-00 00:00:00'),
(389, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been process exam attendance for : First Term, Six, Bangla 1', 1, 1, 0, '2019-01-25 08:36:21', '0000-00-00 00:00:00'),
(390, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:64.0) Gecko/20100101 Firefox/64.0', 'Has been process exam attendance for : First Term, Six, Bangla 1', 1, 1, 0, '2019-01-25 08:36:23', '0000-00-00 00:00:00'),
(391, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been added Bulk Student', 1, 1, 0, '2019-01-25 09:17:40', '0000-00-00 00:00:00'),
(392, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Anisur Rahman Tareq', 1, 1, 0, '2019-01-25 09:18:31', '0000-00-00 00:00:00'),
(393, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Zakir Hossain', 1, 1, 0, '2019-01-25 09:19:29', '0000-00-00 00:00:00'),
(394, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Anisur Rahman Tareq', 1, 1, 0, '2019-01-25 09:19:42', '0000-00-00 00:00:00'),
(395, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Anisur Rahman Tareq', 1, 1, 0, '2019-01-25 09:20:05', '0000-00-00 00:00:00'),
(396, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Shanta Parvin', 1, 1, 0, '2019-01-25 09:20:56', '0000-00-00 00:00:00'),
(397, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Juyenna Halima', 1, 1, 0, '2019-01-25 09:21:26', '0000-00-00 00:00:00'),
(398, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated a Student : Lolita biswas', 1, 1, 0, '2019-01-25 09:22:09', '0000-00-00 00:00:00'),
(399, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, Bangla 1', 1, 1, 0, '2019-01-25 09:22:28', '0000-00-00 00:00:00'),
(400, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, Bangla 2', 1, 1, 0, '2019-01-25 09:22:37', '0000-00-00 00:00:00'),
(401, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, English 1', 1, 1, 0, '2019-01-25 09:22:43', '0000-00-00 00:00:00'),
(402, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, English 2', 1, 1, 0, '2019-01-25 09:22:50', '0000-00-00 00:00:00'),
(403, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, Mathematics', 1, 1, 0, '2019-01-25 09:22:56', '0000-00-00 00:00:00'),
(404, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, BDGS', 1, 1, 0, '2019-01-25 09:23:09', '0000-00-00 00:00:00');
INSERT INTO `c1_activity_logs` (`id`, `user_id`, `role_id`, `name`, `phone`, `ip_address`, `user_agent`, `activity`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(405, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Six, Religion', 1, 1, 0, '2019-01-25 09:23:15', '0000-00-00 00:00:00'),
(406, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Six', 1, 1, 0, '2019-01-25 09:23:46', '0000-00-00 00:00:00'),
(407, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Six', 1, 1, 0, '2019-01-25 09:30:28', '0000-00-00 00:00:00'),
(408, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-24 22:30:33', '0000-00-00 00:00:00'),
(409, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Six', 1, 1, 0, '2019-01-25 09:30:41', '0000-00-00 00:00:00'),
(410, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process and save exam result for class: Six', 1, 1, 0, '2019-01-25 09:32:44', '0000-00-00 00:00:00'),
(411, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam final result for class: Six', 1, 1, 0, '2019-01-25 09:33:08', '0000-00-00 00:00:00'),
(412, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Six', 1, 1, 0, '2019-01-25 09:33:26', '0000-00-00 00:00:00'),
(413, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Six', 1, 1, 0, '2019-01-25 09:33:32', '0000-00-00 00:00:00'),
(414, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark and save for class: Six', 1, 1, 0, '2019-01-25 09:37:57', '0000-00-00 00:00:00'),
(415, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam result for class: Six', 1, 1, 0, '2019-01-25 09:38:08', '0000-00-00 00:00:00'),
(416, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam final result for class: Six', 1, 1, 0, '2019-01-25 09:38:52', '0000-00-00 00:00:00'),
(417, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Six', 1, 1, 0, '2019-01-25 09:40:05', '0000-00-00 00:00:00'),
(418, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter result card for class: Six, Anisur Rahman Tareq', 1, 1, 0, '2019-01-25 09:40:43', '0000-00-00 00:00:00'),
(419, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam mark for class: Six', 1, 1, 0, '2019-01-25 09:45:19', '0000-00-00 00:00:00'),
(420, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-24 23:40:34', '0000-00-00 00:00:00'),
(421, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-25 00:00:48', '0000-00-00 00:00:00'),
(422, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-25 00:01:02', '0000-00-00 00:00:00'),
(423, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-25 19:14:57', '0000-00-00 00:00:00'),
(424, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-25 19:15:03', '0000-00-00 00:00:00'),
(425, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-25 19:53:49', '0000-00-00 00:00:00'),
(426, 1, 1, 'Super Admin', '123485697', '119.30.39.163', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Has been logged in', 1, 1, 0, '2019-01-25 21:44:31', '0000-00-00 00:00:00'),
(427, 1, 1, 'Super Admin', '123485697', '119.30.39.163', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Has been process student attendance', 1, 1, 0, '2019-01-26 08:54:02', '0000-00-00 00:00:00'),
(428, 1, 1, 'Super Admin', '123485697', '119.30.39.163', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Has been process exam mark for class: Six', 1, 1, 0, '2019-01-26 08:55:48', '0000-00-00 00:00:00'),
(429, 1, 1, 'Super Admin', '123485697', '119.30.39.163', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Has been added Bulk Student', 1, 1, 0, '2019-01-26 09:16:11', '0000-00-00 00:00:00'),
(430, 1, 1, 'Super Admin', '123485697', '119.30.39.163', 'Mozilla/5.0 (Windows NT 10.0; WOW64; rv:65.0) Gecko/20100101 Firefox/65.0', 'Has been logged out', 1, 1, 0, '2019-01-25 22:16:41', '0000-00-00 00:00:00'),
(431, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-25 23:47:08', '0000-00-00 00:00:00'),
(432, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-26 05:29:36', '0000-00-00 00:00:00'),
(433, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-26 18:02:14', '0000-00-00 00:00:00'),
(434, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-26 21:07:10', '0000-00-00 00:00:00'),
(435, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-26 22:08:04', '0000-00-00 00:00:00'),
(436, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-26 22:09:21', '0000-00-00 00:00:00'),
(437, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-27 00:15:57', '0000-00-00 00:00:00'),
(438, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-27 02:22:15', '0000-00-00 00:00:00'),
(439, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-27 02:22:53', '0000-00-00 00:00:00'),
(440, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-27 02:24:19', '0000-00-00 00:00:00'),
(441, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-27 02:24:38', '0000-00-00 00:00:00'),
(442, 1, 1, 'Super Admin', '123485697', '103.115.117.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-27 02:24:58', '0000-00-00 00:00:00'),
(443, 1, 1, 'Super Admin', '123485697', '103.115.117.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been activated a language : bengali', 1, 1, 0, '2019-01-27 13:30:41', '0000-00-00 00:00:00'),
(444, 1, 1, 'Super Admin', '123485697', '103.115.117.1', 'Mozilla/5.0 (Linux; Android 6.0.1; Redmi 3S) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.99 Mobile Safari/537.36', 'Has been activated a language : english', 1, 1, 0, '2019-01-27 13:30:52', '0000-00-00 00:00:00'),
(445, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-27 05:51:25', '0000-00-00 00:00:00'),
(446, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-27 15:10:30', '0000-00-00 00:00:00'),
(447, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 04:24:16', '0000-00-00 00:00:00'),
(448, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 04:24:24', '0000-00-00 00:00:00'),
(449, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 22:40:17', '0000-00-00 00:00:00'),
(450, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 22:40:58', '0000-00-00 00:00:00'),
(451, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 22:41:14', '0000-00-00 00:00:00'),
(452, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 22:43:53', '0000-00-00 00:00:00'),
(453, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 22:43:56', '0000-00-00 00:00:00'),
(454, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 22:46:36', '0000-00-00 00:00:00'),
(455, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 22:57:19', '0000-00-00 00:00:00'),
(456, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 22:58:16', '0000-00-00 00:00:00'),
(457, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 22:58:24', '0000-00-00 00:00:00'),
(458, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themeslate-gray', 1, 1, 0, '2019-01-29 10:00:00', '0000-00-00 00:00:00'),
(459, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 23:19:48', '0000-00-00 00:00:00'),
(460, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 23:19:54', '0000-00-00 00:00:00'),
(461, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 23:22:06', '0000-00-00 00:00:00'),
(462, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 23:22:09', '0000-00-00 00:00:00'),
(463, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 23:30:51', '0000-00-00 00:00:00'),
(464, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 23:31:17', '0000-00-00 00:00:00'),
(465, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-28 23:43:45', '0000-00-00 00:00:00'),
(466, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-28 23:43:55', '0000-00-00 00:00:00'),
(467, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 00:28:06', '0000-00-00 00:00:00'),
(468, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 00:28:10', '0000-00-00 00:00:00'),
(469, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 01:00:19', '0000-00-00 00:00:00'),
(470, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 01:00:23', '0000-00-00 00:00:00'),
(471, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 06:00:48', '0000-00-00 00:00:00'),
(472, 1, 1, 'Super Admin', '123485697', '209.126.90.144', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 19:27:15', '0000-00-00 00:00:00'),
(473, 1, 1, 'Super Admin', '123485697', '209.126.90.144', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 19:27:22', '0000-00-00 00:00:00'),
(474, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 19:41:13', '0000-00-00 00:00:00'),
(475, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 19:41:17', '0000-00-00 00:00:00'),
(476, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 19:42:47', '0000-00-00 00:00:00'),
(477, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 19:42:52', '0000-00-00 00:00:00'),
(478, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 19:44:04', '0000-00-00 00:00:00'),
(479, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 19:44:08', '0000-00-00 00:00:00'),
(480, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 19:45:56', '0000-00-00 00:00:00'),
(481, 1, 1, 'Super Admin', '123485697', '209.126.90.144', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 20:15:47', '0000-00-00 00:00:00'),
(482, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 20:18:08', '0000-00-00 00:00:00'),
(483, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 22:02:09', '0000-00-00 00:00:00'),
(484, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 22:02:18', '0000-00-00 00:00:00'),
(485, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 22:02:31', '0000-00-00 00:00:00'),
(486, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 22:02:57', '0000-00-00 00:00:00'),
(487, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 22:03:00', '0000-00-00 00:00:00'),
(488, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 22:51:20', '0000-00-00 00:00:00'),
(489, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-29 22:51:24', '0000-00-00 00:00:00'),
(490, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-29 23:59:53', '0000-00-00 00:00:00'),
(491, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-30 00:00:00', '0000-00-00 00:00:00'),
(492, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 17:45:15', '0000-00-00 00:00:00'),
(493, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themelime-green', 1, 1, 0, '2019-01-31 04:45:33', '0000-00-00 00:00:00'),
(494, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 18:09:14', '0000-00-00 00:00:00'),
(495, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-30 18:09:20', '0000-00-00 00:00:00'),
(496, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themedodger-blue', 1, 1, 0, '2019-01-31 05:17:25', '0000-00-00 00:00:00'),
(497, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 18:48:03', '0000-00-00 00:00:00'),
(498, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themeslate-gray', 1, 1, 0, '2019-01-31 05:48:30', '0000-00-00 00:00:00'),
(499, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-30 18:48:43', '0000-00-00 00:00:00'),
(500, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 19:12:47', '0000-00-00 00:00:00'),
(501, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-30 19:13:06', '0000-00-00 00:00:00'),
(502, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 20:56:42', '0000-00-00 00:00:00'),
(503, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-30 20:56:49', '0000-00-00 00:00:00'),
(504, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 20:59:42', '0000-00-00 00:00:00'),
(505, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-30 21:02:28', '0000-00-00 00:00:00'),
(506, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-30 23:56:35', '0000-00-00 00:00:00'),
(507, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-31 00:11:25', '0000-00-00 00:00:00'),
(508, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-31 17:06:46', '0000-00-00 00:00:00'),
(509, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-01-31 17:07:00', '0000-00-00 00:00:00'),
(510, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-01 18:55:46', '0000-00-00 00:00:00'),
(511, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-01 19:53:05', '0000-00-00 00:00:00'),
(512, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-01 21:16:42', '0000-00-00 00:00:00'),
(513, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-01 21:16:46', '0000-00-00 00:00:00'),
(514, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-01 21:22:58', '0000-00-00 00:00:00'),
(515, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-01 21:23:04', '0000-00-00 00:00:00'),
(516, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-01 23:09:06', '0000-00-00 00:00:00'),
(517, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-02 00:52:29', '0000-00-00 00:00:00'),
(518, 2, 2, 'Sabbir', '01708491555', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 2, 0, '2019-02-02 16:34:13', '0000-00-00 00:00:00'),
(519, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-02 19:04:20', '0000-00-00 00:00:00'),
(520, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-02 19:04:30', '0000-00-00 00:00:00'),
(521, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-02 19:06:10', '0000-00-00 00:00:00'),
(522, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-02 19:06:15', '0000-00-00 00:00:00'),
(523, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-02 19:39:30', '0000-00-00 00:00:00'),
(524, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-02 19:39:34', '0000-00-00 00:00:00'),
(525, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-02 23:38:45', '0000-00-00 00:00:00'),
(526, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-03 00:13:50', '0000-00-00 00:00:00'),
(527, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-03 01:09:39', '0000-00-00 00:00:00'),
(528, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themelight-sea-green', 1, 1, 0, '2019-02-03 13:26:17', '0000-00-00 00:00:00'),
(529, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themelight-sea-green', 1, 1, 0, '2019-02-03 13:26:30', '0000-00-00 00:00:00'),
(530, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-03 02:27:01', '0000-00-00 00:00:00'),
(531, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-03 02:27:23', '0000-00-00 00:00:00'),
(532, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Activate Themeslate-gray', 1, 1, 0, '2019-02-03 13:27:42', '0000-00-00 00:00:00'),
(533, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-03 02:27:46', '0000-00-00 00:00:00'),
(534, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-03 06:05:57', '0000-00-00 00:00:00'),
(535, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-03 06:22:26', '0000-00-00 00:00:00'),
(536, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-03 19:41:01', '0000-00-00 00:00:00'),
(537, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-03 20:32:50', '0000-00-00 00:00:00'),
(538, 1, 1, 'Super Admin', '123485697', '136.0.99.250', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-04 18:20:49', '0000-00-00 00:00:00'),
(539, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-04 21:04:04', '0000-00-00 00:00:00'),
(540, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-04 21:04:20', '0000-00-00 00:00:00'),
(541, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-04 23:12:53', '0000-00-00 00:00:00'),
(542, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-04 23:12:58', '0000-00-00 00:00:00'),
(543, 1, 1, 'Super Admin', '123485697', '104.243.210.252', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-05 00:13:09', '0000-00-00 00:00:00'),
(544, 1, 1, 'Super Admin', '123485697', '104.243.210.252', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-05 00:13:10', '0000-00-00 00:00:00'),
(545, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-05 00:41:18', '0000-00-00 00:00:00'),
(546, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.81 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-05 00:57:00', '0000-00-00 00:00:00'),
(547, 1, 1, 'Super Admin', '123485697', '209.126.90.178', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-05 21:42:53', '0000-00-00 00:00:00'),
(548, 1, 1, 'Super Admin', '123485697', '103.87.212.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-06 05:26:47', '0000-00-00 00:00:00'),
(549, 1, 1, 'Super Admin', '123485697', '103.87.212.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been updated general setting', 1, 1, 0, '2019-02-06 16:30:19', '0000-00-00 00:00:00'),
(550, 1, 1, 'Super Admin', '123485697', '103.87.212.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-06 05:30:32', '0000-00-00 00:00:00'),
(551, 1, 1, 'Super Admin', '123485697', '103.87.212.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-06 05:30:43', '0000-00-00 00:00:00'),
(552, 1, 1, 'Super Admin', '123485697', '103.87.212.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been created a academic Year : January 2009 - January 2010', 1, 1, 0, '2019-02-06 16:32:32', '0000-00-00 00:00:00'),
(553, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-06 18:46:09', '0000-00-00 00:00:00'),
(554, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-06 22:06:26', '0000-00-00 00:00:00'),
(555, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-07 01:52:04', '0000-00-00 00:00:00'),
(556, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-07 03:39:00', '0000-00-00 00:00:00'),
(557, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-08 20:04:12', '0000-00-00 00:00:00'),
(558, 1, 1, 'Super Admin', '123485697', '103.87.212.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-08 22:26:30', '0000-00-00 00:00:00'),
(559, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-09 00:14:21', '0000-00-00 00:00:00'),
(560, 1, 1, 'Super Admin', '123485697', '103.35.168.206', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-09 00:59:59', '0000-00-00 00:00:00'),
(561, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-09 17:42:28', '0000-00-00 00:00:00'),
(562, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-10 03:51:08', '0000-00-00 00:00:00'),
(563, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-10 03:51:17', '0000-00-00 00:00:00'),
(564, 1, 1, 'Super Admin', '123485697', '103.91.128.194', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-10 04:18:55', '0000-00-00 00:00:00'),
(565, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-10 18:45:14', '0000-00-00 00:00:00'),
(566, 1, 1, 'Super Admin', '123485697', '209.126.90.204', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-10 18:45:38', '0000-00-00 00:00:00'),
(567, 1, 1, 'Super Admin', '123485697', '182.163.112.194', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been created a Designation : admin01', 1, 1, 0, '2019-02-11 06:48:30', '0000-00-00 00:00:00'),
(568, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been created a Designation : MD', 1, 1, 0, '2019-02-11 07:35:06', '0000-00-00 00:00:00'),
(569, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been deleted a Designation : MD', 1, 1, 0, '2019-02-11 07:35:14', '0000-00-00 00:00:00'),
(570, 1, 1, 'Super Admin', '123485697', '104.243.210.188', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-10 22:54:22', '0000-00-00 00:00:00'),
(571, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-11 00:10:06', '0000-00-00 00:00:00'),
(572, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-11 01:00:15', '0000-00-00 00:00:00'),
(573, 1, 1, 'Super Admin', '123485697', '209.126.90.247', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-11 19:04:21', '0000-00-00 00:00:00'),
(574, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-11 19:37:17', '0000-00-00 00:00:00'),
(575, 1, 1, 'Super Admin', '123485697', '209.126.90.225', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-11 21:09:37', '0000-00-00 00:00:00'),
(576, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-12 00:55:12', '0000-00-00 00:00:00'),
(577, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-12 20:12:32', '0000-00-00 00:00:00'),
(578, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-12 22:17:16', '0000-00-00 00:00:00'),
(579, 1, 1, 'Super Admin', '123485697', '209.126.90.146', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-12 22:32:51', '0000-00-00 00:00:00'),
(580, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged out', 1, 1, 0, '2019-02-13 00:52:14', '0000-00-00 00:00:00'),
(581, 1, 1, 'Super Admin', '123485697', '103.87.212.170', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-13 05:46:39', '0000-00-00 00:00:00'),
(582, 1, 1, 'Super Admin', '123485697', '43.246.202.159', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.96 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-02-13 23:30:54', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c1_employees`
--

CREATE TABLE `c1_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resign_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_view_on_web` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_employees`
--

INSERT INTO `c1_employees` (`id`, `user_id`, `national_id`, `designation_id`, `salary_grade_id`, `salary_type`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `other_info`, `is_view_on_web`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(3, 2, '456354654623', 17, 3, 'hourly', 'admin0dfsd1', '01711533611', 'vcxzvczxvc', 'cxvzvcx', '1', NULL, 'Muslim', '2020-02-10', '2020-02-04', NULL, 'Client-Photos-1024x683.jpg', 'd2Pi9jD.jpg', 'vczxc', 'vcxzv', 'xczv', 'vcxzv', 'xczv', 'cvxz', 'cvxz', 'vcxz', 1, 1, 1, 1, '2020-02-27 03:02:40', '2020-02-29 04:41:07'),
(33, 1, '4563546546', 17, 2, 'monthly', 'test', '01839393490', NULL, NULL, '1', 'a_positive', 'Muslim', '2020-02-12', '2020-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2020-02-28 22:14:19', NULL),
(34, 3, '4563546546', 17, 3, 'hourly', 'admin01', '01839393490', NULL, NULL, '2', NULL, NULL, '2020-02-03', '2020-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2020-02-29 00:15:56', NULL),
(35, 1, '4563546546', 17, 2, 'monthly', 'fgd', '01839393490', NULL, NULL, '2', NULL, NULL, '2020-02-10', '2020-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2020-02-29 00:38:21', NULL),
(36, 2, '4563546546', 17, 1, 'monthly', 'admin01', '01839393490', NULL, NULL, '2', 'a_negative', NULL, '2020-02-10', '2020-02-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2020-02-29 02:04:38', NULL),
(37, 32, '4563546546', 17, 1, 'monthly', 'fgd', '01839393490', NULL, NULL, '1', NULL, NULL, '2020-02-10', '2020-02-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2020-02-29 02:26:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c1_expenditures`
--

CREATE TABLE `c1_expenditures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenditure_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenditure_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `expenditure_via` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_guardians`
--

CREATE TABLE `c1_guardians` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_hostel_members`
--

CREATE TABLE `c1_hostel_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_member_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostel_id` bigint(20) UNSIGNED DEFAULT NULL,
  `room_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_library_members`
--

CREATE TABLE `c1_library_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_member_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_message_relationships`
--

CREATE TABLE `c1_message_relationships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_trash` tinyint(4) NOT NULL,
  `is_draft` smallint(6) NOT NULL,
  `is_favorite` tinyint(4) NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_privileges`
--

CREATE TABLE `c1_privileges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `operation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_add` tinyint(4) NOT NULL,
  `is_edit` tinyint(4) NOT NULL,
  `is_view` tinyint(4) NOT NULL,
  `is_delete` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_privileges`
--

INSERT INTO `c1_privileges` (`id`, `role_id`, `operation_id`, `is_add`, `is_edit`, `is_view`, `is_delete`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 0, 1, 1, 0, '2018-08-04 07:58:21', '0000-00-00 00:00:00'),
(2, 1, 2, 1, 1, 1, 0, 1, 1, 0, '2018-08-04 07:58:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c1_replies`
--

CREATE TABLE `c1_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_teachers`
--

CREATE TABLE `c1_teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary_grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibility` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joining_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resign_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_view_on_web` tinyint(4) DEFAULT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_teachers`
--

INSERT INTO `c1_teachers` (`id`, `user_id`, `national_id`, `salary_grade_id`, `salary_type`, `responsibility`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `youtube_url`, `pinterest_url`, `is_view_on_web`, `other_info`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(7, 2, '12345678909876', 1, 'monthly', 'Assistant Teacher', 'Ms. Sheuly Jahan', '01721002700', 'Village- Jangalia, Post- Jangalia, P.S- Pakundia, District- Kishoreganj', 'Village- Jangalia, Post- Jangalia, P.S- Pakundia, District- Kishoreganj', 'female', 'b_positive', '', '1995-07-12', '2018-10-31', '', 'photo-1548402771-sms.jpg', '', '', '', '', '', '', '', '', 1, 'She is a good teacher having 8 years of teaching experiences', 1, 1, 1, '2019-01-25 07:52:51', '2019-01-25 07:53:38'),
(9, 37, '4563546546', 2, 'monthly', 'Assistant teacher', 'admin', '01839393490', NULL, NULL, '2', 'b_negative', 'Muslim', '2020-02-12', '2020-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, '2020-02-29 05:54:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c1_transport_members`
--

CREATE TABLE `c1_transport_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `route_stop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c1_visitors`
--

CREATE TABLE `c1_visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coming_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_in` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `check_out` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d1_book_issues`
--

CREATE TABLE `d1_book_issues` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` int(11) NOT NULL,
  `library_member_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `issue_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_returned` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d1_classes`
--

CREATE TABLE `d1_classes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `numeric_name` int(11) NOT NULL,
  `monthly_tution_fee` double NOT NULL,
  `admission_fee` double NOT NULL,
  `exam_fee` double NOT NULL,
  `certificate_fee` double NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d1_classes`
--

INSERT INTO `d1_classes` (`id`, `teacher_id`, `name`, `numeric_name`, `monthly_tution_fee`, `admission_fee`, `exam_fee`, `certificate_fee`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(4, 9, 'Six', 6, 0, 0, 0, 0, 'Ms. Nilufar Yeasmin is assigned as the class teacher of the system ', 1, 1, 1, '2019-01-25 07:57:38', '2019-01-25 08:01:35');

-- --------------------------------------------------------

--
-- Table structure for table `d1_employee_attendances`
--

CREATE TABLE `d1_employee_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_9` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d1_salary_payments`
--

CREATE TABLE `d1_salary_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expenditure_id` bigint(20) UNSIGNED DEFAULT NULL,
  `salary_type` int(11) NOT NULL,
  `salary_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double(10,2) NOT NULL,
  `house_rent` double(10,2) NOT NULL,
  `transport` double(10,2) NOT NULL,
  `medical` double(10,2) NOT NULL,
  `bonus` double(10,2) NOT NULL,
  `over_time_hourly_rate` double(10,2) NOT NULL,
  `over_time_total_hour` double(10,2) NOT NULL,
  `over_time_amount` double(10,2) NOT NULL,
  `provident_fund` double(10,2) NOT NULL,
  `penalty` double(10,2) NOT NULL,
  `hourly_rate` double(10,2) NOT NULL,
  `total_hour` double(10,2) NOT NULL,
  `gross_salary` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL,
  `total_deduction` double(10,2) NOT NULL,
  `net_salary` double(10,2) NOT NULL,
  `payment_method` double(10,2) NOT NULL,
  `cheque_no` double(10,2) NOT NULL,
  `bank_name` double(10,2) NOT NULL,
  `payment_to` double(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d1_students`
--

CREATE TABLE `d1_students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admission_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admission_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guardian_id` bigint(20) UNSIGNED DEFAULT NULL,
  `relation_with` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_library_member` tinyint(4) NOT NULL,
  `is_hostel_member` tinyint(4) NOT NULL,
  `is_transport_member` tinyint(4) NOT NULL,
  `discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `previous_school` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_class` int(11) NOT NULL,
  `transfer_certificate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `health_condition` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_education` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_designation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mother_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `d1_teacher_attendances`
--

CREATE TABLE `d1_teacher_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_9` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e1_fees_amounts`
--

CREATE TABLE `e1_fees_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `income_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fee_amount` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e1_invoices`
--

CREATE TABLE `e1_invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `income_head_id` bigint(20) UNSIGNED DEFAULT NULL,
  `custom_invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_applicable_discount` tinyint(4) NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gross_amount` double(10,2) NOT NULL,
  `net_amount` double(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `paid_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_amount` double(10,2) NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e1_mark_emails`
--

CREATE TABLE `e1_mark_emails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receivers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e1_mark_smses`
--

CREATE TABLE `e1_mark_smses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sms_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sender_role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receivers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e1_sections`
--

CREATE TABLE `e1_sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `e1_subjects`
--

CREATE TABLE `e1_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass_mark` int(11) NOT NULL,
  `full_mark` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_assignments`
--

CREATE TABLE `f1_assignments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `assignment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_enrollments`
--

CREATE TABLE `f1_enrollments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `roll_no` int(11) NOT NULL,
  `student_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_exam_attendances`
--

CREATE TABLE `f1_exam_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_attend` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_exam_results`
--

CREATE TABLE `f1_exam_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_subject` int(11) NOT NULL,
  `total_mark` int(11) NOT NULL,
  `total_obtain_mark` int(11) NOT NULL,
  `avg_grade_point` double(5,2) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `result_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_exam_schedules`
--

CREATE TABLE `f1_exam_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `exam_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_final_results`
--

CREATE TABLE `f1_final_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `total_subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_obtain_mark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avg_grade_point` double(5,2) NOT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `result_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merit_rank_in_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `merit_rank_in_section` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_marks`
--

CREATE TABLE `f1_marks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `grade_id` bigint(20) UNSIGNED DEFAULT NULL,
  `written_mark` int(11) NOT NULL,
  `written_obtain` int(11) NOT NULL,
  `tutorial_mark` int(11) NOT NULL,
  `tutorial_obtain` int(11) NOT NULL,
  `practical_mark` int(11) NOT NULL,
  `practical_obtain` int(11) NOT NULL,
  `viva_mark` int(11) NOT NULL,
  `viva_obtain` int(11) NOT NULL,
  `exam_total_mark` int(11) NOT NULL,
  `obtain_total_mark` int(11) NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_routines`
--

CREATE TABLE `f1_routines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_student_activities`
--

CREATE TABLE `f1_student_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `activity_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_student_attendances`
--

CREATE TABLE `f1_student_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED DEFAULT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_4` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_5` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_6` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_7` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_8` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_9` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_10` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_11` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_12` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_13` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_14` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_15` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_16` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_17` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_18` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_19` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_20` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_21` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_22` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_23` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_24` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_25` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_26` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_27` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_28` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_29` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_30` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day_31` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_suggestions`
--

CREATE TABLE `f1_suggestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `exam_id` bigint(20) UNSIGNED DEFAULT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `suggestion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_syllabuses`
--

CREATE TABLE `f1_syllabuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `syllabus` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `f1_transactions`
--

CREATE TABLE `f1_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pum_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pum_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pum_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(62, '2020_02_22_000000_create_academic_years_table', 1),
(63, '2020_02_22_000001_create_books_table', 1),
(64, '2020_02_22_000002_create_certificates_table', 1),
(65, '2020_02_22_000003_create_designations_table', 1),
(66, '2020_02_22_000004_create_discounts_table', 1),
(67, '2020_02_22_000005_create_galleries_table', 1),
(68, '2020_02_22_000006_create_grades_table', 1),
(69, '2020_02_22_000007_create_gsms_sessions_table', 1),
(70, '2020_02_22_000008_create_holidays_table', 1),
(71, '2020_02_22_000009_create_hostels_table', 1),
(72, '2020_02_22_000010_create_languages_table', 1),
(73, '2020_02_22_000011_create_modules_table', 1),
(74, '2020_02_22_000012_create_news_table', 1),
(75, '2020_02_22_000013_create_pages_table', 1),
(76, '2020_02_22_000014_create_payment_settings_table', 1),
(77, '2020_02_22_000015_create_purchases_table', 1),
(79, '2020_02_22_000017_create_routes_table', 1),
(80, '2020_02_22_000018_create_salary_grades_table', 1),
(81, '2020_02_22_000019_create_settings_table', 1),
(82, '2020_02_22_000020_create_sliders_table', 1),
(83, '2020_02_22_000021_create_sms_settings_table', 1),
(84, '2020_02_22_000022_create_themes_table', 1),
(85, '2020_02_22_000023_create_vehicles_table', 1),
(86, '2020_02_22_000024_create_emails_table', 1),
(87, '2020_02_22_000025_create_email_templates_table', 1),
(88, '2020_02_22_000026_create_events_table', 1),
(89, '2020_02_22_000027_create_exams_table', 1),
(90, '2020_02_22_000028_create_expenditure_heads_table', 1),
(91, '2020_02_22_000029_create_gallery_images_table', 1),
(92, '2020_02_22_000030_create_income_heads_table', 1),
(93, '2020_02_22_000031_create_messages_table', 1),
(94, '2020_02_22_000032_create_notices_table', 1),
(95, '2020_02_22_000033_create_operations_table', 1),
(96, '2020_02_22_000034_create_rooms_table', 1),
(97, '2020_02_22_000035_create_route_stops_table', 1),
(98, '2020_02_22_000036_create_sms_templates_table', 1),
(99, '2020_02_22_000037_create_text_messages_table', 2),
(100, '2020_02_22_000038_create_users_table', 2),
(101, '2020_02_22_000039_create_activity_logs_table', 2),
(102, '2020_02_22_000040_create_employees_table', 2),
(103, '2020_02_22_000041_create_expenditures_table', 2),
(104, '2020_02_22_000042_create_guardians_table', 2),
(105, '2020_02_22_000043_create_hostel_members_table', 2),
(106, '2020_02_22_000044_create_library_members_table', 2),
(107, '2020_02_22_000045_create_message_relationships_table', 2),
(108, '2020_02_22_000046_create_privileges_table', 2),
(109, '2020_02_22_000047_create_replies_table', 2),
(110, '2020_02_22_000048_create_teachers_table', 2),
(111, '2020_02_22_000049_create_transport_members_table', 2),
(112, '2020_02_22_000050_create_visitors_table', 2),
(113, '2020_02_22_000051_create_book_issues_table', 2),
(114, '2020_02_22_000052_create_classes_table', 2),
(115, '2020_02_22_000053_create_employee_attendances_table', 2),
(116, '2020_02_22_000054_create_salary_payments_table', 2),
(117, '2020_02_22_000055_create_students_table', 2),
(118, '2020_02_22_000056_create_teacher_attendances_table', 2),
(119, '2020_02_22_000057_create_fees_amounts_table', 2),
(120, '2020_02_22_000058_create_invoices_table', 2),
(121, '2020_02_22_000059_create_mark_emails_table', 2),
(122, '2020_02_22_000060_create_mark_smses_table', 2),
(123, '2020_02_22_000061_create_sections_table', 2),
(124, '2020_02_22_000062_create_subjects_table', 2),
(125, '2020_02_22_000063_create_assignments_table', 2),
(126, '2020_02_22_000064_create_enrollments_table', 2),
(127, '2020_02_22_000065_create_exam_attendances_table', 2),
(128, '2020_02_22_000066_create_exam_results_table', 2),
(129, '2020_02_22_000067_create_exam_schedules_table', 2),
(130, '2020_02_22_000068_create_final_results_table', 2),
(131, '2020_02_22_000069_create_marks_table', 2),
(132, '2020_02_22_000070_create_routines_table', 2),
(133, '2020_02_22_000071_create_student_activities_table', 2),
(134, '2020_02_22_000072_create_student_attendances_table', 2),
(135, '2020_02_22_000073_create_suggestions_table', 2),
(136, '2020_02_22_000074_create_syllabuses_table', 2),
(137, '2020_02_22_000075_create_transactions_table', 2),
(138, '2020_02_22_000076_create_failed_jobs_table', 2),
(139, '2020_02_22_000077_create_password_resets_table', 2);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `a1_academic_years`
--
ALTER TABLE `a1_academic_years`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_books`
--
ALTER TABLE `a1_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_certificates`
--
ALTER TABLE `a1_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_designations`
--
ALTER TABLE `a1_designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_discounts`
--
ALTER TABLE `a1_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_galleries`
--
ALTER TABLE `a1_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_grades`
--
ALTER TABLE `a1_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_gsms_sessions`
--
ALTER TABLE `a1_gsms_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_holidays`
--
ALTER TABLE `a1_holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_hostels`
--
ALTER TABLE `a1_hostels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_languages`
--
ALTER TABLE `a1_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_modules`
--
ALTER TABLE `a1_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_news`
--
ALTER TABLE `a1_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_pages`
--
ALTER TABLE `a1_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_payment_settings`
--
ALTER TABLE `a1_payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_purchases`
--
ALTER TABLE `a1_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_roles`
--
ALTER TABLE `a1_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_routes`
--
ALTER TABLE `a1_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_salary_grades`
--
ALTER TABLE `a1_salary_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_settings`
--
ALTER TABLE `a1_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_sliders`
--
ALTER TABLE `a1_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_sms_settings`
--
ALTER TABLE `a1_sms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_themes`
--
ALTER TABLE `a1_themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a1_vehicles`
--
ALTER TABLE `a1_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b1_emails`
--
ALTER TABLE `b1_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_emails_role_id_foreign` (`role_id`),
  ADD KEY `b1_emails_sender_role_id_foreign` (`sender_role_id`),
  ADD KEY `b1_emails_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `b1_email_templates`
--
ALTER TABLE `b1_email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_email_templates_role_id_foreign` (`role_id`);

--
-- Indexes for table `b1_events`
--
ALTER TABLE `b1_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_events_role_id_foreign` (`role_id`);

--
-- Indexes for table `b1_exams`
--
ALTER TABLE `b1_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_exams_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `b1_expenditure_heads`
--
ALTER TABLE `b1_expenditure_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_expenditure_heads_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `b1_gallery_images`
--
ALTER TABLE `b1_gallery_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_gallery_images_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `b1_income_heads`
--
ALTER TABLE `b1_income_heads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_income_heads_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `b1_messages`
--
ALTER TABLE `b1_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_messages_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `b1_notices`
--
ALTER TABLE `b1_notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_notices_role_id_foreign` (`role_id`);

--
-- Indexes for table `b1_operations`
--
ALTER TABLE `b1_operations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_operations_module_id_foreign` (`module_id`);

--
-- Indexes for table `b1_rooms`
--
ALTER TABLE `b1_rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_rooms_hostel_id_foreign` (`hostel_id`);

--
-- Indexes for table `b1_route_stops`
--
ALTER TABLE `b1_route_stops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_route_stops_route_id_foreign` (`route_id`);

--
-- Indexes for table `b1_sms_templates`
--
ALTER TABLE `b1_sms_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_sms_templates_role_id_foreign` (`role_id`);

--
-- Indexes for table `b1_text_messages`
--
ALTER TABLE `b1_text_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `b1_text_messages_role_id_foreign` (`role_id`),
  ADD KEY `b1_text_messages_sender_role_id_foreign` (`sender_role_id`),
  ADD KEY `b1_text_messages_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `b1_users`
--
ALTER TABLE `b1_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `b1_users_unique_id_unique` (`unique_id`),
  ADD UNIQUE KEY `b1_users_email_unique` (`email`),
  ADD KEY `b1_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `c1_activity_logs`
--
ALTER TABLE `c1_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_activity_logs_user_id_foreign` (`user_id`),
  ADD KEY `c1_activity_logs_role_id_foreign` (`role_id`);

--
-- Indexes for table `c1_employees`
--
ALTER TABLE `c1_employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_employees_user_id_foreign` (`user_id`),
  ADD KEY `c1_employees_designation_id_foreign` (`designation_id`),
  ADD KEY `c1_employees_salary_grade_id_foreign` (`salary_grade_id`);

--
-- Indexes for table `c1_expenditures`
--
ALTER TABLE `c1_expenditures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_expenditures_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `c1_expenditures_expenditure_head_id_foreign` (`expenditure_head_id`);

--
-- Indexes for table `c1_guardians`
--
ALTER TABLE `c1_guardians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_guardians_user_id_foreign` (`user_id`);

--
-- Indexes for table `c1_hostel_members`
--
ALTER TABLE `c1_hostel_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_hostel_members_user_id_foreign` (`user_id`),
  ADD KEY `c1_hostel_members_hostel_id_foreign` (`hostel_id`),
  ADD KEY `c1_hostel_members_room_id_foreign` (`room_id`);

--
-- Indexes for table `c1_library_members`
--
ALTER TABLE `c1_library_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_library_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `c1_message_relationships`
--
ALTER TABLE `c1_message_relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_message_relationships_message_id_foreign` (`message_id`),
  ADD KEY `c1_message_relationships_sender_id_foreign` (`sender_id`),
  ADD KEY `c1_message_relationships_receiver_id_foreign` (`receiver_id`),
  ADD KEY `c1_message_relationships_role_id_foreign` (`role_id`);

--
-- Indexes for table `c1_privileges`
--
ALTER TABLE `c1_privileges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_privileges_role_id_foreign` (`role_id`),
  ADD KEY `c1_privileges_operation_id_foreign` (`operation_id`);

--
-- Indexes for table `c1_replies`
--
ALTER TABLE `c1_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_replies_message_id_foreign` (`message_id`),
  ADD KEY `c1_replies_sender_id_foreign` (`sender_id`),
  ADD KEY `c1_replies_receiver_id_foreign` (`receiver_id`);

--
-- Indexes for table `c1_teachers`
--
ALTER TABLE `c1_teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_teachers_user_id_foreign` (`user_id`),
  ADD KEY `c1_teachers_salary_grade_id_foreign` (`salary_grade_id`);

--
-- Indexes for table `c1_transport_members`
--
ALTER TABLE `c1_transport_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_transport_members_user_id_foreign` (`user_id`),
  ADD KEY `c1_transport_members_route_id_foreign` (`route_id`),
  ADD KEY `c1_transport_members_route_stop_id_foreign` (`route_stop_id`);

--
-- Indexes for table `c1_visitors`
--
ALTER TABLE `c1_visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c1_visitors_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `c1_visitors_role_id_foreign` (`role_id`),
  ADD KEY `c1_visitors_user_id_foreign` (`user_id`);

--
-- Indexes for table `d1_book_issues`
--
ALTER TABLE `d1_book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `d1_classes`
--
ALTER TABLE `d1_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d1_classes_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `d1_employee_attendances`
--
ALTER TABLE `d1_employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d1_employee_attendances_employee_id_foreign` (`employee_id`),
  ADD KEY `d1_employee_attendances_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `d1_salary_payments`
--
ALTER TABLE `d1_salary_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d1_salary_payments_user_id_foreign` (`user_id`),
  ADD KEY `d1_salary_payments_salary_grade_id_foreign` (`salary_grade_id`),
  ADD KEY `d1_salary_payments_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `d1_salary_payments_expenditure_id_foreign` (`expenditure_id`);

--
-- Indexes for table `d1_students`
--
ALTER TABLE `d1_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d1_students_user_id_foreign` (`user_id`),
  ADD KEY `d1_students_guardian_id_foreign` (`guardian_id`),
  ADD KEY `d1_students_discount_id_foreign` (`discount_id`);

--
-- Indexes for table `d1_teacher_attendances`
--
ALTER TABLE `d1_teacher_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `d1_teacher_attendances_teacher_id_foreign` (`teacher_id`),
  ADD KEY `d1_teacher_attendances_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `e1_fees_amounts`
--
ALTER TABLE `e1_fees_amounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e1_fees_amounts_income_head_id_foreign` (`income_head_id`),
  ADD KEY `e1_fees_amounts_class_id_foreign` (`class_id`);

--
-- Indexes for table `e1_invoices`
--
ALTER TABLE `e1_invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e1_invoices_income_head_id_foreign` (`income_head_id`),
  ADD KEY `e1_invoices_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `e1_invoices_class_id_foreign` (`class_id`),
  ADD KEY `e1_invoices_student_id_foreign` (`student_id`);

--
-- Indexes for table `e1_mark_emails`
--
ALTER TABLE `e1_mark_emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e1_mark_emails_exam_id_foreign` (`exam_id`),
  ADD KEY `e1_mark_emails_class_id_foreign` (`class_id`),
  ADD KEY `e1_mark_emails_role_id_foreign` (`role_id`),
  ADD KEY `e1_mark_emails_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `e1_mark_emails_sender_role_id_foreign` (`sender_role_id`);

--
-- Indexes for table `e1_mark_smses`
--
ALTER TABLE `e1_mark_smses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e1_mark_smses_exam_id_foreign` (`exam_id`),
  ADD KEY `e1_mark_smses_class_id_foreign` (`class_id`),
  ADD KEY `e1_mark_smses_role_id_foreign` (`role_id`),
  ADD KEY `e1_mark_smses_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `e1_mark_smses_sender_role_id_foreign` (`sender_role_id`);

--
-- Indexes for table `e1_sections`
--
ALTER TABLE `e1_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e1_sections_class_id_foreign` (`class_id`),
  ADD KEY `e1_sections_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `e1_subjects`
--
ALTER TABLE `e1_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `e1_subjects_class_id_foreign` (`class_id`),
  ADD KEY `e1_subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `f1_assignments`
--
ALTER TABLE `f1_assignments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_assignments_class_id_foreign` (`class_id`),
  ADD KEY `f1_assignments_section_id_foreign` (`section_id`),
  ADD KEY `f1_assignments_subject_id_foreign` (`subject_id`),
  ADD KEY `f1_assignments_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `f1_enrollments`
--
ALTER TABLE `f1_enrollments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_enrollments_student_id_foreign` (`student_id`),
  ADD KEY `f1_enrollments_class_id_foreign` (`class_id`),
  ADD KEY `f1_enrollments_section_id_foreign` (`section_id`),
  ADD KEY `f1_enrollments_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `f1_exam_attendances`
--
ALTER TABLE `f1_exam_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_exam_attendances_exam_id_foreign` (`exam_id`),
  ADD KEY `f1_exam_attendances_class_id_foreign` (`class_id`),
  ADD KEY `f1_exam_attendances_section_id_foreign` (`section_id`),
  ADD KEY `f1_exam_attendances_subject_id_foreign` (`subject_id`),
  ADD KEY `f1_exam_attendances_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_exam_attendances_student_id_foreign` (`student_id`);

--
-- Indexes for table `f1_exam_results`
--
ALTER TABLE `f1_exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_exam_results_exam_id_foreign` (`exam_id`),
  ADD KEY `f1_exam_results_class_id_foreign` (`class_id`),
  ADD KEY `f1_exam_results_section_id_foreign` (`section_id`),
  ADD KEY `f1_exam_results_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_exam_results_student_id_foreign` (`student_id`);

--
-- Indexes for table `f1_exam_schedules`
--
ALTER TABLE `f1_exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_exam_schedules_exam_id_foreign` (`exam_id`),
  ADD KEY `f1_exam_schedules_class_id_foreign` (`class_id`),
  ADD KEY `f1_exam_schedules_subject_id_foreign` (`subject_id`),
  ADD KEY `f1_exam_schedules_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `f1_final_results`
--
ALTER TABLE `f1_final_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_final_results_class_id_foreign` (`class_id`),
  ADD KEY `f1_final_results_section_id_foreign` (`section_id`),
  ADD KEY `f1_final_results_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_final_results_student_id_foreign` (`student_id`),
  ADD KEY `f1_final_results_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `f1_marks`
--
ALTER TABLE `f1_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_marks_exam_id_foreign` (`exam_id`),
  ADD KEY `f1_marks_class_id_foreign` (`class_id`),
  ADD KEY `f1_marks_section_id_foreign` (`section_id`),
  ADD KEY `f1_marks_subject_id_foreign` (`subject_id`),
  ADD KEY `f1_marks_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_marks_student_id_foreign` (`student_id`),
  ADD KEY `f1_marks_grade_id_foreign` (`grade_id`);

--
-- Indexes for table `f1_routines`
--
ALTER TABLE `f1_routines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_routines_class_id_foreign` (`class_id`),
  ADD KEY `f1_routines_section_id_foreign` (`section_id`),
  ADD KEY `f1_routines_subject_id_foreign` (`subject_id`),
  ADD KEY `f1_routines_teacher_id_foreign` (`teacher_id`),
  ADD KEY `f1_routines_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `f1_student_activities`
--
ALTER TABLE `f1_student_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_student_activities_student_id_foreign` (`student_id`),
  ADD KEY `f1_student_activities_class_id_foreign` (`class_id`),
  ADD KEY `f1_student_activities_section_id_foreign` (`section_id`),
  ADD KEY `f1_student_activities_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `f1_student_attendances`
--
ALTER TABLE `f1_student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_student_attendances_student_id_foreign` (`student_id`),
  ADD KEY `f1_student_attendances_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_student_attendances_class_id_foreign` (`class_id`),
  ADD KEY `f1_student_attendances_section_id_foreign` (`section_id`);

--
-- Indexes for table `f1_suggestions`
--
ALTER TABLE `f1_suggestions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_suggestions_exam_id_foreign` (`exam_id`),
  ADD KEY `f1_suggestions_class_id_foreign` (`class_id`),
  ADD KEY `f1_suggestions_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_suggestions_subject_id_foreign` (`subject_id`);

--
-- Indexes for table `f1_syllabuses`
--
ALTER TABLE `f1_syllabuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_syllabuses_class_id_foreign` (`class_id`),
  ADD KEY `f1_syllabuses_subject_id_foreign` (`subject_id`),
  ADD KEY `f1_syllabuses_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `f1_transactions`
--
ALTER TABLE `f1_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `f1_transactions_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `f1_transactions_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a1_academic_years`
--
ALTER TABLE `a1_academic_years`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `a1_books`
--
ALTER TABLE `a1_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_certificates`
--
ALTER TABLE `a1_certificates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_designations`
--
ALTER TABLE `a1_designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `a1_discounts`
--
ALTER TABLE `a1_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_galleries`
--
ALTER TABLE `a1_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_grades`
--
ALTER TABLE `a1_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `a1_gsms_sessions`
--
ALTER TABLE `a1_gsms_sessions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90000000000076;

--
-- AUTO_INCREMENT for table `a1_holidays`
--
ALTER TABLE `a1_holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_hostels`
--
ALTER TABLE `a1_hostels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_languages`
--
ALTER TABLE `a1_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;

--
-- AUTO_INCREMENT for table `a1_modules`
--
ALTER TABLE `a1_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `a1_news`
--
ALTER TABLE `a1_news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a1_pages`
--
ALTER TABLE `a1_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `a1_payment_settings`
--
ALTER TABLE `a1_payment_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a1_purchases`
--
ALTER TABLE `a1_purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a1_roles`
--
ALTER TABLE `a1_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `a1_routes`
--
ALTER TABLE `a1_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_salary_grades`
--
ALTER TABLE `a1_salary_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `a1_settings`
--
ALTER TABLE `a1_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a1_sliders`
--
ALTER TABLE `a1_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `a1_sms_settings`
--
ALTER TABLE `a1_sms_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `a1_themes`
--
ALTER TABLE `a1_themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `a1_vehicles`
--
ALTER TABLE `a1_vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_emails`
--
ALTER TABLE `b1_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_email_templates`
--
ALTER TABLE `b1_email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_events`
--
ALTER TABLE `b1_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_exams`
--
ALTER TABLE `b1_exams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_expenditure_heads`
--
ALTER TABLE `b1_expenditure_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_gallery_images`
--
ALTER TABLE `b1_gallery_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_income_heads`
--
ALTER TABLE `b1_income_heads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `b1_messages`
--
ALTER TABLE `b1_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_notices`
--
ALTER TABLE `b1_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `b1_operations`
--
ALTER TABLE `b1_operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `b1_rooms`
--
ALTER TABLE `b1_rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_route_stops`
--
ALTER TABLE `b1_route_stops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_sms_templates`
--
ALTER TABLE `b1_sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_text_messages`
--
ALTER TABLE `b1_text_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_users`
--
ALTER TABLE `b1_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `c1_activity_logs`
--
ALTER TABLE `c1_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=778;

--
-- AUTO_INCREMENT for table `c1_employees`
--
ALTER TABLE `c1_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `c1_expenditures`
--
ALTER TABLE `c1_expenditures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_guardians`
--
ALTER TABLE `c1_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_hostel_members`
--
ALTER TABLE `c1_hostel_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_library_members`
--
ALTER TABLE `c1_library_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_message_relationships`
--
ALTER TABLE `c1_message_relationships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_privileges`
--
ALTER TABLE `c1_privileges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `c1_replies`
--
ALTER TABLE `c1_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_teachers`
--
ALTER TABLE `c1_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `c1_transport_members`
--
ALTER TABLE `c1_transport_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_visitors`
--
ALTER TABLE `c1_visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d1_book_issues`
--
ALTER TABLE `d1_book_issues`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d1_classes`
--
ALTER TABLE `d1_classes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `d1_employee_attendances`
--
ALTER TABLE `d1_employee_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d1_salary_payments`
--
ALTER TABLE `d1_salary_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d1_students`
--
ALTER TABLE `d1_students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `d1_teacher_attendances`
--
ALTER TABLE `d1_teacher_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e1_fees_amounts`
--
ALTER TABLE `e1_fees_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e1_invoices`
--
ALTER TABLE `e1_invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e1_mark_emails`
--
ALTER TABLE `e1_mark_emails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e1_mark_smses`
--
ALTER TABLE `e1_mark_smses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e1_sections`
--
ALTER TABLE `e1_sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `e1_subjects`
--
ALTER TABLE `e1_subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_assignments`
--
ALTER TABLE `f1_assignments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_enrollments`
--
ALTER TABLE `f1_enrollments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_exam_attendances`
--
ALTER TABLE `f1_exam_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_exam_results`
--
ALTER TABLE `f1_exam_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_exam_schedules`
--
ALTER TABLE `f1_exam_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_final_results`
--
ALTER TABLE `f1_final_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_marks`
--
ALTER TABLE `f1_marks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_routines`
--
ALTER TABLE `f1_routines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_student_activities`
--
ALTER TABLE `f1_student_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_student_attendances`
--
ALTER TABLE `f1_student_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_suggestions`
--
ALTER TABLE `f1_suggestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_syllabuses`
--
ALTER TABLE `f1_syllabuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `f1_transactions`
--
ALTER TABLE `f1_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `b1_emails`
--
ALTER TABLE `b1_emails`
  ADD CONSTRAINT `b1_emails_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `b1_emails_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `b1_emails_sender_role_id_foreign` FOREIGN KEY (`sender_role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_email_templates`
--
ALTER TABLE `b1_email_templates`
  ADD CONSTRAINT `b1_email_templates_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_events`
--
ALTER TABLE `b1_events`
  ADD CONSTRAINT `b1_events_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_exams`
--
ALTER TABLE `b1_exams`
  ADD CONSTRAINT `b1_exams_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_expenditure_heads`
--
ALTER TABLE `b1_expenditure_heads`
  ADD CONSTRAINT `b1_expenditure_heads_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_gallery_images`
--
ALTER TABLE `b1_gallery_images`
  ADD CONSTRAINT `b1_gallery_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `a1_galleries` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_income_heads`
--
ALTER TABLE `b1_income_heads`
  ADD CONSTRAINT `b1_income_heads_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_messages`
--
ALTER TABLE `b1_messages`
  ADD CONSTRAINT `b1_messages_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_notices`
--
ALTER TABLE `b1_notices`
  ADD CONSTRAINT `b1_notices_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_operations`
--
ALTER TABLE `b1_operations`
  ADD CONSTRAINT `b1_operations_module_id_foreign` FOREIGN KEY (`module_id`) REFERENCES `a1_modules` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_rooms`
--
ALTER TABLE `b1_rooms`
  ADD CONSTRAINT `b1_rooms_hostel_id_foreign` FOREIGN KEY (`hostel_id`) REFERENCES `a1_hostels` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_route_stops`
--
ALTER TABLE `b1_route_stops`
  ADD CONSTRAINT `b1_route_stops_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `a1_routes` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_sms_templates`
--
ALTER TABLE `b1_sms_templates`
  ADD CONSTRAINT `b1_sms_templates_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_text_messages`
--
ALTER TABLE `b1_text_messages`
  ADD CONSTRAINT `b1_text_messages_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `b1_text_messages_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `b1_text_messages_sender_role_id_foreign` FOREIGN KEY (`sender_role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `b1_users`
--
ALTER TABLE `b1_users`
  ADD CONSTRAINT `b1_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_activity_logs`
--
ALTER TABLE `c1_activity_logs`
  ADD CONSTRAINT `c1_activity_logs_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_employees`
--
ALTER TABLE `c1_employees`
  ADD CONSTRAINT `c1_employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `a1_designations` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_employees_salary_grade_id_foreign` FOREIGN KEY (`salary_grade_id`) REFERENCES `a1_salary_grades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_expenditures`
--
ALTER TABLE `c1_expenditures`
  ADD CONSTRAINT `c1_expenditures_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_expenditures_expenditure_head_id_foreign` FOREIGN KEY (`expenditure_head_id`) REFERENCES `b1_expenditure_heads` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_guardians`
--
ALTER TABLE `c1_guardians`
  ADD CONSTRAINT `c1_guardians_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_hostel_members`
--
ALTER TABLE `c1_hostel_members`
  ADD CONSTRAINT `c1_hostel_members_hostel_id_foreign` FOREIGN KEY (`hostel_id`) REFERENCES `a1_hostels` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_hostel_members_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `b1_rooms` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_hostel_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_library_members`
--
ALTER TABLE `c1_library_members`
  ADD CONSTRAINT `c1_library_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_message_relationships`
--
ALTER TABLE `c1_message_relationships`
  ADD CONSTRAINT `c1_message_relationships_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `b1_messages` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_message_relationships_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_message_relationships_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_message_relationships_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_privileges`
--
ALTER TABLE `c1_privileges`
  ADD CONSTRAINT `c1_privileges_operation_id_foreign` FOREIGN KEY (`operation_id`) REFERENCES `b1_operations` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_privileges_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_replies`
--
ALTER TABLE `c1_replies`
  ADD CONSTRAINT `c1_replies_message_id_foreign` FOREIGN KEY (`message_id`) REFERENCES `b1_messages` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_replies_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_replies_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_teachers`
--
ALTER TABLE `c1_teachers`
  ADD CONSTRAINT `c1_teachers_salary_grade_id_foreign` FOREIGN KEY (`salary_grade_id`) REFERENCES `a1_salary_grades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_transport_members`
--
ALTER TABLE `c1_transport_members`
  ADD CONSTRAINT `c1_transport_members_route_id_foreign` FOREIGN KEY (`route_id`) REFERENCES `a1_routes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_transport_members_route_stop_id_foreign` FOREIGN KEY (`route_stop_id`) REFERENCES `b1_route_stops` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_transport_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `c1_visitors`
--
ALTER TABLE `c1_visitors`
  ADD CONSTRAINT `c1_visitors_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_visitors_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `c1_visitors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `d1_classes`
--
ALTER TABLE `d1_classes`
  ADD CONSTRAINT `d1_classes_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `c1_teachers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `d1_employee_attendances`
--
ALTER TABLE `d1_employee_attendances`
  ADD CONSTRAINT `d1_employee_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_employee_attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `c1_employees` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `d1_salary_payments`
--
ALTER TABLE `d1_salary_payments`
  ADD CONSTRAINT `d1_salary_payments_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_salary_payments_expenditure_id_foreign` FOREIGN KEY (`expenditure_id`) REFERENCES `c1_expenditures` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_salary_payments_salary_grade_id_foreign` FOREIGN KEY (`salary_grade_id`) REFERENCES `a1_salary_grades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_salary_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `d1_students`
--
ALTER TABLE `d1_students`
  ADD CONSTRAINT `d1_students_discount_id_foreign` FOREIGN KEY (`discount_id`) REFERENCES `a1_discounts` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_students_guardian_id_foreign` FOREIGN KEY (`guardian_id`) REFERENCES `c1_guardians` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `b1_users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `d1_teacher_attendances`
--
ALTER TABLE `d1_teacher_attendances`
  ADD CONSTRAINT `d1_teacher_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `d1_teacher_attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `c1_teachers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `e1_fees_amounts`
--
ALTER TABLE `e1_fees_amounts`
  ADD CONSTRAINT `e1_fees_amounts_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_fees_amounts_income_head_id_foreign` FOREIGN KEY (`income_head_id`) REFERENCES `b1_income_heads` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `e1_invoices`
--
ALTER TABLE `e1_invoices`
  ADD CONSTRAINT `e1_invoices_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_invoices_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_invoices_income_head_id_foreign` FOREIGN KEY (`income_head_id`) REFERENCES `b1_income_heads` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_invoices_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `e1_mark_emails`
--
ALTER TABLE `e1_mark_emails`
  ADD CONSTRAINT `e1_mark_emails_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_emails_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_emails_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_emails_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_emails_sender_role_id_foreign` FOREIGN KEY (`sender_role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `e1_mark_smses`
--
ALTER TABLE `e1_mark_smses`
  ADD CONSTRAINT `e1_mark_smses_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_smses_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_smses_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_smses_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_mark_smses_sender_role_id_foreign` FOREIGN KEY (`sender_role_id`) REFERENCES `a1_roles` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `e1_sections`
--
ALTER TABLE `e1_sections`
  ADD CONSTRAINT `e1_sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `c1_teachers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `e1_subjects`
--
ALTER TABLE `e1_subjects`
  ADD CONSTRAINT `e1_subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `e1_subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `c1_teachers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_assignments`
--
ALTER TABLE `f1_assignments`
  ADD CONSTRAINT `f1_assignments_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_assignments_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_assignments_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_assignments_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_enrollments`
--
ALTER TABLE `f1_enrollments`
  ADD CONSTRAINT `f1_enrollments_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_enrollments_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_enrollments_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_enrollments_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_exam_attendances`
--
ALTER TABLE `f1_exam_attendances`
  ADD CONSTRAINT `f1_exam_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_attendances_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_attendances_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_exam_results`
--
ALTER TABLE `f1_exam_results`
  ADD CONSTRAINT `f1_exam_results_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_results_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_results_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_exam_schedules`
--
ALTER TABLE `f1_exam_schedules`
  ADD CONSTRAINT `f1_exam_schedules_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_schedules_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_schedules_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_exam_schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_final_results`
--
ALTER TABLE `f1_final_results`
  ADD CONSTRAINT `f1_final_results_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_final_results_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_final_results_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `a1_grades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_final_results_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_final_results_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_marks`
--
ALTER TABLE `f1_marks`
  ADD CONSTRAINT `f1_marks_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_marks_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_marks_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `a1_grades` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_marks_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_routines`
--
ALTER TABLE `f1_routines`
  ADD CONSTRAINT `f1_routines_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_routines_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_routines_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_routines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_routines_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `c1_teachers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_student_activities`
--
ALTER TABLE `f1_student_activities`
  ADD CONSTRAINT `f1_student_activities_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_student_activities_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_student_activities_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_student_activities_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_student_attendances`
--
ALTER TABLE `f1_student_attendances`
  ADD CONSTRAINT `f1_student_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_student_attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_student_attendances_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `e1_sections` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_student_attendances_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `d1_students` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_suggestions`
--
ALTER TABLE `f1_suggestions`
  ADD CONSTRAINT `f1_suggestions_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_suggestions_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_suggestions_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `b1_exams` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_suggestions_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_syllabuses`
--
ALTER TABLE `f1_syllabuses`
  ADD CONSTRAINT `f1_syllabuses_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_syllabuses_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `d1_classes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_syllabuses_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `e1_subjects` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `f1_transactions`
--
ALTER TABLE `f1_transactions`
  ADD CONSTRAINT `f1_transactions_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `a1_academic_years` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `f1_transactions_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `e1_invoices` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
