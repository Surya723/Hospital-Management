-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2021 at 04:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bharathospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `channel`
--

CREATE TABLE `channel` (
  `id` varchar(255) NOT NULL,
  `d_id` varchar(255) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `roomno` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `channel`
--

INSERT INTO `channel` (`id`, `d_id`, `pname`, `roomno`, `date`, `status`) VALUES
('CH008', 'DS009', 'Venkat', 123, '2021-07-23', 'Active'),
('CH009', 'DS009', 'surya', 32, '2021-07-23', 'Active'),
('CH010', 'DS008', 'muruga', 32, '2021-06-11', 'Active'),
('CH011', 'DS005', 'Venkat', 23, '2021-06-09', 'Active'),
('CH012', 'DS001', 'vasantha', 12, '2021-06-09', 'Active'),
('CH013', 'DS001', 'vasantha', 12, '2021-06-30', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `fee` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `room` int(11) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `specialization`, `qualification`, `fee`, `email`, `room`, `log_id`) VALUES
('DS001', 'Sunder', 'general consultation', 'Internet knowledge', 100, 'sunder@gmail.com', 1, 3),
('DS003', 'Prema', 'ayurveda', 'practise', 100, '23434', 5, 0),
('DS005', 'Shilpa', 'Dentist', 'BDS', 500, 'abcd@test.com', 3, 0),
('DS007', 'Shenoy', 'Paediatrician', 'MBBS,MD', 500, 'shenoy@yahoo.com', 6, 6),
('DS008', 'Narayanswamy', 'General Physician', 'MBBS', 300, 'abc@hotmail.com', 7, 0),
('DS009', 'Bose', 'Oncology Surgeon', 'MBBS,MD', 1000, 'bose@gmail.com', 21, 10);

-- --------------------------------------------------------

--
-- Table structure for table `drug`
--

CREATE TABLE `drug` (
  `id` varchar(255) NOT NULL,
  `item` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `sellprice` int(11) NOT NULL,
  `buyprice` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `drug`
--

INSERT INTO `drug` (`id`, `item`, `description`, `sellprice`, `buyprice`, `qty`) VALUES
('DR001', 'Pandol', 'for acidity', 12, 10, 940),
('DR002', 'Dolo 650', 'fever, headache', 15, 10, 425),
('DR003', 'vicks', 'cough		', 100, 95, 0),
('DR004', 'Tamoxifen', 'Post cancer medicine', 40, 35, 60);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `phone`, `address`) VALUES
('PS002', 'vasantha', '12312312', 'jp nagar'),
('PS003', 'lalitha', '9900513604', 'jayanagar'),
('PS004', 'Venkat', '821232322', 'Jayanthi Gardens JP Nagar bangalore'),
('PS007', 'sandhya', '9945350342', 'jp nagar bangalore'),
('PS008', 'muruga', '1232312', 'werwer');

-- --------------------------------------------------------

--
-- Table structure for table `pres`
--

CREATE TABLE `pres` (
  `id` varchar(255) NOT NULL,
  `chid` varchar(255) NOT NULL,
  `doctorname` varchar(255) NOT NULL,
  `detype` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pres`
--

INSERT INTO `pres` (`id`, `chid`, `doctorname`, `detype`, `description`) VALUES
('PC001', 'CH010', 'Sunder', 'cold', 'cough'),
('PC002', 'CH008', 'Bose', 'covid', 'headache cold'),
('PC003', 'CH009', 'Bose', 'fever', '132123123'),
('PC004', 'CH011', 'Sunder', 'acidity', 'stomach upset'),
('PC005', 'CH012', 'DS001', 'heart attack', 'breathlesness'),
('PC006', 'CH009', 'Bose', '123', '2213'),
('PC007', 'CH009', 'DS009', 'stomach problem', 'headache,fever'),
('PC008', 'CH009', 'Bose', 'Cancer', 'Tamoxifen/Letrozole'),
('PC009', 'CH013', 'DS001', 'Fever', 'Fever,cough and cold');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '2021-06-12', 105, 105, 0),
(2, '2021-06-12', 105, 105, 0),
(3, '2021-06-12', 120, 120, 0),
(4, '2021-06-12', 60, 60, 0),
(5, '2021-06-12', 105, 105, 45),
(6, '2021-06-13', 512, 512, 488),
(7, '2021-06-13', 436, 436, 564),
(8, '2021-06-13', 276, 276, 224),
(9, '2021-06-13', 576, 576, 424),
(10, '2021-06-13', 650, 650, 350);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `prod_id` varchar(255) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `prod_id`, `sell_price`, `qty`, `total`) VALUES
(1, 4, 'DR002', 15, 4, 60),
(2, 5, 'DR002', 15, 7, 105),
(3, 6, 'DR001', 12, 6, 72),
(4, 6, 'DR002', 15, 16, 240),
(5, 6, 'DR003', 100, 2, 200),
(6, 7, 'DR004', 40, 10, 400),
(7, 7, 'DR001', 12, 3, 36),
(8, 8, 'DR001', 12, 23, 276),
(9, 9, 'DR001', 12, 23, 276),
(10, 9, 'DR002', 15, 20, 300),
(11, 10, 'DR001', 12, 10, 120),
(12, 10, 'DR003', 100, 2, 200),
(13, 10, 'DR002', 15, 22, 330);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `utype`) VALUES
(1, 'prema', 'prema', 'prema123', 'Receptionist'),
(2, 'surya', 'surya', 'surya123', 'admin'),
(3, 'Sunder', 'Sunder', 'sunder123', 'Doctor'),
(4, 'Sreya', 'Sreya02', 'SREYA123', 'pharmacist'),
(5, 'Roja', 'roja_23', 'roja123', 'Receptionist'),
(6, 'shiva', 'shiva', '123', 'Doctor'),
(7, 'muruga', 'muruga', '123', 'Doctor'),
(8, '12', '12', '12', 'admin'),
(9, 'archana', 'archana', '123', 'Receptionist'),
(10, 'bose', 'bose', 'bose123', 'Doctor'),
(11, 'rama', 'ramana', 'ramana123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `channel`
--
ALTER TABLE `channel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drug`
--
ALTER TABLE `drug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pres`
--
ALTER TABLE `pres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
