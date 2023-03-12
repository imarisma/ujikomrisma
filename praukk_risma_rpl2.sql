-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2023 at 06:53 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `praukk_risma_rpl2`
--

-- --------------------------------------------------------

--
-- Table structure for table `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('2727', 'chika nazwa', 'chikaa', '123', '093825923004'),
('3217066510040003', 'risma khairunisa', 'risma', 'ima', '089764146853'),
('321709634744538', 'fikri azhari', 'fikri', '12345', '086534318552'),
('321733509865', 'andriyanto', 'andri', 'andri', '089572734649'),
('3217549764654', 'siti aminah', 'siti', 'itiw', '087537535975'),
('32175552233086', 'yulia resti', 'resti', '280704', '08986835123'),
('3217645267855', 'Nia fatmawati', 'nia', '123', '08978646557'),
('32176493798749', 'risma khairunisa', 'risma', 'ima', '08953434'),
('321799743222', 'sadam', 'adam', 'adam', '08111335422'),
('3217999555321', 'm febriyana', 'febri', 'febri', '08976142355'),
('327186452365095', 'jasmine', 'jasmin', 'mine', '089653527553');

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(16) NOT NULL,
  `tgl_pengaduan` date DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  `isi_laporan` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `status` enum('menunggu','proses','selesai') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(14, '2023-02-25', '2147483647', 'Didaerah sukabumi sedang mengalami longsor, pada hari jumat 02/02/2021', 'longsor.jpg', 'selesai'),
(16, '2023-02-26', '2727', 'pada saat hujan di beberapa wilayah ngamprah terjadi banjir yang sangat besar,sehingga masuk ke dalam rumah ', 'banjir.jpg', 'selesai'),
(17, '2023-02-26', '2147483647', 'di desa nyalindung terjadi musibah gempa bumi yang terus berkelanjutan', 'gempa bumi.jpg', 'selesai'),
(18, '2023-02-26', '2147483647', 'beberapa masyarakat/mahasiswa melakukan demo atas terjadinya kenaikan bbm yang sangat tinggi', 'kenaikan harga bbm.jpg', 'selesai'),
(19, '2023-02-26', '2147483647', 'warga telah risih dengan adanya penumpukan sampah tersebut karena mengganggu keadaan halaman sekitar', 'penumpukan sampah.jpg', 'selesai'),
(20, '2023-02-26', '2147483647', 'saya ingin melaporkan bahwa di arah perbatasan cinangela-kiara payung terjadi ambruknya  jembatan yang sangat panjang, saya harap pihak yang bertugas agar segera d perbaiki, agar bisa cepat dilalui lagi oleh masyarakat.', 'jembatan roboh.jpg', 'selesai'),
(21, '2023-02-26', '2147483647', 'pada hari selasa,25/04/2022 terjadi kebakaran di daerah tagog apu yang penyebabnya karna kabel listrik yang terlilit hingga menyebabkan koslet dan terbakar ke arah rumah warga...', 'kebakaran rumah.jpg', 'selesai'),
(22, '2023-02-26', '2147483647', 'terjadi kebocoran gas hingga meledak dan ada beberapa anggota keluarga yang terluka', 'gas meledakkk.jpg', ''),
(23, '2023-02-26', '2147483647', 'tidak ada sama sekali penerangan di jalan sekutu sehingga menyebabkan beberapa masalah yang terjadi, mohon agar segera di pasangkan penerangan agar tidak terjaadi kecelakaan.', 'jalan gelap.jpg', 'selesai'),
(24, '2023-02-27', '2147483647', 'di jalan raya simpang terjadi jalan yang berlubang sangat besar,agar segera di perbaiki karna itu akan menyebabkan kecelakaan4', 'jalan rusak dan berlubang.jpg', 'proses'),
(25, '2023-02-27', '32167037524354', 'jalan ini berlubang, membahayakan pengerdara mtr', 'jalan rusak dan berlubang.jpg', ''),
(26, '2023-02-27', '3217066510040003', 'di desa margajaya terjadi  masalah atas jalan berlubang sehingga orang yang berjalan/ mengendarai motor tidak nyaman untuk di laluinya,, agar cepet dapat di proses yaaa.', 'jalan rusak dan berlubang.jpg', 'selesai'),
(31, '2023-02-28', '3217066510040003', 'saya ingin melaporkan kepada pihak yang berwajib agar segera mengevakuasi kejadian pada selasa,24/08/22 yang ada d bogor pada kemarin sore hujan lebat terus melanda dan air terus naik dan menyebabkan  banjir  hingga masuk ke rumah rumah warga, agar segera d proses oleh pihak yang  berwajib ', 'banjir.jpg', 'selesai'),
(35, '2023-03-02', '3217066510040003', 'gas meledak', 'jalan gelap.jpg', 'selesai'),
(36, '2023-03-08', '3217066510040003', 'xnsgjhsfgfghsds', '', 'proses'),
(37, '2023-03-10', '3217066510040003', 'banjir d daerah cimahi utara', 'banjir.jpg', 'menunggu');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(7, 'admin', 'admin', 'admin', '0123', 'admin'),
(18, 'petugas', 'petugas', 'petugas', '0123', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(20, 14, '2023-02-25', '            nanti akan ada petugas yang akan melihat ke tkp', 7),
(21, 15, '2023-02-26', 'baik akan kami proses setelah kami melihat ke tkp', 7),
(22, 17, '2023-02-26', 'dari pihak yang bertugas akan segera melihat kejadian tersebut agar segera di evakuasi', 7),
(23, 19, '2023-02-26', '            baik akan segera di proses oleh petugas ', 7),
(24, 20, '2023-02-26', 'baik secepatnya akan kami prosess', 7),
(25, 26, '2023-02-27', 'baik akan kami proses segera ', 7),
(26, 23, '2023-02-27', 'akan segera d proses', 7),
(27, 31, '2023-02-28', 'baik akan kami cek ke tempat lokasi ', 7),
(28, 35, '2023-03-02', 'baik', 7),
(29, 21, '2023-03-07', 'baik akan segera di evakuasi', 7),
(30, 18, '2023-03-07', 'baik akan kami sampaikan kepada pihak yang bersangkutan agar dapat terjun langdung ke lapangan', 7),
(31, 16, '2023-03-09', 'baik', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
