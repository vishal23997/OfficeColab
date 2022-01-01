-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 05:10 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ocdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(4) NOT NULL,
  `adminName` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `adminEmail` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `adminPassword` varchar(25) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `adminEmail`, `adminPassword`) VALUES
(1000, 'ADMIN', 'admin@001', '0000');

-- --------------------------------------------------------

--
-- Table structure for table `empdetail`
--

CREATE TABLE `empdetail` (
  `empId` int(4) NOT NULL,
  `empName` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `empEmail` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `empPwd` varchar(15) COLLATE latin1_general_cs NOT NULL,
  `empDesg` varchar(25) COLLATE latin1_general_cs NOT NULL,
  `empAddress` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `empPhone` varchar(10) COLLATE latin1_general_cs NOT NULL,
  `empSkills` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `dateOfReg` date NOT NULL DEFAULT current_timestamp(),
  `empStatus` varchar(10) COLLATE latin1_general_cs NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `empdetail`
--

INSERT INTO `empdetail` (`empId`, `empName`, `empEmail`, `empPwd`, `empDesg`, `empAddress`, `empPhone`, `empSkills`, `dateOfReg`, `empStatus`) VALUES
(1, 'VISHAL SINGH', 'vishalsinghking11@gmail.com', '00000000', 'Software Engineer', 'VILL+POST SUKHPURA', '8299372354', 'MERN MEAN', '2021-12-10', 'Active'),
(2, 'Anubhav Maurya', 'anubhav@gmail.com', '1234567890', 'Software Engineer', 'RAE BARELI', '6789543210', 'MERN,C,C++', '2021-12-10', 'Active'),
(3, 'Vaibhav Srivastav', 'vaibhav111@gmail.com', '1234567890', 'Software Engineer', 'Ghaziabad', '9835678590', 'MERN', '2021-12-11', 'Active'),
(4, 'Uddeshya Sharma', 'uddeshya111@gmail.com', '1234567890', 'Software Engineer', 'Lucknow', '8299372354', 'MERN', '2021-12-11', 'Active'),
(5, 'Dummy', 'dummy@gmail.com', '1234567890', 'Dummy Engineer', 'Dummy', '7379801286', 'Dummy', '2021-12-11', 'Not Active');

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `empId` int(4) NOT NULL,
  `projectManager` varchar(30) COLLATE latin1_general_cs DEFAULT NULL,
  `allocatedProject` varchar(30) COLLATE latin1_general_cs DEFAULT NULL,
  `projectStatus` varchar(15) COLLATE latin1_general_cs DEFAULT NULL,
  `projectStartDate` date DEFAULT NULL,
  `projectEndDate` date DEFAULT NULL,
  `projectOutcome` varchar(20) COLLATE latin1_general_cs DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`empId`, `projectManager`, `allocatedProject`, `projectStatus`, `projectStartDate`, `projectEndDate`, `projectOutcome`) VALUES
(1, 'Ankit Varma', 'Office Collaborator', 'Ongoing', '2021-11-14', '2021-12-11', 'Deleivered'),
(2, 'Ankit Verma', 'Office Collaborator', 'Failed', '2021-11-10', '2021-12-10', 'Deleivered'),
(3, 'NULL', NULL, NULL, NULL, NULL, NULL),
(4, 'NULL', NULL, NULL, NULL, NULL, NULL),
(5, 'Ankit Verma', 'Shopping Site', 'Ongoing', '2021-10-10', '2021-12-10', 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `updatedetail`
--

CREATE TABLE `updatedetail` (
  `empId` int(4) NOT NULL,
  `empPhone` varchar(10) COLLATE latin1_general_cs NOT NULL,
  `empAddress` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `empSkills` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `empDesg` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `projectManager` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `allocatedProject` varchar(30) COLLATE latin1_general_cs NOT NULL,
  `projectStartDate` date NOT NULL,
  `projectEndDate` date NOT NULL,
  `projectStatus` varchar(15) COLLATE latin1_general_cs NOT NULL,
  `projectOutcome` varchar(15) COLLATE latin1_general_cs NOT NULL,
  `empStatus` varchar(15) COLLATE latin1_general_cs NOT NULL,
  `updateDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedBy` text COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Dumping data for table `updatedetail`
--

INSERT INTO `updatedetail` (`empId`, `empPhone`, `empAddress`, `empSkills`, `empDesg`, `projectManager`, `allocatedProject`, `projectStartDate`, `projectEndDate`, `projectStatus`, `projectOutcome`, `empStatus`, `updateDate`, `updatedBy`) VALUES
(1, '', '', '', 'Software Engineer', '', '', '0000-00-00', '0000-00-00', '', '', '', '2021-12-09 19:49:28', ''),
(1, '', '', '', 'Software Engineer', 'Ankit Verma', 'Office Collaborator', '2021-11-14', '2021-12-11', 'Ongoing', 'Not Deleivered', 'Active', '2021-12-09 19:50:12', ''),
(1, '', '', '', 'Software Engineer', 'Ankit Verma', 'Office Collaborator', '2021-11-14', '2021-12-11', 'Ongoing', 'Deleivered', 'Not Active', '2021-12-09 19:53:20', 'A'),
(2, '', '', '', 'Front end', '', '', '0000-00-00', '0000-00-00', '', '', '', '2021-12-09 19:55:24', ''),
(2, '', '', '', 'Front end', 'Ankit Verma', 'Office Collaborator', '2021-11-10', '2021-12-10', 'Ongoing', 'Deleivered', 'Active', '2021-12-09 19:55:54', 'A'),
(1, '', '', '', 'Software Engineer', 'Ankit Verma', 'Office Collaborator', '2021-11-14', '2021-12-11', 'Ongoing', 'Deleivered', 'Active', '2021-12-10 18:22:10', 'A'),
(3, '', '', '', 'Software Engineer', '', '', '0000-00-00', '0000-00-00', '', '', '', '2021-12-10 21:01:29', 'A'),
(4, '', '', '', 'Software Engineer', '', '', '0000-00-00', '0000-00-00', '', '', '', '2021-12-10 21:04:29', 'A'),
(2, '6789543210', 'RAE BARELI', 'MERN', '', '', '', '0000-00-00', '0000-00-00', '', '', '', '2021-12-10 21:05:17', 'E'),
(2, '', '', '', 'Software Engineer', 'Ankit Verma', 'Office Collaborator', '2021-11-10', '2021-12-10', 'Ongoing', 'Deleivered', 'Active', '2021-12-10 21:05:50', 'A'),
(2, '6789543210', 'RAE BARELI', 'MERN,C,C++', '', '', '', '2021-11-10', '2021-12-10', '', '', '', '2021-12-10 21:34:47', 'E'),
(5, '', '', '', 'Dummy', '', '', '0000-00-00', '0000-00-00', '', '', '', '2021-12-11 04:20:51', 'A'),
(5, '', '', '', 'Dummy Engineer', 'Ankit Verma', '', '2021-10-10', '2021-12-10', 'Complete', 'Failed', 'Not Active', '2021-12-11 04:21:46', 'A'),
(5, '', '', '', 'Dummy Engineer', 'Ankit Verma', 'Shopping Site', '2021-10-10', '2021-12-10', 'Ongoing', 'Failed', 'Not Active', '2021-12-11 04:22:48', 'A'),
(2, '', '', '', 'Software Engineer', 'Ankit Verma', 'Office Collaborator', '2021-11-10', '2021-12-10', 'Failed', 'Deleivered', 'Active', '2021-12-11 05:57:08', 'A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `empdetail`
--
ALTER TABLE `empdetail`
  ADD PRIMARY KEY (`empId`),
  ADD UNIQUE KEY `empEmail` (`empEmail`);

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`empId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `empId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
