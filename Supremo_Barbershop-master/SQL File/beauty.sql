-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 11:22 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `BarberName` varchar(200) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `BarberName`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(2, '000001', 'Neicel Mendez', 'neicel@gmail.com', 9564852, '11/29/2022', '4:30pm', 'Deluxe Pedicure', '', '2021-07-26 05:04:38', 'Rejected', '2', '2022-10-23 00:01:37'),
(3, '000002', 'Emely Joy Dizon', 'emely@gmail.com', 954422, '11/20/2022', '2:30pm', 'Loreal Hair Color(Full)', '', '2021-06-19 12:35:30', 'we will wait', '1', '2022-10-23 00:01:44'),
(6, '000003', 'Faustino Jerico', 'jerico@gmail.com', 9011515, '11/27/2022', '1:30am', 'Rebonding', '', '2021-06-21 16:22:25', 'Testing', '2', '2022-10-23 00:01:53'),
(7, '000004', 'Saimon Narciso', 'saimon@gmail.com', 9050465, '11/18/2022', '3:00pm', 'Layer Haircut', '', '2021-06-12 10:25:50', 'well accepted', '1', '2022-10-23 00:02:01'),
(8, '000005', 'Siapno Erman', 'siapno@gmail.com', 95123564, '11/06/2022', '12:30am', 'U-Shape Hair Cut', '', '2021-06-18 07:18:00', '', '', '2022-10-23 00:02:08'),
(10, '000006', 'Leicel Barrameda', 'leicel@gmail.com', 9154546, '11/5/2022', '12:30am', 'Deluxe Menicure', '', '2021-07-02 22:16:42', '', '', '2022-10-23 00:02:15'),
(11, '000007', 'Mutuc Ronn airol', 'ronn@gmail.com', 9548784, '11/7/2022', '12:30am', 'U-Shape Hair Cut', '', '2021-07-02 22:45:27', '', '', '2022-10-23 00:02:21'),
(12, '430177013', 'Paul De Guzman', 'jfaustino209@gmail.com', 63, '10/19/2022', '12:00am', 'Ahit Supremo', '', '2022-10-23 06:49:40', '', '', '0000-00-00 00:00:00'),
(13, '395024853', 'Paul De Guzman', 'jfaustino209@gmail.com', 63, '10/11/2022', '12:30am', 'Gupit Supremo with Banlaw', '', '2022-10-23 08:54:31', '', '', '0000-00-00 00:00:00'),
(22, '400235023', 'sample', 'dkjsajhkjdsajhk@gmail.com', 4648964894, '10/4/2022', '12:30am', 'Tina', 'barbername', '2022-10-25 00:47:36', '', '', '2022-10-25 00:47:36'),
(23, '260096990', 'dsadsa', 'dsadsadsa@gmail.com', 15646, '10/4/2022', '12:00am', 'Gupit Supremo with Banlaw', 'Marcelo Virgo', '2022-10-25 00:52:45', '', '', '2022-10-25 00:52:45'),
(24, '423791605', 'dwdads', 'dsadsadsa@gmail.com', 456456132, '9/27/2022', '12:30am', 'Gupit Supremo with Banlaw', 'Jhun Oxina', '2022-10-25 02:12:59', '', '', '2022-10-25 02:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `tblbarber`
--

CREATE TABLE `tblbarber` (
  `ID` int(50) NOT NULL,
  `BarberName` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Age` int(200) NOT NULL,
  `Gender` varchar(20) CHARACTER SET latin1 NOT NULL,
  `phone number` varchar(12) CHARACTER SET latin1 NOT NULL,
  `Details` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbarber`
--

INSERT INTO `tblbarber` (`ID`, `BarberName`, `Age`, `Gender`, `phone number`, `Details`) VALUES
(1, 'Jhun Oxina', 20, 'Male', '090752524', 'From Caloocan');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Paul De Guzman', 'paul@gmail.com', 90909654, 'Male', 'From STI', '2022-10-22 11:09:10', '2022-10-22 23:38:07'),
(2, 'John Shue', 'john@gmail.com', 95467452, 'Male', 'from Malabon', '2022-10-21 23:38:10', '2022-10-23 00:33:22'),
(3, 'Jerico Faustino', 'jerico@gmail.com', 484064, 'Male', 'Taking massage', '2022-10-21 16:00:00', '2022-10-22 23:39:40'),
(4, 'Siapno Gwapito', 'Siapno@gmail.com', 94424, 'Male', 'from Divisoria', '2022-10-21 16:00:00', '2022-10-22 23:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(26, 3, 2, 379605551, '2021-07-09 15:32:37'),
(27, 3, 4, 379605551, '2021-07-09 15:32:37'),
(28, 3, 9, 379605551, '2021-07-09 15:32:37'),
(33, 2, 8, 107583558, '2021-07-09 15:42:57'),
(34, 2, 12, 107583558, '2021-07-09 15:42:57'),
(35, 1, 1, 372872256, '2021-07-09 15:43:52'),
(36, 1, 2, 372872256, '2021-07-09 15:43:52'),
(37, 1, 4, 372872256, '2021-07-09 15:43:52'),
(38, 2, 1, 361165436, '2021-07-24 11:52:27'),
(39, 2, 2, 361165436, '2021-07-24 11:52:27'),
(40, 2, 3, 361165436, '2021-07-24 11:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Cost`, `CreationDate`) VALUES
(1, 'Gupit Supremo', 200, '2022-04-11 11:22:38'),
(2, 'Gupit Supremo with Banlaw', 220, '2022-04-11 11:22:53'),
(3, 'Ahit Supremo', 150, '2022-04-11 11:23:10'),
(4, 'Hair Tattoo', 450, '2022-04-11 11:23:34'),
(5, 'Supremo Espesyal', 400, '2022-04-11 11:23:47'),
(6, 'Supremo Espesyal w/Ahit', 480, '2022-04-11 11:24:01'),
(7, 'Linis Tenga', 120, '2022-04-11 11:24:19'),
(8, 'Tina', 320, '2022-04-11 11:24:38'),
(9, 'Scalp Treatment', 380, '2022-04-11 11:24:53'),
(10, 'Perm', 1200, '2022-04-11 11:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `userimage` varchar(255) NOT NULL DEFAULT 'but.jpg',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `name`, `lastname`, `username`, `email`, `sex`, `permission`, `password`, `mobile`, `userimage`, `status`) VALUES
(22, 'jayson', 'caburatan', 'admintwo', 'jayson@gmail.com', 'Male', 'Super User', '81dc9bdb52d04dc20036dbd8313ed055', 909090909, 'jayson.jpg', 1),
(23, 'Dwight', 'Cruz', 'adminone', 'dwight@gmail.com', 'Male', 'Super User', '81dc9bdb52d04dc20036dbd8313ed055', 909090909, 'dwight.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbarber`
--
ALTER TABLE `tblbarber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblbarber`
--
ALTER TABLE `tblbarber`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
