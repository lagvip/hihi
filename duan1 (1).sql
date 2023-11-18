-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2023 lúc 04:28 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chitiet` int(50) NOT NULL,
  `soluong` int(255) NOT NULL,
  `id_sanpham` int(255) NOT NULL,
  `id_hoadon` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `iddm` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`iddm`, `name`) VALUES
(1, 'Áo thể thao'),
(2, 'Áo polo'),
(3, 'Áo thun'),
(4, 'Set thể thao'),
(5, 'Áo thun'),
(6, 'Quần thể thao');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `id_hoadon` int(50) NOT NULL,
  `tongtien` int(255) NOT NULL,
  `trangthai` varchar(255) NOT NULL,
  `id_user` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `mota` varchar(255) NOT NULL,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `img`, `price`, `mota`, `iddm`) VALUES
(1, 'Áo thể thao ', 'sp1.jpg', '100.000 vnd', 'đẹp', 1),
(2, 'Áo thể thao ', 'sp2.jpg', '100.000 vnd', 'đẹp', 1),
(3, 'Áo thể thao ', 'sp3.jpg', '100.000 vnd', 'đẹp', 1),
(4, 'Áo thể thao ', 'sp4.jpg', '100.000 vnd', 'đẹp', 1),
(5, 'Áo thể thao ', 'sp5.jpg', '100.000 vnd', 'đẹp', 1),
(6, 'Áo thể thao ', 'sp6.jpg', '100.000 vnd', 'đẹp', 1),
(7, 'Áo polo tsimple', 'sp7.jpg', '100.000 vnd', 'đẹp', 2),
(8, 'Áo polo tsimple', 'sp8.jpg', '100.000 vnd', 'đẹp', 2),
(9, 'Áo polo tsimple', 'sp9.jpg', '100.000 vnd', 'đẹp', 2),
(10, 'Áo polo tsimple', 'sp10.jpg', '100.000 vnd', 'đẹp', 2),
(11, 'Áo polo tsimple', 'sp11.jpg', '100.000 vnd', 'đẹp', 2),
(12, 'Áo polo tsimple', 'sp12.jpg', '100.000 vnd', 'đẹp', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id_user` int(50) NOT NULL,
  `user` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `sdt` int(100) NOT NULL,
  `diachi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chitiet`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`iddm`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sp-dm` (`iddm`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chitiet` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `iddm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `id_hoadon` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(50) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sp-dm` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`iddm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
