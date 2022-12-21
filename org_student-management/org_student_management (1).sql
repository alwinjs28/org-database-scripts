-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 11:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `org_student_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `address_line1` varchar(30) DEFAULT NULL,
  `address_line2` varchar(30) DEFAULT NULL,
  `address_district` varchar(30) DEFAULT NULL,
  `address_state` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `address_line1`, `address_line2`, `address_district`, `address_state`) VALUES
(1, 'Kalladai', 'karungal', 'Kanyakumari', 'TamilNadu'),
(2, 'poottety', 'karungal', 'kanyakumari', 'Tamilnadu'),
(3, 'Amsi', 'Thangapattanam', 'kanyakumari', 'Tamilnadu');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` bigint(20) NOT NULL,
  `book_name` varchar(20) DEFAULT NULL,
  `book_auther` varchar(30) DEFAULT NULL,
  `book_published` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `book_name`, `book_auther`, `book_published`) VALUES
(1, 'Tamil', 'Sudher', '2022-10-18'),
(4, 'Physics', 'Anish', '2022-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`) VALUES
(1, 'Sudher'),
(3, 'Kumar'),
(5, 'string'),
(6, 'string'),
(7, 'Hellow');

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `student_roll_no` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `paid_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`student_roll_no`, `amount`, `paid_status`) VALUES
(21, 3000, 'NOT PAID'),
(2, 3000, 'NOT PAID'),
(8, 3000, 'NOT PAID'),
(15, 5000, 'PAID'),
(18, 8000, 'PAID');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) DEFAULT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_age` int(11) DEFAULT NULL,
  `number_of_year_experience` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_name`, `staff_age`, `number_of_year_experience`) VALUES
(1, 'Alwin', 34, 3),
(2, 'David', 26, 1.7),
(2, 'Jebin', 26, 1.7),
(1, 'Kumar', 34, 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(20) DEFAULT NULL,
  `student_age` int(11) DEFAULT NULL,
  `student_blood_group` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `student_name`, `student_age`, `student_blood_group`) VALUES
(1, 'Jebin', 15, 'B+'),
(2, 'Jenish S', 14, 'A+'),
(3, 'Ajin', 16, 'AB+'),
(4, 'Anish', 14, 'AB-'),
(5, 'Abish', 13, 'O+'),
(6, 'Jasfer', 15, 'O+'),
(7, 'Ajin', 13, 'B-'),
(8, 'Vinith', 12, 'A+'),
(9, 'Vibin', 16, 'A-'),
(10, 'Vishnu', 13, 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `student_address`
--

CREATE TABLE `student_address` (
  `student_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `student_address_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_address`
--

INSERT INTO `student_address` (`student_id`, `address_id`, `student_address_id`) VALUES
(1, 17, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_address`
--
ALTER TABLE `student_address`
  ADD PRIMARY KEY (`student_address_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_address`
--
ALTER TABLE `student_address`
  MODIFY `student_address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
