-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2022 at 10:16 AM
-- Server version: 5.7.36-log
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_wbsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `owners_id` int(10) NOT NULL,
  `prev` varchar(20) NOT NULL,
  `pres` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `smssent` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `owners_id`, `prev`, `pres`, `price`, `date`, `smssent`) VALUES
(1, 1, '56', '78', '10', '16/02/04 03:28:20', 1),
(2, 1, '78', '67', '10', '16/02/04 03:42:03', 1),
(3, 1, '67', '67', '0', '16/02/04 03:52:51', 1),
(4, 1, '67', '80', '130', '16/02/04 03:53:44', 1),
(5, 1, '80', '100', '200', '16/02/04 03:54:19', 1),
(6, 1, '100', '500', '4000', '16/02/04 08:15:33', 1),
(7, 2, '122', '500', '3780', '18/09/11 14:23:49', 1),
(8, 3, '100', '01', '-990', '18/09/17 16:18:21', 1),
(9, 1, '500', '600', '1000', '20/10/28 22:40:03', 1),
(10, 1, '600', '50', '-5500', '22/07/09 15:01:24', 1),
(11, 1, '50', '80', '300', '22/07/09 15:19:08', 1),
(12, 2, '50', '80', '300', '22/07/09 15:20:34', 1),
(13, 1, '80', '100', '200', '22/07/11 14:12:08', 1),
(14, 3, '50', '100', '500', '22/07/11 14:13:06', 1),
(15, 1, '100', '80', '-200', '22/07/11 18:17:49', 1),
(16, 1, '80', '90', '100', '22/07/13 07:30:55', 1),
(17, 1, '90', '100', '100', '22/07/13 07:34:58', 1),
(18, 1, '100', '150', '500', '22/07/13 07:41:21', 1),
(19, 1, '150', '170', '200', '22/07/13 07:51:03', 1),
(20, 3, '50', '150', '1000', '22/07/13 08:14:34', 1),
(21, 2, '60', '100', '400', '22/07/13 08:14:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(10) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL,
  `mi` varchar(2) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `lname`, `fname`, `mi`, `address`, `contact`) VALUES
(1, 'Samwel', 'kimei', '90', 'Mbinga', '0715805406'),
(2, 'Lucy', 'Lucy', '22', 'espn', '0791527561'),
(3, 'Felix', 'Felix', '54', 'demo', '0722553710');

-- --------------------------------------------------------

--
-- Table structure for table `tempo_bill`
--

CREATE TABLE `tempo_bill` (
  `id` int(11) NOT NULL,
  `Prev` varchar(40) NOT NULL,
  `Client` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempo_bill`
--

INSERT INTO `tempo_bill` (`id`, `Prev`, `Client`) VALUES
(1, '170', 'kimei'),
(2, '100', 'Harry'),
(3, '150', 'demo'),
(4, '166', 'Paul'),
(5, '230', 'Clark'),
(6, '300', 'Ava'),
(7, '106', 'Isabella'),
(8, '200', 'Emma'),
(9, '100', 'Liam'),
(10, '366', 'Logan'),
(11, '250', 'James'),
(12, '500', 'Jason'),
(13, '120', 'Tom'),
(14, '99', 'John'),
(15, '320', 'Henry'),
(16, '323', 'Samuel'),
(17, '11', 'sa');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`) VALUES
(4, 'admin', 'admin', 'Harry Den'),
(8, 'demo', 'demo', 'demo user'),
(9, 'markden', 'code0', 'Mark Den'),
(10, 'christine', 'code0', 'Christine Grey');

-- --------------------------------------------------------

--
-- Table structure for table `user_levels`
--

CREATE TABLE `user_levels` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `userlevel` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_levels`
--

INSERT INTO `user_levels` (`id`, `username`, `password`, `userlevel`) VALUES
(1, 'admin', 'admin', '1'),
(2, 'user2', 'user2', '2'),
(3, 'user3', 'user3', '3'),
(4, 'user4', 'user4', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempo_bill`
--
ALTER TABLE `tempo_bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_levels`
--
ALTER TABLE `user_levels`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tempo_bill`
--
ALTER TABLE `tempo_bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_levels`
--
ALTER TABLE `user_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
