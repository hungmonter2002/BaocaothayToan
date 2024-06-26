-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2023 at 02:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thoitrang2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_anhtrangbia`
--

CREATE TABLE `tbl_anhtrangbia` (
  `id_anhtrangbia` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_anhtrangbia`
--

INSERT INTO `tbl_anhtrangbia` (`id_anhtrangbia`, `hinhanh`, `thutu`, `tinhtrang`) VALUES
(12, '1697112622_t_ng_polo_n_1.png', 1, 1),
(13, '1697112630_s_mi_tr_ng_399k_1.png', 2, 1),
(14, '1697112638_1366_x_532_0510232.png', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(48, '6655', 41, 1),
(49, '176', 42, 1),
(50, '8771', 42, 1),
(51, '4132', 49, 1),
(52, '3136', 49, 6),
(53, '3876', 40, 1),
(54, '3876', 59, 5),
(55, '2756', 50, 5),
(56, '7439', 47, 1),
(57, '8953', 55, 1),
(58, '9665', 40, 1),
(59, '1870', 40, 1),
(60, '1870', 41, 1),
(61, '1870', 55, 1),
(62, '3628', 41, 1),
(63, '3628', 42, 1),
(64, '6740', 40, 1),
(65, '6740', 42, 2),
(66, '4165', 41, 1),
(67, '4165', 42, 1),
(68, '7456', 63, 1),
(69, '3809', 52, 1),
(70, '3573', 61, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(15, 'Quần', 3),
(18, 'Áo', 2),
(27, 'Phụ kiện', 3),
(39, 'Giày', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `id_giohang` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `stime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`id_giohang`, `id_khachhang`, `code_cart`, `cart_status`, `stime`) VALUES
(62, 23, '7456', 1, '2023-03-30 17:05:20'),
(63, 26, '3809', 1, '2023-10-11 08:49:48'),
(64, 27, '3573', 1, '2023-10-12 14:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khackhang`
--

CREATE TABLE `tbl_khackhang` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `dienthoai` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_khackhang`
--

INSERT INTO `tbl_khackhang` (`id_khachhang`, `tenkhachhang`, `diachi`, `dienthoai`, `email`, `matkhau`, `role_id`) VALUES
(19, 'trung tran', 'trung', '0365746456', 'trung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(21, 'trung', '123', '0123456789', 'trung@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4),
(22, 'trungtran', 'DN', '0123456789', 'trung1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4),
(23, 'tu', 'CC', '0123456789', 'tu@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1),
(24, 'trung nhan vien', 'DN', '0123456789', 'trungnv@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 3),
(25, 'khai', 'DN', '0123456789', 'khai@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 4),
(26, 'Trần Trung Kiên', 'hà nội', '123456789', 'kienhee', '202cb962ac59075b964b07152d234b70', 4),
(27, 'Trần Trung Kiên', 'hà nội', '12345678', 'admin2', '202cb962ac59075b964b07152d234b70', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id_lienhe` int(11) NOT NULL,
  `lienhe` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id_lienhe`, `lienhe`, `thutu`) VALUES
(9, 'Trần Ngọc Trung - 1911065436', 1),
(10, 'LÊ VY TÚ - 1911065070', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`id`, `name`, `id_role`) VALUES
(2, 'Nhân viên', 3),
(5, 'Khách hàng', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `km` int(11) NOT NULL,
  `giagockm` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `km`, `giagockm`, `soluong`, `hinhanh`, `tomtat`, `tinhtrang`, `id_danhmuc`) VALUES
(51, 'LOGO SOCKS', 'V11221W', '90000', 0, 20000, 100, '1679410236_tui3.jpg', '<p>NEEDS OF WISDOM®</p>\r\n\r\n<p>Streetwear</p>\r\n\r\n<p>Based in Saigon</p>\r\n\r\n<p>Made in Vietnam</p>\r\n ', 1, 27),
(52, 'HADES PATTERN BASEBALL CAP', 'C10621B', '280000', 5, 200000, 10, '1679410249_giay1.jpg', '<p>Hd-485</p>\r\n\r\n<p>PADDED SPORTS SHOES</p>\r\n\r\n<p>Based in PARRI</p>\r\n\r\n<p>Made in Prance</p>\r\n  ', 1, 39),
(61, 'SON TULIPS', '678', '1200000', 0, 1240000, 0, '1679886868_Son.jpg', '<p> Si-678</p>\r\n<p> Long lasting lipstick</p>\r\n<p> Base in PARRI</p>\r\n<p> Made in Fance</p>', 1, 40),
(62, 'HANDBAGS', '078', '15000000', 0, 15600000, 4, '1679887120_tui.jpg', '<p> HANDBAGS</p>\r\n<p> Ti-078</p>\r\n<p> Base in PARRI</p>\r\n<p> Made in France</p>\r\n', 1, 27),
(63, 'QUẦN JOGGER', 'QS-158', '1200000', 0, 1300000, 5, '1680187891_quan2.jpg', ' <p> QUẦN JOGGER</p>\r\n<p> QS-128</p>\r\n<p> BASE in Paris</p>\r\n<p> Made in France</p>', 1, 15),
(64, 'Quần Short Dior Oblique Bermuda', 'QS-125', '1200000', 0, 1300000, 10, '1680188570_quan3.jpg', ' <p> Quần Short Dior Oblique Bermuda</p>\r\n<p> QS-128</p>\r\n<p> BASE in Paris</p>\r\n<p> Made in France</p> ', 1, 15),
(65, 'test', '555555', '500000', 10, 490000, 50, '1697007423_Screenshot 2023-10-11 072548.png', 'nội dung test', 1, 42),
(67, 'ÁO SƠ MI - AR230315DT', 'AR230315DT', '580000', 0, 580000, 100, '1697113378_ar230315dt._08_2.png', 'ÁO SƠ MI - AR230315DT\r\nMÃ SP \r\nAR230315DT\r\n', 1, 18);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `gianhap` varchar(110) NOT NULL,
  `soluongban` int(11) NOT NULL,
  `loinhuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anhtrangbia`
--
ALTER TABLE `tbl_anhtrangbia`
  ADD PRIMARY KEY (`id_anhtrangbia`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`id_giohang`);

--
-- Indexes for table `tbl_khackhang`
--
ALTER TABLE `tbl_khackhang`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id_lienhe`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Indexes for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_anhtrangbia`
--
ALTER TABLE `tbl_anhtrangbia`
  MODIFY `id_anhtrangbia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `id_giohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `tbl_khackhang`
--
ALTER TABLE `tbl_khackhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id_lienhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
