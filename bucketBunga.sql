-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2019 at 09:15 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bucketBunga`
--

-- --------------------------------------------------------

--
-- Table structure for table `bucketBunga`
--

CREATE TABLE `bucketBunga` (
  `id` int(11) NOT NULL,
  `namaBunga` varchar(25) NOT NULL,
  `gambar` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `id_kat` int(11) NOT NULL,
  `url` text NOT NULL,
  `tgl_upload` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bucketBunga`
--

INSERT INTO `bucketBunga` (`id`, `namaBunga`, `gambar`, `keterangan`, `id_kat`, `url`, `tgl_upload`) VALUES
(1, 'Bucket Bunga no 1', '', 'Ini Keterangan Bucket bunga no 1', 1, 'www.instagram.com', '2019-12-08 04:49:18'),
(2, 'Bucket Bunga no 2', '', 'ini Keterangan Bucket Bunga no 2', 2, 'www.google.com', '2019-12-08 08:21:18');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kat` int(11) NOT NULL,
  `nama_kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kat`, `nama_kategori`) VALUES
(1, 'merah'),
(2, 'kuning'),
(3, 'hijau'),
(4, 'biru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bucketBunga`
--
ALTER TABLE `bucketBunga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kat` (`id_kat`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bucketBunga`
--
ALTER TABLE `bucketBunga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bucketBunga`
--
ALTER TABLE `bucketBunga`
  ADD CONSTRAINT `bucketBunga_ibfk_1` FOREIGN KEY (`id_kat`) REFERENCES `kategori` (`id_kat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
