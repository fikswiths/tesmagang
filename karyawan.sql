-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 04:48 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dataset`
--

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(100) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(200) NOT NULL,
  `Alamat` varchar(255) DEFAULT NULL,
  `tgl_lahir` date NOT NULL,
  `Pendidikan` varchar(50) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Departemen` int(5) DEFAULT NULL,
  `Level_grade` int(5) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `NIK`, `Nama`, `tempat_lahir`, `Alamat`, `tgl_lahir`, `Pendidikan`, `Status`, `Departemen`, `Level_grade`, `username`, `password`) VALUES
(1701136405, '4236452635423372', 'azam', 'jombang', 'ngawi', '2023-11-26', 'S1', 'Y', 5, 5, 'azam', '4f43f2e24b15ce929241ced6782f550c'),
(1701138044, '2111111111111111', 'eka', 'ngawi', 'bwi', '2023-11-16', 'SLTA', 'Y', 3, 3, 'eka', '0dda5e4e37c5f1ec3082bb5f305b67ec');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `NIK` (`NIK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
