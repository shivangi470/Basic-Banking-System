-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2021 at 04:09 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shivangi`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `accno` int(10) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `username`, `email`, `accno`, `amount`) VALUES
(1, 'shivangi', 'shivangi@gmail.com', 18049010, 30000),
(2, 'meenu', 'shivangibalawala2000@gmail.com', 18049011, 1900),
(3, 'xyz', 'xyz@gmail', 18049012, 95000),
(4, 'shivani', 'shivani@gmail.com', 18049013, 80000),
(5, 'ram', 'ram@gmail.com', 18049014, 60000),
(6, 'prachi', 'prachi@gmail.com', 18049015, 5120),
(7, 'deeksha', 'deeksha@gmail.com', 18049016, 50000),
(8, 'nisha', 'nisha@gmail.com', 18049017, 450000),
(9, 'shilpi', 'shilpi@gmail.com', 18049018, 8050),
(10, 'amish', 'amish@gmail.com', 18049019, 1010000),
(11, 'shivam', 'shivam@gmail.com', 18049020, 1000000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'shivangi', 'meenu', 2000, '2021-03-09 15:42:17'),
(2, 'meenu', 'prachi', 20, '2021-03-09 15:50:47'),
(3, 'meenu', 'prachi', 90, '2021-03-09 15:57:24'),
(4, 'shivangi', 'shilpi', 8000, '2021-03-09 16:13:49'),
(5, 'shivangi', 'amish', 10000, '2021-03-09 16:20:57'),
(6, 'xyz', 'prachi', 5000, '2021-03-09 20:36:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
