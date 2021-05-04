-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2021 at 03:16 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE `pengelola` (
  `ID_Pengelola` int(11) NOT NULL,
  `Nama_Pengelola` varchar(50) NOT NULL,
  `Posisi_Pengelola` varchar(25) NOT NULL,
  `Email_Pengelola` varchar(20) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`ID_Pengelola`, `Nama_Pengelola`, `Posisi_Pengelola`, `Email_Pengelola`, `Password`) VALUES
(1, 'Huang Renjun', 'renjunhuang@gmail.com', 'Manager', '$2y$10$HItl8Bvmp.1U73aiEtFUveCzJzELTPOmbJ7pshVkGj.PTmyuMtV7S'),
(2, 'Na Jaemin', 'jaeminna@mail.com', 'HRD', '$2y$10$brK7Hauxyxh2DXtljawNcudVYo7y7Xfrp7NXA7f3QdAj5.PqlrbvC');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `ID_Pengunjung` int(11) NOT NULL,
  `Nama_Pengunjung` varchar(50) NOT NULL,
  `Email_Pengunjung` varchar(20) NOT NULL,
  `Domisili_Pengunjung` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review&saran`
--

CREATE TABLE `review&saran` (
  `ID_Reviewsaran` int(11) NOT NULL,
  `Isi_Saran` varchar(1024) NOT NULL,
  `Isi_Review` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengelolaan`
--

CREATE TABLE `tb_pengelolaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `domisili` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama tempat wisata` varchar(200) NOT NULL,
  `review` text NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengelolaan`
--

INSERT INTO `tb_pengelolaan` (`id`, `nama`, `domisili`, `email`, `nama tempat wisata`, `review`, `saran`) VALUES
(1, 'karina', 'nganjuk', 'karina@gmail.com', 'pinus nongko ijo', 'tempatnya asri dan udaranya segar', 'tolong lebih diperhatikan kebersihan toilet'),
(2, 'Raflyna', 'madiun', 'Raflyna004@gmail.com', 'waduk widas', 'udaranya sangat sejuk, banyak pilihan makanan yang dijual', 'saran saya fasilitas bermain anak bisa diperbaiki karena ada beberapa yang rusak, ini bisa membahayakan anak-anak'),
(4, 'Haikal', 'madiun', 'Haikal008@gmail.com', 'watu rumpuk', 'tempatnya bagus, terdapat tanaman yang beragam. banyak spot foto yang bisa digunakan', 'saya menjumpai sampah yang masih dibuang ditempat sembarangan, ini cukup mengganggu kenyamanan banyak pengunjung'),
(7, 'Resia', 'Kediri', 'Resia006@gmail.com', 'pinus nongko ijo', 'tempatnya sangat bagus, cocok untuk berfoto karena tempatnya yang masih alami', 'tempat ibadah seperti mushola kurang memadai, alat sholat yang disediakan tidak lengkap');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `ID_Tempatwisata` int(11) NOT NULL,
  `Nama_Tempatwisata` varchar(50) NOT NULL,
  `Lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`ID_Pengelola`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`ID_Pengunjung`);

--
-- Indexes for table `review&saran`
--
ALTER TABLE `review&saran`
  ADD PRIMARY KEY (`ID_Reviewsaran`);

--
-- Indexes for table `tb_pengelolaan`
--
ALTER TABLE `tb_pengelolaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`ID_Tempatwisata`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
  MODIFY `ID_Pengelola` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_pengelolaan`
--
ALTER TABLE `tb_pengelolaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
