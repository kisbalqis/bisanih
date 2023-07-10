-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 14.28
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `nama_barang`, `harga_jual`, `harga_beli`, `stock`, `createdAt`, `updatedAt`) VALUES
(1, 'Baju', 23000, 13000, 18, NULL, NULL),
(2, 'Celana', 42000, 17000, 16, NULL, NULL),
(10, 'meja', 1000, 2000, 3, '2023-07-06 08:30:25', '2023-07-06 08:30:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `createdAt`, `updatedAt`) VALUES
(1, 'balqis', 'balqis@gmail.com', '$2b$10$nOBLS2thgfEFZMNNEVhtSO./4EFpaPh.QRrPTowBwS2fpjxLDB.M6', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJiYWxxaXMiLCJlbWFpbCI6ImJhbHFpc0BnbWFpbC5jb20iLCJpYXQiOjE2ODg2MjY4MTYsImV4cCI6MTY4ODcxMzIxNn0.1LjT5BVDrQZw6veDTOCwHD5jiiyqk0ewyvc6dDQMB74', '2023-07-05 05:56:02', '2023-07-06 07:00:16'),
(2, 'dika', 'dika@gmail.com', '$2b$10$f/BYds0idzzYc.46BPg6KeRus.LJliNjr2Azq2TfXyvmr.gEmHj/i', NULL, '2023-07-06 06:52:43', '2023-07-06 06:53:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
