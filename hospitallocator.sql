-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2020 at 11:27 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospitallocator`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_level` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `username`, `email`, `password`, `phone`, `created_at`, `user_level`, `status`) VALUES
(1, 'sam', 'samwel.kuboja@gmail.com', '20eabe5d64b0e216796e834f52d61fd0b70332fc', 763048534, '2020-07-23 01:46:04', 1, 2),
(2, 'samir', 'samwel.kuboja@gmail.com', '0a8488464036fe27b66533677ade9d2bc31cd328', 763048534, '2020-07-28 12:21:28', 0, 0),
(3, 'hb', 'samwel.kuboja1@gmail.com', 'e854ad7d41dff274ad8916c605062c269aca24d4', 734524563, '2020-07-30 15:54:36', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `hospitalname` varchar(100) NOT NULL,
  `service` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `hospitalname`, `service`, `comment`, `rate`) VALUES
(1, 'CIVE Dispensary', 'Inpatient Services - IPD', 'Huduma bora', 1.5),
(2, 'CIVE Dispensary', 'Diagnosis Serices', 'Vipimo vingine hawana', 0),
(3, 'CIVE Dispensary', 'Outpatient Services - OPD', 'Wanatoa vizuri', 3),
(4, 'Benjamin Mkapa Hospital (BMH)', 'Oral Health Services(Dental Serices)', 'Huduma ya meno wanatoa nzuri hadi raha', 3.5),
(5, 'CIVE Dispensary', 'Inpatient Services - IPD', 'Wanatoa Huduma bora', 2);

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `hospitalname` varchar(100) NOT NULL,
  `hospitaladdress` varchar(100) NOT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longtude` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `hospitalname`, `hospitaladdress`, `latitude`, `longtude`, `created_at`) VALUES
(1, 'Dodoma General Hospital', 'Dodoma Madukani', '-6.1822915', '35.7444236', '2020-07-29 21:05:19'),
(2, 'UMATI Clinic', 'Iringa Road, Dodoma', '-6.16165', '35.7373127', '2020-07-29 21:05:19'),
(3, 'Mackay Hospital', 'Eight Road, Dodoma', '-6.1813102', '35.74528189999999', '2020-07-29 21:05:19'),
(4, 'COED Dispensary', 'UDOM Iyumbu', '-6.2280256', '35.8350668', '2020-07-29 21:05:19'),
(5, 'CIVE Dispensary', 'UDOM Iyumbu', '-6.2168580', '35.8111210', '2020-07-29 21:05:19'),
(6, 'Benjamin Mkapa Hospital (BMH)', 'Dodoma Ng\"hong\"honha', '-6.23004', '35.847523', '2020-07-29 21:05:19'),
(7, 'Vikonje Dispensary', 'Dodoma', '-6.162959000000001', '35.75160689999999', '2020-07-29 21:05:19'),
(8, 'IRDP Dispensary', 'IRDP, Dodoma', '-6.162959000000001', '35.75160689999999', '2020-07-29 21:05:19'),
(9, 'DN Dispensary', 'Area D, Dodoma', '-6.1682153', '35.7580361', '2020-07-29 21:05:19'),
(10, 'Amani Hospital', 'Makole, Dodoma', '-6.160399', '35.760658', '2020-07-29 21:05:19'),
(11, 'Avenue Medical Clinic', 'Uhindini, Dodoma', '-6.174416', '35.7500507', '2020-07-29 21:05:19'),
(12, 'NAVAN Specialized Polyclinic', 'Dodoma', '-6.176789999999999', '35.7496438', '2020-07-29 21:05:19'),
(13, 'Makole Hospital', 'Dodoma, Makole', '-6.1793663', '35.7520089', '2020-07-29 21:05:19'),
(14, 'Safina Dispensary', 'Chui Road, Dodoma', '-6.176608', '35.7409615', '2020-07-29 21:05:19'),
(15, 'Aga Khan Medical Centre', 'Dodoma, Madukani', '-6.180008', '35.746365', '2020-07-29 21:05:19'),
(16, 'DECCA Polyclinic Dodoma', 'Eleventh Road, Dodoma', '-6.1814482', '35.7447149', '2020-07-29 21:05:19'),
(17, 'Matovolwa Health Center', 'Dodoma Kizota', '-6.1649571', '35.73086', '2020-07-29 21:05:19'),
(18, 'University of Dodoma (UDOM)', 'UDOM Iyumbu', '-6.214189', '35.796102', '2020-07-29 21:05:19'),
(19, 'DCMC', 'Ntyuka, Dodoma', '-6.21418', '35.756546', '2020-07-29 21:07:40'),
(20, 'St.Gemma Hospital', 'Miyuji, Dodoma', '-6.107776', '35.757239', '2020-07-29 21:11:48'),
(21, 'Police Central', 'Kilimani, Dodoma', '-6.185701', '35.746999', '2020-07-31 03:03:04'),
(22, 'Village of Hope', 'Makole, Dodoma', '-6.04955', '35.7741', '2020-07-31 03:08:04'),
(23, 'Iyumbu', 'Iyumbu Primary School, Dodoma', '-6.19465', '35.85034', '2020-07-31 03:08:04'),
(24, 'Kikuyu Dispensary', 'Kikuyu Kusini, Dodoma', '-6.193142', '35.728502', '2020-07-31 03:13:14'),
(25, 'Mahomanyika Dispensary', 'Nzuguni, Dodoma', '-6.017643', '35.943215', '2020-07-31 03:13:14'),
(26, 'St. John University', 'Kikuyu Kusini, Dodoma', '-6.197705', '35.730955', '2020-07-31 03:17:35'),
(27, 'Amani Medics', 'Chang\'ombe, Dodoma', '-6.15357', '35.73833', '2020-07-31 03:17:35'),
(28, 'Nzuguni Dispensary', 'Nzuguni, Dodoma', '-6.12464', '35.83468', '2020-07-31 03:25:33'),
(29, 'Makutupora JKT', 'Makutupora, Dodoma', '-5.99385', '35.752574', '2020-07-31 03:25:33'),
(30, 'Mirembe Mental Health (MMHH)', 'Hazina, Dodoma', '-6.18005', '35.7288', '2020-07-31 03:29:26'),
(31, 'Charity Vision Eye CVT', 'Chahwa, Dodoma', '-6.18754', '35.74402', '2020-07-31 03:29:26');

-- --------------------------------------------------------

--
-- Table structure for table `hospitalinsurance`
--

CREATE TABLE `hospitalinsurance` (
  `hospitalID` int(11) NOT NULL,
  `insuranceID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalinsurance`
--

INSERT INTO `hospitalinsurance` (`hospitalID`, `insuranceID`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(2, 2),
(3, 2),
(4, 2),
(4, 3),
(5, 2),
(5, 3),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(15, 3),
(16, 2),
(16, 3),
(17, 2),
(18, 2),
(18, 3),
(19, 2),
(19, 3),
(19, 4);

-- --------------------------------------------------------

--
-- Table structure for table `hospitalservices`
--

CREATE TABLE `hospitalservices` (
  `hospitalID` int(11) NOT NULL,
  `servicesID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hospitalservices`
--

INSERT INTO `hospitalservices` (`hospitalID`, `servicesID`) VALUES
(4, 1),
(4, 10),
(4, 5),
(4, 9),
(5, 1),
(5, 2),
(5, 4),
(5, 5),
(5, 8),
(5, 9),
(5, 10),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(6, 10),
(7, 1),
(7, 2),
(7, 3),
(9, 1),
(9, 2),
(18, 1),
(18, 2),
(18, 3),
(18, 4),
(18, 5),
(18, 6),
(18, 10);

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `id` int(11) NOT NULL,
  `insurancename` varchar(100) NOT NULL,
  `added_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`id`, `insurancename`, `added_at`) VALUES
(1, '', '2020-08-02 23:52:37'),
(2, 'NHIF', '2020-08-02 23:52:37'),
(3, 'NSSF', '2020-08-02 23:52:37'),
(4, 'AAR', '2020-08-02 23:52:37'),
(5, 'Jubilee', '2020-08-02 23:52:37'),
(6, 'Resolution', '2020-08-02 23:52:37'),
(7, 'Strategies', '2020-08-02 23:52:37'),
(8, 'SHIB', '2020-08-02 23:52:37'),
(9, 'Max Bupa', '2020-08-02 23:52:37'),
(10, 'JKT Insurance', '2020-08-02 23:52:37');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `servicename` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `servicename`, `created_at`) VALUES
(1, 'Outpatient Services - OPD', '2020-07-31 02:34:27'),
(2, 'Inpatient Services - IPD', '2020-07-31 02:34:27'),
(3, 'Other Non-Communicable Disease Care and Treatment - NCD', '2020-07-31 02:34:27'),
(4, 'Major and/or Minor Surgical Interventions', '2020-07-31 02:34:27'),
(5, 'Diagnosis Serices', '2020-07-31 02:34:27'),
(6, 'Radiology Services:X-Ray, Ultrasound, CT-Scan, MRI', '2020-07-31 02:34:27'),
(7, 'Oral Health Services(Dental Serices)', '2020-07-31 02:34:27'),
(8, 'Reproductive & Child Health Care Serices', '2020-07-31 02:34:27'),
(9, 'HIV/AIDS Prevention', '2020-07-31 02:34:27'),
(10, 'Emergency Preparedness', '2020-07-31 02:34:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`) VALUES
(1, 'manuel', 'manuelmichael97@gmail.com', '$2y$10$e0Ctv5I5MHtO6.7wmfju/.nZKGxjhKbiqybhVZNz41jT1egPwF81a', '2020-07-28 02:26:16'),
(2, 'Paul', 'Paul', '$2y$10$LWf4SesUNw9.FwxqvfpHSO8bVBB8sHqCzdVETSy8PeXkpR1hFOpCC', '2020-07-30 12:57:41'),
(3, 'aisha', 'soudayesha@gmail.com', '$2y$10$XHv.nxhowXq2get4V6GPSOa/KFj.Ygi/KoJFZ/1rmuvaa4nqn/G0y', '2020-08-03 12:29:51'),
(4, 'rose', 'rose.gervanus@gmail.com', '$2y$10$aRFKgOCJx6ZiZ/ETQ6ZKz.59sFYVO69.g2.kM4PcqUYypf3SGg5vS', '2020-08-03 12:31:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `insurance`
--
ALTER TABLE `insurance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
