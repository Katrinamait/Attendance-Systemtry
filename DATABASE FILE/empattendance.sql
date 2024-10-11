-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2024 at 04:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `empattendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attedance`
--

CREATE TABLE `attedance` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `morning_time_in` time DEFAULT NULL,
  `morning_time_out` time DEFAULT NULL,
  `login_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attedance`
--

INSERT INTO `attedance` (`id`, `fullname`, `morning_time_in`, `morning_time_out`, `login_date`) VALUES
(1, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(2, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(3, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(4, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(5, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(6, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(7, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(8, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(9, 'Jaomalala', '00:00:00', '00:00:00', '2024-10-07'),
(10, 'Jaomalala', '00:00:00', '00:00:00', '2024-10-07'),
(11, 'lancemalala', '00:00:00', '00:00:00', '2024-10-07'),
(12, 'lancemalala', '22:40:40', '22:41:18', '2024-10-07'),
(13, 'lancemalala', '22:54:31', '22:54:35', '2024-10-07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `position` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `position`, `password`, `confirm_password`) VALUES
(1, 'lancemalala', 'LanceDoronioManuel', 'CEO', '4297f44b13955235245b2497399d7a93', ''),
(2, 'sas', 'asa', 'Admin', 'a8a64cef262a04de4872b68b63ab7cd8', ''),
(6, 'Jaomalala', 'Jaomalala', 'Employee', '4297f44b13955235245b2497399d7a93', '4297f44b13955235245b2497399d7a93');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attedance`
--
ALTER TABLE `attedance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attedance`
--
ALTER TABLE `attedance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
