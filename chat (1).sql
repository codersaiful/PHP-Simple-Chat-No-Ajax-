-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2016 at 01:12 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat`
--
CREATE DATABASE IF NOT EXISTS `chat` DEFAULT CHARACTER SET utf16 COLLATE utf16_general_ci;
USE `chat`;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(33) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `mobile_number` varchar(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1 for active, 0 for inactive',
  `last_status` varchar(33) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `mobile_number`, `status`, `last_status`) VALUES
(3, 'Mr. Robin', '11111111111', 0, ''),
(4, '5 GB Special', '44444444444', 0, ''),
(5, 'Saiful', '78787878787', 0, ''),
(6, 'Saiful', '01789784512', 0, '1469969858'),
(7, 'Mr. Robin', '01724025412', 0, '1230770218'),
(8, 'Nirobuddin', '01234567897', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `text`, `name`, `date`) VALUES
(1, 'Hello, How are you?', 'Saiful Islam', '2016-07-26 11:46:57'),
(2, 'Yes, I am ok. what about u?', 'Rahim', '2016-07-26 12:16:55'),
(3, 'hello', 'Saiful Islam', '2016-07-26 12:41:42'),
(4, 'hello', 'Saiful', '2016-07-26 12:55:36'),
(5, 'ETC TESTING\r\n', 'Mr. Omuk Khan', '2016-07-26 13:00:07'),
(6, 'Hello', 'Rahimuddin', '2016-07-28 11:36:58'),
(7, 'Hello, Hi', 'Saiful Islam', '2016-07-28 11:37:12'),
(8, 'sddd', 'Saiful', '2016-07-28 12:15:12'),
(9, 'sdfsdfsdf', 'Mr. Robin', '2016-07-28 12:51:11'),
(10, '45445', 'Saiful', '2016-07-28 12:59:00'),
(11, '54545454545', 'Saiful', '2016-07-28 12:59:04'),
(12, 'hello', 'Saiful', '2016-07-28 13:02:09'),
(13, 'Hello', 'Saiful', '2016-07-28 13:02:46'),
(14, 'Hslskjd', 'Saiful', '2016-07-28 13:03:00'),
(15, 'Hello', 'Saiful', '2009-01-01 00:08:49'),
(16, 'Hello ', 'Nirobuddin', '2009-01-01 00:12:01'),
(17, 'ami valo achi', 'Nirobuddin', '2009-01-01 00:12:09'),
(18, 'Hello', 'Mr. Robin', '2016-07-31 13:03:23'),
(19, 'Kemon ache sobai', 'Mr. Robin', '2016-07-31 13:03:34'),
(20, '&#2461;&#2455;&#2460;&#2455;', 'Mr. Robin', '2016-07-31 13:05:21'),
(21, 'sfsfsdf', 'Saiful', '2016-07-31 13:05:32'),
(22, '&#2438;&#2478;&#2494;&#2480; &#2488;&#2507;&#2472;&#2494;&#2480; &#2476;&#2494;&#2434;&#2482;&#2494;', 'Saiful', '2016-07-31 13:06:05'),
(23, '&#2468;&#2507;&#2478;&#2494;&#2527; &#2477;&#2494;&#2482; &#2476;&#2494;&#2488;&#2495;', 'Mr. Robin', '2016-07-31 13:06:28'),
(24, '&#2441;&#2441;&#2439;&#2527; &#2472;&#2497;&#2439;&#2527; &#2437;&#2439;&#2527;&#2495;', 'Mr. Robin', '2016-07-31 13:07:35');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
