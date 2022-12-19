-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 18, 2022 at 07:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `411192094_store`
--
CREATE DATABASE IF NOT EXISTS `411192094_store` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `411192094_store`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_barang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_barang` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok_barang` int(11) DEFAULT NULL,
  `harga_barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `deskripsi`, `stok_barang`, `harga_barang`) VALUES
(4, 'B3542', 'Headshet Gaming', 'Untuk game lebih seru', 100, 150000),
(5, 'B4385', 'Mouse', 'mouse wireless', 0, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2022_11_07_094807_create_barang_table', 1),
(4, '2022_11_07_122422_create_pelanggan_table', 1),
(5, '2022_11_07_184207_create_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_pelanggan` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pelanggan` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_kota` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telepon` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `kode_pelanggan`, `nama_pelanggan`, `alamat`, `nama_kota`, `no_telepon`) VALUES
(1, 'P440', 'Aditya Dewa Negara', 'jalan merah no 22', 'Semarang', '087111222213'),
(3, 'P593', 'Aditya Dwi Aprianto', 'jalan bambu no 10', 'Jakarta', '081222321129');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_penjualan` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pelanggan` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_barang` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `harga_barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `no_penjualan`, `tanggal`, `kode_pelanggan`, `kode_barang`, `jumlah_barang`, `harga_barang`) VALUES
(4, 'J1749', '2022-12-16', 'P440', 'B3542', 2, 200000),
(5, 'J2119', '2022-12-15', 'P440', 'B3542', 2, 200000),
(6, 'J7668', '2022-12-15', 'P440', 'B3542', 12, 1200000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `dbakademik_namamhs`
--
CREATE DATABASE IF NOT EXISTS `dbakademik_namamhs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbakademik_namamhs`;

-- --------------------------------------------------------

--
-- Table structure for table `Dosen`
--

CREATE TABLE `Dosen` (
  `nidn` int(4) NOT NULL,
  `namados` varchar(100) NOT NULL,
  `alamatdos` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Dosen`
--

INSERT INTO `Dosen` (`nidn`, `namados`, `alamatdos`) VALUES
(1234, 'Udin', 'Jl. Gajah 09'),
(2345, 'Unyil', 'Jl. Peyek 4');

-- --------------------------------------------------------

--
-- Table structure for table `Mahasiswa`
--

CREATE TABLE `Mahasiswa` (
  `nim` varchar(11) NOT NULL,
  `namamhs` varchar(100) NOT NULL,
  `alamatmhs` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Mahasiswa`
--

INSERT INTO `Mahasiswa` (`nim`, `namamhs`, `alamatmhs`) VALUES
('10.45', 'Budi', 'Jl. Cepat 7'),
('11.34', 'Ari', 'Jl. Santai 5');

-- --------------------------------------------------------

--
-- Table structure for table `Mapel`
--

CREATE TABLE `Mapel` (
  `kd_mk` varchar(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `nidn` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Mapel`
--

INSERT INTO `Mapel` (`kd_mk`, `kelas`, `nama_mk`, `nidn`) VALUES
('DB.1', 'melati', 'Database', 2345),
('WL.1', 'mawar', 'Web Advanced', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `Nilai`
--

CREATE TABLE `Nilai` (
  `nim` varchar(11) NOT NULL,
  `kd_mk` varchar(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Nilai`
--

INSERT INTO `Nilai` (`nim`, `kd_mk`, `nilai`) VALUES
('11.34', 'WL.1', 90),
('10.45', 'DB.1', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Dosen`
--
ALTER TABLE `Dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `Mahasiswa`
--
ALTER TABLE `Mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `Mapel`
--
ALTER TABLE `Mapel`
  ADD PRIMARY KEY (`kd_mk`),
  ADD KEY `nidn` (`nidn`);

--
-- Indexes for table `Nilai`
--
ALTER TABLE `Nilai`
  ADD KEY `nim` (`nim`),
  ADD KEY `kd_mk` (`kd_mk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Mapel`
--
ALTER TABLE `Mapel`
  ADD CONSTRAINT `Mapel_ibfk_1` FOREIGN KEY (`nidn`) REFERENCES `Dosen` (`nidn`);

--
-- Constraints for table `Nilai`
--
ALTER TABLE `Nilai`
  ADD CONSTRAINT `Nilai_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `Mahasiswa` (`nim`),
  ADD CONSTRAINT `Nilai_ibfk_2` FOREIGN KEY (`kd_mk`) REFERENCES `Mapel` (`kd_mk`);
--
-- Database: `db_fullstack`
--
CREATE DATABASE IF NOT EXISTS `db_fullstack` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_fullstack`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fakultas` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `nama`, `slug`, `prodi`, `fakultas`, `created_at`, `updated_at`) VALUES
(2, 'Aditya Dwi Aprianto', 'aditya-dwi-aprianto', 'Sistem Informasi', 'Ilmu Komputer', '2022-10-25 06:55:02', '2022-10-25 06:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_11_125100_create_posts_table', 1),
(6, '2022_10_17_131602_create_mahasiswas_table', 1),
(7, '2022_10_17_140023_create_mahasiswas_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Mahasiswa Kreatif', '<p>Membuat website</p>', 'mahasiswa-kreatif', 1, '2022-10-17 07:38:52', '2022-10-17 07:38:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_recruitmentSDM`
--
CREATE DATABASE IF NOT EXISTS `db_recruitmentSDM` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_recruitmentSDM`;

-- --------------------------------------------------------

--
-- Table structure for table `calonKaryawan`
--

CREATE TABLE `calonKaryawan` (
  `id` char(6) NOT NULL,
  `namaLengkapKandidat` varchar(100) NOT NULL,
  `emailKandidat` varchar(100) NOT NULL,
  `agamaKandidat` varchar(100) NOT NULL,
  `fotoKandidat` varchar(100) DEFAULT NULL,
  `statusKandidat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calonKaryawan`
--

INSERT INTO `calonKaryawan` (`id`, `namaLengkapKandidat`, `emailKandidat`, `agamaKandidat`, `fotoKandidat`, `statusKandidat`) VALUES
('KD0001', 'Aditya Dwi Aprianto', 'aditya@gmail.com', 'Kristen Protestan', 'adit.jpg', 'Diproses'),
('KD0002', 'Redy Septyanto', 'redy@gmail.com', 'Kristen Protestan', 'redy.jpg', 'Diproses'),
('KD0003', 'Niko Sembiring', 'niko@gmail.com', 'Kristen Protestan', 'niko.jpg', 'Diproses'),
('KD0004', 'Stefanus Apriliyanto P', 'stefanus@gmail.com', 'Kristen Protestan', 'stefanus.jpg', 'Belum Diproses'),
('KD0005', 'Adama Gusta C', 'adama@gmail.com', 'Kristen Protestan', 'adama.jpg', 'Ditolak'),
('KD0006', 'Maya Arinas', 'maya@gmail.com', 'Kristen Protestan', 'maya.jpg', 'Belum Diproses'),
('KD0007', 'Meghan Levana', 'meghan@gmail.com', 'Kristen Protestan', 'meghan.jpg', 'Belum Diproses'),
('KD0008', 'Stella Hambali', 'stella@gmail.com', 'Kristen Protestan', 'katholik.jpg', 'Belum Diproses');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lowonganKerja`
--

CREATE TABLE `lowonganKerja` (
  `idLoker` char(6) NOT NULL,
  `namaLoker` varchar(20) NOT NULL,
  `bagianLoker` varchar(20) NOT NULL,
  `gambarLoker` varchar(20) DEFAULT NULL,
  `deskripsiLoker` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_11_125100_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Adit', '<p>Adit ganteng banget</p>', 'adit', 1, '2022-10-11 06:34:12', '2022-10-11 06:34:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calonKaryawan`
--
ALTER TABLE `calonKaryawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `lowonganKerja`
--
ALTER TABLE `lowonganKerja`
  ADD PRIMARY KEY (`idLoker`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `db_rekrutmen`
--
CREATE DATABASE IF NOT EXISTS `db_rekrutmen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_rekrutmen`;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `id_kandidat` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nama_panggilan` varchar(20) DEFAULT NULL,
  `nohp` bigint(20) NOT NULL,
  `agama` set('Kristen Protestan','Kristen Katolik','Islam','Hindu','Buddha','Konghucu') NOT NULL DEFAULT '',
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` int(2) DEFAULT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `status_pernikahan` varchar(20) DEFAULT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `universitas` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `ex_kry_penabur` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat_ktp` varchar(255) DEFAULT NULL,
  `alamat_domisili` varchar(255) DEFAULT NULL,
  `status_tempattinggal` varchar(20) DEFAULT NULL,
  `anggota_gereja` varchar(100) DEFAULT NULL,
  `nik_penabur` int(11) DEFAULT NULL,
  `administrasi_ok` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id_kandidat`, `id_role`, `nama_lengkap`, `nama_panggilan`, `nohp`, `agama`, `tempat_lahir`, `tanggal_lahir`, `usia`, `jenis_kelamin`, `status_pernikahan`, `pendidikan_terakhir`, `universitas`, `jurusan`, `ex_kry_penabur`, `email`, `password`, `alamat_ktp`, `alamat_domisili`, `status_tempattinggal`, `anggota_gereja`, `nik_penabur`, `administrasi_ok`) VALUES
(1221046, 3, 'Aditya Dwi Aprianto', 'Adit', 87823039848, 'Kristen Protestan', 'Grobogan', '2001-04-02', 21, 'L', 'Belum Menikah', 'S1', 'Universitas Dian Nusantara', 'Teknik Informatika', 'Tidak', 'aditya@gmail.com', '$2y$10$CV62W4AlRm1HfMJKhEd.OeDlRgWvguQ68Kj/1sMrW9pfgsW0T6.qy', 'Dusun Jangkung RT.07, RW.02, Desa Cingkrong, Kecamatan Purwodadi, Kabupaten Grobogan, Provinsi Jawa Tengah, Negara Indonesia', 'Jalan U no 26b, Kelurahan Kemanggisan, Kecamatan Palmerah, Kabupaten Jakarta Barat, Provinsi DKI Jakarta, Negara Indonesia', 'Sewa', 'GKJ Purwodadi', NULL, NULL),
(1221560, 3, 'Stefanus Apriliyanto Putro', NULL, 85744132980, 'Kristen Protestan', NULL, '1996-04-15', 26, 'L', NULL, 'S1', 'Universitas Mercu Buana', 'Desain Produk', 'Tidak', 'stefanus@gmail.com', '$2y$10$gFzjlkgm2bUHlEPTCgVcP.kyhNeelIAkWxhQLBXJry60I.ZvpeNkW', NULL, NULL, NULL, NULL, NULL, NULL),
(1222159, 3, 'Adama Gusta Chrisnaldi', 'Adam', 89224570800, 'Kristen Protestan', 'Wonosobo', '1998-08-01', 24, 'L', 'Sudah Menikah', 'S1', 'Universitas Kristen Satya Wacana', 'Ilmu Komunikasi', 'Tidak', 'adamagusta@gmail.com', '$2y$10$62cNv81OuAzDrJBnL7AAne9Htu8eELzbA2Cf93fMWgRGNSByyuFoe', 'Arab', 'Burkinafasho', 'Sewa', 'GKI Wonosobo', NULL, NULL),
(1225799, 3, 'Adama Gusta Chrisnaldi', NULL, 89333456789, 'Kristen Protestan', NULL, '1998-08-01', 24, 'L', NULL, 'S1', 'Universitas Kristen Satya Wacana', 'Ilmu Komunikasi', 'Tidak', 'adama@gmail.com', '$2y$10$Hgq/ZJzcaee5UR.Sk7e55u9R0pMStAkTT4gQCErL/c/0u9m9Nk.BS', NULL, NULL, NULL, NULL, NULL, NULL),
(1226877, 3, 'Meghan Levana Efifani', NULL, 82321222987, 'Kristen Protestan', NULL, '1997-07-22', 25, 'P', NULL, 'S1', 'Universitas Multimedia Nusantara Jakarta', 'Ilmu Komunikasi', 'Tidak', 'meghanlevana@gmail.com', '$2y$10$MgLGJ6P1e2rf0WN.EWdYuOxUZEdRlbPBUGeRHLML42Q0FK52lynyK', NULL, NULL, NULL, NULL, NULL, NULL),
(1227283, 3, 'Niko Mireta Milala', NULL, 88123345789, 'Kristen Protestan', NULL, '1995-04-04', 27, 'L', NULL, 'S1', 'Universitas Bina Nusantara', 'Teknik Informatika', 'Tidak', 'niko@gmail.com', '$2y$10$/OqUh7tYC/CqNJqhXjnZV.liaSGIWqe13AcANkvrwQxAELWePHfIO', NULL, NULL, NULL, NULL, NULL, NULL),
(1229165, 3, 'Venny Olivia', NULL, 89822122567, 'Kristen Protestan', NULL, '1991-06-02', 31, 'P', NULL, 'S1', 'Sekolah Tinggi Bahasa Asing IEC Jakarta', 'Manajemen Komunikasi', 'Tidak', 'venny@gmail.com', '$2y$10$MR9aZPPyvpr83gdCVAdMf.Kh.lOsWcjb7XS8ApF909RgOSGnKsYNK', NULL, NULL, NULL, NULL, NULL, NULL),
(1229985, 3, 'Redy Septyanto', NULL, 81456789009, 'Kristen Protestan', NULL, '1994-09-11', 28, 'L', NULL, 'S1', 'Universitas Mercu Buana', 'Sistem Informasi', 'Tidak', 'redy@gmail.com', '$2y$10$8CbWaZTL34bZDjKrkDrnuObojXQv2sPt1I9B0s/D//Pg15lYHR/R6', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_anak`
--

CREATE TABLE `kandidat_anak` (
  `id_anak` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `tanggal_nikah` date DEFAULT NULL,
  `anak_nama` varchar(100) DEFAULT NULL,
  `anak_tempat_lahir` varchar(50) DEFAULT NULL,
  `anak_tgl_lahir` date DEFAULT NULL,
  `anak_pendidikan` varchar(20) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_anak`
--

INSERT INTO `kandidat_anak` (`id_anak`, `id_kandidat`, `tanggal_nikah`, `anak_nama`, `anak_tempat_lahir`, `anak_tgl_lahir`, `anak_pendidikan`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_keluarga`
--

CREATE TABLE `kandidat_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `keluarga_nama` varchar(100) DEFAULT NULL,
  `keluarga_hubungan` varchar(50) DEFAULT NULL,
  `keluarga_tgl_lahir` date DEFAULT NULL,
  `keluarga_wa` bigint(20) DEFAULT NULL,
  `keluarga_pekerjaan` varchar(50) DEFAULT NULL,
  `keluarga_alamat` varchar(255) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_keluarga`
--

INSERT INTO `kandidat_keluarga` (`id_keluarga`, `id_kandidat`, `keluarga_nama`, `keluarga_hubungan`, `keluarga_tgl_lahir`, `keluarga_wa`, `keluarga_pekerjaan`, `keluarga_alamat`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_kesehatan`
--

CREATE TABLE `kandidat_kesehatan` (
  `id_kesehatan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `gol_darah` varchar(10) DEFAULT NULL,
  `berat_badan` varchar(10) DEFAULT NULL,
  `tinggi_badan` varchar(10) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_kesehatan`
--

INSERT INTO `kandidat_kesehatan` (`id_kesehatan`, `id_kandidat`, `gol_darah`, `berat_badan`, `tinggi_badan`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_lampiran`
--

CREATE TABLE `kandidat_lampiran` (
  `id_lampiran` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `pas_photo` varchar(100) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `file_ktp` varchar(100) DEFAULT NULL,
  `no_npwp` varchar(20) DEFAULT NULL,
  `file_npwp` varchar(100) DEFAULT NULL,
  `no_kk` varchar(16) DEFAULT NULL,
  `file_kk` varchar(100) DEFAULT NULL,
  `akta_lahir` varchar(100) DEFAULT NULL,
  `surat_baptis` varchar(100) DEFAULT NULL,
  `cv` varchar(100) DEFAULT NULL,
  `rek_bca` varchar(100) DEFAULT NULL,
  `kandidatid_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_lampiran`
--

INSERT INTO `kandidat_lampiran` (`id_lampiran`, `id_kandidat`, `pas_photo`, `no_ktp`, `file_ktp`, `no_npwp`, `file_npwp`, `no_kk`, `file_kk`, `akta_lahir`, `surat_baptis`, `cv`, `rek_bca`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_organisasi`
--

CREATE TABLE `kandidat_organisasi` (
  `id_organisasi` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `nama_organisasi` varchar(100) DEFAULT NULL,
  `tahun_mulai` date DEFAULT NULL,
  `tahun_akhir` date DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_organisasi`
--

INSERT INTO `kandidat_organisasi` (`id_organisasi`, `id_kandidat`, `nama_organisasi`, `tahun_mulai`, `tahun_akhir`, `bidang`, `jabatan`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pasangan`
--

CREATE TABLE `kandidat_pasangan` (
  `id_pasangan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `tanggal_nikah` date DEFAULT NULL,
  `pasangan_nama` varchar(100) DEFAULT NULL,
  `pasangan_tempat_lahir` varchar(50) DEFAULT NULL,
  `pasangan_tgl_lahir` date DEFAULT NULL,
  `pasangan_wa` bigint(20) DEFAULT NULL,
  `pasangan_agama` varchar(20) DEFAULT NULL,
  `pasangan_negara` varchar(20) DEFAULT NULL,
  `pasangan_pekerjaan` varchar(50) DEFAULT NULL,
  `jumlah_anak` int(1) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_pasangan`
--

INSERT INTO `kandidat_pasangan` (`id_pasangan`, `id_kandidat`, `tanggal_nikah`, `pasangan_nama`, `pasangan_tempat_lahir`, `pasangan_tgl_lahir`, `pasangan_wa`, `pasangan_agama`, `pasangan_negara`, `pasangan_pekerjaan`, `jumlah_anak`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pendidikan`
--

CREATE TABLE `kandidat_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `jenjang` varchar(20) DEFAULT NULL,
  `nama_institusi` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `ipk` int(11) DEFAULT NULL,
  `ijazah` varchar(100) DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_lulus` date DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_pendidikan`
--

INSERT INTO `kandidat_pendidikan` (`id_pendidikan`, `id_kandidat`, `jenjang`, `nama_institusi`, `jurusan`, `ipk`, `ijazah`, `tahun_masuk`, `tahun_lulus`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pengalaman`
--

CREATE TABLE `kandidat_pengalaman` (
  `id_pengalaman` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `nama_pengalaman` varchar(100) DEFAULT NULL,
  `tahun_mulai` date DEFAULT NULL,
  `tahun_akhir` date DEFAULT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `alasan_berhenti` varchar(255) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat_pengalaman`
--

INSERT INTO `kandidat_pengalaman` (`id_pengalaman`, `id_kandidat`, `nama_pengalaman`, `tahun_mulai`, `tahun_akhir`, `nama_perusahaan`, `alasan_berhenti`, `jabatan`, `kandidatid_role`) VALUES
(1, 1221046, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(2, 1226877, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(3, 1227283, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(4, 1221560, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(5, 1229165, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(6, 1222159, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(7, 1225799, NULL, NULL, NULL, NULL, NULL, NULL, 3),
(8, 1229985, NULL, NULL, NULL, NULL, NULL, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id_lamaran` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `tanggal_apply` timestamp NOT NULL DEFAULT current_timestamp(),
  `catatan` text DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL,
  `status_rekrutmen` varchar(20) DEFAULT NULL,
  `status_atasan` int(1) DEFAULT NULL,
  `status_assessment` int(1) DEFAULT NULL,
  `status_poliklinik` int(1) DEFAULT NULL,
  `status_kurikulum` int(1) DEFAULT NULL,
  `status_picmateri` int(1) DEFAULT NULL,
  `note_rekrutmen` text DEFAULT NULL,
  `note_atasan` text DEFAULT NULL,
  `note_assessment` text DEFAULT NULL,
  `note_poliklinik` text DEFAULT NULL,
  `note_kurikulum` text DEFAULT NULL,
  `note_picmateri` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`id_lamaran`, `id_lowongan`, `id_kandidat`, `tanggal_apply`, `catatan`, `kandidatid_role`, `status_rekrutmen`, `status_atasan`, `status_assessment`, `status_poliklinik`, `status_kurikulum`, `status_picmateri`, `note_rekrutmen`, `note_atasan`, `note_assessment`, `note_poliklinik`, `note_kurikulum`, `note_picmateri`) VALUES
(3221298, 2226620, 1221046, '2022-12-08 08:13:44', 'Mohon upload cv', NULL, 'Tes Kesehatan', NULL, NULL, NULL, NULL, NULL, 'Mohon upload cv', NULL, NULL, NULL, NULL, NULL),
(3223223, 2228661, 1221560, '2022-12-08 08:31:13', NULL, NULL, 'Wawancara', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3223606, 2221140, 1229165, '2022-12-12 12:37:26', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3223839, 2229661, 1229985, '2022-12-12 12:51:06', 'Lengkapi data lampiran', NULL, 'Diterima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3224021, 2224634, 1229985, '2022-12-12 12:58:37', '', NULL, 'Diterima', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3224738, 2222660, 1229165, '2022-12-12 12:37:19', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3224976, 2221140, 1226877, '2022-12-08 08:24:27', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3225159, 2222660, 1229985, '2022-12-12 12:41:41', '', NULL, 'Administrasi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3225421, 2221140, 1221560, '2022-12-08 08:30:33', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3226075, 2226620, 1229985, '2022-12-12 12:41:17', '', NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3226283, 2228661, 1226877, '2022-12-08 08:24:37', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3226595, 2228661, 1222159, '2022-12-12 08:34:58', 'Mohon lengkapi data pribadi\r\n', NULL, 'Administrasi', NULL, NULL, NULL, NULL, NULL, 'Mohon lengkapi data pribadi anda', NULL, NULL, NULL, NULL, NULL),
(3226732, 2228026, 1221046, '2022-12-08 07:48:45', '', NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3227295, 2221140, 1225799, '2022-12-10 17:20:24', '', NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3228643, 2228661, 1229165, '2022-12-12 12:37:09', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229279, 2228026, 1227283, '2022-12-08 08:25:56', NULL, NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3229441, 2226620, 1227283, '2022-12-08 08:26:06', '', NULL, 'Belum Diproses', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `id_jurusan` varchar(255) NOT NULL,
  `penempatan` varchar(50) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `status_lowongan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `id_posisi`, `id_jurusan`, `penempatan`, `tanggal_post`, `judul`, `deskripsi`, `status_lowongan`) VALUES
(2221140, 14, '81,95', 'SDK PENABUR SUMMARECON BEKASI', '2022-11-07 03:26:10', 'Staff Media Social', '1. Buat Content<br />\r\n2. Bikin Video<br />\r\n3. Tiktok an', 'Aktif'),
(2222660, 22, '45,38,39', '', '2022-11-05 09:43:36', 'Staff Keuangan', '1. Bisa Hitung Uang<br />\r\n2. Gaji Karyawan<br />\r\n3. Naikan Gaji', 'Aktif'),
(2224634, 1, '24,1', '', '2022-12-12 12:47:19', 'Guru Bahasa Indonesia', '1. Mendidik siswa siswi<br />\r\n2. Membuat materi pelajaran', 'Aktif'),
(2226620, 22, '45,15,79,211', 'SDK 10 PENABUR', '2022-11-17 08:06:53', 'Staf Data Analis', '1. qwerty<br />\r\n2. asdfg<br />\r\n3. asdfgh', 'Aktif'),
(2228026, 3, '41,43', '', '2022-11-06 18:55:43', 'Staff Programmer', '1. Coding<br />\r\n2. Tidur<br />\r\n3. Makan', 'Aktif'),
(2228661, 20, '81,90', 'SDK 3 PENABUR', '2022-11-07 06:41:28', 'Staff Marketing', 'sadasdas', 'Aktif'),
(2229661, 22, '45', 'SDK 2 PENABUR', '2022-11-17 06:12:22', 'Staff IT Support', '1. qwerty<br />\r\n2. qwerty<br />\r\n3. asdfgh', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenjang`
--

CREATE TABLE `master_jenjang` (
  `id_jenjang` int(11) NOT NULL COMMENT 'autoincrement',
  `kode_jenjang` char(11) DEFAULT NULL,
  `nama_jenjang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jenjang`
--

INSERT INTO `master_jenjang` (`id_jenjang`, `kode_jenjang`, `nama_jenjang`) VALUES
(1, NULL, 'Sektretariat'),
(2, NULL, 'Jenjang TK'),
(3, NULL, 'Jenjang SD'),
(4, NULL, 'Jenjang SMP'),
(5, NULL, 'Jenjang SLTA'),
(6, NULL, 'Jenjang TK & SD Inter'),
(7, NULL, 'Jenjang SMP Inter'),
(8, NULL, 'Jenjang SMA Inter'),
(9, NULL, 'Tirtamarta');

-- --------------------------------------------------------

--
-- Table structure for table `master_jurusan`
--

CREATE TABLE `master_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `fakultas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jurusan`
--

INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `fakultas`) VALUES
(1, 'Pendidikan Guru Sekolah Dasar (PGSD)', 'Fakultas Pendidikan'),
(2, 'Manajemen Pendidikan', 'Fakultas Pendidikan'),
(3, 'Pendidikan Bahasa Arab', 'Fakultas Pendidikan'),
(4, 'Pendidikan Bahasa Inggris', 'Fakultas Pendidikan'),
(5, 'Pendidikan Kepelatihan Olahraga', 'Fakultas Pendidikan'),
(6, 'Pendidikan Jasmani Kesehatan dan Rekreasi', 'Fakultas Pendidikan'),
(7, 'Pendidikan Ilmu Pengetahuan Alam', 'Fakultas Pendidikan'),
(8, 'Kurikulum dan Teknologi Pendidikan', 'Fakultas Pendidikan'),
(9, 'Pendidikan Luar Sekolah', 'Fakultas Pendidikan'),
(10, 'Pendidikan Luar Biasa (PLB)', 'Fakultas Pendidikan'),
(11, 'Teologi', 'Fakultas Pendidikan'),
(12, 'Pendidikan Kependudukan', 'Fakultas Pendidikan'),
(13, 'Manajemen Pendidikan Islam', 'Fakultas Pendidikan'),
(14, 'Pendidikan Anak Usia Dini (PAUD)', 'Fakultas Pendidikan'),
(15, 'Administrasi Pendidikan', 'Fakultas Pendidikan'),
(16, 'Pendidikan Bimbingan Konseling', 'Fakultas Pendidikan'),
(17, 'Ilmu Perpustakaan', 'Fakultas Pendidikan'),
(18, 'Pendidikan Geografi', 'Fakultas Pendidikan'),
(19, 'Tafsir Hadits', 'Fakultas Pendidikan'),
(20, 'Pendidikan Pancasila dan Kewarganegaraan', 'Fakultas Pendidikan'),
(21, 'Pendidikan Agama Islam', 'Fakultas Pendidikan'),
(22, 'Pendidikan Sejarah', 'Fakultas Pendidikan'),
(23, 'Pendidikan Matematika', 'Fakultas Pendidikan'),
(24, 'Pendidikan Bahasa dan Sastra Indonesia', 'Fakultas Pendidikan'),
(25, 'Ekonomi Internasional', 'Fakultas Ekonomi dan Bisnis'),
(26, 'Ekonomi Publik', 'Fakultas Ekonomi dan Bisnis'),
(27, 'Ekonomi Regional', 'Fakultas Ekonomi dan Bisnis'),
(28, 'Ekonomi Moneter', 'Fakultas Ekonomi dan Bisnis'),
(29, 'Ekonomi Pembangunan', 'Fakultas Ekonomi dan Bisnis'),
(30, 'Ekonomi Industri', 'Fakultas Ekonomi dan Bisnis'),
(31, 'Ekonomi Sumber Daya Alam dan Lingkungan', 'Fakultas Ekonomi dan Bisnis'),
(32, 'Ekonomi Sumber Daya Manusia', 'Fakultas Ekonomi dan Bisnis'),
(33, 'Manajemen Pemasaran', 'Fakultas Ekonomi dan Bisnis'),
(34, 'Manajemen Keuangan', 'Fakultas Ekonomi dan Bisnis'),
(35, 'Manajemen Sumber Daya Manusia', 'Fakultas Ekonomi dan Bisnis'),
(36, 'Manajemen Operasional', 'Fakultas Ekonomi dan Bisnis'),
(37, 'Fakultas Akuntansi', 'Fakultas Ekonomi dan Bisnis'),
(38, 'Akuntansi Keuangan', 'Fakultas Ekonomi dan Bisnis'),
(39, 'Akuntansi Perpajakan', 'Fakultas Ekonomi dan Bisnis'),
(40, 'Audit', 'Fakultas Ekonomi dan Bisnis'),
(41, 'Sistem Informasi', 'Fakultas Ekonomi dan Bisnis'),
(42, 'Manajemen Akuntansi', 'Fakultas Ekonomi dan Bisnis'),
(43, 'Teknik Informatika', 'Fakultas Komputer dan Teknologi'),
(44, 'Mobile Application & Technology', 'Fakultas Komputer dan Teknologi'),
(45, 'Accounting Information', 'Fakultas Komputer dan Teknologi'),
(46, 'Audio Engineering', 'Fakultas Komputer dan Teknologi'),
(47, 'Ilmu Komputer', 'Fakultas Komputer dan Teknologi'),
(48, 'Sistem Komputer (Teknik Komputer)', 'Fakultas Komputer dan Teknologi'),
(49, 'Sistem Informasi (Manajemen Informatika)', 'Fakultas Komputer dan Teknologi'),
(50, 'Sistem Informasi Bisnis', 'Fakultas Komputer dan Teknologi'),
(51, 'Software Engineering', 'Fakultas Komputer dan Teknologi'),
(52, 'Sistem dan Teknologi Informasi', 'Fakultas Komputer dan Teknologi'),
(53, 'Teknologi Game', 'Fakultas Komputer dan Teknologi'),
(54, 'Ilmu Komputasi', 'Fakultas Komputer dan Teknologi'),
(55, 'Cyber Security', 'Fakultas Komputer dan Teknologi'),
(56, 'Bioinformatika', 'Fakultas Komputer dan Teknologi'),
(57, 'Computerized Accounting', 'Fakultas Komputer dan Teknologi'),
(58, 'Information Systems Audit', 'Fakultas Komputer dan Teknologi'),
(59, 'Human Computer Interaction', 'Fakultas Komputer dan Teknologi'),
(60, 'Desain Interior', 'Fakultas Seni'),
(61, 'Desain Produk', 'Fakultas Seni'),
(62, 'Animasi', 'Fakultas Seni'),
(63, 'DKV New Media', 'Fakultas Seni'),
(64, 'DKV Creative Advertising', 'Fakultas Seni'),
(65, 'Furniture Design', 'Fakultas Seni'),
(66, 'Tata Boga', 'Fakultas Seni'),
(67, 'Desain Grafis', 'Fakultas Seni'),
(68, 'Ilmu Politik', 'Fakultas Sosial dan Humaniora'),
(69, 'Filsafat', 'Fakultas Sosial dan Humaniora'),
(70, 'Kriminologi', 'Fakultas Sosial dan Humaniora'),
(71, 'Psikologi', 'Fakultas Sosial dan Humaniora'),
(72, 'Ilmu Hukum', 'Fakultas Sosial dan Humaniora'),
(73, 'Sosiologi', 'Fakultas Sosial dan Humaniora'),
(74, 'Jurnalistik', 'Fakultas Sosial dan Humaniora'),
(75, 'Antropologi', 'Fakultas Sosial dan Humaniora'),
(76, 'Hubungan Internasional', 'Fakultas Sosial dan Humaniora'),
(77, 'Ilmu Kesejahteraan Sosial', 'Fakultas Sosial dan Humaniora'),
(78, 'Ilmu Pemerintahan', 'Fakultas Sosial dan Humaniora'),
(79, 'Administrasi Publik', 'Fakultas Sosial dan Humaniora'),
(80, 'Administrasi Bisnis', 'Fakultas Sosial dan Humaniora'),
(81, 'Ilmu Komunikasi', 'Fakultas Sosial dan Humaniora'),
(82, 'Hubungan Masyarakat', 'Fakultas Sosial dan Humaniora'),
(83, 'Marketing Communication', 'Fakultas Sosial dan Humaniora'),
(84, 'Penyiaran', 'Fakultas Sosial dan Humaniora'),
(85, 'Periklanan', 'Fakultas Sosial dan Humaniora'),
(86, 'Peradilan Agama', 'Fakultas Sosial dan Humaniora'),
(87, 'Politik Islam', 'Fakultas Sosial dan Humaniora'),
(88, 'Pembangunan Sosial dan Kesejahteraan', 'Fakultas Sosial dan Humaniora'),
(89, 'Business Law', 'Fakultas Sosial dan Humaniora'),
(90, 'Manajemen Komunikasi', 'Fakultas Sosial dan Humaniora'),
(91, 'Branding', 'Fakultas Sosial dan Humaniora'),
(92, 'Kearsipan', 'Fakultas Sosial dan Humaniora'),
(93, 'Sains Komunikasi dan Pengembangan Masyarakat', 'Fakultas Sosial dan Humaniora'),
(94, 'Ilmu Keluarga dan Konsumen', 'Fakultas Sosial dan Humaniora'),
(95, 'Manajemen Produksi Media', 'Fakultas Sosial dan Humaniora'),
(96, 'Kedokteran', 'Fakultas Kesehatan'),
(97, 'Kedokteran Gigi', 'Fakultas Kesehatan'),
(98, 'Kedokteran Hewan', 'Fakultas Kesehatan'),
(99, 'Kesehatan Masyarakat', 'Fakultas Kesehatan'),
(100, 'Kesehatan Lingkungan', 'Fakultas Kesehatan'),
(101, 'Ilmu Gizi', 'Fakultas Kesehatan'),
(102, 'Keselamatan dan Kesehatan Kerja', 'Fakultas Kesehatan'),
(103, 'Ilmu Keperawatan', 'Fakultas Kesehatan'),
(104, 'Farmasi', 'Fakultas Kesehatan'),
(105, 'Nutrisi dan Teknologi Pangan', 'Fakultas Kesehatan'),
(106, 'Kebidanan', 'Fakultas Kesehatan'),
(107, 'Fisioterapi', 'Fakultas Kesehatan'),
(108, 'Ilmu Keolahragaan', 'Fakultas Kesehatan'),
(109, 'Teknik Rasiodiagnostik dan Radioterapi', 'Fakultas Kesehatan'),
(110, 'Manajemen Pelayanan Rumah Sakit', 'Fakultas Kesehatan'),
(111, 'Matematika', 'Fakultas Matematika dan IPA (MIPA)'),
(112, 'Kimia', 'Fakultas Matematika dan IPA (MIPA)'),
(113, 'Fisika', 'Fakultas Matematika dan IPA (MIPA)'),
(114, 'Biologi', 'Fakultas Matematika dan IPA (MIPA)'),
(115, 'Statistika', 'Fakultas Matematika dan IPA (MIPA)'),
(116, 'Astronomi', 'Fakultas Matematika dan IPA (MIPA)'),
(117, 'Bioteknologi', 'Fakultas Matematika dan IPA (MIPA)'),
(118, 'Geofisika', 'Fakultas Matematika dan IPA (MIPA)'),
(119, 'Meteorologi', 'Fakultas Matematika dan IPA (MIPA)'),
(120, 'Geografi', 'Fakultas Matematika dan IPA (MIPA)'),
(121, 'Biokimia', 'Fakultas Matematika dan IPA (MIPA)'),
(122, 'Metrologi', 'Fakultas Matematika dan IPA (MIPA)'),
(123, 'Aktuaria', 'Fakultas Matematika dan IPA (MIPA)'),
(124, 'Statistika Terapan', 'Fakultas Matematika dan IPA (MIPA)'),
(125, 'Mikrobiologi', 'Fakultas Matematika dan IPA (MIPA)'),
(126, 'Bioentrepeneurship', 'Fakultas Matematika dan IPA (MIPA)'),
(127, 'Ilmu Pangan', 'Fakultas Matematika dan IPA (MIPA)'),
(128, 'Matematika Bisnis', 'Fakultas Matematika dan IPA (MIPA)'),
(129, 'Fisika Medis', 'Fakultas Matematika dan IPA (MIPA)'),
(130, 'Kartografi dan Penginderaan', 'Fakultas Matematika dan IPA (MIPA)'),
(131, 'Pengelolaan dan Pemberdayaan SDA dan Lingkungan', 'Fakultas Matematika dan IPA (MIPA)'),
(132, 'Teknik Pertambangan', 'Fakultas Teknik'),
(133, 'Teknik Kelautan', 'Fakultas Teknik'),
(134, 'Teknik Lingkungan', 'Fakultas Teknik'),
(135, 'Rekayasa hayati', 'Fakultas Teknik'),
(136, 'Manajemen Rekayasa Industri', 'Fakultas Teknik'),
(137, 'Teknik Perencanaan Wilayah dan Kota (Planologi)', 'Fakultas Teknik'),
(138, 'Teknik Penerbangan (Aeronautika dan Astronautika)', 'Fakultas Teknik'),
(139, 'Teknik Metalurgi', 'Fakultas Teknik'),
(140, 'Teknik Sipil', 'Fakultas Teknik'),
(141, 'Arsitektur', 'Fakultas Teknik'),
(142, 'Teknik Geodesi', 'Fakultas Teknik'),
(143, 'Teknik Elektro', 'Fakultas Teknik'),
(144, 'Teknik Mesin', 'Fakultas Teknik'),
(145, 'Teknik Industri', 'Fakultas Teknik'),
(146, 'Teknik Perkapalan', 'Fakultas Teknik'),
(147, 'Teknik Otomotif', 'Fakultas Teknik'),
(148, 'Teknobiomedik', 'Fakultas Teknik'),
(149, 'Oseanografi', 'Fakultas Teknik'),
(150, 'Teknik Nuklir', 'Fakultas Teknik'),
(151, 'Teknik Geologi', 'Fakultas Teknik'),
(152, 'Teknik Refrigerasi dan Tata Udara', 'Fakultas Teknik'),
(153, 'Teknik Telekomunikasi', 'Fakultas Teknik'),
(154, 'Teknik Perancangan Jalan dan Jembatan', 'Fakultas Teknik'),
(155, 'Teknik Otomasi Manufaktur dan Mekatronika', 'Fakultas Teknik'),
(156, 'Teknologi Bioproses', 'Fakultas Teknik'),
(157, 'Teknik Grafika', 'Fakultas Teknik'),
(158, 'Transportasi Laut', 'Fakultas Teknik'),
(159, 'Teknik Fisika', 'Fakultas Teknik'),
(160, 'Teknik Geomatika', 'Fakultas Teknik'),
(161, 'Teknik Perminyakan', 'Fakultas Teknik'),
(162, 'Teknik Material', 'Fakultas Teknik'),
(163, 'Automotive and Robotics Engineering', 'Fakultas Teknik'),
(164, 'Teknik Tenaga Listrik', 'Fakultas Teknik'),
(165, 'Teknik Sistem Komputer', 'Fakultas Teknik'),
(166, 'Arsitektur Lanskap', 'Fakultas Teknik'),
(167, 'Teknik Konversi Energi', 'Fakultas Teknik'),
(168, 'Teknik Bioenergi dan Kemurgi', 'Fakultas Teknik'),
(169, 'Industrial RoboticsDesign', 'Fakultas Teknik'),
(170, 'Teknik Kimia', 'Fakultas Teknik'),
(171, 'Teknik Perpipaan', 'Fakultas Teknik'),
(172, 'Teknik Bangunan dan Landasan', 'Fakultas Teknik'),
(173, 'Teknik Listrik Bandara', 'Fakultas Teknik'),
(174, 'Teknik Alat Berat', 'Fakultas Teknik'),
(175, 'Rekayasa Infrastruktur Lingkungan', 'Fakultas Teknik'),
(176, 'Teknik Pesawat Udara', 'Fakultas Teknik'),
(177, 'Teknik Telekomunikasi dan Navigasi Udara', 'Fakultas Teknik'),
(178, 'Teknik Pengairan (Sumber Daya Air)', 'Fakultas Teknik'),
(179, 'Meteorologi Terapan', 'Fakultas Teknik'),
(180, 'Teknik Ekonomi Konstruksi (Quantity Surveyor)', 'Fakultas Teknik'),
(181, 'Teknik Sistem Perkapalan', 'Fakultas Teknik'),
(182, 'Pendidikan Jasmani, Kesehatan, dan Rekreasi', 'Fakultas Ilmu Olahraga'),
(183, 'Pendidikan Kepelatihan Keolahragaan', 'Fakultas Ilmu Olahraga'),
(184, 'Ilmu Keolahragaan', 'Fakultas Ilmu Olahraga'),
(185, 'Olahraga Rekreasi', 'Fakultas Ilmu Olahraga'),
(186, 'Kepelatihan Kecabangan Olahraga', 'Fakultas Ilmu Olahraga'),
(187, 'Ilmu Sejarah', 'Fakultas Sastra dan Budaya'),
(188, 'Sastra Inggris', 'Fakultas Sastra dan Budaya'),
(189, 'Arkeologi', 'Fakultas Sastra dan Budaya'),
(190, 'Sastra Perancis', 'Fakultas Sastra dan Budaya'),
(191, 'Sastra Korea', 'Fakultas Sastra dan Budaya'),
(192, 'Sastra Jerman', 'Fakultas Sastra dan Budaya'),
(193, 'Sastra Belanda', 'Fakultas Sastra dan Budaya'),
(194, 'Sastra Jepang', 'Fakultas Sastra dan Budaya'),
(195, 'Sastra Indonesia', 'Fakultas Sastra dan Budaya'),
(196, 'Sastra Rusia', 'Fakultas Sastra dan Budaya'),
(197, 'Sastra Jawa', 'Fakultas Sastra dan Budaya'),
(198, 'Sastra Arab', 'Fakultas Sastra dan Budaya'),
(199, 'Sastra Cina', 'Fakultas Sastra dan Budaya'),
(200, 'Sastra Sunda', 'Fakultas Sastra dan Budaya'),
(201, 'Sastra Bali', 'Fakultas Sastra dan Budaya'),
(202, 'Sastra Minangkabau', 'Fakultas Sastra dan Budaya'),
(203, 'Sastra Nusantara', 'Fakultas Sastra dan Budaya'),
(204, 'Sastra Slavia', 'Fakultas Sastra dan Budaya'),
(205, 'Sejarah dan Kebudayaan Islam', 'Fakultas Sastra dan Budaya'),
(206, 'Agronomi dan Hortikultura', 'Fakultas Pertanian'),
(207, 'Mikrobiologi Pertanian', 'Fakultas Pertanian'),
(208, 'Teknologi Pasca Panen', 'Fakultas Pertanian'),
(209, 'Teknologi Industri Benih', 'Fakultas Pertanian'),
(210, 'Ilmu Kelautan', 'Fakultas Pertanian'),
(211, 'Agribisnis (Sosial Ekonomi Pertanian)', 'Fakultas Pertanian'),
(212, 'Agroteknologi', 'Fakultas Pertanian'),
(213, 'Teknologi Pangan', 'Fakultas Pertanian'),
(214, 'Rekayasa Pertanian', 'Fakultas Pertanian'),
(215, 'Peternakan', 'Fakultas Pertanian'),
(216, 'Agroeteknologi', 'Fakultas Pertanian'),
(217, 'Kehutanan', 'Fakultas Pertanian'),
(218, 'Budidaya Perairan (Akuakultur)', 'Fakultas Pertanian'),
(219, 'Produksi Ternak', 'Fakultas Pertanian'),
(220, 'Teknologi Hasil Ternak', 'Fakultas Pertanian'),
(221, 'Pengelolaan Hutan', 'Fakultas Pertanian'),
(222, 'Teknologi Hasil Hutan', 'Fakultas Pertanian'),
(223, 'Silvikulutur', 'Fakultas Pertanian'),
(224, 'Konservasi Sumberdaya Hutan dan Ekowisata', 'Fakultas Pertanian'),
(225, 'Ilmu Hama dan Penyakit Tumbuhan (Proteksi Tanaman)', 'Fakultas Pertanian'),
(226, 'Teknologi Industri Pertanian (Agroindustri)', 'Fakultas Pertanian'),
(227, 'Manajemen Sumberdaya Lahan (Ilmu Tanah)', 'Fakultas Pertanian'),
(228, 'Teknologi Hasil Perikanan', 'Fakultas Pertanian'),
(229, 'Agrobisnis Perikanan (Sosial Ekonomi Perikanan)', 'Fakultas Pertanian'),
(230, 'Sumber Daya Perairan', 'Fakultas Pertanian'),
(231, 'Pemanfaatan Sumberdaya Perikanan', 'Fakultas Pertanian'),
(232, 'Penyuluhan dan Komunikasi Pertanian', 'Fakultas Pertanian'),
(233, 'Budidaya Perikanan', 'Fakultas Pertanian'),
(234, 'Rekayasa Pertanian', 'Fakultas Pertanian'),
(235, 'Manajemen Hutan', 'Fakultas Pertanian'),
(236, 'Teknik Pertanian', 'Fakultas Pertanian'),
(237, 'Manajemen Bisnis Unggas', 'Fakultas Pertanian'),
(238, 'Pariwisata', 'Fakultas Profesi dan Ilmu Terapan'),
(239, 'Penerbang (Pendidikan Pilot)', 'Fakultas Profesi dan Ilmu Terapan'),
(240, 'Pendidikan Intelijen', 'Fakultas Profesi dan Ilmu Terapan'),
(241, 'Komunikasi Penerbangan', 'Fakultas Profesi dan Ilmu Terapan'),
(242, 'Pendidikan Kepolisian', 'Fakultas Profesi dan Ilmu Terapan'),
(243, 'Pendidikan Militer', 'Fakultas Profesi dan Ilmu Terapan'),
(244, 'Lalu Lintas Udara', 'Fakultas Profesi dan Ilmu Terapan'),
(245, 'Manajemen Logistik', 'Fakultas Profesi dan Ilmu Terapan');

-- --------------------------------------------------------

--
-- Table structure for table `master_penempatan`
--

CREATE TABLE `master_penempatan` (
  `id_penempatan` int(11) NOT NULL,
  `kode_penempatan` varchar(5) DEFAULT NULL,
  `penempatan` varchar(50) NOT NULL,
  `divisi` varchar(50) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `link_maps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_penempatan`
--

INSERT INTO `master_penempatan` (`id_penempatan`, `kode_penempatan`, `penempatan`, `divisi`, `kota`, `link_maps`) VALUES
(1, 'A01', 'SMAK 1 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(2, 'A02', 'SMAK 2 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(3, 'A03', 'SMAK 3 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(4, 'A04', 'SMAK 4 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(5, 'A05', 'SMAK 5 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(6, 'A06', 'SMAK 6 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(7, 'A07', 'SMAK 7 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(8, 'A08', 'SPK SMAK 8 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(9, 'ABJ', 'SMAK PENABUR BINTARO JAYA', 'Pendidikan', 'Tangerang Selatan', ''),
(10, 'AGS', 'SMAK PENABUR GADING SERPONG', 'Pendidikan', 'Tangerang', ''),
(11, 'AHI', 'SMAK PENABUR HARAPAN INDAH', 'Pendidikan', 'Bekasi', ''),
(12, 'AKGI', 'SPK SMAK PENABUR Kelapa Gading', 'Pendidikan', 'Jakarta Utara', ''),
(13, 'AKJ', 'SMAK PENABUR KOTA JABABEKA', 'Pendidikan', 'Bekasi', ''),
(14, 'AKT', 'SMAK PENABUR KOTA TANGERANG', 'Pendidikan', 'Tangerang', ''),
(15, 'AKW', 'SMAK PENABUR KOTA WISATA', 'Pendidikan', 'Bogor', ''),
(16, 'ALD', 'SMAK PALEDANG', 'Pendidikan', 'Bogor', ''),
(17, 'AMF', 'SMK FARMASI PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(18, 'ASB', 'SMAK PENABUR SUMMARECON BEKASI', 'Pendidikan', 'Bekasi', ''),
(19, 'ATM', 'SMA TIRTAMARTA', 'Pendidikan', '', ''),
(20, 'D01', 'SDK 1 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(21, 'D02', 'SDK 2 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(22, 'D03', 'SDK 3 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(23, 'D04', 'SDK 4 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(24, 'D06', 'SDK 6 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(25, 'D08', 'SDK 8 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(26, 'D09', 'SDK 9 PENABUR', 'Pendidikan', 'Jakarta Selatan', ''),
(27, 'D10', 'SDK 10 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(28, 'D11', 'SDK 11 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(29, 'DAS', 'SDK PENABUR AGUS SALIM', 'Pendidikan', 'Bekasi', ''),
(30, 'DBJ', 'SDK PENABUR BINTARO JAYA', 'Pendidikan', 'Tangerang Selatan', ''),
(31, 'DDP', 'SDK PENABUR DEPOK', 'Pendidikan', 'Kota Depok', ''),
(32, 'DGS', 'SDK PENABUR GADING SERPONG', 'Pendidikan', 'Tangerang', ''),
(33, 'DHI', 'SDK PENABUR HARAPAN INDAH', 'Pendidikan', 'Bekasi', ''),
(34, 'DKGI', 'SPK SDK PENABUR Kelapa Gading', 'Pendidikan', 'Jakarta Utara', ''),
(35, 'DKJ', 'SDK PENABUR KOTA JABABEKA', 'Pendidikan', 'Bekasi', ''),
(36, 'DKM', 'SDK PENABUR KOTA MODERN', 'Pendidikan', 'Tangerang', ''),
(37, 'DKW', 'SDK PENABUR KOTA WISATA', 'Pendidikan', 'Bogor', ''),
(38, 'DSB', 'SDK PENABUR SUMMARECON BEKASI', 'Pendidikan', 'Bekasi', ''),
(39, 'K01', 'TKK 1 PENABUR', 'Pendidikan', '', ''),
(40, 'K02', 'TKK 2 PENABUR', 'Pendidikan', '', ''),
(41, 'K03', 'TKK 3 PENABUR', 'Pendidikan', '', ''),
(42, 'K05', 'TKK 5 PENABUR', 'Pendidikan', '', ''),
(43, 'K06', 'TKK 6 PENABUR', 'Pendidikan', '', ''),
(44, 'K07', 'TKK 7 PENABUR', 'Pendidikan', '', ''),
(45, 'K08', 'TKK 8 PENABUR', 'Pendidikan', '', ''),
(46, 'K09', 'TKK 9 PENABUR', 'Pendidikan', '', ''),
(47, 'K10', 'TKK 10 PENABUR', 'Pendidikan', '', ''),
(48, 'K11', 'TKK 11 PENABUR', 'Pendidikan', '', ''),
(49, 'K5F', 'TKK FILIAL PONDOK GEDE', 'Pendidikan', '', ''),
(50, 'KAS', 'TKK PENABUR AGUS SALIM', 'Pendidikan', '', ''),
(51, 'KBJ', 'TKK PENABUR BINTARO JAYA', 'Pendidikan', '', ''),
(52, 'KDP', 'TKK PENABUR DEPOK', 'Pendidikan', '', ''),
(53, 'KGS', 'TKK PENABUR GADING SERPONG', 'Pendidikan', '', ''),
(54, 'KHI', 'TKK PENABUR HARAPAN INDAH', 'Pendidikan', '', ''),
(55, 'KKJ', 'TKK PENABUR KOTA JABABEKA', 'Pendidikan', '', ''),
(56, 'KKM', 'TKK PENABUR KOTA MODERN', 'Pendidikan', '', ''),
(57, 'KKW', 'TKK PENABUR KOTA WISATA', 'Pendidikan', '', ''),
(58, 'KSB', 'TKK PENABUR SUMMARECON BEKASI', 'Pendidikan', '', ''),
(59, 'P01', 'SMPK 1 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(60, 'P02', 'SMPK 2 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(61, 'P03', 'SMPK 3 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(62, 'P04', 'SMPK 4 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(63, 'P05', 'SMPK 5 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(64, 'P06', 'SMPK 6 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(65, 'P07', 'SMPK 7 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(66, 'P08', 'SPK SMPK 8 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(67, 'PBJ', 'SMPK PENABUR BINTARO JAYA', 'Pendidikan', 'Tangerang Selatan', ''),
(68, 'PDP', 'SMPK PENABUR DEPOK', 'Pendidikan', 'Depok', ''),
(69, 'PGS', 'SMPK PENABUR GADING SERPONG', 'Pendidikan', 'Tangerang', ''),
(70, 'PHI', 'SMPK PENABUR HARAPAN INDAH', 'Pendidikan', 'Bekasi', ''),
(71, 'PKGI', 'SPK SMPK PENABUR Kelapa Gading', 'Pendidikan', 'Jakarta Utara', ''),
(72, 'PKJ', 'SMPK PENABUR KOTA JABABEKA', 'Pendidikan', 'Bekasi', ''),
(73, 'PKM', 'SMPK PENABUR KOTA MODERN', 'Pendidikan', 'Tangerang', ''),
(74, 'PKW', 'SMPK PENABUR KOTA WISATA', 'Pendidikan', 'Bogor', ''),
(75, 'PSB', 'SMPK PENABUR SUMMARECON BEKASI', 'Pendidikan', 'Bekasi', ''),
(76, 'PTM2', 'SMPK PENABUR TIRTA MARTA CINERE', 'Pendidikan', 'Depok', ''),
(77, 'PTM1', 'SMPK PENABUR TIRTA MARTA PONDOK INDAH', 'Pendidikan', 'Jakarta Selatan', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_posisi`
--

CREATE TABLE `master_posisi` (
  `id_posisi` int(11) NOT NULL COMMENT 'autoincrement',
  `kode_posisi` char(11) DEFAULT NULL,
  `nama_posisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_posisi`
--

INSERT INTO `master_posisi` (`id_posisi`, `kode_posisi`, `nama_posisi`) VALUES
(1, 'IND', 'Guru Bahasa Indonesia'),
(2, 'ING', 'Guru Bahasa Inggris'),
(3, 'BIO', 'Guru Biologi'),
(4, 'FIS', 'Guru Fisika'),
(5, 'GEO', 'Guru Geografi'),
(6, 'KIM', 'Guru Kimia'),
(7, 'AGA', 'Guru Pendidikan Agama dan  Budi Pekerti'),
(8, 'PRA', 'Guru Prakarya'),
(9, 'PKN', 'Guru Pendidikan Pancasila dan Kewarganegaraan'),
(10, 'S&B', 'Guru Seni Budaya'),
(11, 'SOS', 'Guru Sosiologi'),
(12, 'MAT', 'Guru Matematika'),
(13, 'JAS', 'Guru Pendidikan Jasmani, Olah Raga, dan Kesehatan'),
(14, 'SEJ', 'Guru Sejarah'),
(15, 'EKO', 'Guru Ekonomi-Akun'),
(16, 'MIPA', 'Guru MATEMATIKA-IPA'),
(17, 'MIPS', 'Guru MATEMATIKA-IPS'),
(18, 'PLH', 'Guru Pendidikan Lingkungan Hidup'),
(19, 'IPS', 'Guru Ilmu Pengetahuan Sosial'),
(20, 'SUN', 'Guru Bahasa Sunda'),
(21, 'PRAMUKA', 'Guru Pramuka'),
(22, 'AWK', 'Administrasi Wali Kelas');

-- --------------------------------------------------------

--
-- Table structure for table `master_role`
--

CREATE TABLE `master_role` (
  `id_role` int(11) NOT NULL,
  `nama_role` varchar(20) NOT NULL,
  `deskripsi_role` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_role`
--

INSERT INTO `master_role` (`id_role`, `nama_role`, `deskripsi_role`) VALUES
(1, 'superadmin', 'Mengelola user dan master data (CRUD)'),
(2, 'rekrutmen', 'Mengelola lowongan dan lamaran pekerjaan (CRU)'),
(3, 'kandidat', 'Melihat halaman lowongan dan mengajukan lamaran pekerjaan (CRU)'),
(4, 'atasan', 'Merekomendasikan kandidat melalui Wawancara (RU)'),
(5, 'assessment', 'Merekomendasikan kandidat melalui Tes Psikologi (RU)'),
(6, 'poliklinik', 'Merekomendasikan kandidat melalui Tes Kesehatan (RU)'),
(7, 'kurikulum', 'Merekomendasikan kandidat (RU)'),
(8, 'pic_materi', 'Merekomendasikan kandidat melalui Tes Materi (RU)');

-- --------------------------------------------------------

--
-- Table structure for table `master_universitas`
--

CREATE TABLE `master_universitas` (
  `id_universitas` int(11) NOT NULL,
  `nama_universitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_universitas`
--

INSERT INTO `master_universitas` (`id_universitas`, `nama_universitas`) VALUES
(1, 'Iisip Yapis Biak'),
(2, 'IKIP Budi Utomo'),
(3, 'IKIP Gunung Sitoli'),
(4, 'IKIP Mataram'),
(5, 'IKIP Muhammadiyah Maumere'),
(6, 'IKIP PGRI Bali'),
(7, 'IKIP PGRI Bojonegoro'),
(8, 'IKIP PGRI Jember'),
(9, 'IKIP PGRI Kaltim'),
(10, 'IKIP PGRI Pontianak'),
(11, 'IKIP PGRI Wates'),
(12, 'IKIP Saraswati'),
(13, 'IKIP Widya Darma'),
(14, 'Institut  Sains dan Teknologi Nahdlatul Ulama Bali'),
(15, 'Institut  Teknologi Telkom Surabaya'),
(16, 'Institut Bio Scientia Internasional Indonesia'),
(17, 'Institut Bisnis dan Informatika (IBI) Kosgoro 1957'),
(18, 'Institut Bisnis Dan Informatika Kesatuan'),
(19, 'Institut Bisnis Dan Informatika Kwik Kian Gie'),
(20, 'Institut Bisnis dan Keuangan Nitro'),
(21, 'Institut Bisnis dan Multimedia Asmi Jakarta'),
(22, 'Institut Bisnis Dan Teknologi Pelita Indonesia'),
(23, 'Institut Bisnis Informasi Teknologi dan Bisnis'),
(24, 'Institut Bisnis Muhammadiyah Bekasi'),
(25, 'Institut Bisnis Nusantara'),
(26, 'Institut Ilmu Kesehatan Bhakti Wiyata Kediri'),
(27, 'Institut Ilmu Kesehatan Medika Persada Bali'),
(28, 'Institut Ilmu Kesehatan STRADA Indonesia'),
(29, 'Institut Ilmu Sosial dan Ilmu Budaya Samawa Rea'),
(30, 'Institut Ilmu Sosial Dan Ilmu Politik Jakarta'),
(31, 'Institut Ilmu Sosial dan Manajemen STIAMI'),
(32, 'Institut Informatika Dan Bisnis Darmajaya'),
(33, 'Institut Informatika Indonesia Surabaya'),
(34, 'Institut Keguruan dan Ilmu Pendidikan Siliwangi'),
(35, 'Institut Keguruan dan Teknologi Larantuka'),
(36, 'Institut Kesehatan dan Bisnis St. Fatimah Mamuju'),
(37, 'Institut Kesehatan Deli Husada Deli Tua'),
(38, 'Institut Kesehatan Helvetia'),
(39, 'Institut Kesehatan Indonesia'),
(40, 'Institut Kesehatan Medistra Lubuk Pakam'),
(41, 'Institut Kesehatan Prima Nusantara Bukittinggi'),
(42, 'Institut Kesehatan Rajawali'),
(43, 'Institut Kesehatan Sumatera Utara'),
(44, 'Institut Kesenian Jakarta - LPKJ'),
(45, 'Institut Keuangan-Perbankan Dan Informatika Asia Perbanas'),
(46, 'Institut Komunikasi Dan Bisnis LSPR'),
(47, 'Institut Manajemen Koperasi Indonesia'),
(48, 'Institut Manajemen Wiyata Indonesia'),
(49, 'Institut Medika Drg. Suherman'),
(50, 'Institut Pariwisata dan Bisnis Internasional'),
(51, 'Institut Pendidikan Indonesia Garut'),
(52, 'Institut Pendidikan Nusantara Global'),
(53, 'Institut Pendidikan Tapanuli Selatan'),
(54, 'Institut Pertanian (Intan) Yogyakarta'),
(55, 'Institut Pertanian Bogor'),
(56, 'Institut Pertanian Malang'),
(57, 'Institut Pertanian Stiper'),
(58, 'Institut Sains dan Bisnis Atma Luhur'),
(59, 'Institut Sains Dan Teknologi Akprind'),
(60, 'Institut Sains Dan Teknologi Al-Kamal'),
(61, 'Institut Sains Dan Teknologi Annuqayah'),
(62, 'Institut Sains Dan Teknologi Indonesia Manokwari'),
(63, 'Institut Sains Dan Teknologi Nasional'),
(64, 'Institut Sains Dan Teknologi Palapa'),
(65, 'Institut Sains Dan Teknologi Pembangunan Indonesia'),
(66, 'Institut Sains Dan Teknologi Td Pardede'),
(67, 'Institut Sains dan Teknologi Terpadu Surabaya'),
(68, 'Institut Seni Budaya Indonesia Aceh'),
(69, 'Institut Seni Budaya Indonesia Bandung'),
(70, 'Institut Seni Budaya Indonesia Tanah Papua'),
(71, 'Institut Seni Indonesia Denpasar'),
(72, 'Institut Seni Indonesia Padang Panjang'),
(73, 'Institut Seni Indonesia Surakarta'),
(74, 'Institut Seni Indonesia Yogyakarta'),
(75, 'Institut Teknologi Adhi Tama Surabaya'),
(76, 'Institut Teknologi Bandung'),
(77, 'Institut Teknologi Batam'),
(78, 'Institut Teknologi Bisnis AAS Indonesia'),
(79, 'Institut Teknologi Budi Utomo'),
(80, 'Institut Teknologi Calvin'),
(81, 'Institut Teknologi dan Bisnis Ahmad Dahlan'),
(82, 'Institut Teknologi dan Bisnis Asia Malang'),
(83, 'Institut Teknologi dan Bisnis Bank Rakyat Indonesia'),
(84, 'Institut Teknologi dan Bisnis Diniyyah Putri Lampung'),
(85, 'Institut Teknologi dan Bisnis Indonesia'),
(86, 'Institut Teknologi dan Bisnis Kalbis'),
(87, 'Institut Teknologi dan Bisnis Kalla'),
(88, 'Institut Teknologi dan Bisnis Kristen Bukit Pengharapan'),
(89, 'Institut Teknologi dan Bisnis Muhammadiyah Banyuwangi'),
(90, 'Institut Teknologi dan Bisnis Nazhatut Thullab Al-Muafa Sampang'),
(91, 'Institut Teknologi dan Bisnis Semarang'),
(92, 'Institut Teknologi dan Bisnis STIKOM Bali'),
(93, 'Institut Teknologi dan Kesehatan Avicenna'),
(94, 'Institut Teknologi dan Kesehatan Bali'),
(95, 'Institut Teknologi dan Kesehatan Jakarta'),
(96, 'Institut Teknologi dan Sains Nahdlatul Ulama Pasuruan'),
(97, 'Institut Teknologi Dan Sains Nahdlatul Ulama Pekalongan'),
(98, 'Institut Teknologi Del'),
(99, 'Institut Teknologi Harapan Bangsa'),
(100, 'Institut Teknologi Indonesia'),
(101, 'Institut Teknologi Kalimantan'),
(102, 'Institut Teknologi Kesehatan dan Sains Wiyata Husada Samarinda'),
(103, 'Institut Teknologi Medan'),
(104, 'Institut Teknologi Minaesa'),
(105, 'Institut Teknologi Nasional Bandung'),
(106, 'Institut Teknologi Nasional Malang'),
(107, 'Institut Teknologi Nasional Yogyakarta'),
(108, 'Institut Teknologi Padang'),
(109, 'Institut Teknologi Pembangunan Surabaya'),
(110, 'Institut Teknologi Perusahaan Listrik Negara'),
(111, 'Institut Teknologi Sains Bandung'),
(112, 'Institut Teknologi Sains dan Kesehatan PKU Muhammadiyah Surakarta'),
(113, 'Institut Teknologi Sepuluh Nopember'),
(114, 'Institut Teknologi Sumatera'),
(115, 'Institut Teknologi Tangerang Selatan'),
(116, 'Institut Teknologi Telkom Purwokerto'),
(117, 'Institut Teknologi Yogyakarta'),
(118, 'Institut Transportasi  dan Logistik Trisakti'),
(119, 'S.T. Manajemen Bisnis Multi Sarana Manajemen Administrasi dan Rekayasa Teknologi'),
(120, 'Sekolah Tinggi  Ilmu Ekonomi JIU'),
(121, 'Sekolah Tinggi Akuntansi dan Manajemen Indonesia'),
(122, 'Sekolah Tinggi Analis Bakti Asih'),
(123, 'Sekolah Tinggi Analis Kimia Cilegon'),
(124, 'Sekolah Tinggi Arsitektur YKPN Yogyakarta'),
(125, 'Sekolah Tinggi Bahasa Asing Bina Dinamika Cianjur'),
(126, 'Sekolah Tinggi Bahasa Asing Cahaya Surya'),
(127, 'Sekolah Tinggi Bahasa Asing Cakrawala Nusantara'),
(128, 'Sekolah Tinggi Bahasa Asing Cipto Hadi Pranoto'),
(129, 'Sekolah Tinggi Bahasa Asing Cirebon'),
(130, 'Sekolah Tinggi Bahasa Asing IEC Bekasi'),
(131, 'Sekolah Tinggi Bahasa Asing IEC Jakarta'),
(132, 'Sekolah Tinggi Bahasa Asing JIA'),
(133, 'Sekolah Tinggi Bahasa Asing Jiu'),
(134, 'Sekolah Tinggi Bahasa Asing LIA'),
(135, 'Sekolah Tinggi Bahasa Asing LIA Yogyakarta'),
(136, 'Sekolah Tinggi Bahasa Asing Malang'),
(137, 'Sekolah Tinggi Bahasa Asing Mentari Kupang'),
(138, 'Sekolah Tinggi Bahasa Asing Methodist'),
(139, 'Sekolah Tinggi Bahasa Asing Persada Bunda'),
(140, 'Sekolah Tinggi Bahasa Asing Pertiwi Indonesia'),
(141, 'Sekolah Tinggi Bahasa Asing Pontianak'),
(142, 'Sekolah Tinggi Bahasa Asing Prayoga'),
(143, 'Sekolah Tinggi Bahasa Asing Sebelas April Sumedang'),
(144, 'Sekolah Tinggi Bahasa Asing Technocrat'),
(145, 'Sekolah Tinggi Bahasa Asing Widya Dharma Palembang'),
(146, 'Sekolah Tinggi Bahasa Asing Yapari'),
(147, 'Sekolah Tinggi Bahasa Asing Yunisla Bandar Lampung'),
(148, 'Sekolah Tinggi Bahasa Harapan Bersama'),
(149, 'Sekolah Tinggi Bio Sains Swadiri'),
(150, 'Sekolah Tinggi Bisnis dan Manajemen Dua Saudara'),
(151, 'Sekolah Tinggi Bisnis Putra Harapan'),
(152, 'Sekolah Tinggi Desain Bali'),
(153, 'Sekolah Tinggi Desain Indonesia Bandung'),
(154, 'Sekolah Tinggi Desain Interstudi'),
(155, 'Sekolah Tinggi Desain LaSalle'),
(156, 'Sekolah Tinggi Elektronika & Komputer (STEKOM)'),
(157, 'Sekolah Tinggi Farmasi Bandung'),
(158, 'Sekolah Tinggi Farmasi Indonesia'),
(159, 'Sekolah Tinggi Farmasi Indonesia Perintis Padang'),
(160, 'Sekolah Tinggi Farmasi Mahaganesha'),
(161, 'Sekolah Tinggi Farmasi Muhammadiyah Cirebon'),
(162, 'Sekolah Tinggi Farmasi Muhammadiyah Tangerang'),
(163, 'Sekolah Tinggi Farmasi YPIB Cirebon'),
(164, 'Sekolah Tinggi Filsafat Driyarkara'),
(165, 'Sekolah Tinggi Filsafat Fajar Timur Jayapura'),
(166, 'Sekolah Tinggi Filsafat Jaffray Makassar'),
(167, 'Sekolah Tinggi Filsafat Katolik Ledalero'),
(168, 'Sekolah Tinggi Filsafat Seminari Pineleng'),
(169, 'Sekolah Tinggi Filsafat Teologi Widya Sasana'),
(170, 'Sekolah Tinggi Filsafat Theologi Jakarta'),
(171, 'Sekolah Tinggi Filsafat Theologi S Nusantara'),
(172, 'Sekolah Tinggi Hukum Bandung'),
(173, 'Sekolah Tinggi Hukum Galunggung'),
(174, 'Sekolah Tinggi Hukum Garut'),
(175, 'Sekolah Tinggi Hukum Indonesia Jakarta'),
(176, 'Sekolah Tinggi Hukum Pasundan'),
(177, 'Sekolah Tinggi Hukum YNI'),
(178, 'Sekolah Tinggi Ilmu Administrasi Aan'),
(179, 'Sekolah Tinggi Ilmu Administrasi Abdul Haris'),
(180, 'Sekolah Tinggi Ilmu Administrasi Adabiah'),
(181, 'Sekolah Tinggi Ilmu Administrasi Al Gazali Barru'),
(182, 'Sekolah Tinggi Ilmu Administrasi Al Gazali Soppeng'),
(183, 'Sekolah Tinggi Ilmu Administrasi Amuntai'),
(184, 'Sekolah Tinggi Ilmu Administrasi Asy Syafi iyah'),
(185, 'Sekolah Tinggi Ilmu Administrasi Bagasasi'),
(186, 'Sekolah Tinggi Ilmu Administrasi Bandung'),
(187, 'Sekolah Tinggi Ilmu Administrasi Banten'),
(188, 'Sekolah Tinggi Ilmu Administrasi Bayuangga'),
(189, 'Sekolah Tinggi Ilmu Administrasi Bengkulu'),
(190, 'Sekolah Tinggi Ilmu Administrasi Bina Taruna'),
(191, 'Sekolah Tinggi Ilmu Administrasi Cimahi'),
(192, 'Sekolah Tinggi Ilmu Administrasi Darul Rachman Tual'),
(193, 'Sekolah Tinggi Ilmu Administrasi Denpasar'),
(194, 'Sekolah Tinggi Ilmu Administrasi Iskandar Thani'),
(195, 'Sekolah Tinggi Ilmu Administrasi Karya Dharma Merauke'),
(196, 'Sekolah Tinggi Ilmu Administrasi Kawula Indonesia'),
(197, 'Sekolah Tinggi Ilmu Administrasi Lancang Kuning'),
(198, 'Sekolah Tinggi Ilmu Administrasi Langgur'),
(199, 'Sekolah Tinggi Ilmu Administrasi Lppn'),
(200, 'Sekolah Tinggi Ilmu Administrasi Madani'),
(201, 'Sekolah Tinggi Ilmu Administrasi Malang'),
(202, 'Sekolah Tinggi Ilmu Administrasi Mataram'),
(203, 'Sekolah Tinggi Ilmu Administrasi Maulana Yusuf Banten'),
(204, 'Sekolah Tinggi Ilmu Administrasi Menara Siswa'),
(205, 'Sekolah Tinggi Ilmu Administrasi Muhammadiyah Selong'),
(206, 'Sekolah Tinggi Ilmu Administrasi Nasional'),
(207, 'Sekolah Tinggi Ilmu Administrasi Pagaruyung'),
(208, 'Sekolah Tinggi Ilmu Administrasi Pancamarga Palu'),
(209, 'Sekolah Tinggi Ilmu Administrasi Panglima Sudirman'),
(210, 'Sekolah Tinggi Ilmu Administrasi Pelita Nusantara'),
(211, 'Sekolah Tinggi Ilmu Administrasi Pembangunan'),
(212, 'Sekolah Tinggi Ilmu Administrasi Pembangunan Palu'),
(213, 'Sekolah Tinggi Ilmu Administrasi Puangrimaggalatung'),
(214, 'Sekolah Tinggi Ilmu Administrasi Said Perintah'),
(215, 'Sekolah Tinggi Ilmu Administrasi Sandikta'),
(216, 'Sekolah Tinggi Ilmu Administrasi Satya Negara'),
(217, 'Sekolah Tinggi Ilmu Administrasi Saumlaki'),
(218, 'Sekolah Tinggi Ilmu Administrasi Sebelas April'),
(219, 'Sekolah Tinggi Ilmu Administrasi Setih Setio'),
(220, 'Sekolah Tinggi Ilmu Administrasi Tabalong'),
(221, 'Sekolah Tinggi Ilmu Administrasi Trinitas'),
(222, 'Sekolah Tinggi Ilmu Administrasi YAPPI Makassa'),
(223, 'Sekolah Tinggi Ilmu Administrasi YPPT Tasikmalaya'),
(224, 'Sekolah Tinggi Ilmu Bahasa Asing Bumi Beringin'),
(225, 'Sekolah Tinggi Ilmu Bahasa Asing Invada'),
(226, 'Sekolah Tinggi Ilmu Bahasa Asing ITMI Medan'),
(227, 'Sekolah Tinggi Ilmu Bahasa Banten Raya'),
(228, 'Sekolah Tinggi Ilmu Bahasa Dan Sastra Satya Widya'),
(229, 'Sekolah Tinggi Ilmu Eknomi Yapis Merauke'),
(230, 'Sekolah Tinggi Ilmu Ekonomi 45 Mataram'),
(231, 'Sekolah Tinggi Ilmu Ekonomi AAS'),
(232, 'Sekolah Tinggi Ilmu Ekonomi Abdi Nusa'),
(233, 'Sekolah Tinggi Ilmu Ekonomi Adi Unggul Bhirawa'),
(234, 'Sekolah Tinggi Ilmu Ekonomi AKA'),
(235, 'Sekolah Tinggi Ilmu Ekonomi Al-Anwar'),
(236, 'Sekolah Tinggi Ilmu Ekonomi Al-Khairiyah'),
(237, 'Sekolah Tinggi Ilmu Ekonomi Al-Madani'),
(238, 'Sekolah Tinggi Ilmu Ekonomi Al-Washliyah'),
(239, 'Sekolah Tinggi Ilmu Ekonomi AMA'),
(240, 'Sekolah Tinggi Ilmu Ekonomi Amkop Makassar'),
(241, 'Sekolah Tinggi Ilmu Ekonomi AMM'),
(242, 'Sekolah Tinggi Ilmu Ekonomi Amsir Pare-pare'),
(243, 'Sekolah Tinggi Ilmu Ekonomi Anindyaguna'),
(244, 'Sekolah Tinggi Ilmu Ekonomi Aprin'),
(245, 'Sekolah Tinggi Ilmu Ekonomi Artha Bodhi Iswara'),
(246, 'Sekolah Tinggi Ilmu Ekonomi Assholeh'),
(247, 'Sekolah Tinggi Ilmu Ekonomi Atma Bhakti'),
(248, 'Sekolah Tinggi Ilmu Ekonomi Bajiminasa Makassar'),
(249, 'Sekolah Tinggi Ilmu Ekonomi Balikpapan'),
(250, 'Sekolah Tinggi Ilmu Ekonomi Bangkinang'),
(251, 'Sekolah Tinggi Ilmu Ekonomi Bank Bpd Jawa Tengah'),
(252, 'Sekolah Tinggi Ilmu Ekonomi Banten'),
(253, 'Sekolah Tinggi Ilmu Ekonomi Bentara Persada Batam'),
(254, 'Sekolah Tinggi Ilmu Ekonomi Bhakti Pembangunan'),
(255, 'Sekolah Tinggi Ilmu Ekonomi BII Bekasi'),
(256, 'Sekolah Tinggi Ilmu Ekonomi Bima'),
(257, 'Sekolah Tinggi Ilmu Ekonomi Bina Karya'),
(258, 'Sekolah Tinggi Ilmu Ekonomi Binaniaga'),
(259, 'Sekolah Tinggi Ilmu Ekonomi Bisma Lepisi'),
(260, 'Sekolah Tinggi Ilmu Ekonomi Bisnis Dan Perbankan'),
(261, 'Sekolah Tinggi Ilmu Ekonomi Bisnis Indonesia'),
(262, 'Sekolah Tinggi Ilmu Ekonomi Boedi Oetomo'),
(263, 'Sekolah Tinggi Ilmu Ekonomi BPKP'),
(264, 'Sekolah Tinggi Ilmu Ekonomi Budi Pertiwi'),
(265, 'Sekolah Tinggi Ilmu Ekonomi Bukit Zaitun Sorong'),
(266, 'Sekolah Tinggi Ilmu Ekonomi Bulungan Tarakan'),
(267, 'Sekolah Tinggi Ilmu Ekonomi Cakrawala'),
(268, 'Sekolah Tinggi Ilmu Ekonomi Cendekia Bojonegoro'),
(269, 'Sekolah Tinggi Ilmu Ekonomi Cendekia Karya Utama'),
(270, 'Sekolah Tinggi Ilmu Ekonomi Cipasung'),
(271, 'Sekolah Tinggi Ilmu Ekonomi Cirebon'),
(272, 'Sekolah Tinggi Ilmu Ekonomi Dahani Dahanai Buntok'),
(273, 'Sekolah Tinggi Ilmu Ekonomi dan Bisnis Prana Putra'),
(274, 'Sekolah Tinggi Ilmu Ekonomi Darunnajah'),
(275, 'Sekolah Tinggi Ilmu Ekonomi Deli Sumatera'),
(276, 'Sekolah Tinggi Ilmu Ekonomi Dewantara'),
(277, 'Sekolah Tinggi Ilmu Ekonomi Dharma Agung Bandung'),
(278, 'Sekolah Tinggi Ilmu Ekonomi Dharma Barata Kendari'),
(279, 'Sekolah Tinggi Ilmu Ekonomi Dharma Bumi Putra'),
(280, 'Sekolah Tinggi Ilmu Ekonomi Dharma Nasional Jember'),
(281, 'Sekolah Tinggi Ilmu Ekonomi Dharma Putra Pekanbaru'),
(282, 'Sekolah Tinggi Ilmu Ekonomi Dharma Putra Semarang'),
(283, 'Sekolah Tinggi Ilmu Ekonomi Dr Kh Ez Mutaqien'),
(284, 'Sekolah Tinggi Ilmu Ekonomi Dr Moechtar Talib'),
(285, 'Sekolah Tinggi Ilmu Ekonomi Dwi Sakti Baturaja'),
(286, 'Sekolah Tinggi Ilmu Ekonomi Dwimulya'),
(287, 'Sekolah Tinggi Ilmu Ekonomi Eben Haezer Manado'),
(288, 'Sekolah Tinggi Ilmu Ekonomi Eka Prasetya'),
(289, 'Sekolah Tinggi Ilmu Ekonomi Ekadharma Indonesia'),
(290, 'Sekolah Tinggi Ilmu Ekonomi Ekuitas'),
(291, 'Sekolah Tinggi Ilmu Ekonomi El Fatah Manado'),
(292, 'Sekolah Tinggi Ilmu Ekonomi El Hakim'),
(293, 'Sekolah Tinggi Ilmu Ekonomi Enam Enam Kendari'),
(294, 'Sekolah Tinggi Ilmu Ekonomi Fajar'),
(295, 'Sekolah Tinggi Ilmu Ekonomi Fatahillah'),
(296, 'Sekolah Tinggi Ilmu Ekonomi Galileo'),
(297, 'Sekolah Tinggi Ilmu Ekonomi Ganesha'),
(298, 'Sekolah Tinggi Ilmu Ekonomi Gema Widya Bangsa'),
(299, 'Sekolah Tinggi Ilmu Ekonomi Gempol'),
(300, 'Sekolah Tinggi Ilmu Ekonomi Gentiaras'),
(301, 'Sekolah Tinggi Ilmu Ekonomi Gici'),
(302, 'Sekolah Tinggi Ilmu Ekonomi Graha Kirana'),
(303, 'Sekolah Tinggi Ilmu Ekonomi Haji Agus Salim'),
(304, 'Sekolah Tinggi Ilmu Ekonomi Harapan Bangsa'),
(305, 'Sekolah Tinggi Ilmu Ekonomi Hidayatullah Depok'),
(306, 'Sekolah Tinggi Ilmu Ekonomi IBBI'),
(307, 'Sekolah Tinggi Ilmu Ekonomi IBMT'),
(308, 'Sekolah Tinggi Ilmu Ekonomi Ichsan Pohuwato'),
(309, 'Sekolah Tinggi Ilmu Ekonomi Ichsan Sidenreng Rappang'),
(310, 'Sekolah Tinggi Ilmu Ekonomi IEU'),
(311, 'Sekolah Tinggi Ilmu Ekonomi IGI'),
(312, 'Sekolah Tinggi Ilmu Ekonomi Indocakti'),
(313, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Banda Aceh'),
(314, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Banjarmasin'),
(315, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Jakarta'),
(316, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Makassar'),
(317, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Malang'),
(318, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Membangun (Inaba)'),
(319, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Pontianak'),
(320, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Raya'),
(321, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Surabaya'),
(322, 'Sekolah Tinggi Ilmu Ekonomi Indragiri Rengat'),
(323, 'Sekolah Tinggi Ilmu Ekonomi Insan Pembangunan'),
(324, 'Sekolah Tinggi Ilmu Ekonomi IPWI Jakarta'),
(325, 'Sekolah Tinggi Ilmu Ekonomi Islamiyah'),
(326, 'Sekolah Tinggi Ilmu Ekonomi Isti Ekatana Upaweda'),
(327, 'Sekolah Tinggi Ilmu Ekonomi ITMI Medan'),
(328, 'Sekolah Tinggi Ilmu Ekonomi Jambatan Bulan'),
(329, 'Sekolah Tinggi Ilmu Ekonomi Jambi'),
(330, 'Sekolah Tinggi Ilmu Ekonomi Jaya Negara Tamansiswa'),
(331, 'Sekolah Tinggi Ilmu Ekonomi Jayakarta'),
(332, 'Sekolah Tinggi Ilmu Ekonomi Jayakusuma'),
(333, 'Sekolah Tinggi Ilmu Ekonomi Kalpataru'),
(334, 'Sekolah Tinggi Ilmu Ekonomi Karya'),
(335, 'Sekolah Tinggi Ilmu Ekonomi Kasih Bangsa'),
(336, 'Sekolah Tinggi Ilmu Ekonomi KBP'),
(337, 'Sekolah Tinggi Ilmu Ekonomi Kertanegara'),
(338, 'Sekolah Tinggi Ilmu Ekonomi Kesatuan'),
(339, 'Sekolah Tinggi Ilmu Ekonomi Kesumanegara'),
(340, 'Sekolah Tinggi Ilmu Ekonomi KH Ahmad Dahlan'),
(341, 'Sekolah Tinggi Ilmu Ekonomi KH. Bahaudin Mudhary Madura'),
(342, 'Sekolah Tinggi Ilmu Ekonomi Koperasi Malang'),
(343, 'Sekolah Tinggi Ilmu Ekonomi Krakatau'),
(344, 'Sekolah Tinggi Ilmu Ekonomi Kridatama Bandung'),
(345, 'Sekolah Tinggi Ilmu Ekonomi Kuala Kapuas'),
(346, 'Sekolah Tinggi Ilmu Ekonomi Kusuma Negara'),
(347, 'Sekolah Tinggi Ilmu Ekonomi La Tansa Mashiro'),
(348, 'Sekolah Tinggi Ilmu Ekonomi Lamaddukelleng'),
(349, 'Sekolah Tinggi Ilmu Ekonomi Lamappapoleonro Soppeng'),
(350, 'Sekolah Tinggi Ilmu Ekonomi Lantim Way Jepara'),
(351, 'Sekolah Tinggi Ilmu Ekonomi Latifah Mubarokiyah'),
(352, 'Sekolah Tinggi Ilmu Ekonomi Lembah Dempo'),
(353, 'Sekolah Tinggi Ilmu Ekonomi Lhokseumawe'),
(354, 'Sekolah Tinggi Ilmu Ekonomi LMII'),
(355, 'Sekolah Tinggi Ilmu Ekonomi LPI Makassar'),
(356, 'Sekolah Tinggi Ilmu Ekonomi Mah-eisa'),
(357, 'Sekolah Tinggi Ilmu Ekonomi Mahardhika'),
(358, 'Sekolah Tinggi Ilmu Ekonomi Maiji'),
(359, 'Sekolah Tinggi Ilmu Ekonomi Makassar Bongaya'),
(360, 'Sekolah Tinggi Ilmu Ekonomi Makassar Maju'),
(361, 'Sekolah Tinggi Ilmu Ekonomi Malangkucecwara'),
(362, 'Sekolah Tinggi Ilmu Ekonomi Manajemen Rutu Nusa'),
(363, 'Sekolah Tinggi Ilmu Ekonomi Mandala'),
(364, 'Sekolah Tinggi Ilmu Ekonomi Mars'),
(365, 'Sekolah Tinggi Ilmu Ekonomi Media Nusantara Citra'),
(366, 'Sekolah Tinggi Ilmu Ekonomi Miftahul Huda Subang'),
(367, 'Sekolah Tinggi Ilmu Ekonomi Mitra Indonesia'),
(368, 'Sekolah Tinggi Ilmu Ekonomi Mitra Lampung'),
(369, 'Sekolah Tinggi Ilmu Ekonomi Muara Teweh'),
(370, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Asahan'),
(371, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Bandung'),
(372, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Cilacap'),
(373, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Jakarta'),
(374, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Kalianda'),
(375, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Mamuju'),
(376, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Tuban'),
(377, 'Sekolah Tinggi Ilmu Ekonomi Mujahidin'),
(378, 'Sekolah Tinggi Ilmu Ekonomi Mulia Darma Pratama'),
(379, 'Sekolah Tinggi Ilmu Ekonomi Mulia Pratama'),
(380, 'Sekolah Tinggi Ilmu Ekonomi Mulia Singkawang'),
(381, 'Sekolah Tinggi Ilmu Ekonomi Nasional'),
(382, 'Sekolah Tinggi Ilmu Ekonomi Nasional Banjarmasin'),
(383, 'Sekolah Tinggi Ilmu Ekonomi Nasional Indonesia'),
(384, 'Sekolah Tinggi Ilmu Ekonomi Nasional Samarinda'),
(385, 'Sekolah Tinggi Ilmu Ekonomi Nganjuk'),
(386, 'Sekolah Tinggi Ilmu Ekonomi Nu Trate'),
(387, 'Sekolah Tinggi Ilmu Ekonomi Nusa Bangsa'),
(388, 'Sekolah Tinggi Ilmu Ekonomi Nusa Megar Kencana'),
(389, 'Sekolah Tinggi Ilmu Ekonomi Nusantara Makassar'),
(390, 'Sekolah Tinggi Ilmu Ekonomi Nusantara Sangatta'),
(391, 'Sekolah Tinggi Ilmu Ekonomi Oemathonis'),
(392, 'Sekolah Tinggi Ilmu Ekonomi Ottow & Geissler Serui'),
(393, 'Sekolah Tinggi Ilmu Ekonomi Pagaruyung'),
(394, 'Sekolah Tinggi Ilmu Ekonomi Palangka Raya'),
(395, 'Sekolah Tinggi Ilmu Ekonomi Panca Bhakti Palu'),
(396, 'Sekolah Tinggi Ilmu Ekonomi Pancasetia'),
(397, 'Sekolah Tinggi Ilmu Ekonomi Pandu Madania'),
(398, 'Sekolah Tinggi Ilmu Ekonomi Paripurna'),
(399, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata'),
(400, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata Api'),
(401, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata Indonesia'),
(402, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata YAPARI'),
(403, 'Sekolah Tinggi Ilmu Ekonomi Pasaman'),
(404, 'Sekolah Tinggi Ilmu Ekonomi Pasundan'),
(405, 'Sekolah Tinggi Ilmu Ekonomi Pelita Nusantara'),
(406, 'Sekolah Tinggi Ilmu Ekonomi Pembangunan Indonesia'),
(407, 'Sekolah Tinggi Ilmu Ekonomi Pembangunan Nasional'),
(408, 'Sekolah Tinggi Ilmu Ekonomi Pemnas Indonesia'),
(409, 'Sekolah Tinggi Ilmu Ekonomi Pemuda'),
(410, 'Sekolah Tinggi Ilmu Ekonomi Penguji Sukabumi'),
(411, 'Sekolah Tinggi Ilmu Ekonomi Perbanas Surabaya'),
(412, 'Sekolah Tinggi Ilmu Ekonomi Perbankan Indonesia'),
(413, 'Sekolah Tinggi Ilmu Ekonomi Perdagangan'),
(414, 'Sekolah Tinggi Ilmu Ekonomi Persada Bunda'),
(415, 'Sekolah Tinggi Ilmu Ekonomi Pertiba'),
(416, 'Sekolah Tinggi Ilmu Ekonomi Pertiwi'),
(417, 'Sekolah Tinggi Ilmu Ekonomi Petra'),
(418, 'Sekolah Tinggi Ilmu Ekonomi PGRI Dewantara'),
(419, 'Sekolah Tinggi Ilmu Ekonomi PGRI Sukabumi'),
(420, 'Sekolah Tinggi Ilmu Ekonomi Pioner Manado'),
(421, 'Sekolah Tinggi Ilmu Ekonomi Pontianak'),
(422, 'Sekolah Tinggi Ilmu Ekonomi Port Numbay Jayapura'),
(423, 'Sekolah Tinggi Ilmu Ekonomi Ppi'),
(424, 'Sekolah Tinggi Ilmu Ekonomi Prabumulih'),
(425, 'Sekolah Tinggi Ilmu Ekonomi Prasetiya Mandiri Lampung'),
(426, 'Sekolah Tinggi Ilmu Ekonomi Prima Graha'),
(427, 'Sekolah Tinggi Ilmu Ekonomi Profesional Indonesia'),
(428, 'Sekolah Tinggi Ilmu Ekonomi Purna Graha'),
(429, 'Sekolah Tinggi Ilmu Ekonomi Putra Bangsa'),
(430, 'Sekolah Tinggi Ilmu Ekonomi Putra Timor'),
(431, 'Sekolah Tinggi Ilmu Ekonomi Ragam Tunas'),
(432, 'Sekolah Tinggi Ilmu Ekonomi Rahmaniyah'),
(433, 'Sekolah Tinggi Ilmu Ekonomi Rajawali'),
(434, 'Sekolah Tinggi Ilmu Ekonomi Riau'),
(435, 'Sekolah Tinggi Ilmu Ekonomi Rizky'),
(436, 'Sekolah Tinggi Ilmu Ekonomi Sabang'),
(437, 'Sekolah Tinggi Ilmu Ekonomi Sakti Alam Kerinci'),
(438, 'Sekolah Tinggi Ilmu Ekonomi Samarinda'),
(439, 'Sekolah Tinggi Ilmu Ekonomi Sampit'),
(440, 'Sekolah Tinggi Ilmu Ekonomi Santa Ursula'),
(441, 'Sekolah Tinggi Ilmu Ekonomi Satria'),
(442, 'Sekolah Tinggi Ilmu Ekonomi Satu Nusa'),
(443, 'Sekolah Tinggi Ilmu Ekonomi Satya Dharma'),
(444, 'Sekolah Tinggi Ilmu Ekonomi Saumlaki'),
(445, 'Sekolah Tinggi Ilmu Ekonomi SBI'),
(446, 'Sekolah Tinggi Ilmu Ekonomi Sebelas April'),
(447, 'Sekolah Tinggi Ilmu Ekonomi Semarang'),
(448, 'Sekolah Tinggi Ilmu Ekonomi Serasan Muara Enim'),
(449, 'Sekolah Tinggi Ilmu Ekonomi Serelo Lahat'),
(450, 'Sekolah Tinggi Ilmu Ekonomi St Pignatelli'),
(451, 'Sekolah Tinggi Ilmu Ekonomi Stan Im'),
(452, 'Sekolah Tinggi Ilmu Ekonomi STEMBI'),
(453, 'Sekolah Tinggi Ilmu Ekonomi Stmy'),
(454, 'Sekolah Tinggi Ilmu Ekonomi Sulawesi Utara'),
(455, 'Sekolah Tinggi Ilmu Ekonomi Sultan Agung'),
(456, 'Sekolah Tinggi Ilmu Ekonomi Sumbar'),
(457, 'Sekolah Tinggi Ilmu Ekonomi Surakarta'),
(458, 'Sekolah Tinggi Ilmu Ekonomi Surya Nusantara'),
(459, 'Sekolah Tinggi Ilmu Ekonomi Sutaatmadja'),
(460, 'Sekolah Tinggi Ilmu Ekonomi Swadaya'),
(461, 'Sekolah Tinggi Ilmu Ekonomi Swadaya Manado'),
(462, 'Sekolah Tinggi Ilmu Ekonomi Swasta Mandiri'),
(463, 'Sekolah Tinggi Ilmu Ekonomi Taman Siswa'),
(464, 'Sekolah Tinggi Ilmu Ekonomi Tamansiswa'),
(465, 'Sekolah Tinggi Ilmu Ekonomi Tenggarong'),
(466, 'Sekolah Tinggi Ilmu Ekonomi Totalwin'),
(467, 'Sekolah Tinggi Ilmu Ekonomi Tri Bhakti'),
(468, 'Sekolah Tinggi Ilmu Ekonomi Tri Dharma Nusantara'),
(469, 'Sekolah Tinggi Ilmu Ekonomi Tri Dharma Widya'),
(470, 'Sekolah Tinggi Ilmu Ekonomi Trianandra'),
(471, 'Sekolah Tinggi Ilmu Ekonomi Trianandra'),
(472, 'Sekolah Tinggi Ilmu Ekonomi Tribuana'),
(473, 'Sekolah Tinggi Ilmu Ekonomi Tricom'),
(474, 'Sekolah Tinggi Ilmu Ekonomi Tridharma'),
(475, 'Sekolah Tinggi Ilmu Ekonomi Triguna'),
(476, 'Sekolah Tinggi Ilmu Ekonomi Triguna'),
(477, 'Sekolah Tinggi Ilmu Ekonomi Trisakti'),
(478, 'Sekolah Tinggi Ilmu Ekonomi Trisna Negara'),
(479, 'Sekolah Tinggi Ilmu Ekonomi Tuah Negeri'),
(480, 'Sekolah Tinggi Ilmu Ekonomi Tunas Nusantara'),
(481, 'Sekolah Tinggi Ilmu Ekonomi Umel'),
(482, 'Sekolah Tinggi Ilmu Ekonomi Urip Sumohardjo'),
(483, 'Sekolah Tinggi Ilmu Ekonomi Wibawa Karta Raharja'),
(484, 'Sekolah Tinggi Ilmu Ekonomi Widya Darma'),
(485, 'Sekolah Tinggi Ilmu Ekonomi Widya Darma Kotamobagu'),
(486, 'Sekolah Tinggi Ilmu Ekonomi Widya Dharma'),
(487, 'Sekolah Tinggi Ilmu Ekonomi Widya Gama'),
(488, 'Sekolah Tinggi Ilmu Ekonomi Widya Jayakarta'),
(489, 'Sekolah Tinggi Ilmu Ekonomi Widya Manggala'),
(490, 'Sekolah Tinggi Ilmu Ekonomi Widya Manggalia'),
(491, 'Sekolah Tinggi Ilmu Ekonomi Widya Persada'),
(492, 'Sekolah Tinggi Ilmu Ekonomi Widya Praja'),
(493, 'Sekolah Tinggi Ilmu Ekonomi Widya Wiwaha'),
(494, 'Sekolah Tinggi Ilmu Ekonomi Wijaya Mulya'),
(495, 'Sekolah Tinggi Ilmu Ekonomi Wilwatikta'),
(496, 'Sekolah Tinggi Ilmu Ekonomi Wira Bhakti'),
(497, 'Sekolah Tinggi Ilmu Ekonomi Wiyatamandala'),
(498, 'Sekolah Tinggi Ilmu Ekonomi Yadika Bangil'),
(499, 'Sekolah Tinggi Ilmu Ekonomi YAI'),
(500, 'Sekolah Tinggi Ilmu Ekonomi YAPAN'),
(501, 'Sekolah Tinggi Ilmu Ekonomi Yapi Bone'),
(502, 'Sekolah Tinggi Ilmu Ekonomi Yapis'),
(503, 'Sekolah Tinggi Ilmu Ekonomi Yapman Majene'),
(504, 'Sekolah Tinggi Ilmu Ekonomi Yapti Jeneponto'),
(505, 'Sekolah Tinggi Ilmu Ekonomi Yasa Anggana'),
(506, 'Sekolah Tinggi Ilmu Ekonomi Yasmi'),
(507, 'Sekolah Tinggi Ilmu Ekonomi Ykp'),
(508, 'Sekolah Tinggi Ilmu Ekonomi YKPN'),
(509, 'Sekolah Tinggi Ilmu Ekonomi YP-Karya'),
(510, 'Sekolah Tinggi Ilmu Ekonomi YPBI'),
(511, 'Sekolah Tinggi Ilmu Ekonomi YPHB'),
(512, 'Sekolah Tinggi Ilmu Ekonomi YPN'),
(513, 'Sekolah Tinggi Ilmu Ekonomi YPPI'),
(514, 'Sekolah Tinggi Ilmu Ekonomi YPUP Makassar'),
(515, 'Sekolah Tinggi Ilmu Farmasi Bhakti Pertiwi'),
(516, 'Sekolah Tinggi Ilmu Farmasi dan  Pengetahuan Alam Pelita Mas Palu'),
(517, 'Sekolah Tinggi Ilmu Farmasi Makassar'),
(518, 'Sekolah Tinggi Ilmu Farmasi Nusaputera'),
(519, 'Sekolah Tinggi Ilmu Farmasi Padang'),
(520, 'Sekolah Tinggi Ilmu Farmasi Riau'),
(521, 'Sekolah Tinggi Ilmu Farmasi Yayasan Pharmasi'),
(522, 'Sekolah Tinggi Ilmu Hukum Al-Banna'),
(523, 'Sekolah Tinggi Ilmu Hukum Amsir'),
(524, 'Sekolah Tinggi Ilmu Hukum Asy-Syafi iyah Medan'),
(525, 'Sekolah Tinggi Ilmu Hukum Awang Long'),
(526, 'Sekolah Tinggi Ilmu Hukum Biak-Papua'),
(527, 'Sekolah Tinggi Ilmu Hukum Bintuni'),
(528, 'Sekolah Tinggi Ilmu Hukum Cendana Wangi'),
(529, 'Sekolah Tinggi Ilmu Hukum Cokroaminoto'),
(530, 'Sekolah Tinggi Ilmu Hukum Damarica Palopo'),
(531, 'Sekolah Tinggi Ilmu Hukum dan HAM'),
(532, 'Sekolah Tinggi Ilmu Hukum dan Politik Palu'),
(533, 'Sekolah Tinggi Ilmu Hukum dan Politik Pelopor Bangsa'),
(534, 'Sekolah Tinggi Ilmu Hukum Deli Sumatera'),
(535, 'Sekolah Tinggi Ilmu Hukum Dharma Andhiga'),
(536, 'Sekolah Tinggi Ilmu Hukum Graha Kirana'),
(537, 'Sekolah Tinggi Ilmu Hukum Gunung Jati'),
(538, 'Sekolah Tinggi Ilmu Hukum Habaring Hurung Sampit'),
(539, 'Sekolah Tinggi Ilmu Hukum IBLAM'),
(540, 'Sekolah Tinggi Ilmu Hukum Jenderal Sudirman'),
(541, 'Sekolah Tinggi Ilmu Hukum Kuala Kapuas'),
(542, 'Sekolah Tinggi Ilmu Hukum Lamaddukelleng'),
(543, 'Sekolah Tinggi Ilmu Hukum Lubuk Sikaping'),
(544, 'Sekolah Tinggi Ilmu Hukum Manokwari'),
(545, 'Sekolah Tinggi Ilmu Hukum Muhammad Thaha Tual'),
(546, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Bima'),
(547, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Kalianda'),
(548, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Kisaran'),
(549, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Takengon'),
(550, 'Sekolah Tinggi Ilmu Hukum Nias Selatan'),
(551, 'Sekolah Tinggi Ilmu Hukum Padang'),
(552, 'Sekolah Tinggi Ilmu Hukum Painan'),
(553, 'Sekolah Tinggi Ilmu Hukum Pengayoman'),
(554, 'Sekolah Tinggi Ilmu Hukum Persada Bunda'),
(555, 'Sekolah Tinggi Ilmu Hukum Pertiba Pangkalpinang'),
(556, 'Sekolah Tinggi Ilmu Hukum Prof. Dr. Yohanes Usfunan, SH, MH'),
(557, 'Sekolah Tinggi Ilmu Hukum Rahmaniyah'),
(558, 'Sekolah Tinggi Ilmu Hukum Riau'),
(559, 'Sekolah Tinggi Ilmu Hukum Serasan Muara Enim'),
(560, 'Sekolah Tinggi Ilmu Hukum Soelthan M Tsjafioeddin'),
(561, 'Sekolah Tinggi Ilmu Hukum Sultan Adam'),
(562, 'Sekolah Tinggi Ilmu Hukum Sumpah Pemuda'),
(563, 'Sekolah Tinggi Ilmu Hukum Sunan Giri'),
(564, 'Sekolah Tinggi Ilmu Hukum Tambun Bungai'),
(565, 'Sekolah Tinggi Ilmu Hukum Umel Mandiri'),
(566, 'Sekolah Tinggi Ilmu Hukum YPM'),
(567, 'Sekolah Tinggi Ilmu Hukum Zainul Hasan'),
(568, 'Sekolah Tinggi Ilmu Keguruan dan Ilmu Pendidikan Terang Bangsa'),
(569, 'Sekolah Tinggi Ilmu Kehutanan Pante Kulu'),
(570, 'Sekolah Tinggi Ilmu Keperawatan Famika'),
(571, 'Sekolah Tinggi Ilmu Keperawatan PPNI Jawa Barat'),
(572, 'Sekolah Tinggi Ilmu Kesehatan (STIKES) Lenggogeni Padang'),
(573, 'Sekolah Tinggi Ilmu Kesehatan Abdi Nusa'),
(574, 'Sekolah Tinggi Ilmu Kesehatan Abdi Nusantara'),
(575, 'Sekolah Tinggi Ilmu Kesehatan Abdurahman Palembang'),
(576, 'Sekolah Tinggi Ilmu Kesehatan Aisyiyah Bandung'),
(577, 'Sekolah Tinggi Ilmu Kesehatan Aisyiyah Surakarta'),
(578, 'Sekolah Tinggi Ilmu Kesehatan Akbidyo'),
(579, 'Sekolah Tinggi Ilmu Kesehatan Al Ma arif'),
(580, 'Sekolah Tinggi Ilmu Kesehatan Alifah Padang'),
(581, 'Sekolah Tinggi Ilmu Kesehatan Ar-Rum'),
(582, 'Sekolah Tinggi Ilmu Kesehatan Arjuna'),
(583, 'Sekolah Tinggi Ilmu Kesehatan Artha Bodhi Iswara'),
(584, 'Sekolah Tinggi Ilmu Kesehatan Avicenna'),
(585, 'Sekolah Tinggi Ilmu Kesehatan Baiturrahim'),
(586, 'Sekolah Tinggi Ilmu Kesehatan Bakti Tunas Husada'),
(587, 'Sekolah Tinggi Ilmu Kesehatan Bakti Utama Pati'),
(588, 'Sekolah Tinggi Ilmu Kesehatan Bali Wisnu Dharma Denpasar'),
(589, 'Sekolah Tinggi Ilmu Kesehatan Bani Saleh'),
(590, 'Sekolah Tinggi Ilmu Kesehatan Banten'),
(591, 'Sekolah Tinggi Ilmu Kesehatan Baramuli'),
(592, 'Sekolah Tinggi Ilmu Kesehatan Bethesda Yakkum'),
(593, 'Sekolah Tinggi Ilmu Kesehatan Bhakti Kencana'),
(594, 'Sekolah Tinggi Ilmu Kesehatan Bina Bangsa Majene'),
(595, 'Sekolah Tinggi Ilmu Kesehatan Bina Husada'),
(596, 'Sekolah Tinggi Ilmu Kesehatan Bina Putera Banjar'),
(597, 'Sekolah Tinggi Ilmu Kesehatan Binalita Sudama'),
(598, 'Sekolah Tinggi Ilmu Kesehatan Bogor Husada'),
(599, 'Sekolah Tinggi Ilmu Kesehatan Borneo Lestari'),
(600, 'Sekolah Tinggi Ilmu Kesehatan Brebes'),
(601, 'Sekolah Tinggi Ilmu Kesehatan Budhi Luhur Cimahi'),
(602, 'Sekolah Tinggi Ilmu Kesehatan Budi Kemuliaan'),
(603, 'Sekolah Tinggi Ilmu Kesehatan Budi Mulia'),
(604, 'Sekolah Tinggi Ilmu Kesehatan Buleleng'),
(605, 'Sekolah Tinggi Ilmu Kesehatan Cahaya Bangsa'),
(606, 'Sekolah Tinggi Ilmu Kesehatan Cendekia Utama'),
(607, 'Sekolah Tinggi Ilmu Kesehatan Ceria Buana'),
(608, 'Sekolah Tinggi Ilmu Kesehatan Cikarang'),
(609, 'Sekolah Tinggi Ilmu Kesehatan Cirebon'),
(610, 'Sekolah Tinggi Ilmu Kesehatan Datu Kamanre'),
(611, 'Sekolah Tinggi Ilmu Kesehatan Dharma Husada'),
(612, 'Sekolah Tinggi Ilmu Kesehatan Duta Gama Klaten'),
(613, 'Sekolah Tinggi Ilmu Kesehatan Elisabeth Semarang'),
(614, 'Sekolah Tinggi Ilmu Kesehatan Fitrah Aldar'),
(615, 'Sekolah Tinggi Ilmu Kesehatan Flora'),
(616, 'Sekolah Tinggi Ilmu Kesehatan Garut'),
(617, 'Sekolah Tinggi Ilmu Kesehatan Gunung Sari'),
(618, 'Sekolah Tinggi Ilmu Kesehatan Hakli'),
(619, 'Sekolah Tinggi Ilmu Kesehatan Hang Tuah'),
(620, 'Sekolah Tinggi Ilmu Kesehatan Hang Tuah Surabaya'),
(621, 'Sekolah Tinggi Ilmu Kesehatan Har-Kausyar'),
(622, 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa'),
(623, 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa'),
(624, 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa Purwokerto'),
(625, 'Sekolah Tinggi Ilmu Kesehatan Harapan Ibu Jambi'),
(626, 'Sekolah Tinggi Ilmu Kesehatan Holistik'),
(627, 'Sekolah Tinggi Ilmu Kesehatan Husada Jombang'),
(628, 'Sekolah Tinggi Ilmu Kesehatan Husada Mandiri Poso'),
(629, 'Sekolah Tinggi Ilmu Kesehatan Immanuel Bandung'),
(630, 'Sekolah Tinggi Ilmu Kesehatan Indah Medan'),
(631, 'Sekolah Tinggi Ilmu Kesehatan Indonesia'),
(632, 'Sekolah Tinggi Ilmu Kesehatan Indonesia Jaya'),
(633, 'Sekolah Tinggi Ilmu Kesehatan Indonesia Maju'),
(634, 'Sekolah Tinggi Ilmu Kesehatan Indramayu'),
(635, 'Sekolah Tinggi Ilmu Kesehatan Intan Martapura'),
(636, 'Sekolah Tinggi Ilmu Kesehatan Istara Nusantara'),
(637, 'Sekolah Tinggi Ilmu Kesehatan Jayakarta'),
(638, 'Sekolah Tinggi Ilmu Kesehatan Jayapura'),
(639, 'Sekolah Tinggi Ilmu Kesehatan Jenderal Achmad Yani'),
(640, 'Sekolah Tinggi Ilmu Kesehatan Karimun'),
(641, 'Sekolah Tinggi Ilmu Kesehatan Karya Kesehatan'),
(642, 'Sekolah Tinggi Ilmu Kesehatan Keluarga Bunda Jambi'),
(643, 'Sekolah Tinggi Ilmu Kesehatan Kendal'),
(644, 'Sekolah Tinggi Ilmu Kesehatan Kendedes'),
(645, 'Sekolah Tinggi Ilmu Kesehatan Kepanjen'),
(646, 'Sekolah Tinggi Ilmu Kesehatan Kesdam IX/Udayana'),
(647, 'Sekolah Tinggi Ilmu Kesehatan Kesehatan Baru'),
(648, 'Sekolah Tinggi Ilmu Kesehatan Khas Kempek'),
(649, 'Sekolah Tinggi Ilmu Kesehatan Kuningan'),
(650, 'Sekolah Tinggi Ilmu Kesehatan Langsa'),
(651, 'Sekolah Tinggi Ilmu Kesehatan Madani Yogyakarta'),
(652, 'Sekolah Tinggi Ilmu Kesehatan Maharani'),
(653, 'Sekolah Tinggi Ilmu Kesehatan Mahardika Cirebon'),
(654, 'Sekolah Tinggi Ilmu Kesehatan Majapahit'),
(655, 'Sekolah Tinggi Ilmu Kesehatan Makariwo Halmahera'),
(656, 'Sekolah Tinggi Ilmu Kesehatan Makassar'),
(657, 'Sekolah Tinggi Ilmu Kesehatan Mandala Waluya Kendari'),
(658, 'Sekolah Tinggi Ilmu Kesehatan Mataram'),
(659, 'Sekolah Tinggi Ilmu Kesehatan Medistra Indonesia'),
(660, 'Sekolah Tinggi Ilmu Kesehatan Mega Rezky'),
(661, 'Sekolah Tinggi Ilmu Kesehatan Merangin'),
(662, 'Sekolah Tinggi Ilmu Kesehatan Mitra Adiguna'),
(663, 'Sekolah Tinggi Ilmu Kesehatan Mitra Husada Medan'),
(664, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga'),
(665, 'Sekolah Tinggi Ilmu Kesehatan Mitra Kencana'),
(666, 'Sekolah Tinggi Ilmu Kesehatan Mitra Lampung'),
(667, 'Sekolah Tinggi Ilmu Kesehatan Mitra Ria Husada'),
(668, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Aceh'),
(669, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Gombong'),
(670, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Kendal'),
(671, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Manado'),
(672, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Wonosobo'),
(673, 'Sekolah Tinggi Ilmu Kesehatan Mutiara Mahakam Samarinda'),
(674, 'Sekolah Tinggi Ilmu Kesehatan Nani Hasanuddin'),
(675, 'Sekolah Tinggi Ilmu Kesehatan Nasional'),
(676, 'Sekolah Tinggi Ilmu Kesehatan Nazhatut Thullab Sampang'),
(677, 'Sekolah Tinggi Ilmu Kesehatan Ngudia Husada Madura'),
(678, 'Sekolah Tinggi Ilmu Kesehatan Notokusumo Yogyakarta'),
(679, 'Sekolah Tinggi Ilmu Kesehatan Nusantara'),
(680, 'Sekolah Tinggi Ilmu Kesehatan Pamentas'),
(681, 'Sekolah Tinggi Ilmu Kesehatan Panca Bhakti'),
(682, 'Sekolah Tinggi Ilmu Kesehatan Panrita Husada'),
(683, 'Sekolah Tinggi Ilmu Kesehatan Panti Rapih Yogyakarta'),
(684, 'Sekolah Tinggi Ilmu Kesehatan Panti Wilasa'),
(685, 'Sekolah Tinggi Ilmu Kesehatan Papua'),
(686, 'Sekolah Tinggi Ilmu Kesehatan Payung Negeri'),
(687, 'Sekolah Tinggi Ilmu Kesehatan Pelamonia Kesdam VII Wirabuana'),
(688, 'Sekolah Tinggi Ilmu Kesehatan Pemkab Jombang'),
(689, 'Sekolah Tinggi Ilmu Kesehatan Permata Nusantara'),
(690, 'Sekolah Tinggi Ilmu Kesehatan Persada Nabire'),
(691, 'Sekolah Tinggi Ilmu Kesehatan Pertamedika'),
(692, 'Sekolah Tinggi Ilmu Kesehatan Rajawali'),
(693, 'Sekolah Tinggi Ilmu Kesehatan Rajekwesi Bojonegoro'),
(694, 'Sekolah Tinggi Ilmu Kesehatan Respati'),
(695, 'Sekolah Tinggi Ilmu Kesehatan RS Haji Medan'),
(696, 'Sekolah Tinggi Ilmu Kesehatan RS Husada'),
(697, 'Sekolah Tinggi Ilmu Kesehatan Salewangang Maros'),
(698, 'Sekolah Tinggi Ilmu Kesehatan Salsabila Serang'),
(699, 'Sekolah Tinggi Ilmu Kesehatan Samarinda'),
(700, 'Sekolah Tinggi Ilmu Kesehatan Sambas'),
(701, 'Sekolah Tinggi Ilmu Kesehatan Santo Borromeus'),
(702, 'Sekolah Tinggi Ilmu Kesehatan Sapta Bakti'),
(703, 'Sekolah Tinggi Ilmu Kesehatan Sehat Medan'),
(704, 'Sekolah Tinggi Ilmu Kesehatan Serulingmas'),
(705, 'Sekolah Tinggi Ilmu Kesehatan Sint Carolus'),
(706, 'Sekolah Tinggi Ilmu Kesehatan Sismadi'),
(707, 'Sekolah Tinggi Ilmu Kesehatan Siti Khadijah'),
(708, 'Sekolah Tinggi Ilmu Kesehatan St Fatimah'),
(709, 'Sekolah Tinggi Ilmu Kesehatan Stella Maris Makasar'),
(710, 'Sekolah Tinggi Ilmu Kesehatan Sukabumi'),
(711, 'Sekolah Tinggi Ilmu Kesehatan Sumatera Barat'),
(712, 'Sekolah Tinggi Ilmu Kesehatan Surabaya'),
(713, 'Sekolah Tinggi Ilmu Kesehatan Surifatri Kotamobagu'),
(714, 'Sekolah Tinggi Ilmu Kesehatan Surya Global'),
(715, 'Sekolah Tinggi Ilmu Kesehatan Syedza Saintika'),
(716, 'Sekolah Tinggi Ilmu Kesehatan Tamalatea Makassar'),
(717, 'Sekolah Tinggi Ilmu Kesehatan Tana Toraja'),
(718, 'Sekolah Tinggi Ilmu Kesehatan Tarumanagara'),
(719, 'Sekolah Tinggi Ilmu Kesehatan Trinita'),
(720, 'Sekolah Tinggi Ilmu Kesehatan Tujuh Belas'),
(721, 'Sekolah Tinggi Ilmu Kesehatan Uniska'),
(722, 'Sekolah Tinggi Ilmu Kesehatan Widya Husada Semarang'),
(723, 'Sekolah Tinggi Ilmu Kesehatan Widya Nusantara Palu'),
(724, 'Sekolah Tinggi Ilmu Kesehatan William Booth'),
(725, 'Sekolah Tinggi Ilmu Kesehatan Wira Husada'),
(726, 'Sekolah Tinggi Ilmu Kesehatan Yapika'),
(727, 'Sekolah Tinggi Ilmu Kesehatan Yatsi'),
(728, 'Sekolah Tinggi Ilmu Kesehatan YLPP Purwokerto'),
(729, 'Sekolah Tinggi Ilmu Kesehatan YPAK Padang'),
(730, 'Sekolah Tinggi Ilmu Kesehatan YPIB'),
(731, 'Sekolah Tinggi Ilmu Kesejahteraan Sosial Manado'),
(732, 'Sekolah Tinggi Ilmu Komputer 22 Januari Kendari'),
(733, 'Sekolah Tinggi Ilmu Komputer Al-khairiyah'),
(734, 'Sekolah Tinggi Ilmu Komputer Ambon'),
(735, 'Sekolah Tinggi Ilmu Komputer Binaniaga'),
(736, 'Sekolah Tinggi Ilmu Komputer Dinamika Bangsa'),
(737, 'Sekolah Tinggi Ilmu Komputer El Rahma'),
(738, 'Sekolah Tinggi Ilmu Komputer Medan'),
(739, 'Sekolah Tinggi Ilmu Komputer Muhammadiyah Batam'),
(740, 'Sekolah Tinggi Ilmu Komputer PGRI Banyuwangi'),
(741, 'Sekolah Tinggi Ilmu Komputer Poltek Cirebon'),
(742, 'Sekolah Tinggi Ilmu Komputer Rajawali'),
(743, 'Sekolah Tinggi Ilmu Komputer Yos Sudarso'),
(744, 'Sekolah Tinggi Ilmu Komunikasi'),
(745, 'Sekolah Tinggi Ilmu Komunikasi Aws'),
(746, 'Sekolah Tinggi Ilmu Komunikasi Bandung'),
(747, 'Sekolah Tinggi Ilmu Komunikasi Indonesia Maju'),
(748, 'Sekolah Tinggi Ilmu Komunikasi Inter Studi'),
(749, 'Sekolah Tinggi Ilmu Komunikasi ITKP'),
(750, 'Sekolah Tinggi Ilmu Komunikasi Mahakam'),
(751, 'Sekolah Tinggi Ilmu Komunikasi Manado'),
(752, 'Sekolah Tinggi Ilmu Komunikasi Pembangunan'),
(753, 'Sekolah Tinggi Ilmu Komunikasi Profesi Indonesia'),
(754, 'Sekolah Tinggi Ilmu Komunikasi Wangsa Jaya'),
(755, 'Sekolah Tinggi Ilmu Komunikasi Yogyakarta'),
(756, 'Sekolah Tinggi Ilmu Manajemen'),
(757, 'Sekolah Tinggi Ilmu Manajemen Budi Bakti'),
(758, 'Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ'),
(759, 'Sekolah Tinggi Ilmu Manajemen Indonesia Handayani'),
(760, 'Sekolah Tinggi Ilmu Manajemen Indonesia Meulaboh'),
(761, 'Sekolah Tinggi Ilmu Manajemen Indonesia YAPMI'),
(762, 'Sekolah Tinggi Ilmu Manajemen Informatika & Teknik Komputer Agamua Wamena Papua'),
(763, 'Sekolah Tinggi Ilmu Manajemen Kupang'),
(764, 'Sekolah Tinggi Ilmu Manajemen Pase'),
(765, 'Sekolah Tinggi Ilmu Manajemen Publik Makassar'),
(766, 'Sekolah Tinggi Ilmu Manajemen Saint Mary'),
(767, 'Sekolah Tinggi Ilmu Manajemen Shanti Bhuana'),
(768, 'Sekolah Tinggi Ilmu Manajemen Sukma'),
(769, 'Sekolah Tinggi Ilmu Manajemen Yapim Maros'),
(770, 'Sekolah Tinggi Ilmu Manajemen YKPN'),
(771, 'Sekolah Tinggi Ilmu Maritim Ami'),
(772, 'Sekolah Tinggi Ilmu Maritim Indonesia Ternate'),
(773, 'Sekolah Tinggi Ilmu Maritim Makassar'),
(774, 'Sekolah Tinggi Ilmu Maritim Mutiara Jaya'),
(775, 'Sekolah Tinggi Ilmu Pariwisata Manado'),
(776, 'Sekolah Tinggi Ilmu Pemerintahan Abdi Negara'),
(777, 'Sekolah Tinggi Ilmu Pendidikan Bunga Bangsa'),
(778, 'Sekolah Tinggi Ilmu Perikanan Kalinyamat'),
(779, 'Sekolah Tinggi Ilmu Perikanan Malang'),
(780, 'Sekolah Tinggi Ilmu Pertanian'),
(781, 'Sekolah Tinggi Ilmu Pertanian Amuntai'),
(782, 'Sekolah Tinggi Ilmu Pertanian Belitang'),
(783, 'Sekolah Tinggi Ilmu Pertanian Berau'),
(784, 'Sekolah Tinggi Ilmu Pertanian Dharma Wacana'),
(785, 'Sekolah Tinggi Ilmu Pertanian Farming'),
(786, 'Sekolah Tinggi Ilmu Pertanian Kendari'),
(787, 'Sekolah Tinggi Ilmu Pertanian Muhammadiyah Sinjai'),
(788, 'Sekolah Tinggi Ilmu Pertanian Mujahidin Toli-toli'),
(789, 'Sekolah Tinggi Ilmu Pertanian Petra Baliem Wamena'),
(790, 'Sekolah Tinggi Ilmu Pertanian Sriwigama'),
(791, 'Sekolah Tinggi Ilmu Pertanian Surya Dharma'),
(792, 'Sekolah Tinggi Ilmu Pertanian Wuna Raha'),
(793, 'Sekolah Tinggi Ilmu Pertanian Yapi Bone'),
(794, 'Sekolah Tinggi Ilmu Pertanian Yapim Maros'),
(795, 'Sekolah Tinggi Ilmu Pertanian Yashafa'),
(796, 'Sekolah Tinggi Ilmu Psikologi Harapan Bangsa'),
(797, 'Sekolah Tinggi Ilmu Sosial Dan Ilmu Politik Bekasi'),
(798, 'Sekolah Tinggi Ilmu Sosial Dan Politik Fajar Timur'),
(799, 'Sekolah Tinggi Ilmu Sosial Dan Politik Mbojo'),
(800, 'Sekolah Tinggi Ilmu Sosial Ilmu Politik Kebangsaan'),
(801, 'Sekolah Tinggi Ilmu Sosial Politik Wira Bhakti'),
(802, 'Sekolah Tinggi Ilmu Teknik Bina Putra'),
(803, 'Sekolah Tinggi Ilmu Teknik Prabumulih'),
(804, 'Sekolah Tinggi Ilmu Teknik Serasan'),
(805, 'Sekolah Tinggi Ilmu Teknik Trisula'),
(806, 'Sekolah Tinggi Ilmu-Ilmu Sosial (STIS) Tual'),
(807, 'Sekolah Tinggi Informatika Komputer Artha Buana'),
(808, 'Sekolah Tinggi Internasional Konservatori Musik Indonesia'),
(809, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Al Maksum'),
(810, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Al-Amin Indramayu'),
(811, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Amal Bakti'),
(812, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Biak'),
(813, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Bina Mutiara'),
(814, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Citra Bakti'),
(815, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Invada Cirebon'),
(816, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Kumala Lampung'),
(817, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Media Nusantara Citra'),
(818, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Melawi'),
(819, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Meranti'),
(820, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Muhammadiyah Batang'),
(821, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Muhammadiyah OKU Timur'),
(822, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Nuuwar'),
(823, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Padang Lawas'),
(824, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Pasundan'),
(825, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan PGRI Papua'),
(826, 'sekolah Tinggi Keguruan dan Ilmu Pendidikan Rosalia Lampung'),
(827, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Saumlaki'),
(828, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Surya Kasih'),
(829, 'Sekolah Tinggi Kepemerintahan dan Kebijakan Publik'),
(830, 'Sekolah Tinggi Kesehatan Bina Cipta Husada'),
(831, 'Sekolah Tinggi Kesehatan Indonesia Wirautama'),
(832, 'Sekolah Tinggi Kesenian Wilwatikta'),
(833, 'Sekolah Tinggi Kewirausahaan Selamat Pagi Indonesia'),
(834, 'Sekolah Tinggi Manajemen Asuransi Trisakti'),
(835, 'Sekolah Tinggi Manajemen dan Ilmu Komputer Umel Mandiri'),
(836, 'Sekolah Tinggi Manajemen Immi'),
(837, 'Sekolah Tinggi Manajemen Informatika dan Komputer AMIKOM Surakarta'),
(838, 'Sekolah Tinggi Manajemen Informatika dan Komputer Bina Adinata'),
(839, 'Sekolah Tinggi Manajemen Informatika dan Komputer Gici'),
(840, 'Sekolah Tinggi Manajemen Informatika dan Komputer Harapan Ibu'),
(841, 'Sekolah Tinggi Manajemen Informatika dan Komputer Ichsan Gorontalo'),
(842, 'Sekolah Tinggi Manajemen Informatika dan Komputer Indo Daya Suvana'),
(843, 'Sekolah Tinggi Manajemen Informatika dan Komputer Jakarta STI&K'),
(844, 'Sekolah Tinggi Manajemen Informatika dan Komputer Kalirejo Lampung'),
(845, 'Sekolah Tinggi Manajemen Informatika dan Komputer Komputama Majenang'),
(846, 'Sekolah Tinggi Manajemen Informatika dan Komputer Lembah Dempo'),
(847, 'Sekolah Tinggi Manajemen Informatika dan Komputer Nusa Mandiri'),
(848, 'Sekolah Tinggi Manajemen Informatika dan Komputer Pesat Nabire'),
(849, 'Sekolah Tinggi Manajemen Informatika dan Komputer Royal'),
(850, 'Sekolah Tinggi Manajemen Informatika dan Komputer STIKOM Indonesia'),
(851, 'Sekolah Tinggi Manajemen Informatika Komputer Lamappapoleonro Soppeng'),
(852, 'Sekolah Tinggi Manajemen Informatika Komputer Mataram'),
(853, 'Sekolah Tinggi Manajemen Informatika Komputer Stella Maris Sumba'),
(854, 'Sekolah Tinggi Manajemen Informatika Komputer Uyelindo Kupang'),
(855, 'Sekolah Tinggi Manajemen Ipmi'),
(856, 'Sekolah Tinggi Manajemen Labora'),
(857, 'Sekolah Tinggi Manajemen Logistik Indonesia'),
(858, 'Sekolah Tinggi Manajemen Ppm'),
(859, 'Sekolah Tinggi Manajemen Risiko Dan Asuransi'),
(860, 'Sekolah Tinggi Manajemen Taman Pendidikan 45'),
(861, 'Sekolah Tinggi Manajemen Transportasi Malahayati'),
(862, 'Sekolah Tinggi Maritim Dan Transpor AMNI'),
(863, 'Sekolah Tinggi Maritim Yogyakarta'),
(864, 'Sekolah Tinggi Matematika & Ilmu Pengetahuan Alam'),
(865, 'Sekolah Tinggi Media Komunikasi Trisakti'),
(866, 'Sekolah Tinggi Olahraga Dan Kesehatan Bina Guna'),
(867, 'Sekolah Tinggi Pariwisata  Soromandi Bima'),
(868, 'Sekolah Tinggi Pariwisata Ambarrukmo Yogyakarta'),
(869, 'Sekolah Tinggi Pariwisata Ampta Yogyakarta'),
(870, 'Sekolah Tinggi Pariwisata Ars Internasional'),
(871, 'Sekolah Tinggi Pariwisata Bali Internasional'),
(872, 'Sekolah Tinggi Pariwisata Bogor'),
(873, 'Sekolah Tinggi Pariwisata Mataram'),
(874, 'Sekolah Tinggi Pariwisata Riau'),
(875, 'Sekolah Tinggi Pariwisata Sahid'),
(876, 'Sekolah Tinggi Pariwisata Sahid Surakarta'),
(877, 'Sekolah Tinggi Pariwisata Satya Widya'),
(878, 'Sekolah Tinggi Pariwisata Tamalatea Makassar'),
(879, 'Sekolah Tinggi Pariwisata Triatma Jaya'),
(880, 'Sekolah Tinggi Pariwisata Trisakti'),
(881, 'Sekolah Tinggi Pembangunan Masyarakat Desa APMD'),
(882, 'Sekolah Tinggi Pembangunan Masyarakat Santa Ursula'),
(883, 'Sekolah Tinggi Pendidikan Holistik Berbasis Karekter'),
(884, 'Sekolah Tinggi Penerbangan Aviasi'),
(885, 'Sekolah Tinggi Perikanan dan Kelautan Matauli'),
(886, 'Sekolah Tinggi Perikanan Dan Kelautan Palu'),
(887, 'Sekolah Tinggi Perikanan Hatta-sjahrir'),
(888, 'Sekolah Tinggi Perikanan Sibolga'),
(889, 'Sekolah Tinggi Perkebunan Lampung'),
(890, 'Sekolah Tinggi Perpajakan Indonesia'),
(891, 'Sekolah Tinggi Pertanian Flores Bajawa'),
(892, 'Sekolah Tinggi Pertanian Haji Agus Salim'),
(893, 'Sekolah Tinggi Pertanian Kewirausahaan Banau'),
(894, 'Sekolah Tinggi Pertanian Kutai Timur'),
(895, 'Sekolah Tinggi Pertanian Labuha'),
(896, 'Sekolah Tinggi Pertanian Panca Bhakti'),
(897, 'Sekolah Tinggi Psikologi Yogyakarta'),
(898, 'Sekolah Tinggi Seni Musik Bandung'),
(899, 'Sekolah Tinggi Seni Rupa Dan Desain Visi Indonesia'),
(900, 'Sekolah Tinggi Sosial Politik Waskita Darma'),
(901, 'Sekolah Tinggi Teknik Atlas Nusantara'),
(902, 'Sekolah Tinggi Teknik Baramuli'),
(903, 'Sekolah Tinggi Teknik Bima'),
(904, 'Sekolah Tinggi Teknik Bina Cendikia'),
(905, 'Sekolah Tinggi Teknik Industri Turen'),
(906, 'Sekolah Tinggi Teknik Iskandar Thani'),
(907, 'Sekolah Tinggi Teknik Karawang'),
(908, 'Sekolah Tinggi Teknik Lingkungan Mataram'),
(909, 'Sekolah Tinggi Teknik Malang'),
(910, 'Sekolah Tinggi Teknik Multimedia Cendikia Abditama'),
(911, 'Sekolah Tinggi Teknik Nusantara Mandiri'),
(912, 'Sekolah Tinggi Teknik Pati'),
(913, 'Sekolah Tinggi Teknik Surabaya'),
(914, 'Sekolah Tinggi Teknik Wiworotomo'),
(915, 'Sekolah Tinggi Teknik YPLN'),
(916, 'Sekolah Tinggi Teknologi \"Warga\" Surakarta'),
(917, 'Sekolah Tinggi Teknologi Adisutjipto'),
(918, 'Sekolah Tinggi Teknologi Bandung'),
(919, 'Sekolah Tinggi Teknologi Banten'),
(920, 'Sekolah Tinggi Teknologi Bengkulu'),
(921, 'Sekolah Tinggi Teknologi Bina Tunggal'),
(922, 'Sekolah Tinggi Teknologi Bontang'),
(923, 'Sekolah Tinggi Teknologi Cahaya Surya'),
(924, 'Sekolah Tinggi Teknologi Cipasung'),
(925, 'Sekolah Tinggi Teknologi Cirebon'),
(926, 'Sekolah Tinggi Teknologi Dr Kh Ez Muttaqien'),
(927, 'Sekolah Tinggi Teknologi Dumai'),
(928, 'Sekolah Tinggi Teknologi Duta Bangsa'),
(929, 'Sekolah Tinggi Teknologi Fatahillah Cilegon'),
(930, 'Sekolah Tinggi Teknologi Garut'),
(931, 'Sekolah Tinggi Teknologi Gempol'),
(932, 'Sekolah Tinggi Teknologi Ilmu Komputer (STTIKOM) Insan Unggul'),
(933, 'Sekolah Tinggi Teknologi Immanuel'),
(934, 'Sekolah Tinggi Teknologi Indonesia'),
(935, 'Sekolah Tinggi Teknologi Indonesia Tanjung Pinang'),
(936, 'Sekolah Tinggi Teknologi Indragiri'),
(937, 'Sekolah Tinggi Teknologi Industri Bontang'),
(938, 'Sekolah Tinggi Teknologi Industri dan Farmasi Bogor'),
(939, 'Sekolah Tinggi Teknologi Industri Padang'),
(940, 'Sekolah Tinggi Teknologi Informasi NIIT'),
(941, 'Sekolah Tinggi Teknologi Informatika Sony Sugema'),
(942, 'Sekolah Tinggi Teknologi Jakarta'),
(943, 'Sekolah Tinggi Teknologi Jawa Barat'),
(944, 'Sekolah Tinggi Teknologi Kedirgantaraan'),
(945, 'Sekolah Tinggi Teknologi Kelautan'),
(946, 'Sekolah Tinggi Teknologi Mandala'),
(947, 'Sekolah Tinggi Teknologi Mekongga'),
(948, 'Sekolah Tinggi Teknologi Migas'),
(949, 'Sekolah Tinggi Teknologi Mineral Indonesia'),
(950, 'Sekolah Tinggi Teknologi Muhammadiyah AR Fachruddin'),
(951, 'Sekolah Tinggi Teknologi Muhammadiyah Cileungsi'),
(952, 'Sekolah Tinggi Teknologi Muhammadiyah Kebumen'),
(953, 'Sekolah Tinggi Teknologi Mutu Muhammadiyah'),
(954, 'Sekolah Tinggi Teknologi Nasional'),
(955, 'Sekolah Tinggi Teknologi Nusantara Indonesia'),
(956, 'Sekolah Tinggi Teknologi Nusantara Lampung'),
(957, 'Sekolah Tinggi Teknologi Pagaralam'),
(958, 'Sekolah Tinggi Teknologi Payakumbuh'),
(959, 'Sekolah Tinggi Teknologi Pekanbaru'),
(960, 'Sekolah Tinggi Teknologi Pelalawan'),
(961, 'Sekolah Tinggi Teknologi Pomosda'),
(962, 'Sekolah Tinggi Teknologi Pratama Adi'),
(963, 'Sekolah Tinggi Teknologi Ronggolawe'),
(964, 'Sekolah Tinggi Teknologi Sapta Taruna'),
(965, 'Sekolah Tinggi Teknologi Sinar Husni'),
(966, 'Sekolah Tinggi Teknologi Stikma Internasional'),
(967, 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri'),
(968, 'Sekolah Tinggi Teknologi Texmaco'),
(969, 'Sekolah Tinggi Teknologi Wastukancana'),
(970, 'Sekolah Tinggi Teknologi YBS Internasional'),
(971, 'Sekolah Tinggi Teknologi Yupentek'),
(972, 'Sekolah Tinggi Theologia Intim Makassar'),
(973, 'St Ilmu Komputer Cipta Karya Informatika'),
(974, 'STBA Haji Agus Salim'),
(975, 'Stba Persahabatan Internasional Asia'),
(976, 'STFT Gki Izaak Samuel Kijne Jayapura'),
(977, 'STIA & Pemerintahan Annisa Dwi Salfarizi'),
(978, 'STIA Abdul Azis Kataloka'),
(979, 'STIA Asuh Mitra Solo'),
(980, 'STIA Bala Putra Dewa'),
(981, 'STIA Bina Banua Banjarmasin'),
(982, 'STIA Bina Nusantara Mandiri Pariaman'),
(983, 'STIA Dan Manajemen Kepelabuhan Barunawati'),
(984, 'STIA Indragiri'),
(985, 'STIA Nusantara Sakti Sungai Penuh'),
(986, 'STIE Akuntansi Dan Bisnis Internasional'),
(987, 'STIE Bakti Bangsa'),
(988, 'STIE Bali Internasional Institute of Tourism Management'),
(989, 'STIE Bumi Persada Lhokseumawe'),
(990, 'STIE Dharma Negara'),
(991, 'STIE Graha Karya Muara Bulian'),
(992, 'STIE Harapan Duri'),
(993, 'STIE IBEK Pangkalpinang Bangka'),
(994, 'STIE IBMI Medan'),
(995, 'STIE Indonesia Banking School'),
(996, 'STIE ISM'),
(997, 'STIE Jakarta International College'),
(998, 'STIE Madani Balikpapan'),
(999, 'STIE Mahaputra Riau'),
(1000, 'STIE Manajemen Bisnis Indonesia'),
(1001, 'STIE Mikroskil'),
(1002, 'STIE Muhammadiyah Paciran Lamongan'),
(1003, 'STIE Muhammadiyah Tanjung Redeb'),
(1004, 'STIE Multi Data Palembang'),
(1005, 'STIE Nagoya Indonesia'),
(1006, 'STIE Nias Selatan'),
(1007, 'STIE Nobel Indonesia Makassar'),
(1008, 'STIE Ottow & Geissler Fak-fak'),
(1009, 'STIE Pariwisata Internasional'),
(1010, 'STIE Pasim Sukabumi'),
(1011, 'STIE Pembangunan Tanjungpinang'),
(1012, 'STIE Pengembangan Bisnis Dan Manajemen'),
(1013, 'STIE Prakarti Mulya');
INSERT INTO `master_universitas` (`id_universitas`, `nama_universitas`) VALUES
(1014, 'STIE Professional Manajemen College Indonesia'),
(1015, 'STIE Saint Theresa'),
(1016, 'STIE Trinitas Sorong'),
(1017, 'STIE Unisadhuguna'),
(1018, 'STIE Widyaswara Indonesia'),
(1019, 'STIE YA Bangko'),
(1020, 'STIE YBPK Palangka Raya'),
(1021, 'STIEB Perdana Mandiri'),
(1022, 'STIH Indonesia Jentera'),
(1023, 'STIH Litigasi'),
(1024, 'STIH Putri Maharaja'),
(1025, 'STIK Imanuel Indonesia'),
(1026, 'STIK Muhammadiyah Pontianak'),
(1027, 'STIKES  Al Irsyad Al Islamiyyah Cilacap'),
(1028, 'STIKES Adi Husada'),
(1029, 'STIKES Adila'),
(1030, 'STIKES Advaita Medika Tabanan'),
(1031, 'STIKES Aisyiyah Palembang'),
(1032, 'STIKES Al-Insyirah Pekanbaru'),
(1033, 'STIKES AL-Islam Yogyakarta'),
(1034, 'STIKES Amanah Makassar'),
(1035, 'STIKES An Nasher Cirebon'),
(1036, 'STIKES Andini Persada'),
(1037, 'STIKES Arrahma Mandiri Indonesia'),
(1038, 'STIKES As Syifa'),
(1039, 'STIKES Assyifa Aceh'),
(1040, 'STIKES Awal Bros Batam'),
(1041, 'STIKES Awal Bros Pekanbaru'),
(1042, 'STIKES Bahrul Ulum Jombang'),
(1043, 'STIKES Bakti Nusantara Gorontalo'),
(1044, 'STIKES Banyuwangi'),
(1045, 'STIKES Bataraguru Soroaka'),
(1046, 'STIKES Bhakti Al-Qodiri'),
(1047, 'STIKES Bhakti Husada Bengkulu'),
(1048, 'STIKES Bhakti Husada Mulia'),
(1049, 'STIKES Bhakti Mandala Husada Slawi'),
(1050, 'STIKES Bhakti Mulia'),
(1051, 'STIKES Bhakti Pertiwi Indonesia'),
(1052, 'STIKES Bhakti Pertiwi Luwu Raya'),
(1053, 'STIKES Bina Generasi Polewali Mandar'),
(1054, 'STIKES Bina Permata Medika'),
(1055, 'STIKES Bina Sehat PPNI Mojokerto'),
(1056, 'STIKES Bina Usada Bali'),
(1057, 'STIKES Borneo Cendekia Medika'),
(1058, 'STIKES Buana Husada Ponorogo'),
(1059, 'STIKES Bumi Persada Lhokseumawe'),
(1060, 'STIKES Bustanul Ulum Langsa'),
(1061, 'STIKES Citra Delima Bangka Belitung'),
(1062, 'STIKES Cut Nyak Dhien Langsa'),
(1063, 'STIKES Darmais Padangsidimpuan'),
(1064, 'STIKES Darul Azhar Batulicin'),
(1065, 'STIKES Darussalam Lhokseumawe'),
(1066, 'STIKES Dharma Landbouw'),
(1067, 'STIKES Dian Husada'),
(1068, 'STIKES Dirgahayu Samarinda'),
(1069, 'STIKES Dr. Soebandi Jember'),
(1070, 'STIKES Eka Harap'),
(1071, 'STIKES Estu Utomo'),
(1072, 'STIKES Faathir Husada'),
(1073, 'STIKES Ganesha Husada Kediri'),
(1074, 'STIKES Gema Insan Akademik'),
(1075, 'STIKES Getsempena Lhoksukon'),
(1076, 'STIKES Graha Edukasi'),
(1077, 'STIKES Graha Medika'),
(1078, 'STIKES Griya Husada Sumbawa'),
(1079, 'STIKES Guna Bangsa Yogyakarta'),
(1080, 'STIKES Hafshawaty Pesantren Zainul Hasan'),
(1081, 'STIKES Hamzar Memben Lombok Timur'),
(1082, 'STIKES Hang Tuah Tanjung Pinang'),
(1083, 'STIKES Husada Borneo'),
(1084, 'STIKES Hutama Abdi Husada Tulungagung'),
(1085, 'STIKES Ibnu Sina Ajibarang'),
(1086, 'STIKES Ichsan Medical Centre Bintaro'),
(1087, 'STIKES Insan Cendekia Husada Bojonegoro'),
(1088, 'STIKES Insan Cendekia Medika Jombang'),
(1089, 'STIKES IST Buton'),
(1090, 'STIKES Kapuas Raya'),
(1091, 'STIKES Karsa Husada Garut'),
(1092, 'STIKES Karya Husada Kediri'),
(1093, 'STIKES Karya Husada Semarang'),
(1094, 'STIKES Karya Putra Bangsa Tulungagung'),
(1095, 'STIKES Katolik St Vincentius A Paulo Surabaya'),
(1096, 'STIKES Kesetiakawanan Sosial Indonesia'),
(1097, 'STIKES Kharisma Karawang'),
(1098, 'STIKES Kharisma Persada'),
(1099, 'STIKES Kurnia Jaya Persada'),
(1100, 'STIKES Kusuma Bangsa'),
(1101, 'STIKES Lakipadada'),
(1102, 'STIKES Maluku Husada'),
(1103, 'STIKES Mamba ul Ulum Surakarta'),
(1104, 'STIKES Maranatha Kupang'),
(1105, 'STIKES Marendeng Majene'),
(1106, 'STIKES Medika Nurul Islam'),
(1107, 'STIKES Medika Seramoe Barat'),
(1108, 'STIKES Medika Teuku Umar'),
(1109, 'STIKES Mega Buana Palopo'),
(1110, 'STIKES Mercubaktijaya Padang'),
(1111, 'STIKES Mitra Bunda Persada'),
(1112, 'STIKES Mitra Husada Karanganyar'),
(1113, 'STIKES Muhammadiyah Bojonegoro'),
(1114, 'STIKES Muhammadiyah Ciamis'),
(1115, 'STIKES Muhammadiyah Cirebon'),
(1116, 'STIKES Muhammadiyah Klaten'),
(1117, 'STIKES Muhammadiyah Kuningan'),
(1118, 'STIKES Muhammadiyah Lamongan'),
(1119, 'STIKES Muhammadiyah Lhokseumawe'),
(1120, 'STIKES Muhammadiyah Palembang'),
(1121, 'STIKES Muhammadiyah Sidrap'),
(1122, 'STIKES Muhammadiyah Tegal'),
(1123, 'STIKES Murni Teguh'),
(1124, 'STIKES Nahdlatul Ulama Tuban'),
(1125, 'STIKES Namira Madina'),
(1126, 'STIKES Nan Tongga'),
(1127, 'STIKES Nauli Husada'),
(1128, 'STIKES Nurliana Medan'),
(1129, 'STIKES Nurul Hasanah Kutacane'),
(1130, 'STIKES Nusantara Jaya'),
(1131, 'STIKES Nusantara Lasinrang'),
(1132, 'STIKES Pamenang'),
(1133, 'STIKES Panakkukang'),
(1134, 'STIKES Panca Atma Jaya'),
(1135, 'STIKES Panti Waluya Malang'),
(1136, 'STIKES Pasapua Ambon'),
(1137, 'STIKES Patria Husada'),
(1138, 'STIKES Payung Negeri Aceh Darussalam'),
(1139, 'STIKES Pekanbaru Medical Center'),
(1140, 'STIKES Pelita Ibu'),
(1141, 'STIKES Pembina Palembang'),
(1142, 'STIKES Perintis Padang'),
(1143, 'STIKES Persada Husada Indonesia'),
(1144, 'STIKES Piala Sakti Pariaman'),
(1145, 'STIKES Prima Indonesia'),
(1146, 'STIKES Putra Abadi Langkat'),
(1147, 'STIKES Raflesia'),
(1148, 'STIKES Rana Wijaya'),
(1149, 'STIKES Ranah Minang'),
(1150, 'STIKES RS Baptis Kediri'),
(1151, 'STIKES RSU Daya Makassar'),
(1152, 'STIKES Rumah Sakit Anwar Medika'),
(1153, 'STIKES Sakinah Husada Tanjung Balai'),
(1154, 'STIKES Santa Elisabeth Medan'),
(1155, 'STIKES Satria Bhakti Nganjuk'),
(1156, 'STIKES Sebelas April Sumedang'),
(1157, 'STIKES Senior Medan'),
(1158, 'STIKES Shinta Jaya Mamuju'),
(1159, 'STIKES Siti Hajar'),
(1160, 'STIKES Suaka Insan'),
(1161, 'STIKES Surya Mitra Husada'),
(1162, 'STIKES Syuhada di Padangsidimpuan'),
(1163, 'STIKES Tanawali Takalar'),
(1164, 'STIKES Telogorejo Semarang'),
(1165, 'STIKES Tengku Maharatu'),
(1166, 'STIKES Tri Mandiri Sakti Bengkulu'),
(1167, 'STIKES Widya Cipta Husada'),
(1168, 'STIKES Widya Dharma Husada Tangerang'),
(1169, 'STIKES Widya Husada Medan'),
(1170, 'STIKES Widyagama Husada Malang'),
(1171, 'STIKES Wijaya Husada Bogor'),
(1172, 'STIKES Wira Medika Bali'),
(1173, 'STIKES Wiyata Husada Samarinda'),
(1174, 'STIKES Yahya Bima'),
(1175, 'STIKES Yarsi Mataram'),
(1176, 'STIKES Yarsi Pontianak'),
(1177, 'STIKES Yarsi Sumatera Barat'),
(1178, 'STIKES Yayasan RS. Dr. Soetomo'),
(1179, 'STIKES Yogyakarta'),
(1180, 'STIKESMAS Abdi Nusa'),
(1181, 'STIKESMAS Nusantara'),
(1182, 'STIKESMAS Widya Dharma Palembang'),
(1183, 'STIKI Malang'),
(1184, 'STIKIP Catur Sakti'),
(1185, 'STIKOM Muhammadiyah Jayapura'),
(1186, 'STIKOM Tunas Bangsa'),
(1187, 'STIKS Tamalanrea Makassar'),
(1188, 'STIKS Tarakanita'),
(1189, 'STIM Lasharan Jaya Makassar'),
(1190, 'STIM LPI Makassar'),
(1191, 'STIMED Nusa Palapa'),
(1192, 'STIMI Banjarmasin'),
(1193, 'STIMI Samarinda'),
(1194, 'STIMIK Bina Bangsa'),
(1195, 'STIMIK Kupang'),
(1196, 'STIMIK Pro Visi'),
(1197, 'STIMIK Sepuluh Nopember Jayapura'),
(1198, 'STIMIK Tunas Bangsa Banjarnegara'),
(1199, 'STIP Graha Karya'),
(1200, 'STIPER Agrobisnis Perkebunan'),
(1201, 'STIPER Muhammadiyah Tanah Grogot'),
(1202, 'STIPER Santo Thomas Aquinas Jayapura'),
(1203, 'STIPER Sawahlunto Sijunjung'),
(1204, 'STIPSI Abdi Nusa'),
(1205, 'STIPSI Widya Dharma'),
(1206, 'STISIP 17-8-1945 Makassar'),
(1207, 'STISIP Al Washliyah Banda Aceh'),
(1208, 'STISIP Banten Raya'),
(1209, 'STISIP Bina Generasi Polewali'),
(1210, 'STISIP Bina Marta'),
(1211, 'STISIP Bina Putera Banjar'),
(1212, 'STISIP Bunda Tanah Melayu'),
(1213, 'STISIP Guna Nusantara'),
(1214, 'STISIP Imam Bonjol'),
(1215, 'STISIP Kartika Bangsa'),
(1216, 'STISIP Margarana'),
(1217, 'STISIP Merdeka Manado'),
(1218, 'STISIP Muhammadiyah Madiun'),
(1219, 'STISIP Muhammadiyah Sinjai'),
(1220, 'STISIP Nurdin Hamzah'),
(1221, 'STISIP Padang'),
(1222, 'STISIP Panca Bhakti Palu'),
(1223, 'STISIP Persada Bunda'),
(1224, 'STISIP Petta Baringeng Soppeng'),
(1225, 'STISIP Samudera Indonesia Selatan'),
(1226, 'STISIP Setia Budhi'),
(1227, 'STISIP Silas Papare Jayapura'),
(1228, 'STISIP Swadaya'),
(1229, 'STISIP Syamsul Ulum'),
(1230, 'STISIP Tasikmalaya'),
(1231, 'STISIP Trimasda Cilegon'),
(1232, 'STISIP Veteran Palopo'),
(1233, 'STISIP Widuri'),
(1234, 'STISIP Widyapuri Mandiri'),
(1235, 'STISIP Yupentek Tangerang'),
(1236, 'STISIPOL Candradimuka'),
(1237, 'STISIPOL Dharma Wacana'),
(1238, 'STISIPOL Mujahidin'),
(1239, 'STISIPOL Pahlawan 12'),
(1240, 'STISIPOL Raja Haji'),
(1241, 'STISIPOL Yaleka Maro'),
(1242, 'STITEK Bina Taruna'),
(1243, 'STITEK Dharma Yadi Makassar'),
(1244, 'STKIP  Asy-Syafi iyah Internasional Medan'),
(1245, 'STKIP  La Tansa Mashiro'),
(1246, 'STKIP Abdi Wacana Wamena'),
(1247, 'STKIP Adzkia'),
(1248, 'STKIP Agama Hindu Amlapura'),
(1249, 'STKIP Agama Hindu Singaraja'),
(1250, 'STKIP Ahlussunnah'),
(1251, 'STKIP Aisyiyah Riau'),
(1252, 'STKIP Al Amin Dompu'),
(1253, 'STKIP Al Azhar Diniyyah Jambi'),
(1254, 'STKIP Al Hikmah Surabaya'),
(1255, 'STKIP Al Islam Tunas Bangsa'),
(1256, 'STKIP Al-Washliyah'),
(1257, 'STKIP Albana'),
(1258, 'STKIP An-nur Nangro Aceh'),
(1259, 'STKIP Andi Mattappa'),
(1260, 'STKIP Arrahmaniyah'),
(1261, 'STKIP Babunnajah Pandeglang'),
(1262, 'STKIP Banten'),
(1263, 'STKIP Barus Tapanuli Tengah'),
(1264, 'STKIP Bima'),
(1265, 'STKIP Bina Bangsa Getsempena'),
(1266, 'STKIP Bina Bangsa Meulaboh'),
(1267, 'STKIP Bina Insan Mandiri'),
(1268, 'STKIP Budidaya'),
(1269, 'STKIP Bumi Persada Lhokseumawe'),
(1270, 'STKIP Cokroaminoto Pinrang'),
(1271, 'STKIP Dampal Selatan'),
(1272, 'STKIP Darud Da wah Wal Irsyad Pinrang'),
(1273, 'STKIP Darussalam Cilacap'),
(1274, 'STKIP Dharma Wacana'),
(1275, 'STKIP Gotong Royong Masohi'),
(1276, 'STKIP Hamzar'),
(1277, 'STKIP Harapan Bima'),
(1278, 'STKIP Hatta Sjahrir'),
(1279, 'STKIP Hermon Timika'),
(1280, 'STKIP Hunimua'),
(1281, 'STKIP Insan Madani Airmolek'),
(1282, 'STKIP Islam Sabilal Muhtadin Banjarmasin'),
(1283, 'STKIP Ita Wotu Nusa'),
(1284, 'STKIP Kie Raha'),
(1285, 'STKIP Kristen Wamena'),
(1286, 'STKIP Kusumanegara'),
(1287, 'STKIP Majenang'),
(1288, 'STKIP Mega Rezky'),
(1289, 'STKIP Modern Ngawi'),
(1290, 'STKIP Muhammadiyah Aceh Barat Daya'),
(1291, 'STKIP Muhammadiyah Aceh Tengah'),
(1292, 'STKIP Muhammadiyah Bangka Belitung'),
(1293, 'STKIP Muhammadiyah Barru'),
(1294, 'STKIP Muhammadiyah Blora'),
(1295, 'STKIP Muhammadiyah Bogor'),
(1296, 'STKIP Muhammadiyah Bone'),
(1297, 'STKIP Muhammadiyah Bulukumba'),
(1298, 'STKIP Muhammadiyah Enrekang'),
(1299, 'STKIP Muhammadiyah Kalabahi'),
(1300, 'STKIP Muhammadiyah Kuningan'),
(1301, 'STKIP Muhammadiyah Lumajang'),
(1302, 'STKIP Muhammadiyah Manokwari'),
(1303, 'STKIP Muhammadiyah Muara Bungo'),
(1304, 'STKIP Muhammadiyah Pagaralam'),
(1305, 'STKIP Muhammadiyah Sampit'),
(1306, 'STKIP Muhammadiyah Sungai Penuh'),
(1307, 'STKIP Mutiara Banten'),
(1308, 'STKIP Nahdlatul Ulama Indramayu'),
(1309, 'STKIP Nahdlatul Ulama Kabupaten Tegal'),
(1310, 'STKIP Nasional'),
(1311, 'STKIP Nias Selatan'),
(1312, 'STKIP Nurul Huda di Sukaraja'),
(1313, 'STKIP Nusa Bunga Floresta'),
(1314, 'STKIP Nusa Timor'),
(1315, 'STKIP Pamane Talino'),
(1316, 'STKIP Panca Sakti Bekasi'),
(1317, 'STKIP PANCAKARYA'),
(1318, 'STKIP Pangeran Antasari'),
(1319, 'STKIP Pangeran Dharma Kusuma Segeran Juntinyuat Indramayu'),
(1320, 'STKIP Paracendekia N W Sumbawa'),
(1321, 'STKIP Paris Barantai'),
(1322, 'STKIP Pelita Nusantara Buton'),
(1323, 'STKIP Pelita Pratama'),
(1324, 'STKIP Pembangunan Indonesia'),
(1325, 'STKIP Persada Khatulistiwa'),
(1326, 'STKIP Persatuan Islam'),
(1327, 'STKIP Pesisir Selatan'),
(1328, 'STKIP PGRI Bandar Lampung'),
(1329, 'STKIP PGRI Bangkalan'),
(1330, 'STKIP PGRI Banjarmasin'),
(1331, 'STKIP PGRI Jombang'),
(1332, 'STKIP PGRI Lamongan'),
(1333, 'STKIP PGRI Lubuk Linggau'),
(1334, 'STKIP PGRI Lumajang'),
(1335, 'STKIP PGRI Manado'),
(1336, 'STKIP PGRI Metro'),
(1337, 'STKIP PGRI Nganjuk'),
(1338, 'STKIP PGRI Ngawi'),
(1339, 'STKIP PGRI Pacitan'),
(1340, 'STKIP PGRI Ponorogo'),
(1341, 'STKIP PGRI Sampang'),
(1342, 'STKIP PGRI Sidoarjo'),
(1343, 'STKIP PGRI Situbondo'),
(1344, 'STKIP PGRI Sukabumi'),
(1345, 'STKIP PGRI Sumatera Barat'),
(1346, 'STKIP PGRI Sumenep'),
(1347, 'STKIP PGRI Trenggalek'),
(1348, 'STKIP PGRI Tulungagung'),
(1349, 'STKIP Purnama'),
(1350, 'STKIP Purwakarta'),
(1351, 'STKIP Rokania'),
(1352, 'STKIP Sebelas April'),
(1353, 'STKIP Sera'),
(1354, 'STKIP Setiabudhi'),
(1355, 'STKIP Simbiosis'),
(1356, 'STKIP Sinar Cendekia'),
(1357, 'STKIP Sinar Pancasila'),
(1358, 'STKIP Singkawang'),
(1359, 'STKIP Situs Banten di Serang'),
(1360, 'STKIP Soe'),
(1361, 'STKIP Suar Bangli'),
(1362, 'STKIP Subang'),
(1363, 'STKIP Surya'),
(1364, 'STKIP Syekh Manshur'),
(1365, 'STKIP Taman Siswa Bima'),
(1366, 'STKIP Tomakaka Tiwikrama'),
(1367, 'STKIP Tunas Palapa'),
(1368, 'STKIP Usman Safri Kutacane'),
(1369, 'STKIP Veteran Sidrap'),
(1370, 'STKIP Weetebula'),
(1371, 'STKIP Widya Yuwana'),
(1372, 'STKIP Widyaswara Indonesia'),
(1373, 'STKIP Yapim Maros'),
(1374, 'STKIP Yapis Dompu'),
(1375, 'STKIP Yapti Jeneponto'),
(1376, 'STKIP Yasika'),
(1377, 'STKIP Yayasan Abdi Pendidikan'),
(1378, 'STKIP YDB Lubuk Alung'),
(1379, 'STKIP YPM Bangko'),
(1380, 'STKIP YPUP Makassar'),
(1381, 'STMIK - STIKOM'),
(1382, 'STMIK Adhi Guna'),
(1383, 'STMIK Akakom'),
(1384, 'STMIK AKBA'),
(1385, 'STMIK AKI Pati'),
(1386, 'STMIK Amik Bandung'),
(1387, 'STMIK Amik Riau'),
(1388, 'STMIK Amikom'),
(1389, 'STMIK Antar Bangsa'),
(1390, 'STMIK Atma Luhur'),
(1391, 'STMIK AUB Surakarta'),
(1392, 'STMIK Bandung'),
(1393, 'STMIK Bandung Bali'),
(1394, 'STMIK Bani Saleh'),
(1395, 'STMIK Banjarbaru'),
(1396, 'STMIK Bina Mulia'),
(1397, 'STMIK Bina Nusantara Jaya Lubuk Linggau'),
(1398, 'STMIK Bina Patria'),
(1399, 'STMIK Bina Sarana Global'),
(1400, 'STMIK Borneo Internasional'),
(1401, 'STMIK Budi Darma'),
(1402, 'STMIK Cahaya Surya'),
(1403, 'STMIK Catur Sakti Kendari'),
(1404, 'STMIK Cikarang'),
(1405, 'STMIK Cilegon'),
(1406, 'STMIK Citra Mandiri Padangsidimpuan'),
(1407, 'STMIK DCI'),
(1408, 'STMIK Denpasar'),
(1409, 'STMIK Dharma Negara'),
(1410, 'STMIK Dharma Putra'),
(1411, 'STMIK Dharma Wacana'),
(1412, 'STMIK Dharmapala Riau'),
(1413, 'STMIK Dian Cipta Cendikia Kotabumi'),
(1414, 'STMIK Dipanegara Makassar'),
(1415, 'STMIK Dumai'),
(1416, 'STMIK El Rahma'),
(1417, 'STMIK Eresha'),
(1418, 'STMIK Ganesha Bandung'),
(1419, 'STMIK Global Informatika Mdp'),
(1420, 'STMIK Handayani Makassar'),
(1421, 'STMIK Hang Tuah Pekanbaru'),
(1422, 'STMIK Hasan Sulur Wonomulyo'),
(1423, 'STMIK Himsya'),
(1424, 'STMIK IBBI'),
(1425, 'STMIK IKMI Cirebon'),
(1426, 'STMIK IM'),
(1427, 'STMIK Indonesia Banda Aceh'),
(1428, 'STMIK Indonesia Banjarmasin'),
(1429, 'STMIK Indonesia Jakarta'),
(1430, 'STMIK Indonesia Padang'),
(1431, 'STMIK Indragiri'),
(1432, 'STMIK Insan Pembangunan'),
(1433, 'STMIK Islam Internasional'),
(1434, 'STMIK ITMI Medan'),
(1435, 'STMIK Jabar'),
(1436, 'STMIK Jaya Nusa'),
(1437, 'STMIK Jayabaya Jakarta'),
(1438, 'STMIK Jayakarta'),
(1439, 'STMIK Kadiri'),
(1440, 'STMIK Kaputama'),
(1441, 'STMIK Kharisma Karawang'),
(1442, 'STMIK Kharisma Makassar'),
(1443, 'STMIK Kreatindo Manokwari'),
(1444, 'STMIK Kristen Neumann Indonesia'),
(1445, 'STMIK Kuwera'),
(1446, 'STMIK Likmi'),
(1447, 'STMIK Logika'),
(1448, 'STMIK Lombok'),
(1449, 'STMIK LPKIA Bandung'),
(1450, 'STMIK Mahakarya'),
(1451, 'STMIK Mardira Indonesia'),
(1452, 'STMIK Masa Depan'),
(1453, 'STMIK MBC Palembang'),
(1454, 'STMIK Mercusuar'),
(1455, 'STMIK Methodist Binjai'),
(1456, 'STMIK MIC Cikarang'),
(1457, 'STMIK Mikroskil'),
(1458, 'STMIK Mitra Lampung'),
(1459, 'STMIK Muara Dua'),
(1460, 'STMIK Muhammadiyah Banten'),
(1461, 'STMIK Muhammadiyah Jakarta'),
(1462, 'STMIK Muhammadiyah Paguyangan Brebes'),
(1463, 'STMIK Multicom Bolaan Mongondow'),
(1464, 'STMIK Nurdin Hamzah'),
(1465, 'STMIK Palangka Raya'),
(1466, 'STMIK Palcomtech'),
(1467, 'STMIK Pamitran'),
(1468, 'STMIK Parnaraya'),
(1469, 'STMIK Pasim Sukabumi'),
(1470, 'STMIK Pelita Nusantara'),
(1471, 'STMIK PGRI Tangerang'),
(1472, 'STMIK Pontianak'),
(1473, 'STMIK PPKIA Pradnya Paramita'),
(1474, 'STMIK PPKIA Tarakanita Rahmawati Tarakan'),
(1475, 'STMIK Prabumulih'),
(1476, 'STMIK Pranata Indonesia'),
(1477, 'STMIK Primakara'),
(1478, 'STMIK Pringsewu'),
(1479, 'STMIK Profesional Makassar'),
(1480, 'STMIK Putera Batam'),
(1481, 'STMIK Rosma'),
(1482, 'STMIK Samarinda'),
(1483, 'STMIK Sentra Pendidikan Bisnis'),
(1484, 'STMIK Sinar Nusantara'),
(1485, 'STMIK Sisingamangaraja XII'),
(1486, 'STMIK Subang'),
(1487, 'STMIK Sumedang'),
(1488, 'STMIK Surya Intan'),
(1489, 'STMIK Swadharma'),
(1490, 'STMIK Syaikh Zainuddin Nahdlatul Wathan'),
(1491, 'STMIK Tasikmalaya'),
(1492, 'STMIK Tidore Mandiri'),
(1493, 'STMIK Time'),
(1494, 'STMIK Triguna Dharma'),
(1495, 'STMIK Triguna Utama'),
(1496, 'STMIK Tulus Cendekia'),
(1497, 'STMIK Tunas Bangsa'),
(1498, 'STMIK Widuri'),
(1499, 'STMIK Widya Cipta Dharma'),
(1500, 'STMIK Widya Pratama'),
(1501, 'STMIK Widya Utama'),
(1502, 'STMIK WIT Cirebon'),
(1503, 'STMIK Yadika Bangil'),
(1504, 'STMIK YMI Tegal'),
(1505, 'STT Minyak dan Gas Cilacap'),
(1506, 'Universitas  Harapan Bangsa'),
(1507, 'Universitas 17 Agustus 1945 Banyuwangi'),
(1508, 'Universitas 17 Agustus 1945 Cirebon'),
(1509, 'Universitas 17 Agustus 1945 Jakarta'),
(1510, 'Universitas 17 Agustus 1945 Samarinda'),
(1511, 'Universitas 17 Agustus 1945 Semarang'),
(1512, 'Universitas 17 Agustus 1945 Surabaya'),
(1513, 'Universitas 45 Mataram'),
(1514, 'Universitas 45 Surabaya'),
(1515, 'Universitas Abdurachman Saleh'),
(1516, 'Universitas Abdurrab'),
(1517, 'Universitas Abulyatama'),
(1518, 'Universitas Achmad Yani Banjarmasin'),
(1519, 'Universitas Adhirajasa Reswara Sanjaya'),
(1520, 'Universitas Adiwangsa Jambi'),
(1521, 'Universitas Advent Indonesia'),
(1522, 'Universitas Agung Podomoro'),
(1523, 'Universitas Ahmad Dahlan'),
(1524, 'Universitas Airlangga'),
(1525, 'Universitas Aisyah Pringsewu'),
(1526, 'Universitas Aisyiyah Surakarta'),
(1527, 'Universitas Aisyiyah Yogyakarta'),
(1528, 'Universitas Aki'),
(1529, 'Universitas Al Asyariah Mandar'),
(1530, 'Universitas Al Washliyah'),
(1531, 'Universitas Al-Azhar'),
(1532, 'Universitas Al-azhar Indonesia'),
(1533, 'Universitas Al-ghifari'),
(1534, 'Universitas Al-Muslim'),
(1535, 'Universitas Alkhairaat'),
(1536, 'Universitas Alma Ata'),
(1537, 'Universitas Alwashliyah'),
(1538, 'Universitas Amal Ilmiah Yapis Wamena'),
(1539, 'Universitas Amikom Purwokerto'),
(1540, 'Universitas Amikom Yogyakarta'),
(1541, 'Universitas Amir Hamzah'),
(1542, 'Universitas An Nuur'),
(1543, 'Universitas Andalas'),
(1544, 'Universitas Andi Djemma Palopo'),
(1545, 'Universitas Antakusuma'),
(1546, 'Universitas Aryasatya Deo Muri'),
(1547, 'Universitas Asahan'),
(1548, 'Universitas Atma Jaya Makassar'),
(1549, 'Universitas Atma Jaya Yogyakarta'),
(1550, 'Universitas Audi Indonesia'),
(1551, 'Universitas Aufa Royhan'),
(1552, 'Universitas Azzahra'),
(1553, 'Universitas Baiturrahmah'),
(1554, 'Universitas Bakrie'),
(1555, 'Universitas Bakti Indonesia'),
(1556, 'Universitas Bale Bandung'),
(1557, 'Universitas Bali Dwipa'),
(1558, 'Universitas Bali Internasional'),
(1559, 'Universitas Balikpapan'),
(1560, 'Universitas Bandar Lampung'),
(1561, 'Universitas Bandung Raya'),
(1562, 'Universitas Bangka Belitung'),
(1563, 'Universitas Banten Jaya'),
(1564, 'Universitas Batam'),
(1565, 'Universitas Batanghari Jambi'),
(1566, 'Universitas Battuta'),
(1567, 'Universitas Baturaja'),
(1568, 'Universitas Bengkulu'),
(1569, 'Universitas Bhakti Kencana'),
(1570, 'Universitas Bhayangkara Jakarta Raya'),
(1571, 'Universitas Bhayangkara Surabaya'),
(1572, 'Universitas Billfath'),
(1573, 'Universitas Bina Bangsa'),
(1574, 'Universitas Bina Darma'),
(1575, 'Universitas Bina Insan'),
(1576, 'Universitas Bina Insani'),
(1577, 'Universitas Bina Mandiri Gorontalo'),
(1578, 'Universitas Bina Nusantara'),
(1579, 'Universitas Bina Sarana Informatika'),
(1580, 'Universitas Binawan'),
(1581, 'Universitas Bojonegoro'),
(1582, 'Universitas Bondowoso'),
(1583, 'Universitas Borneo Tarakan'),
(1584, 'Universitas Borobudur'),
(1585, 'Universitas Bosowa'),
(1586, 'Universitas Boyolali'),
(1587, 'Universitas Brawijaya'),
(1588, 'Universitas Buana Perjuangan Karawang'),
(1589, 'Universitas Buddhi Dharma'),
(1590, 'Universitas Budi Darma'),
(1591, 'Universitas Budi Luhur'),
(1592, 'Universitas Bumi Hijrah Tidore'),
(1593, 'Universitas Bumigora'),
(1594, 'Universitas Bunda Mulia'),
(1595, 'Universitas Bung Hatta'),
(1596, 'Universitas Bung Karno'),
(1597, 'Universitas Catur Insan Cendekia'),
(1598, 'Universitas Cenderawasih'),
(1599, 'Universitas Ciputra Surabaya'),
(1600, 'Universitas Citra Bangsa'),
(1601, 'Universitas Cokroaminoto'),
(1602, 'Universitas Cokroaminoto Makassar'),
(1603, 'Universitas Cokroaminoto Palopo'),
(1604, 'Universitas Cordova'),
(1605, 'Universitas Darma Agung'),
(1606, 'Universitas Darma Persada'),
(1607, 'Universitas Darul  ulum'),
(1608, 'Universitas Darul Ulum Islamic Centre Sudirman'),
(1609, 'Universitas Darussalam Ambon'),
(1610, 'Universitas Darussalam Gontor'),
(1611, 'Universitas Darwan Ali'),
(1612, 'Universitas Dayanu Ikhsanuddin'),
(1613, 'Universitas Dehasen Bengkulu'),
(1614, 'Universitas Dharma Andalas'),
(1615, 'Universitas Dharmas Indonesia'),
(1616, 'Universitas Dharmawangsa'),
(1617, 'Universitas Dhyana Pura'),
(1618, 'Universitas Dian Nusantara'),
(1619, 'Universitas Dian Nuswantoro'),
(1620, 'Universitas Dinamika'),
(1621, 'Universitas Diponegoro'),
(1622, 'Universitas Dirgantara Marsekal Suryadarma'),
(1623, 'Universitas Djuanda'),
(1624, 'Universitas Doktor Nugroho Magetan'),
(1625, 'Universitas Dr Soetomo'),
(1626, 'Universitas Dumoga Kotamobagu'),
(1627, 'Universitas Duta Bangsa Surakarta'),
(1628, 'Universitas Dwijendra'),
(1629, 'Universitas Efarina'),
(1630, 'Universitas Ekasakti'),
(1631, 'Universitas Esa Unggul'),
(1632, 'Universitas Fajar'),
(1633, 'Universitas Faletehan'),
(1634, 'Universitas Flores'),
(1635, 'Universitas Fort De Kock'),
(1636, 'Universitas Gadjah Mada'),
(1637, 'Universitas Gajah Putih'),
(1638, 'Universitas Gajayana'),
(1639, 'Universitas Galuh'),
(1640, 'Universitas Garut'),
(1641, 'Universitas Gorontalo'),
(1642, 'Universitas Graha Nusantara'),
(1643, 'Universitas Gresik'),
(1644, 'Universitas Gunadarma'),
(1645, 'Universitas Gunung Kidul'),
(1646, 'Universitas Gunung Leuser Aceh'),
(1647, 'Universitas Gunung Rinjani'),
(1648, 'Universitas Halim sanusi'),
(1649, 'Universitas Halmahera'),
(1650, 'Universitas Halu Oleo'),
(1651, 'Universitas Hamzanwadi'),
(1652, 'Universitas Hang Tuah'),
(1653, 'Universitas Harapan Medan'),
(1654, 'Universitas Hasanuddin'),
(1655, 'Universitas Hasyim Asyari Tebuireng Jombang'),
(1656, 'Universitas Hein Namotemo'),
(1657, 'Universitas Hindu Indonesia'),
(1658, 'Universitas HKBP Nommensen'),
(1659, 'Universitas HKBP Nommensen Pematangsiantar'),
(1660, 'Universitas IBA'),
(1661, 'Universitas Ibn Khaldun'),
(1662, 'Universitas Ibnu Chaldun'),
(1663, 'Universitas Ibnu Sina'),
(1664, 'Universitas Ibrahimy'),
(1665, 'Universitas Ichsan Gorontalo'),
(1666, 'Universitas Imelda Medan'),
(1667, 'Universitas Indo Global Mandiri'),
(1668, 'Universitas Indonesia'),
(1669, 'Universitas Indonesia Timur'),
(1670, 'Universitas Indraprasta PGRI'),
(1671, 'Universitas Informatika Dan Bisnis Indonesia'),
(1672, 'Universitas Internasional Batam'),
(1673, 'Universitas Internasional Semen Indonesia'),
(1674, 'Universitas Iqra Buru'),
(1675, 'Universitas Iskandar Muda'),
(1676, 'Universitas Islam 45'),
(1677, 'Universitas Islam Al-azhar'),
(1678, 'Universitas Islam Al-Ihya Kuningan'),
(1679, 'Universitas Islam As-syafiiyah'),
(1680, 'Universitas Islam Attahiriyah'),
(1681, 'Universitas Islam Balitar'),
(1682, 'Universitas Islam Bandung'),
(1683, 'Universitas Islam Batik'),
(1684, 'Universitas Islam Darul `ulum'),
(1685, 'Universitas Islam Indonesia'),
(1686, 'Universitas Islam Indragiri'),
(1687, 'Universitas Islam Jakarta'),
(1688, 'Universitas Islam Jember'),
(1689, 'Universitas Islam Kadiri'),
(1690, 'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari Banjarmasin'),
(1691, 'Universitas Islam Kebangsaan Indonesia'),
(1692, 'Universitas Islam Kuantan Singingi'),
(1693, 'Universitas Islam Labuhan Batu'),
(1694, 'Universitas Islam Lamongan'),
(1695, 'Universitas Islam Madura'),
(1696, 'Universitas Islam Majapahit'),
(1697, 'Universitas Islam Makassar'),
(1698, 'Universitas Islam Malang'),
(1699, 'Universitas Islam Nahdlatul Ulama Jepara'),
(1700, 'Universitas Islam Nusantara'),
(1701, 'Universitas Islam Ogan Komering Ilir Kayuagung'),
(1702, 'Universitas Islam Raden Rahmat'),
(1703, 'Universitas Islam Riau'),
(1704, 'Universitas Islam Sultan Agung'),
(1705, 'Universitas Islam Sumatera Utara'),
(1706, 'Universitas Islam Syekh-Yusuf'),
(1707, 'Universitas Ivet'),
(1708, 'Universitas Jabal Ghafur'),
(1709, 'Universitas Jakarta'),
(1710, 'Universitas Jambi'),
(1711, 'Universitas Janabadra'),
(1712, 'Universitas Jayabaya'),
(1713, 'Universitas Jember'),
(1714, 'Universitas Jenderal Achmad Yani'),
(1715, 'Universitas Jenderal Achmad Yani Yogyakarta'),
(1716, 'Universitas Jenderal Soedirman'),
(1717, 'Universitas Kader Bangsa'),
(1718, 'Universitas Kadiri'),
(1719, 'Universitas Kahuripan Kediri'),
(1720, 'Universitas Kaltara'),
(1721, 'Universitas Kanjuruhan'),
(1722, 'Universitas Kapuas'),
(1723, 'Universitas Karimun'),
(1724, 'Universitas Kartamulia Purwakarta'),
(1725, 'Universitas Kartini'),
(1726, 'Universitas Karya Dharma Makassar'),
(1727, 'Universitas Karyadarma Kupang'),
(1728, 'Universitas Katolik Darma Cendika'),
(1729, 'Universitas Katolik De La Salle'),
(1730, 'Universitas Katolik Indonesia Atma Jaya'),
(1731, 'Universitas Katolik Indonesia Santu Paulus Ruteng'),
(1732, 'Universitas Katolik Musi Charitas'),
(1733, 'Universitas Katolik Parahyangan'),
(1734, 'Universitas Katolik Santo Thomas'),
(1735, 'Universitas Katolik Soegijapranata'),
(1736, 'Universitas Katolik Widya Karya'),
(1737, 'Universitas Katolik Widya Mandala Madiun'),
(1738, 'Universitas Katolik Widya Mandala Surabaya'),
(1739, 'Universitas Katolik Widya Mandira Kupang'),
(1740, 'Universitas Kebangsaan'),
(1741, 'Universitas Kejuangan 45 Jakarta'),
(1742, 'Universitas KH. A. Wahab Hasbullah'),
(1743, 'Universitas KH. Bahaudin Mudhary Madura'),
(1744, 'Universitas Khairun'),
(1745, 'Universitas Klabat'),
(1746, 'Universitas Komputer Indonesia'),
(1747, 'Universitas Krisnadwipayana'),
(1748, 'Universitas Kristen Artha Wacana'),
(1749, 'Universitas Kristen Cipta Wacana'),
(1750, 'Universitas Kristen Duta Wacana'),
(1751, 'Universitas Kristen Immanuel'),
(1752, 'Universitas Kristen Indonesia'),
(1753, 'Universitas Kristen Indonesia Maluku'),
(1754, 'Universitas Kristen Indonesia Paulus'),
(1755, 'Universitas Kristen Indonesia Tomohon'),
(1756, 'Universitas Kristen Indonesia Toraja'),
(1757, 'Universitas Kristen Krida Wacana'),
(1758, 'Universitas Kristen Maranatha'),
(1759, 'Universitas Kristen Palangka Raya'),
(1760, 'Universitas Kristen Papua'),
(1761, 'Universitas Kristen Petra'),
(1762, 'Universitas Kristen Satya Wacana'),
(1763, 'Universitas Kristen Surakarta'),
(1764, 'Universitas Kristen Tentena'),
(1765, 'Universitas Kristen Wira Wacana Sumba'),
(1766, 'Universitas Kuningan'),
(1767, 'Universitas Kusuma Husada Surakarta'),
(1768, 'Universitas Kutai Kartanegara Tenggarong'),
(1769, 'Universitas Labuhanbatu'),
(1770, 'Universitas Lakidende Unaaha'),
(1771, 'Universitas Lambung Mangkurat'),
(1772, 'Universitas Lampung'),
(1773, 'Universitas Lancang Kuning'),
(1774, 'Universitas Langlang Buana'),
(1775, 'Universitas Lintas Internasional Indonesia'),
(1776, 'Universitas Lumajang'),
(1777, 'Universitas Ma Chung'),
(1778, 'Universitas Maarif Hasyim Latif'),
(1779, 'Universitas Maarif Nahdlatul Ulama Kebumen'),
(1780, 'Universitas Madako Tolitoli'),
(1781, 'Universitas Madura'),
(1782, 'Universitas Mahakarya Asia'),
(1783, 'Universitas Mahaputra Muhammad Yamin'),
(1784, 'Universitas Mahasaraswati Denpasar'),
(1785, 'Universitas Mahendradatta'),
(1786, 'Universitas Majalengka'),
(1787, 'Universitas Malahayati'),
(1788, 'Universitas Malikussaleh'),
(1789, 'Universitas Maritim AMNI'),
(1790, 'Universitas Maritim Raja Ali Haji (UMRAH)'),
(1791, 'Universitas Masoem'),
(1792, 'Universitas Matana'),
(1793, 'Universitas Mataram'),
(1794, 'Universitas Mathla ul Anwar'),
(1795, 'Universitas Mayjen Sungkono'),
(1796, 'Universitas Medan Area'),
(1797, 'Universitas Megarezky'),
(1798, 'Universitas Megou Pak Tulang Bawang'),
(1799, 'Universitas Mercu Buana'),
(1800, 'Universitas Mercu Buana Yogyakarta'),
(1801, 'Universitas Merdeka Madiun'),
(1802, 'Universitas Merdeka Malang'),
(1803, 'Universitas Merdeka Pasuruan'),
(1804, 'Universitas Merdeka Ponorogo'),
(1805, 'Universitas Merdeka Surabaya'),
(1806, 'Universitas Methodist Indonesia'),
(1807, 'Universitas Mitra Indonesia'),
(1808, 'Universitas Mitra Karya'),
(1809, 'Universitas Mochammad Sroedji'),
(1810, 'Universitas Mohammad Husni Thamrin Jakarta'),
(1811, 'Universitas Mohammad Natsir Bukittinggi'),
(1812, 'Universitas Mpu Tantular'),
(1813, 'Universitas Muara Bungo'),
(1814, 'Universitas Muhadi Setiabudi'),
(1815, 'Universitas Muhammadiyah Aceh'),
(1816, 'Universitas Muhammadiyah Bandung'),
(1817, 'Universitas Muhammadiyah Banjarmasin'),
(1818, 'Universitas Muhammadiyah Banten'),
(1819, 'Universitas Muhammadiyah Bengkulu'),
(1820, 'Universitas Muhammadiyah Bulukumba'),
(1821, 'Universitas Muhammadiyah Buton'),
(1822, 'Universitas Muhammadiyah Cirebon'),
(1823, 'Universitas Muhammadiyah Gorontalo'),
(1824, 'Universitas Muhammadiyah Gresik'),
(1825, 'Universitas Muhammadiyah Jakarta'),
(1826, 'Universitas Muhammadiyah Jambi'),
(1827, 'Universitas Muhammadiyah Jember'),
(1828, 'Universitas Muhammadiyah Kalimantan Timur'),
(1829, 'Universitas Muhammadiyah Kendari'),
(1830, 'Universitas Muhammadiyah Kotabumi'),
(1831, 'Universitas Muhammadiyah Kudus'),
(1832, 'Universitas Muhammadiyah Kupang'),
(1833, 'Universitas Muhammadiyah Lamongan'),
(1834, 'Universitas Muhammadiyah Lampung'),
(1835, 'Universitas Muhammadiyah Luwuk Banggai'),
(1836, 'Universitas Muhammadiyah Magelang'),
(1837, 'Universitas Muhammadiyah Makassar'),
(1838, 'Universitas Muhammadiyah Malang'),
(1839, 'Universitas Muhammadiyah Maluku Utara'),
(1840, 'Universitas Muhammadiyah Mataram'),
(1841, 'Universitas Muhammadiyah Metro'),
(1842, 'Universitas Muhammadiyah Palangka Raya'),
(1843, 'Universitas Muhammadiyah Palembang'),
(1844, 'Universitas Muhammadiyah Palopo'),
(1845, 'Universitas Muhammadiyah Palu'),
(1846, 'Universitas Muhammadiyah Pare-pare'),
(1847, 'Universitas Muhammadiyah Pekajangan Pekalongan'),
(1848, 'Universitas Muhammadiyah Ponorogo'),
(1849, 'Universitas Muhammadiyah Pontianak'),
(1850, 'Universitas Muhammadiyah Pringsewu'),
(1851, 'Universitas Muhammadiyah Prof Dr Hamka'),
(1852, 'Universitas Muhammadiyah Purwokerto'),
(1853, 'Universitas Muhammadiyah Purworejo'),
(1854, 'Universitas Muhammadiyah Riau'),
(1855, 'Universitas Muhammadiyah Semarang'),
(1856, 'Universitas Muhammadiyah Sidenreng Rappang'),
(1857, 'Universitas Muhammadiyah Sidoarjo'),
(1858, 'Universitas Muhammadiyah Sinjai'),
(1859, 'Universitas Muhammadiyah Sorong'),
(1860, 'Universitas Muhammadiyah Sukabumi'),
(1861, 'Universitas Muhammadiyah Sumatera Barat'),
(1862, 'Universitas Muhammadiyah Sumatera Utara'),
(1863, 'Universitas Muhammadiyah Surabaya'),
(1864, 'Universitas Muhammadiyah Surakarta'),
(1865, 'Universitas Muhammadiyah Tangerang'),
(1866, 'Universitas Muhammadiyah Tapanuli Selatan'),
(1867, 'Universitas Muhammadiyah Tasikmalaya'),
(1868, 'Universitas Muhammadiyah Yogyakarta'),
(1869, 'Universitas Mulawarman'),
(1870, 'Universitas Mulia'),
(1871, 'Universitas Multimedia Nusantara Jakarta'),
(1872, 'Universitas Muria Kudus'),
(1873, 'Universitas Musamus Merauke'),
(1874, 'Universitas Musi Rawas'),
(1875, 'Universitas Muslim Buton'),
(1876, 'Universitas Muslim Indonesia'),
(1877, 'Universitas Muslim Maros'),
(1878, 'Universitas Muslim Nusantara Al-Washliyah'),
(1879, 'Universitas Nahdlatul Ulama Al Ghazali Cilacap'),
(1880, 'Universitas Nahdlatul Ulama Blitar'),
(1881, 'Universitas Nahdlatul Ulama Cirebon'),
(1882, 'Universitas Nahdlatul Ulama Gorontalo'),
(1883, 'Universitas Nahdlatul Ulama Indonesia'),
(1884, 'Universitas Nahdlatul Ulama Kalimantan Barat'),
(1885, 'Universitas Nahdlatul Ulama Kalimantan Selatan'),
(1886, 'Universitas Nahdlatul Ulama Kalimantan Timur'),
(1887, 'Universitas Nahdlatul Ulama Lampung'),
(1888, 'Universitas Nahdlatul Ulama Nusa Tenggara Barat'),
(1889, 'Universitas Nahdlatul Ulama Purwokerto'),
(1890, 'Universitas Nahdlatul Ulama Sidoarjo'),
(1891, 'Universitas Nahdlatul Ulama Sulawesi Tenggara'),
(1892, 'Universitas Nahdlatul Ulama Sumatera Barat'),
(1893, 'Universitas Nahdlatul Ulama Sumatera Utara'),
(1894, 'Universitas Nahdlatul Ulama Sunan Giri'),
(1895, 'Universitas Nahdlatul Ulama Surabaya'),
(1896, 'Universitas Nahdlatul Ulama Surakarta'),
(1897, 'Universitas Nahdlatul Ulama Yogyakarta'),
(1898, 'Universitas Nahdlatul Wathan Mataram'),
(1899, 'Universitas Nani Bili Nusantara'),
(1900, 'Universitas Narotama'),
(1901, 'Universitas Nasional'),
(1902, 'Universitas Nasional Karangturi Semarang'),
(1903, 'Universitas Nasional Pasim'),
(1904, 'Universitas Negeri Gorontalo'),
(1905, 'Universitas Negeri Jakarta'),
(1906, 'Universitas Negeri Makassar'),
(1907, 'Universitas Negeri Malang'),
(1908, 'Universitas Negeri Manado'),
(1909, 'Universitas Negeri Medan'),
(1910, 'Universitas Negeri Padang'),
(1911, 'Universitas Negeri Semarang'),
(1912, 'Universitas Negeri Surabaya'),
(1913, 'Universitas Negeri Yogyakarta'),
(1914, 'Universitas Ngudi Waluyo'),
(1915, 'Universitas Ngurah Rai'),
(1916, 'Universitas Nuku'),
(1917, 'Universitas Nurtanio'),
(1918, 'Universitas Nurul Jadid'),
(1919, 'Universitas Nusa Bangsa'),
(1920, 'Universitas Nusa Cendana'),
(1921, 'Universitas Nusa Lontar Rote'),
(1922, 'Universitas Nusa Nipa'),
(1923, 'Universitas Nusa Putra'),
(1924, 'Universitas Nusa Tenggara Barat'),
(1925, 'Universitas Nusantara Manado'),
(1926, 'Universitas Nusantara PGRI Kediri'),
(1927, 'Universitas Oso'),
(1928, 'Universitas Ottow Geissler'),
(1929, 'Universitas Padjadjaran'),
(1930, 'Universitas Pahlawan Tuanku Tambusai'),
(1931, 'Universitas Pakuan'),
(1932, 'Universitas Palangka Raya'),
(1933, 'Universitas Palembang'),
(1934, 'Universitas Pamulang'),
(1935, 'Universitas Panca Bhakti'),
(1936, 'Universitas Panca Marga'),
(1937, 'Universitas Panca Sakti Bekasi'),
(1938, 'Universitas Pancasakti'),
(1939, 'Universitas Pancasakti Tegal'),
(1940, 'Universitas Pancasila'),
(1941, 'Universitas Pandanaran'),
(1942, 'Universitas Panji Sakti Singaraja'),
(1943, 'Universitas Papua'),
(1944, 'Universitas Paramadina'),
(1945, 'Universitas Pasifik Morotai'),
(1946, 'Universitas Pasir Pengaraian'),
(1947, 'Universitas Pasundan'),
(1948, 'Universitas Pat Petulai'),
(1949, 'Universitas Patria Artha'),
(1950, 'Universitas Pattimura'),
(1951, 'Universitas Pawyatan Daha'),
(1952, 'Universitas Pejuang Republik Indonesia'),
(1953, 'Universitas Pekalongan'),
(1954, 'Universitas Pelita Bangsa'),
(1955, 'Universitas Pelita Harapan'),
(1956, 'Universitas Pembangunan Indonesia'),
(1957, 'Universitas Pembangunan Jaya'),
(1958, 'Universitas Pembangunan Nasional Veteran Jakarta'),
(1959, 'Universitas Pembangunan Nasional Veteran Jawa Timur'),
(1960, 'Universitas Pembangunan Nasional Veteran Yogyakarta'),
(1961, 'Universitas Pembangunan Panca Budi'),
(1962, 'Universitas Pembinaan Masyarakat Indonesia'),
(1963, 'Universitas Pendidikan Ganesha'),
(1964, 'Universitas Pendidikan Indonesia'),
(1965, 'Universitas Pendidikan Mandalika'),
(1966, 'Universitas Pendidikan Muhammadiyah Sorong'),
(1967, 'Universitas Pendidikan Nasional'),
(1968, 'Universitas Pepabri Makassar'),
(1969, 'Universitas Peradaban'),
(1970, 'Universitas Perjuangan Tasikmalaya'),
(1971, 'Universitas Persada Indonesia Yai'),
(1972, 'Universitas Persatuan Guru 1945 NTT'),
(1973, 'Universitas Pertamina'),
(1974, 'Universitas Perwira Purbalingga'),
(1975, 'Universitas Pesantren Tinggi Darul  ulum'),
(1976, 'Universitas PGRI Adi Buana'),
(1977, 'Universitas PGRI Banyuwangi'),
(1978, 'Universitas PGRI Madiun'),
(1979, 'Universitas PGRI Palangka Raya'),
(1980, 'Universitas PGRI Palembang'),
(1981, 'Universitas PGRI Ronggolawe'),
(1982, 'Universitas PGRI Semarang'),
(1983, 'Universitas PGRI Wiranegara'),
(1984, 'Universitas PGRI Yogyakarta'),
(1985, 'Universitas Pohuwato'),
(1986, 'Universitas Potensi Utama'),
(1987, 'Universitas Pradita'),
(1988, 'Universitas Pramita Indonesia'),
(1989, 'Universitas Prasetiya Mulya'),
(1990, 'Universitas Presiden'),
(1991, 'Universitas Prima Indonesia'),
(1992, 'Universitas Primagraha'),
(1993, 'Universitas Prisma'),
(1994, 'Universitas Prof Dr Hazairin SH'),
(1995, 'Universitas Prof Dr Moestopo (Beragama)'),
(1996, 'Universitas Proklamasi  45'),
(1997, 'Universitas Puangrimaggalatung'),
(1998, 'Universitas Putera Batam'),
(1999, 'Universitas Putra Indonesia'),
(2000, 'Universitas Putra Indonesia Yptk Padang'),
(2001, 'Universitas Qamarul Huda Badaruddin Bagu'),
(2002, 'Universitas Qomaruddin'),
(2003, 'Universitas Quality'),
(2004, 'Universitas Quality Berastagi'),
(2005, 'Universitas Raharja'),
(2006, 'Universitas Ratu Samban'),
(2007, 'Universitas Respati Indonesia'),
(2008, 'Universitas Respati Yogyakarta'),
(2009, 'Universitas Riau'),
(2010, 'Universitas Riau Kepulauan'),
(2011, 'Universitas Sahid'),
(2012, 'Universitas Sahid Surakarta'),
(2013, 'Universitas Sains Alqur an'),
(2014, 'Universitas Sains Cut Nyak Dhien'),
(2015, 'Universitas Sains Dan Teknologi Jayapura'),
(2016, 'Universitas Sains dan Teknologi Komputer'),
(2017, 'Universitas Sam Ratulangi'),
(2018, 'Universitas Samawa'),
(2019, 'Universitas Sampoerna'),
(2020, 'Universitas Samudra'),
(2021, 'Universitas San Pedro'),
(2022, 'Universitas Sanata Dharma'),
(2023, 'Universitas Sang Bumi Ruwa Jurai'),
(2024, 'Universitas Sangga Buana'),
(2025, 'Universitas Sari Mulia'),
(2026, 'Universitas Sari Mutiara Indonesia Medan'),
(2027, 'Universitas Sari Putra Indonesia Tomohon'),
(2028, 'Universitas Sarjanawiyata Tamansiswa'),
(2029, 'Universitas Satya Negara Indonesia'),
(2030, 'Universitas Satya Wiyata Mandala'),
(2031, 'Universitas Satyagama'),
(2032, 'Universitas Sawerigading Makassar'),
(2033, 'Universitas Sebelas Maret'),
(2034, 'Universitas Selamat Sri'),
(2035, 'Universitas Semarang'),
(2036, 'Universitas Sembilanbelas November Kolaka'),
(2037, 'Universitas Serambi Mekkah'),
(2038, 'Universitas Serang Raya'),
(2039, 'Universitas Setia Budi Surakarta'),
(2040, 'Universitas Siliwangi'),
(2041, 'Universitas Simalungun'),
(2042, 'Universitas Singaperbangsa Karawang'),
(2043, 'Universitas Sintuwu Maroso Poso'),
(2044, 'Universitas Sisingamangaraja XII Tapanuli Utara'),
(2045, 'Universitas Sjakhyakirti'),
(2046, 'Universitas Slamet Riyadi'),
(2047, 'Universitas Soerjo'),
(2048, 'Universitas Sriwijaya'),
(2049, 'Universitas Stikubank'),
(2050, 'Universitas Subang'),
(2051, 'Universitas Sulawesi Barat'),
(2052, 'Universitas Sulawesi Tenggara'),
(2053, 'Universitas Sultan Ageng Tirtayasa'),
(2054, 'Universitas Sultan Fatah'),
(2055, 'Universitas Sumatera Selatan'),
(2056, 'Universitas Sumatera Utara'),
(2057, 'Universitas Sunan Bonang'),
(2058, 'Universitas Sunan Giri Surabaya'),
(2059, 'Universitas Surabaya'),
(2060, 'Universitas Surakarta'),
(2061, 'Universitas Surapati'),
(2062, 'Universitas Surya'),
(2063, 'Universitas Suryakancana'),
(2064, 'Universitas Sutomo'),
(2065, 'Universitas Swadaya Gunung Djati'),
(2066, 'Universitas Swiss German'),
(2067, 'Universitas Syiah Kuala'),
(2068, 'Universitas Tabanan'),
(2069, 'Universitas Tadulako'),
(2070, 'Universitas Tama Jagakarsa'),
(2071, 'Universitas Tamansiswa'),
(2072, 'Universitas Tamansiswa'),
(2073, 'Universitas Tanjungpura'),
(2074, 'Universitas Tanri Abeng'),
(2075, 'Universitas Tarumanagara'),
(2076, 'Universitas Teknokrat Indonesia'),
(2077, 'Universitas Teknologi Indonesia'),
(2078, 'Universitas Teknologi Mataram'),
(2079, 'Universitas Teknologi Nusantara Cilegon'),
(2080, 'Universitas Teknologi Sulawesi'),
(2081, 'Universitas Teknologi Sulawesi Utara'),
(2082, 'Universitas Teknologi Sumbawa'),
(2083, 'Universitas Teknologi Surabaya'),
(2084, 'Universitas Teknologi Yogyakarta'),
(2085, 'Universitas Telkom'),
(2086, 'Universitas Terbuka'),
(2087, 'Universitas Teuku Umar'),
(2088, 'Universitas Tidar'),
(2089, 'Universitas Timika'),
(2090, 'Universitas Timor'),
(2091, 'Universitas Tjut Nyak Dhien'),
(2092, 'Universitas Tomakaka'),
(2093, 'Universitas Tompotika Luwuk Banggai'),
(2094, 'Universitas Triatma Mulya'),
(2095, 'Universitas Tribhuwana Tungga Dewi'),
(2096, 'Universitas Tribuana Kalabahi'),
(2097, 'Universitas Tridharma'),
(2098, 'Universitas Tridinanti'),
(2099, 'Universitas Trilogi'),
(2100, 'Universitas Trinita'),
(2101, 'Universitas Trisakti'),
(2102, 'Universitas Trunajaya Bontang'),
(2103, 'Universitas Trunojoyo'),
(2104, 'Universitas Tulang Bawang'),
(2105, 'Universitas Tulungagung'),
(2106, 'Universitas Tunas Pembangunan Surakarta (UTP)'),
(2107, 'Universitas Ubudiyah Indonesia'),
(2108, 'Universitas Udayana'),
(2109, 'Universitas Universal'),
(2110, 'Universitas Veteran Bangun Nusantara'),
(2111, 'Universitas Victory Sorong'),
(2112, 'Universitas W R Supratman'),
(2113, 'Universitas Wahid Hasyim'),
(2114, 'Universitas Wahidiyah'),
(2115, 'Universitas Wanita Internasional'),
(2116, 'Universitas Warmadewa'),
(2117, 'Universitas Widya Dharma'),
(2118, 'Universitas Widya Dharma Pontianak'),
(2119, 'Universitas Widya Gama'),
(2120, 'Universitas Widya Gama Mahakam Samarinda'),
(2121, 'Universitas Widya Husada Semarang'),
(2122, 'Universitas Widya Kartika'),
(2123, 'Universitas Widya Mataram'),
(2124, 'Universitas Widyatama'),
(2125, 'Universitas Wijaya Kusuma Purwokerto'),
(2126, 'Universitas Wijaya Kusuma Surabaya'),
(2127, 'Universitas Wijaya Putra'),
(2128, 'Universitas Winaya Mukti'),
(2129, 'Universitas Wiralodra'),
(2130, 'Universitas Wiraraja'),
(2131, 'Universitas Wiraswasta Indonesia'),
(2132, 'Universitas Wisnuwardhana'),
(2133, 'Universitas Yapis Papua'),
(2134, 'Universitas Yarsi'),
(2135, 'Universitas Yos Soedarso'),
(2136, 'Universitas Yudharta Pasuruan');

-- --------------------------------------------------------

--
-- Table structure for table `proses_personalia`
--

CREATE TABLE `proses_personalia` (
  `id_proses` int(11) NOT NULL,
  `id_lamaran` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `id_penempatan` int(11) NOT NULL,
  `tanggal_proses` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(11) NOT NULL COMMENT 'NIK PENABUR',
  `nama_lengkap` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `id_role`, `email`, `password`) VALUES
('116162', 'Redy Septyanto', 1, 'redy.septyanto@bpkpenaburjakarta.or.id', 'Penabur123'),
('116163', 'Eka Muliawan', 1, 'eka.muliawan@bpkpenaburjakarta.or.id', 'Penabur123'),
('116165', 'Antoni Wijaya', 1, 'antoni.wijaya@bpkpenaburjakarta.or.id', 'Penabur123'),
('116168', 'Bonaventura Yudistira', 2, 'bonaventura.yudistira@bpkpenaburjakarta.or.id', 'Penabur123'),
('SP0003', 'Aditya Dwi Aprianto', 1, 'aditya.aprianto@bpkpenaburjakarta.or.id', 'Penabur123');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ceksyarat`
-- (See below for the actual view)
--
CREATE TABLE `v_ceksyarat` (
`nama_lengkap` varchar(100)
,`agama` set('Kristen Protestan','Kristen Katolik','Islam','Hindu','Buddha','Konghucu')
,`usia` int(2)
,`jenis_kelamin` varchar(1)
,`status_pernikahan` varchar(20)
,`pendidikan_terakhir` varchar(20)
,`jurusan` varchar(100)
,`ipk` int(11)
,`ijazah` varchar(100)
,`file_ktp` varchar(100)
,`file_npwp` varchar(100)
,`file_kk` varchar(100)
,`surat_baptis` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lamaran`
-- (See below for the actual view)
--
CREATE TABLE `v_lamaran` (
`id_lamaran` int(11)
,`id_lowongan` int(11)
,`id_kandidat` int(11)
,`nama_lengkap` varchar(100)
,`judul` varchar(100)
,`tanggal_apply` timestamp
,`universitas` varchar(100)
,`jurusan` varchar(100)
,`agama` set('Kristen Protestan','Kristen Katolik','Islam','Hindu','Buddha','Konghucu')
,`usia` int(2)
,`status_rekrutmen` varchar(20)
,`catatan` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lowongan`
-- (See below for the actual view)
--
CREATE TABLE `v_lowongan` (
`id_lowongan` int(11)
,`judul` varchar(100)
,`id_posisi` int(11)
,`nama_posisi` varchar(50)
,`id_jurusan` varchar(255)
,`nama_jurusan` mediumtext
,`penempatan` varchar(50)
,`tanggal_post` timestamp
,`deskripsi` text
,`status_lowongan` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_role`
-- (See below for the actual view)
--
CREATE TABLE `v_role` (
`id_user` varchar(11)
,`nama_lengkap` varchar(100)
,`email` varchar(100)
,`password` varchar(100)
,`nama_role` varchar(20)
,`deskripsi_role` text
);

-- --------------------------------------------------------

--
-- Structure for view `v_ceksyarat`
--
DROP TABLE IF EXISTS `v_ceksyarat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ceksyarat`  AS SELECT `kandidat`.`nama_lengkap` AS `nama_lengkap`, `kandidat`.`agama` AS `agama`, `kandidat`.`usia` AS `usia`, `kandidat`.`jenis_kelamin` AS `jenis_kelamin`, `kandidat`.`status_pernikahan` AS `status_pernikahan`, `kandidat`.`pendidikan_terakhir` AS `pendidikan_terakhir`, `kandidat_pendidikan`.`jurusan` AS `jurusan`, `kandidat_pendidikan`.`ipk` AS `ipk`, `kandidat_pendidikan`.`ijazah` AS `ijazah`, `kandidat_lampiran`.`file_ktp` AS `file_ktp`, `kandidat_lampiran`.`file_npwp` AS `file_npwp`, `kandidat_lampiran`.`file_kk` AS `file_kk`, `kandidat_lampiran`.`surat_baptis` AS `surat_baptis` FROM ((`kandidat_pendidikan` join `kandidat` on(`kandidat_pendidikan`.`id_kandidat` = `kandidat`.`id_kandidat`)) join `kandidat_lampiran` on(`kandidat`.`id_kandidat` = `kandidat_lampiran`.`id_kandidat`))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_lamaran`
--
DROP TABLE IF EXISTS `v_lamaran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lamaran`  AS SELECT `lamaran`.`id_lamaran` AS `id_lamaran`, `lamaran`.`id_lowongan` AS `id_lowongan`, `kandidat`.`id_kandidat` AS `id_kandidat`, `kandidat`.`nama_lengkap` AS `nama_lengkap`, `lowongan`.`judul` AS `judul`, `lamaran`.`tanggal_apply` AS `tanggal_apply`, `kandidat`.`universitas` AS `universitas`, `kandidat`.`jurusan` AS `jurusan`, `kandidat`.`agama` AS `agama`, `kandidat`.`usia` AS `usia`, `lamaran`.`status_rekrutmen` AS `status_rekrutmen`, `lamaran`.`catatan` AS `catatan` FROM ((`kandidat` join `lamaran` on(`kandidat`.`id_kandidat` = `lamaran`.`id_kandidat`)) join `lowongan` on(`lamaran`.`id_lowongan` = `lowongan`.`id_lowongan`))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_lowongan`
--
DROP TABLE IF EXISTS `v_lowongan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lowongan`  AS SELECT `lowongan`.`id_lowongan` AS `id_lowongan`, `lowongan`.`judul` AS `judul`, `lowongan`.`id_posisi` AS `id_posisi`, `master_posisi`.`nama_posisi` AS `nama_posisi`, `lowongan`.`id_jurusan` AS `id_jurusan`, group_concat(distinct `master_jurusan`.`nama_jurusan` separator ', ') AS `nama_jurusan`, `lowongan`.`penempatan` AS `penempatan`, `lowongan`.`tanggal_post` AS `tanggal_post`, `lowongan`.`deskripsi` AS `deskripsi`, `lowongan`.`status_lowongan` AS `status_lowongan` FROM ((`lowongan` join `master_posisi` on(`lowongan`.`id_posisi` = `master_posisi`.`id_posisi`)) join `master_jurusan` on(find_in_set(`master_jurusan`.`id_jurusan`,`lowongan`.`id_jurusan`))) GROUP BY `lowongan`.`id_lowongan``id_lowongan`  ;

-- --------------------------------------------------------

--
-- Structure for view `v_role`
--
DROP TABLE IF EXISTS `v_role`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_role`  AS SELECT `user`.`id_user` AS `id_user`, `user`.`nama_lengkap` AS `nama_lengkap`, `user`.`email` AS `email`, `user`.`password` AS `password`, `master_role`.`nama_role` AS `nama_role`, `master_role`.`deskripsi_role` AS `deskripsi_role` FROM (`user` left join `master_role` on(`user`.`id_role` = `master_role`.`id_role`))  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`id_kandidat`),
  ADD KEY `FKkandidat81744` (`id_role`);

--
-- Indexes for table `kandidat_anak`
--
ALTER TABLE `kandidat_anak`
  ADD PRIMARY KEY (`id_anak`),
  ADD KEY `FKkandidat_a719010` (`id_kandidat`);

--
-- Indexes for table `kandidat_keluarga`
--
ALTER TABLE `kandidat_keluarga`
  ADD PRIMARY KEY (`id_keluarga`),
  ADD KEY `FKkandidat_k807656` (`id_kandidat`);

--
-- Indexes for table `kandidat_kesehatan`
--
ALTER TABLE `kandidat_kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`),
  ADD KEY `FKkandidat_k571100` (`id_kandidat`);

--
-- Indexes for table `kandidat_lampiran`
--
ALTER TABLE `kandidat_lampiran`
  ADD PRIMARY KEY (`id_lampiran`),
  ADD KEY `FKkandidat_l207463` (`id_kandidat`);

--
-- Indexes for table `kandidat_organisasi`
--
ALTER TABLE `kandidat_organisasi`
  ADD PRIMARY KEY (`id_organisasi`),
  ADD KEY `FKkandidat_o658896` (`id_kandidat`);

--
-- Indexes for table `kandidat_pasangan`
--
ALTER TABLE `kandidat_pasangan`
  ADD PRIMARY KEY (`id_pasangan`),
  ADD KEY `FKkandidat_p426774` (`id_kandidat`);

--
-- Indexes for table `kandidat_pendidikan`
--
ALTER TABLE `kandidat_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`),
  ADD KEY `FKkandidat_p132079` (`id_kandidat`);

--
-- Indexes for table `kandidat_pengalaman`
--
ALTER TABLE `kandidat_pengalaman`
  ADD PRIMARY KEY (`id_pengalaman`),
  ADD KEY `FKkandidat_p792525` (`id_kandidat`);

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`id_lamaran`),
  ADD KEY `FKlamaran590492` (`id_lowongan`),
  ADD KEY `FKlamaran422263` (`id_kandidat`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`),
  ADD KEY `FKlowongan32671` (`id_jurusan`),
  ADD KEY `FKlowongan674676` (`id_posisi`);

--
-- Indexes for table `master_jenjang`
--
ALTER TABLE `master_jenjang`
  ADD PRIMARY KEY (`id_jenjang`);

--
-- Indexes for table `master_jurusan`
--
ALTER TABLE `master_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indexes for table `master_penempatan`
--
ALTER TABLE `master_penempatan`
  ADD PRIMARY KEY (`id_penempatan`);

--
-- Indexes for table `master_posisi`
--
ALTER TABLE `master_posisi`
  ADD PRIMARY KEY (`id_posisi`);

--
-- Indexes for table `master_role`
--
ALTER TABLE `master_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `master_universitas`
--
ALTER TABLE `master_universitas`
  ADD PRIMARY KEY (`id_universitas`);

--
-- Indexes for table `proses_personalia`
--
ALTER TABLE `proses_personalia`
  ADD PRIMARY KEY (`id_proses`),
  ADD KEY `FKproses_per631363` (`id_lamaran`),
  ADD KEY `FKproses_per418328` (`id_jenjang`),
  ADD KEY `FKproses_per506574` (`id_penempatan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `FKmaster_adm546928` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `id_kandidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1229986;

--
-- AUTO_INCREMENT for table `kandidat_anak`
--
ALTER TABLE `kandidat_anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_keluarga`
--
ALTER TABLE `kandidat_keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_kesehatan`
--
ALTER TABLE `kandidat_kesehatan`
  MODIFY `id_kesehatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_lampiran`
--
ALTER TABLE `kandidat_lampiran`
  MODIFY `id_lampiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_organisasi`
--
ALTER TABLE `kandidat_organisasi`
  MODIFY `id_organisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_pasangan`
--
ALTER TABLE `kandidat_pasangan`
  MODIFY `id_pasangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_pendidikan`
--
ALTER TABLE `kandidat_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kandidat_pengalaman`
--
ALTER TABLE `kandidat_pengalaman`
  MODIFY `id_pengalaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `lamaran`
--
ALTER TABLE `lamaran`
  MODIFY `id_lamaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3229814;

--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2229925;

--
-- AUTO_INCREMENT for table `master_jenjang`
--
ALTER TABLE `master_jenjang`
  MODIFY `id_jenjang` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autoincrement', AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `master_jurusan`
--
ALTER TABLE `master_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `master_penempatan`
--
ALTER TABLE `master_penempatan`
  MODIFY `id_penempatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `master_posisi`
--
ALTER TABLE `master_posisi`
  MODIFY `id_posisi` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autoincrement', AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `master_role`
--
ALTER TABLE `master_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `master_universitas`
--
ALTER TABLE `master_universitas`
  MODIFY `id_universitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2137;

--
-- AUTO_INCREMENT for table `proses_personalia`
--
ALTER TABLE `proses_personalia`
  MODIFY `id_proses` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD CONSTRAINT `FKkandidat81744` FOREIGN KEY (`id_role`) REFERENCES `master_role` (`id_role`);

--
-- Constraints for table `kandidat_anak`
--
ALTER TABLE `kandidat_anak`
  ADD CONSTRAINT `FKkandidat_a719010` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_keluarga`
--
ALTER TABLE `kandidat_keluarga`
  ADD CONSTRAINT `FKkandidat_k807656` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_kesehatan`
--
ALTER TABLE `kandidat_kesehatan`
  ADD CONSTRAINT `FKkandidat_k571100` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_lampiran`
--
ALTER TABLE `kandidat_lampiran`
  ADD CONSTRAINT `FKkandidat_l207463` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_organisasi`
--
ALTER TABLE `kandidat_organisasi`
  ADD CONSTRAINT `FKkandidat_o658896` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_pasangan`
--
ALTER TABLE `kandidat_pasangan`
  ADD CONSTRAINT `FKkandidat_p426774` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_pendidikan`
--
ALTER TABLE `kandidat_pendidikan`
  ADD CONSTRAINT `FKkandidat_p132079` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `kandidat_pengalaman`
--
ALTER TABLE `kandidat_pengalaman`
  ADD CONSTRAINT `FKkandidat_p792525` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);

--
-- Constraints for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD CONSTRAINT `FKlamaran422263` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`),
  ADD CONSTRAINT `FKlamaran590492` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id_lowongan`);

--
-- Constraints for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD CONSTRAINT `FKlowongan674676` FOREIGN KEY (`id_posisi`) REFERENCES `master_posisi` (`id_posisi`);

--
-- Constraints for table `proses_personalia`
--
ALTER TABLE `proses_personalia`
  ADD CONSTRAINT `FKproses_per418328` FOREIGN KEY (`id_jenjang`) REFERENCES `master_jenjang` (`id_jenjang`),
  ADD CONSTRAINT `FKproses_per506574` FOREIGN KEY (`id_penempatan`) REFERENCES `master_penempatan` (`id_penempatan`),
  ADD CONSTRAINT `FKproses_per631363` FOREIGN KEY (`id_lamaran`) REFERENCES `lamaran` (`id_lamaran`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKmaster_adm546928` FOREIGN KEY (`id_role`) REFERENCES `master_role` (`id_role`);
--
-- Database: `InventorySIM`
--
CREATE DATABASE IF NOT EXISTS `InventorySIM` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `InventorySIM`;

-- --------------------------------------------------------

--
-- Table structure for table `tabelBarang`
--

CREATE TABLE `tabelBarang` (
  `idBarang` varchar(7) NOT NULL,
  `namaBarang` varchar(20) NOT NULL,
  `tipeBarang` varchar(20) NOT NULL,
  `merkBarang` varchar(20) NOT NULL,
  `kdBarang` varchar(50) NOT NULL,
  `qtyBarang` int(10) NOT NULL,
  `barangMasuk` datetime NOT NULL,
  `barangKeluar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tabelBarang`
--

INSERT INTO `tabelBarang` (`idBarang`, `namaBarang`, `tipeBarang`, `merkBarang`, `kdBarang`, `qtyBarang`, `barangMasuk`, `barangKeluar`) VALUES
('AP30001', 'Access Point', 'AP HD', 'UNIFI', 'sadasdasd', 2, '2022-08-20 00:00:00', '2022-09-28 15:30:01'),
('AP30002', 'Access Point', 'AP HD', 'UNIFI', 'sadasdasd', 2, '2022-08-20 00:00:00', '0000-00-00 00:00:00'),
('CK40001', 'Cloud Key', 'CK', 'UNIFI', 'sadasdasd', 7, '2022-08-20 00:00:00', '0000-00-00 00:00:00'),
('RT10001', 'Router', 'RB1100', 'Mikrotik', 'sadasdasd', 4, '2022-08-20 00:00:00', '0000-00-00 00:00:00'),
('SW20001', 'Switch', 'DGS1024D', 'DLINK', 'sadasdasd', 10, '2022-08-20 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabelBarang`
--
ALTER TABLE `tabelBarang`
  ADD PRIMARY KEY (`idBarang`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'db_rekrtumen', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"kandidat\",\"kandidat_anak\",\"kandidat_keluarga\",\"kandidat_kesehatan\",\"kandidat_lampiran\",\"kandidat_organisasi\",\"kandidat_pasangan\",\"kandidat_pendidikan\",\"kandidat_pengalaman\",\"lamaran\",\"lowongan\",\"master_jenjang\",\"master_jurusan\",\"master_penempatan\",\"master_posisi\",\"master_role\",\"master_universitas\",\"proses_personalia\",\"user\",\"v_ceksyarat\",\"v_lamaran\",\"v_lowongan\",\"v_role\"],\"table_structure[]\":[\"kandidat\",\"kandidat_anak\",\"kandidat_keluarga\",\"kandidat_kesehatan\",\"kandidat_lampiran\",\"kandidat_organisasi\",\"kandidat_pasangan\",\"kandidat_pendidikan\",\"kandidat_pengalaman\",\"lamaran\",\"lowongan\",\"master_jenjang\",\"master_jurusan\",\"master_penempatan\",\"master_posisi\",\"master_role\",\"master_universitas\",\"proses_personalia\",\"user\",\"v_ceksyarat\",\"v_lamaran\",\"v_lowongan\",\"v_role\"],\"table_data[]\":[\"kandidat\",\"kandidat_anak\",\"kandidat_keluarga\",\"kandidat_kesehatan\",\"kandidat_lampiran\",\"kandidat_organisasi\",\"kandidat_pasangan\",\"kandidat_pendidikan\",\"kandidat_pengalaman\",\"lamaran\",\"lowongan\",\"master_jenjang\",\"master_jurusan\",\"master_penempatan\",\"master_posisi\",\"master_role\",\"master_universitas\",\"proses_personalia\",\"user\",\"v_ceksyarat\",\"v_lamaran\",\"v_lowongan\",\"v_role\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"411192094_store\",\"table\":\"penjualan\"},{\"db\":\"411192094_store\",\"table\":\"barang\"},{\"db\":\"411192094_store\",\"table\":\"pelanggan\"},{\"db\":\"411192094_store\",\"table\":\"v_penjualan\"},{\"db\":\"db_rekrutmen\",\"table\":\"v_lamaran\"},{\"db\":\"db_rekrutmen\",\"table\":\"kandidat\"},{\"db\":\"db_rekrutmen\",\"table\":\"lamaran\"},{\"db\":\"db_rekrutmen\",\"table\":\"kandidat_pendidikan\"},{\"db\":\"db_rekrutmen\",\"table\":\"kandidat_pasangan\"},{\"db\":\"db_rekrutmen\",\"table\":\"kandidat_lampiran\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data for table `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_rekrutmen', 'lamaran', 'catatan'),
('dbakademik_namamhs', 'Nilai', 'nim'),
('rekrutmen', 'lamaran', 'catatan');

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'InventorySIM', 'tabelBarang', '{\"sorted_col\":\"`tabelBarang`.`barangkeluar` DESC\"}', '2022-09-08 08:30:42'),
('root', 'db_recruitmentSDM', 'calonKaryawan', '{\"sorted_col\":\"`calonKaryawan`.`statusKandidat` ASC\"}', '2022-10-03 03:45:23'),
('root', 'db_rekrutmen', 'lamaran', '{\"sorted_col\":\"`lamaran`.`id_kandidat` ASC\"}', '2022-11-21 15:32:34'),
('root', 'db_rekrutmen', 'lowongan', '{\"sorted_col\":\"`lowongan`.`tanggal_post` DESC\"}', '2022-11-04 07:45:18'),
('root', 'db_rekrutmen', 'master_jurusan', '{\"sorted_col\":\"`master_jurusan`.`nama_jurusan` ASC\"}', '2022-11-04 06:50:41'),
('root', 'dbakademik_namamhs', 'Mahasiswa', '{\"sorted_col\":\"`Mahasiswa`.`namamhs` ASC\"}', '2022-08-07 17:19:56'),
('root', 'dbakademik_namamhs', 'Mapel', '{\"sorted_col\":\"`Mapel`.`kd_mk` ASC\"}', '2022-08-07 17:23:20'),
('root', 'dbakademik_namamhs', 'Nilai', '{\"CREATE_TIME\":\"2022-08-08 00:15:13\",\"col_order\":[0,1,2],\"col_visib\":[1,1,1]}', '2022-08-07 17:31:26'),
('root', 'rentalDVD', 'pelanggan', '{\"sorted_col\":\"`pelanggan`.`idPelanggan` ASC\"}', '2022-08-23 15:49:58');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-12-18 06:39:03', '{\"Console\\/Mode\":\"collapse\",\"NavigationWidth\":291}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `recruitmentSDM`
--
CREATE DATABASE IF NOT EXISTS `recruitmentSDM` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `recruitmentSDM`;

-- --------------------------------------------------------

--
-- Table structure for table `data_universitas`
--

CREATE TABLE `data_universitas` (
  `id` int(144) NOT NULL,
  `nama_universitas` varchar(444) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_universitas`
--

INSERT INTO `data_universitas` (`id`, `nama_universitas`) VALUES
(1, 'Universitas Syiah Kuala, Banda Aceh\r\n'),
(2, 'Universitas Malikussaleh, Lhokseumawe\r\n'),
(3, 'Politeknik Negeri Lhokseumawe, Lhokseumawe\r\n'),
(4, 'Politeknik Negeri Aceh, Banda Aceh\r\n'),
(5, 'Universitas Samudra, Langsa\r\n'),
(6, 'Universitas Teuku Umar, Meulaboh\r\n'),
(7, 'Politeknik Aceh, Banda Aceh\r\n'),
(8, 'UIN Ar-Raniry, Banda Aceh\r\n'),
(9, 'STAIN Malikussaleh, Lhokseumawe\r\n'),
(10, 'STAIN Zawiyah Cot Kala, Langsa\r\n'),
(11, 'Akademi Komunitas Negeri (AKN) Aceh Barat Daya\r\n'),
(12, 'STAIN Gajah Putih Takengon\r\n'),
(13, 'IAIN Langsa, Langsa\r\n'),
(14, 'STAIN Malikussaleh, Lhokseumawe\r\n'),
(15, 'STAIN Gajah Putih Takengon, Takengon\r\n'),
(16, 'STAIN Teungku Dirundeng, Melabuh\r\n'),
(17, 'Politeknik Kesehatan Banda Aceh\r\n'),
(18, 'Universitas Serambi Mekkah\r\n'),
(19, 'Universitas Sumatera Utara, Medan\r\n'),
(20, 'Universitas Negeri Medan, Medan\r\n'),
(21, 'Politeknik Negeri Medan, Medan\r\n'),
(22, 'Politeknik Negeri Media Kreatif, Medan\r\n'),
(23, 'Institut Agama Islam Negeri Sumatera utara, Medan\r\n'),
(24, 'Poltekes Depkes Medan, Medan\r\n'),
(25, 'STAIN Padang Sidempuan, Padang Sidempuan\r\n'),
(26, 'UIN Sumatera Utara, Medan\r\n'),
(27, 'IAIN Padang Sidempuan, Tapanuli Selatan\r\n'),
(28, 'Akademi Teknik Keselamatan Penerbangan (ATKP) Medan\r\n'),
(29, 'Sekolah Tinggi Agama Kristen Protestan Negeri Tarutung\r\n'),
(30, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Medan\r\n'),
(31, 'Politeknik Negeri Medan\r\n'),
(32, 'kademi Tek. Kes. Penerbangan (ATKP), Medan\r\n'),
(33, 'Sekolah Tinggi Penyuluhan Pertanian Medan \r\n'),
(34, 'Universitas Andalas, Padang\r\n'),
(35, 'Universitas Negeri Padang, Padang\r\n'),
(36, 'Politeknik Negeri Padang, Padang\r\n'),
(37, 'Politeknik Pertanian, Payakumbuh\r\n'),
(38, 'STSI (Sekolah Tinggi Seni Indonesia Padang Panjang), Padang Panjang\r\n'),
(39, 'IAIN Imam Bonjol, Padang\r\n'),
(40, 'STAIN Batusangkar\r\n'),
(41, 'STAIN Bukittinggi\r\n'),
(42, 'ISI Padang Panjang\r\n'),
(43, 'IAIN Imam Bonjol, Padang\r\n'),
(44, 'STAIN Sjech M. Djamil Djambek , Bukittinggi\r\n'),
(45, 'Politeknik Negeri Sriwijaya\r\n'),
(46, 'Universitas Riau, Pekanbaru\r\n'),
(47, 'UIN Sultan Syarif Kasim (SUSKA), Pekanbaru\r\n'),
(48, 'Politeknik Negeri Bengkalis\r\n'),
(49, 'Universitas Maritim Raja Ali Haji\r\n'),
(50, 'Politeknik Negeri Batam\r\n'),
(51, 'UIN Sultan Syarif Kasim, Riau\r\n'),
(52, 'STAIN Bengkalis, Riau (Riau)\r\n'),
(53, 'Universitas Jambi, Jambi\r\n'),
(54, 'STAIN Kerinci\r\n'),
(55, 'IAIN Sultan Thaha Saifuddin\r\n'),
(56, 'Politeknik Kesehatan Jambi\r\n'),
(57, 'Universitas Bengkulu, Bengkulu\r\n'),
(58, 'IAIN Bengkulu\r\n'),
(59, 'STAIN CURUP\r\n'),
(60, 'Poltekkes Kemenkes Bengkulu\r\n'),
(61, 'STAIN Curup, Rejang Lebong\r\n'),
(62, 'Universitas Sriwijaya, Palembang\r\n'),
(63, 'Politeknik Negeri Sriwijaya, Palembang\r\n'),
(64, 'Poltekkes depkes Palembang, Palembang\r\n'),
(65, 'Akademi Komunitas Negeri Prabumulih, Prabumulih\r\n'),
(66, 'IAIN Raden Fatah\r\n'),
(67, 'Universitas Lampung, Bandar Lampung\r\n'),
(68, 'Politeknik Negeri Lampung, Bandar Lampung\r\n'),
(69, 'Poltekkes Kemenkes Tanjungkarang, Bandar Lampung\r\n'),
(70, 'STIM (Sekolah Tinggi Olahraga Metro), Kota Metro\r\n'),
(71, 'Institut Agama Islam Negeri Raden Intan, Bandar Lampung\r\n'),
(72, 'STAIN Jurai Siwo Metro\r\n'),
(73, 'IAIN Raden Intan, Bandar Lampung\r\n'),
(74, 'Universitas Bangka Belitung, Bangka Belitung\r\n'),
(75, 'Politeknik Manufaktur, Bangka Belitung\r\n'),
(76, 'Poltekkes Kemenkes Pangkal Pinang, Bangka Belitung\r\n'),
(77, 'STAIN Syekh Abdurrahman Siddik, Bangka Belitung\r\n'),
(78, 'Universitas Sultan Ageng Tirtayasa, Serang\r\n'),
(79, 'Perguruan Tinggi Buddhi, Karawaci\r\n'),
(80, 'IAIN Sultan Maulana Hasanuddin\r\n'),
(81, 'Universitas Pendidikan Indonesia, Kampus Daerah Serang\r\n'),
(82, 'Universitas Terbuka Pondok Cabe\r\n'),
(83, 'Sekolah Tinggi Agama Buddha Negeri Sriwijaya Tangerang\r\n'),
(84, 'Akademi Meteorologi dan Geofisika (AMG) Tangerang\r\n'),
(85, 'Institut Agama Islam Banten (IAIB)\r\n'),
(86, 'Universitas Indonesia\r\n'),
(87, 'Universitas Pertahanan Indonesia (UNHAN)\r\n'),
(88, 'Universitas Negeri Jakarta\r\n'),
(89, 'Universitas Terbuka\r\n'),
(90, 'Politeknik Negeri Jakarta\r\n'),
(91, 'Politeknik Negeri Media Kreatif, Jakarta\r\n'),
(92, 'UIN Syarif Hidayatullah Jakartaâ€Ž\r\n'),
(93, 'Sekolah Tinggi Ilmu Pelayaran Jakarta\r\n'),
(94, 'Sekolah Tinggi Manajemen Industri Indonesia\r\n'),
(95, 'Akademi Pimpinan Perusahaan (APP), Jakarta\r\n'),
(96, 'Institut Ilmu Pemerintahan, IIP, Jakarta\r\n'),
(97, 'Sekolah Tinggi Akuntansi Negara, STAN\r\n'),
(98, 'Sekolah Tinggi Hukum Militer, STHM\r\n'),
(99, 'Sekolah Tinggi Ilmu Administrasi, LAN Jakarta\r\n'),
(100, 'Sekolah Tinggi Ilmu Kepolisian (PTIK), Jakarta\r\n'),
(101, 'Sekolah Tinggi Ilmu Pelayaran (STIP), Jakarta\r\n'),
(102, 'Sekolah Tinggi Ilmu Statistik (STIS), Jakarta\r\n'),
(103, 'Sekolah Tinggi Manajemen Industri(STMI), Jakarta\r\n'),
(104, 'Sekolah Tinggi Penerbangan Indonesia (PI), Jakarta\r\n'),
(105, 'Sekolah Tinggi Perikanan (STP), Jakarta\r\n'),
(106, 'Politeknik Kesehatan Jakarta I   \r\n'),
(107, 'Politeknik Kesehatan Jakarta II\r\n'),
(108, 'Politeknik Negeri Jakarta\r\n'),
(109, 'Politeknik Manufaktur Negeri Bandung, Bandung\r\n'),
(110, 'Universitas Pendidikan Indonesia, Bandung\r\n'),
(111, 'Universitas Padjadjaran, Bandung\r\n'),
(112, 'Universitas Jenderal Achmad Yani, Bandung\r\n'),
(113, 'Institut Pertanian Bogor, Bogor\r\n'),
(114, 'Institut Teknologi Bandung, Bandung\r\n'),
(115, 'Politeknik Negeri Bandung, Bandung\r\n'),
(116, 'Politeknik Indramayu, Indramayu\r\n'),
(117, 'Universitas Siliwangi (UNSIL), Tasikmalaya\r\n'),
(118, 'niversitas Singaperbangsa (UNSIKA), Kampus Daerah Karawang\r\n'),
(119, 'Universitas Swadaya Gunung Jati (Unswagati) di Kota Cirebon\r\n'),
(120, 'Universitas Pendidikan Indonesia, Kampus Daerah Cibiru\r\n'),
(121, 'Universitas Pendidikan Indonesia, Kampus Daerah Tasikmalaya\r\n'),
(122, 'Universitas Pendidikan Indonesia, Kampus Daerah Sumedang\r\n'),
(123, 'Universitas Pendidikan Indonesia, Kampus Daerah Purwakarta\r\n'),
(124, 'Akademi Ilmu Pemasyarakatan (AKIP), Depok\r\n'),
(125, 'Akademi Imigrasi (AIM) Depok\r\n'),
(126, 'Akademi Kimia Analis (AKA) Bogor\r\n'),
(127, 'Sekolah Tinggi Ilmu Administrasi, Bandung\r\n'),
(128, 'Sekolah Tinggi Sandi Negara (STSN), Bogor\r\n'),
(129, 'Sekolah Tinggi Seni Indonesia (STSI), Bandung\r\n'),
(130, 'Sekolah Tinggi Transportasi Darat (STTD), Bekasi\r\n'),
(131, 'Sekolah Tinggi Kesejahteraan Sosial (STKS), Bandung\r\n'),
(132, 'Sekolah Tinggi Pemerintahan Dalam Negeri (STPDN), Sumedang\r\n'),
(133, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Bogor\r\n'),
(134, 'STAIN Cirebon\r\n'),
(135, 'Politeknik Kesehatan Bandung\r\n'),
(136, 'Politeknik Manufaktur Bandung\r\n'),
(137, 'Politeknik Negeri Bali, Badung\r\n'),
(138, 'Universitas Diponegoro, Semarang\r\n'),
(139, 'Universitas Negeri Semarang, Semarang\r\n'),
(140, 'Universitas Jenderal Soedirman, Purwokerto\r\n'),
(141, 'Universitas Negeri Surakarta Sebelas Maret, Surakarta\r\n'),
(142, 'Politeknik Negeri Semarang, Semarang \r\n'),
(143, 'Politeknik Maritim Negeri Indonesia, Semarang\r\n'),
(144, 'Institut Seni Indonesia Surakarta, Surakarta (ISI Solo, dahulu STSI)\r\n'),
(145, 'Universitas Tidar Magelang, Magelang\r\n'),
(146, 'UIN Walisongo, Semarang\r\n'),
(147, 'IAIN Surakarta, Surakarta\r\n'),
(148, 'STAIN Kudus, Kudus\r\n'),
(149, 'STAIN Pekalongan, Pekalongan\r\n'),
(150, 'IAIN Salatiga, Salatiga\r\n'),
(151, 'IAIN Purwokerto, Purwokerto\r\n'),
(152, 'Akademi Kepolisian (AKPOL),Semarang\r\n'),
(153, 'Akademi Militer (AKMIL) TNI AD, Magelang\r\n'),
(154, 'Akademi Minyak dan Gas Bumi (AKAMIGAS), Blora\r\n'),
(155, 'Akademi Sanitasi dan Kesehatan Lingkungan (ASKK), Purwokerto\r\n'),
(156, 'Sekolah Tinggi Seni Indonesia (STSI), Surakarta\r\n'),
(157, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Magelang\r\n'),
(158, 'Politeknik Ilmu Pelayaran Semarang\r\n'),
(159, 'Politeknik Kesehatan Semarang\r\n'),
(160, 'Politeknik Kesehatan Surakarta\r\n'),
(161, 'Universitas Gadjah Mada\r\n'),
(162, 'Universitas Negeri Yogyakarta\r\n'),
(163, 'Institut Seni Indonesia Yogyakarta\r\n'),
(164, 'Universita Terbuka  UPBJJ Yogyakarta\r\n'),
(165, 'Akademi Teknologi Kulit Yogyakarta (ATK)\r\n'),
(166, 'Universitas Pembangunan Nasional Veteran (UPN), Yogyakarta\r\n'),
(167, 'UIN Sunan Kalijaga\r\n'),
(168, 'Akademi Angkatan Udara (AAU), Yogyakarta\r\n'),
(169, 'Sekolah Tinggi Pertanahan Nasional (STPN), Yogyakarta\r\n'),
(170, 'Sekolah Tinggi Teknologi Nuklir (STTN), Yogyakarta\r\n'),
(171, 'Politeknik Kesehatan Yogyakarta\r\n'),
(172, 'Universitas Airlangga, Surabaya\r\n'),
(173, 'Universitas Negeri Surabaya, Surabaya\r\n'),
(174, 'Universitas Brawijaya, Malang\r\n'),
(175, 'Universitas Negeri Malang, Malang\r\n'),
(176, 'Universitas Jember, Jember\r\n'),
(177, 'Universitas Trunojoyo, Bangkalan\r\n'),
(178, 'Politeknik Elektronika Negeri Surabaya, Surabaya\r\n'),
(179, 'Politeknik Perkapalan Negeri Surabaya, Surabaya\r\n'),
(180, 'Politeknik Negeri Madura, Sampang\r\n'),
(181, 'Politeknik Negeri Malang, Malang\r\n'),
(182, 'Politeknik Negeri Madiun, Madiun\r\n'),
(183, 'Politeknik Negeri Jember, Jember\r\n'),
(184, 'Institut Teknologi Sepuluh Nopember, Surabaya\r\n'),
(185, 'Akademi Komunitas Negeri, Bojonegoro\r\n'),
(186, 'Akademi Komunitas Negeri, Pacitan\r\n'),
(187, 'Universitas Pembangunan Nasional Veteran (UPN), Surabaya\r\n'),
(188, 'Politeknik Negeri Banyuwangi, Banyuwangi\r\n'),
(189, 'Akademi Komunitas Negeri Lamongan, Lamongan\r\n'),
(190, 'Akademi Komunitas Negeri Sumenep. Sumenep\r\n'),
(191, 'Akademi Komunitas Negeri Bojonegoro, Bojonegoro\r\n'),
(192, 'Universitas Islam Negeri Maulana Malik Ibrahim, Malang\r\n'),
(193, 'STAIN Kediri\r\n'),
(194, 'STAIN Ponorogo\r\n'),
(195, 'UIN Sunan Ampel\r\n'),
(196, 'IAIN Tulungagung\r\n'),
(197, 'UIN Maulana Malik Ibrahim, Malang\r\n'),
(198, 'STAIN Pamekasan, Pamekasan\r\n'),
(199, 'Akademi Angkatan Laut (AAL), Surabaya\r\n'),
(200, 'Teknik Keselamatan Penerbangan (ATKP) Surabaya\r\n'),
(201, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Malang\r\n'),
(202, 'IAIN Jember, Jember\r\n'),
(203, 'Politeknik Elektronika Negeri Surabaya\r\n'),
(204, 'Politeknik Kesehatan Malang\r\n'),
(205, 'Politeknik Kesehatan Surabaya\r\n'),
(206, 'Politeknik Pertanian Negeri Jember\r\n'),
(207, 'Akademi TKP â€“ Surabaya \r\n'),
(208, 'Universitas Mataram, Mataram\r\n'),
(209, 'IAIN Mataram, Lombok\r\n'),
(210, 'Sekolah Tinggi Agama Hindu Negeri (STAHN) Gde Puja, Mataram\r\n'),
(211, 'Universitas Nusa Cendana, Kupang\r\n'),
(212, 'Politeknik Negeri Kupang, Kupang\r\n'),
(213, 'Politeknik Pertanian Negeri Kupang, Kupang\r\n'),
(214, 'Universitas Udayana, Denpasar\r\n'),
(215, 'Universitas Pendidikan Ganesha, Singaraja\r\n'),
(216, 'Politeknik Negeri Bali, Kuta-Badung\r\n'),
(217, 'Institut Seni Indonesia Denpasar, Denpasar\r\n'),
(218, 'Politeknik Negeri Tanah Lot\r\n'),
(219, 'Institut Hindu Dharma Negeri (IHDN) Denpasar\r\n'),
(220, 'Akademi Kebidanan Pemprov Bali singaraja\r\n'),
(221, 'Sekolah Tinggi Pariwisata Bali\r\n'),
(222, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Denpasar\r\n'),
(223, 'Politeknik Kesehatan Denpasar\r\n'),
(224, 'Universitas Tanjungpura, Pontianak\r\n'),
(225, 'Politeknik Negeri Pontianak, Pontianak\r\n'),
(226, 'Politeknik Kesehatan Kementerian Kesehatan, Pontianak\r\n'),
(227, 'Politeknik Terpikat Sambas\r\n'),
(228, 'Politeknik Tonggak Equator\r\n'),
(229, 'Politeknik Ketapang\r\n'),
(230, 'Politeknik Tunas Bangsa\r\n'),
(231, 'IAIN Pontianak sebelumnya STAIN Pontianak\r\n'),
(232, 'Universitas Palangka Raya, Palangka Raya\r\n'),
(233, 'IAIN Palangkaraya, Palangkaraya\r\n'),
(234, 'Sekolah Tinggi Agama Hindu Negeri Tampung Peyang, Palangka Raya\r\n'),
(235, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Palangkaraya\r\n'),
(236, 'Universitas Lambung Mangkurat, Banjarmasin\r\n'),
(237, 'Politeknik Negeri Banjarmasin, Banjarmasin\r\n'),
(238, 'IAIN ANTASARI, Banjarmasin\r\n'),
(239, 'Poltekkes Banjarmasin\r\n'),
(240, 'Ooliteknik Pertanian Negeri Samarinda\r\n'),
(241, 'Universitas Mulawarman, Samarinda\r\n'),
(242, 'Politeknik Negeri Samarinda, Samarinda\r\n'),
(243, 'Politeknik Pertanian Negeri Samarinda, Samarinda\r\n'),
(244, 'Universitas Borneo Tarakan, Tarakan\r\n'),
(245, 'Politeknik Balikpapan, Balikpapan\r\n'),
(246, 'IAIN Samarinda, Samarinda\r\n'),
(247, 'Universitas Borneo Tarakan\r\n'),
(248, 'Universitas Sam Ratulangi, Manado\r\n'),
(249, 'Universitas Negeri Manado, Manado\r\n'),
(250, 'Politeknik Negeri Manado, Manado\r\n'),
(251, 'Politeknik Negeri Nusa Utara, Tahuna\r\n'),
(252, 'IAIN Manado, Manado (Sulawesi Utara)\r\n'),
(253, 'Politeknik Kesehatan Manado\r\n'),
(254, 'Politeknik Negeri Manado\r\n'),
(255, 'Universitas Negeri Gorontalo, Gorontalo\r\n'),
(256, 'IAIN Sultan Amai, Gorontalo\r\n'),
(257, 'Universitas Tadulako, Palu\r\n'),
(258, 'Sekolah Tinggi Ilmu Ekonomi (YPP Mujahidin), Tolitoli\r\n'),
(259, 'IAIN Dato Karamau, Palu\r\n'),
(260, 'STAIN Datokarama, Palu\r\n'),
(261, 'Politeknik Kesehatan Kemenkes Makassar, Makassar\r\n'),
(262, 'Universitas Hasanuddin, Makassar\r\n'),
(263, 'Universitas Negeri Makassar\r\n'),
(264, 'Politeknik Pertanian Negeri Pangkajene Kepulauan, Pangkajene Kepulauan\r\n'),
(265, 'Politeknik Negeri Ujung pandang, Makassar\r\n'),
(266, 'Universitas Maiwa Enrekang\r\n'),
(267, 'Politeknik Negeri Media Kreatif, Makassar\r\n'),
(268, 'Universitas Islam Negeri Makassar\r\n'),
(269, 'UIN Alauddin, Makassar\r\n'),
(270, 'STAIN Watampone, Bone\r\n'),
(271, 'STAIN Parepare, Parepare\r\n'),
(272, 'IAIN Palopo, Palopo\r\n'),
(273, 'Akademi Teknik Keselamatan Penerbangan (ATKP) Makasar\r\n'),
(274, 'Sekolah Tinggi Ilmu Adm, Ujung Pandang\r\n'),
(275, 'Sekolah Tinggi Seni Indonesia, Padang Panjang\r\n'),
(276, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Toraja\r\n'),
(277, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Gowa\r\n'),
(278, 'Akademi Teknik Keselamatan Penerbangan Makasar\r\n'),
(279, 'Universitas Haluoleo, Kendari\r\n'),
(280, 'Sekolah Tinggi Pertanian (STIP) Muna Kampus Baru, Muna\r\n'),
(281, 'STAIN Kendari\r\n'),
(282, 'Universitas 19 November Kolaka\r\n'),
(283, 'Universitas Muhammadiyah Kendari\r\n'),
(284, 'Universitas Lakidende\r\n'),
(285, 'Universitas Dayanu Iksanudin\r\n'),
(286, 'Universitas Muhammadiyah Buton\r\n'),
(287, 'Universitas Sulawesi Tenggara\r\n'),
(288, 'IAIN Kendari, Palu\r\n'),
(289, 'Universitas Negeri Sulawesi Barat\r\n'),
(290, 'Universitas Pattimura, Ambon\r\n'),
(291, 'Universitas Darussalam, Ambon\r\n'),
(292, 'Politeknik Negeri Ambon, Ambon\r\n'),
(293, 'Politeknik Perikanan Negeri Tual, Tual\r\n'),
(294, 'STAKPN Ambon\r\n'),
(295, 'IAIN Ambon\r\n'),
(296, 'Sekolah Tinggi Agama Kristen Protestan Negeri Ambon\r\n'),
(297, 'STAIN Ambon\r\n'),
(298, 'Universitas Khairun, Ternate\r\n'),
(299, 'IAIN Ternate, Ternate\r\n'),
(300, 'Universitas Cendrawasih, Jayapura\r\n'),
(301, 'Universitas Musamus Merauke, Merauke\r\n'),
(302, 'STAIN Al-Fatah, Jayapura\r\n'),
(303, 'Sekolah Tinggi. Agama Kristen Negeri (STAKN) Jayapura\r\n'),
(304, 'Universitas Negeri Papua, Manokwari \r\n'),
(305, 'STAIN Sorong, Sorong\r\n'),
(306, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Manokwari');

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `id_kandidat` char(7) DEFAULT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nama_panggilan` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `whatsapp` varchar(100) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `alamat_ktp` varchar(100) DEFAULT NULL,
  `alamat_domisili` varchar(100) DEFAULT NULL,
  `status_tempattinggal` varchar(20) DEFAULT NULL,
  `status_pernikahan` varchar(20) NOT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `universitas` varchar(100) NOT NULL,
  `bidang_studi` varchar(100) NOT NULL,
  `gol_darah` varchar(10) DEFAULT NULL,
  `berat_badan` varchar(10) DEFAULT NULL,
  `tinggi_badan` varchar(10) DEFAULT NULL,
  `anggota_gereja` varchar(20) DEFAULT NULL,
  `nama_ayah` varchar(20) DEFAULT NULL,
  `nama_ibu` varchar(20) DEFAULT NULL,
  `alamat_ortu` varchar(100) DEFAULT NULL,
  `jumlah_saudara_kandung` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id_kandidat`, `nama_lengkap`, `nama_panggilan`, `email`, `password`, `whatsapp`, `agama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat_ktp`, `alamat_domisili`, `status_tempattinggal`, `status_pernikahan`, `pendidikan_terakhir`, `universitas`, `bidang_studi`, `gol_darah`, `berat_badan`, `tinggi_badan`, `anggota_gereja`, `nama_ayah`, `nama_ibu`, `alamat_ortu`, `jumlah_saudara_kandung`) VALUES
('', 'Aditya Dwi Aprianto', '', 'adityadwiaprianto219@gmail.com', '$2y$10$mS2nRI7HoDfXopcZFRstnOB0Mj4gMykjp/dJ5Uxv1QgWxB3I7US6e', '0878230393848', 'Kristen Protestan', '', '2001-04-02', 'Laki - Laki', '', '', '', 'Belum Menikah', '', 'Universitas Dian Nusantara', 'Teknik Informatika', '', '', '', '', '', '', '', ''),
('', 'Aditya Dwi Aprianto', '', 'intan.waruwu@mahasiswa.undira.ac.id', 'admin', '080128093213', 'Islam', '', '2022-11-01', 'Laki - Laki', '', '', '', 'Belum Menikah', '', 'Universitas Dian Nusantara', 'Teknik Informatika', '', '', '', '', '', '', '', ''),
('', 'Redy Septyanto', '', 'redyseptyanto@gmail.com', '$2y$10$ca665DPa0DzvRj2sZiiLMu2lvNPzAVcTM9iKOt8kRgY40XGnMySku', '087888222111', 'Kristen Khatolik', '', '2011-11-11', 'Laki - Laki', '', '', '', 'Belum Menikah', '', 'Universitas Dian Nusantara', 'Teknik Informatika', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id_lamaran` char(7) NOT NULL,
  `id_lampiran` char(7) NOT NULL,
  `id_kandidat` char(7) NOT NULL,
  `id_lowongan` char(7) NOT NULL,
  `tanggal_apply` date NOT NULL,
  `id_status` char(7) NOT NULL,
  `id_tes` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lampiran`
--

CREATE TABLE `lampiran` (
  `id_lampiran` char(7) NOT NULL,
  `id_kandidat` char(7) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `file_ktp` varchar(100) NOT NULL,
  `no_npwp` varchar(20) DEFAULT NULL,
  `file_npwp` varchar(100) DEFAULT NULL,
  `no_kk` varchar(16) NOT NULL,
  `file_kk` varchar(100) NOT NULL,
  `akta_lahir` varchar(100) NOT NULL,
  `surat_baptis` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL,
  `ijazah` varchar(100) NOT NULL,
  `rek_bca` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` char(11) NOT NULL,
  `id_rekrutmen` char(7) DEFAULT NULL,
  `tanggal_post` date DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `divisi` varchar(20) DEFAULT NULL,
  `bagian` varchar(50) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `deskripsi_syarat` text DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `tipe_pekerjaan` varchar(100) DEFAULT NULL,
  `syarat_usia` varchar(20) DEFAULT NULL,
  `syarat_agama` varchar(20) DEFAULT NULL,
  `min_ipk` varchar(20) DEFAULT NULL,
  `status_lowongan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `id_rekrutmen`, `tanggal_post`, `judul`, `jabatan`, `divisi`, `bagian`, `deskripsi`, `deskripsi_syarat`, `lokasi`, `tipe_pekerjaan`, `syarat_usia`, `syarat_agama`, `min_ipk`, `status_lowongan`) VALUES
('19', '', '2022-10-13', 'Dalang', 'Kepala Seksi', 'PJDL', 'PSA', '', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('2', '', '2022-10-11', 'Manager Content Video Learning', 'Kepala Seksi', 'PJDL', 'Content Video Learning', 'Membuat content video', 'Cantik', 'Sekretariat Blok E', 'Kontrak', '', 'Kristen Protestan', '3', 'Tidak Aktif'),
('20', '', '2022-10-11', 'Dadnamdn', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('21', '', '2022-10-11', 'adssadsa', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('23', '', '2022-10-11', 'Pukuk', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('24', '', '2022-10-11', 'Barista SIM', 'Kepala Barista', 'SIM', 'PSA', 'ini deskripsi singkat', 'cantik', 'Sekretariat Blok E', 'Kontrak', '', 'Kristen Protestan', '3', 'Tidak Aktif'),
('25', '', '2022-10-12', 'Manager Content Video Learning', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('27', '', '2022-10-12', 'Staff Keuangan', '', '', '', 'sadsadasdksabkdjbaskjbdksjabdjksabjkdbasjkbdjksabdjksabjkdbasjkdbasjbdjkasbdjabsdjkbsajkdbjsakbdsajkbdkjsabdjkbsadjkbasjkdbasjbdjksabdkjbasdkjsbadsabdjksbdbsjdbsadbkjsa', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('28', '', '2022-10-12', 'Programmer', '', '', '', 'Take responsibility for the day to day operation of the NOC team and providing overall guidance and supervision.\r\nMaintain and monitor required staffing levels and schedule to ensure that the team can meet the demand and respond in a timely manner to network.\r\nResponsible for escalated network operation, \r\nFollows operating procedures and utilizes established support tools for analysis and reporting requirements,\r\nTroubleshoot all network problem, that can disrupt customer connection to the internet,\r\nIndependently utilize all variable resources (knowledge base, internal resources, online resources) to ensure timely resolution of network issues,\r\nAnalyze customer problem/needs, provide suggestion related with the customer network if needed to solve the problems or meet their requirements,\r\nTake up activities, use lab infrastructure for self study and environment and present to other team member\r\nDevelop the existing network to meet the future needs,\r\n', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('29', '', '2022-10-12', 'Staff Keuangan', '', '', '', 'Undergraduate or graduate degree in computer science, engineering network administration, or a related study.\r\nMinimum has two years of working experience in related field\r\nSignificant proven experience in comparable role within an ISP organisation.\r\nHandling core/operation network for ISP.\r\nAble to analyse problems, issues & needs and provide robust but adaptable solutions which meet current and future requirements.\r\nPreferably earning networking certifications.\r\nAdvance understanding and experience in OSPF.\r\nAdvance understanding and experience in BGP (eBGP and iBGP).\r\nAdvance understanding and experience in Spanning Tree Protocol.\r\nExperience and able to deploy MPLS, Shell, Phyton is a plus.\r\nAble to read network analyzer data.\r\nAble to design, plan and deploy medium to large scale network.\r\nProcess good problem solving and tracing skill - able to identify problem and trace them down to the source.\r\nPractical scripting languange experience will be advantages (Shell, Phyton).\r\nMust be willing to work off hours or weekend for maintenance purposes as well\r\nWilling to work in Surabaya ', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('30', '', '2022-10-12', 'Danang', '', '', '', 'Undergraduate or graduate degree in computer science, engineering network administration, or a related study.\r\nMinimum has two years of working experience in related field\r\nSignificant proven experience in comparable role within an ISP organisation.\r\nHandling core/operation network for ISP.\r\nAble to analyse problems, issues & needs and provide robust but adaptable solutions which meet current and future requirements.\r\nPreferably earning networking certifications.\r\nAdvance understanding and experience in OSPF.\r\nAdvance understanding and experience in BGP (eBGP and iBGP).\r\nAdvance understanding and experience in Spanning Tree Protocol.\r\nExperience and able to deploy MPLS, Shell, Phyton is a plus.\r\nAble to read network analyzer data.\r\nAble to design, plan and deploy medium to large scale network.\r\nProcess good problem solving and tracing skill - able to identify problem and trace them down to the source.\r\nPractical scripting languange experience will be advantages (Shell, Phyton).\r\nMust be willing to work off hours or weekend for maintenance purposes as well\r\nWilling to work in Surabaya ', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '', 'Aktif'),
('31', '', '2022-10-12', 'Programmer', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', '', 'Pilih Agama', '3', 'Aktif'),
('32', '', '2022-10-13', '', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', NULL, 'Pilih Agama', '3', 'Aktif'),
('J17', '', '2022-10-11', 'Programmer', 'Staff', 'SIM', 'PSA', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has', '- Cantik\r\n- Putih\r\n-Tinggi', 'Sekretariat Blok E', 'Tetap', '30', 'Kristen Khatolik', '3.5', 'Aktif'),
('J2210131', '', '2022-10-13', '', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', NULL, 'Pilih Agama', '3', 'Aktif'),
('J22101312', '', '2022-10-13', '', '', '', '', '', '', 'Pilih Lokasi', 'Kontrak', NULL, 'Pilih Agama', '3', 'Aktif'),
('J22101313', '', '2022-10-13', '', '', '', '', '', '- Cantik\r\n- Putih\r\n- Tinggi', 'Pilih Lokasi', 'Kontrak', NULL, 'Pilih Agama', '3', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `rekrutmen`
--

CREATE TABLE `rekrutmen` (
  `id_rekrutmen` char(7) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_lamaran` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `status_lamaran`
--

CREATE TABLE `status_lamaran` (
  `id_status` char(7) NOT NULL,
  `status_lamaran` varchar(20) NOT NULL,
  `deskripsi_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `id_tes` char(7) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `nama_tes` varchar(100) NOT NULL,
  `deskripsi_tes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_universitas`
--
ALTER TABLE `data_universitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_universitas`
--
ALTER TABLE `data_universitas`
  MODIFY `id` int(144) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;
--
-- Database: `rekrutmen`
--
CREATE DATABASE IF NOT EXISTS `rekrutmen` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rekrutmen`;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `id_kandidat` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nama_panggilan` varchar(20) DEFAULT NULL,
  `nohp` bigint(20) NOT NULL,
  `agama` set('Kristen Protestan','Kristen Katolik','Islam','Hindu','Buddha','Konghucu') NOT NULL DEFAULT '',
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `usia` int(2) DEFAULT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `status_pernikahan` varchar(20) DEFAULT NULL,
  `pendidikan_terakhir` varchar(20) NOT NULL,
  `universitas` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `ex_kry_penabur` varchar(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `alamat_ktp` varchar(255) DEFAULT NULL,
  `alamat_domisili` varchar(255) DEFAULT NULL,
  `status_tempattinggal` varchar(20) DEFAULT NULL,
  `anggota_gereja` varchar(20) DEFAULT NULL,
  `nik_penabur` int(11) DEFAULT NULL,
  `administrasi_ok` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id_kandidat`, `id_role`, `nama_lengkap`, `nama_panggilan`, `nohp`, `agama`, `tempat_lahir`, `tanggal_lahir`, `usia`, `jenis_kelamin`, `status_pernikahan`, `pendidikan_terakhir`, `universitas`, `jurusan`, `ex_kry_penabur`, `email`, `password`, `alamat_ktp`, `alamat_domisili`, `status_tempattinggal`, `anggota_gereja`, `nik_penabur`, `administrasi_ok`) VALUES
(1222010, 3, 'Redy Septyanto', NULL, 81155565758, 'Kristen Protestan', NULL, '1994-09-11', 28, 'L', NULL, 'S1', 'Universitas Mercu Buana', 'Sistem Informasi (Manajemen Informatika)', 'Tidak', 'redyseptyanto@gmail.com', '$2y$10$zbHyWylRW5LszQnlrd0Ho.TwA8tZA/DajOldBDGmparNiMq4M65ka', NULL, NULL, NULL, NULL, NULL, NULL),
(1227963, 3, 'Niko Mireta', NULL, 87223910999, 'Kristen Katolik', NULL, '1996-07-03', 26, 'L', NULL, 'S1', 'Universitas Bina Nusantara', 'Teknik Informatika', 'Tidak', 'niko@gmail.com', '$2y$10$b5rSHax4i/pE4v3sk1j5qOO2OPPusUzQqMiHMPEo.a0kypNdDz6Ha', NULL, NULL, NULL, NULL, NULL, NULL),
(1228145, 3, 'Stefanus Appe', NULL, 81222333444, 'Kristen Katolik', NULL, '1996-04-15', 26, 'L', NULL, 'S1', 'Universitas Mercu Buana', 'Desain Produk', 'Tidak', 'stefanus@gmail.com', '$2y$10$P88wZrKfg5tRfJmwun8ki.PpAtrSrrP3fJWqSdbP91a/A8n0LQ1IO', NULL, NULL, NULL, NULL, NULL, NULL),
(1228824, 3, 'Aditya Dwi Aprianto', NULL, 87823039848, 'Kristen Protestan', NULL, '2001-04-02', 21, 'L', NULL, 'S1', 'Universitas Dian Nusantara', 'Teknik Informatika', 'Tidak', 'aditya@gmail.com', '$2y$10$lWBr9gx8Mycnq9x5r9brtukQccdPa1B8mkaenSCk2wCshtjM.6iP2', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_anak`
--

CREATE TABLE `kandidat_anak` (
  `id_anak` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `tanggal_nikah` date DEFAULT NULL,
  `anak_nama` varchar(100) DEFAULT NULL,
  `anak_tempat_lahir` varchar(50) DEFAULT NULL,
  `anak_tgl_lahir` date DEFAULT NULL,
  `anak_pendidikan` varchar(20) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_keluarga`
--

CREATE TABLE `kandidat_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `keluarga_nama` varchar(100) DEFAULT NULL,
  `keluarga_hubungan` varchar(50) DEFAULT NULL,
  `keluarga_tgl_lahir` date DEFAULT NULL,
  `keluarga_wa` bigint(20) DEFAULT NULL,
  `keluarga_pekerjaan` varchar(50) DEFAULT NULL,
  `keluarga_alamat` varchar(255) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_kesehatan`
--

CREATE TABLE `kandidat_kesehatan` (
  `id_kesehatan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `gol_darah` varchar(10) DEFAULT NULL,
  `berat_badan` varchar(10) DEFAULT NULL,
  `tinggi_badan` varchar(10) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_lampiran`
--

CREATE TABLE `kandidat_lampiran` (
  `id_lampiran` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `pas_photo` varchar(100) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `file_ktp` varchar(100) DEFAULT NULL,
  `no_npwp` varchar(20) DEFAULT NULL,
  `file_npwp` varchar(100) DEFAULT NULL,
  `no_kk` varchar(16) DEFAULT NULL,
  `file_kk` varchar(100) DEFAULT NULL,
  `akta_lahir` varchar(100) DEFAULT NULL,
  `surat_baptis` varchar(100) DEFAULT NULL,
  `cv` varchar(100) DEFAULT NULL,
  `rek_bca` varchar(100) DEFAULT NULL,
  `kandidatid_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_organisasi`
--

CREATE TABLE `kandidat_organisasi` (
  `id_organisasi` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `nama_organisasi` varchar(100) DEFAULT NULL,
  `tahun_mulai` date DEFAULT NULL,
  `tahun_akhir` date DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pasangan`
--

CREATE TABLE `kandidat_pasangan` (
  `id_pasangan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `tanggal_nikah` date DEFAULT NULL,
  `pasangan_nama` varchar(100) DEFAULT NULL,
  `pasangan_tempat_lahir` varchar(50) DEFAULT NULL,
  `pasangan_tgl_lahir` date DEFAULT NULL,
  `pasangan_wa` bigint(20) DEFAULT NULL,
  `pasangan_agama` varchar(20) DEFAULT NULL,
  `pasangan_negara` varchar(20) DEFAULT NULL,
  `pasangan_pekerjaan` varchar(50) DEFAULT NULL,
  `jumlah_anak` int(1) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pendidikan`
--

CREATE TABLE `kandidat_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `jenjang` varchar(20) DEFAULT NULL,
  `nama_institusi` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `ipk` int(11) DEFAULT NULL,
  `ijazah` varchar(100) DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_lulus` date DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pengalaman`
--

CREATE TABLE `kandidat_pengalaman` (
  `id_pengalaman` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `nama_pengalaman` varchar(100) DEFAULT NULL,
  `tahun_mulai` date DEFAULT NULL,
  `tahun_akhir` date DEFAULT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `alasan_berhenti` varchar(255) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id_lamaran` int(11) NOT NULL,
  `id_lowongan` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `tanggal_apply` timestamp NOT NULL DEFAULT current_timestamp(),
  `catatan` text DEFAULT NULL,
  `kandidatid_role` int(11) DEFAULT NULL,
  `status_rekrutmen` int(1) DEFAULT NULL,
  `status_atasan` int(1) DEFAULT NULL,
  `status_assessment` int(1) DEFAULT NULL,
  `status_poliklinik` int(1) DEFAULT NULL,
  `status_kurikulum` int(1) DEFAULT NULL,
  `status_picmateri` int(1) DEFAULT NULL,
  `note_rekrutmen` text DEFAULT NULL,
  `note_atasan` text DEFAULT NULL,
  `note_assessment` text DEFAULT NULL,
  `note_poliklinik` text DEFAULT NULL,
  `note_kurikulum` text DEFAULT NULL,
  `note_picmateri` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lamaran`
--

INSERT INTO `lamaran` (`id_lamaran`, `id_lowongan`, `id_kandidat`, `tanggal_apply`, `catatan`, `kandidatid_role`, `status_rekrutmen`, `status_atasan`, `status_assessment`, `status_poliklinik`, `status_kurikulum`, `status_picmateri`, `note_rekrutmen`, `note_atasan`, `note_assessment`, `note_poliklinik`, `note_kurikulum`, `note_picmateri`) VALUES
(3221038, 2225517, 1222010, '2022-11-01 08:08:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3221287, 2229254, 1228145, '2022-10-31 14:58:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3221881, 2228139, 1228145, '2022-10-31 14:57:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3222771, 2224149, 1228824, '2022-11-02 00:37:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3222951, 2229254, 1228145, '2022-10-31 15:03:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3223238, 2229254, 1228145, '2022-10-31 15:24:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3223797, 2228139, 1228145, '2022-10-31 14:54:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3223848, 2229254, 1228145, '2022-10-31 15:02:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3226590, 2225431, 1227963, '2022-11-01 14:40:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3226653, 2227141, 1228824, '2022-11-01 14:16:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3227171, 2228139, 1228145, '2022-10-31 15:27:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3227835, 2229254, 1228145, '2022-10-31 14:32:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3228042, 2229254, 1228145, '2022-10-31 15:02:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3228219, 2228139, 1228824, '2022-10-30 17:00:00', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3228567, 2221933, 1228824, '2022-11-05 09:19:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229022, 2228139, 1228824, '2022-10-30 17:00:00', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229269, 2229254, 1228145, '2022-10-31 15:02:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229325, 2229254, 1228145, '2022-10-31 15:02:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229350, 2229254, 1228145, '2022-10-31 15:02:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229505, 2228139, 1228145, '2022-10-31 14:58:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3229837, 2229254, 1228145, '2022-10-31 14:56:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `id_posisi` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `penempatan` varchar(50) DEFAULT NULL,
  `tanggal_post` timestamp NOT NULL DEFAULT current_timestamp(),
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `status_lowongan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `id_posisi`, `id_jurusan`, `penempatan`, `tanggal_post`, `judul`, `deskripsi`, `status_lowongan`) VALUES
(2223062, 22, 1, '', '2022-11-02 04:31:43', '', '', 'Aktif'),
(2223252, 16, 1, 'SMAK 1 PENABUR', '2022-11-01 09:00:24', 'Staff Socmed', 'asdadasd', 'Aktif'),
(2223334, 15, 11, 'SMAK 1 PENABUR', '2022-11-01 14:16:04', 'Staff Senior Programmer', 'asdsad', 'Aktif'),
(2223660, 22, 1, '', '2022-11-02 04:32:43', '', '', 'Aktif'),
(2223665, 8, 16, 'SMAK PENABUR KOTA WISATA', '2022-11-01 14:15:40', 'Staff SDM', 'Rekrut', 'Aktif'),
(2224149, 1, 1, 'SMAK 1 PENABUR', '2022-11-01 14:16:08', 'Staff Programmer', '', 'Aktif'),
(2224251, 1, 2, '', '2022-11-01 17:32:54', 'Staff Keuangan', 'sadasdsad', 'Aktif'),
(2225431, 1, 1, 'SMAK 1 PENABUR', '2022-11-01 14:16:14', 'Staff Keuangan', '', 'Aktif'),
(2225517, 22, 43, 'SMAK 1 PENABUR', '2022-11-01 07:57:24', 'Staf Content Manager', '1. Min S1 Teknik Informatika\r\n2. Min IPK 3.00\r\n3. Menguasai penggunaan CMS\r\n4. Menguasai Bahasa Pemrograman (Php, Phyton)\r\n5. Diutamakan Pengalaman Min 3 th linear\r\n6. Terbuka untuk Freshgraduate\r\n7. Mampu Berbahasa Inggris', 'Aktif'),
(2227007, 22, 216, '', '2022-11-02 03:52:54', 'Staff Programmer', 'asdasdas', 'Aktif'),
(2227015, 22, 1, 'SDK 10 PENABUR', '2022-11-02 04:42:45', 'Staff Programmer', 'asdasdsa', 'Aktif'),
(2227141, 10, 12, 'SMAK PENABUR HARAPAN INDAH', '2022-11-01 14:14:51', 'Staff Marketing', 'Pasar\r\n', 'Aktif'),
(2228139, 3, 4, 'SMAK 1 PENABUR', '2022-10-29 22:11:39', 'Staff Programmer', 'Coding', 'Aktif'),
(2229254, 1, 1, 'SMAK 1 PENABUR', '2022-10-29 21:30:21', 'Staff Keuangan', 'asdsad', 'Aktif'),
(2229448, 22, 41, '', '2022-11-02 01:00:57', 'Staf Data Analis', '1\r\n2\r\n3\r\n4', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `master_jenjang`
--

CREATE TABLE `master_jenjang` (
  `id_jenjang` int(11) NOT NULL COMMENT 'autoincrement',
  `kode_jenjang` char(11) DEFAULT NULL,
  `nama_jenjang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jenjang`
--

INSERT INTO `master_jenjang` (`id_jenjang`, `kode_jenjang`, `nama_jenjang`) VALUES
(1, NULL, 'Sektretariat'),
(2, NULL, 'Jenjang TK'),
(3, NULL, 'Jenjang SD'),
(4, NULL, 'Jenjang SMP'),
(5, NULL, 'Jenjang SLTA'),
(6, NULL, 'Jenjang TK & SD Inter'),
(7, NULL, 'Jenjang SMP Inter'),
(8, NULL, 'Jenjang SMA Inter'),
(9, NULL, 'Tirtamarta');

-- --------------------------------------------------------

--
-- Table structure for table `master_jurusan`
--

CREATE TABLE `master_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL,
  `fakultas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_jurusan`
--

INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `fakultas`) VALUES
(1, 'Pendidikan Guru Sekolah Dasar (PGSD)', 'Fakultas Pendidikan'),
(2, 'Manajemen Pendidikan', 'Fakultas Pendidikan'),
(3, 'Pendidikan Bahasa Arab', 'Fakultas Pendidikan'),
(4, 'Pendidikan Bahasa Inggris', 'Fakultas Pendidikan'),
(5, 'Pendidikan Kepelatihan Olahraga', 'Fakultas Pendidikan'),
(6, 'Pendidikan Jasmani Kesehatan dan Rekreasi', 'Fakultas Pendidikan'),
(7, 'Pendidikan Ilmu Pengetahuan Alam', 'Fakultas Pendidikan'),
(8, 'Kurikulum dan Teknologi Pendidikan', 'Fakultas Pendidikan'),
(9, 'Pendidikan Luar Sekolah', 'Fakultas Pendidikan'),
(10, 'Pendidikan Luar Biasa (PLB)', 'Fakultas Pendidikan'),
(11, 'Teologi', 'Fakultas Pendidikan'),
(12, 'Pendidikan Kependudukan', 'Fakultas Pendidikan'),
(13, 'Manajemen Pendidikan Islam', 'Fakultas Pendidikan'),
(14, 'Pendidikan Anak Usia Dini (PAUD)', 'Fakultas Pendidikan'),
(15, 'Administrasi Pendidikan', 'Fakultas Pendidikan'),
(16, 'Pendidikan Bimbingan Konseling', 'Fakultas Pendidikan'),
(17, 'Ilmu Perpustakaan', 'Fakultas Pendidikan'),
(18, 'Pendidikan Geografi', 'Fakultas Pendidikan'),
(19, 'Tafsir Hadits', 'Fakultas Pendidikan'),
(20, 'Pendidikan Pancasila dan Kewarganegaraan', 'Fakultas Pendidikan'),
(21, 'Pendidikan Agama Islam', 'Fakultas Pendidikan'),
(22, 'Pendidikan Sejarah', 'Fakultas Pendidikan'),
(23, 'Pendidikan Matematika', 'Fakultas Pendidikan'),
(24, 'Pendidikan Bahasa dan Sastra Indonesia', 'Fakultas Pendidikan'),
(25, 'Ekonomi Internasional', 'Fakultas Ekonomi dan Bisnis'),
(26, 'Ekonomi Publik', 'Fakultas Ekonomi dan Bisnis'),
(27, 'Ekonomi Regional', 'Fakultas Ekonomi dan Bisnis'),
(28, 'Ekonomi Moneter', 'Fakultas Ekonomi dan Bisnis'),
(29, 'Ekonomi Pembangunan', 'Fakultas Ekonomi dan Bisnis'),
(30, 'Ekonomi Industri', 'Fakultas Ekonomi dan Bisnis'),
(31, 'Ekonomi Sumber Daya Alam dan Lingkungan', 'Fakultas Ekonomi dan Bisnis'),
(32, 'Ekonomi Sumber Daya Manusia', 'Fakultas Ekonomi dan Bisnis'),
(33, 'Manajemen Pemasaran', 'Fakultas Ekonomi dan Bisnis'),
(34, 'Manajemen Keuangan', 'Fakultas Ekonomi dan Bisnis'),
(35, 'Manajemen Sumber Daya Manusia', 'Fakultas Ekonomi dan Bisnis'),
(36, 'Manajemen Operasional', 'Fakultas Ekonomi dan Bisnis'),
(37, 'Fakultas Akuntansi', 'Fakultas Ekonomi dan Bisnis'),
(38, 'Akuntansi Keuangan', 'Fakultas Ekonomi dan Bisnis'),
(39, 'Akuntansi Perpajakan', 'Fakultas Ekonomi dan Bisnis'),
(40, 'Audit', 'Fakultas Ekonomi dan Bisnis'),
(41, 'Sistem Informasi', 'Fakultas Ekonomi dan Bisnis'),
(42, 'Manajemen Akuntansi', 'Fakultas Ekonomi dan Bisnis'),
(43, 'Teknik Informatika', 'Fakultas Komputer dan Teknologi'),
(44, 'Mobile Application & Technology', 'Fakultas Komputer dan Teknologi'),
(45, 'Accounting Information', 'Fakultas Komputer dan Teknologi'),
(46, 'Audio Engineering', 'Fakultas Komputer dan Teknologi'),
(47, 'Ilmu Komputer', 'Fakultas Komputer dan Teknologi'),
(48, 'Sistem Komputer (Teknik Komputer)', 'Fakultas Komputer dan Teknologi'),
(49, 'Sistem Informasi (Manajemen Informatika)', 'Fakultas Komputer dan Teknologi'),
(50, 'Sistem Informasi Bisnis', 'Fakultas Komputer dan Teknologi'),
(51, 'Software Engineering', 'Fakultas Komputer dan Teknologi'),
(52, 'Sistem dan Teknologi Informasi', 'Fakultas Komputer dan Teknologi'),
(53, 'Teknologi Game', 'Fakultas Komputer dan Teknologi'),
(54, 'Ilmu Komputasi', 'Fakultas Komputer dan Teknologi'),
(55, 'Cyber Security', 'Fakultas Komputer dan Teknologi'),
(56, 'Bioinformatika', 'Fakultas Komputer dan Teknologi'),
(57, 'Computerized Accounting', 'Fakultas Komputer dan Teknologi'),
(58, 'Information Systems Audit', 'Fakultas Komputer dan Teknologi'),
(59, 'Human Computer Interaction', 'Fakultas Komputer dan Teknologi'),
(60, 'Desain Interior', 'Fakultas Seni'),
(61, 'Desain Produk', 'Fakultas Seni'),
(62, 'Animasi', 'Fakultas Seni'),
(63, 'DKV New Media', 'Fakultas Seni'),
(64, 'DKV Creative Advertising', 'Fakultas Seni'),
(65, 'Furniture Design', 'Fakultas Seni'),
(66, 'Tata Boga', 'Fakultas Seni'),
(67, 'Desain Grafis', 'Fakultas Seni'),
(68, 'Ilmu Politik', 'Fakultas Sosial dan Humaniora'),
(69, 'Filsafat', 'Fakultas Sosial dan Humaniora'),
(70, 'Kriminologi', 'Fakultas Sosial dan Humaniora'),
(71, 'Psikologi', 'Fakultas Sosial dan Humaniora'),
(72, 'Ilmu Hukum', 'Fakultas Sosial dan Humaniora'),
(73, 'Sosiologi', 'Fakultas Sosial dan Humaniora'),
(74, 'Jurnalistik', 'Fakultas Sosial dan Humaniora'),
(75, 'Antropologi', 'Fakultas Sosial dan Humaniora'),
(76, 'Hubungan Internasional', 'Fakultas Sosial dan Humaniora'),
(77, 'Ilmu Kesejahteraan Sosial', 'Fakultas Sosial dan Humaniora'),
(78, 'Ilmu Pemerintahan', 'Fakultas Sosial dan Humaniora'),
(79, 'Administrasi Publik', 'Fakultas Sosial dan Humaniora'),
(80, 'Administrasi Bisnis', 'Fakultas Sosial dan Humaniora'),
(81, 'Ilmu Komunikasi', 'Fakultas Sosial dan Humaniora'),
(82, 'Hubungan Masyarakat', 'Fakultas Sosial dan Humaniora'),
(83, 'Marketing Communication', 'Fakultas Sosial dan Humaniora'),
(84, 'Penyiaran', 'Fakultas Sosial dan Humaniora'),
(85, 'Periklanan', 'Fakultas Sosial dan Humaniora'),
(86, 'Peradilan Agama', 'Fakultas Sosial dan Humaniora'),
(87, 'Politik Islam', 'Fakultas Sosial dan Humaniora'),
(88, 'Pembangunan Sosial dan Kesejahteraan', 'Fakultas Sosial dan Humaniora'),
(89, 'Business Law', 'Fakultas Sosial dan Humaniora'),
(90, 'Manajemen Komunikasi', 'Fakultas Sosial dan Humaniora'),
(91, 'Branding', 'Fakultas Sosial dan Humaniora'),
(92, 'Kearsipan', 'Fakultas Sosial dan Humaniora'),
(93, 'Sains Komunikasi dan Pengembangan Masyarakat', 'Fakultas Sosial dan Humaniora'),
(94, 'Ilmu Keluarga dan Konsumen', 'Fakultas Sosial dan Humaniora'),
(95, 'Manajemen Produksi Media', 'Fakultas Sosial dan Humaniora'),
(96, 'Kedokteran', 'Fakultas Kesehatan'),
(97, 'Kedokteran Gigi', 'Fakultas Kesehatan'),
(98, 'Kedokteran Hewan', 'Fakultas Kesehatan'),
(99, 'Kesehatan Masyarakat', 'Fakultas Kesehatan'),
(100, 'Kesehatan Lingkungan', 'Fakultas Kesehatan'),
(101, 'Ilmu Gizi', 'Fakultas Kesehatan'),
(102, 'Keselamatan dan Kesehatan Kerja', 'Fakultas Kesehatan'),
(103, 'Ilmu Keperawatan', 'Fakultas Kesehatan'),
(104, 'Farmasi', 'Fakultas Kesehatan'),
(105, 'Nutrisi dan Teknologi Pangan', 'Fakultas Kesehatan'),
(106, 'Kebidanan', 'Fakultas Kesehatan'),
(107, 'Fisioterapi', 'Fakultas Kesehatan'),
(108, 'Ilmu Keolahragaan', 'Fakultas Kesehatan'),
(109, 'Teknik Rasiodiagnostik dan Radioterapi', 'Fakultas Kesehatan'),
(110, 'Manajemen Pelayanan Rumah Sakit', 'Fakultas Kesehatan'),
(111, 'Matematika', 'Fakultas Matematika dan IPA (MIPA)'),
(112, 'Kimia', 'Fakultas Matematika dan IPA (MIPA)'),
(113, 'Fisika', 'Fakultas Matematika dan IPA (MIPA)'),
(114, 'Biologi', 'Fakultas Matematika dan IPA (MIPA)'),
(115, 'Statistika', 'Fakultas Matematika dan IPA (MIPA)'),
(116, 'Astronomi', 'Fakultas Matematika dan IPA (MIPA)'),
(117, 'Bioteknologi', 'Fakultas Matematika dan IPA (MIPA)'),
(118, 'Geofisika', 'Fakultas Matematika dan IPA (MIPA)'),
(119, 'Meteorologi', 'Fakultas Matematika dan IPA (MIPA)'),
(120, 'Geografi', 'Fakultas Matematika dan IPA (MIPA)'),
(121, 'Biokimia', 'Fakultas Matematika dan IPA (MIPA)'),
(122, 'Metrologi', 'Fakultas Matematika dan IPA (MIPA)'),
(123, 'Aktuaria', 'Fakultas Matematika dan IPA (MIPA)'),
(124, 'Statistika Terapan', 'Fakultas Matematika dan IPA (MIPA)'),
(125, 'Mikrobiologi', 'Fakultas Matematika dan IPA (MIPA)'),
(126, 'Bioentrepeneurship', 'Fakultas Matematika dan IPA (MIPA)'),
(127, 'Ilmu Pangan', 'Fakultas Matematika dan IPA (MIPA)'),
(128, 'Matematika Bisnis', 'Fakultas Matematika dan IPA (MIPA)'),
(129, 'Fisika Medis', 'Fakultas Matematika dan IPA (MIPA)'),
(130, 'Kartografi dan Penginderaan', 'Fakultas Matematika dan IPA (MIPA)'),
(131, 'Pengelolaan dan Pemberdayaan SDA dan Lingkungan', 'Fakultas Matematika dan IPA (MIPA)'),
(132, 'Teknik Pertambangan', 'Fakultas Teknik'),
(133, 'Teknik Kelautan', 'Fakultas Teknik'),
(134, 'Teknik Lingkungan', 'Fakultas Teknik'),
(135, 'Rekayasa hayati', 'Fakultas Teknik'),
(136, 'Manajemen Rekayasa Industri', 'Fakultas Teknik'),
(137, 'Teknik Perencanaan Wilayah dan Kota (Planologi)', 'Fakultas Teknik'),
(138, 'Teknik Penerbangan (Aeronautika dan Astronautika)', 'Fakultas Teknik'),
(139, 'Teknik Metalurgi', 'Fakultas Teknik'),
(140, 'Teknik Sipil', 'Fakultas Teknik'),
(141, 'Arsitektur', 'Fakultas Teknik'),
(142, 'Teknik Geodesi', 'Fakultas Teknik'),
(143, 'Teknik Elektro', 'Fakultas Teknik'),
(144, 'Teknik Mesin', 'Fakultas Teknik'),
(145, 'Teknik Industri', 'Fakultas Teknik'),
(146, 'Teknik Perkapalan', 'Fakultas Teknik'),
(147, 'Teknik Otomotif', 'Fakultas Teknik'),
(148, 'Teknobiomedik', 'Fakultas Teknik'),
(149, 'Oseanografi', 'Fakultas Teknik'),
(150, 'Teknik Nuklir', 'Fakultas Teknik'),
(151, 'Teknik Geologi', 'Fakultas Teknik'),
(152, 'Teknik Refrigerasi dan Tata Udara', 'Fakultas Teknik'),
(153, 'Teknik Telekomunikasi', 'Fakultas Teknik'),
(154, 'Teknik Perancangan Jalan dan Jembatan', 'Fakultas Teknik'),
(155, 'Teknik Otomasi Manufaktur dan Mekatronika', 'Fakultas Teknik'),
(156, 'Teknologi Bioproses', 'Fakultas Teknik'),
(157, 'Teknik Grafika', 'Fakultas Teknik'),
(158, 'Transportasi Laut', 'Fakultas Teknik'),
(159, 'Teknik Fisika', 'Fakultas Teknik'),
(160, 'Teknik Geomatika', 'Fakultas Teknik'),
(161, 'Teknik Perminyakan', 'Fakultas Teknik'),
(162, 'Teknik Material', 'Fakultas Teknik'),
(163, 'Automotive and Robotics Engineering', 'Fakultas Teknik'),
(164, 'Teknik Tenaga Listrik', 'Fakultas Teknik'),
(165, 'Teknik Sistem Komputer', 'Fakultas Teknik'),
(166, 'Arsitektur Lanskap', 'Fakultas Teknik'),
(167, 'Teknik Konversi Energi', 'Fakultas Teknik'),
(168, 'Teknik Bioenergi dan Kemurgi', 'Fakultas Teknik'),
(169, 'Industrial RoboticsDesign', 'Fakultas Teknik'),
(170, 'Teknik Kimia', 'Fakultas Teknik'),
(171, 'Teknik Perpipaan', 'Fakultas Teknik'),
(172, 'Teknik Bangunan dan Landasan', 'Fakultas Teknik'),
(173, 'Teknik Listrik Bandara', 'Fakultas Teknik'),
(174, 'Teknik Alat Berat', 'Fakultas Teknik'),
(175, 'Rekayasa Infrastruktur Lingkungan', 'Fakultas Teknik'),
(176, 'Teknik Pesawat Udara', 'Fakultas Teknik'),
(177, 'Teknik Telekomunikasi dan Navigasi Udara', 'Fakultas Teknik'),
(178, 'Teknik Pengairan (Sumber Daya Air)', 'Fakultas Teknik'),
(179, 'Meteorologi Terapan', 'Fakultas Teknik'),
(180, 'Teknik Ekonomi Konstruksi (Quantity Surveyor)', 'Fakultas Teknik'),
(181, 'Teknik Sistem Perkapalan', 'Fakultas Teknik'),
(182, 'Pendidikan Jasmani, Kesehatan, dan Rekreasi', 'Fakultas Ilmu Olahraga'),
(183, 'Pendidikan Kepelatihan Keolahragaan', 'Fakultas Ilmu Olahraga'),
(184, 'Ilmu Keolahragaan', 'Fakultas Ilmu Olahraga'),
(185, 'Olahraga Rekreasi', 'Fakultas Ilmu Olahraga'),
(186, 'Kepelatihan Kecabangan Olahraga', 'Fakultas Ilmu Olahraga'),
(187, 'Ilmu Sejarah', 'Fakultas Sastra dan Budaya'),
(188, 'Sastra Inggris', 'Fakultas Sastra dan Budaya'),
(189, 'Arkeologi', 'Fakultas Sastra dan Budaya'),
(190, 'Sastra Perancis', 'Fakultas Sastra dan Budaya'),
(191, 'Sastra Korea', 'Fakultas Sastra dan Budaya'),
(192, 'Sastra Jerman', 'Fakultas Sastra dan Budaya'),
(193, 'Sastra Belanda', 'Fakultas Sastra dan Budaya'),
(194, 'Sastra Jepang', 'Fakultas Sastra dan Budaya'),
(195, 'Sastra Indonesia', 'Fakultas Sastra dan Budaya'),
(196, 'Sastra Rusia', 'Fakultas Sastra dan Budaya'),
(197, 'Sastra Jawa', 'Fakultas Sastra dan Budaya'),
(198, 'Sastra Arab', 'Fakultas Sastra dan Budaya'),
(199, 'Sastra Cina', 'Fakultas Sastra dan Budaya'),
(200, 'Sastra Sunda', 'Fakultas Sastra dan Budaya'),
(201, 'Sastra Bali', 'Fakultas Sastra dan Budaya'),
(202, 'Sastra Minangkabau', 'Fakultas Sastra dan Budaya'),
(203, 'Sastra Nusantara', 'Fakultas Sastra dan Budaya'),
(204, 'Sastra Slavia', 'Fakultas Sastra dan Budaya'),
(205, 'Sejarah dan Kebudayaan Islam', 'Fakultas Sastra dan Budaya'),
(206, 'Agronomi dan Hortikultura', 'Fakultas Pertanian'),
(207, 'Mikrobiologi Pertanian', 'Fakultas Pertanian'),
(208, 'Teknologi Pasca Panen', 'Fakultas Pertanian'),
(209, 'Teknologi Industri Benih', 'Fakultas Pertanian'),
(210, 'Ilmu Kelautan', 'Fakultas Pertanian'),
(211, 'Agribisnis (Sosial Ekonomi Pertanian)', 'Fakultas Pertanian'),
(212, 'Agroteknologi', 'Fakultas Pertanian'),
(213, 'Teknologi Pangan', 'Fakultas Pertanian'),
(214, 'Rekayasa Pertanian', 'Fakultas Pertanian'),
(215, 'Peternakan', 'Fakultas Pertanian'),
(216, 'Agroeteknologi', 'Fakultas Pertanian'),
(217, 'Kehutanan', 'Fakultas Pertanian'),
(218, 'Budidaya Perairan (Akuakultur)', 'Fakultas Pertanian'),
(219, 'Produksi Ternak', 'Fakultas Pertanian'),
(220, 'Teknologi Hasil Ternak', 'Fakultas Pertanian'),
(221, 'Pengelolaan Hutan', 'Fakultas Pertanian'),
(222, 'Teknologi Hasil Hutan', 'Fakultas Pertanian'),
(223, 'Silvikulutur', 'Fakultas Pertanian'),
(224, 'Konservasi Sumberdaya Hutan dan Ekowisata', 'Fakultas Pertanian'),
(225, 'Ilmu Hama dan Penyakit Tumbuhan (Proteksi Tanaman)', 'Fakultas Pertanian'),
(226, 'Teknologi Industri Pertanian (Agroindustri)', 'Fakultas Pertanian'),
(227, 'Manajemen Sumberdaya Lahan (Ilmu Tanah)', 'Fakultas Pertanian'),
(228, 'Teknologi Hasil Perikanan', 'Fakultas Pertanian'),
(229, 'Agrobisnis Perikanan (Sosial Ekonomi Perikanan)', 'Fakultas Pertanian'),
(230, 'Sumber Daya Perairan', 'Fakultas Pertanian'),
(231, 'Pemanfaatan Sumberdaya Perikanan', 'Fakultas Pertanian'),
(232, 'Penyuluhan dan Komunikasi Pertanian', 'Fakultas Pertanian'),
(233, 'Budidaya Perikanan', 'Fakultas Pertanian'),
(234, 'Rekayasa Pertanian', 'Fakultas Pertanian'),
(235, 'Manajemen Hutan', 'Fakultas Pertanian'),
(236, 'Teknik Pertanian', 'Fakultas Pertanian'),
(237, 'Manajemen Bisnis Unggas', 'Fakultas Pertanian'),
(238, 'Pariwisata', 'Fakultas Profesi dan Ilmu Terapan'),
(239, 'Penerbang (Pendidikan Pilot)', 'Fakultas Profesi dan Ilmu Terapan'),
(240, 'Pendidikan Intelijen', 'Fakultas Profesi dan Ilmu Terapan'),
(241, 'Komunikasi Penerbangan', 'Fakultas Profesi dan Ilmu Terapan'),
(242, 'Pendidikan Kepolisian', 'Fakultas Profesi dan Ilmu Terapan'),
(243, 'Pendidikan Militer', 'Fakultas Profesi dan Ilmu Terapan'),
(244, 'Lalu Lintas Udara', 'Fakultas Profesi dan Ilmu Terapan'),
(245, 'Manajemen Logistik', 'Fakultas Profesi dan Ilmu Terapan');

-- --------------------------------------------------------

--
-- Table structure for table `master_penempatan`
--

CREATE TABLE `master_penempatan` (
  `id_penempatan` int(11) NOT NULL,
  `kode_penempatan` varchar(5) DEFAULT NULL,
  `penempatan` varchar(50) NOT NULL,
  `divisi` varchar(50) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `link_maps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_penempatan`
--

INSERT INTO `master_penempatan` (`id_penempatan`, `kode_penempatan`, `penempatan`, `divisi`, `kota`, `link_maps`) VALUES
(1, 'A01', 'SMAK 1 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(2, 'A02', 'SMAK 2 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(3, 'A03', 'SMAK 3 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(4, 'A04', 'SMAK 4 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(5, 'A05', 'SMAK 5 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(6, 'A06', 'SMAK 6 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(7, 'A07', 'SMAK 7 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(8, 'A08', 'SPK SMAK 8 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(9, 'ABJ', 'SMAK PENABUR BINTARO JAYA', 'Pendidikan', 'Tangerang Selatan', ''),
(10, 'AGS', 'SMAK PENABUR GADING SERPONG', 'Pendidikan', 'Tangerang', ''),
(11, 'AHI', 'SMAK PENABUR HARAPAN INDAH', 'Pendidikan', 'Bekasi', ''),
(12, 'AKGI', 'SPK SMAK PENABUR Kelapa Gading', 'Pendidikan', 'Jakarta Utara', ''),
(13, 'AKJ', 'SMAK PENABUR KOTA JABABEKA', 'Pendidikan', 'Bekasi', ''),
(14, 'AKT', 'SMAK PENABUR KOTA TANGERANG', 'Pendidikan', 'Tangerang', ''),
(15, 'AKW', 'SMAK PENABUR KOTA WISATA', 'Pendidikan', 'Bogor', ''),
(16, 'ALD', 'SMAK PALEDANG', 'Pendidikan', 'Bogor', ''),
(17, 'AMF', 'SMK FARMASI PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(18, 'ASB', 'SMAK PENABUR SUMMARECON BEKASI', 'Pendidikan', 'Bekasi', ''),
(19, 'ATM', 'SMA TIRTAMARTA', 'Pendidikan', '', ''),
(20, 'D01', 'SDK 1 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(21, 'D02', 'SDK 2 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(22, 'D03', 'SDK 3 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(23, 'D04', 'SDK 4 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(24, 'D06', 'SDK 6 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(25, 'D08', 'SDK 8 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(26, 'D09', 'SDK 9 PENABUR', 'Pendidikan', 'Jakarta Selatan', ''),
(27, 'D10', 'SDK 10 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(28, 'D11', 'SDK 11 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(29, 'DAS', 'SDK PENABUR AGUS SALIM', 'Pendidikan', 'Bekasi', ''),
(30, 'DBJ', 'SDK PENABUR BINTARO JAYA', 'Pendidikan', 'Tangerang Selatan', ''),
(31, 'DDP', 'SDK PENABUR DEPOK', 'Pendidikan', 'Kota Depok', ''),
(32, 'DGS', 'SDK PENABUR GADING SERPONG', 'Pendidikan', 'Tangerang', ''),
(33, 'DHI', 'SDK PENABUR HARAPAN INDAH', 'Pendidikan', 'Bekasi', ''),
(34, 'DKGI', 'SPK SDK PENABUR Kelapa Gading', 'Pendidikan', 'Jakarta Utara', ''),
(35, 'DKJ', 'SDK PENABUR KOTA JABABEKA', 'Pendidikan', 'Bekasi', ''),
(36, 'DKM', 'SDK PENABUR KOTA MODERN', 'Pendidikan', 'Tangerang', ''),
(37, 'DKW', 'SDK PENABUR KOTA WISATA', 'Pendidikan', 'Bogor', ''),
(38, 'DSB', 'SDK PENABUR SUMMARECON BEKASI', 'Pendidikan', 'Bekasi', ''),
(39, 'K01', 'TKK 1 PENABUR', 'Pendidikan', '', ''),
(40, 'K02', 'TKK 2 PENABUR', 'Pendidikan', '', ''),
(41, 'K03', 'TKK 3 PENABUR', 'Pendidikan', '', ''),
(42, 'K05', 'TKK 5 PENABUR', 'Pendidikan', '', ''),
(43, 'K06', 'TKK 6 PENABUR', 'Pendidikan', '', ''),
(44, 'K07', 'TKK 7 PENABUR', 'Pendidikan', '', ''),
(45, 'K08', 'TKK 8 PENABUR', 'Pendidikan', '', ''),
(46, 'K09', 'TKK 9 PENABUR', 'Pendidikan', '', ''),
(47, 'K10', 'TKK 10 PENABUR', 'Pendidikan', '', ''),
(48, 'K11', 'TKK 11 PENABUR', 'Pendidikan', '', ''),
(49, 'K5F', 'TKK FILIAL PONDOK GEDE', 'Pendidikan', '', ''),
(50, 'KAS', 'TKK PENABUR AGUS SALIM', 'Pendidikan', '', ''),
(51, 'KBJ', 'TKK PENABUR BINTARO JAYA', 'Pendidikan', '', ''),
(52, 'KDP', 'TKK PENABUR DEPOK', 'Pendidikan', '', ''),
(53, 'KGS', 'TKK PENABUR GADING SERPONG', 'Pendidikan', '', ''),
(54, 'KHI', 'TKK PENABUR HARAPAN INDAH', 'Pendidikan', '', ''),
(55, 'KKJ', 'TKK PENABUR KOTA JABABEKA', 'Pendidikan', '', ''),
(56, 'KKM', 'TKK PENABUR KOTA MODERN', 'Pendidikan', '', ''),
(57, 'KKW', 'TKK PENABUR KOTA WISATA', 'Pendidikan', '', ''),
(58, 'KSB', 'TKK PENABUR SUMMARECON BEKASI', 'Pendidikan', '', ''),
(59, 'P01', 'SMPK 1 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(60, 'P02', 'SMPK 2 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(61, 'P03', 'SMPK 3 PENABUR', 'Pendidikan', 'Jakarta Pusat', ''),
(62, 'P04', 'SMPK 4 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(63, 'P05', 'SMPK 5 PENABUR', 'Pendidikan', 'Jakarta Timur', ''),
(64, 'P06', 'SMPK 6 PENABUR', 'Pendidikan', 'Jakarta Utara', ''),
(65, 'P07', 'SMPK 7 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(66, 'P08', 'SPK SMPK 8 PENABUR', 'Pendidikan', 'Jakarta Barat', ''),
(67, 'PBJ', 'SMPK PENABUR BINTARO JAYA', 'Pendidikan', 'Tangerang Selatan', ''),
(68, 'PDP', 'SMPK PENABUR DEPOK', 'Pendidikan', 'Depok', ''),
(69, 'PGS', 'SMPK PENABUR GADING SERPONG', 'Pendidikan', 'Tangerang', ''),
(70, 'PHI', 'SMPK PENABUR HARAPAN INDAH', 'Pendidikan', 'Bekasi', ''),
(71, 'PKGI', 'SPK SMPK PENABUR Kelapa Gading', 'Pendidikan', 'Jakarta Utara', ''),
(72, 'PKJ', 'SMPK PENABUR KOTA JABABEKA', 'Pendidikan', 'Bekasi', ''),
(73, 'PKM', 'SMPK PENABUR KOTA MODERN', 'Pendidikan', 'Tangerang', ''),
(74, 'PKW', 'SMPK PENABUR KOTA WISATA', 'Pendidikan', 'Bogor', ''),
(75, 'PSB', 'SMPK PENABUR SUMMARECON BEKASI', 'Pendidikan', 'Bekasi', ''),
(76, 'PTM2', 'SMPK PENABUR TIRTA MARTA CINERE', 'Pendidikan', 'Depok', ''),
(77, 'PTM1', 'SMPK PENABUR TIRTA MARTA PONDOK INDAH', 'Pendidikan', 'Jakarta Selatan', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_posisi`
--

CREATE TABLE `master_posisi` (
  `id_posisi` int(11) NOT NULL COMMENT 'autoincrement',
  `kode_posisi` char(11) DEFAULT NULL,
  `nama_posisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_posisi`
--

INSERT INTO `master_posisi` (`id_posisi`, `kode_posisi`, `nama_posisi`) VALUES
(1, 'IND', 'Guru Bahasa Indonesia'),
(2, 'ING', 'Guru Bahasa Inggris'),
(3, 'BIO', 'Guru Biologi'),
(4, 'FIS', 'Guru Fisika'),
(5, 'GEO', 'Guru Geografi'),
(6, 'KIM', 'Guru Kimia'),
(7, 'AGA', 'Guru Pendidikan Agama dan  Budi Pekerti'),
(8, 'PRA', 'Guru Prakarya'),
(9, 'PKN', 'Guru Pendidikan Pancasila dan Kewarganegaraan'),
(10, 'S&B', 'Guru Seni Budaya'),
(11, 'SOS', 'Guru Sosiologi'),
(12, 'MAT', 'Guru Matematika'),
(13, 'JAS', 'Guru Pendidikan Jasmani, Olah Raga, dan Kesehatan'),
(14, 'SEJ', 'Guru Sejarah'),
(15, 'EKO', 'Guru Ekonomi-Akun'),
(16, 'MIPA', 'Guru MATEMATIKA-IPA'),
(17, 'MIPS', 'Guru MATEMATIKA-IPS'),
(18, 'PLH', 'Guru Pendidikan Lingkungan Hidup'),
(19, 'IPS', 'Guru Ilmu Pengetahuan Sosial'),
(20, 'SUN', 'Guru Bahasa Sunda'),
(21, 'PRAMUKA', 'Guru Pramuka'),
(22, 'AWK', 'Administrasi Wali Kelas');

-- --------------------------------------------------------

--
-- Table structure for table `master_role`
--

CREATE TABLE `master_role` (
  `id_role` int(11) NOT NULL,
  `nama_role` varchar(20) NOT NULL,
  `deskripsi_role` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_role`
--

INSERT INTO `master_role` (`id_role`, `nama_role`, `deskripsi_role`) VALUES
(1, 'superadmin', 'Mengelola user dan master data (CRUD)'),
(2, 'rekrutmen', 'Mengelola lowongan dan lamaran pekerjaan (CRU)'),
(3, 'kandidat', 'Melihat halaman lowongan dan mengajukan lamaran pekerjaan (CRU)'),
(4, 'atasan', 'Merekomendasikan kandidat melalui Wawancara (RU)'),
(5, 'assessment', 'Merekomendasikan kandidat melalui Tes Psikologi (RU)'),
(6, 'poliklinik', 'Merekomendasikan kandidat melalui Tes Kesehatan (RU)'),
(7, 'kurikulum', 'Merekomendasikan kandidat (RU)'),
(8, 'pic_materi', 'Merekomendasikan kandidat melalui Tes Materi (RU)');

-- --------------------------------------------------------

--
-- Table structure for table `master_universitas`
--

CREATE TABLE `master_universitas` (
  `id_universitas` int(11) NOT NULL,
  `nama_universitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_universitas`
--

INSERT INTO `master_universitas` (`id_universitas`, `nama_universitas`) VALUES
(1, 'Iisip Yapis Biak'),
(2, 'IKIP Budi Utomo'),
(3, 'IKIP Gunung Sitoli'),
(4, 'IKIP Mataram'),
(5, 'IKIP Muhammadiyah Maumere'),
(6, 'IKIP PGRI Bali'),
(7, 'IKIP PGRI Bojonegoro'),
(8, 'IKIP PGRI Jember'),
(9, 'IKIP PGRI Kaltim'),
(10, 'IKIP PGRI Pontianak'),
(11, 'IKIP PGRI Wates'),
(12, 'IKIP Saraswati'),
(13, 'IKIP Widya Darma'),
(14, 'Institut  Sains dan Teknologi Nahdlatul Ulama Bali'),
(15, 'Institut  Teknologi Telkom Surabaya'),
(16, 'Institut Bio Scientia Internasional Indonesia'),
(17, 'Institut Bisnis dan Informatika (IBI) Kosgoro 1957'),
(18, 'Institut Bisnis Dan Informatika Kesatuan'),
(19, 'Institut Bisnis Dan Informatika Kwik Kian Gie'),
(20, 'Institut Bisnis dan Keuangan Nitro'),
(21, 'Institut Bisnis dan Multimedia Asmi Jakarta'),
(22, 'Institut Bisnis Dan Teknologi Pelita Indonesia'),
(23, 'Institut Bisnis Informasi Teknologi dan Bisnis'),
(24, 'Institut Bisnis Muhammadiyah Bekasi'),
(25, 'Institut Bisnis Nusantara'),
(26, 'Institut Ilmu Kesehatan Bhakti Wiyata Kediri'),
(27, 'Institut Ilmu Kesehatan Medika Persada Bali'),
(28, 'Institut Ilmu Kesehatan STRADA Indonesia'),
(29, 'Institut Ilmu Sosial dan Ilmu Budaya Samawa Rea'),
(30, 'Institut Ilmu Sosial Dan Ilmu Politik Jakarta'),
(31, 'Institut Ilmu Sosial dan Manajemen STIAMI'),
(32, 'Institut Informatika Dan Bisnis Darmajaya'),
(33, 'Institut Informatika Indonesia Surabaya'),
(34, 'Institut Keguruan dan Ilmu Pendidikan Siliwangi'),
(35, 'Institut Keguruan dan Teknologi Larantuka'),
(36, 'Institut Kesehatan dan Bisnis St. Fatimah Mamuju'),
(37, 'Institut Kesehatan Deli Husada Deli Tua'),
(38, 'Institut Kesehatan Helvetia'),
(39, 'Institut Kesehatan Indonesia'),
(40, 'Institut Kesehatan Medistra Lubuk Pakam'),
(41, 'Institut Kesehatan Prima Nusantara Bukittinggi'),
(42, 'Institut Kesehatan Rajawali'),
(43, 'Institut Kesehatan Sumatera Utara'),
(44, 'Institut Kesenian Jakarta - LPKJ'),
(45, 'Institut Keuangan-Perbankan Dan Informatika Asia Perbanas'),
(46, 'Institut Komunikasi Dan Bisnis LSPR'),
(47, 'Institut Manajemen Koperasi Indonesia'),
(48, 'Institut Manajemen Wiyata Indonesia'),
(49, 'Institut Medika Drg. Suherman'),
(50, 'Institut Pariwisata dan Bisnis Internasional'),
(51, 'Institut Pendidikan Indonesia Garut'),
(52, 'Institut Pendidikan Nusantara Global'),
(53, 'Institut Pendidikan Tapanuli Selatan'),
(54, 'Institut Pertanian (Intan) Yogyakarta'),
(55, 'Institut Pertanian Bogor'),
(56, 'Institut Pertanian Malang'),
(57, 'Institut Pertanian Stiper'),
(58, 'Institut Sains dan Bisnis Atma Luhur'),
(59, 'Institut Sains Dan Teknologi Akprind'),
(60, 'Institut Sains Dan Teknologi Al-Kamal'),
(61, 'Institut Sains Dan Teknologi Annuqayah'),
(62, 'Institut Sains Dan Teknologi Indonesia Manokwari'),
(63, 'Institut Sains Dan Teknologi Nasional'),
(64, 'Institut Sains Dan Teknologi Palapa'),
(65, 'Institut Sains Dan Teknologi Pembangunan Indonesia'),
(66, 'Institut Sains Dan Teknologi Td Pardede'),
(67, 'Institut Sains dan Teknologi Terpadu Surabaya'),
(68, 'Institut Seni Budaya Indonesia Aceh'),
(69, 'Institut Seni Budaya Indonesia Bandung'),
(70, 'Institut Seni Budaya Indonesia Tanah Papua'),
(71, 'Institut Seni Indonesia Denpasar'),
(72, 'Institut Seni Indonesia Padang Panjang'),
(73, 'Institut Seni Indonesia Surakarta'),
(74, 'Institut Seni Indonesia Yogyakarta'),
(75, 'Institut Teknologi Adhi Tama Surabaya'),
(76, 'Institut Teknologi Bandung'),
(77, 'Institut Teknologi Batam'),
(78, 'Institut Teknologi Bisnis AAS Indonesia'),
(79, 'Institut Teknologi Budi Utomo'),
(80, 'Institut Teknologi Calvin'),
(81, 'Institut Teknologi dan Bisnis Ahmad Dahlan'),
(82, 'Institut Teknologi dan Bisnis Asia Malang'),
(83, 'Institut Teknologi dan Bisnis Bank Rakyat Indonesia'),
(84, 'Institut Teknologi dan Bisnis Diniyyah Putri Lampung'),
(85, 'Institut Teknologi dan Bisnis Indonesia'),
(86, 'Institut Teknologi dan Bisnis Kalbis'),
(87, 'Institut Teknologi dan Bisnis Kalla'),
(88, 'Institut Teknologi dan Bisnis Kristen Bukit Pengharapan'),
(89, 'Institut Teknologi dan Bisnis Muhammadiyah Banyuwangi'),
(90, 'Institut Teknologi dan Bisnis Nazhatut Thullab Al-Muafa Sampang'),
(91, 'Institut Teknologi dan Bisnis Semarang'),
(92, 'Institut Teknologi dan Bisnis STIKOM Bali'),
(93, 'Institut Teknologi dan Kesehatan Avicenna'),
(94, 'Institut Teknologi dan Kesehatan Bali'),
(95, 'Institut Teknologi dan Kesehatan Jakarta'),
(96, 'Institut Teknologi dan Sains Nahdlatul Ulama Pasuruan'),
(97, 'Institut Teknologi Dan Sains Nahdlatul Ulama Pekalongan'),
(98, 'Institut Teknologi Del'),
(99, 'Institut Teknologi Harapan Bangsa'),
(100, 'Institut Teknologi Indonesia'),
(101, 'Institut Teknologi Kalimantan'),
(102, 'Institut Teknologi Kesehatan dan Sains Wiyata Husada Samarinda'),
(103, 'Institut Teknologi Medan'),
(104, 'Institut Teknologi Minaesa'),
(105, 'Institut Teknologi Nasional Bandung'),
(106, 'Institut Teknologi Nasional Malang'),
(107, 'Institut Teknologi Nasional Yogyakarta'),
(108, 'Institut Teknologi Padang'),
(109, 'Institut Teknologi Pembangunan Surabaya'),
(110, 'Institut Teknologi Perusahaan Listrik Negara'),
(111, 'Institut Teknologi Sains Bandung'),
(112, 'Institut Teknologi Sains dan Kesehatan PKU Muhammadiyah Surakarta'),
(113, 'Institut Teknologi Sepuluh Nopember'),
(114, 'Institut Teknologi Sumatera'),
(115, 'Institut Teknologi Tangerang Selatan'),
(116, 'Institut Teknologi Telkom Purwokerto'),
(117, 'Institut Teknologi Yogyakarta'),
(118, 'Institut Transportasi  dan Logistik Trisakti'),
(119, 'S.T. Manajemen Bisnis Multi Sarana Manajemen Administrasi dan Rekayasa Teknologi'),
(120, 'Sekolah Tinggi  Ilmu Ekonomi JIU'),
(121, 'Sekolah Tinggi Akuntansi dan Manajemen Indonesia'),
(122, 'Sekolah Tinggi Analis Bakti Asih'),
(123, 'Sekolah Tinggi Analis Kimia Cilegon'),
(124, 'Sekolah Tinggi Arsitektur YKPN Yogyakarta'),
(125, 'Sekolah Tinggi Bahasa Asing Bina Dinamika Cianjur'),
(126, 'Sekolah Tinggi Bahasa Asing Cahaya Surya'),
(127, 'Sekolah Tinggi Bahasa Asing Cakrawala Nusantara'),
(128, 'Sekolah Tinggi Bahasa Asing Cipto Hadi Pranoto'),
(129, 'Sekolah Tinggi Bahasa Asing Cirebon'),
(130, 'Sekolah Tinggi Bahasa Asing IEC Bekasi'),
(131, 'Sekolah Tinggi Bahasa Asing IEC Jakarta'),
(132, 'Sekolah Tinggi Bahasa Asing JIA'),
(133, 'Sekolah Tinggi Bahasa Asing Jiu'),
(134, 'Sekolah Tinggi Bahasa Asing LIA'),
(135, 'Sekolah Tinggi Bahasa Asing LIA Yogyakarta'),
(136, 'Sekolah Tinggi Bahasa Asing Malang'),
(137, 'Sekolah Tinggi Bahasa Asing Mentari Kupang'),
(138, 'Sekolah Tinggi Bahasa Asing Methodist'),
(139, 'Sekolah Tinggi Bahasa Asing Persada Bunda'),
(140, 'Sekolah Tinggi Bahasa Asing Pertiwi Indonesia'),
(141, 'Sekolah Tinggi Bahasa Asing Pontianak'),
(142, 'Sekolah Tinggi Bahasa Asing Prayoga'),
(143, 'Sekolah Tinggi Bahasa Asing Sebelas April Sumedang'),
(144, 'Sekolah Tinggi Bahasa Asing Technocrat'),
(145, 'Sekolah Tinggi Bahasa Asing Widya Dharma Palembang'),
(146, 'Sekolah Tinggi Bahasa Asing Yapari'),
(147, 'Sekolah Tinggi Bahasa Asing Yunisla Bandar Lampung'),
(148, 'Sekolah Tinggi Bahasa Harapan Bersama'),
(149, 'Sekolah Tinggi Bio Sains Swadiri'),
(150, 'Sekolah Tinggi Bisnis dan Manajemen Dua Saudara'),
(151, 'Sekolah Tinggi Bisnis Putra Harapan'),
(152, 'Sekolah Tinggi Desain Bali'),
(153, 'Sekolah Tinggi Desain Indonesia Bandung'),
(154, 'Sekolah Tinggi Desain Interstudi'),
(155, 'Sekolah Tinggi Desain LaSalle'),
(156, 'Sekolah Tinggi Elektronika & Komputer (STEKOM)'),
(157, 'Sekolah Tinggi Farmasi Bandung'),
(158, 'Sekolah Tinggi Farmasi Indonesia'),
(159, 'Sekolah Tinggi Farmasi Indonesia Perintis Padang'),
(160, 'Sekolah Tinggi Farmasi Mahaganesha'),
(161, 'Sekolah Tinggi Farmasi Muhammadiyah Cirebon'),
(162, 'Sekolah Tinggi Farmasi Muhammadiyah Tangerang'),
(163, 'Sekolah Tinggi Farmasi YPIB Cirebon'),
(164, 'Sekolah Tinggi Filsafat Driyarkara'),
(165, 'Sekolah Tinggi Filsafat Fajar Timur Jayapura'),
(166, 'Sekolah Tinggi Filsafat Jaffray Makassar'),
(167, 'Sekolah Tinggi Filsafat Katolik Ledalero'),
(168, 'Sekolah Tinggi Filsafat Seminari Pineleng'),
(169, 'Sekolah Tinggi Filsafat Teologi Widya Sasana'),
(170, 'Sekolah Tinggi Filsafat Theologi Jakarta'),
(171, 'Sekolah Tinggi Filsafat Theologi S Nusantara'),
(172, 'Sekolah Tinggi Hukum Bandung'),
(173, 'Sekolah Tinggi Hukum Galunggung'),
(174, 'Sekolah Tinggi Hukum Garut'),
(175, 'Sekolah Tinggi Hukum Indonesia Jakarta'),
(176, 'Sekolah Tinggi Hukum Pasundan'),
(177, 'Sekolah Tinggi Hukum YNI'),
(178, 'Sekolah Tinggi Ilmu Administrasi Aan'),
(179, 'Sekolah Tinggi Ilmu Administrasi Abdul Haris'),
(180, 'Sekolah Tinggi Ilmu Administrasi Adabiah'),
(181, 'Sekolah Tinggi Ilmu Administrasi Al Gazali Barru'),
(182, 'Sekolah Tinggi Ilmu Administrasi Al Gazali Soppeng'),
(183, 'Sekolah Tinggi Ilmu Administrasi Amuntai'),
(184, 'Sekolah Tinggi Ilmu Administrasi Asy Syafi iyah'),
(185, 'Sekolah Tinggi Ilmu Administrasi Bagasasi'),
(186, 'Sekolah Tinggi Ilmu Administrasi Bandung'),
(187, 'Sekolah Tinggi Ilmu Administrasi Banten'),
(188, 'Sekolah Tinggi Ilmu Administrasi Bayuangga'),
(189, 'Sekolah Tinggi Ilmu Administrasi Bengkulu'),
(190, 'Sekolah Tinggi Ilmu Administrasi Bina Taruna'),
(191, 'Sekolah Tinggi Ilmu Administrasi Cimahi'),
(192, 'Sekolah Tinggi Ilmu Administrasi Darul Rachman Tual'),
(193, 'Sekolah Tinggi Ilmu Administrasi Denpasar'),
(194, 'Sekolah Tinggi Ilmu Administrasi Iskandar Thani'),
(195, 'Sekolah Tinggi Ilmu Administrasi Karya Dharma Merauke'),
(196, 'Sekolah Tinggi Ilmu Administrasi Kawula Indonesia'),
(197, 'Sekolah Tinggi Ilmu Administrasi Lancang Kuning'),
(198, 'Sekolah Tinggi Ilmu Administrasi Langgur'),
(199, 'Sekolah Tinggi Ilmu Administrasi Lppn'),
(200, 'Sekolah Tinggi Ilmu Administrasi Madani'),
(201, 'Sekolah Tinggi Ilmu Administrasi Malang'),
(202, 'Sekolah Tinggi Ilmu Administrasi Mataram'),
(203, 'Sekolah Tinggi Ilmu Administrasi Maulana Yusuf Banten'),
(204, 'Sekolah Tinggi Ilmu Administrasi Menara Siswa'),
(205, 'Sekolah Tinggi Ilmu Administrasi Muhammadiyah Selong'),
(206, 'Sekolah Tinggi Ilmu Administrasi Nasional'),
(207, 'Sekolah Tinggi Ilmu Administrasi Pagaruyung'),
(208, 'Sekolah Tinggi Ilmu Administrasi Pancamarga Palu'),
(209, 'Sekolah Tinggi Ilmu Administrasi Panglima Sudirman'),
(210, 'Sekolah Tinggi Ilmu Administrasi Pelita Nusantara'),
(211, 'Sekolah Tinggi Ilmu Administrasi Pembangunan'),
(212, 'Sekolah Tinggi Ilmu Administrasi Pembangunan Palu'),
(213, 'Sekolah Tinggi Ilmu Administrasi Puangrimaggalatung'),
(214, 'Sekolah Tinggi Ilmu Administrasi Said Perintah'),
(215, 'Sekolah Tinggi Ilmu Administrasi Sandikta'),
(216, 'Sekolah Tinggi Ilmu Administrasi Satya Negara'),
(217, 'Sekolah Tinggi Ilmu Administrasi Saumlaki'),
(218, 'Sekolah Tinggi Ilmu Administrasi Sebelas April'),
(219, 'Sekolah Tinggi Ilmu Administrasi Setih Setio'),
(220, 'Sekolah Tinggi Ilmu Administrasi Tabalong'),
(221, 'Sekolah Tinggi Ilmu Administrasi Trinitas'),
(222, 'Sekolah Tinggi Ilmu Administrasi YAPPI Makassa'),
(223, 'Sekolah Tinggi Ilmu Administrasi YPPT Tasikmalaya'),
(224, 'Sekolah Tinggi Ilmu Bahasa Asing Bumi Beringin'),
(225, 'Sekolah Tinggi Ilmu Bahasa Asing Invada'),
(226, 'Sekolah Tinggi Ilmu Bahasa Asing ITMI Medan'),
(227, 'Sekolah Tinggi Ilmu Bahasa Banten Raya'),
(228, 'Sekolah Tinggi Ilmu Bahasa Dan Sastra Satya Widya'),
(229, 'Sekolah Tinggi Ilmu Eknomi Yapis Merauke'),
(230, 'Sekolah Tinggi Ilmu Ekonomi 45 Mataram'),
(231, 'Sekolah Tinggi Ilmu Ekonomi AAS'),
(232, 'Sekolah Tinggi Ilmu Ekonomi Abdi Nusa'),
(233, 'Sekolah Tinggi Ilmu Ekonomi Adi Unggul Bhirawa'),
(234, 'Sekolah Tinggi Ilmu Ekonomi AKA'),
(235, 'Sekolah Tinggi Ilmu Ekonomi Al-Anwar'),
(236, 'Sekolah Tinggi Ilmu Ekonomi Al-Khairiyah'),
(237, 'Sekolah Tinggi Ilmu Ekonomi Al-Madani'),
(238, 'Sekolah Tinggi Ilmu Ekonomi Al-Washliyah'),
(239, 'Sekolah Tinggi Ilmu Ekonomi AMA'),
(240, 'Sekolah Tinggi Ilmu Ekonomi Amkop Makassar'),
(241, 'Sekolah Tinggi Ilmu Ekonomi AMM'),
(242, 'Sekolah Tinggi Ilmu Ekonomi Amsir Pare-pare'),
(243, 'Sekolah Tinggi Ilmu Ekonomi Anindyaguna'),
(244, 'Sekolah Tinggi Ilmu Ekonomi Aprin'),
(245, 'Sekolah Tinggi Ilmu Ekonomi Artha Bodhi Iswara'),
(246, 'Sekolah Tinggi Ilmu Ekonomi Assholeh'),
(247, 'Sekolah Tinggi Ilmu Ekonomi Atma Bhakti'),
(248, 'Sekolah Tinggi Ilmu Ekonomi Bajiminasa Makassar'),
(249, 'Sekolah Tinggi Ilmu Ekonomi Balikpapan'),
(250, 'Sekolah Tinggi Ilmu Ekonomi Bangkinang'),
(251, 'Sekolah Tinggi Ilmu Ekonomi Bank Bpd Jawa Tengah'),
(252, 'Sekolah Tinggi Ilmu Ekonomi Banten'),
(253, 'Sekolah Tinggi Ilmu Ekonomi Bentara Persada Batam'),
(254, 'Sekolah Tinggi Ilmu Ekonomi Bhakti Pembangunan'),
(255, 'Sekolah Tinggi Ilmu Ekonomi BII Bekasi'),
(256, 'Sekolah Tinggi Ilmu Ekonomi Bima'),
(257, 'Sekolah Tinggi Ilmu Ekonomi Bina Karya'),
(258, 'Sekolah Tinggi Ilmu Ekonomi Binaniaga'),
(259, 'Sekolah Tinggi Ilmu Ekonomi Bisma Lepisi'),
(260, 'Sekolah Tinggi Ilmu Ekonomi Bisnis Dan Perbankan'),
(261, 'Sekolah Tinggi Ilmu Ekonomi Bisnis Indonesia'),
(262, 'Sekolah Tinggi Ilmu Ekonomi Boedi Oetomo'),
(263, 'Sekolah Tinggi Ilmu Ekonomi BPKP'),
(264, 'Sekolah Tinggi Ilmu Ekonomi Budi Pertiwi'),
(265, 'Sekolah Tinggi Ilmu Ekonomi Bukit Zaitun Sorong'),
(266, 'Sekolah Tinggi Ilmu Ekonomi Bulungan Tarakan'),
(267, 'Sekolah Tinggi Ilmu Ekonomi Cakrawala'),
(268, 'Sekolah Tinggi Ilmu Ekonomi Cendekia Bojonegoro'),
(269, 'Sekolah Tinggi Ilmu Ekonomi Cendekia Karya Utama'),
(270, 'Sekolah Tinggi Ilmu Ekonomi Cipasung'),
(271, 'Sekolah Tinggi Ilmu Ekonomi Cirebon'),
(272, 'Sekolah Tinggi Ilmu Ekonomi Dahani Dahanai Buntok'),
(273, 'Sekolah Tinggi Ilmu Ekonomi dan Bisnis Prana Putra'),
(274, 'Sekolah Tinggi Ilmu Ekonomi Darunnajah'),
(275, 'Sekolah Tinggi Ilmu Ekonomi Deli Sumatera'),
(276, 'Sekolah Tinggi Ilmu Ekonomi Dewantara'),
(277, 'Sekolah Tinggi Ilmu Ekonomi Dharma Agung Bandung'),
(278, 'Sekolah Tinggi Ilmu Ekonomi Dharma Barata Kendari'),
(279, 'Sekolah Tinggi Ilmu Ekonomi Dharma Bumi Putra'),
(280, 'Sekolah Tinggi Ilmu Ekonomi Dharma Nasional Jember'),
(281, 'Sekolah Tinggi Ilmu Ekonomi Dharma Putra Pekanbaru'),
(282, 'Sekolah Tinggi Ilmu Ekonomi Dharma Putra Semarang'),
(283, 'Sekolah Tinggi Ilmu Ekonomi Dr Kh Ez Mutaqien'),
(284, 'Sekolah Tinggi Ilmu Ekonomi Dr Moechtar Talib'),
(285, 'Sekolah Tinggi Ilmu Ekonomi Dwi Sakti Baturaja'),
(286, 'Sekolah Tinggi Ilmu Ekonomi Dwimulya'),
(287, 'Sekolah Tinggi Ilmu Ekonomi Eben Haezer Manado'),
(288, 'Sekolah Tinggi Ilmu Ekonomi Eka Prasetya'),
(289, 'Sekolah Tinggi Ilmu Ekonomi Ekadharma Indonesia'),
(290, 'Sekolah Tinggi Ilmu Ekonomi Ekuitas'),
(291, 'Sekolah Tinggi Ilmu Ekonomi El Fatah Manado'),
(292, 'Sekolah Tinggi Ilmu Ekonomi El Hakim'),
(293, 'Sekolah Tinggi Ilmu Ekonomi Enam Enam Kendari'),
(294, 'Sekolah Tinggi Ilmu Ekonomi Fajar'),
(295, 'Sekolah Tinggi Ilmu Ekonomi Fatahillah'),
(296, 'Sekolah Tinggi Ilmu Ekonomi Galileo'),
(297, 'Sekolah Tinggi Ilmu Ekonomi Ganesha'),
(298, 'Sekolah Tinggi Ilmu Ekonomi Gema Widya Bangsa'),
(299, 'Sekolah Tinggi Ilmu Ekonomi Gempol'),
(300, 'Sekolah Tinggi Ilmu Ekonomi Gentiaras'),
(301, 'Sekolah Tinggi Ilmu Ekonomi Gici'),
(302, 'Sekolah Tinggi Ilmu Ekonomi Graha Kirana'),
(303, 'Sekolah Tinggi Ilmu Ekonomi Haji Agus Salim'),
(304, 'Sekolah Tinggi Ilmu Ekonomi Harapan Bangsa'),
(305, 'Sekolah Tinggi Ilmu Ekonomi Hidayatullah Depok'),
(306, 'Sekolah Tinggi Ilmu Ekonomi IBBI'),
(307, 'Sekolah Tinggi Ilmu Ekonomi IBMT'),
(308, 'Sekolah Tinggi Ilmu Ekonomi Ichsan Pohuwato'),
(309, 'Sekolah Tinggi Ilmu Ekonomi Ichsan Sidenreng Rappang'),
(310, 'Sekolah Tinggi Ilmu Ekonomi IEU'),
(311, 'Sekolah Tinggi Ilmu Ekonomi IGI'),
(312, 'Sekolah Tinggi Ilmu Ekonomi Indocakti'),
(313, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Banda Aceh'),
(314, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Banjarmasin'),
(315, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Jakarta'),
(316, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Makassar'),
(317, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Malang'),
(318, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Membangun (Inaba)'),
(319, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Pontianak'),
(320, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Raya'),
(321, 'Sekolah Tinggi Ilmu Ekonomi Indonesia Surabaya'),
(322, 'Sekolah Tinggi Ilmu Ekonomi Indragiri Rengat'),
(323, 'Sekolah Tinggi Ilmu Ekonomi Insan Pembangunan'),
(324, 'Sekolah Tinggi Ilmu Ekonomi IPWI Jakarta'),
(325, 'Sekolah Tinggi Ilmu Ekonomi Islamiyah'),
(326, 'Sekolah Tinggi Ilmu Ekonomi Isti Ekatana Upaweda'),
(327, 'Sekolah Tinggi Ilmu Ekonomi ITMI Medan'),
(328, 'Sekolah Tinggi Ilmu Ekonomi Jambatan Bulan'),
(329, 'Sekolah Tinggi Ilmu Ekonomi Jambi'),
(330, 'Sekolah Tinggi Ilmu Ekonomi Jaya Negara Tamansiswa'),
(331, 'Sekolah Tinggi Ilmu Ekonomi Jayakarta'),
(332, 'Sekolah Tinggi Ilmu Ekonomi Jayakusuma'),
(333, 'Sekolah Tinggi Ilmu Ekonomi Kalpataru'),
(334, 'Sekolah Tinggi Ilmu Ekonomi Karya'),
(335, 'Sekolah Tinggi Ilmu Ekonomi Kasih Bangsa'),
(336, 'Sekolah Tinggi Ilmu Ekonomi KBP'),
(337, 'Sekolah Tinggi Ilmu Ekonomi Kertanegara'),
(338, 'Sekolah Tinggi Ilmu Ekonomi Kesatuan'),
(339, 'Sekolah Tinggi Ilmu Ekonomi Kesumanegara'),
(340, 'Sekolah Tinggi Ilmu Ekonomi KH Ahmad Dahlan'),
(341, 'Sekolah Tinggi Ilmu Ekonomi KH. Bahaudin Mudhary Madura'),
(342, 'Sekolah Tinggi Ilmu Ekonomi Koperasi Malang'),
(343, 'Sekolah Tinggi Ilmu Ekonomi Krakatau'),
(344, 'Sekolah Tinggi Ilmu Ekonomi Kridatama Bandung'),
(345, 'Sekolah Tinggi Ilmu Ekonomi Kuala Kapuas'),
(346, 'Sekolah Tinggi Ilmu Ekonomi Kusuma Negara'),
(347, 'Sekolah Tinggi Ilmu Ekonomi La Tansa Mashiro'),
(348, 'Sekolah Tinggi Ilmu Ekonomi Lamaddukelleng'),
(349, 'Sekolah Tinggi Ilmu Ekonomi Lamappapoleonro Soppeng'),
(350, 'Sekolah Tinggi Ilmu Ekonomi Lantim Way Jepara'),
(351, 'Sekolah Tinggi Ilmu Ekonomi Latifah Mubarokiyah'),
(352, 'Sekolah Tinggi Ilmu Ekonomi Lembah Dempo'),
(353, 'Sekolah Tinggi Ilmu Ekonomi Lhokseumawe'),
(354, 'Sekolah Tinggi Ilmu Ekonomi LMII'),
(355, 'Sekolah Tinggi Ilmu Ekonomi LPI Makassar'),
(356, 'Sekolah Tinggi Ilmu Ekonomi Mah-eisa'),
(357, 'Sekolah Tinggi Ilmu Ekonomi Mahardhika'),
(358, 'Sekolah Tinggi Ilmu Ekonomi Maiji'),
(359, 'Sekolah Tinggi Ilmu Ekonomi Makassar Bongaya'),
(360, 'Sekolah Tinggi Ilmu Ekonomi Makassar Maju'),
(361, 'Sekolah Tinggi Ilmu Ekonomi Malangkucecwara'),
(362, 'Sekolah Tinggi Ilmu Ekonomi Manajemen Rutu Nusa'),
(363, 'Sekolah Tinggi Ilmu Ekonomi Mandala'),
(364, 'Sekolah Tinggi Ilmu Ekonomi Mars'),
(365, 'Sekolah Tinggi Ilmu Ekonomi Media Nusantara Citra'),
(366, 'Sekolah Tinggi Ilmu Ekonomi Miftahul Huda Subang'),
(367, 'Sekolah Tinggi Ilmu Ekonomi Mitra Indonesia'),
(368, 'Sekolah Tinggi Ilmu Ekonomi Mitra Lampung'),
(369, 'Sekolah Tinggi Ilmu Ekonomi Muara Teweh'),
(370, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Asahan'),
(371, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Bandung'),
(372, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Cilacap'),
(373, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Jakarta'),
(374, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Kalianda'),
(375, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Mamuju'),
(376, 'Sekolah Tinggi Ilmu Ekonomi Muhammadiyah Tuban'),
(377, 'Sekolah Tinggi Ilmu Ekonomi Mujahidin'),
(378, 'Sekolah Tinggi Ilmu Ekonomi Mulia Darma Pratama'),
(379, 'Sekolah Tinggi Ilmu Ekonomi Mulia Pratama'),
(380, 'Sekolah Tinggi Ilmu Ekonomi Mulia Singkawang'),
(381, 'Sekolah Tinggi Ilmu Ekonomi Nasional'),
(382, 'Sekolah Tinggi Ilmu Ekonomi Nasional Banjarmasin'),
(383, 'Sekolah Tinggi Ilmu Ekonomi Nasional Indonesia'),
(384, 'Sekolah Tinggi Ilmu Ekonomi Nasional Samarinda'),
(385, 'Sekolah Tinggi Ilmu Ekonomi Nganjuk'),
(386, 'Sekolah Tinggi Ilmu Ekonomi Nu Trate'),
(387, 'Sekolah Tinggi Ilmu Ekonomi Nusa Bangsa'),
(388, 'Sekolah Tinggi Ilmu Ekonomi Nusa Megar Kencana'),
(389, 'Sekolah Tinggi Ilmu Ekonomi Nusantara Makassar'),
(390, 'Sekolah Tinggi Ilmu Ekonomi Nusantara Sangatta'),
(391, 'Sekolah Tinggi Ilmu Ekonomi Oemathonis'),
(392, 'Sekolah Tinggi Ilmu Ekonomi Ottow & Geissler Serui'),
(393, 'Sekolah Tinggi Ilmu Ekonomi Pagaruyung'),
(394, 'Sekolah Tinggi Ilmu Ekonomi Palangka Raya'),
(395, 'Sekolah Tinggi Ilmu Ekonomi Panca Bhakti Palu'),
(396, 'Sekolah Tinggi Ilmu Ekonomi Pancasetia'),
(397, 'Sekolah Tinggi Ilmu Ekonomi Pandu Madania'),
(398, 'Sekolah Tinggi Ilmu Ekonomi Paripurna'),
(399, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata'),
(400, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata Api'),
(401, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata Indonesia'),
(402, 'Sekolah Tinggi Ilmu Ekonomi Pariwisata YAPARI'),
(403, 'Sekolah Tinggi Ilmu Ekonomi Pasaman'),
(404, 'Sekolah Tinggi Ilmu Ekonomi Pasundan'),
(405, 'Sekolah Tinggi Ilmu Ekonomi Pelita Nusantara'),
(406, 'Sekolah Tinggi Ilmu Ekonomi Pembangunan Indonesia'),
(407, 'Sekolah Tinggi Ilmu Ekonomi Pembangunan Nasional'),
(408, 'Sekolah Tinggi Ilmu Ekonomi Pemnas Indonesia'),
(409, 'Sekolah Tinggi Ilmu Ekonomi Pemuda'),
(410, 'Sekolah Tinggi Ilmu Ekonomi Penguji Sukabumi'),
(411, 'Sekolah Tinggi Ilmu Ekonomi Perbanas Surabaya'),
(412, 'Sekolah Tinggi Ilmu Ekonomi Perbankan Indonesia'),
(413, 'Sekolah Tinggi Ilmu Ekonomi Perdagangan'),
(414, 'Sekolah Tinggi Ilmu Ekonomi Persada Bunda'),
(415, 'Sekolah Tinggi Ilmu Ekonomi Pertiba'),
(416, 'Sekolah Tinggi Ilmu Ekonomi Pertiwi'),
(417, 'Sekolah Tinggi Ilmu Ekonomi Petra'),
(418, 'Sekolah Tinggi Ilmu Ekonomi PGRI Dewantara'),
(419, 'Sekolah Tinggi Ilmu Ekonomi PGRI Sukabumi'),
(420, 'Sekolah Tinggi Ilmu Ekonomi Pioner Manado'),
(421, 'Sekolah Tinggi Ilmu Ekonomi Pontianak'),
(422, 'Sekolah Tinggi Ilmu Ekonomi Port Numbay Jayapura'),
(423, 'Sekolah Tinggi Ilmu Ekonomi Ppi'),
(424, 'Sekolah Tinggi Ilmu Ekonomi Prabumulih'),
(425, 'Sekolah Tinggi Ilmu Ekonomi Prasetiya Mandiri Lampung'),
(426, 'Sekolah Tinggi Ilmu Ekonomi Prima Graha'),
(427, 'Sekolah Tinggi Ilmu Ekonomi Profesional Indonesia'),
(428, 'Sekolah Tinggi Ilmu Ekonomi Purna Graha'),
(429, 'Sekolah Tinggi Ilmu Ekonomi Putra Bangsa'),
(430, 'Sekolah Tinggi Ilmu Ekonomi Putra Timor'),
(431, 'Sekolah Tinggi Ilmu Ekonomi Ragam Tunas'),
(432, 'Sekolah Tinggi Ilmu Ekonomi Rahmaniyah'),
(433, 'Sekolah Tinggi Ilmu Ekonomi Rajawali'),
(434, 'Sekolah Tinggi Ilmu Ekonomi Riau'),
(435, 'Sekolah Tinggi Ilmu Ekonomi Rizky'),
(436, 'Sekolah Tinggi Ilmu Ekonomi Sabang'),
(437, 'Sekolah Tinggi Ilmu Ekonomi Sakti Alam Kerinci'),
(438, 'Sekolah Tinggi Ilmu Ekonomi Samarinda'),
(439, 'Sekolah Tinggi Ilmu Ekonomi Sampit'),
(440, 'Sekolah Tinggi Ilmu Ekonomi Santa Ursula'),
(441, 'Sekolah Tinggi Ilmu Ekonomi Satria'),
(442, 'Sekolah Tinggi Ilmu Ekonomi Satu Nusa'),
(443, 'Sekolah Tinggi Ilmu Ekonomi Satya Dharma'),
(444, 'Sekolah Tinggi Ilmu Ekonomi Saumlaki'),
(445, 'Sekolah Tinggi Ilmu Ekonomi SBI'),
(446, 'Sekolah Tinggi Ilmu Ekonomi Sebelas April'),
(447, 'Sekolah Tinggi Ilmu Ekonomi Semarang'),
(448, 'Sekolah Tinggi Ilmu Ekonomi Serasan Muara Enim'),
(449, 'Sekolah Tinggi Ilmu Ekonomi Serelo Lahat'),
(450, 'Sekolah Tinggi Ilmu Ekonomi St Pignatelli'),
(451, 'Sekolah Tinggi Ilmu Ekonomi Stan Im'),
(452, 'Sekolah Tinggi Ilmu Ekonomi STEMBI'),
(453, 'Sekolah Tinggi Ilmu Ekonomi Stmy'),
(454, 'Sekolah Tinggi Ilmu Ekonomi Sulawesi Utara'),
(455, 'Sekolah Tinggi Ilmu Ekonomi Sultan Agung'),
(456, 'Sekolah Tinggi Ilmu Ekonomi Sumbar'),
(457, 'Sekolah Tinggi Ilmu Ekonomi Surakarta'),
(458, 'Sekolah Tinggi Ilmu Ekonomi Surya Nusantara'),
(459, 'Sekolah Tinggi Ilmu Ekonomi Sutaatmadja'),
(460, 'Sekolah Tinggi Ilmu Ekonomi Swadaya'),
(461, 'Sekolah Tinggi Ilmu Ekonomi Swadaya Manado'),
(462, 'Sekolah Tinggi Ilmu Ekonomi Swasta Mandiri'),
(463, 'Sekolah Tinggi Ilmu Ekonomi Taman Siswa'),
(464, 'Sekolah Tinggi Ilmu Ekonomi Tamansiswa'),
(465, 'Sekolah Tinggi Ilmu Ekonomi Tenggarong'),
(466, 'Sekolah Tinggi Ilmu Ekonomi Totalwin'),
(467, 'Sekolah Tinggi Ilmu Ekonomi Tri Bhakti'),
(468, 'Sekolah Tinggi Ilmu Ekonomi Tri Dharma Nusantara'),
(469, 'Sekolah Tinggi Ilmu Ekonomi Tri Dharma Widya'),
(470, 'Sekolah Tinggi Ilmu Ekonomi Trianandra'),
(471, 'Sekolah Tinggi Ilmu Ekonomi Trianandra'),
(472, 'Sekolah Tinggi Ilmu Ekonomi Tribuana'),
(473, 'Sekolah Tinggi Ilmu Ekonomi Tricom'),
(474, 'Sekolah Tinggi Ilmu Ekonomi Tridharma'),
(475, 'Sekolah Tinggi Ilmu Ekonomi Triguna'),
(476, 'Sekolah Tinggi Ilmu Ekonomi Triguna'),
(477, 'Sekolah Tinggi Ilmu Ekonomi Trisakti'),
(478, 'Sekolah Tinggi Ilmu Ekonomi Trisna Negara'),
(479, 'Sekolah Tinggi Ilmu Ekonomi Tuah Negeri'),
(480, 'Sekolah Tinggi Ilmu Ekonomi Tunas Nusantara'),
(481, 'Sekolah Tinggi Ilmu Ekonomi Umel'),
(482, 'Sekolah Tinggi Ilmu Ekonomi Urip Sumohardjo'),
(483, 'Sekolah Tinggi Ilmu Ekonomi Wibawa Karta Raharja'),
(484, 'Sekolah Tinggi Ilmu Ekonomi Widya Darma'),
(485, 'Sekolah Tinggi Ilmu Ekonomi Widya Darma Kotamobagu'),
(486, 'Sekolah Tinggi Ilmu Ekonomi Widya Dharma'),
(487, 'Sekolah Tinggi Ilmu Ekonomi Widya Gama'),
(488, 'Sekolah Tinggi Ilmu Ekonomi Widya Jayakarta'),
(489, 'Sekolah Tinggi Ilmu Ekonomi Widya Manggala'),
(490, 'Sekolah Tinggi Ilmu Ekonomi Widya Manggalia'),
(491, 'Sekolah Tinggi Ilmu Ekonomi Widya Persada'),
(492, 'Sekolah Tinggi Ilmu Ekonomi Widya Praja'),
(493, 'Sekolah Tinggi Ilmu Ekonomi Widya Wiwaha'),
(494, 'Sekolah Tinggi Ilmu Ekonomi Wijaya Mulya'),
(495, 'Sekolah Tinggi Ilmu Ekonomi Wilwatikta'),
(496, 'Sekolah Tinggi Ilmu Ekonomi Wira Bhakti'),
(497, 'Sekolah Tinggi Ilmu Ekonomi Wiyatamandala'),
(498, 'Sekolah Tinggi Ilmu Ekonomi Yadika Bangil'),
(499, 'Sekolah Tinggi Ilmu Ekonomi YAI'),
(500, 'Sekolah Tinggi Ilmu Ekonomi YAPAN'),
(501, 'Sekolah Tinggi Ilmu Ekonomi Yapi Bone'),
(502, 'Sekolah Tinggi Ilmu Ekonomi Yapis'),
(503, 'Sekolah Tinggi Ilmu Ekonomi Yapman Majene'),
(504, 'Sekolah Tinggi Ilmu Ekonomi Yapti Jeneponto'),
(505, 'Sekolah Tinggi Ilmu Ekonomi Yasa Anggana'),
(506, 'Sekolah Tinggi Ilmu Ekonomi Yasmi'),
(507, 'Sekolah Tinggi Ilmu Ekonomi Ykp'),
(508, 'Sekolah Tinggi Ilmu Ekonomi YKPN'),
(509, 'Sekolah Tinggi Ilmu Ekonomi YP-Karya'),
(510, 'Sekolah Tinggi Ilmu Ekonomi YPBI'),
(511, 'Sekolah Tinggi Ilmu Ekonomi YPHB'),
(512, 'Sekolah Tinggi Ilmu Ekonomi YPN'),
(513, 'Sekolah Tinggi Ilmu Ekonomi YPPI'),
(514, 'Sekolah Tinggi Ilmu Ekonomi YPUP Makassar'),
(515, 'Sekolah Tinggi Ilmu Farmasi Bhakti Pertiwi'),
(516, 'Sekolah Tinggi Ilmu Farmasi dan  Pengetahuan Alam Pelita Mas Palu'),
(517, 'Sekolah Tinggi Ilmu Farmasi Makassar'),
(518, 'Sekolah Tinggi Ilmu Farmasi Nusaputera'),
(519, 'Sekolah Tinggi Ilmu Farmasi Padang'),
(520, 'Sekolah Tinggi Ilmu Farmasi Riau'),
(521, 'Sekolah Tinggi Ilmu Farmasi Yayasan Pharmasi'),
(522, 'Sekolah Tinggi Ilmu Hukum Al-Banna'),
(523, 'Sekolah Tinggi Ilmu Hukum Amsir'),
(524, 'Sekolah Tinggi Ilmu Hukum Asy-Syafi iyah Medan'),
(525, 'Sekolah Tinggi Ilmu Hukum Awang Long'),
(526, 'Sekolah Tinggi Ilmu Hukum Biak-Papua'),
(527, 'Sekolah Tinggi Ilmu Hukum Bintuni'),
(528, 'Sekolah Tinggi Ilmu Hukum Cendana Wangi'),
(529, 'Sekolah Tinggi Ilmu Hukum Cokroaminoto'),
(530, 'Sekolah Tinggi Ilmu Hukum Damarica Palopo'),
(531, 'Sekolah Tinggi Ilmu Hukum dan HAM'),
(532, 'Sekolah Tinggi Ilmu Hukum dan Politik Palu'),
(533, 'Sekolah Tinggi Ilmu Hukum dan Politik Pelopor Bangsa'),
(534, 'Sekolah Tinggi Ilmu Hukum Deli Sumatera'),
(535, 'Sekolah Tinggi Ilmu Hukum Dharma Andhiga'),
(536, 'Sekolah Tinggi Ilmu Hukum Graha Kirana'),
(537, 'Sekolah Tinggi Ilmu Hukum Gunung Jati'),
(538, 'Sekolah Tinggi Ilmu Hukum Habaring Hurung Sampit'),
(539, 'Sekolah Tinggi Ilmu Hukum IBLAM'),
(540, 'Sekolah Tinggi Ilmu Hukum Jenderal Sudirman'),
(541, 'Sekolah Tinggi Ilmu Hukum Kuala Kapuas'),
(542, 'Sekolah Tinggi Ilmu Hukum Lamaddukelleng'),
(543, 'Sekolah Tinggi Ilmu Hukum Lubuk Sikaping'),
(544, 'Sekolah Tinggi Ilmu Hukum Manokwari'),
(545, 'Sekolah Tinggi Ilmu Hukum Muhammad Thaha Tual'),
(546, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Bima'),
(547, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Kalianda'),
(548, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Kisaran'),
(549, 'Sekolah Tinggi Ilmu Hukum Muhammadiyah Takengon'),
(550, 'Sekolah Tinggi Ilmu Hukum Nias Selatan'),
(551, 'Sekolah Tinggi Ilmu Hukum Padang'),
(552, 'Sekolah Tinggi Ilmu Hukum Painan'),
(553, 'Sekolah Tinggi Ilmu Hukum Pengayoman'),
(554, 'Sekolah Tinggi Ilmu Hukum Persada Bunda'),
(555, 'Sekolah Tinggi Ilmu Hukum Pertiba Pangkalpinang'),
(556, 'Sekolah Tinggi Ilmu Hukum Prof. Dr. Yohanes Usfunan, SH, MH'),
(557, 'Sekolah Tinggi Ilmu Hukum Rahmaniyah'),
(558, 'Sekolah Tinggi Ilmu Hukum Riau'),
(559, 'Sekolah Tinggi Ilmu Hukum Serasan Muara Enim'),
(560, 'Sekolah Tinggi Ilmu Hukum Soelthan M Tsjafioeddin'),
(561, 'Sekolah Tinggi Ilmu Hukum Sultan Adam'),
(562, 'Sekolah Tinggi Ilmu Hukum Sumpah Pemuda'),
(563, 'Sekolah Tinggi Ilmu Hukum Sunan Giri'),
(564, 'Sekolah Tinggi Ilmu Hukum Tambun Bungai'),
(565, 'Sekolah Tinggi Ilmu Hukum Umel Mandiri'),
(566, 'Sekolah Tinggi Ilmu Hukum YPM'),
(567, 'Sekolah Tinggi Ilmu Hukum Zainul Hasan'),
(568, 'Sekolah Tinggi Ilmu Keguruan dan Ilmu Pendidikan Terang Bangsa'),
(569, 'Sekolah Tinggi Ilmu Kehutanan Pante Kulu'),
(570, 'Sekolah Tinggi Ilmu Keperawatan Famika'),
(571, 'Sekolah Tinggi Ilmu Keperawatan PPNI Jawa Barat'),
(572, 'Sekolah Tinggi Ilmu Kesehatan (STIKES) Lenggogeni Padang'),
(573, 'Sekolah Tinggi Ilmu Kesehatan Abdi Nusa'),
(574, 'Sekolah Tinggi Ilmu Kesehatan Abdi Nusantara'),
(575, 'Sekolah Tinggi Ilmu Kesehatan Abdurahman Palembang'),
(576, 'Sekolah Tinggi Ilmu Kesehatan Aisyiyah Bandung'),
(577, 'Sekolah Tinggi Ilmu Kesehatan Aisyiyah Surakarta'),
(578, 'Sekolah Tinggi Ilmu Kesehatan Akbidyo'),
(579, 'Sekolah Tinggi Ilmu Kesehatan Al Ma arif'),
(580, 'Sekolah Tinggi Ilmu Kesehatan Alifah Padang'),
(581, 'Sekolah Tinggi Ilmu Kesehatan Ar-Rum'),
(582, 'Sekolah Tinggi Ilmu Kesehatan Arjuna'),
(583, 'Sekolah Tinggi Ilmu Kesehatan Artha Bodhi Iswara'),
(584, 'Sekolah Tinggi Ilmu Kesehatan Avicenna'),
(585, 'Sekolah Tinggi Ilmu Kesehatan Baiturrahim'),
(586, 'Sekolah Tinggi Ilmu Kesehatan Bakti Tunas Husada'),
(587, 'Sekolah Tinggi Ilmu Kesehatan Bakti Utama Pati'),
(588, 'Sekolah Tinggi Ilmu Kesehatan Bali Wisnu Dharma Denpasar'),
(589, 'Sekolah Tinggi Ilmu Kesehatan Bani Saleh'),
(590, 'Sekolah Tinggi Ilmu Kesehatan Banten'),
(591, 'Sekolah Tinggi Ilmu Kesehatan Baramuli'),
(592, 'Sekolah Tinggi Ilmu Kesehatan Bethesda Yakkum'),
(593, 'Sekolah Tinggi Ilmu Kesehatan Bhakti Kencana'),
(594, 'Sekolah Tinggi Ilmu Kesehatan Bina Bangsa Majene'),
(595, 'Sekolah Tinggi Ilmu Kesehatan Bina Husada'),
(596, 'Sekolah Tinggi Ilmu Kesehatan Bina Putera Banjar'),
(597, 'Sekolah Tinggi Ilmu Kesehatan Binalita Sudama'),
(598, 'Sekolah Tinggi Ilmu Kesehatan Bogor Husada'),
(599, 'Sekolah Tinggi Ilmu Kesehatan Borneo Lestari'),
(600, 'Sekolah Tinggi Ilmu Kesehatan Brebes'),
(601, 'Sekolah Tinggi Ilmu Kesehatan Budhi Luhur Cimahi'),
(602, 'Sekolah Tinggi Ilmu Kesehatan Budi Kemuliaan'),
(603, 'Sekolah Tinggi Ilmu Kesehatan Budi Mulia'),
(604, 'Sekolah Tinggi Ilmu Kesehatan Buleleng'),
(605, 'Sekolah Tinggi Ilmu Kesehatan Cahaya Bangsa'),
(606, 'Sekolah Tinggi Ilmu Kesehatan Cendekia Utama'),
(607, 'Sekolah Tinggi Ilmu Kesehatan Ceria Buana'),
(608, 'Sekolah Tinggi Ilmu Kesehatan Cikarang'),
(609, 'Sekolah Tinggi Ilmu Kesehatan Cirebon'),
(610, 'Sekolah Tinggi Ilmu Kesehatan Datu Kamanre'),
(611, 'Sekolah Tinggi Ilmu Kesehatan Dharma Husada'),
(612, 'Sekolah Tinggi Ilmu Kesehatan Duta Gama Klaten'),
(613, 'Sekolah Tinggi Ilmu Kesehatan Elisabeth Semarang'),
(614, 'Sekolah Tinggi Ilmu Kesehatan Fitrah Aldar'),
(615, 'Sekolah Tinggi Ilmu Kesehatan Flora'),
(616, 'Sekolah Tinggi Ilmu Kesehatan Garut'),
(617, 'Sekolah Tinggi Ilmu Kesehatan Gunung Sari'),
(618, 'Sekolah Tinggi Ilmu Kesehatan Hakli'),
(619, 'Sekolah Tinggi Ilmu Kesehatan Hang Tuah'),
(620, 'Sekolah Tinggi Ilmu Kesehatan Hang Tuah Surabaya'),
(621, 'Sekolah Tinggi Ilmu Kesehatan Har-Kausyar'),
(622, 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa'),
(623, 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa'),
(624, 'Sekolah Tinggi Ilmu Kesehatan Harapan Bangsa Purwokerto'),
(625, 'Sekolah Tinggi Ilmu Kesehatan Harapan Ibu Jambi'),
(626, 'Sekolah Tinggi Ilmu Kesehatan Holistik'),
(627, 'Sekolah Tinggi Ilmu Kesehatan Husada Jombang'),
(628, 'Sekolah Tinggi Ilmu Kesehatan Husada Mandiri Poso'),
(629, 'Sekolah Tinggi Ilmu Kesehatan Immanuel Bandung'),
(630, 'Sekolah Tinggi Ilmu Kesehatan Indah Medan'),
(631, 'Sekolah Tinggi Ilmu Kesehatan Indonesia'),
(632, 'Sekolah Tinggi Ilmu Kesehatan Indonesia Jaya'),
(633, 'Sekolah Tinggi Ilmu Kesehatan Indonesia Maju'),
(634, 'Sekolah Tinggi Ilmu Kesehatan Indramayu'),
(635, 'Sekolah Tinggi Ilmu Kesehatan Intan Martapura'),
(636, 'Sekolah Tinggi Ilmu Kesehatan Istara Nusantara'),
(637, 'Sekolah Tinggi Ilmu Kesehatan Jayakarta'),
(638, 'Sekolah Tinggi Ilmu Kesehatan Jayapura'),
(639, 'Sekolah Tinggi Ilmu Kesehatan Jenderal Achmad Yani'),
(640, 'Sekolah Tinggi Ilmu Kesehatan Karimun'),
(641, 'Sekolah Tinggi Ilmu Kesehatan Karya Kesehatan'),
(642, 'Sekolah Tinggi Ilmu Kesehatan Keluarga Bunda Jambi'),
(643, 'Sekolah Tinggi Ilmu Kesehatan Kendal'),
(644, 'Sekolah Tinggi Ilmu Kesehatan Kendedes'),
(645, 'Sekolah Tinggi Ilmu Kesehatan Kepanjen'),
(646, 'Sekolah Tinggi Ilmu Kesehatan Kesdam IX/Udayana'),
(647, 'Sekolah Tinggi Ilmu Kesehatan Kesehatan Baru'),
(648, 'Sekolah Tinggi Ilmu Kesehatan Khas Kempek'),
(649, 'Sekolah Tinggi Ilmu Kesehatan Kuningan'),
(650, 'Sekolah Tinggi Ilmu Kesehatan Langsa'),
(651, 'Sekolah Tinggi Ilmu Kesehatan Madani Yogyakarta'),
(652, 'Sekolah Tinggi Ilmu Kesehatan Maharani'),
(653, 'Sekolah Tinggi Ilmu Kesehatan Mahardika Cirebon'),
(654, 'Sekolah Tinggi Ilmu Kesehatan Majapahit'),
(655, 'Sekolah Tinggi Ilmu Kesehatan Makariwo Halmahera'),
(656, 'Sekolah Tinggi Ilmu Kesehatan Makassar'),
(657, 'Sekolah Tinggi Ilmu Kesehatan Mandala Waluya Kendari'),
(658, 'Sekolah Tinggi Ilmu Kesehatan Mataram'),
(659, 'Sekolah Tinggi Ilmu Kesehatan Medistra Indonesia'),
(660, 'Sekolah Tinggi Ilmu Kesehatan Mega Rezky'),
(661, 'Sekolah Tinggi Ilmu Kesehatan Merangin'),
(662, 'Sekolah Tinggi Ilmu Kesehatan Mitra Adiguna'),
(663, 'Sekolah Tinggi Ilmu Kesehatan Mitra Husada Medan'),
(664, 'Sekolah Tinggi Ilmu Kesehatan Mitra Keluarga'),
(665, 'Sekolah Tinggi Ilmu Kesehatan Mitra Kencana'),
(666, 'Sekolah Tinggi Ilmu Kesehatan Mitra Lampung'),
(667, 'Sekolah Tinggi Ilmu Kesehatan Mitra Ria Husada'),
(668, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Aceh'),
(669, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Gombong'),
(670, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Kendal'),
(671, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Manado'),
(672, 'Sekolah Tinggi Ilmu Kesehatan Muhammadiyah Wonosobo'),
(673, 'Sekolah Tinggi Ilmu Kesehatan Mutiara Mahakam Samarinda'),
(674, 'Sekolah Tinggi Ilmu Kesehatan Nani Hasanuddin'),
(675, 'Sekolah Tinggi Ilmu Kesehatan Nasional'),
(676, 'Sekolah Tinggi Ilmu Kesehatan Nazhatut Thullab Sampang'),
(677, 'Sekolah Tinggi Ilmu Kesehatan Ngudia Husada Madura'),
(678, 'Sekolah Tinggi Ilmu Kesehatan Notokusumo Yogyakarta'),
(679, 'Sekolah Tinggi Ilmu Kesehatan Nusantara'),
(680, 'Sekolah Tinggi Ilmu Kesehatan Pamentas'),
(681, 'Sekolah Tinggi Ilmu Kesehatan Panca Bhakti'),
(682, 'Sekolah Tinggi Ilmu Kesehatan Panrita Husada'),
(683, 'Sekolah Tinggi Ilmu Kesehatan Panti Rapih Yogyakarta'),
(684, 'Sekolah Tinggi Ilmu Kesehatan Panti Wilasa'),
(685, 'Sekolah Tinggi Ilmu Kesehatan Papua'),
(686, 'Sekolah Tinggi Ilmu Kesehatan Payung Negeri'),
(687, 'Sekolah Tinggi Ilmu Kesehatan Pelamonia Kesdam VII Wirabuana'),
(688, 'Sekolah Tinggi Ilmu Kesehatan Pemkab Jombang'),
(689, 'Sekolah Tinggi Ilmu Kesehatan Permata Nusantara'),
(690, 'Sekolah Tinggi Ilmu Kesehatan Persada Nabire'),
(691, 'Sekolah Tinggi Ilmu Kesehatan Pertamedika'),
(692, 'Sekolah Tinggi Ilmu Kesehatan Rajawali'),
(693, 'Sekolah Tinggi Ilmu Kesehatan Rajekwesi Bojonegoro'),
(694, 'Sekolah Tinggi Ilmu Kesehatan Respati'),
(695, 'Sekolah Tinggi Ilmu Kesehatan RS Haji Medan'),
(696, 'Sekolah Tinggi Ilmu Kesehatan RS Husada'),
(697, 'Sekolah Tinggi Ilmu Kesehatan Salewangang Maros'),
(698, 'Sekolah Tinggi Ilmu Kesehatan Salsabila Serang'),
(699, 'Sekolah Tinggi Ilmu Kesehatan Samarinda'),
(700, 'Sekolah Tinggi Ilmu Kesehatan Sambas'),
(701, 'Sekolah Tinggi Ilmu Kesehatan Santo Borromeus'),
(702, 'Sekolah Tinggi Ilmu Kesehatan Sapta Bakti'),
(703, 'Sekolah Tinggi Ilmu Kesehatan Sehat Medan'),
(704, 'Sekolah Tinggi Ilmu Kesehatan Serulingmas'),
(705, 'Sekolah Tinggi Ilmu Kesehatan Sint Carolus'),
(706, 'Sekolah Tinggi Ilmu Kesehatan Sismadi'),
(707, 'Sekolah Tinggi Ilmu Kesehatan Siti Khadijah'),
(708, 'Sekolah Tinggi Ilmu Kesehatan St Fatimah'),
(709, 'Sekolah Tinggi Ilmu Kesehatan Stella Maris Makasar'),
(710, 'Sekolah Tinggi Ilmu Kesehatan Sukabumi'),
(711, 'Sekolah Tinggi Ilmu Kesehatan Sumatera Barat'),
(712, 'Sekolah Tinggi Ilmu Kesehatan Surabaya'),
(713, 'Sekolah Tinggi Ilmu Kesehatan Surifatri Kotamobagu'),
(714, 'Sekolah Tinggi Ilmu Kesehatan Surya Global'),
(715, 'Sekolah Tinggi Ilmu Kesehatan Syedza Saintika'),
(716, 'Sekolah Tinggi Ilmu Kesehatan Tamalatea Makassar'),
(717, 'Sekolah Tinggi Ilmu Kesehatan Tana Toraja'),
(718, 'Sekolah Tinggi Ilmu Kesehatan Tarumanagara'),
(719, 'Sekolah Tinggi Ilmu Kesehatan Trinita'),
(720, 'Sekolah Tinggi Ilmu Kesehatan Tujuh Belas'),
(721, 'Sekolah Tinggi Ilmu Kesehatan Uniska'),
(722, 'Sekolah Tinggi Ilmu Kesehatan Widya Husada Semarang'),
(723, 'Sekolah Tinggi Ilmu Kesehatan Widya Nusantara Palu'),
(724, 'Sekolah Tinggi Ilmu Kesehatan William Booth'),
(725, 'Sekolah Tinggi Ilmu Kesehatan Wira Husada'),
(726, 'Sekolah Tinggi Ilmu Kesehatan Yapika'),
(727, 'Sekolah Tinggi Ilmu Kesehatan Yatsi'),
(728, 'Sekolah Tinggi Ilmu Kesehatan YLPP Purwokerto'),
(729, 'Sekolah Tinggi Ilmu Kesehatan YPAK Padang'),
(730, 'Sekolah Tinggi Ilmu Kesehatan YPIB'),
(731, 'Sekolah Tinggi Ilmu Kesejahteraan Sosial Manado'),
(732, 'Sekolah Tinggi Ilmu Komputer 22 Januari Kendari'),
(733, 'Sekolah Tinggi Ilmu Komputer Al-khairiyah'),
(734, 'Sekolah Tinggi Ilmu Komputer Ambon'),
(735, 'Sekolah Tinggi Ilmu Komputer Binaniaga'),
(736, 'Sekolah Tinggi Ilmu Komputer Dinamika Bangsa'),
(737, 'Sekolah Tinggi Ilmu Komputer El Rahma'),
(738, 'Sekolah Tinggi Ilmu Komputer Medan'),
(739, 'Sekolah Tinggi Ilmu Komputer Muhammadiyah Batam'),
(740, 'Sekolah Tinggi Ilmu Komputer PGRI Banyuwangi'),
(741, 'Sekolah Tinggi Ilmu Komputer Poltek Cirebon'),
(742, 'Sekolah Tinggi Ilmu Komputer Rajawali'),
(743, 'Sekolah Tinggi Ilmu Komputer Yos Sudarso'),
(744, 'Sekolah Tinggi Ilmu Komunikasi'),
(745, 'Sekolah Tinggi Ilmu Komunikasi Aws'),
(746, 'Sekolah Tinggi Ilmu Komunikasi Bandung'),
(747, 'Sekolah Tinggi Ilmu Komunikasi Indonesia Maju'),
(748, 'Sekolah Tinggi Ilmu Komunikasi Inter Studi'),
(749, 'Sekolah Tinggi Ilmu Komunikasi ITKP'),
(750, 'Sekolah Tinggi Ilmu Komunikasi Mahakam'),
(751, 'Sekolah Tinggi Ilmu Komunikasi Manado'),
(752, 'Sekolah Tinggi Ilmu Komunikasi Pembangunan'),
(753, 'Sekolah Tinggi Ilmu Komunikasi Profesi Indonesia'),
(754, 'Sekolah Tinggi Ilmu Komunikasi Wangsa Jaya'),
(755, 'Sekolah Tinggi Ilmu Komunikasi Yogyakarta'),
(756, 'Sekolah Tinggi Ilmu Manajemen'),
(757, 'Sekolah Tinggi Ilmu Manajemen Budi Bakti'),
(758, 'Sekolah Tinggi Ilmu Manajemen dan Ilmu Komputer ESQ'),
(759, 'Sekolah Tinggi Ilmu Manajemen Indonesia Handayani'),
(760, 'Sekolah Tinggi Ilmu Manajemen Indonesia Meulaboh'),
(761, 'Sekolah Tinggi Ilmu Manajemen Indonesia YAPMI'),
(762, 'Sekolah Tinggi Ilmu Manajemen Informatika & Teknik Komputer Agamua Wamena Papua'),
(763, 'Sekolah Tinggi Ilmu Manajemen Kupang'),
(764, 'Sekolah Tinggi Ilmu Manajemen Pase'),
(765, 'Sekolah Tinggi Ilmu Manajemen Publik Makassar'),
(766, 'Sekolah Tinggi Ilmu Manajemen Saint Mary'),
(767, 'Sekolah Tinggi Ilmu Manajemen Shanti Bhuana'),
(768, 'Sekolah Tinggi Ilmu Manajemen Sukma'),
(769, 'Sekolah Tinggi Ilmu Manajemen Yapim Maros'),
(770, 'Sekolah Tinggi Ilmu Manajemen YKPN'),
(771, 'Sekolah Tinggi Ilmu Maritim Ami'),
(772, 'Sekolah Tinggi Ilmu Maritim Indonesia Ternate'),
(773, 'Sekolah Tinggi Ilmu Maritim Makassar'),
(774, 'Sekolah Tinggi Ilmu Maritim Mutiara Jaya'),
(775, 'Sekolah Tinggi Ilmu Pariwisata Manado'),
(776, 'Sekolah Tinggi Ilmu Pemerintahan Abdi Negara'),
(777, 'Sekolah Tinggi Ilmu Pendidikan Bunga Bangsa'),
(778, 'Sekolah Tinggi Ilmu Perikanan Kalinyamat'),
(779, 'Sekolah Tinggi Ilmu Perikanan Malang'),
(780, 'Sekolah Tinggi Ilmu Pertanian'),
(781, 'Sekolah Tinggi Ilmu Pertanian Amuntai'),
(782, 'Sekolah Tinggi Ilmu Pertanian Belitang'),
(783, 'Sekolah Tinggi Ilmu Pertanian Berau'),
(784, 'Sekolah Tinggi Ilmu Pertanian Dharma Wacana'),
(785, 'Sekolah Tinggi Ilmu Pertanian Farming'),
(786, 'Sekolah Tinggi Ilmu Pertanian Kendari'),
(787, 'Sekolah Tinggi Ilmu Pertanian Muhammadiyah Sinjai'),
(788, 'Sekolah Tinggi Ilmu Pertanian Mujahidin Toli-toli'),
(789, 'Sekolah Tinggi Ilmu Pertanian Petra Baliem Wamena'),
(790, 'Sekolah Tinggi Ilmu Pertanian Sriwigama'),
(791, 'Sekolah Tinggi Ilmu Pertanian Surya Dharma'),
(792, 'Sekolah Tinggi Ilmu Pertanian Wuna Raha'),
(793, 'Sekolah Tinggi Ilmu Pertanian Yapi Bone'),
(794, 'Sekolah Tinggi Ilmu Pertanian Yapim Maros'),
(795, 'Sekolah Tinggi Ilmu Pertanian Yashafa'),
(796, 'Sekolah Tinggi Ilmu Psikologi Harapan Bangsa'),
(797, 'Sekolah Tinggi Ilmu Sosial Dan Ilmu Politik Bekasi'),
(798, 'Sekolah Tinggi Ilmu Sosial Dan Politik Fajar Timur'),
(799, 'Sekolah Tinggi Ilmu Sosial Dan Politik Mbojo'),
(800, 'Sekolah Tinggi Ilmu Sosial Ilmu Politik Kebangsaan'),
(801, 'Sekolah Tinggi Ilmu Sosial Politik Wira Bhakti'),
(802, 'Sekolah Tinggi Ilmu Teknik Bina Putra'),
(803, 'Sekolah Tinggi Ilmu Teknik Prabumulih'),
(804, 'Sekolah Tinggi Ilmu Teknik Serasan'),
(805, 'Sekolah Tinggi Ilmu Teknik Trisula'),
(806, 'Sekolah Tinggi Ilmu-Ilmu Sosial (STIS) Tual'),
(807, 'Sekolah Tinggi Informatika Komputer Artha Buana'),
(808, 'Sekolah Tinggi Internasional Konservatori Musik Indonesia'),
(809, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Al Maksum'),
(810, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Al-Amin Indramayu'),
(811, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Amal Bakti'),
(812, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Biak'),
(813, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Bina Mutiara'),
(814, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Citra Bakti'),
(815, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Invada Cirebon'),
(816, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Kumala Lampung'),
(817, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Media Nusantara Citra'),
(818, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Melawi'),
(819, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Meranti'),
(820, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Muhammadiyah Batang'),
(821, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Muhammadiyah OKU Timur'),
(822, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Nuuwar'),
(823, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Padang Lawas'),
(824, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Pasundan'),
(825, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan PGRI Papua'),
(826, 'sekolah Tinggi Keguruan dan Ilmu Pendidikan Rosalia Lampung'),
(827, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Saumlaki'),
(828, 'Sekolah Tinggi Keguruan dan Ilmu Pendidikan Surya Kasih'),
(829, 'Sekolah Tinggi Kepemerintahan dan Kebijakan Publik'),
(830, 'Sekolah Tinggi Kesehatan Bina Cipta Husada'),
(831, 'Sekolah Tinggi Kesehatan Indonesia Wirautama'),
(832, 'Sekolah Tinggi Kesenian Wilwatikta'),
(833, 'Sekolah Tinggi Kewirausahaan Selamat Pagi Indonesia'),
(834, 'Sekolah Tinggi Manajemen Asuransi Trisakti'),
(835, 'Sekolah Tinggi Manajemen dan Ilmu Komputer Umel Mandiri'),
(836, 'Sekolah Tinggi Manajemen Immi'),
(837, 'Sekolah Tinggi Manajemen Informatika dan Komputer AMIKOM Surakarta'),
(838, 'Sekolah Tinggi Manajemen Informatika dan Komputer Bina Adinata'),
(839, 'Sekolah Tinggi Manajemen Informatika dan Komputer Gici'),
(840, 'Sekolah Tinggi Manajemen Informatika dan Komputer Harapan Ibu'),
(841, 'Sekolah Tinggi Manajemen Informatika dan Komputer Ichsan Gorontalo'),
(842, 'Sekolah Tinggi Manajemen Informatika dan Komputer Indo Daya Suvana'),
(843, 'Sekolah Tinggi Manajemen Informatika dan Komputer Jakarta STI&K'),
(844, 'Sekolah Tinggi Manajemen Informatika dan Komputer Kalirejo Lampung'),
(845, 'Sekolah Tinggi Manajemen Informatika dan Komputer Komputama Majenang'),
(846, 'Sekolah Tinggi Manajemen Informatika dan Komputer Lembah Dempo'),
(847, 'Sekolah Tinggi Manajemen Informatika dan Komputer Nusa Mandiri'),
(848, 'Sekolah Tinggi Manajemen Informatika dan Komputer Pesat Nabire'),
(849, 'Sekolah Tinggi Manajemen Informatika dan Komputer Royal'),
(850, 'Sekolah Tinggi Manajemen Informatika dan Komputer STIKOM Indonesia'),
(851, 'Sekolah Tinggi Manajemen Informatika Komputer Lamappapoleonro Soppeng'),
(852, 'Sekolah Tinggi Manajemen Informatika Komputer Mataram'),
(853, 'Sekolah Tinggi Manajemen Informatika Komputer Stella Maris Sumba'),
(854, 'Sekolah Tinggi Manajemen Informatika Komputer Uyelindo Kupang'),
(855, 'Sekolah Tinggi Manajemen Ipmi'),
(856, 'Sekolah Tinggi Manajemen Labora'),
(857, 'Sekolah Tinggi Manajemen Logistik Indonesia'),
(858, 'Sekolah Tinggi Manajemen Ppm'),
(859, 'Sekolah Tinggi Manajemen Risiko Dan Asuransi'),
(860, 'Sekolah Tinggi Manajemen Taman Pendidikan 45'),
(861, 'Sekolah Tinggi Manajemen Transportasi Malahayati'),
(862, 'Sekolah Tinggi Maritim Dan Transpor AMNI'),
(863, 'Sekolah Tinggi Maritim Yogyakarta'),
(864, 'Sekolah Tinggi Matematika & Ilmu Pengetahuan Alam'),
(865, 'Sekolah Tinggi Media Komunikasi Trisakti'),
(866, 'Sekolah Tinggi Olahraga Dan Kesehatan Bina Guna'),
(867, 'Sekolah Tinggi Pariwisata  Soromandi Bima'),
(868, 'Sekolah Tinggi Pariwisata Ambarrukmo Yogyakarta'),
(869, 'Sekolah Tinggi Pariwisata Ampta Yogyakarta'),
(870, 'Sekolah Tinggi Pariwisata Ars Internasional'),
(871, 'Sekolah Tinggi Pariwisata Bali Internasional'),
(872, 'Sekolah Tinggi Pariwisata Bogor'),
(873, 'Sekolah Tinggi Pariwisata Mataram'),
(874, 'Sekolah Tinggi Pariwisata Riau'),
(875, 'Sekolah Tinggi Pariwisata Sahid'),
(876, 'Sekolah Tinggi Pariwisata Sahid Surakarta'),
(877, 'Sekolah Tinggi Pariwisata Satya Widya'),
(878, 'Sekolah Tinggi Pariwisata Tamalatea Makassar'),
(879, 'Sekolah Tinggi Pariwisata Triatma Jaya'),
(880, 'Sekolah Tinggi Pariwisata Trisakti'),
(881, 'Sekolah Tinggi Pembangunan Masyarakat Desa APMD'),
(882, 'Sekolah Tinggi Pembangunan Masyarakat Santa Ursula'),
(883, 'Sekolah Tinggi Pendidikan Holistik Berbasis Karekter'),
(884, 'Sekolah Tinggi Penerbangan Aviasi'),
(885, 'Sekolah Tinggi Perikanan dan Kelautan Matauli'),
(886, 'Sekolah Tinggi Perikanan Dan Kelautan Palu'),
(887, 'Sekolah Tinggi Perikanan Hatta-sjahrir'),
(888, 'Sekolah Tinggi Perikanan Sibolga'),
(889, 'Sekolah Tinggi Perkebunan Lampung'),
(890, 'Sekolah Tinggi Perpajakan Indonesia'),
(891, 'Sekolah Tinggi Pertanian Flores Bajawa'),
(892, 'Sekolah Tinggi Pertanian Haji Agus Salim'),
(893, 'Sekolah Tinggi Pertanian Kewirausahaan Banau'),
(894, 'Sekolah Tinggi Pertanian Kutai Timur'),
(895, 'Sekolah Tinggi Pertanian Labuha'),
(896, 'Sekolah Tinggi Pertanian Panca Bhakti'),
(897, 'Sekolah Tinggi Psikologi Yogyakarta'),
(898, 'Sekolah Tinggi Seni Musik Bandung'),
(899, 'Sekolah Tinggi Seni Rupa Dan Desain Visi Indonesia'),
(900, 'Sekolah Tinggi Sosial Politik Waskita Darma'),
(901, 'Sekolah Tinggi Teknik Atlas Nusantara'),
(902, 'Sekolah Tinggi Teknik Baramuli'),
(903, 'Sekolah Tinggi Teknik Bima'),
(904, 'Sekolah Tinggi Teknik Bina Cendikia'),
(905, 'Sekolah Tinggi Teknik Industri Turen'),
(906, 'Sekolah Tinggi Teknik Iskandar Thani'),
(907, 'Sekolah Tinggi Teknik Karawang'),
(908, 'Sekolah Tinggi Teknik Lingkungan Mataram'),
(909, 'Sekolah Tinggi Teknik Malang'),
(910, 'Sekolah Tinggi Teknik Multimedia Cendikia Abditama'),
(911, 'Sekolah Tinggi Teknik Nusantara Mandiri'),
(912, 'Sekolah Tinggi Teknik Pati'),
(913, 'Sekolah Tinggi Teknik Surabaya'),
(914, 'Sekolah Tinggi Teknik Wiworotomo'),
(915, 'Sekolah Tinggi Teknik YPLN'),
(916, 'Sekolah Tinggi Teknologi \"Warga\" Surakarta'),
(917, 'Sekolah Tinggi Teknologi Adisutjipto'),
(918, 'Sekolah Tinggi Teknologi Bandung'),
(919, 'Sekolah Tinggi Teknologi Banten'),
(920, 'Sekolah Tinggi Teknologi Bengkulu'),
(921, 'Sekolah Tinggi Teknologi Bina Tunggal'),
(922, 'Sekolah Tinggi Teknologi Bontang'),
(923, 'Sekolah Tinggi Teknologi Cahaya Surya'),
(924, 'Sekolah Tinggi Teknologi Cipasung'),
(925, 'Sekolah Tinggi Teknologi Cirebon'),
(926, 'Sekolah Tinggi Teknologi Dr Kh Ez Muttaqien'),
(927, 'Sekolah Tinggi Teknologi Dumai'),
(928, 'Sekolah Tinggi Teknologi Duta Bangsa'),
(929, 'Sekolah Tinggi Teknologi Fatahillah Cilegon'),
(930, 'Sekolah Tinggi Teknologi Garut'),
(931, 'Sekolah Tinggi Teknologi Gempol'),
(932, 'Sekolah Tinggi Teknologi Ilmu Komputer (STTIKOM) Insan Unggul'),
(933, 'Sekolah Tinggi Teknologi Immanuel'),
(934, 'Sekolah Tinggi Teknologi Indonesia'),
(935, 'Sekolah Tinggi Teknologi Indonesia Tanjung Pinang'),
(936, 'Sekolah Tinggi Teknologi Indragiri'),
(937, 'Sekolah Tinggi Teknologi Industri Bontang'),
(938, 'Sekolah Tinggi Teknologi Industri dan Farmasi Bogor'),
(939, 'Sekolah Tinggi Teknologi Industri Padang'),
(940, 'Sekolah Tinggi Teknologi Informasi NIIT'),
(941, 'Sekolah Tinggi Teknologi Informatika Sony Sugema'),
(942, 'Sekolah Tinggi Teknologi Jakarta'),
(943, 'Sekolah Tinggi Teknologi Jawa Barat'),
(944, 'Sekolah Tinggi Teknologi Kedirgantaraan'),
(945, 'Sekolah Tinggi Teknologi Kelautan'),
(946, 'Sekolah Tinggi Teknologi Mandala'),
(947, 'Sekolah Tinggi Teknologi Mekongga'),
(948, 'Sekolah Tinggi Teknologi Migas'),
(949, 'Sekolah Tinggi Teknologi Mineral Indonesia'),
(950, 'Sekolah Tinggi Teknologi Muhammadiyah AR Fachruddin'),
(951, 'Sekolah Tinggi Teknologi Muhammadiyah Cileungsi'),
(952, 'Sekolah Tinggi Teknologi Muhammadiyah Kebumen'),
(953, 'Sekolah Tinggi Teknologi Mutu Muhammadiyah'),
(954, 'Sekolah Tinggi Teknologi Nasional'),
(955, 'Sekolah Tinggi Teknologi Nusantara Indonesia'),
(956, 'Sekolah Tinggi Teknologi Nusantara Lampung'),
(957, 'Sekolah Tinggi Teknologi Pagaralam'),
(958, 'Sekolah Tinggi Teknologi Payakumbuh'),
(959, 'Sekolah Tinggi Teknologi Pekanbaru'),
(960, 'Sekolah Tinggi Teknologi Pelalawan'),
(961, 'Sekolah Tinggi Teknologi Pomosda'),
(962, 'Sekolah Tinggi Teknologi Pratama Adi'),
(963, 'Sekolah Tinggi Teknologi Ronggolawe'),
(964, 'Sekolah Tinggi Teknologi Sapta Taruna'),
(965, 'Sekolah Tinggi Teknologi Sinar Husni'),
(966, 'Sekolah Tinggi Teknologi Stikma Internasional'),
(967, 'Sekolah Tinggi Teknologi Terpadu Nurul Fikri'),
(968, 'Sekolah Tinggi Teknologi Texmaco'),
(969, 'Sekolah Tinggi Teknologi Wastukancana'),
(970, 'Sekolah Tinggi Teknologi YBS Internasional'),
(971, 'Sekolah Tinggi Teknologi Yupentek'),
(972, 'Sekolah Tinggi Theologia Intim Makassar'),
(973, 'St Ilmu Komputer Cipta Karya Informatika'),
(974, 'STBA Haji Agus Salim'),
(975, 'Stba Persahabatan Internasional Asia'),
(976, 'STFT Gki Izaak Samuel Kijne Jayapura'),
(977, 'STIA & Pemerintahan Annisa Dwi Salfarizi'),
(978, 'STIA Abdul Azis Kataloka'),
(979, 'STIA Asuh Mitra Solo'),
(980, 'STIA Bala Putra Dewa'),
(981, 'STIA Bina Banua Banjarmasin'),
(982, 'STIA Bina Nusantara Mandiri Pariaman'),
(983, 'STIA Dan Manajemen Kepelabuhan Barunawati'),
(984, 'STIA Indragiri'),
(985, 'STIA Nusantara Sakti Sungai Penuh'),
(986, 'STIE Akuntansi Dan Bisnis Internasional'),
(987, 'STIE Bakti Bangsa'),
(988, 'STIE Bali Internasional Institute of Tourism Management'),
(989, 'STIE Bumi Persada Lhokseumawe'),
(990, 'STIE Dharma Negara'),
(991, 'STIE Graha Karya Muara Bulian'),
(992, 'STIE Harapan Duri'),
(993, 'STIE IBEK Pangkalpinang Bangka'),
(994, 'STIE IBMI Medan'),
(995, 'STIE Indonesia Banking School'),
(996, 'STIE ISM'),
(997, 'STIE Jakarta International College'),
(998, 'STIE Madani Balikpapan'),
(999, 'STIE Mahaputra Riau'),
(1000, 'STIE Manajemen Bisnis Indonesia'),
(1001, 'STIE Mikroskil'),
(1002, 'STIE Muhammadiyah Paciran Lamongan'),
(1003, 'STIE Muhammadiyah Tanjung Redeb'),
(1004, 'STIE Multi Data Palembang'),
(1005, 'STIE Nagoya Indonesia'),
(1006, 'STIE Nias Selatan'),
(1007, 'STIE Nobel Indonesia Makassar'),
(1008, 'STIE Ottow & Geissler Fak-fak'),
(1009, 'STIE Pariwisata Internasional'),
(1010, 'STIE Pasim Sukabumi'),
(1011, 'STIE Pembangunan Tanjungpinang'),
(1012, 'STIE Pengembangan Bisnis Dan Manajemen'),
(1013, 'STIE Prakarti Mulya');
INSERT INTO `master_universitas` (`id_universitas`, `nama_universitas`) VALUES
(1014, 'STIE Professional Manajemen College Indonesia'),
(1015, 'STIE Saint Theresa'),
(1016, 'STIE Trinitas Sorong'),
(1017, 'STIE Unisadhuguna'),
(1018, 'STIE Widyaswara Indonesia'),
(1019, 'STIE YA Bangko'),
(1020, 'STIE YBPK Palangka Raya'),
(1021, 'STIEB Perdana Mandiri'),
(1022, 'STIH Indonesia Jentera'),
(1023, 'STIH Litigasi'),
(1024, 'STIH Putri Maharaja'),
(1025, 'STIK Imanuel Indonesia'),
(1026, 'STIK Muhammadiyah Pontianak'),
(1027, 'STIKES  Al Irsyad Al Islamiyyah Cilacap'),
(1028, 'STIKES Adi Husada'),
(1029, 'STIKES Adila'),
(1030, 'STIKES Advaita Medika Tabanan'),
(1031, 'STIKES Aisyiyah Palembang'),
(1032, 'STIKES Al-Insyirah Pekanbaru'),
(1033, 'STIKES AL-Islam Yogyakarta'),
(1034, 'STIKES Amanah Makassar'),
(1035, 'STIKES An Nasher Cirebon'),
(1036, 'STIKES Andini Persada'),
(1037, 'STIKES Arrahma Mandiri Indonesia'),
(1038, 'STIKES As Syifa'),
(1039, 'STIKES Assyifa Aceh'),
(1040, 'STIKES Awal Bros Batam'),
(1041, 'STIKES Awal Bros Pekanbaru'),
(1042, 'STIKES Bahrul Ulum Jombang'),
(1043, 'STIKES Bakti Nusantara Gorontalo'),
(1044, 'STIKES Banyuwangi'),
(1045, 'STIKES Bataraguru Soroaka'),
(1046, 'STIKES Bhakti Al-Qodiri'),
(1047, 'STIKES Bhakti Husada Bengkulu'),
(1048, 'STIKES Bhakti Husada Mulia'),
(1049, 'STIKES Bhakti Mandala Husada Slawi'),
(1050, 'STIKES Bhakti Mulia'),
(1051, 'STIKES Bhakti Pertiwi Indonesia'),
(1052, 'STIKES Bhakti Pertiwi Luwu Raya'),
(1053, 'STIKES Bina Generasi Polewali Mandar'),
(1054, 'STIKES Bina Permata Medika'),
(1055, 'STIKES Bina Sehat PPNI Mojokerto'),
(1056, 'STIKES Bina Usada Bali'),
(1057, 'STIKES Borneo Cendekia Medika'),
(1058, 'STIKES Buana Husada Ponorogo'),
(1059, 'STIKES Bumi Persada Lhokseumawe'),
(1060, 'STIKES Bustanul Ulum Langsa'),
(1061, 'STIKES Citra Delima Bangka Belitung'),
(1062, 'STIKES Cut Nyak Dhien Langsa'),
(1063, 'STIKES Darmais Padangsidimpuan'),
(1064, 'STIKES Darul Azhar Batulicin'),
(1065, 'STIKES Darussalam Lhokseumawe'),
(1066, 'STIKES Dharma Landbouw'),
(1067, 'STIKES Dian Husada'),
(1068, 'STIKES Dirgahayu Samarinda'),
(1069, 'STIKES Dr. Soebandi Jember'),
(1070, 'STIKES Eka Harap'),
(1071, 'STIKES Estu Utomo'),
(1072, 'STIKES Faathir Husada'),
(1073, 'STIKES Ganesha Husada Kediri'),
(1074, 'STIKES Gema Insan Akademik'),
(1075, 'STIKES Getsempena Lhoksukon'),
(1076, 'STIKES Graha Edukasi'),
(1077, 'STIKES Graha Medika'),
(1078, 'STIKES Griya Husada Sumbawa'),
(1079, 'STIKES Guna Bangsa Yogyakarta'),
(1080, 'STIKES Hafshawaty Pesantren Zainul Hasan'),
(1081, 'STIKES Hamzar Memben Lombok Timur'),
(1082, 'STIKES Hang Tuah Tanjung Pinang'),
(1083, 'STIKES Husada Borneo'),
(1084, 'STIKES Hutama Abdi Husada Tulungagung'),
(1085, 'STIKES Ibnu Sina Ajibarang'),
(1086, 'STIKES Ichsan Medical Centre Bintaro'),
(1087, 'STIKES Insan Cendekia Husada Bojonegoro'),
(1088, 'STIKES Insan Cendekia Medika Jombang'),
(1089, 'STIKES IST Buton'),
(1090, 'STIKES Kapuas Raya'),
(1091, 'STIKES Karsa Husada Garut'),
(1092, 'STIKES Karya Husada Kediri'),
(1093, 'STIKES Karya Husada Semarang'),
(1094, 'STIKES Karya Putra Bangsa Tulungagung'),
(1095, 'STIKES Katolik St Vincentius A Paulo Surabaya'),
(1096, 'STIKES Kesetiakawanan Sosial Indonesia'),
(1097, 'STIKES Kharisma Karawang'),
(1098, 'STIKES Kharisma Persada'),
(1099, 'STIKES Kurnia Jaya Persada'),
(1100, 'STIKES Kusuma Bangsa'),
(1101, 'STIKES Lakipadada'),
(1102, 'STIKES Maluku Husada'),
(1103, 'STIKES Mamba ul Ulum Surakarta'),
(1104, 'STIKES Maranatha Kupang'),
(1105, 'STIKES Marendeng Majene'),
(1106, 'STIKES Medika Nurul Islam'),
(1107, 'STIKES Medika Seramoe Barat'),
(1108, 'STIKES Medika Teuku Umar'),
(1109, 'STIKES Mega Buana Palopo'),
(1110, 'STIKES Mercubaktijaya Padang'),
(1111, 'STIKES Mitra Bunda Persada'),
(1112, 'STIKES Mitra Husada Karanganyar'),
(1113, 'STIKES Muhammadiyah Bojonegoro'),
(1114, 'STIKES Muhammadiyah Ciamis'),
(1115, 'STIKES Muhammadiyah Cirebon'),
(1116, 'STIKES Muhammadiyah Klaten'),
(1117, 'STIKES Muhammadiyah Kuningan'),
(1118, 'STIKES Muhammadiyah Lamongan'),
(1119, 'STIKES Muhammadiyah Lhokseumawe'),
(1120, 'STIKES Muhammadiyah Palembang'),
(1121, 'STIKES Muhammadiyah Sidrap'),
(1122, 'STIKES Muhammadiyah Tegal'),
(1123, 'STIKES Murni Teguh'),
(1124, 'STIKES Nahdlatul Ulama Tuban'),
(1125, 'STIKES Namira Madina'),
(1126, 'STIKES Nan Tongga'),
(1127, 'STIKES Nauli Husada'),
(1128, 'STIKES Nurliana Medan'),
(1129, 'STIKES Nurul Hasanah Kutacane'),
(1130, 'STIKES Nusantara Jaya'),
(1131, 'STIKES Nusantara Lasinrang'),
(1132, 'STIKES Pamenang'),
(1133, 'STIKES Panakkukang'),
(1134, 'STIKES Panca Atma Jaya'),
(1135, 'STIKES Panti Waluya Malang'),
(1136, 'STIKES Pasapua Ambon'),
(1137, 'STIKES Patria Husada'),
(1138, 'STIKES Payung Negeri Aceh Darussalam'),
(1139, 'STIKES Pekanbaru Medical Center'),
(1140, 'STIKES Pelita Ibu'),
(1141, 'STIKES Pembina Palembang'),
(1142, 'STIKES Perintis Padang'),
(1143, 'STIKES Persada Husada Indonesia'),
(1144, 'STIKES Piala Sakti Pariaman'),
(1145, 'STIKES Prima Indonesia'),
(1146, 'STIKES Putra Abadi Langkat'),
(1147, 'STIKES Raflesia'),
(1148, 'STIKES Rana Wijaya'),
(1149, 'STIKES Ranah Minang'),
(1150, 'STIKES RS Baptis Kediri'),
(1151, 'STIKES RSU Daya Makassar'),
(1152, 'STIKES Rumah Sakit Anwar Medika'),
(1153, 'STIKES Sakinah Husada Tanjung Balai'),
(1154, 'STIKES Santa Elisabeth Medan'),
(1155, 'STIKES Satria Bhakti Nganjuk'),
(1156, 'STIKES Sebelas April Sumedang'),
(1157, 'STIKES Senior Medan'),
(1158, 'STIKES Shinta Jaya Mamuju'),
(1159, 'STIKES Siti Hajar'),
(1160, 'STIKES Suaka Insan'),
(1161, 'STIKES Surya Mitra Husada'),
(1162, 'STIKES Syuhada di Padangsidimpuan'),
(1163, 'STIKES Tanawali Takalar'),
(1164, 'STIKES Telogorejo Semarang'),
(1165, 'STIKES Tengku Maharatu'),
(1166, 'STIKES Tri Mandiri Sakti Bengkulu'),
(1167, 'STIKES Widya Cipta Husada'),
(1168, 'STIKES Widya Dharma Husada Tangerang'),
(1169, 'STIKES Widya Husada Medan'),
(1170, 'STIKES Widyagama Husada Malang'),
(1171, 'STIKES Wijaya Husada Bogor'),
(1172, 'STIKES Wira Medika Bali'),
(1173, 'STIKES Wiyata Husada Samarinda'),
(1174, 'STIKES Yahya Bima'),
(1175, 'STIKES Yarsi Mataram'),
(1176, 'STIKES Yarsi Pontianak'),
(1177, 'STIKES Yarsi Sumatera Barat'),
(1178, 'STIKES Yayasan RS. Dr. Soetomo'),
(1179, 'STIKES Yogyakarta'),
(1180, 'STIKESMAS Abdi Nusa'),
(1181, 'STIKESMAS Nusantara'),
(1182, 'STIKESMAS Widya Dharma Palembang'),
(1183, 'STIKI Malang'),
(1184, 'STIKIP Catur Sakti'),
(1185, 'STIKOM Muhammadiyah Jayapura'),
(1186, 'STIKOM Tunas Bangsa'),
(1187, 'STIKS Tamalanrea Makassar'),
(1188, 'STIKS Tarakanita'),
(1189, 'STIM Lasharan Jaya Makassar'),
(1190, 'STIM LPI Makassar'),
(1191, 'STIMED Nusa Palapa'),
(1192, 'STIMI Banjarmasin'),
(1193, 'STIMI Samarinda'),
(1194, 'STIMIK Bina Bangsa'),
(1195, 'STIMIK Kupang'),
(1196, 'STIMIK Pro Visi'),
(1197, 'STIMIK Sepuluh Nopember Jayapura'),
(1198, 'STIMIK Tunas Bangsa Banjarnegara'),
(1199, 'STIP Graha Karya'),
(1200, 'STIPER Agrobisnis Perkebunan'),
(1201, 'STIPER Muhammadiyah Tanah Grogot'),
(1202, 'STIPER Santo Thomas Aquinas Jayapura'),
(1203, 'STIPER Sawahlunto Sijunjung'),
(1204, 'STIPSI Abdi Nusa'),
(1205, 'STIPSI Widya Dharma'),
(1206, 'STISIP 17-8-1945 Makassar'),
(1207, 'STISIP Al Washliyah Banda Aceh'),
(1208, 'STISIP Banten Raya'),
(1209, 'STISIP Bina Generasi Polewali'),
(1210, 'STISIP Bina Marta'),
(1211, 'STISIP Bina Putera Banjar'),
(1212, 'STISIP Bunda Tanah Melayu'),
(1213, 'STISIP Guna Nusantara'),
(1214, 'STISIP Imam Bonjol'),
(1215, 'STISIP Kartika Bangsa'),
(1216, 'STISIP Margarana'),
(1217, 'STISIP Merdeka Manado'),
(1218, 'STISIP Muhammadiyah Madiun'),
(1219, 'STISIP Muhammadiyah Sinjai'),
(1220, 'STISIP Nurdin Hamzah'),
(1221, 'STISIP Padang'),
(1222, 'STISIP Panca Bhakti Palu'),
(1223, 'STISIP Persada Bunda'),
(1224, 'STISIP Petta Baringeng Soppeng'),
(1225, 'STISIP Samudera Indonesia Selatan'),
(1226, 'STISIP Setia Budhi'),
(1227, 'STISIP Silas Papare Jayapura'),
(1228, 'STISIP Swadaya'),
(1229, 'STISIP Syamsul Ulum'),
(1230, 'STISIP Tasikmalaya'),
(1231, 'STISIP Trimasda Cilegon'),
(1232, 'STISIP Veteran Palopo'),
(1233, 'STISIP Widuri'),
(1234, 'STISIP Widyapuri Mandiri'),
(1235, 'STISIP Yupentek Tangerang'),
(1236, 'STISIPOL Candradimuka'),
(1237, 'STISIPOL Dharma Wacana'),
(1238, 'STISIPOL Mujahidin'),
(1239, 'STISIPOL Pahlawan 12'),
(1240, 'STISIPOL Raja Haji'),
(1241, 'STISIPOL Yaleka Maro'),
(1242, 'STITEK Bina Taruna'),
(1243, 'STITEK Dharma Yadi Makassar'),
(1244, 'STKIP  Asy-Syafi iyah Internasional Medan'),
(1245, 'STKIP  La Tansa Mashiro'),
(1246, 'STKIP Abdi Wacana Wamena'),
(1247, 'STKIP Adzkia'),
(1248, 'STKIP Agama Hindu Amlapura'),
(1249, 'STKIP Agama Hindu Singaraja'),
(1250, 'STKIP Ahlussunnah'),
(1251, 'STKIP Aisyiyah Riau'),
(1252, 'STKIP Al Amin Dompu'),
(1253, 'STKIP Al Azhar Diniyyah Jambi'),
(1254, 'STKIP Al Hikmah Surabaya'),
(1255, 'STKIP Al Islam Tunas Bangsa'),
(1256, 'STKIP Al-Washliyah'),
(1257, 'STKIP Albana'),
(1258, 'STKIP An-nur Nangro Aceh'),
(1259, 'STKIP Andi Mattappa'),
(1260, 'STKIP Arrahmaniyah'),
(1261, 'STKIP Babunnajah Pandeglang'),
(1262, 'STKIP Banten'),
(1263, 'STKIP Barus Tapanuli Tengah'),
(1264, 'STKIP Bima'),
(1265, 'STKIP Bina Bangsa Getsempena'),
(1266, 'STKIP Bina Bangsa Meulaboh'),
(1267, 'STKIP Bina Insan Mandiri'),
(1268, 'STKIP Budidaya'),
(1269, 'STKIP Bumi Persada Lhokseumawe'),
(1270, 'STKIP Cokroaminoto Pinrang'),
(1271, 'STKIP Dampal Selatan'),
(1272, 'STKIP Darud Da wah Wal Irsyad Pinrang'),
(1273, 'STKIP Darussalam Cilacap'),
(1274, 'STKIP Dharma Wacana'),
(1275, 'STKIP Gotong Royong Masohi'),
(1276, 'STKIP Hamzar'),
(1277, 'STKIP Harapan Bima'),
(1278, 'STKIP Hatta Sjahrir'),
(1279, 'STKIP Hermon Timika'),
(1280, 'STKIP Hunimua'),
(1281, 'STKIP Insan Madani Airmolek'),
(1282, 'STKIP Islam Sabilal Muhtadin Banjarmasin'),
(1283, 'STKIP Ita Wotu Nusa'),
(1284, 'STKIP Kie Raha'),
(1285, 'STKIP Kristen Wamena'),
(1286, 'STKIP Kusumanegara'),
(1287, 'STKIP Majenang'),
(1288, 'STKIP Mega Rezky'),
(1289, 'STKIP Modern Ngawi'),
(1290, 'STKIP Muhammadiyah Aceh Barat Daya'),
(1291, 'STKIP Muhammadiyah Aceh Tengah'),
(1292, 'STKIP Muhammadiyah Bangka Belitung'),
(1293, 'STKIP Muhammadiyah Barru'),
(1294, 'STKIP Muhammadiyah Blora'),
(1295, 'STKIP Muhammadiyah Bogor'),
(1296, 'STKIP Muhammadiyah Bone'),
(1297, 'STKIP Muhammadiyah Bulukumba'),
(1298, 'STKIP Muhammadiyah Enrekang'),
(1299, 'STKIP Muhammadiyah Kalabahi'),
(1300, 'STKIP Muhammadiyah Kuningan'),
(1301, 'STKIP Muhammadiyah Lumajang'),
(1302, 'STKIP Muhammadiyah Manokwari'),
(1303, 'STKIP Muhammadiyah Muara Bungo'),
(1304, 'STKIP Muhammadiyah Pagaralam'),
(1305, 'STKIP Muhammadiyah Sampit'),
(1306, 'STKIP Muhammadiyah Sungai Penuh'),
(1307, 'STKIP Mutiara Banten'),
(1308, 'STKIP Nahdlatul Ulama Indramayu'),
(1309, 'STKIP Nahdlatul Ulama Kabupaten Tegal'),
(1310, 'STKIP Nasional'),
(1311, 'STKIP Nias Selatan'),
(1312, 'STKIP Nurul Huda di Sukaraja'),
(1313, 'STKIP Nusa Bunga Floresta'),
(1314, 'STKIP Nusa Timor'),
(1315, 'STKIP Pamane Talino'),
(1316, 'STKIP Panca Sakti Bekasi'),
(1317, 'STKIP PANCAKARYA'),
(1318, 'STKIP Pangeran Antasari'),
(1319, 'STKIP Pangeran Dharma Kusuma Segeran Juntinyuat Indramayu'),
(1320, 'STKIP Paracendekia N W Sumbawa'),
(1321, 'STKIP Paris Barantai'),
(1322, 'STKIP Pelita Nusantara Buton'),
(1323, 'STKIP Pelita Pratama'),
(1324, 'STKIP Pembangunan Indonesia'),
(1325, 'STKIP Persada Khatulistiwa'),
(1326, 'STKIP Persatuan Islam'),
(1327, 'STKIP Pesisir Selatan'),
(1328, 'STKIP PGRI Bandar Lampung'),
(1329, 'STKIP PGRI Bangkalan'),
(1330, 'STKIP PGRI Banjarmasin'),
(1331, 'STKIP PGRI Jombang'),
(1332, 'STKIP PGRI Lamongan'),
(1333, 'STKIP PGRI Lubuk Linggau'),
(1334, 'STKIP PGRI Lumajang'),
(1335, 'STKIP PGRI Manado'),
(1336, 'STKIP PGRI Metro'),
(1337, 'STKIP PGRI Nganjuk'),
(1338, 'STKIP PGRI Ngawi'),
(1339, 'STKIP PGRI Pacitan'),
(1340, 'STKIP PGRI Ponorogo'),
(1341, 'STKIP PGRI Sampang'),
(1342, 'STKIP PGRI Sidoarjo'),
(1343, 'STKIP PGRI Situbondo'),
(1344, 'STKIP PGRI Sukabumi'),
(1345, 'STKIP PGRI Sumatera Barat'),
(1346, 'STKIP PGRI Sumenep'),
(1347, 'STKIP PGRI Trenggalek'),
(1348, 'STKIP PGRI Tulungagung'),
(1349, 'STKIP Purnama'),
(1350, 'STKIP Purwakarta'),
(1351, 'STKIP Rokania'),
(1352, 'STKIP Sebelas April'),
(1353, 'STKIP Sera'),
(1354, 'STKIP Setiabudhi'),
(1355, 'STKIP Simbiosis'),
(1356, 'STKIP Sinar Cendekia'),
(1357, 'STKIP Sinar Pancasila'),
(1358, 'STKIP Singkawang'),
(1359, 'STKIP Situs Banten di Serang'),
(1360, 'STKIP Soe'),
(1361, 'STKIP Suar Bangli'),
(1362, 'STKIP Subang'),
(1363, 'STKIP Surya'),
(1364, 'STKIP Syekh Manshur'),
(1365, 'STKIP Taman Siswa Bima'),
(1366, 'STKIP Tomakaka Tiwikrama'),
(1367, 'STKIP Tunas Palapa'),
(1368, 'STKIP Usman Safri Kutacane'),
(1369, 'STKIP Veteran Sidrap'),
(1370, 'STKIP Weetebula'),
(1371, 'STKIP Widya Yuwana'),
(1372, 'STKIP Widyaswara Indonesia'),
(1373, 'STKIP Yapim Maros'),
(1374, 'STKIP Yapis Dompu'),
(1375, 'STKIP Yapti Jeneponto'),
(1376, 'STKIP Yasika'),
(1377, 'STKIP Yayasan Abdi Pendidikan'),
(1378, 'STKIP YDB Lubuk Alung'),
(1379, 'STKIP YPM Bangko'),
(1380, 'STKIP YPUP Makassar'),
(1381, 'STMIK - STIKOM'),
(1382, 'STMIK Adhi Guna'),
(1383, 'STMIK Akakom'),
(1384, 'STMIK AKBA'),
(1385, 'STMIK AKI Pati'),
(1386, 'STMIK Amik Bandung'),
(1387, 'STMIK Amik Riau'),
(1388, 'STMIK Amikom'),
(1389, 'STMIK Antar Bangsa'),
(1390, 'STMIK Atma Luhur'),
(1391, 'STMIK AUB Surakarta'),
(1392, 'STMIK Bandung'),
(1393, 'STMIK Bandung Bali'),
(1394, 'STMIK Bani Saleh'),
(1395, 'STMIK Banjarbaru'),
(1396, 'STMIK Bina Mulia'),
(1397, 'STMIK Bina Nusantara Jaya Lubuk Linggau'),
(1398, 'STMIK Bina Patria'),
(1399, 'STMIK Bina Sarana Global'),
(1400, 'STMIK Borneo Internasional'),
(1401, 'STMIK Budi Darma'),
(1402, 'STMIK Cahaya Surya'),
(1403, 'STMIK Catur Sakti Kendari'),
(1404, 'STMIK Cikarang'),
(1405, 'STMIK Cilegon'),
(1406, 'STMIK Citra Mandiri Padangsidimpuan'),
(1407, 'STMIK DCI'),
(1408, 'STMIK Denpasar'),
(1409, 'STMIK Dharma Negara'),
(1410, 'STMIK Dharma Putra'),
(1411, 'STMIK Dharma Wacana'),
(1412, 'STMIK Dharmapala Riau'),
(1413, 'STMIK Dian Cipta Cendikia Kotabumi'),
(1414, 'STMIK Dipanegara Makassar'),
(1415, 'STMIK Dumai'),
(1416, 'STMIK El Rahma'),
(1417, 'STMIK Eresha'),
(1418, 'STMIK Ganesha Bandung'),
(1419, 'STMIK Global Informatika Mdp'),
(1420, 'STMIK Handayani Makassar'),
(1421, 'STMIK Hang Tuah Pekanbaru'),
(1422, 'STMIK Hasan Sulur Wonomulyo'),
(1423, 'STMIK Himsya'),
(1424, 'STMIK IBBI'),
(1425, 'STMIK IKMI Cirebon'),
(1426, 'STMIK IM'),
(1427, 'STMIK Indonesia Banda Aceh'),
(1428, 'STMIK Indonesia Banjarmasin'),
(1429, 'STMIK Indonesia Jakarta'),
(1430, 'STMIK Indonesia Padang'),
(1431, 'STMIK Indragiri'),
(1432, 'STMIK Insan Pembangunan'),
(1433, 'STMIK Islam Internasional'),
(1434, 'STMIK ITMI Medan'),
(1435, 'STMIK Jabar'),
(1436, 'STMIK Jaya Nusa'),
(1437, 'STMIK Jayabaya Jakarta'),
(1438, 'STMIK Jayakarta'),
(1439, 'STMIK Kadiri'),
(1440, 'STMIK Kaputama'),
(1441, 'STMIK Kharisma Karawang'),
(1442, 'STMIK Kharisma Makassar'),
(1443, 'STMIK Kreatindo Manokwari'),
(1444, 'STMIK Kristen Neumann Indonesia'),
(1445, 'STMIK Kuwera'),
(1446, 'STMIK Likmi'),
(1447, 'STMIK Logika'),
(1448, 'STMIK Lombok'),
(1449, 'STMIK LPKIA Bandung'),
(1450, 'STMIK Mahakarya'),
(1451, 'STMIK Mardira Indonesia'),
(1452, 'STMIK Masa Depan'),
(1453, 'STMIK MBC Palembang'),
(1454, 'STMIK Mercusuar'),
(1455, 'STMIK Methodist Binjai'),
(1456, 'STMIK MIC Cikarang'),
(1457, 'STMIK Mikroskil'),
(1458, 'STMIK Mitra Lampung'),
(1459, 'STMIK Muara Dua'),
(1460, 'STMIK Muhammadiyah Banten'),
(1461, 'STMIK Muhammadiyah Jakarta'),
(1462, 'STMIK Muhammadiyah Paguyangan Brebes'),
(1463, 'STMIK Multicom Bolaan Mongondow'),
(1464, 'STMIK Nurdin Hamzah'),
(1465, 'STMIK Palangka Raya'),
(1466, 'STMIK Palcomtech'),
(1467, 'STMIK Pamitran'),
(1468, 'STMIK Parnaraya'),
(1469, 'STMIK Pasim Sukabumi'),
(1470, 'STMIK Pelita Nusantara'),
(1471, 'STMIK PGRI Tangerang'),
(1472, 'STMIK Pontianak'),
(1473, 'STMIK PPKIA Pradnya Paramita'),
(1474, 'STMIK PPKIA Tarakanita Rahmawati Tarakan'),
(1475, 'STMIK Prabumulih'),
(1476, 'STMIK Pranata Indonesia'),
(1477, 'STMIK Primakara'),
(1478, 'STMIK Pringsewu'),
(1479, 'STMIK Profesional Makassar'),
(1480, 'STMIK Putera Batam'),
(1481, 'STMIK Rosma'),
(1482, 'STMIK Samarinda'),
(1483, 'STMIK Sentra Pendidikan Bisnis'),
(1484, 'STMIK Sinar Nusantara'),
(1485, 'STMIK Sisingamangaraja XII'),
(1486, 'STMIK Subang'),
(1487, 'STMIK Sumedang'),
(1488, 'STMIK Surya Intan'),
(1489, 'STMIK Swadharma'),
(1490, 'STMIK Syaikh Zainuddin Nahdlatul Wathan'),
(1491, 'STMIK Tasikmalaya'),
(1492, 'STMIK Tidore Mandiri'),
(1493, 'STMIK Time'),
(1494, 'STMIK Triguna Dharma'),
(1495, 'STMIK Triguna Utama'),
(1496, 'STMIK Tulus Cendekia'),
(1497, 'STMIK Tunas Bangsa'),
(1498, 'STMIK Widuri'),
(1499, 'STMIK Widya Cipta Dharma'),
(1500, 'STMIK Widya Pratama'),
(1501, 'STMIK Widya Utama'),
(1502, 'STMIK WIT Cirebon'),
(1503, 'STMIK Yadika Bangil'),
(1504, 'STMIK YMI Tegal'),
(1505, 'STT Minyak dan Gas Cilacap'),
(1506, 'Universitas  Harapan Bangsa'),
(1507, 'Universitas 17 Agustus 1945 Banyuwangi'),
(1508, 'Universitas 17 Agustus 1945 Cirebon'),
(1509, 'Universitas 17 Agustus 1945 Jakarta'),
(1510, 'Universitas 17 Agustus 1945 Samarinda'),
(1511, 'Universitas 17 Agustus 1945 Semarang'),
(1512, 'Universitas 17 Agustus 1945 Surabaya'),
(1513, 'Universitas 45 Mataram'),
(1514, 'Universitas 45 Surabaya'),
(1515, 'Universitas Abdurachman Saleh'),
(1516, 'Universitas Abdurrab'),
(1517, 'Universitas Abulyatama'),
(1518, 'Universitas Achmad Yani Banjarmasin'),
(1519, 'Universitas Adhirajasa Reswara Sanjaya'),
(1520, 'Universitas Adiwangsa Jambi'),
(1521, 'Universitas Advent Indonesia'),
(1522, 'Universitas Agung Podomoro'),
(1523, 'Universitas Ahmad Dahlan'),
(1524, 'Universitas Airlangga'),
(1525, 'Universitas Aisyah Pringsewu'),
(1526, 'Universitas Aisyiyah Surakarta'),
(1527, 'Universitas Aisyiyah Yogyakarta'),
(1528, 'Universitas Aki'),
(1529, 'Universitas Al Asyariah Mandar'),
(1530, 'Universitas Al Washliyah'),
(1531, 'Universitas Al-Azhar'),
(1532, 'Universitas Al-azhar Indonesia'),
(1533, 'Universitas Al-ghifari'),
(1534, 'Universitas Al-Muslim'),
(1535, 'Universitas Alkhairaat'),
(1536, 'Universitas Alma Ata'),
(1537, 'Universitas Alwashliyah'),
(1538, 'Universitas Amal Ilmiah Yapis Wamena'),
(1539, 'Universitas Amikom Purwokerto'),
(1540, 'Universitas Amikom Yogyakarta'),
(1541, 'Universitas Amir Hamzah'),
(1542, 'Universitas An Nuur'),
(1543, 'Universitas Andalas'),
(1544, 'Universitas Andi Djemma Palopo'),
(1545, 'Universitas Antakusuma'),
(1546, 'Universitas Aryasatya Deo Muri'),
(1547, 'Universitas Asahan'),
(1548, 'Universitas Atma Jaya Makassar'),
(1549, 'Universitas Atma Jaya Yogyakarta'),
(1550, 'Universitas Audi Indonesia'),
(1551, 'Universitas Aufa Royhan'),
(1552, 'Universitas Azzahra'),
(1553, 'Universitas Baiturrahmah'),
(1554, 'Universitas Bakrie'),
(1555, 'Universitas Bakti Indonesia'),
(1556, 'Universitas Bale Bandung'),
(1557, 'Universitas Bali Dwipa'),
(1558, 'Universitas Bali Internasional'),
(1559, 'Universitas Balikpapan'),
(1560, 'Universitas Bandar Lampung'),
(1561, 'Universitas Bandung Raya'),
(1562, 'Universitas Bangka Belitung'),
(1563, 'Universitas Banten Jaya'),
(1564, 'Universitas Batam'),
(1565, 'Universitas Batanghari Jambi'),
(1566, 'Universitas Battuta'),
(1567, 'Universitas Baturaja'),
(1568, 'Universitas Bengkulu'),
(1569, 'Universitas Bhakti Kencana'),
(1570, 'Universitas Bhayangkara Jakarta Raya'),
(1571, 'Universitas Bhayangkara Surabaya'),
(1572, 'Universitas Billfath'),
(1573, 'Universitas Bina Bangsa'),
(1574, 'Universitas Bina Darma'),
(1575, 'Universitas Bina Insan'),
(1576, 'Universitas Bina Insani'),
(1577, 'Universitas Bina Mandiri Gorontalo'),
(1578, 'Universitas Bina Nusantara'),
(1579, 'Universitas Bina Sarana Informatika'),
(1580, 'Universitas Binawan'),
(1581, 'Universitas Bojonegoro'),
(1582, 'Universitas Bondowoso'),
(1583, 'Universitas Borneo Tarakan'),
(1584, 'Universitas Borobudur'),
(1585, 'Universitas Bosowa'),
(1586, 'Universitas Boyolali'),
(1587, 'Universitas Brawijaya'),
(1588, 'Universitas Buana Perjuangan Karawang'),
(1589, 'Universitas Buddhi Dharma'),
(1590, 'Universitas Budi Darma'),
(1591, 'Universitas Budi Luhur'),
(1592, 'Universitas Bumi Hijrah Tidore'),
(1593, 'Universitas Bumigora'),
(1594, 'Universitas Bunda Mulia'),
(1595, 'Universitas Bung Hatta'),
(1596, 'Universitas Bung Karno'),
(1597, 'Universitas Catur Insan Cendekia'),
(1598, 'Universitas Cenderawasih'),
(1599, 'Universitas Ciputra Surabaya'),
(1600, 'Universitas Citra Bangsa'),
(1601, 'Universitas Cokroaminoto'),
(1602, 'Universitas Cokroaminoto Makassar'),
(1603, 'Universitas Cokroaminoto Palopo'),
(1604, 'Universitas Cordova'),
(1605, 'Universitas Darma Agung'),
(1606, 'Universitas Darma Persada'),
(1607, 'Universitas Darul  ulum'),
(1608, 'Universitas Darul Ulum Islamic Centre Sudirman'),
(1609, 'Universitas Darussalam Ambon'),
(1610, 'Universitas Darussalam Gontor'),
(1611, 'Universitas Darwan Ali'),
(1612, 'Universitas Dayanu Ikhsanuddin'),
(1613, 'Universitas Dehasen Bengkulu'),
(1614, 'Universitas Dharma Andalas'),
(1615, 'Universitas Dharmas Indonesia'),
(1616, 'Universitas Dharmawangsa'),
(1617, 'Universitas Dhyana Pura'),
(1618, 'Universitas Dian Nusantara'),
(1619, 'Universitas Dian Nuswantoro'),
(1620, 'Universitas Dinamika'),
(1621, 'Universitas Diponegoro'),
(1622, 'Universitas Dirgantara Marsekal Suryadarma'),
(1623, 'Universitas Djuanda'),
(1624, 'Universitas Doktor Nugroho Magetan'),
(1625, 'Universitas Dr Soetomo'),
(1626, 'Universitas Dumoga Kotamobagu'),
(1627, 'Universitas Duta Bangsa Surakarta'),
(1628, 'Universitas Dwijendra'),
(1629, 'Universitas Efarina'),
(1630, 'Universitas Ekasakti'),
(1631, 'Universitas Esa Unggul'),
(1632, 'Universitas Fajar'),
(1633, 'Universitas Faletehan'),
(1634, 'Universitas Flores'),
(1635, 'Universitas Fort De Kock'),
(1636, 'Universitas Gadjah Mada'),
(1637, 'Universitas Gajah Putih'),
(1638, 'Universitas Gajayana'),
(1639, 'Universitas Galuh'),
(1640, 'Universitas Garut'),
(1641, 'Universitas Gorontalo'),
(1642, 'Universitas Graha Nusantara'),
(1643, 'Universitas Gresik'),
(1644, 'Universitas Gunadarma'),
(1645, 'Universitas Gunung Kidul'),
(1646, 'Universitas Gunung Leuser Aceh'),
(1647, 'Universitas Gunung Rinjani'),
(1648, 'Universitas Halim sanusi'),
(1649, 'Universitas Halmahera'),
(1650, 'Universitas Halu Oleo'),
(1651, 'Universitas Hamzanwadi'),
(1652, 'Universitas Hang Tuah'),
(1653, 'Universitas Harapan Medan'),
(1654, 'Universitas Hasanuddin'),
(1655, 'Universitas Hasyim Asyari Tebuireng Jombang'),
(1656, 'Universitas Hein Namotemo'),
(1657, 'Universitas Hindu Indonesia'),
(1658, 'Universitas HKBP Nommensen'),
(1659, 'Universitas HKBP Nommensen Pematangsiantar'),
(1660, 'Universitas IBA'),
(1661, 'Universitas Ibn Khaldun'),
(1662, 'Universitas Ibnu Chaldun'),
(1663, 'Universitas Ibnu Sina'),
(1664, 'Universitas Ibrahimy'),
(1665, 'Universitas Ichsan Gorontalo'),
(1666, 'Universitas Imelda Medan'),
(1667, 'Universitas Indo Global Mandiri'),
(1668, 'Universitas Indonesia'),
(1669, 'Universitas Indonesia Timur'),
(1670, 'Universitas Indraprasta PGRI'),
(1671, 'Universitas Informatika Dan Bisnis Indonesia'),
(1672, 'Universitas Internasional Batam'),
(1673, 'Universitas Internasional Semen Indonesia'),
(1674, 'Universitas Iqra Buru'),
(1675, 'Universitas Iskandar Muda'),
(1676, 'Universitas Islam 45'),
(1677, 'Universitas Islam Al-azhar'),
(1678, 'Universitas Islam Al-Ihya Kuningan'),
(1679, 'Universitas Islam As-syafiiyah'),
(1680, 'Universitas Islam Attahiriyah'),
(1681, 'Universitas Islam Balitar'),
(1682, 'Universitas Islam Bandung'),
(1683, 'Universitas Islam Batik'),
(1684, 'Universitas Islam Darul `ulum'),
(1685, 'Universitas Islam Indonesia'),
(1686, 'Universitas Islam Indragiri'),
(1687, 'Universitas Islam Jakarta'),
(1688, 'Universitas Islam Jember'),
(1689, 'Universitas Islam Kadiri'),
(1690, 'Universitas Islam Kalimantan Muhammad Arsyad Al Banjari Banjarmasin'),
(1691, 'Universitas Islam Kebangsaan Indonesia'),
(1692, 'Universitas Islam Kuantan Singingi'),
(1693, 'Universitas Islam Labuhan Batu'),
(1694, 'Universitas Islam Lamongan'),
(1695, 'Universitas Islam Madura'),
(1696, 'Universitas Islam Majapahit'),
(1697, 'Universitas Islam Makassar'),
(1698, 'Universitas Islam Malang'),
(1699, 'Universitas Islam Nahdlatul Ulama Jepara'),
(1700, 'Universitas Islam Nusantara'),
(1701, 'Universitas Islam Ogan Komering Ilir Kayuagung'),
(1702, 'Universitas Islam Raden Rahmat'),
(1703, 'Universitas Islam Riau'),
(1704, 'Universitas Islam Sultan Agung'),
(1705, 'Universitas Islam Sumatera Utara'),
(1706, 'Universitas Islam Syekh-Yusuf'),
(1707, 'Universitas Ivet'),
(1708, 'Universitas Jabal Ghafur'),
(1709, 'Universitas Jakarta'),
(1710, 'Universitas Jambi'),
(1711, 'Universitas Janabadra'),
(1712, 'Universitas Jayabaya'),
(1713, 'Universitas Jember'),
(1714, 'Universitas Jenderal Achmad Yani'),
(1715, 'Universitas Jenderal Achmad Yani Yogyakarta'),
(1716, 'Universitas Jenderal Soedirman'),
(1717, 'Universitas Kader Bangsa'),
(1718, 'Universitas Kadiri'),
(1719, 'Universitas Kahuripan Kediri'),
(1720, 'Universitas Kaltara'),
(1721, 'Universitas Kanjuruhan'),
(1722, 'Universitas Kapuas'),
(1723, 'Universitas Karimun'),
(1724, 'Universitas Kartamulia Purwakarta'),
(1725, 'Universitas Kartini'),
(1726, 'Universitas Karya Dharma Makassar'),
(1727, 'Universitas Karyadarma Kupang'),
(1728, 'Universitas Katolik Darma Cendika'),
(1729, 'Universitas Katolik De La Salle'),
(1730, 'Universitas Katolik Indonesia Atma Jaya'),
(1731, 'Universitas Katolik Indonesia Santu Paulus Ruteng'),
(1732, 'Universitas Katolik Musi Charitas'),
(1733, 'Universitas Katolik Parahyangan'),
(1734, 'Universitas Katolik Santo Thomas'),
(1735, 'Universitas Katolik Soegijapranata'),
(1736, 'Universitas Katolik Widya Karya'),
(1737, 'Universitas Katolik Widya Mandala Madiun'),
(1738, 'Universitas Katolik Widya Mandala Surabaya'),
(1739, 'Universitas Katolik Widya Mandira Kupang'),
(1740, 'Universitas Kebangsaan'),
(1741, 'Universitas Kejuangan 45 Jakarta'),
(1742, 'Universitas KH. A. Wahab Hasbullah'),
(1743, 'Universitas KH. Bahaudin Mudhary Madura'),
(1744, 'Universitas Khairun'),
(1745, 'Universitas Klabat'),
(1746, 'Universitas Komputer Indonesia'),
(1747, 'Universitas Krisnadwipayana'),
(1748, 'Universitas Kristen Artha Wacana'),
(1749, 'Universitas Kristen Cipta Wacana'),
(1750, 'Universitas Kristen Duta Wacana'),
(1751, 'Universitas Kristen Immanuel'),
(1752, 'Universitas Kristen Indonesia'),
(1753, 'Universitas Kristen Indonesia Maluku'),
(1754, 'Universitas Kristen Indonesia Paulus'),
(1755, 'Universitas Kristen Indonesia Tomohon'),
(1756, 'Universitas Kristen Indonesia Toraja'),
(1757, 'Universitas Kristen Krida Wacana'),
(1758, 'Universitas Kristen Maranatha'),
(1759, 'Universitas Kristen Palangka Raya'),
(1760, 'Universitas Kristen Papua'),
(1761, 'Universitas Kristen Petra'),
(1762, 'Universitas Kristen Satya Wacana'),
(1763, 'Universitas Kristen Surakarta'),
(1764, 'Universitas Kristen Tentena'),
(1765, 'Universitas Kristen Wira Wacana Sumba'),
(1766, 'Universitas Kuningan'),
(1767, 'Universitas Kusuma Husada Surakarta'),
(1768, 'Universitas Kutai Kartanegara Tenggarong'),
(1769, 'Universitas Labuhanbatu'),
(1770, 'Universitas Lakidende Unaaha'),
(1771, 'Universitas Lambung Mangkurat'),
(1772, 'Universitas Lampung'),
(1773, 'Universitas Lancang Kuning'),
(1774, 'Universitas Langlang Buana'),
(1775, 'Universitas Lintas Internasional Indonesia'),
(1776, 'Universitas Lumajang'),
(1777, 'Universitas Ma Chung'),
(1778, 'Universitas Maarif Hasyim Latif'),
(1779, 'Universitas Maarif Nahdlatul Ulama Kebumen'),
(1780, 'Universitas Madako Tolitoli'),
(1781, 'Universitas Madura'),
(1782, 'Universitas Mahakarya Asia'),
(1783, 'Universitas Mahaputra Muhammad Yamin'),
(1784, 'Universitas Mahasaraswati Denpasar'),
(1785, 'Universitas Mahendradatta'),
(1786, 'Universitas Majalengka'),
(1787, 'Universitas Malahayati'),
(1788, 'Universitas Malikussaleh'),
(1789, 'Universitas Maritim AMNI'),
(1790, 'Universitas Maritim Raja Ali Haji (UMRAH)'),
(1791, 'Universitas Masoem'),
(1792, 'Universitas Matana'),
(1793, 'Universitas Mataram'),
(1794, 'Universitas Mathla ul Anwar'),
(1795, 'Universitas Mayjen Sungkono'),
(1796, 'Universitas Medan Area'),
(1797, 'Universitas Megarezky'),
(1798, 'Universitas Megou Pak Tulang Bawang'),
(1799, 'Universitas Mercu Buana'),
(1800, 'Universitas Mercu Buana Yogyakarta'),
(1801, 'Universitas Merdeka Madiun'),
(1802, 'Universitas Merdeka Malang'),
(1803, 'Universitas Merdeka Pasuruan'),
(1804, 'Universitas Merdeka Ponorogo'),
(1805, 'Universitas Merdeka Surabaya'),
(1806, 'Universitas Methodist Indonesia'),
(1807, 'Universitas Mitra Indonesia'),
(1808, 'Universitas Mitra Karya'),
(1809, 'Universitas Mochammad Sroedji'),
(1810, 'Universitas Mohammad Husni Thamrin Jakarta'),
(1811, 'Universitas Mohammad Natsir Bukittinggi'),
(1812, 'Universitas Mpu Tantular'),
(1813, 'Universitas Muara Bungo'),
(1814, 'Universitas Muhadi Setiabudi'),
(1815, 'Universitas Muhammadiyah Aceh'),
(1816, 'Universitas Muhammadiyah Bandung'),
(1817, 'Universitas Muhammadiyah Banjarmasin'),
(1818, 'Universitas Muhammadiyah Banten'),
(1819, 'Universitas Muhammadiyah Bengkulu'),
(1820, 'Universitas Muhammadiyah Bulukumba'),
(1821, 'Universitas Muhammadiyah Buton'),
(1822, 'Universitas Muhammadiyah Cirebon'),
(1823, 'Universitas Muhammadiyah Gorontalo'),
(1824, 'Universitas Muhammadiyah Gresik'),
(1825, 'Universitas Muhammadiyah Jakarta'),
(1826, 'Universitas Muhammadiyah Jambi'),
(1827, 'Universitas Muhammadiyah Jember'),
(1828, 'Universitas Muhammadiyah Kalimantan Timur'),
(1829, 'Universitas Muhammadiyah Kendari'),
(1830, 'Universitas Muhammadiyah Kotabumi'),
(1831, 'Universitas Muhammadiyah Kudus'),
(1832, 'Universitas Muhammadiyah Kupang'),
(1833, 'Universitas Muhammadiyah Lamongan'),
(1834, 'Universitas Muhammadiyah Lampung'),
(1835, 'Universitas Muhammadiyah Luwuk Banggai'),
(1836, 'Universitas Muhammadiyah Magelang'),
(1837, 'Universitas Muhammadiyah Makassar'),
(1838, 'Universitas Muhammadiyah Malang'),
(1839, 'Universitas Muhammadiyah Maluku Utara'),
(1840, 'Universitas Muhammadiyah Mataram'),
(1841, 'Universitas Muhammadiyah Metro'),
(1842, 'Universitas Muhammadiyah Palangka Raya'),
(1843, 'Universitas Muhammadiyah Palembang'),
(1844, 'Universitas Muhammadiyah Palopo'),
(1845, 'Universitas Muhammadiyah Palu'),
(1846, 'Universitas Muhammadiyah Pare-pare'),
(1847, 'Universitas Muhammadiyah Pekajangan Pekalongan'),
(1848, 'Universitas Muhammadiyah Ponorogo'),
(1849, 'Universitas Muhammadiyah Pontianak'),
(1850, 'Universitas Muhammadiyah Pringsewu'),
(1851, 'Universitas Muhammadiyah Prof Dr Hamka'),
(1852, 'Universitas Muhammadiyah Purwokerto'),
(1853, 'Universitas Muhammadiyah Purworejo'),
(1854, 'Universitas Muhammadiyah Riau'),
(1855, 'Universitas Muhammadiyah Semarang'),
(1856, 'Universitas Muhammadiyah Sidenreng Rappang'),
(1857, 'Universitas Muhammadiyah Sidoarjo'),
(1858, 'Universitas Muhammadiyah Sinjai'),
(1859, 'Universitas Muhammadiyah Sorong'),
(1860, 'Universitas Muhammadiyah Sukabumi'),
(1861, 'Universitas Muhammadiyah Sumatera Barat'),
(1862, 'Universitas Muhammadiyah Sumatera Utara'),
(1863, 'Universitas Muhammadiyah Surabaya'),
(1864, 'Universitas Muhammadiyah Surakarta'),
(1865, 'Universitas Muhammadiyah Tangerang'),
(1866, 'Universitas Muhammadiyah Tapanuli Selatan'),
(1867, 'Universitas Muhammadiyah Tasikmalaya'),
(1868, 'Universitas Muhammadiyah Yogyakarta'),
(1869, 'Universitas Mulawarman'),
(1870, 'Universitas Mulia'),
(1871, 'Universitas Multimedia Nusantara Jakarta'),
(1872, 'Universitas Muria Kudus'),
(1873, 'Universitas Musamus Merauke'),
(1874, 'Universitas Musi Rawas'),
(1875, 'Universitas Muslim Buton'),
(1876, 'Universitas Muslim Indonesia'),
(1877, 'Universitas Muslim Maros'),
(1878, 'Universitas Muslim Nusantara Al-Washliyah'),
(1879, 'Universitas Nahdlatul Ulama Al Ghazali Cilacap'),
(1880, 'Universitas Nahdlatul Ulama Blitar'),
(1881, 'Universitas Nahdlatul Ulama Cirebon'),
(1882, 'Universitas Nahdlatul Ulama Gorontalo'),
(1883, 'Universitas Nahdlatul Ulama Indonesia'),
(1884, 'Universitas Nahdlatul Ulama Kalimantan Barat'),
(1885, 'Universitas Nahdlatul Ulama Kalimantan Selatan'),
(1886, 'Universitas Nahdlatul Ulama Kalimantan Timur'),
(1887, 'Universitas Nahdlatul Ulama Lampung'),
(1888, 'Universitas Nahdlatul Ulama Nusa Tenggara Barat'),
(1889, 'Universitas Nahdlatul Ulama Purwokerto'),
(1890, 'Universitas Nahdlatul Ulama Sidoarjo'),
(1891, 'Universitas Nahdlatul Ulama Sulawesi Tenggara'),
(1892, 'Universitas Nahdlatul Ulama Sumatera Barat'),
(1893, 'Universitas Nahdlatul Ulama Sumatera Utara'),
(1894, 'Universitas Nahdlatul Ulama Sunan Giri'),
(1895, 'Universitas Nahdlatul Ulama Surabaya'),
(1896, 'Universitas Nahdlatul Ulama Surakarta'),
(1897, 'Universitas Nahdlatul Ulama Yogyakarta'),
(1898, 'Universitas Nahdlatul Wathan Mataram'),
(1899, 'Universitas Nani Bili Nusantara'),
(1900, 'Universitas Narotama'),
(1901, 'Universitas Nasional'),
(1902, 'Universitas Nasional Karangturi Semarang'),
(1903, 'Universitas Nasional Pasim'),
(1904, 'Universitas Negeri Gorontalo'),
(1905, 'Universitas Negeri Jakarta'),
(1906, 'Universitas Negeri Makassar'),
(1907, 'Universitas Negeri Malang'),
(1908, 'Universitas Negeri Manado'),
(1909, 'Universitas Negeri Medan'),
(1910, 'Universitas Negeri Padang'),
(1911, 'Universitas Negeri Semarang'),
(1912, 'Universitas Negeri Surabaya'),
(1913, 'Universitas Negeri Yogyakarta'),
(1914, 'Universitas Ngudi Waluyo'),
(1915, 'Universitas Ngurah Rai'),
(1916, 'Universitas Nuku'),
(1917, 'Universitas Nurtanio'),
(1918, 'Universitas Nurul Jadid'),
(1919, 'Universitas Nusa Bangsa'),
(1920, 'Universitas Nusa Cendana'),
(1921, 'Universitas Nusa Lontar Rote'),
(1922, 'Universitas Nusa Nipa'),
(1923, 'Universitas Nusa Putra'),
(1924, 'Universitas Nusa Tenggara Barat'),
(1925, 'Universitas Nusantara Manado'),
(1926, 'Universitas Nusantara PGRI Kediri'),
(1927, 'Universitas Oso'),
(1928, 'Universitas Ottow Geissler'),
(1929, 'Universitas Padjadjaran'),
(1930, 'Universitas Pahlawan Tuanku Tambusai'),
(1931, 'Universitas Pakuan'),
(1932, 'Universitas Palangka Raya'),
(1933, 'Universitas Palembang'),
(1934, 'Universitas Pamulang'),
(1935, 'Universitas Panca Bhakti'),
(1936, 'Universitas Panca Marga'),
(1937, 'Universitas Panca Sakti Bekasi'),
(1938, 'Universitas Pancasakti'),
(1939, 'Universitas Pancasakti Tegal'),
(1940, 'Universitas Pancasila'),
(1941, 'Universitas Pandanaran'),
(1942, 'Universitas Panji Sakti Singaraja'),
(1943, 'Universitas Papua'),
(1944, 'Universitas Paramadina'),
(1945, 'Universitas Pasifik Morotai'),
(1946, 'Universitas Pasir Pengaraian'),
(1947, 'Universitas Pasundan'),
(1948, 'Universitas Pat Petulai'),
(1949, 'Universitas Patria Artha'),
(1950, 'Universitas Pattimura'),
(1951, 'Universitas Pawyatan Daha'),
(1952, 'Universitas Pejuang Republik Indonesia'),
(1953, 'Universitas Pekalongan'),
(1954, 'Universitas Pelita Bangsa'),
(1955, 'Universitas Pelita Harapan'),
(1956, 'Universitas Pembangunan Indonesia'),
(1957, 'Universitas Pembangunan Jaya'),
(1958, 'Universitas Pembangunan Nasional Veteran Jakarta'),
(1959, 'Universitas Pembangunan Nasional Veteran Jawa Timur'),
(1960, 'Universitas Pembangunan Nasional Veteran Yogyakarta'),
(1961, 'Universitas Pembangunan Panca Budi'),
(1962, 'Universitas Pembinaan Masyarakat Indonesia'),
(1963, 'Universitas Pendidikan Ganesha'),
(1964, 'Universitas Pendidikan Indonesia'),
(1965, 'Universitas Pendidikan Mandalika'),
(1966, 'Universitas Pendidikan Muhammadiyah Sorong'),
(1967, 'Universitas Pendidikan Nasional'),
(1968, 'Universitas Pepabri Makassar'),
(1969, 'Universitas Peradaban'),
(1970, 'Universitas Perjuangan Tasikmalaya'),
(1971, 'Universitas Persada Indonesia Yai'),
(1972, 'Universitas Persatuan Guru 1945 NTT'),
(1973, 'Universitas Pertamina'),
(1974, 'Universitas Perwira Purbalingga'),
(1975, 'Universitas Pesantren Tinggi Darul  ulum'),
(1976, 'Universitas PGRI Adi Buana'),
(1977, 'Universitas PGRI Banyuwangi'),
(1978, 'Universitas PGRI Madiun'),
(1979, 'Universitas PGRI Palangka Raya'),
(1980, 'Universitas PGRI Palembang'),
(1981, 'Universitas PGRI Ronggolawe'),
(1982, 'Universitas PGRI Semarang'),
(1983, 'Universitas PGRI Wiranegara'),
(1984, 'Universitas PGRI Yogyakarta'),
(1985, 'Universitas Pohuwato'),
(1986, 'Universitas Potensi Utama'),
(1987, 'Universitas Pradita'),
(1988, 'Universitas Pramita Indonesia'),
(1989, 'Universitas Prasetiya Mulya'),
(1990, 'Universitas Presiden'),
(1991, 'Universitas Prima Indonesia'),
(1992, 'Universitas Primagraha'),
(1993, 'Universitas Prisma'),
(1994, 'Universitas Prof Dr Hazairin SH'),
(1995, 'Universitas Prof Dr Moestopo (Beragama)'),
(1996, 'Universitas Proklamasi  45'),
(1997, 'Universitas Puangrimaggalatung'),
(1998, 'Universitas Putera Batam'),
(1999, 'Universitas Putra Indonesia'),
(2000, 'Universitas Putra Indonesia Yptk Padang'),
(2001, 'Universitas Qamarul Huda Badaruddin Bagu'),
(2002, 'Universitas Qomaruddin'),
(2003, 'Universitas Quality'),
(2004, 'Universitas Quality Berastagi'),
(2005, 'Universitas Raharja'),
(2006, 'Universitas Ratu Samban'),
(2007, 'Universitas Respati Indonesia'),
(2008, 'Universitas Respati Yogyakarta'),
(2009, 'Universitas Riau'),
(2010, 'Universitas Riau Kepulauan'),
(2011, 'Universitas Sahid'),
(2012, 'Universitas Sahid Surakarta'),
(2013, 'Universitas Sains Alqur an'),
(2014, 'Universitas Sains Cut Nyak Dhien'),
(2015, 'Universitas Sains Dan Teknologi Jayapura'),
(2016, 'Universitas Sains dan Teknologi Komputer'),
(2017, 'Universitas Sam Ratulangi'),
(2018, 'Universitas Samawa'),
(2019, 'Universitas Sampoerna'),
(2020, 'Universitas Samudra'),
(2021, 'Universitas San Pedro'),
(2022, 'Universitas Sanata Dharma'),
(2023, 'Universitas Sang Bumi Ruwa Jurai'),
(2024, 'Universitas Sangga Buana'),
(2025, 'Universitas Sari Mulia'),
(2026, 'Universitas Sari Mutiara Indonesia Medan'),
(2027, 'Universitas Sari Putra Indonesia Tomohon'),
(2028, 'Universitas Sarjanawiyata Tamansiswa'),
(2029, 'Universitas Satya Negara Indonesia'),
(2030, 'Universitas Satya Wiyata Mandala'),
(2031, 'Universitas Satyagama'),
(2032, 'Universitas Sawerigading Makassar'),
(2033, 'Universitas Sebelas Maret'),
(2034, 'Universitas Selamat Sri'),
(2035, 'Universitas Semarang'),
(2036, 'Universitas Sembilanbelas November Kolaka'),
(2037, 'Universitas Serambi Mekkah'),
(2038, 'Universitas Serang Raya'),
(2039, 'Universitas Setia Budi Surakarta'),
(2040, 'Universitas Siliwangi'),
(2041, 'Universitas Simalungun'),
(2042, 'Universitas Singaperbangsa Karawang'),
(2043, 'Universitas Sintuwu Maroso Poso'),
(2044, 'Universitas Sisingamangaraja XII Tapanuli Utara'),
(2045, 'Universitas Sjakhyakirti'),
(2046, 'Universitas Slamet Riyadi'),
(2047, 'Universitas Soerjo'),
(2048, 'Universitas Sriwijaya'),
(2049, 'Universitas Stikubank'),
(2050, 'Universitas Subang'),
(2051, 'Universitas Sulawesi Barat'),
(2052, 'Universitas Sulawesi Tenggara'),
(2053, 'Universitas Sultan Ageng Tirtayasa'),
(2054, 'Universitas Sultan Fatah'),
(2055, 'Universitas Sumatera Selatan'),
(2056, 'Universitas Sumatera Utara'),
(2057, 'Universitas Sunan Bonang'),
(2058, 'Universitas Sunan Giri Surabaya'),
(2059, 'Universitas Surabaya'),
(2060, 'Universitas Surakarta'),
(2061, 'Universitas Surapati'),
(2062, 'Universitas Surya'),
(2063, 'Universitas Suryakancana'),
(2064, 'Universitas Sutomo'),
(2065, 'Universitas Swadaya Gunung Djati'),
(2066, 'Universitas Swiss German'),
(2067, 'Universitas Syiah Kuala'),
(2068, 'Universitas Tabanan'),
(2069, 'Universitas Tadulako'),
(2070, 'Universitas Tama Jagakarsa'),
(2071, 'Universitas Tamansiswa'),
(2072, 'Universitas Tamansiswa'),
(2073, 'Universitas Tanjungpura'),
(2074, 'Universitas Tanri Abeng'),
(2075, 'Universitas Tarumanagara'),
(2076, 'Universitas Teknokrat Indonesia'),
(2077, 'Universitas Teknologi Indonesia'),
(2078, 'Universitas Teknologi Mataram'),
(2079, 'Universitas Teknologi Nusantara Cilegon'),
(2080, 'Universitas Teknologi Sulawesi'),
(2081, 'Universitas Teknologi Sulawesi Utara'),
(2082, 'Universitas Teknologi Sumbawa'),
(2083, 'Universitas Teknologi Surabaya'),
(2084, 'Universitas Teknologi Yogyakarta'),
(2085, 'Universitas Telkom'),
(2086, 'Universitas Terbuka'),
(2087, 'Universitas Teuku Umar'),
(2088, 'Universitas Tidar'),
(2089, 'Universitas Timika'),
(2090, 'Universitas Timor'),
(2091, 'Universitas Tjut Nyak Dhien'),
(2092, 'Universitas Tomakaka'),
(2093, 'Universitas Tompotika Luwuk Banggai'),
(2094, 'Universitas Triatma Mulya'),
(2095, 'Universitas Tribhuwana Tungga Dewi'),
(2096, 'Universitas Tribuana Kalabahi'),
(2097, 'Universitas Tridharma'),
(2098, 'Universitas Tridinanti'),
(2099, 'Universitas Trilogi'),
(2100, 'Universitas Trinita'),
(2101, 'Universitas Trisakti'),
(2102, 'Universitas Trunajaya Bontang'),
(2103, 'Universitas Trunojoyo'),
(2104, 'Universitas Tulang Bawang'),
(2105, 'Universitas Tulungagung'),
(2106, 'Universitas Tunas Pembangunan Surakarta (UTP)'),
(2107, 'Universitas Ubudiyah Indonesia'),
(2108, 'Universitas Udayana'),
(2109, 'Universitas Universal'),
(2110, 'Universitas Veteran Bangun Nusantara'),
(2111, 'Universitas Victory Sorong'),
(2112, 'Universitas W R Supratman'),
(2113, 'Universitas Wahid Hasyim'),
(2114, 'Universitas Wahidiyah'),
(2115, 'Universitas Wanita Internasional'),
(2116, 'Universitas Warmadewa'),
(2117, 'Universitas Widya Dharma'),
(2118, 'Universitas Widya Dharma Pontianak'),
(2119, 'Universitas Widya Gama'),
(2120, 'Universitas Widya Gama Mahakam Samarinda'),
(2121, 'Universitas Widya Husada Semarang'),
(2122, 'Universitas Widya Kartika'),
(2123, 'Universitas Widya Mataram'),
(2124, 'Universitas Widyatama'),
(2125, 'Universitas Wijaya Kusuma Purwokerto'),
(2126, 'Universitas Wijaya Kusuma Surabaya'),
(2127, 'Universitas Wijaya Putra'),
(2128, 'Universitas Winaya Mukti'),
(2129, 'Universitas Wiralodra'),
(2130, 'Universitas Wiraraja'),
(2131, 'Universitas Wiraswasta Indonesia'),
(2132, 'Universitas Wisnuwardhana'),
(2133, 'Universitas Yapis Papua'),
(2134, 'Universitas Yarsi'),
(2135, 'Universitas Yos Soedarso'),
(2136, 'Universitas Yudharta Pasuruan');

-- --------------------------------------------------------

--
-- Table structure for table `proses_personalia`
--

CREATE TABLE `proses_personalia` (
  `id_proses` int(11) NOT NULL,
  `id_lamaran` int(11) NOT NULL,
  `id_jenjang` int(11) NOT NULL,
  `id_penempatan` int(11) NOT NULL,
  `tanggal_proses` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(11) NOT NULL COMMENT 'NIK PENABUR',
  `nama_lengkap` varchar(100) NOT NULL,
  `id_role` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_lengkap`, `id_role`, `email`, `password`) VALUES
('116162', 'Redy Septyanto', 1, 'redy.septyanto@bpkpenaburjakarta.or.id', 'Penabur123'),
('116163', 'Eka Muliawan', 1, 'eka.muliawan@bpkpenaburjakarta.or.id', 'Penabur123'),
('116165', 'Antoni Wijaya', 1, 'antoni.wijaya@bpkpenaburjakarta.or.id', 'Penabur123'),
('116168', 'Bonaventura Yudistira', 2, 'bonaventura.yudistira@bpkpenaburjakarta.or.id', 'Penabur123'),
('SP0003', 'Aditya Dwi Aprianto', 1, 'aditya.aprianto@bpkpenaburjakarta.or.id', 'Penabur123');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ceksyarat`
-- (See below for the actual view)
--
CREATE TABLE `v_ceksyarat` (
`nama_lengkap` varchar(100)
,`agama` set('Kristen Protestan','Kristen Katolik','Islam','Hindu','Buddha','Konghucu')
,`usia` int(2)
,`jenis_kelamin` varchar(1)
,`status_pernikahan` varchar(20)
,`pendidikan_terakhir` varchar(20)
,`jurusan` varchar(100)
,`ipk` int(11)
,`ijazah` varchar(100)
,`file_ktp` varchar(100)
,`file_npwp` varchar(100)
,`file_kk` varchar(100)
,`surat_baptis` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lamaran`
-- (See below for the actual view)
--
CREATE TABLE `v_lamaran` (
`id_lowongan` int(11)
,`nama_lengkap` varchar(100)
,`judul` varchar(100)
,`universitas` varchar(100)
,`jurusan` varchar(100)
,`agama` set('Kristen Protestan','Kristen Katolik','Islam','Hindu','Buddha','Konghucu')
,`usia` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lowonganDetail`
-- (See below for the actual view)
--
CREATE TABLE `v_lowonganDetail` (
`id_lowongan` int(11)
,`judul` varchar(100)
,`id_posisi` int(11)
,`nama_posisi` varchar(50)
,`id_jurusan` int(11)
,`nama_jurusan` varchar(50)
,`penempatan` varchar(50)
,`tanggal_post` timestamp
,`deskripsi` text
,`status_lowongan` varchar(20)
,`jumlahlamaran` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `v_ceksyarat`
--
DROP TABLE IF EXISTS `v_ceksyarat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ceksyarat`  AS SELECT `kandidat`.`nama_lengkap` AS `nama_lengkap`, `kandidat`.`agama` AS `agama`, `kandidat`.`usia` AS `usia`, `kandidat`.`jenis_kelamin` AS `jenis_kelamin`, `kandidat`.`status_pernikahan` AS `status_pernikahan`, `kandidat`.`pendidikan_terakhir` AS `pendidikan_terakhir`, `kandidat_pendidikan`.`jurusan` AS `jurusan`, `kandidat_pendidikan`.`ipk` AS `ipk`, `kandidat_pendidikan`.`ijazah` AS `ijazah`, `kandidat_lampiran`.`file_ktp` AS `file_ktp`, `kandidat_lampiran`.`file_npwp` AS `file_npwp`, `kandidat_lampiran`.`file_kk` AS `file_kk`, `kandidat_lampiran`.`surat_baptis` AS `surat_baptis` FROM ((`kandidat_pendidikan` join `kandidat` on(`kandidat_pendidikan`.`id_kandidat` = `kandidat`.`id_kandidat`)) join `kandidat_lampiran` on(`kandidat`.`id_kandidat` = `kandidat_lampiran`.`id_kandidat`))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_lamaran`
--
DROP TABLE IF EXISTS `v_lamaran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lamaran`  AS SELECT `lamaran`.`id_lowongan` AS `id_lowongan`, `kandidat`.`nama_lengkap` AS `nama_lengkap`, `lowongan`.`judul` AS `judul`, `kandidat`.`universitas` AS `universitas`, `kandidat`.`jurusan` AS `jurusan`, `kandidat`.`agama` AS `agama`, `kandidat`.`usia` AS `usia` FROM ((`kandidat` join `lamaran` on(`kandidat`.`id_kandidat` = `lamaran`.`id_kandidat`)) join `lowongan` on(`lamaran`.`id_lowongan` = `lowongan`.`id_lowongan`))  ;

-- --------------------------------------------------------

--
-- Structure for view `v_lowonganDetail`
--
DROP TABLE IF EXISTS `v_lowonganDetail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lowonganDetail`  AS SELECT `lowongan`.`id_lowongan` AS `id_lowongan`, `lowongan`.`judul` AS `judul`, `lowongan`.`id_posisi` AS `id_posisi`, `master_posisi`.`nama_posisi` AS `nama_posisi`, `lowongan`.`id_jurusan` AS `id_jurusan`, `master_jurusan`.`nama_jurusan` AS `nama_jurusan`, `lowongan`.`penempatan` AS `penempatan`, `lowongan`.`tanggal_post` AS `tanggal_post`, `lowongan`.`deskripsi` AS `deskripsi`, `lowongan`.`status_lowongan` AS `status_lowongan`, count(`lamaran`.`id_lamaran`) AS `jumlahlamaran` FROM (((`lowongan` join `master_posisi` on(`lowongan`.`id_posisi` = `master_posisi`.`id_posisi`)) join `master_jurusan` on(`lowongan`.`id_jurusan` = `master_jurusan`.`id_jurusan`)) left join `lamaran` on(`lowongan`.`id_lowongan` = `lamaran`.`id_lowongan`)) GROUP BY `lowongan`.`id_lowongan` ORDER BY `lowongan`.`id_posisi` ASC  ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`id_lamaran`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);
--
-- Database: `rekrutmensdm`
--
CREATE DATABASE IF NOT EXISTS `rekrutmensdm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rekrutmensdm`;

-- --------------------------------------------------------

--
-- Table structure for table `data_universitas`
--

CREATE TABLE `data_universitas` (
  `id` int(144) NOT NULL,
  `nama_universitas` varchar(444) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_universitas`
--

INSERT INTO `data_universitas` (`id`, `nama_universitas`) VALUES
(1, 'Universitas Syiah Kuala, Banda Aceh\r\n'),
(2, 'Universitas Malikussaleh, Lhokseumawe\r\n'),
(3, 'Politeknik Negeri Lhokseumawe, Lhokseumawe\r\n'),
(4, 'Politeknik Negeri Aceh, Banda Aceh\r\n'),
(5, 'Universitas Samudra, Langsa\r\n'),
(6, 'Universitas Teuku Umar, Meulaboh\r\n'),
(7, 'Politeknik Aceh, Banda Aceh\r\n'),
(8, 'UIN Ar-Raniry, Banda Aceh\r\n'),
(9, 'STAIN Malikussaleh, Lhokseumawe\r\n'),
(10, 'STAIN Zawiyah Cot Kala, Langsa\r\n'),
(11, 'Akademi Komunitas Negeri (AKN) Aceh Barat Daya\r\n'),
(12, 'STAIN Gajah Putih Takengon\r\n'),
(13, 'IAIN Langsa, Langsa\r\n'),
(14, 'STAIN Malikussaleh, Lhokseumawe\r\n'),
(15, 'STAIN Gajah Putih Takengon, Takengon\r\n'),
(16, 'STAIN Teungku Dirundeng, Melabuh\r\n'),
(17, 'Politeknik Kesehatan Banda Aceh\r\n'),
(18, 'Universitas Serambi Mekkah\r\n'),
(19, 'Universitas Sumatera Utara, Medan\r\n'),
(20, 'Universitas Negeri Medan, Medan\r\n'),
(21, 'Politeknik Negeri Medan, Medan\r\n'),
(22, 'Politeknik Negeri Media Kreatif, Medan\r\n'),
(23, 'Institut Agama Islam Negeri Sumatera utara, Medan\r\n'),
(24, 'Poltekes Depkes Medan, Medan\r\n'),
(25, 'STAIN Padang Sidempuan, Padang Sidempuan\r\n'),
(26, 'UIN Sumatera Utara, Medan\r\n'),
(27, 'IAIN Padang Sidempuan, Tapanuli Selatan\r\n'),
(28, 'Akademi Teknik Keselamatan Penerbangan (ATKP) Medan\r\n'),
(29, 'Sekolah Tinggi Agama Kristen Protestan Negeri Tarutung\r\n'),
(30, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Medan\r\n'),
(31, 'Politeknik Negeri Medan\r\n'),
(32, 'kademi Tek. Kes. Penerbangan (ATKP), Medan\r\n'),
(33, 'Sekolah Tinggi Penyuluhan Pertanian Medan \r\n'),
(34, 'Universitas Andalas, Padang\r\n'),
(35, 'Universitas Negeri Padang, Padang\r\n'),
(36, 'Politeknik Negeri Padang, Padang\r\n'),
(37, 'Politeknik Pertanian, Payakumbuh\r\n'),
(38, 'STSI (Sekolah Tinggi Seni Indonesia Padang Panjang), Padang Panjang\r\n'),
(39, 'IAIN Imam Bonjol, Padang\r\n'),
(40, 'STAIN Batusangkar\r\n'),
(41, 'STAIN Bukittinggi\r\n'),
(42, 'ISI Padang Panjang\r\n'),
(43, 'IAIN Imam Bonjol, Padang\r\n'),
(44, 'STAIN Sjech M. Djamil Djambek , Bukittinggi\r\n'),
(45, 'Politeknik Negeri Sriwijaya\r\n'),
(46, 'Universitas Riau, Pekanbaru\r\n'),
(47, 'UIN Sultan Syarif Kasim (SUSKA), Pekanbaru\r\n'),
(48, 'Politeknik Negeri Bengkalis\r\n'),
(49, 'Universitas Maritim Raja Ali Haji\r\n'),
(50, 'Politeknik Negeri Batam\r\n'),
(51, 'UIN Sultan Syarif Kasim, Riau\r\n'),
(52, 'STAIN Bengkalis, Riau (Riau)\r\n'),
(53, 'Universitas Jambi, Jambi\r\n'),
(54, 'STAIN Kerinci\r\n'),
(55, 'IAIN Sultan Thaha Saifuddin\r\n'),
(56, 'Politeknik Kesehatan Jambi\r\n'),
(57, 'Universitas Bengkulu, Bengkulu\r\n'),
(58, 'IAIN Bengkulu\r\n'),
(59, 'STAIN CURUP\r\n'),
(60, 'Poltekkes Kemenkes Bengkulu\r\n'),
(61, 'STAIN Curup, Rejang Lebong\r\n'),
(62, 'Universitas Sriwijaya, Palembang\r\n'),
(63, 'Politeknik Negeri Sriwijaya, Palembang\r\n'),
(64, 'Poltekkes depkes Palembang, Palembang\r\n'),
(65, 'Akademi Komunitas Negeri Prabumulih, Prabumulih\r\n'),
(66, 'IAIN Raden Fatah\r\n'),
(67, 'Universitas Lampung, Bandar Lampung\r\n'),
(68, 'Politeknik Negeri Lampung, Bandar Lampung\r\n'),
(69, 'Poltekkes Kemenkes Tanjungkarang, Bandar Lampung\r\n'),
(70, 'STIM (Sekolah Tinggi Olahraga Metro), Kota Metro\r\n'),
(71, 'Institut Agama Islam Negeri Raden Intan, Bandar Lampung\r\n'),
(72, 'STAIN Jurai Siwo Metro\r\n'),
(73, 'IAIN Raden Intan, Bandar Lampung\r\n'),
(74, 'Universitas Bangka Belitung, Bangka Belitung\r\n'),
(75, 'Politeknik Manufaktur, Bangka Belitung\r\n'),
(76, 'Poltekkes Kemenkes Pangkal Pinang, Bangka Belitung\r\n'),
(77, 'STAIN Syekh Abdurrahman Siddik, Bangka Belitung\r\n'),
(78, 'Universitas Sultan Ageng Tirtayasa, Serang\r\n'),
(79, 'Perguruan Tinggi Buddhi, Karawaci\r\n'),
(80, 'IAIN Sultan Maulana Hasanuddin\r\n'),
(81, 'Universitas Pendidikan Indonesia, Kampus Daerah Serang\r\n'),
(82, 'Universitas Terbuka Pondok Cabe\r\n'),
(83, 'Sekolah Tinggi Agama Buddha Negeri Sriwijaya Tangerang\r\n'),
(84, 'Akademi Meteorologi dan Geofisika (AMG) Tangerang\r\n'),
(85, 'Institut Agama Islam Banten (IAIB)\r\n'),
(86, 'Universitas Indonesia\r\n'),
(87, 'Universitas Pertahanan Indonesia (UNHAN)\r\n'),
(88, 'Universitas Negeri Jakarta\r\n'),
(89, 'Universitas Terbuka\r\n'),
(90, 'Politeknik Negeri Jakarta\r\n'),
(91, 'Politeknik Negeri Media Kreatif, Jakarta\r\n'),
(92, 'UIN Syarif Hidayatullah Jakartaâ€Ž\r\n'),
(93, 'Sekolah Tinggi Ilmu Pelayaran Jakarta\r\n'),
(94, 'Sekolah Tinggi Manajemen Industri Indonesia\r\n'),
(95, 'Akademi Pimpinan Perusahaan (APP), Jakarta\r\n'),
(96, 'Institut Ilmu Pemerintahan, IIP, Jakarta\r\n'),
(97, 'Sekolah Tinggi Akuntansi Negara, STAN\r\n'),
(98, 'Sekolah Tinggi Hukum Militer, STHM\r\n'),
(99, 'Sekolah Tinggi Ilmu Administrasi, LAN Jakarta\r\n'),
(100, 'Sekolah Tinggi Ilmu Kepolisian (PTIK), Jakarta\r\n'),
(101, 'Sekolah Tinggi Ilmu Pelayaran (STIP), Jakarta\r\n'),
(102, 'Sekolah Tinggi Ilmu Statistik (STIS), Jakarta\r\n'),
(103, 'Sekolah Tinggi Manajemen Industri(STMI), Jakarta\r\n'),
(104, 'Sekolah Tinggi Penerbangan Indonesia (PI), Jakarta\r\n'),
(105, 'Sekolah Tinggi Perikanan (STP), Jakarta\r\n'),
(106, 'Politeknik Kesehatan Jakarta I   \r\n'),
(107, 'Politeknik Kesehatan Jakarta II\r\n'),
(108, 'Politeknik Negeri Jakarta\r\n'),
(109, 'Politeknik Manufaktur Negeri Bandung, Bandung\r\n'),
(110, 'Universitas Pendidikan Indonesia, Bandung\r\n'),
(111, 'Universitas Padjadjaran, Bandung\r\n'),
(112, 'Universitas Jenderal Achmad Yani, Bandung\r\n'),
(113, 'Institut Pertanian Bogor, Bogor\r\n'),
(114, 'Institut Teknologi Bandung, Bandung\r\n'),
(115, 'Politeknik Negeri Bandung, Bandung\r\n'),
(116, 'Politeknik Indramayu, Indramayu\r\n'),
(117, 'Universitas Siliwangi (UNSIL), Tasikmalaya\r\n'),
(118, 'niversitas Singaperbangsa (UNSIKA), Kampus Daerah Karawang\r\n'),
(119, 'Universitas Swadaya Gunung Jati (Unswagati) di Kota Cirebon\r\n'),
(120, 'Universitas Pendidikan Indonesia, Kampus Daerah Cibiru\r\n'),
(121, 'Universitas Pendidikan Indonesia, Kampus Daerah Tasikmalaya\r\n'),
(122, 'Universitas Pendidikan Indonesia, Kampus Daerah Sumedang\r\n'),
(123, 'Universitas Pendidikan Indonesia, Kampus Daerah Purwakarta\r\n'),
(124, 'Akademi Ilmu Pemasyarakatan (AKIP), Depok\r\n'),
(125, 'Akademi Imigrasi (AIM) Depok\r\n'),
(126, 'Akademi Kimia Analis (AKA) Bogor\r\n'),
(127, 'Sekolah Tinggi Ilmu Administrasi, Bandung\r\n'),
(128, 'Sekolah Tinggi Sandi Negara (STSN), Bogor\r\n'),
(129, 'Sekolah Tinggi Seni Indonesia (STSI), Bandung\r\n'),
(130, 'Sekolah Tinggi Transportasi Darat (STTD), Bekasi\r\n'),
(131, 'Sekolah Tinggi Kesejahteraan Sosial (STKS), Bandung\r\n'),
(132, 'Sekolah Tinggi Pemerintahan Dalam Negeri (STPDN), Sumedang\r\n'),
(133, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Bogor\r\n'),
(134, 'STAIN Cirebon\r\n'),
(135, 'Politeknik Kesehatan Bandung\r\n'),
(136, 'Politeknik Manufaktur Bandung\r\n'),
(137, 'Politeknik Negeri Bali, Badung\r\n'),
(138, 'Universitas Diponegoro, Semarang\r\n'),
(139, 'Universitas Negeri Semarang, Semarang\r\n'),
(140, 'Universitas Jenderal Soedirman, Purwokerto\r\n'),
(141, 'Universitas Negeri Surakarta Sebelas Maret, Surakarta\r\n'),
(142, 'Politeknik Negeri Semarang, Semarang \r\n'),
(143, 'Politeknik Maritim Negeri Indonesia, Semarang\r\n'),
(144, 'Institut Seni Indonesia Surakarta, Surakarta (ISI Solo, dahulu STSI)\r\n'),
(145, 'Universitas Tidar Magelang, Magelang\r\n'),
(146, 'UIN Walisongo, Semarang\r\n'),
(147, 'IAIN Surakarta, Surakarta\r\n'),
(148, 'STAIN Kudus, Kudus\r\n'),
(149, 'STAIN Pekalongan, Pekalongan\r\n'),
(150, 'IAIN Salatiga, Salatiga\r\n'),
(151, 'IAIN Purwokerto, Purwokerto\r\n'),
(152, 'Akademi Kepolisian (AKPOL),Semarang\r\n'),
(153, 'Akademi Militer (AKMIL) TNI AD, Magelang\r\n'),
(154, 'Akademi Minyak dan Gas Bumi (AKAMIGAS), Blora\r\n'),
(155, 'Akademi Sanitasi dan Kesehatan Lingkungan (ASKK), Purwokerto\r\n'),
(156, 'Sekolah Tinggi Seni Indonesia (STSI), Surakarta\r\n'),
(157, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Magelang\r\n'),
(158, 'Politeknik Ilmu Pelayaran Semarang\r\n'),
(159, 'Politeknik Kesehatan Semarang\r\n'),
(160, 'Politeknik Kesehatan Surakarta\r\n'),
(161, 'Universitas Gadjah Mada\r\n'),
(162, 'Universitas Negeri Yogyakarta\r\n'),
(163, 'Institut Seni Indonesia Yogyakarta\r\n'),
(164, 'Universita Terbuka  UPBJJ Yogyakarta\r\n'),
(165, 'Akademi Teknologi Kulit Yogyakarta (ATK)\r\n'),
(166, 'Universitas Pembangunan Nasional Veteran (UPN), Yogyakarta\r\n'),
(167, 'UIN Sunan Kalijaga\r\n'),
(168, 'Akademi Angkatan Udara (AAU), Yogyakarta\r\n'),
(169, 'Sekolah Tinggi Pertanahan Nasional (STPN), Yogyakarta\r\n'),
(170, 'Sekolah Tinggi Teknologi Nuklir (STTN), Yogyakarta\r\n'),
(171, 'Politeknik Kesehatan Yogyakarta\r\n'),
(172, 'Universitas Airlangga, Surabaya\r\n'),
(173, 'Universitas Negeri Surabaya, Surabaya\r\n'),
(174, 'Universitas Brawijaya, Malang\r\n'),
(175, 'Universitas Negeri Malang, Malang\r\n'),
(176, 'Universitas Jember, Jember\r\n'),
(177, 'Universitas Trunojoyo, Bangkalan\r\n'),
(178, 'Politeknik Elektronika Negeri Surabaya, Surabaya\r\n'),
(179, 'Politeknik Perkapalan Negeri Surabaya, Surabaya\r\n'),
(180, 'Politeknik Negeri Madura, Sampang\r\n'),
(181, 'Politeknik Negeri Malang, Malang\r\n'),
(182, 'Politeknik Negeri Madiun, Madiun\r\n'),
(183, 'Politeknik Negeri Jember, Jember\r\n'),
(184, 'Institut Teknologi Sepuluh Nopember, Surabaya\r\n'),
(185, 'Akademi Komunitas Negeri, Bojonegoro\r\n'),
(186, 'Akademi Komunitas Negeri, Pacitan\r\n'),
(187, 'Universitas Pembangunan Nasional Veteran (UPN), Surabaya\r\n'),
(188, 'Politeknik Negeri Banyuwangi, Banyuwangi\r\n'),
(189, 'Akademi Komunitas Negeri Lamongan, Lamongan\r\n'),
(190, 'Akademi Komunitas Negeri Sumenep. Sumenep\r\n'),
(191, 'Akademi Komunitas Negeri Bojonegoro, Bojonegoro\r\n'),
(192, 'Universitas Islam Negeri Maulana Malik Ibrahim, Malang\r\n'),
(193, 'STAIN Kediri\r\n'),
(194, 'STAIN Ponorogo\r\n'),
(195, 'UIN Sunan Ampel\r\n'),
(196, 'IAIN Tulungagung\r\n'),
(197, 'UIN Maulana Malik Ibrahim, Malang\r\n'),
(198, 'STAIN Pamekasan, Pamekasan\r\n'),
(199, 'Akademi Angkatan Laut (AAL), Surabaya\r\n'),
(200, 'Teknik Keselamatan Penerbangan (ATKP) Surabaya\r\n'),
(201, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Malang\r\n'),
(202, 'IAIN Jember, Jember\r\n'),
(203, 'Politeknik Elektronika Negeri Surabaya\r\n'),
(204, 'Politeknik Kesehatan Malang\r\n'),
(205, 'Politeknik Kesehatan Surabaya\r\n'),
(206, 'Politeknik Pertanian Negeri Jember\r\n'),
(207, 'Akademi TKP â€“ Surabaya \r\n'),
(208, 'Universitas Mataram, Mataram\r\n'),
(209, 'IAIN Mataram, Lombok\r\n'),
(210, 'Sekolah Tinggi Agama Hindu Negeri (STAHN) Gde Puja, Mataram\r\n'),
(211, 'Universitas Nusa Cendana, Kupang\r\n'),
(212, 'Politeknik Negeri Kupang, Kupang\r\n'),
(213, 'Politeknik Pertanian Negeri Kupang, Kupang\r\n'),
(214, 'Universitas Udayana, Denpasar\r\n'),
(215, 'Universitas Pendidikan Ganesha, Singaraja\r\n'),
(216, 'Politeknik Negeri Bali, Kuta-Badung\r\n'),
(217, 'Institut Seni Indonesia Denpasar, Denpasar\r\n'),
(218, 'Politeknik Negeri Tanah Lot\r\n'),
(219, 'Institut Hindu Dharma Negeri (IHDN) Denpasar\r\n'),
(220, 'Akademi Kebidanan Pemprov Bali singaraja\r\n'),
(221, 'Sekolah Tinggi Pariwisata Bali\r\n'),
(222, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Denpasar\r\n'),
(223, 'Politeknik Kesehatan Denpasar\r\n'),
(224, 'Universitas Tanjungpura, Pontianak\r\n'),
(225, 'Politeknik Negeri Pontianak, Pontianak\r\n'),
(226, 'Politeknik Kesehatan Kementerian Kesehatan, Pontianak\r\n'),
(227, 'Politeknik Terpikat Sambas\r\n'),
(228, 'Politeknik Tonggak Equator\r\n'),
(229, 'Politeknik Ketapang\r\n'),
(230, 'Politeknik Tunas Bangsa\r\n'),
(231, 'IAIN Pontianak sebelumnya STAIN Pontianak\r\n'),
(232, 'Universitas Palangka Raya, Palangka Raya\r\n'),
(233, 'IAIN Palangkaraya, Palangkaraya\r\n'),
(234, 'Sekolah Tinggi Agama Hindu Negeri Tampung Peyang, Palangka Raya\r\n'),
(235, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Palangkaraya\r\n'),
(236, 'Universitas Lambung Mangkurat, Banjarmasin\r\n'),
(237, 'Politeknik Negeri Banjarmasin, Banjarmasin\r\n'),
(238, 'IAIN ANTASARI, Banjarmasin\r\n'),
(239, 'Poltekkes Banjarmasin\r\n'),
(240, 'Ooliteknik Pertanian Negeri Samarinda\r\n'),
(241, 'Universitas Mulawarman, Samarinda\r\n'),
(242, 'Politeknik Negeri Samarinda, Samarinda\r\n'),
(243, 'Politeknik Pertanian Negeri Samarinda, Samarinda\r\n'),
(244, 'Universitas Borneo Tarakan, Tarakan\r\n'),
(245, 'Politeknik Balikpapan, Balikpapan\r\n'),
(246, 'IAIN Samarinda, Samarinda\r\n'),
(247, 'Universitas Borneo Tarakan\r\n'),
(248, 'Universitas Sam Ratulangi, Manado\r\n'),
(249, 'Universitas Negeri Manado, Manado\r\n'),
(250, 'Politeknik Negeri Manado, Manado\r\n'),
(251, 'Politeknik Negeri Nusa Utara, Tahuna\r\n'),
(252, 'IAIN Manado, Manado (Sulawesi Utara)\r\n'),
(253, 'Politeknik Kesehatan Manado\r\n'),
(254, 'Politeknik Negeri Manado\r\n'),
(255, 'Universitas Negeri Gorontalo, Gorontalo\r\n'),
(256, 'IAIN Sultan Amai, Gorontalo\r\n'),
(257, 'Universitas Tadulako, Palu\r\n'),
(258, 'Sekolah Tinggi Ilmu Ekonomi (YPP Mujahidin), Tolitoli\r\n'),
(259, 'IAIN Dato Karamau, Palu\r\n'),
(260, 'STAIN Datokarama, Palu\r\n'),
(261, 'Politeknik Kesehatan Kemenkes Makassar, Makassar\r\n'),
(262, 'Universitas Hasanuddin, Makassar\r\n'),
(263, 'Universitas Negeri Makassar\r\n'),
(264, 'Politeknik Pertanian Negeri Pangkajene Kepulauan, Pangkajene Kepulauan\r\n'),
(265, 'Politeknik Negeri Ujung pandang, Makassar\r\n'),
(266, 'Universitas Maiwa Enrekang\r\n'),
(267, 'Politeknik Negeri Media Kreatif, Makassar\r\n'),
(268, 'Universitas Islam Negeri Makassar\r\n'),
(269, 'UIN Alauddin, Makassar\r\n'),
(270, 'STAIN Watampone, Bone\r\n'),
(271, 'STAIN Parepare, Parepare\r\n'),
(272, 'IAIN Palopo, Palopo\r\n'),
(273, 'Akademi Teknik Keselamatan Penerbangan (ATKP) Makasar\r\n'),
(274, 'Sekolah Tinggi Ilmu Adm, Ujung Pandang\r\n'),
(275, 'Sekolah Tinggi Seni Indonesia, Padang Panjang\r\n'),
(276, 'Sekolah Tinggi Agama Kristen Negeri (STAKN) Toraja\r\n'),
(277, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Gowa\r\n'),
(278, 'Akademi Teknik Keselamatan Penerbangan Makasar\r\n'),
(279, 'Universitas Haluoleo, Kendari\r\n'),
(280, 'Sekolah Tinggi Pertanian (STIP) Muna Kampus Baru, Muna\r\n'),
(281, 'STAIN Kendari\r\n'),
(282, 'Universitas 19 November Kolaka\r\n'),
(283, 'Universitas Muhammadiyah Kendari\r\n'),
(284, 'Universitas Lakidende\r\n'),
(285, 'Universitas Dayanu Iksanudin\r\n'),
(286, 'Universitas Muhammadiyah Buton\r\n'),
(287, 'Universitas Sulawesi Tenggara\r\n'),
(288, 'IAIN Kendari, Palu\r\n'),
(289, 'Universitas Negeri Sulawesi Barat\r\n'),
(290, 'Universitas Pattimura, Ambon\r\n'),
(291, 'Universitas Darussalam, Ambon\r\n'),
(292, 'Politeknik Negeri Ambon, Ambon\r\n'),
(293, 'Politeknik Perikanan Negeri Tual, Tual\r\n'),
(294, 'STAKPN Ambon\r\n'),
(295, 'IAIN Ambon\r\n'),
(296, 'Sekolah Tinggi Agama Kristen Protestan Negeri Ambon\r\n'),
(297, 'STAIN Ambon\r\n'),
(298, 'Universitas Khairun, Ternate\r\n'),
(299, 'IAIN Ternate, Ternate\r\n'),
(300, 'Universitas Cendrawasih, Jayapura\r\n'),
(301, 'Universitas Musamus Merauke, Merauke\r\n'),
(302, 'STAIN Al-Fatah, Jayapura\r\n'),
(303, 'Sekolah Tinggi. Agama Kristen Negeri (STAKN) Jayapura\r\n'),
(304, 'Universitas Negeri Papua, Manokwari \r\n'),
(305, 'STAIN Sorong, Sorong\r\n'),
(306, 'Sekolah Tinggi Penyuluhan Pertanian (STTP) Manokwari');

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_anak`
--

CREATE TABLE `kandidat_anak` (
  `id_anak` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `status_pernikahan` varchar(20) DEFAULT NULL,
  `tanggal_nikah` date DEFAULT NULL,
  `anak_nama` varchar(100) DEFAULT NULL,
  `anak_tempat_lahir` varchar(50) DEFAULT NULL,
  `anak_tgl_lahir` date DEFAULT NULL,
  `anak_pendidikan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_keluarga`
--

CREATE TABLE `kandidat_keluarga` (
  `id_keluarga` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `keluarga_nama` varchar(100) DEFAULT NULL,
  `keluarga_hubungan` varchar(50) DEFAULT NULL,
  `keluarga_tgl_lahir` date DEFAULT NULL,
  `keluarga_wa` bigint(20) DEFAULT NULL,
  `keluarga_pekerjaan` varchar(50) DEFAULT NULL,
  `keluarga_alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_kesehatan`
--

CREATE TABLE `kandidat_kesehatan` (
  `id_kesehatan` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `gol_darah` varchar(10) DEFAULT NULL,
  `berat_badan` varchar(10) DEFAULT NULL,
  `tinggi_badan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_organisasi`
--

CREATE TABLE `kandidat_organisasi` (
  `id_organisasi` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `nama_organisasi` varchar(100) DEFAULT NULL,
  `tahun_mulai` date DEFAULT NULL,
  `tahun_akhir` date DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pasangan`
--

CREATE TABLE `kandidat_pasangan` (
  `id_pasangan` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `status_pernikahan` varchar(20) DEFAULT NULL,
  `tanggal_nikah` date DEFAULT NULL,
  `pasangan_nama` varchar(100) DEFAULT NULL,
  `pasangan_tempat_lahir` varchar(50) DEFAULT NULL,
  `pasangan_tgl_lahir` date DEFAULT NULL,
  `pasangan_wa` bigint(20) DEFAULT NULL,
  `pasangan_agama` varchar(20) DEFAULT NULL,
  `pasangan_negara` varchar(20) DEFAULT NULL,
  `pasangan_pekerjaan` varchar(50) DEFAULT NULL,
  `jumlah_anak` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pendidikan`
--

CREATE TABLE `kandidat_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `jenjang` varchar(20) DEFAULT NULL,
  `nama_institusi` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `ipk` int(11) DEFAULT NULL,
  `tahun_masuk` date DEFAULT NULL,
  `tahun_lulus` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kandidat_pengalaman`
--

CREATE TABLE `kandidat_pengalaman` (
  `id_pengalaman` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `nama_pengalaman` varchar(100) DEFAULT NULL,
  `tahun_mulai` date DEFAULT NULL,
  `tahun_akhir` date DEFAULT NULL,
  `nama_perusahaan` varchar(100) DEFAULT NULL,
  `alasan_berhenti` varchar(255) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lamaran`
--

CREATE TABLE `lamaran` (
  `id_lamaran` char(9) NOT NULL COMMENT 'A22122501\nA=Application\nYYMMDDXX',
  `id_lowongan` char(9) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `id_tahapan` int(11) NOT NULL,
  `tanggal_apply` date NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lampiran`
--

CREATE TABLE `lampiran` (
  `id_lampiran` int(11) NOT NULL,
  `id_kandidat` char(9) NOT NULL,
  `pas_photo` varchar(100) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `file_ktp` varchar(100) DEFAULT NULL,
  `no_npwp` varchar(20) DEFAULT NULL,
  `file_npwp` varchar(100) DEFAULT NULL,
  `no_kk` varchar(16) DEFAULT NULL,
  `file_kk` varchar(100) DEFAULT NULL,
  `akta_lahir` varchar(100) DEFAULT NULL,
  `surat_baptis` varchar(100) DEFAULT NULL,
  `cv` varchar(100) DEFAULT NULL,
  `ijazah` varchar(100) DEFAULT NULL,
  `rek_bca` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` char(9) NOT NULL COMMENT 'J22122501\nJ=Job\nYYMMDDXX',
  `id_penempatan` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_bidang_studi` int(11) NOT NULL,
  `id_rekruter` int(11) NOT NULL,
  `tanggal_post` date NOT NULL,
  `judul` varchar(100) NOT NULL COMMENT 'Free text',
  `jabatan` varchar(20) NOT NULL COMMENT 'dropdown',
  `tipe_pekerjaan` varchar(20) NOT NULL COMMENT 'Pilihan: Tetap/Kontrak',
  `deskripsi` text NOT NULL,
  `narasi_syarat` varchar(255) NOT NULL,
  `divisi` varchar(20) NOT NULL,
  `bagian_sekolah` varchar(20) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `syarat_agama` varchar(20) NOT NULL,
  `min_pendidikan` varchar(4) NOT NULL,
  `bidang_studi` varchar(20) NOT NULL COMMENT 'dropdown',
  `semua_bidang_studi` int(1) DEFAULT NULL,
  `min_ipk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_bidang_studi`
--

CREATE TABLE `master_bidang_studi` (
  `id_bidang_studi` int(11) NOT NULL,
  `nama_bidang_studi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_data_universitas`
--

CREATE TABLE `master_data_universitas` (
  `id_universitas` int(11) NOT NULL COMMENT 'autoincrement',
  `nama_universitas` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_jabatan`
--

CREATE TABLE `master_jabatan` (
  `id_jabatan` int(11) NOT NULL COMMENT 'autoincrement',
  `nama_jabatan` varchar(20) NOT NULL,
  `deskripsi_jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_penempatan`
--

CREATE TABLE `master_penempatan` (
  `id_penempatan` varchar(5) NOT NULL,
  `divisi` varchar(20) NOT NULL,
  `bagian_sekolah` varchar(50) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `link_maps` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `master_penempatan`
--

INSERT INTO `master_penempatan` (`id_penempatan`, `divisi`, `bagian_sekolah`, `kota`, `link_maps`) VALUES
('A01', 'Pendidikan', 'SMAK 1 PENABUR', 'Jakarta Barat', ''),
('A02', 'Pendidikan', 'SMAK 2 PENABUR', 'Jakarta Pusat', ''),
('A03', 'Pendidikan', 'SMAK 3 PENABUR', 'Jakarta Pusat', ''),
('A04', 'Pendidikan', 'SMAK 4 PENABUR', 'Jakarta Barat', ''),
('A05', 'Pendidikan', 'SMAK 5 PENABUR', 'Jakarta Utara', ''),
('A06', 'Pendidikan', 'SMAK 6 PENABUR', 'Jakarta Utara', ''),
('A07', 'Pendidikan', 'SMAK 7 PENABUR', 'Jakarta Timur', ''),
('A08', 'Pendidikan', 'SPK SMAK 8 PENABUR', 'Jakarta Barat', ''),
('ABJ', 'Pendidikan', 'SMAK PENABUR BINTARO JAYA', 'Tangerang Selatan', ''),
('AGS', 'Pendidikan', 'SMAK PENABUR GADING SERPONG', 'Tangerang', ''),
('AHI', 'Pendidikan', 'SMAK PENABUR HARAPAN INDAH', 'Bekasi', ''),
('AKGI', 'Pendidikan', 'SPK SMAK PENABUR Kelapa Gading', 'Jakarta Utara', ''),
('AKJ', 'Pendidikan', 'SMAK PENABUR KOTA JABABEKA', 'Bekasi', ''),
('AKT', 'Pendidikan', 'SMAK PENABUR KOTA TANGERANG', 'Tangerang', ''),
('AKW', 'Pendidikan', 'SMAK PENABUR KOTA WISATA', 'Bogor', ''),
('ALD', 'Pendidikan', 'SMAK PALEDANG', 'Bogor', ''),
('AMF', 'Pendidikan', 'SMK FARMASI PENABUR', 'Jakarta Pusat', ''),
('ASB', 'Pendidikan', 'SMAK PENABUR SUMMARECON BEKASI', 'Bekasi', ''),
('ATM', 'Pendidikan', 'SMA TIRTAMARTA', '', ''),
('D01', 'Pendidikan', 'SDK 1 PENABUR', 'Jakarta Pusat', ''),
('D02', 'Pendidikan', 'SDK 2 PENABUR', 'Jakarta Pusat', ''),
('D03', 'Pendidikan', 'SDK 3 PENABUR', 'Jakarta Pusat', ''),
('D04', 'Pendidikan', 'SDK 4 PENABUR', 'Jakarta Timur', ''),
('D06', 'Pendidikan', 'SDK 6 PENABUR', 'Jakarta Utara', ''),
('D08', 'Pendidikan', 'SDK 8 PENABUR', 'Jakarta Timur', ''),
('D09', 'Pendidikan', 'SDK 9 PENABUR', 'Jakarta Selatan', ''),
('D10', 'Pendidikan', 'SDK 10 PENABUR', 'Jakarta Utara', ''),
('D11', 'Pendidikan', 'SDK 11 PENABUR', 'Jakarta Barat', ''),
('DAS', 'Pendidikan', 'SDK PENABUR AGUS SALIM', 'Bekasi', ''),
('DBJ', 'Pendidikan', 'SDK PENABUR BINTARO JAYA', 'Tangerang Selatan', ''),
('DDP', 'Pendidikan', 'SDK PENABUR DEPOK', 'Kota Depok', ''),
('DGS', 'Pendidikan', 'SDK PENABUR GADING SERPONG', 'Tangerang', ''),
('DHI', 'Pendidikan', 'SDK PENABUR HARAPAN INDAH', 'Bekasi', ''),
('DKGI', 'Pendidikan', 'SPK SDK PENABUR Kelapa Gading', 'Jakarta Utara', ''),
('DKJ', 'Pendidikan', 'SDK PENABUR KOTA JABABEKA', 'Bekasi', ''),
('DKM', 'Pendidikan', 'SDK PENABUR KOTA MODERN', 'Tangerang', ''),
('DKW', 'Pendidikan', 'SDK PENABUR KOTA WISATA', 'Bogor', ''),
('DSB', 'Pendidikan', 'SDK PENABUR SUMMARECON BEKASI', 'Bekasi', ''),
('K01', 'Pendidikan', 'TKK 1 PENABUR', '', ''),
('K02', 'Pendidikan', 'TKK 2 PENABUR', '', ''),
('K03', 'Pendidikan', 'TKK 3 PENABUR', '', ''),
('K05', 'Pendidikan', 'TKK 5 PENABUR', '', ''),
('K06', 'Pendidikan', 'TKK 6 PENABUR', '', ''),
('K07', 'Pendidikan', 'TKK 7 PENABUR', '', ''),
('K08', 'Pendidikan', 'TKK 8 PENABUR', '', ''),
('K09', 'Pendidikan', 'TKK 9 PENABUR', '', ''),
('K10', 'Pendidikan', 'TKK 10 PENABUR', '', ''),
('K11', 'Pendidikan', 'TKK 11 PENABUR', '', ''),
('K5F', 'Pendidikan', 'TKK FILIAL PONDOK GEDE', '', ''),
('KAS', 'Pendidikan', 'TKK PENABUR AGUS SALIM', '', ''),
('KBJ', 'Pendidikan', 'TKK PENABUR BINTARO JAYA', '', ''),
('KDP', 'Pendidikan', 'TKK PENABUR DEPOK', '', ''),
('KGS', 'Pendidikan', 'TKK PENABUR GADING SERPONG', '', ''),
('KHI', 'Pendidikan', 'TKK PENABUR HARAPAN INDAH', '', ''),
('KKJ', 'Pendidikan', 'TKK PENABUR KOTA JABABEKA', '', ''),
('KKM', 'Pendidikan', 'TKK PENABUR KOTA MODERN', '', ''),
('KKW', 'Pendidikan', 'TKK PENABUR KOTA WISATA', '', ''),
('KSB', 'Pendidikan', 'TKK PENABUR SUMMARECON BEKASI', '', ''),
('P01', 'Pendidikan', 'SMPK 1 PENABUR', 'Jakarta Pusat', ''),
('P02', 'Pendidikan', 'SMPK 2 PENABUR', 'Jakarta Pusat', ''),
('P03', 'Pendidikan', 'SMPK 3 PENABUR', 'Jakarta Pusat', ''),
('P04', 'Pendidikan', 'SMPK 4 PENABUR', 'Jakarta Utara', ''),
('P05', 'Pendidikan', 'SMPK 5 PENABUR', 'Jakarta Timur', ''),
('P06', 'Pendidikan', 'SMPK 6 PENABUR', 'Jakarta Utara', ''),
('P07', 'Pendidikan', 'SMPK 7 PENABUR', 'Jakarta Barat', ''),
('P08', 'Pendidikan', 'SPK SMPK 8 PENABUR', 'Jakarta Barat', ''),
('PBJ', 'Pendidikan', 'SMPK PENABUR BINTARO JAYA', 'Tangerang Selatan', ''),
('PDP', 'Pendidikan', 'SMPK PENABUR DEPOK', 'Depok', ''),
('PGS', 'Pendidikan', 'SMPK PENABUR GADING SERPONG', 'Tangerang', ''),
('PHI', 'Pendidikan', 'SMPK PENABUR HARAPAN INDAH', 'Bekasi', ''),
('PKGI', 'Pendidikan', 'SPK SMPK PENABUR Kelapa Gading', 'Jakarta Utara', ''),
('PKJ', 'Pendidikan', 'SMPK PENABUR KOTA JABABEKA', 'Bekasi', ''),
('PKM', 'Pendidikan', 'SMPK PENABUR KOTA MODERN', 'Tangerang', ''),
('PKW', 'Pendidikan', 'SMPK PENABUR KOTA WISATA', 'Bogor', ''),
('PSB', 'Pendidikan', 'SMPK PENABUR SUMMARECON BEKASI', 'Bekasi', ''),
('PTM1', 'Pendidikan', 'SMPK PENABUR TIRTA MARTA PONDOK INDAH', 'Jakarta Selatan', ''),
('PTM2', 'Pendidikan', 'SMPK PENABUR TIRTA MARTA CINERE', 'Depok', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_rekruter`
--

CREATE TABLE `master_rekruter` (
  `id_rekruter` int(11) NOT NULL COMMENT 'NIK PENABUR',
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `master_tahapan`
--

CREATE TABLE `master_tahapan` (
  `id_tahapan` int(11) NOT NULL COMMENT 'autoincrement',
  `pic_tahapan` varchar(100) NOT NULL,
  `nama_tahapan` varchar(100) NOT NULL,
  `deskripsi_tahapan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rekrutmen`
--

CREATE TABLE `rekrutmen` (
  `id_rekrutmen` char(7) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_lamaran` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `status_lamaran`
--

CREATE TABLE `status_lamaran` (
  `id_status` char(7) NOT NULL,
  `status_lamaran` varchar(20) NOT NULL,
  `deskripsi_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tes`
--

CREATE TABLE `tes` (
  `id_tes` char(7) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `nama_tes` varchar(100) NOT NULL,
  `deskripsi_tes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_universitas`
--
ALTER TABLE `data_universitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kandidat_anak`
--
ALTER TABLE `kandidat_anak`
  ADD PRIMARY KEY (`id_anak`);

--
-- Indexes for table `kandidat_keluarga`
--
ALTER TABLE `kandidat_keluarga`
  ADD PRIMARY KEY (`id_keluarga`);

--
-- Indexes for table `kandidat_kesehatan`
--
ALTER TABLE `kandidat_kesehatan`
  ADD PRIMARY KEY (`id_kesehatan`);

--
-- Indexes for table `kandidat_organisasi`
--
ALTER TABLE `kandidat_organisasi`
  ADD PRIMARY KEY (`id_organisasi`);

--
-- Indexes for table `kandidat_pasangan`
--
ALTER TABLE `kandidat_pasangan`
  ADD PRIMARY KEY (`id_pasangan`);

--
-- Indexes for table `kandidat_pendidikan`
--
ALTER TABLE `kandidat_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `kandidat_pengalaman`
--
ALTER TABLE `kandidat_pengalaman`
  ADD PRIMARY KEY (`id_pengalaman`);

--
-- Indexes for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD PRIMARY KEY (`id_lamaran`),
  ADD KEY `FKlamaran590492` (`id_lowongan`),
  ADD KEY `FKlamaran623528` (`id_tahapan`);

--
-- Indexes for table `lampiran`
--
ALTER TABLE `lampiran`
  ADD PRIMARY KEY (`id_lampiran`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`),
  ADD KEY `FKlowongan60449` (`id_rekruter`),
  ADD KEY `FKlowongan508060` (`id_penempatan`),
  ADD KEY `FKlowongan990913` (`id_jabatan`),
  ADD KEY `FKlowongan32671` (`id_bidang_studi`);

--
-- Indexes for table `master_bidang_studi`
--
ALTER TABLE `master_bidang_studi`
  ADD PRIMARY KEY (`id_bidang_studi`);

--
-- Indexes for table `master_data_universitas`
--
ALTER TABLE `master_data_universitas`
  ADD PRIMARY KEY (`id_universitas`);

--
-- Indexes for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `master_penempatan`
--
ALTER TABLE `master_penempatan`
  ADD PRIMARY KEY (`id_penempatan`);

--
-- Indexes for table `master_rekruter`
--
ALTER TABLE `master_rekruter`
  ADD PRIMARY KEY (`id_rekruter`);

--
-- Indexes for table `master_tahapan`
--
ALTER TABLE `master_tahapan`
  ADD PRIMARY KEY (`id_tahapan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_universitas`
--
ALTER TABLE `data_universitas`
  MODIFY `id` int(144) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `kandidat_anak`
--
ALTER TABLE `kandidat_anak`
  MODIFY `id_anak` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat_keluarga`
--
ALTER TABLE `kandidat_keluarga`
  MODIFY `id_keluarga` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat_kesehatan`
--
ALTER TABLE `kandidat_kesehatan`
  MODIFY `id_kesehatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat_organisasi`
--
ALTER TABLE `kandidat_organisasi`
  MODIFY `id_organisasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat_pasangan`
--
ALTER TABLE `kandidat_pasangan`
  MODIFY `id_pasangan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat_pendidikan`
--
ALTER TABLE `kandidat_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kandidat_pengalaman`
--
ALTER TABLE `kandidat_pengalaman`
  MODIFY `id_pengalaman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lampiran`
--
ALTER TABLE `lampiran`
  MODIFY `id_lampiran` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_bidang_studi`
--
ALTER TABLE `master_bidang_studi`
  MODIFY `id_bidang_studi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_data_universitas`
--
ALTER TABLE `master_data_universitas`
  MODIFY `id_universitas` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autoincrement', AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `master_jabatan`
--
ALTER TABLE `master_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autoincrement';

--
-- AUTO_INCREMENT for table `master_rekruter`
--
ALTER TABLE `master_rekruter`
  MODIFY `id_rekruter` int(11) NOT NULL AUTO_INCREMENT COMMENT 'NIK PENABUR';

--
-- AUTO_INCREMENT for table `master_tahapan`
--
ALTER TABLE `master_tahapan`
  MODIFY `id_tahapan` int(11) NOT NULL AUTO_INCREMENT COMMENT 'autoincrement';

--
-- Constraints for dumped tables
--

--
-- Constraints for table `lamaran`
--
ALTER TABLE `lamaran`
  ADD CONSTRAINT `FKlamaran590492` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id_lowongan`),
  ADD CONSTRAINT `FKlamaran623528` FOREIGN KEY (`id_tahapan`) REFERENCES `master_tahapan` (`id_tahapan`);

--
-- Constraints for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD CONSTRAINT `FKlowongan32671` FOREIGN KEY (`id_bidang_studi`) REFERENCES `master_bidang_studi` (`id_bidang_studi`),
  ADD CONSTRAINT `FKlowongan508060` FOREIGN KEY (`id_penempatan`) REFERENCES `master_penempatan` (`id_penempatan`),
  ADD CONSTRAINT `FKlowongan60449` FOREIGN KEY (`id_rekruter`) REFERENCES `master_rekruter` (`id_rekruter`),
  ADD CONSTRAINT `FKlowongan990913` FOREIGN KEY (`id_jabatan`) REFERENCES `master_jabatan` (`id_jabatan`);
--
-- Database: `rentalDVD`
--
CREATE DATABASE IF NOT EXISTS `rentalDVD` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rentalDVD`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` char(6) NOT NULL,
  `namaAdmin` varchar(100) NOT NULL,
  `noKTPAdmin` bigint(16) NOT NULL,
  `noTeleponAdmin` bigint(15) NOT NULL,
  `alamatAdmin` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `namaAdmin`, `noKTPAdmin`, `noTeleponAdmin`, `alamatAdmin`) VALUES
('ADM111', 'Aditya Tirta Negara', 3312123456789014, 82234567890, 'Jalan Gunung No 14'),
('ADM112', 'Nikodemus Denta', 3312123456789015, 87234567891, 'Jalan Merbabu No 21');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idBarang` char(6) NOT NULL,
  `namaBarang` varchar(100) NOT NULL,
  `hargaBarang` int(11) NOT NULL,
  `stokBarang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `namaBarang`, `hargaBarang`, `stokBarang`) VALUES
('BRG310', 'Single 2', 18000, 10),
('BRG311', 'Cek Toko Sebelah', 10000, 12),
('BRG312', 'Teka Teki Tika', 8000, 15),
('BRG313', 'Susah Signal', 15000, 20),
('BRG314', 'Cinta Brontosaurus', 16000, 7),
('BRG315', '5 CM', 9000, 5),
('BRG316', 'Hangout', 11000, 12),
('BRG317', 'Marmut Merah Jambu', 12000, 20),
('BRG318', 'Radio Galau FM', 7000, 14),
('BRG319', 'Single', 18000, 15),
('BRG321', 'Imperfect', 15000, 23);

-- --------------------------------------------------------

--
-- Table structure for table `loginAdmin`
--

CREATE TABLE `loginAdmin` (
  `idLoginAdmin` char(9) NOT NULL,
  `usernameAdmin` varchar(20) NOT NULL,
  `passwordAdmin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginAdmin`
--

INSERT INTO `loginAdmin` (`idLoginAdmin`, `usernameAdmin`, `passwordAdmin`) VALUES
('LGNADM111', 'niko', '*B37ACB9927C1F3B520BBF976386EAB76A08F3367'),
('LGNADM112', 'adit', '*8A24B641D1943F19759959F8FC49251B002F91B0');

-- --------------------------------------------------------

--
-- Table structure for table `loginPelanggan`
--

CREATE TABLE `loginPelanggan` (
  `idLoginPelanggan` char(9) NOT NULL,
  `usernamePelanggan` varchar(20) NOT NULL,
  `passwordPelanggan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loginPelanggan`
--

INSERT INTO `loginPelanggan` (`idLoginPelanggan`, `usernamePelanggan`, `passwordPelanggan`) VALUES
('LGNPLG211', 'adityapelanggan', 'asd'),
('LGNPLG212', 'christianpelanggan', '*39409FDCFBE834C999D5981C2734334EDFF527AC'),
('LGNPLG213', 'rendipelanggan', '*19A8430291B61927A09AEE7CD4DD8F96E3C1C103'),
('LGNPLG214', 'danangpelanggan', '*37822EE8C3912191283527E5FDF85375AEC3E08B'),
('LGNPLG215', 'dellapelanggan', '*BD8D4EFB3311D3DB7821D5D6322A812CE80B2585'),
('LGNPLG216', 'intanpelanggan', '*D3C518BF7992C7D728B0DD1A7D6D9B26FC23D86E'),
('LGNPLG217', 'stellapelanggan', '*2ECB113E5C83AB025EF4B82C737DE09A43CE18D0'),
('LGNPLG218', 'martalinapelanggan', '*B506BC9BE46544FDF7AEE5291A2F3C35454A0A24'),
('LGNPLG219', 'ayompelanggan', '*03B94A3F3527CDA1C6E274ED88E037A0C45C1E4E');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idPelanggan` char(6) NOT NULL,
  `namaPelanggan` varchar(100) NOT NULL,
  `namaPanggilanPelanggan` varchar(20) NOT NULL,
  `noKTPPelanggan` bigint(16) NOT NULL,
  `noTeleponPelanggan` bigint(15) NOT NULL,
  `alamatPelanggan` text NOT NULL,
  `statusPelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idPelanggan`, `namaPelanggan`, `namaPanggilanPelanggan`, `noKTPPelanggan`, `noTeleponPelanggan`, `alamatPelanggan`, `statusPelanggan`) VALUES
('PLG211', 'Aditya Dwi Aprianto', 'Adit', 3312123456789012, 81234567890, 'Jalan Apel No 12', 'Anggota'),
('PLG212', 'Christian Nikolaus', 'Niko', 3312123456789013, 81234567891, 'Jalan Manggis No 13', 'Belum Anggota'),
('PLG213', 'Rendi Darma', 'Rendi', 3313123456789018, 812345672234, 'Jalan Apel manis No 40b', 'Anggota'),
('PLG214', 'Danang Christopus', 'Danang', 3314123356788122, 82223441331, 'Jalan Manggis durian No 20', 'Anggota'),
('PLG215', 'Della Ratnasari Pangestu', 'Della', 3317123358888132, 81225441367, 'Jalan Patimura No 31A', 'Anggota'),
('PLG216', 'Intan Dwi Permata', 'Intam', 3312193356787001, 8722344461, 'Jalan Kedoya No 2', 'Belum Anggota'),
('PLG217', 'Stella Enggal Putri', 'Stella', 3312123446678812, 81783441391, 'Jalan Duku durian No 3', 'Anggota'),
('PLG218', 'Martalina Senjaya', 'Marta', 3317876356780001, 89213441319, 'Jalan Kedoya Utara No 45', 'Belum Anggota'),
('PLG219', 'Ayom Arga Sanjaya', 'Ayom', 3315123396380005, 87823441991, 'Jalan Darmawan No 22', 'Belum Anggota');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `kdBayar` char(9) NOT NULL,
  `idPelanggan` char(6) NOT NULL,
  `idBarang` char(6) NOT NULL,
  `kdPinjam` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`kdBayar`, `idPelanggan`, `idBarang`, `kdPinjam`) VALUES
('BYR611111', 'PLG211', 'BRG311', 'PJM511111'),
('BYR611112', 'PLG211', 'BRG310', 'PJM511112'),
('BYR611113', 'PLG211', 'BRG319', 'PJM511113'),
('BYR611114', 'PLG217', 'BRG319', 'PJM511114'),
('BYR611115', 'PLG214', 'BRG321', 'PJM511115'),
('BYR611116', 'PLG215', 'BRG318', 'PJM511116'),
('BYR611117', 'PLG215', 'BRG315', 'PJM511117');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `kdPinjam` char(9) NOT NULL,
  `idPelanggan` char(6) NOT NULL,
  `idBarang` char(6) NOT NULL,
  `tglPinjam` date NOT NULL,
  `tglKembali` date NOT NULL,
  `statusPeminjaman` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`kdPinjam`, `idPelanggan`, `idBarang`, `tglPinjam`, `tglKembali`, `statusPeminjaman`) VALUES
('PJM511111', 'PLG211', 'BRG311', '2022-08-17', '2022-08-20', 'Selesai'),
('PJM511112', 'PLG211', 'BRG310', '2022-08-18', '2022-08-21', 'Selesai'),
('PJM511113', 'PLG211', 'BRG319', '2022-08-18', '2022-08-21', 'Selesai'),
('PJM511114', 'PLG217', 'BRG319', '2022-08-18', '2022-08-23', 'Terlambat'),
('PJM511115', 'PLG214', 'BRG311', '2022-08-21', '2022-08-24', 'Dipinjam'),
('PJM511116', 'PLG215', 'BRG318', '2022-08-21', '2022-08-24', 'Dipinjam'),
('PJM511117', 'PLG215', 'BRG315', '2022-08-22', '2022-08-25', 'Dipinjam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indexes for table `loginAdmin`
--
ALTER TABLE `loginAdmin`
  ADD PRIMARY KEY (`idLoginAdmin`);

--
-- Indexes for table `loginPelanggan`
--
ALTER TABLE `loginPelanggan`
  ADD PRIMARY KEY (`idLoginPelanggan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idPelanggan`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`kdBayar`),
  ADD KEY `idPelanggan` (`idPelanggan`),
  ADD KEY `idBarang` (`idBarang`),
  ADD KEY `kdPinjam` (`kdPinjam`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kdPinjam`),
  ADD KEY `idPelanggan` (`idPelanggan`),
  ADD KEY `idBarang` (`idBarang`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`idPelanggan`) REFERENCES `pelanggan` (`idPelanggan`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`),
  ADD CONSTRAINT `pembayaran_ibfk_3` FOREIGN KEY (`kdPinjam`) REFERENCES `peminjaman` (`kdPinjam`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`idPelanggan`) REFERENCES `pelanggan` (`idPelanggan`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`idBarang`) REFERENCES `barang` (`idBarang`);
--
-- Database: `rkh`
--
CREATE DATABASE IF NOT EXISTS `rkh` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `rkh`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_kerja`
--

CREATE TABLE `tb_kerja` (
  `id_kerja` tinyint(10) NOT NULL,
  `tanggal_shift` varchar(10) DEFAULT NULL,
  `masalah` varchar(300) DEFAULT NULL,
  `solusi` varchar(300) DEFAULT NULL,
  `hasil` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_shift`
--

CREATE TABLE `tb_shift` (
  `tgl_shift` varchar(10) DEFAULT NULL,
  `hari` varchar(10) DEFAULT NULL,
  `id_staff` tinyint(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_staff`
--

CREATE TABLE `tb_staff` (
  `id_staff` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tgl_lahir` varchar(10) DEFAULT NULL,
  `no_hp` int(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `status` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_staff`
--

INSERT INTO `tb_staff` (`id_staff`, `nama`, `alamat`, `tgl_lahir`, `no_hp`, `email`, `status`) VALUES
('ST1', 'Agus', 'Padangsambian', '1992-03-01', 2147483647, 'wirayasa.agus@gmail.com', '1'),
('ST2', 'Wirayasa', 'Denpasar Barat', '1883-01-01', 2147483647, 'wira_ichigo@yahoo.com', '1'),
('ST3', 'Indra Lesmana', 'Gunung Penangkaran', '1994-09-01', 2147483647, 'wirayasa.agus@gmail.com', '1'),
('ST4', 'Wirayasa', 'Gunung Indrakila', '2019-03-20', 2147483647, 'wira_ichigo@yahoo.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  `user_role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `user_role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'staff', 'staff', 'staff'),
(3, 'wirahul', 'wirahul', 'admin'),
(4, 'user', 'user', 'staff'),
(5, 'pondoku', 'pondoku', 'staff'),
(6, 'aditya', 'aditya', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kerja`
--
ALTER TABLE `tb_kerja`
  ADD PRIMARY KEY (`id_kerja`);

--
-- Indexes for table `tb_staff`
--
ALTER TABLE `tb_staff`
  ADD PRIMARY KEY (`id_staff`),
  ADD UNIQUE KEY `id_staff` (`id_staff`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kerja`
--
ALTER TABLE `tb_kerja`
  MODIFY `id_kerja` tinyint(10) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test`;
--
-- Database: `undiraKopi`
--
CREATE DATABASE IF NOT EXISTS `undiraKopi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `undiraKopi`;

-- --------------------------------------------------------

--
-- Table structure for table `biji_kopi`
--

CREATE TABLE `biji_kopi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `total_rank` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biji_kopi`
--

INSERT INTO `biji_kopi` (`id`, `nama`, `harga`, `total_rank`, `created_at`, `updated_at`) VALUES
(8, 'Kintamani', 130000, '90.00', '2022-03-10 22:54:27', '2022-09-06 02:42:17'),
(9, 'Sipetung', 350000, '92.50', '2022-03-10 22:54:52', '2022-09-06 02:42:18');

-- --------------------------------------------------------

--
-- Table structure for table `data_penjualan`
--

CREATE TABLE `data_penjualan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `biji_kopi_id` bigint(20) UNSIGNED NOT NULL,
  `jumlah_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_penjualan`
--

INSERT INTO `data_penjualan` (`id`, `biji_kopi_id`, `jumlah_penjualan`, `tanggal_penjualan`, `created_at`, `updated_at`) VALUES
(2, 8, 5, '2022-06-02', '2022-06-12 00:44:51', '2022-06-12 00:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` enum('cost','benefit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `kriteria`, `tipe`, `bobot`, `created_at`, `updated_at`) VALUES
(10, 'Harga', 'cost', 30, '2022-03-10 22:51:12', '2022-03-10 22:51:12'),
(11, 'Kuantitas', 'benefit', 15, '2022-03-10 22:52:10', '2022-03-10 22:52:10'),
(12, 'Rasa', 'benefit', 20, '2022-03-10 22:52:46', '2022-03-10 22:52:46'),
(13, 'Varietas', 'benefit', 35, '2022-03-10 22:53:21', '2022-03-10 22:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_12_140624_create_kriteria_table', 1),
(5, '2021_06_12_141224_create_sub_kriteria_table', 1),
(6, '2021_06_12_141611_create_biji_kopi_table', 1),
(7, '2021_06_12_141653_create_nilai_table', 1),
(8, '2021_06_12_142213_create_data_penjualan_table', 1),
(9, '2021_06_14_094718_add_nilai_to_nilai_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `biji_kopi_id` bigint(20) UNSIGNED NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sub_kriteria_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `biji_kopi_id`, `kriteria_id`, `created_at`, `updated_at`, `sub_kriteria_id`) VALUES
(137, 8, 10, '2022-07-11 04:27:37', '2022-07-11 04:27:37', 64),
(138, 8, 11, '2022-07-11 04:27:37', '2022-07-11 04:27:37', 70),
(139, 8, 12, '2022-07-11 04:27:37', '2022-07-11 04:27:37', 82),
(140, 8, 13, '2022-07-11 04:27:37', '2022-07-11 04:27:37', 78),
(141, 9, 10, '2022-07-11 04:27:42', '2022-07-11 04:27:42', 64),
(142, 9, 11, '2022-07-11 04:27:42', '2022-07-11 04:27:42', 68),
(143, 9, 12, '2022-07-11 04:27:42', '2022-07-11 04:27:42', 83),
(144, 9, 13, '2022-07-11 04:27:42', '2022-07-11 04:27:42', 78);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id` int(11) NOT NULL,
  `no_pemesanan` varchar(5) NOT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `tanggal_duedate` datetime DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT NULL,
  `is_cancel` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id`, `no_pemesanan`, `tanggal_pesan`, `tanggal_duedate`, `total_bayar`, `status_bayar`, `user_id`, `is_deleted`, `is_cancel`) VALUES
(2, 'RzDNG', '2022-07-24 08:23:03', '2022-07-26 08:23:03', 3000, 0, 2, 1, 1),
(3, 'PQu6r', '2022-07-25 01:22:33', '2022-07-27 01:22:33', 15500, 0, 3, NULL, 1),
(4, 'bp8zS', '2022-07-25 04:41:37', '2022-07-27 04:41:37', 8000, 0, 2, NULL, 1),
(5, 'pARvB', '2022-07-25 04:44:10', '2022-07-27 04:44:10', 3000, 0, 2, NULL, 1),
(6, 'UzQNU', '2022-07-25 07:17:08', '2022-07-27 07:17:08', 3000, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_item`
--

CREATE TABLE `pemesanan_item` (
  `pemesanan_item_id` int(11) NOT NULL,
  `pemesanan_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `qty` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty_satuan` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `is_deleted` int(1) DEFAULT NULL,
  `is_cancel` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_item`
--

INSERT INTO `pemesanan_item` (`pemesanan_item_id`, `pemesanan_id`, `produk_id`, `qty`, `harga`, `qty_satuan`, `subtotal`, `is_deleted`, `is_cancel`) VALUES
(2, 2, 7, 1, 3000, 200, 3000, 1, 1),
(3, 3, 8, 1, 8000, 200, 8000, 1, 1),
(4, 3, 9, 1, 7500, 200, 7500, 1, 1),
(5, 4, 8, 1, 8000, 200, 8000, NULL, 1),
(6, 5, 7, 1, 3000, 200, 3000, NULL, 1),
(7, 6, 7, 1, 3000, 200, 3000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk_kopi`
--

CREATE TABLE `produk_kopi` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `rasa` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk_kopi`
--

INSERT INTO `produk_kopi` (`id`, `nama_produk`, `rasa`, `harga`, `jenis`, `deskripsi`) VALUES
(2, 'Kopi', 'manis', 10000, 'robusta', 'deskripsi');

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_kriteria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `kriteria_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id`, `sub_kriteria`, `value`, `kriteria_id`, `created_at`, `updated_at`) VALUES
(64, '<= Rp.500.000', 20, 10, '2022-03-10 22:51:12', '2022-03-10 22:51:12'),
(65, 'Rp.1000.0000 - Rp.1.500.000', 30, 10, '2022-03-10 22:51:12', '2022-03-10 22:51:12'),
(66, 'Rp.1.500.000 - Rp.2.500.000', 40, 10, '2022-03-10 22:51:12', '2022-03-10 22:51:12'),
(67, '>= Rp.2.500.000', 50, 10, '2022-03-10 22:51:12', '2022-03-10 22:51:12'),
(68, '100gr - 300gr', 20, 11, '2022-03-10 22:52:10', '2022-03-10 22:52:10'),
(69, '300gr - 500gr', 30, 11, '2022-03-10 22:52:10', '2022-03-10 22:52:10'),
(70, '>= 1000gr', 40, 11, '2022-03-10 22:52:10', '2022-03-10 22:52:10'),
(78, 'Arabica', 30, 13, '2022-06-06 08:55:44', '2022-06-06 08:55:44'),
(79, 'Robusta', 60, 13, '2022-06-06 08:55:44', '2022-06-06 08:55:44'),
(82, 'Asem', 30, 12, '2022-07-10 10:11:24', '2022-07-10 10:11:24'),
(83, 'Pahit', 60, 12, '2022-07-10 10:11:24', '2022-07-10 10:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `toko_kopi`
--

CREATE TABLE `toko_kopi` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `persediaan` int(8) NOT NULL COMMENT 'barang masuk (gr)',
  `stock` int(8) NOT NULL COMMENT 'barang keluar (gr)',
  `satuan` int(3) DEFAULT NULL COMMENT 'in 100',
  `harga` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL COMMENT 'aktif/tidak'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toko_kopi`
--

INSERT INTO `toko_kopi` (`id`, `nama_produk`, `persediaan`, `stock`, `satuan`, `harga`, `status`) VALUES
(6, 'bali', 200, 400, 200, 5000, 0),
(7, 'kintamani', 9400, 700, 200, 3000, 1),
(8, 'aceh', 6950, 400, 200, 8000, 1),
(9, 'bogor', 15050, 400, 200, 7500, 1),
(10, 'kapal api', 1000, 0, 200, 4000, 1),
(14, 'Coffe Mix', 750, 0, 200, 3500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', '$2y$10$o55s5tYU4lU8vDNVvWCxnO8FbxBOdiluZjX81Q1omrg4p2EuhDPSG', NULL, '2022-06-13 23:33:58', '2022-06-13 23:33:58'),
(2, 'user', 'user', 'user', '$2y$10$Aks1lCUOii31hRxy/ytbZesTqqFRcEpDa5XPOI5VDQp5O9cEwjM.W', NULL, '2022-06-14 00:00:18', '2022-06-14 00:00:18'),
(3, 'user visitor 1', 'user1', 'user', '$2y$10$dbeaFKtGxUx5cPfTQ//PHOqzHZ0Xx2.UOBfXy5xA.jrEfVNmsN9HS', NULL, '2022-07-24 18:22:20', '2022-07-24 18:22:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biji_kopi`
--
ALTER TABLE `biji_kopi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_penjualan`
--
ALTER TABLE `data_penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_penjualan_biji_kopi_id_foreign` (`biji_kopi_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nilai_biji_kopi_id_foreign` (`biji_kopi_id`),
  ADD KEY `nilai_kriteria_id_foreign` (`kriteria_id`),
  ADD KEY `nilai_sub_kriteria_id_foreign` (`sub_kriteria_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  ADD PRIMARY KEY (`pemesanan_item_id`);

--
-- Indexes for table `produk_kopi`
--
ALTER TABLE `produk_kopi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_kriteria_kriteria_id_foreign` (`kriteria_id`);

--
-- Indexes for table `toko_kopi`
--
ALTER TABLE `toko_kopi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biji_kopi`
--
ALTER TABLE `biji_kopi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `data_penjualan`
--
ALTER TABLE `data_penjualan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pemesanan_item`
--
ALTER TABLE `pemesanan_item`
  MODIFY `pemesanan_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `produk_kopi`
--
ALTER TABLE `produk_kopi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `toko_kopi`
--
ALTER TABLE `toko_kopi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_penjualan`
--
ALTER TABLE `data_penjualan`
  ADD CONSTRAINT `data_penjualan_biji_kopi_id_foreign` FOREIGN KEY (`biji_kopi_id`) REFERENCES `biji_kopi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_biji_kopi_id_foreign` FOREIGN KEY (`biji_kopi_id`) REFERENCES `biji_kopi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `nilai_sub_kriteria_id_foreign` FOREIGN KEY (`sub_kriteria_id`) REFERENCES `sub_kriteria` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD CONSTRAINT `sub_kriteria_kriteria_id_foreign` FOREIGN KEY (`kriteria_id`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
