-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 05, 2020 at 01:29 PM
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_academic_years`
--

INSERT INTO `a1_academic_years` (`id`, `session_year`, `start_year`, `end_year`, `note`, `is_running`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(8, 'January 2019 - January 2020', 2019, 2020, 'This is a new Academic Year', 1, 1, 1, 0, '2019-01-25 07:37:18', '0000-00-00 00:00:00'),
(9, 'January 2009 - January 2010', 2009, 2010, '', 0, 1, 1, 0, '2019-02-06 16:32:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_books`
--

CREATE TABLE `a1_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rack_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `sub_title_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_middle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_left` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_middle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_right` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_designations`
--

INSERT INTO `a1_designations` (`id`, `name`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Office Assistant', 'Lorem Ipsum there are many variations of passages of available', 1, 0, 1, '2017-08-18 06:59:25', '2018-07-14 07:07:28'),
(3, 'Marketing', 'Lorem Ipsum comes from sections 1.10.32', 1, 1, 1, '2017-09-21 04:09:15', '2018-02-07 23:50:45'),
(4, 'Clark', 'Lorem Ipsum has been the standard dummy text ever since the 1500s,', 1, 1, 1, '2017-09-21 04:09:37', '2018-02-07 23:52:12'),
(5, 'Pion', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit,', 1, 1, 1, '2017-09-21 04:09:52', '2018-02-07 23:53:00'),
(7, 'Servent', 'Lorem Ipsum comes from sections', 1, 1, 1, '2017-09-21 04:11:02', '2018-02-07 23:54:51'),
(8, 'Librarian', 'Lorem Ipsum is not simply random text.', 1, 1, 1, '2017-09-21 04:11:53', '2018-02-07 23:55:39'),
(10, 'Office Management', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, 0, '2018-07-14 07:03:37', '0000-00-00 00:00:00'),
(11, 'Accounting', 'Lorem Ipsum there are many variations of passages of available', 1, 1, 1, '2018-07-14 07:08:06', '2018-08-04 10:19:44'),
(13, 'Accountant', '', 1, 16, 0, '2019-01-23 16:33:31', '0000-00-00 00:00:00'),
(14, 'admin01', '', 1, 1, 0, '2019-02-11 06:48:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_discounts`
--

CREATE TABLE `a1_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(10,2) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_discounts`
--

INSERT INTO `a1_discounts` (`id`, `title`, `amount`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Test', 100.00, 'For testing Purpose', 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `a1_galleries`
--

CREATE TABLE `a1_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_view_on_web` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `a1_holidays`
--

CREATE TABLE `a1_holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `a1_modules`
--

CREATE TABLE `a1_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_news`
--

INSERT INTO `a1_news` (`id`, `title`, `date`, `image`, `news`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_payment_settings`
--

INSERT INTO `a1_payment_settings` (`id`, `paypal_api_username`, `paypal_api_password`, `paypal_api_signature`, `paypal_email`, `paypal_demo`, `paypal_extra_charge`, `paypal_status`, `stripe_secret`, `stripe_demo`, `stripe_extra_charge`, `stripe_status`, `payumoney_key`, `payumoney_salt`, `payumoney_demo`, `payu_extra_charge`, `payumoney_status`, `ccavenue_key`, `ccavenue_salt`, `ccavenue_demo`, `ccavenue_extra_charge`, `ccavenue_status`, `paytm_merchant_key`, `paytm_merchant_mid`, `paytm_merchant_website`, `paytm_demo`, `paytm_extra_charge`, `paytm_status`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'demo', 'demo', 'demo', '', 0, 0.00, 0, '', 0, 0.00, 0, '', '', 0, 0.00, 0, '', '', 0, 0.00, 0, '', '', '', 0, 0.00, 0, 1, 1, 1, '2017-08-24 04:58:24', '2018-07-01 01:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `a1_purchases`
--

CREATE TABLE `a1_purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_purchases`
--

INSERT INTO `a1_purchases` (`id`, `purchase_code`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, '5c05e426-5beb-4075-bac2-c2ae56d979e4', 1, 1, 0, '2020-02-10 03:10:45', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `a1_roles`
--

CREATE TABLE `a1_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_roles`
--

INSERT INTO `a1_roles` (`id`, `slug`, `name`, `note`, `is_default`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'Super Admin', 'Super Admin User', '1', 1, 0, 1, '2017-08-13 06:15:17', '2018-02-08 19:58:57'),
(2, 'admin', 'Admin', 'Admin User', '1', 1, 0, 0, '2017-08-13 07:01:36', '0000-00-00 00:00:00'),
(3, 'guardian', 'Guardian', 'Guardian/Parent User', '1', 1, 0, 1, '2017-08-13 07:02:05', '2018-02-08 19:59:22'),
(4, 'student', 'Student', 'Student User', '1', 1, 0, 1, '2017-08-13 07:02:24', '2018-02-08 19:59:34'),
(5, 'teacher', 'Teacher', 'Teacher User', '1', 1, 0, 1, '2017-08-13 07:02:51', '2018-02-08 19:59:46'),
(6, 'accountant', 'Accountant', 'Accountant User', '1', 1, 0, 1, '2017-08-13 07:04:00', '2018-02-08 20:00:07'),
(7, 'librarian', 'Librarian', 'Librarian User', '1', 1, 0, 1, '2017-08-13 07:04:18', '2018-02-08 20:00:22'),
(8, 'receptioniast', 'Receptioniast', 'Receptionist/ Front Desk User', '1', 1, 0, 1, '2017-08-13 07:04:36', '2018-02-08 20:02:30'),
(9, 'staff', 'Staff', 'General Staff User', '0', 1, 0, 1, '2017-08-13 07:05:01', '2018-08-04 10:20:09'),
(13, 'servent', 'Servent', 'Servant User', '0', 1, 1, 1, '2018-02-03 22:40:37', '2018-02-08 20:03:09');

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_salary_grades`
--

INSERT INTO `a1_salary_grades` (`id`, `grade_name`, `basic_salary`, `house_rent`, `transport`, `medical`, `over_time_hourly_rate`, `provident_fund`, `hourly_rate`, `total_allowance`, `total_deduction`, `gross_salary`, `net_salary`, `note`, `user_agent`, `activity`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Grade A', 25000.00, 5000.00, 5000.00, 5000.00, 500.00, 10000.00, 1000.00, 15000.00, 10000.00, 40000.00, 30000.00, 'simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', 1, 1, 1, '2018-03-25 03:51:01', '2018-04-08 01:20:25'),
(2, 'Grade B', 20000.00, 4000.00, 4000.00, 4000.00, 400.00, 8000.00, 800.00, 12000.00, 8000.00, 32000.00, 24000.00, 'Dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', 1, 1, 1, '2018-03-25 04:53:12', '2018-04-08 01:21:38'),
(3, 'Grade C', 16000.00, 3000.00, 3000.00, 3000.00, 300.00, 6000.00, 600.00, 9000.00, 6000.00, 25000.00, 19000.00, 'Printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '', '', 1, 1, 0, '2018-04-08 01:24:12', '0000-00-00 00:00:00'),
(4, 'Grade D', 12000.00, 2500.00, 2500.00, 2500.00, 250.00, 5000.00, 500.00, 7500.00, 5000.00, 19500.00, 14500.00, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '', '', 1, 1, 0, '2018-04-08 01:25:22', '0000-00-00 00:00:00'),
(5, 'Grade E', 10000.00, 2000.00, 2000.00, 2000.00, 200.00, 4000.00, 400.00, 6000.00, 4000.00, 16000.00, 12000.00, 'The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using', '', '', 1, 1, 1, '2018-04-08 01:26:12', '2018-06-13 15:18:52');

-- --------------------------------------------------------

--
-- Table structure for table `a1_settings`
--

CREATE TABLE `a1_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `school_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `session_start_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_end_month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `running_year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `school_fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_geocode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_rtl` tinyint(4) NOT NULL,
  `enable_frontend` tinyint(4) NOT NULL,
  `final_result_type` tinyint(4) NOT NULL,
  `default_time_zone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_date_format` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_plus_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `a1_settings`
--

INSERT INTO `a1_settings` (`id`, `school_code`, `school_name`, `address`, `phone`, `email`, `currency`, `currency_symbol`, `language`, `footer`, `logo`, `session_start_month`, `session_end_month`, `running_year`, `school_fax`, `school_geocode`, `enable_rtl`, `enable_frontend`, `final_result_type`, `default_time_zone`, `sms_date_format`, `facebook_url`, `twitter_url`, `linkedin_url`, `google_plus_url`, `youtube_url`, `instagram_url`, `pinterest_url`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Classroom71- 01300586911', 'Classroom71', 'Adabor, Dhaka-1207', '01721002700', 'info@mien-it.com', 'BDT', '৳', 'english', 'Copyright Â© MIEN IT', '1576601482-school-logo.png', 'january', 'january', 'January 2019 - January 2020', '', '23.923133, 90.385283', 0, 0, 1, 'Asia/Dhaka', 'M j, Y', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.linkedin.com/', 'https://plus.google.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.pinterest.com/', 1, 1, 75, '2017-08-23 03:40:28', '2020-02-10 03:10:45');

-- --------------------------------------------------------

--
-- Table structure for table `a1_sliders`
--

CREATE TABLE `a1_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_allocated` tinyint(4) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b1_exams`
--

INSERT INTO `b1_exams` (`id`, `academic_year_id`, `title`, `start_date`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 9, 'First Term', '2018-06-01', 'First Term Exam', 1, 1, 1, '2018-02-10 23:56:54', '2019-01-23 09:50:09'),
(2, NULL, 'Second Term', '2018-11-01', 'First Term Exam', 1, 1, 1, '2018-02-11 00:00:33', '2019-01-23 09:50:19'),
(3, NULL, 'Final Term', '2018-12-01', 'Good Exam Day', 1, 1, 1, '2018-02-11 00:02:50', '2019-01-23 09:50:30'),
(4, 8, 'First Term', '2019-01-26', '', 1, 1, 0, '2019-01-25 08:32:17', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `b1_expenditure_heads`
--

CREATE TABLE `b1_expenditure_heads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `academic_year_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `cost` decimal(10,2) DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `last_logged_in` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `b1_users`
--

INSERT INTO `b1_users` (`id`, `finger_print`, `unique_id`, `role_id`, `reset_key`, `status`, `last_logged_in`, `email`, `email_verified_at`, `password`, `created_by`, `modified_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '1', '1', 1, '1', '1', '1', 'admin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'Vs9mUQ9OH0I36qEAsLBm8Iw0ZqpwMgSq9X4p6wjOaTIL03FY1ojXZYWeZQAp', NULL, NULL),
(2, '2', '2', 2, '1', '1', '1', 'test@gmail.com', NULL, '$2y$10$Z67yz6XgNj8KMPRLsC9H2e55Lx0dfvunbXHj9Tbb9/27mPSCKCbLO', 1, 1, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, '2020-03-03 00:04:25'),
(3, '3', '3', 3, '1', '1', '1', 'supadmin@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(4, '4', '4', 4, '1', '1', '1', 'supadmidn12@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(5, '5', '5', 5, '1', '1', '1', 'user@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(6, '6', '6', 6, '1', '1', '1', 'demo@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(7, '7', '7', 7, '1', '1', '1', 'eliyas@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(8, '8', '8', 8, '1', '1', '1', 'admin00@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(9, '9', '9', 9, '1', '1', '1', 'test00@admin.com', NULL, '$2y$10$wHyCG8BgszJqSkhdeHCWbOZezQTb9lT7p5/KwRNiYlz719IPIk3Tu', 0, 0, 'XFKwnKZunr8hvOvkCxk7aTXSneDbb1ivs0nEDbfrmdIGi5AZAUMpPctqrBwy', NULL, NULL),
(10, '1', '5e60a327ead6e', 5, '1', '1', '1', 'Abulkasem@gmail.com', NULL, '$2y$10$a/AyAsyU3TERpKst8/k5Met91QdH8n2TF6664YJllX66xapqBSd.y', 1, 1, NULL, '2020-03-05 00:58:48', NULL),
(11, '1', '5e60a64c01d96', 5, '1', '1', '1', 'Karimul@gmail.vom', NULL, '$2y$10$Y7jNEeEEuDjs/wRd9pK6huVFd/X1wiem7sUqKQneHkvY.NoLLZ5HG', 1, 1, NULL, '2020-03-05 01:12:12', NULL),
(12, '1', '5e60cf8d95072', 3, '1', '1', '1', 'Mohiuddin@gmail.com', NULL, '$2y$10$zKglBTbplnSlpz//1qr.vekLNu46dT7PYF1/9AhYqEw8.VLaQobti', 1, 1, NULL, '2020-03-05 04:08:13', NULL),
(13, '1', '5e60d00ea411a', 4, '1', '1', '1', 'Rana@admin.com', NULL, '$2y$10$Uj5eDH1f7amu/GMTIVrX7uaPnZZEhPfCue7.CTS/OKhPNxTvgWctW', 1, 1, NULL, '2020-03-05 04:10:22', NULL),
(15, '1', '5e60d2a24757d', 4, '1', '1', '1', 'Rana1@admin.com', NULL, '$2y$10$0TZ6q7edXgk0F58u9i9v0OgD8EhecBHeIR8qmrrF1edg4qne2ikim', 1, 1, NULL, '2020-03-05 04:21:22', NULL),
(16, '1', '5e60d31af3f51', 4, '1', '1', '1', 'RanaAhmed@admin.com', NULL, '$2y$10$/QFLs2tOt3e2j6tkRLCyneXOcLBextlCqPqbSLzLGA/WKO8773tDa', 1, 1, NULL, '2020-03-05 04:23:23', '2020-03-05 04:39:09'),
(17, '1', '5e60e76f25868', 4, '1', '1', '1', 'Akhir@admin.com', NULL, '$2y$10$FyyIkVMQznIO6m6x8A2XROD3mHkWUKr3L.tYhSj7mtekvQRnDofYK', 1, 1, NULL, '2020-03-05 05:50:07', NULL),
(18, '1', '5e60ea9b853a5', 9, '1', '1', '1', 'Khabir@gmail.com', NULL, '$2y$10$4IfmDfC6Pq/hjRTXvyErzOXUix6Tvb.un8Ygn468WScBD9csoAjw6', 1, 1, NULL, '2020-03-05 06:03:39', NULL);

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
(170, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 16, 0, '2019-01-23 05:14:05', '0000-00-00 00:00:00'),
(171, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged out', 1, 16, 0, '2019-01-23 05:17:03', '0000-00-00 00:00:00'),
(172, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been logged in', 1, 1, 0, '2019-01-23 05:17:08', '0000-00-00 00:00:00'),
(173, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Class 1', 1, 1, 0, '2019-01-23 16:17:37', '0000-00-00 00:00:00'),
(174, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been filter exam mark sheet for class: Class 1', 1, 1, 0, '2019-01-23 16:18:27', '0000-00-00 00:00:00'),
(175, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Linux; Android 5.1; A1601 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Mobile Safari/537.36 OPR/37.0.2192.112031', 'Has been logged in', 1, 16, 0, '2019-01-23 05:30:10', '0000-00-00 00:00:00'),
(176, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Linux; Android 5.1; A1601 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Mobile Safari/537.36 OPR/37.0.2192.112031', 'Has been logged out', 1, 16, 0, '2019-01-23 05:32:50', '0000-00-00 00:00:00'),
(177, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Linux; Android 5.1; A1601 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Mobile Safari/537.36 OPR/37.0.2192.112031', 'Has been logged in', 1, 16, 0, '2019-01-23 05:32:56', '0000-00-00 00:00:00'),
(178, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Linux; Android 5.1; A1601 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Mobile Safari/537.36 OPR/37.0.2192.112031', 'Has been created a Designation : Accountant', 1, 16, 0, '2019-01-23 16:33:31', '0000-00-00 00:00:00'),
(179, 1, 1, 'Masum', '0127352373273', '103.87.212.168', 'Mozilla/5.0 (Linux; Android 5.1; A1601 Build/LMY47I) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Mobile Safari/537.36 OPR/37.0.2192.112031', 'Has been added a Employee : Santo', 1, 16, 0, '2019-01-23 16:38:41', '0000-00-00 00:00:00'),
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
(194, 1, 1, 'Super Admin', '123485697', '103.87.212.168', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36', 'Has been process exam attendance for : First Term, Class 1, English', 1, 1, 0, '2019-01-23 17:40:20', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `c1_employees`
--

CREATE TABLE `c1_employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_employees`
--

INSERT INTO `c1_employees` (`id`, `user_id`, `national_id`, `designation_id`, `salary_grade_id`, `salary_type`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `pinterest_url`, `youtube_url`, `other_info`, `is_view_on_web`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 18, '4563546546123', 1, 2, 'monthly', 'Khabir Uddin Monjil', '01711533611', 'Dhaka', 'Dhaka', '1', 'a_positive', 'Muslim', '2020-03-18', '2020-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, '2020-03-05 06:03:39', NULL);

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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `relation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_guardians`
--

INSERT INTO `c1_guardians` (`id`, `user_id`, `national_id`, `name`, `relation`, `phone`, `profession`, `present_address`, `permanent_address`, `religion`, `photo`, `other_info`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 12, '4325432546', 'Mohiuddin', NULL, '01839393490', 'Web Developer', 'Dhaka', 'Dhaka', NULL, NULL, 'thanks', 1, 1, 1, '2020-03-05 04:08:13', NULL);

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `youtube_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_view_on_web` tinyint(4) DEFAULT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c1_teachers`
--

INSERT INTO `c1_teachers` (`id`, `user_id`, `national_id`, `salary_grade_id`, `salary_type`, `responsibility`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `joining_date`, `resign_date`, `photo`, `resume`, `facebook_url`, `linkedin_url`, `twitter_url`, `google_plus_url`, `instagram_url`, `youtube_url`, `pinterest_url`, `is_view_on_web`, `other_info`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 10, '4563546546', 1, 'monthly', 'Assistant teacher', 'Abul Kasem', '01839393490', 'Dhaka', 'Dhaka', '1', 'a_positive', 'Muslim', '2020-03-11', '2020-03-10', NULL, NULL, NULL, 'No', 'No', 'No', 'No', 'No', 'No', 'No', 1, 'Thanks', 1, 1, 1, '2020-03-05 00:58:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `c1_transport_members`
--

CREATE TABLE `c1_transport_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `route_stop_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `monthly_tution_fee` double DEFAULT NULL,
  `admission_fee` double DEFAULT NULL,
  `exam_fee` double DEFAULT NULL,
  `certificate_fee` double DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d1_classes`
--

INSERT INTO `d1_classes` (`id`, `teacher_id`, `name`, `numeric_name`, `monthly_tution_fee`, `admission_fee`, `exam_fee`, `certificate_fee`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Six', 6, NULL, NULL, NULL, NULL, 'well done class six', 1, 1, NULL, NULL, '2020-03-05 02:19:32'),
(3, 1, 'Seven', 7, NULL, NULL, NULL, NULL, 'wow', 1, 1, NULL, NULL, '2020-03-05 03:12:31');

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `relation_with` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_library_member` tinyint(4) DEFAULT NULL,
  `is_hostel_member` tinyint(4) DEFAULT NULL,
  `is_transport_member` tinyint(4) DEFAULT NULL,
  `discount_id` bigint(20) UNSIGNED DEFAULT NULL,
  `previous_school` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_class` int(11) DEFAULT NULL,
  `transfer_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `health_condition` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `second_language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_education` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_profession` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `d1_students`
--

INSERT INTO `d1_students` (`id`, `user_id`, `admission_no`, `admission_date`, `guardian_id`, `relation_with`, `registration_no`, `group`, `name`, `phone`, `present_address`, `permanent_address`, `gender`, `blood_group`, `religion`, `dob`, `age`, `photo`, `other_info`, `is_library_member`, `is_hostel_member`, `is_transport_member`, `discount_id`, `previous_school`, `previous_class`, `transfer_certificate`, `health_condition`, `national_id`, `second_language`, `father_name`, `father_phone`, `father_education`, `father_profession`, `father_designation`, `father_photo`, `mother_name`, `mother_phone`, `mother_education`, `mother_profession`, `mother_designation`, `mother_photo`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 16, '321432', '2020-03-17', 1, 'Father', '2345667', 'Science', 'Rana Ahmed', '01839393490', 'Dhaka', 'Dhaka', '1', 'a_negative', NULL, '2020-03-17', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, NULL, NULL, '542654365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-03-05 04:23:23', '2020-03-05 04:39:09'),
(2, 17, '32142', '2020-03-09', 1, 'Father', '4322345', 'Arts', 'Akhir', '01839393490', 'Dhaka', 'Dhaka', '1', 'a_positive', 'Muslim', '2020-03-18', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'Boys High School', 3, NULL, NULL, '4326533', 'English', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2020-03-05 05:50:07', NULL);

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `e1_sections`
--

INSERT INTO `e1_sections` (`id`, `class_id`, `teacher_id`, `name`, `note`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 'Good Job', 1, 1, 1, NULL, '2020-03-05 03:23:35'),
(2, 1, 1, 'B', 'Great', 1, 1, NULL, NULL, '2020-03-05 03:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `e1_subjects`
--

CREATE TABLE `e1_subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED DEFAULT NULL,
  `teacher_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_mark` int(11) NOT NULL,
  `full_mark` int(11) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assignment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f1_enrollments`
--

INSERT INTO `f1_enrollments` (`id`, `student_id`, `class_id`, `section_id`, `academic_year_id`, `roll_no`, `student_type`, `status`, `created_by`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, NULL, 1001, '1', 1, NULL, NULL, '2020-03-05 04:23:23', '2020-03-05 04:39:09'),
(2, 2, 3, 1, 8, 1002, '1', 1, NULL, NULL, '2020-03-05 05:50:07', NULL);

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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `activity` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `suggestion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `syllabus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_02_22_000000_create_academic_years_table', 1),
(2, '2020_02_22_000001_create_books_table', 1),
(3, '2020_02_22_000002_create_certificates_table', 1),
(4, '2020_02_22_000003_create_designations_table', 1),
(5, '2020_02_22_000004_create_discounts_table', 1),
(6, '2020_02_22_000005_create_galleries_table', 1),
(7, '2020_02_22_000006_create_grades_table', 1),
(8, '2020_02_22_000007_create_gsms_sessions_table', 1),
(9, '2020_02_22_000008_create_holidays_table', 1),
(10, '2020_02_22_000009_create_hostels_table', 1),
(11, '2020_02_22_000010_create_languages_table', 1),
(12, '2020_02_22_000011_create_modules_table', 1),
(13, '2020_02_22_000012_create_news_table', 1),
(14, '2020_02_22_000013_create_pages_table', 1),
(15, '2020_02_22_000014_create_payment_settings_table', 1),
(16, '2020_02_22_000015_create_purchases_table', 1),
(17, '2020_02_22_000016_create_roles_table', 1),
(18, '2020_02_22_000017_create_routes_table', 1),
(19, '2020_02_22_000018_create_salary_grades_table', 1),
(20, '2020_02_22_000019_create_settings_table', 1),
(21, '2020_02_22_000020_create_sliders_table', 1),
(22, '2020_02_22_000021_create_sms_settings_table', 1),
(23, '2020_02_22_000022_create_themes_table', 1),
(24, '2020_02_22_000023_create_vehicles_table', 1),
(25, '2020_02_22_000024_create_emails_table', 1),
(26, '2020_02_22_000025_create_email_templates_table', 1),
(27, '2020_02_22_000026_create_events_table', 1),
(28, '2020_02_22_000027_create_exams_table', 1),
(29, '2020_02_22_000028_create_expenditure_heads_table', 1),
(30, '2020_02_22_000029_create_gallery_images_table', 1),
(31, '2020_02_22_000030_create_income_heads_table', 1),
(32, '2020_02_22_000031_create_messages_table', 1),
(33, '2020_02_22_000032_create_notices_table', 1),
(34, '2020_02_22_000033_create_operations_table', 1),
(35, '2020_02_22_000034_create_rooms_table', 1),
(36, '2020_02_22_000035_create_route_stops_table', 1),
(37, '2020_02_22_000036_create_sms_templates_table', 1),
(38, '2020_02_22_000037_create_text_messages_table', 1),
(39, '2020_02_22_000038_create_users_table', 1),
(40, '2020_02_22_000039_create_activity_logs_table', 1),
(41, '2020_02_22_000040_create_employees_table', 1),
(42, '2020_02_22_000041_create_expenditures_table', 1),
(43, '2020_02_22_000042_create_guardians_table', 1),
(44, '2020_02_22_000043_create_hostel_members_table', 1),
(45, '2020_02_22_000044_create_library_members_table', 1),
(46, '2020_02_22_000045_create_message_relationships_table', 1),
(47, '2020_02_22_000046_create_privileges_table', 1),
(48, '2020_02_22_000047_create_replies_table', 1),
(49, '2020_02_22_000048_create_teachers_table', 1),
(50, '2020_02_22_000049_create_transport_members_table', 1),
(51, '2020_02_22_000050_create_visitors_table', 1),
(52, '2020_02_22_000051_create_book_issues_table', 1),
(53, '2020_02_22_000052_create_classes_table', 1),
(54, '2020_02_22_000053_create_employee_attendances_table', 1),
(55, '2020_02_22_000054_create_salary_payments_table', 1),
(56, '2020_02_22_000055_create_students_table', 1),
(57, '2020_02_22_000056_create_teacher_attendances_table', 1),
(58, '2020_02_22_000057_create_fees_amounts_table', 1),
(59, '2020_02_22_000058_create_invoices_table', 1),
(60, '2020_02_22_000059_create_mark_emails_table', 1),
(61, '2020_02_22_000060_create_mark_smses_table', 1),
(62, '2020_02_22_000061_create_sections_table', 1),
(63, '2020_02_22_000062_create_subjects_table', 1),
(64, '2020_02_22_000063_create_assignments_table', 1),
(65, '2020_02_22_000064_create_enrollments_table', 1),
(66, '2020_02_22_000065_create_exam_attendances_table', 1),
(67, '2020_02_22_000066_create_exam_results_table', 1),
(68, '2020_02_22_000067_create_exam_schedules_table', 1),
(69, '2020_02_22_000068_create_final_results_table', 1),
(70, '2020_02_22_000069_create_marks_table', 1),
(71, '2020_02_22_000070_create_routines_table', 1),
(72, '2020_02_22_000071_create_student_activities_table', 1),
(73, '2020_02_22_000072_create_student_attendances_table', 1),
(74, '2020_02_22_000073_create_suggestions_table', 1),
(75, '2020_02_22_000074_create_syllabuses_table', 1),
(76, '2020_02_22_000075_create_transactions_table', 1),
(77, '2020_02_22_000076_create_failed_jobs_table', 1),
(78, '2020_02_22_000077_create_password_resets_table', 1);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `a1_discounts`
--
ALTER TABLE `a1_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46300000001;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `a1_routes`
--
ALTER TABLE `a1_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `a1_salary_grades`
--
ALTER TABLE `a1_salary_grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_messages`
--
ALTER TABLE `b1_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_notices`
--
ALTER TABLE `b1_notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b1_operations`
--
ALTER TABLE `b1_operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `c1_activity_logs`
--
ALTER TABLE `c1_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `c1_employees`
--
ALTER TABLE `c1_employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `c1_expenditures`
--
ALTER TABLE `c1_expenditures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_guardians`
--
ALTER TABLE `c1_guardians`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_replies`
--
ALTER TABLE `c1_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c1_teachers`
--
ALTER TABLE `c1_teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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
