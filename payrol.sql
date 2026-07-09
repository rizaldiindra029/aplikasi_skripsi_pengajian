-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2022 at 01:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payrol`
--

-- --------------------------------------------------------

--
-- Table structure for table `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(100) NOT NULL,
  `bukti_absen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `absen`
--

INSERT INTO `absen` (`id_absen`, `nip`, `waktu`, `keterangan`, `bukti_absen`) VALUES
(1, '123', '2022-06-01 15:44:29', 'masuk', ''),
(2, '123', '2022-06-01 15:44:33', 'pulang', ''),
(3, '123', '2022-06-01 17:28:13', 'masuk', ''),
(4, '123', '2022-06-01 17:28:34', 'pulang', ''),
(5, '123', '2022-06-06 03:10:23', 'masuk', ''),
(6, '70', '2022-06-06 03:31:52', 'masuk', ''),
(7, '70', '2022-06-06 12:38:28', 'pulang', ''),
(8, '123', '2022-06-06 13:21:57', 'pulang', ''),
(9, '123', '2022-06-07 02:06:08', 'masuk', ''),
(10, '70', '2022-06-07 03:53:26', 'masuk', ''),
(11, '888', '2022-06-07 04:03:08', 'masuk', ''),
(12, '889', '2022-06-07 04:11:35', 'masuk', ''),
(13, '123', '2022-06-07 08:50:57', 'pulang', ''),
(14, '888', '2022-06-07 09:05:53', 'pulang', ''),
(15, '889', '2022-06-07 09:06:13', 'pulang', ''),
(16, '123', '2022-06-08 01:36:51', 'masuk', ''),
(17, '889', '2022-06-08 01:39:14', 'masuk', ''),
(57, '123', '2022-07-03 12:58:42', 'masuk', 'UU37.png'),
(58, '123', '2022-07-03 13:04:29', 'pulang', 'UU16.png'),
(59, '123', '2022-07-04 22:52:05', 'masuk', 'UU39.png');

-- --------------------------------------------------------

--
-- Table structure for table `cuti`
--

CREATE TABLE `cuti` (
  `id_cuti` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `jenis_cuti` enum('cuti','izin','sakit') NOT NULL,
  `bukti` varchar(254) DEFAULT NULL,
  `alasan` text NOT NULL,
  `status` enum('diajukan','diterima','ditolak') NOT NULL,
  `waktu_pengajuan` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `nip`, `jenis_cuti`, `bukti`, `alasan`, `status`, `waktu_pengajuan`) VALUES
(1, '123', 'sakit', 'nihiwatu.jpg', 'testing', 'diterima', '2022-06-02 17:14:54'),
(2, '123', 'izin', NULL, 'healing', 'diterima', '2022-06-06 03:59:00'),
(4, '123', 'cuti', NULL, 'MAU NIKAH', 'ditolak', '2022-06-06 13:00:40'),
(5, '888', 'izin', NULL, 'mau ke pantai', 'diterima', '2022-06-08 01:38:25');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `departemen_id` int(11) NOT NULL,
  `departemen` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`departemen_id`, `departemen`) VALUES
(1, 'Keuangan'),
(2, 'Administrasi');

-- --------------------------------------------------------

--
-- Table structure for table `detailcuti`
--

CREATE TABLE `detailcuti` (
  `id_detail` int(11) NOT NULL,
  `id_cuti` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `detailcuti`
--

INSERT INTO `detailcuti` (`id_detail`, `id_cuti`, `tanggal`) VALUES
(1, 1, '2022-06-03'),
(2, 1, '2022-06-04'),
(3, 2, '2022-06-05'),
(4, 3, '2022-06-07'),
(5, 3, '2022-06-08'),
(6, 3, '2022-06-09'),
(7, 3, '2022-06-10'),
(8, 4, '2022-06-07'),
(9, 4, '2022-06-08'),
(10, 5, '2022-06-08'),
(11, 6, '2022-06-10'),
(12, 7, '2022-04-05'),
(13, 7, '2022-04-06'),
(14, 7, '2022-04-07'),
(15, 7, '2022-04-08'),
(16, 7, '2022-04-09'),
(17, 7, '2022-04-10'),
(18, 7, '2022-04-11'),
(19, 7, '2022-04-12'),
(20, 7, '2022-04-13'),
(21, 7, '2022-04-14'),
(22, 7, '2022-04-15'),
(23, 7, '2022-04-16'),
(24, 7, '2022-04-17'),
(25, 7, '2022-04-18'),
(26, 7, '2022-04-19'),
(27, 7, '2022-04-20'),
(28, 7, '2022-04-21'),
(29, 7, '2022-04-22'),
(30, 7, '2022-04-23'),
(31, 7, '2022-04-24'),
(32, 7, '2022-04-25'),
(33, 7, '2022-04-26'),
(34, 7, '2022-04-27'),
(35, 7, '2022-04-28'),
(36, 7, '2022-04-29'),
(37, 7, '2022-04-30'),
(38, 7, '2022-05-01'),
(39, 7, '2022-05-02'),
(40, 7, '2022-05-03'),
(41, 7, '2022-05-04'),
(42, 7, '2022-05-05'),
(43, 7, '2022-05-06'),
(44, 7, '2022-05-07'),
(45, 7, '2022-05-08'),
(46, 7, '2022-05-09'),
(47, 7, '2022-05-10'),
(48, 7, '2022-05-11'),
(49, 7, '2022-05-12'),
(50, 7, '2022-05-13'),
(51, 7, '2022-05-14'),
(52, 7, '2022-05-15'),
(53, 7, '2022-05-16'),
(54, 7, '2022-05-17'),
(55, 7, '2022-05-18'),
(56, 7, '2022-05-19'),
(57, 7, '2022-05-20'),
(58, 7, '2022-05-21'),
(59, 7, '2022-05-22'),
(60, 7, '2022-05-23'),
(61, 7, '2022-05-24'),
(62, 7, '2022-05-25'),
(63, 7, '2022-05-26'),
(64, 7, '2022-05-27'),
(65, 7, '2022-05-28'),
(66, 7, '2022-05-29'),
(67, 7, '2022-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `waktu_masuk` date NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip`, `jenis_kelamin`, `waktu_masuk`, `id_departemen`, `gaji`) VALUES
('123', 'L', '2021-06-06', 1, 100000),
('888', 'L', '2022-01-01', 2, 350000),
('889', 'P', '2022-02-01', 2, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(254) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(254) NOT NULL,
  `level` enum('admin','pegawai') NOT NULL,
  `nip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `password`, `level`, `nip`) VALUES
(1, 'Administrator', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'admin', NULL),
(2, 'Yudi Setyawan', 'yudi@gmail.com', '202cb962ac59075b964b07152d234b70', 'pegawai', '123'),
(9, 'Kusuma', 'kusuma@gmail.com', '0a113ef6b61820daa5611c870ed8d5ee', 'pegawai', '888'),
(10, 'Wina', 'wina@gmail.com', '07871915a8107172b3b5dc15a6574ad3', 'pegawai', '889');

-- --------------------------------------------------------

--
-- Table structure for table `web`
--

CREATE TABLE `web` (
  `id_web` int(11) NOT NULL,
  `logo` varchar(254) NOT NULL,
  `nama` varchar(254) NOT NULL,
  `author` varchar(254) NOT NULL,
  `alamat` text NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `web`
--

INSERT INTO `web` (`id_web`, `logo`, `nama`, `author`, `alamat`, `nohp`, `email`) VALUES
(1, 'fingerprint.png', 'E - Absensi', 'Yudi Setyawan', 'Gg. Damai No. 2, Rajabasa raya, Rajabasa', '082382000703', 'yudi.setyawan07@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`) USING BTREE;

--
-- Indexes for table `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`) USING BTREE;

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`departemen_id`) USING BTREE;

--
-- Indexes for table `detailcuti`
--
ALTER TABLE `detailcuti`
  ADD PRIMARY KEY (`id_detail`) USING BTREE;

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id_web`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `departemen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `detailcuti`
--
ALTER TABLE `detailcuti`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `web`
--
ALTER TABLE `web`
  MODIFY `id_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
