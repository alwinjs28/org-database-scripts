-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2022 at 11:54 AM
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
-- Database: `org_transport_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_fees`
--

CREATE TABLE `bus_fees` (
  `bus_fees_id` bigint(20) NOT NULL,
  `passenger_id` bigint(20) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus_fees`
--

INSERT INTO `bus_fees` (`bus_fees_id`, `passenger_id`, `total_amount`, `paid_amount`, `due_amount`, `paid_date`) VALUES
(1, 1, 4000, 7500, 3000, '2022-12-21 14:10:37'),
(2, 2, 5000, 3000, 2000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` bigint(20) NOT NULL,
  `passenger_type` varchar(30) DEFAULT NULL,
  `id_number` int(11) DEFAULT NULL,
  `passenger_name` varchar(30) DEFAULT NULL,
  `trip_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `passenger_type`, `id_number`, `passenger_name`, `trip_id`) VALUES
(1, 'Student', 1, NULL, 1),
(4, 'staff', 4, 'Aswin', 2),
(5, 'Student', 2, NULL, 3),
(6, 'Student', 6, 'Jasfer', 4),
(7, 'Staff', 2, NULL, 5),
(8, '', 3, NULL, 6),
(9, 'Student', 10, 'Vishnu', 7),
(10, 'staff', 2, 'Abish', 8),
(11, 'staff', 3, 'Albin', 9);

-- --------------------------------------------------------

--
-- Table structure for table `trip_price`
--

CREATE TABLE `trip_price` (
  `trip_price_id` bigint(20) NOT NULL,
  `trip_id` bigint(20) DEFAULT NULL,
  `passenger_type` varchar(30) DEFAULT NULL,
  `total_amount` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip_price`
--

INSERT INTO `trip_price` (`trip_price_id`, `trip_id`, `passenger_type`, `total_amount`) VALUES
(1, 1, 'student', 4000),
(2, 2, 'staff', 4500),
(3, 3, 'staff', 3800),
(4, 5, 'student', 3200);

-- --------------------------------------------------------

--
-- Table structure for table `trip_table`
--

CREATE TABLE `trip_table` (
  `trip_id` bigint(20) NOT NULL,
  `vehicle_id` bigint(20) DEFAULT NULL,
  `trip_name` varchar(30) DEFAULT NULL,
  `from_place` varchar(30) DEFAULT NULL,
  `to_place` varchar(30) DEFAULT NULL,
  `number_of_km` double DEFAULT NULL,
  `no_of_passenger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trip_table`
--

INSERT INTO `trip_table` (`trip_id`, `vehicle_id`, `trip_name`, `from_place`, `to_place`, `number_of_km`, `no_of_passenger`) VALUES
(1, 1, 'Kerala Trip', 'Karungal', 'Munnar', 260, 30),
(2, 1, 'Banglore Trip', 'Karungal', 'Mysore Palace', 560.8, 28);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` bigint(20) NOT NULL,
  `vehicle_name` varchar(30) DEFAULT NULL,
  `vehicle_type` varchar(50) DEFAULT NULL,
  `vehicle_number` varchar(20) DEFAULT NULL,
  `vehicle_seating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_name`, `vehicle_type`, `vehicle_number`, `vehicle_seating`) VALUES
(1, 'BUS', 'Students', 'TN 75 AB 3127', 48),
(2, 'Car', 'Staff', 'TN 75 AB 2111', 5),
(3, 'Auto', 'Students', 'TN 75 AF 3267', 3),
(4, 'Tempo', 'Truck', 'TN 75 Ar 3267', 3),
(5, 'Omini Bus', 'Students', 'TN 75 AV 2892', 25),
(6, 'Bike', 'Office', 'TN 75 AA 3452', 2),
(7, 'Van', 'Students', 'TN 75 AB 3825', 21),
(8, 'Mini Van', 'Students', 'TN 75 AB 9034', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus_fees`
--
ALTER TABLE `bus_fees`
  ADD PRIMARY KEY (`bus_fees_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `trip_price`
--
ALTER TABLE `trip_price`
  ADD PRIMARY KEY (`trip_price_id`);

--
-- Indexes for table `trip_table`
--
ALTER TABLE `trip_table`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus_fees`
--
ALTER TABLE `bus_fees`
  MODIFY `bus_fees_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passenger_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trip_price`
--
ALTER TABLE `trip_price`
  MODIFY `trip_price_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trip_table`
--
ALTER TABLE `trip_table`
  MODIFY `trip_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
