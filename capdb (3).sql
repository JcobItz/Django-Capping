-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2018 at 10:38 PM
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
(1, 'Django', 1, 'Django administration', 1, '', 1, '#0C4B33', '#F5DD5D', '#44B78B', '#FFFFFF', '#C9F0DD', '#44B78B', '#FFFFFF', '#FFFFFF', '#C9F0DD', 1, '#0C3C26', '#156641', '#0C4B33', '#0C3C26', '#FFFFFF', '#BA2121', '#A41515', '#FFFFFF', '', 0, 1, '#000000', '0.3', 1, '#FFFFFF', 1, '', 'development', 1);

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
(33, 'Can add email', 9, 'add_email'),
(34, 'Can change email', 9, 'change_email'),
(35, 'Can delete email', 9, 'delete_email'),
(36, 'Can view email', 9, 'view_email'),
(37, 'Can add question', 10, 'add_question'),
(38, 'Can change question', 10, 'change_question'),
(39, 'Can delete question', 10, 'delete_question'),
(40, 'Can view question', 10, 'view_question'),
(41, 'Can add response', 11, 'add_response'),
(42, 'Can change response', 11, 'change_response'),
(43, 'Can delete response', 11, 'delete_response'),
(44, 'Can view response', 11, 'view_response'),
(45, 'Can add survey', 12, 'add_survey'),
(46, 'Can change survey', 12, 'change_survey'),
(47, 'Can delete survey', 12, 'delete_survey'),
(48, 'Can view survey', 12, 'view_survey');

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
(1, 'pbkdf2_sha256$120000$HJqIUPw9r41e$IhNymC+weP1zE5VWD1Jp4KKde37aLBR8Qb8KuuVxz08=', '2018-12-02 21:12:05.849333', 1, 'admin', '', '', '', 1, 1, '2018-12-02 21:11:57.067790');

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
(1, '2018-12-02 21:12:22.656338', '1', 'Survey object (1)', 1, '[{\"added\": {}}]', 12, 1),
(2, '2018-12-02 21:15:25.939637', '1', 'Survey object (1)', 2, '[{\"added\": {\"name\": \"question\", \"object\": \"What is your gender?\"}}, {\"added\": {\"name\": \"question\", \"object\": \"What City/Town do you live in?\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Male\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Female\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Other\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Poughkeepsie\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Pawling\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Fishkill\"}}]', 12, 1),
(3, '2018-12-02 21:26:20.208114', '1', 'Survey object (1)', 2, '[{\"changed\": {\"fields\": [\"survey_name\"]}}, {\"added\": {\"name\": \"question\", \"object\": \"What is your gender?\"}}, {\"added\": {\"name\": \"question\", \"object\": \"What is your age range?\"}}, {\"added\": {\"name\": \"question\", \"object\": \"Which City/Town do you live in?\"}}, {\"added\": {\"name\": \"question\", \"object\": \"How would you describe your experience with CAP DC staff:\"}}, {\"added\": {\"name\": \"question\", \"object\": \"What language is spoken at home?\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Male\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Female\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Other\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"18-24\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"25-34\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"45-54\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"55+\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Poughkeepsie\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Rhinebeck\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Red Hook\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Pine Plains\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Millerton\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Pleasant Valley\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Millbrooke\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Wappingers Falls\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Fishkill\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Beacon\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Pawling\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Very Positive\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Positive\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Neutral\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Negative\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Very Negative\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"English\"}}, {\"added\": {\"name\": \"choice\", \"object\": \"Spanish\"}}]', 12, 1);

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
(9, 'survey', 'email'),
(10, 'survey', 'question'),
(11, 'survey', 'response'),
(12, 'survey', 'survey');

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
(1, 'contenttypes', '0001_initial', '2018-12-02 21:08:18.924052'),
(2, 'auth', '0001_initial', '2018-12-02 21:08:19.715140'),
(3, 'admin', '0001_initial', '2018-12-02 21:08:19.890930'),
(4, 'admin', '0002_logentry_remove_auto_add', '2018-12-02 21:08:19.901585'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2018-12-02 21:08:19.910613'),
(6, 'admin_interface', '0001_initial', '2018-12-02 21:08:19.967904'),
(7, 'admin_interface', '0002_add_related_modal', '2018-12-02 21:08:20.337506'),
(8, 'admin_interface', '0003_add_logo_color', '2018-12-02 21:08:20.406952'),
(9, 'admin_interface', '0004_rename_title_color', '2018-12-02 21:08:20.423015'),
(10, 'admin_interface', '0005_add_recent_actions_visible', '2018-12-02 21:08:20.505484'),
(11, 'admin_interface', '0006_bytes_to_str', '2018-12-02 21:08:20.575161'),
(12, 'admin_interface', '0007_add_favicon', '2018-12-02 21:08:20.641227'),
(13, 'admin_interface', '0008_change_related_modal_background_opacity_type', '2018-12-02 21:08:20.702785'),
(14, 'admin_interface', '0009_add_enviroment', '2018-12-02 21:08:20.815440'),
(15, 'contenttypes', '0002_remove_content_type_name', '2018-12-02 21:08:20.942703'),
(16, 'auth', '0002_alter_permission_name_max_length', '2018-12-02 21:08:21.021685'),
(17, 'auth', '0003_alter_user_email_max_length', '2018-12-02 21:08:21.099358'),
(18, 'auth', '0004_alter_user_username_opts', '2018-12-02 21:08:21.111328'),
(19, 'auth', '0005_alter_user_last_login_null', '2018-12-02 21:08:21.156400'),
(20, 'auth', '0006_require_contenttypes_0002', '2018-12-02 21:08:21.159462'),
(21, 'auth', '0007_alter_validators_add_error_messages', '2018-12-02 21:08:21.170435'),
(22, 'auth', '0008_alter_user_username_max_length', '2018-12-02 21:08:21.241934'),
(23, 'auth', '0009_alter_user_last_name_max_length', '2018-12-02 21:08:21.303439'),
(24, 'sessions', '0001_initial', '2018-12-02 21:08:21.351027'),
(25, 'survey', '0001_initial', '2018-12-02 21:08:21.939164');

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
('5igch9p93pherq4sk6y1qqkkteyirf7p', 'OWY5M2IwN2MwN2U4MGIzMmI3Njc2NmU3NDRlZjRmMDdkZjkyNDM2OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiYjViNTI3OTUzMjI5ZGNhOGQ4YjdhZmUxM2JkYTk4MzkxMmJhZTA0In0=', '2018-12-16 21:30:23.064456');

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
(1, 'Male', 1),
(2, 'Female', 1),
(3, 'Other', 1),
(4, '18-24', 2),
(5, '25-34', 2),
(6, '45-54', 2),
(7, '55+', 2),
(8, 'Poughkeepsie', 3),
(9, 'Rhinebeck', 3),
(10, 'Red Hook', 3),
(11, 'Pine Plains', 3),
(12, 'Millerton', 3),
(13, 'Pleasant Valley', 3),
(14, 'Millbrooke', 3),
(15, 'Wappingers Falls', 3),
(16, 'Fishkill', 3),
(17, 'Beacon', 3),
(18, 'Pawling', 3),
(19, 'Very Positive', 4),
(20, 'Positive', 4),
(21, 'Neutral', 4),
(22, 'Negative', 4),
(23, 'Very Negative', 4),
(24, 'English', 5),
(25, 'Spanish', 5);

-- --------------------------------------------------------

--
-- Table structure for table `survey_email`
--

CREATE TABLE `survey_email` (
  `eid` int(11) NOT NULL,
  `email` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

CREATE TABLE `survey_question` (
  `qid` int(11) NOT NULL,
  `question_num` int(11) NOT NULL,
  `question_text` varchar(200) NOT NULL,
  `is_multiple_choice` tinyint(1) NOT NULL,
  `allow_multiple` tinyint(1) NOT NULL,
  `allow_other` tinyint(1) NOT NULL,
  `sid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`qid`, `question_num`, `question_text`, `is_multiple_choice`, `allow_multiple`, `allow_other`, `sid_id`) VALUES
(1, 1, 'What is your gender?', 1, 0, 0, 1),
(2, 2, 'What is your age range?', 1, 0, 0, 1),
(3, 3, 'Which City/Town do you live in?', 1, 0, 0, 1),
(4, 4, 'How would you describe your experience with CAP DC staff:', 1, 0, 1, 1),
(5, 5, 'What language is spoken at home?', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `survey_response`
--

CREATE TABLE `survey_response` (
  `rid` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `response_text` varchar(200) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `qid_id` int(11) NOT NULL,
  `sid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `survey_survey`
--

CREATE TABLE `survey_survey` (
  `sid` int(11) NOT NULL,
  `survey_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `survey_survey`
--

INSERT INTO `survey_survey` (`sid`, `survey_name`) VALUES
(1, 'Default');

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
-- Indexes for table `survey_email`
--
ALTER TABLE `survey_email`
  ADD PRIMARY KEY (`eid`);

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
  ADD KEY `survey_response_qid_id_fdef6cb7_fk_survey_question_qid` (`qid_id`),
  ADD KEY `survey_response_sid_id_0b42a250_fk_survey_survey_sid` (`sid_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `survey_choice`
--
ALTER TABLE `survey_choice`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `survey_email`
--
ALTER TABLE `survey_email`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `survey_response`
--
ALTER TABLE `survey_response`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `survey_response_qid_id_fdef6cb7_fk_survey_question_qid` FOREIGN KEY (`qid_id`) REFERENCES `survey_question` (`qid`),
  ADD CONSTRAINT `survey_response_sid_id_0b42a250_fk_survey_survey_sid` FOREIGN KEY (`sid_id`) REFERENCES `survey_survey` (`sid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
