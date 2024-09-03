-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Agu 2024 pada 17.02
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_contact`
--

CREATE TABLE `data_contact` (
  `id_contact` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `gender` char(1) NOT NULL,
  `pesan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_contact`
--

INSERT INTO `data_contact` (`id_contact`, `nama`, `nim`, `kelas`, `email`, `telp`, `gender`, `pesan`) VALUES
(1, 'fadilian risdianto', '123456787654321', 't3e', 'fadil@gmail.com', '0898765431234', 'L', 'oke'),
(2, 'fadil', '987656789', 't3e', 'fadil@gmail.com', '0865676543467', 'L', 'coba'),
(3, 'fadilian', '1234543212', 't3e', 'fadil123@gmail.com', '086543567652', 'L', 'coba lagi'),
(4, 'Fadilian Risdianto', '233140701111005', 'T3E', 'fadilian1124@student.ub.ac.id', '087701514226', 'L', 'Oke fiks'),
(5, 'Dewi', '45678762234', 'N1D', 'dewi@gmail.com', '089176543463', 'P', 'oke jadi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_contact`
--
ALTER TABLE `data_contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_contact`
--
ALTER TABLE `data_contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
