-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jul 2025 pada 16.35
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
-- Database: `inventori_salwa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` double NOT NULL,
  `image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `stock`, `price`, `image_url`) VALUES
(42, 'Sepatu Sneakers Pria Hitam', 25, 250000, 'https://contents.mediadecathlon.com/p2683414/k$d7e5dd67b4a151741852024d5e27babb/sepatu-sneakers-pria-cj80-hitam-decathlon-8902106.jpg?f=1920x0&format=auto'),
(43, 'Sepatu Slip On Wanita Putih', 30, 200000, 'https://images-cdn.ubuy.co.id/6810b7904a24bab7ea0552af-no-boundaries-twin-gore-canvas-slip-on.jpg'),
(44, 'Sepatu Running Adidas Wanita', 15, 450000, 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full/catalog-image/MTA-179959127/adidas_adidas_women_running_response_super_shoes_sepatu_lari_wanita_-ji4639-_full04_bedgd6al.jpeg'),
(45, 'Sepatu Kulit Formal Pria', 10, 320000, 'https://down-id.img.susercontent.com/file/e18483a9d1cad04f79b512c4e53cb09d'),
(46, 'Sepatu Kanvas Casual', 20, 180000, 'https://down-id.img.susercontent.com/file/id-11134207-7rasd-m0pfm3gw1bnb61');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$CzZdBxuJDYWk6Mzn4HoNi.ZDt4nx49a8HY9fb2.avNDgrUsdHBhSG'),
(2, '', '', '$2y$10$dhEIksSwItBZiunQqTTVQ.uNwfYBnqaNoJ4oPkQvdYZ4oiTEyZF0m'),
(20, 'renal', 'admin2@gmail.com', '$2y$10$Y7dbbCw5LjG4CcefafeSn.PfuTwLS1v0Oj1WQHZCd1J0sBRm85cgW'),
(21, 'friska', 'admin3@gmail.com', '$2y$10$/Kim7A0kyEZNT2jgURldxu8guPKinK.yXLAAmLvWgD8EvXwIbtaFG'),
(22, 'syifa', 'admin5@gmail.com', '$2y$10$n0WjMumqxwB2zPX21swGfOMqmMY3YsQxta.niQ5WPeueYB3fK7xDK'),
(23, 'salwa', 'admin6@gmail.com', '$2y$10$GmqdIh1WHGNMQl/WY0UUIusDdOPixmbJVHH.g4XbOyMBFmrsYKfZm');

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
