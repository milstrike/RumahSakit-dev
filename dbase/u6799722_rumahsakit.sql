-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2015 at 06:13 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u6799722_rumahsakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `12_ikip_poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `12_ikip_poin_8_2015` (
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
-- Dumping data for table `12_ikip_poin_8_2015`
--

INSERT INTO `12_ikip_poin_8_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
(1, 'DISIPLIN KERJA', 'PRESENSI/KEHADIRAN - Bukti print Handkey (hari)', '22', '8', '8', '2.75', '0.07', '0.1925'),
(2, 'DISIPLIN KERJA', 'KETERLAMBATAN MASUK KERJA (menit per bulan)', '22', '8', '8', '2.75', '0.05', '0.1375'),
(3, 'DISIPLIN KERJA', 'PULANG AWAL SEBELUM WAKTU KERJA SELESAI (menit per bulan)', '8', '8', '8', '1', '0.05', '0.05'),
(4, 'PERILAKU KERJA', 'TINGKAT KEPEDULIAN PEGAWAI INI PADA PIHAK LAIN* YANG DILAYANI', '', '', '', '', '', ''),
(5, 'PERILAKU KERJA', 'CARA BERKOMUNIKASI PEGAWAI INI DENGAN PIHAK LAIN', '', '', '', '', '', ''),
(6, 'PERILAKU KERJA', 'KEMAMPUAN BEKERJASAMA DALAM BEKERJA DENGAN PIHAK LAIN', '', '', '', '', '', ''),
(7, 'PERILAKU KERJA', 'TINGKAT PENGETAHUAN AKAN PEKERJAAN DARI PEGAWAI INI', '', '', '', '', '', ''),
(8, 'PERILAKU KERJA', 'TINGKAT KETELITIAN PEGAWAI INI DALAM MENYELESAIKAN PEKERJAAN ', '', '', '', '', '', ''),
(9, 'PERILAKU KERJA', 'MOTIVASI/ SEMANGAT DALAM BEKERJA YANG DITUNJUKKAN OLEH PEGAWAI INI', '', '', '', '', '', ''),
(10, 'PERILAKU KERJA', 'KECEPATAN TANGGAP (RESPONSE TIME) PEGAWAI INI DALAM MENYELESAIKAN PEKERJAANNYA', '', '', '', '', '', ''),
(11, 'PERILAKU KERJA', 'TINGKAT LOYALITAS PADA KEPENTINGAN RUMAH SAKIT YANG DITUNJUKKAN OLEH PEGAWAI INI', '', '', '', '', '', ''),
(12, 'PERILAKU KERJA', 'KEMAMPUAN PEGAWAI INI DALAM MENJAGA KEBERSIHAN dan KERAPIAN LINGKUNGAN  KERJA', '', '', '', '', '', ''),
(13, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'PEGAWAI INI DAPAT DIKATAKAN SEBAGAI PEGAWAI PEMBELAJAR (ORANG YANG SELALU MAU BELAJAR UNTUK PERBAIKAN KUALITAS DIRI)', '10', '9', '9', '1.111111111', '0.1', '0.111111111'),
(14, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'TINGKAT KETAATAN MENGGUNAKAN SERAGAM KERJA SESUAI ATURAN', '', '', '', '', '', ''),
(15, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'TINGKAT KEIKUTSERTAAN DALAM RAPAT KOORDINASI SATKER', '', '', '', '', '', ''),
(16, 'PEMBELAJARAN, KETAATAN, dan KOMPLAIN', 'JUMLAH KOMPLAIN TERTULIS DAN ATAU LISAN YANG DITERIMA OLEH PEGAWAI INI DARI PIHAK LAIN*', '', '', '', '', '', ''),
(17, 'PERILAKU KERJA', 'KEMAMPUAN PEGAWAI INI DALAM MEMBERIKAN USULAN/ MASUKAN YANG POSITIF TERKAIT DENGAN PEKERJAANYA', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `12_ikip_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `12_ikip_poin_9_2015` (
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
-- Dumping data for table `12_ikip_poin_9_2015`
--

INSERT INTO `12_ikip_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `12_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `12_ikip_poin_10_2015` (
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
-- Dumping data for table `12_ikip_poin_10_2015`
--

INSERT INTO `12_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `12_ikukp_poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `12_ikukp_poin_8_2015` (
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
-- Dumping data for table `12_ikukp_poin_8_2015`
--

INSERT INTO `12_ikukp_poin_8_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
(1, 'UMUM', 'UNIT KERJA PEGAWAI INI DAPAT MENYELESAIKAN PEKERJAAN SECARA TEPAT WAKTU (ON-TIME)', '8', 'B', '8', '1', '0.1', '0.1'),
(2, 'UMUM', 'UNIT KERJA PEGAWAI INI MENUNJUKKAN SEMANGAT KERJA YANG TINGGI', '8', 'B', '8', '1', '0.075', '0.075'),
(3, 'UMUM', 'DALAM BEKERJA, ANGGOTA TIM DARI UNIT KERJA PEGAWAI INI MENUNJUKKAN KERJA SAMA YANG BAIK', '8', 'B', '8', '1', '0.05', '0.05'),
(4, 'UMUM', 'UNIT KERJA PEGAWAI INI SERING KALI MENGGUNAKAN CARA-CARA YANG INOVATIF DALAM BEKERJA TANPA MELANGGAR PERATURAN YANG ADA ', '', '', '', '', '', ''),
(5, 'UMUM', 'UNIT KERJA PEGAWAI INI DAPAT BEKERJA DENGAN CEPAT', '', '', '', '', '', ''),
(6, 'UMUM', 'UNIT KERJA PEGAWAI INI BEKERJA DENGAN TELITI', '', '', '', '', '', ''),
(7, 'UMUM', 'UNIT KERJA PEGAWAI INI MEMILIKI ESPRIT DE CORPS/ JIWA KORSA YANG TINGGI', '', '', '', '', '', ''),
(8, 'UMUM', 'UNIT KERJA PEGAWAI INI MEMILIKI KEPEDULIAN TINGGI PADA KEPENTINGAN RUMAH SAKIT', '', '', '', '', '', ''),
(9, 'UMUM', 'UNIT KERJA PEGAWAI INI MENJAGA KEBERSIHAN dan KERAPIAN TEMPAT KERJA ', '', '', '', '', '', ''),
(10, 'UMUM', 'JUMLAH KOMPLAIN TERTULIS DAN ATAU LISAN YANG DITERIMA OLEH UNIT KERJA PEGAWAI INI DARI PIHAK LAIN', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `12_ikukp_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `12_ikukp_poin_9_2015` (
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
-- Dumping data for table `12_ikukp_poin_9_2015`
--

INSERT INTO `12_ikukp_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `12_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `12_ikukp_poin_10_2015` (
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
-- Dumping data for table `12_ikukp_poin_10_2015`
--

INSERT INTO `12_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `13_ikip_poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `13_ikip_poin_8_2015` (
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
-- Dumping data for table `13_ikip_poin_8_2015`
--

INSERT INTO `13_ikip_poin_8_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `13_ikip_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `13_ikip_poin_9_2015` (
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
-- Dumping data for table `13_ikip_poin_9_2015`
--

INSERT INTO `13_ikip_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `13_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `13_ikip_poin_10_2015` (
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
-- Dumping data for table `13_ikip_poin_10_2015`
--

INSERT INTO `13_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `13_ikukp_poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `13_ikukp_poin_8_2015` (
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
-- Dumping data for table `13_ikukp_poin_8_2015`
--

INSERT INTO `13_ikukp_poin_8_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `13_ikukp_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `13_ikukp_poin_9_2015` (
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
-- Dumping data for table `13_ikukp_poin_9_2015`
--

INSERT INTO `13_ikukp_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `13_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `13_ikukp_poin_10_2015` (
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
-- Dumping data for table `13_ikukp_poin_10_2015`
--

INSERT INTO `13_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `14_ikip_poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `14_ikip_poin_8_2015` (
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
-- Dumping data for table `14_ikip_poin_8_2015`
--

INSERT INTO `14_ikip_poin_8_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `14_ikip_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `14_ikip_poin_9_2015` (
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
-- Dumping data for table `14_ikip_poin_9_2015`
--

INSERT INTO `14_ikip_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `14_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `14_ikip_poin_10_2015` (
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
-- Dumping data for table `14_ikip_poin_10_2015`
--

INSERT INTO `14_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `14_ikukp_poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `14_ikukp_poin_8_2015` (
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
-- Dumping data for table `14_ikukp_poin_8_2015`
--

INSERT INTO `14_ikukp_poin_8_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `14_ikukp_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `14_ikukp_poin_9_2015` (
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
-- Dumping data for table `14_ikukp_poin_9_2015`
--

INSERT INTO `14_ikukp_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `14_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `14_ikukp_poin_10_2015` (
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
-- Dumping data for table `14_ikukp_poin_10_2015`
--

INSERT INTO `14_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `15_ikip_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `15_ikip_poin_9_2015` (
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
-- Dumping data for table `15_ikip_poin_9_2015`
--

INSERT INTO `15_ikip_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
(1, 'DISIPLIN KERJA', 'PRESENSI/KEHADIRAN - Bukti print Handkey (hari)', '20', 'B', '20', '1', '0.075', '0.075'),
(2, 'DISIPLIN KERJA', 'KETERLAMBATAN MASUK KERJA (menit per bulan)', '10', 'B', '30', '0.333333333', '0.085', '0.028333333'),
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
-- Table structure for table `15_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `15_ikip_poin_10_2015` (
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
-- Dumping data for table `15_ikip_poin_10_2015`
--

INSERT INTO `15_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `15_ikukp_poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `15_ikukp_poin_9_2015` (
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
-- Dumping data for table `15_ikukp_poin_9_2015`
--

INSERT INTO `15_ikukp_poin_9_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
(1, 'UMUM', 'UNIT KERJA PEGAWAI INI DAPAT MENYELESAIKAN PEKERJAAN SECARA TEPAT WAKTU (ON-TIME)', '10', 'B', '100', '0.1', '0.095', '0.0095'),
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
-- Table structure for table `15_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `15_ikukp_poin_10_2015` (
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
-- Dumping data for table `15_ikukp_poin_10_2015`
--

INSERT INTO `15_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `16_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `16_ikip_poin_10_2015` (
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
-- Dumping data for table `16_ikip_poin_10_2015`
--

INSERT INTO `16_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `16_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `16_ikukp_poin_10_2015` (
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
-- Dumping data for table `16_ikukp_poin_10_2015`
--

INSERT INTO `16_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `17_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `17_ikip_poin_10_2015` (
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
-- Dumping data for table `17_ikip_poin_10_2015`
--

INSERT INTO `17_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `17_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `17_ikukp_poin_10_2015` (
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
-- Dumping data for table `17_ikukp_poin_10_2015`
--

INSERT INTO `17_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `18_ikip_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `18_ikip_poin_10_2015` (
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
-- Dumping data for table `18_ikip_poin_10_2015`
--

INSERT INTO `18_ikip_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
-- Table structure for table `18_ikukp_poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `18_ikukp_poin_10_2015` (
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
-- Dumping data for table `18_ikukp_poin_10_2015`
--

INSERT INTO `18_ikukp_poin_10_2015` (`id`, `kategori`, `indikator`, `ci`, `target_a`, `target_b`, `nilai`, `bobot`, `sum`) VALUES
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
  `pajak` double NOT NULL,
  `pembagi` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `a_2_kepegawaian`
--

INSERT INTO `a_2_kepegawaian` (`id`, `keterangan`, `poin`, `gaji`, `pajak`, `pembagi`) VALUES
(1, 'Pegawai BLUD', 2, 50000, 0.05, 200000),
(2, 'PNS Gol. I', 6, 1000000, 0.1, 200000),
(3, 'PNS Gol. II', 9, 0, 0.15, 200000),
(4, 'PNS Gol. III', 19, 3000000, 0.2, 50000),
(5, 'PNS Gol. IV', 25, 4000000, 0.25, 30000);

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
(1, 'site_name', 'Sistem Informasi Pegawai - Technical Preview', '2015-06-26 14:17:11'),
(2, 'site_description', '   Selamat Datang di Sistem Penilaian Pegawai. Dengan menggunakan sistem ini, Anda dapat melakukan penilaian terhadap pegawai di perusahaan Anda.', '2015-06-26 14:10:00');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_gaji`
--

INSERT INTO `daftar_gaji` (`id`, `bulan`, `tahun`, `nama_tabel`, `dana`) VALUES
(10, 8, 2015, 'gaji_8_2015', 100000000),
(11, 9, 2015, 'gaji_9_2015', 16000000);

-- --------------------------------------------------------

--
-- Table structure for table `daftar_kepanitiaan`
--

CREATE TABLE IF NOT EXISTS `daftar_kepanitiaan` (
  `id` int(11) NOT NULL,
  `nama_kepanitiaan` text NOT NULL,
  `detail_kepanitiaan` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_kepanitiaan`
--

INSERT INTO `daftar_kepanitiaan` (`id`, `nama_kepanitiaan`, `detail_kepanitiaan`, `change_date`) VALUES
(7, 'Panitian 17 an', 'Kepanitiaan untuk mengurusi lomba 17 Agustus Tahun 2015 di Rumah Sakit Umum Temanggung', '2015-08-08 13:51:27'),
(8, 'Kepanitiaan Sertifikasi', 'Kepanitiaan untuk mengurusi sertifikasi Rumah Sakit', '2015-08-12 02:35:31');

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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_nilai`
--

INSERT INTO `daftar_nilai` (`id`, `bulan`, `tahun`, `nama_tabel`, `total_nilai`) VALUES
(30, '8', '2015', 'poin_8_2015', 145),
(31, '9', '2015', 'poin_9_2015', 181),
(32, '10', '2015', 'poin_10_2015', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id`, `nama`, `nip`, `golongan`, `satker`, `jabatan`, `kelompok`, `pendidikan`, `sertifikasi`, `perangkat`, `tanggal_masuk`, `change_date`) VALUES
(12, 'Muhammad Irfan Luthfi', '11520241044', '5', '2', '5', '6', '10', '4', '5', '2010-1-1', '2015-08-12 05:58:04'),
(13, 'Rochmad Budiman', '11520241004', '3', '2', '1', '2', '8', '1', '30', '2004-4-1', '2015-08-12 07:32:28'),
(14, 'Charlie Gonzalezo', '11520241059', '4', '2', '5', '9', '8', '4', '5', '2011-1-1', '2015-08-12 07:53:43'),
(15, 'Septian', '1234567890', '1', '2', '1', '2', '3', '4', '11', '2005-2-6', '2015-09-15 05:44:19'),
(16, 'qwertyu', '346832732', '2', '2', '1', '2', '1', '1', '5', '2009-1-12', '2015-09-16 01:54:31'),
(17, 'nbvcxdrthjnbvftyh', '876545678765', '1', '2', '1', '2', '1', '1', '28', '2009-1-1', '2015-09-16 01:54:59'),
(18, 'ghhuijgh', '7856877979876', '1', '2', '1', '2', '10', '1', '14', '2010-1-10', '2015-09-16 01:55:42');

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

--
-- Dumping data for table `detail_kepanitiaan`
--

INSERT INTO `detail_kepanitiaan` (`id`, `id_pegawai`, `jabatan`, `poin`, `bulan`) VALUES
('7', '12', '5', '10', '2015-08-12 05:58:17'),
('7', '13', '1', '3', '2015-08-12 07:32:48'),
('8', '12', '5', '10', '2015-08-12 07:33:01'),
('8', '13', '2', '5', '2015-08-12 07:33:10'),
('7', '14', '4', '8', '2015-08-12 07:54:12'),
('8', '15', '1', '3', '2015-09-15 05:45:14');

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

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
(22, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `gaji_8_2015`
--

CREATE TABLE IF NOT EXISTS `gaji_8_2015` (
  `no` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bagian` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `bersih` int(11) NOT NULL,
  `ttd` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji_8_2015`
--

INSERT INTO `gaji_8_2015` (`no`, `nama`, `bagian`, `jumlah`, `potongan`, `bersih`, `ttd`) VALUES
(1, 'Muhammad Irfan Luthfi', 69, 47586207, 11896551, 35689656, '<span style=color:green>Sudah Diterima</span>'),
(2, 'Rochmad Budiman', 29, 20000000, 3000000, 17000000, '<span style=color:green>Sudah Diterima</span>'),
(3, 'Charlie Gonzalezo', 48, 33103448, 6620689, 26482759, '<span style=color:green>Sudah Diterima</span>');

-- --------------------------------------------------------

--
-- Table structure for table `gaji_9_2015`
--

CREATE TABLE IF NOT EXISTS `gaji_9_2015` (
  `no` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `bagian` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `potongan` int(11) NOT NULL,
  `bersih` int(11) NOT NULL,
  `ttd` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gaji_9_2015`
--

INSERT INTO `gaji_9_2015` (`no`, `nama`, `bagian`, `jumlah`, `potongan`, `bersih`, `ttd`) VALUES
(1, 'Muhammad Irfan Luthfi', 63, 5569061, 1392265, 4176796, '<span style=color:green>Sudah Diterima</span>'),
(2, 'Rochmad Budiman', 29, 2563536, 384530, 2179006, '<span style=color:green>Sudah Diterima</span>'),
(3, 'Charlie Gonzalezo', 48, 4243094, 848618, 3394476, '<span style=color:green>Sudah Diterima</span>'),
(4, 'Septian', 41, 3624309, 181215, 3443094, '<span style=color:green>Sudah Diterima</span>');

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
(9, 'KOORDINATOR'),
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
('12', '10', '6'),
('13', '0', '0'),
('14', '15', '8'),
('15', '0', '0'),
('16', '0', '0'),
('17', '0', '0'),
('18', '0', '0');

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
(4, 'SANITASI', 'GRADE I', 2, 'LEVEL II', 4, '2015-07-22 02:58:57'),
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
-- Table structure for table `poin_8_2015`
--

CREATE TABLE IF NOT EXISTS `poin_8_2015` (
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poin_8_2015`
--

INSERT INTO `poin_8_2015` (`id`, `id_pegawai`, `masa_kerja`, `gaji_pokok`, `golongan`, `basic_index`, `pendidikan`, `sertifikasi`, `capacity_index`, `level_resiko`, `risk_index`, `level_emergency`, `emergency_index`, `struktural`, `level_koordinasi`, `kepanitiaan`, `position_index`, `sum_ikip`, `ikip`, `sum_ikup`, `ikukp`, `performance_index`, `total_individu`) VALUES
(1, '12', '0.0875', '1.866666666', '0.3', '31.55833333', '0.525', '0.4', '12.95', '0.2', '2.8', '2', '2.8', '0.4', '0.18', '0.3', '12.32', '0.163703703', '0.114592592', '0.224999999', '0.0675', '5.46277776', 69),
(2, '13', '0.13125', '0', '0.108', '3.3495', '0.4125', '0.088888888', '7.019444444', '0', '0', '8', '11.2', '0.4', '0', '0.3', '9.8', '', '0', '', '0', '0', 29),
(3, '14', '0.0875', '1.105263157', '0.228', '19.89068421', '0.4125', '0.4', '11.375', '0.2', '2.8', '2', '2.8', '0.4', '0.24', '0.3', '13.16', '', '0', '', '0', '0', 48);

-- --------------------------------------------------------

--
-- Table structure for table `poin_9_2015`
--

CREATE TABLE IF NOT EXISTS `poin_9_2015` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poin_9_2015`
--

INSERT INTO `poin_9_2015` (`id`, `id_pegawai`, `masa_kerja`, `gaji_pokok`, `golongan`, `basic_index`, `pendidikan`, `sertifikasi`, `capacity_index`, `level_resiko`, `risk_index`, `level_emergency`, `emergency_index`, `struktural`, `level_koordinasi`, `kepanitiaan`, `position_index`, `sum_ikip`, `ikip`, `sum_ikup`, `ikukp`, `performance_index`, `total_individu`) VALUES
(1, '12', '0.0875', '1.866666666', '0.3', '31.55833333', '0.525', '0.4', '12.95', '0.2', '2.8', '2', '2.8', '0.4', '0.18', '0.3', '12.32', '', '0', '', '0', '0', 63),
(2, '13', '0.13125', '0', '0.108', '3.3495', '0.4125', '0.088888888', '7.019444444', '0', '0', '8', '11.2', '0.4', '0', '0.3', '9.8', '', '0', '', '0', '0', 29),
(3, '14', '0.0875', '1.105263157', '0.228', '19.89068421', '0.4125', '0.4', '11.375', '0.2', '2.8', '2', '2.8', '0.4', '0.24', '0.3', '13.16', '', '0', '', '0', '0', 48),
(4, '15', '0.13125', '0.04375', '0.024', '2.786', '0.1875', '0.4', '8.225', '0.7', '9.8', '8', '11.2', '0.4', '0', '0.3', '9.8', '0.034444444', '0.024111111', '0.0095', '0.00285', '0.80883333', 41);

-- --------------------------------------------------------

--
-- Table structure for table `poin_10_2015`
--

CREATE TABLE IF NOT EXISTS `poin_10_2015` (
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poin_10_2015`
--

INSERT INTO `poin_10_2015` (`id`, `id_pegawai`, `masa_kerja`, `gaji_pokok`, `golongan`, `basic_index`, `pendidikan`, `sertifikasi`, `capacity_index`, `level_resiko`, `risk_index`, `level_emergency`, `emergency_index`, `struktural`, `level_koordinasi`, `kepanitiaan`, `position_index`, `sum_ikip`, `ikip`, `sum_ikup`, `ikukp`, `performance_index`, `total_individu`) VALUES
(1, '12', '0.0875', '1.866666666', '0.3', '31.55833333', '0.525', '0.4', '12.95', '0.2', '2.8', '2', '2.8', '0.4', '0.18', '0.3', '12.32', '', '0', '', '0', '0', 0),
(2, '13', '0.13125', '0', '0.108', '3.3495', '0.4125', '0.088888888', '7.019444444', '0', '0', '8', '11.2', '0.4', '0', '0.3', '9.8', '', '0', '', '0', '0', 0),
(3, '14', '0.0875', '1.105263157', '0.228', '19.89068421', '0.4125', '0.4', '11.375', '0.2', '2.8', '2', '2.8', '0.4', '0.24', '0.3', '13.16', '', '0', '', '0', '0', 0),
(4, '15', '0.13125', '0.04375', '0.024', '2.786', '0.1875', '0.4', '8.225', '0.7', '9.8', '8', '11.2', '0.4', '0', '0.3', '9.8', '', '0', '', '0', '0', 0),
(5, '16', '0.0875', '0.291666666', '0.072', '6.316333333', '0.075', '0.088888888', '2.294444444', '0.2', '2.8', '2', '2.8', '0.4', '0', '0', '5.6', '', '0', '', '0', '0', 0),
(6, '17', '0.0875', '0.04375', '0.024', '2.1735', '0.075', '0.088888888', '2.294444444', '0', '0', '6', '8.4', '0.4', '0', '0', '5.6', '', '0', '', '0', '0', 0),
(7, '18', '0.0875', '0.04375', '0.024', '2.1735', '0.525', '0.088888888', '8.594444444', '0.7', '9.8', '6', '8.4', '0.4', '0', '0', '5.6', '', '0', '', '0', '0', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satker`
--

INSERT INTO `satker` (`id`, `satuan_kerja`) VALUES
(2, 'PENUNJANG RANAP');

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
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_umask`, `pass_umask`, `level`, `unit`, `change_date`) VALUES
(6, '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', 1, '', '2015-07-25 13:38:48'),
(9, 'adfc21b951612ea6e99f008a057f7d79', '843217b606e6b1c6080b7dff578c854a', 'milstrike', 'megaawan', 2, ' data_pegawai.perangkat=5 ', '2015-09-16 01:58:00'),
(10, '161f3088004aea5c226e238809f870ca', '161f3088004aea5c226e238809f870ca', 'q2w3e4r5', 'q2w3e4r5', 3, ' data_pegawai.perangkat=28 or data_pegawai.perangkat=14 ', '2015-09-16 01:58:19');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_detail`
--

INSERT INTO `user_detail` (`id`, `nama`, `jabatan`, `telepon`, `change_date`) VALUES
(6, 'Administrator Tunggal', 'Super Admin', '085878952533', '2015-07-12 15:50:27'),
(9, 'M. Irfan Luthf', 'Penilai', '085878952533', '2015-09-16 01:44:18'),
(10, 'Moch. Irfan Luthfi', 'Pengamat', '085878952533', '2015-09-16 01:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL,
  `role` text NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`, `keterangan`) VALUES
(1, 'Super Admin', 'Dapat mengakses semua level dalam sistem. Dapat mengontrol semua user dan data yang ada di dalam sistem.'),
(2, 'Penilai', 'Memiliki hak untuk memonitor dan menilai pegawai-pegawai yang bekerja di bagian yang berada di bawahnya. '),
(3, 'Pengamat', 'Memiliki hak untuk mengamati pegawai saja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `12_ikip_poin_8_2015`
--
ALTER TABLE `12_ikip_poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `12_ikip_poin_9_2015`
--
ALTER TABLE `12_ikip_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `12_ikip_poin_10_2015`
--
ALTER TABLE `12_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `12_ikukp_poin_8_2015`
--
ALTER TABLE `12_ikukp_poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `12_ikukp_poin_9_2015`
--
ALTER TABLE `12_ikukp_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `12_ikukp_poin_10_2015`
--
ALTER TABLE `12_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `13_ikip_poin_8_2015`
--
ALTER TABLE `13_ikip_poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `13_ikip_poin_9_2015`
--
ALTER TABLE `13_ikip_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `13_ikip_poin_10_2015`
--
ALTER TABLE `13_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `13_ikukp_poin_8_2015`
--
ALTER TABLE `13_ikukp_poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `13_ikukp_poin_9_2015`
--
ALTER TABLE `13_ikukp_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `13_ikukp_poin_10_2015`
--
ALTER TABLE `13_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `14_ikip_poin_8_2015`
--
ALTER TABLE `14_ikip_poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `14_ikip_poin_9_2015`
--
ALTER TABLE `14_ikip_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `14_ikip_poin_10_2015`
--
ALTER TABLE `14_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `14_ikukp_poin_8_2015`
--
ALTER TABLE `14_ikukp_poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `14_ikukp_poin_9_2015`
--
ALTER TABLE `14_ikukp_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `14_ikukp_poin_10_2015`
--
ALTER TABLE `14_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `15_ikip_poin_9_2015`
--
ALTER TABLE `15_ikip_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `15_ikip_poin_10_2015`
--
ALTER TABLE `15_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `15_ikukp_poin_9_2015`
--
ALTER TABLE `15_ikukp_poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `15_ikukp_poin_10_2015`
--
ALTER TABLE `15_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `16_ikip_poin_10_2015`
--
ALTER TABLE `16_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `16_ikukp_poin_10_2015`
--
ALTER TABLE `16_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `17_ikip_poin_10_2015`
--
ALTER TABLE `17_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `17_ikukp_poin_10_2015`
--
ALTER TABLE `17_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `18_ikip_poin_10_2015`
--
ALTER TABLE `18_ikip_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `18_ikukp_poin_10_2015`
--
ALTER TABLE `18_ikukp_poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

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
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `c_1_resiko`
--
ALTER TABLE `c_1_resiko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daftar_gaji`
--
ALTER TABLE `daftar_gaji`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indexes for table `daftar_kepanitiaan`
--
ALTER TABLE `daftar_kepanitiaan`
  ADD PRIMARY KEY (`id`), ADD KEY `no` (`id`);

--
-- Indexes for table `daftar_nilai`
--
ALTER TABLE `daftar_nilai`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `data_panitia`
--
ALTER TABLE `data_panitia`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_pan`,`id_lvl_koord`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_pan` (`id_pan`), ADD KEY `id_lvl_koord` (`id_lvl_koord`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indexes for table `d_2_tingkat_emergensi`
--
ALTER TABLE `d_2_tingkat_emergensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency_index_c`
--
ALTER TABLE `emergency_index_c`
  ADD PRIMARY KEY (`id`,`id_grd`), ADD KEY `id_grd` (`id_grd`);

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
-- Indexes for table `gaji_8_2015`
--
ALTER TABLE `gaji_8_2015`
  ADD PRIMARY KEY (`no`), ADD UNIQUE KEY `no` (`no`), ADD KEY `no_2` (`no`);

--
-- Indexes for table `gaji_9_2015`
--
ALTER TABLE `gaji_9_2015`
  ADD PRIMARY KEY (`no`), ADD UNIQUE KEY `no` (`no`), ADD KEY `no_2` (`no`);

--
-- Indexes for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelompok`
--
ALTER TABLE `kelompok`
  ADD UNIQUE KEY `id` (`id`), ADD KEY `id_2` (`id`);

--
-- Indexes for table `list_rumah_sakit`
--
ALTER TABLE `list_rumah_sakit`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `master_gaji`
--
ALTER TABLE `master_gaji`
  ADD PRIMARY KEY (`no`), ADD UNIQUE KEY `no` (`no`), ADD KEY `no_2` (`no`);

--
-- Indexes for table `master_ikip`
--
ALTER TABLE `master_ikip`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `master_ikukp`
--
ALTER TABLE `master_ikukp`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `master_nilai`
--
ALTER TABLE `master_nilai`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `perangkat_rs`
--
ALTER TABLE `perangkat_rs`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `poin_8_2015`
--
ALTER TABLE `poin_8_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `poin_9_2015`
--
ALTER TABLE `poin_9_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `poin_10_2015`
--
ALTER TABLE `poin_10_2015`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `poin_emergensi`
--
ALTER TABLE `poin_emergensi`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_emer`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_emer` (`id_emer`);

--
-- Indexes for table `poin_ikik`
--
ALTER TABLE `poin_ikik`
  ADD PRIMARY KEY (`id`,`id_pgw`), ADD KEY `id_pgw` (`id_pgw`);

--
-- Indexes for table `poin_ikip`
--
ALTER TABLE `poin_ikip`
  ADD PRIMARY KEY (`id`,`id_pgw`), ADD KEY `id_pgw` (`id_pgw`);

--
-- Indexes for table `poin_kepegawaian`
--
ALTER TABLE `poin_kepegawaian`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_kpg`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_kpg` (`id_kpg`);

--
-- Indexes for table `poin_masa_kerja`
--
ALTER TABLE `poin_masa_kerja`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_mskr`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_mskr` (`id_mskr`);

--
-- Indexes for table `poin_pendidikan`
--
ALTER TABLE `poin_pendidikan`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_pend`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_pend` (`id_pend`);

--
-- Indexes for table `poin_resiko`
--
ALTER TABLE `poin_resiko`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_res`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_res` (`id_res`);

--
-- Indexes for table `poin_sertifikasi`
--
ALTER TABLE `poin_sertifikasi`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_sert`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_sert` (`id_sert`);

--
-- Indexes for table `poin_struktural`
--
ALTER TABLE `poin_struktural`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_struk`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_struk` (`id_struk`);

--
-- Indexes for table `risk_index_c`
--
ALTER TABLE `risk_index_c`
  ADD PRIMARY KEY (`id`,`id_rsk`), ADD KEY `id_rsk` (`id_rsk`);

--
-- Indexes for table `satker`
--
ALTER TABLE `satker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_detail`
--
ALTER TABLE `user_detail`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id_2` (`id`), ADD KEY `id` (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`), ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `12_ikip_poin_8_2015`
--
ALTER TABLE `12_ikip_poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `12_ikip_poin_9_2015`
--
ALTER TABLE `12_ikip_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `12_ikip_poin_10_2015`
--
ALTER TABLE `12_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `12_ikukp_poin_8_2015`
--
ALTER TABLE `12_ikukp_poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `12_ikukp_poin_9_2015`
--
ALTER TABLE `12_ikukp_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `12_ikukp_poin_10_2015`
--
ALTER TABLE `12_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `13_ikip_poin_8_2015`
--
ALTER TABLE `13_ikip_poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `13_ikip_poin_9_2015`
--
ALTER TABLE `13_ikip_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `13_ikip_poin_10_2015`
--
ALTER TABLE `13_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `13_ikukp_poin_8_2015`
--
ALTER TABLE `13_ikukp_poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `13_ikukp_poin_9_2015`
--
ALTER TABLE `13_ikukp_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `13_ikukp_poin_10_2015`
--
ALTER TABLE `13_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `14_ikip_poin_8_2015`
--
ALTER TABLE `14_ikip_poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `14_ikip_poin_9_2015`
--
ALTER TABLE `14_ikip_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `14_ikip_poin_10_2015`
--
ALTER TABLE `14_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `14_ikukp_poin_8_2015`
--
ALTER TABLE `14_ikukp_poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `14_ikukp_poin_9_2015`
--
ALTER TABLE `14_ikukp_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `14_ikukp_poin_10_2015`
--
ALTER TABLE `14_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `15_ikip_poin_9_2015`
--
ALTER TABLE `15_ikip_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `15_ikip_poin_10_2015`
--
ALTER TABLE `15_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `15_ikukp_poin_9_2015`
--
ALTER TABLE `15_ikukp_poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `15_ikukp_poin_10_2015`
--
ALTER TABLE `15_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `16_ikip_poin_10_2015`
--
ALTER TABLE `16_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `16_ikukp_poin_10_2015`
--
ALTER TABLE `16_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `17_ikip_poin_10_2015`
--
ALTER TABLE `17_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `17_ikukp_poin_10_2015`
--
ALTER TABLE `17_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `18_ikip_poin_10_2015`
--
ALTER TABLE `18_ikip_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `18_ikukp_poin_10_2015`
--
ALTER TABLE `18_ikukp_poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `daftar_kepanitiaan`
--
ALTER TABLE `daftar_kepanitiaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `daftar_nilai`
--
ALTER TABLE `daftar_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `data_panitia`
--
ALTER TABLE `data_panitia`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
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
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `gaji_8_2015`
--
ALTER TABLE `gaji_8_2015`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `gaji_9_2015`
--
ALTER TABLE `gaji_9_2015`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `poin_8_2015`
--
ALTER TABLE `poin_8_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `poin_9_2015`
--
ALTER TABLE `poin_9_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `poin_10_2015`
--
ALTER TABLE `poin_10_2015`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_detail`
--
ALTER TABLE `user_detail`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
