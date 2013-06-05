-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 06. Juni 2013 jam 05:58
-- Versi Server: 5.1.37
-- Versi PHP: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sipi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_tangkap`
--

CREATE TABLE IF NOT EXISTS `alat_tangkap` (
  `id_alat_tangkap` int(11) NOT NULL,
  `nama_alat_tangkap` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_alat_tangkap`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_tangkap`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `ikan`
--

CREATE TABLE IF NOT EXISTS `ikan` (
  `id_ikan` int(11) NOT NULL,
  `nama_ikan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ikan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ikan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_kapal`
--

CREATE TABLE IF NOT EXISTS `jenis_kapal` (
  `id_jenis_kapal` int(11) NOT NULL,
  `nama_jenis_kapal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_jenis_kapal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_kapal`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `kapal`
--

CREATE TABLE IF NOT EXISTS `kapal` (
  `id_kapal` int(11) NOT NULL,
  `jenis_kapal_id` int(11) DEFAULT NULL,
  `nama_kapal` varchar(45) DEFAULT NULL,
  `pemilik_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kapal`),
  KEY `jenis_kapal_id` (`jenis_kapal_id`),
  KEY `pemilik_id` (`pemilik_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kapal`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE IF NOT EXISTS `kelompok` (
  `id_kelompok` int(11) NOT NULL,
  `nama_kelompok` varchar(45) DEFAULT NULL,
  `menambahkan` varchar(45) DEFAULT NULL,
  `melihat` int(11) DEFAULT NULL,
  `mengedit` int(11) DEFAULT NULL,
  `menghapus` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kelompok`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok_pembeli`
--

CREATE TABLE IF NOT EXISTS `kelompok_pembeli` (
  `id_kelompok_pembeli` int(11) NOT NULL,
  `nama_kelompok_pembeli` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_kelompok_pembeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kelompok_pembeli`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE IF NOT EXISTS `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `ikan_id` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `satuan_id` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `pajak_penjual` int(11) NOT NULL,
  `pajak_pembeli` int(11) NOT NULL,
  `ref_keranjang` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_keranjang`),
  KEY `ikan_id` (`ikan_id`),
  KEY `berat` (`berat`),
  KEY `satuan_id` (`satuan_id`),
  KEY `pajak_penjual` (`pajak_penjual`),
  KEY `pajak_pembeli` (`pajak_pembeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keranjang`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE IF NOT EXISTS `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(45) DEFAULT NULL,
  `kelompok_pembeli_id` int(11) DEFAULT NULL,
  `alamat` text,
  `waktu_terdaftar` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pembeli`),
  UNIQUE KEY `kelompok_pembeli_id` (`kelompok_pembeli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembeli`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `pemilik`
--

CREATE TABLE IF NOT EXISTS `pemilik` (
  `id_pemilik` int(11) NOT NULL,
  `nama_pemilik` varchar(45) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(12) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id_pemilik`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemilik`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama_pengguna` varchar(45) DEFAULT NULL,
  `sandi` varchar(45) DEFAULT NULL,
  `kelompok_id` int(11) DEFAULT NULL,
  `waktu_terdaftar` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_pengguna`),
  KEY `kelompok_id` (`kelompok_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengguna`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE IF NOT EXISTS `profil` (
  `pengguna_id` int(11) NOT NULL,
  `nama_lengkap` varchar(45) DEFAULT NULL,
  `alamat` text,
  `telepon` varchar(12) DEFAULT NULL,
  `nik` varchar(16) DEFAULT NULL,
  KEY `pengguna_id` (`pengguna_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `profil`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `retribusi`
--

CREATE TABLE IF NOT EXISTS `retribusi` (
  `id_retribusi` int(11) NOT NULL,
  `nama_retribusi` varchar(45) DEFAULT NULL,
  `jumlah_retribusi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_retribusi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `retribusi`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE IF NOT EXISTS `satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_satuan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `satuan`
--


-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `keranjang_id` int(11) DEFAULT NULL,
  `kapal_id` int(11) DEFAULT NULL,
  `alat_tangkap_id` int(11) NOT NULL,
  `pembeli_id` int(11) DEFAULT NULL,
  `waktu_lelang` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`),
  KEY `keranjang_id` (`keranjang_id`),
  KEY `kapal_id` (`kapal_id`),
  KEY `pembeli_id` (`pembeli_id`),
  KEY `alat_tangkap_id` (`alat_tangkap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--


--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kapal`
--
ALTER TABLE `kapal`
  ADD CONSTRAINT `kapal_ibfk_2` FOREIGN KEY (`pemilik_id`) REFERENCES `pemilik` (`id_pemilik`),
  ADD CONSTRAINT `kapal_ibfk_1` FOREIGN KEY (`jenis_kapal_id`) REFERENCES `jenis_kapal` (`id_jenis_kapal`);

--
-- Ketidakleluasaan untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_4` FOREIGN KEY (`pajak_pembeli`) REFERENCES `retribusi` (`id_retribusi`),
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`ikan_id`) REFERENCES `ikan` (`id_ikan`),
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`satuan_id`) REFERENCES `satuan` (`id_satuan`),
  ADD CONSTRAINT `keranjang_ibfk_3` FOREIGN KEY (`pajak_penjual`) REFERENCES `retribusi` (`id_retribusi`);

--
-- Ketidakleluasaan untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD CONSTRAINT `pembeli_ibfk_1` FOREIGN KEY (`kelompok_pembeli_id`) REFERENCES `kelompok_pembeli` (`id_kelompok_pembeli`);

--
-- Ketidakleluasaan untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD CONSTRAINT `pengguna_ibfk_1` FOREIGN KEY (`kelompok_id`) REFERENCES `kelompok` (`id_kelompok`);

--
-- Ketidakleluasaan untuk tabel `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`pengguna_id`) REFERENCES `pengguna` (`id_pengguna`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`pembeli_id`) REFERENCES `pembeli` (`id_pembeli`),
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`keranjang_id`) REFERENCES `keranjang` (`id_keranjang`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`kapal_id`) REFERENCES `kapal` (`id_kapal`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`alat_tangkap_id`) REFERENCES `alat_tangkap` (`id_alat_tangkap`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
