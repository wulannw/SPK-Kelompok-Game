-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 07, 2025 at 12:34 PM
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
-- Database: `saw_playstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `saw_aplikasi`
--

CREATE TABLE `saw_aplikasi` (
  `nama` varchar(100) NOT NULL,
  `pengembang` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `saw_aplikasi`
--

INSERT INTO `saw_aplikasi` (`nama`, `pengembang`, `kategori`) VALUES
('Genshin Impact', 'COGNOSPHERE PTE. LTD.', 'Role Playing'),
('Good Pizza, Great Pizza', 'TapBlaze', 'Simulation'),
('Minecraft', 'Mojang', 'Simulation'),
('Need for Speed No Limits', 'ELECTRONIC ARTS', 'Racing'),
('Sky: Children of the Light', 'thatgamecompany inc', 'Role Playing');

-- --------------------------------------------------------

--
-- Table structure for table `saw_kriteria`
--

CREATE TABLE `saw_kriteria` (
  `no` int(11) NOT NULL,
  `peringkat` float NOT NULL,
  `ukuran` float NOT NULL,
  `unduhan` float NOT NULL,
  `aktif` float NOT NULL,
  `manfaat` float NOT NULL,
  `kelebihan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `saw_kriteria`
--

INSERT INTO `saw_kriteria` (`no`, `peringkat`, `ukuran`, `unduhan`, `aktif`, `manfaat`, `kelebihan`) VALUES
(7, 0.24, 0.18, 0.18, 0.12, 0.18, 0.12);

-- --------------------------------------------------------

--
-- Table structure for table `saw_penilaian`
--

CREATE TABLE `saw_penilaian` (
  `nama` varchar(100) NOT NULL,
  `peringkat` float NOT NULL,
  `ukuran` float NOT NULL,
  `unduhan` float NOT NULL,
  `aktif` float NOT NULL,
  `manfaat` float NOT NULL,
  `kelebihan` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `saw_penilaian`
--

INSERT INTO `saw_penilaian` (`nama`, `peringkat`, `ukuran`, `unduhan`, `aktif`, `manfaat`, `kelebihan`) VALUES
('Genshin Impact', 4.4, 4, 4, 4, 3, 3),
('Good Pizza, Great Pizza', 4.6, 3, 4, 4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `saw_perankingan`
--

CREATE TABLE `saw_perankingan` (
  `no` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nilai_akhir` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `saw_perankingan`
--

INSERT INTO `saw_perankingan` (`no`, `nama`, `nilai_akhir`) VALUES
(1, 'Genshin Impact', 0.935),
(2, 'Good Pizza, Great Pizza', 1.02);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `saw_aplikasi`
--
ALTER TABLE `saw_aplikasi`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `saw_penilaian`
--
ALTER TABLE `saw_penilaian`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `saw_perankingan`
--
ALTER TABLE `saw_perankingan`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `saw_kriteria`
--
ALTER TABLE `saw_kriteria`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saw_perankingan`
--
ALTER TABLE `saw_perankingan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
