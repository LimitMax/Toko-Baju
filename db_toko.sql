-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 05:32 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_toko`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Men T-Shirt', 'UniqW', '148999', '199000', 'PCS', '40', '3 June 2022, 15:33', '3 June 2022, 19:26'),
(2, 'BR002', 1, 'Polo Shirt', 'Hmm', '199000', '299000', 'PCS', '25', '3 June 2022, 15:33', '3 June 2022, 19:26'),
(3, 'BR003', 1, 'Kemeja Kasual', 'UniqW', '309000', '399000', 'PCS', '50', '3 June 2022, 15:35', '3 June 2022, 19:32'),
(4, 'BR004', 1, 'Kemeja Formal', 'Hmm', '399000', '499000', 'PCS', '30', '3 June 2022, 19:17', '3 June 2022, 19:29'),
(5, 'BR005', 2, 'Celana Kasual', 'UniqW', '299000', '399000', 'PCS', '10', '3 June 2022, 19:30', '3 June 2022, 19:32'),
(6, 'BR006', 2, 'Jeans', 'UniqW', '399000', '499000', 'PCS', '40', '3 June 2022, 19:32', NULL),
(7, 'BR007', 2, 'Celana Pendek', 'Hmm', '199000', '299000', 'PCS', '50', '3 June 2022, 19:34', NULL),
(8, 'BR008', 3, 'Hoodies', 'UniqW', '299000', '499000', 'PCS', '40', '3 June 2022, 19:36', NULL),
(9, 'BR009', 3, 'Parka', 'Hmm', '599000', '899000', 'PCS', '5', '3 June 2022, 19:37', NULL),
(10, 'BR010', 4, 'Kaos Dalam', 'Hmm', '59000', '149000', 'PCS', '50', '3 June 2022, 19:38', NULL),
(11, 'BR011', 4, 'Celana Boxer', 'UniqW', '49000', '79000', 'PCS', '60', '3 June 2022, 19:40', NULL),
(12, 'BR012', 4, 'Kaos Kaki', 'Hmm', '19000', '39000', 'PCS', '70', '3 June 2022, 19:41', NULL),
(13, 'BR013', 5, 'Masker', 'Hmm', '39000', '49000', 'PCS', '100', '3 June 2022, 19:42', NULL),
(14, 'BR014', 5, 'Topi', 'UniqW', '129000', '299000', 'PCS', '10', '3 June 2022, 19:43', NULL),
(15, 'BR015', 5, 'Tas', 'Hmm', '299000', '499000', 'PCS', '30', '3 June 2022, 19:44', NULL),
(16, 'BR016', 5, 'Kacamata', 'UniqW', '159000', '199000', 'PCS', '50', '3 June 2022, 19:44', NULL),
(17, 'BR017', 5, 'Kalung', 'UniqW', '39000', '59000', 'PCS', '52', '3 June 2022, 21:38', '3 June 2022, 21:40');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(1, 'Atasan', '3 June 2022, 15:32'),
(2, 'Bawahan', '3 June 2022, 15:32'),
(3, 'Luaran', '3 June 2022, 15:32'),
(4, 'Dalaman', '3 June 2022, 15:32'),
(5, 'Aksesoris', '3 June 2022, 15:32');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Samson', 'New York', '08511010xxxx', 'samsonb@gmail.com', 'R.png', '3217091502040009');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR005', 1, '5', '1995000', '3 June 2022, 19:48', '06-2022'),
(2, 'BR005', 1, '5', '1995000', '3 June 2022, 21:43', '06-2022'),
(3, 'BR001', 1, '10', '1990000', '3 June 2022, 21:43', '06-2022'),
(4, 'BR002', 1, '5', '1495000', '3 June 2022, 21:48', '06-2022'),
(5, 'BR009', 1, '15', '13485000', '3 June 2022, 21:48', '06-2022');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(47, 'BR002', 1, '5', '1495000', '3 June 2022, 21:48'),
(48, 'BR009', 1, '15', '13485000', '3 June 2022, 21:48');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Suit Clothing Store', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
