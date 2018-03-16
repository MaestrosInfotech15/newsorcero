-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2018 at 05:43 AM
-- Server version: 5.6.33-79.0-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maestxno_sorcero1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE IF NOT EXISTS `tbl_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `users` varchar(255) NOT NULL,
  `usergroup` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'sorcero_logo.png',
  `category` varchar(222) NOT NULL,
  `description` longtext NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `price` int(25) NOT NULL,
  `days` int(25) NOT NULL,
  `certificate` int(25) NOT NULL,
  `level` int(25) NOT NULL,
  `created` varchar(255) NOT NULL,
  `modified` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Default,1-Active,2-Complete',
  `createdBy` int(222) NOT NULL,
  `createdOn` datetime NOT NULL,
  `lastupdaed_by` int(222) NOT NULL,
  `lastupdated_on` datetime NOT NULL,
  `deleted_by` int(222) NOT NULL,
  `deleted_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `user_id`, `name`, `users`, `usergroup`, `image`, `category`, `description`, `course_code`, `price`, `days`, `certificate`, `level`, `created`, `modified`, `status`, `createdBy`, `createdOn`, `lastupdaed_by`, `lastupdated_on`, `deleted_by`, `deleted_on`) VALUES
(1, 19, '', '', '', 'sorcero_logo.png', '', '', '', 0, 0, 0, 0, '', '', 0, 1, '2018-03-12 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(2, 19, 'dfgdgfgdg', '83,82,81,79,78', '2', 'sorcero_logo.png', '15,14', 'fghfghhfgh', '', 0, 0, 0, 1, '', '', 0, 1, '2018-03-12 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_files`
--

CREATE TABLE IF NOT EXISTS `tbl_courses_files` (
  `id` int(25) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Not started,1-Active,2-Complete 3 Deleted',
  `file` varchar(255) NOT NULL,
  `course_id` int(25) NOT NULL,
  `strtotime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses_users`
--

CREATE TABLE IF NOT EXISTS `tbl_courses_users` (
  `id` int(25) NOT NULL,
  `user_id` int(255) NOT NULL,
  `learner_id` int(25) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0-Not started,1-Active,2-Complete 3 Deleted',
  `course_id` int(25) NOT NULL,
  `starttime` varchar(255) NOT NULL,
  `endtime` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_course_category`
--

CREATE TABLE IF NOT EXISTS `tbl_course_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdaed_by` int(11) DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT '0',
  `deleted_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `tbl_course_category`
--

INSERT INTO `tbl_course_category` (`id`, `name`, `domain_id`, `status`, `createdBy`, `createdOn`, `lastupdaed_by`, `lastupdated_on`, `deleted_by`, `deleted_on`) VALUES
(1, 'Google Grants', 8, 1, 1, '2018-02-22 22:12:43', NULL, NULL, 0, NULL),
(2, 'Social Marketing', 8, 1, 1, '2018-02-22 22:12:54', NULL, NULL, 0, NULL),
(3, 'Google Analytics', 8, 1, 1, '2018-02-22 22:12:54', NULL, NULL, 0, NULL),
(4, 'Facebook Api', 8, 1, 1, '2018-02-22 22:12:54', NULL, NULL, 0, NULL),
(7, 'Laravel Beginners', 8, 1, 1, '2018-02-22 00:00:00', NULL, NULL, 0, NULL),
(8, 'PMS Cerfications', 8, 1, 1, '2018-02-22 00:00:00', NULL, NULL, 0, NULL),
(9, 'Google Analytics', 8, 1, 1, '2018-02-22 00:00:00', NULL, NULL, 0, NULL),
(12, 'newtesting', 19, 1, 1, '2018-03-06 00:00:00', NULL, NULL, 1, '2018-03-12 00:00:00'),
(13, 'jitu', 19, 1, 1, '2018-03-06 00:00:00', NULL, NULL, 1, '2018-03-12 00:00:00'),
(14, 'dfffd', 19, 1, 1, '2018-03-06 00:00:00', NULL, NULL, 0, NULL),
(15, 'hfghfghf', 19, 1, 1, '2018-03-06 00:00:00', NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_domains`
--

CREATE TABLE IF NOT EXISTS `tbl_domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdaed_by` int(11) DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `domain_name` (`domain_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `tbl_domains`
--

INSERT INTO `tbl_domains` (`id`, `domain_name`, `user_id`, `created_by`, `created_on`, `lastupdaed_by`, `lastupdated_on`, `deleted_by`, `deleted_on`) VALUES
(1, 'peter', 1, NULL, '2018-02-07 21:15:58', NULL, NULL, NULL, NULL),
(3, 'johney', 5, NULL, '2018-02-13 12:29:07', NULL, NULL, NULL, NULL),
(4, 'johnathan', 6, NULL, '2018-02-13 12:35:07', NULL, NULL, NULL, NULL),
(5, 'parth', 7, NULL, '2018-02-13 01:37:30', NULL, NULL, NULL, NULL),
(7, 'parthujeniatest', 9, NULL, '2018-02-13 01:46:51', NULL, NULL, NULL, NULL),
(8, 'demo', 10, NULL, '2018-02-13 01:47:15', NULL, NULL, NULL, NULL),
(9, 'srinivas', 11, NULL, '2018-02-13 02:45:43', NULL, NULL, NULL, NULL),
(10, 'srinivasteja', 12, NULL, '2018-02-13 06:04:54', NULL, NULL, NULL, NULL),
(12, 'darshana', 14, NULL, '2018-02-13 12:33:01', NULL, NULL, NULL, NULL),
(13, 'parthujeniya', 15, NULL, '2018-02-13 12:44:43', NULL, NULL, NULL, NULL),
(14, 'srinirhy', 16, NULL, '2018-02-13 13:44:48', NULL, NULL, NULL, NULL),
(15, 'webworks', 17, NULL, '2018-02-16 05:44:00', NULL, NULL, NULL, NULL),
(16, 'Srini', 18, NULL, '2018-02-20 12:02:51', NULL, NULL, NULL, NULL),
(17, 'test', 19, NULL, '2018-02-21 00:27:06', NULL, NULL, NULL, NULL),
(18, 'parthu', 20, NULL, '2018-02-21 00:54:23', NULL, NULL, NULL, NULL),
(19, 'maestros', 77, NULL, '2018-03-06 05:32:48', NULL, NULL, NULL, NULL),
(20, 'jitunagar', 78, NULL, '2018-03-06 06:36:21', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE IF NOT EXISTS `tbl_email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`id`, `slug`, `subject`, `content`) VALUES
(1, 'REGISTRATION', 'Registration succesfully - Sorcero', '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">\r\n<html xmlns="http://www.w3.org/1999/xhtml">\r\n<head>\r\n  <meta name="viewport" content="width=device-width, initial-scale=1.0" />\r\n  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />\r\n  <title>Verify your email address</title>\r\n  <style type="text/css" rel="stylesheet" media="all">\r\n    /* Base ------------------------------ */\r\n    *:not(br):not(tr):not(html) {\r\n      font-family: Arial, ''Helvetica Neue'', Helvetica, sans-serif;\r\n      -webkit-box-sizing: border-box;\r\n      box-sizing: border-box;\r\n    }\r\n    body {\r\n      width: 100% !important;\r\n      height: 100%;\r\n      margin: 0;\r\n      line-height: 1.4;\r\n      background-color: #F5F7F9;\r\n      color: #839197;\r\n      -webkit-text-size-adjust: none;\r\n    }\r\n    a {\r\n      color: #414EF9;\r\n    }\r\n    /* Layout ------------------------------ */\r\n    .email-wrapper {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      background-color: #F5F7F9;\r\n    }\r\n    .email-content {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n    }\r\n    /* Masthead ----------------------- */\r\n    .email-masthead {\r\n      padding: 25px 0;\r\n      text-align: center;\r\n    }\r\n    .email-masthead_logo {\r\n      max-width: 400px;\r\n      border: 0;\r\n    }\r\n    .email-masthead_name {\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      color: #839197;\r\n      text-decoration: none;\r\n      text-shadow: 0 1px 0 white;\r\n    }\r\n    /* Body ------------------------------ */\r\n    .email-body {\r\n      width: 100%;\r\n      margin: 0;\r\n      padding: 0;\r\n      border-top: 1px solid #E7EAEC;\r\n      border-bottom: 1px solid #E7EAEC;\r\n      background-color: #FFFFFF;\r\n    }\r\n    .email-body_inner {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n    }\r\n    .email-footer {\r\n      width: 570px;\r\n      margin: 0 auto;\r\n      padding: 0;\r\n      text-align: center;\r\n    }\r\n    .email-footer p {\r\n      color: #839197;\r\n    }\r\n    .body-action {\r\n      width: 100%;\r\n      margin: 30px auto;\r\n      padding: 0;\r\n      text-align: center;\r\n    }\r\n    .body-sub {\r\n      margin-top: 25px;\r\n      padding-top: 25px;\r\n      border-top: 1px solid #E7EAEC;\r\n    }\r\n    .content-cell {\r\n      padding: 35px;\r\n    }\r\n    .align-right {\r\n      text-align: right;\r\n    }\r\n    /* Type ------------------------------ */\r\n    h1 {\r\n      margin-top: 0;\r\n      color: #292E31;\r\n      font-size: 19px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h2 {\r\n      margin-top: 0;\r\n      color: #292E31;\r\n      font-size: 16px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    h3 {\r\n      margin-top: 0;\r\n      color: #292E31;\r\n      font-size: 14px;\r\n      font-weight: bold;\r\n      text-align: left;\r\n    }\r\n    p {\r\n      margin-top: 0;\r\n      color: #839197;\r\n      font-size: 16px;\r\n      line-height: 1.5em;\r\n      text-align: left;\r\n    }\r\n    p.sub {\r\n      font-size: 12px;\r\n    }\r\n    p.center {\r\n      text-align: center;\r\n    }\r\n    /* Buttons ------------------------------ */\r\n    .button {\r\n      display: inline-block;\r\n      width: 200px;\r\n      background-color: #414EF9;\r\n      border-radius: 3px;\r\n      color: #ffffff;\r\n      font-size: 15px;\r\n      line-height: 45px;\r\n      text-align: center;\r\n      text-decoration: none;\r\n      -webkit-text-size-adjust: none;\r\n      mso-hide: all;\r\n    }\r\n    .button--green {\r\n      background-color: #28DB67;\r\n    }\r\n    .button--red {\r\n      background-color: #FF3665;\r\n    }\r\n    .button--blue {\r\n      background-color: #414EF9;\r\n    }\r\n    /*Media Queries ------------------------------ */\r\n    @media only screen and (max-width: 600px) {\r\n      .email-body_inner,\r\n      .email-footer {\r\n        width: 100% !important;\r\n      }\r\n    }\r\n    @media only screen and (max-width: 500px) {\r\n      .button {\r\n        width: 100% !important;\r\n      }\r\n    }\r\n  </style>\r\n</head>\r\n<body>\r\n  <table class="email-wrapper" width="100%" cellpadding="0" cellspacing="0">\r\n    <tr>\r\n      <td align="center">\r\n        <table class="email-content" width="100%" cellpadding="0" cellspacing="0">\r\n          <!-- Logo -->\r\n          <tr>\r\n            <td class="email-masthead">\r\n              <a class="email-masthead_name">Sorcero</a>\r\n            </td>\r\n          </tr>\r\n          <!-- Email Body -->\r\n          <tr>\r\n            <td class="email-body" width="100%">\r\n              <table class="email-body_inner" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                <!-- Body content -->\r\n                <tr>\r\n                  <td class="content-cell">\r\n                    <h1>Verify your email address</h1>\r\n                    <p>Thanks for signing up for Sorcero! We''re excited to have you as an early user.</p>\r\n                    <!-- Action -->\r\n                    <table class="body-action" align="center" width="100%" cellpadding="0" cellspacing="0">\r\n                      <tr>\r\n                        <td align="center">\r\n                          <div>\r\n                            <!--[if mso]><v:roundrect xmlns:v="urn:schemas-microsoft-com:vml" xmlns:w="urn:schemas-microsoft-com:office:word" href="{{action_url}}" style="height:45px;v-text-anchor:middle;width:200px;" arcsize="7%" stroke="f" fill="t">\r\n                            <v:fill type="tile" color="#414EF9" />\r\n                            <w:anchorlock/>\r\n                            <center style="color:#ffffff;font-family:sans-serif;font-size:15px;">Verify Email</center>\r\n                          </v:roundrect><![endif]-->\r\n                            <a href="{{action_url}}" class="button button--blue">Verify Email</a>\r\n                          </div>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\r\n                    <p>Thanks,<br>The Sorcero Team</p>\r\n                    <!-- Sub copy -->\r\n                    <table class="body-sub">\r\n                      <tr>\r\n                        <td>\r\n                          <p class="sub">If you’re having trouble clicking the button, copy and paste the URL below into your web browser.\r\n                          </p>\r\n                          <p class="sub"><a href="{{action_url}}">{{action_url}}</a></p>\r\n                        </td>\r\n                      </tr>\r\n                    </table>\r\n                  </td>\r\n                </tr>\r\n              </table>\r\n            </td>\r\n          </tr>\r\n          <tr>\r\n            <td>\r\n              <table class="email-footer" align="center" width="570" cellpadding="0" cellspacing="0">\r\n                <tr>\r\n                  <td class="content-cell">\r\n                    <p class="sub center">\r\n                     Sorcero\r\n                    </p>\r\n                  </td>\r\n                </tr>\r\n              </table>\r\n            </td>\r\n          </tr>\r\n        </table>\r\n      </td>\r\n    </tr>\r\n  </table>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_questions`
--

CREATE TABLE IF NOT EXISTS `tbl_questions` (
  `id` int(25) NOT NULL,
  `contents_id` int(25) NOT NULL,
  `files_id` int(25) NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` int(25) NOT NULL COMMENT '1=multiple 0=single',
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `answere` varchar(255) NOT NULL,
  `status` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE IF NOT EXISTS `tbl_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lastupdaed_by` int(11) DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `deleted_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`id`, `name`, `created_by`, `created_on`, `lastupdaed_by`, `lastupdated_on`, `deleted_by`, `deleted_on`) VALUES
(1, 'Admin', NULL, '2018-02-07 21:14:37', NULL, NULL, NULL, NULL),
(2, 'Student', NULL, '2018-02-07 21:14:37', NULL, NULL, NULL, NULL),
(3, 'Instructor', NULL, '2018-02-07 21:14:37', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student_group`
--

CREATE TABLE IF NOT EXISTS `tbl_student_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `domain_id` int(222) NOT NULL,
  `members` text NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(222) NOT NULL,
  `createdOn` int(222) NOT NULL,
  `createdBy` datetime NOT NULL,
  `lastupdaed_by` int(222) NOT NULL,
  `lastupdated_on` datetime NOT NULL,
  `deleted_by` int(222) NOT NULL,
  `deleted_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_student_group`
--

INSERT INTO `tbl_student_group` (`id`, `name`, `domain_id`, `members`, `created_date`, `status`, `createdOn`, `createdBy`, `lastupdaed_by`, `lastupdated_on`, `deleted_by`, `deleted_on`) VALUES
(1, 'sasasasasa', 19, '79', '2018-03-12 13:01:04', 1, 0, '0000-00-00 00:00:00', 1, '2018-03-12 00:00:00', 1, '2018-03-12 00:00:00'),
(2, 'vbnv', 19, '80,79', '2018-03-07 13:05:02', 1, 2018, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00'),
(3, 'jitu nagar bhopal', 19, '80,79', '2018-03-12 11:57:28', 1, 2018, '0000-00-00 00:00:00', 1, '2018-03-12 00:00:00', 1, '2018-03-12 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `domain_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `emailsubscribe` tinyint(1) NOT NULL DEFAULT '0',
  `profile_pic` varchar(255) DEFAULT NULL,
  `fburl` text,
  `linkedinurl` text,
  `youtubeurl` text,
  `twitterurl` text,
  `mediumurl` text,
  `weburl` text,
  `createdBy` int(11) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastupdaed_by` int(11) DEFAULT NULL,
  `lastupdated_on` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT '0',
  `deleted_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `domain_id` (`domain_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `domain_id`, `role_id`, `fname`, `lname`, `email`, `password`, `username`, `status`, `emailsubscribe`, `profile_pic`, `fburl`, `linkedinurl`, `youtubeurl`, `twitterurl`, `mediumurl`, `weburl`, `createdBy`, `createdOn`, `lastupdaed_by`, `lastupdated_on`, `deleted_by`, `deleted_on`) VALUES
(1, 'Peter', 1, 1, 'Peter', 'Jones', 'peter@gmail.com', '645cca0530edc2de5355884fdab638c6', 'peter', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-07 21:17:45', NULL, NULL, 0, NULL),
(5, NULL, 3, 1, 'adffasdfadf', '', 'asdfadf@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'joyette', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 12:29:07', NULL, NULL, 0, NULL),
(6, NULL, 4, 1, 'aghaadf', '', 'johnathan@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'johnathan', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 12:35:07', NULL, NULL, 0, NULL),
(7, NULL, 5, 1, 'aaghae', '', 'john@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'moneycreate', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 01:37:30', NULL, NULL, 0, NULL),
(9, NULL, 7, 1, 'parthujeniatest', '', 'parthujeniatest@gmail.com', '66d14f03ffd714625852230b74b50332', 'parthujeniatest', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 01:46:51', NULL, NULL, 0, NULL),
(10, NULL, 8, 1, 'parthujenia', '', 'parthj@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'sorcerodemo', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 01:47:15', NULL, NULL, 0, NULL),
(11, NULL, 9, 1, 'srini29', '', 'srinivasteja4@gmail.com', 'f7818128c89e51efd8bea5db88d7b6e0', 'srinivasteja4@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 02:45:43', NULL, NULL, 0, NULL),
(12, NULL, 10, 1, 'srinivas', '', 'gsteja.gls@gmail.com', '694966ca0018e3c56568ace7e29c0540', 'gsteja.gls@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 06:04:54', NULL, NULL, 0, NULL),
(14, NULL, 12, 1, 'darshan', '', 'darshan.aambaliya@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'darshan', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 12:33:01', NULL, NULL, 0, NULL),
(15, NULL, 13, 1, 'parthujeniya', '', 'parthujeniya@gmail.com', '25d55ad283aa400af464c76d713c07ad', 'parthujeniya', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 12:44:43', NULL, NULL, 0, NULL),
(16, NULL, 14, 1, 'srinivasr', '', 'srinivas.ryhill@gmail.com', '5f6c25879925b08f15d2b624a85a2936', 'srinivas.ryhill@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-13 13:44:48', NULL, NULL, 0, NULL),
(17, NULL, 15, 1, 'webworks', '', 'webmyworks12@gmail.com', 'e1517c7ba06b2b1e45ec77a4f8499a12', 'webmyworks12@gmail.com', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-16 05:44:00', NULL, NULL, 0, NULL),
(18, NULL, 16, 1, 'Tejabxbx', '', 'srinivadbdb@gmail.com', '64c61dda744b311b51c064ea7760a968', 'Srinivas', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-20 12:02:51', NULL, NULL, 0, NULL),
(19, NULL, 17, 1, 'testbed', '', 'ddas+test@sorcero.com', '05a671c66aefea124cc08b76ea6d30bb', 'DDas+Test', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-21 00:27:06', NULL, NULL, 0, NULL),
(20, NULL, 18, 1, 'parthu', '', 'parth.ujenia@outlook.com', 'd2d53c82c359fe1ed25f3191c99e5b6a', 'parthu', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-21 00:54:23', NULL, NULL, 0, NULL),
(23, NULL, 8, 2, 'Chris', 'Moris', 'chrism@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'chrismsss', 0, 0, NULL, '', 'http://linkedin.com', '', '', '', '', 1, '2018-02-21 00:00:00', 1, '2018-02-21 00:00:00', 0, NULL),
(24, 'Null', 8, 2, 'Chris', 'A', 'chrisa@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'chrisa', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 10, '2018-02-22 10:45:15', 1, '0000-00-00 00:00:00', 0, NULL),
(25, 'Null', 8, 2, 'Peter', 'B', 'chrisb@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'chrisb', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '2018-02-22 10:45:15', 1, '0000-00-00 00:00:00', 0, NULL),
(26, 'Null', 8, 2, 'Chris', 'A', 'chrisa1@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'chrisa1', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '2018-02-22 10:45:15', 1, '0000-00-00 00:00:00', 0, NULL),
(27, 'Null', 8, 2, 'Peter', 'B', 'chrisb1@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'chrisb2', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 0, NULL),
(28, 'Null', 8, 2, 'John', 'C', 'chrisc1@gmail.com', '550e1bafe077ff0b0b67f4e32f29d752', 'chrisc3', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '0000-00-00 00:00:00', 2, '0000-00-00 00:00:00', 0, NULL),
(29, 'Null', 8, 2, 'Steve', 'D', 'chrisda@gmail.com', '550e1bafe077ff0b0b67f4e32f29d753', 'chrisd4', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '0000-00-00 00:00:00', 3, '0000-00-00 00:00:00', 0, NULL),
(30, 'Null', 8, 2, 'Josh', 'A', 'chrise@gmail.com', '550e1bafe077ff0b0b67f4e32f29d754', 'chrise', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '0000-00-00 00:00:00', 4, '0000-00-00 00:00:00', 0, NULL),
(31, 'Null', 8, 2, 'Tedd', 'B', 'chrisf@gmail.com', '550e1bafe077ff0b0b67f4e32f29d755', 'chrisf', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '0000-00-00 00:00:00', 5, '0000-00-00 00:00:00', 0, NULL),
(32, 'Null', 8, 2, 'Toyy', 'C', 'chrisg@gmail.com', '550e1bafe077ff0b0b67f4e32f29d756', 'chrisg', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 1, '0000-00-00 00:00:00', 6, '0000-00-00 00:00:00', 0, NULL),
(33, 'Null', 8, 2, 'Yi', 'D', 'chrish@gmail.com', '550e1bafe077ff0b0b67f4e32f29d757', 'chrish', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 10, '0000-00-00 00:00:00', 7, '0000-00-00 00:00:00', 0, NULL),
(34, 'Null', 8, 3, 'Peter', 'A', 'chrisi@gmail.com', '550e1bafe077ff0b0b67f4e32f29d758', 'chrisi', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 10, '0000-00-00 00:00:00', 8, '0000-00-00 00:00:00', 0, NULL),
(35, 'Null', 8, 2, 'John', 'B', 'chrisj@gmail.com', '550e1bafe077ff0b0b67f4e32f29d759', 'chrisj', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 10, '0000-00-00 00:00:00', 9, '0000-00-00 00:00:00', 0, NULL),
(36, 'Null', 8, 3, 'Steve', 'C', 'chrisk@gmail.com', '550e1bafe077ff0b0b67f4e32f29d760', 'chrisk', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 10, '0000-00-00 00:00:00', 10, '0000-00-00 00:00:00', 0, NULL),
(37, 'Null', 8, 2, 'Josh', 'D', 'chrisl@gmail.com', '550e1bafe077ff0b0b67f4e32f29d761', 'chrisl', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 11, '0000-00-00 00:00:00', 11, '0000-00-00 00:00:00', 0, NULL),
(38, 'Null', 8, 3, 'Tedd', 'A', 'chrisn@gmail.com', '550e1bafe077ff0b0b67f4e32f29d762', 'chrisn', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 12, '0000-00-00 00:00:00', 12, '0000-00-00 00:00:00', 0, NULL),
(39, 'Null', 8, 2, 'Toyy', 'B', 'chris0@gmail.com', '550e1bafe077ff0b0b67f4e32f29d763', 'chris0', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 13, '0000-00-00 00:00:00', 13, '0000-00-00 00:00:00', 0, NULL),
(40, 'Null', 8, 2, 'Yi', 'C', 'chrisp@gmail.com', '550e1bafe077ff0b0b67f4e32f29d764', 'chrisp', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 14, '0000-00-00 00:00:00', 14, '0000-00-00 00:00:00', 0, NULL),
(41, 'Null', 8, 2, 'Peter', 'A', 'chrisq@gmail.com', '550e1bafe077ff0b0b67f4e32f29d765', 'chrisq', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 15, '0000-00-00 00:00:00', 15, '0000-00-00 00:00:00', 0, NULL),
(42, 'Null', 8, 2, 'John', 'B', 'chrisr@gmail.com', '550e1bafe077ff0b0b67f4e32f29d766', 'chrisr', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 16, '0000-00-00 00:00:00', 16, '0000-00-00 00:00:00', 0, NULL),
(43, 'Null', 8, 3, 'Steve', 'C', 'chriss@gmail.com', '550e1bafe077ff0b0b67f4e32f29d767', 'chriss', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 17, '0000-00-00 00:00:00', 17, '0000-00-00 00:00:00', 0, NULL),
(44, 'Null', 8, 2, 'Josh', 'D', 'christ@gmail.com', '550e1bafe077ff0b0b67f4e32f29d768', 'christ', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 18, '0000-00-00 00:00:00', 18, '0000-00-00 00:00:00', 0, NULL),
(45, 'Null', 8, 3, 'Tedd', 'A', 'chrisu@gmail.com', '550e1bafe077ff0b0b67f4e32f29d769', 'chrisu', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 19, '0000-00-00 00:00:00', 19, '0000-00-00 00:00:00', 0, NULL),
(46, 'Null', 8, 3, 'Toyy', 'B', 'chrisv@gmail.com', '550e1bafe077ff0b0b67f4e32f29d770', 'chrisv', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 20, '0000-00-00 00:00:00', 20, '0000-00-00 00:00:00', 0, NULL),
(47, 'Null', 8, 2, 'Yi', 'C', 'chrisw@gmail.com', '550e1bafe077ff0b0b67f4e32f29d771', 'chrisw', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 21, '0000-00-00 00:00:00', 21, '0000-00-00 00:00:00', 0, NULL),
(48, 'Null', 8, 3, 'John', 'D', 'chrisx@gmail.com', '550e1bafe077ff0b0b67f4e32f29d772', 'chrisx', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 22, '0000-00-00 00:00:00', 22, '0000-00-00 00:00:00', 0, NULL),
(49, 'Null', 8, 2, 'Steve', 'D', 'chrisy@gmail.com', '550e1bafe077ff0b0b67f4e32f29d773', 'chrisy', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 23, '0000-00-00 00:00:00', 23, '0000-00-00 00:00:00', 0, NULL),
(50, 'Null', 8, 2, 'Chris', 'A', 'krisha1@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'krisha1', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(51, 'Null', 8, 2, 'Peter', 'B', 'krishb1@gmail.com', '550e1bafe077ff0b0b67f4e32f29d751', 'krishb1', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(52, 'Null', 8, 2, 'John', 'C', 'krishc1@gmail.com', '550e1bafe077ff0b0b67f4e32f29d752', 'krishc1', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(53, 'Null', 8, 2, 'Steve', 'D', 'krishda@gmail.com', '550e1bafe077ff0b0b67f4e32f29d753', 'krishda', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(54, 'Null', 8, 3, 'Josh', 'A', 'krishe@gmail.com', '550e1bafe077ff0b0b67f4e32f29d754', 'krishe', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(55, 'Null', 8, 2, 'Tedd', 'B', 'krishf@gmail.com', '550e1bafe077ff0b0b67f4e32f29d755', 'krishf', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(56, 'Null', 8, 3, 'Toyy', 'C', 'krishg@gmail.com', '550e1bafe077ff0b0b67f4e32f29d756', 'krishg', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(57, 'Null', 8, 2, 'Yi', 'D', 'krishh@gmail.com', '550e1bafe077ff0b0b67f4e32f29d757', 'krishh', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(58, 'Null', 8, 3, 'Peter', 'A', 'krishi@gmail.com', '550e1bafe077ff0b0b67f4e32f29d758', 'krishi', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(59, 'Null', 8, 2, 'John', 'B', 'krishj@gmail.com', '550e1bafe077ff0b0b67f4e32f29d759', 'krishj', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(60, 'Null', 8, 3, 'Steve', 'C', 'krishk@gmail.com', '550e1bafe077ff0b0b67f4e32f29d760', 'krishk', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(61, 'Null', 8, 2, 'Josh', 'D', 'krishl@gmail.com', '550e1bafe077ff0b0b67f4e32f29d761', 'krishl', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(62, 'Null', 8, 3, 'Tedd', 'A', 'krishn@gmail.com', '550e1bafe077ff0b0b67f4e32f29d762', 'krishn', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(63, 'Null', 8, 2, 'Toyy', 'B', 'krish0@gmail.com', '550e1bafe077ff0b0b67f4e32f29d763', 'krish0', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(64, 'Null', 8, 3, 'Yi', 'C', 'krishp@gmail.com', '550e1bafe077ff0b0b67f4e32f29d764', 'krishp', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(65, 'Null', 8, 2, 'Peter', 'A', 'krishq@gmail.com', '550e1bafe077ff0b0b67f4e32f29d765', 'krishq', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(66, 'Null', 8, 3, 'John', 'B', 'krishr@gmail.com', '550e1bafe077ff0b0b67f4e32f29d766', 'krishr', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(67, 'Null', 8, 2, 'Steve', 'C', 'krishs@gmail.com', '550e1bafe077ff0b0b67f4e32f29d767', 'krishs', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(68, 'Null', 8, 2, 'Josh', 'D', 'krisht@gmail.com', '550e1bafe077ff0b0b67f4e32f29d768', 'krisht', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(69, 'Null', 8, 2, 'Tedd', 'A', 'krishu@gmail.com', '550e1bafe077ff0b0b67f4e32f29d769', 'krishu', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(70, 'Null', 8, 2, 'Toyy', 'B', 'krishv@gmail.com', '550e1bafe077ff0b0b67f4e32f29d770', 'krishv', 0, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(71, 'Null', 8, 2, 'Yi', 'C', 'krishw@gmail.com', '550e1bafe077ff0b0b67f4e32f29d771', 'krishw', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(72, 'Null', 8, 2, 'John', 'D', 'krishx@gmail.com', '550e1bafe077ff0b0b67f4e32f29d772', 'krishx', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(73, 'Null', 8, 2, 'Steve', 'D', 'krishy@gmail.com', '550e1bafe077ff0b0b67f4e32f29d773', 'krishy', 1, 0, NULL, 'http://facebook.com', 'http://linkedin.com', 'https://youtube.com', 'https://twitter.com', 'http://medium.com', '', 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', 0, NULL),
(74, NULL, 8, 2, 'srinivas', 'teja', 'srinivas@sorcero.com', '19edacd33ab84209efc96eb76f578f38', 'srinivas', 1, 0, '', '#', '#', '', '', '', '#', 1, '2018-02-21 00:00:00', NULL, NULL, 0, NULL),
(75, NULL, 8, 2, 'Srinivas', 'Teja', 'srinivasteja4@gmail.com', '5651a9adb550a899eb0058a394cb1744', 'srini', 1, 0, '', '', '', '', '', '', '', 1, '2018-02-22 00:00:00', NULL, NULL, 0, NULL),
(76, NULL, 8, 3, 'Srinivas', 'Teja', 'srini@instructor.com', '64c61dda744b311b51c064ea7760a968', 'srinivasI', 1, 0, NULL, '', '', '', '', '', '', 1, '2018-02-22 00:00:00', NULL, NULL, 0, NULL),
(77, NULL, 19, 1, 'jitu nagar', '', 'jitu.maestros@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', 'jitu.maestros', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-06 05:32:48', NULL, NULL, 0, NULL),
(78, NULL, 20, 1, 'jitu7415', '', 'jitenpj74@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', 'maestxno_firt', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-06 06:36:21', NULL, NULL, 0, NULL),
(79, NULL, 19, 2, 'weqe', 'weqweqw', 'jitenpj7wqe4@gmail.com', 'e6c2aed9ea13f563a9dfa19ac22c5be4', 'mohan', 0, 0, NULL, '', 'jitu nagar', '', '', '', '', 1, '2018-03-06 00:00:00', 1, '2018-03-12 00:00:00', 0, NULL),
(80, NULL, 19, 2, 'jitu', 'nagar', 'jitenpj74@gmail.com', '5008e9a6ea2ab282a9d646befa70d53a', 'xc', 1, 0, '', '', 'jitu nagar', '', '', '', '', 1, '2018-03-07 00:00:00', NULL, NULL, 1, '2018-03-12 00:00:00'),
(81, NULL, 19, 3, 'fcvcxvc', 'cxvcxvcxv', 'linexbeen@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'info@wildstock.in', 0, 0, NULL, '', 'jitu nagar', '', '', '', '', 1, '2018-03-07 00:00:00', NULL, NULL, 1, '2018-03-12 00:00:00'),
(82, NULL, 19, 3, 'fcvcxvc', 'cxvcxvcxv', 'linexbeen@gmail.com', 'd41d8cd98f00b204e9800998ecf8427e', 'info@wildstock.in', 0, 0, NULL, '', 'jitu nagar', '', '', '', '', 1, '2018-03-07 00:00:00', NULL, NULL, 1, '2018-03-12 00:00:00'),
(83, NULL, 19, 3, 'jitu', 'nagar', 'jitenpj7hfhfhfhfhfhf4@gmail.com', 'd4be465e906adf3731ab58597fa3b1f7', 'rohitraja', 1, 0, NULL, 'sdsad', 'asdasd', 'sadasdasddssd', 'dsadsadd', 'sadsads', 'sadasd', 1, '2018-03-07 00:00:00', NULL, NULL, 0, NULL),
(84, NULL, 19, 3, 'linexbeen@gmail.com', 'linexbeen@gmail.com', 'linexbeen@gmail.com', 'd745e3ffeb7d2022547fabb46511442a', 'linexbeen', 0, 0, NULL, 'linexbeen@gmail.com', 'linexbeen@gmail.com', 'linexbeen@gmail.com', 'linexbeen@gmail.com', 'linexbeen@gmail.com', 'linexbeen@gmail.com', 1, '2018-03-07 00:00:00', NULL, NULL, 1, '2018-03-12 00:00:00'),
(85, NULL, 19, 3, 'fjjlghgfhgfhfghfghgfh', 'gfhgfhgfhgfhgfhf', 'abcerty@gmail.com', 'e11170b8cbd2d74102651cb967fa28e5', 'hfhfhfhfhfhfh', 1, 0, NULL, 'sadasd', 'jitu nagar', 'sadas', 'dasd', 'dasdsa', 'sadasdsadsa', 1, '2018-03-07 00:00:00', NULL, NULL, 0, NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
