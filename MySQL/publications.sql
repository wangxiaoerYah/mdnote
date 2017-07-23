-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2017 at 12:16 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `publications`
--
CREATE DATABASE IF NOT EXISTS `publications` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `publications`;

-- --------------------------------------------------------

--
-- Table structure for table `classics`
--

CREATE TABLE `classics` (
  `author` varchar(128) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `category` varchar(16) DEFAULT NULL,
  `year` smallint(6) DEFAULT NULL,
  `isbn` char(13) DEFAULT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classics`
--

INSERT INTO `classics` (`author`, `title`, `category`, `year`, `isbn`, `id`) VALUES
('Mark Twain', 'The Adventures of Tom Sawyer', 'Fiction', 1876, '9781598184891', 1),
('Jane Austen', 'Pride and Prejudice', 'Fiction', 1811, '9780582506206', 2),
('Charles Darwin', 'The Origin of Species', 'Non-Fiction', 1856, '9780517123201', 3),
('Charles Dickens', 'The Old Curiosity Shop', 'Fiction', 1841, '9780099533474', 4),
('William Shakespeare', 'Romeo and Juliet', 'Play', 1594, '9780192814968', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classics`
--
ALTER TABLE `classics`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classics`
--
ALTER TABLE `classics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
