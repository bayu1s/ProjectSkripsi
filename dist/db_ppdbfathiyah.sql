-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2022 at 01:12 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ppdbfathiyah`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id_staff` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Jenis_kel` varchar(10) NOT NULL,
  `Tempat_lahir` varchar(30) NOT NULL,
  `Tgl_lahir` date NOT NULL,
  `Alamat` text NOT NULL,
  `Jabatan` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id_staff`, `Nama`, `Jenis_kel`, `Tempat_lahir`, `Tgl_lahir`, `Alamat`, `Jabatan`, `Username`, `Password`) VALUES
('S001', 'Bayu iswahyudi', 'Laki-laki', 'Kuningan', '1999-07-07', 'Mampang prapatan', 'Ketua Yayasan', 'bayuis', '123'),
('S002', 'Lemon', 'Laki-laki', 'Cirebon', '2000-07-13', 'jambar', 'Admin', 'Admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_test`
--

CREATE TABLE `hasil_test` (
  `Id_tes` varchar(5) NOT NULL,
  `Id_pendaftar` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tes_mtk` varchar(5) NOT NULL,
  `Tes_bhsindo` varchar(5) NOT NULL,
  `Tes_bhsinggris` varchar(5) NOT NULL,
  `Tes_ilmuKeagamaan` varchar(5) NOT NULL,
  `Jumlah` varchar(5) NOT NULL,
  `Rata_rata` varchar(5) NOT NULL,
  `Keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_test`
--

INSERT INTO `hasil_test` (`Id_tes`, `Id_pendaftar`, `Nama`, `Tes_mtk`, `Tes_bhsindo`, `Tes_bhsinggris`, `Tes_ilmuKeagamaan`, `Jumlah`, `Rata_rata`, `Keterangan`) VALUES
('T0002', 'P0003', 'hilmi rohmatikasari', '90', '88', '78', '89', '345', '86', 'LULUS'),
('T0003', 'P0005', 'efa hutabarat', '87', '89', '78', '88', '342', '85', 'LULUS'),
('T0004', 'P0004', 'Bayu iswahyudi van houten siho', '10', '10', '10', '20', '50', '12', 'TIDAK LULUS');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `Id_bayar` varchar(5) NOT NULL,
  `Id_pdb` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tgl_transaksi` date NOT NULL,
  `Uang_gedung` varchar(15) NOT NULL,
  `Uang_spp` varchar(15) NOT NULL,
  `Uang_seragam` varchar(15) NOT NULL,
  `Uang_buku` varchar(15) NOT NULL,
  `Jumlah` varchar(20) NOT NULL,
  `KetBayar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`Id_bayar`, `Id_pdb`, `Nama`, `Tgl_transaksi`, `Uang_gedung`, `Uang_spp`, `Uang_seragam`, `Uang_buku`, `Jumlah`, `KetBayar`) VALUES
('B0001', 'SB01', 'hilmi rohmatikasari', '2022-07-28', '8000000', '9000000', '5000000', '9000000', '31000000', 'LUNAS'),
('B0002', 'SB02', 'efa hutabarat', '2022-07-28', '9000000', '9000000', '9000000', '9000000', '36000000', 'LUNAS');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `Id_pendaftar` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tempat_lahir` varchar(30) NOT NULL,
  `Tgl_lahir` date NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `Umur` varchar(5) NOT NULL,
  `Jenis_kelamin` varchar(10) NOT NULL,
  `Tahun_daftar` varchar(4) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Nama_ayah` varchar(30) NOT NULL,
  `Nama_ibu` varchar(30) NOT NULL,
  `Pek_ayah` varchar(20) NOT NULL,
  `Pek_ibu` varchar(20) NOT NULL,
  `No_telp` varchar(13) NOT NULL,
  `Alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftaran`
--

INSERT INTO `pendaftaran` (`Id_pendaftar`, `Nama`, `Tempat_lahir`, `Tgl_lahir`, `Agama`, `Umur`, `Jenis_kelamin`, `Tahun_daftar`, `Jurusan`, `Nama_ayah`, `Nama_ibu`, `Pek_ayah`, `Pek_ibu`, `No_telp`, `Alamat`) VALUES
('P0003', 'hilmi rohmatikasari', 'kuninganku', '2022-07-01', 'Islam', '14', 'Perempuan', '2022', 'IPS ', 'rossi saepuddin', 'romlah', 'PNS', 'Ibu rumah tangga', '089652748273', 'Jl kemang utara no 3 rt o6 rt09\nKec Pancoran'),
('P0004', 'Bayu iswahyudi van houten siho', 'kuningan', '1999-07-07', 'Islam', '22', 'Laki-laki', '2022', 'IPS ', 'wahyu', 'mulyanah', 'petani', 'ibu rumah tangga', '0895330891653', 'jl mampang prapatan 18 no 3 rt 05 rw 06\nkec pancoran\njakarta selatan'),
('P0005', 'efa hutabarat', 'ciracas', '1998-07-10', 'Kristen', '14', 'Perempuan', '2022', 'IPA', 'tigreal', 'vexana', 'Guru', 'Ibu rumah tangga', '089726382721', 'Jl ciracas no 7 rt 08 rw 11 \nkec kramat jati jakarta timur');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `Id_pdb` varchar(5) NOT NULL,
  `Id_pendaftar` varchar(5) NOT NULL,
  `Id_tes` varchar(5) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tempat_lahir` varchar(30) NOT NULL,
  `Umur` varchar(5) NOT NULL,
  `Jenis_kelamin` varchar(10) NOT NULL,
  `Agama` varchar(10) NOT NULL,
  `No_telp` varchar(13) NOT NULL,
  `Tahun_daftar` varchar(4) NOT NULL,
  `Keterangan` varchar(15) NOT NULL,
  `Jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa_baru`
--

INSERT INTO `siswa_baru` (`Id_pdb`, `Id_pendaftar`, `Id_tes`, `Nama`, `Tempat_lahir`, `Umur`, `Jenis_kelamin`, `Agama`, `No_telp`, `Tahun_daftar`, `Keterangan`, `Jurusan`) VALUES
('SB01', 'P0003', 'T0002', 'hilmi rohmatikasari', 'kuninganku', '14', 'Perempuan', 'Islam', '089652748273', '2022', 'LULUS', 'IPS '),
('SB02', 'P0005', 'T0003', 'efa hutabarat', 'ciracas', '14', 'Perempuan', 'Kristen', '089726382721', '2022', 'LULUS', 'IPA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id_staff`);

--
-- Indexes for table `hasil_test`
--
ALTER TABLE `hasil_test`
  ADD PRIMARY KEY (`Id_tes`),
  ADD KEY `id_pendaftar` (`Id_pendaftar`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`Id_bayar`),
  ADD KEY `Id_pdb` (`Id_pdb`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`Id_pendaftar`);

--
-- Indexes for table `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`Id_pdb`),
  ADD UNIQUE KEY `Id_pendaftar` (`Id_pendaftar`),
  ADD UNIQUE KEY `Id_tes_2` (`Id_tes`),
  ADD KEY `Id_tes` (`Id_tes`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hasil_test`
--
ALTER TABLE `hasil_test`
  ADD CONSTRAINT `hasil_test_ibfk_1` FOREIGN KEY (`Id_pendaftar`) REFERENCES `pendaftaran` (`Id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`Id_pdb`) REFERENCES `siswa_baru` (`Id_pdb`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD CONSTRAINT `siswa_baru_ibfk_1` FOREIGN KEY (`Id_tes`) REFERENCES `hasil_test` (`Id_tes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_baru_ibfk_2` FOREIGN KEY (`Id_pendaftar`) REFERENCES `pendaftaran` (`Id_pendaftar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
