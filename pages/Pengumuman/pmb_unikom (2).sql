-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Agu 2024 pada 00.38
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmb_unikom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pmb`
--

CREATE TABLE `pmb` (
  `No_Pendaftaran` int(15) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Jalur_Pendaftaran` enum('USM (Ujian Saring Masuk)','Rapor','Prestasi','Alumni','Anak Guru') DEFAULT NULL,
  `Program_Studi` enum('S1 - Teknik Informatika','S1 - Sistem Informasi','S1 - Ilmu Komputer','S1 - Teknik Sipil','S1 - Teknik Industri','S1 - Arsitektur','S1 - Perencanaan Wilayah Dan Kota','S1 - Akuntansi','S1 -  Manajemen','S1 - Ilmu Hukum','S1 - Ilmu Pemerintahan','S1 - Hubungan Internasioanal','S1 - Ilmu Komunikasi','S1 - Sastra Inggris','S1 - Desain Komunikasi Visual','S1 - Desain','S1 - Desain Interior') DEFAULT NULL,
  `Fakultas` enum('Fakultas Teknik dan Ilmu Komputer (FTIK)','Fakultas Desain','Fakultas Sastra','Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)','Fakultas Hukum (FH)','Fakultas Ekonomi dan Bisnis (FEB)') DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `No_Hp` char(15) DEFAULT NULL,
  `Jenis_Kelamin` enum('Laki-laki','Perempuan','','') DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `Status` enum('LULUS','TIDAK LULUS','','') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pmb`
--

INSERT INTO `pmb` (`No_Pendaftaran`, `Nama`, `Jalur_Pendaftaran`, `Program_Studi`, `Fakultas`, `Email`, `No_Hp`, `Jenis_Kelamin`, `Alamat`, `Status`) VALUES
(201117, 'a', 'USM (Ujian Saring Masuk)', '', '', 'samuelsamy202@gmail.com', '082294019223', 'Laki-laki', 'Bintang Alam Blok Q4 No. 11-12 RT 047 RW 011', 'LULUS'),
(212121, 'Samuel Beryl Enrico Ritonga', 'Alumni', '', '', 'samuelsamy202@gmail.com', '082260168614', 'Perempuan', 'Bintang Alam Blok Q4 No. 11-12 RT 047 RW 011', 'LULUS'),
(20106311, 'Gus Samsudin', 'USM (Ujian Saring Masuk)', '', '', 'gus@gmail.com', '082294019223', 'Laki-laki', 'Bintang Alam Blok Q4 No. 11-12 RT 047 RW 011', 'TIDAK LULUS'),
(20239999, 'Naswaniandeulis', '', '', '', 'Naswaniandeulis@gmail.com', '0898765453568', '', 'kopo', 'LULUS'),
(202311003, 'Dimas Aryo Pangestu', '', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'dimasaryo@gmail.com', '081234567910', '', 'Jl. Kenari No. 21, Jakarta', 'LULUS'),
(202311015, 'Mohammad Taufik', 'Rapor', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'mohammadtaufik@gmail.com', '081234567911', '', 'Jl. Beringin No. 15, Bandung', 'LULUS'),
(202311018, 'Nanda Anugrah Bahara Fauzan', 'Anak Guru', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'NandaAnugrahBaharaFauzan@gmail.com', '083467458934', 'Perempuan', 'Jl. Mawar No. 67, Kelurahan Denpasar, Denpasar, Bali', 'LULUS'),
(202311019, 'Nawaf Ridwan Hidayat', 'Prestasi', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'nawafridwanhida@gmail.com', '081234567912', '', 'Jl. Cempaka No. 35, Surabaya', 'LULUS'),
(202311020, 'Shella Shelviana', '', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'shellashelviana@gmail.com', '081234567900', 'Perempuan', 'Jl. Merdeka No. 20, Jakarta', 'LULUS'),
(202311024, 'Putri Dwi Rahayu', 'Alumni', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'putridwirahayu@gmail.com', '081234567913', 'Perempuan', 'Jl. Melati No. 12, Yogyakarta', 'LULUS'),
(202311028, 'Nazwa Rahmalia Putri', 'Anak Guru', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'nazwarahmaliapu@gmail.com', '081234567914', 'Perempuan', 'Jl. Kamboja No. 40, Semarang', 'LULUS'),
(202311029, 'Muhammad Ikhsan', '', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'muhammadikhsan@gmail.com', '081234567915', '', 'Jl. Mawar No. 5, Medan', 'TIDAK LULUS'),
(202311035, 'Epa Nurasiah', 'Rapor', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'epanurasiah@gmail.com', '081234567916', 'Perempuan', 'Jl. Flamboyan No. 9, Malang', 'TIDAK LULUS'),
(202311052, 'Abdul Fatah', 'Prestasi', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'abdulfatah@gmail.com', '089797676732', '', 'Jl. Damar No. 441, Kelurahan Magelang, Magelang, Jawa Tengah', 'LULUS'),
(202311054, 'Ade Rizki Fauji', 'Prestasi', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'aderizkifauji@gmail.com', '082567325672', '', 'Jl. Garuda No. 591, Kecamatan Sidoarjo, Sidoarjo, Jawa Timur', 'TIDAK LULUS'),
(202311057, 'Dzalika Bunga Azzahra', 'Prestasi', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'dzalikabungaazz@gmail.com', '081234567917', 'Perempuan', 'Jl. Anggrek No. 20, Makassar', 'TIDAK LULUS'),
(202311060, 'Resa Sri Rahmawati', 'Alumni', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'resasrirahmawati@gmail.com', '081234567918', 'Perempuan', 'Jl. Bougenville No. 32, Denpasar', 'TIDAK LULUS'),
(202311066, 'Efwan Zainul Ridwan', '', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'EfwanZainulRidwan@gmail.com', '083445657654', '', 'Jl. Dahlia No. 78, Kecamatan Banjarmasin, Banjarmasin, Kalimantan Selatan', 'TIDAK LULUS'),
(202311072, 'Putri Nurbayiti', 'Alumni', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'putrinurbayiti@gmail.com', '084567342576', 'Perempuan', 'Jl. Kutilang No. 601, Kelurahan Mojosari, Mojosari, Jawa Timur', 'TIDAK LULUS'),
(202311094, 'Riandi Kusumah', 'Rapor', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'RiandiKusumah@gmail.com', '086735234512', '', 'Jl. Bougenville No. 89, Kelurahan Makassar, Makassar, Sulawesi Selatan', 'TIDAK LULUS'),
(202311095, 'Helmy Alpian Darusalam', 'Anak Guru', 'S1 - Arsitektur', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'helmyalpian@gmail.com', '081234567919', '', 'Jl. Dahlia No. 25, Palembang', 'TIDAK LULUS'),
(202311121, 'Indah Nurmala', 'Alumni', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'indahnurmala@gmail.com', '081234567920', 'Perempuan', 'Jl. Dr. Wahidin No. 19, Pekanbaru', 'LULUS'),
(202311123, 'Dezan Surya Pitra', 'Rapor', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'dezansuryapitra@gmail.com', '081234567921', '', 'Jl. K.H. Ahmad Dahlan No. 5, Malang', 'LULUS'),
(202311137, 'Rahma Aulia', 'Prestasi', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'RahmaAulia@gmail.com', '086745342312', 'Perempuan', 'Jl. Teratai No. 90, Kecamatan Medan, Medan, Sumatera Utara', 'TIDAK LULUS'),
(202311138, 'Alfin Aryansyah', 'Rapor', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'alfinaryansyah@gmail.com', '081234567901', '', 'Jl. Sudirman No. 15, Bandung', 'LULUS'),
(202311176, 'Ajat Suwanda Kertapermana', 'Prestasi', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ajatsuwanda@gmail.com', '081234567922', '', 'Jl. Raya Bogor No. 21, Depok', 'LULUS'),
(202311189, 'Nina Khoirunnisa', 'Alumni', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'NinaKhoirunnisa@gmail.com', '083425261717', 'Perempuan', 'Jl. Kamboja No. 101, Kelurahan Padang, Padang, Sumatera Barat', 'TIDAK LULUS'),
(202311203, 'Vina Nurlita', 'Alumni', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'vinanurlita@gmail.com', '081234567923', 'Perempuan', 'Jl. Sultan Hasanudin No. 10, Banjarmasin', 'LULUS'),
(202311207, 'Rahma Haifani', 'Anak Guru', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'rahmahaifani@gmail.com', '081234567924', 'Perempuan', 'Jl. Pemuda No. 55, Surabaya', 'LULUS'),
(202311208, 'Tura Imara', 'Prestasi', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'turaimara@gmail.com', '081234567925', 'Perempuan', 'Jl. Jenderal Sudirman No. 8, Palu', 'TIDAK LULUS'),
(202311211, 'Candra Maulana', 'Anak Guru', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'CandraMaulana@gmail.com', '081223453627', '', 'Jl. Tulip No. 111, Kecamatan Pontianak, Pontianak, Kalimantan Barat', 'TIDAK LULUS'),
(202311264, 'Rizky Fujiandini', 'Prestasi', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'rizkyfujiandini@gmail.com', '081234567902', 'Perempuan', 'Jl. Ahmad Yani No. 28, Surabaya', 'LULUS'),
(202311267, 'Mutiara Emas Elfadillah', 'Rapor', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'mutiaraemas@gmail.com', '081234567926', 'Perempuan', 'Jl. Slamet Riyadi No. 14, Solo', 'TIDAK LULUS'),
(202311268, 'Agyara Putri Nayissila', 'Prestasi', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'agyaranayissila@gmail.com', '081234567927', 'Perempuan', 'Jl. Bunga Rampai No. 18, Medan', 'TIDAK LULUS'),
(202311269, 'Dava Atha Nurrachman', 'Anak Guru', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'davaathanurrachman@gmail.com', '081563728354', '', 'Jl. Merak No. 611, Kecamatan Ngawi, Ngawi, Jawa Timur\r\n\r\n', 'TIDAK LULUS'),
(202311270, 'Naufal Maulana Fadhillah', 'Alumni', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'NaufalMaulanaFadhillah@gmail.com', '081345678934', '', 'Jl. Melati No. 56, Kecamatan Gubeng, Surabaya, Jawa Timur', 'LULUS'),
(202311272, 'Ahmad Fauzan Nur', 'Prestasi', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ahmadfauzannur@gmail.com', '081234567890', '', 'Jl. Merdeka No. 10, Jakarta', 'LULUS'),
(202311282, 'Nunu Yulyana', 'Alumni', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'nunuyulyana@gmail.com', '081234567928', 'Perempuan', 'Jl. Ahmad Dahlan No. 12, Bandar Lampung', 'TIDAK LULUS'),
(202311285, 'Ade Maulani', 'Anak Guru', 'S1 - Perencanaan Wilayah Dan Kota', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ademaulani@gmail.com', '081234567929', 'Perempuan', 'Jl. MT Haryono No. 25, Balikpapan', 'TIDAK LULUS'),
(202311291, 'Febia Ardha Nur Fadhila', '', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'febia.ardha@gmail.com', '081234567930', 'Perempuan', 'Jl. Kenanga No. 1, Jakarta', 'LULUS'),
(202311311, 'Dini Putri Dinanti', 'Rapor', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'dini.putri@gmail.com', '081234567931', 'Perempuan', 'Jl. Cendana No. 2, Bandung', 'LULUS'),
(202311313, 'Nabila Nur Agustina', 'Prestasi', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'nabila.agustina@gmail.com', '081234567932', 'Perempuan', 'Jl. Jati No. 3, Surabaya', 'LULUS'),
(202311315, 'Hera Yulistiani', 'Alumni', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'hera.yulistiani@gmail.com', '081234567933', 'Perempuan', 'Jl. Cemara No. 4, Yogyakarta', 'LULUS'),
(202311321, 'Tsulistiyani Nur Islami', 'Anak Guru', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'tsulistiyaninuris@gmail.com', '081234567891', 'Perempuan', 'Jl. Sudirman No. 5, Bandung', 'LULUS'),
(202311327, 'Surya Wardana', 'Anak Guru', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'surya.wardana@gmail.com', '081234567934', '', 'Jl. Akasia No. 5, Semarang', 'LULUS'),
(202311329, 'Adi Maulana Nugraha', 'Alumni', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'adimaulananu@gmail.com', '081234567903', '', 'Jl. Diponegoro No. 11, Yogyakarta', 'LULUS'),
(202311332, 'Muhammad Tryan Maulana', '', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'tryanmaulana@gmail.com', '089612567834', '', 'Jl. Mangga No. 121, Kelurahan Balikpapan, Balikpapan, Kalimantan Timur', 'LULUS'),
(202311333, 'Mochamad Yuda Fahrizki', 'Rapor', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'yudafahrizki@gmail.com', '082136475890', '', 'Jl. Sawo No. 131, Kecamatan Manado, Manado, Sulawesi Utara', 'LULUS'),
(202311335, 'Wi’aam Naofal Baro', '', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'wiaam.barro@gmail.com', '081234567935', '', 'Jl. Dahlia No. 6, Medan', 'TIDAK LULUS'),
(202311336, 'Sherin Azahra Putri', 'Rapor', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'sherin.azahra@gmail.com', '081234567936', 'Perempuan', 'Jl. Anggrek No. 7, Malang', 'TIDAK LULUS'),
(202311345, 'Muhammad Rehan', 'Alumni', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'muhammadrehan@gmail.com', '086151517283', '', 'Jl. Bambu No. 451, Kecamatan Pasuruan, Pasuruan, Jawa Timur', 'LULUS'),
(202311348, 'Ferdy Mardiana', 'Prestasi', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'ferdy.mardiana@gmail.com', '081234567937', '', 'Jl. Melati No. 8, Makassar', 'TIDAK LULUS'),
(202311354, 'Audria Hayatun Nufus', 'Alumni', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'audria.nufus@gmail.com', '081234567938', 'Perempuan', 'Jl. Seruni No. 9, Denpasar', 'TIDAK LULUS'),
(202311374, 'Nazwa Aulia', 'Anak Guru', 'S1 - Ilmu Hukum', 'Fakultas Hukum (FH)', 'nazwa.aulia@gmail.com', '081234567939', 'Perempuan', 'Jl. Flamboyan No. 10, Palembang', 'TIDAK LULUS'),
(202311377, 'Muhammad Zulfikri Mudzakri', '', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'zulfikri.mudzakri@gmail.com', '081234567940', '', 'Jl. Raya Bogor No. 21, Depok', 'LULUS'),
(202311378, 'Fitri Amelia', 'Rapor', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'fitri.amelia@gmail.com', '081234567941', 'Perempuan', 'Jl. Sultan Hasanudin No. 10, Banjarmasin', 'LULUS'),
(202311379, 'Ais Siti Asrulhusnaniyah', 'Prestasi', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'ais.siti@gmail.com', '081234567942', 'Perempuan', 'Jl. Pemuda No. 55, Surabaya', 'LULUS'),
(202311424, 'Davif Putra Sanjaya', 'Alumni', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'davif.sanjaya@gmail.com', '081234567943', '', 'Jl. Jenderal Sudirman No. 8, Palu', 'LULUS'),
(202311434, 'Dimas Suci', 'Anak Guru', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'dimas.suci@gmail.com', '081234567944', '', 'Jl. Slamet Riyadi No. 14, Solo', 'LULUS'),
(202311444, 'Vaskal Maulana', 'Prestasi', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'vaskalmaulana@gmail.com', '082237589238', '', 'Jl. Durian No. 141, Kelurahan Palembang, Palembang, Sumatera Selatan\r\n\r\n', 'LULUS'),
(202311445, 'Indah Fitriyasantika', '', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'indah.santika@gmail.com', '081234567945', 'Perempuan', 'Jl. Bunga Rampai No. 18, Medan', 'TIDAK LULUS'),
(202311468, 'Lindawati', '', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'lindawati@gmail.com', '081434324234', 'Perempuan', 'Jl. Kenanga No. 12, Kelurahan Kebayoran, Jakarta Selatan, DKI Jakarta', 'LULUS'),
(202311516, 'Muzakki Ramadhan', 'Alumni', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'muzakkiramadhan@gmail.com', '082178462345', '', 'Jl. Jambu No. 151, Kecamatan Yogyakarta, Yogyakarta, DI Yogyakarta', 'LULUS'),
(202311522, 'Asep Muhammad Yusuf Firdausi', 'Anak Guru', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'asepmuhammad@gmail.com', '081345365287', '', 'Jl. Bunga No. 461, Kelurahan Probolinggo, Probolinggo, Jawa Timur', 'LULUS'),
(202311533, 'Alya Mukbhita Zaidan Muyassarah', 'Rapor', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'alya.muyassarah@gmail.com', '081234567946', 'Perempuan', 'Jl. Ahmad Dahlan No. 12, Bandar Lampung', 'TIDAK LULUS'),
(202311540, 'Dhevy Feronika Nur', '', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'dhevyferonikanur@gmail.com', '089793648291', 'Perempuan', 'Jl. Tanjung No. 571, Kecamatan Pamekasan, Pamekasan, Jawa Timur', 'TIDAK LULUS'),
(202311544, 'Silma Mawardah Hayuna', 'Prestasi', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'silma.hayuna@gmail.com', '081234567947', 'Perempuan', 'Jl. MT Haryono No. 25, Balikpapan', 'TIDAK LULUS'),
(202311564, 'Diky Maulana Akbar', 'Alumni', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'diky.akbar@gmail.com', '081234567948', '', 'Jl. Dr. Wahidin No. 19, Pekanbaru', 'TIDAK LULUS'),
(202311570, 'Muhammad Galih Dafa Rizkia', 'Anak Guru', 'S1 - Ilmu Pemerintahan', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'galih.rizkia@gmail.com', '081234567949', '', 'Jl. K.H. Ahmad Dahlan No. 5, Malang', 'TIDAK LULUS'),
(202311579, 'Fika Khoerunnisa Kurnia', 'Anak Guru', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'fikakhoerunnisakurnia@gmail.com', '082138497683', '', 'Jl. Rambutan No. 161, Kelurahan Malang, Malang, Jawa Timur', 'LULUS'),
(202311687, 'Annisa Nurkirani', '', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'annisa.nurkirani@gmail.com', '081234567950', 'Perempuan', 'Jl. Kebon Jeruk No. 14, Jakarta', 'LULUS'),
(202311690, 'Arya Dwi Prawira', 'Rapor', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'arya.prawira@gmail.com', '081234567951', '', 'Jl. Rajawali No. 7, Bandung', 'LULUS'),
(202311696, 'Nala Salamah', '', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'nalasalamah@gmail.com', '082317463278', 'Perempuan', 'Jl. Jeruk No. 171, Kecamatan Semarang, Semarang, Jawa Tengah', 'TIDAK LULUS'),
(202311701, 'Tria Agustin', 'Prestasi', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'tria.agustin@gmail.com', '081234567952', 'Perempuan', 'Jl. Sisingamangaraja No. 8, Medan', 'LULUS'),
(202311704, 'Na’afi Shiva Puteri', 'Alumni', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'naafi.shiva@gmail.com', '081234567953', 'Perempuan', 'Jl. Trunojoyo No. 16, Malang', 'LULUS'),
(202311709, 'Syahrul Maulana', 'Rapor', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'syahrulmaulana@gmail.com', '089635468276', '', 'Jl. Nangka No. 181, Kelurahan Batam, Batam, Kepulauan Riau', 'TIDAK LULUS'),
(202311714, 'Novi Septianti', 'Anak Guru', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'novi.septianti@gmail.com', '081234567954', 'Perempuan', 'Jl. Teuku Umar No. 23, Denpasar', 'LULUS'),
(202311734, 'Siti Nur Azizah', '', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'siti.azizah@gmail.com', '081234567955', 'Perempuan', 'Jl. Letjen Suprapto No. 5, Palembang', 'TIDAK LULUS'),
(202311735, 'Serly Dinda Marsela', 'Rapor', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'serly.marsela@gmail.com', '081234567956', 'Perempuan', 'Jl. Prof. Dr. Soepomo No. 9, Yogyakarta', 'TIDAK LULUS'),
(202311738, 'Zea Septiani', 'Prestasi', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'zeaseptiani@gmail.com', '082316453879', 'Perempuan', 'Jl. Kedondong No. 191, Kecamatan Bandar Lampung, Bandar Lampung, Lampung', 'TIDAK LULUS'),
(202311739, 'Dwi Mita Aryani', 'Alumni', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'dwimitaaryani@gmail.com', '082123368796', 'Perempuan', 'Jl. Pepaya No. 201, Kelurahan Jambi, Jambi, Jambi', 'TIDAK LULUS'),
(202311740, 'Rahma Nuraeni', 'Anak Guru', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'rahmanuraeni@gmail.com', '081234567904', 'Perempuan', 'Jl. Pahlawan No. 22, Semarang', 'LULUS'),
(202311744, 'Lingga Kala Muttamar', 'Prestasi', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'lingga.muttamar@gmail.com', '081234567957', '', 'Jl. Pandawa No. 17, Semarang', 'TIDAK LULUS'),
(202311746, 'Boby Al-Azhar Pamuji', '', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'bobypamuji@gmail.com', '082783954932', '', 'Jl. Lili No. 471, Kecamatan Blitar, Blitar, Jawa Timur', 'TIDAK LULUS'),
(202311748, 'Gita Octapiani', 'Rapor', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'gitaoctapiani@gmail.com', '081234567892', 'Perempuan', 'Jl. Ahmad Yani No. 23, Surabaya', 'LULUS'),
(202311750, 'Khoerunisa', 'Alumni', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'khoerunisa@gmail.com', '081234567958', 'Perempuan', 'Jl. Adi Sucipto No. 30, Makassar', 'TIDAK LULUS'),
(202311751, 'Latifah Maulani Alamsah', 'Anak Guru', 'S1 - Hubungan Internasioanal', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'latifah.alamsah@gmail.com', '081234567959', 'Perempuan', 'Jl. Diponegoro No. 15, Surakarta', 'TIDAK LULUS'),
(202311752, 'Siti Nurlaela', '', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'siti.nurlaela@gmail.com', '081234567960', 'Perempuan', 'Jl. Diponegoro No. 17, Surakarta', 'LULUS'),
(202311753, 'Rahma Ophelia Heryanti', 'Rapor', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'rahma.ophelia@gmail.com', '081234567961', 'Perempuan', 'Jl. Ahmad Yani No. 10, Bandung', 'LULUS'),
(202311756, 'Syifa Awalia Putri', 'Prestasi', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'syifa.putri@gmail.com', '081234567962', 'Perempuan', 'Jl. Gatot Subroto No. 5, Jakarta', 'LULUS'),
(202311757, 'Setiatin', 'Anak Guru', 'S1 -  Manajemen', 'Fakultas Ekonomi dan Bisnis (FEB)', 'setiatin@gmail.com', '089673546723', 'Perempuan', 'Jl. Pisang No. 211, Kecamatan Kendari, Kendari, Sulawesi Tenggara', 'TIDAK LULUS'),
(202311759, 'Mika Siti Maemunah', 'Alumni', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'mika.maemunah@gmail.com', '081234567963', 'Perempuan', 'Jl. Pahlawan No. 20, Semarang', 'LULUS'),
(202311795, 'Aulya Hudzaifah', 'Rapor', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'aulyahudzaifah@gmail.com', '084357463224', 'Perempuan', 'Jl. Kaktus No. 481, Kelurahan Kediri, Kediri, Jawa Timur', 'TIDAK LULUS'),
(202311797, 'Regyna Oktasari', 'Anak Guru', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'regyna.oktasari@gmail.com', '081234567964', 'Perempuan', 'Jl. Merdeka No. 14, Medan', 'LULUS'),
(202311798, 'Sintya Oktafiani', '', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'sintyaoktafiani@gmail.com', '081234567905', 'Perempuan', 'Jl. Gajah Mada No. 14, Medan', 'TIDAK LULUS'),
(202311808, 'Aprilla Ilmiani', '', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'aprilla.ilmiani@gmail.com', '081234567965', 'Perempuan', 'Jl. Sudirman No. 11, Yogyakarta', 'TIDAK LULUS'),
(202311817, 'Rizky Vadillah', 'Rapor', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'rizky.vadillah@gmail.com', '081234567966', '', 'Jl. Jenderal Soedirman No. 25, Bandung', 'TIDAK LULUS'),
(202311818, 'Gia Fajar Ramadhan', 'Prestasi', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'gia.ramadhan@gmail.com', '081234567967', '', 'Jl. Rajawali No. 5, Surabaya', 'TIDAK LULUS'),
(202311819, 'Amelya Sari Salsabila', '', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'amelyasari@gmail.com', '088765491473', 'Perempuan', 'Jl. Kelapa No. 221, Kelurahan Mataram, Mataram, Nusa Tenggara Barat', 'LULUS'),
(202311824, 'Rinta Pebrianti', 'Rapor', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'rintapebrianti@gmail.com', '085673541261', 'Perempuan', 'Jl. Salak No. 231, Kecamatan Banda Aceh, Banda Aceh, Aceh', 'LULUS'),
(202311828, 'Wildan Fauzan', 'Alumni', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'wildan.fauzan@gmail.com', '081234567968', '', 'Jl. Diponegoro No. 9, Makassar', 'TIDAK LULUS'),
(202311842, 'Nurul Alenisa', 'Anak Guru', 'S1 - Ilmu Komunikasi', 'Fakultas Ilmu Sosial dan Ilmu Politik (FISIP)', 'nurul.alenisa@gmail.com', '081234567969', 'Perempuan', 'Jl. Veteran No. 16, Malang', 'TIDAK LULUS'),
(202311844, 'Raihan Fadhillah Miftahuddin', '', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'raihan.fadhillah@gmail.com', '081234567970', '', 'Jl. Diponegoro No. 17, Surabaya', 'LULUS'),
(202311847, 'Laras Sulastri', 'Rapor', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'laras.sulastri@gmail.com', '081234567971', 'Perempuan', 'Jl. Ahmad Yani No. 10, Bandung', 'LULUS'),
(202311849, 'Arya Cahyadi', 'Prestasi', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'aryacahyadi@gmail.com', '088249872931', '', 'Jl. Lavender No. 491, Kecamatan Madiun, Madiun, Jawa Timur', 'TIDAK LULUS'),
(202311850, 'Vera Aprilia Nur Cahya', 'Prestasi', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'vera.aprilia@gmail.com', '081234567972', 'Perempuan', 'Jl. Gatot Subroto No. 5, Jakarta', 'LULUS'),
(202311853, 'Gita Dwi Astuti', '', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'gitadwiastuti@gmail.com', '081234567893', 'Perempuan', 'Jl. Diponegoro No. 17, Yogyakarta', 'TIDAK LULUS'),
(202311856, 'Zahra Shafira Yuniar', 'Rapor', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'zahrashafirayuniar@gmail.com', '081234567894', 'Perempuan', 'Jl. Pahlawan No. 8, Semarang', 'TIDAK LULUS'),
(202311860, 'Aditia Syahrul Putra', 'Alumni', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'aditia.syahrul@gmail.com', '081234567973', '', 'Jl. Pahlawan No. 20, Semarang', 'LULUS'),
(202311861, 'Alvin Setiawan', 'Anak Guru', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'alvin.setiawan@gmail.com', '081234567974', '', 'Jl. Merdeka No. 14, Medan', 'LULUS'),
(202311863, 'Mochamad Harlan Fadlhurahman', '', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'harlan.fadlhurahman@gmail.com', '081234567975', '', 'Jl. Sudirman No. 11, Yogyakarta', 'TIDAK LULUS'),
(202311865, 'Metha Fransisca', 'Rapor', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'metha.fransisca@gmail.com', '081234567976', 'Perempuan', 'Jl. Jenderal Soedirman No. 25, Bandung', 'TIDAK LULUS'),
(202311866, 'Irfan Putra', 'Prestasi', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'irfan.putra@gmail.com', '081234567977', '', 'Jl. Rajawali No. 5, Surabaya', 'TIDAK LULUS'),
(202311867, 'Dika Juan Trisna', 'Prestasi', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'dikajuantrisna@gmail.com', '087164538276', '', 'Jl. Manggis No. 241, Kelurahan Palu, Palu, Sulawesi Tengah', 'LULUS'),
(202311873, 'Hilmi Hilyatuzzakiya', 'Alumni', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'hilmi.hilyatuzzakiya@gmail.com', '081234567978', 'Perempuan', 'Jl. Diponegoro No. 9, Makassar', 'LULUS'),
(202311875, 'Piray Aditiya', 'Alumni', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'pirayaditiya@gmail.com', '089712345354', '', 'Jl. Sirsak No. 251, Kecamatan Jayapura, Jayapura, Papua', 'LULUS'),
(202311878, 'Ardi Sumawijaya', 'Prestasi', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ardisumawijaya@gmail.com', '081234567895', '', 'Jl. Gajah Mada No. 12, Medan', 'TIDAK LULUS'),
(202311880, 'Ferry Miftach Fauzi', 'Anak Guru', 'S1 - Sastra Inggris', 'Fakultas Sastra', 'ferry.miftach@gmail.com', '081234567979', '', 'Jl. Veteran No. 16, Malang', 'TIDAK LULUS'),
(202311883, 'Fitri Nur Padilah', '', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'fitrinurpadilah@gmail.com', '081234567890', 'Perempuan', 'Jl. Merdeka No. 1, Jakarta', 'LULUS'),
(202311886, 'Anggun Nurraeni', 'Rapor', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'anggun.nurraeni@gmail.com', '081234567891', 'Perempuan', 'Jl. Sudirman No. 2, Bandung', 'LULUS'),
(202311892, 'Fadiya Nurlaeni', 'Prestasi', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'fadiya.nurlaeni@gmail.com', '081234567892', 'Perempuan', 'Jl. Diponegoro No. 3, Surabaya', 'LULUS'),
(202311896, 'Maurin Hartiyanti', 'Anak Guru', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'maurinhartiyanti@gmail.com', '081342526374', 'Perempuan', 'Jl. Duku No. 261, Kelurahan Ambon, Ambon, Maluku', 'LULUS'),
(202311898, 'Yusuf Hamdani', 'Alumni', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'yusuf.hamdani@gmail.com', '081234567893', '', 'Jl. Ahmad Yani No. 4, Yogyakarta', 'LULUS'),
(202311899, 'Dias Aria Purnama', 'Rapor', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'diasariapurnama@gmail.com', '081234567906', 'Perempuan', 'Jl. Imam Bonjol No. 7, Malang', 'TIDAK LULUS'),
(202311906, 'Putri Susana', '', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'putrisusana@gmail.com', '083564763141', 'Perempuan', 'Jl. Semangka No. 271, Kecamatan Sorong, Sorong, Papua Barat', 'TIDAK LULUS'),
(202311908, 'Fatiya Nurul Khaura', 'Anak Guru', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'fatiya.khaura@gmail.com', '081234567894', 'Perempuan', 'Jl. Pahlawan No. 5, Semarang', 'LULUS'),
(202311909, 'Amelia Dwi Susanti', '', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'amelia.susanti@gmail.com', '081234567895', 'Perempuan', 'Jl. Gatot Subroto No. 6, Medan', 'TIDAK LULUS'),
(202311910, 'Alya Rayyananda', 'Rapor', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'alya.rayyananda@gmail.com', '081234567896', 'Perempuan', 'Jl. Kartini No. 7, Palembang', 'TIDAK LULUS'),
(202311919, 'Melga Hanum Sabila', 'Prestasi', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'melga.sabila@gmail.com', '081234567897', 'Perempuan', 'Jl. Imam Bonjol No. 8, Makassar', 'TIDAK LULUS'),
(202311921, 'M. Aryo Dian Saputra', 'Alumni', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'maryodiansaputra@gmail.com', '081234567896', '', 'Jl. Imam Bonjol No. 4, Malang', 'TIDAK LULUS'),
(202311922, 'Siti Khoerunnisa Najihan', 'Alumni', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'siti.khoerunnisa@gmail.com', '081234567898', 'Perempuan', 'Jl. Sudirman No. 9, Bali', 'TIDAK LULUS'),
(202311924, 'Luthfiah Putri Ramadani', 'Anak Guru', 'S1 - Desain Komunikasi Visual', 'Fakultas Desain', 'luthfiah.ramadani@gmail.com', '081234567899', 'Perempuan', 'Jl. Juanda No. 10, Jakarta', 'TIDAK LULUS'),
(202311933, 'Cahya Adhy Laksana', 'Anak Guru', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'cahyaadhylaksana@gmail.com', '081234567897', '', 'Jl. Sisingamangaraja No. 11, Makassar', 'TIDAK LULUS'),
(202311934, 'Rangga Ferdiansyah', 'Alumni', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ranggaferdiansyah', '081465627354', '', 'Jl. Anggrek No. 501, Kelurahan Mojokerto, Mojokerto, Jawa Timur', 'TIDAK LULUS'),
(202311936, 'Umi Ni’matuzamroh', 'Rapor', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'umini’matuzamroh@gmail.com', '081253478796', 'Perempuan', 'Jl. Cempedak No. 281, Kelurahan Banjarmasin, Banjarmasin, Kalimantan Selatan', 'TIDAK LULUS'),
(202311939, 'Dio Pangestu', 'Rapor', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'DioPangestu@gmail.com', '088132142153', '', 'Jl. Anggrek No. 23, Kecamatan Sukajadi, Bandung, Jawa Barat', 'LULUS'),
(202311944, 'Dita Anggraeni', 'Anak Guru', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ditaanggraeni@gmail.com', '082343637684', 'Perempuan', 'Jl. Anyelir No. 511, Kecamatan Tulungagung, Tulungagung, Jawa Timur', 'TIDAK LULUS'),
(202311956, 'Saskia Marhami Azahra', 'Prestasi', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'saskiamarhami@gmail.com', '081743625364', 'Perempuan', 'Jl. Leci No. 291, Kecamatan Balikpapan, Balikpapan, Kalimantan Timur', 'TIDAK LULUS'),
(202311975, 'Ipan Lesmana', 'Prestasi', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ipanlesmana@gmail.com', '081234567907', '', 'Jl. Sisingamangaraja No. 13, Makassar', 'TIDAK LULUS'),
(202311985, 'Rahma Dina Kusuma Azahro', '', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'rahmadinakazahro@gmail.com', '081234567898', 'Perempuan', 'Jl. Kartini No. 19, Denpasar', 'LULUS'),
(202311989, 'Umar Latip', 'Alumni', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'umar.latip@gmail.com', '081234567908', '', 'Jl. Kartini No. 24, Denpasar', 'TIDAK LULUS'),
(202321001, 'Ina Marliana', 'Alumni', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'inamarlina@gmail.com', '081576876598', 'Perempuan', 'Jl. Belimbing No. 301, Kelurahan Samarinda, Samarinda, Kalimantan Timur', 'TIDAK LULUS'),
(202321003, 'Putri Tasya Tri Andini', 'Anak Guru', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'putritasyatri@gmail.com', '081254765423', 'Perempuan', 'Jl. Delima No. 311, Kecamatan Pontianak, Pontianak, Kalimantan Barat', 'TIDAK LULUS'),
(202321015, 'Muhamad Aghnat Rizq Turattah', '', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'muhamadaghnat@gmail.com', '087654321234', '', 'Jl. Sukun No. 321, Kelurahan Tanjung Pinang, Tanjung Pinang, Kepulauan Riau', 'LULUS'),
(202321022, 'Safira Febriyanti', 'Alumni', 'S1 - Ilmu Komputer', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'safirafebriyanti@gmail.com', '081234567899', 'Perempuan', 'Jl. Hasanuddin No. 20, Palembang', 'LULUS'),
(202321026, 'Adinda Nurul Hawa Abubakar', 'Rapor', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'adindanurul@gmail.com', '089887766564', 'Perempuan', 'Jl. Kenari No. 331, Kecamatan Pekanbaru, Pekanbaru, Riau', 'LULUS'),
(202321031, 'ikbalmaulana', 'Rapor', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'ikbalmaulana@gmail.com', '089546728364', '', 'Jl. Rajawali No. 581, Kelurahan Sumenep, Sumenep, Jawa Timur', 'TIDAK LULUS'),
(202321040, 'Nur Adrian Nugraha', 'Prestasi', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'nuradrian@gmail.com', '083425167283', '', 'Jl. Jati No. 341, Kelurahan Bengkulu, Bengkulu, Bengkulu', 'LULUS'),
(202321042, 'Afif Ari Wibowo', 'Alumni', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'afifariwibowo@gmail.com', '081345623456', '', 'Jl. Waru No. 351, Kecamatan Gorontalo, Gorontalo, Gorontalo', 'LULUS'),
(202321045, 'Selvi Juliani', 'Anak Guru', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'selvijuliani@gmail.com', '083425673564', 'Perempuan', 'Jl. Randu No. 361, Kelurahan Tarakan, Tarakan, Kalimantan Utara', 'LULUS'),
(202321047, 'Elfrida Winasis', '', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'elfridawinasis@gmail.com', '087654637212', 'Perempuan', 'Jl. Matahari No. 521, Kelurahan Jember, Jember, Jawa Timur', 'LULUS'),
(202321052, 'Ade Royadi', '', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'aderoyadi@gmail.com', '081234536373', '', 'Jl. Cendana No. 371, Kecamatan Singaraja, Singaraja, Bali', 'TIDAK LULUS'),
(202321056, 'De Vanky', 'Rapor', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'devanky@gmail.com', '089758493298', '', 'Jl. Melur No. 531, Kecamatan Banyuwangi, Banyuwangi, Jawa Timur', 'LULUS'),
(202321058, 'Fadly Fauzan Aziema', 'Prestasi', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'fadlyfauzanaziema@gmail.com', '081253647832', '', 'Jl. Kenanga No. 541, Kelurahan Situbondo, Situbondo, Jawa Timur', 'LULUS'),
(202321082, 'Elisah Rahmawati', 'Rapor', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'elisarahmawati@gmail.com', '081253748392', 'Perempuan', 'Jl. Pinus No. 381, Kelurahan Kupang, Kupang, Nusa Tenggara Timur', 'TIDAK LULUS'),
(202321093, 'Artman Muhammed Laugis', 'Anak Guru', 'S1 - Teknik Industri', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'artman.muhammed@gmail.com', '081234567909', '', 'Jl. Hasanuddin No. 18, Palembang', 'TIDAK LULUS'),
(202321119, 'Muhammad Ali Yafi', 'Alumni', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'muhammadaliyafi@gmail.com', '089799643654', '', 'Jl. Kamper No. 551, Kecamatan Malang, Malang, Jawa Timur', 'LULUS'),
(202321120, 'Sudiana', 'Prestasi', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'sudiana@gmail.com', '087643321456', 'Perempuan', 'Jl. Cemara No. 391, Kecamatan Majene, Majene, Sulawesi Barat', 'TIDAK LULUS'),
(202321138, 'Regina Tri Damayanti', 'Anak Guru', 'S1 - Teknik Sipil', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'reginatridamayanti@gmail.com', '089796853456', 'Perempuan', 'Jl. Cempaka No. 561, Kelurahan Bangkalan, Bangkalan, Jawa Timur', 'LULUS'),
(202321147, 'Adila Sekar Ramadhani', 'Alumni', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'adilasekar@gmail.com', '085678987653', 'Perempuan', 'Jl. Beringin No. 401, Kelurahan Mamuju, Mamuju, Sulawesi Barat', 'TIDAK LULUS'),
(202321155, 'Fadly Febriawan', 'Anak Guru', 'S1 - Teknik Informatika', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'fadlyfebriawan@gmail.com', '086734526534', '', 'Jl. Akasia No. 411, Kecamatan Pematang Siantar, Pematang Siantar, Sumatera Utara', 'TIDAK LULUS'),
(202321165, 'Pawitra Nadhiriel Ilham', '', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'pawitranadhiriel@gmail.com', '081234567812', '', 'Jl. Flamboyan No. 421, Kelurahan Purwokerto, Purwokerto, Jawa Tengah', 'LULUS'),
(202321169, 'Siska Nurul Faharani', 'Prestasi', 'S1 - Akuntansi', 'Fakultas Ekonomi dan Bisnis (FEB)', 'SiskaNurulFaharani@gmail.com', '085612434567', 'Perempuan', 'Jl. Merpati No. 45, Kelurahan Cimahi, Cimahi, Jawa Barat', 'LULUS'),
(202321174, 'Rosiq Dzaky Almair Jamilika', 'Rapor', 'S1 - Sistem Informasi', 'Fakultas Teknik dan Ilmu Komputer (FTIK)', 'rosiqdzakyalmair@gmail.com', '084353637383', '', 'Jl. Angsana No. 431, Kecamatan Salatiga, Salatiga, Jawa Tengah', 'LULUS'),
(202398987, 'narisa syahril', 'Alumni', '', '', 'narrrrisaa@gmail.com', '0868326432', '', 'sekeloa', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pmb`
--
ALTER TABLE `pmb`
  ADD PRIMARY KEY (`No_Pendaftaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pmb`
--
ALTER TABLE `pmb`
  MODIFY `No_Pendaftaran` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202398988;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
