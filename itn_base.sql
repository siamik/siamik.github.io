-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2015 at 08:48 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itn_base`
--

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE IF NOT EXISTS `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `hari_jadwal` varchar(7) DEFAULT NULL,
  `jam_jadwal` timestamp NULL DEFAULT NULL,
  `kelas_id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`,`kelas_id_kelas`),
  KEY `fk_jadwal_kelas1` (`kelas_id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari_jadwal`, `jam_jadwal`, `kelas_id_kelas`) VALUES
(1, 'senin', '2015-04-06 13:30:00', 1),
(2, 'senin', '2015-04-06 16:00:00', 1),
(3, 'senin', '2015-04-06 19:20:00', 1),
(4, 'senin', '2015-04-06 21:00:00', 1),
(5, 'senin', '2015-04-06 22:30:00', 1),
(6, 'selasa', '2015-04-07 13:30:00', 1),
(7, 'selasa', '2015-04-07 16:00:00', 1),
(8, 'selasa', '2015-04-07 19:20:00', 1),
(9, 'selasa', '2015-04-17 21:00:00', 1),
(10, 'selasa', '2015-04-07 22:30:00', 1),
(11, 'rabu', '2015-04-08 13:30:00', 1),
(12, 'rabu', '2015-04-08 16:00:00', 1),
(13, 'rabu', '2015-04-08 19:20:00', 1),
(14, 'rabu', '2015-04-08 21:00:00', 1),
(15, 'rabu', '2015-04-08 22:30:00', 1),
(16, 'kamis', '2015-04-09 13:30:00', 1),
(17, 'kamis', '2015-04-09 16:00:00', 1),
(18, 'kamis', '2015-04-09 19:30:00', 1),
(19, 'kamis', '2015-04-09 21:00:00', 1),
(20, 'kamis', '2015-04-09 22:30:00', 1),
(21, 'jumat', '2015-04-10 13:30:00', 1),
(22, 'jumat', '2015-04-10 16:00:00', 1),
(23, 'jumat', '2015-04-10 20:20:00', 1),
(24, 'jumat', '2015-04-10 22:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nomer_kelas` varchar(45) DEFAULT NULL,
  `gedung_kelas` varchar(45) DEFAULT NULL,
  `kapasitas_kelas` varchar(45) DEFAULT NULL,
  `jurusan_kelas` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nomer_kelas`, `gedung_kelas`, `kapasitas_kelas`, `jurusan_kelas`) VALUES
(1, '307', 'B', '45', 'Teknik Informatika'),
(2, '308', 'B', '45', 'Teknik Informatika'),
(3, '309', 'B', '45', 'Teknik Informatika'),
(4, '310', 'B', '45', 'Teknik Informatika'),
(5, '311', 'B', '45', 'Teknik Informatika'),
(6, '311', 'B', '45', 'Teknik Informatika'),
(7, '312', 'B', '45', 'Teknik Informatika'),
(8, '313', 'B', '45', 'Teknik Informatika'),
(9, '314', 'B', '45', 'Teknik Informatika'),
(10, '315', 'B', '45', 'Teknik Informatika'),
(11, '316', 'B', '45', 'Teknik Informatika'),
(12, '317', 'B', '45', 'Teknik Informatika'),
(13, '318', 'B', '45', 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL,
  `nim_mhs` int(11) NOT NULL,
  `nip_dosen` int(11) NOT NULL,
  `password_login` varchar(45) NOT NULL,
  `profile_mhs_id_mhs` int(11) NOT NULL,
  `profile_mhs_jadwal_id_jadwal` int(11) NOT NULL,
  `profile_mhs_jadwal_kelas_id_kelas` int(11) NOT NULL,
  `profile_dosen_id_dosen` int(11) NOT NULL,
  `profile_dosen_jadwal_id_jadwal` int(11) NOT NULL,
  `profile_dosen_jadwal_kelas_id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_login`,`profile_mhs_id_mhs`,`profile_mhs_jadwal_id_jadwal`,`profile_mhs_jadwal_kelas_id_kelas`,`profile_dosen_id_dosen`,`profile_dosen_jadwal_id_jadwal`,`profile_dosen_jadwal_kelas_id_kelas`),
  UNIQUE KEY `nim_mhs_UNIQUE` (`nim_mhs`),
  UNIQUE KEY `nip_dosen_UNIQUE` (`nip_dosen`),
  KEY `fk_login_profile_mhs1` (`profile_mhs_id_mhs`,`profile_mhs_jadwal_id_jadwal`,`profile_mhs_jadwal_kelas_id_kelas`),
  KEY `fk_login_profile_dosen1` (`profile_dosen_id_dosen`,`profile_dosen_jadwal_id_jadwal`,`profile_dosen_jadwal_kelas_id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nim_mhs`, `nip_dosen`, `password_login`, `profile_mhs_id_mhs`, `profile_mhs_jadwal_id_jadwal`, `profile_mhs_jadwal_kelas_id_kelas`, `profile_dosen_id_dosen`, `profile_dosen_jadwal_id_jadwal`, `profile_dosen_jadwal_kelas_id_kelas`) VALUES
(1, 13650001, 111, 'password1', 1, 1, 1, 1111, 1, 1),
(2, 13650002, 112, 'password2', 2, 1, 1, 1112, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `matkul`
--

CREATE TABLE IF NOT EXISTS `matkul` (
  `id_matkul` int(11) NOT NULL,
  `kode_matkul` tinyint(4) NOT NULL,
  `sks_matkul` tinyint(4) NOT NULL,
  `semester_matkul` tinyint(4) NOT NULL,
  `nip_dosen` int(11) NOT NULL,
  `jadwal_id_jadwal` int(11) NOT NULL,
  `jadwal_kelas_id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_matkul`,`jadwal_id_jadwal`,`jadwal_kelas_id_kelas`),
  UNIQUE KEY `nip_dosen_UNIQUE` (`nip_dosen`),
  UNIQUE KEY `kode_matkul_UNIQUE` (`kode_matkul`),
  KEY `fk_matkul_jadwal1` (`jadwal_id_jadwal`,`jadwal_kelas_id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matkul`
--

INSERT INTO `matkul` (`id_matkul`, `kode_matkul`, `sks_matkul`, `semester_matkul`, `nip_dosen`, `jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) VALUES
(1, 1, 1, 1, 111, 1, 1),
(2, 2, 2, 2, 112, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_dosen`
--

CREATE TABLE IF NOT EXISTS `profile_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nip_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  `asisten_dosen` varchar(30) NOT NULL,
  `jadwal_id_jadwal` int(11) NOT NULL,
  `jadwal_kelas_id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_dosen`,`jadwal_id_jadwal`,`jadwal_kelas_id_kelas`),
  UNIQUE KEY `nip_dosen_UNIQUE` (`nip_dosen`),
  KEY `fk_profile_dosen_jadwal1` (`jadwal_id_jadwal`,`jadwal_kelas_id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_dosen`
--

INSERT INTO `profile_dosen` (`id_dosen`, `nip_dosen`, `nama_dosen`, `asisten_dosen`, `jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) VALUES
(1111, 111, 'M Medina Almas P.hD', '', 1, 1),
(1112, 112, 'Dr. Bill Tanthowi Jauhari', 'Siti Fitriyah M.Kom', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_mhs`
--

CREATE TABLE IF NOT EXISTS `profile_mhs` (
  `id_mhs` int(11) NOT NULL,
  `nim_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(45) NOT NULL,
  `angkatan_mhs` tinyint(4) NOT NULL,
  `tempat_lahir_mhs` varchar(30) NOT NULL,
  `tanggal_lahir_mhs` date NOT NULL,
  `asal_kota_mhs` varchar(30) DEFAULT NULL,
  `nomer_telphone_mhs` int(11) DEFAULT NULL,
  `jadwal_id_jadwal` int(11) NOT NULL,
  `jadwal_kelas_id_kelas` int(11) NOT NULL,
  PRIMARY KEY (`id_mhs`,`jadwal_id_jadwal`,`jadwal_kelas_id_kelas`),
  UNIQUE KEY `nim_mhs_UNIQUE` (`nim_mhs`),
  KEY `fk_profile_mhs_jadwal1` (`jadwal_id_jadwal`,`jadwal_kelas_id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_mhs`
--

INSERT INTO `profile_mhs` (`id_mhs`, `nim_mhs`, `nama_mhs`, `angkatan_mhs`, `tempat_lahir_mhs`, `tanggal_lahir_mhs`, `asal_kota_mhs`, `nomer_telphone_mhs`, `jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) VALUES
(1, 13650001, 'Innamul Hassan', 127, 'Aceh', '1995-01-01', 'Aceh', 85123123, 1, 1),
(2, 13650002, 'M Ikbal Muzzaki', 127, 'Lumajang', '1994-02-02', 'Lumajang', 87234234, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `profile_ortu`
--

CREATE TABLE IF NOT EXISTS `profile_ortu` (
  `id_ortu` int(11) NOT NULL,
  `nama_ortu` varchar(45) DEFAULT NULL,
  `alamat_ortu` varchar(45) DEFAULT NULL,
  `kota_ortu` varchar(45) DEFAULT NULL,
  `propinsi_ortu` varchar(45) DEFAULT NULL,
  `nomer_telphone_ortu` varchar(45) DEFAULT NULL,
  `profile_mhs_id_mhs` int(11) NOT NULL,
  PRIMARY KEY (`id_ortu`,`profile_mhs_id_mhs`),
  KEY `fk_profile_ortu_profile_mhs` (`profile_mhs_id_mhs`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile_ortu`
--

INSERT INTO `profile_ortu` (`id_ortu`, `nama_ortu`, `alamat_ortu`, `kota_ortu`, `propinsi_ortu`, `nomer_telphone_ortu`, `profile_mhs_id_mhs`) VALUES
(1, 'Ainatul Mardhiyah M.Cs', 'Malang', 'Malang', 'Jawa Timur', '911', 1),
(2, 'Isnaeni Agustin', 'Lamongan', 'Lamongan', 'Jawa Timur', '123', 2);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `fk_jadwal_kelas1` FOREIGN KEY (`kelas_id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_profile_dosen1` FOREIGN KEY (`profile_dosen_id_dosen`, `profile_dosen_jadwal_id_jadwal`, `profile_dosen_jadwal_kelas_id_kelas`) REFERENCES `profile_dosen` (`id_dosen`, `jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_login_profile_mhs1` FOREIGN KEY (`profile_mhs_id_mhs`, `profile_mhs_jadwal_id_jadwal`, `profile_mhs_jadwal_kelas_id_kelas`) REFERENCES `profile_mhs` (`id_mhs`, `jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `matkul`
--
ALTER TABLE `matkul`
  ADD CONSTRAINT `fk_matkul_jadwal1` FOREIGN KEY (`jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) REFERENCES `jadwal` (`id_jadwal`, `kelas_id_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profile_dosen`
--
ALTER TABLE `profile_dosen`
  ADD CONSTRAINT `fk_profile_dosen_jadwal1` FOREIGN KEY (`jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) REFERENCES `jadwal` (`id_jadwal`, `kelas_id_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profile_mhs`
--
ALTER TABLE `profile_mhs`
  ADD CONSTRAINT `fk_profile_mhs_jadwal1` FOREIGN KEY (`jadwal_id_jadwal`, `jadwal_kelas_id_kelas`) REFERENCES `jadwal` (`id_jadwal`, `kelas_id_kelas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profile_ortu`
--
ALTER TABLE `profile_ortu`
  ADD CONSTRAINT `fk_profile_ortu_profile_mhs` FOREIGN KEY (`profile_mhs_id_mhs`) REFERENCES `profile_mhs` (`id_mhs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
