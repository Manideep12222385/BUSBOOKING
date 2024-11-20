-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2024 at 09:46 AM
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
-- Database: `busbooking_ezfare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'Admin@9999');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `passenger_name` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `boarding_place` varchar(255) NOT NULL,
  `Your_destination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `passenger_name`, `telephone`, `email`, `boarding_place`, `Your_destination`) VALUES
(1, 'Akshay', '8523880144', 'akshay0144@gmail.com', 'Warangal', 'Hyderabad'),
(2, 'David', '8309939114', 'nanikathi01@gmail.com', 'warangal', 'Bhupalpally');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(11) NOT NULL,
  `Bus_Name` varchar(255) NOT NULL,
  `Tel` varchar(20) NOT NULL,
  `Driver_Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `Bus_Name`, `Tel`, `Driver_Name`) VALUES
(1, 'Volvo(TG03KG6490)', '9989585851', 'Vinay'),
(2, 'Eicher(TG07FR9879)', '9959030396', 'Devesh'),
(3, 'Benz(TG03AS0144)', '9666749760', 'Shashank'),
(4, 'Leyland(TG03KG8015)', '8919014288', 'Rohith');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` float NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(6) NOT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_number` varchar(16) NOT NULL,
  `exp_month` varchar(20) NOT NULL,
  `exp_year` varchar(20) NOT NULL,
  `cvv` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `name`, `email`, `address`, `city`, `state`, `zip_code`, `card_name`, `card_number`, `exp_month`, `exp_year`, `cvv`) VALUES
(1, 300, 'Akshay', 'akshay0144@gmail.com', 'warangal,2-90/2.', 'warangal', 'Telangana', 225630, 'Akshay Arabelly', '202420282029', 'July', '2028', 224),
(2, 150, 'David', 'nanikathi01@gmail.com', 'warangal,2-91/3', 'warangal', 'Telangana', 225630, 'kathi.david', '196820893965', 'january', '2029', 999);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `id` int(11) NOT NULL,
  `via_city` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `departure_date` date NOT NULL,
  `departure_time` time NOT NULL,
  `cost` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`id`, `via_city`, `destination`, `bus_name`, `departure_date`, `departure_time`, `cost`) VALUES
(1, 'Warangal', 'Hyderabad', 'Volvo(TG03KG6490)', '2024-11-30', '08:00:00', '300'),
(2, 'Warangal', 'Karimnagar', 'Eicher(TG07FR9879)', '2024-11-30', '08:00:00', '300'),
(3, 'Warangal', 'Bhupalpally', 'Benz(TG03AS0144)', '2024-11-30', '08:00:00', '150'),
(4, 'Warangal', 'Khammam', 'Leyland(TG03KG8015)', '2024-11-30', '08:00:00', '250');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` bigint(25) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `First_Name`, `Last_Name`, `username`, `email`, `password`) VALUES
(6, 2915, 'Akshay', 'Arabelly', 'Akshay', 'akshay0144@gmail.com', 'Akshay@0369'),
(7, 4488137352564, 'David', 'kathi', 'David', 'nanikathi01@gmail.com', 'David@0144');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
