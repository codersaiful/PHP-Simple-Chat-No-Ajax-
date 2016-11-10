-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 26, 2016 at 01:02 PM
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
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `text`, `name`, `date`) VALUES
(1, 'Hello, How are you?', 'Saiful Islam', '2016-07-26 11:46:57'),
(2, 'Yes, I am ok. what about u?', 'Rahim', '2016-07-26 12:16:55'),
(3, 'hello', 'Saiful Islam', '2016-07-26 12:41:42'),
(4, 'hello', 'Saiful', '2016-07-26 12:55:36'),
(5, 'ETC TESTING\r\n', 'Mr. Omuk Khan', '2016-07-26 13:00:07');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
