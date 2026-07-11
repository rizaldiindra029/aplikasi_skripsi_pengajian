-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jul 2026 pada 13.41
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.3.31

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
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `keterangan` varchar(100) NOT NULL,
  `bukti_absen` varchar(200) NOT NULL,
  `id_departemen` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id_absen`, `nip`, `waktu`, `keterangan`, `bukti_absen`, `id_departemen`) VALUES
(70, '111004', '2022-08-01 00:20:17', 'masuk', '1766486500.jpg', ''),
(71, '111007', '2022-08-01 00:45:01', 'masuk', 'images.png', ''),
(72, '111011', '2022-08-01 00:15:25', 'masuk', 'absen.jpeg', ''),
(73, '111001', '2023-06-26 12:29:20', 'masuk', 'Presensi UTS AKPL.png', ''),
(74, '111002', '2023-06-26 12:32:39', 'masuk', 'absen.jpeg', ''),
(75, '111001', '2023-06-26 12:47:04', 'pulang', 'absen.jpeg', ''),
(76, '111001', '2026-05-31 13:52:18', 'masuk', 'TimePhoto_20260531_204658.jpg', ''),
(77, '111016', '2026-05-31 13:56:43', 'masuk', 'TimePhoto_20260531_204658.jpg', ''),
(78, '111016', '2026-05-31 13:59:36', 'pulang', 'TimePhoto_20260531_205815.jpg', ''),
(79, '111016', '2026-06-03 16:18:55', 'masuk', 'TimePhoto_20260531_205815.jpg', ''),
(80, '111016', '2026-06-06 03:27:19', 'masuk', 'TimePhoto_20260531_205815.jpg', ''),
(81, '111016', '2026-06-18 11:19:38', 'masuk', 'Code Slip pegawai.png', ''),
(82, '111120', '2026-06-30 11:36:21', 'masuk', 'Screenshot_26.png', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuti`
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
-- Dumping data untuk tabel `cuti`
--

INSERT INTO `cuti` (`id_cuti`, `nip`, `jenis_cuti`, `bukti`, `alasan`, `status`, `waktu_pengajuan`) VALUES
(1, '123', 'sakit', 'nihiwatu.jpg', 'testing', 'diterima', '2022-06-02 17:14:54'),
(2, '123', 'izin', NULL, 'healing', 'diterima', '2022-06-06 03:59:00'),
(4, '123', 'cuti', NULL, 'MAU NIKAH', 'ditolak', '2022-06-06 13:00:40'),
(5, '888', 'izin', NULL, 'mau ke pantai', 'diterima', '2022-06-08 01:38:25'),
(6, '111002', 'cuti', NULL, 'Dinas Luar Kota', 'diajukan', '2022-08-01 15:07:14'),
(7, '111006', 'sakit', 'contoh-surat-keterangan-sakit-dari-puskesmas-untuk-pelajar-60ba6dc98ede48660770e2e2.jpg', 'Sakit Demam', 'ditolak', '2022-08-01 15:09:28'),
(8, '111014', 'cuti', NULL, 'Keperluan Keluarga', 'diterima', '2022-08-01 15:10:52'),
(9, '111003', 'sakit', 'Surat_Dokter.png', 'Izin Tidak Masuk Dikarenakan Sakit', 'diterima', '2026-05-31 14:06:12'),
(10, '111016', 'cuti', NULL, 'Cuti Umroh', 'diterima', '2026-06-15 13:28:56'),
(11, '111016', 'cuti', NULL, 'Cuti Menikah', 'diterima', '2026-06-18 11:21:13'),
(12, '111120', 'izin', NULL, 'Cuti Menikah', 'diterima', '2026-06-30 11:37:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `departemen_id` int(11) NOT NULL,
  `departemen` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`departemen_id`, `departemen`) VALUES
(1, 'Direktur (Mess Pandaan)'),
(2, 'Wakil Direktur (Mess Pandaan)'),
(3, 'Perencanaan (Mess Pandaan)'),
(4, 'Quality Control (Mess Purwodadi)'),
(5, 'Arsip (Mess Sukorejo)'),
(6, 'Admin Keuangan (Mess Pandaan)'),
(7, 'IT (Mess Pandaan)'),
(8, 'Pembukuan (Mess Lawang)'),
(9, 'Ready Stock (Mess Purwodadi)'),
(10, 'Sote (Mess Purwodadi)'),
(11, 'Supervisor (Pandaan Satu)'),
(12, 'Supervisor (Pandaan Dua)'),
(13, 'Supervisor (Pandaan Tiga)'),
(14, 'Customer Service (Pandaan Satu)'),
(17, 'Customer Service (Pandaan Dua)'),
(18, 'Customer Service (Pandaan Tiga)'),
(19, 'Customer Service (Pandaan Empat)'),
(20, 'Customer Service (Sukorejo)'),
(21, 'Customer Service (Lawang Satu)'),
(22, 'Customer Service (Lawang Dua)'),
(23, 'Customer Service (Singosari)'),
(24, 'Customer Service (Dinoyo)'),
(25, 'Supervisor (Pandaan Empat)'),
(26, 'Supervisor (Sukorejo)'),
(27, 'Supervisor (Lawang Satu)'),
(28, 'Supervisor (Lawang Dua)'),
(29, 'Supervisor (Singosari)'),
(30, 'Supervisor (Dinoyo)'),
(32, 'Customer Service (Pandaan Enam)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailcuti`
--

CREATE TABLE `detailcuti` (
  `id_detail` int(11) NOT NULL,
  `id_cuti` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `detailcuti`
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
(67, 7, '2022-05-30'),
(68, 8, '2022-07-06'),
(69, 6, '2022-08-02'),
(70, 6, '2022-08-03'),
(71, 6, '2022-08-04'),
(72, 7, '2022-08-02'),
(73, 7, '2022-08-03'),
(74, 8, '2022-08-09'),
(75, 8, '2022-08-10'),
(76, 8, '2022-08-11'),
(77, 9, '2026-05-31'),
(78, 10, '2026-06-15'),
(79, 10, '2026-06-16'),
(80, 11, '2026-06-18'),
(81, 12, '2026-06-30'),
(82, 12, '2026-07-01'),
(83, 12, '2026-07-02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `waktu_masuk` date NOT NULL,
  `id_departemen` int(11) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nip`, `jenis_kelamin`, `waktu_masuk`, `id_departemen`, `gaji`) VALUES
('111001', 'L', '2010-08-07', 1, 200000),
('111002', 'P', '2012-06-21', 2, 113300),
('111003', 'L', '2015-02-12', 3, 101660),
('111004', 'P', '2015-04-01', 3, 81660),
('111005', 'P', '2017-04-13', 4, 76660),
('111006', 'L', '2018-07-01', 4, 76660),
('111007', 'L', '2016-11-29', 4, 76660),
('111008', 'P', '2018-10-14', 4, 76660),
('111009', 'L', '2015-04-19', 5, 101660),
('111010', 'L', '2018-05-23', 5, 81660),
('111011', 'P', '2018-09-01', 5, 81660),
('111012', 'P', '2016-03-17', 5, 81660),
('111013', 'P', '2017-11-23', 6, 101660),
('111014', 'P', '2017-02-16', 6, 81660),
('111015', 'L', '2016-08-04', 7, 101660),
('111016', 'L', '2019-06-11', 7, 101660),
('111017', 'L', '2018-02-01', 8, 101660),
('111018', 'P', '2020-11-20', 9, 76660),
('111019', 'P', '2017-11-17', 9, 76660),
('111020', 'L', '2022-08-17', 10, 76660),
('111021', 'P', '2017-05-11', 10, 76660),
('111022', 'L', '2019-11-26', 11, 76660),
('111023', 'P', '2020-04-01', 12, 101660),
('111024', 'P', '2019-09-12', 13, 76660),
('111025', 'P', '2019-01-17', 14, 70000),
('111026', 'P', '2021-03-24', 14, 70000),
('111027', 'L', '2020-10-10', 14, 70000),
('111119', 'L', '2026-06-18', 19, 120000),
('111120', 'L', '2026-06-30', 32, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `password`, `level`, `nip`) VALUES
(1, 'Administrator', 'admin@admin.com', '202cb962ac59075b964b07152d234b70', 'admin', NULL),
(11, 'Fariz Masruri', 'farizmasruri@gmail.com', '62a8f236810c77450fafcdff6ad5fd26', 'pegawai', '111001'),
(12, 'Khusnul', 'khusnulara8@gmail.com', '9ad267ac24e716563a3c4aed24672c90', 'pegawai', '111002'),
(13, 'Adit', 'aditjaya@gmail.com', '19196fbe2dd30db625660d39695b5f89', 'pegawai', '111003'),
(14, 'Sherly', 'sherlyhao@gmail.com', '37e214369f96f471972a99005a0a9da8', 'pegawai', '111004'),
(15, 'Okta', 'oktasitopu@gmail.com', '4505e49e34c36a794dd48f0eb3b1043e', 'pegawai', '111005'),
(16, 'Dayat', 'dayatnur@gmail.com', '2f74830307a811c0bc3c2c9d87d6f693', 'pegawai', '111006'),
(17, 'Gunawan', 'gunawanigun@gmail.com', '2469de8689e01102bb37022409eb4163', 'pegawai', '111007'),
(18, 'Tya', 'tyafera@gmail.com', '8ee819054f18f3182b7dcf24adeaffbc', 'pegawai', '111008'),
(19, 'Akil', 'ahmadakil@gmail.com', '20cb9506d935018c52e15f37ab1e2db0', 'pegawai', '111009'),
(20, 'Azhar', 'azharsaputra@gmail.com', '5286a7656610c6c48b3a07cfb73f8a15', 'pegawai', '111010'),
(21, 'Rosita', 'imarosita@gmail.com', 'a9af0393d1041b8487cc2ce3ae0f24a3', 'pegawai', '111011'),
(22, 'Farida', 'ekafarida@gmail.com', '79aaa96fdc2dd84be3e03d88cf08317d', 'pegawai', '111012'),
(23, 'Ria', 'riavela@gmail.com', '7c1ad4188bdfe06e48f37f4e50a1b0d4', 'pegawai', '111013'),
(24, 'Lailatul', 'zaralailatul@gmail.com', '00e1663f12c553fbdb5a2a4a54f62184', 'pegawai', '111014'),
(25, 'Dian', 'farendradian@gmail.com', '62fa3eb030ac2fcfceecf027d2c27403', 'pegawai', '111015'),
(26, 'Rizaldi', 'rizaldihermawan@gmail.com', '8cc8075d6d8ad3c5134e1818aa3bfb4f', 'pegawai', '111016'),
(27, 'Dani', 'fernandadani@gmail.com', '543b8fd0c32f5c5195aa01ea25179725', 'pegawai', '111017'),
(28, 'Nurul', 'nurulistiqomah@gmail.com', '3f13b8ec315845c81d371f41e772399c', 'pegawai', '111018'),
(29, 'Nanik', 'nanikfatmawati@gmail.com', '05fd21d708b3d4081ab348f1275114b5', 'pegawai', '111019'),
(30, 'bilqis', 'kurniabilqis@gmail.com', '14d4d97a036610cd2701dcb56c128e3d', 'pegawai', '111020'),
(31, 'Nunung', 'nunungfakrina@mail.com', '3ae91b33df3bbbb02c32d731ff5eaac4', 'pegawai', '111021'),
(32, 'Frandi', 'frandiahmad@gmail.com', '73040c4a422e407836ddc31b2d7e5658', 'pegawai', '111022'),
(33, 'Nanda', 'nandafera@gmail.com', '19d8e25a568d39d86d977d633fe4f46a', 'pegawai', '111023'),
(34, 'Yanti', 'yantinirmala@gmail.com', '2e3214007e6806185f56c8052ee820c9', 'pegawai', '111024'),
(35, 'Iswari', 'iswaridona@gmail.com', '18dc11ef55d6b1378d466643979b1dc2', 'pegawai', '111025'),
(36, 'Lala', 'lalatiara@gmail.com', '0104917cd7cae41b3147404cc27a8826', 'pegawai', '111026'),
(37, 'Adi', 'adilesmana@gmail.com', '4555f3a1115fe25292154416b4ee1f33', 'pegawai', '111027'),
(38, 'Indra', 'indra@gmail.com', '0d659ddc03566cb9c55c9ccf0eb2f1bb', 'pegawai', '111119'),
(39, 'rizaldi', 'rizaldiindra@gmail.com', 'd1ec29d7366e8b4cbebbd9f63797ebeb', 'pegawai', '111120');

-- --------------------------------------------------------

--
-- Struktur dari tabel `web`
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
-- Dumping data untuk tabel `web`
--

INSERT INTO `web` (`id_web`, `logo`, `nama`, `author`, `alamat`, `nohp`, `email`) VALUES
(1, 'fingerprint.png', 'Bumi Mas Gold', 'Bumi Mas Gold', 'Jl. Raya Malang - Pasuruan No.901, Jogo Nalain, Jogosari, Kec. Pandaan, Pasuruan, Jawa Timur 67156', '081252440249', 'hrdbumimas@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id_absen`) USING BTREE;

--
-- Indeks untuk tabel `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id_cuti`) USING BTREE;

--
-- Indeks untuk tabel `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`departemen_id`) USING BTREE;

--
-- Indeks untuk tabel `detailcuti`
--
ALTER TABLE `detailcuti`
  ADD PRIMARY KEY (`id_detail`) USING BTREE;

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indeks untuk tabel `web`
--
ALTER TABLE `web`
  ADD PRIMARY KEY (`id_web`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id_absen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id_cuti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `departemen`
--
ALTER TABLE `departemen`
  MODIFY `departemen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `detailcuti`
--
ALTER TABLE `detailcuti`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `web`
--
ALTER TABLE `web`
  MODIFY `id_web` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
