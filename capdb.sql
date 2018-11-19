-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 09:28 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_interface_theme`
--

CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(18) NOT NULL,
  `title_color` varchar(18) NOT NULL,
  `css_header_text_color` varchar(18) NOT NULL,
  `css_header_link_color` varchar(18) NOT NULL,
  `css_header_link_hover_color` varchar(18) NOT NULL,
  `css_module_background_color` varchar(18) NOT NULL,
  `css_module_text_color` varchar(18) NOT NULL,
  `css_module_link_color` varchar(18) NOT NULL,
  `css_module_link_hover_color` varchar(18) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(18) NOT NULL,
  `css_generic_link_hover_color` varchar(18) NOT NULL,
  `css_save_button_background_color` varchar(18) NOT NULL,
  `css_save_button_background_hover_color` varchar(18) NOT NULL,
  `css_save_button_text_color` varchar(18) NOT NULL,
  `css_delete_button_background_color` varchar(18) NOT NULL,
  `css_delete_button_background_hover_color` varchar(18) NOT NULL,
  `css_delete_button_text_color` varchar(18) NOT NULL,
  `css` longtext NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(18) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(18) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `env` varchar(50) NOT NULL,
  `env_visible` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_interface_theme`
--

INSERT INTO `admin_interface_theme` (`id`, `name`, `active`, `title`, `title_visible`, `logo`, `logo_visible`, `css_header_background_color`, `title_color`, `css_header_text_color`, `css_header_link_color`, `css_header_link_hover_color`, `css_module_background_color`, `css_module_text_color`, `css_module_link_color`, `css_module_link_hover_color`, `css_module_rounded_corners`, `css_generic_link_color`, `css_generic_link_hover_color`, `css_save_button_background_color`, `css_save_button_background_hover_color`, `css_save_button_text_color`, `css_delete_button_background_color`, `css_delete_button_background_hover_color`, `css_delete_button_text_color`, `css`, `list_filter_dropdown`, `related_modal_active`, `related_modal_background_color`, `related_modal_background_opacity`, `related_modal_rounded_corners`, `logo_color`, `recent_actions_visible`, `favicon`, `env`, `env_visible`) VALUES
(4, 'CAP', 1, 'Dutchess CAP', 1, '', 0, '#146E92', '#FFFFFF', '#FFFFFF', '#FFFFFF', '#E1F3F8', '#115C7B', '#FFFFFF', '#FFFFFF', '#E1F3F8', 1, '#205493', '#0071BC', '#0E4C66', '#0B3A4E', '#FFFFFF', '#CD2026', '#981B1E', '#FFFFFF', '', 0, 1, '#000000', '0.8', 1, '#FFFFFF', 1, '', 'development', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add Theme', 1, 'add_theme'),
(2, 'Can change Theme', 1, 'change_theme'),
(3, 'Can delete Theme', 1, 'delete_theme'),
(4, 'Can view Theme', 1, 'view_theme'),
(5, 'Can add log entry', 2, 'add_logentry'),
(6, 'Can change log entry', 2, 'change_logentry'),
(7, 'Can delete log entry', 2, 'delete_logentry'),
(8, 'Can view log entry', 2, 'view_logentry'),
(9, 'Can add permission', 3, 'add_permission'),
(10, 'Can change permission', 3, 'change_permission'),
(11, 'Can delete permission', 3, 'delete_permission'),
(12, 'Can view permission', 3, 'view_permission'),
(13, 'Can add group', 4, 'add_group'),
(14, 'Can change group', 4, 'change_group'),
(15, 'Can delete group', 4, 'delete_group'),
(16, 'Can view group', 4, 'view_group'),
(17, 'Can add user', 5, 'add_user'),
(18, 'Can change user', 5, 'change_user'),
(19, 'Can delete user', 5, 'delete_user'),
(20, 'Can view user', 5, 'view_user'),
(21, 'Can add content type', 6, 'add_contenttype'),
(22, 'Can change content type', 6, 'change_contenttype'),
(23, 'Can delete content type', 6, 'delete_contenttype'),
(24, 'Can view content type', 6, 'view_contenttype'),
(25, 'Can add session', 7, 'add_session'),
(26, 'Can change session', 7, 'change_session'),
(27, 'Can delete session', 7, 'delete_session'),
(28, 'Can view session', 7, 'view_session'),
(29, 'Can add choice', 8, 'add_choice'),
(30, 'Can change choice', 8, 'change_choice'),
(31, 'Can delete choice', 8, 'delete_choice'),
(32, 'Can view choice', 8, 'view_choice'),
(33, 'Can add question', 9, 'add_question'),
(34, 'Can change question', 9, 'change_question'),
(35, 'Can delete question', 9, 'delete_question'),
(36, 'Can view question', 9, 'view_question'),
(37, 'Can add response', 10, 'add_response'),
(38, 'Can change response', 10, 'change_response'),
(39, 'Can delete response', 10, 'delete_response'),
(40, 'Can view response', 10, 'view_response'),
(41, 'Can add survey', 11, 'add_survey'),
(42, 'Can change survey', 11, 'change_survey'),
(43, 'Can delete survey', 11, 'delete_survey'),
(44, 'Can view survey', 11, 'view_survey');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$eC01CnvdOyrM$6ORvljbsWxsPwB1PFm6sQVcz8DgAfnlmY3zN0DQekKQ=', '2018-11-15 00:55:42.703374', 1, 'admin', '', '', '', 1, 1, '2018-11-08 16:55:06.153599');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2018-11-08 17:01:36.242483', '2', 'What city/town do you live in?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"Rhinebeck\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Red Hook\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Pine Plains\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Millerton\"}}]', 9, 1),
(2, '2018-11-08 17:02:21.831574', '3', 'What has your experience been like working with CAP DC Staff?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"Very Positive\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Positive\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Neutral\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Negative\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Very Negative\"}}]', 9, 1),
(3, '2018-11-08 17:14:26.505884', '1', 'What is your Gender', 2, '[{\"added\": {\"name\": \"choice\", \"object\": \"Male\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Female\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Other\"}}]', 9, 1),
(4, '2018-11-08 17:22:01.333838', '2', 'CAP Dutchess', 1, '[{\"added\": {}}]', 1, 1),
(5, '2018-11-12 00:17:33.665662', '13', 'Poughkeepsie', 1, '[{\"added\": {}}]', 8, 1),
(6, '2018-11-12 00:17:43.949983', '14', 'Pleasant Valley', 1, '[{\"added\": {}}]', 8, 1),
(7, '2018-11-12 01:51:51.523755', '15', 'MillBrooke', 1, '[{\"added\": {}}]', 8, 1),
(8, '2018-11-12 01:52:54.926197', '16', 'Dover Plains', 1, '[{\"added\": {}}]', 8, 1),
(9, '2018-11-12 01:53:08.032155', '17', 'Wappingers Falls', 1, '[{\"added\": {}}]', 8, 1),
(10, '2018-11-12 01:53:22.597572', '18', 'Fishkill', 1, '[{\"added\": {}}]', 8, 1),
(11, '2018-11-12 01:53:28.154707', '19', 'Beacon', 1, '[{\"added\": {}}]', 8, 1),
(12, '2018-11-12 01:53:35.131981', '20', 'Pawling', 1, '[{\"added\": {}}]', 8, 1),
(13, '2018-11-12 01:54:56.824859', '4', 'What is your age range?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"18-24\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"25-34\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"35-44\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"45-54\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"55+\"}}]', 9, 1),
(14, '2018-11-12 01:55:23.563156', '5', 'What is the primary language spoken at home?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"English\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Spanish\"}}]', 9, 1),
(15, '2018-11-12 01:58:01.956006', '6', 'What do you think the CAP DC staff does well?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"Community Outreach\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Support Clients/Assist in identifying & accessing services\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Benefits Assistance\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Housing/Rental Assistance\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Food Pantry\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Client Advocacy\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Weatherization\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Dress for Success\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"RSVP(Senior Volunteer Program)\"}}]', 9, 1),
(16, '2018-11-12 01:58:38.003380', '7', 'Please provide suggestions on how CAP DC staff can improve their services.', 1, '[{\"added\": {}}]', 9, 1),
(17, '2018-11-12 01:59:07.706783', '8', 'What other services or resources would be helpful for you?', 1, '[{\"added\": {}}]', 9, 1),
(18, '2018-11-12 02:03:09.661858', '9', 'In your opinion, what are the major needs or problems facing you and other individuals and families in Dutchess County?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"Accessing basic needs supports(SSI, DSS, Medicaid, Food, etc.)\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Securing employment and/or job training assistance\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Lack of affordable housing\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Lack of affordable day care\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Home energy expenses(home heating)/ access to energy efficiency programs\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Lack of transportation\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Access to quality youth programs/services\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Lack of support services for seniors\"}}]', 9, 1),
(19, '2018-11-12 02:04:24.776096', '10', 'What other community agencies do you or people you know access when needing help/assistance, and has that experience been positive or negative?', 1, '[{\"added\": {}}]', 9, 1),
(20, '2018-11-12 02:07:42.012147', '11', 'In your opinion what are the best ways and places for CAP DC to advertise and share their services/resources?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"Print: Brochures, Flyers, Postings\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Media: Newspaper, Radio, TV, E-Mail\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Social Media: Facebook, Twitter, etc.\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"At other agencies(DSS, SSA, other nonprofit agencies, etc.)\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Libraries\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Schools(public schools, colleges, etc.)\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Stores, Shopping Centers, Grocery Stores, etc.\"}}]', 9, 1),
(21, '2018-11-12 02:08:39.302456', '12', 'Do you have any additional comments you would like us to consider?', 1, '[{\"added\": {}}]', 9, 1),
(22, '2018-11-12 02:09:54.708496', '13', 'If you would like to receive more information, please provide your email. Make sure to double-check the spelling of your email.', 1, '[{\"added\": {}}]', 9, 1),
(23, '2018-11-15 01:34:55.467590', '14', 'Which apply to you?', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"choice\", \"object\": \"a\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"b\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"c\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"d\"}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(1, 'admin_interface', 'theme'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(7, 'sessions', 'session'),
(8, 'survey', 'choice'),
(9, 'survey', 'question'),
(10, 'survey', 'response'),
(11, 'survey', 'survey');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2018-11-08 16:51:18.145055'),
(2, 'auth', '0001_initial', '2018-11-08 16:51:18.979340'),
(3, 'admin', '0001_initial', '2018-11-08 16:51:19.182769'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-11-08 16:51:19.191745'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-11-08 16:51:19.200722'),
(6, 'admin_interface', '0001_initial', '2018-11-08 16:51:19.245603'),
(7, 'admin_interface', '0002_add_related_modal', '2018-11-08 16:51:19.458035'),
(8, 'admin_interface', '0003_add_logo_color', '2018-11-08 16:51:19.498963'),
(9, 'admin_interface', '0004_rename_title_color', '2018-11-08 16:51:19.518897'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2018-11-08 16:51:19.602689'),
(11, 'admin_interface', '0006_bytes_to_str', '2018-11-08 16:51:19.661489'),
(12, 'admin_interface', '0007_add_favicon', '2018-11-08 16:51:19.715364'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2018-11-08 16:51:19.764238'),
(14, 'admin_interface', '0009_add_enviroment', '2018-11-08 16:51:19.868957'),
(15, 'contenttypes', '0002_remove_content_type_name', '2018-11-08 16:51:19.957723'),
(16, 'auth', '0002_alter_permission_name_max_length', '2018-11-08 16:51:20.020552'),
(17, 'auth', '0003_alter_user_email_max_length', '2018-11-08 16:51:20.077400'),
(18, 'auth', '0004_alter_user_username_opts', '2018-11-08 16:51:20.086381'),
(19, 'auth', '0005_alter_user_last_login_null', '2018-11-08 16:51:20.130259'),
(20, 'auth', '0006_require_contenttypes_0002', '2018-11-08 16:51:20.133251'),
(21, 'auth', '0007_alter_validators_add_error_messages', '2018-11-08 16:51:20.142227'),
(22, 'auth', '0008_alter_user_username_max_length', '2018-11-08 16:51:20.199076'),
(23, 'auth', '0009_alter_user_last_name_max_length', '2018-11-08 16:51:20.245251'),
(24, 'sessions', '0001_initial', '2018-11-08 16:51:20.300104'),
(25, 'survey', '0001_initial', '2018-11-08 16:51:20.607282'),
(26, 'survey', '0002_response_timestamp', '2018-11-10 21:15:55.777201'),
(27, 'survey', '0003_auto_20181110_1606', '2018-11-10 21:15:55.787007'),
(28, 'survey', '0004_question_allow_multiple', '2018-11-15 00:47:22.134167'),
(29, 'survey', '0005_remove_question_allow_multiple', '2018-11-15 00:47:22.300281'),
(30, 'survey', '0006_question_allow_multiple', '2018-11-15 00:47:22.401952'),
(31, 'survey', '0007_remove_question_allow_multiple', '2018-11-15 00:47:22.643623'),
(32, 'survey', '0008_question_allow_multiple', '2018-11-15 00:47:22.715431'),
(33, 'survey', '0009_remove_question_allow_multiple', '2018-11-15 00:47:22.807183');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4ipylxx850buxf1gxamx0ok1ue5immfq', 'MzNkMGNiZGJhMTZkMGZjNzhjNjMwMzcyYzM4NWI5NzA3ZDA0MTYzNTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQyZWNhMDk4YzRlNjEyOGY2OGY5OGIwZTE3NGUyMGRmMDRjZWIzIiwidXNlcklEIjo4fQ==', '2018-11-26 18:25:46.044596'),
('5gihtt9zbqn2a93mrb5gsvnucd2xlr6n', 'Yzk2MWJjMjMwMDE4NWM4YTU2YWU1MTVkMzdmYjgwMjhhYmFlMDg3Mzp7InVzZXJJRCI6NywiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImI1NDJlY2EwOThjNGU2MTI4ZjY4Zjk4YjBlMTc0ZTIwZGYwNGNlYjMifQ==', '2018-11-24 17:50:15.161786'),
('7av4mzygelx4juszi17m1ig4y5r1xs6e', 'NzUxMzZhYTc2OWQzNWVkYjBmNTc3ZmQwMjM3NjI2NWMwMjFiN2JiYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQyZWNhMDk4YzRlNjEyOGY2OGY5OGIwZTE3NGUyMGRmMDRjZWIzIn0=', '2018-11-26 19:03:37.244822'),
('fu9gyanmhe4c5knunzkodlmty7djw21m', 'NzUxMzZhYTc2OWQzNWVkYjBmNTc3ZmQwMjM3NjI2NWMwMjFiN2JiYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQyZWNhMDk4YzRlNjEyOGY2OGY5OGIwZTE3NGUyMGRmMDRjZWIzIn0=', '2018-11-28 00:12:19.551189'),
('h4cd1n69xmfifayp0bfo0y5j2xucfajz', 'ZGJiYzc1YTcyYmRhOTBmZTQ0YmFjMjU1OGY4YjE4NDJjMGIxN2FhMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQyZWNhMDk4YzRlNjEyOGY2OGY5OGIwZTE3NGUyMGRmMDRjZWIzIiwidXNlcklEIjo2fQ==', '2018-11-22 18:08:28.990852'),
('n6w6aksio61ujgcyipfkrjsn39hjqwoi', 'MjE1NTk1YTUwYmVlMzM3MmVhOWY0YmRiNzI3NDc0NmVlNDYzNjE0NDp7InVzZXJJRCI6N30=', '2018-11-23 19:38:21.683343'),
('nee93qpd8dytqcx34fd0i7psvlxff5j1', 'OWE3NTIwZWZmZjFiZWJlODM3YmViNTQxMGU1MzQwYTc0OWM5NGFiYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQyZWNhMDk4YzRlNjEyOGY2OGY5OGIwZTE3NGUyMGRmMDRjZWIzIiwibnVtX3NlbGVjdGVkIjowfQ==', '2018-11-29 02:21:05.556315'),
('q800luufhtrperml2ckq7lbbw3509r39', 'NzUxMzZhYTc2OWQzNWVkYjBmNTc3ZmQwMjM3NjI2NWMwMjFiN2JiYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiNTQyZWNhMDk4YzRlNjEyOGY2OGY5OGIwZTE3NGUyMGRmMDRjZWIzIn0=', '2018-11-26 18:46:40.393104');

-- --------------------------------------------------------

--
-- Table structure for table `survey_choice`
--

CREATE TABLE `survey_choice` (
  `cid` int(11) NOT NULL,
  `choice_text` varchar(200) NOT NULL,
  `qid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_choice`
--

INSERT INTO `survey_choice` (`cid`, `choice_text`, `qid_id`) VALUES
(1, 'Rhinebeck', 2),
(2, 'Red Hook', 2),
(3, 'Pine Plains', 2),
(4, 'Millerton', 2),
(5, 'Very Positive', 3),
(6, 'Positive', 3),
(7, 'Neutral', 3),
(8, 'Negative', 3),
(9, 'Very Negative', 3),
(10, 'Male', 1),
(11, 'Female', 1),
(12, 'Other', 1),
(13, 'Poughkeepsie', 2),
(14, 'Pleasant Valley', 2),
(15, 'MillBrooke', 2),
(16, 'Dover Plains', 2),
(17, 'Wappingers Falls', 2),
(18, 'Fishkill', 2),
(19, 'Beacon', 2),
(20, 'Pawling', 2),
(21, '18-24', 4),
(22, '25-34', 4),
(23, '35-44', 4),
(24, '45-54', 4),
(25, '55+', 4),
(26, 'English', 5),
(27, 'Spanish', 5),
(28, 'Community Outreach', 6),
(29, 'Support Clients/Assist in identifying & accessing services', 6),
(30, 'Benefits Assistance', 6),
(31, 'Housing/Rental Assistance', 6),
(32, 'Food Pantry', 6),
(33, 'Client Advocacy', 6),
(34, 'Weatherization', 6),
(35, 'Dress for Success', 6),
(36, 'RSVP(Senior Volunteer Program)', 6),
(37, 'Accessing basic needs supports(SSI, DSS, Medicaid, Food, etc.)', 9),
(38, 'Securing employment and/or job training assistance', 9),
(39, 'Lack of affordable housing', 9),
(40, 'Lack of affordable day care', 9),
(41, 'Home energy expenses(home heating)/ access to energy efficiency programs', 9),
(42, 'Lack of transportation', 9),
(43, 'Access to quality youth programs/services', 9),
(44, 'Lack of support services for seniors', 9),
(45, 'Print: Brochures, Flyers, Postings', 11),
(46, 'Media: Newspaper, Radio, TV, E-Mail', 11),
(47, 'Social Media: Facebook, Twitter, etc.', 11),
(48, 'At other agencies(DSS, SSA, other nonprofit agencies, etc.)', 11),
(49, 'Libraries', 11),
(50, 'Schools(public schools, colleges, etc.)', 11),
(51, 'Stores, Shopping Centers, Grocery Stores, etc.', 11),
(52, 'a', 14),
(53, 'b', 14),
(54, 'c', 14),
(55, 'd', 14);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `qid` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL,
  `is_multiple_choice` tinyint(1) NOT NULL,
  `sid_id` int(11) NOT NULL,
  `allow_multiple` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`qid`, `question_text`, `is_multiple_choice`, `sid_id`, `allow_multiple`) VALUES
(1, 'What is your Gender', 1, 1, 0),
(2, 'What city/town do you live in?', 1, 1, 0),
(3, 'What has your experience been like working with CAP DC Staff?', 1, 1, 0),
(4, 'What is your age range?', 1, 1, 0),
(5, 'What is the primary language spoken at home?', 1, 1, 0),
(6, 'What do you think the CAP DC staff does well?', 1, 1, 0),
(7, 'Please provide suggestions on how CAP DC staff can improve their services.', 0, 1, 0),
(8, 'What other services or resources would be helpful for you?', 0, 1, 0),
(9, 'In your opinion, what are the major needs or problems facing you and other individuals and families in Dutchess County?', 1, 1, 0),
(10, 'What other community agencies do you or people you know access when needing help/assistance, and has that experience been positive or negative?', 0, 1, 0),
(11, 'In your opinion what are the best ways and places for CAP DC to advertise and share their services/resources?', 1, 1, 0),
(12, 'Do you have any additional comments you would like us to consider?', 0, 1, 0),
(13, 'If you would like to receive more information, please provide your email. Make sure to double-check the spelling of your email.', 0, 1, 0),
(14, 'Which apply to you?', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `survey_response`
--

CREATE TABLE `survey_response` (
  `rid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `response_text` varchar(200) NOT NULL,
  `qid_id` int(11) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_response`
--

INSERT INTO `survey_response` (`rid`, `userID`, `response_text`, `qid_id`, `timestamp`) VALUES
(1, 0, 'Millerton', 2, '2018-11-10 21:15:55.666625'),
(2, 1, 'Millerton', 2, '2018-11-10 21:15:55.666625'),
(3, 2, 'Pine Plains', 2, '2018-11-10 21:15:55.666625'),
(4, 3, 'Pine Plains', 2, '2018-11-10 21:15:55.666625'),
(5, 4, 'Millerton', 2, '2018-11-10 21:15:55.666625'),
(6, 4, 'Male', 1, '2018-11-10 21:15:55.666625'),
(7, 4, 'Female', 1, '2018-11-10 21:15:55.666625'),
(8, 4, 'Pine Plains', 2, '2018-11-10 21:15:55.666625'),
(9, 4, 'Positive', 3, '2018-11-10 21:15:55.666625'),
(10, 5, 'Male', 1, '2018-11-10 21:15:55.666625'),
(11, 5, 'Pine Plains', 2, '2018-11-10 21:15:55.666625'),
(12, 5, 'Male', 1, '2018-11-10 21:15:55.666625'),
(13, 5, 'Male', 1, '2018-11-10 21:15:55.666625'),
(14, 5, 'Male', 1, '2018-11-10 21:15:55.666625'),
(15, 5, 'Male', 1, '2018-11-10 21:15:55.666625'),
(16, 5, 'Rhinebeck', 2, '2018-11-10 21:15:55.666625'),
(17, 5, 'Very Negative', 3, '2018-11-10 21:15:55.666625'),
(18, 6, 'Male', 1, '2018-11-10 21:15:55.666625'),
(19, 6, 'Red Hook', 2, '2018-11-10 21:15:55.666625'),
(20, 6, 'Very Negative', 3, '2018-11-10 21:15:55.666625'),
(21, 7, 'Male', 1, '2018-11-10 21:15:55.666625'),
(22, 7, 'Male', 1, '2018-11-10 21:15:55.666625'),
(23, 7, 'Pine Plains', 2, '2018-11-10 21:15:55.666625'),
(24, 7, 'Positive', 3, '2018-11-12 02:10:20.451276'),
(25, 7, '35-44', 4, '2018-11-12 02:10:23.260929'),
(26, 7, 'English', 5, '2018-11-12 02:10:27.029620'),
(27, 7, 'Food Pantry', 6, '2018-11-12 02:10:32.965967'),
(28, 8, 'Male', 1, '2018-11-12 19:00:21.106300'),
(29, 8, 'Rhinebeck', 2, '2018-11-12 19:00:29.193414'),
(30, 8, 'Very Positive', 3, '2018-11-12 19:00:38.837005'),
(31, 8, '25-34', 4, '2018-11-12 19:00:43.548118'),
(32, 8, 'English', 5, '2018-11-12 19:00:48.493542'),
(33, 8, 'Community Outreach', 6, '2018-11-12 19:00:55.319666'),
(34, 9, 'Female', 1, '2018-11-15 01:33:37.305951'),
(35, 9, 'Rhinebeck', 2, '2018-11-15 01:33:48.726203'),
(36, 9, 'Very Positive', 3, '2018-11-15 01:37:04.613371'),
(37, 9, '25-34', 4, '2018-11-15 01:37:07.668819'),
(38, 9, 'English', 5, '2018-11-15 01:37:10.946991'),
(39, 9, 'Benefits Assistance', 6, '2018-11-15 01:37:14.908544'),
(40, 9, 'qweqwe', 7, '2018-11-15 01:37:19.781442'),
(41, 9, 'qweqd', 8, '2018-11-15 01:37:23.360150'),
(42, 9, 'Accessing basic needs supports(SSI, DSS, Medicaid, Food, etc.)', 9, '2018-11-15 01:37:28.320666'),
(43, 9, 'qweqwe', 10, '2018-11-15 01:37:31.533929'),
(44, 9, 'Media: Newspaper, Radio, TV, E-Mail', 11, '2018-11-15 01:37:34.805201'),
(45, 9, 'qweqwe', 12, '2018-11-15 01:37:37.870118'),
(46, 9, 'qweqwe', 13, '2018-11-15 01:37:41.003039'),
(47, 9, 'd', 14, '2018-11-15 01:37:47.378881'),
(48, 10, 'Male', 1, '2018-11-15 02:15:27.055720'),
(49, 10, 'Pine Plains', 2, '2018-11-15 02:15:30.762729'),
(50, 10, 'Neutral', 3, '2018-11-15 02:15:33.640719'),
(51, 10, '35-44', 4, '2018-11-15 02:15:36.682671'),
(52, 10, 'English', 5, '2018-11-15 02:15:39.943905'),
(53, 10, 'Community Outreach', 6, '2018-11-15 02:15:43.315781'),
(54, 10, 'sdasd', 7, '2018-11-15 02:20:43.971082'),
(55, 10, 'asdasd', 8, '2018-11-15 02:20:46.731375'),
(56, 10, 'Accessing basic needs supports(SSI, DSS, Medicaid, Food, etc.)', 9, '2018-11-15 02:20:49.668636'),
(57, 10, 'asdasd', 10, '2018-11-15 02:20:52.570333'),
(58, 10, 'Print: Brochures, Flyers, Postings', 11, '2018-11-15 02:20:55.587409'),
(59, 10, 'asdasd', 12, '2018-11-15 02:20:58.286263'),
(60, 10, 'asdasd', 13, '2018-11-15 02:21:00.979997'),
(61, 10, '[\'a\', \'b\', \'c\', \'d\']', 14, '2018-11-15 02:21:05.547276');

-- --------------------------------------------------------

--
-- Table structure for table `survey_survey`
--

CREATE TABLE `survey_survey` (
  `sid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_survey`
--

INSERT INTO `survey_survey` (`sid`) VALUES
(1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `survey_choice`
--
ALTER TABLE `survey_choice`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `survey_choice_qid_id_bbfc2396_fk_survey_question_qid` (`qid_id`);

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `survey_question_sid_id_00e8ccef_fk_survey_survey_sid` (`sid_id`);

--
-- Indexes for table `survey_response`
--
ALTER TABLE `survey_response`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `survey_response_qid_id_fdef6cb7_fk_survey_question_qid` (`qid_id`);

--
-- Indexes for table `survey_survey`
--
ALTER TABLE `survey_survey`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_interface_theme`
--
ALTER TABLE `admin_interface_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `survey_choice`
--
ALTER TABLE `survey_choice`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `survey_response`
--
ALTER TABLE `survey_response`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `survey_survey`
--
ALTER TABLE `survey_survey`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

--
-- Constraints for table `survey_choice`
--
ALTER TABLE `survey_choice`
  ADD CONSTRAINT `survey_choice_qid_id_bbfc2396_fk_survey_question_qid` FOREIGN KEY (`qid_id`) REFERENCES `survey_question` (`qid`);

--
-- Constraints for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD CONSTRAINT `survey_question_sid_id_00e8ccef_fk_survey_survey_sid` FOREIGN KEY (`sid_id`) REFERENCES `survey_survey` (`sid`);

--
-- Constraints for table `survey_response`
--
ALTER TABLE `survey_response`
  ADD CONSTRAINT `survey_response_qid_id_fdef6cb7_fk_survey_question_qid` FOREIGN KEY (`qid_id`) REFERENCES `survey_question` (`qid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
