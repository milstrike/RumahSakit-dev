-- phpMyAdmin SQL Dump
-- version 4.4.15
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 16, 2015 at 12:30 PM
-- Server version: 5.5.46-cll
-- PHP Version: 5.4.44

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u6799722_rumahsakit_dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `a_1_masa_kerja`
--

CREATE TABLE IF NOT EXISTS `a_1_masa_kerja` (
  `id` int(2) NOT NULL,
  `keterangan` varchar(11) NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_1_masa_kerja`
--

INSERT INTO `a_1_masa_kerja` (`id`, `keterangan`, `poin`) VALUES
(1, '1', 2),
(2, '2', 2),
(3, '3', 2),
(4, '4', 4),
(5, '5', 4),
(6, '6', 4),
(7, '7', 4),
(8, '8', 6),
(9, '9', 6),
(10, '10', 6),
(11, '11', 6),
(12, '12', 8),
(13, '13', 8),
(14, '14', 8),
(15, '15', 8),
(16, '16', 10),
(17, '17', 10),
(18, '18', 10),
(19, '19', 10),
(20, '20', 12),
(21, '21', 12),
(22, '22', 12),
(23, '23', 12),
(24, '24', 14),
(25, '25', 14),
(26, '26', 14),
(27, '27', 14),
(28, '28', 16),
(29, '29', 16),
(30, '30', 16),
(31, '31', 16),
(32, '32', 16),
(33, '33', 16),
(34, '34', 16),
(35, '35', 16),
(36, '36', 16),
(37, '37', 16),
(38, '38', 16),
(39, '38', 16);

-- --------------------------------------------------------

--
-- Table structure for table `a_2_kepegawaian`
--

CREATE TABLE IF NOT EXISTS `a_2_kepegawaian` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL,
  `gaji` bigint(20) NOT NULL,
  `pajak` varchar(11) NOT NULL,
  `pembagi` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_2_kepegawaian`
--

INSERT INTO `a_2_kepegawaian` (`id`, `keterangan`, `poin`, `gaji`, `pajak`, `pembagi`) VALUES
(1, 'Pegawai BLUD', 2, 500000, '0.05', 200000),
(2, 'PNS Gol. I', 6, 1000000, '0.1', 200000),
(3, 'PNS Gol. II', 9, 1500000, '0.15', 200000),
(4, 'PNS Gol. III', 19, 3000000, '0.2', 50000),
(5, 'PNS Gol. IV', 25, 4000000, '0.25', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `b_1_pendidikan`
--

CREATE TABLE IF NOT EXISTS `b_1_pendidikan` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_1_pendidikan`
--

INSERT INTO `b_1_pendidikan` (`id`, `keterangan`, `poin`) VALUES
(1, 'SD', 2),
(2, 'SLTP', 4),
(3, 'SMU', 5),
(4, 'SMK', 6),
(5, 'SMK KESEHATAN', 7),
(6, 'D1/D2', 8),
(7, 'D III', 10),
(8, 'D III KESEHATAN', 11),
(9, 'D IV/S1', 12),
(10, 'S1 PROFESI', 14),
(11, 'S2', 16);

-- --------------------------------------------------------

--
-- Table structure for table `b_2_sertifikasi`
--

CREATE TABLE IF NOT EXISTS `b_2_sertifikasi` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b_2_sertifikasi`
--

INSERT INTO `b_2_sertifikasi` (`id`, `keterangan`, `poin`) VALUES
(1, 'GRADE I', 2),
(2, 'GRADE II', 4),
(3, 'GRADE III', 6),
(4, 'GRADE IV', 9);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` longtext NOT NULL,
  `changes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `value`, `changes`) VALUES
(1, 'site_name', 'Sistem Informasi Rumah Sakit (Modul Kepegawaian) - Dev Mode', '2015-06-26 14:17:11'),
(2, 'site_description', '   Selamat Datang di Sistem Informasi Rumah Sakit (Kepegawaian). Dengan menggunakan sistem ini, Anda dapat melakukan penilaian terhadap pegawai di Rumah Sakit yang Anda kelola.', '2015-06-26 14:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `c_1_resiko`
--

CREATE TABLE IF NOT EXISTS `c_1_resiko` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_1_resiko`
--

INSERT INTO `c_1_resiko` (`id`, `keterangan`, `poin`) VALUES
(1, 'LEVEL I', 2),
(2, 'LEVEL II', 4),
(3, 'LEVEL III', 6),
(4, 'LEVEL IV', 8),
(5, 'LEVEL V', 10);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_gaji`
--

CREATE TABLE IF NOT EXISTS `daftar_gaji` (
  `id` int(11) NOT NULL,
  `bulan` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nama_tabel` varchar(50) NOT NULL,
  `dana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kepanitiaan`
--

CREATE TABLE IF NOT EXISTS `daftar_kepanitiaan` (
  `id` int(11) NOT NULL,
  `nama_kepanitiaan` text NOT NULL,
  `detail_kepanitiaan` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_kepanitiaan`
--

INSERT INTO `daftar_kepanitiaan` (`id`, `nama_kepanitiaan`, `detail_kepanitiaan`, `change_date`) VALUES
(7, 'Panitian 17 an', 'Kepanitiaan untuk mengurusi lomba 17 Agustus Tahun 2015 di Rumah Sakit Umum Temanggung', '2015-08-08 13:51:27'),
(8, 'Kepanitiaan Sertifikasi', 'Kepanitiaan untuk mengurusi sertifikasi Rumah Sakit', '2015-08-12 02:35:31'),
(10, 'Contoh kepanitiaan', 'Ini adalah contoh kepanitiaan', '2015-09-17 05:02:12');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_nilai`
--

CREATE TABLE IF NOT EXISTS `daftar_nilai` (
  `id` int(11) NOT NULL,
  `bulan` text NOT NULL,
  `tahun` text NOT NULL,
  `nama_tabel` text NOT NULL,
  `total_nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_panitia`
--

CREATE TABLE IF NOT EXISTS `data_panitia` (
  `id` int(3) NOT NULL,
  `id_pgw` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `id_pan` int(2) NOT NULL,
  `id_lvl_koord` int(2) NOT NULL,
  `poin_1` int(4) NOT NULL,
  `poin_2` int(4) NOT NULL,
  `total` int(4) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE IF NOT EXISTS `data_pegawai` (
  `id` int(4) NOT NULL,
  `nama` text NOT NULL,
  `nip` text NOT NULL,
  `golongan` text NOT NULL,
  `satker` text NOT NULL,
  `jabatan` text NOT NULL,
  `kelompok` text NOT NULL,
  `pendidikan` text NOT NULL,
  `sertifikasi` text NOT NULL,
  `perangkat` text NOT NULL,
  `tanggal_masuk` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id`, `nama`, `nip`, `golongan`, `satker`, `jabatan`, `kelompok`, `pendidikan`, `sertifikasi`, `perangkat`, `tanggal_masuk`, `change_date`) VALUES
(31, 'Susilo', '198607292009031001', '3', '5', '1', '2', '8', '3', '22', '2009-6-1', '2015-09-26 03:01:04'),
(32, 'Susilo Rahadiyanto', '19890303 201101 1003', '3', '5', '1', '2', '8', '3', '22', '2011-5-1', '2015-09-26 03:07:34'),
(33, 'M. Sakbai', '19770814 200501 1 00', '4', '5', '3', '7', '8', '2', '22', '2004-8-28', '2015-09-26 03:11:57'),
(34, 'Isnanto Hendra Purnama', '19860224 201101 1 00', '3', '5', '1', '2', '8', '3', '22', '2011-5-1', '2015-09-26 03:25:24'),
(35, 'Laily Anisah', '19660306 199103 2 00', '5', '6', '2', '2', '10', '3', '17', '1995-3-31', '2015-09-26 03:29:26'),
(36, 'Hartoyo', '19650106 198903 1 01', '5', '6', '3', '7', '10', '3', '17', '1988-11-21', '2015-09-26 03:33:05'),
(37, 'Ririn Maria Herwati', '19820308 200604 2 02', '3', '6', '1', '2', '8', '3', '17', '2000-6-2', '2015-09-26 03:40:12'),
(39, 'Roby Hartanto,A.MTE', '19880702201001008', '3', '19', '1', '2', '8', '3', '20', '2010-1-1', '2015-09-26 12:48:27'),
(41, 'Sulaeman', '197601252007011010', '2', '19', '1', '3', '1', '1', '20', '1992-10-2', '2015-09-26 12:55:39'),
(44, 'Eko Dwiyanto', 'II 201508 136', '1', '19', '1', '3', '4', '1', '20', '2014-8-1', '2015-09-26 13:06:36'),
(45, 'Ervin Imam', 'II 201508 119', '1', '19', '1', '3', '4', '1', '20', '2014-8-1', '2015-09-26 13:11:24'),
(47, 'Aris Sri Widaryanto.A.MdEM', '198205162010011026', '3', '19', '3', '2', '8', '3', '20', '2010-1-1', '2015-09-26 13:28:33'),
(49, 'Herlina Aryandini,S.ST', '197210011995032004', '4', '26', '3', '2', '9', '3', '9', '1995-3-1', '2015-09-26 13:46:14'),
(50, 'Siti Zulaechah', '196112301985032007', '4', '26', '1', '3', '4', '1', '9', '1985-3-1', '2015-09-26 13:51:04'),
(51, 'Dwi Novianingrum', 'II 201508 132', '1', '26', '1', '3', '4', '1', '9', '2014-8-1', '2015-09-26 13:55:46'),
(52, 'Dina Listiyani', '52 2015', '1', '26', '1', '3', '9', '1', '9', '2015-2-2', '2015-09-26 13:59:01'),
(53, 'Widyaningsih Susilo Astuti,SKM', '197611072000032003', '4', '26', '1', '2', '9', '3', '9', '2000-3-1', '2015-09-26 14:02:02'),
(54, 'Darmini', '196204262007012002', '3', '26', '1', '3', '4', '1', '9', '1983-8-6', '2015-09-26 14:08:05'),
(55, 'Supriyanto', '196307032007011006', '3', '26', '1', '3', '4', '1', '9', '1987-3-14', '2015-09-26 14:12:13'),
(56, 'Sarifah Yuli Indri Astuti,AMg', '197607262010012009', '3', '26', '1', '2', '8', '3', '9', '2010-1-1', '2015-09-26 14:16:40'),
(57, 'Suripto', '198106222006041019', '3', '19', '1', '3', '4', '1', '20', '2009-6-1', '2015-09-26 14:20:36'),
(58, 'Julianto', '197107072007011014', '3', '19', '1', '3', '2', '1', '20', '1990-10-15', '2015-09-26 14:23:22'),
(59, 'Rohmat Nastain', '197007222007011015', '2', '19', '1', '3', '2', '1', '20', '1991-7-7', '2015-09-26 14:26:09'),
(60, 'Suparmi', '197107022007012024', '3', '26', '1', '3', '3', '1', '9', '1992-7-1', '2015-09-26 14:38:14'),
(61, 'Erma Listyorini,A.Md', '198507022010012030', '3', '26', '1', '2', '8', '1', '9', '2010-1-1', '2015-09-26 14:44:00'),
(62, 'Tri Widaryatun', '197102132008012004', '3', '26', '1', '3', '3', '1', '9', '1997-2-1', '2015-09-26 14:48:03'),
(63, 'Dwi Agustina', '198409012009012003', '3', '26', '1', '3', '4', '1', '9', '2006-3-2', '2015-09-26 14:50:57'),
(64, 'Marzumi', 'II 201508 134', '1', '26', '1', '3', '4', '1', '9', '2014-8-1', '2015-09-26 14:53:02'),
(66, 'Chaerunisyak Weinda,AMd', '198402252010012027', '3', '26', '1', '2', '8', '1', '9', '2010-1-1', '2015-09-26 15:06:44'),
(67, 'Lailatul Wahyuni,AMd', '197709012010012007', '3', '26', '1', '2', '8', '1', '9', '2010-1-1', '2015-09-26 15:08:48'),
(68, 'Dahyono', '197201062007011013', '3', '26', '1', '3', '3', '1', '9', '1992-5-2', '2015-09-26 15:12:10'),
(69, 'Muhamad Oky Budiono', 'II 201508 127', '1', '26', '1', '3', '4', '1', '9', '2014-8-1', '2015-09-26 15:15:54'),
(70, 'Supriyanto,SSos,MSi', '197005291991021001', '4', '39', '1', '3', '11', '4', '5', '1991-7-1', '2015-09-26 15:28:29'),
(71, 'Erlin Fitriana Yulia,SFar,Apt', '198307132009032007', '4', '39', '3', '2', '10', '3', '15', '2011-12-1', '2015-09-26 15:31:48'),
(72, 'Sri Yuni Lastri,SE', '196306111989032009', '4', '39', '1', '3', '9', '1', '5', '1984-1-10', '2015-09-26 16:00:16'),
(73, 'Any Chotumah,STA', '21730032007012011', '3', '37', '2', '3', '11', '4', '10', '2001-9-20', '2015-09-26 16:04:48'),
(74, 'Stefanus Kristian Artha', 'II 201508 108', '1', '39', '1', '3', '9', '1', '5', '2010-8-1', '2015-09-26 16:07:24'),
(75, 'Sherly Rosmania,ST', '61 2015', '1', '39', '1', '3', '9', '1', '5', '2015-2-2', '2015-09-26 16:10:14'),
(76, 'M1001AB', '115202410A01', '5', '38', '7', '2', '11', '1', '5', '2010-12-1', '2015-10-29 00:42:20'),
(77, 'M1002AB', '9089928310', '5', '38', '1', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:43:03'),
(78, 'M1003AB', '98772874', '5', '38', '5', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:44:15'),
(79, 'M1004AB', '1234567890', '5', '38', '5', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:50:20'),
(80, 'M1005AB', '09876543', '5', '38', '5', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:51:11'),
(81, 'M1006AB', '12345098765', '5', '38', '5', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:51:58'),
(82, 'M1007AB', '092345', '5', '38', '5', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:52:56'),
(83, 'M1008AB', '095678', '5', '38', '4', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:53:55'),
(84, 'M1009AB', '099876543', '5', '38', '4', '2', '11', '1', '5', '2015-12-1', '2015-10-29 00:54:25'),
(85, 'M10010AB', '1234876670', '5', '38', '4', '3', '11', '1', '5', '2015-12-1', '2015-10-29 01:30:54'),
(86, 'M1011AB', '7843245670', '5', '38', '3', '2', '11', '1', '5', '2015-12-1', '2015-10-29 02:17:28'),
(87, 'M1012AB', '1204758456898', '5', '38', '3', '2', '11', '1', '5', '2015-12-1', '2015-10-29 02:17:59');

-- --------------------------------------------------------

--
-- Table structure for table `detail_kepanitiaan`
--

CREATE TABLE IF NOT EXISTS `detail_kepanitiaan` (
  `id` varchar(11) NOT NULL,
  `id_pegawai` varchar(11) NOT NULL,
  `jabatan` varchar(11) NOT NULL,
  `poin` varchar(11) NOT NULL,
  `bulan` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `d_2_tingkat_emergensi`
--

CREATE TABLE IF NOT EXISTS `d_2_tingkat_emergensi` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `d_2_tingkat_emergensi`
--

INSERT INTO `d_2_tingkat_emergensi` (`id`, `keterangan`, `poin`) VALUES
(1, 'GRADE I', 2),
(2, 'GRADE II', 5),
(3, 'GRADE III', 7),
(4, 'GRADE IV', 10);

-- --------------------------------------------------------

--
-- Table structure for table `emergency_index_c`
--

CREATE TABLE IF NOT EXISTS `emergency_index_c` (
  `id` int(2) NOT NULL,
  `id_grd` int(2) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_index_c`
--

INSERT INTO `emergency_index_c` (`id`, `id_grd`, `keterangan`) VALUES
(1, 1, 'LAUNDRY'),
(2, 1, 'SANITASI'),
(3, 1, 'ADMINISTRASI'),
(4, 2, 'REKAM MEDIS'),
(5, 2, 'RAWAT JALAN'),
(6, 2, 'FISIOTERAPI'),
(7, 2, 'GIZI'),
(8, 3, 'RAWAT INAP'),
(9, 3, 'LABORATORIUM'),
(10, 3, 'CSSD'),
(11, 3, 'KAMAR MAYAT'),
(12, 3, 'BDRS'),
(13, 3, 'FARMASI'),
(14, 3, 'RADIOLOGI'),
(15, 3, 'ICU'),
(16, 3, 'ICU'),
(17, 3, 'HD'),
(18, 3, 'SOPIR'),
(19, 3, 'SUPERVISI'),
(20, 3, 'IPSRS'),
(21, 4, 'OK'),
(22, 4, 'IGD'),
(23, 4, 'VK');

-- --------------------------------------------------------

--
-- Table structure for table `e_1_struktural`
--

CREATE TABLE IF NOT EXISTS `e_1_struktural` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_1_struktural`
--

INSERT INTO `e_1_struktural` (`id`, `keterangan`, `poin`) VALUES
(1, 'STAF', 3),
(2, 'WAKARU', 5),
(3, 'KEPALA RUANG', 7),
(4, 'KASUBID / KASUBAG', 10),
(5, 'KABID / KABAG / SUPERVISI', 14),
(6, 'WAKIL DIREKTUR', 19),
(7, 'DIREKTUR', 25);

-- --------------------------------------------------------

--
-- Table structure for table `e_2_kepanitiaan_tim_kerja`
--

CREATE TABLE IF NOT EXISTS `e_2_kepanitiaan_tim_kerja` (
  `id` int(1) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_2_kepanitiaan_tim_kerja`
--

INSERT INTO `e_2_kepanitiaan_tim_kerja` (`id`, `keterangan`, `poin`) VALUES
(1, 'ANGGOTA', 3),
(2, 'SEKRETARIS / BENDAHARA', 5),
(3, 'KOORDINATOR SUB-KEGIATAN', 6),
(4, 'KOORDINATOR KEGIATAN', 8),
(5, 'KETUA PANITIA', 10);

-- --------------------------------------------------------

--
-- Table structure for table `e_3_level_koordinasi`
--

CREATE TABLE IF NOT EXISTS `e_3_level_koordinasi` (
  `id` int(2) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `e_3_level_koordinasi`
--

INSERT INTO `e_3_level_koordinasi` (`id`, `jumlah`, `poin`) VALUES
(1, 0, 0),
(2, 1, 3),
(3, 2, 5),
(4, 3, 5),
(5, 4, 5),
(6, 5, 5),
(7, 6, 6),
(8, 7, 6),
(9, 8, 6),
(10, 9, 6),
(11, 9, 6),
(12, 10, 6),
(13, 11, 8),
(14, 12, 8),
(15, 13, 8),
(16, 14, 8),
(17, 15, 8),
(18, 16, 10),
(19, 17, 10),
(20, 18, 10),
(21, 19, 10),
(22, 20, 10),
(23, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `gaji_pokok`
--

CREATE TABLE IF NOT EXISTS `gaji_pokok` (
  `id` int(2) NOT NULL,
  `id_gol` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `gaji_pokok` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kelompok`
--

CREATE TABLE IF NOT EXISTS `kelompok` (
  `id` int(11) NOT NULL,
  `kelompok` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelompok`
--

INSERT INTO `kelompok` (`id`, `kelompok`) VALUES
(2, 'FUNGSIONAL'),
(3, 'NON-FUNGSIONAL'),
(4, 'WADIR'),
(5, 'KABID/KABAG'),
(6, 'KASI/KASUBAG'),
(7, 'KARU'),
(8, 'KA. INSTANSI'),
(10, 'STAF ADMIN'),
(11, '-');

-- --------------------------------------------------------

--
-- Table structure for table `level_koordinasi`
--

CREATE TABLE IF NOT EXISTS `level_koordinasi` (
  `id_pegawai` varchar(11) NOT NULL,
  `id_level_koordinasi` varchar(11) NOT NULL,
  `poin` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level_koordinasi`
--

INSERT INTO `level_koordinasi` (`id_pegawai`, `id_level_koordinasi`, `poin`) VALUES
('31', '10', '6'),
('32', '21', ''),
('33', '22', ''),
('34', '0', '0'),
('35', '0', '0'),
('36', '17', '10'),
('37', '0', '0'),
('39', '0', '0'),
('41', '0', '0'),
('44', '0', '0'),
('45', '0', '0'),
('47', '0', '0'),
('49', '0', '0'),
('50', '0', '0'),
('51', '0', '0'),
('52', '0', '0'),
('53', '0', '0'),
('54', '0', '0'),
('56', '0', '0'),
('57', '0', '0'),
('58', '0', '0'),
('59', '0', '0'),
('60', '0', '0'),
('61', '0', '0'),
('62', '0', '0'),
('63', '0', '0'),
('64', '0', '0'),
('66', '0', '0'),
('67', '0', '0'),
('68', '0', '0'),
('69', '0', '0'),
('70', '0', '0'),
('71', '0', '0'),
('72', '0', '0'),
('73', '0', '0'),
('74', '0', '0'),
('75', '0', '0'),
('76', '0', '0'),
('76', '0', '0'),
('78', '0', '0'),
('79', '0', '0'),
('80', '0', '0'),
('81', '0', '0'),
('82', '0', '0'),
('83', '0', '0'),
('84', '0', '0'),
('85', '0', '0'),
('86', '0', '0'),
('87', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `list_rumah_sakit`
--

CREATE TABLE IF NOT EXISTS `list_rumah_sakit` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list_rumah_sakit`
--

INSERT INTO `list_rumah_sakit` (`id`, `keterangan`) VALUES
(1, 'Coba1'),
(2, 'Coba2'),
(10, 'Coba2'),
(11, 'Coba2');

-- --------------------------------------------------------

--
-- Table structure for table `log_book`
--

CREATE TABLE IF NOT EXISTS `log_book` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `time_log` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `activity` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1177 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log_book`
--

INSERT INTO `log_book` (`id`, `username`, `time_log`, `activity`) VALUES
(8, 'admin', '2015-10-09 00:58:30', 'mengakses data kelompok'),
(7, 'admin', '2015-10-09 00:57:48', 'mengakses data pegawai'),
(6, 'admin', '2015-10-09 00:57:44', 'mengakses data user'),
(5, 'admin', '2015-10-09 00:26:00', 'Session Login'),
(9, 'admin', '2015-10-09 00:58:32', 'mengakses data satuan kerja'),
(10, 'admin', '2015-10-09 00:58:38', 'mengakses level koordinasi'),
(11, 'admin', '2015-10-09 00:58:43', 'mengakses data unit'),
(12, 'admin', '2015-10-09 00:58:45', 'mengakses data user'),
(13, 'admin', '2015-10-09 00:58:48', 'mengakses data user'),
(14, 'admin', '2015-10-09 00:58:53', 'mengakses monitoring'),
(15, 'admin', '2015-10-09 00:58:54', 'mengakses data user'),
(16, 'admin', '2015-10-09 00:59:20', 'mengakses data user'),
(17, 'admin', '2015-10-09 00:59:45', ' membuat akun baru'),
(18, 'admin', '2015-10-09 00:59:46', 'mengakses data user'),
(19, 'admin', '2015-10-09 01:16:25', 'mengakses log book sistem'),
(20, 'admin', '2015-10-09 01:16:39', 'mengakses log book sistem'),
(21, 'admin', '2015-10-09 01:21:15', 'mengakses log book sistem'),
(22, 'admin', '2015-10-09 01:22:05', 'session logout'),
(23, 'mahendra', '2015-10-09 01:22:13', 'simpan data user'),
(24, 'mahendra', '2015-10-09 01:22:13', 'Session Login'),
(25, 'mahendra', '2015-10-09 01:22:17', 'mengakses data user'),
(26, 'mahendra', '2015-10-09 01:22:23', 'mengakses log book sistem'),
(27, 'mahendra', '2015-10-09 01:22:47', 'mengakses data user'),
(28, 'mahendra', '2015-10-09 01:22:52', 'mengakses log book sistem'),
(29, 'mahendra', '2015-10-09 01:24:38', 'mengakses data user'),
(30, 'mahendra', '2015-10-09 01:24:41', 'mengakses monitoring'),
(31, 'mahendra', '2015-10-09 01:24:51', 'session logout'),
(32, 'admin', '2015-10-09 01:25:22', 'simpan data user'),
(33, 'admin', '2015-10-09 01:25:22', 'Session Login'),
(34, 'admin', '2015-10-09 01:30:52', 'mengakses data user'),
(35, 'admin', '2015-10-09 01:31:04', ' mengedit data akun user'),
(36, 'admin', '2015-10-09 01:31:04', 'mengakses data user'),
(37, 'admin', '2015-10-09 01:31:04', 'mengakses data user'),
(38, 'admin', '2015-10-09 01:31:10', 'mengakses log book sistem'),
(39, 'admin', '2015-10-09 01:32:16', 'mengakses data user'),
(40, 'admin', '2015-10-09 01:37:09', ' membuat akun baru'),
(41, 'admin', '2015-10-09 01:37:09', 'mengakses data user'),
(42, 'admin', '2015-10-09 01:37:46', ' membuat akun baru'),
(43, 'admin', '2015-10-09 01:37:47', 'mengakses data user'),
(44, 'admin', '2015-10-09 01:38:32', ' membuat akun baru'),
(45, 'admin', '2015-10-09 01:38:32', 'mengakses data user'),
(46, 'admin', '2015-10-09 01:38:43', ' mengedit data akun user'),
(47, 'admin', '2015-10-09 01:38:43', 'mengakses data user'),
(48, 'admin', '2015-10-09 01:38:43', 'mengakses data user'),
(49, 'admin', '2015-10-09 01:38:49', ' mengedit data akun user'),
(50, 'admin', '2015-10-09 01:38:49', 'mengakses data user'),
(51, 'admin', '2015-10-09 01:38:49', 'mengakses data user'),
(52, 'admin', '2015-10-09 01:38:53', 'mengakses log book sistem'),
(53, 'admin', '2015-10-09 01:39:30', 'mengakses data user'),
(54, 'mahendra', '2015-10-09 06:26:58', 'simpan data user'),
(55, 'mahendra', '2015-10-09 06:26:58', 'Session Login'),
(56, 'mahendra', '2015-10-09 06:27:00', 'mengakses data user'),
(57, 'mahendra', '2015-10-09 06:28:13', 'mengakses data user'),
(58, 'admin', '2015-10-09 06:28:23', 'simpan data user'),
(59, 'admin', '2015-10-09 06:28:23', 'Session Login'),
(60, 'admin', '2015-10-09 06:28:26', 'mengakses data user'),
(61, 'admin', '2015-10-09 06:28:29', 'mengakses monitoring'),
(62, 'admin', '2015-10-09 06:28:33', 'mengakses data user'),
(63, 'admin', '2015-10-09 06:28:39', 'mengakses log book sistem'),
(64, 'admin', '2015-10-09 06:28:47', 'mengakses data user'),
(65, 'admin', '2015-10-09 06:47:02', 'session logout'),
(66, 'admin', '2015-10-09 06:47:02', 'mengakses data user'),
(67, '', '2015-10-09 06:47:03', 'mengakses data user'),
(68, 'direktur', '2015-10-09 10:56:50', 'simpan data user'),
(69, 'direktur', '2015-10-09 10:56:50', 'Session Login'),
(70, 'direktur', '2015-10-09 10:56:59', 'session logout'),
(71, 'admin', '2015-10-09 10:57:07', 'simpan data user'),
(72, 'admin', '2015-10-09 10:57:07', 'Session Login'),
(73, 'admin', '2015-10-09 10:57:29', 'mengakses IKUKP'),
(74, 'admin', '2015-10-09 10:57:52', 'mengakses master IKIP'),
(75, 'admin', '2015-10-09 10:58:08', 'mengakses IKUKP'),
(76, 'admin', '2015-10-09 10:58:46', 'session logout'),
(77, 'direktur', '2015-10-09 10:58:59', 'simpan data user'),
(78, 'direktur', '2015-10-09 10:58:59', 'Session Login'),
(79, 'direktur', '2015-10-09 10:59:05', 'mengakses daftar nilai (evaluator)'),
(80, 'direktur', '2015-10-09 10:59:05', 'mengakses poin penilaian pegawai (evaluator)'),
(81, 'direktur', '2015-10-09 10:59:12', 'mengakses data pegawai (evaluator)'),
(82, 'direktur', '2015-10-09 10:59:19', 'session logout'),
(83, 'admin', '2015-10-09 11:20:19', 'simpan data user'),
(84, 'admin', '2015-10-09 11:20:19', 'Session Login'),
(85, 'admin', '2015-10-09 11:21:19', 'session logout'),
(86, 'admin', '2015-10-09 11:22:55', 'simpan data user'),
(87, 'admin', '2015-10-09 11:22:55', 'Session Login'),
(88, 'admin', '2015-10-09 11:25:10', 'mengakses data user'),
(89, 'admin', '2015-10-09 11:26:55', 'session logout'),
(90, 'admin', '2015-10-09 11:26:55', 'mengakses data user'),
(91, '', '2015-10-09 11:26:56', 'mengakses data user'),
(92, 'admin', '2015-10-09 11:28:07', 'simpan data user'),
(93, 'admin', '2015-10-09 11:28:07', 'Session Login'),
(94, 'admin', '2015-10-09 11:28:40', 'mengakses data user'),
(95, 'admin', '2015-10-09 11:28:53', 'mengakses data role'),
(96, 'admin', '2015-10-09 11:29:20', 'mengakses data user'),
(97, 'admin', '2015-10-09 11:29:49', 'mengakses data user'),
(98, 'admin', '2015-10-09 11:34:43', 'mengakses data user'),
(99, 'admin', '2015-10-09 11:34:48', 'mengakses monitoring'),
(100, 'admin', '2015-10-09 11:37:02', 'mengakses data user'),
(101, 'admin', '2015-10-09 11:37:14', 'mengakses data user level 1'),
(102, 'admin', '2015-10-09 11:37:39', 'mengakses data user level 2'),
(103, 'admin', '2015-10-09 11:37:47', 'session logout'),
(104, 'admin', '2015-10-09 11:37:47', 'mengakses data user level 2'),
(105, '', '2015-10-09 11:37:48', 'mengakses data user level 2'),
(106, 'kabid', '2015-10-09 11:38:04', 'simpan data user'),
(107, 'kabid', '2015-10-09 11:38:04', 'Session Login'),
(108, 'direktur', '2015-10-09 11:38:16', 'simpan data user'),
(109, 'direktur', '2015-10-09 11:38:16', 'Session Login'),
(110, 'direktur', '2015-10-09 11:38:28', 'session logout'),
(111, 'admin', '2015-10-09 11:38:56', 'simpan data user'),
(112, 'admin', '2015-10-09 11:38:56', 'Session Login'),
(113, 'admin', '2015-10-09 11:39:15', 'mengakses data user'),
(114, 'admin', '2015-10-09 11:39:30', 'mengakses data user level 1'),
(115, 'direktur', '2015-10-09 11:43:58', 'simpan data user'),
(116, 'direktur', '2015-10-09 11:43:58', 'Session Login'),
(117, 'direktur', '2015-10-09 11:44:03', 'session logout'),
(118, 'direktur', '2015-10-09 11:48:02', 'simpan data user'),
(119, 'direktur', '2015-10-09 11:48:02', 'Session Login'),
(120, 'direktur', '2015-10-09 11:48:09', 'session logout'),
(121, 'direktur', '2015-10-09 11:49:28', 'simpan data user'),
(122, 'direktur', '2015-10-09 11:49:28', 'Session Login'),
(123, 'direktur', '2015-10-09 11:49:34', 'mengakses data pegawai (evaluator)'),
(124, 'direktur', '2015-10-09 11:49:39', 'session logout'),
(125, 'direktur', '2015-10-09 11:49:39', 'mengakses data pegawai (evaluator)'),
(126, '', '2015-10-09 11:49:45', 'mengakses data pegawai (evaluator)'),
(127, 'admin', '2015-10-09 13:24:54', 'simpan data user'),
(128, 'admin', '2015-10-09 13:24:54', 'Session Login'),
(129, 'admin', '2015-10-09 13:24:58', 'mengakses data user'),
(130, 'admin', '2015-10-09 13:30:19', 'mengakses data user'),
(131, 'admin', '2015-10-09 14:07:02', 'mengakses data user'),
(132, 'admin', '2015-10-09 14:07:38', 'mengakses data user'),
(133, 'admin', '2015-10-09 14:08:16', 'mengakses data user'),
(134, 'mahendra', '2015-10-09 14:25:20', 'simpan data user'),
(135, 'mahendra', '2015-10-09 14:25:20', 'Session Login'),
(136, 'mahendra', '2015-10-09 14:25:42', 'mengakses data user'),
(137, 'mahendra', '2015-10-09 14:26:20', 'mengakses data user'),
(138, 'admin', '2015-10-09 15:04:16', 'simpan data user'),
(139, 'admin', '2015-10-09 15:04:16', 'Session Login'),
(140, 'admin', '2015-10-09 15:06:37', 'mengakses data user'),
(141, 'admin', '2015-10-09 15:06:45', 'mengakses data user level 1'),
(142, 'admin', '2015-10-09 15:07:13', 'mengakses data user level 2'),
(143, 'admin', '2015-10-09 15:07:27', 'mengakses data role'),
(144, 'mahendra', '2015-10-09 15:08:12', 'simpan data user'),
(145, 'mahendra', '2015-10-09 15:08:12', 'Session Login'),
(146, 'mahendra', '2015-10-09 15:08:40', 'mengakses data user'),
(147, 'admin', '2015-10-09 15:08:55', 'mengakses data user level system'),
(148, 'admin', '2015-10-09 15:09:24', 'mengakses data user'),
(149, 'admin', '2015-10-09 15:09:26', 'mengakses monitoring'),
(150, 'admin', '2015-10-09 15:09:44', 'mengakses data role'),
(151, 'mahendra', '2015-10-09 15:10:10', 'mengakses data pegawai'),
(152, 'mahendra', '2015-10-09 15:10:10', 'mengakses data pegawai'),
(153, 'admin', '2015-10-09 15:10:43', 'mengakses log book sistem'),
(154, 'mahendra', '2015-10-09 15:11:16', ' pindah edit data pegawai'),
(155, 'mahendra', '2015-10-09 15:11:16', 'mengakses data pegawai'),
(156, 'mahendra', '2015-10-09 15:11:46', 'mengakses data pegawai'),
(157, 'admin', '2015-10-09 15:13:02', 'mengakses data user'),
(158, 'admin', '2015-10-09 15:13:03', 'mengakses monitoring'),
(159, 'admin', '2015-10-09 15:14:57', 'mengakses data user'),
(160, 'admin', '2015-10-09 15:33:26', 'session logout'),
(161, 'admin', '2015-10-09 15:50:31', 'simpan data user'),
(162, 'admin', '2015-10-09 15:50:31', 'Session Login'),
(163, 'admin', '2015-10-09 15:50:34', 'simpan data user'),
(164, 'admin', '2015-10-09 15:50:34', 'Session Login'),
(165, 'admin', '2015-10-09 15:50:37', 'mengakses data user'),
(166, 'admin', '2015-10-09 15:56:15', 'mengakses data user'),
(167, 'admin', '2015-10-09 16:20:17', 'simpan data user'),
(168, 'admin', '2015-10-09 16:20:17', 'Session Login'),
(169, 'admin', '2015-10-09 16:21:44', 'session logout'),
(170, 'admin', '2015-10-09 16:34:14', 'simpan data user'),
(171, 'admin', '2015-10-09 16:34:14', 'Session Login'),
(172, 'admin', '2015-10-09 16:34:22', 'mengakses data user'),
(173, 'admin', '2015-10-09 16:37:31', ' membuat akun baru'),
(174, 'admin', '2015-10-09 16:37:34', 'mengakses data user'),
(175, 'admin', '2015-10-09 16:37:49', 'session logout'),
(176, 'admin', '2015-10-09 16:37:49', 'mengakses data user'),
(177, '', '2015-10-09 16:37:50', 'mengakses data user'),
(178, 'admin', '2015-10-10 01:42:51', 'simpan data user'),
(179, 'admin', '2015-10-10 01:42:51', 'Session Login'),
(180, 'admin', '2015-10-10 01:42:56', 'mengakses data user'),
(181, 'admin', '2015-10-10 01:43:29', 'mengakses data user'),
(182, 'admin', '2015-10-10 01:48:54', 'mengakses data user'),
(183, 'admin', '2015-10-10 01:49:31', 'mengakses data user'),
(184, '', '2015-10-10 02:15:04', 'session logout'),
(185, '', '2015-10-10 02:15:04', 'mengakses data user'),
(186, 'admin', '2015-10-10 02:15:45', 'simpan data user'),
(187, 'admin', '2015-10-10 02:15:45', 'Session Login'),
(188, 'admin', '2015-10-10 02:16:12', 'simpan data user'),
(189, 'admin', '2015-10-10 02:16:12', 'Session Login'),
(190, 'admin', '2015-10-10 02:19:09', 'simpan data user'),
(191, 'admin', '2015-10-10 02:19:09', 'Session Login'),
(192, 'mahendra', '2015-10-12 04:08:21', 'simpan data user'),
(193, 'mahendra', '2015-10-12 04:08:21', 'Session Login'),
(194, 'mahendra', '2015-10-12 04:10:28', 'mengakses data user'),
(195, 'mahendra', '2015-10-12 04:10:41', 'mengakses monitoring'),
(196, 'mahendra', '2015-10-12 04:11:28', 'session logout'),
(197, 'mahendra', '2015-10-12 04:11:28', 'mengakses monitoring'),
(198, '', '2015-10-12 04:11:28', 'mengakses monitoring'),
(199, 'admin', '2015-10-12 13:24:11', 'simpan data user'),
(200, 'admin', '2015-10-12 13:24:11', 'Session Login'),
(201, 'admin', '2015-10-12 13:24:32', 'mengakses data user'),
(202, 'admin', '2015-10-12 13:26:01', ' mengedit data akun user'),
(203, 'admin', '2015-10-12 13:26:01', 'mengakses data user'),
(204, 'admin', '2015-10-12 13:26:13', 'mengakses data user'),
(205, 'admin', '2015-10-12 13:27:28', ' mengedit data akun user'),
(206, 'admin', '2015-10-12 13:27:28', 'mengakses data user'),
(207, 'admin', '2015-10-12 13:27:29', 'mengakses data user'),
(208, 'admin', '2015-10-12 13:27:46', 'mengakses log book sistem'),
(209, 'admin', '2015-10-12 13:28:35', 'mengakses data pegawai'),
(210, 'admin', '2015-10-12 13:28:43', 'mengakses data pegawai'),
(211, 'admin', '2015-10-12 13:28:55', 'mengakses data pegawai'),
(212, 'admin', '2015-10-12 13:29:16', 'mengakses data kelompok'),
(213, 'admin', '2015-10-12 13:30:06', 'mengakses data satuan kerja'),
(214, 'admin', '2015-10-12 13:30:50', 'mengakses level koordinasi'),
(215, 'admin', '2015-10-12 13:31:15', 'mengakses data unit'),
(216, 'admin', '2015-10-12 13:32:02', 'mengakses data penggajian'),
(217, 'admin', '2015-10-12 13:32:17', 'mengakses data perpajakan'),
(218, 'admin', '2015-10-12 13:32:25', 'mengakses data kelompok'),
(219, 'admin', '2015-10-12 13:32:33', 'mengakses level koordinasi'),
(220, 'admin', '2015-10-12 13:32:45', 'mengakses data unit'),
(221, 'admin', '2015-10-12 13:33:14', 'mengakses data penggajian'),
(222, 'admin', '2015-10-12 13:33:32', 'session logout'),
(223, 'admin', '2015-10-12 13:33:32', 'mengakses data penggajian'),
(224, '', '2015-10-12 13:33:33', 'mengakses data penggajian'),
(225, 'admin', '2015-10-12 23:35:04', 'simpan data user'),
(226, 'admin', '2015-10-12 23:35:04', 'Session Login'),
(227, 'admin', '2015-10-13 00:40:24', 'mengakses data user'),
(228, 'admin', '2015-10-13 00:41:09', 'mengakses monitoring'),
(229, 'admin', '2015-10-13 00:41:22', 'mengakses data user'),
(230, 'admin', '2015-10-13 00:55:34', 'mengakses data user'),
(231, 'admin', '2015-10-13 00:56:06', 'mengakses data user'),
(232, 'admin', '2015-10-13 01:00:49', 'mengakses data user'),
(233, 'admin', '2015-10-13 01:04:28', 'session logout'),
(234, 'admin', '2015-10-13 01:04:28', 'mengakses data user'),
(235, '', '2015-10-13 01:04:28', 'mengakses data user'),
(236, 'admin', '2015-10-13 01:04:56', 'simpan data user'),
(237, 'admin', '2015-10-13 01:04:56', 'Session Login'),
(238, 'admin', '2015-10-13 01:04:58', 'mengakses data user'),
(239, 'admin', '2015-10-13 01:05:32', 'mengakses data user'),
(240, 'admin', '2015-10-13 01:05:34', 'session logout'),
(241, 'admin', '2015-10-13 01:05:34', 'mengakses data user'),
(242, '', '2015-10-13 01:05:35', 'mengakses data user'),
(243, 'mahendra', '2015-10-13 01:05:41', 'simpan data user'),
(244, 'mahendra', '2015-10-13 01:05:41', 'Session Login'),
(245, 'mahendra', '2015-10-13 01:07:44', 'session logout'),
(246, 'admin', '2015-10-13 01:09:44', 'simpan data user'),
(247, 'admin', '2015-10-13 01:09:44', 'Session Login'),
(248, 'admin', '2015-10-13 01:13:09', 'mengakses data user'),
(249, 'admin', '2015-10-13 01:40:18', 'mengakses data user'),
(250, 'admin', '2015-10-13 01:43:48', 'mengakses data user'),
(251, 'admin', '2015-10-13 01:44:56', 'mengakses data user'),
(252, 'admin', '2015-10-13 01:45:01', 'mengakses data user'),
(253, 'mahendra', '2015-10-13 01:45:59', 'simpan data user'),
(254, 'mahendra', '2015-10-13 01:45:59', 'Session Login'),
(255, 'admin', '2015-10-13 01:46:08', 'mengakses data user'),
(256, 'mahendra', '2015-10-13 01:46:18', 'session logout'),
(257, 'admin', '2015-10-13 01:46:40', 'mengakses data user'),
(258, 'mahendra', '2015-10-13 01:46:54', 'simpan data user'),
(259, 'mahendra', '2015-10-13 01:46:54', 'Session Login'),
(260, 'admin', '2015-10-13 01:47:07', 'mengakses monitoring'),
(261, 'mahendra', '2015-10-13 01:47:30', 'session logout'),
(262, 'admin', '2015-10-13 01:47:36', 'mengakses data user'),
(263, 'admin', '2015-10-13 01:50:31', 'mengakses data user level 1'),
(264, 'admin', '2015-10-13 01:51:44', 'mengakses data user level 4'),
(265, 'admin', '2015-10-13 02:19:20', 'mengakses data user level 4'),
(266, 'admin', '2015-10-13 02:38:13', 'mengakses data user level 4'),
(267, 'admin', '2015-10-13 02:38:36', 'pindah edit role user'),
(268, 'admin', '2015-10-13 02:38:36', 'mengakses data user level 4'),
(269, 'admin', '2015-10-13 02:38:40', 'mengakses data role unit'),
(270, 'admin', '2015-10-13 02:40:26', 'mengakses data role unit'),
(271, 'admin', '2015-10-13 02:44:26', 'mengakses data user level 4'),
(272, 'admin', '2015-10-13 02:44:28', 'pindah edit role user'),
(273, 'admin', '2015-10-13 02:44:28', 'mengakses data user level 4'),
(274, 'admin', '2015-10-13 02:44:28', 'mengakses data role unit'),
(275, 'admin', '2015-10-13 02:55:57', 'mengakses data user level 4'),
(276, 'admin', '2015-10-13 02:55:59', 'pindah edit role user'),
(277, 'admin', '2015-10-13 02:55:59', 'mengakses data user level 4'),
(278, 'admin', '2015-10-13 02:56:00', 'mengakses data role unit'),
(279, 'admin', '2015-10-13 02:56:07', ' mendapatkan data unit role'),
(280, 'admin', '2015-10-13 02:56:07', 'mengakses data role unit'),
(281, 'admin', '2015-10-13 02:56:07', 'mengakses data user level 1'),
(282, 'admin', '2015-10-13 02:56:21', 'mengakses data user'),
(283, 'admin', '2015-10-13 02:56:24', 'mengakses data user level 4'),
(284, 'admin', '2015-10-13 02:56:48', 'pindah edit role user'),
(285, 'admin', '2015-10-13 02:56:48', 'mengakses data user level 4'),
(286, 'admin', '2015-10-13 02:56:49', 'mengakses data role unit'),
(287, 'admin', '2015-10-13 02:56:52', ' mendapatkan data unit role'),
(288, 'admin', '2015-10-13 02:56:52', 'mengakses data role unit'),
(289, 'admin', '2015-10-13 02:56:52', 'mengakses data user level 4'),
(290, 'admin', '2015-10-13 02:57:44', 'pindah edit role user'),
(291, 'admin', '2015-10-13 02:57:44', 'mengakses data user level 4'),
(292, 'admin', '2015-10-13 02:57:44', 'mengakses data role unit'),
(293, 'admin', '2015-10-13 02:57:47', ' mendapatkan data unit role'),
(294, 'admin', '2015-10-13 02:57:47', 'mengakses data role unit'),
(295, 'admin', '2015-10-13 02:57:47', 'mengakses data user level 4'),
(296, 'admin', '2015-10-13 02:58:08', 'pindah edit role user'),
(297, 'admin', '2015-10-13 02:58:08', 'mengakses data user level 4'),
(298, 'admin', '2015-10-13 02:58:08', 'mengakses data role unit'),
(299, 'admin', '2015-10-13 02:58:11', ' mendapatkan data unit role'),
(300, 'admin', '2015-10-13 02:58:11', 'mengakses data role unit'),
(301, 'admin', '2015-10-13 02:58:11', 'mengakses data user level 4'),
(302, 'admin', '2015-10-13 02:58:41', 'pindah edit role user'),
(303, 'admin', '2015-10-13 02:58:41', 'mengakses data user level 4'),
(304, 'admin', '2015-10-13 02:58:42', 'mengakses data role unit'),
(305, 'admin', '2015-10-13 02:58:45', ' mendapatkan data unit role'),
(306, 'admin', '2015-10-13 02:58:45', 'mengakses data role unit'),
(307, 'admin', '2015-10-13 02:58:45', 'mengakses data user level 4'),
(308, 'admin', '2015-10-13 03:05:22', 'pindah edit role user'),
(309, 'admin', '2015-10-13 03:05:22', 'mengakses data user level 4'),
(310, 'admin', '2015-10-13 03:05:22', 'mengakses data role unit'),
(311, 'admin', '2015-10-13 03:05:25', ' mendapatkan data unit role'),
(312, 'admin', '2015-10-13 03:05:25', 'mengakses data role unit'),
(313, 'admin', '2015-10-13 03:05:25', 'mengakses data user level 4'),
(314, 'admin', '2015-10-13 03:29:47', 'mengakses data user level 4'),
(315, 'admin', '2015-10-13 03:30:22', 'mengakses data user level 4'),
(316, 'admin', '2015-10-13 03:31:23', 'mengakses data user level 4'),
(317, 'admin', '2015-10-13 03:31:35', 'pindah edit role user'),
(318, 'admin', '2015-10-13 03:31:35', 'mengakses data user level 4'),
(319, 'admin', '2015-10-13 03:31:35', 'mengakses data role unit'),
(320, 'admin', '2015-10-13 03:31:40', ' mendapatkan data unit role'),
(321, 'admin', '2015-10-13 03:31:40', 'mengakses data role unit'),
(322, 'admin', '2015-10-13 03:31:41', 'mengakses data user level 4'),
(323, 'admin', '2015-10-13 03:44:46', 'mengakses data user level 4'),
(324, 'admin', '2015-10-13 03:44:48', 'pindah edit role user'),
(325, 'admin', '2015-10-13 03:44:48', 'mengakses data user level 4'),
(326, 'admin', '2015-10-13 03:44:49', 'mengakses data role unit'),
(327, 'admin', '2015-10-13 03:44:53', ' mendapatkan data unit role'),
(328, 'admin', '2015-10-13 03:44:53', 'mengakses data role unit'),
(329, 'admin', '2015-10-13 03:44:53', 'mengakses data user level 4'),
(330, 'admin', '2015-10-13 03:44:56', 'pindah edit role user'),
(331, 'admin', '2015-10-13 03:44:56', 'mengakses data user level 4'),
(332, 'admin', '2015-10-13 03:44:56', 'mengakses data role unit'),
(333, 'admin', '2015-10-13 03:46:03', ' mendapatkan data unit role'),
(334, 'admin', '2015-10-13 03:46:03', 'mengakses data role unit'),
(335, 'admin', '2015-10-13 03:46:03', 'mengakses data user level 4'),
(336, 'admin', '2015-10-13 03:47:05', 'mengakses data user level 4'),
(337, 'admin', '2015-10-13 04:12:20', 'mengakses data user level 4'),
(338, 'admin', '2015-10-13 04:13:38', 'mengakses data user level 4'),
(339, 'admin', '2015-10-13 04:14:15', 'mengakses data user level 4'),
(340, 'admin', '2015-10-13 04:15:41', 'mengakses data user level 4'),
(341, 'admin', '2015-10-13 04:15:51', 'pindah edit role user'),
(342, 'admin', '2015-10-13 04:15:51', 'mengakses data user level 4'),
(343, 'admin', '2015-10-13 04:15:51', 'mengakses data role unit'),
(344, 'admin', '2015-10-13 04:15:54', ' mendapatkan data unit role'),
(345, 'admin', '2015-10-13 04:15:54', 'mengakses data role unit'),
(346, 'admin', '2015-10-13 04:15:54', 'mengakses data user level 4'),
(347, 'admin', '2015-10-13 06:25:31', 'mengakses data user level 4'),
(348, 'admin', '2015-10-13 06:25:35', 'pindah edit role user'),
(349, 'admin', '2015-10-13 06:25:35', 'mengakses data user level 4'),
(350, 'admin', '2015-10-13 06:25:35', 'mengakses data role unit'),
(351, 'admin', '2015-10-13 06:26:22', 'mengakses data user level 4'),
(352, 'admin', '2015-10-13 06:26:24', 'pindah edit role user'),
(353, 'admin', '2015-10-13 06:26:24', 'mengakses data user level 4'),
(354, 'admin', '2015-10-13 06:26:24', 'mengakses data role unit'),
(355, 'admin', '2015-10-13 06:26:31', 'mengakses data role unit'),
(356, 'admin', '2015-10-13 06:29:08', 'mengakses data user level 1'),
(357, 'admin', '2015-10-13 06:29:10', 'mengakses data user level 4'),
(358, 'admin', '2015-10-13 06:29:12', 'pindah edit role user'),
(359, 'admin', '2015-10-13 06:29:12', 'mengakses data user level 4'),
(360, 'admin', '2015-10-13 06:29:12', 'mengakses data role unit'),
(361, 'admin', '2015-10-13 06:46:05', 'mengakses data user level 4'),
(362, 'admin', '2015-10-13 06:46:07', 'pindah edit role user'),
(363, 'admin', '2015-10-13 06:46:07', 'mengakses data user level 4'),
(364, 'admin', '2015-10-13 06:46:08', 'mengakses data role unit'),
(365, 'admin', '2015-10-13 06:46:29', 'mengakses data role unit'),
(366, 'admin', '2015-10-13 06:48:53', 'mengakses data user level 4'),
(367, 'admin', '2015-10-13 06:48:55', 'pindah edit role user'),
(368, 'admin', '2015-10-13 06:48:55', 'mengakses data user level 4'),
(369, 'admin', '2015-10-13 06:48:55', 'mengakses data role unit'),
(370, 'admin', '2015-10-13 06:50:33', 'mengakses data user level 4'),
(371, 'admin', '2015-10-13 06:50:35', 'pindah edit role user'),
(372, 'admin', '2015-10-13 06:50:35', 'mengakses data user level 4'),
(373, 'admin', '2015-10-13 06:50:35', 'mengakses data role unit'),
(374, 'admin', '2015-10-13 06:50:38', 'mengakses data role unit'),
(375, 'admin', '2015-10-13 06:53:31', 'mengakses data role unit'),
(376, 'admin', '2015-10-13 06:53:35', 'mengakses data role unit'),
(377, 'admin', '2015-10-13 07:02:22', 'mengakses data role unit'),
(378, 'admin', '2015-10-13 07:03:21', 'mengakses data role unit'),
(379, 'admin', '2015-10-13 07:03:27', 'mengakses data role unit'),
(380, 'admin', '2015-10-13 07:04:43', 'mengakses data role unit'),
(381, 'admin', '2015-10-13 07:04:45', 'mengakses data role unit'),
(382, 'admin', '2015-10-13 07:06:05', 'mengakses data role unit'),
(383, 'admin', '2015-10-13 07:06:10', 'mengakses data role unit'),
(384, 'admin', '2015-10-13 07:10:35', 'mengakses data role unit'),
(385, 'admin', '2015-10-13 07:10:54', ' mendapatkan data unit role'),
(386, 'admin', '2015-10-13 07:10:54', 'mengakses data role unit'),
(387, 'admin', '2015-10-13 07:10:54', 'mengakses data user level 4'),
(388, 'admin', '2015-10-13 07:10:58', 'pindah edit role user'),
(389, 'admin', '2015-10-13 07:10:58', 'mengakses data user level 4'),
(390, 'admin', '2015-10-13 07:10:58', 'mengakses data role unit'),
(391, 'admin', '2015-10-13 07:11:05', ' mendapatkan data unit role'),
(392, 'admin', '2015-10-13 07:11:05', 'mengakses data role unit'),
(393, 'admin', '2015-10-13 07:11:05', 'mengakses data user level 4'),
(394, 'admin', '2015-10-13 07:11:08', 'pindah edit role user'),
(395, 'admin', '2015-10-13 07:11:08', 'mengakses data user level 4'),
(396, 'admin', '2015-10-13 07:11:09', 'mengakses data role unit'),
(397, 'admin', '2015-10-13 07:11:15', ' mendapatkan data unit role'),
(398, 'admin', '2015-10-13 07:11:15', 'mengakses data role unit'),
(399, 'admin', '2015-10-13 07:11:15', 'mengakses data user level 4'),
(400, 'admin', '2015-10-13 07:13:09', 'pindah edit role user'),
(401, 'admin', '2015-10-13 07:13:09', 'mengakses data user level 4'),
(402, 'admin', '2015-10-13 07:13:10', 'mengakses data role unit'),
(403, 'admin', '2015-10-13 07:13:18', ' mendapatkan data unit role'),
(404, 'admin', '2015-10-13 07:13:18', 'mengakses data role unit'),
(405, 'admin', '2015-10-13 07:13:18', 'mengakses data user level 4'),
(406, 'admin', '2015-10-13 07:16:47', 'mengakses data user level 3'),
(407, 'admin', '2015-10-13 07:19:57', 'mengakses data user level 4'),
(408, 'admin', '2015-10-13 09:33:17', 'pindah edit role user'),
(409, 'admin', '2015-10-13 09:33:17', 'mengakses data user level 4'),
(410, 'admin', '2015-10-13 09:33:17', 'mengakses data role unit'),
(411, 'admin', '2015-10-13 09:33:24', ' mendapatkan data unit role'),
(412, 'admin', '2015-10-13 09:33:24', 'mengakses data role unit'),
(413, 'admin', '2015-10-13 09:33:24', 'mengakses data user level 4'),
(414, 'admin', '2015-10-13 13:37:07', 'mengakses data user level 3'),
(415, 'admin', '2015-10-13 13:37:11', 'pindah edit role user'),
(416, 'admin', '2015-10-13 13:37:11', 'mengakses data user level 3'),
(417, 'admin', '2015-10-13 13:37:11', 'mengakses data role unit'),
(418, 'admin', '2015-10-13 13:46:03', 'mengakses data user level 3'),
(419, 'admin', '2015-10-13 13:46:06', 'pindah edit role user'),
(420, 'admin', '2015-10-13 13:46:06', 'mengakses data user level 3'),
(421, 'admin', '2015-10-13 13:46:07', 'mengakses data role unit'),
(422, 'admin', '2015-10-13 13:46:17', 'mengakses data role unit'),
(423, 'admin', '2015-10-13 13:49:13', 'mengakses data role unit'),
(424, 'admin', '2015-10-13 13:49:27', 'mengakses data user'),
(425, 'admin', '2015-10-13 13:49:31', 'mengakses data user'),
(426, 'admin', '2015-10-13 13:50:58', 'mengakses data user level 3'),
(427, 'admin', '2015-10-13 13:51:01', 'pindah edit role user'),
(428, 'admin', '2015-10-13 13:51:01', 'mengakses data user level 3'),
(429, 'admin', '2015-10-13 13:51:02', 'mengakses data role unit'),
(430, 'admin', '2015-10-13 13:52:40', 'mengakses data user'),
(431, 'admin', '2015-10-13 13:52:56', ' membuat akun baru'),
(432, 'admin', '2015-10-13 13:52:56', 'mengakses data user'),
(433, 'admin', '2015-10-13 13:53:10', 'mengakses data user level 3'),
(434, 'admin', '2015-10-13 13:53:13', 'pindah edit role user'),
(435, 'admin', '2015-10-13 13:53:13', 'mengakses data user level 3'),
(436, 'admin', '2015-10-13 13:53:13', 'mengakses data role unit'),
(437, 'admin', '2015-10-13 13:53:15', ' mendapatkan data unit role'),
(438, 'admin', '2015-10-13 13:53:15', 'mengakses data role unit'),
(439, 'admin', '2015-10-13 13:53:59', 'mengakses data user level 3'),
(440, 'admin', '2015-10-13 13:54:02', 'pindah edit role user'),
(441, 'admin', '2015-10-13 13:54:02', 'mengakses data user level 3'),
(442, 'admin', '2015-10-13 13:54:02', 'mengakses data role unit'),
(443, 'admin', '2015-10-13 13:54:07', ' mendapatkan data unit role'),
(444, 'admin', '2015-10-13 13:54:07', 'mengakses data role unit'),
(445, 'admin', '2015-10-13 13:54:08', 'mengakses data user level 3'),
(446, 'admin', '2015-10-13 14:07:00', 'mengakses data user level 3'),
(447, 'admin', '2015-10-13 14:07:28', 'mengakses data user level 3'),
(448, 'admin', '2015-10-13 14:07:34', 'pindah edit role user'),
(449, 'admin', '2015-10-13 14:07:34', 'mengakses data user level 3'),
(450, 'admin', '2015-10-13 14:07:35', 'mengakses data role unit'),
(451, 'admin', '2015-10-13 14:07:37', ' mendapatkan data unit role'),
(452, 'admin', '2015-10-13 14:07:37', 'mengakses data role unit'),
(453, 'admin', '2015-10-13 14:07:37', 'mengakses data user level 3'),
(454, 'admin', '2015-10-13 14:08:02', 'mengakses data user level 4'),
(455, 'admin', '2015-10-13 14:08:05', 'pindah edit role user'),
(456, 'admin', '2015-10-13 14:08:05', 'mengakses data user level 4'),
(457, 'admin', '2015-10-13 14:08:06', 'mengakses data role unit'),
(458, 'admin', '2015-10-13 14:08:10', ' mendapatkan data unit role'),
(459, 'admin', '2015-10-13 14:08:10', 'mengakses data role unit'),
(460, 'admin', '2015-10-13 14:08:10', 'mengakses data user level 4'),
(461, 'admin', '2015-10-13 14:10:28', 'mengakses data user level 3'),
(462, 'admin', '2015-10-13 14:10:35', 'pindah edit role user'),
(463, 'admin', '2015-10-13 14:10:35', 'mengakses data user level 3'),
(464, 'admin', '2015-10-13 14:10:35', 'mengakses data role unit'),
(465, 'admin', '2015-10-13 14:12:17', 'mengakses data user'),
(466, 'admin', '2015-10-13 14:12:26', 'mengakses data user'),
(467, 'admin', '2015-10-13 14:12:49', ' membuat akun baru'),
(468, 'admin', '2015-10-13 14:12:49', 'mengakses data user'),
(469, 'admin', '2015-10-13 14:12:57', 'mengakses data user level 3'),
(470, 'admin', '2015-10-13 14:13:02', 'pindah edit role user'),
(471, 'admin', '2015-10-13 14:13:02', 'mengakses data user level 3'),
(472, 'admin', '2015-10-13 14:13:02', 'mengakses data role unit'),
(473, 'admin', '2015-10-13 14:13:04', ' mendapatkan data unit role'),
(474, 'admin', '2015-10-13 14:13:04', 'mengakses data role unit'),
(475, 'admin', '2015-10-13 14:13:04', 'mengakses data user level 3'),
(476, 'admin', '2015-10-13 14:19:56', 'mengakses data user level 2'),
(477, 'admin', '2015-10-13 14:20:00', 'pindah edit role user'),
(478, 'admin', '2015-10-13 14:20:00', 'mengakses data user level 2'),
(479, 'admin', '2015-10-13 14:20:01', 'mengakses data role unit'),
(480, 'admin', '2015-10-13 14:22:11', 'mengakses data user level 2'),
(481, 'admin', '2015-10-13 14:22:14', 'pindah edit role user'),
(482, 'admin', '2015-10-13 14:22:14', 'mengakses data user level 2'),
(483, 'admin', '2015-10-13 14:22:14', 'mengakses data role unit'),
(484, 'admin', '2015-10-13 14:22:18', ' mendapatkan data unit role'),
(485, 'admin', '2015-10-13 14:22:18', 'mengakses data role unit'),
(486, 'admin', '2015-10-13 14:22:18', 'mengakses data user level 2'),
(487, 'admin', '2015-10-13 14:22:20', 'pindah edit role user'),
(488, 'admin', '2015-10-13 14:22:20', 'mengakses data user level 2'),
(489, 'admin', '2015-10-13 14:22:21', 'mengakses data role unit'),
(490, 'admin', '2015-10-13 14:22:23', ' mendapatkan data unit role'),
(491, 'admin', '2015-10-13 14:22:23', 'mengakses data role unit'),
(492, 'admin', '2015-10-13 14:22:23', 'mengakses data user level 2'),
(493, 'admin', '2015-10-13 14:27:50', 'mengakses data user'),
(494, 'admin', '2015-10-13 14:32:46', 'mengakses data user'),
(495, 'admin', '2015-10-13 14:33:48', 'mengakses data user'),
(496, 'admin', '2015-10-13 14:34:21', 'mengakses data user'),
(497, 'admin', '2015-10-13 14:34:27', 'mengakses data user'),
(498, 'admin', '2015-10-13 14:36:30', 'mengakses data user'),
(499, 'admin', '2015-10-13 14:41:31', 'mengakses data user level 1'),
(500, 'admin', '2015-10-13 14:45:33', 'mengakses data user level 1'),
(501, 'admin', '2015-10-13 14:45:45', 'mengakses data user level 1'),
(502, 'admin', '2015-10-13 14:46:09', 'mengakses data user level 1'),
(503, 'admin', '2015-10-13 14:49:07', 'mengakses data user level 1'),
(504, 'admin', '2015-10-13 15:06:24', 'session logout'),
(505, 'admin', '2015-10-13 17:27:38', 'simpan data user'),
(506, 'admin', '2015-10-13 17:27:38', 'Session Login'),
(507, 'admin', '2015-10-13 17:28:20', 'mengakses data user'),
(508, 'admin', '2015-10-13 17:28:38', 'mengakses data user level 4'),
(509, 'admin', '2015-10-13 17:30:01', 'mengakses data user'),
(510, 'admin', '2015-10-13 17:30:08', 'mengakses data user level 3'),
(511, 'admin', '2015-10-13 17:31:36', 'mengakses data user'),
(512, 'admin', '2015-10-13 17:31:42', 'mengakses monitoring'),
(513, 'admin', '2015-10-13 17:32:11', 'mengakses data user'),
(514, 'admin', '2015-10-13 17:32:34', 'mengakses data user level 1'),
(515, 'admin', '2015-10-13 17:32:54', 'mengakses data user'),
(516, 'admin', '2015-10-13 17:33:09', 'mengakses data user level 1'),
(517, 'admin', '2015-10-13 17:33:29', 'mengakses data user'),
(518, 'admin', '2015-10-13 17:34:04', 'mengakses log book sistem'),
(519, 'admin', '2015-10-13 17:34:31', 'mengakses data pegawai'),
(520, 'admin', '2015-10-13 17:34:39', ' pindah edit data pegawai'),
(521, 'admin', '2015-10-13 17:34:39', 'mengakses data pegawai'),
(522, 'admin', '2015-10-13 17:35:24', 'mengakses data kelompok'),
(523, 'admin', '2015-10-13 17:36:10', 'mengakses data pegawai'),
(524, 'admin', '2015-10-13 17:36:17', 'mengakses data kelompok'),
(525, 'admin', '2015-10-13 17:36:40', 'mengakses data satuan kerja'),
(526, 'admin', '2015-10-13 17:37:01', 'mengakses level koordinasi'),
(527, 'admin', '2015-10-13 17:37:25', 'mengakses data kelompok'),
(528, 'admin', '2015-10-13 17:38:05', 'mengakses data perpajakan'),
(529, 'admin', '2015-10-13 17:38:48', 'mengakses data unit'),
(530, 'admin', '2015-10-13 17:39:20', 'session logout'),
(531, 'admin', '2015-10-13 17:39:34', 'simpan data user'),
(532, 'admin', '2015-10-13 17:39:34', 'Session Login'),
(533, 'admin', '2015-10-13 17:39:41', 'mengakses data user'),
(534, 'admin', '2015-10-13 17:39:45', ' mengedit data akun user'),
(535, 'admin', '2015-10-13 17:39:45', 'mengakses data user'),
(536, 'admin', '2015-10-13 17:39:46', 'mengakses data user'),
(537, 'admin', '2015-10-13 17:39:53', ' mengedit data akun user'),
(538, 'admin', '2015-10-13 17:39:53', 'mengakses data user'),
(539, 'admin', '2015-10-13 17:39:53', 'mengakses data user'),
(540, 'admin', '2015-10-13 17:40:05', ' mengedit data akun user'),
(541, 'admin', '2015-10-13 17:40:05', 'mengakses data user'),
(542, 'admin', '2015-10-13 17:40:05', 'mengakses data user'),
(543, 'admin', '2015-10-13 17:40:10', 'session logout'),
(544, 'admin', '2015-10-13 17:40:10', 'mengakses data user'),
(545, '', '2015-10-13 17:40:11', 'mengakses data user'),
(546, 'admin', '2015-10-13 17:40:27', 'simpan data user'),
(547, 'admin', '2015-10-13 17:40:27', 'Session Login'),
(548, 'admin', '2015-10-13 17:40:34', 'mengakses data user'),
(549, 'admin', '2015-10-13 17:40:39', 'session logout'),
(550, 'admin', '2015-10-13 17:40:39', 'mengakses data user'),
(551, '', '2015-10-13 17:40:40', 'mengakses data user'),
(552, 'admin', '2015-10-13 17:41:10', 'simpan data user'),
(553, 'admin', '2015-10-13 17:41:10', 'Session Login'),
(554, 'admin', '2015-10-13 17:41:14', 'mengakses data user'),
(555, 'admin', '2015-10-13 17:41:24', 'mengakses data user'),
(556, 'admin', '2015-10-13 17:41:29', 'session logout'),
(557, 'admin', '2015-10-13 17:41:29', 'mengakses data user'),
(558, '', '2015-10-13 17:41:30', 'mengakses data user'),
(559, 'direktur', '2015-10-13 17:41:53', 'simpan data user'),
(560, 'direktur', '2015-10-13 17:41:53', 'Session Login'),
(561, 'direktur', '2015-10-13 17:41:58', 'mengakses data pegawai (evaluator)'),
(562, 'direktur', '2015-10-13 17:42:02', 'mengakses daftar nilai (evaluator)'),
(563, 'direktur', '2015-10-13 17:42:02', 'mengakses poin penilaian pegawai (evaluator)'),
(564, 'direktur', '2015-10-13 17:42:12', 'session logout'),
(565, 'admin', '2015-10-13 21:45:45', 'simpan data user'),
(566, 'admin', '2015-10-13 21:45:45', 'Session Login'),
(567, 'admin', '2015-10-13 21:45:48', 'mengakses data user'),
(568, 'admin', '2015-10-13 21:45:56', 'mengakses data user'),
(569, 'admin', '2015-10-13 21:46:08', 'session logout'),
(570, 'admin', '2015-10-13 21:46:08', 'mengakses data user'),
(571, '', '2015-10-13 21:46:08', 'mengakses data user'),
(572, 'admin', '2015-10-13 21:46:25', 'simpan data user'),
(573, 'admin', '2015-10-13 21:46:25', 'Session Login'),
(574, 'admin', '2015-10-13 21:46:27', 'mengakses data user'),
(575, 'admin', '2015-10-13 21:48:07', 'mengakses data user'),
(576, 'admin', '2015-10-13 21:50:12', 'mengakses data user'),
(577, 'admin', '2015-10-13 21:50:40', 'mengakses data user'),
(578, 'admin', '2015-10-13 21:52:21', 'mengakses data user'),
(579, 'admin', '2015-10-13 21:54:09', 'mengakses data user'),
(580, 'mahendra', '2015-10-13 21:54:23', 'simpan data user'),
(581, 'mahendra', '2015-10-13 21:54:23', 'Session Login'),
(582, 'mahendra', '2015-10-13 21:54:27', 'session logout'),
(583, 'admin', '2015-10-13 21:54:34', 'mengakses data user'),
(584, 'admin', '2015-10-13 21:54:52', 'mengakses data user'),
(585, 'admin', '2015-10-13 23:53:59', 'mengakses data user'),
(586, 'admin', '2015-10-13 23:56:51', 'mengakses data user level system'),
(587, 'admin', '2015-10-14 00:02:09', 'mengakses data user'),
(588, 'admin', '2015-10-14 00:02:13', 'mengakses data role'),
(589, 'admin', '2015-10-14 00:33:47', 'mengakses data user'),
(590, 'admin', '2015-10-14 00:33:51', 'mengakses data user'),
(591, 'admin', '2015-10-14 00:38:01', 'mengakses data user'),
(592, 'admin', '2015-10-14 00:38:18', 'mengakses data user'),
(593, 'admin', '2015-10-14 00:38:34', 'mengakses data user'),
(594, 'admin', '2015-10-14 00:39:49', 'mengakses data user'),
(595, 'admin', '2015-10-14 00:41:34', 'mengakses data user'),
(596, 'admin', '2015-10-14 00:42:08', 'mengakses data user'),
(597, 'admin', '2015-10-14 00:42:28', 'mengakses data user'),
(598, 'admin', '2015-10-14 00:43:02', 'mengakses data user'),
(599, 'admin', '2015-10-14 01:04:55', 'mengakses data user'),
(600, 'admin', '2015-10-14 01:05:37', 'mengakses data user'),
(601, 'admin', '2015-10-14 01:06:12', 'mengakses data user'),
(602, 'admin', '2015-10-14 01:06:27', 'mengakses data user'),
(603, 'admin', '2015-10-14 01:06:46', 'mengakses data user'),
(604, 'admin', '2015-10-14 01:07:47', 'mengakses data user'),
(605, 'admin', '2015-10-14 01:07:58', 'mengakses data user'),
(606, 'admin', '2015-10-14 01:08:09', 'mengakses data user'),
(607, 'admin', '2015-10-14 01:08:22', 'mengakses data user'),
(608, 'admin', '2015-10-14 01:08:51', 'mengakses data user'),
(609, 'admin', '2015-10-14 01:09:30', 'mengakses data user'),
(610, 'admin', '2015-10-14 01:09:42', 'mengakses data user'),
(611, 'admin', '2015-10-14 01:20:24', 'mengakses data user'),
(612, 'admin', '2015-10-14 01:20:51', 'mengakses data user'),
(613, 'admin', '2015-10-14 01:20:54', 'pindah edit Create User Baru'),
(614, 'admin', '2015-10-14 01:20:54', 'mengakses data user'),
(615, 'admin', '2015-10-14 01:20:57', 'mengakses data user'),
(616, 'admin', '2015-10-14 01:22:49', 'mengakses data user'),
(617, 'admin', '2015-10-14 01:23:25', 'mengakses data user'),
(618, 'admin', '2015-10-14 01:23:36', 'mengakses data user'),
(619, 'admin', '2015-10-14 01:23:37', 'mengakses monitoring'),
(620, 'admin', '2015-10-14 01:23:38', 'mengakses data user'),
(621, 'admin', '2015-10-14 01:25:18', 'mengakses monitoring'),
(622, 'admin', '2015-10-14 01:25:20', 'mengakses data user'),
(623, 'admin', '2015-10-14 01:25:23', 'mengakses data user level system'),
(624, 'admin', '2015-10-14 01:29:21', 'mengakses data user'),
(625, 'mahendra', '2015-10-15 03:59:38', 'simpan data user'),
(626, 'mahendra', '2015-10-15 03:59:38', 'Session Login'),
(627, 'mahendra', '2015-10-15 03:59:50', 'mengakses data user'),
(628, 'mahendra', '2015-10-15 03:59:55', 'mengakses data user'),
(629, 'mahendra', '2015-10-15 04:00:23', 'mengakses data user'),
(630, 'mahendra', '2015-10-15 04:00:43', 'mengakses data user'),
(631, 'mahendra', '2015-10-15 04:00:56', 'reset password user umum'),
(632, 'mahendra', '2015-10-15 04:00:56', 'mengakses data user'),
(633, 'mahendra', '2015-10-15 04:02:06', 'session logout'),
(634, 'mahendra', '2015-10-15 04:02:06', 'mengakses data user'),
(635, '', '2015-10-15 04:02:07', 'mengakses data user'),
(636, 'admin', '2015-10-15 04:02:43', 'simpan data user'),
(637, 'admin', '2015-10-15 04:02:43', 'Session Login'),
(638, 'admin', '2015-10-15 04:04:14', 'simpan data user'),
(639, 'admin', '2015-10-15 04:04:14', 'Session Login'),
(640, 'admin', '2015-10-15 04:06:11', 'mengakses data user'),
(641, 'admin', '2015-10-15 12:57:47', 'simpan data user'),
(642, 'admin', '2015-10-15 12:57:47', 'Session Login'),
(643, 'admin', '2015-10-15 12:58:13', 'session logout'),
(644, 'admin', '2015-10-15 12:58:38', 'simpan data user'),
(645, 'admin', '2015-10-15 12:58:38', 'Session Login'),
(646, 'admin', '2015-10-15 13:00:10', 'simpan data user'),
(647, 'admin', '2015-10-15 13:00:10', 'Session Login'),
(648, 'admin', '2015-10-15 13:03:35', 'simpan data user'),
(649, 'admin', '2015-10-15 13:03:35', 'Session Login'),
(650, 'admin', '2015-10-15 13:03:56', 'simpan data user'),
(651, 'admin', '2015-10-15 13:03:56', 'Session Login'),
(652, 'admin', '2015-10-15 13:04:53', 'simpan data user'),
(653, 'admin', '2015-10-15 13:04:53', 'Session Login'),
(654, 'admin', '2015-10-15 13:06:41', 'session logout'),
(655, 'admin', '2015-10-15 13:11:50', 'simpan data user'),
(656, 'admin', '2015-10-15 13:11:50', 'Session Login'),
(657, 'admin', '2015-10-15 13:20:20', 'simpan data user'),
(658, 'admin', '2015-10-15 13:20:20', 'Session Login'),
(659, 'admin', '2015-10-15 15:29:19', 'mengakses data user'),
(660, 'admin', '2015-10-15 15:33:42', 'mengakses data user'),
(661, 'admin', '2015-10-15 15:36:15', 'mengakses data pegawai'),
(662, 'admin', '2015-10-15 15:36:27', 'mengakses data user'),
(663, 'admin', '2015-10-15 15:37:49', 'mengakses data user'),
(664, 'admin', '2015-10-15 15:39:35', 'mengakses data user'),
(665, 'admin', '2015-10-15 15:39:54', 'mengakses data user'),
(666, 'admin', '2015-10-15 15:42:20', 'pindah edit Create User Baru'),
(667, 'admin', '2015-10-15 15:42:20', 'mengakses data user'),
(668, 'admin', '2015-10-15 15:44:28', 'mengakses data user'),
(669, 'admin', '2015-10-15 15:46:22', 'pindah edit Create User Baru'),
(670, 'admin', '2015-10-15 15:46:22', 'mengakses data user'),
(671, 'admin', '2015-10-15 15:48:30', 'mengakses data user'),
(672, 'admin', '2015-10-15 15:48:48', 'pindah edit Create User Baru'),
(673, 'admin', '2015-10-15 15:48:48', 'mengakses data user'),
(674, 'admin', '2015-10-15 15:58:10', 'mengakses data user'),
(675, 'admin', '2015-10-15 15:58:19', 'pindah edit Create User Baru'),
(676, 'admin', '2015-10-15 15:58:19', 'mengakses data user'),
(677, 'admin', '2015-10-15 16:00:09', 'mengakses data user'),
(678, 'admin', '2015-10-15 16:01:11', 'pindah edit Create User Baru'),
(679, 'admin', '2015-10-15 16:01:11', 'mengakses data user'),
(680, 'admin', '2015-10-15 16:04:21', 'mengakses data user'),
(681, 'admin', '2015-10-15 16:04:30', 'pindah edit Create User Baru'),
(682, 'admin', '2015-10-15 16:04:30', 'mengakses data user'),
(683, 'admin', '2015-10-15 16:15:57', 'mengakses data user'),
(684, 'admin', '2015-10-15 16:16:08', 'pindah edit Create User Baru'),
(685, 'admin', '2015-10-15 16:16:08', 'mengakses data user'),
(686, 'admin', '2015-10-15 16:16:30', 'mengakses data user'),
(687, 'admin', '2015-10-15 16:16:39', 'pindah edit Create User Baru'),
(688, 'admin', '2015-10-15 16:16:39', 'mengakses data user'),
(689, 'admin', '2015-10-15 16:18:11', 'mengakses data user'),
(690, 'admin', '2015-10-15 16:18:20', 'pindah edit Create User Baru'),
(691, 'admin', '2015-10-15 16:18:20', 'mengakses data user'),
(692, 'admin', '2015-10-15 16:18:47', 'mengakses data user'),
(693, 'admin', '2015-10-15 16:18:57', 'pindah edit Create User Baru'),
(694, 'admin', '2015-10-15 16:18:57', 'mengakses data user'),
(695, 'admin', '2015-10-15 16:31:28', 'mengakses data user'),
(696, 'admin', '2015-10-15 16:39:50', 'mengakses data user'),
(697, 'admin', '2015-10-15 16:40:12', 'pindah edit Create User Baru'),
(698, 'admin', '2015-10-15 16:40:12', 'mengakses data user'),
(699, 'admin', '2015-10-15 16:40:18', 'mengakses data user'),
(700, 'admin', '2015-10-15 16:40:29', 'pindah edit Create User Baru'),
(701, 'admin', '2015-10-15 16:40:29', 'mengakses data user'),
(702, 'admin', '2015-10-15 16:40:39', 'mengakses data user'),
(703, 'admin', '2015-10-15 16:40:49', 'pindah edit Create User Baru'),
(704, 'admin', '2015-10-15 16:40:49', 'mengakses data user'),
(705, 'admin', '2015-10-15 16:40:56', 'mengakses data user'),
(706, 'admin', '2015-10-15 16:41:08', 'pindah edit Create User Baru'),
(707, 'admin', '2015-10-15 16:41:08', 'mengakses data user'),
(708, 'admin', '2015-10-15 16:41:14', 'mengakses data user'),
(709, 'admin', '2015-10-15 16:41:23', 'pindah edit Create User Baru'),
(710, 'admin', '2015-10-15 16:41:23', 'mengakses data user'),
(711, 'admin', '2015-10-15 16:41:29', 'mengakses data user'),
(712, 'admin', '2015-10-15 16:41:44', 'pindah edit Create User Baru'),
(713, 'admin', '2015-10-15 16:41:44', 'mengakses data user'),
(714, 'admin', '2015-10-15 16:42:22', 'mengakses data user'),
(715, 'admin', '2015-10-15 16:42:31', 'pindah edit Create User Baru'),
(716, 'admin', '2015-10-15 16:42:31', 'mengakses data user'),
(717, 'admin', '2015-10-15 16:43:24', 'mengakses data user'),
(718, 'admin', '2015-10-15 16:58:02', 'pindah edit Create User Baru'),
(719, 'admin', '2015-10-15 16:58:02', 'mengakses data user'),
(720, 'admin', '2015-10-15 17:01:21', 'mengakses data user'),
(721, 'admin', '2015-10-15 17:01:30', 'pindah edit Create User Baru'),
(722, 'admin', '2015-10-15 17:01:30', 'mengakses data user'),
(723, 'admin', '2015-10-15 17:01:44', ' membuat akun baru'),
(724, 'admin', '2015-10-15 17:01:45', 'mengakses data user'),
(725, 'admin', '2015-10-15 17:03:04', 'Menghapus akun'),
(726, 'admin', '2015-10-15 17:03:04', 'mengakses data user'),
(727, 'admin', '2015-10-15 17:03:04', 'mengakses data user'),
(728, 'admin', '2015-10-15 17:03:31', 'pindah edit Create User Baru'),
(729, 'admin', '2015-10-15 17:03:31', 'mengakses data user'),
(730, 'admin', '2015-10-15 17:03:42', ' membuat akun baru'),
(731, 'admin', '2015-10-15 17:03:43', 'mengakses data user'),
(732, 'admin', '2015-10-15 17:10:25', 'Menghapus akun'),
(733, 'admin', '2015-10-15 17:10:25', 'mengakses data user'),
(734, 'admin', '2015-10-15 17:10:25', 'mengakses data user'),
(735, 'admin', '2015-10-15 17:10:41', 'pindah edit Create User Baru'),
(736, 'admin', '2015-10-15 17:10:41', 'mengakses data user'),
(737, 'admin', '2015-10-15 17:20:06', ' membuat akun baru'),
(738, 'admin', '2015-10-15 17:20:07', 'mengakses data user'),
(739, 'admin', '2015-10-15 17:20:37', 'mengakses data user level 4'),
(740, 'admin', '2015-10-15 17:20:40', 'pindah edit role user'),
(741, 'admin', '2015-10-15 17:20:40', 'mengakses data user level 4'),
(742, 'admin', '2015-10-15 17:20:41', 'mengakses data role unit'),
(743, 'admin', '2015-10-15 17:20:47', ' mendapatkan data unit role'),
(744, 'admin', '2015-10-15 17:20:47', 'mengakses data role unit'),
(745, 'admin', '2015-10-15 17:20:47', 'mengakses data user level 4'),
(746, 'admin', '2015-10-15 17:20:56', 'mengakses data user'),
(747, 'admin', '2015-10-15 17:21:08', 'session logout'),
(748, 'admin', '2015-10-16 00:24:11', 'simpan data user'),
(749, 'admin', '2015-10-16 00:24:11', 'Session Login'),
(750, 'admin', '2015-10-16 00:24:17', 'mengakses data user'),
(751, 'admin', '2015-10-16 00:24:30', 'mengakses data user level 1'),
(752, 'admin', '2015-10-16 00:24:38', 'mengakses data user level 4'),
(753, 'admin', '2015-10-16 00:24:45', 'mengakses data user'),
(754, 'admin', '2015-10-19 02:01:32', 'simpan data user'),
(755, 'admin', '2015-10-19 02:01:32', 'Session Login'),
(756, 'admin', '2015-10-19 02:02:39', 'session logout'),
(757, 'admin', '2015-10-19 02:06:54', 'simpan data user'),
(758, 'admin', '2015-10-19 02:06:54', 'Session Login'),
(759, 'admin', '2015-10-19 02:08:49', 'simpan data user'),
(760, 'admin', '2015-10-19 02:08:49', 'Session Login'),
(761, 'admin', '2015-10-19 02:17:36', 'mengakses data user'),
(762, 'admin', '2015-10-19 02:33:10', 'session logout'),
(763, 'admin', '2015-10-19 02:33:20', 'simpan data user'),
(764, 'admin', '2015-10-19 02:33:20', 'Session Login'),
(765, 'admin', '2015-10-19 02:33:33', 'mengakses data user'),
(766, 'admin', '2015-10-19 02:34:14', 'mengakses data user'),
(767, 'admin', '2015-10-19 02:54:40', 'mengakses data user'),
(768, 'admin', '2015-10-19 02:54:47', 'mengakses data user'),
(769, 'direktur', '2015-10-19 02:55:17', 'simpan data user'),
(770, 'direktur', '2015-10-19 02:55:17', 'Session Login'),
(771, 'admin', '2015-10-19 14:56:44', 'simpan data user'),
(772, 'admin', '2015-10-19 14:56:44', 'Session Login'),
(773, 'direktur', '2015-10-19 22:56:34', 'simpan data user'),
(774, 'direktur', '2015-10-19 22:56:34', 'Session Login'),
(775, 'admin', '2015-10-19 23:12:00', 'simpan data user'),
(776, 'admin', '2015-10-19 23:12:00', 'Session Login'),
(777, 'admin', '2015-10-19 23:12:04', 'session logout'),
(778, 'direktur', '2015-10-19 23:12:11', 'simpan data user'),
(779, 'direktur', '2015-10-19 23:12:11', 'Session Login'),
(780, 'direktur', '2015-10-20 01:24:42', 'simpan data user'),
(781, 'direktur', '2015-10-20 01:24:42', 'Session Login'),
(782, 'admin', '2015-10-20 01:35:29', 'mengakses daftar nilai'),
(783, 'admin', '2015-10-20 01:35:29', 'mengakses poin penilaian pegawai'),
(784, 'direktur', '2015-10-20 01:39:05', 'simpan data user'),
(785, 'direktur', '2015-10-20 01:39:05', 'Session Login'),
(786, 'direktur', '2015-10-20 01:40:06', 'mengakses daftar nilai (evaluator)'),
(787, 'direktur', '2015-10-20 01:40:06', 'mengakses poin penilaian pegawai (evaluator)'),
(788, 'direktur', '2015-10-20 01:40:11', 'mengakses data pegawai (evaluator)'),
(789, 'direktur', '2015-10-20 01:40:15', 'mengakses data pegawai (evaluator)'),
(790, 'direktur', '2015-10-20 01:40:19', 'mengakses data pegawai (evaluator)'),
(791, 'direktur', '2015-10-20 01:40:25', 'session logout'),
(792, 'admin', '2015-10-20 01:42:14', 'mengakses data user'),
(793, 'admin', '2015-10-20 01:43:06', 'pindah edit Create User Baru'),
(794, 'admin', '2015-10-20 01:43:06', 'mengakses data user'),
(795, 'admin', '2015-10-20 01:43:37', ' membuat akun baru'),
(796, 'admin', '2015-10-20 01:43:38', 'mengakses data user'),
(797, 'mahendra', '2015-10-20 01:45:52', 'simpan data user'),
(798, 'mahendra', '2015-10-20 01:45:52', 'Session Login'),
(799, 'mahendra', '2015-10-20 01:46:18', 'mengakses masa kerja'),
(800, 'mahendra', '2015-10-20 01:46:40', 'mengakses data pegawai'),
(801, 'mahendra', '2015-10-20 01:48:14', 'mengakses level koordinasi'),
(802, 'mahendra', '2015-10-20 01:49:14', 'mengakses data kepegawaian'),
(803, 'mahendra', '2015-10-20 01:49:28', 'mengakses masa kerja'),
(804, 'mahendra', '2015-10-20 01:51:21', 'mengakses master IKIP'),
(805, 'mahendra', '2015-10-20 01:52:52', 'mengakses IKUKP'),
(806, 'mahendra', '2015-10-20 01:54:33', 'mengakses data penggajian'),
(807, 'mahendra', '2015-10-20 01:55:35', 'mengakses data perpajakan'),
(808, 'mahendra', '2015-10-20 01:56:34', 'mengakses daftar nilai');
INSERT INTO `log_book` (`id`, `username`, `time_log`, `activity`) VALUES
(809, 'mahendra', '2015-10-20 01:56:34', 'mengakses poin penilaian pegawai'),
(810, 'mahendra', '2015-10-20 01:56:54', 'mengakses akses gaji perbulan'),
(811, 'mahendra', '2015-10-20 01:56:59', 'mengakses daftar kepanitiaan'),
(812, 'mahendra', '2015-10-20 01:56:59', 'mengakses konfirmasi anggota panitia'),
(813, 'mahendra', '2015-10-20 01:58:23', ' masuk ke data kepanitiaan'),
(814, 'mahendra', '2015-10-20 01:58:23', 'mengakses daftar kepanitiaan'),
(815, 'mahendra', '2015-10-20 01:58:23', 'mengakses konfirmasi anggota panitia'),
(816, 'mahendra', '2015-10-20 01:59:42', 'mengakses data unit'),
(817, 'mahendra', '2015-10-20 02:00:07', 'session logout'),
(818, 'mahendra', '2015-10-20 02:00:07', 'mengakses data unit'),
(819, '', '2015-10-20 02:00:08', 'mengakses data unit'),
(820, 'mahendra', '2015-10-20 02:00:42', 'simpan data user'),
(821, 'mahendra', '2015-10-20 02:00:42', 'Session Login'),
(822, 'mahendra', '2015-10-20 02:00:45', 'mengakses data user'),
(823, 'mahendra', '2015-10-20 02:01:18', 'mengakses data user'),
(824, 'mahendra', '2015-10-20 02:02:04', ' mengedit data akun user'),
(825, 'mahendra', '2015-10-20 02:02:04', 'mengakses data user'),
(826, 'mahendra', '2015-10-20 02:02:04', 'mengakses data user'),
(827, 'mahendra', '2015-10-20 02:02:14', 'session logout'),
(828, 'mahendra', '2015-10-20 02:02:14', 'mengakses data user'),
(829, '', '2015-10-20 02:02:15', 'mengakses data user'),
(830, 'direktur', '2015-10-20 17:58:23', 'simpan data user'),
(831, 'direktur', '2015-10-20 17:58:23', 'Session Login'),
(832, 'admin', '2015-10-20 18:03:57', 'reset password user umum'),
(833, 'admin', '2015-10-20 18:03:57', 'mengakses data user'),
(834, 'admin', '2015-10-20 18:04:00', 'mengakses data user'),
(835, 'admin', '2015-10-20 18:04:11', 'mengakses data user'),
(836, 'admin', '2015-10-20 18:04:21', 'reset password user umum'),
(837, 'admin', '2015-10-20 18:04:21', 'mengakses data user'),
(838, 'admin', '2015-10-20 18:04:22', 'mengakses data user'),
(839, 'admin', '2015-10-20 18:04:36', 'mengakses data user'),
(840, 'direktur', '2015-10-20 18:04:42', 'session logout'),
(841, 'pengamat1', '2015-10-20 18:04:56', 'simpan data user'),
(842, 'pengamat1', '2015-10-20 18:04:56', 'Session Login'),
(843, 'pengamat1', '2015-10-20 18:05:21', 'session logout'),
(844, 'pengamat1', '2015-10-20 18:08:50', 'simpan data user'),
(845, 'pengamat1', '2015-10-20 18:08:50', 'Session Login'),
(846, 'pengamat1', '2015-10-20 18:12:59', 'session logout'),
(847, 'direktur', '2015-10-20 18:13:25', 'simpan data user'),
(848, 'direktur', '2015-10-20 18:13:25', 'Session Login'),
(849, 'direktur', '2015-10-20 18:15:15', 'session logout'),
(850, 'pengamat1', '2015-10-20 18:15:39', 'simpan data user'),
(851, 'pengamat1', '2015-10-20 18:15:39', 'Session Login'),
(852, 'pengamat1', '2015-10-20 18:15:52', 'session logout'),
(853, 'admin', '2015-10-20 18:16:15', 'mengakses data user'),
(854, 'admin', '2015-10-20 18:16:26', 'mengakses data user'),
(855, 'admin', '2015-10-20 18:16:41', 'mengakses data user'),
(856, 'admin', '2015-10-20 18:16:57', 'mengakses data user'),
(857, 'admin', '2015-10-20 18:17:15', 'mengakses data user'),
(858, 'admin', '2015-10-20 18:17:30', 'mengakses data user'),
(859, 'admin', '2015-10-21 02:20:01', 'simpan data user'),
(860, 'admin', '2015-10-21 02:20:01', 'Session Login'),
(861, 'admin', '2015-10-21 02:41:48', 'session logout'),
(862, 'hartoyo', '2015-10-21 02:42:06', 'simpan data user'),
(863, 'hartoyo', '2015-10-21 02:42:06', 'Session Login'),
(864, 'hartoyo', '2015-10-21 02:42:12', 'session logout'),
(865, 'admin', '2015-10-21 10:21:41', 'simpan data user'),
(866, 'admin', '2015-10-21 10:21:41', 'Session Login'),
(867, 'admin', '2015-10-21 10:21:45', 'session logout'),
(868, 'hartoyo', '2015-10-21 18:44:05', 'simpan data user'),
(869, 'hartoyo', '2015-10-21 18:44:05', 'Session Login'),
(870, 'hartoyo', '2015-10-21 18:50:47', 'mengakses list user dan Admin'),
(871, 'hartoyo', '2015-10-21 18:51:23', 'mengakses list user dan Admin'),
(872, 'admin', '2015-10-21 18:53:36', 'simpan data user'),
(873, 'admin', '2015-10-21 18:53:36', 'Session Login'),
(874, 'admin', '2015-10-21 18:53:39', 'mengakses data user'),
(875, 'mahendra', '2015-10-21 21:06:40', 'simpan data user'),
(876, 'mahendra', '2015-10-21 21:06:40', 'Session Login'),
(877, 'mahendra', '2015-10-21 21:07:12', 'mengakses data pegawai'),
(878, 'hartoyo', '2015-10-22 13:36:07', 'mengakses list user dan Admin'),
(879, 'hartoyo', '2015-10-22 13:43:41', 'mengakses list user dan Admin'),
(880, 'hartoyo', '2015-10-22 13:43:50', 'session logout'),
(881, 'pengamat1', '2015-10-22 13:43:58', 'simpan data user'),
(882, 'pengamat1', '2015-10-22 13:43:58', 'Session Login'),
(883, 'pengamat1', '2015-10-22 13:44:02', 'mengakses list user dan Admin'),
(884, 'pengamat1', '2015-10-22 13:44:30', 'session logout'),
(885, 'pengamat1', '2015-10-22 13:59:53', 'simpan data user'),
(886, 'pengamat1', '2015-10-22 13:59:53', 'Session Login'),
(887, 'pengamat1', '2015-10-22 14:00:34', 'mengakses list user dan Admin'),
(888, 'admin', '2015-10-22 15:08:52', 'mengakses data user'),
(889, 'admin', '2015-10-22 15:08:56', 'mengakses data user level 2'),
(890, 'admin', '2015-10-22 15:08:59', 'pindah edit role user'),
(891, 'admin', '2015-10-22 15:08:59', 'mengakses data user level 2'),
(892, 'admin', '2015-10-22 15:08:59', 'mengakses data role unit'),
(893, 'admin', '2015-10-22 15:11:59', 'mengakses data user level 3'),
(894, 'admin', '2015-10-22 15:12:04', 'pindah edit role user'),
(895, 'admin', '2015-10-22 15:12:04', 'mengakses data user level 3'),
(896, 'admin', '2015-10-22 15:12:05', 'mengakses data role unit'),
(897, 'admin', '2015-10-22 15:12:07', ' mendapatkan data unit role'),
(898, 'admin', '2015-10-22 15:12:07', 'mengakses data role unit'),
(899, 'admin', '2015-10-22 15:12:07', 'mengakses data user level 3'),
(900, 'admin', '2015-10-22 15:12:10', 'pindah edit role user'),
(901, 'admin', '2015-10-22 15:12:10', 'mengakses data user level 3'),
(902, 'admin', '2015-10-22 15:12:10', 'mengakses data role unit'),
(903, 'admin', '2015-10-22 15:12:12', ' mendapatkan data unit role'),
(904, 'admin', '2015-10-22 15:12:12', 'mengakses data role unit'),
(905, 'admin', '2015-10-22 15:12:13', 'mengakses data user level 3'),
(906, 'admin', '2015-10-22 15:14:47', 'pindah edit role user'),
(907, 'admin', '2015-10-22 15:14:47', 'mengakses data user level 3'),
(908, 'admin', '2015-10-22 15:14:47', 'mengakses data role unit'),
(909, 'admin', '2015-10-24 06:22:55', 'simpan data user'),
(910, 'admin', '2015-10-24 06:22:55', 'Session Login'),
(911, 'admin', '2015-10-24 06:23:07', 'mengakses data user'),
(912, 'admin', '2015-10-24 06:23:19', 'mengakses data user'),
(913, 'admin', '2015-10-24 06:23:21', 'mengakses monitoring'),
(914, 'admin', '2015-10-24 06:23:48', 'mengakses data user'),
(915, 'admin', '2015-10-27 15:13:58', 'simpan data user'),
(916, 'admin', '2015-10-27 15:13:58', 'Session Login'),
(917, 'admin', '2015-10-27 15:14:06', 'mengakses data user'),
(918, 'admin', '2015-10-27 15:14:20', 'mengakses data user level 4'),
(919, 'admin', '2015-10-27 15:14:28', 'pindah edit role user'),
(920, 'admin', '2015-10-27 15:14:28', 'mengakses data user level 4'),
(921, 'admin', '2015-10-27 15:14:28', 'mengakses data role unit'),
(922, 'admin', '2015-10-27 15:15:03', 'mengakses data user'),
(923, 'admin', '2015-10-27 15:15:08', 'mengakses data user level 4'),
(924, 'admin', '2015-10-27 15:16:11', 'pindah edit role user'),
(925, 'admin', '2015-10-27 15:16:11', 'mengakses data user level 4'),
(926, 'admin', '2015-10-27 15:16:11', 'mengakses data role unit'),
(927, 'admin', '2015-10-27 15:16:17', 'mengakses data user level 4'),
(928, 'admin', '2015-10-27 23:36:03', 'simpan data user'),
(929, 'admin', '2015-10-27 23:36:03', 'Session Login'),
(930, 'admin', '2015-10-27 23:36:10', 'mengakses data user'),
(931, 'admin', '2015-10-27 23:36:23', 'Menghapus akun'),
(932, 'admin', '2015-10-27 23:36:23', 'mengakses data user'),
(933, 'admin', '2015-10-27 23:36:24', 'mengakses data user'),
(934, 'admin', '2015-10-27 23:36:36', 'Menghapus akun'),
(935, 'admin', '2015-10-27 23:36:36', 'mengakses data user'),
(936, 'admin', '2015-10-27 23:36:36', 'mengakses data user'),
(937, 'admin', '2015-10-27 23:36:44', 'Menghapus akun'),
(938, 'admin', '2015-10-27 23:36:44', 'mengakses data user'),
(939, 'admin', '2015-10-27 23:36:45', 'mengakses data user'),
(940, 'admin', '2015-10-27 23:36:54', 'Menghapus akun'),
(941, 'admin', '2015-10-27 23:36:54', 'mengakses data user'),
(942, 'admin', '2015-10-27 23:36:55', 'mengakses data user'),
(943, 'admin', '2015-10-27 23:37:07', 'Menghapus akun'),
(944, 'admin', '2015-10-27 23:37:07', 'mengakses data user'),
(945, 'admin', '2015-10-27 23:37:07', 'mengakses data user'),
(946, 'admin', '2015-10-27 23:37:15', 'Menghapus akun'),
(947, 'admin', '2015-10-27 23:37:15', 'mengakses data user'),
(948, 'admin', '2015-10-27 23:37:15', 'mengakses data user'),
(949, 'admin', '2015-10-27 23:37:24', 'Menghapus akun'),
(950, 'admin', '2015-10-27 23:37:24', 'mengakses data user'),
(951, 'admin', '2015-10-27 23:37:24', 'mengakses data user'),
(952, 'admin', '2015-10-27 23:37:32', 'Menghapus akun'),
(953, 'admin', '2015-10-27 23:37:32', 'mengakses data user'),
(954, 'admin', '2015-10-27 23:37:32', 'mengakses data user'),
(955, 'admin', '2015-10-27 23:37:40', 'Menghapus akun'),
(956, 'admin', '2015-10-27 23:37:40', 'mengakses data user'),
(957, 'admin', '2015-10-27 23:37:40', 'mengakses data user'),
(958, 'admin', '2015-10-27 23:37:48', 'Menghapus akun'),
(959, 'admin', '2015-10-27 23:37:48', 'mengakses data user'),
(960, 'admin', '2015-10-27 23:37:48', 'mengakses data user'),
(961, 'admin', '2015-10-27 23:37:53', 'Menghapus akun'),
(962, 'admin', '2015-10-27 23:37:53', 'mengakses data user'),
(963, 'admin', '2015-10-27 23:37:54', 'mengakses data user'),
(964, 'admin', '2015-10-27 23:37:58', 'Menghapus akun'),
(965, 'admin', '2015-10-27 23:37:58', 'mengakses data user'),
(966, 'admin', '2015-10-27 23:37:59', 'mengakses data user'),
(967, 'admin', '2015-10-27 23:38:06', 'Menghapus akun'),
(968, 'admin', '2015-10-27 23:38:06', 'mengakses data user'),
(969, 'admin', '2015-10-27 23:38:06', 'mengakses data user'),
(970, 'admin', '2015-10-27 23:38:10', 'Menghapus akun'),
(971, 'admin', '2015-10-27 23:38:10', 'mengakses data user'),
(972, 'admin', '2015-10-27 23:38:10', 'mengakses data user'),
(973, 'admin', '2015-10-27 23:38:16', 'Menghapus akun'),
(974, 'admin', '2015-10-27 23:38:16', 'mengakses data user'),
(975, 'admin', '2015-10-27 23:38:17', 'mengakses data user'),
(976, 'admin', '2015-10-29 00:40:46', 'simpan data user'),
(977, 'admin', '2015-10-29 00:40:46', 'Session Login'),
(978, 'admin', '2015-10-29 00:40:58', 'mengakses data user'),
(979, 'admin', '2015-10-29 00:41:02', 'mengakses data pegawai'),
(980, 'admin', '2015-10-29 00:42:20', 'tambah data pegawai'),
(981, 'admin', '2015-10-29 00:42:21', 'mengakses data pegawai'),
(982, 'admin', '2015-10-29 00:43:03', 'tambah data pegawai'),
(983, 'admin', '2015-10-29 00:43:04', 'mengakses data pegawai'),
(984, 'admin', '2015-10-29 00:43:13', ' pindah edit data pegawai'),
(985, 'admin', '2015-10-29 00:43:13', 'mengakses data pegawai'),
(986, 'admin', '2015-10-29 00:43:22', ' mengedit data pegawai'),
(987, 'admin', '2015-10-29 00:43:22', 'mengakses data pegawai'),
(988, 'admin', '2015-10-29 00:44:15', 'tambah data pegawai'),
(989, 'admin', '2015-10-29 00:44:16', 'mengakses data pegawai'),
(990, 'admin', '2015-10-29 00:50:20', 'tambah data pegawai'),
(991, 'admin', '2015-10-29 00:50:21', 'mengakses data pegawai'),
(992, 'admin', '2015-10-29 00:51:11', 'tambah data pegawai'),
(993, 'admin', '2015-10-29 00:51:11', 'mengakses data pegawai'),
(994, 'admin', '2015-10-29 00:51:58', 'tambah data pegawai'),
(995, 'admin', '2015-10-29 00:51:59', 'mengakses data pegawai'),
(996, 'admin', '2015-10-29 00:52:56', 'tambah data pegawai'),
(997, 'admin', '2015-10-29 00:52:57', 'mengakses data pegawai'),
(998, 'admin', '2015-10-29 00:53:55', 'tambah data pegawai'),
(999, 'admin', '2015-10-29 00:53:56', 'mengakses data pegawai'),
(1000, 'admin', '2015-10-29 00:54:25', 'tambah data pegawai'),
(1001, 'admin', '2015-10-29 00:54:26', 'mengakses data pegawai'),
(1002, 'admin', '2015-10-29 01:30:54', 'tambah data pegawai'),
(1003, 'admin', '2015-10-29 01:30:55', 'mengakses data pegawai'),
(1004, 'admin', '2015-10-29 02:17:28', 'tambah data pegawai'),
(1005, 'admin', '2015-10-29 02:17:28', 'mengakses data pegawai'),
(1006, 'admin', '2015-10-29 02:17:59', 'tambah data pegawai'),
(1007, 'admin', '2015-10-29 02:18:00', 'mengakses data pegawai'),
(1008, 'mahendra', '2015-11-01 21:22:28', 'simpan data user'),
(1009, 'mahendra', '2015-11-01 21:22:28', 'Session Login'),
(1010, 'mahendra', '2015-11-01 21:22:42', 'mengakses data penggajian'),
(1011, 'mahendra', '2015-11-01 21:23:11', 'mengakses level koordinasi'),
(1012, 'mahendra', '2015-11-01 21:24:03', 'mengakses data satuan kerja'),
(1013, 'mahendra', '2015-11-01 21:24:18', 'session logout'),
(1014, 'mahendra', '2015-11-01 21:24:18', 'mengakses data satuan kerja'),
(1015, '', '2015-11-01 21:24:19', 'mengakses data satuan kerja'),
(1016, 'admin', '2015-11-01 23:32:49', 'simpan data user'),
(1017, 'admin', '2015-11-01 23:32:49', 'Session Login'),
(1018, 'admin', '2015-11-01 23:33:09', 'mengakses data user'),
(1019, 'admin', '2015-11-01 23:34:14', 'mengakses data user level 1'),
(1020, 'admin', '2015-11-01 23:34:18', 'mengakses data user'),
(1021, 'admin', '2015-11-01 23:34:35', 'pindah edit Create User Baru'),
(1022, 'admin', '2015-11-01 23:34:35', 'mengakses data user'),
(1023, 'admin', '2015-11-01 23:35:07', ' membuat akun baru'),
(1024, 'admin', '2015-11-01 23:35:08', 'mengakses data user'),
(1025, 'admin', '2015-11-01 23:35:56', 'mengakses data user level 1'),
(1026, 'admin', '2015-11-01 23:38:22', 'mengakses data user'),
(1027, 'admin', '2015-11-01 23:39:06', 'pindah edit Create User Baru'),
(1028, 'admin', '2015-11-01 23:39:06', 'mengakses data user'),
(1029, 'admin', '2015-11-01 23:40:06', ' membuat akun baru'),
(1030, 'admin', '2015-11-01 23:40:08', 'mengakses data user'),
(1031, 'admin', '2015-11-01 23:40:49', 'pindah edit Create User Baru'),
(1032, 'admin', '2015-11-01 23:40:49', 'mengakses data user'),
(1033, 'admin', '2015-11-01 23:41:26', ' membuat akun baru'),
(1034, 'admin', '2015-11-01 23:41:30', 'mengakses data user'),
(1035, 'admin', '2015-11-01 23:42:35', 'pindah edit Create User Baru'),
(1036, 'admin', '2015-11-01 23:42:35', 'mengakses data user'),
(1037, 'admin', '2015-11-01 23:43:01', ' membuat akun baru'),
(1038, 'admin', '2015-11-01 23:43:04', 'mengakses data user'),
(1039, '', '2015-11-02 01:12:57', 'mengakses data user'),
(1040, 'admin', '2015-11-02 01:13:03', 'simpan data user'),
(1041, 'admin', '2015-11-02 01:13:03', 'Session Login'),
(1042, 'admin', '2015-11-02 01:13:05', 'mengakses data user'),
(1043, 'direktur', '2015-11-02 01:13:14', 'simpan data user'),
(1044, 'direktur', '2015-11-02 01:13:14', 'Session Login'),
(1045, 'direktur', '2015-11-02 01:13:17', 'mengakses data pegawai ternilai'),
(1046, 'direktur', '2015-11-02 01:17:09', 'mengakses data pegawai ternilai'),
(1047, 'direktur', '2015-11-02 01:17:17', 'mengakses data pegawai ternilai'),
(1048, 'direktur', '2015-11-02 01:18:12', 'mengakses data pegawai ternilai'),
(1049, 'direktur', '2015-11-02 01:20:06', 'mengakses data pegawai ternilai'),
(1050, 'direktur', '2015-11-02 01:20:40', 'mengakses data pegawai ternilai'),
(1051, 'admin', '2015-11-06 05:39:57', 'simpan data user'),
(1052, 'admin', '2015-11-06 05:39:57', 'Session Login'),
(1053, 'admin', '2015-11-06 05:40:16', 'mengakses data user'),
(1054, 'admin', '2015-11-06 05:40:47', 'mengakses data user level 2'),
(1055, 'admin', '2015-11-06 05:40:56', 'pindah edit role user'),
(1056, 'admin', '2015-11-06 05:40:56', 'mengakses data user level 2'),
(1057, 'admin', '2015-11-06 05:40:57', 'mengakses data role unit'),
(1058, 'admin', '2015-11-06 05:41:06', 'mengakses data user'),
(1059, 'admin', '2015-11-06 05:41:25', 'mengakses data user level 4'),
(1060, 'admin', '2015-11-06 05:41:36', 'mengakses data user level 4'),
(1061, 'admin', '2015-11-06 05:44:34', 'simpan data user'),
(1062, 'admin', '2015-11-06 05:44:34', 'Session Login'),
(1063, 'admin', '2015-11-06 05:45:12', 'mengakses data user'),
(1064, 'admin', '2015-11-06 05:45:33', 'mengakses data user level 4'),
(1065, 'admin', '2015-11-06 05:46:44', 'mengakses data user'),
(1066, 'admin', '2015-11-06 05:47:11', 'pindah edit Create User Baru'),
(1067, 'admin', '2015-11-06 05:47:11', 'mengakses data user'),
(1068, 'admin', '2015-11-06 05:48:02', ' membuat akun baru'),
(1069, 'admin', '2015-11-06 05:48:02', 'mengakses data user'),
(1070, 'admin', '2015-11-06 05:54:49', 'simpan data user'),
(1071, 'admin', '2015-11-06 05:54:49', 'Session Login'),
(1072, 'admin', '2015-11-06 05:54:55', 'mengakses data user'),
(1073, 'admin', '2015-11-06 05:55:30', 'mengakses data user level 4'),
(1074, 'admin', '2015-11-06 05:55:40', 'pindah edit role user'),
(1075, 'admin', '2015-11-06 05:55:40', 'mengakses data user level 4'),
(1076, 'admin', '2015-11-06 05:55:41', 'mengakses data role unit'),
(1077, 'admin', '2015-11-06 05:55:56', ' mendapatkan data unit role'),
(1078, 'admin', '2015-11-06 05:55:56', 'mengakses data role unit'),
(1079, 'admin', '2015-11-06 05:55:57', 'mengakses data user level 4'),
(1080, 'admin', '2015-11-06 05:56:10', 'pindah edit role user'),
(1081, 'admin', '2015-11-06 05:56:10', 'mengakses data user level 4'),
(1082, 'admin', '2015-11-06 05:56:11', 'mengakses data role unit'),
(1083, 'admin', '2015-11-06 05:56:53', ' mendapatkan data unit role'),
(1084, 'admin', '2015-11-06 05:56:53', 'mengakses data role unit'),
(1085, 'admin', '2015-11-06 05:56:54', 'mengakses data user level 4'),
(1086, 'admin', '2015-11-06 05:57:08', 'pindah edit role user'),
(1087, 'admin', '2015-11-06 05:57:08', 'mengakses data user level 4'),
(1088, 'admin', '2015-11-06 05:57:09', 'mengakses data role unit'),
(1089, '', '2015-11-06 08:28:13', 'mengakses data user level 4'),
(1090, '', '2015-11-06 08:37:46', 'mengakses data user'),
(1091, '', '2015-11-06 19:49:35', 'mengakses data user level 4'),
(1092, '', '2015-11-06 20:35:29', 'mengakses data user'),
(1093, 'admin', '2015-11-09 13:38:18', 'simpan data user'),
(1094, 'admin', '2015-11-09 13:38:18', 'Session Login'),
(1095, 'admin', '2015-11-09 13:38:38', 'mengakses data user'),
(1096, 'admin', '2015-11-09 13:39:11', 'Menghapus akun'),
(1097, 'admin', '2015-11-09 13:39:11', 'mengakses data user'),
(1098, 'admin', '2015-11-09 13:39:11', 'mengakses data user'),
(1099, 'admin', '2015-11-09 13:39:18', 'pindah edit Create User Baru'),
(1100, 'admin', '2015-11-09 13:39:18', 'mengakses data user'),
(1101, 'admin', '2015-11-09 13:39:38', 'mengakses data user'),
(1102, 'admin', '2015-11-09 13:39:42', 'pindah edit Create User Baru'),
(1103, 'admin', '2015-11-09 13:39:42', 'mengakses data user'),
(1104, 'admin', '2015-11-09 13:39:46', 'mengakses data user'),
(1105, 'admin', '2015-11-09 13:39:52', 'pindah edit Create User Baru'),
(1106, 'admin', '2015-11-09 13:39:52', 'mengakses data user'),
(1107, 'admin', '2015-11-09 13:40:05', ' membuat akun baru'),
(1108, 'admin', '2015-11-09 13:40:05', 'mengakses data user'),
(1109, 'admin', '2015-11-09 13:40:11', 'pindah edit Create User Baru'),
(1110, 'admin', '2015-11-09 13:40:11', 'mengakses data user'),
(1111, 'admin', '2015-11-09 13:40:19', ' membuat akun baru'),
(1112, 'admin', '2015-11-09 13:40:20', 'mengakses data user'),
(1113, 'admin', '2015-11-09 13:40:26', 'pindah edit Create User Baru'),
(1114, 'admin', '2015-11-09 13:40:26', 'mengakses data user'),
(1115, 'admin', '2015-11-09 13:40:35', ' membuat akun baru'),
(1116, 'admin', '2015-11-09 13:40:36', 'mengakses data user'),
(1117, 'admin', '2015-11-09 13:40:42', 'pindah edit Create User Baru'),
(1118, 'admin', '2015-11-09 13:40:42', 'mengakses data user'),
(1119, 'admin', '2015-11-09 13:40:53', ' membuat akun baru'),
(1120, 'admin', '2015-11-09 13:40:53', 'mengakses data user'),
(1121, 'admin', '2015-11-09 13:40:59', 'pindah edit Create User Baru'),
(1122, 'admin', '2015-11-09 13:40:59', 'mengakses data user'),
(1123, 'admin', '2015-11-09 13:41:16', ' membuat akun baru'),
(1124, 'admin', '2015-11-09 13:41:16', 'mengakses data user'),
(1125, 'admin', '2015-11-09 13:41:24', 'pindah edit Create User Baru'),
(1126, 'admin', '2015-11-09 13:41:24', 'mengakses data user'),
(1127, 'admin', '2015-11-09 13:41:34', ' membuat akun baru'),
(1128, 'admin', '2015-11-09 13:41:34', 'mengakses data user'),
(1129, 'admin', '2015-11-09 13:41:42', 'pindah edit Create User Baru'),
(1130, 'admin', '2015-11-09 13:41:42', 'mengakses data user'),
(1131, 'admin', '2015-11-09 13:41:52', ' membuat akun baru'),
(1132, 'admin', '2015-11-09 13:41:52', 'mengakses data user'),
(1133, 'admin', '2015-11-09 13:42:00', 'pindah edit Create User Baru'),
(1134, 'admin', '2015-11-09 13:42:00', 'mengakses data user'),
(1135, 'admin', '2015-11-09 13:42:13', ' membuat akun baru'),
(1136, 'admin', '2015-11-09 13:42:13', 'mengakses data user'),
(1137, 'admin', '2015-11-09 13:42:20', 'mengakses data user'),
(1138, 'admin', '2015-11-09 13:42:25', 'mengakses data user level 1'),
(1139, 'admin', '2015-11-09 13:42:30', 'mengakses data user level 2'),
(1140, 'admin', '2015-11-09 13:42:34', 'pindah edit role user'),
(1141, 'admin', '2015-11-09 13:42:34', 'mengakses data user level 2'),
(1142, 'admin', '2015-11-09 13:42:34', 'mengakses data role unit'),
(1143, 'admin', '2015-11-09 13:42:38', ' mendapatkan data unit role'),
(1144, 'admin', '2015-11-09 13:42:38', 'mengakses data role unit'),
(1145, 'admin', '2015-11-09 13:42:39', 'mengakses data user level 2'),
(1146, 'admin', '2015-11-09 13:42:43', 'pindah edit role user'),
(1147, 'admin', '2015-11-09 13:42:43', 'mengakses data user level 2'),
(1148, 'admin', '2015-11-09 13:42:43', 'mengakses data role unit'),
(1149, 'admin', '2015-11-09 13:42:45', ' mendapatkan data unit role'),
(1150, 'admin', '2015-11-09 13:42:45', 'mengakses data role unit'),
(1151, 'admin', '2015-11-09 13:42:45', 'mengakses data user level 2'),
(1152, 'admin', '2015-11-09 13:42:47', 'pindah edit role user'),
(1153, 'admin', '2015-11-09 13:42:47', 'mengakses data user level 2'),
(1154, 'admin', '2015-11-09 13:42:47', 'mengakses data role unit'),
(1155, 'admin', '2015-11-09 13:42:51', ' mendapatkan data unit role'),
(1156, 'admin', '2015-11-09 13:42:51', 'mengakses data role unit'),
(1157, 'admin', '2015-11-09 13:42:51', 'mengakses data user level 2'),
(1158, 'admin', '2015-11-09 13:42:55', 'mengakses data user level 3'),
(1159, 'admin', '2015-11-09 13:42:57', 'pindah edit role user'),
(1160, 'admin', '2015-11-09 13:42:57', 'mengakses data user level 3'),
(1161, 'admin', '2015-11-09 13:42:57', 'mengakses data role unit'),
(1162, 'admin', '2015-11-09 13:43:00', ' mendapatkan data unit role'),
(1163, 'admin', '2015-11-09 13:43:00', 'mengakses data role unit'),
(1164, 'admin', '2015-11-09 13:43:00', 'mengakses data user level 3'),
(1165, 'admin', '2015-11-09 13:43:04', 'pindah edit role user'),
(1166, 'admin', '2015-11-09 13:43:04', 'mengakses data user level 3'),
(1167, 'admin', '2015-11-09 13:43:04', 'mengakses data role unit'),
(1168, 'admin', '2015-11-09 13:43:06', ' mendapatkan data unit role'),
(1169, 'admin', '2015-11-09 13:43:06', 'mengakses data role unit'),
(1170, 'admin', '2015-11-09 13:43:06', 'mengakses data user level 3'),
(1171, 'admin', '2015-11-09 13:43:08', 'pindah edit role user'),
(1172, 'admin', '2015-11-09 13:43:08', 'mengakses data user level 3'),
(1173, 'admin', '2015-11-09 13:43:09', 'mengakses data role unit'),
(1174, 'admin', '2015-11-09 13:43:11', ' mendapatkan data unit role'),
(1175, 'admin', '2015-11-09 13:43:11', 'mengakses data role unit'),
(1176, 'admin', '2015-11-09 13:43:11', 'mengakses data user level 3');

-- --------------------------------------------------------

--
-- Table structure for table `master_gaji`
--

CREATE TABLE IF NOT EXISTS `master_gaji` (
  `no` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bagian` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `bersih` int(11) NOT NULL,
  `ttd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_ikip`
--

CREATE TABLE IF NOT EXISTS `master_ikip` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL,
  `indikator` longtext NOT NULL,
  `ci` varchar(11) NOT NULL,
  `target_a` varchar(11) NOT NULL,
  `target_b` varchar(11) NOT NULL,
  `nilai` varchar(11) NOT NULL,
  `bobot` varchar(11) NOT NULL,
  `sum` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_ikip`
--

INSERT INTO `master_ikip` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
(1, 'DISIPLIN KERJA', 'PRESENSI/KEHADIRAN - Bukti print Handkey (hari)', '', '', '', '', '', ''),
(2, 'DISIPLIN KERJA', 'KETERLAMBATAN MASUK KERJA (menit per bulan)', '', '', '', '', '', ''),
(3, 'DISIPLIN KERJA', 'PULANG AWAL SEBELUM WAKTU KERJA SELESAI (menit per bulan)', '', '', '', '', '', ''),
(4, 'PERILAKU KERJA', 'TINGKAT KEPEDULIAN PEGAWAI INI PADA PIHAK LAIN* YANG DILAYANI', '', '', '', '', '', ''),
(5, 'PERILAKU KERJA', 'CARA BERKOMUNIKASI PEGAWAI INI DENGAN PIHAK LAIN', '', '', '', '', '', ''),
(6, 'PERILAKU KERJA', 'KEMAMPUAN BEKERJASAMA DALAM BEKERJA DENGAN PIHAK LAIN', '', '', '', '', '', ''),
(7, 'PERILAKU KERJA', 'TINGKAT PENGETAHUAN AKAN PEKERJAAN DARI PEGAWAI INI', '', '', '', '', '', ''),
(8, 'PERILAKU KERJA', 'TINGKAT KETELITIAN PEGAWAI INI DALAM MENYELESAIKAN PEKERJAAN ', '', '', '', '', '', ''),
(9, 'PERILAKU KERJA', 'MOTIVASI/ SEMANGAT DALAM BEKERJA YANG DITUNJUKKAN OLEH PEGAWAI INI', '', '', '', '', '', ''),
(10, 'PERILAKU KERJA', 'KECEPATAN TANGGAP (RESPONSE TIME) PEGAWAI INI DALAM MENYELESAIKAN PEKERJAANNYA', '', '', '', '', '', ''),
(11, 'PERILAKU KERJA', 'TINGKAT LOYALITAS PADA KEPENTINGAN RUMAH SAKIT YANG DITUNJUKKAN OLEH PEGAWAI INI', '', '', '', '', '', ''),
(12, 'PERILAKU KERJA', 'KEMAMPUAN PEGAWAI INI DALAM MENJAGA KEBERSIHAN dan KERAPIAN LINGKUNGAN  KERJA', '', '', '', '', '', ''),
(13, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'PEGAWAI INI DAPAT DIKATAKAN SEBAGAI PEGAWAI PEMBELAJAR (ORANG YANG SELALU MAU BELAJAR UNTUK PERBAIKAN KUALITAS DIRI)', '', '', '', '', '', ''),
(14, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'TINGKAT KETAATAN MENGGUNAKAN SERAGAM KERJA SESUAI ATURAN', '', '', '', '', '', ''),
(15, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'TINGKAT KEIKUTSERTAAN DALAM RAPAT KOORDINASI SATKER', '', '', '', '', '', ''),
(16, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'JUMLAH KOMPLAIN TERTULIS DAN ATAU LISAN YANG DITERIMA OLEH PEGAWAI INI DARI PIHAK LAIN*', '', '', '', '', '', ''),
(17, 'PERILAKU KERJA', 'KEMAMPUAN PEGAWAI INI DALAM MEMBERIKAN USULAN/ MASUKAN YANG POSITIF TERKAIT DENGAN PEKERJAANYA', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_ikukp`
--

CREATE TABLE IF NOT EXISTS `master_ikukp` (
  `id` int(11) NOT NULL,
  `kategori` text NOT NULL,
  `indikator` longtext NOT NULL,
  `ci` varchar(11) NOT NULL,
  `target_a` varchar(11) NOT NULL,
  `target_b` varchar(11) NOT NULL,
  `nilai` varchar(11) NOT NULL,
  `bobot` varchar(11) NOT NULL,
  `sum` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_ikukp`
--

INSERT INTO `master_ikukp` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
(1, 'UMUM', 'UNIT KERJA PEGAWAI INI DAPAT MENYELESAIKAN PEKERJAAN SECARA TEPAT WAKTU (ON-TIME)', '', '', '', '', '', ''),
(2, 'UMUM', 'UNIT KERJA PEGAWAI INI MENUNJUKKAN SEMANGAT KERJA YANG TINGGI', '', '', '', '', '', ''),
(3, 'UMUM', 'DALAM BEKERJA, ANGGOTA TIM DARI UNIT KERJA PEGAWAI INI MENUNJUKKAN KERJA SAMA YANG BAIK', '', '', '', '', '', ''),
(4, 'UMUM', 'UNIT KERJA PEGAWAI INI SERING KALI MENGGUNAKAN CARA-CARA YANG INOVATIF DALAM BEKERJA TANPA MELANGGAR PERATURAN YANG ADA ', '', '', '', '', '', ''),
(5, 'UMUM', 'UNIT KERJA PEGAWAI INI DAPAT BEKERJA DENGAN CEPAT', '', '', '', '', '', ''),
(6, 'UMUM', 'UNIT KERJA PEGAWAI INI BEKERJA DENGAN TELITI', '', '', '', '', '', ''),
(7, 'UMUM', 'UNIT KERJA PEGAWAI INI MEMILIKI ESPRIT DE CORPS/ JIWA KORSA YANG TINGGI', '', '', '', '', '', ''),
(8, 'UMUM', 'UNIT KERJA PEGAWAI INI MEMILIKI KEPEDULIAN TINGGI PADA KEPENTINGAN RUMAH SAKIT', '', '', '', '', '', ''),
(9, 'UMUM', 'UNIT KERJA PEGAWAI INI MENJAGA KEBERSIHAN dan KERAPIAN TEMPAT KERJA ', '', '', '', '', '', ''),
(10, 'UMUM', 'JUMLAH KOMPLAIN TERTULIS DAN ATAU LISAN YANG DITERIMA OLEH UNIT KERJA PEGAWAI INI DARI PIHAK LAIN', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_nilai`
--

CREATE TABLE IF NOT EXISTS `master_nilai` (
  `id` int(11) NOT NULL,
  `id_pegawai` varchar(11) NOT NULL,
  `masa_kerja` varchar(11) NOT NULL,
  `gaji_pokok` varchar(11) NOT NULL,
  `golongan` varchar(11) NOT NULL,
  `basic_index` varchar(11) NOT NULL,
  `pendidikan` varchar(11) NOT NULL,
  `sertifikasi` varchar(11) NOT NULL,
  `capacity_index` varchar(11) NOT NULL,
  `level_resiko` varchar(11) NOT NULL,
  `risk_index` varchar(11) NOT NULL,
  `level_emergency` varchar(11) NOT NULL,
  `emergency_index` varchar(11) NOT NULL,
  `struktural` varchar(11) NOT NULL,
  `level_koordinasi` varchar(11) NOT NULL,
  `kepanitiaan` varchar(11) NOT NULL,
  `position_index` varchar(11) NOT NULL,
  `sum_ikip` varchar(11) NOT NULL,
  `ikip` varchar(11) NOT NULL,
  `sum_ikup` varchar(11) NOT NULL,
  `ikukp` varchar(11) NOT NULL,
  `performance_index` varchar(11) NOT NULL,
  `total_individu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrasi`
--

CREATE TABLE IF NOT EXISTS `migrasi` (
  `proses` int(11) NOT NULL,
  `files` int(11) NOT NULL,
  `error` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migrasi`
--

INSERT INTO `migrasi` (`proses`, `files`, `error`) VALUES
(49, 627, 2);

-- --------------------------------------------------------

--
-- Table structure for table `perangkat_rs`
--

CREATE TABLE IF NOT EXISTS `perangkat_rs` (
  `id` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `level_risk` text NOT NULL,
  `poin_risk` int(11) NOT NULL,
  `level_emergency` text NOT NULL,
  `poin_emergency` int(11) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perangkat_rs`
--

INSERT INTO `perangkat_rs` (`id`, `keterangan`, `level_risk`, `poin_risk`, `level_emergency`, `poin_emergency`, `change_date`) VALUES
(2, 'LAUNDRY', 'GRADE I', 2, 'LEVEL III', 6, '2015-07-22 02:46:48'),
(4, 'SANITASI', 'none', 0, 'none', 0, '2015-09-22 10:48:23'),
(5, 'ADMINISTRASI', 'GRADE I', 2, 'LEVEL I', 2, '2015-07-22 03:00:05'),
(6, 'REKAM MEDIS', 'GRADE II', 5, 'LEVEL I', 2, '2015-07-22 03:00:22'),
(7, 'RAWAT JALAN', 'GRADE II', 5, 'none', 0, '2015-07-22 03:00:42'),
(8, 'FISIOTERAPI', 'GRADE II', 5, 'LEVEL II', 4, '2015-07-22 03:01:04'),
(9, 'GIZI', 'GRADE II', 5, 'LEVEL II', 4, '2015-07-22 03:01:19'),
(10, 'RAWAT INAP', 'GRADE III', 7, 'LEVEL IV', 8, '2015-07-22 03:06:11'),
(11, 'LABORATORIUM', 'GRADE III', 7, 'LEVEL IV', 8, '2015-07-22 03:06:27'),
(13, 'KAMAR MAYAT', 'GRADE III', 7, 'LEVEL II', 4, '2015-07-22 03:07:29'),
(14, 'BDRS', 'GRADE III', 7, 'LEVEL III', 6, '2015-07-22 03:07:41'),
(15, 'FARMASI', 'GRADE III', 7, 'LEVEL III', 6, '2015-07-22 03:08:43'),
(16, 'RADIOLOGI', 'GRADE III', 7, 'LEVEL V', 10, '2015-07-22 03:08:54'),
(17, 'ICU', 'GRADE III', 7, 'LEVEL IV', 8, '2015-07-22 03:09:03'),
(18, 'SOPIR', 'GRADE III', 7, 'LEVEL II', 4, '2015-07-22 03:09:12'),
(19, 'SUPERVISI', 'GRADE III', 7, 'LEVEL I', 2, '2015-07-22 03:09:25'),
(20, 'IPSRS', 'GRADE III', 7, 'LEVEL II', 4, '2015-07-22 03:09:36'),
(21, 'OK', 'GRADE IV', 10, 'LEVEL V', 10, '2015-07-22 03:09:46'),
(22, 'IGD', 'GRADE IV', 10, 'LEVEL V', 10, '2015-07-22 03:10:00'),
(23, 'VK', 'GRADE IV', 10, 'LEVEL IV', 8, '2015-07-22 03:10:10'),
(24, 'OKSIGEN CENTRAL', 'none', 0, 'LEVEL I', 2, '2015-07-22 03:10:21'),
(25, 'RAJAL HIVTB', 'none', 0, 'LEVEL I', 2, '2015-07-22 03:10:36'),
(26, 'PORTER', 'none', 0, 'LEVEL II', 4, '2015-07-22 03:10:44'),
(27, 'ENDOSCOPY', 'none', 0, 'LEVEL II', 4, '2015-07-22 03:11:43'),
(28, 'ATEM', 'none', 0, 'LEVEL III', 6, '2015-07-22 03:11:52'),
(29, 'HD', 'none', 0, 'LEVEL III', 6, '2015-07-22 03:12:00'),
(30, 'CHEMOTERAPY', 'none', 0, 'LEVEL IV', 8, '2015-07-22 03:12:13'),
(31, 'GUDANG', 'GRADE I', 2, 'LEVEL I', 2, '2015-07-30 03:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `poin_emergensi`
--

CREATE TABLE IF NOT EXISTS `poin_emergensi` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_emer` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_ikik`
--

CREATE TABLE IF NOT EXISTS `poin_ikik` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_ikip`
--

CREATE TABLE IF NOT EXISTS `poin_ikip` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_kepegawaian`
--

CREATE TABLE IF NOT EXISTS `poin_kepegawaian` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_kpg` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_masa_kerja`
--

CREATE TABLE IF NOT EXISTS `poin_masa_kerja` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_mskr` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_pendidikan`
--

CREATE TABLE IF NOT EXISTS `poin_pendidikan` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_pend` int(2) NOT NULL,
  `poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_resiko`
--

CREATE TABLE IF NOT EXISTS `poin_resiko` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_res` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_sertifikasi`
--

CREATE TABLE IF NOT EXISTS `poin_sertifikasi` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_sert` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `poin_struktural`
--

CREATE TABLE IF NOT EXISTS `poin_struktural` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_struk` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `risk_index_c`
--

CREATE TABLE IF NOT EXISTS `risk_index_c` (
  `id` int(2) NOT NULL,
  `id_rsk` int(2) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `risk_index_c`
--

INSERT INTO `risk_index_c` (`id`, `id_rsk`, `keterangan`) VALUES
(1, 1, 'ADMIN'),
(2, 1, 'OKSIGEN CENTRAL'),
(3, 1, 'RAJAL HIVTB'),
(4, 1, 'REKAM MEDIS'),
(5, 1, 'SUPERVISI'),
(6, 2, 'GIZI'),
(7, 2, 'PORTER'),
(8, 2, 'FISIOTERAPI'),
(9, 2, 'IPSRS'),
(10, 2, 'SANITASI'),
(11, 2, 'SOPIR'),
(12, 2, 'ENDOSCOPY'),
(13, 2, 'KMR MAYAT'),
(14, 3, 'ATEM'),
(15, 3, 'BDRS'),
(16, 3, 'FARMASI'),
(17, 3, 'HD'),
(18, 3, 'LAUNDRY'),
(19, 3, 'LAUNDRY'),
(20, 3, 'CSSD'),
(21, 4, 'Chemotherapy'),
(22, 4, 'Rawat Inap'),
(23, 4, 'Laborat'),
(24, 4, 'VK'),
(25, 4, 'ICU'),
(26, 5, 'IGD'),
(27, 5, 'Radiologi'),
(28, 5, 'OK');

-- --------------------------------------------------------

--
-- Table structure for table `satker`
--

CREATE TABLE IF NOT EXISTS `satker` (
  `id` int(10) unsigned NOT NULL,
  `satuan_kerja` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satker`
--

INSERT INTO `satker` (`id`, `satuan_kerja`) VALUES
(5, 'IGD'),
(6, 'ICU'),
(7, 'TULIP'),
(8, 'POLIKLINIK'),
(9, 'ANGGREK'),
(10, 'WIJAYA KUSUMA'),
(11, 'HEMODIALISA'),
(12, 'CSSD'),
(13, 'MAWAR'),
(14, 'RADIOLOGI'),
(15, 'FARMASI'),
(16, 'LOUNDRY'),
(17, 'SOPIR'),
(18, 'KAMAR OPERASI'),
(19, 'IPSRS'),
(20, 'FLAMBOYAN'),
(21, 'FLAMBOYAN 2'),
(22, 'DAHLIA'),
(23, 'CEMPAKA'),
(24, 'SERUNI'),
(25, 'MELATI'),
(26, 'GIZI'),
(27, 'PEMBAYARAN'),
(28, 'SUPERVISI'),
(29, 'KEUANGAN'),
(30, 'LABORATORIUM'),
(31, 'FISIOTERAPI'),
(32, 'CATATAN MEDIK'),
(33, 'KEPERAWATAN'),
(34, 'KENANGA'),
(35, 'ASTER'),
(36, 'POLI VIP'),
(37, 'PELAYANAN MEDIK'),
(38, 'KESEKRETARIATAN'),
(39, 'PENUNJANG');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_umask` varchar(100) NOT NULL,
  `pass_umask` varchar(100) NOT NULL,
  `level` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip_address` text NOT NULL,
  `mac_address` text NOT NULL,
  `computer_name` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_umask`, `pass_umask`, `level`, `unit`, `change_date`, `last_login`, `logout`, `ip_address`, `mac_address`, `computer_name`) VALUES
(6, '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 1, '', '2015-10-08 14:24:13', '2015-11-09 13:38:18', '2015-10-21 10:21:45', '180.254.111.126', '1', 'srv12.niagahoster.com'),
(7, 'db6f6da1ce3437f3d38eb05a63402d41', 'c5a3a48df511a8664ebad6cdf7ef3a9d', 'mahendra', 'mahendra2015', 1, '', '2015-10-01 14:56:21', '2015-11-01 21:22:28', '2015-11-01 21:24:18', '124.195.119.234', '1', 'srv12.niagahoster.com'),
(25, '4fbfd324f5ffcdff5dbf6f019b02eca8', '4fbfd324f5ffcdff5dbf6f019b02eca8', 'direktur', 'direktur', 2, '', '2015-11-01 23:35:07', '2015-11-02 01:13:14', '0000-00-00 00:00:00', '36.73.127.37', '1', 'srv12.niagahoster.com'),
(26, '1934aa1f8cbb886bf2eac030ce005470', '1934aa1f8cbb886bf2eac030ce005470', 'kabid1', 'kabid1', 4, '32-', '2015-11-01 23:40:06', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(27, 'be09dc8501951fea49cafa27f8acb1af', '1934aa1f8cbb886bf2eac030ce005470', 'kabid2', 'kabid1', 4, '30-', '2015-11-01 23:41:26', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(28, '1cb0b8a2112c6a3e1849d6723b941b8c', '1934aa1f8cbb886bf2eac030ce005470', 'kabid3', 'kabid1', 4, '31-', '2015-11-01 23:43:01', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(30, '1f0b7959c6338808f8ad63fcd8bec7f2', '1f0b7959c6338808f8ad63fcd8bec7f2', 'kasi1', 'kasi1', 6, '35-37-', '2015-11-09 13:40:05', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(31, '286dc346ec7d4f6fd713dc2a568e2e90', '286dc346ec7d4f6fd713dc2a568e2e90', 'kasi2', 'kasi2', 6, '34-36-', '2015-11-09 13:40:19', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(32, '7cfb0e2e55dcd5d5a276de2ac88395ac', '7cfb0e2e55dcd5d5a276de2ac88395ac', 'kasi3', 'kasi3', 6, '33-', '2015-11-09 13:40:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(33, '6dfdb1eb5378c934f66828b05a45b7bf', '6dfdb1eb5378c934f66828b05a45b7bf', 'sakbai', 'sakbai', 8, '', '2015-11-09 13:40:53', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(34, 'a0546a0d6fd9304884ef874ed89e6624', 'a0546a0d6fd9304884ef874ed89e6624', 'hartoyo', 'hartoyo', 8, '', '2015-11-09 13:41:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(35, '288077f055be4fadc3804a69422dd4f8', '288077f055be4fadc3804a69422dd4f8', 'aris', 'aris', 8, '', '2015-11-09 13:41:34', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(36, '4e196a6c133a04f8a81d742b04e7ffe7', '4e196a6c133a04f8a81d742b04e7ffe7', 'herlina', 'herlina', 8, '', '2015-11-09 13:41:52', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', ''),
(37, '5439c4f04829855ddfa1a979a1f88061', '5439c4f04829855ddfa1a979a1f88061', 'erlin', 'erlin', 8, '', '2015-11-09 13:42:13', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`
--

CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int(3) NOT NULL,
  `nama` text NOT NULL,
  `jabatan` text NOT NULL,
  `telepon` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `nama`, `jabatan`, `telepon`, `change_date`) VALUES
(6, 'Administrator Tunggal', 'Super Admin', '00000000000', '2015-10-08 14:19:58'),
(7, 'mahendra', 'Super Admin', '1', '2015-10-06 14:44:00'),
(25, 'M1001AB', 'Penilai Level I', '1234567890', '2015-11-01 23:35:07'),
(26, 'M1003AB', 'Penilai Level II', '00000', '2015-11-01 23:40:06'),
(27, 'M1004AB', 'Penilai Level II', '00000', '2015-11-01 23:41:26'),
(28, 'M1005AB', 'Penilai Level II', '00000', '2015-11-01 23:43:01'),
(30, 'M1008AB', 'Penilai Level III', '12345', '2015-11-09 13:40:05'),
(31, 'M1009AB', 'Penilai Level III', '12345', '2015-11-09 13:40:19'),
(32, 'M10010AB', 'Penilai Level III', '12345', '2015-11-09 13:40:35'),
(33, 'M. Sakbai', 'Penilai Level IV', '12345', '2015-11-09 13:40:53'),
(34, 'Hartoyo', 'Penilai Level IV', '12345', '2015-11-09 13:41:16'),
(35, 'Aris Sri Widaryanto.A.MdEM', 'Penilai Level IV', '12345', '2015-11-09 13:41:34'),
(36, 'Herlina Aryandini,S.ST', 'Penilai Level IV', '12345', '2015-11-09 13:41:52'),
(37, 'Erlin Fitriana Yulia,SFar,Apt', 'Penilai Level IV', '12345', '2015-11-09 13:42:13');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL,
  `role` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`, `keterangan`) VALUES
(1, 'Super Admin', 'Dapat mengakses semua level dalam sistem. Dapat mengontrol semua user dan data yang ada di dalam sistem.'),
(2, 'Penilai Level I', 'Memiliki hak untuk memonitor dan menilai Penilai Level II<strong>(Kepala Bidang, Kepala Bagian, Supervisor)</strong>'),
(3, 'Pengamat Level I', 'Memiliki hak untuk memonitor proses penilaian Penilai Level II'),
(4, 'Penilai Level II', 'Memiliki hak untuk memonitor dan menilai Penilai Level III <strong>(Kepala Seksi)</strong>'),
(5, 'Pengamat Level II', 'Memiliki hak untuk memonitor proses penilaian Penilai Level III'),
(6, 'Penilai Level III', 'Memiliki hak untuk memonitor dan menilai Penilai Level IV <strong>(Kepala Ruang)</strong>'),
(7, 'Pengamat Level III', 'Memiliki hak untuk memonitor proses penilaian Penilai Level IV '),
(8, 'Penilai Level IV', 'Memiliki hak untuk memonitor dan menilai Pegawai <strong>(Staf dan Karyawan)</strong>'),
(9, 'Pengamat Level IV', 'Memiliki hak untuk memonitor proses penilaian Pegawai <strong>Staff dan Karyawan</strong>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `a_1_masa_kerja`
--
ALTER TABLE `a_1_masa_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `a_2_kepegawaian`
--
ALTER TABLE `a_2_kepegawaian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_1_pendidikan`
--
ALTER TABLE `b_1_pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b_2_sertifikasi`
--
ALTER TABLE `b_2_sertifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `c_1_resiko`
--
ALTER TABLE `c_1_resiko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_gaji`
--
ALTER TABLE `daftar_gaji`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `daftar_kepanitiaan`
--
ALTER TABLE `daftar_kepanitiaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `no` (`id`);

--
-- Indexes for table `daftar_nilai`
--
ALTER TABLE `daftar_nilai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `data_panitia`
--
ALTER TABLE `data_panitia`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_pan`,`id_lvl_koord`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_pan` (`id_pan`),
  ADD KEY `id_lvl_koord` (`id_lvl_koord`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `d_2_tingkat_emergensi`
--
ALTER TABLE `d_2_tingkat_emergensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_index_c`
--
ALTER TABLE `emergency_index_c`
  ADD PRIMARY KEY (`id`,`id_grd`),
  ADD KEY `id_grd` (`id_grd`);

--
-- Indexes for table `e_1_struktural`
--
ALTER TABLE `e_1_struktural`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_2_kepanitiaan_tim_kerja`
--
ALTER TABLE `e_2_kepanitiaan_tim_kerja`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `e_3_level_koordinasi`
--
ALTER TABLE `e_3_level_koordinasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `id_2` (`id`);

--
-- Indexes for table `list_rumah_sakit`
--
ALTER TABLE `list_rumah_sakit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `log_book`
--
ALTER TABLE `log_book`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `master_gaji`
--
ALTER TABLE `master_gaji`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `no` (`no`),
  ADD KEY `no_2` (`no`);

--
-- Indexes for table `master_ikip`
--
ALTER TABLE `master_ikip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `master_ikukp`
--
ALTER TABLE `master_ikukp`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `master_nilai`
--
ALTER TABLE `master_nilai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `perangkat_rs`
--
ALTER TABLE `perangkat_rs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `poin_emergensi`
--
ALTER TABLE `poin_emergensi`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_emer`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_emer` (`id_emer`);

--
-- Indexes for table `poin_ikik`
--
ALTER TABLE `poin_ikik`
  ADD PRIMARY KEY (`id`,`id_pgw`),
  ADD KEY `id_pgw` (`id_pgw`);

--
-- Indexes for table `poin_ikip`
--
ALTER TABLE `poin_ikip`
  ADD PRIMARY KEY (`id`,`id_pgw`),
  ADD KEY `id_pgw` (`id_pgw`);

--
-- Indexes for table `poin_kepegawaian`
--
ALTER TABLE `poin_kepegawaian`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_kpg`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_kpg` (`id_kpg`);

--
-- Indexes for table `poin_masa_kerja`
--
ALTER TABLE `poin_masa_kerja`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_mskr`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_mskr` (`id_mskr`);

--
-- Indexes for table `poin_pendidikan`
--
ALTER TABLE `poin_pendidikan`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_pend`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_pend` (`id_pend`);

--
-- Indexes for table `poin_resiko`
--
ALTER TABLE `poin_resiko`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_res`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_res` (`id_res`);

--
-- Indexes for table `poin_sertifikasi`
--
ALTER TABLE `poin_sertifikasi`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_sert`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_sert` (`id_sert`);

--
-- Indexes for table `poin_struktural`
--
ALTER TABLE `poin_struktural`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_struk`),
  ADD KEY `id_pgw` (`id_pgw`),
  ADD KEY `id_struk` (`id_struk`);

--
-- Indexes for table `risk_index_c`
--
ALTER TABLE `risk_index_c`
  ADD PRIMARY KEY (`id`,`id_rsk`),
  ADD KEY `id_rsk` (`id_rsk`);

--
-- Indexes for table `satker`
--
ALTER TABLE `satker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_1_masa_kerja`
--
ALTER TABLE `a_1_masa_kerja`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `a_2_kepegawaian`
--
ALTER TABLE `a_2_kepegawaian`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b_1_pendidikan`
--
ALTER TABLE `b_1_pendidikan`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `b_2_sertifikasi`
--
ALTER TABLE `b_2_sertifikasi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `c_1_resiko`
--
ALTER TABLE `c_1_resiko`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `daftar_gaji`
--
ALTER TABLE `daftar_gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `daftar_kepanitiaan`
--
ALTER TABLE `daftar_kepanitiaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `daftar_nilai`
--
ALTER TABLE `daftar_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_panitia`
--
ALTER TABLE `data_panitia`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `d_2_tingkat_emergensi`
--
ALTER TABLE `d_2_tingkat_emergensi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `emergency_index_c`
--
ALTER TABLE `emergency_index_c`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `e_1_struktural`
--
ALTER TABLE `e_1_struktural`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `e_2_kepanitiaan_tim_kerja`
--
ALTER TABLE `e_2_kepanitiaan_tim_kerja`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `e_3_level_koordinasi`
--
ALTER TABLE `e_3_level_koordinasi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kelompok`
--
ALTER TABLE `kelompok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `log_book`
--
ALTER TABLE `log_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1177;
--
-- AUTO_INCREMENT for table `master_gaji`
--
ALTER TABLE `master_gaji`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_ikip`
--
ALTER TABLE `master_ikip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `master_ikukp`
--
ALTER TABLE `master_ikukp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master_nilai`
--
ALTER TABLE `master_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `perangkat_rs`
--
ALTER TABLE `perangkat_rs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `poin_emergensi`
--
ALTER TABLE `poin_emergensi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_ikik`
--
ALTER TABLE `poin_ikik`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_ikip`
--
ALTER TABLE `poin_ikip`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_kepegawaian`
--
ALTER TABLE `poin_kepegawaian`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_masa_kerja`
--
ALTER TABLE `poin_masa_kerja`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_pendidikan`
--
ALTER TABLE `poin_pendidikan`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_resiko`
--
ALTER TABLE `poin_resiko`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_sertifikasi`
--
ALTER TABLE `poin_sertifikasi`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poin_struktural`
--
ALTER TABLE `poin_struktural`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `risk_index_c`
--
ALTER TABLE `risk_index_c`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `satker`
--
ALTER TABLE `satker`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
