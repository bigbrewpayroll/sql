-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2024 at 04:17 PM
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
-- Database: `payrolldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `username`, `email`, `password`, `gender`) VALUES
(1, 'admin', 'admintest', 'admintest@gmail.com', '$2y$10$atvoAPlQGAleWzxv6gkcUOZw/CczB4H7owdT60od7F46YvgJi62US', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `morning_time_in` time DEFAULT NULL,
  `morning_time_out` time DEFAULT NULL,
  `afternoon_time_in` time DEFAULT NULL,
  `afternoon_time_out` time DEFAULT NULL,
  `morning_total_hours` decimal(5,2) DEFAULT NULL,
  `afternoon_total_hours` decimal(5,2) DEFAULT NULL,
  `overall_total_hours` decimal(5,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `overtime_time_in` time DEFAULT NULL,
  `overtime_time_out` time DEFAULT NULL,
  `overtime_total_hours` decimal(5,2) DEFAULT NULL,
  `total_paid` decimal(10,0) DEFAULT NULL,
  `overtime_cost` decimal(10,0) DEFAULT NULL,
  `deduction` decimal(10,0) DEFAULT NULL,
  `applied_OT` enum('','Overtime','Undertime','') NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `employee_id`, `name`, `morning_time_in`, `morning_time_out`, `afternoon_time_in`, `afternoon_time_out`, `morning_total_hours`, `afternoon_total_hours`, `overall_total_hours`, `status`, `overtime_time_in`, `overtime_time_out`, `overtime_total_hours`, `total_paid`, `overtime_cost`, `deduction`, `applied_OT`, `created_at`) VALUES
(48, 17, 'Abrajano, Paulo O.', '08:00:01', '12:00:01', '13:00:02', '20:20:10', 4.00, 7.34, 11.34, 'Time Out', NULL, NULL, NULL, 400, NULL, -200, 'Undertime', '2024-04-24 08:00:01'),
(49, 18, 'Acabo, Paul John Z.', NULL, NULL, '14:32:35', '15:12:01', NULL, 0.66, 0.66, 'Time Out', NULL, NULL, NULL, 37, NULL, -413, 'Undertime', '2024-04-25 14:32:35'),
(50, 17, 'Abrajano, Paulo O.', '08:53:35', NULL, NULL, NULL, NULL, NULL, 0.00, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, -400, 'Undertime', '2024-04-26 08:53:35'),
(51, 18, 'Acabo, Paul John Z.', '08:54:04', NULL, NULL, NULL, NULL, NULL, 0.00, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, -450, 'Undertime', '2024-04-26 08:54:04'),
(52, 17, 'Abrajano, Paulo O.', '08:02:32', NULL, '13:10:19', '17:53:43', NULL, 4.72, 4.72, 'Time Out', NULL, NULL, NULL, 236, NULL, -164, 'Undertime', '2024-04-27 08:02:32'),
(53, 19, 'Aquino, Leonard M', '08:00:01', '12:00:01', '13:00:01', '17:00:01', 4.00, 4.00, 8.00, 'Time Out', NULL, NULL, NULL, 500, NULL, -250, 'Undertime', '2024-04-28 08:00:01'),
(54, 35, 'Reid, James P.', '08:30:01', '12:00:08', '13:00:08', '17:00:06', 3.50, 4.00, 7.50, 'Time Out', NULL, NULL, NULL, 449, NULL, -30, 'Undertime', '2024-04-28 08:30:01'),
(58, 19, 'Aquino, Leonard M', '08:00:22', '12:00:11', '13:00:16', '17:03:03', 4.00, 4.05, 8.05, 'Time Out', NULL, NULL, NULL, 500, NULL, -250, 'Undertime', '2024-04-29 08:00:22'),
(59, 37, 'Reid, James P.', '08:22:34', NULL, NULL, NULL, NULL, NULL, 0.00, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, -480, 'Undertime', '2024-04-29 08:22:34'),
(60, 38, 'Padilla, Daniel F.', NULL, NULL, '13:00:40', '17:03:27', NULL, 4.05, 4.05, 'Time Out', NULL, NULL, NULL, 0, NULL, NULL, '', '2024-04-29 13:00:40'),
(61, 17, 'Abrajano, Paulo O.', NULL, NULL, '16:40:25', '16:40:35', NULL, 0.00, 0.00, 'Time Out', NULL, NULL, NULL, 0, NULL, -400, 'Undertime', '2024-04-29 16:40:25'),
(62, 19, 'Aquino, Leonard M', NULL, NULL, '15:58:54', NULL, NULL, NULL, 0.00, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, -500, 'Undertime', '2024-04-30 15:58:54'),
(63, 19, 'Aquino, Leonard M', NULL, NULL, '16:05:28', NULL, NULL, NULL, 0.00, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, -500, 'Undertime', '2024-04-30 16:05:28'),
(64, 37, 'Reid, James P.', NULL, NULL, '16:05:40', NULL, NULL, NULL, 0.00, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, -480, 'Undertime', '2024-04-30 16:05:40'),
(65, 38, 'Padilla, Daniel F.', NULL, NULL, '13:05:50', '13:09:34', NULL, 0.06, 0.06, 'Time Out', NULL, NULL, NULL, 0, NULL, NULL, '', '2024-05-01 13:05:50'),
(66, 38, 'Padilla, Daniel F.', NULL, NULL, '13:07:23', NULL, NULL, NULL, 0.06, '<span style=\"color: red;\">Time In (Late)</span>', NULL, NULL, NULL, 0, NULL, NULL, '', '2024-05-01 13:07:23'),
(67, 37, 'Reid, James P.', NULL, NULL, '19:40:13', '19:40:57', NULL, 0.01, 0.01, 'Time Out', NULL, NULL, NULL, 1, NULL, -479, 'Undertime', '2024-05-02 19:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `dtr`
--

CREATE TABLE `dtr` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `morning` datetime DEFAULT NULL,
  `afternoon` datetime DEFAULT NULL,
  `total_hours` time DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `middle_initial` varchar(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `employee_id` varchar(10) DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `barangay` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) NOT NULL,
  `start_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `lname`, `fname`, `middle_initial`, `name`, `address`, `employee_id`, `mobile_number`, `barangay`, `street`, `city`, `postal_code`, `gender`, `department`, `salary`, `start_date`) VALUES
(19, 'Aquinio', 'Leonard', 'M', 'Aquino, Leonard M', 'maasin, caragasan, zamboan, 70001', '202102097', 9173070294, 'maasin', 'caragasan', 'zamboan', '7000', 'male', 'Barista', 500.00, '2024-04-18'),
(37, 'Reid', 'James', 'P.', 'Reid, James P.', 'ABS CBN, GMA, TV5, 7000', '2021022', 123123123001, 'ABS CBN', 'GMA', 'TV5', '70000', '', 'Cook', 480.00, '2024-04-28'),
(40, 'Abrajano', 'John Paulo ', 'O.', 'Abrajano, John Paulo  O.', 'Poblacion, Purok Orchids, Ipil, Zamboanga Sibugay, 7001', '2021022', 9682079765, 'Poblacion', 'Purok Orchids', 'Ipil, Zamboanga Sibugay', '7001', 'male', 'Cashier', 450.00, '2024-05-02');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_path` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `employee_id`, `image_name`, `image_path`, `created_at`) VALUES
(690, 12, '6620903d174a9.png', 'images/6620903d174a9.png', '2024-04-18 03:15:09'),
(691, 13, '66208f1e9c56f.png', 'images/66208f1e9c56f.png', '2024-04-18 03:10:22'),
(692, 14, '6620606002a69.png', 'images/6620606002a69.png', '2024-04-17 23:50:56'),
(693, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(694, 18, '662f1cc61ff08.png', 'images/662f1cc61ff08.png', '2024-04-29 04:06:30'),
(695, 18, '662f1cc61ff08.png', 'images/662f1cc61ff08.png', '2024-04-29 04:06:30'),
(696, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(697, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(698, 19, '6630a6485b027.png', 'images/6630a6485b027.png', '2024-04-30 08:05:28'),
(699, 18, '662f1cc61ff08.png', 'images/662f1cc61ff08.png', '2024-04-29 04:06:30'),
(700, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(701, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(702, 18, '662f1cc61ff08.png', 'images/662f1cc61ff08.png', '2024-04-29 04:06:30'),
(703, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(704, 18, '662f1cc61ff08.png', 'images/662f1cc61ff08.png', '2024-04-29 04:06:30'),
(705, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(706, 19, '6630a6485b027.png', 'images/6630a6485b027.png', '2024-04-30 08:05:28'),
(707, 35, '662e101646d31.png', 'images/662e101646d31.png', '2024-04-28 09:00:06'),
(708, 38, '6631ce8e2967f.png', 'images/6631ce8e2967f.png', '2024-05-01 05:09:34'),
(709, 17, '662f5d033f3db.png', 'images/662f5d033f3db.png', '2024-04-29 08:40:35'),
(710, 18, '662f1cc61ff08.png', 'images/662f1cc61ff08.png', '2024-04-29 04:06:30'),
(711, 19, '6630a6485b027.png', 'images/6630a6485b027.png', '2024-04-30 08:05:28'),
(712, 37, '66337bc9ea3de.png', 'images/66337bc9ea3de.png', '2024-05-02 11:40:57'),
(713, 19, '6630a6485b027.png', 'images/6630a6485b027.png', '2024-04-30 08:05:28'),
(714, 37, '66337bc9ea3de.png', 'images/66337bc9ea3de.png', '2024-05-02 11:40:57'),
(715, 38, '6631ce8e2967f.png', 'images/6631ce8e2967f.png', '2024-05-01 05:09:34'),
(716, 37, '66337bc9ea3de.png', 'images/66337bc9ea3de.png', '2024-05-02 11:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `day` text NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `date_schedule` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `day`, `date`, `date_schedule`) VALUES
(1, '1', '2024-04-01', 'Hi'),
(2, '2', '2024-04-02', 'Hello'),
(3, '3', '2024-04-03', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(4, '4', '2024-04-04', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(5, '5', '2024-04-05', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(6, '6', '2024-04-06', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(7, '7', '2024-04-07', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(8, '8', '2024-04-08', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(9, '9', '2024-04-09', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(10, '10', '2024-04-10', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(11, '11', '2024-04-11', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(12, '12', '2024-04-12', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(13, '13', '2024-04-13', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(14, '14', '2024-04-14', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(15, '15', '2024-04-15', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(16, '16', '2024-04-16', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(17, '17', '2024-04-17', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(18, '18', '2024-04-18', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(19, '19', '2024-04-19', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(20, '20', '2024-04-20', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(21, '21', '2024-04-21', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(22, '22', '2024-04-22', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(23, '23', '2024-04-23', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(24, '24', '2024-04-24', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(25, '25', '2024-04-25', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(26, '26', '2024-04-26', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(27, '27', '2024-04-27', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(28, '28', '2024-04-28', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(29, '29', '2024-04-29', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\''),
(30, '30', '2024-04-30', '\' \' \' \' \' \' \' \'\'\'\'\'\'\'\'\'');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dtr`
--
ALTER TABLE `dtr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `dtr`
--
ALTER TABLE `dtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=717;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dtr`
--
ALTER TABLE `dtr`
  ADD CONSTRAINT `dtr_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
