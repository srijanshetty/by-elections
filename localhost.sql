-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2014 at 02:46 AM
-- Server version: 5.5.38
-- PHP Version: 5.5.16-1+deb.sury.org~precise+1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `by_elections`
--
CREATE DATABASE `by_elections` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `by_elections`;

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE IF NOT EXISTS `candidates` (
  `id` int(11) NOT NULL,
  `Name` text NOT NULL,
  `post` text NOT NULL,
  `pic` text NOT NULL,
  `votes1` int(11) NOT NULL,
  `votes2` int(11) NOT NULL,
  `votes3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `Name`, `post`, `pic`, `votes1`, `votes2`, `votes3`) VALUES
(1, 'Ashutosh Kumar', 'Senator, UG Y14', '14149_0.jpg', 0, 0, 0),
(3, 'Harshit Omar', 'Senator, UG Y14', '14267_0.jpg', 0, 0, 0),
(4, 'Atulya Manuraj', 'Senator, UG Y14', '14154_0.jpg', 0, 0, 0),
(5, 'Prateek Jain', 'Senator, UG Y14', '14489_0.jpg', 0, 0, 0),
(6, 'Rhic Chowdhury', 'Senator, UG Y14', '14546_0.jpg', 0, 0, 0),
(7, 'Shivam Mishra', 'Senator, UG Y14', '14651_0.jpg', 0, 0, 0),
(8, 'Hari Shankar', 'Senator, UG Y14', '14261_0.jpg', 0, 0, 0),
(9, 'Nikhil Bansal', 'Senator, UG Y14', '14424_0.jpg', 0, 0, 0),
(10, 'Gaurav Seth', 'Senator, UG Y14', '14242_0.jpg', 0, 0, 0),
(11, 'Dhruv Bhanot', 'Senator, UG Y14', '14221_0.jpg', 0, 0, 0),
(12, 'Arshil Abbas', 'Senator, UG Y14', '14137_0.jpg', 0, 0, 0),
(13, 'Kshitij Yadav', 'Senator, UG Y14', '14332_0.jpg', 0, 0, 0),
(14, 'Pooja Yadav', 'Senator, UG Y14', '14469_0.jpg', 0, 0, 0),
(15, 'Mayank Varshney', 'Senator, UG Y14', '14379_0.jpg', 0, 0, 0),
(16, 'Malla. Pratyusha', 'Senator, UG Y14', '14361_0.jpg', 0, 0, 0),
(17, 'Mitul Wankhede', 'Senator, UG Y14', '14387_0.jpg', 0, 0, 0),
(18, 'Ashutosh Verma', 'Senator, UG Y11', '11169_0.jpg', 0, 0, 0),
(19, 'Rishikesh Mishra', 'Senator, UG Y11', '11601_0.jpg', 0, 0, 0),
(20, 'Abhishek Singh', 'Senator, UG Y11', '11029_0.jpg', 0, 0, 0),
(21, 'Iffat Siddiqui', 'Senator, UG Y11', '11315_0.jpg', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nopref`
--

CREATE TABLE IF NOT EXISTS `nopref` (
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE IF NOT EXISTS `votes` (
  `votecount` int(11) DEFAULT NULL,
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`votecount`, `post`) VALUES
(0, 'Senator, UG Y11'),
(0, 'Senator, UG Y14');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
