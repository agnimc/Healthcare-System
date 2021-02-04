-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2020 at 05:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_id` int(5) NOT NULL,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_id`, `appointment_doctor`, `appointment_patient`, `appointment_time`, `appointment_date`, `appointment_available`) VALUES
(12, 1, 1, '02:30:00', '2020-10-20', 'YES'),
(16, 2, 3, '16:45:00', '2020-10-21', 'YES'),
(17, 1, 1, '00:45:00', '2020-10-22', 'YES'),
(20, 6, 4, '13:00:00', '2020-10-24', 'YES'),
(21, 6, 8, '18:00:00', '2020-11-01', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `delete_appointment`
--

CREATE TABLE `delete_appointment` (
  `appointment_id` int(5) NOT NULL,
  `appointment_doctor` int(30) NOT NULL,
  `appointment_patient` int(30) NOT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `delete_appointment`
--

INSERT INTO `delete_appointment` (`appointment_id`, `appointment_doctor`, `appointment_patient`, `appointment_time`, `appointment_date`, `appointment_available`) VALUES
(18, 5, 7, '10:00:00', '2020-10-23', 'YES'),
(19, 5, 8, '01:00:00', '2020-10-24', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` int(5) NOT NULL,
  `doctor_name` varchar(30) NOT NULL,
  `doctor_spec` varchar(30) NOT NULL,
  `doctor_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctor_name`, `doctor_spec`, `doctor_available`) VALUES
(1, 'Abhay', 'Heart', 'YES'),
(2, 'Aman', 'Eye', 'YES'),
(3, 'Raju', 'Heart', 'YES'),
(4, 'Rakesh', 'Physician', 'YES'),
(5, 'Naresh', 'Neurology', 'YES'),
(6, 'Mitali', 'Orthopedic', 'NOT'),
(7, 'agnim', 'Dentist', 'NOT');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(5) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `patient_address` varchar(30) NOT NULL,
  `patient_gender` varchar(6) NOT NULL,
  `patient_available` varchar(3) NOT NULL DEFAULT 'YES'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `patient_address`, `patient_gender`, `patient_available`) VALUES
(1, 'Arun', 'Noida', 'Male', 'YES'),
(2, 'Sunil', 'Delhi', 'Male', 'YES'),
(3, 'Agnim', 'Mumbai', 'Male', 'YES'),
(4, 'Surbhi', 'Chennai', 'Female', 'YES'),
(6, 'Virat', 'Delhi', 'Male', 'YES'),
(7, 'Manish', 'Noida', 'Male', 'YES'),
(8, 'Geeta', 'Varanasi', 'Female', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `trn_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `trn_date`) VALUES
(1, 'agnim', 'agnim@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2020-10-18 22:24:20'),
(2, 'user2', 'user2@gmail.com', '50f84daf3a6dfd6a9f20c9f8ef428942', '2020-10-18 06:26:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `delete_appointment`
--
ALTER TABLE `delete_appointment`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `doctor_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
