-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2020 at 05:26 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rattrapage_2020_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `examen`
--

CREATE TABLE `examen` (
  `id` int(11) NOT NULL,
  `patientId` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `resultat` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examen`
--

INSERT INTO `examen` (`id`, `patientId`, `type`, `date`, `resultat`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'analyse sanguine ', '2015-12-21 07:53:17', NULL, '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(2, 1, 'COVID Virologique ', '2017-08-03 05:23:32', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(3, 1, 'COVID Sérologique ', '2015-08-20 00:49:27', 'negatif', '2020-11-01 17:21:03', '2020-11-01 17:22:48'),
(4, 1, 'analyse d\'urine ', '2018-01-09 08:19:53', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(5, 1, 'allergie ', '2014-02-11 16:46:10', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(6, 2, 'analyse sanguine ', '2019-03-12 21:20:50', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(7, 2, 'COVID Virologique ', '2013-02-09 15:22:23', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(8, 2, 'COVID Sérologique ', '2017-12-09 02:55:31', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(9, 2, 'analyse d\'urine ', '2019-05-04 02:45:24', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(10, 2, 'allergie ', '2013-09-23 08:43:31', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(11, 3, 'analyse sanguine ', '2020-03-06 00:24:13', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(12, 3, 'COVID Virologique ', '2020-09-29 08:22:46', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(13, 3, 'COVID Sérologique ', '2017-09-10 20:04:11', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(14, 3, 'analyse d\'urine ', '2012-02-23 07:27:04', 'negatif', '2020-11-01 17:21:03', '2020-11-01 17:25:42'),
(15, 3, 'allergie ', '2019-06-26 23:18:11', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(16, 4, 'analyse sanguine ', '2018-05-28 19:59:14', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(17, 4, 'COVID Virologique ', '2016-10-11 21:58:45', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(18, 4, 'COVID Sérologique ', '2016-08-10 13:51:43', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(19, 4, 'analyse d\'urine ', '2017-02-13 04:50:00', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(20, 4, 'allergie ', '2020-04-07 19:44:09', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(21, 5, 'analyse sanguine ', '2012-04-13 04:21:45', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(22, 5, 'COVID Virologique ', '2016-03-13 03:55:49', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(23, 5, 'COVID Sérologique ', '2012-09-19 14:50:14', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(24, 5, 'analyse d\'urine ', '2015-08-02 07:12:31', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(25, 5, 'allergie ', '2013-03-09 20:23:01', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(26, 6, 'analyse sanguine ', '2018-02-05 19:38:22', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(27, 6, 'COVID Virologique ', '2012-12-22 02:18:02', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(28, 6, 'COVID Sérologique ', '2013-12-23 17:10:05', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(29, 6, 'analyse d\'urine ', '2013-11-09 16:37:46', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(30, 6, 'allergie ', '2012-04-09 17:43:02', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(31, 7, 'analyse sanguine ', '2019-10-29 16:28:42', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(32, 7, 'COVID Virologique ', '2012-03-16 01:25:45', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(33, 7, 'COVID Sérologique ', '2016-12-31 04:14:34', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(34, 7, 'analyse d\'urine ', '2012-01-30 13:04:17', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(35, 7, 'allergie ', '2018-06-21 04:47:59', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(36, 8, 'analyse sanguine ', '2017-03-16 18:30:01', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(37, 8, 'COVID Virologique ', '2013-05-26 22:28:21', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(38, 8, 'COVID Sérologique ', '2016-02-14 19:42:16', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(39, 8, 'analyse d\'urine ', '2012-10-27 01:37:55', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(40, 8, 'allergie ', '2012-01-20 18:39:20', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(41, 9, 'analyse sanguine ', '2018-11-14 03:54:33', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(42, 9, 'COVID Virologique ', '2019-03-23 16:59:53', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(43, 9, 'COVID Sérologique ', '2014-07-17 08:15:32', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(44, 9, 'analyse d\'urine ', '2016-12-27 18:39:34', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(45, 9, 'allergie ', '2015-09-10 04:21:48', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(46, 10, 'analyse sanguine ', '2019-06-07 23:09:40', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(47, 10, 'COVID Virologique ', '2017-07-06 08:04:00', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(48, 10, 'COVID Sérologique ', '2017-03-18 18:54:54', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(49, 10, 'analyse d\'urine ', '2016-10-21 06:47:39', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03'),
(50, 10, 'allergie ', '2012-11-26 20:01:06', NULL, '2020-11-01 17:21:03', '2020-11-01 17:21:03');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `nom`, `prenom`, `createdAt`, `updatedAt`) VALUES
(1, 'patient-00 ', 'patient-00 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(2, 'patient-01 ', 'patient-01 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(3, 'patient-02 ', 'patient-02 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(4, 'patient-03 ', 'patient-03 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(5, 'patient-04 ', 'patient-04 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(6, 'patient-05 ', 'patient-05 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(7, 'patient-06 ', 'patient-06 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(8, 'patient-07 ', 'patient-07 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(9, 'patient-08 ', 'patient-08 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02'),
(10, 'patient-09 ', 'patient-09 ', '2020-11-01 17:17:02', '2020-11-01 17:17:02');

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20201030101240-create-patient.js'),
('20201030101325-create-examen.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examen`
--
ALTER TABLE `examen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientId` (`patientId`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examen`
--
ALTER TABLE `examen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `examen`
--
ALTER TABLE `examen`
  ADD CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`patientId`) REFERENCES `patient` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
