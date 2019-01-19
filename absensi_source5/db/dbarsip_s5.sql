-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 19 Jan 2019 pada 16.57
-- Versi Server: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbarsip_s5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi_karyawan`
--

CREATE TABLE `absensi_karyawan` (
  `nik` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `hadir` varchar(10) NOT NULL,
  `tidak_hadir` varchar(100) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `jam_datang` varchar(20) NOT NULL,
  `jam_pulang` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `absensi_karyawan`
--

INSERT INTO `absensi_karyawan` (`nik`, `nama`, `jenis_kelamin`, `hadir`, `tidak_hadir`, `jabatan`, `jam_datang`, `jam_pulang`) VALUES
('BJlK3579HLQG', 'Brahmansyah.Msi ', 'Laki-Laki', 'YA', '-', 'Guru', '07-15', '12-00'),
('HGHB35FGHFJ', 'Arifin Muhammad.SE', 'Laki-Laki', 'YA', '-', 'Guru', '07-15', '13-00'),
('HGHB7545HJ', 'Triawati.Spd', 'Laki-Laki', 'Tidak', 'Sakit', 'Guru', '-', '-'),
('HJHK3575HL', 'Nursuhuddin SE ,MSI', 'Laki-Laki', 'YA', '-', 'Kepala Sekolah', '07-15', '13-00'),
('HJHK3576GFL', 'Bayu Dwi Prasetyo', 'Laki-Laki', 'Tidak', 'Alasanya Main Cewek', 'Staf', '-', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kelas` varchar(30) NOT NULL,
  `masuk` varchar(20) NOT NULL,
  `keluar` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`hari`, `tanggal`, `kelas`, `masuk`, `keluar`, `status`) VALUES
('Senin', '2018-12-31', 'Reguler', '07-15', '13-00', 'Aktif'),
('Selasa', '2019-01-01', 'Reguler', '07-15', '13-00', 'Aktif'),
('Rabu', '2019-01-02', 'Reguler', '07-15', '13-00', 'Aktif'),
('Kamis', '2019-01-03', 'Reguler', '07-15', '13-00', 'Aktif'),
('Jumat', '2019-01-04', 'Reguler', '07-15', '11-30', 'Aktif'),
('Sabtu', '2019-01-05', 'Reguler', '07-15', '12-00', 'Aktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `nik` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `pendidikan` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `agama` varchar(11) NOT NULL,
  `jenis_kelamin` varchar(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`nik`, `nama`, `pendidikan`, `jabatan`, `status`, `agama`, `jenis_kelamin`, `alamat`, `no_telepon`) VALUES
('BJlK3579HL', 'Brahmansyah.Msi ', ' Bahasa Indonesia', 'Guru', 'Aktif', 'Islam', 'Laki-Laki', 'Kisaran Jln Kartini', '082234568976'),
('GJ4HFHJH67', 'Sunarto.Spd', 'Ilmu Fisika', 'Guru', 'Aktif', 'Kristen', 'Laki-Laki', 'Meranti Dusun IV Kec.Meranti Kab.Asahan', '082234568976'),
('HGHB3545HJ', 'Bayu Dwi Prasetyo', 'Komputer', 'Staf', 'Aktif', 'Islam', 'Laki-Laki', 'Kisaran, Umbut-Umbut Kab.Asahan', '082289764487'),
('HGHB35FGHF', 'Arifin Muhammad.SE', 'Komputer', 'Guru', 'Aktif', 'Islam', 'Laki-Laki', 'Serdang Dusun XI Kec.Meranti Kab.Asahan', '082256438876'),
('HJHK3575HL', 'Triawati.Spd', ' Bahasa Indonesia', 'Guru', 'Aktif', 'Islam', 'Perempuan', 'Desa Petatal Kab.Batubara', '082266556886'),
('KJ4789664H', 'Muhammad Sulaiman. S', ' Bahasa Indonesia', 'Guru', 'Aktif', 'Islam', 'Laki-Laki', 'Meranti Dusun II Kec.Meranti Kab.Asahan', '082289764487'),
('KKGH772633', 'Nursuhuddin SE ,MSI', 'Manajemen', 'Kepala Sekolah', 'Aktif', 'Islam', 'Laki-Laki', 'Serdang Dusun XI Kec.Meranti Kab.Asahan', '082266556886');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(25) NOT NULL,
  `paswd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(1) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `paswd`, `email`, `nama`, `level`, `ket`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'devk@gmail.com', 'Developer AMC', 1, 'Staff Kepaniteraan Hukum');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi_karyawan`
--
ALTER TABLE `absensi_karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
