-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2021 at 01:58 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `attendance` varchar(200) NOT NULL,
  `date_time` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`email`, `fname`, `lname`, `attendance`, `date_time`, `id`) VALUES
('mohamedelsftawy7944@gmail.com', 'mohamed Hamdy Ali', 'Hamdy Ali', 'leave', '2021-12-24', 11);

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date_time` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`email`, `fname`, `lname`, `message`, `date_time`, `id`) VALUES
('ali@gmail.com', 'ali', 'khan', 'leave', '2021-08-09', 2),
('mohamedelsftawy7944@gmail.com', 'mohamed Hamdy Ali', 'Hamdy Ali', 'I want to leave today Early', '2021-12-24', 7);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `date_time` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`name`, `email`, `phone`, `message`, `date_time`, `id`) VALUES
('Mohamed', 'kkkkk@gmail.com', '121212', 'hi i am Mohamed', '2021-11-01', 1),
('zain', 'z@gmail.com', '312', '12asa', '2021-11-24', 3),
('zain', 'z@gmail.com', '312', '12asa', '2021-11-24', 4),
('sad2@g.com', 'asda@2gm.com', '2131', 'aa', '2021-11-24', 6),
('saad', 'sad@gmail.com', '1212', 'saad', '2021-11-24', 7),
('asdasd', 'asda@m.com', '22323', 'hi ', '2021-11-24', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(200) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `password1` varchar(200) NOT NULL,
  `password2` varchar(200) NOT NULL,
  `dob` varchar(200) NOT NULL,
  `age_y` varchar(200) NOT NULL,
  `age_m` varchar(200) NOT NULL,
  `dp` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `date_time` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fname`, `lname`, `password1`, `password2`, `dob`, `age_y`, `age_m`, `dp`, `gender`, `date_time`, `id`) VALUES
('k@gmail.com', 'Muhammad ', 'khaled', '111', '111', '06/06/2018', '3', '2', 'img.jpg', 'Male', '2021-08-08', 2),
('ali@gmail.com', 'ali', 'osama', '111', '111', '01/07/2000', '21', '7', 'echo.PNG', 'Male', '2021-08-09', 3),
('123@gmail.com', 'mostafa', 'm', '111', '111', '07/12/2007', '14', '0', '159.jpg', 'Female', '2021-08-09', 4),
('ahmed1@gmail.com', 'ahmed', 'khalel', '111', '111', '08/12/2021', '0', '0', 'python-programming.jpg', 'Male', '2021-08-09', 5),
('k8457@gmail.com', 'k', '8457', '111', '111', '06/15/2021', '0', '1', '9d2e8896750899.5eb54f3381452.png', 'Male', '2021-08-09', 6),
('waleed@gmail.com', 'waleed', 'abo', '222', '222', '03/06/1997', '24', '5', 'img.jpg', 'Male', '2021-08-10', 7),
('mohamedhamdy@gmail.com', 'mohamed', 'hamdy', '222', '222', '06/19/2009', '12', '1', 'images (2).png', 'Male', '2021-08-11', 8),
('mohamedelsftawy7944@gmail.com', 'mohamed Hamdy Ali', 'Hamdy Ali', '111', '111', '09/12/2000', '21', '3', 'images (1).png', 'Male', '2021-12-24', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
