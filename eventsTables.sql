-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 19, 2017 at 09:47 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dhwani`
--

-- --------------------------------------------------------

--
-- Table structure for table `eventsTables`
--

CREATE TABLE `eventsTables` (
  `eventId` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `venue` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `eventsTables`
--

INSERT INTO `eventsTables` (`eventId`, `name`, `day`, `time`, `venue`, `prize`) VALUES
(1, 'CET Night ', 'Friday', '7:30 pm', 'Dhwani Stage', 0),
(4, 'Treasure Hunt ', 'Sat/Sun', 'All Day', 'Trivandrum', 15000),
(6, 'Film Festical ', 'Saturday', 'All Day', 'CGPU', 5000),
(7, 'Crime Scene ', 'Saturday', 'All Day', 'Campus', 4000),
(8, 'Dhwani Idol', 'Saturday', '9:00 am', 'Cetaa Hall', 10000),
(9, 'Dance Off ', 'saturday', '10:00 am', 'Walkway', 7000),
(10, 'mimicry', 'saturday', '10:00 am', 'Seminar Hall', 3000),
(11, 'English Debate', 'Saturday', '10:00 am', 'Seminar Hall', 3000),
(12, 'Mono Act', 'Saturday', '12:00 pm', 'Seminar Hall', 4000),
(13, 'Jam', 'Saturday', '1:00 pm', 'Seminar Hall', 5000),
(14, 'Duet', 'Saturday', '2:00 pm', 'DJ hall', 10000),
(15, 'Unplugged', 'Saturday', '2:00 pm', 'Golden Walkway', 15000),
(16, 'Collage ', 'Saturday', '3:00 pm', 'Archi Corner', 3000),
(17, 'Face Painting', 'Saturday', '4:00 pm', 'Archi Corner', 3000),
(18, 'Mime', 'Saturday', '4:00 pm', 'DJ hall', 10000),
(19, 'Street play', 'Saturday', '4:00 pm', 'Archi Corner', 10000),
(20, 'Choreo Night', 'Saturday', '6:00 pm', 'Dhwani Stage', 60000),
(21, 'Fashion show', 'Saturday', '8:00 pm', 'Dhwani Stage', 50000),
(22, 'Cricket', 'Saturday', 'Beforenoon', 'College Ground', 12000),
(23, 'Badminton', 'Saturday', 'Beforenoon', 'Indoor Stadium', 10000),
(24, 'Decibels', 'Sunday', '9:00 am', 'Dhwani Stage', 70000),
(25, 'Mal Debate', 'Sunday', '10:00 am', 'Golden Walkway', 7000),
(26, 'Western Solo', 'Sunday', '12:00 pm', 'Cetaa Hall', 6000),
(27, 'Sketching', 'Sunday', '3:00 pm', 'Archi Corner', 3000),
(28, 'Colouring', 'Sunday', '4:00 pm', 'Archi Corner', 3000),
(29, 'Demo', 'Sunday', '4:00 pm', 'DJ ', 20000),
(30, 'Dumb Charades ', 'Sunday', '4:00 pm', 'Archi Corner', 3000),
(31, 'Persona', 'Sunday', '6:00 pm', 'Dhwani Stage', 10000),
(32, 'Football', 'Sunday', 'Beforenoon', 'College Ground', 15000),
(33, 'Table tennis', 'Sunday', 'Beforenoon', 'Indoor Stadium', 10000),
(34, 'Chess', 'Sunday', 'Beforenoon', 'Golden Walkway', 25000),
(35, 'Volleyball', 'Sunday', 'Beforenoon', 'Central Ground', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `eventsTables`
--
ALTER TABLE `eventsTables`
  ADD PRIMARY KEY (`eventId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `eventsTables`
--
ALTER TABLE `eventsTables`
  MODIFY `eventId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
