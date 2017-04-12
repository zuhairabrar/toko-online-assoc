-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 11 Apr 2017 pada 18.23
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bitcom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `captcha`
--

CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(16) COLLATE latin1_general_ci NOT NULL DEFAULT '0',
  `word` varchar(20) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=919 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_banner`
--

CREATE TABLE IF NOT EXISTS `tbl_banner` (
  `kode_banner` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(150) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `stts` varchar(1) NOT NULL,
  PRIMARY KEY (`kode_banner`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `tbl_banner`
--

INSERT INTO `tbl_banner` (`kode_banner`, `judul`, `deskripsi`, `gambar`, `stts`) VALUES
(8, 'Banner1', '<p><span>SELAMAT DATANG di Website BitCom Jember Termurah dan Terlengkap di Kota Jember. Kami menyadari Indonesia begitu luas, untuk itulah kami hadir sebagai solusi untuk anda yang belum menjadi pelanggan atau yang sudah menjadi pelanggan kami dari uar kota agar tidak di repotkan dengan pemilihan model tekhnologi .</span></p>', '1112757560Toko_Komputer.jpg', '1'),
(9, 'Banner2', '<p><span>SELAMAT DATANG di Website BitCom online Jember Termurah dan Terlengkap di Kota Jember. Kami menyadari Indonesia begitu luas, untuk itulah kami hadir sebagai solusi untuk anda yang belum menjadi pelanggan atau yang sudah menjadi pelanggan kami dari uar kota agar tidak di repotkan dengan pemilihan model tekhnologi .</span></p>', '629283841unnamed.png', '1'),
(10, 'Banner3', '<p>SELAMAT DATANG di Website BitCom Online Jember Termurah dan Terlengkap di Kota Jember. Kami menyadari Indonesia begitu luas, untuk itulah kami hadir sebagai solusi untuk anda yang belum menjadi pelanggan atau yang sudah menjadi pelanggan kami dari uar kota agar tidak di repotkan dengan pemilihan model tekhnologi .</p>', '934854369pameran-komputer_20160207_103302.jpg', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_intermezzo`
--

CREATE TABLE IF NOT EXISTS `tbl_intermezzo` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_berita` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=131 ;

--
-- Dumping data untuk tabel `tbl_intermezzo`
--

INSERT INTO `tbl_intermezzo` (`id_berita`, `judul`, `isi_berita`, `tanggal`, `jam`, `gambar`, `dibaca`) VALUES
(130, 'selamat datang di bitcom online jember', '<p>\r\n\n<object width="100" height="100" data="D:\\MUZIECK\\The Chainsmokers Coldplay - Something Just Like This Lodola Remix.mp3" type="application/x-shockwave-flash">\r\n\n<param name="src" value="D:\\MUZIECK\\The Chainsmokers Coldplay - Something Just Like This Lodola Remix.mp3" />\r\n\n</object>\r\n\n&nbsp;semoga puas</p>', '2017-04-05', '03:25:00', '207621742IMG_20160118_234552.jpg', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_katalog`
--

CREATE TABLE IF NOT EXISTS `tbl_katalog` (
  `id_katalog` int(100) NOT NULL AUTO_INCREMENT,
  `judul_file` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` varchar(30) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_katalog`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `tbl_katalog`
--

INSERT INTO `tbl_katalog` (`id_katalog`, `judul_file`, `nama_file`, `tgl_posting`) VALUES
(6, 'Katalog Bulan Oktober 2011', '21270469115092009.pdf', ' 2011-11-02'),
(8, ' Cicing', '122473083.pdf', ' 2011-12-31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(10) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(100) NOT NULL,
  `kode_level` int(2) NOT NULL,
  `kode_parent` int(5) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `kode_level`, `kode_parent`) VALUES
(1, 'PC/Komputer Dekstop', 0, 0),
(2, 'Notebook', 0, 0),
(3, 'LCD/LED Monitor', 0, 0),
(4, 'Printer/Scanner', 0, 0),
(5, 'Networking', 0, 0),
(6, 'Server', 0, 0),
(7, 'Harddisk', 0, 0),
(8, 'Projector', 0, 0),
(20, 'Jala', 2, 16),
(21, 'Tempel', 2, 16),
(22, 'Variasi', 2, 16),
(23, 'Polos', 2, 16),
(40, 'PC Branded', 1, 1),
(42, 'PC Rakitan', 1, 1),
(43, 'PC Gamers', 1, 1),
(44, 'PC All In One', 1, 1),
(45, 'Acer', 1, 2),
(46, 'Asus', 1, 2),
(47, 'Axioo', 1, 2),
(48, 'Dell', 1, 2),
(49, 'Fujitsu', 1, 2),
(50, 'Hawlet Packard (HP)', 1, 2),
(51, 'Lenovo', 1, 2),
(52, 'Macbook', 1, 2),
(53, 'MSI', 1, 2),
(54, 'Samsung', 1, 2),
(55, 'Toshiba', 1, 2),
(56, 'LED MONITOR DELL', 1, 3),
(57, 'LED MONITOR LG', 1, 3),
(58, 'LED MONITOR SAMSUNG', 1, 3),
(59, 'CANON', 1, 4),
(60, 'EPSON', 1, 4),
(61, 'Hawlet Packard (HP)', 1, 4),
(62, 'NEC', 1, 4),
(63, 'Panasonic', 1, 4),
(64, 'Plustek Scanner', 1, 4),
(65, 'Tenda', 1, 5),
(66, 'Totolink', 1, 5),
(67, 'TP-Link', 1, 5),
(68, 'Server Axus', 1, 6),
(69, 'Server Dell', 1, 6),
(70, 'Server Lenovo', 1, 6),
(71, 'STORAGE', 1, 7),
(72, 'Hard Disk External', 1, 7),
(73, 'Hard Disk Internal', 1, 7),
(74, 'Projector Epson', 1, 8),
(75, 'Projector Hitachi', 1, 8),
(76, 'Projector Infocus', 1, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_produk`
--

CREATE TABLE IF NOT EXISTS `tbl_produk` (
  `kode_produk` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nama_produk` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `harga` int(10) NOT NULL,
  `stok` int(5) NOT NULL,
  `dibeli` int(5) NOT NULL,
  `gbr_kecil` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gbr_besar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `tipe_produk` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_produk`
--

INSERT INTO `tbl_produk` (`kode_produk`, `id_kategori`, `nama_produk`, `harga`, `stok`, `dibeli`, `gbr_kecil`, `gbr_besar`, `deskripsi`, `tipe_produk`) VALUES
('SDL100028', 48, 'DELL Inspiron 13 7348 (Core i7-5500U)', 16750000, 10, 1, 'dell26_200x300.jpg', 'dell26_200x300.jpg', '<p>Intel Core i7-5500U,</p>\r\n\n<p>8GB DDR3L,</p>\r\n\n<p>256GB SSD,</p>\r\n\n<p>VGA Intel HD Graphics 5500,</p>\r\n\n<p>WiFi, Bluetooth,</p>\r\n\n<p>Camera, 13.3" FHD,</p>\r\n\n<p>Touchscreen,</p>\r\n\n<p>Win 8 SL 64bit</p>', 'notebook'),
('SDL100029', 48, 'DELL Inspiron 13 7359 (Core i5-6200U)', 12500000, 10, 1, 'dell25_200x300.jpg', 'dell25_200x300.jpg', '<p>Intel Core i5-6200U,</p>\r\n\n<p>4GB DDR3L,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>VGA Intel HD Graphics 520,</p>\r\n\n<p>Wifi,</p>\r\n\n<p>Bluetooth,</p>\r\n\n<p>Camera, 13"HD,</p>\r\n\n<p>Win 10</p>', 'notebook'),
('SDL100026', 47, 'Axioo Neon RKC 7941', 12500000, 10, 1, '21127_l_1_200x300.jpg', '21127_l_1_200x300.jpg', '<p>Intel Core i7-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>1TB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100027', 47, 'My Book Intel Braswel N3060 Exclusive ', 2575000, 10, 1, 'axioo-mybook-2_200x300.jpg', 'axioo-mybook-2_200x300.jpg', '<p>Intel N3060 1.6Ghz,</p>\r\n\n<p>2GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100025', 47, 'Axioo MIMO TRHC125X - 18.5"', 4350000, 10, 1, 'trhc125x_200x300.jpg', 'trhc125x_200x300.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100022', 46, 'ASUS A455LD-WX053D', 6315000, 10, 1, 'asus184_140x140.jpg', 'asus184_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100023', 46, 'ASUS A455LD-WX110D', 5999000, 10, 1, 'asus19_140x140.jpg', 'asus19_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100024', 46, 'Notebook ASUS PU451LD-WO179G', 10850000, 10, 1, 'notebook-asus-pu451ld-wo179d1_200x300.jpg', 'notebook-asus-pu451ld-wo179d1_200x300.jpg', '<p>Intel&reg; Core&trade; i5-4210U Processor,</p>\r\n\n<p>4GB RAM,</p>\r\n\n<p>1TB HDD,</p>\r\n\n<p>VGA NVIDIA Geforce  820 2GB,</p>\r\n\n<p>8 x Super Multi with Double Layer Optical Drive,</p>\r\n\n<p>Display 14"  Anti Glare,</p>\r\n\n<p>Windows 7 64 bit Pro</p>', 'notebook'),
('SDL100021', 46, 'ASUS P2420LJ Core i3-5005U Win 7', 9300000, 10, 1, 'asus_pro_p2420lj-i3_200x300.jpg', 'asus_pro_p2420lj-i3_200x300.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100019', 45, 'ACER Aspire E5-471 NX.MN6SN.002 - White', 5550000, 10, 3, 'acer-aspire-e5-471-nx.mn6sn.001---white_140x140.jpg', 'acer-aspire-e5-471-nx.mn6sn.001---white_140x140.jpg', '<p>AMD Quad Core A4-6210</p>\r\n\n<p>RAM 2GB DDR3</p>\r\n\n<p>500GB HDD</p>\r\n\n<p>DVD&plusmn;RW</p>\r\n\n<p>WiFi</p>\r\n\n<p>Bluetooth</p>\r\n\n<p>VGA Nvidia GeForce 820M 2GB</p>\r\n\n<p>Camera</p>\r\n\n<p>14" WXGA</p>\r\n\n<p>Non OS</p>', 'notebook'),
('SDL100011', 40, 'ASUS PRO BM1AF - 566F', 10999000, 10, 0, 'pcasus10_200x300.jpg', 'pcasus10_200x300.jpg', '<div class="manufacturer"><span class="bold">Manufacturer: </span><span class="modal">ASUS</span></div>\r\n\n<div class="manufacturer"><span class="modal">Intel&reg; Core&trade; i5-4590 (6M Cache, 3.70 GHz)</span></div>\r\n\n<div class="manufacturer"><span class="modal">RAM 8 GB DDR3</span></div>\r\n\n<div class="manufacturer"><span class="modal">VGA Nvidia Rock GS 4GB<br /></span></div>', 'pckomputer'),
('SDL100012', 40, 'ASUS Desktop D510MT', 8400000, 10, 16, 'asus-desktop-d510mt_200x300.jpg', 'asus-desktop-d510mt_200x300.jpg', '<p>Intel Core i5-4460</p>\r\n\n<p>RAM 4GB DDR3</p>\r\n\n<p>1TB HDD</p>\r\n\n<p>DVD&plusmn;RW</p>\r\n\n<p>VGA Integrated NIC Audio</p>\r\n\n<p>Non OS</p>', 'pckomputer'),
('SDL100013', 40, 'ASUS Pro BM1AD-A59Z Microtower', 14750000, 10, 1, 'pcasus8_200x300.jpg', 'pcasus8_200x300.jpg', '<p>Intel Core i5-4460</p>\r\n\n<p>4GB DDR3</p>\r\n\n<p>1TB HDD</p>\r\n\n<p>DVDRW</p>\r\n\n<p>VGA Intel HD Graphics NIC</p>\r\n\n<p>Win 8.1 Pro</p>', 'pckomputer'),
('SDL100014', 40, 'ASUS PRO BP1AD - 0490', 6800000, 10, 1, 'pcasus1_200x300.jpg', 'pcasus1_200x300.jpg', '<p>Small Form Factor (SFF)</p>\r\n\n<p>Intel&reg; H81 4GB (1x4GB)</p>\r\n\n<p>500GB  (7,200 Rpm)</p>\r\n\n<p>DOS</p>', 'pckomputer'),
('SDL100015', 40, 'ASUSPRO BM1AE-I74790343F', 13900000, 10, 7, 'asuspro-bm1ae-i74790343f_200x300.jpg', 'asuspro-bm1ae-i74790343f_200x300.jpg', '<p>Intel&reg; Core&trade; i7-4790 Processor (8M Cache, up to 4.00 GHz)</p>\r\n\n<p>4GB DDR3</p>\r\n\n<p>1TB  HDD</p>\r\n\n<p>DVD&plusmn;RW</p>\r\n\n<p>NVidia GT720 2G DDR3 Graphics</p>\r\n\n<p>Monitor ASUS LED 18.5&rdquo;</p>\r\n\n<p>DOS</p>', 'pckomputer'),
('SDL100016', 45, 'Notebook Acer Aspire E5-411G-C9TH', 4495000, 10, 1, 'acer-aspire-e5-411g-c9th-(hitam)_200x300.jpg', 'acer-aspire-e5-411g-c9th-(hitam)_200x300.jpg', '<p>Intel Celeron N2840</p>\r\n\n<p>RAM 2GB DDR3</p>\r\n\n<p>500GB HDD</p>\r\n\n<p>DVD&plusmn;RW</p>\r\n\n<p>WiFi</p>\r\n\n<p>Bluetooth</p>\r\n\n<p>VGA Nvidia GeForce 820M 2GB</p>\r\n\n<p>Camera</p>\r\n\n<p>14" WXGA</p>\r\n\n<p>Non OS</p>', 'notebook'),
('SDL100020', 45, 'ACER Aspire E5-471 NX.MNBSN.001 - Red', 5550000, 10, 1, 'acer-aspire-e5-471-nx.mnbsn.001---red_140x140.jpg', 'acer-aspire-e5-471-nx.mnbsn.001---red_140x140.jpg', '<p>Intel Celeron N2840</p>\r\n\n<p>RAM 2GB DDR3</p>\r\n\n<p>500GB HDD</p>\r\n\n<p>DVD&plusmn;RW</p>\r\n\n<p>WiFi</p>\r\n\n<p>Bluetooth</p>\r\n\n<p>VGA Nvidia GeForce 820M 2GB</p>\r\n\n<p>Camera</p>\r\n\n<p>14" WXGA</p>\r\n\n<p>Non OS</p>', 'notebook'),
('SDL100018', 45, 'ACER Aspire AZC-602 DQ.SUCSN.001 All-in-One', 5499000, 10, 1, 'acer-aspire-azc-602-all-in-one_140x140.jpg', 'acer-aspire-azc-602-all-in-one_140x140.jpg', '<p>Intel Celeron N2840</p>\r\n\n<p>RAM 2GB DDR3</p>\r\n\n<p>500GB HDD</p>\r\n\n<p>DVD&plusmn;RW</p>\r\n\n<p>WiFi</p>\r\n\n<p>Bluetooth</p>\r\n\n<p>VGA Nvidia GeForce 820M 2GB</p>\r\n\n<p>Camera</p>\r\n\n<p>14" WXGA</p>\r\n\n<p>Non OS</p>', 'notebook'),
('SDL100030', 48, 'DELL Inspiron 14 3458 IRIS I5 With 2GB VRAM', 7450000, 10, 1, 'dell22_200x300.jpg', 'dell22_200x300.jpg', '<p>Inspiron 3458 5th Generation Intel(R) Core(TM) i5-5200U processor (3M  Cache, up to 2.7GHz) 4GB 1 DIMM (4GB x1) DDR3L 1600Mhz 500GB 5400RPM  Hard Drive</p>', 'notebook'),
('SDL100031', 48, 'Dell Latitude E6440 i7-4610M 7Pro', 21300000, 10, 1, 'dell1018_200x300.jpg', 'dell1018_200x300.jpg', '<p>Intel&reg; Core&trade; i7-4610M Processor (3.0GHz up to 3.7GHz, 4M cache)<br /> 8GB (2x4GB) 1600MHz DDR31TB (5.400 Rpm) Solid State Hybrid Drive</p>', 'notebook'),
('SDL100032', 48, 'DELL XPS 15 (Core i7-4712HQ) Ultrabook', 28200000, 10, 1, 'dell1882_200x300.jpg', 'dell1882_200x300.jpg', '<p>Intel Core i7-4712HQ,</p>\r\n\n<p>16GB DDR3L,</p>\r\n\n<p>1TB HDD + 32GB SSD,</p>\r\n\n<p>VGA Nvidia GeForce  GT750M 2GB,</p>\r\n\n<p>WiFi,</p>\r\n\n<p>Bluetooth,</p>\r\n\n<p>Camera,</p>\r\n\n<p>15.6"QHD+,</p>\r\n\n<p>Win 8.1 SL</p>', 'notebook'),
('SDL100033', 49, 'FUJITSU LifeBook AH544V-4712MQ - White', 10300000, 10, 1, 'fujitsu-lifebook-ah544v-4712mq---white_140x140.jpg', 'fujitsu-lifebook-ah544v-4712mq---white_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100034', 49, 'FUJITSU LifeBook AH544V-4210M - Black', 8450000, 10, 1, 'fujitsu-lifebook-ah544v-4210m---black_140x140.jpg', 'fujitsu-lifebook-ah544v-4210m---black_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100035', 49, 'FUJITSU LifeBook AH544V-4210M - White', 8450000, 10, 1, 'fujitsu-lifebook-ah544v-4210m---white_140x140.jpg', 'fujitsu-lifebook-ah544v-4210m---white_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100036', 49, 'FUJITSU LifeBook UH554-4200U - Black', 11100000, 10, 1, 'fujitsu-lifebook-uh554-4200u---black_140x140.jpg', 'fujitsu-lifebook-uh554-4200u---black_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100037', 50, 'HP 240 G3 i5-4210U', 7150000, 10, 1, 'hp296_200x300.jpg', 'hp296_200x300.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100038', 50, 'HP 240 G3 i5-5200U', 7200000, 10, 1, 'hp296_200x300.jpg', 'hp296_200x300.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100039', 50, 'HP 240 G4 - i5-6200 ', 7400000, 10, 1, 'hp453_200x300.jpg', 'hp453_200x300.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100040', 50, 'HP 240 G4 - i5-6200 Win 10', 9400000, 10, 1, 'hp453_200x300.jpg', 'hp453_200x300.jpg', '<p>Intel Core i5-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100041', 51, 'Lenovo B4070-59426094', 5400000, 10, 1, 'lenovo128_140x140.jpg', 'lenovo128_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100042', 51, 'LENOVO IdeaPad B40-30-0545', 4160000, 10, 1, 'lenovo6_140x140.jpg', 'lenovo6_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100043', 51, 'LENOVO ThinkPad T430u (2439-L8A) + 32GB', 19145000, 10, 1, 'lenovo43_200x300.jpg', 'lenovo43_200x300.jpg', '<p>Intel Core i7 3520M ,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>Gigabit Ethernet,</p>\r\n\n<p>WiFi,</p>\r\n\n<p>Bluetooth,</p>\r\n\n<p>Nvidia Optimus NVS5400,</p>\r\n\n<p>Camera,</p>\r\n\n<p>14" WXGA,</p>\r\n\n<p>Windows 7  Professional - 64bit</p>', 'notebook'),
('SDL100044', 51, 'LENOVO ThinkPad Yoga FIF Ultrabook', 17685000, 10, 2, 'lenovo24_140x140.jpg', 'lenovo24_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100045', 52, 'APPLE MacBook Pro MJLQ2 Silver', 29500000, 10, 1, 'apple-macbook-pro-mjlq2-silver_200x300.jpg', 'apple-macbook-pro-mjlq2-silver_200x300.jpg', '<p>Intel Core i7-2.2Ghz Turbo 3.4Ghz,</p>\r\n\n<p>RAM 16GB,</p>\r\n\n<p>HDD 256GB SSD,</p>\r\n\n<p>VGA Intel Iris Pro,</p>\r\n\n<p>Screen 15.6"  Retina Display,</p>\r\n\n<p>OS X Yosemite</p>', 'notebook'),
('SDL100046', 52, 'Apple Macbook Pro Touch Bar MLVP 2', 27500000, 10, 2, '13-inch-macbook-pro-with-touch-bar-mlh42id-a_200x300.jpg', '13-inch-macbook-pro-with-touch-bar-mlh42id-a_200x300.jpg', '<p>Intel Core i7-2.2Ghz Turbo 3.4Ghz,</p>\r\n\n<p>RAM 16GB,</p>\r\n\n<p>HDD 256GB SSD,</p>\r\n\n<p>VGA Intel Iris Pro,</p>\r\n\n<p>Screen 15.6"  Retina Display,</p>\r\n\n<p>OS X Yosemite</p>', 'notebook'),
('SDL100047', 52, 'APPLE MacBook Pro with Retina Display [MF839ID/A]', 19750000, 10, 1, 'apple-macbook-pro-retina-13-retina-display-mf839-8gb-intel-13-silver-0508-6561632-1_200x300.jpg', 'apple-macbook-pro-retina-13-retina-display-mf839-8gb-intel-13-silver-0508-6561632-1_200x300.jpg', '<p>Intel Core i5-2.2Ghz Turbo 3.4Ghz,</p>\r\n\n<p>RAM 8GB,</p>\r\n\n<p>HDD 256GB SSD,</p>\r\n\n<p>VGA Intel Iris Pro,</p>\r\n\n<p>Screen 15.6"  Retina Display,</p>\r\n\n<p>OS X Yosemite</p>', 'notebook'),
('SDL100048', 52, 'Apple New Macbook Pro MNQF2 2016', 31200000, 10, 3, '13-inch-macbook-pro-with-touch-bar-mlh-12-id-a_200x300.jpg', '13-inch-macbook-pro-with-touch-bar-mlh-12-id-a_200x300.jpg', '<p>Touchbar + Touch ID/13inch/ Core i5 2.9 GHz/ 8GB/ Intel Iris 550/ 512GB</p>', 'notebook'),
('SDL100049', 53, 'MSI Notebook GP60 2PE Leopard Pro - Black', 11850000, 10, 1, 'msi-notebook-gp60-2pe-leopard-pro---black_140x140.jpg', 'msi-notebook-gp60-2pe-leopard-pro---black_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100050', 53, 'MSI Notebook GT72 2QE Dominator Pro - Black', 41500000, 5, 1, 'msi-notebook-gt72-2qe-dominator-pro---black_140x140.jpg', 'msi-notebook-gt72-2qe-dominator-pro---black_140x140.jpg', '<p>Intel Core i7-5005U,</p>\r\n\n<p>16GB DDR3,</p>\r\n\n<p>1TB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100051', 53, 'MSI Notebook GT70 2PC Dominator - Black ', 25990000, 5, 1, 'msi-notebook-gt70-2pc-dominator---black_140x140.jpg', 'msi-notebook-gt70-2pc-dominator---black_140x140.jpg', '<p>Intel Core i7-5005U,</p>\r\n\n<p>16GB DDR3,</p>\r\n\n<p>1TB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100052', 53, 'MSI Notebook GS70 2QE Stealth Pro - Red', 31500000, 5, 1, 'msi-notebook-gs70-2qe-stealth-pro---red_140x140.jpg', 'msi-notebook-gs70-2qe-stealth-pro---red_140x140.jpg', '<p>Intel Core i7-5005U,</p>\r\n\n<p>16GB DDR3,</p>\r\n\n<p>1TB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100053', 55, 'TOSHIBA Portege Z930-2022U', 19648000, 5, 11, 'tosibha6_140x140.jpg', 'tosibha6_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100054', 55, 'TOSHIBA Satelite C50-B202E', 5950000, 5, 1, 'tosibha3_140x140.jpg', 'tosibha3_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100055', 55, 'TOSHIBA Satellite NB10-AS100 ', 6120000, 5, 1, 'tosibha1_140x140.jpg', 'tosibha1_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100056', 55, 'TOSHIBA Satellite L40-AS102XG', 7240000, 5, 1, 'tosibha4_140x140.jpg', 'tosibha4_140x140.jpg', '<p>Intel Core i3-5005U,</p>\r\n\n<p>4GB DDR3,</p>\r\n\n<p>500GB HDD,</p>\r\n\n<p>DVDRW,</p>\r\n\n<p>VGA Nvidia GeForce 920 2GB,</p>\r\n\n<p>14" HD,</p>\r\n\n<p>Win 7 Pro 64bit</p>', 'notebook'),
('SDL100057', 56, 'Dell E Series E1913 19inch', 1950000, 5, 1, 'dell42_180x180.jpg', 'dell42_180x180.jpg', '', 'accesories'),
('SDL100058', 56, 'Dell E Series E1913S 19"', 21615000, 5, 7, 'dell29_180x180.jpg', 'dell29_180x180.jpg', '', 'accesories'),
('SDL100059', 56, 'Dell E Series E1914H 18.5inch', 16375000, 5, 1, 'dell35_180x180.jpg', 'dell35_180x180.jpg', '', 'accesories'),
('SDL100060', 56, 'DELL Monitor LED S2440L', 3799000, 5, 1, 'dell966_180x180.jpg', 'dell966_180x180.jpg', '', 'accesories'),
('SDL100061', 57, 'LG 22MP65HQ LED IPS Monitor', 2000000, 5, 1, 'lg3_180x180.jpg', 'lg3_180x180.jpg', '', 'accesories'),
('SDL100065', 59, 'CANON imageCLASS MF4820d', 3390000, 5, 1, 'canon-imageclass-mf4820d_140x140.jpg', 'canon-imageclass-mf4820d_140x140.jpg', '', 'accesories'),
('SDL100063', 57, 'LG LED Monitor [20M37A] ', 1120000, 5, 1, 'lg2_180x180.jpg', 'lg2_180x180.jpg', '', 'accesories'),
('SDL100064', 59, 'CANON imageCLASS MF3010', 2250000, 5, 1, 'canon-imageclass-mf3010_140x140.jpg', 'canon-imageclass-mf3010_140x140.jpg', '', 'accesories'),
('SDL100066', 59, 'CANON imageCLASS MF4870dn', 5650000, 5, 1, 'canon-imageclass-mf4870dn_140x140.jpg', 'canon-imageclass-mf4870dn_140x140.jpg', '', 'accesories'),
('SDL100067', 59, 'CANON imagePROGRAF iPF765 MFP M40', 178500000, 5, 1, 'canon-imageprograf-ipf765-mfp-m40_140x140.jpg', 'canon-imageprograf-ipf765-mfp-m40_140x140.jpg', '', 'accesories'),
('SDL100068', 59, 'CANON LBP-5970', 44800000, 5, 1, 'canon-lbp-5970_140x140.jpg', 'canon-lbp-5970_140x140.jpg', '', 'accesories'),
('SDL100069', 60, 'EPSON AcuLaser M1400', 1410000, 5, 1, 'epson-aculaser-m1400_140x140.jpg', 'epson-aculaser-m1400_140x140.jpg', '', 'accesories'),
('SDL100070', 60, 'EPSON Inkjet Photo L800', 3675000, 5, 1, 'epson-inkjet-photo-l800_140x140.jpg', 'epson-inkjet-photo-l800_140x140.jpg', '', 'accesories'),
('SDL100071', 60, 'EPSON Printer DFX-9000', 44500000, 5, 1, 'epson-printer-dfx-9000_140x140.jpg', 'epson-printer-dfx-9000_140x140.jpg', '', 'accesories'),
('SDL100072', 60, 'EPSON Printer DLQ-3500', 22200000, 5, 1, 'epson-printer-dlq-3500_140x140.jpg', 'epson-printer-dlq-3500_140x140.jpg', '', 'accesories'),
('SDL100073', 61, 'HP Color Laserjet Enterprise 500 M575F MFP CD645A', 33700000, 5, 1, 'hp-color-laserjet-enterprise-500-m575f-mfp-cd645a_140x140.jpg', 'hp-color-laserjet-enterprise-500-m575f-mfp-cd645a_140x140.jpg', '', 'accesories'),
('SDL100074', 61, 'HP Color LaserJet Enterprise CM4540fskm MFP CC421A', 89075000, 5, 2, 'hp-color-laserjet-enterprise-cm4540fskm-mfp-cc421a_140x140.jpg', 'hp-color-laserjet-enterprise-cm4540fskm-mfp-cc421a_140x140.jpg', '', 'accesories'),
('SDL100075', 61, 'HP Designjet T120 CQ891A', 17500000, 5, 1, 'hp-designjet-t120-cq891a_140x140.jpg', 'hp-designjet-t120-cq891a_140x140.jpg', '', 'accesories'),
('SDL100076', 61, 'HP Designjet T1500 CR356A', 67700000, 5, 4, 'hp-designjet-t1500-cr356a_140x140.jpg', 'hp-designjet-t1500-cr356a_140x140.jpg', '', 'accesories'),
('SDL100077', 64, 'PLUSTEK MobileOffice AD450 Portable', 3900000, 5, 1, 'plustek-1_200x300.jpg', 'plustek-1_200x300.jpg', '', 'accesories'),
('SDL100078', 64, 'PLUSTEK MobileOffice S400', 1650000, 5, 1, 'plustek-10_200x300.jpg', 'plustek-10_200x300.jpg', '', 'accesories'),
('SDL100079', 64, 'PLUSTEK MobileOffice S410', 2050000, 5, 1, 'plustek-11_200x300.jpg', 'plustek-11_200x300.jpg', '', 'accesories'),
('SDL100080', 64, 'PLUSTEK OpticBook 3800', 6200000, 5, 1, 'plustek-16_200x300.jpg', 'plustek-16_200x300.jpg', '', 'accesories'),
('SDL100081', 64, 'PLUSTEK OpticSlim 2600', 800000, 5, 1, 'plustek-14_200x300.jpg', 'plustek-14_200x300.jpg', '', 'accesories'),
('SDL100087', 67, 'TP-LINK Outdoor Wireless Access Point WA7210N', 690000, 5, 6, 'acces-point_200x300.jpg', 'acces-point_200x300.jpg', '<p>Wireless Access Point, 802.11b/g/n, 150Mbps</p>', 'networking'),
('SDL100083', 65, 'TENDA Wireless N150 ADSL2+ Modem Router-D151', 330000, 5, 1, 'tenda-wireless-n150-adsl2+-modem-router-d1514_140x140.jpg', 'tenda-wireless-n150-adsl2+-modem-router-d1514_140x140.jpg', '', 'networking'),
('SDL100084', 65, 'TENDA Wireless Router-N301', 275000, 5, 1, 'tenda-wireless-router-n301_140x140.jpg', 'tenda-wireless-router-n301_140x140.jpg', '', 'networking'),
('SDL100085', 66, 'TOTOLINK Wireless N Router-N100RE', 250000, 5, 3, 'totolink-wireless-n-router-n100re_140x140.jpg', 'totolink-wireless-n-router-n100re_140x140.jpg', '', 'networking'),
('SDL100086', 67, 'TP-LINK 3G Wireless-N Router TL-MR3420', 340000, 5, 5, '1692_img_tue1112011121_200x300.jpg', '1692_img_tue1112011121_200x300.jpg', '<p>3G Broadband Wireless N Router, 802.11b/g/n, 300Mbps</p>', 'networking'),
('SDL100088', 67, 'TP-LINK TL-WN722N', 210000, 5, 1, 'tl-wn722n-01_200x300.jpg', 'tl-wn722n-01_200x300.jpg', '<p>Wireless N USB Adapter, 802.11b/g/n</p>', 'networking'),
('SDL100089', 67, 'TP-LINK TL-WN821N', 295000, 5, 1, 'tl-wn821n-02_200x300.jpg', 'tl-wn821n-02_200x300.jpg', '<p>Wireless N USB Adapter, 802.11b/g/n, 300Mbps</p>', 'networking'),
('SDL100090', 67, 'TP-LINK Universal WiFi Range Extender TL-WA850RE', 350000, 5, 1, 'wifi-range_200x300.jpg', 'wifi-range_200x300.jpg', '<p>Wireless Range Extender, 802.11b/g/n, 300Mbps</p>', 'networking');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_spr_admn`
--

CREATE TABLE IF NOT EXISTS `tbl_spr_admn` (
  `kode_spr_admn` int(10) NOT NULL AUTO_INCREMENT,
  `username_admn` varchar(50) NOT NULL,
  `pass_admn` varchar(100) NOT NULL,
  `nama_admn` varchar(100) NOT NULL,
  `stts` varchar(20) NOT NULL,
  `lvl` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_spr_admn`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `tbl_spr_admn`
--

INSERT INTO `tbl_spr_admn` (`kode_spr_admn`, `username_admn`, `pass_admn`, `nama_admn`, `stts`, `lvl`, `email`, `alamat`, `tgl_lahir`) VALUES
(1, 'zuhair', 'bf5bd1eb9ec20084c050fe41cd341d39', 'moh.zuhair abrar', '1', 'spradmn', 'abrarzuhair1@gmail.com', 'jl. semeru 6b, jember, jawatimur', '6 March 1994');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimonial`
--

CREATE TABLE IF NOT EXISTS `tbl_testimonial` (
  `id_testi` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `status` int(1) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  PRIMARY KEY (`id_testi`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id_testi`, `nama`, `email`, `pesan`, `status`, `waktu`) VALUES
(22, 'Faiz', 'nurfaizatulj@gmail.com', 'TETAP SEMANGAT\\r\\n\\n\\r\\n\\nKALO SEMINAR SAMA SEMHAS JANGAN MABUK PANGGUNG', 1, '10-04-2017 | 06:03:pm');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_detail`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_detail` (
  `kode_transaksi_detail` int(50) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` bigint(150) NOT NULL,
  `kode_produk` varchar(50) NOT NULL,
  `nama_produk` varchar(150) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  PRIMARY KEY (`kode_transaksi_detail`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `tbl_transaksi_detail`
--

INSERT INTO `tbl_transaksi_detail` (`kode_transaksi_detail`, `kode_transaksi`, `kode_produk`, `nama_produk`, `harga`, `jumlah`) VALUES
(14, 20170410003, 'SDL100086', 'TP-LINK 3G Wireless-N Router TL-MR3420', '340000', 1),
(13, 20170410003, 'SDL100046', 'Apple Macbook Pro Touch Bar MLVP 2', '27500000', 1),
(12, 20170410002, 'SDL100053', 'TOSHIBA Portege Z930-2022U', '19648000', 5),
(11, 20170410001, 'SDL100053', 'TOSHIBA Portege Z930-2022U', '19648000', 4),
(10, 20170407001, 'SDL100048', 'Apple New Macbook Pro MNQF2 2016', '31200000', 2),
(15, 20170410003, 'SDL100076', 'HP Designjet T1500 CR356A', '67700000', 1),
(16, 20170410004, 'SDL100058', 'Dell E Series E1913S 19', '21615000', 5),
(17, 20170410004, 'SDL100012', 'ASUS Desktop D510MT', '8400000', 5),
(18, 20170410005, 'SDL100053', 'TOSHIBA Portege Z930-2022U', '19648000', 1),
(19, 20170410005, 'SDL100015', 'ASUSPRO BM1AE-I74790343F', '13900000', 1),
(20, 20170410006, 'SDL100058', 'Dell E Series E1913S 19', '21615000', 1),
(21, 20170410006, 'SDL100087', 'TP-LINK Outdoor Wireless Access Point WA7210N', '690000', 5),
(22, 20170410006, 'SDL100012', 'ASUS Desktop D510MT', '8400000', 5),
(23, 20170410007, 'SDL100012', 'ASUS Desktop D510MT', '8400000', 5),
(24, 20170410007, 'SDL100086', 'TP-LINK 3G Wireless-N Router TL-MR3420', '340000', 2),
(25, 20170410007, 'SDL100015', 'ASUSPRO BM1AE-I74790343F', '13900000', 5),
(26, 20170410008, 'SDL100044', 'LENOVO ThinkPad Yoga FIF Ultrabook', '17685000', 1),
(27, 20170410008, 'SDL100074', 'HP Color LaserJet Enterprise CM4540fskm MFP CC421A', '89075000', 1),
(28, 20170410008, 'SDL100086', 'TP-LINK 3G Wireless-N Router TL-MR3420', '340000', 1),
(29, 20170410009, 'SDL100085', 'TOTOLINK Wireless N Router-N100RE', '250000', 2),
(30, 20170410009, 'SDL100076', 'HP Designjet T1500 CR356A', '67700000', 2),
(31, 20170410009, 'SDL100019', 'ACER Aspire E5-471 NX.MN6SN.002 - White', '5550000', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi_header`
--

CREATE TABLE IF NOT EXISTS `tbl_transaksi_header` (
  `kode_transaksi` bigint(150) NOT NULL,
  `kode_user` int(20) NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `email_penerima` varchar(150) NOT NULL,
  `alamat_penerima` text NOT NULL,
  `propinsi` varchar(150) NOT NULL,
  `kota` varchar(150) NOT NULL,
  `kodepos` varchar(100) NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `metode` varchar(50) NOT NULL,
  `paket_kirim` varchar(10) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  PRIMARY KEY (`kode_transaksi`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_transaksi_header`
--

INSERT INTO `tbl_transaksi_header` (`kode_transaksi`, `kode_user`, `nama_penerima`, `email_penerima`, `alamat_penerima`, `propinsi`, `kota`, `kodepos`, `telpon`, `metode`, `paket_kirim`, `bank`, `pesan`) VALUES
(20170410009, 12, 'nur faizatul jannah', 'nurfaizatulj@gmail.com', 'jln.jawa 6 no 7', 'jawatimur', 'jember', '628121', '081123643895', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410008, 12, 'nur faizatul jannah', 'nurfaizatulj@gmail.com', 'jln.jawa 6 no 7', 'jawatimur', 'jember', '628121', '081123643895', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410007, 12, 'nur faizatul jannah', 'nurfaizatulj@gmail.com', 'jln.jawa 6 no 7', 'jawatimur', 'jember', '628121', '081123643895', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410006, 11, 'zuhair abrar', 'abrarzuhair1@gmail.com', 'jalan. semeru 6B puncak', 'jawatimur', 'jember', '628121', '082257911500', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410005, 11, 'zuhair abrar', 'abrarzuhair1@gmail.com', 'jalan. semeru 6B puncak', 'jawatimur', 'jember', '628121', '082257911500', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410004, 14, 'moh.zuhair abrar', 'moh.zuhairabrar0603@gmail.com', 'jln.Semeru 6B sumbersari', 'Jawa Timur', 'jember', '628121', '081123643895', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410003, 14, 'moh.zuhair abrar', 'moh.zuhairabrar0603@gmail.com', 'jln.Semeru 6B sumbersari', 'Jawa Timur', 'jember', '628121', '081123643895', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410002, 14, 'moh.zuhair abrar', 'moh.zuhairabrar0603@gmail.com', 'jln.Semeru 6B sumbersari', 'Jawa Timur', 'jember', '628121', '081123643895', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170410001, 11, 'zuhair abrar', 'abrarzuhair1@gmail.com', 'jalan. semeru 6B puncak', 'jawatimur', 'jember', '628121', '082257911500', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-'),
(20170407001, 11, 'zuhair abrar', 'abrarzuhair1@gmail.com', 'jalan. semeru 6B puncak', 'jawatimur', 'jember', '628121', '082257911500', 'Setoran Tunai, Transfer Bank', 'TIKI', 'Bank Central Asia - No. Rek 1800658299', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `kode_user` int(100) NOT NULL AUTO_INCREMENT,
  `username_user` varchar(100) NOT NULL,
  `pass_user` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(50) NOT NULL,
  `propinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `kode_pos` varchar(30) NOT NULL,
  `tgl_lahir` varchar(50) NOT NULL,
  `stts` int(1) NOT NULL,
  `kode_aktivasi` varchar(200) NOT NULL,
  `tgl_transaksi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_user`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`kode_user`, `username_user`, `pass_user`, `nama`, `email`, `alamat`, `telpon`, `propinsi`, `kota`, `kode_pos`, `tgl_lahir`, `stts`, `kode_aktivasi`, `tgl_transaksi`) VALUES
(12, 'FAIZ', 'd2029b4f4fcfe835471e4476c73650c2', 'nur faizatul jannah', 'nurfaizatulj@gmail.com', 'jln.jawa 6 no 7', '081123643895', 'jawatimur', 'jember', '628121', '18-10-1996', 1, 'd2029b4f4fcfe835471e4476c73650c2', ''),
(11, 'zuhair', 'd2029b4f4fcfe835471e4476c73650c2', 'zuhair abrar', 'abrarzuhair1@gmail.com', 'jalan. semeru 6B puncak', '082257911500', 'jawatimur', 'jember', '628121', '6-3-1994', 1, 'aktif', ''),
(10, 'vanny', '9e93941e18771ccb147c4262b762e2f7', 'Vanny Hadiwijaya', 'vannyhadiwijaya@gmail.com', 'Jember kota', '08976123487', 'Jawa Timur', 'Jember', '68133', '8-9-1993', 1, '9e93941e18771ccb147c4262b762e2f7', ''),
(14, 'abrarzuhair', '39c8bcbfd702968ca0fbce9fbfed4a35', 'moh.zuhair abrar', 'moh.zuhairabrar0603@gmail.com', 'jln.Semeru 6B sumbersari', '081123643895', 'Jawa Timur', 'jember', '628121', '6-3-1994', 1, '39c8bcbfd702968ca0fbce9fbfed4a35', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
