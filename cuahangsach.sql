-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2022 at 08:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuahangsach`
--

-- --------------------------------------------------------

--
-- Table structure for table `bosuutap`
--

CREATE TABLE `bosuutap` (
  `id` int(11) NOT NULL,
  `tentbosuutap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `motabosuutap` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinhchinh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `hinhphu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `stt` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `soluongsanpham` int(10) NOT NULL,
  `giasanpham` int(10) NOT NULL,
  `hinhanhsanpham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `iddondathang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`stt`, `masanpham`, `tensanpham`, `soluongsanpham`, `giasanpham`, `hinhanhsanpham`, `iddondathang`) VALUES
(79, 52, 'Khô Gà Lá Chanh 500g', 3, 3000000, 'https://lzd-img-global.slatic.net/g/p/5bd46ab921e3a8dfffcf116db5d63f83.jpg_400x400q75.jpg_.webp', 28),
(80, 52, 'Khô Gà Lá Chanh 500g', 1, 1000000, 'https://lzd-img-global.slatic.net/g/p/5bd46ab921e3a8dfffcf116db5d63f83.jpg_400x400q75.jpg_.webp', 29),
(81, 80, 'Điện thoại Samsung Galaxy S22', 3, 66000000, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/samsung-galaxys22ultra5Gthumbvideo-1020x570.jpg', 30),
(82, 80, 'Điện thoại Samsung Galaxy S22', 2, 44000000, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/samsung-galaxys22ultra5Gthumbvideo-1020x570.jpg', 31),
(83, 80, 'Điện thoại Samsung Galaxy S22', 2, 44000000, 'https://cdn.tgdd.vn/Products/Images/42/235838/Slider/samsung-galaxys22ultra5Gthumbvideo-1020x570.jpg', 32),
(84, 92, 'Điện thoại Xiaomi 11T 5G 128GB', 1, 60000, 'https://cdn.tgdd.vn/Products/Images/42/248293/Slider/xiaomi-11t-5g-thumb-1020x570.jpeg', 32),
(85, 93, '\nKiến Tạo Nhaf', 2, 2000000000, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 33);

-- --------------------------------------------------------

--
-- Table structure for table `danhgia`
--

CREATE TABLE `danhgia` (
  `Id_DanGgia` int(11) NOT NULL,
  `namsao` int(11) NOT NULL,
  `bonsao` int(11) NOT NULL,
  `basao` int(11) NOT NULL,
  `haisao` int(11) NOT NULL,
  `motsao` int(11) NOT NULL,
  `ComMent` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Id_SanPham` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDanhGia` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `id` int(11) NOT NULL,
  `tentaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ngaydat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `trinhtrang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idtaikhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`id`, `tentaikhoan`, `email`, `diachi`, `sodienthoai`, `ngaydat`, `trinhtrang`, `idtaikhoan`) VALUES
(30, 'Test', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', '0366426402', '21/5/2022', 'Đã Giao', 15),
(31, 'Test', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', '0366426402', '29/5/2022', 'Đã Giao', 15),
(33, 'Test', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', '0366426402', '30/5/2022', 'Đang Vận Chuyển', 15);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `idgiohang` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `idtaikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinhsp` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`) VALUES
(4, 'Bàn ghế'),
(5, 'Tủ Giường'),
(6, 'Nội Thất Gia Đình'),
(7, 'Nội Thất Công Nghiệp'),
(8, 'Thể Loại Khác');

-- --------------------------------------------------------

--
-- Table structure for table `phanloaitaikhoan`
--

CREATE TABLE `phanloaitaikhoan` (
  `id` int(11) NOT NULL,
  `tenphanloai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phanloaitaikhoan`
--

INSERT INTO `phanloaitaikhoan` (`id`, `tenphanloai`) VALUES
(0, 'Khách Hàng'),
(1, 'Admin'),
(2, 'Shipper');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `TenSP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaSP` int(11) NOT NULL,
  `NgayGiamGia` date NOT NULL,
  `GiamGia` int(11) NOT NULL,
  `HinhAnhSP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `MoTaSP` varchar(20000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IDSP` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ID`, `TenSP`, `GiaSP`, `NgayGiamGia`, `GiamGia`, `HinhAnhSP`, `MoTaSP`, `IDSP`) VALUES
(100, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 5),
(101, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 5),
(102, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 5),
(103, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 5),
(104, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 7),
(105, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 7),
(107, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 7),
(108, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 7),
(109, '\r\nKiến Tạo Nhà Đẹp', 1000000000, '2022-05-31', 20, 'https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 'Dịch vụ thiết kế nội thất của Kiến Tạo Nhà Đẹp với đội ngũ thiết kế giàu kinh nghiệm và chuyên môn cùng sự tận tâm sẽ giúp bạn thiết kế những món nội thất phù hợp với căn nhà của mình. Đồng thời, đảm bảo nhanh chóng, tiết kiệm tối đa chi phí với uy tín, chất lượng sẽ khiến bạn hài lòng.\r\n\r\nDịch vụ thiết kế nội thất trọn gói bao gồm những hạng mục gì@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg@https://kientaonhadep.com.vn/wp-content/uploads/2022/01/thiet-ke-noi-that.jpg', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `password` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhanh` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `password`, `username`, `so_dien_thoai`, `email`, `dia_chi`, `hinhanh`, `loai`) VALUES
(15, '123456', 'Test', '0366426402', 'thaibasang8@gmail.com', 'Da nang-phuong Hoa Quy-Quqn Ngu Hanh Son', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 1),
(38, '12345679', 'tru44', '0123456797', 'tru@gmail.com', '04 le thanh nghi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 0),
(43, '123', 'shipper', '0366426403', 'abc@gmail.com', 'abc', '', 2),
(44, 'abc', 'abc', '0935161907', 'abc@gmail.com', 'an=bc', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuI3QeqYJXfQ7QAvSnH1t_Wy5UxBdd6lLTW-MZxIPrE90-1IeYlQ&s', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bosuutap`
--
ALTER TABLE `bosuutap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`stt`),
  ADD KEY `fk_chitiet` (`masanpham`),
  ADD KEY `fk_chitietdonhang` (`iddondathang`);

--
-- Indexes for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD PRIMARY KEY (`Id_DanGgia`),
  ADD KEY `fk_danhgiamot` (`Id_SanPham`),
  ADD KEY `fk_danhgiauser` (`username`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idgiohang`),
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phanloaitaikhoan`
--
ALTER TABLE `phanloaitaikhoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `sanpham_ibfk_1` (`IDSP`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `loai` (`loai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bosuutap`
--
ALTER TABLE `bosuutap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `stt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `danhgia`
--
ALTER TABLE `danhgia`
  MODIFY `Id_DanGgia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idgiohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `phanloaitaikhoan`
--
ALTER TABLE `phanloaitaikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `fk_danhgiamot` FOREIGN KEY (`Id_SanPham`) REFERENCES `sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_danhgiauser` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`idsanpham`) REFERENCES `sanpham` (`ID`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`IDSP`) REFERENCES `loaisanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`loai`) REFERENCES `phanloaitaikhoan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
