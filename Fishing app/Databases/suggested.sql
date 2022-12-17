-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2022 at 03:21 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suggested`
--

-- --------------------------------------------------------

--
-- Table structure for table `suggested_lure`
--

CREATE TABLE `suggested_lure` (
  `id` int(11) NOT NULL,
  `fish` varchar(50) NOT NULL,
  `lure` varchar(50) NOT NULL,
  `bodyofwater` varchar(6) DEFAULT NULL,
  `waterfeature1` varchar(50) NOT NULL,
  `waterfeature2` varchar(50) NOT NULL,
  `season` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suggested_lure`
--

INSERT INTO `suggested_lure` (`id`, `fish`, `lure`, `bodyofwater`, `waterfeature1`, `waterfeature2`, `season`) VALUES
(2, 'Trout', 'Plug', 'Lake', 'Rocks', 'Rocks', 'Winter'),
(3, 'Trout', 'Spinner', 'Stream', 'Slow', 'Shelf', 'Summer'),
(4, 'Trout', 'Jig', 'Lake', 'Ice', 'Slow', 'Winter'),
(5, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Rocks', 'Summer'),
(6, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Rocks', 'Winter'),
(7, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Rocks', 'Fall'),
(8, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Rocks', 'Spring'),
(9, 'Bass', 'Plug', 'Lake', 'Lily', 'Top', 'Spring'),
(10, 'PanFish', 'Jig', 'Lake', 'Sandy', 'RockShelf', 'Summer'),
(11, 'Trout', 'Plug', 'River', 'Wing', 'Wing', 'Select a season'),
(12, 'Bass', 'Spoon', 'River', 'Rocks', 'RockShelf', 'Fall'),
(13, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Rocks', 'Summer'),
(14, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Rocks', 'Spring'),
(15, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Rocks', 'Fall'),
(16, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Rocks', 'Winter'),
(17, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Sandy', 'Summer'),
(18, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Sandy', 'Spring'),
(19, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Sandy', 'Fall'),
(20, 'Trout', 'Spinner', 'Stream', 'Rocks', 'Sandy', 'Winter'),
(21, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Summer'),
(22, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Spring'),
(23, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Fall'),
(24, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Winter'),
(25, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Summer'),
(26, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Spring'),
(27, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Fall'),
(28, 'Trout', 'Spinner', 'Stream', 'Sandy', 'Sandy', 'Winter'),
(29, 'Northern', 'Jig', 'Pond', 'Weeds', 'Bottom', 'Spring'),
(30, 'Bass', 'Spoon', 'Pond', 'Lily', 'Weeds', 'Spring');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `suggested_lure`
--
ALTER TABLE `suggested_lure`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `suggested_lure`
--
ALTER TABLE `suggested_lure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
