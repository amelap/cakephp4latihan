-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2024 pada 10.09
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apppeminjaman`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `accessories`
--

CREATE TABLE `accessories` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `accessories`
--

INSERT INTO `accessories` (`id`, `name`) VALUES
('5ea3c212-e0f6-11ee-a673-e884a511a750', 'Remote'),
('aa116c94-4aa0-4af4-aea5-ce33e5a3bf00', 'Meja'),
('b1a7524c-b9f7-4f35-9d65-8d9b6451b93d', 'TV'),
('cd2ec1a4-eae3-4ec2-9b1a-e2c80f6c67a0', 'Proyektor'),
('cd925d08-5b75-43b5-ac45-373f5efcbcbd', 'Kursi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aksesorisruangans`
--

CREATE TABLE `aksesorisruangans` (
  `id` char(36) NOT NULL,
  `nama_aksesoris` varchar(20) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `kondisi` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aksesorisruangans`
--

INSERT INTO `aksesorisruangans` (`id`, `nama_aksesoris`, `jumlah`, `kondisi`) VALUES
('d0e1df5e-6d2e-481e-a0ef-4044fd04be2e', 'Proyektor', 5, 'Baik'),
('f4ff1a53-f233-4397-a7a6-55dc047b581c', 'Remote', 2, 'Rusak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `aplikasimeetings`
--

CREATE TABLE `aplikasimeetings` (
  `id` char(36) NOT NULL,
  `nama_apk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `aplikasimeetings`
--

INSERT INTO `aplikasimeetings` (`id`, `nama_apk`) VALUES
('ad22bc6d-80c9-4db8-841d-32d5f9f6a12e', 'Zoom Meeting');

-- --------------------------------------------------------

--
-- Struktur dari tabel `departements`
--

CREATE TABLE `departements` (
  `id` char(36) NOT NULL,
  `nama_dept` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `departements`
--

INSERT INTO `departements` (`id`, `nama_dept`) VALUES
('97dd9d99-94b6-4f98-976c-25f29d393c54', 'HC3'),
('f0a9e0c6-494c-4c6b-9485-bf3583781f54', 'IT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `drivers`
--

CREATE TABLE `drivers` (
  `id` char(36) NOT NULL,
  `nama_driver` varchar(30) NOT NULL,
  `notelp_driver` varchar(12) NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `drivers`
--

INSERT INTO `drivers` (`id`, `nama_driver`, `notelp_driver`, `jenis_kelamin`, `alamat`) VALUES
('2bc75085-5990-4bb1-a6ad-d5403692589a', 'Syahput', '081280316073', 'Pria', 'Ciracas'),
('5d646d85-0b23-4ffb-9906-3bfbed563b52', 'Amel ap', '081280316087', 'Wanita', 'Kedoya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `locations`
--

CREATE TABLE `locations` (
  `id` char(36) NOT NULL,
  `namalokasi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `locations`
--

INSERT INTO `locations` (`id`, `namalokasi`) VALUES
('b29c4f30-5bea-46ca-aa6a-18e530a747e4', 'Jakarta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menus`
--

CREATE TABLE `menus` (
  `id` char(36) NOT NULL,
  `namamenu` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menus`
--

INSERT INTO `menus` (`id`, `namamenu`, `url`) VALUES
('16399c9d-5569-419d-a166-be451396e685', 'Ruangan', 'http://localhost/latihancakephp/ruangans'),
('2030fdbb-115a-4777-be6b-804138d9305c', 'Aplikasi Meeting', 'http://localhost/latihancakephp/aplikasimeetings'),
('2152133f-15da-49c7-ab4f-6d3bd545934b', 'Motorcycle', 'http://localhost/latihancakephp/motorcycles'),
('25430fed-b070-4592-bb18-b8704a933cf1', 'Peminjaman Aplikasi Meeting', 'http://localhost/latihancakephp/peminjamanapkmeetings'),
('28868ef9-ffcb-4b11-a41c-1f4243d5be70', 'Peminjaman Ruangan', 'http://localhost/latihancakephp/peminjamanruangans'),
('43fab3a9-d373-414c-bf41-7d07be1b62fb', 'Peminjaman Mobil', 'http://localhost/latihancakephp/peminjamanmobils'),
('6087457b-019f-465a-9ab5-907413f908b2', 'Rooms', 'http://localhost/latihancakephp/rooms'),
('6d8a7df1-5819-4897-887d-196d99cf0499', 'Driver', 'http://localhost/latihancakephp/drivers'),
('78ab699e-e64a-4b58-9523-039aedab8c15', 'Location', 'http://localhost/latihancakephp/locations'),
('80b8d80a-1255-40f8-ab0b-4020c0808f84', 'Aksesoris Ruangan', 'http://localhost/latihancakephp/aksesorisruangans'),
('b1b00606-b1f1-4c94-8270-ec019a33eeb2', 'Mobil', 'http://localhost/latihancakephp/mobils'),
('dc5a7bdf-5783-4536-bbdb-9e420f361efc', 'Departemen', 'http://localhost/latihancakephp/departemens');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobils`
--

CREATE TABLE `mobils` (
  `id` char(36) NOT NULL,
  `nopol_mobil` varchar(15) NOT NULL,
  `nama_mobil` varchar(15) NOT NULL,
  `tipemobil` enum('Matic','Nonmatic') NOT NULL,
  `kapasitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobils`
--

INSERT INTO `mobils` (`id`, `nopol_mobil`, `nama_mobil`, `tipemobil`, `kapasitas`) VALUES
('2a965d39-f2cc-459f-89c3-fad6e543f2ab', 'B 1234 RPM', 'Honda', 'Matic', 2),
('44c03540-060c-48d2-a628-7bc4e975e6d1', 'B 3256 RPM', 'Honda B', 'Matic', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `motorcycles`
--

CREATE TABLE `motorcycles` (
  `id` int(11) NOT NULL,
  `mtr_code` varchar(10) NOT NULL,
  `mtr_name` varchar(10) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamanapkmeetings`
--

CREATE TABLE `peminjamanapkmeetings` (
  `id` char(36) NOT NULL,
  `idapkmeet` char(36) NOT NULL,
  `iddept` char(36) NOT NULL,
  `tglpinjam` date NOT NULL,
  `waktu_pinjam` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `peminjam` varchar(35) NOT NULL,
  `jmlpeserta` int(11) NOT NULL,
  `meetingwith` varchar(35) NOT NULL,
  `tujuan` text NOT NULL,
  `canceled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjamanapkmeetings`
--

INSERT INTO `peminjamanapkmeetings` (`id`, `idapkmeet`, `iddept`, `tglpinjam`, `waktu_pinjam`, `waktu_selesai`, `peminjam`, `jmlpeserta`, `meetingwith`, `tujuan`, `canceled`) VALUES
('a0243ec0-2052-4d65-9e63-f9249b5f349d', 'ad22bc6d-80c9-4db8-841d-32d5f9f6a12e', 'f0a9e0c6-494c-4c6b-9485-bf3583781f54', '2024-03-12', '10:13:56', '12:14:00', 'amel', 3, 'HRD', 'meeting', 0),
('e1a47d68-adfd-4135-bcbb-07670c29aef3', 'ad22bc6d-80c9-4db8-841d-32d5f9f6a12e', '97dd9d99-94b6-4f98-976c-25f29d393c54', '2024-12-06', '08:51:13', '10:51:16', 'amel', 5, 'HRD', 'meeting bersama', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamanmobils`
--

CREATE TABLE `peminjamanmobils` (
  `id` char(36) NOT NULL,
  `driver_status` varchar(10) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `waktupinjam` time NOT NULL,
  `namapeminjam` varchar(30) NOT NULL,
  `deskripsi` text NOT NULL,
  `penumpang` int(11) NOT NULL,
  `iddept` char(36) NOT NULL,
  `idlokasi` char(36) NOT NULL,
  `iddriver` char(36) NOT NULL,
  `idmobil` char(36) NOT NULL,
  `canceled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjamanmobils`
--

INSERT INTO `peminjamanmobils` (`id`, `driver_status`, `tanggalpinjam`, `waktupinjam`, `namapeminjam`, `deskripsi`, `penumpang`, `iddept`, `idlokasi`, `iddriver`, `idmobil`, `canceled`) VALUES
('7d54c97a-25b6-49c6-bbba-a924831dad46', 'Ya', '2024-03-18', '13:31:19', 'najwa', 'bayar', 2, 'f0a9e0c6-494c-4c6b-9485-bf3583781f54', 'b29c4f30-5bea-46ca-aa6a-18e530a747e4', '5d646d85-0b23-4ffb-9906-3bfbed563b52', '2a965d39-f2cc-459f-89c3-fad6e543f2ab', 1),
('83c0999b-d907-4333-952b-928234b16ec2', 'Ya', '2024-03-08', '10:43:40', 'amel', 'pinjem ya', 3, '97dd9d99-94b6-4f98-976c-25f29d393c54', 'b29c4f30-5bea-46ca-aa6a-18e530a747e4', '2bc75085-5990-4bb1-a6ad-d5403692589a', '44c03540-060c-48d2-a628-7bc4e975e6d1', 0),
('8cf40083-6c96-49b7-9bfa-3a8ed900d03f', 'Ya', '2015-09-09', '13:41:55', 'amel', 'nnmoo', 7, '97dd9d99-94b6-4f98-976c-25f29d393c54', 'b29c4f30-5bea-46ca-aa6a-18e530a747e4', '5d646d85-0b23-4ffb-9906-3bfbed563b52', '44c03540-060c-48d2-a628-7bc4e975e6d1', 1),
('b79ca8df-2875-457e-8db7-3cbf29d3f6af', 'Tidak', '2024-03-05', '11:02:17', 'ap', 'minjem', 3, '97dd9d99-94b6-4f98-976c-25f29d393c54', 'b29c4f30-5bea-46ca-aa6a-18e530a747e4', '2bc75085-5990-4bb1-a6ad-d5403692589a', '2a965d39-f2cc-459f-89c3-fad6e543f2ab', 1),
('d22e1d2c-b1e0-4de4-8510-1fe04fea8462', 'Tidak', '2024-03-04', '14:27:13', 'amel', 'ansjkx', 8, '97dd9d99-94b6-4f98-976c-25f29d393c54', 'b29c4f30-5bea-46ca-aa6a-18e530a747e4', '2bc75085-5990-4bb1-a6ad-d5403692589a', '44c03540-060c-48d2-a628-7bc4e975e6d1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjamanruangans`
--

CREATE TABLE `peminjamanruangans` (
  `id` char(36) NOT NULL,
  `idruang` char(36) NOT NULL,
  `iddept` char(36) NOT NULL,
  `namapeminjam` varchar(35) NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_selesai` time NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `jmlpengguna` int(11) NOT NULL,
  `status` varchar(15) NOT NULL,
  `penginput` varchar(35) NOT NULL,
  `email` varchar(35) NOT NULL,
  `canceled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjamanruangans`
--

INSERT INTO `peminjamanruangans` (`id`, `idruang`, `iddept`, `namapeminjam`, `waktu_mulai`, `waktu_selesai`, `tujuan`, `jmlpengguna`, `status`, `penginput`, `email`, `canceled`) VALUES
('152d0b79-dfbc-42cb-a780-eb05b839f985', '8653df8e-c36e-4179-9237-03b037708484', 'f0a9e0c6-494c-4c6b-9485-bf3583781f54', 'abin', '07:10:14', '10:08:24', 'Meeting', 6, 'Aktif', 'amel', 'uhimso@gmail.com', 0),
('852cb0b6-64cf-4c66-beae-0e7d91a6cb58', '8653df8e-c36e-4179-9237-03b037708484', 'f0a9e0c6-494c-4c6b-9485-bf3583781f54', 'arday', '13:20:34', '17:16:37', 'Meeting', 7, 'Aktif', 'amel', 'uhimshho@gmail.com', 1),
('94cc08ee-61aa-4fea-887e-1e4573382c51', '1f9e7c6d-af64-4088-b44b-ca3f5bbcb2d4', 'f0a9e0c6-494c-4c6b-9485-bf3583781f54', 'amel', '15:23:40', '18:23:47', 'Meeting', 8, 'Aktif', 'amel', 'nuramaliyahaapp@gmail.com', 1),
('f4d29844-f5ae-4b1e-acd5-aed06757dee1', '1f9e7c6d-af64-4088-b44b-ca3f5bbcb2d4', '97dd9d99-94b6-4f98-976c-25f29d393c54', 'Najwa', '09:07:00', '12:07:04', 'Meeting', 4, 'Aktif', 'Amel', 'uhimsocurious@gmail.com', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reportrooms`
--

CREATE TABLE `reportrooms` (
  `id` char(36) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `idrooms` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `reportrooms`
--

INSERT INTO `reportrooms` (`id`, `nama`, `idrooms`) VALUES
('301f9836-e4cf-11ee-a8e9-e884a511a750', 'Excel', NULL),
('3866cad5-e4cf-11ee-a8e9-e884a511a750', 'PDF', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `roomdetails`
--

CREATE TABLE `roomdetails` (
  `id` char(36) NOT NULL,
  `room_id` char(36) NOT NULL,
  `accessories_id` char(36) NOT NULL,
  `created` datetime NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modified` datetime NOT NULL,
  `modi_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `roomdetails`
--

INSERT INTO `roomdetails` (`id`, `room_id`, `accessories_id`, `created`, `create_by`, `modified`, `modi_by`) VALUES
('03a3de3c-79a4-4e66-be7d-9b5058cac03b', '827ecd5e-f66f-4402-937c-3ceaf2a0e157', '5ea3c212-e0f6-11ee-a673-e884a511a750', '2024-03-18 15:27:58', 2, '2024-03-18 15:27:58', 2),
('4f1b1ab8-6e25-49eb-ad50-c98ee686b5e2', 'ed045b2b-0615-45c7-b210-4f1632d88da1', 'b1a7524c-b9f7-4f35-9d65-8d9b6451b93d', '2024-03-18 09:17:33', 1, '2024-03-18 09:17:33', 1),
('60fecbd1-636d-4ec2-98a4-586c1672f3ef', 'ed045b2b-0615-45c7-b210-4f1632d88da1', 'aa116c94-4aa0-4af4-aea5-ce33e5a3bf00', '2024-03-18 09:17:33', 1, '2024-03-18 09:17:33', 1),
('a60563d5-a546-46df-a5e1-638af83fdf0d', '827ecd5e-f66f-4402-937c-3ceaf2a0e157', 'cd2ec1a4-eae3-4ec2-9b1a-e2c80f6c67a0', '2024-03-18 15:27:58', 2, '2024-03-18 15:27:58', 2),
('cb0a229b-2e7c-4f47-88c6-b2d709b43454', 'ed045b2b-0615-45c7-b210-4f1632d88da1', 'cd2ec1a4-eae3-4ec2-9b1a-e2c80f6c67a0', '2024-03-18 09:17:33', 1, '2024-03-18 09:17:33', 1),
('d613d127-8a05-48ef-a4d8-9869718624c4', 'b3d71958-3927-44c0-acc2-4dc6c43e9794', '5ea3c212-e0f6-11ee-a673-e884a511a750', '2024-03-13 07:54:30', 1, '2024-03-13 07:54:30', 1),
('f6f6ee6a-3349-417f-a3d8-d4cb2eecc565', 'ed045b2b-0615-45c7-b210-4f1632d88da1', 'cd925d08-5b75-43b5-ac45-373f5efcbcbd', '2024-03-18 09:17:33', 1, '2024-03-18 09:17:33', 1),
('fafcb7e3-8f04-4d34-87af-aedaca3f4cbc', 'bcf6978d-e04b-4293-a137-5daa0976a418', 'aa116c94-4aa0-4af4-aea5-ce33e5a3bf00', '2024-03-18 09:16:08', 1, '2024-03-18 09:16:08', 1),
('fd5f4e0f-1a64-4754-a3e0-f329db9bb821', 'bcf6978d-e04b-4293-a137-5daa0976a418', 'cd925d08-5b75-43b5-ac45-373f5efcbcbd', '2024-03-18 09:16:08', 1, '2024-03-18 09:16:08', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rooms`
--

CREATE TABLE `rooms` (
  `id` char(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `capacity` tinyint(4) NOT NULL,
  `floor` tinyint(4) NOT NULL,
  `status` char(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `modi_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `capacity`, `floor`, `status`, `created`, `modified`, `create_by`, `modi_by`) VALUES
('827ecd5e-f66f-4402-937c-3ceaf2a0e157', 'lotus', 4, 5, '1', '2024-03-18 15:27:58', '2024-03-18 15:27:58', 2, 2),
('b3d71958-3927-44c0-acc2-4dc6c43e9794', 'Mawar', 4, 2, '1', '2024-03-13 07:54:30', '2024-03-18 09:17:46', 1, 1),
('bcf6978d-e04b-4293-a137-5daa0976a418', 'Kamboja', 5, 4, '1', '2024-03-18 09:16:07', '2024-03-18 09:16:07', 1, 1),
('ed045b2b-0615-45c7-b210-4f1632d88da1', 'Kenanga', 10, 5, '1', '2024-03-18 09:17:33', '2024-03-18 09:17:33', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangandetails`
--

CREATE TABLE `ruangandetails` (
  `id` char(36) NOT NULL,
  `idruang` char(36) NOT NULL,
  `idaksesoris` char(36) NOT NULL,
  `created` datetime NOT NULL,
  `create_by` int(11) NOT NULL,
  `modified` varchar(255) NOT NULL,
  `modi_by` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangans`
--

CREATE TABLE `ruangans` (
  `id` char(36) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruangans`
--

INSERT INTO `ruangans` (`id`, `nama_ruangan`, `deskripsi`) VALUES
('1f9e7c6d-af64-4088-b44b-ca3f5bbcb2d4', 'R. Acacia', 'Ruang Divisi IT'),
('8653df8e-c36e-4179-9237-03b037708484', 'R. Mawar', 'Ruangan untuk meeting divisi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `modified`) VALUES
(1, 'amelap', 'amel123', NULL, NULL),
(2, 'amelap1', '$2y$10$hsHUyAcM4/tGwxVaWY0BTOs214o2K2zX9eddfaBL1SoN7abWw3uFO', '2024-03-18 14:39:32', '2024-03-18 14:39:32');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aksesorisruangans`
--
ALTER TABLE `aksesorisruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `aplikasimeetings`
--
ALTER TABLE `aplikasimeetings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `departements`
--
ALTER TABLE `departements`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobils`
--
ALTER TABLE `mobils`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `motorcycles`
--
ALTER TABLE `motorcycles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `peminjamanapkmeetings`
--
ALTER TABLE `peminjamanapkmeetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamanapkmeetings_ibfk_1` (`idapkmeet`),
  ADD KEY `peminjamanapkmeetings_ibfk_2` (`iddept`);

--
-- Indeks untuk tabel `peminjamanmobils`
--
ALTER TABLE `peminjamanmobils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamanmobils_ibfk_1` (`iddept`),
  ADD KEY `peminjamanmobils_ibfk_2` (`iddriver`),
  ADD KEY `peminjamanmobils_ibfk_3` (`idmobil`),
  ADD KEY `peminjamanmobils_ibfk_4` (`idlokasi`);

--
-- Indeks untuk tabel `peminjamanruangans`
--
ALTER TABLE `peminjamanruangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `peminjamanruangans_ibfk_1` (`idruang`),
  ADD KEY `peminjamanruangans_ibfk_2` (`iddept`);

--
-- Indeks untuk tabel `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indeks untuk tabel `reportrooms`
--
ALTER TABLE `reportrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idrooms` (`idrooms`);

--
-- Indeks untuk tabel `roomdetails`
--
ALTER TABLE `roomdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roomdetails_ibfk_1` (`accessories_id`),
  ADD KEY `roomdetails_ibfk_2` (`room_id`);

--
-- Indeks untuk tabel `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangandetails`
--
ALTER TABLE `ruangandetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ruangandetails_ibfk_1` (`idruang`),
  ADD KEY `ruangandetails_ibfk_2` (`idaksesoris`);

--
-- Indeks untuk tabel `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `motorcycles`
--
ALTER TABLE `motorcycles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peminjamanapkmeetings`
--
ALTER TABLE `peminjamanapkmeetings`
  ADD CONSTRAINT `peminjamanapkmeetings_ibfk_1` FOREIGN KEY (`idapkmeet`) REFERENCES `aplikasimeetings` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjamanapkmeetings_ibfk_2` FOREIGN KEY (`iddept`) REFERENCES `departements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjamanmobils`
--
ALTER TABLE `peminjamanmobils`
  ADD CONSTRAINT `peminjamanmobils_ibfk_1` FOREIGN KEY (`iddept`) REFERENCES `departements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjamanmobils_ibfk_2` FOREIGN KEY (`iddriver`) REFERENCES `drivers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjamanmobils_ibfk_3` FOREIGN KEY (`idmobil`) REFERENCES `mobils` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjamanmobils_ibfk_4` FOREIGN KEY (`idlokasi`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `peminjamanruangans`
--
ALTER TABLE `peminjamanruangans`
  ADD CONSTRAINT `peminjamanruangans_ibfk_1` FOREIGN KEY (`idruang`) REFERENCES `ruangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `peminjamanruangans_ibfk_2` FOREIGN KEY (`iddept`) REFERENCES `departements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reportrooms`
--
ALTER TABLE `reportrooms`
  ADD CONSTRAINT `reportrooms_ibfk_1` FOREIGN KEY (`idrooms`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roomdetails`
--
ALTER TABLE `roomdetails`
  ADD CONSTRAINT `roomdetails_ibfk_1` FOREIGN KEY (`accessories_id`) REFERENCES `accessories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `roomdetails_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ruangandetails`
--
ALTER TABLE `ruangandetails`
  ADD CONSTRAINT `ruangandetails_ibfk_1` FOREIGN KEY (`idruang`) REFERENCES `ruangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ruangandetails_ibfk_2` FOREIGN KEY (`idaksesoris`) REFERENCES `aksesorisruangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
