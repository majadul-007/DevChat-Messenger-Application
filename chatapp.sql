-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 06:26 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 226420510, 1330523061, 'Hey, Man!'),
(2, 1330523061, 226420510, 'Hi..'),
(3, 1211890764, 1521532708, 'Hey, daniyel! How is everything going on!'),
(4, 1330523061, 226420510, 'how are you?'),
(5, 1521532708, 226420510, 'Hey, John!'),
(6, 485421909, 226420510, 'Hey, Jasica! :))'),
(7, 1211890764, 226420510, 'Hey Daniyal!'),
(8, 226420510, 1211890764, 'Hi, Man!'),
(9, 1521532708, 226420510, 'How is everything Going on?'),
(10, 226420510, 1447880730, 'Hey, Man! What\'s going on?'),
(11, 226420510, 1447880730, 'I\'m fine man. What About you?'),
(12, 1447880730, 226420510, 'I\'m well.. It\'s great to talk to you, Man!'),
(13, 226420510, 1447880730, 'You too man!'),
(14, 1447880730, 226420510, 'hey, man!'),
(15, 1447880730, 226420510, 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 226420510, 'Nashir', 'haque', 'n@gmail.com', '09d4939d6189a2d7deb6b491b0b7a3ab', '16333313831.png', 'Offline now'),
(2, 1330523061, 'Amanda', 'Kabir', 'a@gmail.com', 'e99a18c428cb38d5f260853678922e03', '16333314242.jpg', 'Active now'),
(3, 485421909, 'Jasica', 'Shabnam', 'j@gmail.com', '33a4568084b1b6b203d549010c061e5c', '16333317605.png', 'Offline now'),
(4, 1211890764, 'Daniyal', 'Hossain', 'd@gmail.com', '0ad7fdbf8f687a5c0f40cbe1a9ca0ce5', '16333318523.png', 'Active now'),
(5, 1521532708, 'John ', 'doe', 'john@gmail.com', '33a4568084b1b6b203d549010c061e5c', '16333319714.jpg', 'Active now'),
(6, 1447880730, 'kabir', 'haque', 'kabir@gmail.com', '91be7548d4b39623075f083cfabc0854', '1635139877profile-1.png', 'Active now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
