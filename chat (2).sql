-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2016 at 07:16 AM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `mobile_number`, `status`, `last_status`) VALUES
(3, 'Mr. Robin', '11111111111', 0, ''),
(4, '5 GB Special', '44444444444', 0, ''),
(5, 'Saiful', '78787878787', 0, ''),
(6, 'Saiful', '01789784512', 0, '1470207367'),
(7, 'Mr. Robin', '01724025412', 0, '1230770218'),
(8, 'Nirobuddin', '01234567897', 0, ''),
(9, 'Ashraful', '01234567891', 1, '1470208180');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) NOT NULL,
  `name` varchar(30) NOT NULL,
  `date` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf16 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `text`, `name`, `date`) VALUES
(26, '45454', 'Mr Rahimuddin', '1470207071'),
(27, '44', 'Mr Rahimuddin', '1470207078'),
(28, 'hello slslls slslls', 'Mr Rahimuddin', '1470207562'),
(29, 'hello eta notun lekha', 'Ashraful', '1470207596'),
(30, 'hi hello', 'Mr Rahimuddin', '1470207709'),
(31, 'gfhfgdfgdf', 'Mr Rahimuddin', '1470208335'),
(32, 'sddfds', 'Mr Rahimuddin', '1470208428');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
