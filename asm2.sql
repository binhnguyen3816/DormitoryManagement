-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3307
-- Thời gian đã tạo: Th12 10, 2023 lúc 02:52 AM
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
-- Cơ sở dữ liệu: `asm2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` tinyint(1) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updateAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updateAt`) VALUES
(1, 'admin', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '2023-11-17 14:21:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baove`
--

CREATE TABLE `baove` (
  `MaNV` varchar(10) NOT NULL,
  `TenCN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baove`
--

INSERT INTO `baove` (`MaNV`, `TenCN`) VALUES
('BV0001', 'A'),
('BV0004', 'AB'),
('BV0002', 'AG'),
('BV0003', 'AH'),
('BV0005', 'B'),
('BV0006', 'C'),
('BV0007', 'D'),
('BV0008', 'E'),
('BV0009', 'F'),
('BV0010', 'G');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cosovatchat`
--

CREATE TABLE `cosovatchat` (
  `TenCSVC` varchar(255) NOT NULL,
  `GiaThue` int(11) NOT NULL,
  `GioMoCua` time NOT NULL,
  `GioDongCua` time NOT NULL,
  `TenCN` varchar(20) NOT NULL,
  `TinhTrang` varchar(50) NOT NULL,
  `MaNV` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cosovatchat`
--

INSERT INTO `cosovatchat` (`TenCSVC`, `GiaThue`, `GioMoCua`, `GioDongCua`, `TenCN`, `TinhTrang`, `MaNV`) VALUES
('Internet', 10000, '06:00:00', '20:00:00', 'AH', '', 'TCN0013'),
('Phòng giặt', 10000, '06:00:00', '20:00:00', 'C', '', 'TCN0016'),
('Phòng sấy', 5000, '06:00:00', '20:00:00', 'F', '', 'TCN0019'),
('Phòng tập aerobic', 10000, '06:00:00', '20:00:00', 'E', '', 'TCN0018'),
('Phòng tập gym', 6000, '06:00:00', '20:00:00', 'AG', '', 'TCN0012'),
('Phòng tập yoga', 5000, '06:00:00', '20:00:00', 'B', '', 'TCN0015'),
('Sân bóng chuyền', 10000, '06:00:00', '20:00:00', 'AB', '', 'TCN0014'),
('Sân bóng rổ', 7000, '06:00:00', '20:00:00', 'D', '', 'TCN0017'),
('Sân bóng đá', 5000, '06:00:00', '20:00:00', 'A', '', 'TCN0011'),
('Sân cầu lông', 5000, '06:00:00', '20:00:00', 'G', '', 'TCN0020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cumnha`
--

CREATE TABLE `cumnha` (
  `TenCN` varchar(20) NOT NULL,
  `SoToa` int(11) NOT NULL,
  `SucChua` int(11) NOT NULL,
  `SoLuongCSVC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cumnha`
--

INSERT INTO `cumnha` (`TenCN`, `SoToa`, `SucChua`, `SoLuongCSVC`) VALUES
('A', 18, 10000, 10),
('AB', 5, 4500, 2),
('AG', 2, 1650, 4),
('AH', 2, 2600, 3),
('B', 5, 4500, 2),
('C', 6, 6000, 3),
('D', 5, 5200, 3),
('E', 1, 1650, 1),
('F', 2, 3200, 1),
('G', 1, 1650, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(10) NOT NULL,
  `NgayTaoHoaDon` date NOT NULL,
  `LoaiDV` varchar(50) NOT NULL,
  `NgayDangKy` date NOT NULL,
  `NgayBatDauSD` date NOT NULL,
  `NgayNgungSD` date NOT NULL,
  `HanThanhToan` date NOT NULL,
  `TrangThaiThanhToan` varchar(50) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `NgayTaoHoaDon`, `LoaiDV`, `NgayDangKy`, `NgayBatDauSD`, `NgayNgungSD`, `HanThanhToan`, `TrangThaiThanhToan`, `ThanhTien`) VALUES
('HDCSVC001', '2023-01-01', 'Sân bóng đá', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-10', 'Đã thanh toán', 10000),
('HDCSVC002', '2023-01-02', 'Phòng tập gym', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-15', 'Chưa thanh toán', 10000),
('HDCSVC003', '2023-01-03', 'Internet', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-12', 'Đã thanh toán', 10000),
('HDCSVC004', '2023-01-04', 'Sân bóng chuyền', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-14', 'Chưa thanh toán', 10000),
('HDCSVC005', '2023-01-05', 'Phòng tập yoga', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-20', 'Đã thanh toán', 10000),
('HDCSVC006', '2023-01-06', 'Phòng giặt', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-18', 'Chưa thanh toán', 8000),
('HDCSVC007', '2023-01-07', 'Sân bóng rổ', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-13', 'Đã thanh toán', 8000),
('HDCSVC008', '2023-01-08', 'Phòng tập aerobic', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-16', 'Chưa thanh toán', 8000),
('HDCSVC009', '2023-01-09', 'Phòng sấy', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-11', 'Đã thanh toán', 8000),
('HDCSVC010', '2023-01-10', 'Sân cầu lông', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-17', 'Chưa thanh toán', 8000),
('HDDN001', '2023-01-01', 'Internet', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-10', 'Đã thanh toán', 10000),
('HDDN002', '2023-01-02', 'Cable TV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-15', 'Chưa thanh toán', 10000),
('HDDN003', '2023-01-03', 'Phone', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-12', 'Đã thanh toán', 10000),
('HDDN004', '2023-01-04', 'Internet', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-14', 'Chưa thanh toán', 10000),
('HDDN005', '2023-01-05', 'Laundry', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-20', 'Đã thanh toán', 10000),
('HDDN006', '2023-01-06', 'Electricity and Water', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-18', 'Chưa thanh toán', 8000),
('HDDN007', '2023-01-07', 'Internet', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-13', 'Đã thanh toán', 8000),
('HDDN008', '2023-01-08', 'Facilites', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-16', 'Chưa thanh toán', 8000),
('HDDN009', '2023-01-09', 'Furniture', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-11', 'Đã thanh toán', 8000),
('HDDN010', '2023-01-10', 'Internet', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-17', 'Chưa thanh toán', 8000),
('HDLT001', '2023-01-01', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-10', 'Đã thanh toán', 10000),
('HDLT002', '2023-01-02', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-15', 'Chưa thanh toán', 10000),
('HDLT003', '2023-01-03', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-12', 'Đã thanh toán', 10000),
('HDLT004', '2023-01-04', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-14', 'Chưa thanh toán', 10000),
('HDLT005', '2023-01-05', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-20', 'Đã thanh toán', 10000),
('HDLT006', '2023-01-06', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-18', 'Chưa thanh toán', 8000),
('HDLT007', '2023-01-07', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-13', 'Đã thanh toán', 8000),
('HDLT008', '2023-01-08', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-16', 'Chưa thanh toán', 8000),
('HDLT009', '2023-01-09', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-11', 'Đã thanh toán', 8000),
('HDLT010', '2023-01-10', 'Thuê phòng', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-17', 'Chưa thanh toán', 8000),
('HDNT001', '2023-01-01', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-10', 'Đã thanh toán', 10000),
('HDNT002', '2023-01-02', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-15', 'Chưa thanh toán', 10000),
('HDNT003', '2023-01-03', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-12', 'Đã thanh toán', 10000),
('HDNT004', '2023-01-04', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-14', 'Chưa thanh toán', 10000),
('HDNT005', '2023-01-05', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-20', 'Đã thanh toán', 10000),
('HDNT006', '2023-01-06', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-18', 'Chưa thanh toán', 8000),
('HDNT007', '2023-01-07', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-13', 'Đã thanh toán', 8000),
('HDNT008', '2023-01-08', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-16', 'Chưa thanh toán', 8000),
('HDNT009', '2023-01-09', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-11', 'Đã thanh toán', 8000),
('HDNT010', '2023-01-10', 'Nội thất', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-17', 'Chưa thanh toán', 8000),
('HDTMB001', '2023-01-01', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-10', 'Đã thanh toán', 10000),
('HDTMB002', '2023-01-02', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-15', 'Chưa thanh toán', 10000),
('HDTMB003', '2023-01-03', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-12', 'Đã thanh toán', 10000),
('HDTMB004', '2023-01-04', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-14', 'Chưa thanh toán', 10000),
('HDTMB005', '2023-01-05', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-20', 'Đã thanh toán', 10000),
('HDTMB006', '2023-01-06', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-18', 'Chưa thanh toán', 8000),
('HDTMB007', '2023-01-07', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-13', 'Đã thanh toán', 8000),
('HDTMB008', '2023-01-08', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-16', 'Chưa thanh toán', 8000),
('HDTMB009', '2023-01-09', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-11', 'Đã thanh toán', 8000),
('HDTMB010', '2023-01-10', 'MBDV', '0000-00-00', '0000-00-00', '0000-00-00', '2023-01-17', 'Chưa thanh toán', 8000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadoncsvc`
--

CREATE TABLE `hoadoncsvc` (
  `MaHD` varchar(10) NOT NULL,
  `TenCSVC` varchar(255) NOT NULL,
  `SoGioThue` float NOT NULL,
  `MaPDK` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadoncsvc`
--

INSERT INTO `hoadoncsvc` (`MaHD`, `TenCSVC`, `SoGioThue`, `MaPDK`) VALUES
('HDCSVC001', 'Sân bóng đá', 2, 'PV001'),
('HDCSVC002', 'Phòng tập gym', 3, 'PV002'),
('HDCSVC003', 'Internet', 10, 'PV003'),
('HDCSVC004', 'Sân bóng chuyền', 1, 'PV004'),
('HDCSVC005', 'Phòng tập yoga', 2, 'PV005'),
('HDCSVC006', 'Phòng giặt', 8, 'PV006'),
('HDCSVC007', 'Sân bóng rổ', 1, 'PV007'),
('HDCSVC008', 'Phòng tập aerobic', 4, 'PV008'),
('HDCSVC009', 'Phòng sấy', 6, 'PV009'),
('HDCSVC010', 'Sân cầu lông', 3, 'PV010');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadondiennuoc`
--

CREATE TABLE `hoadondiennuoc` (
  `MaHD` varchar(10) NOT NULL,
  `ChiSoDienDau` float NOT NULL,
  `ChiSoDienCuoi` float NOT NULL,
  `Gia1ChiSoDien` int(11) NOT NULL,
  `ChiSoNuocDau` float NOT NULL,
  `ChiSoNuocCuoi` float NOT NULL,
  `Gia1ChiSoNuoc` int(11) NOT NULL,
  `NgayChotChi` date NOT NULL,
  `TenTaiKhoan` varchar(255) NOT NULL,
  `ThangThanhToan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadondiennuoc`
--

INSERT INTO `hoadondiennuoc` (`MaHD`, `ChiSoDienDau`, `ChiSoDienCuoi`, `Gia1ChiSoDien`, `ChiSoNuocDau`, `ChiSoNuocCuoi`, `Gia1ChiSoNuoc`, `NgayChotChi`, `TenTaiKhoan`, `ThangThanhToan`) VALUES
('HDDN001', 1000, 1200, 3000, 50, 70, 2000, '2023-11-15', 'user01', 2023),
('HDDN002', 800, 950, 3000, 40, 55, 2000, '2023-11-15', 'user02', 2023),
('HDDN003', 1200, 1400, 3000, 60, 80, 2000, '2023-11-15', 'user03', 2023),
('HDDN004', 1100, 1300, 3000, 55, 75, 2000, '2023-11-15', 'user04', 2023),
('HDDN005', 950, 1100, 3000, 45, 60, 2000, '2023-11-15', 'user05', 2023),
('HDDN006', 1050, 1250, 3000, 55, 70, 2000, '2023-11-15', 'user06', 2023),
('HDDN007', 900, 1050, 3000, 42, 58, 2000, '2023-11-15', 'user07', 2023),
('HDDN008', 1000, 1150, 3000, 48, 65, 2000, '2023-11-15', 'user08', 2023),
('HDDN009', 1150, 1350, 3000, 58, 78, 2000, '2023-11-15', 'user09', 2023),
('HDDN010', 950, 1120, 3000, 43, 62, 2000, '2023-11-15', 'user10', 2023);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonluutru`
--

CREATE TABLE `hoadonluutru` (
  `MaHD` varchar(10) NOT NULL,
  `LoaiPhong` varchar(20) NOT NULL,
  `GiaLuuTru1Thang` int(11) NOT NULL,
  `MaPDK` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonluutru`
--

INSERT INTO `hoadonluutru` (`MaHD`, `LoaiPhong`, `GiaLuuTru1Thang`, `MaPDK`) VALUES
('HDLT001', 'Phòng 2', 800, 'LT001'),
('HDLT002', 'Phòng 4', 1200, 'LT002'),
('HDLT003', 'Phòng 4 máy lạnh', 1500, 'LT003'),
('HDLT004', 'Phòng 6', 1800, 'LT004'),
('HDLT005', 'Phòng 8', 2000, 'LT005'),
('HDLT006', 'Phòng 2', 850, 'LT006'),
('HDLT007', 'Phòng 4', 1250, 'LT007'),
('HDLT008', 'Phòng 4 máy lạnh', 1550, 'LT008'),
('HDLT009', 'Phòng 6', 1850, 'LT009'),
('HDLT010', 'Phòng 8', 2050, 'LT010');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonnoithat`
--

CREATE TABLE `hoadonnoithat` (
  `MaHD` varchar(10) NOT NULL,
  `GiaThueTheoThang` int(11) NOT NULL,
  `MaPDK` varchar(10) NOT NULL,
  `NamThanhToan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonnoithat`
--

INSERT INTO `hoadonnoithat` (`MaHD`, `GiaThueTheoThang`, `MaPDK`, `NamThanhToan`) VALUES
('HDNT001', 500, 'PS001', 2023),
('HDNT002', 600, 'PS002', 2023),
('HDNT003', 550, 'PS003', 2023),
('HDNT004', 700, 'PS004', 2023),
('HDNT005', 650, 'PS005', 2023),
('HDNT006', 750, 'PS006', 2023),
('HDNT007', 800, 'PS007', 2023),
('HDNT008', 620, 'PS008', 2023),
('HDNT009', 580, 'PS009', 2023),
('HDNT010', 690, 'PS010', 2023);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonthuembdv`
--

CREATE TABLE `hoadonthuembdv` (
  `MaHD` varchar(10) NOT NULL,
  `MaMB` varchar(10) NOT NULL,
  `DienTich` int(11) NOT NULL,
  `ViTri` varchar(20) NOT NULL,
  `MaHopDong` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonthuembdv`
--

INSERT INTO `hoadonthuembdv` (`MaHD`, `MaMB`, `DienTich`, `ViTri`, `MaHopDong`) VALUES
('HDTMB001', 'MB001', 50, 'AA1', 'HD0001'),
('HDTMB002', 'MB002', 80, 'AGA2', 'HD0002'),
('HDTMB003', 'MB003', 120, 'AHA4', 'HD0003'),
('HDTMB004', 'MB004', 60, 'ABA1', 'HD0004'),
('HDTMB005', 'MB005', 100, 'BA2', 'HD0005'),
('HDTMB006', 'MB006', 90, 'CA1', 'HD0006'),
('HDTMB007', 'MB007', 75, 'DA5', 'HD0007'),
('HDTMB008', 'MB008', 110, 'EA1', 'HD0008'),
('HDTMB009', 'MB009', 70, 'FA2', 'HD0009'),
('HDTMB010', 'MB010', 95, 'GA4', 'HD0010');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `MaHopDong` varchar(10) NOT NULL,
  `MaMB` varchar(10) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `CCCD` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hopdong`
--

INSERT INTO `hopdong` (`MaHopDong`, `MaMB`, `NgayBatDau`, `NgayKetThuc`, `CCCD`) VALUES
('HD0001', 'MB0001', '0000-00-00', '0000-00-00', '001524689037'),
('HD0002', 'MB0002', '0000-00-00', '0000-00-00', '001975483216'),
('HD0003', 'MB0003', '0000-00-00', '0000-00-00', '001864250379'),
('HD0004', 'MB0004', '0000-00-00', '0000-00-00', '001632984571'),
('HD0005', 'MB0005', '0000-00-00', '0000-00-00', '001304865279'),
('HD0006', 'MB0006', '0000-00-00', '0000-00-00', '001209874653'),
('HD0007', 'MB0007', '0000-00-00', '0000-00-00', '001789062345'),
('HD0008', 'MB0008', '0000-00-00', '0000-00-00', '001543287690'),
('HD0009', 'MB0009', '0000-00-00', '0000-00-00', '001204587369'),
('HD0010', 'MB0010', '0000-00-00', '0000-00-00', '001896324507');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kythuat`
--

CREATE TABLE `kythuat` (
  `MaNV` varchar(10) NOT NULL,
  `LoaiKyThuat` varchar(50) NOT NULL,
  `TenCN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kythuat`
--

INSERT INTO `kythuat` (`MaNV`, `LoaiKyThuat`, `TenCN`) VALUES
('KT0041', 'DienNuoc', 'A'),
('KT0042', 'SuaNoiThat', 'AG'),
('KT0043', 'DienNuoc', 'AH'),
('KT0044', 'SuaNoiThat', 'AB'),
('KT0045', 'DienNuoc', 'B'),
('KT0046', 'SuaNoiThat', 'C'),
('KT0047', 'DienNuoc', 'D'),
('KT0048', 'DienNuoc', 'E'),
('KT0049', 'SuaNoiThat', 'F'),
('KT0050', 'SuaNoiThat', 'G');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `matbangdichvu`
--

CREATE TABLE `matbangdichvu` (
  `MaMB` varchar(10) NOT NULL,
  `LoaiDichVu` varchar(255) NOT NULL,
  `ViTri` varchar(20) NOT NULL,
  `DienTich` int(11) NOT NULL DEFAULT 0,
  `TenCN` varchar(20) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `GiaThue1Thang` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `matbangdichvu`
--

INSERT INTO `matbangdichvu` (`MaMB`, `LoaiDichVu`, `ViTri`, `DienTich`, `TenCN`, `MaNV`, `GiaThue1Thang`) VALUES
('MB0001', 'Quán Ăn', 'AAG3', 50, 'A', 'TCN0011', 3000000),
('MB0002', 'Sân Bóng', 'AGA1', 400, 'AG', 'TCN0012', 10000000),
('MB0003', 'Phòng Gym', 'AHA2', 100, 'AH', 'TCN0013', 5000000),
('MB0004', 'Tạp Hóa', 'ABA1', 60, 'AB', 'TCN0014', 4000000),
('MB0005', 'Nhà Xe', 'BA1', 600, 'B', 'TCN0015', 8000000),
('MB0006', 'Sửa chữa', 'CA3', 50, 'C', 'TCN0016', 3000000),
('MB0007', 'Quán Ăn', 'DA2', 60, 'D', 'TCN0017', 3500000),
('MB0008', 'Sân Bóng', 'EA4', 420, 'E', 'TCN0018', 12000000),
('MB0009', 'Nhà Xe', 'FA5', 600, 'F', 'TCN0019', 11500000),
('MB0010', 'Sân Bóng', 'GA1', 400, 'G', 'TCN0020', 9500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoithan`
--

CREATE TABLE `nguoithan` (
  `SV_CCCD` varchar(12) NOT NULL,
  `HoVaTen` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoithan`
--

INSERT INTO `nguoithan` (`SV_CCCD`, `HoVaTen`, `NgaySinh`, `GioiTinh`) VALUES
('001301025380', 'Văn Tất Thắng', '0000-00-00', 'Nam'),
('035201001228', 'Lê Thị Lan', '0000-00-00', 'Nữ'),
('042202001511', 'Cao Thị Hạnh', '0000-00-00', 'Nữ'),
('042303012902', 'Nguyễn Văn Sơn', '0000-00-00', 'Nam'),
('075302017041', 'Trần Vũ Quỳnh Như', '0000-00-00', 'Nữ'),
('079302023716', 'Nguyễn Phương Hồng', '0000-00-00', 'Nữ'),
('082303003975', 'Võ Thị Hồng Gấm', '0000-00-00', 'Nữ'),
('082303004279', 'Võ Thị Hồng Nhung ', '0000-00-00', 'Nữ'),
('087303011214', 'Lê Thị Hoa Nở', '0000-00-00', 'Nữ'),
('089202013750', 'Phạm Thị Mai Lang', '0000-00-00', 'Nữ'),
('191920528', 'Tôn Nữ Thúy Anh', '0000-00-00', 'Nữ'),
('191920634', 'Vũ Văn Minh', '0000-00-00', 'Nam'),
('191920860', 'Ngô Thị Song Hoàng', '0000-00-00', 'Nữ'),
('191921740', 'Nguyễn Thị Thanh Bình', '0000-00-00', 'Nữ'),
('191973789', 'Lê Thị Thùy Chi', '0000-00-00', 'Nữ'),
('212468924', 'Nguyễn Lê Thu Sương', '0000-00-00', 'Nữ'),
('215593028', 'Lê Nguyễn Hải', '0000-00-00', 'Nam'),
('215613202', 'Lê Hùng Tiến', '0000-00-00', 'Nam'),
('231441838', 'Lê Thị Hiệp', '0000-00-00', 'Nữ'),
('272909687', 'Lưu Hữu Cử', '0000-00-00', 'Nam'),
('276041233', 'Phạm Văn Thưởng', '0000-00-00', 'Nam'),
('301640421', 'Võ Thanh Hải', '0000-00-00', 'Nam'),
('301776828', 'Trần Thị Kim Tâm', '0000-00-00', 'Nữ'),
('312507287', 'Trung Nhân', '0000-00-00', 'Nam'),
('312530418', 'Lê Thị Cẩm Hương', '0000-00-00', 'Nữ'),
('366408893', 'Nguyễn Thị Đào', '0000-00-00', 'Nữ'),
('371996187', 'Nguyễn Thị Nguyệt Nga', '0000-00-00', 'Nữ'),
('372013285', 'Châu Thị Yến Khanh', '0000-00-00', 'Nữ'),
('381887215', 'Nguyễn Ngọc Hà', '0000-00-00', 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoithuematbang`
--

CREATE TABLE `nguoithuematbang` (
  `CCCD` varchar(12) NOT NULL,
  `HoVaTen` varchar(255) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoithuematbang`
--

INSERT INTO `nguoithuematbang` (`CCCD`, `HoVaTen`, `SoDienThoai`) VALUES
('001204587369', 'Nguyễn Thùy Trang', '0371845926'),
('001209874653', 'Nguyễn Văn Tuấn', '0385247691'),
('001304865279', 'Hoàng Thị Ánh Ngọc', '0194738652'),
('001524689037', 'Nguyễn Thị Bích Hồng', '0914356782'),
('001543287690', 'Trần Hải Đăng', '0942516837'),
('001632984571', 'Phạm Đức Long', '0938261457'),
('001789062345', 'Lê Thị Thanh Hương', '0139652478'),
('001864250379', 'Lê Thị Mai Anh', '0326971854'),
('001896324507', 'Bùi Quốc Huy', '0127356849'),
('001975483216', 'Trần Văn Minh Quân', '0978152034');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(10) NOT NULL,
  `TienLuong` int(11) NOT NULL,
  `CCCD` varchar(12) NOT NULL,
  `HoVaTen` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TienLuong`, `CCCD`, `HoVaTen`, `NgaySinh`, `GioiTinh`) VALUES
('BV0001', 10000000, '001264859307', 'Trương Anh Ngọc', '0000-00-00', 'Nam'),
('BV0002', 10000000, '001750329816', 'Hoàng Diệu Linh', '0000-00-00', 'Nữ'),
('BV0003', 8000000, '001942867503', 'Ngô Quang Thắng', '0000-00-00', 'Nam'),
('BV0004', 12000000, '001638245019', 'Đinh Thanh Trúc', '0000-00-00', 'Nữ'),
('BV0005', 9000000, '001405798632', 'Lê Thảo Vy', '0000-00-00', 'Nữ'),
('BV0006', 7000000, '001219387506', 'Lê Mạnh Sơn', '0000-00-00', 'Nam'),
('BV0007', 9000000, '001789065324', 'Nguyễn Tố Như', '0000-00-00', 'Nữ'),
('BV0008', 7500000, '001542860397', 'Đặng Trúc Thảo', '0000-00-00', 'Nữ'),
('BV0009', 10000000, '001208957463', 'Mai Linh Chi', '0000-00-00', 'Nữ'),
('BV0010', 5000000, '001896341250', 'Nguyễn Hải Nam', '0000-00-00', 'Nam'),
('KT0041', 14000000, '001549637208', 'Phan Văn Quân', '0000-00-00', 'Nam'),
('KT0042', 5000000, '001423065798', 'Nguyễn Thị Lệ', '0000-00-00', 'Nữ'),
('KT0043', 8500000, '001936874205', 'Trần Văn Đức', '0000-00-00', 'Nam'),
('KT0044', 12000000, '001287540693', 'Nguyễn Thị Loan', '0000-00-00', 'Nữ'),
('KT0045', 14000000, '001630478952', 'Lê Văn Thắng', '0000-00-00', 'Nam'),
('KT0046', 5000000, '001752630984', 'Nguyễn Thị Hà', '0000-00-00', 'Nữ'),
('KT0047', 6500000, '001809624735', 'Nguyễn Văn Đức', '0000-00-00', 'Nam'),
('KT0048', 12000000, '001245387906', 'Trần Thị Hương', '0000-00-00', 'Nữ'),
('KT0049', 14000000, '001598247630', 'Ngô Đức Thịnh', '0000-00-00', 'Nam'),
('KT0050', 5000000, '001367482509', 'Đinh Hồng Nga', '0000-00-00', 'Nữ'),
('NV0051', 6500000, '001840795623', 'Bùi Văn Anh', '0000-00-00', 'Nữ'),
('NV0052', 12000000, '001295783406', 'Nguyễn Thị Yến', '0000-00-00', 'Nữ'),
('NV0053', 14000000, '001467230598', 'Trần Văn Hoàng', '0000-00-00', 'Nam'),
('NV0054', 5000000, '001981654320', 'Vũ Thị Ngọc Anh', '0000-00-00', 'Nữ'),
('NV0055', 6500000, '001364508297', 'Phạm Văn Tâm', '0000-00-00', 'Nữ'),
('NV0056', 12000000, '001752490863', 'Lê Thị Quỳnh Nga', '0000-00-00', 'Nữ'),
('NV0057', 14000000, '001689754032', 'Nguyễn Văn Hải', '0000-00-00', 'Nam'),
('NV0058', 5000000, '001570893246', 'Đỗ Thị Thùy Linh', '0000-00-00', 'Nữ'),
('NV0059', 6500000, '001428607395', 'Ngô Văn Long', '0000-00-00', 'Nam'),
('NV0060', 12000000, '001936475820', 'Lê Thị Mai Hương', '0000-00-00', 'Nữ'),
('TCN0011', 6000000, '001473860295', 'Lê Ngọc Bích', '0000-00-00', 'Nữ'),
('TCN0012', 10000000, '001635209874', 'Phạm Trí Dũng', '0000-00-00', 'Nam'),
('TCN0013', 14000000, '001284965730', 'Nguyễn Thanh Hương', '0000-00-00', 'Nữ'),
('TCN0014', 5000000, '001695837024', 'Trần Hải Anh', '0000-00-00', 'Nữ'),
('TCN0015', 6500000, '001907486352', 'Võ Quỳnh Trang', '0000-00-00', 'Nữ'),
('TCN0016', 12000000, '001538240796', 'Đặng Hồng Vân', '0000-00-00', 'Nữ'),
('TCN0017', 14000000, '001624089573', 'Vũ Minh Tuấn', '0000-00-00', 'Nam'),
('TCN0018', 5000000, '001973052648', 'Nguyễn Hào Nho', '0000-00-00', 'Nam'),
('TCN0019', 8500000, '001820467935', 'Phan Thu Thảo', '0000-00-00', 'Nữ'),
('TCN0020', 12000000, '001305689742', 'Lê Nam Dương', '0000-00-00', 'Nam'),
('TTN0021', 6000000, '001679023485', 'Lê Hồng Phượng', '0000-00-00', 'Nữ'),
('TTN0022', 10000000, '001542398607', 'Nguyễn Đức Trí', '0000-00-00', 'Nam'),
('TTN0023', 14000000, '001896340725', 'Bùi Lan Anh', '0000-00-00', 'Nữ'),
('TTN0024', 5000000, '001257093846', 'Trần Thế Anh', '0000-00-00', 'Nam'),
('TTN0025', 6500000, '001430579682', 'Đinh Mai Linh', '0000-00-00', 'Nữ'),
('TTN0026', 12000000, '001968324507', 'Lê Tâm Anh', '0000-00-00', 'Nam'),
('TTN0027', 14000000, '001765203489', 'Nguyễn Quang Tuấn', '0000-00-00', 'Nam'),
('TTN0028', 5000000, '001502387964', 'Phạm Thị Hoa', '0000-00-00', 'Nữ'),
('TTN0029', 8500000, '001389745602', 'Võ Minh Tuân', '0000-00-00', 'Nam'),
('TTN0030', 12000000, '001640827953', 'Nguyễn Hồng Nhung', '0000-00-00', 'Nữ'),
('TV0031', 6000000, '001297503846', 'Hoàng Thị Hương', '0000-00-00', 'Nữ'),
('TV0032', 10000000, '001850274369', 'Lê Minh Quân', '0000-00-00', 'Nam'),
('TV0033', 14000000, '001964305782', 'Trương Minh Tâm', '0000-00-00', 'Nam'),
('TV0034', 5000000, '001637489205', 'Ngô Thị Kim Ngân', '0000-00-00', 'Nữ'),
('TV0035', 6500000, '001209574638', 'Đặng Quang Huy', '0000-00-00', 'Nữ'),
('TV0036', 12000000, '001587324960', 'Mai Văn Khánh', '0000-00-00', 'Nam'),
('TV0037', 14000000, '001436890257', 'Lâm Thị Ngọc Mai', '0000-00-00', 'Nữ'),
('TV0038', 5000000, '001795603482', 'Nguyễn Thanh Hà', '0000-00-00', 'Nữ'),
('TV0039', 6500000, '001265903874', 'Đoàn Hữu Toàn', '0000-00-00', 'Nam'),
('TV0040', 12000000, '001780492356', 'Bùi Thị Ngọc Trâm', '0000-00-00', 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudangky`
--

CREATE TABLE `phieudangky` (
  `MaPDK` varchar(10) NOT NULL,
  `NgayDangKy` date NOT NULL,
  `ThoiGianBatDau` datetime NOT NULL,
  `ThoiGianKetThuc` datetime NOT NULL,
  `TenTaiKhoan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudangky`
--

INSERT INTO `phieudangky` (`MaPDK`, `NgayDangKy`, `ThoiGianBatDau`, `ThoiGianKetThuc`, `TenTaiKhoan`) VALUES
('LT001', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user11'),
('LT002', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user12'),
('LT003', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user13'),
('LT004', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user14'),
('LT005', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user15'),
('LT006', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user16'),
('LT007', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user17'),
('LT008', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user18'),
('LT009', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user19'),
('LT010', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user20'),
('PS001', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user21'),
('PS002', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user22'),
('PS003', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user23'),
('PS004', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user24'),
('PS005', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user25'),
('PS006', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user26'),
('PS007', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user27'),
('PS008', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user28'),
('PS009', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user29'),
('PS010', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user24'),
('PV001', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user01'),
('PV002', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user02'),
('PV003', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user03'),
('PV004', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user04'),
('PV005', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user05'),
('PV006', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user06'),
('PV007', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user07'),
('PV008', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user08'),
('PV009', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user09'),
('PV010', '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'user10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudangkycsvc`
--

CREATE TABLE `phieudangkycsvc` (
  `MaPDK` varchar(10) NOT NULL,
  `TenCSVC` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudangkycsvc`
--

INSERT INTO `phieudangkycsvc` (`MaPDK`, `TenCSVC`) VALUES
('PV003', 'Internet'),
('PV006', 'Phòng giặt'),
('PV009', 'Phòng sấy'),
('PV008', 'Phòng tập aerobic'),
('PV002', 'Phòng tập gym'),
('PV005', 'Phòng tập yoga'),
('PV004', 'Sân bóng chuyền'),
('PV007', 'Sân bóng rổ'),
('PV001', 'Sân bóng đá'),
('PV010', 'Sân cầu lông');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudangkyluutru`
--

CREATE TABLE `phieudangkyluutru` (
  `MaPDK` varchar(10) NOT NULL,
  `LoaiPhong` varchar(50) NOT NULL,
  `TenTN` varchar(20) NOT NULL,
  `SoPhong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudangkyluutru`
--

INSERT INTO `phieudangkyluutru` (`MaPDK`, `LoaiPhong`, `TenTN`, `SoPhong`) VALUES
('LT001', 'Phòng 2', 'AH1', 1021),
('LT002', 'Phòng 4', 'AH1', 204),
('LT003', 'Phòng 4 máy lạnh', 'AH1', 1105),
('LT004', 'Phòng 6', 'AH2', 204),
('LT005', 'Phòng 8', 'AH2', 1021),
('LT006', 'Phòng 2', 'AH2', 1105),
('LT007', 'Phòng 4', 'AH2', 1106),
('LT008', 'Phòng 4 máy lạnh', 'AG3', 1001),
('LT009', 'Phòng 6', 'AG3', 1002),
('LT010', 'Phòng 8', 'AH2', 104);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudangkynoithat`
--

CREATE TABLE `phieudangkynoithat` (
  `MaPDK` varchar(10) NOT NULL,
  `LoaiPhong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudangkynoithat`
--

INSERT INTO `phieudangkynoithat` (`MaPDK`, `LoaiPhong`) VALUES
('PS001', 'Phòng 2'),
('PS002', 'Phòng 4'),
('PS003', 'Phòng 4 máy lạnh'),
('PS004', 'Phòng 6'),
('PS005', 'Phòng 8'),
('PS006', 'Phòng 2'),
('PS007', 'Phòng 4'),
('PS008', 'Phòng 4 máy lạnh'),
('PS009', 'Phòng 6'),
('PS010', 'Phòng 8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `TenTN` varchar(20) NOT NULL,
  `SoPhong` int(11) NOT NULL,
  `LoaiPhong` varchar(10) NOT NULL,
  `SucChua` int(11) NOT NULL,
  `GiaThue1Thang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`TenTN`, `SoPhong`, `LoaiPhong`, `SucChua`, `GiaThue1Thang`) VALUES
('AG3', 1001, 'DV', 4, 0),
('AG3', 1002, 'DV', 6, 0),
('AH1', 204, 'DV', 6, 0),
('AH1', 1021, 'DV', 6, 0),
('AH1', 1105, 'DV', 6, 0),
('AH2', 204, 'DV', 6, 0),
('AH2', 1021, 'DV', 6, 0),
('AH2', 1105, 'DV', 6, 0),
('AH2', 1106, 'DV', 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `CCCD` varchar(12) NOT NULL,
  `MSSV` varchar(7) NOT NULL,
  `HoVaTen` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `Truong` varchar(50) NOT NULL,
  `Khoa` varchar(50) NOT NULL,
  `SinhVienNam` int(11) NOT NULL,
  `MaBHYT` varchar(15) NOT NULL,
  `HoKhau` varchar(50) NOT NULL,
  `TenTN` varchar(20) NOT NULL,
  `SoPhong` int(11) NOT NULL,
  `TP_CCCD` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`CCCD`, `MSSV`, `HoVaTen`, `NgaySinh`, `GioiTinh`, `Truong`, `Khoa`, `SinhVienNam`, `MaBHYT`, `HoKhau`, `TenTN`, `SoPhong`, `TP_CCCD`) VALUES
('001301025380', '1952017', 'Văn Kim Ngân', '2001-04-26', 'Nữ', 'ĐH Công nghệ Thông tin, ĐHQG TP.HCM', 'Khoa học & KTTT', 3, 'SV4798223550190', '233, ấp Phong Thuận, Xã Tân Mỹ Chánh, Thành phố Mỹ', 'AG3', 1001, 'Hà Nội'),
('035201001228', '1911012', 'Nguyễn Gia Đức', '2001-03-03', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Điện - Điện tử', 3, 'SV4797424687290', '19/5 bình chuẩn 34, Phường Bình Chuẩn, THÀNH PHỐ T', 'AH1', 201, 'Hà Nam'),
('042202001511', '2115321', 'Lê Phan Quốc Vũ', '2002-04-11', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 1, 'SV4794217106049', 'Xóm 5 Đông Dũng , xã An Dũng, huyện Đức Thọ, tĩnh ', 'AH1', 204, 'Hà Tĩnh'),
('042303012902', '2114154', 'Nguyễn Thị Mai Ngân', '2003-05-28', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Quản lý Công nghiệp', 1, 'SV4794217701411', 'Thôn Cẩm Đông, Xã Cẩm Hà, Huyện Cẩm Xuyên, Hà Tĩnh', 'AG3', 1002, 'Hà Tĩnh'),
('075302017041', '2012175', 'Thái Ngọc Minh Thư', '2002-08-07', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Cơ khí', 2, 'SV4797524715078', '̣96c/3 Ấp Lộc Hòa, Xã Tây Hoà, Huyện Trảng Bom, Đồ', 'AG3', 1004, 'Đồng Nai'),
('079302023716', 'BABAIU2', 'Trần Nguyệt Vi', '2002-08-08', 'Nữ', 'ĐH Quốc tế, ĐHQG TP.HCM', 'Quản trị kinh doanh', 2, 'SV4797931970194', '26/11 Nguyễn Văn Đậu, Phường 05, Quận Phú Nhuận, H', 'AG3', 1002, 'Hồ Chí Minh'),
('082303003975', '2111028', 'Võ Thị Hồng Gấm', '2003-09-29', 'Nữ', 'ĐH Khoa học Tự nhiên, ĐHQG TP.HCM', 'Toán - Tin học', 1, 'HS4828221997845', 'Ấp 5, Xã Bình Xuân, Thị xã Gò Công, Tiền Giang', 'AG3', 1003, 'Tiền Giang'),
('082303004279', '2120032', 'Võ Thị Hồng Nhung', '2003-09-29', 'Nữ', 'ĐH Khoa học Tự nhiên, ĐHQG TP.HCM', 'Điện tử viễn thông', 1, 'HS4828221953114', 'Ấp 5, Xã Bình Xuân, Thị xã Gò Công, Tiền Giang', 'AG3', 1003, 'Tiền Giang'),
('087303011214', '2110608', 'Trần Lê Bảo Trân', '2003-01-25', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học Ứng dụng', 1, 'HS4878723535469', 'C136, tổ 48D, khóm 5, Phường 6, Thành phố Cao Lãnh', 'AG3', 1004, 'Đồng Tháp'),
('089202013750', '2011844', 'Lâm Phạm Trọng Phúc', '2002-09-02', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4798923334566', '278, tổ 6, ấp Bình Thiện, Xã Bình Thủy, Huyện Châu', 'AH1', 202, 'An Giang'),
('191920528', '2014276', 'Nguyễn Tôn Minh Quân', '2002-01-07', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4794620100949', '4/10 Võ Thị Sáu, Phường Phú Hội, Thành phố Huế, Th', 'AH1', 203, 'Thừa Thiên H'),
('191920634', '2014961', 'Vũ Hoàng Minh Tuấn', '2002-08-08', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4794620071003', '50 Nguyễn Cư Trinh, Phường Thuận Hòa, Thành phố Hu', 'AH1', 203, 'Thừa Thiên H'),
('191920860', '2014726', 'Nguyễn Phước Bảo Tiến', '2002-03-20', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4794621337543', '164 Điện Biên Phủ, Phường Trường An, Thành phố Huế', 'AH1', 203, 'Thừa Thiên H'),
('191921740', '2013391', 'Nguyễn Khánh Hưng', '2002-06-13', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4794620288682', '20/11 Quảng Tế, Phường Trường An, Thành phố Huế, T', 'AH1', 203, 'Thừa Thiên H'),
('191973789', '2014512', 'Trương Công Thành', '2002-11-02', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4794620401932', '55 Hiền Sỹ, Thị trấn Phong Điền, Huyện Phong Điền,', 'AH1', 203, 'Thừa Thiên H'),
('212468924', '2013444', 'Nguyễn Lê Khanh', '2002-01-04', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 2, 'SV4795120846722', 'đội 7, thôn Phú Châu, Xã Hành Đức, Huyện Nghĩa Hàn', 'AH1', 203, 'Quảng Ngãi'),
('215593028', '2113176', 'Lê Nguyễn Hải Đăng', '2003-08-14', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 1, 'HS4525221145653', '332 Ngô Gia Tự,phường Bình Định,thị xã An Nhơn,tỉn', 'AH1', 204, 'Bình Định'),
('215613202', '2115319', 'Lê Hoàng Anh Vũ', '2003-03-01', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Khoa học và Kỹ thuật Máy tính', 1, 'SV4795221655121', '1247 Trần Hưng Đạo, Tổ 2, Khu vực 1, Phường Đống Đ', 'AH1', 204, 'Bình Định'),
('231441838', '2014764', 'Nguyễn Thanh Tịnh', '2002-08-14', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Kỹ thuật Xây dựng', 2, 'SV4796422675255', 'thôn Hòa Tín, đường Quy Hoạch, Thị trấn Nhơn Hoà, ', 'AH1', 202, 'Gia Lai'),
('272909687', '2011720', 'Lưu Thị Minh Nguyệt', '2002-01-07', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Kỹ thuật Hóa học', 2, 'SV4797523610166', '207 đường Nguyễn Phúc Chu, Phường Trảng Dài, Thành', 'AG3', 1002, 'Đồng Nai'),
('276041233', '2011534', 'Phạm Thị Mỹ Linh', '2002-06-11', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Kỹ thuật Địa chất và Dầu khí', 2, 'SV4757523029998', 'Khu phố 2 , Phường Trảng Dài, Thành phố Biên Hòa, ', 'AG3', 1002, 'Đồng Nai'),
('301640421', '1715403', 'Võ Thị Linh Vy', '1998-01-01', 'Nữ', 'ĐH Khoa học Tự nhiên, ĐHQG TP.HCM', 'Sinh học', 5, 'SV4798023238427', 'A3G/60 Ấp Vàm Kinh, Xã Bình An, Huyện Thủ Thừa, Lo', 'AG3', 1004, 'Long An'),
('301776828', '2011886', 'Trần Thị Thúy Phượng', '2002-02-17', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Kỹ thuật Địa chất và Dầu khí', 2, 'SV4798023361087', '141, Xã Tân Phú, Huyện Đức Hòa, Long An', 'AG3', 1002, 'Long An'),
('312507287', '2011726', 'Đặng Ngô Trung Nhân', '2002-10-05', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Quản lý Công nghiệp', 2, 'SV4798222329146', '313, Ấp lợi thuận, Xã Mỹ Lợi B, Huyện Cái Bè, Tiền', 'AH1', 202, 'Tiền Giang'),
('312530418', '2114796', 'Võ Minh Thành', '2003-10-27', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Kỹ thuật Hóa học', 1, 'SV4798222766226', 'số nhà 44, ấp Thới, Xã Đông Hòa, Huyện Châu Thành,', 'AH1', 204, 'Tiền Giang'),
('366408893', '2152240', 'Nguyễn Thị Nhàn', '2003-08-08', 'Nữ', 'ĐH Công nghệ Thông tin, ĐHQG TP.HCM', 'Khoa học & KTTT', 1, 'XD2949421943465', 'võ thành văn, Xã An Thạnh Nam, Huyện Cù Lao Dung, ', 'AG3', 1003, 'Sóc Trăng'),
('371996187', '1910028', 'Trần Lan Anh', '2001-12-14', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Cơ khí', 3, 'SV4799122290326', 'Ấp Tân Điền, Xã Giục Tượng, Huyện Châu Thành, Kiên', 'AG3', 1001, 'Kiên Giang'),
('372013285', '1913902', 'Hà Ngọc Phương Lam', '2001-07-16', 'Nữ', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Quản lý Công nghiệp', 3, 'SV4799123387480', '185 Ngô Quyền, Phường Vĩnh Bảo, Thành phố Rạch Giá', 'AG3', 1001, 'Kiên Giang'),
('381887215', '2011193', 'Phan Trung Hiếu', '2002-01-02', 'Nam', 'ĐH Bách khoa, ĐHQG TP.HCM', 'Khoa Kỹ thuật Hóa học', 2, 'SV4799621925517', '162 Nguyễn Tất Thành, Khóm 1, Phường 8, Thành phố ', 'AH1', 202, 'Cà Mau');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sodienthoainv`
--

CREATE TABLE `sodienthoainv` (
  `MaNV` varchar(10) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sodienthoainv`
--

INSERT INTO `sodienthoainv` (`MaNV`, `SoDienThoai`) VALUES
('BV0001', '0912356789'),
('BV0002', '0935476128'),
('BV0003', '0102987456'),
('BV0004', '0198764503'),
('BV0005', '0978312456'),
('BV0006', '0321587946'),
('BV0007', '0907326451'),
('BV0008', '0142763985'),
('BV0009', '0309857146'),
('BV0010', '0187496235'),
('KT0041', '0145263798'),
('KT0042', '0903487261'),
('KT0043', '0192374658'),
('KT0044', '0321596847'),
('KT0045', '0985742163'),
('KT0046', '0942167853'),
('KT0047', '0963482571'),
('KT0048', '0139852476'),
('KT0049', '0912678435'),
('KT0050', '0198765342'),
('NV0051', '0309542176'),
('NV0052', '0976183452'),
('NV0053', '0183425769'),
('NV0054', '0928176354'),
('NV0055', '0145293786'),
('NV0056', '0978634251'),
('NV0057', '0362459817'),
('NV0058', '0921873456'),
('NV0059', '0137496852'),
('NV0060', '0956143278'),
('TCN0011', '0132458967'),
('TCN0012', '0923874516'),
('TCN0013', '0956243781'),
('TCN0014', '0117839546'),
('TCN0015', '0978652341'),
('TCN0016', '0915673824'),
('TCN0017', '0328145967'),
('TCN0018', '0902145873'),
('TCN0019', '0103967542'),
('TCN0020', '0371895426'),
('TTN0021', '0186429753'),
('TTN0022', '0932518647'),
('TTN0023', '0928176354'),
('TTN0024', '0145632987'),
('TTN0025', '0983415276'),
('TTN0026', '0964785132'),
('TTN0027', '0153278964'),
('TTN0028', '0312458796'),
('TTN0029', '0197648523'),
('TTN0030', '0129376548'),
('TV0031', '0975184326'),
('TV0032', '0936471582'),
('TV0033', '0102843957'),
('TV0034', '0316789425'),
('TV0035', '0925168743'),
('TV0036', '0193587426'),
('TV0037', '0369271485'),
('TV0038', '0106947538'),
('TV0039', '0915478362'),
('TV0040', '0938621574');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sodienthoaisv`
--

CREATE TABLE `sodienthoaisv` (
  `CCCD` varchar(12) NOT NULL,
  `SoDienThoai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sodienthoaisv`
--

INSERT INTO `sodienthoaisv` (`CCCD`, `SoDienThoai`) VALUES
('001301025380', ''),
('035201001228', '0387176316'),
('042202001511', '0329457146'),
('042303012902', '0932313722'),
('075302017041', '0896854788'),
('079302023716', '0355547254'),
('082303003975', '0832335690'),
('082303004279', '0834530554'),
('087303011214', '0949301762'),
('089202013750', '0965165055'),
('191920528', '0369809781'),
('191920634', '0944742387'),
('191920860', '0339085759'),
('191921740', '0945184697'),
('191973789', '0948066527'),
('212468924', '0364393418'),
('215593028', '0932183927'),
('215613202', '0935680614'),
('231441838', '0339733431'),
('272909687', '0977461708'),
('276041233', '0359580894'),
('301640421', ''),
('301776828', ''),
('312507287', '0859050646'),
('312530418', '0968000682'),
('366408893', '0376483831'),
('371996187', '0855003159'),
('372013285', ''),
('381887215', '0916211693');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoannv`
--

CREATE TABLE `taikhoannv` (
  `TenTaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `MaNV` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoannv`
--

INSERT INTO `taikhoannv` (`TenTaiKhoan`, `MatKhau`, `MaNV`) VALUES
('usernv01', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0001'),
('usernv02', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0002'),
('usernv03', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0003'),
('usernv04', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0004'),
('usernv05', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0005'),
('usernv06', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0006'),
('usernv07', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0007'),
('usernv08', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0008'),
('usernv09', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0009'),
('usernv10', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'BV0010'),
('usernv11', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0011'),
('usernv12', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0012'),
('usernv13', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0013'),
('usernv14', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0014'),
('usernv15', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0015'),
('usernv16', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0016'),
('usernv17', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0017'),
('usernv18', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0018'),
('usernv19', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0019'),
('usernv20', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TCN0020'),
('usernv21', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0021'),
('usernv22', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0022'),
('usernv23', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0023'),
('usernv24', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0024'),
('usernv25', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0025'),
('usernv26', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0026'),
('usernv27', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0027'),
('usernv28', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0028'),
('usernv29', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0029'),
('usernv30', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TTN0030'),
('usernv31', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0031'),
('usernv32', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0032'),
('usernv33', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0033'),
('usernv34', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0034'),
('usernv35', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0035'),
('usernv36', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0036'),
('usernv37', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0037'),
('usernv38', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0038'),
('usernv39', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0039'),
('usernv40', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'TV0040'),
('usernv41', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0041'),
('usernv42', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0042'),
('usernv43', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0043'),
('usernv44', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0044'),
('usernv45', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0045'),
('usernv46', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0046'),
('usernv47', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0047'),
('usernv48', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0048'),
('usernv49', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0049'),
('usernv50', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'KT0050'),
('usernv51', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0051'),
('usernv52', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0052'),
('usernv53', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0053'),
('usernv54', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0054'),
('usernv55', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0055'),
('usernv56', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0056'),
('usernv57', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0057'),
('usernv58', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0058'),
('usernv59', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0059'),
('usernv60', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', 'NV0060');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoansv`
--

CREATE TABLE `taikhoansv` (
  `TenTaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `CCCD` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoansv`
--

INSERT INTO `taikhoansv` (`TenTaiKhoan`, `MatKhau`, `CCCD`) VALUES
('user01', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '001301025380'),
('user02', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '372013285'),
('user03', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '371996187'),
('user04', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '042303012902'),
('user05', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '079302023716'),
('user06', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '301776828'),
('user07', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '276041233'),
('user08', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '272909687'),
('user09', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '082303003975'),
('user10', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '082303004279'),
('user11', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '366408893'),
('user12', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '301640421'),
('user13', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '075302017041'),
('user14', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '087303011214'),
('user15', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '035201001228'),
('user16', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '312507287'),
('user17', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '089202013750'),
('user18', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '381887215'),
('user19', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '231441838'),
('user20', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '191920528'),
('user21', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '212468924'),
('user22', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '191920860'),
('user23', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '191921740'),
('user24', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '191973789'),
('user25', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '191920634'),
('user26', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '042202001511'),
('user27', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '215613202'),
('user28', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '215593028'),
('user29', '$2a$04$c.51Eckp.p1nu1l0uwDghuZw93su/twoBn.X7CNSeZO/rhfjuU6HK', '312530418');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tapvu`
--

CREATE TABLE `tapvu` (
  `MaNV` varchar(10) NOT NULL,
  `TenTN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tapvu`
--

INSERT INTO `tapvu` (`MaNV`, `TenTN`) VALUES
('TV0031', 'A1'),
('TV0032', 'A2'),
('TV0033', 'A3'),
('TV0034', 'A4'),
('TV0035', 'A5'),
('TV0038', 'AG3'),
('TV0040', 'AG3'),
('TV0039', 'AG4'),
('TV0036', 'AH1'),
('TV0037', 'AH2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `toanha`
--

CREATE TABLE `toanha` (
  `TenTN` varchar(20) NOT NULL,
  `SoPhong` int(11) NOT NULL,
  `SucChua` int(11) NOT NULL,
  `SoTang` int(11) NOT NULL,
  `LoaiTN` varchar(10) NOT NULL,
  `TenCN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `toanha`
--

INSERT INTO `toanha` (`TenTN`, `SoPhong`, `SucChua`, `SoTang`, `LoaiTN`, `TenCN`) VALUES
('A1', 120, 720, 5, 'Nam', 'A'),
('A2', 120, 720, 5, 'Nữ', 'A'),
('A3', 120, 720, 5, 'Nam', 'A'),
('A4', 120, 720, 5, 'Nữ', 'A'),
('A5', 120, 720, 5, 'Nam', 'A'),
('AG3', 240, 1440, 10, 'Nam', 'AG'),
('AG4', 240, 1440, 10, 'Nữ', 'AG'),
('AH1', 240, 1440, 10, 'Nam', 'AH'),
('AH2', 240, 1440, 10, 'Nam', 'AH');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truongcumnha`
--

CREATE TABLE `truongcumnha` (
  `MaNV` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `NgayBatDauQuanLy` date NOT NULL,
  `TenCN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `truongcumnha`
--

INSERT INTO `truongcumnha` (`MaNV`, `Email`, `NgayBatDauQuanLy`, `TenCN`) VALUES
('TCN0011', 'LeNgocBich123@gmail.com', '2018-12-05', 'A'),
('TCN0012', 'PhamTriDung456@gmail.com', '2017-07-23', 'AG'),
('TCN0013', 'NguyenThanhHuong789@gmail.com', '2019-09-14', 'AH'),
('TCN0014', 'TranHaiAnh012@gmail.com', '2018-02-09', 'AB'),
('TCN0015', 'VoQuynhTrang345@gmail.com', '2017-04-30', 'B'),
('TCN0016', 'DangHongVan678@gmail.com', '2018-08-17', 'C'),
('TCN0017', 'VuMinhTuan901@gmail.com', '2017-11-02', 'D'),
('TCN0018', 'NguyenHaoNho234@gmail.com', '2019-01-21', 'E'),
('TCN0019', 'PhanThuThao567@gmail.com', '2017-05-06', 'F'),
('TCN0020', 'LeNamDuong890@gmail.com', '2019-08-24', 'G');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `truongtoanha`
--

CREATE TABLE `truongtoanha` (
  `MaNV` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `TenTN` varchar(20) NOT NULL,
  `NgayBatDauQuanLy` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `truongtoanha`
--

INSERT INTO `truongtoanha` (`MaNV`, `Email`, `TenTN`, `NgayBatDauQuanLy`) VALUES
('TTN0021', 'hongphuong789@gmail.com', 'A1', '2017-08-15'),
('TTN0022', 'ductri456@gmail.com', 'A2', '2018-06-02'),
('TTN0023', 'lanh321@gmail.com', 'A3', '2017-12-21'),
('TTN0024', 'theanh987@gmail.com', 'A4', '2019-03-09'),
('TTN0025', 'mailinh654@gmail.com', 'A5', '2018-10-28'),
('TTN0026', 'tamanh789@gmail.com', 'AH1', '2017-02-14'),
('TTN0027', 'quangtuan123@gmail.com', 'AH2', '2019-09-07'),
('TTN0028', 'thihoa456@gmail.com', 'AG3', '2018-04-30'),
('TTN0029', 'minhtuan789@gmail.com', 'AG4', '2017-11-12'),
('TTN0030', 'hongnhung321@gmail.com', 'AG3', '2019-07-25');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `baove`
--
ALTER TABLE `baove`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `FK_TenCNBV` (`TenCN`);

--
-- Chỉ mục cho bảng `cosovatchat`
--
ALTER TABLE `cosovatchat`
  ADD PRIMARY KEY (`TenCSVC`),
  ADD KEY `FK_TenCNCSVC` (`TenCN`),
  ADD KEY `FK_MaNVCSVC` (`MaNV`);

--
-- Chỉ mục cho bảng `cumnha`
--
ALTER TABLE `cumnha`
  ADD PRIMARY KEY (`TenCN`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `hoadoncsvc`
--
ALTER TABLE `hoadoncsvc`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FK_PDKCSVC` (`MaPDK`),
  ADD KEY `FK_TenCSVCHD` (`TenCSVC`);

--
-- Chỉ mục cho bảng `hoadondiennuoc`
--
ALTER TABLE `hoadondiennuoc`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FK_TenTaiKhoanDN` (`TenTaiKhoan`);

--
-- Chỉ mục cho bảng `hoadonluutru`
--
ALTER TABLE `hoadonluutru`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FK_MaPDKLTHD` (`MaPDK`);

--
-- Chỉ mục cho bảng `hoadonnoithat`
--
ALTER TABLE `hoadonnoithat`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FK_PDKNT` (`MaPDK`);

--
-- Chỉ mục cho bảng `hoadonthuembdv`
--
ALTER TABLE `hoadonthuembdv`
  ADD PRIMARY KEY (`MaHD`,`MaMB`),
  ADD KEY `FK_MaHopDongMBDV` (`MaHopDong`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`MaHopDong`),
  ADD UNIQUE KEY `CCCD_UNIQUE` (`CCCD`),
  ADD KEY `FK_MaMBDV` (`MaMB`);

--
-- Chỉ mục cho bảng `kythuat`
--
ALTER TABLE `kythuat`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `FK_TenCNKT` (`TenCN`);

--
-- Chỉ mục cho bảng `matbangdichvu`
--
ALTER TABLE `matbangdichvu`
  ADD PRIMARY KEY (`MaMB`),
  ADD KEY `FK_TenCNMBDV` (`TenCN`),
  ADD KEY `FK_MaNVMBDV` (`MaNV`);

--
-- Chỉ mục cho bảng `nguoithan`
--
ALTER TABLE `nguoithan`
  ADD PRIMARY KEY (`SV_CCCD`);

--
-- Chỉ mục cho bảng `nguoithuematbang`
--
ALTER TABLE `nguoithuematbang`
  ADD PRIMARY KEY (`CCCD`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD UNIQUE KEY `CCCD_UNIQUE` (`CCCD`);

--
-- Chỉ mục cho bảng `phieudangky`
--
ALTER TABLE `phieudangky`
  ADD PRIMARY KEY (`MaPDK`),
  ADD KEY `FK_TenTaiKhoan` (`TenTaiKhoan`);

--
-- Chỉ mục cho bảng `phieudangkycsvc`
--
ALTER TABLE `phieudangkycsvc`
  ADD PRIMARY KEY (`MaPDK`),
  ADD KEY `FK_TenCSVC` (`TenCSVC`);

--
-- Chỉ mục cho bảng `phieudangkyluutru`
--
ALTER TABLE `phieudangkyluutru`
  ADD PRIMARY KEY (`MaPDK`);

--
-- Chỉ mục cho bảng `phieudangkynoithat`
--
ALTER TABLE `phieudangkynoithat`
  ADD PRIMARY KEY (`MaPDK`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`TenTN`,`SoPhong`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`CCCD`),
  ADD KEY `FK_TenTNSV` (`TenTN`);

--
-- Chỉ mục cho bảng `sodienthoainv`
--
ALTER TABLE `sodienthoainv`
  ADD PRIMARY KEY (`MaNV`,`SoDienThoai`);

--
-- Chỉ mục cho bảng `sodienthoaisv`
--
ALTER TABLE `sodienthoaisv`
  ADD PRIMARY KEY (`CCCD`);

--
-- Chỉ mục cho bảng `taikhoannv`
--
ALTER TABLE `taikhoannv`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD KEY `FK_MaNVTK` (`MaNV`);

--
-- Chỉ mục cho bảng `taikhoansv`
--
ALTER TABLE `taikhoansv`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD UNIQUE KEY `CCCD_UNIQUE` (`CCCD`);

--
-- Chỉ mục cho bảng `tapvu`
--
ALTER TABLE `tapvu`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `FK_TenTNTV` (`TenTN`);

--
-- Chỉ mục cho bảng `toanha`
--
ALTER TABLE `toanha`
  ADD PRIMARY KEY (`TenTN`),
  ADD KEY `FK_TenCNTN` (`TenCN`);

--
-- Chỉ mục cho bảng `truongcumnha`
--
ALTER TABLE `truongcumnha`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `FK_TenCNTCN` (`TenCN`);

--
-- Chỉ mục cho bảng `truongtoanha`
--
ALTER TABLE `truongtoanha`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `FK_TenTNTTN` (`TenTN`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baove`
--
ALTER TABLE `baove`
  ADD CONSTRAINT `FK_MaNVBV` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenCNBV` FOREIGN KEY (`TenCN`) REFERENCES `cumnha` (`TenCN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cosovatchat`
--
ALTER TABLE `cosovatchat`
  ADD CONSTRAINT `FK_MaNVCSVC` FOREIGN KEY (`MaNV`) REFERENCES `truongcumnha` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenCNCSVC` FOREIGN KEY (`TenCN`) REFERENCES `cumnha` (`TenCN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadoncsvc`
--
ALTER TABLE `hoadoncsvc`
  ADD CONSTRAINT `FK_HoaDonCSVC` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PDKCSVC` FOREIGN KEY (`MaPDK`) REFERENCES `phieudangkycsvc` (`MaPDK`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_TenCSVCHD` FOREIGN KEY (`TenCSVC`) REFERENCES `cosovatchat` (`TenCSVC`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadondiennuoc`
--
ALTER TABLE `hoadondiennuoc`
  ADD CONSTRAINT `FK_MaHDDN` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenTaiKhoanDN` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `taikhoansv` (`TenTaiKhoan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadonluutru`
--
ALTER TABLE `hoadonluutru`
  ADD CONSTRAINT `FK_MaHDLT` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MaPDKLTHD` FOREIGN KEY (`MaPDK`) REFERENCES `phieudangkyluutru` (`MaPDK`);

--
-- Các ràng buộc cho bảng `hoadonnoithat`
--
ALTER TABLE `hoadonnoithat`
  ADD CONSTRAINT `FK_MaHDNT` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_PDKNT` FOREIGN KEY (`MaPDK`) REFERENCES `phieudangkynoithat` (`MaPDK`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `hoadonthuembdv`
--
ALTER TABLE `hoadonthuembdv`
  ADD CONSTRAINT `FK_MaHDMBDV` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MaHopDongMBDV` FOREIGN KEY (`MaHopDong`) REFERENCES `hopdong` (`MaHopDong`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `FK_CCCD` FOREIGN KEY (`CCCD`) REFERENCES `nguoithuematbang` (`CCCD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MaMBDV` FOREIGN KEY (`MaMB`) REFERENCES `matbangdichvu` (`MaMB`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `kythuat`
--
ALTER TABLE `kythuat`
  ADD CONSTRAINT `FK_MaNVKT` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenCNKT` FOREIGN KEY (`TenCN`) REFERENCES `cumnha` (`TenCN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `matbangdichvu`
--
ALTER TABLE `matbangdichvu`
  ADD CONSTRAINT `FK_MaNVMBDV` FOREIGN KEY (`MaNV`) REFERENCES `truongcumnha` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenCNMBDV` FOREIGN KEY (`TenCN`) REFERENCES `cumnha` (`TenCN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoithan`
--
ALTER TABLE `nguoithan`
  ADD CONSTRAINT `FK_SVCCCD` FOREIGN KEY (`SV_CCCD`) REFERENCES `sinhvien` (`CCCD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieudangky`
--
ALTER TABLE `phieudangky`
  ADD CONSTRAINT `FK_TenTaiKhoan` FOREIGN KEY (`TenTaiKhoan`) REFERENCES `taikhoansv` (`TenTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieudangkycsvc`
--
ALTER TABLE `phieudangkycsvc`
  ADD CONSTRAINT `FK_MaPDKCSVC` FOREIGN KEY (`MaPDK`) REFERENCES `phieudangky` (`MaPDK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenCSVC` FOREIGN KEY (`TenCSVC`) REFERENCES `cosovatchat` (`TenCSVC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `phieudangkyluutru`
--
ALTER TABLE `phieudangkyluutru`
  ADD CONSTRAINT `FK_MaPDKLT` FOREIGN KEY (`MaPDK`) REFERENCES `phieudangky` (`MaPDK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phieudangkynoithat`
--
ALTER TABLE `phieudangkynoithat`
  ADD CONSTRAINT `FK_MaPDKNT` FOREIGN KEY (`MaPDK`) REFERENCES `phieudangky` (`MaPDK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_TenTN` FOREIGN KEY (`TenTN`) REFERENCES `toanha` (`TenTN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `FK_TenTNSV` FOREIGN KEY (`TenTN`) REFERENCES `phong` (`TenTN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sodienthoainv`
--
ALTER TABLE `sodienthoainv`
  ADD CONSTRAINT `FK_MaNVSDT` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sodienthoaisv`
--
ALTER TABLE `sodienthoaisv`
  ADD CONSTRAINT `FK_CCCDSDT` FOREIGN KEY (`CCCD`) REFERENCES `sinhvien` (`CCCD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `taikhoannv`
--
ALTER TABLE `taikhoannv`
  ADD CONSTRAINT `FK_MaNVTK` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `taikhoansv`
--
ALTER TABLE `taikhoansv`
  ADD CONSTRAINT `FK_CCCDTK` FOREIGN KEY (`CCCD`) REFERENCES `sinhvien` (`CCCD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tapvu`
--
ALTER TABLE `tapvu`
  ADD CONSTRAINT `FK_MaNVTV` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenTNTV` FOREIGN KEY (`TenTN`) REFERENCES `toanha` (`TenTN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `toanha`
--
ALTER TABLE `toanha`
  ADD CONSTRAINT `FK_TenCNTN` FOREIGN KEY (`TenCN`) REFERENCES `cumnha` (`TenCN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `truongcumnha`
--
ALTER TABLE `truongcumnha`
  ADD CONSTRAINT `FK_MaNVTCN` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenCNTCN` FOREIGN KEY (`TenCN`) REFERENCES `cumnha` (`TenCN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `truongtoanha`
--
ALTER TABLE `truongtoanha`
  ADD CONSTRAINT `FK_MaNVTTN` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TenTNTTN` FOREIGN KEY (`TenTN`) REFERENCES `toanha` (`TenTN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
