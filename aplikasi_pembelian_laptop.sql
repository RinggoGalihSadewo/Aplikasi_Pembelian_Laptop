-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 02:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aplikasi_pembelian_laptop`
--

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `Nama` varchar(40) NOT NULL,
  `Id_Pembeli` varchar(10) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `No.Hp` bigint(20) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`Nama`, `Id_Pembeli`, `Alamat`, `No.Hp`, `Email`) VALUES
('Ringgo Galih Sadewo', 'P001', 'Bukit Bilabong Jaya', 83177117265, 'ringgogalihsadewoo@gmail.com'),
('Bagus Prasetyo', 'P002', 'Way Halim', 895606146160, 'bagusdwiprasetyo@gmail.com'),
('Ismi', 'P003', 'lampung', 8965237384, 'ismi@gmail.com'),
('Dea', 'P004', 'Bandar Lampung', 8957464723, 'dea@gmail.com'),
('ika', 'P005', 'JAWA', 892782983, 'ika@gmail.com'),
('Natasya', 'P006', 'German', 21387763598, 'natasya@gmail.com'),
('Heri', 'P007', 'Padang', 8976378882, 'Heri@gmail.com'),
('M Fathur Wiratama', 'P008', 'Bilabong', 89893753, 'tama@gmail.com'),
('Eko', 'P009', 'Lampung', 89427485284, 'Eko@gmail.com'),
('Angga', 'P010', 'Jakarta', 892848721, 'angga@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `Id_Pembeli` varchar(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Saran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`Id_Pembeli`, `Nama`, `Saran`) VALUES
('P001', 'Ringgo Galih Sadewo', 'Buat toko dong hehehe...'),
('p010', 'Angga', 'jual laptop murah dong heheheh....');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Id_Pembeli` varchar(10) NOT NULL,
  `Kode_Pesanan` varchar(10) NOT NULL,
  `Nama Laptop` varchar(30) NOT NULL,
  `Harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Id_Pembeli`, `Kode_Pesanan`, `Nama Laptop`, `Harga`) VALUES
('P001', 'ASDSFS', 'Lenovo Legion Y7000', 'Rp. 13.090.000'),
('P002', 'DWQWE', 'Dell XPS 15 7590 UHD', 'Rp. 25.950.000'),
('P010', 'hh8', 'Asus ROG Zephyrus', 'Rp. 30.000.000'),
('P010', 'IHIOFR', 'Lenovo Legion Y7000', 'Rp. 13.090.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`Id_Pembeli`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`Saran`),
  ADD KEY `Id_Pembeli` (`Id_Pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Pesanan`),
  ADD KEY `Id_Pembeli` (`Id_Pembeli`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `saran`
--
ALTER TABLE `saran`
  ADD CONSTRAINT `saran_ibfk_1` FOREIGN KEY (`Id_Pembeli`) REFERENCES `pembeli` (`Id_Pembeli`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Id_Pembeli`) REFERENCES `pembeli` (`Id_Pembeli`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
