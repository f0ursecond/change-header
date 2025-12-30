-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 30, 2025 at 07:12 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_15582`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` int NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tema_id` char(3) DEFAULT NULL,
  `bahasa` varchar(15) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `tahun_cetak` year NOT NULL,
  `harga_beli` int DEFAULT '0',
  `tanggal_beli` date DEFAULT NULL,
  `jumlah_hal` int UNSIGNED DEFAULT '0',
  `jenis_sampul` enum('HC','SC') NOT NULL DEFAULT 'HC',
  `jenis_kertas` enum('B','H') NOT NULL DEFAULT 'B',
  `sinopsis` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`buku_id`, `judul`, `tema_id`, `bahasa`, `isbn`, `tahun_cetak`, `harga_beli`, `tanggal_beli`, `jumlah_hal`, `jenis_sampul`, `jenis_kertas`, `sinopsis`, `keterangan`) VALUES
(1, 'Butir-butir Waktu', 'AGM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(2, 'Sabar', 'AGM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(3, 'Berkah', 'AGM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(4, 'Langit Runtuh', 'MTR', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(5, 'Ceritakan Mimpimu', 'FKS', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(6, 'Ikhlas', 'AGM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(7, 'Menghadapi Kesulitan', 'PUM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(8, 'Malaikat Keadilan', 'MUL', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(9, 'Mencari Ridho Ilahi', 'AGM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(10, 'Bersih Pangkal Sehat Jasmani dan Rohani', 'KES', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(11, 'The Testament', 'KEU', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(12, 'The Brethen', 'PUM', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(13, 'Menggapai Rahmat Tuhan', 'PDR', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(14, 'Mengendalikan Hawa Nafsu', 'FKS', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(15, 'Manajemen Rumah Tangga', 'MAN', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(16, 'Ikhtiar–Pikir–Zikir', 'AGM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(17, 'Adab Bergaul dalam Bertetangga', 'PUM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(18, 'Rich Dad Poor Dad', 'MAN', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(19, 'Rich Dads Cashflow', 'MAN', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(20, 'The Partner', 'MUL', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(21, 'Beginning Visual Basic 6.0', 'KOM', 'Indonesia', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(22, 'The Firm', 'MAN', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL),
(23, 'Pelican Brief', 'LLN', 'Inggris', NULL, '0000', 0, NULL, 0, 'HC', 'B', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `buku_penerbit`
--

CREATE TABLE `buku_penerbit` (
  `buku_id` int UNSIGNED NOT NULL,
  `penerbit_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku_penerbit`
--

INSERT INTO `buku_penerbit` (`buku_id`, `penerbit_id`) VALUES
(1, 19),
(2, 19),
(3, 19),
(4, 19),
(5, 19),
(6, 1),
(7, 2),
(8, 3),
(9, 3),
(10, 4),
(11, 4),
(12, 4),
(13, 25),
(14, 25),
(15, 24),
(16, 23),
(17, 20),
(18, 15),
(19, 9),
(20, 9),
(21, 18),
(22, 26),
(23, 18),
(24, 17);

-- --------------------------------------------------------

--
-- Table structure for table `buku_penulis`
--

CREATE TABLE `buku_penulis` (
  `buku_id` int UNSIGNED NOT NULL,
  `penulis_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku_penulis`
--

INSERT INTO `buku_penulis` (`buku_id`, `penulis_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 2),
(19, 2),
(20, 2),
(21, 3),
(22, 3),
(23, 4),
(24, 4),
(25, 4),
(26, 5);

-- --------------------------------------------------------

--
-- Table structure for table `negara`
--

CREATE TABLE `negara` (
  `negara_id` char(2) NOT NULL,
  `nama_neg_pembuat` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `negara`
--

INSERT INTO `negara` (`negara_id`, `nama_neg_pembuat`) VALUES
('ID', 'Indonesia'),
('IG', 'Inggris'),
('JP', 'Jepang'),
('KR', 'Korea'),
('MY', 'Malaysia'),
('SG', 'Singapura'),
('US', 'Amerika Serikat');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `penerbit_id` int NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(5) DEFAULT NULL,
  `kota` varchar(40) DEFAULT NULL,
  `kodepos` varchar(5) DEFAULT NULL,
  `negara_id` char(2) DEFAULT NULL,
  `website` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`penerbit_id`, `nama`, `alamat`, `kota`, `kodepos`, `negara_id`, `website`, `email`, `telepon`, `keterangan`) VALUES
(1, 'Gramedia Pustaka Utama, PT.', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(2, 'Pustaka Sinar Harapan', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(3, 'Indira', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(4, 'Kepustakaan Popular Gramedia', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(5, 'Wrox Press Inc', NULL, 'Illinois', NULL, 'US', NULL, NULL, NULL, NULL),
(6, 'Sams Publishing', NULL, 'Indiana', NULL, 'US', NULL, NULL, NULL, NULL),
(7, 'Elex Media Komputindo, PT.', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(8, 'Computer Step', NULL, NULL, NULL, 'ID', NULL, NULL, NULL, NULL),
(9, 'John Wiley', NULL, 'New York', NULL, 'US', NULL, NULL, NULL, NULL),
(10, 'Osborne', NULL, NULL, NULL, 'US', NULL, NULL, NULL, NULL),
(11, 'Addison Wesley', NULL, 'Boston', NULL, 'US', NULL, NULL, NULL, NULL),
(12, 'No Starch Press', NULL, 'San Fransisco', NULL, 'US', NULL, NULL, NULL, NULL),
(13, 'New Riders', NULL, 'Indiana', NULL, 'US', NULL, NULL, NULL, NULL),
(14, 'Jossey Bass', NULL, 'New York', NULL, 'US', NULL, NULL, NULL, NULL),
(15, 'Lowell House', NULL, NULL, NULL, 'US', NULL, NULL, NULL, NULL),
(16, 'Contemporary Books', NULL, 'Chicago', NULL, 'US', NULL, NULL, NULL, NULL),
(17, 'NTC', NULL, NULL, NULL, 'US', NULL, NULL, NULL, NULL),
(18, 'McGraw Hill', NULL, 'New York', NULL, 'US', NULL, NULL, NULL, NULL),
(19, 'Mizan', NULL, 'Bandung', NULL, 'ID', NULL, NULL, NULL, NULL),
(20, 'Gema Insani Press', NULL, 'Bandung', NULL, 'ID', NULL, NULL, NULL, NULL),
(21, 'Remaja Rosdakarya', NULL, 'Bandung', NULL, 'ID', NULL, NULL, NULL, NULL),
(22, 'Truedee Books', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(23, 'Penerbit Andi', NULL, 'Yogyakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(24, 'Bhuana Ilmu Popular', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(25, 'Salemba Empat', NULL, 'Jakarta', NULL, 'ID', NULL, NULL, NULL, NULL),
(26, 'Sybex', NULL, 'California', NULL, 'US', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `penulis_id` int UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelamin` enum('P','L') DEFAULT 'P',
  `alamat` varchar(50) DEFAULT NULL,
  `kota` varchar(40) DEFAULT NULL,
  `kodepos` varchar(5) DEFAULT NULL,
  `propinsi` varchar(20) DEFAULT NULL,
  `negara_id` char(2) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `telepon` varchar(20) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`penulis_id`, `nama`, `kelamin`, `alamat`, `kota`, `kodepos`, `propinsi`, `negara_id`, `website`, `email`, `telepon`, `keterangan`) VALUES
(1, 'Abdullah Gymnastiar', 'L', NULL, NULL, NULL, NULL, 'ID', NULL, NULL, NULL, NULL),
(2, 'Robert T. Kiyosaki', 'L', NULL, NULL, NULL, NULL, 'JP', NULL, NULL, NULL, NULL),
(3, 'John Connel', 'L', NULL, NULL, NULL, NULL, 'MY', NULL, NULL, NULL, NULL),
(4, 'John Grisham', 'L', NULL, NULL, NULL, NULL, 'SG', NULL, NULL, NULL, NULL),
(5, 'Sharon L. Lechter', 'P', NULL, NULL, NULL, NULL, 'US', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tema`
--

CREATE TABLE `tema` (
  `tema_id` char(3) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tema`
--

INSERT INTO `tema` (`tema_id`, `nama`) VALUES
('AGM', 'Agama'),
('AKU', 'Akuntansi'),
('BHS', 'Bahasa'),
('BIO', 'Biografi'),
('FKS', 'Fiksi Ilmiah'),
('HKM', 'Hukum'),
('HOB', 'Hobi'),
('KES', 'Kesehatan'),
('KEU', 'Keuangan'),
('KMK', 'Komik'),
('KOM', 'Komputer'),
('KRI', 'Kriminalitas'),
('LLN', 'Lain-lain'),
('MAN', 'Manajemen'),
('MJL', 'Majalah'),
('MRK', 'Marketing'),
('MSK', 'Memasak'),
('MTR', 'Misteri'),
('MUS', 'Musik'),
('NDV', 'Novel Dewasa'),
('NRM', 'Novel Remaja'),
('OLR', 'Olah Raga'),
('PDR', 'Pengembangan Diri'),
('PJK', 'Perpajakan'),
('PPM', 'Peraturan Pemerintah'),
('PSI', 'Psikologi'),
('PTN', 'Pertanian'),
('PUM', 'Pengetahuan Umum'),
('REF', 'Referensi'),
('SEK', 'Seksologi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`);

--
-- Indexes for table `buku_penerbit`
--
ALTER TABLE `buku_penerbit`
  ADD PRIMARY KEY (`buku_id`,`penerbit_id`);

--
-- Indexes for table `buku_penulis`
--
ALTER TABLE `buku_penulis`
  ADD PRIMARY KEY (`buku_id`,`penulis_id`);

--
-- Indexes for table `negara`
--
ALTER TABLE `negara`
  ADD PRIMARY KEY (`negara_id`);

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`penerbit_id`);

--
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`penulis_id`);

--
-- Indexes for table `tema`
--
ALTER TABLE `tema`
  ADD PRIMARY KEY (`tema_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `penerbit`
--
ALTER TABLE `penerbit`
  MODIFY `penerbit_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `penulis_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
