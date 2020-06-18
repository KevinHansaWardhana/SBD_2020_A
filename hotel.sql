-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 18, 2020 at 08:44 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` varchar(200) NOT NULL,
  `no_kamar` varchar(100) NOT NULL,
  `harga` int(50) NOT NULL,
  `jenis_kamar` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `no_kamar`, `harga`, `jenis_kamar`, `status`) VALUES
('K0310', '10', 300000, 'Presidential Suite', 'tidak dipakai'),
('K0412', '12', 150000, 'Suite Room', 'dipakai'),
('K0502', '14', 160000, 'Suite Room', 'tidak dipakai'),
('K0712', '37', 175000, 'Standart Room', 'tidak dipakai');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` varchar(100) NOT NULL,
  `nama_tamu` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(100) NOT NULL,
  `telepon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `alamat`, `jenis_kelamin`, `telepon`) VALUES
('T1000', 'yoga adi saputra', 'surakarta', 'Perempuan', '0800000000000'),
('T1001', 'tanti', 'klaten', 'Laki - Laki', '0812312321'),
('T1002', 'kevin', 'sukoharjo', 'Laki - Laki', '085642343'),
('T1004', 'goevara', 'mojosongo', 'Perempuan', '08621331245'),
('T1005', 'tutis', 'bandungLaki-laki', 'Laki-laki', '082132372134'),
('T1007', 'tuti', 'solo', 'Perempuan', '0324324'),
('T1008', 'yanti ', 'boyolali', 'Laki-laki', '081111111112');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(100) NOT NULL,
  `id_kamarFK` varchar(200) NOT NULL,
  `id_tamuFK` varchar(100) NOT NULL,
  `checkin` date NOT NULL,
  `checkout` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_kamarFK`, `id_tamuFK`, `checkin`, `checkout`) VALUES
('T123220', 'K0310', 'T1000', '2020-06-09', '2020-06-09'),
('T123221', 'K0412', 'T1001', '2020-06-11', '2020-06-12'),
('T123222', 'K0310', 'T1000', '2020-06-28', '2020-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_kamarFK` (`id_kamarFK`),
  ADD KEY `id_tamuFK` (`id_tamuFK`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_kamarFK`) REFERENCES `kamar` (`id_kamar`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_tamuFK`) REFERENCES `tamu` (`id_tamu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
