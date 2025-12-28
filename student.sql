-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2025 at 06:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `ord_num` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_id`, `ord_num`, `id`) VALUES
(2, 20, 700),
(3, 80, 309);

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `branch` varchar(20) DEFAULT 'CSE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `lname`, `fname`, `age`, `branch`) VALUES
(101, 'abc', '219', 19, 'CSE'),
(103, 'jalla', '209', 19, 'CSE'),
(104, 'loo', '700', 19, 'CSE'),
(109, 'oops', '309', 29, 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `fName` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `age` int(10) DEFAULT NULL CHECK (`age` > 18),
  `section` char(1) DEFAULT 'A',
  `country` varchar(20) DEFAULT 'INDIA'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`fName`, `lname`, `id`, `age`, `section`, `country`) VALUES
('deg', 'oops', 309, 29, 'A', 'INDIA'),
('www', 'google', 407, 80, 'A', 'INDIA'),
('ggg', 'hhh', 417, 50, 'A', 'INDIA'),
('uoo', 'loo', 700, 19, 'A', 'INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--
-- Error reading structure for table student.persons: #1932 - Table &#039;student.persons&#039; doesn&#039;t exist in engine
-- Error reading data for table student.persons: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `student`.`persons`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `stud`
--

CREATE TABLE `stud` (
  `Name` varchar(20) DEFAULT NULL,
  `Id` int(11) NOT NULL,
  `city` varchar(20) DEFAULT NULL,
  `stipend` float DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `section` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mo_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stud`
--

INSERT INTO `stud` (`Name`, `Id`, `city`, `stipend`, `branch`, `section`, `dob`, `mo_no`) VALUES
('Lavanya', 546, 'kmm', 20000, 'CSE', 'A', NULL, NULL),
('kushala', 547, 'hyd', 40000, 'CSE', 'A', NULL, NULL),
('suma', 809, 'wgl', 35000, 'CSE', 'A', NULL, NULL),
('Ram', 899, 'wgl', 30000, 'CSE', 'A', NULL, NULL),
('seetha', 990, 'hyd', NULL, 'CSE', 'A', NULL, NULL),
('geetha', 991, 'mhmb', 40000, 'mech', 'A', '2000-07-08', '9898900000');

-- --------------------------------------------------------

--
-- Table structure for table `stude`
--

CREATE TABLE `stude` (
  `Name` varchar(20) DEFAULT NULL,
  `Id` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `stipend` float DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stude`
--

INSERT INTO `stude` (`Name`, `Id`, `city`, `stipend`, `branch`) VALUES
('Lavanya', 546, 'kmm', 20000, 'CSE'),
('kushala', 547, 'hyd', 40000, 'CSE'),
('Ram', 899, 'wgl', 30000, 'CSE'),
('suma', 809, 'wgl', 35000, 'CSE'),
('seetha', 990, 'hyd', NULL, 'CSE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `FK_PersonOrder` (`id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD UNIQUE KEY `UC_Person` (`id`,`lname`),
  ADD UNIQUE KEY `uc_parent_lname` (`lname`),
  ADD UNIQUE KEY `fname` (`fname`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stud`
--
ALTER TABLE `stud`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_PersonOrder` FOREIGN KEY (`id`) REFERENCES `person` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
