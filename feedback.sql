-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 18, 2021 at 08:48 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `experience` text NOT NULL,
  `service` text NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `name`, `email`, `contact`, `experience`, `service`, `feedback`) VALUES
(1, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'web', 'hiii'),
(2, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'web', 'hiii'),
(3, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'web', 'hiii'),
(4, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'web', 'hiii'),
(5, 'aishu', 'aishux07@gmail.com', '8169768607', 'Good', 'app', 'hjjkkk'),
(6, 'payal', 'aishux07@gmail.com', '8169768607', 'Good', 'App Development', 'wowww'),
(7, 'payal', 'aishux07@gmail.com', '8169768607', 'Good', 'App Development', 'wowww'),
(8, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'Web Development', 'hiii omgg'),
(9, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'Web Development', 'hiii omgg'),
(10, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'App Development', 'jjj'),
(11, 'Aishwarya Nathani', 'aishux07@gmail.com', '8169768607', 'Good', 'App Development', 'jjj'),
(12, 'last', 'jsjsjjjs', '8169768607', 'Good', 'App Development', 'hhehhue');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
