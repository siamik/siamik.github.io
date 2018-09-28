-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 07, 2015 at 04:12 
-- Server version: 5.6.12
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database_siakad`
--
CREATE DATABASE IF NOT EXISTS `database_siakad` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database_siakad`;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nip_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(30) NOT NULL,
  PRIMARY KEY (`id_dosen`),
  UNIQUE KEY `nip dosen` (`nip_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nip_dosen`, `nama_dosen`) VALUES
(1, 1000110011, 'suhartono'),
(2, 1000110012, 'ririn'),
(3, 1000110013, 'irwan'),
(4, 1000110014, 'supriyono'),
(5, 1000110015, 'yaqin'),
(6, 1000110016, 'roro'),
(7, 1000110017, 'cahyo');

-- --------------------------------------------------------

--
-- Table structure for table `list_matkul`
--

CREATE TABLE IF NOT EXISTS `list_matkul` (
  `id_list` int(11) NOT NULL AUTO_INCREMENT,
  `nama_list` varchar(20) NOT NULL,
  `jam_list` varchar(20) NOT NULL,
  `sks_list` varchar(20) NOT NULL,
  `semester_list` int(2) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_ruang` int(11) NOT NULL,
  PRIMARY KEY (`id_list`,`id_dosen`,`id_ruang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `list_matkul`
--

INSERT INTO `list_matkul` (`id_list`, `nama_list`, `jam_list`, `sks_list`, `semester_list`, `id_dosen`, `id_ruang`) VALUES
(1, 'pemrograman Object', '12:00', '3', 0, 1, 0),
(3, 'pemrograman Object', '12:00', '3', 0, 4, 3),
(4, 'pemrograman Object', '12:00', '3', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(30) NOT NULL,
  `semester_mhs` int(11) NOT NULL,
  `nim_mhs` int(9) NOT NULL,
  `tgl_mhs` date DEFAULT NULL,
  `tempat_mhs` varchar(40) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  PRIMARY KEY (`id_mhs`,`id_dosen`),
  UNIQUE KEY `nim_mhs` (`nim_mhs`),
  KEY `id_dosen` (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nama_mhs`, `semester_mhs`, `nim_mhs`, `tgl_mhs`, `tempat_mhs`, `id_dosen`) VALUES
(1, 'bill', 1, 13650025, '2015-05-24', 'pasuruan', 1),
(2, 'tanthowi', 2, 13650026, '2015-05-24', 'pasuruan', 2),
(3, 'jauhari', 3, 13650027, '2015-05-24', 'pasuruan', 3),
(4, 'siti', 3, 13650028, '2015-05-24', 'rembang', 4),
(5, 'fitriyah', 4, 13650029, '2015-05-24', 'rembang', 5),
(6, 'ria', 3, 13650010, '2015-05-24', 'rembang', 6),
(7, 'btjsf', 3, 13650031, '2015-05-24', 'pasuruanrembang', 7);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `id_matkul` int(11) NOT NULL,
  `nama_matkul` varchar(20) NOT NULL,
  `jam_matkul` time NOT NULL,
  `sks_matkul` int(11) NOT NULL,
  `nilai_matkul` varchar(20) NOT NULL,
  `id_rg` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  PRIMARY KEY (`id_matkul`,`id_rg`,`id_dosen`,`id_mhs`),
  KEY `id_dosen` (`id_dosen`),
  KEY `id_mhs` (`id_mhs`),
  KEY `id_rg` (`id_rg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruang`
--

CREATE TABLE IF NOT EXISTS `ruang` (
  `id_rg` int(11) NOT NULL,
  `gedung_rg` varchar(8) NOT NULL,
  `nomer_rg` int(11) NOT NULL,
  `jam_rg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ruang`
--

INSERT INTO `ruang` (`id_rg`, `gedung_rg`, `nomer_rg`, `jam_rg`) VALUES
(1, 'B', 306, '2015-05-24 07:23:18'),
(2, 'B', 307, '2015-05-24 07:24:04'),
(3, 'B', 315, '2015-05-24 07:24:38'),
(4, 'B', 316, '2015-05-24 07:24:53'),
(5, 'B', 314, '2015-05-24 07:42:52'),
(6, 'B', 317, '2015-05-24 07:25:12'),
(7, 'B', 318, '2015-05-24 07:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `temp_matakuliah`
--

CREATE TABLE IF NOT EXISTS `temp_matakuliah` (
  `id_temp` int(11) NOT NULL,
  `nama_temp` varchar(30) NOT NULL,
  `jam_temp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sks_matkul` int(11) NOT NULL,
  `semester_temp` int(3) NOT NULL,
  `id_rg` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `id_mhs` int(11) NOT NULL,
  PRIMARY KEY (`id_temp`,`id_dosen`,`id_rg`),
  KEY `id_rg` (`id_rg`),
  KEY `id_dosen` (`id_dosen`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_matakuliah`
--

INSERT INTO `temp_matakuliah` (`id_temp`, `nama_temp`, `jam_temp`, `sks_matkul`, `semester_temp`, `id_rg`, `id_dosen`, `id_mhs`) VALUES
(1, 'matematika diskrit', '2015-05-24 10:54:48', 3, 1, 1, 1, 0),
(2, 'algoritma matrix', '2015-05-24 10:55:30', 3, 3, 2, 2, 0),
(3, 'statistik', '2015-05-24 10:55:55', 3, 5, 3, 3, 0),
(4, 'dasar2 pemrograman', '2015-05-24 10:56:11', 1, 2, 4, 4, 0),
(5, 'grafika komputer', '2015-05-24 10:56:28', 2, 4, 5, 5, 0),
(6, 'pbo', '2015-05-24 10:56:53', 3, 4, 6, 6, 0),
(7, 'database', '2015-05-24 10:57:09', 2, 3, 7, 7, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Constraints for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`),
  ADD CONSTRAINT `matakuliah_ibfk_2` FOREIGN KEY (`id_mhs`) REFERENCES `mahasiswa` (`id_mhs`),
  ADD CONSTRAINT `matakuliah_ibfk_3` FOREIGN KEY (`id_rg`) REFERENCES `ruang` (`id_rg`);

--
-- Constraints for table `temp_matakuliah`
--
ALTER TABLE `temp_matakuliah`
  ADD CONSTRAINT `temp_matakuliah_ibfk_1` FOREIGN KEY (`id_rg`) REFERENCES `ruang` (`id_rg`),
  ADD CONSTRAINT `temp_matakuliah_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
