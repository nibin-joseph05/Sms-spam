-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 11:42 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms_spam`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

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
(25, 'Can add addexternalmentors', 7, 'add_addexternalmentors'),
(26, 'Can change addexternalmentors', 7, 'change_addexternalmentors'),
(27, 'Can delete addexternalmentors', 7, 'delete_addexternalmentors'),
(28, 'Can view addexternalmentors', 7, 'view_addexternalmentors'),
(29, 'Can add bookedstudents', 8, 'add_bookedstudents'),
(30, 'Can change bookedstudents', 8, 'change_bookedstudents'),
(31, 'Can delete bookedstudents', 8, 'delete_bookedstudents'),
(32, 'Can view bookedstudents', 8, 'view_bookedstudents'),
(33, 'Can add chats', 9, 'add_chats'),
(34, 'Can change chats', 9, 'change_chats'),
(35, 'Can delete chats', 9, 'delete_chats'),
(36, 'Can view chats', 9, 'view_chats'),
(37, 'Can add feedback', 10, 'add_feedback'),
(38, 'Can change feedback', 10, 'change_feedback'),
(39, 'Can delete feedback', 10, 'delete_feedback'),
(40, 'Can view feedback', 10, 'view_feedback'),
(41, 'Can add registration', 11, 'add_registration'),
(42, 'Can change registration', 11, 'change_registration'),
(43, 'Can delete registration', 11, 'delete_registration'),
(44, 'Can view registration', 11, 'view_registration'),
(45, 'Can add tests', 12, 'add_tests'),
(46, 'Can change tests', 12, 'change_tests'),
(47, 'Can delete tests', 12, 'delete_tests'),
(48, 'Can view tests', 12, 'view_tests');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

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
(7, 'swoc', 'addexternalmentors'),
(8, 'swoc', 'bookedstudents'),
(9, 'swoc', 'chats'),
(10, 'swoc', 'feedback'),
(11, 'swoc', 'registration'),
(12, 'swoc', 'tests');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-20 09:17:06.013120'),
(2, 'auth', '0001_initial', '2023-11-20 09:17:06.886292'),
(3, 'admin', '0001_initial', '2023-11-20 09:17:07.076948'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-20 09:17:07.092573'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-20 09:17:07.101808'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-20 09:17:07.147762'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-20 09:17:07.165389'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-20 09:17:07.197433'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-20 09:17:07.212438'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-20 09:17:07.231006'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-20 09:17:07.231006'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-20 09:17:07.247331'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-20 09:17:07.280773'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-20 09:17:07.305076'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-20 09:17:07.325573'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-20 09:17:07.332122'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-20 09:17:07.358350'),
(18, 'sessions', '0001_initial', '2023-11-20 09:17:07.497557'),
(19, 'swoc', '0001_initial', '2023-11-20 09:17:08.327606');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5mwvn19lv00pffxsd7mpm4ry3g0eokx9', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r6oOy:vDeFuE6M61JYpQxMqmjwydNY1p1SLGXU6NkV0CFHNvM', '2023-12-09 08:52:36.856982'),
('7f3gy39utrjhnmkzjarju3rm0wtq40d1', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r5h2d:raTgUlZC4SbiEa4wNnSiAP9kKQNRD6Ut_xYCi4tnrAM', '2023-12-06 06:48:55.879310'),
('gkwbsyun4vbsehal0e1xzzwniju8hn9p', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r50wN:mLjlk1VGOsqOtOAdWZDnOz--wJ5drlbYbSJjX3qm9RI', '2023-12-04 09:51:39.510849'),
('gobcv8bma1714ffuxf4ot0cox75sn6y7', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r61pw:CnUzQDXy4M8WCxl6vrPhmTcfK9nxbcvdRhjbSDBcrL8', '2023-12-07 05:01:12.781708'),
('ikb0sj4hizjl5vfeu4np01eyyk7ldc47', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r6pgn:K7qG4fAtL0XvHmGQHNutmghpTorzw1QwK8VV0ICRdfE', '2023-12-09 10:15:05.311661'),
('jcsp3pwpjclllxxno3s97od0slobples', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r5dtR:XIlNI4_oN8oBKC7bQvLkPqvxYesxhVq181u4gFKGDz4', '2023-12-06 03:27:13.226427'),
('xu2qpg8ajdpkxp9z1ptn1xqu69cyhxzv', '.eJyrVsrNTFGyMtRRys1LzE1VslIKSS0uycxLVwKKpOYmZuYAhVIc0kEsveT8XLBwXkl-EVAYyqgFAOuqFlI:1r5Hy8:BJEQkwJ-_XqMZWBV74rT7jZjoEo6Ce-13BvierBZf_k', '2023-12-05 04:02:36.370183');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_addexternalmentors`
--

CREATE TABLE IF NOT EXISTS `swoc_addexternalmentors` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swoc_addexternalmentors`
--

INSERT INTO `swoc_addexternalmentors` (`id`, `name`, `image`, `dept`, `email`, `phone`, `address`, `username`, `password`, `type`) VALUES
(1, 'Testing', 'images_4JRTu87_JlINmyK.png', 'bca', 'd@gmail.com', '9654273492', 'Kochi', 'jerin', '1234', 'Internal');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_bookedstudents`
--

CREATE TABLE IF NOT EXISTS `swoc_bookedstudents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sid` varchar(150) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `exmentorid` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swoc_bookedstudents`
--

INSERT INTO `swoc_bookedstudents` (`id`, `sid`, `dept`, `sem`, `email`, `phone`, `exmentorid`, `name`) VALUES
(1, '1', 'BCA', '6', 'j@gmail.com', '9654273492', '1', 'jerin');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_chats`
--

CREATE TABLE IF NOT EXISTS `swoc_chats` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `s_id` varchar(150) NOT NULL,
  `m_id` varchar(150) NOT NULL,
  `s_msg` varchar(150) NOT NULL,
  `m_msg` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `swoc_chats`
--

INSERT INTO `swoc_chats` (`id`, `s_id`, `m_id`, `s_msg`, `m_msg`, `status`) VALUES
(1, '1', '1', 'gthth', 'eferferf', ''),
(2, '1', '1', 'kj', 'mjnkfhgekhfjbegyfuiekjbhvcerkjbc', 'spam'),
(3, '1', '1', '', 'gfhf', 'ham'),
(4, '1', '1', '', 'FreeMsg Hey there darling it''s been 3 week''s now and no word back! I''d like some fun you up for it still? Tb ok! XxX std chgs to send, Â£1.50 to rcv', 'ham'),
(5, '1', '1', '', 'Go until jurong point, crazy.. Available only in bugis n great world la e buffet... Cine there got amore wat...', 'ham'),
(6, '1', '1', '', 'Go until jurong point, crazy.. Available only in bugis n great world la e buffet... Cine there got amore wat.', 'ham'),
(7, '1', '1', '', 'FreeMsg Hey there darling it''s been 3 week''s now and no word back! I''d like some fun you up for it still? Tb ok! XxX std chgs to send, Â£1.50 to rcv', 'spam'),
(8, '1', '1', '', 'Free entry in 2 a wkly comp to win FA Cup final tkts 21st May 2005.', 'spam'),
(9, '1', '1', '', 'Go until jurong point, crazy.. Available only in bugis n great world la e buffet... Cine there got amore wat...', 'ham'),
(10, '1', '1', 'hello', '', ''),
(11, '1', '1', '', 'yes how can i help you', 'ham'),
(12, '1', '1', '', 'You won a lottery', 'ham'),
(13, '1', '1', '', 'Free entry in 2 a wkly comp to win FA Cup final tkts 21st May 2005.', 'spam');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_feedback`
--

CREATE TABLE IF NOT EXISTS `swoc_feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `studid` varchar(150) NOT NULL,
  `feedback` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `swoc_registration`
--

CREATE TABLE IF NOT EXISTS `swoc_registration` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `dept` varchar(150) NOT NULL,
  `sem` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `address` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `swoc_registration`
--

INSERT INTO `swoc_registration` (`id`, `name`, `dept`, `sem`, `email`, `phone`, `address`, `username`, `password`, `status`) VALUES
(1, 'jerin', 'BCA', '6', 'j@gmail.com', '9654273492', 'lkjku', 'jerin', '1234', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `swoc_tests`
--

CREATE TABLE IF NOT EXISTS `swoc_tests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `stud_id` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `link` varchar(150) NOT NULL,
  `typee` varchar(150) NOT NULL,
  `mid` varchar(150) NOT NULL,
  `result` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
