-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 03:13 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `machineryhire`
--

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `customer_username` varchar(50) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_phone` varchar(15) NOT NULL,
  `customer_email` varchar(25) NOT NULL,
  `customer_address` varchar(50) NOT NULL,
  `customer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`customer_username`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_password`) VALUES
('antonio', 'Antonio M', '0785556580', 'antony@gmail.com', '2677  Burton Avenue', 'password'),
('christine', 'Christine', '8544444444', 'chr@gmail.com', '3701  Fairway Drive', 'password'),
('ethan', 'Ethan Hawk', '69741111110', 'thisisethan@gmail.com', '4554  Rowes Lane', 'password'),
('james', 'James Washington', '0258786969', 'james@gmail.com', '2316  Mayo Street', 'password'),
('lucas', 'Lucas Rhoades', '7003658500', 'lucas@gmail.com', '2737  Fowler Avenue', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(20) NOT NULL,
  `e_mail` varchar(30) NOT NULL,
  `message` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `e_mail`, `message`) VALUES
('Nikhil', 'nikhil@gmail.com', 'Hope this works.');

-- --------------------------------------------------------

--
-- Table structure for table `hiredmachinery`
--

CREATE TABLE `hiredmachinery` (
  `id` int(100) NOT NULL,
  `customer_username` varchar(50) NOT NULL,
  `car_id` int(20) NOT NULL,
  `driver_id` int(20) NOT NULL,
  `booking_date` date NOT NULL,
  `rent_start_date` date NOT NULL,
  `rent_end_date` date NOT NULL,
  `car_return_date` date DEFAULT NULL,
  `fare` double NOT NULL,
  `charge_type` varchar(25) NOT NULL DEFAULT 'days',
  `distance` double DEFAULT NULL,
  `no_of_days` int(50) DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `return_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hiredmachinery`
--

INSERT INTO `hiredmachinery` (`id`, `customer_username`, `car_id`, `driver_id`, `booking_date`, `rent_start_date`, `rent_end_date`, `car_return_date`, `fare`, `charge_type`, `distance`, `no_of_days`, `total_amount`, `return_status`) VALUES
(574681245, 'ethan', 4, 2, '2021-07-18', '2021-07-01', '2021-07-02', '2021-07-18', 11, 'km', 244, 1, 5884, 'R'),
(574681246, 'james', 6, 6, '2021-07-18', '2021-06-01', '2021-06-28', '2021-07-18', 15, 'km', 69, 27, 5035, 'R'),
(574681247, 'antonio', 3, 1, '2021-07-18', '2021-07-19', '2021-07-22', '2021-07-20', 13, 'km', 421, 3, 5473, 'R'),
(574681252, 'christine', 11, 2, '2021-07-23', '2021-07-23', '2021-07-23', '2021-07-23', 13, 'km', 200, 0, 2600, 'R'),
(574681253, 'lucas', 12, 2, '2022-03-19', '2022-03-21', '2022-03-22', '2022-03-19', 3500, 'days', NULL, 1, 3500, 'R'),
(574681254, 'lucas', 12, 2, '2022-03-19', '2022-03-21', '2022-03-22', '2022-03-19', 3500, 'days', NULL, 1, 3500, 'R');

-- --------------------------------------------------------

--
-- Table structure for table `hirer`
--

CREATE TABLE `hirer` (
  `driver_id` int(20) NOT NULL,
  `driver_name` varchar(50) NOT NULL,
  `dl_number` varchar(50) NOT NULL,
  `driver_phone` varchar(15) NOT NULL,
  `driver_address` varchar(50) NOT NULL,
  `driver_gender` varchar(10) NOT NULL,
  `client_username` varchar(50) NOT NULL,
  `driver_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hirer`
--

INSERT INTO `hirer` (`driver_id`, `driver_name`, `dl_number`, `driver_phone`, `driver_address`, `driver_gender`, `client_username`, `driver_availability`) VALUES
(1, 'Dr Masika', '34281929', '0747863157', '1782 Juja, Kenya', 'Male', 'harry', 'yes'),
(2, 'Willis Bazu', '31915631 ', '0739223684', '4354  Kalimoni', 'Male', 'harry', 'yes'),
(3, 'Wan Bissaka', '36288078 ', '0718914752', '1506  Cabannas', 'Male', 'harry', 'yes'),
(4, 'Ivy Taalam', '31601596 ', '0718756324', '4680  ABC Place', 'Female', 'jenny', 'yes'),
(5, 'Christabel', '29946663', '0758496010', 'Parklands Road', 'Female', 'jenny', 'yes'),
(6, 'Billy Mia', '30186040 ', '0721025476', '2898  Waiyaki', 'Male', 'tom', 'yes'),
(7, 'Nicolas Adagi', '319316260 ', '0754102369', 'Old traford', 'Male', 'harry', 'yes'),
(8, 'Stephen Manje', '32817723', '07215557850', 'Technology Street', 'Male', 'jenny', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `machinery`
--

CREATE TABLE `machinery` (
  `car_id` int(20) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_nameplate` varchar(50) NOT NULL,
  `car_img` varchar(50) DEFAULT 'NA',
  `ac_price` float NOT NULL,
  `non_ac_price` float NOT NULL,
  `ac_price_per_day` float NOT NULL,
  `non_ac_price_per_day` float NOT NULL,
  `car_availability` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `machinery`
--

INSERT INTO `machinery` (`car_id`, `car_name`, `car_nameplate`, `car_img`, `ac_price`, `non_ac_price`, `ac_price_per_day`, `non_ac_price_per_day`, `car_availability`) VALUES
(1, 'Hand Pushed Machine', 'KHCH 182J', 'assets/img/cars/images (3).jpg', 36, 22, 3000, 1500, 'yes'),
(2, 'New Holland Creta', 'KHDA 392C', 'assets/img/cars/images (4).jpg', 22, 12, 5000, 3000, 'yes'),
(3, 'Mud Escavator S3', 'KHCD 281L', 'assets/img/cars/images (5).jpg', 39, 30, 6000, 4000, 'yes'),
(4, 'Ox-Driven Mud plugin', 'Private', 'assets/img/cars/images (7).jpg', 45, 30, 2500, 1500, 'yes'),
(6, 'Hay Compiler Buldozer', 'KHCA 298A', 'assets/img/cars/download (2).jpg', 21, 13, 6000, 3500, 'yes'),
(7, 'Grass CutterTractor', 'KHCY 382T', 'assets/img/cars/image.png', 14, 12, 4500, 3000, 'no'),
(8, 'Farm Machinery 03', 'KHBQ 549G', 'assets/img/cars/images (6).jpg', 36, 26, 6000, 4600, 'yes'),
(9, 'Spraying Buldozer', 'KHBT 492Y', 'assets/img/cars/tractor 1.jpg', 20, 12, 5000, 3000, 'yes'),
(10, 'Arrow Special yellow', 'KHCW 921Q', 'assets/img/cars/toos 3.jpg', 22, 15, 5000, 3500, 'yes'),
(11, 'Farm Equipments', 'N/A', 'assets/img/cars/tools 1.jpg', 15, 13, 2000, 1500, 'yes'),
(12, 'In-Raw Weeding Tractor Blue', 'KHCZ 478P', 'assets/img/cars/equip 1.jpg', 16, 14, 5000, 3500, 'yes'),
(13, 'Knapsack Sprayer', 'NBA', 'assets/img/cars/images (9).jpg', 23, 15, 1500, 1000, 'yes'),
(14, 'Cpmplex XP Machine', 'KHCF 492A', 'assets/img/cars/images (8).jpg', 39, 29, 6100, 4380, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `client_username` varchar(50) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_phone` varchar(15) NOT NULL,
  `client_email` varchar(25) NOT NULL,
  `client_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `client_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`client_username`, `client_name`, `client_phone`, `client_email`, `client_address`, `client_password`) VALUES
('harry', 'Harry Maguire', '076543210', 'hmaguire@gmail.com', '2477  Utawala', 'password'),
('jenny', 'Jenry Colonel', '078500069', 'coljenry@gmail.com', '4139  Juja', 'password'),
('tom', 'Tom Kedoki', '0700621692', 'tomkedoki@gmail.com', '4645 Ntulele, Narok', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `staffmachinery`
--

CREATE TABLE `staffmachinery` (
  `car_id` int(20) NOT NULL,
  `client_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staffmachinery`
--

INSERT INTO `staffmachinery` (`car_id`, `client_username`) VALUES
(1, 'harry'),
(3, 'harry'),
(7, 'harry'),
(8, 'harry'),
(9, 'harry'),
(11, 'harry'),
(12, 'harry'),
(2, 'jenny'),
(4, 'jenny'),
(6, 'jenny'),
(10, 'jenny'),
(13, 'jenny'),
(14, 'jenny');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`customer_username`);

--
-- Indexes for table `hiredmachinery`
--
ALTER TABLE `hiredmachinery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_username` (`customer_username`),
  ADD KEY `car_id` (`car_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `hirer`
--
ALTER TABLE `hirer`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `dl_number` (`dl_number`),
  ADD KEY `client_username` (`client_username`);

--
-- Indexes for table `machinery`
--
ALTER TABLE `machinery`
  ADD PRIMARY KEY (`car_id`),
  ADD UNIQUE KEY `car_nameplate` (`car_nameplate`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`client_username`);

--
-- Indexes for table `staffmachinery`
--
ALTER TABLE `staffmachinery`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `client_username` (`client_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hiredmachinery`
--
ALTER TABLE `hiredmachinery`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574681255;

--
-- AUTO_INCREMENT for table `hirer`
--
ALTER TABLE `hirer`
  MODIFY `driver_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `machinery`
--
ALTER TABLE `machinery`
  MODIFY `car_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hiredmachinery`
--
ALTER TABLE `hiredmachinery`
  ADD CONSTRAINT `hiredmachinery_ibfk_1` FOREIGN KEY (`customer_username`) REFERENCES `farmers` (`customer_username`),
  ADD CONSTRAINT `hiredmachinery_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `machinery` (`car_id`),
  ADD CONSTRAINT `hiredmachinery_ibfk_3` FOREIGN KEY (`driver_id`) REFERENCES `hirer` (`driver_id`);

--
-- Constraints for table `hirer`
--
ALTER TABLE `hirer`
  ADD CONSTRAINT `hirer_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `staff` (`client_username`);

--
-- Constraints for table `staffmachinery`
--
ALTER TABLE `staffmachinery`
  ADD CONSTRAINT `staffmachinery_ibfk_1` FOREIGN KEY (`client_username`) REFERENCES `staff` (`client_username`),
  ADD CONSTRAINT `staffmachinery_ibfk_2` FOREIGN KEY (`car_id`) REFERENCES `machinery` (`car_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
