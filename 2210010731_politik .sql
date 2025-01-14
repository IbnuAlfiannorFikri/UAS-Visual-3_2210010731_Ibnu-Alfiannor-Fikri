-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2025 at 03:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2210010731_politik`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_anggota`
--

CREATE TABLE `data_anggota` (
  `id_data_anggota` int(25) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `partai_politik` varchar(255) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `domisili` varchar(255) NOT NULL,
  `pendidikan` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telpon_anggota` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_domisili`
--

CREATE TABLE `data_domisili` (
  `id_domisili` int(11) NOT NULL,
  `nama_partai_politik` varchar(255) NOT NULL,
  `domisili` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nama_pengurus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kepengurusan`
--

CREATE TABLE `kepengurusan` (
  `id_kepengurusan` int(25) NOT NULL,
  `nama_pengurus` varchar(255) NOT NULL,
  `partai_politik_diurus` varchar(255) NOT NULL,
  `kewenangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profil_partai`
--

CREATE TABLE `profil_partai` (
  `id_profil_partai` int(25) NOT NULL,
  `nama_partai_politik` varchar(255) NOT NULL,
  `nama_ketua` varchar(255) NOT NULL,
  `nama_wakil` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `akses` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_anggota`
--
ALTER TABLE `data_anggota`
  ADD PRIMARY KEY (`id_data_anggota`);

--
-- Indexes for table `data_domisili`
--
ALTER TABLE `data_domisili`
  ADD PRIMARY KEY (`id_domisili`);

--
-- Indexes for table `kepengurusan`
--
ALTER TABLE `kepengurusan`
  ADD PRIMARY KEY (`id_kepengurusan`);

--
-- Indexes for table `profil_partai`
--
ALTER TABLE `profil_partai`
  ADD PRIMARY KEY (`id_profil_partai`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_anggota`
--
ALTER TABLE `data_anggota`
  MODIFY `id_data_anggota` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_domisili`
--
ALTER TABLE `data_domisili`
  MODIFY `id_domisili` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kepengurusan`
--
ALTER TABLE `kepengurusan`
  MODIFY `id_kepengurusan` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profil_partai`
--
ALTER TABLE `profil_partai`
  MODIFY `id_profil_partai` int(25) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
