-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 15, 2022 at 02:31 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `appointment_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(20) NOT NULL,
  PRIMARY KEY (`appointment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `patient_id`, `date`, `time`) VALUES
(1, 1, '2021-12-09', '3:00 PM'),
(2, 1, '2021-11-30', '3:15 PM');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `payment_mode` varchar(10) NOT NULL,
  `payment_status` varchar(10) NOT NULL,
  `invoice_title` varchar(100) NOT NULL,
  `invoice_amount` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `patient_id`, `payment_mode`, `payment_status`, `invoice_title`, `invoice_amount`, `invoice_date`) VALUES
(1, 1, 'Cash', 'Paid', '[\"Purchase of Panadol\",\"Testing Fee\",\"Consultation Fee\"]', '[\"15\",\"45\",\"50\"]', '2021-11-27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patient_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `add` varchar(50) NOT NULL,
  `height` varchar(5) NOT NULL,
  `weight` int(11) NOT NULL,
  `b_group` varchar(10) NOT NULL,
  `b_pressure` int(11) NOT NULL,
  `pulse` int(11) NOT NULL,
  `respiration` int(11) NOT NULL,
  `allergy` varchar(50) NOT NULL,
  `diet` varchar(10) NOT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `p_name`, `age`, `gender`, `phone`, `add`, `height`, `weight`, `b_group`, `b_pressure`, `pulse`, `respiration`, `allergy`, `diet`) VALUES
(1, 'Mr. Smith', 45, 1, '2207425159', 'Kanifing Estate', '6.5', 75, 'AB+', 12, 12, 12, 'pimples', 'vegan');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
CREATE TABLE IF NOT EXISTS `prescription` (
  `prescription_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) NOT NULL,
  `symptoms` varchar(100) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `medicine` varchar(100) NOT NULL,
  `m_note` varchar(100) NOT NULL,
  `test` varchar(100) NOT NULL,
  `t_note` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`prescription_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`prescription_id`, `patient_id`, `symptoms`, `diagnosis`, `medicine`, `m_note`, `test`, `t_note`, `date`) VALUES
(1, 1, 'vomiting and extreme body heat', 'severe headache', '[\"Pnadol\",\"Paracetamol\",\"ibrufen\"]', '[\"drink  twica a day\",\"1  a day\",\"2 tabs 2 X daily\"]', '[\"blood test\"]', '[\"not normal\"]', '2021-11-27'),
(2, 1, 'storeo10', 'storeo10', '[\"ibrufen\"]', '[\"1  a day\"]', '[\"blood test\"]', '[\"not normal\"]', '2022-02-18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `doctor_name`, `email`, `mobile`, `password`, `logo`, `favicon`, `title`) VALUES
(1, 'admin', 'Harb', 'harbmathew@yahoo.com', '002207425159', 'cGFzc3dvcmQ=', 'LOGO-126x134.png', 'logovp-favicon-32x32.png', 'DoctorCare');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
