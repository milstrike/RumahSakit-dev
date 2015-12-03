-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Jul 2015 pada 13.40
-- Versi Server: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rumahsakit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_1_masa_kerja`
--

CREATE TABLE IF NOT EXISTS `a_1_masa_kerja` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `a_1_masa_kerja`
--

INSERT INTO `a_1_masa_kerja` (`id`, `keterangan`, `poin`) VALUES
(1, '< 4 Th', 2),
(2, '4  s/d  < 8 Th', 4),
(3, '8  s/d < 12 Th', 6),
(4, '12 s/d < 16 Th', 8),
(5, '16 s/d < 20 Th', 10),
(6, '20 s/d < 24 Th', 12),
(7, '24  s/d < 28 Th', 14),
(8, '> 28 Th', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `a_2_kepegawaian`
--

CREATE TABLE IF NOT EXISTS `a_2_kepegawaian` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `a_2_kepegawaian`
--

INSERT INTO `a_2_kepegawaian` (`id`, `keterangan`, `poin`) VALUES
(1, 'Pegawai BLUD', 2),
(2, 'PNS Gol. I', 6),
(3, 'PNS Gol. II', 9),
(4, 'PNS Gol. III', 19),
(5, 'PNS Gol. IV', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `b_1_pendidikan`
--

CREATE TABLE IF NOT EXISTS `b_1_pendidikan` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `b_1_pendidikan`
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
-- Struktur dari tabel `b_2_sertifikasi`
--

CREATE TABLE IF NOT EXISTS `b_2_sertifikasi` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `b_2_sertifikasi`
--

INSERT INTO `b_2_sertifikasi` (`id`, `keterangan`, `poin`) VALUES
(1, 'GRADE I', 2),
(2, 'GRADE II', 4),
(3, 'GRADE III', 6),
(4, 'GRADE IV', 9);

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id` int(3) NOT NULL,
  `name` varchar(20) NOT NULL,
  `value` longtext NOT NULL,
  `changes` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id`, `name`, `value`, `changes`) VALUES
(1, 'site_name', 'Sistem Informasi Pegawai - (Technical Preview)', '2015-06-26 14:17:11'),
(2, 'site_description', '   Selamat Datang di Sistem Penilaian Pegawai. Dengan menggunakan sistem ini, Anda dapat melakukan penilaian terhadap pegawai di perusahaan Anda.', '2015-06-26 14:10:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `c_1_resiko`
--

CREATE TABLE IF NOT EXISTS `c_1_resiko` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `c_1_resiko`
--

INSERT INTO `c_1_resiko` (`id`, `keterangan`, `poin`) VALUES
(1, 'LEVEL I', 2),
(2, 'LEVEL II', 4),
(3, 'LEVEL III', 6),
(4, 'LEVEL IV', 8),
(5, 'LEVEL V', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_panitia`
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
-- Struktur dari tabel `data_pegawai`
--

CREATE TABLE IF NOT EXISTS `data_pegawai` (
  `id` int(4) NOT NULL,
  `nama` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_data_pegawai`
--

CREATE TABLE IF NOT EXISTS `detail_data_pegawai` (
  `id` int(4) NOT NULL,
  `nama` text NOT NULL,
  `nip` varchar(100) NOT NULL,
  `ttl` date NOT NULL,
  `alamat` longtext NOT NULL,
  `mulai_kerja` varchar(20) NOT NULL,
  `golongan` text NOT NULL,
  `pendidikan` text NOT NULL,
  `sertifikasi` text NOT NULL,
  `struktural` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `d_2_tingkat_emergensi`
--

CREATE TABLE IF NOT EXISTS `d_2_tingkat_emergensi` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `d_2_tingkat_emergensi`
--

INSERT INTO `d_2_tingkat_emergensi` (`id`, `keterangan`, `poin`) VALUES
(1, 'GRADE I', 2),
(2, 'GRADE II', 5),
(3, 'GRADE III', 7),
(4, 'GRADE IV', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `emergency_index_c`
--

CREATE TABLE IF NOT EXISTS `emergency_index_c` (
  `id` int(2) NOT NULL,
  `id_grd` int(2) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `emergency_index_c`
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
-- Struktur dari tabel `e_1_struktural`
--

CREATE TABLE IF NOT EXISTS `e_1_struktural` (
  `id` int(2) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `e_1_struktural`
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
-- Struktur dari tabel `e_2_kepanitiaan_tim_kerja`
--

CREATE TABLE IF NOT EXISTS `e_2_kepanitiaan_tim_kerja` (
  `id` int(1) NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `e_2_kepanitiaan_tim_kerja`
--

INSERT INTO `e_2_kepanitiaan_tim_kerja` (`id`, `keterangan`, `poin`) VALUES
(1, 'ANGGOTA', 3),
(2, 'SEKRETARIS / BENDAHARA', 5),
(3, 'KOORDINATOR SUB-KEGIATAN', 6),
(4, 'KOORDINATOR KEGIATAN', 8),
(5, 'KETUA PANITIA', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `e_3_level_koordinasi`
--

CREATE TABLE IF NOT EXISTS `e_3_level_koordinasi` (
  `id` int(2) NOT NULL,
  `level` text NOT NULL,
  `keterangan` text NOT NULL,
  `poin` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `e_3_level_koordinasi`
--

INSERT INTO `e_3_level_koordinasi` (`id`, `level`, `keterangan`, `poin`) VALUES
(1, 'LEVEL 1', 'JUMLAH BAWAHAN < 2', 3),
(2, 'LEVEL 2', 'JUMLAH BAWAHAN 2 s/d 5', 5),
(3, 'LEVEL 3', 'JUMLAH BAWAHAN 6 s/d 10', 6),
(4, 'LEVEL 4', 'JUMLAH BAWAHAN 11 s/d 15', 8),
(5, 'LEVEL 5', 'JUMLAH BAWAHAN > 15', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gaji_pokok`
--

CREATE TABLE IF NOT EXISTS `gaji_pokok` (
  `id` int(2) NOT NULL,
  `id_gol` int(2) NOT NULL,
  `gaji_pokok` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_emergensi`
--

CREATE TABLE IF NOT EXISTS `poin_emergensi` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_emer` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_ikik`
--

CREATE TABLE IF NOT EXISTS `poin_ikik` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_ikip`
--

CREATE TABLE IF NOT EXISTS `poin_ikip` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_kepegawaian`
--

CREATE TABLE IF NOT EXISTS `poin_kepegawaian` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_kpg` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_masa_kerja`
--

CREATE TABLE IF NOT EXISTS `poin_masa_kerja` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_mskr` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_pendidikan`
--

CREATE TABLE IF NOT EXISTS `poin_pendidikan` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_pend` int(2) NOT NULL,
  `poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_resiko`
--

CREATE TABLE IF NOT EXISTS `poin_resiko` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_res` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_sertifikasi`
--

CREATE TABLE IF NOT EXISTS `poin_sertifikasi` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_sert` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `poin_struktural`
--

CREATE TABLE IF NOT EXISTS `poin_struktural` (
  `id` int(4) NOT NULL,
  `id_pgw` int(4) NOT NULL,
  `id_struk` int(2) NOT NULL,
  `poin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `risk_index_c`
--

CREATE TABLE IF NOT EXISTS `risk_index_c` (
  `id` int(2) NOT NULL,
  `id_rsk` int(2) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `risk_index_c`
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
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(3) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_umask` varchar(100) NOT NULL,
  `pass_umask` varchar(100) NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `user_umask`, `pass_umask`, `change_date`) VALUES
(1, '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'admin', '2015-06-26 14:33:39'),
(2, '5b3bb3e5458e02aa356f2fc671ae08d9', '5b3bb3e5458e02aa356f2fc671ae08d9', 'septian', 'septian', '2015-06-30 05:49:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_detail`
--

CREATE TABLE IF NOT EXISTS `user_detail` (
  `id` int(3) NOT NULL,
  `nama` text NOT NULL,
  `jabatan` text NOT NULL,
  `telepon` text NOT NULL,
  `change_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_detail`
--

INSERT INTO `user_detail` (`id`, `nama`, `jabatan`, `telepon`, `change_date`) VALUES
(1, 'Muhammad Irfan Luthfi', 'Super Admin', '085878952533', '2015-06-27 02:34:45'),
(2, 'Mochamad Septian', 'Super Admin', '081234567890', '2015-06-30 05:49:59');

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
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `c_1_resiko`
--
ALTER TABLE `c_1_resiko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_panitia`
--
ALTER TABLE `data_panitia`
  ADD PRIMARY KEY (`id`,`id_pgw`,`id_pan`,`id_lvl_koord`), ADD KEY `id_pgw` (`id_pgw`), ADD KEY `id_pan` (`id_pan`), ADD KEY `id_lvl_koord` (`id_lvl_koord`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `detail_data_pegawai`
--
ALTER TABLE `detail_data_pegawai`
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
-- Indexes for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  ADD PRIMARY KEY (`id`,`id_gol`), ADD KEY `id_gol` (`id_gol`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `a_1_masa_kerja`
--
ALTER TABLE `a_1_masa_kerja`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
-- AUTO_INCREMENT for table `data_panitia`
--
ALTER TABLE `data_panitia`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_panitia`
--
ALTER TABLE `data_panitia`
ADD CONSTRAINT `data_panitia_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `data_panitia_ibfk_2` FOREIGN KEY (`id_pan`) REFERENCES `e_2_kepanitiaan_tim_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `data_panitia_ibfk_3` FOREIGN KEY (`id_lvl_koord`) REFERENCES `e_3_level_koordinasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_data_pegawai`
--
ALTER TABLE `detail_data_pegawai`
ADD CONSTRAINT `detail_data_pegawai_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `emergency_index_c`
--
ALTER TABLE `emergency_index_c`
ADD CONSTRAINT `emergency_index_c_ibfk_1` FOREIGN KEY (`id_grd`) REFERENCES `d_2_tingkat_emergensi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `gaji_pokok`
--
ALTER TABLE `gaji_pokok`
ADD CONSTRAINT `gaji_pokok_ibfk_1` FOREIGN KEY (`id_gol`) REFERENCES `a_2_kepegawaian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_emergensi`
--
ALTER TABLE `poin_emergensi`
ADD CONSTRAINT `poin_emergensi_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_emergensi_ibfk_2` FOREIGN KEY (`id_emer`) REFERENCES `emergency_index_c` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_ikik`
--
ALTER TABLE `poin_ikik`
ADD CONSTRAINT `poin_ikik_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_ikip`
--
ALTER TABLE `poin_ikip`
ADD CONSTRAINT `poin_ikip_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_kepegawaian`
--
ALTER TABLE `poin_kepegawaian`
ADD CONSTRAINT `poin_kepegawaian_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_kepegawaian_ibfk_2` FOREIGN KEY (`id_kpg`) REFERENCES `a_2_kepegawaian` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_masa_kerja`
--
ALTER TABLE `poin_masa_kerja`
ADD CONSTRAINT `poin_masa_kerja_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_masa_kerja_ibfk_2` FOREIGN KEY (`id_mskr`) REFERENCES `a_1_masa_kerja` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_pendidikan`
--
ALTER TABLE `poin_pendidikan`
ADD CONSTRAINT `poin_pendidikan_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_pendidikan_ibfk_2` FOREIGN KEY (`id_pend`) REFERENCES `b_1_pendidikan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_resiko`
--
ALTER TABLE `poin_resiko`
ADD CONSTRAINT `poin_resiko_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_resiko_ibfk_2` FOREIGN KEY (`id_res`) REFERENCES `risk_index_c` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_sertifikasi`
--
ALTER TABLE `poin_sertifikasi`
ADD CONSTRAINT `poin_sertifikasi_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_sertifikasi_ibfk_2` FOREIGN KEY (`id_sert`) REFERENCES `b_2_sertifikasi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `poin_struktural`
--
ALTER TABLE `poin_struktural`
ADD CONSTRAINT `poin_struktural_ibfk_1` FOREIGN KEY (`id_pgw`) REFERENCES `data_pegawai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `poin_struktural_ibfk_2` FOREIGN KEY (`id_struk`) REFERENCES `e_1_struktural` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `risk_index_c`
--
ALTER TABLE `risk_index_c`
ADD CONSTRAINT `risk_index_c_ibfk_1` FOREIGN KEY (`id_rsk`) REFERENCES `c_1_resiko` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_detail`
--
ALTER TABLE `user_detail`
ADD CONSTRAINT `user_detail_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
