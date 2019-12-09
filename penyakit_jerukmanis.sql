-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 06, 2016 at 02:22 PM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `penyakit_jerukmanis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_user` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_user`, `username`, `password`, `nama`, `phone`, `email`) VALUES
(1, 'admin', 'admin', 'Mailizar', '+6281947472218', 'mailizar22@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `id_gejala` int(3) NOT NULL AUTO_INCREMENT,
  `kode_gejala` varchar(10) NOT NULL,
  `nama_gejala` text NOT NULL,
  `bobot` int(3) NOT NULL,
  PRIMARY KEY (`id_gejala`),
  UNIQUE KEY `kode_gejala` (`kode_gejala`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_gejala`, `nama_gejala`, `bobot`) VALUES
(1, 'G1', 'Daun sempit dan kecil', 1),
(2, 'G2', 'Buah kecil', 1),
(4, 'G4', 'Biji rusak', 1),
(5, 'G5', 'Pangkal buah orange', 1),
(6, 'G6', 'Warna kayu ke abu-abuan', 1),
(7, 'G7', 'Kulit kering dan mengelupas', 1),
(8, 'G8', 'Getah pohon yang mengalir dari lubang batang', 1),
(9, 'G9', 'Adanya tepung padat bewarna hijau kebiruan pada permukaan kulit', 3),
(10, 'G10', 'Daun Gugur', 3),
(12, 'G12', 'Daun Kaku Pemucatan', 3),
(14, 'G14', 'Batang berlekuk ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hasil_konsultasi`
--

CREATE TABLE IF NOT EXISTS `hasil_konsultasi` (
  `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) NOT NULL,
  `konsultasi` int(10) NOT NULL,
  `id_gejala` int(3) NOT NULL,
  `bobot` int(3) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_konsultasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=115 ;

--
-- Dumping data for table `hasil_konsultasi`
--

INSERT INTO `hasil_konsultasi` (`id_konsultasi`, `id_user`, `konsultasi`, `id_gejala`, `bobot`, `waktu`) VALUES
(67, 8, 5, 7, 1, '2016-01-05 13:38:55'),
(66, 8, 5, 2, 1, '2016-01-05 13:38:55'),
(65, 8, 5, 1, 1, '2016-01-05 13:38:55'),
(64, 8, 4, 14, 3, '2016-01-05 13:36:09'),
(63, 8, 4, 7, 1, '2016-01-05 13:36:09'),
(62, 8, 4, 2, 1, '2016-01-05 13:36:09'),
(61, 8, 4, 1, 1, '2016-01-05 13:36:09'),
(74, 8, 7, 5, 1, '2016-01-05 13:42:07'),
(73, 8, 7, 3, 1, '2016-01-05 13:42:07'),
(72, 8, 6, 14, 3, '2016-01-05 13:41:44'),
(71, 8, 6, 7, 1, '2016-01-05 13:41:44'),
(70, 8, 6, 2, 1, '2016-01-05 13:41:44'),
(69, 8, 6, 1, 1, '2016-01-05 13:41:44'),
(68, 8, 5, 14, 3, '2016-01-05 13:38:55'),
(60, 8, 3, 14, 3, '2016-01-05 13:35:06'),
(59, 8, 3, 11, 3, '2016-01-05 13:35:06'),
(58, 8, 3, 7, 1, '2016-01-05 13:35:06'),
(57, 8, 3, 4, 1, '2016-01-05 13:35:06'),
(56, 8, 3, 3, 1, '2016-01-05 13:35:06'),
(55, 8, 3, 2, 1, '2016-01-05 13:35:06'),
(54, 8, 3, 1, 1, '2016-01-05 13:35:06'),
(53, 7, 2, 8, 1, '2015-12-28 14:32:37'),
(52, 7, 2, 5, 1, '2015-12-28 14:32:37'),
(51, 7, 2, 3, 1, '2015-12-28 14:32:37'),
(50, 7, 2, 1, 1, '2015-12-28 14:32:37'),
(49, 7, 1, 10, 3, '2015-12-28 14:31:09'),
(48, 7, 1, 6, 1, '2015-12-28 14:31:09'),
(47, 7, 1, 5, 1, '2015-12-28 14:31:09'),
(46, 7, 1, 2, 1, '2015-12-28 14:31:09'),
(75, 8, 7, 6, 1, '2016-01-05 13:42:07'),
(76, 9, 8, 1, 1, '2016-01-06 14:10:22'),
(77, 9, 8, 2, 1, '2016-01-06 14:10:22'),
(78, 9, 8, 4, 1, '2016-01-06 14:10:22'),
(79, 9, 8, 5, 1, '2016-01-06 14:10:22'),
(80, 9, 9, 7, 1, '2016-01-06 14:11:42'),
(81, 9, 9, 8, 1, '2016-01-06 14:11:42'),
(82, 9, 9, 9, 3, '2016-01-06 14:11:42'),
(83, 9, 9, 10, 3, '2016-01-06 14:11:42'),
(84, 9, 10, 7, 1, '2016-01-06 14:12:36'),
(85, 9, 10, 8, 1, '2016-01-06 14:12:36'),
(86, 9, 10, 9, 3, '2016-01-06 14:12:36'),
(87, 9, 10, 10, 3, '2016-01-06 14:12:36'),
(88, 9, 11, 8, 1, '2016-01-06 14:14:41'),
(89, 9, 11, 9, 3, '2016-01-06 14:14:41'),
(90, 9, 11, 10, 3, '2016-01-06 14:14:41'),
(91, 9, 11, 12, 3, '2016-01-06 14:14:41'),
(92, 9, 12, 8, 1, '2016-01-06 14:15:37'),
(93, 9, 12, 9, 3, '2016-01-06 14:15:37'),
(94, 9, 12, 10, 3, '2016-01-06 14:15:37'),
(95, 9, 12, 12, 3, '2016-01-06 14:15:37'),
(96, 9, 13, 8, 1, '2016-01-06 14:18:08'),
(97, 9, 13, 9, 3, '2016-01-06 14:18:08'),
(98, 9, 13, 12, 3, '2016-01-06 14:18:08'),
(99, 9, 13, 14, 3, '2016-01-06 14:18:08'),
(100, 9, 14, 8, 1, '2016-01-06 14:19:31'),
(101, 9, 14, 9, 3, '2016-01-06 14:19:31'),
(102, 9, 14, 12, 3, '2016-01-06 14:19:31'),
(103, 9, 14, 14, 3, '2016-01-06 14:19:31'),
(104, 9, 15, 8, 1, '2016-01-06 14:21:04'),
(105, 9, 15, 9, 3, '2016-01-06 14:21:04'),
(106, 9, 15, 12, 3, '2016-01-06 14:21:04'),
(107, 9, 16, 1, 1, '2016-01-06 14:21:37'),
(108, 9, 16, 2, 1, '2016-01-06 14:21:37'),
(109, 9, 16, 4, 1, '2016-01-06 14:21:37'),
(110, 9, 16, 5, 1, '2016-01-06 14:21:37'),
(111, 9, 17, 7, 1, '2016-01-06 14:22:02'),
(112, 9, 17, 8, 1, '2016-01-06 14:22:02'),
(113, 9, 17, 9, 3, '2016-01-06 14:22:02'),
(114, 9, 17, 10, 3, '2016-01-06 14:22:02');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE IF NOT EXISTS `informasi` (
  `id_informasi` int(10) NOT NULL AUTO_INCREMENT,
  `judul` text NOT NULL,
  `isi` text NOT NULL,
  `tgl` date NOT NULL,
  `ket` varchar(4) NOT NULL,
  PRIMARY KEY (`id_informasi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `isi`, `tgl`, `ket`) VALUES
(7, 'Jeruk Manis', '<div align="justify">Jeruk adalah semua anggota tumbuhan berbunga dari suku Rutaceae Citrus suku jeruk-jerukan. Anggota dengan buah berdaging berbentuk pohon dengan rasa asam segar, meskipun banyak anggotanya yang memiliki rasa manis. Rasa asam sitrat berasal dari kandungan asam yang terkandung dalam semua anggotanya.\r\nSelain untuk makanan pencuci mulut jeruk merupakan buah yang menjadi sumber utama vitamin C dalam jenis buah-buahan. Jeruk juga merupakan buah yang laris dalam kalangan masyarakat di semua kelas baik kelas bawah maupun kelas atas karena jeruk juga mempunyai nilai ekonomi dan nilai bisnis yang tinggi.\r\n<br><br>\r\nSistem pakar adalah sistem yang berusaha mengadopsi pengetahuan manusia ke komputer yang dirancang untuk memodelkan kemampuan menyelesaikan masalah seperti layaknya seorang pakar. Dengan sistem pakar ini, orang awam pun dapat menyelesaikan masalahnya atau hanya sekedar mencari suatu informasi berkualitas yang sebenarnya hanya dapat diperoleh dengan bantuan para ahli di bidangnya. Sistem pakar ini juga akan dapat membantu aktivitas para pakar sebagai asisten yang berpengalaman dan mempunyai asisten yang berpengalaman dan mempunyai pengetahuan yang dibutuhkan. Dalam penyusunannya, sistem pakar mengkombinasikan kaidah-kaidah penarikan kesimpulan (inference rules) dengan basis pengetahuan tertentu yang diberikan oleh satu atau lebih pakar dalam bidang tertentu. Kombinasi dari kedua hal tersebut disimpan dalam komputer, yang selanjutnya digunakan dalam proses pengambilan keputusan untuk penyelesaian masalah tertentu.</div>', '2015-12-12', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `keterangan`
--

CREATE TABLE IF NOT EXISTS `keterangan` (
  `id_keterangan` int(10) NOT NULL AUTO_INCREMENT,
  `id_konsultasi` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nilai` double NOT NULL,
  `kode_penyakit` varchar(3) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_keterangan`),
  UNIQUE KEY `id_konsultasi` (`id_konsultasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `keterangan`
--

INSERT INTO `keterangan` (`id_keterangan`, `id_konsultasi`, `nama`, `nilai`, `kode_penyakit`, `tgl_konsultasi`) VALUES
(17, 1, 'yaya', 0.19047619047619, 'P03', '2015-12-28 14:31:11'),
(18, 3, 'Ferri Achmad', 0.19047619047619, 'P03', '2016-01-05 13:35:08'),
(19, 4, 'Ferri Achmad', 0.17647058823529, 'P04', '2016-01-05 13:36:11'),
(20, 5, 'Ferri Achmad', 0.20689655172414, 'P01', '2016-01-05 13:38:57'),
(21, 6, 'Ferri Achmad', 0.20689655172414, 'P01', '2016-01-05 13:41:46'),
(22, 7, 'Ferri Achmad', 0.10344827586207, 'P01', '2016-01-05 13:42:08'),
(23, 8, 'yaya', 0.13793103448276, 'P01', '2016-01-06 14:10:24'),
(24, 9, 'yaya', 0.28571428571429, 'P03', '2016-01-06 14:11:44'),
(25, 10, 'yaya', 0.4, 'P02', '2016-01-06 14:12:38'),
(26, 11, 'yaya', 0.35, 'P02', '2016-01-06 14:14:43'),
(27, 12, 'yaya', 0.47619047619048, 'P03', '2016-01-06 14:15:39'),
(28, 13, 'yaya', 0.35294117647059, 'P04', '2016-01-06 14:18:10'),
(29, 14, 'yaya', 0.47619047619048, 'P03', '2016-01-06 14:19:33'),
(30, 15, 'yaya', 0.41176470588235, 'P04', '2016-01-06 14:21:06'),
(31, 16, 'yaya', 0.13793103448276, 'P01', '2016-01-06 14:21:38'),
(32, 17, 'yaya', 0.4, 'P02', '2016-01-06 14:22:03');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `kode_penyakit` varchar(10) NOT NULL,
  `nama_penyakit` varchar(100) NOT NULL,
  `ket` text NOT NULL,
  `solusi` text NOT NULL,
  PRIMARY KEY (`kode_penyakit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `ket`, `solusi`) VALUES
('P01', 'CVPD (citus vein phloem degeneration)', 'Penyakit ini disebabkan oleh organisme, tepatnya jenis kutu loncat yang mempunyai nama ilmiah Diaphorina Citri. Penyakit ini menyerang bagian batang pohon jeruk yang ditanam.', 'Perhatikan penempatan lokasi kebun minimal 5 km dari kebun jeruk yng terserang CVPD, Gunakan insektisida untuk vector dan perhatikan sanitasi kebun yang baik  '),
('P02', 'Blendok', 'Penyakit ini disebabkan oleh jamur yang mempunyai nama ilmiah Diplodia Natalensis. Bagian yang diserang adalah batang yang menjadi keabu-abuan dan juga kulit batang kering dan mengelupas', 'Lakukan pemotongan cabang terinfeksi, bekas potongan diberi karbolineum atau fungisida Cu dan fungisida benomyl 2 kali dalam setahun '),
('P03', 'Busuk Buah', 'Busuh buah adalah penyakit yang sering menyerang buah jeruk. Penyakit ini disebabkan oleh bakteri Penicillium spp.', 'Hindari kerusakan mekanis, celupkan buah ke dalam air panas/fungisida benomyl, pelilinan buah dan pemangkasan bagian bawah pohon secara teratur'),
('P04', 'Tristeza', 'Penyakit ini kerap menyerang pada bagian batang dan daun, yang juga dapat menghambat pertumbuhan dari pohon jeruk yang ditanam. Ketika terkena penyakit ini batang dan pohon jeruk akan terlihat melekuk. Tanda lain juga bisa dilihat dari warna daun yang terlihat pucat. ', 'Perhatikan sanitasi kebun, memusnahkan tanaman yang terserang, kemudian kendalikan vector dengan insektisida supracide atau cascade');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit_gejala`
--

CREATE TABLE IF NOT EXISTS `penyakit_gejala` (
  `id_pg` int(3) NOT NULL AUTO_INCREMENT,
  `kode_penyakit` varchar(10) NOT NULL,
  `id_gejala` int(3) NOT NULL,
  PRIMARY KEY (`id_pg`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=133 ;

--
-- Dumping data for table `penyakit_gejala`
--

INSERT INTO `penyakit_gejala` (`id_pg`, `kode_penyakit`, `id_gejala`) VALUES
(116, 'P01', 14),
(115, 'P01', 7),
(114, 'P01', 6),
(132, 'P04', 12),
(131, 'P04', 9),
(130, 'P04', 8),
(129, 'P03', 14),
(128, 'P03', 12),
(127, 'P03', 10),
(126, 'P03', 9),
(125, 'P03', 8),
(119, 'P02', 9),
(118, 'P02', 8),
(117, 'P02', 7),
(113, 'P01', 5),
(112, 'P01', 4),
(111, 'P01', 3),
(110, 'P01', 2),
(109, 'P01', 1),
(120, 'P02', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `jk` varchar(25) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `tgl_konsultasi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `jk`, `alamat`, `nohp`, `tgl_konsultasi`) VALUES
(1, 'sdsd', '21', '', '', '2015-12-11 18:07:57'),
(2, 'Ferri Achmad', '22', '', '', '2015-12-13 11:48:19'),
(3, 'wawan', '22', '', '', '2015-12-13 11:51:27'),
(4, 'Ferri Achmad', 'Laki-Laki', 'Padang', '082170214495', '2015-12-27 21:25:51'),
(5, 'yya', 'Laki-Laki', 'Padang', '082170214495', '2015-12-27 22:06:13'),
(6, 'yayaa', 'Laki-Laki', 'Padang', '082170214495', '2015-12-27 22:14:05'),
(7, 'yaya', 'Perempuan', 'Padang', '082170214495', '2015-12-28 14:31:00'),
(8, 'Ferri Achmad', 'Laki-Laki', 'padnag', '082177006653', '2016-01-05 13:34:24'),
(9, 'yaya', 'Perempuan', 'Padang', '081993448855', '2016-01-06 14:06:53');
