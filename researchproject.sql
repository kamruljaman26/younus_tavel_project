-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2022 at 11:54 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `researchproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'Accounts & Finance'),
(1, 'Sales Executive');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 2, 1),
(62, 2, 2),
(63, 2, 3),
(64, 2, 4),
(65, 2, 5),
(66, 2, 6),
(67, 2, 7),
(68, 2, 8),
(69, 2, 9),
(70, 2, 10),
(71, 2, 11),
(72, 2, 12),
(73, 2, 13),
(74, 2, 14),
(75, 2, 15),
(76, 2, 16),
(77, 2, 17),
(78, 2, 18),
(79, 2, 19),
(80, 2, 20),
(81, 2, 21),
(82, 2, 22),
(83, 2, 23),
(84, 2, 24),
(85, 2, 25),
(86, 2, 26),
(87, 2, 27),
(88, 2, 28),
(89, 2, 29),
(90, 2, 30),
(91, 2, 31),
(92, 2, 32),
(93, 2, 33),
(94, 2, 34),
(95, 2, 35),
(96, 2, 36),
(97, 2, 37),
(98, 2, 38),
(99, 2, 39),
(100, 2, 40),
(101, 2, 41),
(102, 2, 42),
(103, 2, 43),
(104, 2, 44),
(105, 2, 45),
(106, 2, 46),
(107, 2, 47),
(108, 2, 48),
(109, 2, 49),
(110, 2, 50),
(111, 2, 51),
(112, 2, 52),
(113, 2, 53),
(114, 2, 54),
(115, 2, 55),
(116, 2, 56),
(117, 2, 57),
(118, 2, 58),
(119, 2, 59),
(120, 2, 60);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add attraction', 7, 'add_attraction'),
(26, 'Can change attraction', 7, 'change_attraction'),
(27, 'Can delete attraction', 7, 'delete_attraction'),
(28, 'Can view attraction', 7, 'view_attraction'),
(29, 'Can add flight', 8, 'add_flight'),
(30, 'Can change flight', 8, 'change_flight'),
(31, 'Can delete flight', 8, 'delete_flight'),
(32, 'Can view flight', 8, 'view_flight'),
(33, 'Can add history', 9, 'add_history'),
(34, 'Can change history', 9, 'change_history'),
(35, 'Can delete history', 9, 'delete_history'),
(36, 'Can view history', 9, 'view_history'),
(37, 'Can add hotel', 10, 'add_hotel'),
(38, 'Can change hotel', 10, 'change_hotel'),
(39, 'Can delete hotel', 10, 'delete_hotel'),
(40, 'Can view hotel', 10, 'view_hotel'),
(41, 'Can add location', 11, 'add_location'),
(42, 'Can change location', 11, 'change_location'),
(43, 'Can delete location', 11, 'delete_location'),
(44, 'Can view location', 11, 'view_location'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment'),
(49, 'Can add train', 13, 'add_train'),
(50, 'Can change train', 13, 'change_train'),
(51, 'Can delete train', 13, 'delete_train'),
(52, 'Can view train', 13, 'view_train'),
(53, 'Can add user', 14, 'add_user'),
(54, 'Can change user', 14, 'change_user'),
(55, 'Can delete user', 14, 'delete_user'),
(56, 'Can view user', 14, 'view_user'),
(57, 'Can add review', 15, 'add_review'),
(58, 'Can change review', 15, 'change_review'),
(59, 'Can delete review', 15, 'delete_review'),
(60, 'Can view review', 15, 'view_review');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$Ja61HuCTUtZS4JE4Gy3Yrs$7lPxjbJ2aHZ7p3s4PLuI9mUo2IKStseooYiw5tKbutk=', '2022-09-18 07:45:37.704393', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2022-09-18 03:16:06.022954'),
(2, 'pbkdf2_sha256$260000$CIAEXkRThdtZ2WSEIFDE6d$wiChO2dbHQEzasha+oC4oArkFmu0Iv6Pme7hKFkJsKQ=', NULL, 0, 'arafat', 'Arafat', 'Sarker', 'arafat@gmail.com', 0, 1, '2022-09-18 07:47:38.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user_groups`
--

INSERT INTO `auth_user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-09-18 03:19:06.074429', 'user@gmail.com', 'User object (user@gmail.com)', 2, '[{\"changed\": {\"fields\": [\"Username\"]}}]', 14, 1),
(2, '2022-09-18 07:46:09.144889', '1', 'Sales Executive', 1, '[{\"added\": {}}]', 3, 1),
(3, '2022-09-18 07:46:31.042089', '2', 'Accounts & Finance', 1, '[{\"added\": {}}]', 3, 1),
(4, '2022-09-18 07:47:38.923487', '2', 'arafat', 1, '[{\"added\": {}}]', 4, 1),
(5, '2022-09-18 07:48:07.794380', '2', 'arafat', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\", \"Groups\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'tripbegin', 'attraction'),
(8, 'tripbegin', 'flight'),
(9, 'tripbegin', 'history'),
(10, 'tripbegin', 'hotel'),
(11, 'tripbegin', 'location'),
(12, 'tripbegin', 'payment'),
(15, 'tripbegin', 'review'),
(13, 'tripbegin', 'train'),
(14, 'tripbegin', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-09-18 01:46:42.262970'),
(2, 'auth', '0001_initial', '2022-09-18 01:46:42.852916'),
(3, 'admin', '0001_initial', '2022-09-18 01:46:43.004359'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-09-18 01:46:43.019906'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-09-18 01:46:43.037861'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-09-18 01:46:43.142578'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-09-18 01:46:43.206837'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-09-18 01:46:43.246732'),
(9, 'auth', '0004_alter_user_username_opts', '2022-09-18 01:46:43.264684'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-09-18 01:46:43.338852'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-09-18 01:46:43.345835'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-09-18 01:46:43.369771'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-09-18 01:46:43.408666'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-09-18 01:46:43.445074'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-09-18 01:46:43.481973'),
(16, 'auth', '0011_update_proxy_permissions', '2022-09-18 01:46:43.500927'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-09-18 01:46:43.551787'),
(18, 'sessions', '0001_initial', '2022-09-18 01:46:43.641548'),
(19, 'tripbegin', '0001_initial', '2022-09-18 01:46:43.936611'),
(20, 'tripbegin', '0002_hotel_companyname', '2022-09-18 01:46:43.973305'),
(21, 'tripbegin', '0003_remove_hotel_startdate', '2022-09-18 01:46:43.993254'),
(22, 'tripbegin', '0004_auto_20180507_1920', '2022-09-18 01:46:44.069048'),
(23, 'tripbegin', '0005_review', '2022-09-18 01:46:44.130884');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('611z9lavvq82bg3lgor9x1u8j8gw9597', '.eJxVjMsOwiAQRX_FsG5IUaDgyhi3Ll0TBqYPLZD0sTL-u9B009lMcs6990vcOk0YF7POOJErKe_WBTuM1KVAqg2YaANm-cCQTq8SrIix69JvLTP47NiRgXUfjEX4t41dymtxmQagJUJ3O9Nn8jje9-xhoLdzn9vtRYNQkjEPTQ1wbiXnYFHW-SQH7YT2wheIXOlGcOcQhVMsIyWkJL8_IoJKxg:1oZkoT:F8nHuChrbY_91RQ6-MQoczQ73-rHWtdgdbZls3emMyA', '2022-10-02 03:17:45.014843'),
('nwgoveuttzlqs7wyprd95j4pn7lnf898', '.eJxVjrsOwyAMRf-FuUJAgECnqnu_IQLsPNoGJJJMVf-9EGVIN8v33GN_SOe2dey2BXM3AbkSTi7nnXfhhbEG8HRxSDSkuObJ04rQI13oIwG-7wf7JxjdMta2AxmUMhx9A6CFYMC1s73RBi2CYJ5rKxtlQTesZ4LzwKRRrS8tELIt0rDljHHdtdWIc6rjbZjd9C5_zYXZT0Y34wkg3x8Zk0x5:1oZpHL:B452iocKbRsStEffbA2Tyoqm_U_J81UqMAbvcXRTuXI', '2022-10-02 08:03:51.313836');

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_attraction`
--

CREATE TABLE `tripbegin_attraction` (
  `id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `attractionName` varchar(30) NOT NULL,
  `attractionDescription` varchar(1000) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_flight`
--

CREATE TABLE `tripbegin_flight` (
  `id` int(11) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `sourceLocation` varchar(30) NOT NULL,
  `destinationLocation` varchar(30) NOT NULL,
  `departureDate` date NOT NULL,
  `departureTime` time(6) NOT NULL,
  `fareEconomy` decimal(6,2) NOT NULL,
  `fareBusiness` decimal(6,2) NOT NULL,
  `fareFirst` decimal(6,2) NOT NULL,
  `numSeatsRemainingEconomy` int(11) NOT NULL,
  `numSeatsRemainingBusiness` int(11) NOT NULL,
  `numSeatsRemainingFirst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_history`
--

CREATE TABLE `tripbegin_history` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(36) NOT NULL,
  `bookingType` varchar(6) NOT NULL,
  `bookingStartDate` date NOT NULL,
  `paymentAmount` decimal(6,2) NOT NULL,
  `paymentCardNo` varchar(16) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_hotel`
--

CREATE TABLE `tripbegin_hotel` (
  `id` int(11) NOT NULL,
  `dailyCost` decimal(6,2) NOT NULL,
  `address` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `companyName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_location`
--

CREATE TABLE `tripbegin_location` (
  `id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `region` varchar(2) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_payment`
--

CREATE TABLE `tripbegin_payment` (
  `id` int(11) NOT NULL,
  `amount` decimal(6,2) NOT NULL,
  `paymentType` varchar(6) NOT NULL,
  `cardNo` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_review`
--

CREATE TABLE `tripbegin_review` (
  `id` int(11) NOT NULL,
  `review` varchar(1000) NOT NULL,
  `rating` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `submissionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_train`
--

CREATE TABLE `tripbegin_train` (
  `id` int(11) NOT NULL,
  `companyName` varchar(30) NOT NULL,
  `sourceLocation` varchar(30) NOT NULL,
  `destinationLocation` varchar(30) NOT NULL,
  `departureDate` date NOT NULL,
  `departureTime` time(6) NOT NULL,
  `fareEconomy` decimal(6,2) NOT NULL,
  `fareBusiness` decimal(6,2) NOT NULL,
  `fareFirst` decimal(6,2) NOT NULL,
  `numSeatsRemainingEconomy` int(11) NOT NULL,
  `numSeatsRemainingBusiness` int(11) NOT NULL,
  `numSeatsRemainingFirst` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tripbegin_user`
--

CREATE TABLE `tripbegin_user` (
  `username` varchar(40) NOT NULL,
  `email` varchar(35) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tripbegin_user`
--

INSERT INTO `tripbegin_user` (`username`, `email`, `password`) VALUES
('demouser', 'demouser@gmail.com', '123456'),
('user', 'user@gmail.com', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `tripbegin_attraction`
--
ALTER TABLE `tripbegin_attraction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_flight`
--
ALTER TABLE `tripbegin_flight`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_history`
--
ALTER TABLE `tripbegin_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_hotel`
--
ALTER TABLE `tripbegin_hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_location`
--
ALTER TABLE `tripbegin_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_payment`
--
ALTER TABLE `tripbegin_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_review`
--
ALTER TABLE `tripbegin_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_train`
--
ALTER TABLE `tripbegin_train`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tripbegin_user`
--
ALTER TABLE `tripbegin_user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tripbegin_attraction`
--
ALTER TABLE `tripbegin_attraction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_flight`
--
ALTER TABLE `tripbegin_flight`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_history`
--
ALTER TABLE `tripbegin_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_hotel`
--
ALTER TABLE `tripbegin_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_location`
--
ALTER TABLE `tripbegin_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_payment`
--
ALTER TABLE `tripbegin_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_review`
--
ALTER TABLE `tripbegin_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tripbegin_train`
--
ALTER TABLE `tripbegin_train`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
