-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Mar 2023 pada 10.08
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2110020038`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang_bukti`
--

CREATE TABLE `barang_bukti` (
  `id_bb` int(11) NOT NULL,
  `nm_bb` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `alat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hewan`
--

CREATE TABLE `hewan` (
  `id_hewan` int(11) NOT NULL,
  `nm_ilmiah` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kematian_hewan`
--

CREATE TABLE `kematian_hewan` (
  `id_kematian` int(11) NOT NULL,
  `id_hewan` int(11) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasal`
--

CREATE TABLE `pasal` (
  `no_pasal` int(11) NOT NULL,
  `nm_pasal` varchar(50) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE `pelanggaran` (
  `id_bb` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `id_tersangka` int(11) NOT NULL,
  `uraian_kasus` varchar(100) NOT NULL,
  `no_laporan` int(11) NOT NULL,
  `ket_bb` varchar(100) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penambahan_hewan`
--

CREATE TABLE `penambahan_hewan` (
  `id_penambahan` int(11) NOT NULL,
  `id_wilayah` int(11) NOT NULL,
  `id_hewan` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penanganan`
--

CREATE TABLE `penanganan` (
  `no_penanganan` int(11) NOT NULL,
  `no_laporan` int(11) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `no_sk` varchar(50) NOT NULL,
  `no_pasal` int(11) NOT NULL,
  `no_sprindik` varchar(50) NOT NULL,
  `progres` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `polhut`
--

CREATE TABLE `polhut` (
  `no_sk` varchar(50) NOT NULL,
  `nm_polhot` varchar(50) NOT NULL,
  `jk` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tersangka`
--

CREATE TABLE `tersangka` (
  `id_tersangka` int(11) NOT NULL,
  `no_ktp` varchar(50) NOT NULL,
  `nm_tersangka` varchar(50) NOT NULL,
  `umur` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `wilayah`
--

CREATE TABLE `wilayah` (
  `id_wilayah` int(11) NOT NULL,
  `wilayah_kerja` varchar(100) NOT NULL,
  `konservasi_wilayah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang_bukti`
--
ALTER TABLE `barang_bukti`
  ADD PRIMARY KEY (`id_bb`);

--
-- Indeks untuk tabel `hewan`
--
ALTER TABLE `hewan`
  ADD PRIMARY KEY (`id_hewan`);

--
-- Indeks untuk tabel `kematian_hewan`
--
ALTER TABLE `kematian_hewan`
  ADD PRIMARY KEY (`id_kematian`),
  ADD KEY `hewan` (`id_hewan`),
  ADD KEY `wilayahkematian` (`id_wilayah`);

--
-- Indeks untuk tabel `pasal`
--
ALTER TABLE `pasal`
  ADD PRIMARY KEY (`no_pasal`);

--
-- Indeks untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD PRIMARY KEY (`no_laporan`),
  ADD KEY `bb` (`id_bb`),
  ADD KEY `wilayah` (`id_wilayah`),
  ADD KEY `tersangka` (`id_tersangka`);

--
-- Indeks untuk tabel `penambahan_hewan`
--
ALTER TABLE `penambahan_hewan`
  ADD PRIMARY KEY (`id_penambahan`),
  ADD KEY `hewannambah` (`id_hewan`),
  ADD KEY `wilayahnambah` (`id_wilayah`);

--
-- Indeks untuk tabel `penanganan`
--
ALTER TABLE `penanganan`
  ADD PRIMARY KEY (`no_penanganan`);

--
-- Indeks untuk tabel `polhut`
--
ALTER TABLE `polhut`
  ADD PRIMARY KEY (`no_sk`);

--
-- Indeks untuk tabel `tersangka`
--
ALTER TABLE `tersangka`
  ADD PRIMARY KEY (`id_tersangka`);

--
-- Indeks untuk tabel `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id_wilayah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang_bukti`
--
ALTER TABLE `barang_bukti`
  MODIFY `id_bb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `hewan`
--
ALTER TABLE `hewan`
  MODIFY `id_hewan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kematian_hewan`
--
ALTER TABLE `kematian_hewan`
  MODIFY `id_kematian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penambahan_hewan`
--
ALTER TABLE `penambahan_hewan`
  MODIFY `id_penambahan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `penanganan`
--
ALTER TABLE `penanganan`
  MODIFY `no_penanganan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id_wilayah` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kematian_hewan`
--
ALTER TABLE `kematian_hewan`
  ADD CONSTRAINT `hewan` FOREIGN KEY (`id_hewan`) REFERENCES `hewan` (`id_hewan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wilayahkematian` FOREIGN KEY (`id_wilayah`) REFERENCES `wilayah` (`id_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD CONSTRAINT `bb` FOREIGN KEY (`id_bb`) REFERENCES `barang_bukti` (`id_bb`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tersangka` FOREIGN KEY (`id_tersangka`) REFERENCES `tersangka` (`id_tersangka`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wilayah` FOREIGN KEY (`id_wilayah`) REFERENCES `wilayah` (`id_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penambahan_hewan`
--
ALTER TABLE `penambahan_hewan`
  ADD CONSTRAINT `hewannambah` FOREIGN KEY (`id_hewan`) REFERENCES `hewan` (`id_hewan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wilayahnambah` FOREIGN KEY (`id_wilayah`) REFERENCES `wilayah` (`id_wilayah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
