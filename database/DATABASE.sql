-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 08, 2019 lúc 05:55 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tour`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banggiadichvu`
--

CREATE TABLE `banggiadichvu` (
  `MaGiaDV` int(11) NOT NULL,
  `TenDV` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Gia` decimal(10,0) DEFAULT NULL,
  `GiaTE` decimal(10,0) DEFAULT '0',
  `KhoiHanh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DiemDen` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `NgayBay` date DEFAULT NULL,
  `GioBay` time DEFAULT NULL,
  `MaDoiTac` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `banggiadichvu`
--

INSERT INTO `banggiadichvu` (`MaGiaDV`, `TenDV`, `Gia`, `GiaTE`, `KhoiHanh`, `DiemDen`, `NgayBay`, `GioBay`, `MaDoiTac`) VALUES
(1, 'Ăn Sáng', '30000', '15000', NULL, NULL, NULL, NULL, 2),
(2, 'Ăn Trưa', '120000', '90000', NULL, NULL, NULL, NULL, 2),
(3, 'Ăn Tối', '130000', '100000', NULL, NULL, NULL, NULL, 2),
(8, 'VN468', '680000', '0', 'DAD', 'SGN', '2019-07-04', '07:15:00', 5),
(9, 'VN769', '730000', '0', 'SGN', 'DAD', '2019-06-29', '07:30:00', 5),
(18, 'Vé Cáp Treo', '600000', '300000', NULL, NULL, NULL, NULL, 10),
(19, 'Xe 35 Chỗ', '2500000', NULL, NULL, NULL, NULL, NULL, 11),
(20, 'Xe 29 Chỗ', '2000000', NULL, NULL, NULL, NULL, NULL, 11),
(21, 'Xe 16 Chỗ', '1600000', NULL, NULL, NULL, NULL, NULL, 11),
(22, 'Phòng Đơn', '500000', NULL, NULL, NULL, NULL, NULL, 16),
(23, 'Phòng Đôi', '800000', NULL, NULL, NULL, NULL, NULL, 16),
(26, 'Phòng Tripple', '1000000', NULL, NULL, NULL, NULL, NULL, 16),
(28, 'VN687', '800000', '0', 'DAD', 'SGN', '2019-06-30', '05:00:00', 5),
(35, 'VN897', '480000', '0', 'BMV', 'SGN', '2019-06-30', '08:00:00', 5),
(36, 'VN985', '490000', '0', 'SGN', 'BMV', '2019-06-29', '08:15:00', 5),
(37, 'VN467', '890000', '0', 'SGN', 'DAD', '2019-06-18', '08:00:00', 5),
(38, 'VN863', '940000', '0', 'SGN', 'DAD', '2019-06-17', '09:00:00', 5),
(39, 'VN460', '930000', '0', 'SGN', 'DAD', '2019-05-19', '08:10:00', 5),
(40, 'VN893', '970000', '0', 'SGN', 'DAD', '2019-06-16', '08:20:00', 5),
(41, 'VN758', '830000', '0', 'SGN', 'DAD', '2019-06-20', '09:00:00', 5),
(42, 'VN758', '860000', '0', 'SGN', 'DAD', '2019-06-21', '08:05:00', 5),
(43, 'VN938', '870000', '0', 'SGN', 'DAD', '2019-06-22', '08:30:00', 5),
(44, 'VN974', '890000', '0', 'SGN', 'DAD', '2019-06-23', '09:00:00', 5),
(45, 'VN875', '890000', '0', 'SGN', 'DAD', '2019-06-24', '08:20:00', 5),
(46, 'VN758', '850000', '0', 'SGN', 'DAD', '2019-06-25', '08:00:00', 5),
(47, 'VN756', '970000', '0', 'DAD', 'SGN', '2019-07-05', '16:00:00', 5),
(48, 'VN948', '970000', '0', 'DAD', 'SGN', '2019-06-26', '19:05:00', 5),
(49, 'VN837', '820000', '0', 'DAD', 'SGN', '2019-06-18', '19:00:00', 5),
(50, 'VN874', '830000', '0', 'DAD', 'SGN', '2019-07-01', '18:10:00', 5),
(51, 'VN645', '790000', '0', 'DAD', 'SGN', '2019-06-20', '19:00:00', 5),
(52, 'VN638', '780000', '0', 'DAD', 'SGN', '2019-07-02', '20:10:00', 5),
(53, 'VN981', '790000', '0', 'DAD', 'SGN', '2019-06-22', '19:05:00', 5),
(54, 'VN874', '940000', '0', 'DAD', 'SGN', '2019-06-23', '22:00:00', 5),
(55, 'VN853', '1800000', '0', 'SGN', 'HAN', '2019-06-16', '08:00:00', 5),
(56, 'VJ983', '1700000', '0', 'SGN', 'DAD', '2019-06-28', '08:30:00', 7),
(57, 'VN823', '1700000', '0', 'HAN', 'SGN', '2019-06-19', '19:00:00', 5),
(58, 'VJ839', '1600000', '0', 'HAN', 'SGN', '2019-06-19', '17:00:00', 7),
(59, 'VJ873', '670000', '0', 'DAD', 'SGN', '2019-05-03', '19:00:00', 7),
(60, 'Ăn Trưa', '180000', '120000', NULL, NULL, NULL, NULL, 17),
(61, 'Ăn Tối', '210000', '150000', NULL, NULL, NULL, NULL, 17),
(62, 'Phòng Đơn', '450000', NULL, NULL, NULL, NULL, NULL, 18),
(63, 'Phòng Đôi', '700000', NULL, NULL, NULL, NULL, NULL, 18),
(64, 'Phòng Triple', '11000000', NULL, NULL, NULL, NULL, NULL, 18),
(65, 'Phòng Đơn', '530000', NULL, NULL, NULL, NULL, NULL, 19),
(66, 'Phòng Đôi', '740000', NULL, NULL, NULL, NULL, NULL, 19),
(67, 'Phòng Triple', '1200000', NULL, NULL, NULL, NULL, NULL, 19),
(68, 'Phòng Đơn', '450000', NULL, NULL, NULL, NULL, NULL, 20),
(69, 'Phòng Đôi', '740000', NULL, NULL, NULL, NULL, NULL, 20),
(70, 'Phòng Triple', '1250000', NULL, NULL, NULL, NULL, NULL, 20),
(71, 'Phòng Đơn', '380000', NULL, NULL, NULL, NULL, NULL, 21),
(72, 'Phòng Đôi', '560000', NULL, NULL, NULL, NULL, NULL, 21),
(73, 'Phòng Triple', '950000', NULL, NULL, NULL, NULL, NULL, 21),
(74, 'Phòng Đơn', '450000', NULL, NULL, NULL, NULL, NULL, 22),
(75, 'Phòng Đôi', '950000', NULL, NULL, NULL, NULL, NULL, 22),
(76, 'Phòng Triple', '1400000', NULL, NULL, NULL, NULL, NULL, 22),
(77, 'Ăn Sáng', '25000', '15000', NULL, NULL, NULL, NULL, 23),
(78, 'Ăn Trưa', '130000', '80000', NULL, NULL, NULL, NULL, 23),
(79, 'Ăn Tối', '150000', '100000', NULL, NULL, NULL, NULL, 23),
(80, 'Ăn Sáng', '35000', '20000', NULL, NULL, NULL, NULL, 24),
(81, 'Ăn Trưa', '150000', '120000', NULL, NULL, NULL, NULL, 24),
(82, 'Ăn Tối', '180000', '120000', NULL, NULL, NULL, NULL, 24),
(83, 'Phòng Đơn', '240000', NULL, NULL, NULL, NULL, NULL, 25),
(84, 'Phòng Đôi', '310000', NULL, NULL, NULL, NULL, NULL, 25),
(85, 'Phòng Triple', '400000', NULL, NULL, NULL, NULL, NULL, 25),
(86, 'Ăn Sáng', '20000', '10000', NULL, NULL, NULL, NULL, 26),
(87, 'Ăn Trưa', '120000', '80000', NULL, NULL, NULL, NULL, 26),
(88, 'Ăn Tối', '150000', '100000', NULL, NULL, NULL, NULL, 26),
(89, 'Phòng Đơn', '390000', NULL, NULL, NULL, NULL, NULL, 27),
(90, 'Phòng Đôi', '680000', NULL, NULL, NULL, NULL, NULL, 27),
(91, 'Phòng Triple', '1050000', NULL, NULL, NULL, NULL, NULL, 27),
(92, 'Phòng Đơn', '400000', NULL, NULL, NULL, NULL, NULL, 28),
(93, 'Phòng Đôi', '700000', NULL, NULL, NULL, NULL, NULL, 28),
(94, 'Phòng Triple', '1000000', NULL, NULL, NULL, NULL, NULL, 28),
(95, 'Phòng Đơn', '360000', NULL, NULL, NULL, NULL, NULL, 29),
(96, 'Phòng Đôi', '620000', NULL, NULL, NULL, NULL, NULL, 29),
(97, 'Phòng Triple', '900000', NULL, NULL, NULL, NULL, NULL, 29),
(98, 'Phòng Đơn', '470000', NULL, NULL, NULL, NULL, NULL, 30),
(99, 'Phòng Đôi', '760000', NULL, NULL, NULL, NULL, NULL, 30),
(100, 'Phòng Triple', '1230000', NULL, NULL, NULL, NULL, NULL, 30),
(101, 'Phòng Đơn', '390000', NULL, NULL, NULL, NULL, NULL, 31),
(102, 'Phòng Đôi', '700000', NULL, NULL, NULL, NULL, NULL, 31),
(103, 'Phòng Triple', '1000000', NULL, NULL, NULL, NULL, NULL, 31),
(104, 'Phòng Đơn', '420000', NULL, NULL, NULL, NULL, NULL, 32),
(105, 'Phòng Đôi', '750000', NULL, NULL, NULL, NULL, NULL, 32),
(106, 'Phòng Triple', '11000000', NULL, NULL, NULL, NULL, NULL, 32),
(107, 'Phòng Đơn', '450000', NULL, NULL, NULL, NULL, NULL, 33),
(108, 'Phòng Đôi', '790000', NULL, NULL, NULL, NULL, NULL, 33),
(109, 'Phòng Triple', '1200000', NULL, NULL, NULL, NULL, NULL, 33),
(110, 'Phòng Đơn', '290000', NULL, NULL, NULL, NULL, NULL, 34),
(111, 'Phòng Đôi', '460000', NULL, NULL, NULL, NULL, NULL, 34),
(112, 'Phòng Triple', '750000', NULL, NULL, NULL, NULL, NULL, 34),
(113, 'Phòng Đơn', '370000', NULL, NULL, NULL, NULL, NULL, 35),
(114, 'Phòng Đôi', '640000', NULL, NULL, NULL, NULL, NULL, 35),
(115, 'Phòng Triple', '1000000', NULL, NULL, NULL, NULL, NULL, 35),
(116, 'Phòng Đơn', '390000', NULL, NULL, NULL, NULL, NULL, 36),
(117, 'Phòng Đôi', '700000', NULL, NULL, NULL, NULL, NULL, 36),
(118, 'Phòng Triple', '1000000', NULL, NULL, NULL, NULL, NULL, 36),
(119, 'Phòng Đơn', '430000', NULL, NULL, NULL, NULL, NULL, 37),
(120, 'Phòng Đôi', '780000', NULL, NULL, NULL, NULL, NULL, 37),
(121, 'Phòng Triple', '1280000', NULL, NULL, NULL, NULL, NULL, 37),
(122, 'Phòng Đơn', '510000', NULL, NULL, NULL, NULL, NULL, 38),
(123, 'Phòng Đôi', '890000', NULL, NULL, NULL, NULL, NULL, 38),
(124, 'Phòng Triple', '1360000', NULL, NULL, NULL, NULL, NULL, 38),
(125, 'Phòng Đơn', '430000', NULL, NULL, NULL, NULL, NULL, 39),
(126, 'Phòng Đôi', '780000', NULL, NULL, NULL, NULL, NULL, 39),
(127, 'Phòng Triple', '1000000', NULL, NULL, NULL, NULL, NULL, 39),
(128, 'Phòng Đơn', '540000', NULL, NULL, NULL, NULL, NULL, 40),
(129, 'Phòng Đôi', '900000', NULL, NULL, NULL, NULL, NULL, 40),
(130, 'Phòng Triple', '1350000', NULL, NULL, NULL, NULL, NULL, 40),
(131, 'Phòng Đơn', '780000', NULL, NULL, NULL, NULL, NULL, 41),
(132, 'Phòng Đôi', '1560000', NULL, NULL, NULL, NULL, NULL, 41),
(133, 'Phòng Triple', '2100000', NULL, NULL, NULL, NULL, NULL, 41),
(134, 'Ăn Sáng', '27000', '150000', NULL, NULL, NULL, NULL, 42),
(135, 'Ăn Trưa', '150000', '100000', NULL, NULL, NULL, NULL, 42),
(136, 'Ăn Tối', '180000', '130000', NULL, NULL, NULL, NULL, 42),
(137, 'Ăn Sáng', '30000', '150000', NULL, NULL, NULL, NULL, 43),
(138, 'Ăn Trưa', '140000', '100000', NULL, NULL, NULL, NULL, 43),
(139, 'Ăn Tối', '180000', '120000', NULL, NULL, NULL, NULL, 43),
(140, 'Ăn Sáng', '45000', '30000', NULL, NULL, NULL, NULL, 44),
(141, 'Ăn Trưa', '150000', '130000', NULL, NULL, NULL, NULL, 44),
(142, 'Ăn Tối', '200000', '150000', NULL, NULL, NULL, NULL, 44),
(143, 'Ăn Sáng', '25000', '15000', NULL, NULL, NULL, NULL, 45),
(144, 'Ăn Trưa', '160000', '100000', NULL, NULL, NULL, NULL, 45),
(145, 'Ăn Tối', '190000', '130000', NULL, NULL, NULL, NULL, 45),
(146, 'Ăn Sáng', '25000', '15000', NULL, NULL, NULL, NULL, 46),
(147, 'Ăn Trưa', '140000', '100000', NULL, NULL, NULL, NULL, 46),
(148, 'Ăn Tối', '170000', '130000', NULL, NULL, NULL, NULL, 46),
(149, 'Ăn Sáng', '30000', '20000', NULL, NULL, NULL, NULL, 47),
(150, 'Ăn Trưa', '150000', '120000', NULL, NULL, NULL, NULL, 47),
(151, 'Ăn Tối', '180000', '140000', NULL, NULL, NULL, NULL, 47),
(152, 'Ăn Sáng', '30000', '200000', NULL, NULL, NULL, NULL, 48),
(153, 'Ăn Trưa', '150000', '100000', NULL, NULL, NULL, NULL, 48),
(154, 'Ăn Tối', '190000', '140000', NULL, NULL, NULL, NULL, 48),
(155, 'Ăn Trưa', '150000', '120000', NULL, NULL, NULL, NULL, 49),
(156, 'Ăn Tối', '190000', '150000', NULL, NULL, NULL, NULL, 49),
(157, 'Xe 16 Chỗ', '800000', NULL, NULL, NULL, NULL, NULL, 50),
(158, 'Xe 24 Chỗ', '1100000', NULL, NULL, NULL, NULL, NULL, 50),
(159, 'Xe 30 Chỗ', '1500000', NULL, NULL, NULL, NULL, NULL, 50),
(160, 'Xe 35 Chỗ', '2000000', NULL, NULL, NULL, NULL, NULL, 50),
(161, 'Xe 45 Chỗ', '2700000', NULL, NULL, NULL, NULL, NULL, 50),
(162, 'Xe Giường Nằm', '3200000', NULL, NULL, NULL, NULL, NULL, 50),
(163, 'Xe 16 Chỗ', '1100000', NULL, NULL, NULL, NULL, NULL, 51),
(164, 'Xe 30 Chỗ', '1500000', NULL, NULL, NULL, NULL, NULL, 51),
(165, 'Xe 35 Chỗ', '2100000', NULL, NULL, NULL, NULL, NULL, 51),
(166, 'Xe 45 Chỗ', '2900000', NULL, NULL, NULL, NULL, NULL, 51),
(167, 'Xe Giường Nằm', '3600000', NULL, NULL, NULL, NULL, NULL, 51),
(168, 'VJ986', '1200000', '0', 'SGN', 'HAN', '2019-06-29', '07:00:00', 7),
(169, 'VJ873', '1200000', '0', 'HAN', 'SGN', '2019-07-03', '12:00:00', 7),
(170, 'VJ994', '1250000', '0', 'SGN', 'HAN', '2019-06-26', '10:00:00', 7),
(171, 'VJ867', '1300000', '0', 'HAN', 'SGN', '2019-06-30', '13:00:00', 7),
(172, 'VJ863', '1400000', '0', 'SGN', 'HAN', '2019-06-19', '09:00:00', 7),
(173, 'VJ876', '1370000', '0', 'HAN', 'SGN', '2019-06-23', '16:00:00', 7),
(174, 'Vé Cáp Treo', '700000', '500000', NULL, NULL, NULL, NULL, 52),
(175, 'Vé Tàu Hỏa Leo Núi', '70000', '50000', NULL, NULL, NULL, NULL, 52),
(176, 'VJ983', '1549000', '0', 'SGN', 'HAN', '2019-07-06', '08:00:00', 7),
(177, 'VJ989', '1480000', '0', 'HAN', 'SGN', '2019-07-10', '15:00:00', 7),
(178, 'VN839', '1900000', '0', 'SGN', 'HAN', '2019-07-13', '11:00:00', 5),
(179, 'VN971', '2100000', '0', 'HAN', 'SGN', '2019-07-17', '16:00:00', 5),
(180, 'VJ954', '1700000', '0', 'SGN', 'HAN', '2019-07-20', '08:00:00', 7),
(181, 'VJ849', '1800000', '0', 'HAN', 'SGN', '2019-07-24', '16:00:00', 7),
(182, 'Dịch Vụ Tắm Khoáng Nóng', '220000', '150000', NULL, NULL, NULL, NULL, 53),
(183, 'Vé Tham Quan Đảo Khỉ', '120000', '80000', NULL, NULL, NULL, NULL, 53),
(184, 'Vé Cáp Treo Khứ Hồi', '180000', '90000', NULL, NULL, NULL, NULL, 54),
(185, 'Vé Cáp Treo Chiều Lên', '120000', '60000', NULL, NULL, NULL, NULL, 54),
(186, 'Vé Cáp Treo Chiều Xuống', '100000', '50000', NULL, NULL, NULL, NULL, 54),
(187, 'Xe 16 Chỗ', '1000000', NULL, NULL, NULL, NULL, NULL, 55),
(188, 'Xe 24 Chỗ', '1300000', NULL, NULL, NULL, NULL, NULL, 55),
(189, 'Xe 30 Chỗ', '2100000', NULL, NULL, NULL, NULL, NULL, 55),
(190, 'Xe 45 Chỗ', '3500000', NULL, NULL, NULL, NULL, NULL, 55),
(191, 'VN873', '690000', '0', 'SGN', 'PQC', '2019-06-30', '08:00:00', 5),
(192, 'VN872', '750000', '0', 'PQC', 'SGN', '2019-07-02', '17:00:00', 5),
(193, 'VJ864', '910000', '0', 'DAD', 'SGN', '2019-06-25', '17:00:00', 7),
(194, 'Vé Show Thực Cảnh Hội An', '600000', '300000', NULL, NULL, NULL, NULL, 56),
(195, 'Vé Tham Quan 3 Tuyến (HC -MM- KĐ )', '280000', '55000', NULL, NULL, NULL, NULL, 57),
(196, 'Vé Tham Quan 4 Tuyến (HC -MM-TD- KĐ )', '360000', '70000', NULL, NULL, NULL, NULL, 57),
(197, 'Vé Tham Quan', '150000', '100000', NULL, NULL, NULL, NULL, 58),
(198, 'Vé Trải Nghiệm', '350000', '175000', NULL, NULL, NULL, NULL, 59),
(199, 'Vé Tham Quan Khu Phố Cổ', '80000', '50000', NULL, NULL, NULL, NULL, 60),
(200, 'Vé Tham Quan Làng Gốm Thanh Hà', '35000', '15000', NULL, NULL, NULL, NULL, 60);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `MaBlog` int(10) NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TomTat` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `HinhAnh` longtext COLLATE utf8mb4_vietnamese_ci,
  `NoiDung` longtext COLLATE utf8mb4_vietnamese_ci,
  `NgayPost` date DEFAULT NULL,
  `TrangThai` int(1) DEFAULT '0',
  `MaNV` int(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`MaBlog`, `TieuDe`, `TomTat`, `HinhAnh`, `NoiDung`, `NgayPost`, `TrangThai`, `MaNV`) VALUES
(4, 'Swiss Belresort – Cả một trời Âu ngay giữa lòng Đà Lạt', 'Ngay khi bạn nghĩ rằng Đà Lạt không còn có thể lãng mạn hơn được nữa, thì cũng là lúc bạn phát hiện ra rằng mình đã lầm to! Đến với Swiss Belresort, bạn sẽ đắm chìm trong khung cảnh trời Âu cùng view đồi núi đẹp không tưởng – một resort Đà Lạt lý tưởng cho những ngày đi trốn “thế giới tàn nhẫn” ngoài kia nhé!', '2FSk_swiss-belresort-22.jpg', '<h2><strong>1. L&acirc;u đ&agrave;i giữa n&uacute;i đồi</strong></h2>\r\n\r\n<p>Với phong c&aacute;ch kiến tr&uacute;c miền qu&ecirc; Anh &ndash; Ph&aacute;p (Anglo-Normand), rất nhiều du kh&aacute;ch đ&atilde; thừa nhận rằng bản th&acirc;n &ldquo;ng&atilde; v&agrave;o t&igrave;nh y&ecirc;u&rdquo; với Swiss Belresort từ gi&acirc;y ph&uacute;t đầu ti&ecirc;n đặt ch&acirc;n đến đ&acirc;y. Tọa lạc ở vị tr&iacute; kh&aacute; xa trung t&acirc;m th&agrave;nh phố, bao quanh l&agrave; đồi n&uacute;i v&agrave; hướng thẳng ra hồ Tuyền L&acirc;m thơ mộng, kiến tr&uacute;c ho&agrave;nh tr&aacute;ng của resort n&agrave;y kết hợp với kh&iacute; trời se lạnh sẽ đưa bạn v&agrave;o một thi&ecirc;n đường nghỉ dưỡng kh&ocirc;ng ch&ecirc; v&agrave;o đ&acirc;u được.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-30.jpg\" style=\"height:426px; width:960px\" /></p>\r\n\r\n<p>Được bao quanh bởi c&aacute;c lớp đồi xanh trải d&agrave;i đến ng&uacute;t tầm mắt, Swiss Belresort Tuyền L&acirc;m c&oacute; thể n&oacute;i l&agrave; một trong những khu nghỉ dưỡng sở hữu cảnh quan bậc nhất v&agrave; đặc biệt l&agrave; một bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-14_1.jpg\" style=\"height:547px; width:960px\" /></p>\r\n\r\n<p>Ai l&agrave; những &ldquo;tay nghiện Đ&agrave; Lạt&rdquo; th&igrave; kh&ocirc;ng n&ecirc;n bỏ qua resort sang chảnh n&agrave;y, bởi lẽ c&aacute;c ph&ograve;ng nghỉ tại đ&acirc;y được thiết kế sao cho kh&aacute;ch lưu tr&uacute; c&oacute; thể thu hết v&agrave;o tầm mắt cảnh vật l&atilde;ng mạn v&agrave; thơ mộng như tranh vẽ của xứ sở ng&agrave;n hoa.&nbsp;</p>\r\n\r\n<p>Với đa dạng c&aacute;c loại ph&ograve;ng cho những mức gi&aacute; kh&aacute;c nhau, bạn c&oacute; thể tiết kiệm chi ph&iacute; để vi vu c&ugrave;ng lũ bạn ở c&aacute;c ph&ograve;ng ti&ecirc;u chuẩn, hoặc cũng c&oacute; thể &ldquo;sống sang một lần&rdquo; với loại ph&ograve;ng Tổng Thống (Presidential Suite), ph&ograve;ng G&aacute;c M&aacute;i c&oacute; vườn Rooftop Garden Suite hoặc G&aacute;c M&aacute;i Penthouse.</p>\r\n\r\n<p>H&atilde;y thử tưởng tượng, c&aacute;i lạnh len ngang ngo&agrave;i lớp chăn d&agrave;y khi trời vẫn m&ugrave; sương, nh&igrave;n ra khung cửa ngo&agrave;i kia l&agrave; to&agrave;n bộ khung cảnh n&uacute;i đồi của th&agrave;nh phố t&igrave;nh y&ecirc;u; thức dậy c&ugrave;ng với người bạn y&ecirc;u thương nhất. Hoặc giả, bạn cũng c&oacute; thể tận hưởng thế giới hai người, với khu vườn ngập tr&agrave;n sắc xanh, bao quanh l&agrave; n&uacute;i đồi nối tiếp nh&igrave;n từ căn g&aacute;c m&aacute;i, cảm gi&aacute;c sẽ tuyệt vời như thế n&agrave;o.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-10.jpeg\" style=\"height:521px; width:900px\" /></p>\r\n\r\n<p>Đ&acirc;y l&agrave; resort view đồi n&uacute;i c&oacute; kh&ocirc;ng gian gần như biệt lập với sự ồn &agrave;o n&aacute;o nhiệt của phố thị. Dẫu biết Đ&agrave; Lạt đ&atilde; c&oacute; sự y&ecirc;n ả đặc trưng hơn rất nhiều th&agrave;nh phố du lịch kh&aacute;c của Việt Nam, nhưng Swiss Belresort cũng &ldquo;c&aacute;ch ly&rdquo; bạn nốt khỏi sự &ldquo;ồn &agrave;o&rdquo; của khu vực trung t&acirc;m Đ&agrave; Lạt.</p>\r\n\r\n<p>Tuy kh&ocirc;ng phải l&agrave; một nơi lưu tr&uacute; c&oacute; gi&aacute; hạt dẻ, nhưng nếu c&oacute; cơ hội thử đặt ch&acirc;n đến đ&acirc;y, bạn sẽ thấy rằng đồng tiền m&igrave;nh bỏ ra ho&agrave;n to&agrave;n xứng đ&aacute;ng với những kỳ vọng của bản th&acirc;n. Với chất lượng nghỉ dưỡng chuẩn 5 sao, c&aacute;c loại h&igrave;nh dịch vụ v&agrave; chăm s&oacute;c sức khỏe đa dạng, cộng th&ecirc;m vị tr&iacute; đắc địa đ&atilde; mang lại sự tổng h&ograve;a ho&agrave;n hảo cho Swiss Beresort.</p>\r\n\r\n<p>C&ugrave;ng ngh&iacute;a qua một số khung cảnh đẹp kh&ocirc;ng thể cưỡng lại tại Swiss Belresort:</p>\r\n\r\n<h2><strong>2. Chỉ cần ở đ&acirc;y b&igrave;nh y&ecirc;n tận hưởng v&agrave;&hellip; c&oacute; tất tần tật mọi nhu cầu giải tr&iacute;, nghỉ dưỡng</strong></h2>\r\n\r\n<p>Swiss Belresort chắc chắn sẽ ph&ugrave; hợp với những bạn&hellip; lười, chỉ muốn nghỉ dưỡng để nạp lại &ldquo;nguồn pin&rdquo; đang cạn mức của m&igrave;nh hoặc với những ai đang &ldquo;giả vờ chạy trốn thế giới&rdquo; để t&igrave;m một kh&ocirc;ng gian y&ecirc;n tĩnh cho những ng&agrave;y bận rộn đ&atilde; qua v&agrave; sắp tới.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-8.jpg\" style=\"height:720px; width:960px\" /></p>\r\n\r\n<p>Với kh&ocirc;ng gian biệt lập, Swiss Belresort Tuyền L&acirc;m Đ&agrave; Lạt l&agrave; resort view đồi n&uacute;i cung cấp tận 151 ph&ograve;ng nghỉ v&agrave; ph&ograve;ng suites gồm nhiều loại ph&ograve;ng Deluxe, Grand Deluxe, Executive, Juniors Suites v&agrave; Executive Suites. V&agrave; như đ&atilde; n&oacute;i, resort sang chảnh n&agrave;y cũng c&oacute; loại ph&ograve;ng Tổng Thống (Presidential Suite), ph&ograve;ng G&aacute;c M&aacute;i c&oacute; vườn Rooftop Garden Suite v&agrave; G&aacute;c M&aacute;i Penthouse nhằm đ&aacute;p ứng nhu cầu đa dạng của du kh&aacute;ch lưu tr&uacute; khi đến Đ&agrave; Lạt.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-27.jpg\" style=\"height:1200px; width:960px\" /></p>\r\n\r\n<p>&ldquo;An cư&rdquo; rồi th&igrave; bạn sẽ nghĩ đến kế tiếp l&agrave;&hellip; chiếc dạ d&agrave;y của m&igrave;nh. Swiss-Caf&eacute; l&agrave; nh&agrave; h&agrave;ng theo thiết kế đương đại, được bố tr&iacute; theo v&ograve;ng cung h&agrave;nh lang nh&igrave;n ra ph&iacute;a hồ, với phong c&aacute;ch ẩm thực hiện đại, l&agrave; một nơi l&yacute; tưởng cho một chầu c&agrave; ph&ecirc; s&aacute;ng nhẹ hay một bữa ăn ho&agrave;n hảo trong ng&agrave;y. Nh&agrave; h&agrave;ng phục vụ cả m&oacute;n &Acirc;u v&agrave; &Aacute;, do đ&oacute;, bạn kh&ocirc;ng cần phải lo lắng cho &ldquo;chiếc bụng đ&oacute;i&rdquo; của m&igrave;nh nữa rồi!</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-18_1.jpg\" style=\"height:519px; width:960px\" /></p>\r\n\r\n<p>S&acirc;n g&ocirc;n 18 lỗ của Swiss Belresort thuộc CLB Sacom Tuyền L&acirc;m bao gồm c&aacute;c khu vực ph&ograve;ng thay đồ, nh&agrave; h&agrave;ng, cửa h&agrave;ng mua sắm, khu tập ph&aacute;t b&oacute;ng, v&agrave; một v&agrave;i lỗ g&ocirc;n được định vị tr&ecirc;n những đồi cao c&oacute; thể đem đến cho du kh&aacute;ch c&aacute;i nh&igrave;n to&agrave;n cảnh một thung lũng trải d&agrave;i tuyệt đẹp. Tại đ&acirc;y c&ograve;n c&oacute; cả c&aacute;c lớp chơi g&ocirc;n ph&ugrave; hợp với nhiều khả năng của kh&aacute;ch lưu tr&uacute;.</p>\r\n\r\n<p>Swiss Belresort c&ograve;n c&oacute; ph&ograve;ng karaoke ri&ecirc;ng, bảy ph&ograve;ng họp, ph&ograve;ng hội nghị n&ecirc;n v&ocirc; c&ugrave;ng th&iacute;ch hợp cho những chuyến du lịch tập thể hoặc c&aacute;c company trip (kỳ nghỉ của c&ocirc;ng ty), c&oacute; thể vừa tổ chức hội thảo, team building kết hợp nghỉ dưỡng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20%C4%91%C3%A0%20l%E1%BA%A1t/swiss-belresort-30.jpg\" style=\"height:426px; width:960px\" /></p>\r\n\r\n<p>Đặc biệt, khi lưu tr&uacute; tại Swiss Belresort, bạn cũng c&oacute; thể bắt c&aacute;c chuyến bu&yacute;t theo giờ v&agrave;o trung t&acirc;m th&agrave;nh phố vui chơi hoặc tham quan c&aacute;c điểm l&acirc;n cận, kh&ocirc;ng sợ nh&agrave;m ch&aacute;n hoặc bị &ldquo;cấm cung&rdquo;. Về c&aacute;c dịch vụ nghỉ dưỡng v&agrave; vui chơi, Swiss Belresort lu&ocirc;n cam kết mang lại cho bạn những hỗ trợ tối đa v&agrave; thoải m&aacute;i nhất.</p>\r\n\r\n<p>&nbsp;</p>', '2019-06-04', 1, 1),
(5, 'Đo ni đóng giày, 3 lịch trình du lịch Quy Nhơn đáp ứng 3 style du lịch khác nhau cho bạn', 'Du lịch trải nghiệm cùng nhóm bạn thân sẽ cực khác khi bạn đi cùng người ấy, và chắc chắn không thể giống như khi bạn đi cùng gia đình. Đó là lý do vì sao bài viết này được ra đời. Không chỉ một, mà là ba – Traveloka bật mí cùng lúc 3 lịch trình du lịch Quy Nhơn với 3 phong cách tách biệt, để bạn dễ dàng lựa chọn. Cùng khám phá nhé!', 'zY4b_lich-trinh-du-lich-quy-nhon-42.jpg', '<h2><strong>1. Phương tiện di chuyển</strong></h2>\r\n\r\n<p>Để di chuyển đến th&agrave;nh phố Quy Nhơn, bạn c&oacute; thể đi bằng m&aacute;y bay, t&agrave;u hoả hoặc xe kh&aacute;ch. Trong trường hợp bạn c&oacute; nhiều hơn một th&agrave;nh phố để gh&eacute; thăm hoặc th&iacute;ch được chủ động hơn trong lịch tr&igrave;nh, bạn vẫn c&oacute; thể sử dụng xe ri&ecirc;ng hoặc &ldquo;đi phượt&rdquo; &ndash; tuy nhi&ecirc;n qu&atilde;ng đường di chuyển sẽ kh&aacute; xa v&agrave; đ&ograve;i hỏi tay l&aacute;i cứng nếu điểm xuất ph&aacute;t của bạn l&agrave; ở khu vực miền Nam hoặc miền Bắc.</p>\r\n\r\n<ul>\r\n	<li>Nếu bạn chọn đi m&aacute;y bay, h&atilde;y d&agrave;nh thời gian theo d&otilde;i v&agrave; &ldquo;săn liền tay&rdquo; c&aacute;c chuyến bay gi&aacute; rẻ bay thẳng đến s&acirc;n bay Ph&ugrave; C&aacute;t (B&igrave;nh Định). Từ đ&acirc;y bạn c&oacute; thể đặt xe hoặc bắt taxi để di chuyển v&agrave; khu vực trung t&acirc;m Quy Nhơn (c&aacute;ch s&acirc;n bay khoảng 35 km). Lợi thế của việc di chuyển bằng m&aacute;y bay ch&iacute;nh l&agrave; gi&uacute;p bạn tiết kiệm được thời gian di chuyển, c&oacute; th&ecirc;m nhiều thời gian vui chơi v&agrave; kh&aacute;m ph&aacute; hơn. Tuy nhi&ecirc;n, nếu l&ecirc;n kế hoạch qu&aacute; s&iacute;t sao hoặc kh&ocirc;ng săn được v&eacute; rẻ th&igrave; bạn sẽ kh&ocirc;ng c&oacute; lợi lắm về mặt &ldquo;ng&acirc;n s&aacute;ch&rdquo; v&igrave; d&ugrave; sao đ&acirc;y cũng l&agrave; h&igrave;nh thức di chuyển c&oacute; gi&aacute; cao so với đi t&agrave;u hoả hoặc xe kh&aacute;ch.</li>\r\n	<li>Lựa chọn thứ hai: đi t&agrave;u hỏa. Phương tiện n&agrave;y sẽ chiếm kha kh&aacute; thời gian trong lịch tr&igrave;nh du lịch Quy Nhơn của bạn (nếu đi từ S&agrave;i G&ograve;n sẽ mất khoảng 12-14 tiếng di chuyển, trong khi đ&oacute; H&agrave; Nội &ndash; Quy Nhơn sẽ mất khoảng 22-24 tiếng di chuyển). Thế nhưng đổi lại, bạn sẽ c&oacute; một chuyến đi th&uacute; vị hơn khi c&oacute; cơ hội ngắm nh&igrave;n khung cảnh dọc theo h&agrave;nh tr&igrave;nh.<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-1.jpg\" style=\"height:1024px; width:1024px\" /></li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Lựa chọn cuối c&ugrave;ng, ch&iacute;nh l&agrave; xe kh&aacute;ch. N&oacute; sẽ tương tự khi bạn sử dụng dịch vụ xe kh&aacute;ch l&ecirc;n Sapa hoặc Đ&agrave; Lạt, xe sẽ khởi h&agrave;nh tại c&aacute;c điểm tập trung cố định tuỳ nh&agrave; xe. Lợi thế của phương tiện n&agrave;y ch&iacute;nh l&agrave; việc sẽ trả kh&aacute;ch ngay tại trung t&acirc;m Quy Nhơn hoặc ngay tại chỗ lưu tr&uacute; của bạn. Từ đ&acirc;y bạn chỉ việc trực tiếp ra biển để tận hưởng ngay kỳ nghỉ hoặc thu&ecirc; xe m&aacute;y để l&ecirc;n đường tham quan, m&agrave; kh&ocirc;ng cần bắt th&ecirc;m một chuyến xe để di chuyển về từ s&acirc;n bay hoặc ga t&agrave;u.</li>\r\n</ul>\r\n\r\n<h2><strong>2. Lịch tr&igrave;nh chi tiết v&agrave; c&aacute;c gợi &yacute;</strong></h2>\r\n\r\n<h3><strong>2.1 Lịch tr&igrave;nh du lịch Quy Nhơn d&agrave;nh cho gia đ&igrave;nh&nbsp;</strong></h3>\r\n\r\n<p><strong>Gợi &yacute; chỗ ở tại Quy Nhơn cho gia đ&igrave;nh</strong></p>\r\n\r\n<p><strong>Aurora Villas and Resort</strong></p>\r\n\r\n<ul>\r\n	<li><em>Địa chỉ: km15, Quốc Lộ 1D, B&atilde;i Nhỏ, Phường Ghềnh r&aacute;ng, Phường Ghềnh R&aacute;ng, Quy Nhơn</em></li>\r\n	<li><em>Đặt ph&ograve;ng tại&nbsp;<strong><a href=\"https://www.traveloka.com/vi-vn/hotel/vietnam/aurora-villas-and-resort-1000000594772?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-HO-OM-BLOG-Na-Detail_1000000594772&amp;utm_term=3LTDLQNC3SKN-TGT-anchortext\" rel=\"noopener\" target=\"_blank\">Đ&Acirc;Y</a></strong>.</em></li>\r\n</ul>\r\n\r\n<p>Giữa m&agrave;u xanh đại dương bao la của th&agrave;nh phố biển th&igrave; c&oacute; lẽ bạn cũng cần một kh&ocirc;ng gian c&acirc;y cối xanh m&aacute;t mắt của Aurora Villas and Resort trong lịch tr&igrave;nh du lịch Quy Nhơn của m&igrave;nh c&ugrave;ng gia đ&igrave;nh. Kh&ocirc;ng chỉ tối đa kh&ocirc;ng gian xanh, resort nghỉ dưỡng n&agrave;y c&ograve;n c&oacute; b&atilde;i biển ri&ecirc;ng, toạ lạc trong th&agrave;nh phố Quy Nhơn v&agrave; chỉ c&aacute;ch s&acirc;n bay Ph&ugrave; C&aacute;t 35 km di chuyển.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-2.jpg\" style=\"height:682px; width:1024px\" /></p>\r\n\r\n<p>Ph&ograve;ng lưu tr&uacute; tại đ&acirc;y được chia theo vị tr&iacute;, như ph&ograve;ng biệt thự đỉnh đồi, ph&ograve;ng biệt thự view biển, ph&ograve;ng biệt thự trước biển&hellip; Đặc biệt, Aurora Villas and Resort c&oacute; CLB sinh hoạt cho trẻ em, rất ph&ugrave; hợp với nhu cầu lưu tr&uacute; v&agrave; nghỉ dưỡng cho những gia đ&igrave;nh c&oacute; con nhỏ.</p>\r\n\r\n<p>H&atilde;y c&ugrave;ng xem một số h&igrave;nh ảnh của Aurora Villas and Resort dưới đ&acirc;y:<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-4-1.jpg\" style=\"height:687px; width:1024px\" /></p>\r\n\r\n<p><strong>Casa Marina Resort</strong></p>\r\n\r\n<ul>\r\n	<li><em>Địa chỉ: Khu vực 1, Km 15, Quốc lộ 1D, Ghềnh R&aacute;ng, Phường B&ugrave;i Thị Xu&acirc;n, Quy Nhơn</em></li>\r\n	<li><em>Đặt ph&ograve;ng tại&nbsp;<a href=\"https://www.traveloka.com/vi-vn/hotel/vietnam/casa-marina-resort-3000020003490?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-HO-OM-BLOG-Na-Detail_3000020003490&amp;utm_term=3LTDLQNC3SKN-TGT-anchortext\" rel=\"noopener\" target=\"_blank\"><strong>Đ&Acirc;Y</strong></a>.</em></li>\r\n</ul>\r\n\r\n<p>Ph&ograve;ng v&agrave; bungalow phong ph&uacute; đ&aacute;p ứng được nhiều nhu cầu lưu tr&uacute; ch&iacute;nh l&agrave; một trong những điểm của chỗ ở tại Quy Nhơn n&agrave;y. Casa Marina Resort đảm bảo tất cả c&aacute;c ph&ograve;ng đều c&oacute; ban c&ocirc;ng v&agrave; s&acirc;n trong nh&igrave;n ra vườn; một số ph&ograve;ng c&oacute; view hướng biển &ndash; tất cả đều tận dụng tối đa kh&ocirc;ng gian mở ra biển v&agrave; thi&ecirc;n nhi&ecirc;n để bạn cảm nhận được r&otilde; rệt nhất vitamin Sea trong suốt thời gian nghỉ dưỡng tại đ&acirc;y.<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-11.jpg\" style=\"height:682px; width:1024px\" /></p>\r\n\r\n<p><strong>C&aacute;c điểm ăn uống khi đi du lịch biển ph&ugrave; hợp với gia đ&igrave;nh</strong></p>\r\n\r\n<ul>\r\n	<li><strong>B&uacute;n c&aacute; Ngọc Li&ecirc;n</strong></li>\r\n</ul>\r\n\r\n<p><em>Địa chỉ: 397 Nguyễn Huệ, Quy Nhơn</em></p>\r\n\r\n<p>Khi đi du lịch biển c&ugrave;ng gia đ&igrave;nh, đ&ocirc;i l&uacute;c bạn sẽ phải đau đầu t&igrave;m kiếm c&aacute;c địa chỉ ăn uống với thực đơn đa dạng để đ&aacute;p ứng y&ecirc;u cầu của nhiều th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh, đồng thời kh&ocirc;ng gian qu&aacute;n cũng phải thoải m&aacute;i, rộng r&atilde;i; đặc biệt l&agrave; đảm bảo an to&agrave;n vệ sinh. Với tất cả những yếu tố vừa kể th&igrave; B&uacute;n C&aacute; Ngọc Li&ecirc;n ch&iacute;nh l&agrave; một trong những địa chỉ ăn uống gia đ&igrave;nh đ&aacute;ng tin cậy để bạn lựa chọn khi đến du lịch Quy Nhơn.</p>\r\n\r\n<p>Qu&aacute;n c&oacute; nhiều loại b&uacute;n như: b&uacute;n chả c&aacute;, b&uacute;n hải sản đặc biệt, b&uacute;n ri&ecirc;u, b&uacute;n sứa&hellip;</p>\r\n\r\n<ul>\r\n	<li><strong>Nh&agrave; h&agrave;ng Vị Cua</strong></li>\r\n</ul>\r\n\r\n<p><em>Địa chỉ: 34 Nguyễn Nhạc, Quy Nhơn</em></p>\r\n\r\n<p>Mở cửa từ 9 giờ s&aacute;ng đến đ&ecirc;m, đ&acirc;y l&agrave; một trong nhưng địa chỉ nh&agrave; h&agrave;ng m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua khi đi du lich Quy Nhơn c&ugrave;ng gia đ&igrave;nh, đặc biệt nếu c&oacute; nhiều th&agrave;nh vi&ecirc;n th&iacute;ch hải sản. Nh&agrave; h&agrave;ng chuy&ecirc;n c&aacute;c m&oacute;n về cua biển tươi sống như cua hấp, cua rang me, cua rang muối, lẩu cua, cua sốt Singapore&hellip;</p>\r\n\r\n<p>Qu&aacute;n phục vụ nhanh v&agrave; nhiệt t&igrave;nh &ndash; một điểm cộng cực lớn khi bạn đi ăn theo nh&oacute;m đ&ocirc;ng. Gi&aacute; cả rẻ v&agrave; m&oacute;n ăn đa dạng cũng l&agrave; một trong những l&yacute; do khiến Vị Cua trở th&agrave;nh một trong những địa chỉ nh&agrave; h&agrave;ng ph&ugrave; hợp nhất với c&aacute;c gia đ&igrave;nh.</p>\r\n\r\n<ul>\r\n	<li><strong>Hải Sản C&acirc;y Dừa</strong></li>\r\n</ul>\r\n\r\n<p><em>Địa chỉ: 33A Nguyễn Huệ</em></p>\r\n\r\n<p>Hải sản C&acirc;y Dừa l&agrave; qu&aacute;n hải sản b&igrave;nh d&acirc;n với gi&aacute; cả phải chăng. Kh&ocirc;ng chỉ c&oacute; kh&ocirc;ng gian rộng r&atilde;i để gia đ&igrave;nh bạn thoải m&aacute;i d&ugrave;ng bữa, qu&aacute;n c&ograve;n c&oacute; một thực đơn kh&aacute; phong ph&uacute; bao gồm gần như đầy đủ c&aacute;c loại hải sản biển như ốc, s&ograve;, mực, t&ocirc;m, cua&hellip; được chế biến đậm đ&agrave;, vừa miệng.</p>\r\n\r\n<p><strong>C&aacute;c hoạt động ph&ugrave; hợp với gia đ&igrave;nh c&oacute; người lớn v&agrave; trẻ em</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Tham quan v&agrave; vui chơi tại Sở th&uacute; FLC Zoo Safari Park</strong></li>\r\n</ul>\r\n\r\n<p>FLC Safari Zoo c&oacute; diện t&iacute;ch 129 ha với gần 35 lo&agrave;i như gấu, đ&agrave; điểu, hươu sao, lạc đ&agrave;, vượn, voọc, thi&ecirc;n nga đen, vịt v&agrave;ng Tadorama&hellip; v&agrave; kh&ocirc;ng gian được thiết kế chăm ch&uacute;t, tỉ mỉ. C&aacute;c c&aacute; thể lo&agrave;i được bố tr&iacute; th&agrave;nh từng khu vực ngăn c&aacute;ch nhau bởi những b&atilde;i cỏ v&agrave; con đường đ&aacute;. Để tham quan to&agrave;n bộ c&ocirc;ng vi&ecirc;n, sau khi mua v&eacute; v&agrave;o cổng, bạn c&oacute; thể lựa chọn đi xe điện, xe ngựa hoặc đi bộ.</p>\r\n\r\n<p>Tại mỗi khu vực đều c&oacute; ch&uacute; th&iacute;ch, giới thiệu r&otilde; r&agrave;ng về từng lo&agrave;i. Ngo&agrave;i tham quan, bạn c&oacute; thể trải nghiệm tự tay cho th&uacute; ăn hoặc chụp ảnh c&ugrave;ng. Đ&acirc;y lu&ocirc;n lu&ocirc;n sẽ l&agrave; một trong những điểm đến m&agrave; cả người lớn lẫn trẻ em đều sẽ cảm thấy th&iacute;ch th&uacute; trong chuyến du lịch biển tại Quy Nhơn.<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-17.jpg\" style=\"height:1080px; width:1080px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Khu d&atilde; ngoại Trung Lương</strong></li>\r\n</ul>\r\n\r\n<p>Sở hữu khung cảnh đẹp như mơ, Trung Lương quả thật chưa bao giờ hết &ldquo;hot&rdquo;. Khu d&atilde; ngoại Trung Lương l&agrave; nơi bạn c&oacute; thể thoả th&iacute;ch tạo d&aacute;ng chụp ảnh với khu lều trại mang chất thổ d&acirc;n, những bậc thang nhiều m&agrave;u, thi&ecirc;n nhi&ecirc;n rộng ng&aacute;t v&agrave; kh&ocirc;ng gian cực th&iacute;ch hợp cho những buổi cắm trại, tiệc ngo&agrave;i trời hay ngắm ho&agrave;ng h&ocirc;n. Nh&igrave;n từ tr&ecirc;n cao, khu d&atilde; ngoại tựa như một thung lũng lọt thỏm giữa ba mặt n&uacute;i, một mặt biển.</p>\r\n\r\n<p>B&atilde;i cỏ xanh mướt, những khối đ&aacute; đan xen kết hợp với v&agrave;i m&aacute;i lều nhấp nh&ocirc; đ&atilde; tạo n&ecirc;n một cảnh sắc hữu t&igrave;nh v&agrave; b&igrave;nh y&ecirc;n, th&iacute;ch hợp cho những buổi cắm trại, tiệc ngo&agrave;i trời hay ngắm ho&agrave;ng h&ocirc;n. Người lớn tuổi c&oacute; thể thả bộ thư thả, ngắm cảnh, ăn uống; trong khi bạn v&agrave; trẻ nhỏ trong gia đ&igrave;nh c&oacute; thể đi quanh tham quan, chụp ảnh hoặc tổ chức một v&agrave;i tr&ograve; chơi vận động nhỏ. C&oacute; thể n&oacute;i, Trung Lương chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn thất vọng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-18.jpg\" style=\"height:1200px; width:961px\" /></p>\r\n\r\n<ul>\r\n	<li><strong>Chi&ecirc;m b&aacute;i tượng Phật khổng lồ tại Ch&ugrave;a &Ocirc;ng N&uacute;i</strong></li>\r\n</ul>\r\n\r\n<p>Ch&ugrave;a &Ocirc;ng N&uacute;i (hay c&ograve;n gọi l&agrave; ch&ugrave;a Linh Phong) l&agrave; một địa điểm nổi tiếng với bức tượng Phật khổng lồ ngồi tr&ecirc;n đỉnh n&uacute;i. Đi từ xa bạn đ&atilde; c&oacute; thể nh&igrave;n thấy tượng Phật, thoạt nh&igrave;n như một vị Phật ngồi giữa m&acirc;y trời. Ch&ugrave;a nằm tr&ecirc;n đinhd n&uacute;i, c&oacute; bậc thang để đi h&agrave;nh hương từ ch&acirc;n n&uacute;i l&ecirc;n đ&acirc;y. Tổng thể kiến tr&uacute;c l&agrave; t&ocirc;ng m&agrave;u trắng tinh khiết từ th&acirc;n tượng đến đ&agrave;i sen, kể cả kiến tr&uacute;c b&ecirc;n trong hay tường đ&aacute; b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<p>Đứng tr&ecirc;n ch&ugrave;a, ph&oacute;ng tầm mắt xuống dưới bạn sẽ thấy khung cảnh đồng l&uacute;a thu nhỏ v&agrave; xa xa l&agrave; biển. Địa điểm n&agrave;y ph&ugrave; hợp với gia đ&igrave;nh c&oacute; người lớn tuổi muốn b&aacute;i Phật, h&agrave;nh hương; đồng thời mọi người đều c&oacute; thể ngắm nh&igrave;n cảnh đẹp Quy Nhơn từ tr&ecirc;n cao, đồng thời tận hưởng kh&ocirc;ng kh&iacute; trong l&agrave;nh, y&ecirc;n b&igrave;nh.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-20.jpg\" style=\"height:1024px; width:901px\" /></p>\r\n\r\n<h3><strong>2.2. Lịch tr&igrave;nh du lịch Quy Nhơn d&agrave;nh cho cặp đ&ocirc;i</strong></h3>\r\n\r\n<p><strong>Gợi &yacute; chỗ ở tại Quy Nhơn cho bạn v&agrave; người ấy</strong></p>\r\n\r\n<p><strong>Life&rsquo;s A Beach Apartments</strong></p>\r\n\r\n<ul>\r\n	<li><em>Địa chỉ: Tổ 2, Khu vực 1, B&atilde;i X&eacute;p, phường Ghềnh R&aacute;ng, Quy Nhơn</em></li>\r\n	<li>Đặt ph&ograve;ng ngay tại&nbsp;<a href=\"https://www.traveloka.com/vi-vn/hotel/vietnam/lifes-a-beach-5000002842422?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-HO-OM-BLOG-Na-Detail_5000002842422&amp;utm_term=3LTDLQNC3SKN-TGT-anchortext\" rel=\"noopener\" target=\"_blank\"><strong>Đ&Acirc;Y</strong></a>.</li>\r\n</ul>\r\n\r\n<p>Đ&acirc;y l&agrave; homestay được x&acirc;y dựng ngay tr&ecirc;n b&atilde;i biển Quy Nhơn, chỉ cần bước ra l&agrave; đ&atilde; cảm nhận được vị c&aacute;t sột soạt dưới ch&acirc;n.</p>\r\n\r\n<p>Homestay biển n&agrave;y được đ&aacute;nh gi&aacute; cao v&igrave; hai điều; thứ nhất l&agrave; kh&ocirc;ng gian mở v&ocirc; tận, khiến cho kh&aacute;ch lưu tr&uacute; c&oacute; thể cảm nhận tối đa vị biển v&agrave; tận hưởng kỳ nghỉ tuyệt đối m&agrave; đ&ocirc;i khi kh&ocirc;ng cần phải đi đ&acirc;u qu&aacute; xa.<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-3-1.jpg\" style=\"height:682px; width:1024px\" /></p>\r\n\r\n<p>C&ograve;n điều thứ hai, ch&iacute;nh l&agrave; do gi&aacute; cả v&ocirc; c&ugrave;ng hợp t&uacute;i tiền cho một homestay biển l&yacute; tưởng như thế n&agrave;y. Life&rsquo;s A Beach c&oacute; hai dạng lưu tr&uacute;: căn biệt lập v&agrave; ph&ograve;ng tập thể cho c&aacute;c bạn thoải m&aacute;i lựa chọn. Nếu chọn ở tập thể bạn chỉ tốn khoảng 10-12$/người/đ&ecirc;m, c&ograve;n nếu đi với hội bạn sẽ rất &ldquo;kinh tế&rdquo; khi bạn chọn ph&ograve;ng ri&ecirc;ng (cho 2 người) v&igrave; chỉ phải trả ph&iacute; phụ thu 7$ cho mỗi người ở th&ecirc;m. Đặc biệt nhất l&agrave; dạng bungalow d&agrave;nh cho gia đ&igrave;nh hoặc c&aacute;c cặp đ&ocirc;i muốn c&oacute; kh&ocirc;ng gian ri&ecirc;ng tư, gi&aacute; chỉ 43$/ng&agrave;y m&agrave; lại c&ograve;n c&oacute; view biển cực đẹp v&agrave; l&atilde;ng mạn.</p>\r\n\r\n<p>Life&rsquo;s A Beach c&aacute;ch s&acirc;n bay Ph&uacute; C&aacute;t 43km di chuyển bằng xe, ph&ugrave; hợp cho cả kế hoạch du lịch c&ugrave;ng gia đ&igrave;nh, bạn b&egrave; hay với nửa kia của bạn!</p>\r\n\r\n<p><strong>LaRose Homestay</strong></p>\r\n\r\n<ul>\r\n	<li><em>Địa chỉ:</em></li>\r\n</ul>\r\n\r\n<p><em>&ndash; LaRose Bohome: Hẻm Vũ Bảo, Quy Nhơn</em></p>\r\n\r\n<p><em>&ndash; LaRose HAGL: Căn hộ chung cư HAGL, Ho&agrave;ng Quốc Việt, Thị Nại, Quy Nhơn</em></p>\r\n\r\n<ul>\r\n	<li><em>Số điện thoại li&ecirc;n hệ: 0908 772 664</em></li>\r\n</ul>\r\n\r\n<p>LaRose Homestay l&agrave; một trong những homestay &ldquo;đ&uacute;ng nghĩa&rdquo; v&igrave; bạn sẽ ở chung c&ugrave;ng với chủ nh&agrave; (nhưng bạn cứ y&ecirc;n t&acirc;m, chủ nh&agrave; của LaRose cực kỳ &ldquo;cu toe&rdquo; th&acirc;n thiện nhen), tạo cảm gi&aacute;c gần gũi v&agrave; một kh&ocirc;ng gian &ldquo;như l&agrave; nh&agrave;&rdquo; tại đ&acirc;y. Đ&acirc;y đồng thời cũng l&agrave; chỗ ở tại Quy Nhơn bạn kh&ocirc;ng n&ecirc;n bỏ lỡ, v&igrave; gần như n&oacute; mang đến cho hai bạn một kh&ocirc;ng gian l&atilde;ng mạn v&agrave; ấm &aacute;p.<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-7-1200x675.jpg\" style=\"height:576px; width:1024px\" /></p>\r\n\r\n<h3><strong>2.3. Lịch tr&igrave;nh du lịch Quy Nhơn d&agrave;nh cho nh&oacute;m bạn&nbsp;</strong></h3>\r\n\r\n<p><strong>Gợi &yacute; chỗ ở tại Quy Nhơn cho nh&oacute;m của bạn</strong></p>\r\n\r\n<p><strong>Home Quy Nhơn Bed &amp; Room</strong></p>\r\n\r\n<ul>\r\n	<li><em>Địa chỉ:</em></li>\r\n</ul>\r\n\r\n<p>&ndash; 15 Nguyễn Huy Tưởng, Quy Nhơn</p>\r\n\r\n<p>&ndash; 20D Hoa Lư, Quy Nhơn (chi nh&aacute;nh mới)</p>\r\n\r\n<ul>\r\n	<li><em>Số điện thoại li&ecirc;n hệ: 0982 252 527</em></li>\r\n</ul>\r\n\r\n<p>Tọa lạc tại 15 Nguyễn Huy Tưởng, th&agrave;nh phố Quy Nhơn, Home Quy Nhơn Bed &amp; Room &ldquo;t&ecirc;n sao t&iacute;nh vậy&rdquo; khi m&agrave; với mỗi ph&ograve;ng ngủ, phần g&acirc;y ch&uacute; &yacute; nhất ch&iacute;nh l&agrave; phong c&aacute;ch trang tr&iacute; v&agrave;&hellip; chiếc giường ngủ. Với những ph&ograve;ng ri&ecirc;ng (hoặc ph&ograve;ng lớn) th&igrave; chiếc giường như thể &ldquo;b&agrave;nh trướng&rdquo; hết diện t&iacute;ch, c&ograve;n đối với những ph&ograve;ng đơn/ ph&ograve;ng giường tầng th&igrave; m&agrave;u ấm &aacute;p v&agrave; sự &ecirc;m &aacute;i của những chiếc nệm khiến bạn &ldquo;tin tưởng&rdquo; 100% khi lưu tr&uacute;, đảm bảo kh&ocirc;ng &ldquo;lạ chỗ&rdquo; hoặc ngủ kh&ocirc;ng ngon đ&acirc;u.</p>\r\n\r\n<p>Phong c&aacute;ch chất khỏi b&agrave;n, dịch vụ tiện nghi đầy đủ, c&oacute; hỗ trợ cho thu&ecirc; lều cắm trại, thu&ecirc; xe&hellip;, lại nằm trong trung t&acirc;m th&agrave;nh phố, Home Quy Nhơn Bed &amp; Room cứ như vậy m&agrave; &ldquo;n&iacute;u kh&aacute;ch&rdquo; ở lại với m&igrave;nh. Th&ecirc;m một điểm cộng nữa, ch&iacute;nh l&agrave; d&ugrave; &ldquo;đạt điểm 10 cho chất lượng&rdquo;, nhưng đ&acirc;y đ&iacute;ch thị l&agrave; homestay gi&aacute; rẻ, đ&aacute;ng y&ecirc;u với t&uacute;i tiền của tất tần tật bọn m&igrave;nh. Với gi&aacute; chỉ từ 450.000 VND/ ph&ograve;ng (cho 2 người hoặc 4 người), nghĩa l&agrave; bạn chỉ tốn chưa đến 200k cho một đ&ecirc;m lưu tr&uacute;, c&ograve;n chần chừ g&igrave; m&agrave; kh&ocirc;ng thử ngay homestay đ&aacute;ng y&ecirc;u n&agrave;y?</p>\r\n\r\n<p>Kh&ocirc;ng gian sống được chăm ch&uacute;t, nh&agrave; cửa lu&ocirc;n được dọn dẹp sạch sẽ gọn g&agrave;ng v&agrave; anh chủ nh&agrave; y&ecirc;u nhiếp ảnh l&uacute;c n&agrave;o cũng th&acirc;n thiện ch&iacute;nh l&agrave; những điểm cộng kh&aacute;c cho homestay Quy Nhơn Bed &amp; Room</p>\r\n\r\n<p><strong>Sophie&rsquo;s House</strong></p>\r\n\r\n<ul>\r\n	<li><em>Địa chỉ: 90 H&agrave; Huy Tập, Phường L&ecirc; Hồng Phong, Quy Nhơn</em></li>\r\n	<li><em>Đặt ph&ograve;ng ngay tại&nbsp;<a href=\"https://www.traveloka.com/vi-vn/hotel/vietnam/sophies-house-3000020008691?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-HO-OM-BLOG-Na-Detail_3000020008691&amp;utm_term=3LTDLQNC3SKN-TGT-anchortext\" rel=\"noopener\" target=\"_blank\">Đ&Acirc;Y</a>.&nbsp;</em></li>\r\n</ul>\r\n\r\n<p>Sophie&rsquo;s House l&agrave; chỗ ở tại Quy Nhơn đ&aacute;p ứng chuẩn trẻ &ndash; khoẻ &ndash; năng động v&agrave; si&ecirc;u xinh, rất ph&ugrave; hợp với nhu cầu lưu tr&uacute; khi bạn vi vu du lịch Quy Nhơn c&ugrave;ng bạn b&egrave;. Ph&ograve;ng tại Sophie&rsquo;s House c&oacute; bếp ăn, ph&ograve;ng tắm chung; một số ph&ograve;ng c&oacute; ban c&ocirc;ng mở.</p>\r\n\r\n<p>Sophie&rsquo;s House c&oacute; cả dạng ph&ograve;ng ri&ecirc;ng (2 giường đơn) v&agrave; ph&ograve;ng dorm giường tầng tập thể, với chi ph&iacute; chỉ từ 100.000 VND/ đ&ecirc;m/ người, rất kinh tế nhưng lại chất lượng.</p>\r\n\r\n<p><strong>Những m&oacute;n ăn b&igrave;nh d&acirc;n nh&oacute;m bạn kh&ocirc;ng n&ecirc;n bỏ lỡ</strong></p>\r\n\r\n<p>Quy Nhơn lu&ocirc;n l&agrave; nơi d&agrave;nh cho những ai y&ecirc;u th&iacute;ch hải sản, thế nhưng những chầu ăn uống ấy sẽ vui hơn gấp nhiều lần khi m&agrave; bạn c&ugrave;ng thưởng thức c&aacute;c m&oacute;n ăn c&ugrave;ng b&egrave; bạn. Chẳng cần l&agrave; những qu&aacute; x&aacute; sang trọng, cứ c&ugrave;ng dắt nhau điểm danh c&aacute;c m&oacute;n b&igrave;nh d&acirc;n m&agrave; mang đậm chất xứ biển th&ocirc;i!</p>\r\n\r\n<p>Đầu ti&ecirc;n ch&iacute;nh l&agrave; hải sản. Du lịch biển của Quy Nhơn gắn liền với cơ số c&aacute;c loại hải sản v&ocirc; c&ugrave;ng phong ph&uacute;, như t&ocirc;m, mực, s&ograve; điệp, c&aacute;c loại c&aacute; biển đ&aacute;nh bắt tươi sống trong ng&agrave;y &ndash; đặc biệr với gi&aacute; hạt dẻ v&agrave; chất lượng v&ocirc; c&ugrave;ng. Đi c&ugrave;ng nh&oacute;m bạn v&agrave; ăn hải sản, d&ugrave; l&agrave; d&ugrave;ng ngay tại qu&aacute;n hoặc mua mang đi tự chế biến sẽ đều v&ocirc; c&ugrave;ng ngon miệng.<img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20quy%20nh%C6%A1n/lich-trinh-du-lich-quy-nhon-10.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Một số địa chỉ qu&aacute;n hải sản tại Quy Nhơn:</p>\r\n\r\n<p>&ndash; Ốc Hảo &ndash; 37 Ngọc H&acirc;n C&ocirc;ng Ch&uacute;a</p>\r\n\r\n<p>&ndash; Hướng Dương Qu&aacute;n &ndash; Đường ch&iacute;nh Khu Du Lịch Eo Gi&oacute;</p>\r\n\r\n<p>&ndash; Hải sản Chung &ndash; L&ocirc; 65-66 L&ecirc; Đức Thọ</p>\r\n\r\n<ul>\r\n	<li><strong>B&uacute;n c&aacute; Quy Nhơn</strong></li>\r\n</ul>\r\n\r\n<p>Đ&acirc;y gần như l&agrave; m&oacute;n ăn đại biểu mỗi khi nhắc đến ẩm thực Quy Nhơn, hoặc ăn g&igrave; khi đi du lịch biển B&igrave;nh Định. Với mỗi t&ocirc; b&uacute;n gồm 4 loại chả dai dai sần sật ăn k&egrave;m với c&aacute; dầm, nước l&egrave;o trong mang vị ngọt miền biển, đậm đ&agrave; đ&uacute;ng chất Quy Nhơn; m&oacute;n ngon n&agrave;y lu&ocirc;n l&agrave;m xi&ecirc;u l&ograve;ng thực kh&aacute;ch, lại kh&aacute; hợp vị v&agrave; dễ ăn. Đồng thời b&uacute;n c&aacute; cũng l&agrave; một m&oacute;n ăn b&igrave;nh d&acirc;n v&ocirc; c&ugrave;ng phổ biến ở Quy Nhơn.</p>\r\n\r\n<p>Địa chỉ để bạn thưởng thức m&oacute;n ăn n&agrave;y:</p>\r\n\r\n<p>&ndash; B&uacute;n c&aacute; Phượng T&egrave;o &ndash; 209 Nguyễn Huệ, Quy Nhơn</p>\r\n\r\n<p>&ndash; 33 Phan Đ&igrave;nh Ph&ugrave;ng, Quy Nhơn</p>\r\n\r\n<p>&ndash; B&uacute;n Thuỳ &ndash; 261 Tăng Bạt Hổ, Quy Nhơn</p>\r\n\r\n<ul>\r\n	<li><strong>B&aacute;nh hỏi ch&aacute;o l&ograve;ng</strong></li>\r\n</ul>\r\n\r\n<p>Nếu bạn chưa bao giờ thử kết hợp hai m&oacute;n dường như chẳng li&ecirc;n quan với nhau th&igrave; h&atilde;y tận dụng lịch tr&igrave;nh du lịch Quy Nhơn n&agrave;y để thử kh&aacute;m ph&aacute; hương vị của ch&uacute;ng nh&eacute;. B&aacute;nh hỏi, l&ograve;ng heo kết hợp c&ugrave;ng một &iacute;t ch&aacute;o lo&atilde;ng sẽ mang lại vị đằm v&agrave; thơm ngon tổng ho&agrave;. B&aacute;nh hỏi mỡ h&agrave;nh k&egrave;m với c&aacute;i b&eacute;o b&eacute;o b&ugrave;i b&ugrave;i của l&ograve;ng lợn, được nước chấm đậm đ&agrave; bổ trợ c&ugrave;ng ch&aacute;o lo&atilde;ng đưa vị sẽ cho bạn một bữa ăn c&ugrave;ng trải nghiệm ẩm thực l&agrave; lạ nhưng ngon miệng.</p>\r\n\r\n<p>&nbsp;B&aacute;nh hỏi l&ograve;ng heo C&ocirc; Năm &ndash; 41 Nguyễn Ch&aacute;nh, Quy Nhơn</p>\r\n\r\n<ul>\r\n	<li><strong>B&aacute;nh x&egrave;o t&ocirc;m nhảy</strong></li>\r\n</ul>\r\n\r\n<p>B&aacute;nh x&egrave;o n&agrave;y c&oacute; k&iacute;ch thước nhỏ chỉ bằng khoảng 1/3 b&aacute;nh x&egrave;o miền nam th&ocirc;ng thường, với lớp vỏ b&aacute;nh gi&ograve;n rụm, b&ecirc;n tr&ecirc;n l&agrave; phần nh&acirc;n với gi&aacute;, hẹ, xo&agrave;i, t&ocirc;m, v.v&hellip; Với k&iacute;ch thước nhỏ nhỏ n&ecirc;n b&aacute;nh kh&ocirc;ng ngậm qu&aacute; nhiều dầu kh&aacute; dễ ăn, v&agrave; tuỳ theo sức ăn m&agrave; bạn c&oacute; thể gọi số lượng ph&ugrave; hợp với m&igrave;nh.</p>\r\n\r\n<p>Địa chỉ qu&aacute;n b&aacute;nh x&egrave;o t&ocirc;m nhảy:</p>\r\n\r\n<p>&ndash; 92 Chương Dương, Quy Nhơn</p>\r\n\r\n<p>&ndash; B&aacute;nh x&egrave;o &Ocirc;ng H&ugrave;ng &ndash; 24 Di&ecirc;n Hồng, Quy Nhơn</p>\r\n\r\n<p>&ndash; B&aacute;nh x&egrave;o C&ocirc; Mai &ndash; 17/14/6 Đinh Bộ Lĩnh, Quy Nhơn</p>\r\n\r\n<p>C&aacute;c qu&aacute;n ăn b&igrave;nh d&acirc;n với kh&ocirc;ng gian mở thoải m&aacute;i lu&ocirc;n l&agrave; lựa chọn ho&agrave;n hảo khi bạn đi du lịch c&ugrave;ng hội bạn th&acirc;n. Vậy n&ecirc;n đừng bỏ qua trải nghiệm tour ẩm thực b&igrave;nh d&acirc;n địa phương với những địa chỉ gợi &yacute; tr&ecirc;n nh&eacute;!</p>\r\n\r\n<p><strong>Những địa điểm tham quan v&agrave; check-in sống ảo si&ecirc;u lung linh c&oacute; thể di chuyển bằng xe m&aacute;y</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Kỳ Co &ndash; Eo Gi&oacute;</strong></li>\r\n</ul>\r\n\r\n<p>L&agrave; một trong những địa điểm thu h&uacute;t du kh&aacute;ch du lịch nhất trong những năm gần đ&acirc;y, Kỳ Co được v&iacute; như &ldquo;thi&ecirc;n đường biển&rdquo; của B&igrave;nh Định; v&agrave; chắc chắn l&agrave; một trong những điểm kh&ocirc;ng thể thiếu trong lịch tr&igrave;nh du lịch Quy Nhơn của nh&oacute;m bạn rồi. Nổi bật l&agrave; dải c&aacute;t trắng &ocirc;m trọn cung biển h&igrave;nh vầng trăng khuyết v&agrave; những n&uacute;i đ&aacute; nhấp nh&ocirc; hoang sơ, c&oacute; những n&uacute;i đ&aacute; c&ograve;n kết hợp với nhau tạo th&agrave;nh c&aacute;c hồ nước long lanh, l&agrave; địa điểm ho&agrave;n hảo để c&aacute;c bạn chụp ảnh nh&oacute;m hoặc c&oacute; những shot ảnh check-in si&ecirc;u lung linh v&agrave; kh&oacute; đụng h&agrave;ng.</p>\r\n\r\n<p>Kỳ Co c&oacute; b&atilde;i tắm nước trong, xanh m&aacute;t, khung cảnh thi&ecirc;n nhi&ecirc;n vừa h&ugrave;ng vĩ vừa l&atilde;ng mạn n&ecirc;n thơ. Đặc biệt, Kỳ Co c&ograve;n l&agrave; địa điểm th&iacute;ch hợp để tổ chức c&aacute;c tr&ograve; chơi cho nh&oacute;m, c&aacute;c hoạt động team building ngo&agrave;i trời. Kỳ Co c&aacute;ch trung t&acirc;m Quy Nhơn khoảng 25-30 km, rất dễ d&agrave;ng để nh&oacute;m bạn thu&ecirc; xe hoặc chạy xe m&aacute;y đến đ&acirc;y vui chơi trong ng&agrave;y.</p>\r\n\r\n<p>Eo Gi&oacute; v&agrave; Kỳ Co kh&aacute; gần nhau, bạn c&oacute; thể di chuyển bằng ghe t&agrave;u hoặc cano tầm 30 &ndash; 40 ph&uacute;t. Từ trung t&acirc;m Quy Nhơn, sau khi chạy qua cầu Thị Nại bạn sẽ đến Eo Gi&oacute; (Nhơn L&yacute;) trước. Sau khi chụp ảnh xong, bạn c&oacute; thể di chuyển tiếp tục đến đảo Kỳ Co v&agrave; ở đ&acirc;y vui chơi, tham quan hoặc đi lặn biển ngắm san h&ocirc; H&ograve;n Sẹo.</p>\r\n\r\n<ul>\r\n	<li><strong>H&ograve;n Kh&ocirc;</strong></li>\r\n</ul>\r\n\r\n<p>H&ograve;n Kh&ocirc; (c&aacute;ch trung t&acirc;m th&agrave;nh phố tầm 16 km) l&agrave; một trong những địa điểm l&yacute; tưởng để tắm biển v&agrave; lặn ngắm san h&ocirc;. Khung cảnh nới đ&acirc;y c&ograve;n kh&aacute; hoang sơ, nước ở H&ograve;n Kh&ocirc; rất trong v&agrave; sạch, c&oacute; một số nơi những rặn san h&ocirc; chỉ c&aacute;ch mặt nước từ 1-2 m, rất th&iacute;ch hợp để lặn biển ngắm. Tại đ&acirc;y, nh&oacute;m của bạn c&ograve;n c&oacute; rất nhiều hoạt động v&agrave; m&ocirc;n thể thao biển mạo hiểm kh&aacute;c để trải nghiệm như: chạy moto nước, ch&egrave;o thuyền kayak&hellip; Sẽ thật tiếc nếu trong lịch tr&igrave;nh du lịch Quy Nhơn của nh&oacute;m bạn lại thiếu đi H&ograve;n Kh&ocirc;.</p>\r\n\r\n<p>Hai điểm đặc biệt ở H&ograve;n Kh&ocirc; thu h&uacute;t giới trẻ check-in l&agrave; con đường gỗ trắng xu&ocirc;i theo lưng n&uacute;i cực đẹp v&agrave; con đường xuy&ecirc;n biển độc đ&aacute;o đủ để l&agrave;m nao l&ograve;ng bất kỳ ai gh&eacute; thăm. Khi thuỷ triều xuống, con đường n&agrave;y sẽ lộ ra v&agrave; bạn ho&agrave;n to&agrave;n c&oacute; thể đi dạo dọc theo n&oacute; v&ocirc; c&ugrave;ng l&atilde;ng mạn.</p>\r\n\r\n<ul>\r\n	<li><strong>B&atilde;i Trứng</strong></li>\r\n</ul>\r\n\r\n<p>B&atilde;i Trứng l&agrave; một trong những b&atilde;i biển nổi tiếng của Quy Nhơn, hay c&ograve;n được biết đến với c&aacute;i t&ecirc;n B&atilde;i Tắm Ho&agrave;ng Hậu, bởi nơi đ&acirc;y từng l&agrave; khu vực tắm biển d&agrave;nh ri&ecirc;ng cho Nam Phương Ho&agrave;ng Hậu l&uacute;c sinh thời. B&atilde;i Trứng c&oacute; cung đường biển uốn lượn đẹp mắt, nước biển trong c&ugrave;ng rất nhiều tảng đ&aacute;, dưới t&aacute;c động của s&oacute;ng biển v&agrave; thời gian, b&agrave;o m&ograve;n th&agrave;nh h&igrave;nh bầu dục nằm xếp chồng l&ecirc;n nhau như những quả trứng rất bắt mắt.</p>\r\n\r\n<p>V&agrave;o h&egrave; rồi, đừng chần chừ m&agrave; l&ecirc;n lịch ngay th&ocirc;i bạn ơi! M&ugrave;a h&egrave; l&atilde;ng mạn c&ugrave;ng người ấy, m&ugrave;a h&egrave; vui nổ trời với đ&aacute;m bạn th&acirc;n hay thời gian qu&yacute; b&aacute;u với gia đ&igrave;nh &ndash; với lịch tr&igrave;nh du lịch Quy Nhơn gợi &yacute; tr&ecirc;n đ&acirc;y, bạn chỉ việc bung xo&atilde; v&agrave; tận hưởng m&ugrave;a h&egrave; n&agrave;y th&ocirc;i nh&eacute;! Đừng qu&ecirc;n chia sẻ với Traveloka những điều tuyệt vời trong chuyến đi của bạn nh&eacute;!</p>', '2019-05-29', 1, 1);
INSERT INTO `blog` (`MaBlog`, `TieuDe`, `TomTat`, `HinhAnh`, `NoiDung`, `NgayPost`, `TrangThai`, `MaNV`) VALUES
(6, '5 lý do khiến du lịch Quy Nhơn phải nằm trong bucket list của bạn hè này', 'Việt Nam mình đẹp lắm, cùng dắt nhau đi du lịch Quy Nhơn hè này và tận hưởng nắng vàng biển xanh thôi bạn ơi! Đọc hết bài viết này bạn sẽ hiểu vì sao Quy Nhơn chắc chắn phải nằm trong bucket list (danh sách những nơi phải ghé qua) trong mùa hè năm nay.', '4YR0_du-lich-quy-nhon-2.jpg', '<p>Thời gian gần đ&acirc;y, Quy Nhơn l&agrave; một c&aacute;i t&ecirc;n mới toanh nhưng lại cực hot trong bản đồ du lịch Việt Nam. Nếu bạn vẫn c&ograve;n chần chừ hoặc chưa quyết định gh&eacute; đến địa điểm hot x&igrave;nh xịch n&agrave;y th&igrave;&hellip; bạn chắc chắn sẽ đổi &yacute; ngay sau khi đọc b&agrave;i viết n&agrave;y đấy. Bật tung tất cả l&yacute; do v&igrave; sao bạn kh&ocirc;ng n&ecirc;n bỏ lỡ cơ hội l&ecirc;n kế hoạch ngay cho một chuyến du lịch Quy Nhơn h&egrave; n&agrave;y nh&acirc;n l&uacute;c mặt trời rực rỡ đang mời gọi nh&eacute;.</p>\r\n\r\n<h2><strong>L&yacute; do 1: Thi&ecirc;n đường biển đảo mới nổi nhưng &ldquo;vạn người m&ecirc;&rdquo;</strong></h2>\r\n\r\n<p>V&agrave;o những thời điểm bắt đầu bước v&agrave;o m&ugrave;a n&oacute;ng như thế n&agrave;y th&igrave; cơ thể bạn chắc chắn sẽ cần rất nhiều Vitamin Sea. Ch&iacute;nh v&igrave; thế m&agrave; du lịch biển n&oacute;i ri&ecirc;ng cũng như du lịch Quy Nhơn lu&ocirc;n sẽ được mọi người ưu &aacute;i lựa chọn. Biển Quy Nhơn trải d&agrave;i theo h&igrave;nh c&aacute;nh cung, &ocirc;m lấy bờ c&aacute;t suốt từ trung t&acirc;m th&agrave;nh phố; kết hợp h&agrave;i ho&agrave; với n&uacute;i rừng, l&agrave; nơi l&yacute; tưởng để bạn c&ugrave;ng gia đ&igrave;nh, bạn b&egrave; l&ecirc;n kế hoạch kh&aacute;m ph&aacute; trong dịp h&egrave;. V&igrave; h&igrave;nh th&agrave;nh từ những d&atilde;y n&uacute;i ăn xi&ecirc;n ra m&eacute;p biển, địa h&igrave;nh Quy Nhơn thường c&oacute; c&aacute;c eo gi&oacute; với vẻ đẹp thu h&uacute;t, nổi tiếng nhất l&agrave; biển Nữ Ho&agrave;ng v&agrave; B&aacute;n đảo Phương Mai.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/quy%20nhon%201/du-lich-quy-nhon-16.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<p>Biển Nữ Ho&agrave;ng được đặt t&ecirc;n theo vị ho&agrave;ng hậu cuối c&ugrave;ng của triều đại phong kiến Việt Nam &ndash; Nam Phương Ho&agrave;ng Hậu, với b&atilde;i đ&aacute; cuội d&agrave;i, nằm nghi&ecirc;ng m&igrave;nh đ&oacute;n nắng v&agrave; s&oacute;ng biển.</p>\r\n\r\n<p>Một trong những điểm đến tại Quy Nhơn bạn nhất định kh&ocirc;ng thể bỏ qua ch&iacute;nh l&agrave; b&atilde;i Kỳ Co. D&ograve;ng nước m&aacute;t lạnh, vẻ đẹp hoang sơ kết hợp với c&aacute;c hoạt động th&uacute; vị như lặn biển ngắm san h&ocirc; gi&uacute;p du lịch Quy Nhơn h&egrave; n&agrave;y trở n&ecirc;n &ldquo;bất bại&rdquo;. Ngo&agrave;i ra, một số những c&aacute;i t&ecirc;n kh&aacute;c c&oacute; thể kể đến như H&ograve;n Kh&ocirc;, Ghềnh R&aacute;ng &ndash; Ti&ecirc;n Sa hay C&ugrave; Lao Xanh, Ghềnh Son, b&atilde;i biển Trại Phong v.v&hellip; cũng l&agrave; những điểm đến h&uacute;t kh&aacute;ch du lịch.</p>\r\n\r\n<p>Để thuận tiện nhất, bạn c&oacute; thể đặt một&nbsp;<em><a href=\"https://www.traveloka.com/vi-vn/activities/vietnam/product/hon-kho-island-ky-co-beach-and-eo-gio-cape-1-day-tour-2001885129390?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-AC-OM-BLOG-Na-Detail_2001885129390&amp;utm_term=5LDKNDLCQNPINMTBLCABNHN-SND-anchortext\" rel=\"noopener\" target=\"_blank\"><strong>tour kh&aacute;m ph&aacute; &ldquo;trọn g&oacute;i&rdquo; Kỳ Co, Eo Gi&oacute;, H&ograve;n Kh&ocirc;</strong></a>&nbsp;</em>để được trải nghiệm những vẻ đẹp chọn lọc nhất của phố biển Quy Nhơn.</p>\r\n\r\n<h2><strong>L&yacute; do 2: Th&aacute;nh địa cho team sống ảo &ldquo;ph&aacute; đảo&rdquo; h&egrave; n&agrave;y</strong></h2>\r\n\r\n<p>Một v&ugrave;ng đất đẹp như Quy Nhơn m&agrave; vắng mặt đi team check-in c&ugrave;ng những bức ảnh đẹp lộng lẫy th&igrave; thật đ&aacute;ng tiếc phải kh&ocirc;ng? C&oacute; thể bạn chưa biết, du lịch Quy Nhơn m&ugrave;a h&egrave; c&oacute; rất nhiều địa điểm &ldquo;chỉ cần giơ m&aacute;y l&ecirc;n l&agrave; c&oacute; c&oacute; ảnh đẹp&rdquo;. Đặc biệt, so với những địa điểm du lịch biển v&agrave; du lịch h&egrave; đ&atilde; qu&aacute; quen thuộc như Nha Trang, Mũi N&eacute;, Phan Thiết, v.v&hellip; th&igrave; Quy Nhơn vẫn l&agrave; c&aacute;i t&ecirc;n mới mẻ hơn, kh&ocirc;ng sợ qu&aacute; đ&ocirc;ng đ&uacute;c hoặc &ldquo;đụng h&agrave;ng&rdquo; địa điểm check-in nữa!</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/quy%20nhon%201/du-lich-quy-nhon-2.jpg\" style=\"height:1024px; width:1024px\" /></p>\r\n\r\n<h2><strong>L&yacute; do 3: Đường đua VnExpress Marathon v&agrave;o th&aacute;ng 6</strong></h2>\r\n\r\n<p>Ngo&agrave;i biển xanh v&agrave; những h&ograve;n đảo hoang sơ, du lịch Quy Nhơn h&egrave; n&agrave;y c&ograve;n c&oacute; một điểm nhấn đặc biệt kh&oacute; chối từ, ch&iacute;nh l&agrave; giải đua VnExpress Marathon 2019 (VM 2019) v&agrave;o th&aacute;ng 6. Cụ thể, giải đấu sẽ diễn ra trong ng&agrave;y 9/6; l&agrave; một trong những đường chạy marathon được mong đợi nhất m&ugrave;a h&egrave; n&agrave;y khi đạt ti&ecirc;u chuẩn quốc tế IAAF AIMS. Với 4 cự ly chuẩn: 5km, 10km, b&aacute;n marathon (21km) v&agrave; full marathon (42km),&nbsp;c&aacute;c t&iacute;n đồ vận động tha hồ được thử th&aacute;ch bản th&acirc;n b&ecirc;n cung đường biển quyến rũ của th&agrave;nh phố Quy Nhơn.</p>\r\n\r\n<p>Kh&ocirc;ng cần l&agrave; VĐV chuy&ecirc;n nghiệp, b&aacute;n chuy&ecirc;n, nghiệp dư trong nước v&agrave; quốc tế, bạn chỉ cần l&agrave; một người y&ecirc;u chạy bộ (ở mọi lứa tuổi) m&agrave; th&ocirc;i. Với mức v&eacute; dao động từ 500.000 VND &ndash; 1.300.000 VND tuỳ cự ly, bạn đ&atilde; c&oacute; thể tham gia v&agrave;o cuộc đua l&yacute; th&uacute; n&agrave;y, đồng thời c&oacute; cơ hội nhận được nhiều m&oacute;n qu&agrave; hấp dẫn.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/quy%20nhon%201/du-lich-quy-nhon-11.jpg\" style=\"height:486px; width:1024px\" /></p>\r\n\r\n<table style=\"width:814px\">\r\n	<tbody>\r\n		<tr>\r\n			<td><a href=\"https://www.traveloka.com/vi-vn/activities/vietnam/product/vnexpress-marathon-tickets-2000321829498?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-AC-OM-BLOG-Na-Detail_2000321829498&amp;utm_term=5LDKNDLCQNPINMTBLCABNHN-SND-anchortext\" rel=\"noopener\" target=\"_blank\"><strong>Đặt v&eacute; VnExpress Marathon</strong></a>&nbsp;h&ocirc;m nay để c&oacute; cơ hội nhận ngay những ưu đ&atilde;i độc quyền tr&ecirc;n Traveloka Xperience:\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<ul>\r\n				<li>Từ ng&agrave;y 13 -15/5, d&ugrave;ng m&atilde;&nbsp;<em><strong>EXPMAY2&nbsp;</strong></em>giảm ngay&nbsp;<em><strong>18%</strong></em>, tối đa&nbsp;<em><strong>180.000 VND</strong></em>, khi đặt v&eacute;&nbsp;<strong>Xperience</strong>&nbsp;tại Quy Nhơn (&aacute;p dụng cho giao dịch tối thiểu từ 600.000 VND).</li>\r\n				<li>Nhận ngay combo voucher ưu đ&atilde;i &ldquo;khủng&rdquo; từ Traveloka:&nbsp;<em><strong>500.000 VND v&eacute; m&aacute;y bay Quy Nhơn</strong></em>,&nbsp;<em><strong>500.000 VND kh&aacute;ch sạn Quy Nhơn</strong></em>&nbsp;v&agrave;&nbsp;<em><strong>100.000 VND v&eacute; Xperience</strong></em>&nbsp;&ndash; c&aacute;c dịch vụ tham quan &amp; giải tr&iacute; kh&aacute;c.</li>\r\n			</ul>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>VM 2019 l&agrave; giải chạy với mục ti&ecirc;u v&igrave; cộng đồng, hướng tới sứ mệnh lan toả tinh thần thể thao, truyền cảm hứng sống khoẻ, l&agrave;nh mạnh. Đ&acirc;y l&agrave; dịp để bạn c&ugrave;ng gia đ&igrave;nh hoặc hội bạn tham gia một sự kiện gi&agrave;u &yacute; nghĩa, gắn kết cộng đồng. Đồng thời chạy marathon cũng l&agrave; một h&igrave;nh thức thể thao hiệu quả nhất; l&agrave; một người y&ecirc;u th&iacute;ch du lịch, bạn sẽ kh&ocirc;ng bỏ qua cơ hội trải nghiệm&nbsp;<a href=\"https://blog.traveloka.com/vn/du-lich-the-thao/\" rel=\"noopener\" target=\"_blank\"><strong>xu hướng du lịch kết hợp r&egrave;n luyện thể thao</strong></a>&nbsp;&ndash; một &ldquo;hot trend&rdquo; dạo gần đ&acirc;y đ&acirc;u nhỉ?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>L&yacute; do 4: Vỗ về chiếc bụng đ&oacute;i với ẩm thực Quy Nhơn&nbsp;</strong></h2>\r\n\r\n<p>Ăn uống lu&ocirc;n l&agrave; những c&acirc;u chuyện bắt tai, bắt mắt v&agrave;&hellip; tất nhi&ecirc;n v&ocirc; c&ugrave;ng cuốn h&uacute;t, đặc biệt với team y&ecirc;u th&iacute;ch kh&aacute;m ph&aacute; ẩm thực khi du lịch! C&aacute;c m&oacute;n ngon miền trung, cụ thể ở đ&acirc;y l&agrave; ẩm thực Quy Nhơn v&ocirc; c&ugrave;ng đa dạng, phong ph&uacute; v&agrave; chắc chắn sẽ l&agrave;m bạn h&agrave;i l&ograve;ng sau khi thưởng thức.</p>\r\n\r\n<p>Đến Quy Nhơn c&oacute; hai thứ m&agrave; bạn nhất định phải thử, đ&oacute; l&agrave; rượu B&agrave;u Đ&aacute; v&agrave; b&aacute;nh x&egrave;o t&ocirc;m nhảy rau mầm.&nbsp; Rượu B&agrave;u Đ&aacute; l&agrave; một đặc sản nổi tiếng của l&agrave;ng B&agrave;u Đ&aacute;, được nấu từ gạo do l&agrave;ng trồng với vị thơm lừng kh&oacute; cưỡng, c&agrave;ng uống c&agrave;ng m&ecirc;. Ngo&agrave;i hai m&oacute;n đặc sản tr&ecirc;n, th&igrave; b&aacute;nh hỏi l&ograve;ng heo, tr&eacute;, b&aacute;nh cuốn, b&uacute;n chả c&aacute; hay nem nướng cũng l&agrave; những m&oacute;n ăn kh&ocirc;ng thể bỏ qua khi nhắc đến ẩm thực đất v&otilde;. Cua huỳnh đế, nem Chợ Huyện, b&aacute;nh &iacute;t l&aacute; gai, b&aacute;nh tr&aacute;ng nước dừa Tam Quan, b&uacute;n song thần An Th&aacute;i cũng l&agrave; những m&oacute;n ăn độc đ&aacute;o của đất v&otilde; Quy Nhơn.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/quy%20nhon%201/du-lich-quy-nhon-15.jpg\" style=\"height:960px; width:960px\" /></p>\r\n\r\n<p>Bỏ t&uacute;i ngay&nbsp;<a href=\"https://blog.traveloka.com/vn/an-gi-o-quy-nhon/\" rel=\"noopener\" target=\"_blank\"><strong>cẩm nang &ldquo;Ăn g&igrave; ở Quy Nhơn&rdquo;</strong></a>&nbsp;của Traveloka c&ugrave;ng một v&agrave;i địa chỉ ăn ngon nổi tiếng m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua khi du lịch Quy Nhơn h&egrave; n&agrave;y nh&eacute;:</p>\r\n\r\n<ul>\r\n	<li>Cơm g&agrave; &ndash; Nh&agrave; h&agrave;ng Qu&ecirc; Hương (địa chỉ: 185 L&ecirc; Hồng Phong, TP. Quy Nhơn)</li>\r\n	<li>B&aacute;nh hỏi l&ograve;ng heo &ndash; 41 Nguyễn Ch&aacute;nh hoặc 76 Trần Ph&uacute;, TP. Quy Nhơn</li>\r\n	<li>Hải sản &ndash; c&aacute;c qu&aacute;n dọc theo đường Xu&acirc;n Diệu; đường Tăng Bạt Hổ (đoạn ngay gần trường L&ecirc; Lợi)</li>\r\n	<li>X&ocirc;i Thơm: số 155/8 Nguyễn Th&aacute;i Học</li>\r\n	<li>B&uacute;n c&aacute; &ndash; qu&aacute;n Ngọc Li&ecirc;n (địa chỉ: 379 Nguyễn Huệ, TP. Quy Nhơn)</li>\r\n	<li>B&uacute;n sứa &ndash; nh&agrave; h&agrave;ng T&agrave;u Hoa Hoa (địa chỉ: 3/8 Phan Chu Trinh, TP. Quy Nhơn)</li>\r\n	<li><img alt=\"\" src=\"/ckfinder/userfiles/images/quy%20nhon%201/du-lich-quy-nhon-13.jpg\" style=\"height:768px; width:1024px\" /></li>\r\n</ul>\r\n\r\n<h2><strong>L&yacute; do 5: C&aacute;c đường bay gi&aacute; tốt v&agrave; chi ph&iacute; du lịch rẻ</strong></h2>\r\n\r\n<p>Phương c&aacute;ch di chuyển v&agrave; tổng chi ph&iacute; chuyến đi cũng l&agrave; một trong những yếu tố chủ chốt quyết định l&ecirc;n lịch cho một chuyến đi đến bất kỳ đ&acirc;u, kh&ocirc;ng chỉ ri&ecirc;ng cho du lịch Quy Nhơn. Chi ph&iacute; sinh hoạt tại Quy Nhơn v&agrave; c&aacute;c khu vực eo biển Việt Nam kh&ocirc;ng qu&aacute; đắt đỏ, ch&iacute;nh điều n&agrave;y đ&atilde; khiến cho chi ph&iacute; lưu tr&uacute;, cũng như phần chi tiết d&agrave;nh để bạn vui chơi, đi lại hoặc ăn uống cũng sẽ kh&ocirc;ng qu&aacute; cao. Chẳng phải tự nhi&ecirc;n m&agrave; du lịch Quy Nhơn lu&ocirc;n c&oacute; mặt trong danh s&aacute;ch những điểm đ&aacute;ng đến của c&aacute;c bạn trẻ y&ecirc;u du lịch bụi c&agrave; trong v&agrave; ngo&agrave;i nước, kh&ocirc;ng chỉ v&igrave; sự mến kh&aacute;ch, đ&aacute;ng y&ecirc;u của những người con đất v&otilde;, m&agrave; c&ograve;n bởi v&igrave; chi ph&iacute; ăn uống, ngủ nghỉ ở đ&acirc;y rất rẻ, cực hợp t&uacute;i tiền.</p>\r\n\r\n<p>Dạo gần đ&acirc;y, c&aacute;c đường bay thẳng đến Quy Nhơn cũng đ&atilde; được c&aacute;c h&atilde;ng bay mở rộng, nhằm ph&aacute;t triển v&agrave; đ&aacute;p ứng nhu cầu du lịch Quy Nhơn của du kh&aacute;ch. Với mức gi&aacute; kh&ocirc;ng qu&aacute; đắt so với c&aacute;c điểm đến trong nước kh&aacute;c, v&eacute; m&aacute;y bay đi Quy Nhơn c&ograve;n thường xuy&ecirc;n được khuyến m&atilde;i &ndash; điều n&agrave;y cũng sẽ gi&uacute;p bạn tiết kiệm được kha kh&aacute; chi ph&iacute; trong chuyến đi.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/quy%20nhon%201/du-lich-quy-nhon-5.jpg\" style=\"height:1024px; width:819px\" /></p>\r\n\r\n<p>Bạn đ&atilde; bị thuyết phục v&agrave; ngay lập tức l&ecirc;n lịch cho chuyến du lịch Quy Nhơn của m&igrave;nh? Vậy th&igrave; đừng qu&ecirc;n &ldquo;cất liền&rdquo;&nbsp;<a href=\"https://blog.traveloka.com/vn/top-3-lich-trinh-du-lich-quy-nhon-khac-biet/\" rel=\"noopener\" target=\"_blank\"><strong>lịch tr&igrave;nh Quy Nhơn chi tiết</strong></a>&nbsp;của Traveloka, &ldquo;đo ni đ&oacute;ng gi&agrave;y&rdquo; cho 3 phong c&aacute;ch du lịch kh&aacute;c nhau để c&oacute; một chuyến du lịch Quy Nhơn h&egrave; n&agrave;y ho&agrave;n hảo nhất bạn nh&eacute;!</p>', '2019-05-29', 1, 1),
(7, 'Tất Tần Tật Kinh Nghiệm Du Lịch Đà Nẵng-Hội An Trong 4 Ngày 3 Đêm', 'Với vị trí liền kề nhau và là trái tim của miền Trung, Hội An – Đà Nẵng luôn nằm trong danh sách những địa danh cổ kính và yên bình của Việt Nam, nơi mà người dân cũng như du khách quốc tế đều muốn ghé thăm dù chỉ một lần. Với nhiều kỳ quan và di sản, hành trình du lịch Đà Nẵng – Hội An hứa hẹn sẽ là một chuyến đi thú vị cho bạn và người thân cho kì nghỉ dài ngày sắp tới.', 'YduQ_kinh-nghiem-du-lich-hoi-an-1.jpg', '<p><strong>Đ&agrave; Nẵng&nbsp;</strong>v&agrave;<strong>&nbsp;Hội An</strong>&nbsp;l&agrave; hai th&agrave;nh phố trung t&acirc;m của miền Trung, chỉ c&aacute;ch nhau 30 km với nhiều kỳ quan v&agrave; di sản độc đ&aacute;o. Trải nghiệm du lịch Đ&agrave; Nẵng &ndash; Hội An, bạn sẽ c&oacute; cơ hội gh&eacute; thăm những b&atilde;i biển đẹp nhất ở Đ&agrave; Nẵng, những phố cổ trăm tuổi ở Hội An v&agrave; tận hưởng nhiều n&eacute;t đặc trưng th&uacute; vị kh&aacute;c chỉ c&oacute; ở hai v&ugrave;ng đất n&agrave;y. Sau đ&acirc;y sẽ l&agrave; một số th&ocirc;ng tin m&agrave; t&ocirc;i&nbsp;muốn chia sẻ với c&aacute;c bạn về kinh nghiệm du lịch Đ&agrave; Nẵng &ndash; Hội An m&agrave; t&ocirc;i đ&atilde; đ&uacute;c kết được với c&aacute;c gợi &yacute; lịch tr&igrave;nh tham quan hai th&agrave;nh phố đ&aacute;ng mến n&agrave;y trong 4 ng&agrave;y 3 đ&ecirc;m.</p>\r\n\r\n<h2><strong>1. Thời điểm du lịch</strong></h2>\r\n\r\n<p>Du lịch Hội An &ndash; Đ&agrave; Nẵng mỗi m&ugrave;a đều c&oacute; vẻ đẹp ri&ecirc;ng, nhưng thời điểm l&iacute; tưởng để gh&eacute; thăm hai th&agrave;nh phố n&agrave;y l&agrave; m&ugrave;a kh&ocirc; từ th&aacute;ng 1 đến th&aacute;ng 7 v&agrave; đẹp nhất l&agrave; trong khoảng th&aacute;ng 2 tới th&aacute;ng 5. Đ&acirc;y l&agrave; thời điểm tiết trời dễ chịu, &iacute;t mưa v&agrave; m&aacute;t mẻ, thuận lợi cho việc di chuyển v&agrave; kh&aacute;m ph&aacute;. V&agrave;o m&ugrave;a mưa (th&aacute;ng 8 đến th&aacute;ng 12), kh&iacute; hậu sẽ thất thường hơn v&agrave; thời điểm cuối năm thường c&oacute; một v&agrave;i đợt kh&iacute; hậu lạnh của m&ugrave;a đ&ocirc;ng tr&agrave;n về. Bạn cũng n&ecirc;n tham khảo dự b&aacute;o kh&iacute; hậu trước khi l&ecirc;n h&agrave;nh tr&igrave;nh cho m&igrave;nh v&agrave; người th&acirc;n để chủ động hơn cho chuyến đi.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/du-lich-da-nang-1.jpg\" style=\"height:512px; width:1024px\" /></p>\r\n\r\n<h2><strong>2. Phương tiện di chuyển</strong></h2>\r\n\r\n<p>Hiện nay chưa c&oacute; chuyến bay thẳng từ c&aacute;c tỉnh đến Hội An. S&acirc;n bay duy nhất của Quảng Nam l&agrave; s&acirc;n bay Chu Lai, c&aacute;ch Hội An kh&aacute; xa (80 km). Trong khi đ&oacute;, Đ&agrave; Nẵng lại liền kề Hội An, chỉ c&aacute;ch 30 km &ndash; tầm 40 ph&uacute;t đi đường. Do vậy, rất nhiều du kh&aacute;ch chọn phương &aacute;n đ&aacute;p m&aacute;y bay đến Đ&agrave; Nẵng v&agrave; di chuyển từ Đ&agrave; Nẵng đến Hội An. Hiện nay c&aacute;c h&atilde;ng bay nội địa như&nbsp;<a href=\"https://www.traveloka.com/vi-vn/vietnam-airlines?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-FL-OM-BLOG-Atb-A&amp;utm_term=TTTKNDLDNHATND-TGT-anchortext-NA\" rel=\"noopener noreferrer\" target=\"_blank\">Vietnam Airline</a>,&nbsp;<a href=\"http://traveloka.com/vi-vn/vietjet-air?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-FL-OM-BLOG-Atb-A&amp;utm_term=TTTKNDLDNHATND-TGT-anchortext-NA\" rel=\"noopener noreferrer\" target=\"_blank\">Vietjet</a>,&nbsp;<a href=\"http://traveloka.com/vi-vn/jetstar?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-FL-OM-BLOG-Atb-A&amp;utm_term=TTTKNDLDNHATND-TGT-anchortext-NA\" rel=\"noopener noreferrer\" target=\"_blank\">Jetstar</a>, đều khai th&aacute;c đường bay đến Đ&agrave; Nẵng; v&igrave; vậy, bạn n&ecirc;n chủ động đặt v&eacute; trước một đến v&agrave;i th&aacute;ng để c&oacute; gi&aacute; v&eacute; tốt v&agrave; tr&aacute;nh t&igrave;nh trạng hết v&eacute;.</p>\r\n\r\n<p>Do thuận lợi về vị tr&iacute; địa l&yacute; liền kề nhau, bạn c&oacute; thể dễ d&agrave;ng di chuyển từ Đ&agrave; Nẵng đến Hội An bằng taxi, xe bus, xe m&aacute;y:</p>\r\n\r\n<ul>\r\n	<li>Xe bu&yacute;t: Đ&acirc;y l&agrave; phương &aacute;n di chuyển đơn giản v&agrave; tiết kiệm nhất. Tại bến xe Đ&agrave; Nẵng sẽ c&oacute; tuyến xe bu&yacute;t số 1 khởi h&agrave;nh từ Đ&agrave; Nẵng chạy thẳng tới Hội An. Xe hoạt động từ 5: 30 đến 17: 30 h&agrave;ng ng&agrave;y với tần suất: 20 ph&uacute;t/ chuyến, tương đương 38 chuyến/ ng&agrave;y (cả đi v&agrave; về). Ngo&agrave;i ra, ở Đ&agrave; Nẵng cũng c&oacute; loại xe bu&yacute;t 2 tầng Coco Bus, đưa bạn đến c&aacute;c điểm tham quan của Đ&agrave; Nẵng. Tham khảo th&ecirc;m b&agrave;i viết&nbsp;<strong><a href=\"https://blog.traveloka.com/vn/di-da-nang-trai-nghiem-coco-bus/\" rel=\"noopener\" target=\"_blank\">Coco Bus</a></strong>&nbsp;tr&ecirc;n Traveloka Blog.</li>\r\n	<li>Taxi: Di chuyển bằng taxi gi&uacute;p bạn thuận tiện hơn về thời gian v&agrave; địa điểm, tuy nhi&ecirc;n gi&aacute; th&agrave;nh sẽ cao hơn rất nhiều so với c&aacute;c phương tiện di chuyển kh&aacute;c. Bạn c&oacute; thể sử dụng dịch vụ taxi của c&aacute;c c&ocirc;ng ty như: Taxi Mai Linh, Taxi S&ocirc;ng H&agrave;n, Taxi Hương L&uacute;a, Airport Taxi.</li>\r\n	<li>Xe m&aacute;y: Bạn cũng c&oacute; thể li&ecirc;n lạc với kh&aacute;ch sạn để được hướng dẫn thu&ecirc; xe m&aacute;y khi du lịch Đ&agrave; Nẵng &ndash; Hội An. H&agrave;nh tr&igrave;nh di chuyển bằng xe m&aacute;y ngắn nhất l&agrave; từ trung t&acirc;m Đ&agrave; Nẵng qua cầu S&ocirc;ng H&agrave;n sẽ tới thẳng Hội An. Di chuyển bằng xe m&aacute;y ở Hội An kh&aacute; thuận tiện v&igrave; đường Hội An tương đối nhỏ. Tuy nhi&ecirc;n bạn cần c&oacute; bản đồ hướng dẫn v&agrave; lu&ocirc;n đảm bảo an to&agrave;n khi tham gia giao th&ocirc;ng.</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/Coco-Bus.jpg\" style=\"height:652px; width:1024px\" /></p>\r\n\r\n<p><strong>3. Gợi &yacute; h&agrave;nh tr&igrave;nh 4 ng&agrave;y 3 đ&ecirc;m</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Bạn c&oacute; thể tham khảo lịch tr&igrave;nh sau cho chuyến du lịch Đ&agrave; Nẵng &ndash; Hội An:</p>\r\n\r\n	<p>Ng&agrave;y 1: Đến Đ&agrave; Nẵng, gh&eacute; thăm b&atilde;i biển Mỹ Kh&ecirc;, ch&ugrave;a Linh Ứng, đỉnh B&agrave;n Cờ, b&aacute;n đảo Sơn Tr&agrave;, Ngũ H&agrave;nh Sơn v&agrave; c&aacute;c địa điểm quanh th&agrave;nh phố hoặc&nbsp;<a href=\"https://blog.traveloka.com/vn/lac-troi-voi-30-mon-an-ngon-da-nang-ma-ban-khong-the-bo-lo/\" rel=\"noopener\" target=\"_blank\">kh&aacute;m ph&aacute; ẩm thực Đ&agrave; Nẵng</a>. Tối l&ecirc;n du thuyền dạo một v&ograve;ng ngắm s&ocirc;ng H&agrave;n. Bạn c&oacute; thể tham khảo&nbsp;<a href=\"https://blog.traveloka.com/vn/tron-bo-bi-kip-du-lich-da-nang/\" rel=\"noopener\" target=\"_blank\">Bộ b&iacute; k&iacute;p du lịch Đ&agrave; Nẵng thần th&aacute;nh</a>&nbsp;Traveloka đ&atilde; chuẩn bị sẵn cho bạn rồi đ&acirc;y.</p>\r\n\r\n	<p>Ng&agrave;y 2: Buổi s&aacute;ng gh&eacute; thăm B&agrave; N&agrave; Hills, buổi chiều khởi h&agrave;nh từ B&agrave; N&agrave; đến Hội An. Ngủ đ&ecirc;m tại Hội An v&agrave; ngắm phố đ&egrave;n lồng.</p>\r\n\r\n	<p>Ng&agrave;y 3: Kh&aacute;m ph&aacute; Hội An: tham quan c&aacute;c nh&agrave; cổ, ch&ugrave;a Cầu, Hội qu&aacute;n Ph&uacute;c Kiến&hellip; v&agrave; thưởng thức những m&oacute;n ăn đặc trưng. Bạn c&oacute; thể tham khảo&nbsp;<a href=\"https://blog.traveloka.com/vn/kinh-nghiem-du-lich-hoi-an-tu-tuc-tu-a-den-z/\" rel=\"noopener\" target=\"_blank\">trọn bộ kinh nghiệm kh&aacute;m ph&aacute; Hội An từ A &ndash; Z</a>&nbsp;tr&ecirc;n Traveloka blog để l&ecirc;n kế hoạch &ldquo;chuẩn kh&ocirc;ng cần chỉnh&rdquo;.</p>\r\n\r\n	<p>Ng&agrave;y 4: Khởi h&agrave;nh từ Hội An về Đ&agrave; Nẵng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/du-lich-da-nang-13.jpg\" style=\"height:666px; width:1024px\" /></p>\r\n\r\n<h2><strong>4. C&aacute;c điểm tham quan v&agrave; ăn uống khi du lịch Hội An &ndash; Đ&agrave; Nẵng</strong></h2>\r\n\r\n<p>Hội An chứa đựng nhiều gi&aacute; trị phi vật thể đ&aacute;ng qu&yacute;. Những điểm đến nổi bật của Hội An c&oacute; thể kể đến như Ch&ugrave;a Cầu (x&acirc;y dựng từ thế kỷ 16 với nhiều n&eacute;t kiến tr&uacute;c độc đ&aacute;o); c&aacute;c hội qu&aacute;n của người Hoa như hội qu&aacute;n Ph&uacute;c Kiến, hội qu&aacute;n Quảng Đ&ocirc;ng. Ngo&agrave;i ra, Hội An c&ograve;n lưu giữ trong m&igrave;nh nhiều ng&ocirc;i nh&agrave; cổ c&oacute; ni&ecirc;n đại h&agrave;ng trăm năm, điển h&igrave;nh l&agrave; nh&agrave; cổ Tấn K&yacute; được x&acirc;y dựng c&aacute;ch đ&acirc;y hơn 200 năm. Với những phong tục v&agrave; văn h&oacute;a rất ri&ecirc;ng, Hội An về đ&ecirc;m lu&ocirc;n rực rỡ &aacute;nh đ&egrave;n, mộc mạc nhưng đầy b&iacute; ẩn.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/kinh-nghiem-du-lich-hoi-an-1.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Nếu bạn muốn t&igrave;m kiếm một trải nghiệm s&ocirc;i động, k&iacute;ch th&iacute;ch ở phố Hội th&igrave; c&oacute; một địa điểm bạn chẳng thể bỏ qua, đ&oacute; ch&iacute;nh l&agrave; Vinpearl Land Nam Hội An. Vừa được mở cửa c&aacute;ch đ&acirc;y kh&ocirc;ng l&acirc;u, Vinpearl Land Nam Hội An l&agrave; tổ hợp vui chơi giải tr&iacute; rộng lớn với đầy đủ c&aacute;c khu tham quan, tr&ograve; chơi trong v&agrave; ngo&agrave;i trời, c&ocirc;ng vi&ecirc;n nước vườn b&aacute;ch th&uacute; v&agrave; c&aacute;c c&ocirc;ng tr&igrave;nh t&aacute;i hiện văn ho&aacute; d&acirc;n gian Việt Nam.</p>\r\n\r\n<ul>\r\n	<li><em><a href=\"https://www.traveloka.com/vi-vn/activities/vietnam/product/vinpearl-land-nam-hoi-an-tickets-2000684220694?utm_source=blog.traveloka.com&amp;utm_medium=referral&amp;utm_campaign=AD-VN-AC-OM-BLOG-Na-Detail_2000684220694&amp;utm_term=TTTNTTKNMDLCNNHIAT4N3-TGT-anchortext\" rel=\"noopener\" target=\"_blank\"><strong>Đặt v&eacute; Vinpearl Land Nam Hội An online</strong></a>, gi&aacute; chỉ từ 199.000 VND</em></li>\r\n</ul>\r\n\r\n<p><em>​​​​​​​</em>Đến Hội An, bạn cũng n&ecirc;n gh&eacute; thăm c&aacute;c b&atilde;i tắm rất đẹp như&nbsp;<em><strong>biển Cửa Đại</strong></em>,&nbsp;<em><strong>b&atilde;i tắm An B&agrave;ng</strong></em>,&nbsp;<em><strong>s&ocirc;ng Thu Bồn</strong></em>&nbsp;hay dừng ch&acirc;n ở&nbsp;<em><strong>đảo C&ugrave; Lao Ch&agrave;m</strong></em>&nbsp;đầy hoang sơ&hellip; v&agrave; thưởng ngoạn những đặc &acirc;n của thi&ecirc;n nhi&ecirc;n d&agrave;nh cho v&ugrave;ng đất n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/kinh-nghiem-du-lich-an-bang-3.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Những<a href=\"https://blog.traveloka.com/vn/top-5-mon-an-ban-nhat-dinh-phai-thu-khi-den-hoi-an-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">&nbsp;m&oacute;n ăn đặc trưng của Hội An</a>&nbsp;l&agrave; cao lầu, cơm g&agrave; Phố Hội, b&aacute;nh bao, mỳ Quảng, b&aacute;nh b&egrave;o. Trong đ&oacute;, cao lầu l&agrave; m&oacute;n ăn đậm n&eacute;t Hội An nhất m&agrave; du kh&aacute;ch kh&ocirc;ng thể bỏ qua mỗi khi đến nơi đ&acirc;y.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/tat-tan-tat-kinh-nghiem-du-lich-da-nang-hoi-an-trong-4-ngay-3-dem-5.jpg\" style=\"height:766px; width:1024px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20da%20nang/kinh-nghiem-du-lich-hoi-an-26.jpg\" style=\"height:683px; width:1024px\" />​​​​​​​</p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một số chia sẻ đơn giản v&agrave; thuận tiện về kinh nghiệm du lịch Đ&agrave; Nẵng &ndash; Hội An cho du kh&aacute;ch. Giữa mu&ocirc;n v&agrave;n điểm đến tr&ecirc;n dải đất h&igrave;nh chữ S, Hội An &ndash; Đ&agrave; Nẵng sẽ l&agrave; những điểm nhấn rất đặc biệt, rất ri&ecirc;ng m&agrave; bạn kh&ocirc;ng thể t&igrave;m được ở bất cứ nơi n&agrave;o kh&aacute;c. Ch&uacute;c bạn sẽ c&oacute; một chuyến kh&aacute;m ph&aacute; thật th&uacute; vị tại v&ugrave;ng đất n&agrave;y!</p>', '2019-05-29', 1, 1),
(8, 'Ở Huế vẫn còn đó một nỗi nhớ Thôn Vĩ Dạ', 'Tôi không nhớ khi nghe những vần thơ trong bài “Đây thôn Vĩ Dạ” tôi đang học lớp mấy, cũng chẳng nghĩ ra bài kiểm tra phân tích nét đẹp Hàn Mặc Tử tôi được mấy điểm, nhưng nỗi buồn man mác “Đây Thôn Vĩ Dạ” vẫn luôn ám ảnh và thôi thúc tôi đặt chân đến thôn Vĩ với một nhớ thương rất đỗi mơ hồ. Huế có Đại Nội cổ kính, có sông Hương êm đềm, có chùa Thiên Mụ linh thiêng, có cầu Tràng Tiền,… và Huế còn có một thôn Vĩ Dạ bình dị, dịu dàng tới vô cùng!', 'lB1e_thon-vi-da-12.jpg', '<blockquote>\r\n<p><strong><em>&ldquo;Sao anh kh&ocirc;ng về chơi th&ocirc;n Vĩ<br />\r\nNh&igrave;n nắng h&agrave;ng cau nắng mới l&ecirc;n&hellip;&rdquo;</em></strong></p>\r\n</blockquote>\r\n\r\n<p>C&oacute; thể rất nhiều bạn trẻ cũng như t&ocirc;i, chưa một lần đến th&ocirc;n Vĩ, nhưng lại chẳng xa lạ khi nghe t&ecirc;n miền qu&ecirc; n&agrave;y, bởi n&oacute; gắn liền với những trang s&aacute;ch tuổi thơ của mọi học sinh Việt Nam. Gh&eacute; rồi mới thấy Vĩ Dạ (hay c&ograve;n gọi với t&ecirc;n mới l&agrave; Cồn Hến) nằm trầm mặc b&ecirc;n d&ograve;ng Hương Giang thuộc x&atilde; Hương Lưu, phường Vĩ Dạ, c&aacute;ch Trung t&acirc;m th&agrave;nh phố Huế chưa đến 10 ph&uacute;t chạy xe m&aacute;y. Vĩ Dạ đ&acirc;y, d&ograve;ng s&ocirc;ng Hương c&ograve;n đ&oacute; nhưng cảnh sắc đ&atilde; kh&aacute;c nhiều so với &ldquo;nắng h&agrave;ng cau&rdquo;, &ldquo;l&aacute; tr&uacute;c che ngang&rdquo; trong thơ của H&agrave;n Mặc Tử.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-14.jpg\" style=\"height:707px; width:1024px\" /></p>\r\n\r\n<h2><strong>Đường sang th&ocirc;n Vĩ Dạ</strong></h2>\r\n\r\n<p>Vĩ Dạ được bao bọc bởi d&ograve;ng s&ocirc;ng Hương Giang, đi dọc đường Nguyễn Sinh Cung sẽ gặp một c&acirc;y cầu sắt cổ k&iacute;nh với t&ecirc;n gọi cầu Ph&uacute; Lưu, đi hết cầu n&agrave;y l&agrave; tới th&ocirc;n Vĩ. Thay thế &ldquo;H&agrave;ng cau nắng mới l&ecirc;n&rdquo; &ldquo;L&aacute; tr&uacute;c che ngang mặt chữ điền&rdquo; giờ đ&acirc;y l&agrave; những con đường b&ecirc; t&ocirc;ng trải d&agrave;i cuối x&oacute;m, những ng&ocirc;i nh&agrave; được l&aacute;t gạch khang trang.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-12.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Gh&eacute; th&ocirc;n Vĩ Dạ v&agrave;o một buổi chiều đầu thu, ch&uacute;ng t&ocirc;i đi dọc con đường lớn chạy thẳng từ cầu Ph&uacute; Lưu xuy&ecirc;n suốt đến cuối ng&ocirc;i l&agrave;ng. Bước qua c&acirc;y cầu, đặt những bước ch&acirc;n đầu ti&ecirc;n đến th&ocirc;n Vĩ ch&uacute;ng t&ocirc;i như cảm nhận được một luồng thời gian kh&aacute;c biệt so với phố thị b&ecirc;n ngo&agrave;i. Kh&ocirc;ng c&oacute; sự ồn &agrave;o, chẳng thấy n&eacute;t tấp nập vồn v&atilde;, chỉ c&ograve;n lại nơi đ&acirc;y một khung thời gian phủ m&agrave;u b&igrave;nh y&ecirc;n.</p>\r\n\r\n<h2><strong>Đặc sản th&ocirc;n Vĩ Dạ: Hến</strong></h2>\r\n\r\n<p>Nếu t&ecirc;n &ldquo;Vĩ Dạ&rdquo; gắn liền với c&aacute;i hồn của người d&acirc;n th&ocirc;n Vĩ, th&igrave; Cồn Hến lại l&agrave; c&aacute;i t&ecirc;n mới mang nhiều đặc trưng thời hiện đại. Sở dĩ người ta gọi mảnh đất chữ t&igrave;nh n&agrave;y l&agrave; Cồn Hến bởi ở đ&acirc;y c&oacute; rất nhiều hến m&agrave; lại v&ocirc; c&ugrave;ng ngon. Nơi đ&acirc;y được coi l&agrave; &ldquo;c&ocirc;ng trường khổng lồ&rdquo; chuy&ecirc;n đ&aacute;nh bắt v&agrave; chế biến những m&oacute;n đặc sản từ hến như: Cơm hến, b&uacute;n hến, hến x&agrave;o &hellip;</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-16.png\" style=\"height:628px; width:941px\" /></p>\r\n\r\n<p>Vừa bước đến đầu th&ocirc;n ch&uacute;ng t&ocirc;i đ&atilde; bắt gặp ngay một qu&aacute;n b&uacute;n hến đậm chất Vĩ Dạ. Gi&aacute; cho mỗi suất b&uacute;n hay ch&aacute;o ở đ&acirc;y chỉ 10.000 VND / suất nhưng rất ngon v&agrave; bắt mắt. Ngo&agrave;i nguy&ecirc;n liệu đặc trưng l&agrave; hến, m&oacute;n b&uacute;n n&agrave;y c&ograve;n c&oacute; t&oacute;p mỡ kh&ocirc;, lạc rang, một ch&uacute;t nộm đu đủ, miến kh&ocirc; sấy &hellip; tất cả tạo n&ecirc;n một m&oacute;n ăn đặc biệt để lại nhiều ấn tượng với người lần đầu ti&ecirc;n thưởng thức như ch&uacute;ng t&ocirc;i. Nghe đ&acirc;u c&ocirc; b&aacute;n h&agrave;ng chỉ nh&agrave; b&agrave; Kim C&uacute;c &ndash; &ldquo;người t&igrave;nh th&ocirc;n Vĩ&rdquo; của H&agrave;n Mặc Tử ngay gần đ&acirc;y!</p>\r\n\r\n<p>Hến kh&ocirc;ng chỉ l&agrave; đặc sản Vĩ Dạ m&agrave; c&ograve;n mang n&eacute;t đặc sắc của ẩm thực cố đ&ocirc;, sẽ l&agrave; chuyến đi chưa ho&agrave;n hảo nếu đến Huế m&agrave; bạn kh&ocirc;ng thưởng thức m&oacute;n ăn tinh tế n&agrave;y.</p>\r\n\r\n<h2><strong>Qu&aacute;n c&oacute;c b&ecirc;n th&ocirc;n</strong></h2>\r\n\r\n<p>Người d&acirc;n Huế uống c&agrave; ph&ecirc; nhiều, ấy vậy m&agrave; Huế c&oacute; rất nhiều qu&aacute;n c&agrave; ph&ecirc; to nhỏ kh&aacute;c nhau. Th&ocirc;n Vĩ cũng vậy. C&oacute; rất nhiều h&agrave;ng qu&aacute;n được b&aacute;n tr&ecirc;n dọc đường v&agrave;o th&ocirc;n Vĩ, ch&uacute;ng t&ocirc;i dừng ch&acirc;n tại một qu&aacute;n c&oacute;c nhỏ ở gần chợ Vĩ Dạ để nghỉ ch&acirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-4.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Đồ uống ch&iacute;nh của qu&aacute;n l&agrave; c&agrave; ph&ecirc;, ngo&agrave;i ra c&ograve;n c&oacute; tr&agrave; đ&aacute; v&agrave; một số loại nước uống đ&oacute;ng chai. Ch&uacute;ng t&ocirc;i gọi mỗi người một cốc c&agrave; ph&ecirc; sữa đ&aacute; với gi&aacute; 10.000 VND / cốc của c&ocirc; chủ qu&aacute;n rất hiền v&agrave; hiếu kh&aacute;ch. Vẫn l&agrave; một qu&aacute;n c&agrave; ph&ecirc; ven đường nhưng lại kh&aacute;c mọi qu&aacute;n x&aacute; S&agrave;i G&ograve;n m&agrave; hằng ng&agrave;y t&ocirc;i thường gh&eacute; qua.</p>\r\n\r\n<p>Những bộ b&agrave;n ghế v&agrave; đồ d&ugrave;ng ở đ&acirc;y đều kho&aacute;c l&ecirc;n m&igrave;nh một c&aacute;i hồn xưa cũ. Chiếc tủ lạnh cũ kĩ, nền nh&agrave; lấm lem đất, mảng v&ocirc;i tr&oacute;c tr&ecirc;n tường &hellip; tất cả dường như đang t&ocirc; điểm th&ecirc;m n&eacute;t dung dị cũng như cảnh vật nơi đ&acirc;y.</p>\r\n\r\n<h2><strong>Th&ocirc;n Vĩ h&ocirc;m nay</strong></h2>\r\n\r\n<p>Mặc d&ugrave; đ&atilde; đi qua biết bao năm th&aacute;ng, đồng h&agrave;nh c&ugrave;ng nhiều thời k&igrave; lịch sử nhưng Vĩ Dạ vẫn giữ được một diện mạo rất ri&ecirc;ng. Dọc theo con đường l&agrave;ng l&agrave; những ng&ocirc;i nh&agrave; nhỏ đậm n&eacute;t đẹp mộc mạc. K&iacute; ức về tuổi thơ c&ugrave;ng một v&ugrave;ng trời b&igrave;nh y&ecirc;n của t&ocirc;i một lần nữa trỗi dậy đầy thổn thức v&agrave; mơ m&agrave;ng. V&ugrave;ng trời b&igrave;nh y&ecirc;n đ&oacute; giờ đ&acirc;y đ&atilde; được thay thế bằng những d&atilde;y phố cao tầng c&ugrave;ng nhịp sống đ&ocirc; thị. Do vậy khi lại được thấy khung cảnh đơn nhiều người cũng như t&ocirc;i d&acirc;ng l&ecirc;n niềm nhớ nhung da diết h&ograve;a quyện c&ugrave;ng nỗi buồn man m&aacute;c.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-11.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Cảnh h&ugrave;ng vĩ nh&igrave;n mấy cũng thấy nh&agrave;m nhưng những cảnh b&igrave;nh dị ở th&ocirc;n qu&ecirc; như Vĩ Dạ t&ocirc;i cứ muốn &ldquo;&ocirc;m&rdquo; v&agrave;o l&ograve;ng m&atilde;i. N&oacute; đơn giản n&ecirc;n dung lượng n&oacute; nhẹ, dung nạp v&agrave;o tr&aacute;i tim m&igrave;nh cũng thấy nhẹ nh&otilde;m!</p>\r\n\r\n<h2><strong>Cồn Hến &ndash; Một x&oacute;m nhỏ b&igrave;nh y&ecirc;n</strong></h2>\r\n\r\n<p>Kh&ocirc;ng nhiều du kh&aacute;ch chọn cồn Hến l&agrave; địa điểm du lịch khi đặt ch&acirc;n đến Huế, n&ecirc;n nơi đ&acirc;y vẫn giữ được sự d&acirc;n d&atilde; v&agrave; n&eacute;t ri&ecirc;ng vốn c&oacute;. Tiếp tục tr&ecirc;n con đường quanh co ch&uacute;ng t&ocirc;i được h&ograve;a m&igrave;nh v&agrave;o nhịp sống buổi chiều của người d&acirc;n nơi đ&acirc;y. Ph&iacute;a xa sau kh&oacute;m tre c&aacute;c b&agrave;, c&aacute;c cụ đang n&oacute;i cười r&ocirc;m rả kể về c&acirc;u chuyện mới để lại h&ocirc;m qua, về những niềm vui nho nhỏ trong ng&agrave;y. Thấy t&ocirc;i đang mải m&ecirc; chụp ảnh c&aacute;c b&agrave; c&ograve;n kh&ocirc;ng qu&ecirc;n gửi mấy c&acirc;u tr&ecirc;u đ&ugrave;a khiến ch&uacute;ng t&ocirc;i cảm thấy v&ocirc; c&ugrave;ng gần gũi.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-7-1.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Ngay b&ecirc;n cạnh chỗ t&ocirc;i dừng ch&acirc;n l&aacute;c đ&aacute;c một v&agrave;i qu&aacute;n h&agrave;ng rong với b&uacute;n hến trộn v&agrave; một v&agrave;i m&oacute;n đồ ăn vặt của trẻ con. Đi xa dần về ph&iacute;a cuối th&ocirc;n cạnh một con đ&ecirc; nhỏ, ch&uacute;ng t&ocirc;i ch&igrave;m đắm trong những cảnh đẹp b&igrave;nh y&ecirc;n đượm m&agrave;u ho&agrave;i cổ: Lũy tre, d&agrave;n hoa, con đường&hellip; mỗi cảnh vật đều khơi l&ecirc;n d&ograve;ng cảm x&uacute;c b&igrave;nh y&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hue/thon-vi-da-2.jpg\" style=\"height:708px; width:1024px\" /></p>\r\n\r\n<p>Khi &aacute;nh nắng cuối c&ugrave;ng của buổi chiều kh&eacute;p lại cũng l&agrave; l&uacute;c ch&uacute;ng t&ocirc;i phải di chuyển về th&agrave;nh phố. Bước qua c&acirc;y cầu sắt kia sẽ l&agrave; một thế giới kh&aacute;c, kh&ocirc;ng c&ograve;n n&eacute;t dung dị b&igrave;nh y&ecirc;n, chẳng c&ograve;n nhịp thở &ecirc;m đềm chầm chậm. Chỉ vương lại nơi đ&acirc;y một nỗi nhớ man m&aacute;c v&agrave; lời hẹn ng&agrave;y quay lại để một lần nữa được ch&igrave;m đắm trong những gi&acirc;y ph&uacute;t đượm niềm an nhi&ecirc;n. Nếu một lần đến Huế, bạn đừng bỏ qua những thước phim quay chậm th&ocirc;n Vĩ Dạ để đem về cho m&igrave;nh một bầu trời cảm x&uacute;c như chuyến đi của ch&uacute;ng t&ocirc;i nh&eacute;!</p>', '2019-05-29', 1, 1),
(9, 'Lên Hà Giang, nghe người Mèo kể chuyện mùa nước đổ', 'Nhắc đến Hà Giang, có một câu nói mà người mê xê dịch thường rỉ nhau rằng: Ở đây mùa nào cũng đẹp. Thật vậy, nếu như tháng 10, đất trời Hà Giang chìm trong sắc màu của hoa tam giác mạch; khi Tết đến, hoa đào, hoa mận thi nhau khoe sắc bên tường đá mỗi gia đình người Mèo thì khi hè về, Hà Giang mùa nước đổ tới, những thửa ruộng bậc thang trũng nước in màu trời kéo dài vô tận khiến ai cũng phải trầm trồ khen ngợi.', 'T2YA_ha-giang-mua-nuoc-do-7.jpg', '<h2><strong>C&oacute; một H&agrave; Giang m&ugrave;a nước đổ&nbsp;</strong></h2>\r\n\r\n<p>M&igrave;nh quyết định l&ecirc;n H&agrave; Giang v&agrave;o th&aacute;ng 6, khi l&uacute;a chi&ecirc;m đ&atilde; trổ b&ocirc;ng v&agrave;ng &oacute;ng khắp c&aacute;nh đồng ở dưới xu&ocirc;i, trong l&ograve;ng h&aacute;o hức được ngắm m&ugrave;a l&uacute;a tr&ecirc;n ruộng bậc thang T&acirc;y Bắc. Nhưng khi m&igrave;nh đến, ruộng chỉ to&agrave;n l&agrave; nước đến lạ. Người M&egrave;o bảo, đ&acirc;y l&agrave; H&agrave; Giang m&ugrave;a nước đổ.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hagiang/ha-giang-mua-nuoc-do-7.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>Mỗi năm, người M&egrave;o chỉ trồng độc một vụ l&uacute;a l&agrave; vụ m&ugrave;a, thu hoạch v&agrave;o th&aacute;ng 9. Cứ khi th&aacute;ng 5 chuyển m&igrave;nh sang th&aacute;ng 6, khi xu&acirc;n vắt sang h&egrave; c&ugrave;ng những cơn mưa lớn, nước đổ từ ruộng cao sẽ đổ xuống ruộng thấp, cứ thế tạo th&agrave;nh &ldquo;th&aacute;p nước&rdquo; k&eacute;o d&agrave;i từ đỉnh đến ch&acirc;n n&uacute;i xa t&iacute;t tắp. M&ugrave;a nước đổ k&eacute;o d&agrave;i đến hết th&aacute;ng 7 nhưng v&agrave;o th&aacute;ng 5 &ndash; th&aacute;ng 6, khi m&ugrave;a cấy bắt đầu l&agrave; đẹp nhất.</p>\r\n\r\n<p>V&agrave;o m&ugrave;a nước, người M&egrave;o kh&ocirc;ng chỉ trồng l&uacute;a, họ c&ograve;n trồng ng&ocirc; khắp tr&ecirc;n cao nguy&ecirc;n đ&aacute;. M&ugrave;a n&agrave;y mưa nhiều, ng&ocirc; lớn nhanh như thổi. Ch&uacute;ng m&igrave;nh đ&atilde; h&aacute; hốc mồm khi nh&igrave;n thấy ng&ocirc; bạt ng&agrave;n tr&ecirc;n n&uacute;i, xen lẫn đ&aacute; trải từ tr&ecirc;n đỉnh xuống tận dưới ch&acirc;n v&agrave; n&oacute;i đ&ugrave;a với nhau: người M&egrave;o t&agrave;i nhỉ, trồng ng&ocirc; cả tr&ecirc;n đ&aacute;.</p>\r\n\r\n<p>M&ugrave;a nước đổ v&agrave;o m&ugrave;a h&egrave;, ấy m&agrave; thời tiết m&aacute;t mẻ th&iacute;ch m&ecirc;.&nbsp; Những cơn mưa r&agrave;o bất chợt giữa đất trời n&uacute;i non trập tr&ugrave;ng khiến nơi đ&acirc;y l&uacute;c n&agrave;o cũng &ldquo;bắt&rdquo; bạn phải kho&aacute;c một chiếc &aacute;o mỏng mới chịu. Đ&uacute;ng l&agrave; chỗ &ldquo;trốn&rdquo; l&yacute; tưởng khỏi c&aacute;i n&oacute;ng đến ngộp thở của thủ đ&ocirc; phải kh&ocirc;ng n&agrave;o?</p>\r\n\r\n<p>Thật may mắn khi sự hiểu lầm đ&atilde; đưa ch&uacute;ng m&igrave;nh đến với một H&agrave; Giang m&ugrave;a nước đổ kh&ocirc;ng chật chội bởi kh&aacute;ch du lịch m&ugrave;a lễ hội lại c&ograve;n được thỏa th&iacute;ch h&ograve;a m&igrave;nh v&agrave;o đất trời bao la c&ugrave;ng ng&agrave;n bức ảnh đẹp &ldquo;kh&ocirc;ng g&oacute;c chết&rdquo;.</p>\r\n\r\n<h2><strong>L&ecirc;n H&agrave; Giang như thế n&agrave;o?</strong></h2>\r\n\r\n<p>C&oacute; nhiều h&agrave;nh tr&igrave;nh kh&aacute;m ph&aacute; H&agrave; Giang m&ugrave;a nước đổ cho bạn tha hồ chọn lựa. Nếu bạn l&agrave; người ưa mạo hiểm v&agrave; c&oacute; m&aacute;u phi&ecirc;u lưu, bạn c&oacute; thể đi xe m&aacute;y từ H&agrave; Nội. Nếu bạn đi một m&igrave;nh v&agrave; m&ecirc; ngắm cảnh qua &ocirc; cửa k&iacute;nh, bạn c&oacute; thể di chuyển bằng &ocirc; t&ocirc; từ H&agrave; Nội l&ecirc;n th&agrave;nh phố rồi bắt xe l&ecirc;n thị trấn Đồng Văn.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hagiang/ha-giang-mua-nuoc-do-9.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p>H&agrave;nh tr&igrave;nh của ch&uacute;ng m&igrave;nh chọn l&agrave; sự kết hợp của hai kiểu tr&ecirc;n, bởi kh&ocirc;ng c&oacute; nhiều thời gian m&agrave; lại th&iacute;ch vi vu tr&ecirc;n những cung đường đẹp nhất nh&igrave; T&acirc;y Bắc. Ch&uacute;ng m&igrave;nh đ&atilde; bắt xe kh&aacute;ch đ&ecirc;m từ H&agrave; Nội v&agrave; s&aacute;ng h&ocirc;m sau thu&ecirc; xe m&aacute;y &ldquo;phượt&rdquo; l&ecirc;n cao nguy&ecirc;n đ&aacute;. Cảm gi&aacute;c ngồi tr&ecirc;n chiếc xe băng qua những thửa ruộng bậc thang đang m&ugrave;a nước đổ hay bạt ng&agrave;n ng&ocirc; đang đến m&ugrave;a ra bắp dưới thời tiết se se lạnh thật tuyệt. Với h&agrave;nh tr&igrave;nh n&agrave;y, chỉ 2 ng&agrave;y 3 đ&ecirc;m th&ocirc;i nhưng bạn c&oacute; thể đặt ch&acirc;n đến những điểm đẹp nhất ở H&agrave; Giang rồi.</p>\r\n\r\n<p><strong><em>Cung đường của bọn m&igrave;nh:</em></strong></p>\r\n\r\n<p><em>Ng&agrave;y 1: Th&agrave;nh phố H&agrave; Giang &ndash; Quản Bạ &ndash; Y&ecirc;n Minh &ndash; Đồng Văn</em></p>\r\n\r\n<p><em>Ng&agrave;y 2: Đồng Văn &ndash; M&egrave;o Vạc &ndash; Y&ecirc;n Minh &ndash; Th&agrave;nh phố H&agrave; Giang</em></p>\r\n\r\n<h2><strong>Người M&egrave;o vui tươi chuẩn bị vụ m&ugrave;a mới&nbsp;</strong></h2>\r\n\r\n<p>Đối với đồng b&agrave;o d&acirc;n tộc sống ở v&ugrave;ng đất địa đầu Tổ quốc, chẳng c&aacute;i vui n&agrave;o hơn vụ m&ugrave;a bội thu. Thế n&ecirc;n người M&egrave;o &ldquo;nghi&ecirc;n cứu&rdquo; tỉ mỉ lắm, l&agrave;m thế n&agrave;o để v&agrave;o m&ugrave;a nước đổ phải căn được nước tr&ecirc;n ruộng vừa đủ để gieo hạt, khi n&agrave;o phải th&aacute;o bớt nước đi để th&oacute;c b&aacute;m đất nảy mầm.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hagiang/ha-giang-mua-nuoc-do-10.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p>M&ugrave;a nước đổ đến, người d&acirc;n v&ugrave;ng n&agrave;y lại n&ocirc; nức đi đắp đập, ke bờ, chuẩn bị dẫn nước chuẩn bị cho vụ m&ugrave;a mới. C&ugrave;ng với nước mưa, họ nối những ống nứa từ tr&ecirc;n n&uacute;i để dẫn nước v&agrave;o ruộng gi&uacute;p ng&acirc;m đất trước khi gieo hạt. Người M&egrave;o kể, họ phải canh trời mưa để đi l&agrave;m đồng, kể cả mưa v&agrave;o buổi tối bởi như vậy mới c&oacute; thể giữ nước ở c&aacute;c bậc ruộng vừa đủ, mới trồng được l&uacute;a, mới c&oacute; c&aacute;i để ăn.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hagiang/ha-giang-mua-nuoc-do-8.jpg\" style=\"height:1004px; width:1024px\" /></p>\r\n\r\n<p>Ch&uacute;ng m&igrave;nh may mắn l&ecirc;n đ&uacute;ng ng&agrave;y chủ nhật, ng&agrave;y duy nhất người M&egrave;o tr&ecirc;n Đồng Văn họp chợ trong tuần sau những ng&agrave;y đồng &aacute;ng. Phi&ecirc;n chợ kh&ocirc;ng chỉ l&agrave; nơi trai g&aacute;i nơi đ&acirc;y hẹn h&ograve; m&agrave; c&ograve;n l&agrave; nơi họ sắm sửa quần &aacute;o mới, mua b&aacute;n trao đổi những thứ &ldquo;của nh&agrave; l&agrave;m ra&rdquo;. Đến phi&ecirc;n chợ, bạn sẽ được ch&igrave;m trong văn ho&aacute; đặc sắc của người v&ugrave;ng cao với m&agrave;u sắc rực rỡ của những bộ quần &aacute;o thổ cẩm, tiếng người M&egrave;o r&iacute;u r&iacute;t b&ecirc;n cạnh h&agrave;ng b&agrave;y b&aacute;n từ hoa quả đến gia s&uacute;c.</p>\r\n\r\n<h2>Trẻ con n&ocirc; nức h&aacute;i hoa, thổi kh&egrave;n</h2>\r\n\r\n<p>M&ugrave;a nước đổ đến cũng l&agrave; khoảng thời gian nghỉ h&egrave; của c&aacute;c bạn nhỏ d&acirc;n tộc M&egrave;o. Ngo&agrave;i việc phải gi&uacute;p đỡ bố mẹ c&ocirc;ng việc vặt ở nh&agrave;, c&aacute;c bạn thường đi h&aacute;i hoa, kết v&ograve;ng, thổi kh&egrave;n s&aacute;o v&agrave; cười vang khắp nẻo đường. Những bạn nhỏ v&ugrave;ng cao, d&ugrave; hằn l&ecirc;n khu&ocirc;n mặt n&eacute;t khắc khổ của cuộc sống nhưng lu&ocirc;n nở nụ cười tươi r&oacute;i, giọng n&oacute;i trong trẻo v&agrave; vẫy tay xin ch&agrave;o đầy cảm mến với những người miền xu&ocirc;i gh&eacute; qua chơi như ch&uacute;ng m&igrave;nh. Vẻ đẹp thuần khiết n&agrave;y l&agrave; thứ m&igrave;nh nhớ nhất khi rời H&agrave; Giang m&ugrave;a nước đổ về lại phố thị chật chội, xa x&ocirc;i.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/blog%20hagiang/ha-giang-mua-nuoc-do-5.jpg\" style=\"height:886px; width:1024px\" /></p>\r\n\r\n<p>Nếu bạn vừa bắt đầu kỳ nghỉ h&egrave; thảnh thơi, muốn được ho&agrave; m&igrave;nh v&agrave;o thi&ecirc;n nhi&ecirc;n rộng lớn, đắm ch&igrave;m v&agrave;o văn ho&aacute; đặc sắc của người M&egrave;o v&agrave; nghe họ kể chuyện về một m&ugrave;a &ldquo;g&acirc;y thương nhớ&rdquo; của v&ugrave;ng T&acirc;y Bắc, h&atilde;y x&aacute;ch ba l&ocirc; ngay l&ecirc;n đi, H&agrave; Giang m&ugrave;a nước đổ vẫn đang đợi bạn đấy!</p>', '2019-05-29', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietnhomtour`
--

CREATE TABLE `chitietnhomtour` (
  `id` int(10) NOT NULL,
  `MaTour` int(10) NOT NULL,
  `MaNhomTour` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietnhomtour`
--

INSERT INTO `chitietnhomtour` (`id`, `MaTour`, `MaNhomTour`) VALUES
(22, 4, 5),
(23, 4, 13),
(24, 4, 4),
(25, 6, 11),
(27, 5, 6),
(29, 8, 1),
(30, 7, 11),
(38, 3, 13),
(39, 3, 4),
(40, 10, 8),
(41, 11, 8),
(42, 11, 1),
(43, 12, 3),
(44, 13, 1),
(46, 14, 2),
(47, 15, 5),
(48, 15, 13),
(49, 16, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiettour`
--

CREATE TABLE `chitiettour` (
  `MaCTTour` int(11) NOT NULL,
  `MaTour` int(10) DEFAULT NULL,
  `NgayKhoiHanh` date DEFAULT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `MaNV` int(20) UNSIGNED DEFAULT NULL,
  `SL` int(11) DEFAULT NULL,
  `SoChoDaDat` int(11) DEFAULT '0',
  `LichTrinh` longtext COLLATE utf8mb4_vietnamese_ci,
  `TinhTrang` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiettour`
--

INSERT INTO `chitiettour` (`MaCTTour`, `MaTour`, `NgayKhoiHanh`, `NgayKetThuc`, `MaNV`, `SL`, `SoChoDaDat`, `LichTrinh`, `TinhTrang`) VALUES
(3, 3, '2019-06-29', '2019-07-03', 6, 20, 0, 'Gy25_WOis_MẶT BẰNG TẦNG 1-Model.pdf', 1),
(4, 3, '2019-06-19', '2019-06-23', 4, 20, 0, 'bBET_MẶT BẰNG TẦNG 1-Model.pdf', 1),
(5, 3, '2019-06-26', '2019-06-30', 7, 10, 0, 'RJu5_trang2.jpg', 0),
(6, 4, '2019-07-06', '2019-07-10', 20, 20, 8, 'VgXl_MB tầng 2-Model.pdf', 1),
(7, 4, '2019-07-13', '2019-07-17', 19, 20, 0, 'kU0w_VgXl_MB tầng 2-Model.pdf', 1),
(8, 4, '2019-07-20', '2019-07-24', 17, 20, 0, '3U8S_Lập trình hướng đối tượng C++  Phạm Văn Ất.pdf', 1),
(9, 5, '2019-06-21', '2019-06-24', 14, 20, 0, 'Rozm_bandovietnam.jpg', 1),
(10, 7, '2019-06-30', '2019-07-03', 9, 20, 0, 'kqs4_tầng 2.pdf', 1),
(11, 7, '2019-07-07', '2019-07-10', 21, 20, 0, 'mRfV_tầng 7.pdf', 1),
(12, 8, '2019-06-29', '2019-07-01', 11, 20, 0, 'Nf4O_HopDong.pdf', 1),
(13, 8, '2019-06-21', '2019-06-23', 10, 20, 0, 'BpYP_VgXl_MB tầng 2-Model.pdf', 1),
(14, 5, '2019-06-29', '2019-07-02', 11, 20, 0, 'Qn28_WOis_MẶT BẰNG TẦNG 1-Model.pdf', 1),
(15, 6, '2019-06-21', '2019-06-24', 22, 20, 0, 'NQZr_MẶT BẰNG TẦNG 1-Model.pdf', 1),
(17, 10, '2019-06-29', '2019-06-30', 14, 20, 0, 'sZJu_Lập trình hướng đối tượng C++  Phạm Văn Ất.pdf', 1),
(18, 11, '2019-06-29', '2019-07-02', 11, 20, 0, 'NkPS_tầng 2.pdf', 1),
(19, 11, '2019-06-22', '2019-06-25', 4, 20, 2, '7H1D_HopDong.pdf', 1),
(20, 12, '2019-06-30', '2019-07-01', 10, 20, 0, 'FRMW_WOis_MẶT BẰNG TẦNG 1-Model.pdf', 1),
(21, 13, '2019-06-29', '2019-07-02', 10, 20, 0, '12dC_Lập trình hướng đối tượng C++  Phạm Văn Ất.pdf', 1),
(22, 15, '2019-06-29', '2019-07-02', 15, 20, 0, '7cYI_tầng 2.pdf', 1),
(23, 14, '2019-06-30', '2019-07-02', 22, 20, 0, 'vQtg_VgXl_MB tầng 2-Model.pdf', 1),
(24, 16, '2019-06-30', '2019-07-03', 14, 20, 0, '5y4M_dl.pdf', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `level` int(10) NOT NULL,
  `TenCV` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`level`, `TenCV`) VALUES
(1, 'Nhân Viên Hướng Dẫn'),
(2, 'Điều Hành Tour'),
(3, 'Admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiemdulich`
--

CREATE TABLE `diadiemdulich` (
  `MaDD` int(10) NOT NULL,
  `TenDD` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaTinh` char(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `HinhAnh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `diadiemdulich`
--

INSERT INTO `diadiemdulich` (`MaDD`, `TenDD`, `MaTinh`, `HinhAnh`) VALUES
(1, 'Hội An', 'QNA', 'P8mT_tour-ghep-hoi-an-da-nang-1519185828.jpg'),
(2, 'Mỹ Sơn', 'QNA', 'BKPv_2-1-e1501974710149.png'),
(3, 'Công Viên Suối Khoáng Nóng Núi Thần Tài', 'DANA', '0XQu_tour-nui-than-tai-1-ngay-1489824324.jpg'),
(4, 'Bà Nà Hill', 'DANA', 'ELjr_cam-nang-du-lich-da-nang-ba-na-hills-tu-a-toi-z-moi-nhat-cover.jpg'),
(5, 'Kinh Thành Huế', 'HUE', 'Pl4f_hue-lot-top-10-co-do-hut-khach-nhat-chau-a-231110.jpg'),
(6, 'Phong Nha Kẻ Bàng', 'QB', 'OZtV_[508x290-cr]phong_nha.jpg'),
(10, 'Mộc Châu', 'SL', 'tOBd_moc-chau.jpg'),
(12, 'Phú Quốc', 'KG', '17ZH_img159.jpg'),
(13, 'Vịnh Hạ Long', 'QNI', '3GbK_th-Ha_long.jpg'),
(14, 'Dinh Độc Lập', 'HCM', 'CJ6y_20150403151005333_img_1517-as-smart-object-1.jpg'),
(15, 'Tràng An', 'NB', 'aFo7_tràng-an2.png'),
(16, 'Côn Đảo', 'BRVT', '8i0q_tour-con-dao_du-lich-viet-400x200.png'),
(17, 'VinPearl Land', 'KH', 'ok0d_vinpearl-nha-trang-resort-0.jpg'),
(18, 'Tuần Châu', 'QNI', '65WR_tuanchau02.jpg'),
(19, 'Cù Lao Chàm', 'QNA', 'wrTP_uDW7AUKA.jpg'),
(20, 'Đảo Lý Sơn', 'QNG', 'X16H_tf_180531053939_516564.jpg'),
(21, 'Hồ Tuyền Lâm', 'LD', 'tqKc_tuyen-lam-lake-da-lat.jpg'),
(22, 'Vườn Dâu Đà Lạt', 'LD', '2ygs_vuondau-7-1552818882_680x0.jpg'),
(23, 'Đường Hầm Điêu Khắc Đà Lạt', 'LD', 'y8vS_KHAM-PHA-DUONG-HAM-HA-HUU-NET.jpg'),
(24, 'DI Tích Lịch Sử Trung Đoàn 52 Tây Tiến', 'SL', 'wiqB_trungdoantay tien.jpg'),
(25, 'Đèo Đá Trắng', 'HB', 'y9sV_deodatrang.jpg'),
(26, 'Hang Đông Pu Sam Cáp', 'LCH', 'YHTN_hang dộng pu samcap.jpg'),
(27, 'Tượng Đài Chiến Thắng Điện Biên Phủ', 'DB', 'WRcD_tuongdaudienbienphu.jpg'),
(28, 'Đỉnh Fansipan', 'LCA', 'vx6V_fanssipan.jpg'),
(29, 'Đèo PhaĐin', 'SL', 'GWJO_deodapin.jpg'),
(30, 'Cột Cờ Lung Pô', 'LCA', 'QqDg_cot cờ.jpg'),
(31, 'Đồi Chè Mộc Châu', 'SL', 'ZG0g_fresh-green-tea-terraced-fields-in-Moc-Chau_1114369139.jpg'),
(32, 'Dãy Hoàng Liên Sơn', 'LCH', 'a5kK_day hoang lien son.jpg'),
(33, 'Khu Di Tích Phủ Chủ Tịch', 'HN', '6jih_ownphur chủ tịch.jpg'),
(34, 'Núi Hàm Rồng', 'LCA', 'zerM_nuihamrong.jpg'),
(35, 'Hồ Hoàn Kiếm', 'HN', 'VDI9_Gioi-thieu-doi-net-ve-Ho-Hoan-Kiem-Ho-Guom-o-Ha-Noi-3.jpg'),
(36, 'Động Thiên Cung', 'QNI', 'Zx64_tagodongthiencung001.jpg'),
(37, 'Hoàng Thành Thăng Long', 'HN', 'E6Cm_hoang-thanh-thang-long-hinh-anh-3jpg.jpg'),
(38, 'Chợ Phiên SaPa', 'LCA', 'wayN_ghe-tham-cho-phien-sapa-4.jpg'),
(39, 'Biển Cà Ná', 'KH', 'svdh_bien-ca-na.jpg'),
(40, 'Khu Tưởng Niệm Chiến Sỹ Gạc Ma', 'KH', 'c5Ps_gac_ma_2_meea.jpg'),
(41, 'Đảo Khỉ - Hòn Lao', 'KH', 'FLCh_dao-khi-nha-trang.jpg'),
(42, 'Trung tâm suối khoáng nóng Iresort Nha Trang', 'KH', 'eRng_bang-gia-ve-tam-bun-khoang-nha-trang.jpg'),
(43, 'Dốc Lết', 'KH', 'aHUQ_doc-let-1.jpg'),
(44, 'Tháp Bà Ponagar', 'KH', 'MJlm_thap-ba-ponagar.jpg'),
(45, 'Chợ Nổi Cái Răng', 'CT', 'uVYJ_cho-noi-cai-rang-1_0ffc21288f33475fb097f348b170d501_master.jpg'),
(46, 'Chợ Nổi Cái Bè', 'TGI', 'WAyF_36Bxbhi5H8YTOckNPNqxVJM5J_TWs2fu.jpg'),
(47, 'Thiền Viện Trúc Lâm Phương Nam', 'CT', '7nI8_Thien-vien-truc-lam-Phuong-Nam-Tay-Nam-Bo-e1507257691472.png'),
(48, 'Miếu Bà Chúa Xứ Núi Sam', 'AG', 'cenQ_082417_0803_Nhngiucn1.jpg'),
(49, 'Chùa Hang Châu Đốc', 'AG', '3r0g_Chau-doc-Chua-hang-pagoda.jpg'),
(50, 'Rừng Tràm Trà Sư', 'AG', 'oJRv_780_crop_rung-tram-tra-su.jpg'),
(51, 'Thạch Động Hà Tiên', 'KG', '5ptk_thach-dong-ha-tien-e1508151034506.jpg'),
(52, 'Núi Cấm', 'AG', 'jiI7_Chau-doc-Di-lac-nui-cam.jpg'),
(53, 'Hồ Tà Đùng', 'DNO', '7oRu_321_ho_ta_dung.jpg'),
(54, 'Thiền Viện Trúc Lâm Đạo Nguyên', 'DNO', 'hZ2h_maxresdefault.jpg'),
(55, 'Thác Lưu Ly', 'DNO', 'z6FY_thac luu ly.jpg 2.jpg'),
(56, 'KHU BẢO TỒN THIÊN NHIÊN NẬM NUNG', 'DNO', 'qG5B_DraySapWaterfallsVietnam.jpg'),
(57, 'Lăng Khải Định', 'HUE', 'qF86_Lang-Khai-Dinh-1-e1502449392173.png'),
(58, 'Bảo Tàng Cổ Vật Cung Đình Huế', 'HUE', '2KLQ_2013091610baotang.jpg'),
(59, 'Chùa Thiên Mụ', 'HUE', 'P7xa_hinh-anh-dep-ve-chua-thien-mu-hue-3.jpg'),
(60, 'không gian trưng bày nghệ thuật “Làng chài xưa”', 'BTH', 'H9Lh_MG_9451.jpg'),
(61, 'Hòn Rơm', 'BTH', '72Mj_o7.jpg'),
(62, 'Sông Cà Ty', 'BTH', '7DWV_phac.jpg'),
(63, 'Đồi Cát Mũi Né', 'BTH', 'uAzV_tfd_20160315_Đồi cát bay.jpg'),
(64, 'Hang Câu Lý Sơn', 'QNG', 'j0KU_150513883879137-1.jpg'),
(65, 'Núi Thới Lới', 'QNG', '8Bp5_NÚI THỚI LỚI_800x533.jpg'),
(66, 'Làng Bích Họa Tam Thanh', 'QNA', '0Vsk_ft-langbichhoa-2.jpg'),
(67, 'Tượng Đài Mẹ Thứ', 'QNA', '7Qr6_me_viet_nam_anh_hung_zing_8-1-e1507543238385.jpg'),
(68, 'Bãi Sao Phú Quốc', 'KG', 'E1Ao_bai-sao-phu-quoc-e1506329625499.jpg'),
(69, 'Khu vui chơi giải trí Vinpearl Land Phú Quốc', 'KG', 'hR7k_VINPEARL-LAND-PHU-QUOC-_LAZY-RIVER.jpg'),
(70, 'Cơ sở nước mắm Phú Quốc', 'KG', '8KVS_nha-thung-hinh-anh-cai-thung.jpg'),
(71, 'Hòn Thơm', 'KG', '4Gwj_ve-may-bay-hai-phong-di-phu-quoc_1512979468.jpg'),
(72, 'Trung tâm nuôi cấy ngọc trai Phú Quốc', 'KG', 'jId1_ngoc-trai2.jpg'),
(73, 'Quần thể di tích Bạch Đằng Giang', 'HP', 'D2Sk_khu-di-tich-bach-dang-giang-nemtv-5.jpg'),
(74, 'Biển Đồ Sơn', 'HP', 'edzQ_do-son.jpg'),
(75, 'Quần thể Du lịch - Giải trí Sun World Hạ Long Park', 'QNI', 'hALB_hinh-anh-tour-thien-duong-mien-trung-da-nang-son-tra-ba-na-hoi-an-cu-lao-cham-tron-goi-ve-may-bay.jpg'),
(76, 'Bảo tàng Quảng Ninh', 'QNI', 'eNMR_37910709_1013113362190610_7983588701336764416_n.jpg'),
(77, 'Thiền Viện Trúc Lâm Giác Tâm', 'QNI', 'b26d_maxresdefault.jpg'),
(78, 'Chùa Ba Vàng', 'QNI', 'qQox_xung-quanh-quan-niem-thinh-vong-giai-nghiep-tai-chua-ba-vang-202638.jpg'),
(79, 'Cột mốc mũi Sa Vĩ', 'QNI', 'YCLx_Mui-Sa-Vi-1-814x541.jpg'),
(80, 'Show Ký Ức Hội An', 'QNA', '8fiy_ky-uc-hoi-an-dep-nhat-the-gioi-6.jpg'),
(81, 'Công Viên Châu Á', 'DANA', '2CRo_1thap-dong-ho-1.jpg'),
(82, 'Chùa Linh Ứng - Bãi Bụt', 'DANA', '27kh_Chùa-Linh-Ứng-Đà-Nẵng-8.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diadiemtour`
--

CREATE TABLE `diadiemtour` (
  `id` int(11) NOT NULL,
  `MaTour` int(10) NOT NULL,
  `MaDD` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `diadiemtour`
--

INSERT INTO `diadiemtour` (`id`, `MaTour`, `MaDD`) VALUES
(87, 4, 18),
(88, 4, 34),
(89, 4, 38),
(90, 4, 13),
(91, 4, 36),
(92, 4, 33),
(93, 4, 35),
(94, 4, 37),
(95, 6, 45),
(96, 6, 47),
(97, 6, 48),
(98, 6, 49),
(99, 6, 50),
(100, 6, 52),
(101, 6, 51),
(102, 6, 46),
(108, 5, 39),
(109, 5, 44),
(110, 5, 43),
(111, 5, 42),
(112, 5, 41),
(113, 5, 40),
(118, 8, 3),
(119, 8, 4),
(120, 8, 1),
(121, 8, 19),
(122, 7, 50),
(123, 7, 48),
(124, 7, 52),
(125, 7, 45),
(126, 7, 47),
(147, 3, 27),
(148, 3, 25),
(149, 3, 28),
(150, 3, 10),
(151, 3, 31),
(152, 3, 29),
(153, 10, 53),
(154, 10, 54),
(155, 10, 55),
(156, 10, 56),
(157, 11, 4),
(158, 11, 3),
(159, 11, 1),
(160, 11, 58),
(161, 11, 59),
(162, 11, 57),
(163, 12, 61),
(164, 12, 60),
(165, 12, 62),
(166, 12, 63),
(167, 13, 4),
(168, 13, 3),
(169, 13, 66),
(170, 13, 67),
(171, 13, 1),
(177, 14, 68),
(178, 14, 69),
(179, 14, 70),
(180, 14, 71),
(181, 14, 72),
(182, 15, 74),
(183, 15, 73),
(184, 15, 75),
(185, 15, 13),
(186, 15, 76),
(187, 15, 77),
(188, 15, 78),
(189, 15, 79),
(190, 16, 4),
(191, 16, 3),
(192, 16, 81);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvutour`
--

CREATE TABLE `dichvutour` (
  `MaDVTour` int(10) NOT NULL,
  `MaCTTour` int(11) DEFAULT NULL,
  `MaDoiTac` int(5) DEFAULT NULL,
  `NgayCI` date DEFAULT NULL,
  `NgayCO` date DEFAULT NULL,
  `LoaiDV` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaLoaiDT` int(5) DEFAULT NULL,
  `SLNL` int(11) DEFAULT '0',
  `SLTE` int(11) DEFAULT '0',
  `Gia` decimal(10,0) DEFAULT '0',
  `GiaTE` decimal(10,0) DEFAULT '0',
  `ThanhToan` decimal(10,0) DEFAULT '0',
  `TongTien` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvutour`
--

INSERT INTO `dichvutour` (`MaDVTour`, `MaCTTour`, `MaDoiTac`, `NgayCI`, `NgayCO`, `LoaiDV`, `MaLoaiDT`, `SLNL`, `SLTE`, `Gia`, `GiaTE`, `ThanhToan`, `TongTien`) VALUES
(34, 12, 16, '2019-06-29', '2019-07-01', '26', 1, 7, NULL, '1000000', NULL, '0', '14000000'),
(37, 12, 10, '2019-06-30', NULL, '18', 5, 20, NULL, '600000', '300000', '0', '12000000'),
(38, 12, 2, '2019-07-01', NULL, '2', 2, 20, NULL, '120000', '90000', '0', '600000'),
(39, 12, 5, '2019-06-01', NULL, '9', 3, 20, 0, '730000', '0', '0', '14600000'),
(41, 14, 5, '2019-06-17', NULL, '48', 3, 20, 0, '970000', '0', '0', '19400000'),
(42, 17, 5, '2019-06-29', NULL, '36', 3, 20, 0, '490000', '0', '0', '9800000'),
(43, 17, 5, '2019-06-30', NULL, '35', 3, 20, 0, '480000', '0', '0', '9600000'),
(44, 3, 7, '2019-06-29', NULL, '168', 3, 20, 0, '1200000', '0', '0', '24000000'),
(45, 3, 7, '2019-07-03', NULL, '169', 3, 20, 0, '1200000', '0', '0', '24000000'),
(46, 3, 27, '2019-06-29', '2019-07-03', '91', 1, 7, NULL, '1050000', NULL, '0', '29400000'),
(47, 3, 47, '2019-06-30', '2019-07-03', '149', 2, 20, NULL, '30000', '20000', '0', '1800000'),
(48, 3, 47, '2019-06-29', '2019-07-03', '150', 2, 20, NULL, '150000', '120000', '0', '12000000'),
(49, 3, 47, '2019-06-29', '2019-07-03', '151', 2, 20, NULL, '180000', '140000', '0', '14400000'),
(50, 3, 50, '2019-06-29', '2019-07-03', '158', 4, 1, NULL, '1100000', NULL, '0', '4400000'),
(51, 3, 52, '2019-06-29', NULL, '174', 5, 20, NULL, '700000', '500000', '0', '14000000'),
(53, 4, 7, '2019-06-19', NULL, '172', 3, 20, 0, '1400000', '0', '0', '28000000'),
(54, 4, 7, '2019-06-23', NULL, '173', 3, 20, 0, '1370000', '0', '0', '27400000'),
(55, 4, 28, '2019-06-19', '2019-06-23', '94', 1, 7, NULL, '1000000', NULL, '0', '28000000'),
(56, 4, 52, '2019-06-21', NULL, '174', 5, 20, NULL, '700000', '500000', '0', '14000000'),
(57, 4, 47, '2019-06-20', '2019-06-23', '149', 2, 20, NULL, '30000', '20000', '0', '1800000'),
(58, 4, 47, '2019-06-19', '2019-06-23', '150', 2, 20, NULL, '150000', '120000', '0', '12000000'),
(59, 4, 47, '2019-06-19', '2019-06-23', '151', 2, 20, NULL, '180000', '140000', '0', '14400000'),
(60, 5, 7, '2019-06-26', NULL, '170', 3, 20, 0, '1250000', '0', '0', '25000000'),
(61, 5, 7, '2019-06-30', NULL, '171', 3, 20, 0, '1300000', '0', '0', '26000000'),
(62, 5, 27, '2019-06-26', '2019-06-30', '91', 1, 7, NULL, '1050000', NULL, '0', '29400000'),
(63, 5, 47, '2019-06-27', '2019-06-30', '150', 2, 20, NULL, '150000', '120000', '0', '12000000'),
(64, 5, 47, '2019-06-26', '2019-06-29', '151', 2, 20, NULL, '180000', '140000', '0', '10800000'),
(65, 5, 52, '2019-06-29', NULL, '174', 5, 20, NULL, '700000', '500000', '0', '14000000'),
(66, 6, 7, '2019-07-06', NULL, '176', 3, 20, 0, '1549000', '0', '10000000', '30980000'),
(67, 6, 7, '2019-07-10', NULL, '177', 3, 20, 0, '1480000', '0', '0', '29600000'),
(68, 6, 47, '2019-07-07', '2019-07-10', '150', 2, 20, NULL, '150000', '120000', '2000000', '12000000'),
(69, 6, 47, '2019-07-06', '2019-07-09', '151', 2, 20, NULL, '180000', '140000', '0', '10800000'),
(70, 6, 50, '2019-07-06', '2019-07-10', '158', 4, 1, NULL, '1100000', NULL, '0', '4400000'),
(71, 6, 52, '2019-07-08', NULL, '174', 5, 20, NULL, '700000', '500000', '0', '14000000'),
(72, 12, 5, '2019-07-01', NULL, '50', 3, 20, 0, '830000', '0', '0', '16600000'),
(73, 12, 11, '2019-06-29', '2019-07-01', '20', 4, 1, NULL, '2000000', NULL, '0', '4000000'),
(74, 9, 51, '2019-06-21', '2019-06-24', '164', 4, 1, NULL, '1500000', NULL, '0', '4500000'),
(75, 9, 37, '2019-06-21', '2019-06-24', '121', 1, 7, NULL, '1280000', NULL, '0', '26880000'),
(76, 9, 44, '2019-06-21', '2019-06-24', '141', 2, 20, NULL, '150000', '130000', '0', '9000000'),
(77, 9, 53, '2019-06-22', NULL, '183', 5, 20, NULL, '120000', '80000', '0', '2400000'),
(78, 15, 51, '2019-06-21', '2019-06-24', '164', 4, 1, NULL, '1500000', NULL, '0', '4500000'),
(79, 15, 39, '2019-06-21', '2019-06-24', '127', 1, 7, NULL, '1000000', NULL, '0', '21000000'),
(80, 15, 43, '2019-06-21', '2019-06-30', '138', 2, 20, NULL, '140000', '100000', '0', '25200000'),
(81, 15, 43, '2019-06-21', '2019-06-23', '139', 2, 20, NULL, '180000', '120000', '0', '7200000'),
(82, 10, 39, '2019-06-30', '2019-07-03', '127', 1, 7, NULL, '1000000', NULL, '0', '21000000'),
(83, 10, 51, '2019-06-30', '2019-07-03', '164', 4, 1, NULL, '1500000', NULL, '0', '4500000'),
(84, 10, 43, '2019-06-30', '2019-07-03', '138', 2, 20, NULL, '140000', '150000', '0', '8400000'),
(85, 10, 43, '2019-06-30', '2019-07-02', '139', 2, 20, NULL, '180000', '120000', '0', '7200000'),
(86, 10, 54, '2019-07-01', NULL, '184', 5, 20, NULL, '180000', '90000', '0', '3600000'),
(87, 17, 55, '2019-06-29', '2019-06-30', '188', 4, 1, NULL, '1300000', NULL, '0', '1300000'),
(88, 17, 25, '2019-06-29', '2019-06-30', '85', 1, 7, NULL, '400000', NULL, '0', '2800000'),
(89, 17, 26, '2019-06-29', '2019-06-30', '87', 2, 20, NULL, '120000', '80000', '0', '2400000'),
(90, 17, 26, '2019-06-29', '2019-06-30', '88', 2, 20, NULL, '150000', '100000', '0', '3000000'),
(91, 18, 5, '2019-06-29', NULL, '9', 3, 20, 0, '730000', '0', '0', '14600000'),
(92, 18, 5, '2019-07-02', NULL, '52', 3, 20, 0, '780000', '0', '0', '15600000'),
(93, 18, 34, '2019-06-29', '2019-06-30', '112', 1, 7, NULL, '750000', NULL, '0', '5250000'),
(94, 18, 19, '2019-06-30', '2019-07-02', '67', 1, 7, NULL, '1200000', NULL, '0', '16800000'),
(95, 18, 17, '2019-06-30', '2019-07-01', '60', 2, 20, NULL, '180000', '120000', '0', '3600000'),
(96, 18, 2, '2019-07-01', '2019-07-02', '3', 2, 20, NULL, '130000', '100000', '0', '5200000'),
(97, 18, 10, '2019-07-01', NULL, '18', 5, 20, NULL, '600000', '300000', '0', '12000000'),
(98, 18, 11, '2019-06-29', '2019-07-02', '20', 4, 1, NULL, '2000000', NULL, '0', '6000000'),
(99, 20, 51, '2019-06-30', '2019-07-01', '164', 4, 1, NULL, '1500000', NULL, '0', '1500000'),
(100, 20, 45, '2019-06-30', '2019-07-01', '144', 2, 20, NULL, '160000', '15000', '0', '3200000'),
(101, 20, 45, '2019-06-30', '2019-07-01', '145', 2, 20, NULL, '190000', '130000', '0', '3800000'),
(102, 20, 38, '2019-06-30', '2019-07-01', '124', 1, 7, NULL, '1360000', NULL, '0', '9520000'),
(103, 23, 5, '2019-06-30', NULL, '191', 3, 20, 0, '690000', '0', '0', '13800000'),
(104, 23, 5, '2019-07-02', NULL, '192', 3, 20, 0, '750000', '0', '0', '15000000'),
(105, 23, 41, '2019-06-30', '2019-07-02', '133', 1, 7, NULL, '2100000', NULL, '0', '29400000'),
(106, 23, 42, '2019-06-30', '2019-07-02', '135', 2, 20, NULL, '150000', '100000', '0', '6000000'),
(107, 23, 42, '2019-06-30', '2019-07-02', '136', 2, 20, NULL, '180000', '130000', '0', '7200000'),
(108, 19, 5, '2019-06-22', NULL, '43', 3, 20, 0, '870000', '0', '0', '17400000'),
(109, 19, 7, '2019-06-25', NULL, '193', 3, 20, 0, '910000', '0', '0', '18200000'),
(110, 19, 34, '2019-06-22', '2019-06-23', '112', 1, 7, NULL, '750000', NULL, '0', '5250000'),
(111, 19, 19, '2019-06-23', '2019-06-25', '67', 1, 7, NULL, '1200000', NULL, '0', '16800000'),
(112, 19, 17, '2019-06-23', '2019-06-24', '60', 2, 20, NULL, '180000', '120000', '0', '3600000'),
(113, 19, 2, '2019-06-23', '2019-06-25', '3', 2, 20, NULL, '130000', '100000', '0', '5200000'),
(114, 19, 10, '2019-06-24', NULL, '18', 5, 20, NULL, '600000', '300000', '0', '12000000'),
(115, 19, 11, '2019-06-22', '2019-06-25', '20', 4, 1, NULL, '2000000', NULL, '0', '6000000'),
(116, 24, 51, '2019-06-30', '2019-07-03', '164', 4, 1, NULL, '1500000', NULL, '0', '4500000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doitac`
--

CREATE TABLE `doitac` (
  `MaDoiTac` int(5) NOT NULL,
  `TenDoiTac` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Tel` char(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DiaChi` varchar(300) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaLoaiDT` int(5) DEFAULT NULL,
  `MaTinh` char(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `NganHang` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `STK` char(14) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `doitac`
--

INSERT INTO `doitac` (`MaDoiTac`, `TenDoiTac`, `Tel`, `DiaChi`, `Email`, `MaLoaiDT`, `MaTinh`, `NganHang`, `STK`) VALUES
(2, 'The Temple Restaurant', '0989550895', '132 Hùng Vương, Hội An', 'info@TheTemple.com', 2, 'QNA', 'VietComBank', '997268900176'),
(5, 'Vietnam Airlines', '0243832032', 'Hà Nội', 'info@Vietnamairlines.com', 3, NULL, 'TechComBank', '87654432643569'),
(6, 'Jetstar Pacific Airlines', '0233574444', 'Hà Nội', 'oojiinfo@JetstarPacificVietnam.com', 3, NULL, 'Techcombank', '87654432643855'),
(7, 'Vietjet Air', '2835471866', '302/3 Phố Kim Mã, Phường Ngọc Khánh, Quận Ba Đình, Thành phố Hà Nội. ', 'info@VietJetAir.com', 3, NULL, 'VietComBank', '87656389045672'),
(10, 'Công Ty Cổ Phần Dịch Vụ Cáp Treo Bà Nà Hill', '02839144188', 'Thôn An Sơn, xã Hòa Ninh, huyện Hòa Vang, TP Đà Nẵng', 'info@banahills.com.vn', 5, 'DANA', 'SaComBank', '0898765123124'),
(11, 'CÔNG TY DU LỊCH GREEN TOUR', '0914800544', '102 Trần Lựu - Q. Cẩm Lệ – TP Đà Nẵng', 'info@greentour.vn', 4, 'DANA', 'VietTinBank', '575362452354'),
(16, 'Tolia Hotel', '0902528955', '22-23 Đỗ Bá, Bắc Mỹ Phú, Ngũ Hành Sơn, Đà Nẵng', 'info@toliahotel.vn', 1, 'DANA', 'VietTinBank', '8766554244236'),
(17, 'SOHO Buffet & Alacarte', '0906865789', 'Lô 1+2_A5.6 Khu Công Viên Bắc Đài Tưởng Niệm, Hải Châu, Đà Nẵng', 'info@sohobuffetdanang.com', 2, 'DANA', 'VietTinBank', '8766554244236'),
(18, 'Thái Bình Dương Hotel', '02363868777', '92 Phan Châu Trinh, Hải Châu, Đà Nẵng', 'info@thaibinhduonghotel.com', 1, 'DANA', 'VietTinBank', '87665542467896'),
(19, 'Green Plaza Hotel Đà Nẵng', '02363223399', '238 Bạch Đằng,  Hải Châu, Đà Nẵng', 'info@greenplazadanang.com', 1, 'DANA', 'VietTinBank', '76543124344589'),
(20, 'Mayana Hotel', '02363866777', '40 Nguyễn Thái Học, Hải Châu, Đà Nẵng', 'info@mayanahotel.com', 1, 'DANA', 'SaComBank', '87665542345879'),
(21, 'Vinh Hung Library Hotel', '02353916277', '96 Bà Triệu, Cẩm Phô, Thành phố Hội An, Tỉnh Quảng Nam', 'info@vinhhunglibraryhotel.com', 1, 'QNA', 'SaComBank', '765431243543'),
(22, 'Sunshine Hotel', '02353937899', '02 Phan Đình Phùng, Cẩm Sơn, Hội An, Quảng Nam', 'sunshinehotel@gmail.com', 1, 'QNA', 'VPBank', '84278957893532'),
(23, 'Nhà Hàng Đông Dương', '0236388989', '18 Trần Phú. Q.Hải Châu, Tp.Đà Nẵng', 'nhahangdongduong@gmail.com', 2, 'DANA', 'VietTinBank', '87665542443654'),
(24, 'Nhà Hàng Làng Nghệ', '0793511119', '119 Lê Lợi, Hải Châu, Đà Nẵng', 'langnghe.dn@gmail.com', 2, 'DANA', 'VietTinBank', '47679879087097'),
(25, 'Tà Đùng TopView Homestay', '0973500232', 'Đắk Som, Đắk Glong, Đăk Nông', 'tadungtopviewhomestay@gmail.com', 1, 'DNO', 'DongABank', '87665543489935'),
(26, 'Nhà Hàng Sơn Mã', '02613544543', 'Quang Trung, Phường Nghĩa Tân, Gia Nghĩa, Đăk Nông', 'sonmanhahang@gmail.com', 2, 'DNO', 'VietComBank', '87665436547658'),
(27, 'Sapa Centre Hotel', '02143872811', '10 & 12 Cầu Mây, TT. Sa Pa, Sa Pa, Lào Cai', 'sapacentrehotel@gmail.com', 1, 'LCA', 'VietTinBank', '24365476879563'),
(28, 'Sapa Elite Hotel', '0912739559', '12 Hoang Dieu Street, Lào Cai', 'sapaelitehotel@gmail.com', 1, 'LCA', 'VietTinBank', '46547657863534'),
(29, 'Khách Sạn Hoa Lư - Sơn La', '02123755599', '533 Trần Đăng Ninh, P. Quyết Tâm, Sơn La', 'hoalusonlahotel@gmail.com', 1, 'SL', 'VietTinBank', '32489780890172'),
(30, 'Khách sạn Canary, Hà Nội', '02433382336', 'Số 15, Ngõ 19 - Liễu Giai, Liễu Giai, Ba Đình, Hà Nội', 'canaryhanoihotel@gmail.com', 1, 'HN', 'VPBank', '67235473298074'),
(31, 'Medallion Hanoi Hotel', '0987654321', '11 Phố Mã Mây, Hàng Buồm, Hoàn Kiếm, Hà Nội', 'medalition@gmail.com', 1, 'HN', 'VPBank', '45987634587687'),
(32, 'Hạ Long DC Hotel', '0987654321', '8 25 Tháng 4, P, Thành phố Hạ Long, Quảng Ninh', 'halongdchotel@gmail.com', 1, 'QNI', 'VPBank', '23546789853643'),
(33, 'The Confetti Hạ Long Hotel', '0987654321', 'Số 01 Lô D – Khu, Bến Đoan, CQ-03, Quảng Ninh', 'theconfettihalong@gmail.com', 1, 'QNI', 'DongABank', '23857876990902'),
(34, 'Hotel La Perle Hue', '02346872937', 'Nhà số 24 Kiệt, 42 Nguyễn Công Trứ, Phú Hội, Thành phố Huế, Thừa Thiên Huế', 'laperlehuehotel@gmail.com', 1, 'HUE', 'SaComBank', '73826984982095'),
(35, 'Holiday Diamond Hotel', '0937753531', '8 Lane 14 Nguyễn Công Trứ, Phú Hội, Thành phố Huế, Thừa Thiên Huế', 'holidaydiamondhotel@gmail.com', 1, 'HUE', 'VietTinBank', '43567897089676'),
(36, 'Khách sạn Phố Biển', '02583524338', '64/1 Trần Phú, Lộc Thọ, Nha Trang, Khánh Hòa', 'phobienhotel@gmail.com', 1, 'KH', 'SaComBank', '23458789078968'),
(37, 'Tristar Hotel Nha Trang', '0987654321', '3 Lý Tự Trọng, Lộc Thọ, Thành phố Nha Trang, Khánh Hòa', 'tristarnhatrang@gmail.com', 1, 'KH', 'VietTinBank', '76554132464687'),
(38, 'La Marina Hotel', '0987654321', '246/2B Nguyễn Đình Chiểu, khu phố 3, Hàm Thuận Bắc District, Bình Thuận', 'lamarinahotel@gmail.com', 1, 'BTH', 'VPBank', '57986218749802'),
(39, 'Khách Sạn Đông Nam', '0987654321', 'Quốc lộ 91, Khóm 8, Phường Châu Phú A, Thị xã Châu Đốc, Tỉnh An Giang, Châu Phú A, Châu Đốc, An Giang', 'dongnamhotel@gmail.com', 1, 'AG', 'SaComBank', '76876394873289'),
(40, 'Khách sạn Đông Hà', '0987654321', '141 Trần Văn Khéo, Cái Khế, Ninh Kiều, Cần Thơ', 'donghahotel@gmail.com', 1, 'CT', 'VPBank', '23948587894798'),
(41, 'Khu nghỉ dưỡng Arcadia Phú Quốc', '0987654321', 'Ward 7, Tran Hung Dao Street, Duong Dong Town, Phú Quốc, tỉnh Kiên Giang', 'arcadiaphuquoc@gmail.com', 1, 'KG', 'VietComBank', '89738927498326'),
(42, 'Khu nghỉ dưỡng Arcadia Phú Quốc', '0987654321', 'Ward 7, Tran Hung Dao Street, Duong Dong Town, Phú Quốc, tỉnh Kiên Giang', 'arcadiaphuquoc@gmail.com', 2, 'KG', 'VietComBank', '35423878979832'),
(43, 'Nhà hàng Làng Tôi', '0987654321', '32 Trần Nhật Duật, Mỹ Long, Thành phố Long Xuyên, An Giang', 'langtoi@gmail.com', 2, 'AG', 'VietTinBank', '73298567894654'),
(44, 'Nhà Hàng Ngọc Trai', '0987654321', 'Quảng Nam', 'ngoctrainhahang@gmail.com', 2, 'KH', 'DongABank', '76543124344363'),
(45, 'Nhà Hàng Đại Dương', '0123456789', '102 Huỳnh Thúc Kháng, Mũi Né, Thành phố Phan Thiết, Bình Thuận', 'daiduong@gmail.com', 2, 'BTH', 'VietComBank', '7586759879678'),
(46, 'NHÀ HÀNG BA GIAN', '02344654358', '1 Hoàng Văn Thụ, An Đông, Thành phố Huế, Thừa Thiên Huế', 'bagian@gmail.com', 2, 'HUE', 'VietTinBank', '32148789069862'),
(47, 'Red Dao House', '0214390872', '4b Thac Bac Street, Lào Cai', 'reddao@gmail.com', 2, 'LCA', 'VPBank', '73658746893789'),
(48, 'Nhà Hàng Hạ Long 1', '0987654321', 'Đường Hạ Long, P, Thành phố Hạ Long, Quảng Ninh', 'halong1nhahang@gmail.com', 2, 'QNI', 'VietComBank', '79837894385436'),
(49, 'Nhà Hàng Buffet Lẩu', '0987654321', '45 Nguyễn Trường Tộ, Nguyễn Trung Trực, Ba Đình, Hà Nội', 'buffetlaunguyentruongto@gmail.com', 2, 'HN', 'VietComBank', '76487923609857'),
(50, 'THUÊ XE HOÀNG QUÂN', '0987654321', 'Phòng 602 nhà A14B2 Nguyễn Chánh - Cầu Giấy - Hà Nội.', 'thuexehoangquan@gmail.com', 4, 'HN', 'SaComBank', '78678964872939'),
(51, 'Thuê Xe Du Lịch Công Ty TNHH Cho Thuê Xe', '0987654321', '248 Lãnh Binh Thăng Hồ Chí Minh', 'thuexedulich@gmail.com', 4, 'HCM', 'SaComBank', '24387987689709'),
(52, 'Cáp Treo Fansipan Legend', '09137687332', 'TT. Sa Pa, Sa Pa, Lào Cai', 'fansipanlegend@gmail.com', 5, 'LCA', 'VietTinBank', '34897236487956'),
(53, 'Khu du lịch Đảo Khỉ', '0987654321', 'Lương Sơn, Nha Trang, Khánh Hòa', 'cskhdaokhi@gmail.com', 5, 'KH', 'SaComBank', '87873981476079'),
(54, 'Cáp treo núi Cấm An Giang', '02963760292', 'Xã An Hảo, huyện Tịnh Biên, Tỉnh An Giang.', 'captreonuicamangiang@gmail.com', 5, 'AG', 'VietTinBank', '43568974398579'),
(55, 'Dịch vụ thuê xe du lịch DakNong', '0903597890', 'Thị Xã Gia Nghĩa, Dăk Nông', 'thuexedaknong@gmail.com', 4, 'DNO', 'VietTinBank', '13764876567263'),
(56, 'Biểu Diễn Thực Cảnh Hội An', '0983257730', 'Huyền Trân Công Chúa - phường Cẩm Nam và phường Cẩm Châu - TP. Hội An', 'bieudienthuccanh@gmail.com', 5, 'QNA', 'SaComBank', '23749823648568'),
(57, 'Trung tâm Bảo tồn Di tích Cố đô Huế', '0987654321', 'Phú Hậu, Thành phố Huế, Thừa Thiên Huế', 'khamphahue@huecit.vn', 5, 'HUE', 'VietTinBank', '87635786924876'),
(58, 'CÔNG VIÊN SUN WORLD DANANG WONDERS', '0987654321', '1 Phan Đăng Lưu, Hoà Cường Bắc, Hải Châu, Đà Nẵng', 'sunworlddanang@gmail.com', 5, 'DANA', 'SaComBank', '32756897423653'),
(59, 'CÔNG VIÊN SUỐI KHOÁNG NÓNG NÚI THẦN TÀI', '09457773777', 'Thôn Phú Túc, Xã Hòa Phú, Huyện Hòa Vang, TP. Đà Nẵng', 'sales@nuithantai.vn', 5, 'DANA', 'SaComBank', '23485609874370'),
(60, 'Phòng Bán Vé Tham Quan Đô Thị Cổ Hội An', '0987654321', '78, Đường Lê Lợi, Phường Minh An, Hội An, Quảng Nam', 'hoiantickets@gmail.com', 5, 'QNA', 'SaComBank', '23845987295870');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdong`
--

CREATE TABLE `hopdong` (
  `MaHD` int(5) NOT NULL,
  `MaKH` int(5) DEFAULT NULL,
  `MaCTTour` int(11) NOT NULL,
  `NgayDat` date DEFAULT NULL,
  `NgayXacNhan` date DEFAULT NULL,
  `SoCho` int(11) DEFAULT NULL,
  `SLNL` int(11) DEFAULT '0',
  `SLTE` int(11) DEFAULT '0',
  `SLEB` int(11) DEFAULT '0',
  `HinhThucTT` int(1) DEFAULT '0',
  `TrangThai` int(1) DEFAULT '0',
  `ThanhTien` decimal(10,0) DEFAULT NULL,
  `DaThanhToan` decimal(10,0) DEFAULT '0',
  `MaLoaiTT` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hopdong`
--

INSERT INTO `hopdong` (`MaHD`, `MaKH`, `MaCTTour`, `NgayDat`, `NgayXacNhan`, `SoCho`, `SLNL`, `SLTE`, `SLEB`, `HinhThucTT`, `TrangThai`, `ThanhTien`, `DaThanhToan`, `MaLoaiTT`) VALUES
(7, 27, 19, '2019-06-15', '2019-06-15', 2, 2, 0, 0, 1, 1, '14600000', '14600000', 2),
(8, 33, 6, '2019-06-15', '2019-06-15', 2, 2, 0, 0, 1, 1, '21800000', '21800000', 1),
(9, 34, 6, '2019-06-15', '2019-06-15', 4, 4, 0, 0, 1, 1, '43600000', '43600000', 1),
(10, 35, 6, '2019-06-16', '2019-06-16', 2, 2, 0, 0, 1, 1, '21800000', '21800000', 1),
(11, 28, 19, '2019-06-16', NULL, 2, 2, 0, 0, 1, 0, '14600000', '0', 1),
(12, 36, 24, '2019-06-16', NULL, 2, 2, 0, 0, 1, 0, '12000000', '0', 1),
(13, 28, 24, '2019-06-16', NULL, 2, 2, 0, 0, 1, 0, '12000000', '0', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hopdongdichvu`
--

CREATE TABLE `hopdongdichvu` (
  `MaHDDV` int(10) NOT NULL,
  `MaHD` int(5) DEFAULT NULL,
  `MaDVTour` int(10) DEFAULT NULL,
  `NgayDK` date DEFAULT NULL,
  `SLNL` int(11) DEFAULT '0',
  `SLTE` int(11) DEFAULT '0',
  `Gia` decimal(10,0) DEFAULT '0',
  `GiaTE` decimal(10,0) DEFAULT '0',
  `ThanhTien` decimal(10,0) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hopdongdichvu`
--

INSERT INTO `hopdongdichvu` (`MaHDDV`, `MaHD`, `MaDVTour`, `NgayDK`, `SLNL`, `SLTE`, `Gia`, `GiaTE`, `ThanhTien`) VALUES
(18, 7, 108, '2019-06-15', 2, 0, '870000', '0', '1740000'),
(19, 7, 109, '2019-06-15', 2, 0, '910000', '0', '1820000'),
(20, 7, 110, '2019-06-15', 1, 0, '750000', '0', '750000'),
(21, 7, 111, '2019-06-15', 1, 0, '1200000', '0', '2400000'),
(22, 7, 112, '2019-06-15', 2, NULL, '180000', '120000', '360000'),
(23, 7, 113, '2019-06-15', 2, NULL, '130000', '100000', '260000'),
(24, 7, 114, '2019-06-15', 2, NULL, '600000', '300000', '1200000'),
(25, 8, 66, '2019-06-15', 2, 0, '1549000', '0', '3098000'),
(26, 8, 67, '2019-06-15', 2, 0, '1480000', '0', '2960000'),
(27, 8, 68, '2019-06-15', 2, NULL, '150000', '120000', '300000'),
(28, 8, 69, '2019-06-15', 2, NULL, '180000', '140000', '360000'),
(29, 8, 71, '2019-06-15', 2, NULL, '700000', '500000', '1400000'),
(30, 9, 66, '2019-06-15', 4, 0, '1549000', '0', '6196000'),
(31, 9, 67, '2019-06-15', 4, 0, '1480000', '0', '5920000'),
(32, 9, 68, '2019-06-15', 4, NULL, '150000', '120000', '600000'),
(33, 9, 69, '2019-06-15', 4, NULL, '180000', '140000', '720000'),
(34, 9, 71, '2019-06-15', 4, NULL, '700000', '500000', '2800000'),
(35, 10, 66, '2019-06-16', 2, 0, '1549000', '0', '3098000'),
(36, 10, 67, '2019-06-16', 2, 0, '1480000', '0', '2960000'),
(37, 10, 68, '2019-06-16', 2, NULL, '150000', '120000', '300000'),
(38, 10, 69, '2019-06-16', 2, NULL, '180000', '140000', '360000'),
(39, 10, 71, '2019-06-16', 2, NULL, '700000', '500000', '1400000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `Username` char(20) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenKH` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Tel` char(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaQG` char(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Username`, `TenKH`, `password`, `Email`, `Tel`, `DiaChi`, `MaQG`) VALUES
(27, 'Khiem123', 'Lê Viết Khiêm', '$2y$10$4TWhEWSlrJaDLAJbn8TuueAtbex1x1luS5UsH5uww6/.MCvEUFemq', 'trinhvandat1998@gmail.com', '0123456789', 'Hội An , Quảng Nam', 'VN'),
(28, 'Dat123', 'Trịnh Văn Đạt', '$2y$10$140VyXzwedqbmo8MFwqmIut09t2MRmWeZuGnAIlZH9TRVLDUABrnC', 'trinhvandat1998@gmail.com', '0123456789', 'Đà Nẵng', 'VN'),
(29, 'Nguyen123', 'Huỳnh Thị Thảo Nguyên', '$2y$10$yile7FhlUd9MtOR.eV/Cjej0Yh1FjdgLsEtvgZURZmlWKv.CpCL.6', 'thaonguyen123@gmail.com', '0987654321', 'Hải Châu, Đà Nẵng', 'VN'),
(30, 'thuhien123', 'Nguyễn Thị Thu Hiền', '$2y$10$L1auTjapaSFDewd9zxEvB.NAKVrFUzw9iV9eCLlb2kmnrmUdqHDFm', 'ieefnthuhien123@gmail.com', '0987654321', 'Lệ Thủy, Quảng Bình', 'VN'),
(31, 'hung123', 'Huỳnh Ngọc Hùng', '$2y$10$o62M1T7DCpQ5BrkVbEES6OfGeq3KzpZV0Jy3XTjb1dyUvzCt8Id.S', 'ngochung123@gmail.com', '0987654321', 'Thanh Khê, Đà Nẵng', 'VN'),
(32, 'yentran123', 'Trần Thị Yến', '$2y$10$T.h4fScWxhRsgJzk3DrFUOyJNMyBVFtxbtQL4Kb6oZBv/BCnMI/SG', 'yentran123@gmail.com', '0987654321', 'Thăng Bình, Quảng Nam', 'VN'),
(33, 'Hoa123', 'Huỳnh Khánh Hòa', '$2y$10$JUtt/vAmiYjAd0bzCwmGj.F0CWYmfgUhudqn99KZq.YPXNI1DlZuS', 'oafhuynhkhanhhoa@gmail.com', '0987654321', 'Hải Châu, Đà Nẵng', 'VN'),
(34, 'quang123', 'Lê Minh Quang', '$2y$10$sSdiSWo/QyusvgpWx6xu1eNCnjfCH/dQR113Ev5UVzpl6dLrkfNGS', 'leminhquang123@gmail.com', '0987654321', 'Trần Cao Vân, Hải Châu Đà Nẵng', 'VN'),
(35, 'nhung123', 'Nguyễn Thị Ngọc Nhung', '$2y$10$Wr66KKhyLQkQF49yVPoRtejKdebUrpBkpjhRIY8YSb17UewDrC4PC', 'nguyenngocnhung@gmail.com', '0987654321', '54 Phan Tú, Ngũ Hành Sơn, Đà Nẵng', 'VN'),
(36, 'trang123', 'Nguyễn Thị Thùy Trang', '$2y$10$N2akFBOPteghJUdF4BLvUeJ7H8vGSsJVHeHWuPdhBoy6L/QyrB//u', 'trang@gmail.com', '0987654321', 'Quảng Nam', 'VN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuvuc`
--

CREATE TABLE `khuvuc` (
  `MaKV` int(11) NOT NULL,
  `TenKV` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuvuc`
--

INSERT INTO `khuvuc` (`MaKV`, `TenKV`) VALUES
(1, 'Miền Bắc'),
(2, 'Miền Trung'),
(3, 'Miền Nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaidoitac`
--

CREATE TABLE `loaidoitac` (
  `MaLoaiDT` int(5) NOT NULL,
  `TenLoaiDT` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaidoitac`
--

INSERT INTO `loaidoitac` (`MaLoaiDT`, `TenLoaiDT`) VALUES
(1, 'Hotel'),
(2, 'Restaurant'),
(3, 'Air-Ticket'),
(4, 'Car'),
(5, 'Sightseeing Tickets');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaitt`
--

CREATE TABLE `loaitt` (
  `MaLoaiTT` int(5) NOT NULL,
  `TenLoaiTT` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaitt`
--

INSERT INTO `loaitt` (`MaLoaiTT`, `TenLoaiTT`) VALUES
(1, 'thẻ tín dụng'),
(2, 'Thanh toán tại văn phòng'),
(3, 'Zalo Pay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_13_105437_nhanvien', 2),
(4, '2019_05_14_134351_khachhang', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomtour`
--

CREATE TABLE `nhomtour` (
  `MaNhomTour` int(5) NOT NULL,
  `TenNhom` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaKV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhomtour`
--

INSERT INTO `nhomtour` (`MaNhomTour`, `TenNhom`, `MaKV`) VALUES
(1, 'Đà Nẵng - Hội An', 2),
(2, 'Phú Quôc', 3),
(3, 'Phan Thiết', 2),
(4, 'SaPa', 1),
(5, 'Hạ Long', 1),
(6, 'Nha Trang', 2),
(7, 'Đà Lạt', 2),
(8, 'Tây Nguyên', 2),
(9, 'Tuy Hòa - Quy Nhơn', 2),
(10, 'Huế', 2),
(11, 'Miền Tây', 3),
(12, 'Côn Đảo', 3),
(13, 'Hà Nội', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quocgia`
--

CREATE TABLE `quocgia` (
  `MaQG` char(5) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenQG` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quocgia`
--

INSERT INTO `quocgia` (`MaQG`, `TenQG`) VALUES
('AE', 'UAE'),
('AS', 'Australia'),
('BE', 'Belgium'),
('CH', 'China'),
('EG', 'Egypt'),
('FR', 'France'),
('GR', 'Germany'),
('ID', 'Indonesia'),
('IT', 'Italy'),
('JA', 'Japan'),
('KE', 'Kenya'),
('KS', 'Korea'),
('LA', 'Laos'),
('NL', 'Nederland'),
('TH', 'Thailand'),
('US', 'Usa'),
('VN', 'Vietnam'),
('ZA', 'Zambia');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinkhach`
--

CREATE TABLE `thongtinkhach` (
  `MaKhach` int(10) NOT NULL,
  `HoTen` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaHD` int(5) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(10) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Tel` int(11) DEFAULT NULL,
  `Passport` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `thongtinkhach`
--

INSERT INTO `thongtinkhach` (`MaKhach`, `HoTen`, `MaHD`, `NgaySinh`, `GioiTinh`, `DiaChi`, `Tel`, `Passport`) VALUES
(12, 'Dương Phạm Thảo Nguyên', 7, '1998-10-02', 'Male', 'Ông Ích Đường, Quận Cẩm Lệ, TP. Đà Nẵng', 704992962, NULL),
(13, 'Phạm Thị Thúy', 7, '1998-01-17', 'Female', 'Âu Cơ, Liên Chiểu, Đà Nẵng', 956421783, NULL),
(14, 'Huỳnh Khánh Hòa', 8, '1998-02-11', 'Female', 'Duy Xuyên Quảng Nam', 987654321, NULL),
(15, 'Huỳnh Khải Điệp', 8, '1998-02-11', 'Male', 'Duy Xuyên, Quảng Nam', 987654321, NULL),
(16, 'Lê Minh Quang', 9, '1998-08-14', 'Male', 'Trần Cao Vân, Hải Châu Đà Nẵng', 987655431, NULL),
(17, 'Phạm Văn Thẩo', 9, '1998-09-12', 'Male', 'Liên Chiểu, Đà Nẵng', 987654321, NULL),
(18, 'Trương Thị Mỹ Liên', 9, '1998-10-10', 'Female', 'Cẩm lệ, Đà Nẵng', 987654321, NULL),
(19, 'Trần Tài Tiên', 9, '1998-12-10', 'Male', 'Cẩm Lệ, Đà Nẵng', 987654321, NULL),
(20, 'Nguyễn Thị Ngọc Nhung', 10, '1998-06-05', 'Female', '54 Phan Tú, Đà Nẵng', 987654321, NULL),
(21, 'Trịnh Thị Mỹ Sương', 10, '1998-10-09', 'Female', '02 Thanh Sơn, Đà Nẵng', 987654321, NULL),
(22, 'Trịnh Văn Đạt', 11, '1998-10-10', 'Male', 'Đà Nẵng', 987654321, NULL),
(23, 'Vũ Thị Dung', 11, '1997-10-10', 'Female', 'Đà Nẫng', 987654321, NULL),
(24, 'Nguyễn Thị Thùy Trang', 12, '1970-10-02', 'Female', 'Đà Nẵng', 987654321, NULL),
(25, 'Mai Văn Hà', 12, '1980-10-10', 'Male', 'Đà Nẵng', 987654321, NULL),
(26, 'Trịnh Vân Đạt', 13, '1997-10-10', 'Male', 'Đà Nẵng', 987654321, NULL),
(27, 'Phát', 13, '2019-05-28', 'Male', 'Đà Nẵng', 987651, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuchi`
--

CREATE TABLE `thuchi` (
  `id` int(11) NOT NULL,
  `MaHD` int(5) DEFAULT NULL,
  `MaDVTour` int(10) DEFAULT NULL,
  `MaCTTour` int(11) DEFAULT NULL,
  `DichVu` longtext COLLATE utf8mb4_vietnamese_ci,
  `LoaiThuChi` int(1) DEFAULT NULL,
  `NoiDung` longtext COLLATE utf8mb4_vietnamese_ci,
  `SoTien` decimal(10,0) DEFAULT NULL,
  `NgayTT` date DEFAULT NULL,
  `MaNV` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `thuchi`
--

INSERT INTO `thuchi` (`id`, `MaHD`, `MaDVTour`, `MaCTTour`, `DichVu`, `LoaiThuChi`, `NoiDung`, `SoTien`, `NgayTT`, `MaNV`) VALUES
(11, 7, NULL, 19, 'Thanh Toán Hợp Đồng', 1, 'HDDL #7 Thanh Toán Lần 1 Tại Văn Phòng', '7300000', '2019-06-15', 1),
(12, 7, NULL, 19, 'Thanh Toán Hợp Đồng', 1, 'HDDL #7 Thanh Toán Lần 2 Tại Văn Phòng', '7300000', '2019-06-15', 1),
(13, 8, NULL, 6, 'Thanh Toán Hợp Đồng', 1, 'HDDL #8 Thanh Toán Lần 1', '10900000', '2019-06-15', 1),
(14, 8, NULL, 6, 'Thanh Toán Hợp Đồng', 1, 'HDDL #8 Thanh Toán lần 2', '10900000', '2019-06-15', 1),
(15, 9, NULL, 6, 'Thanh Toán Hợp Đồng', 1, 'HDDL #9 Thanh toán lần 1', '21800000', '2019-06-15', 1),
(16, 9, NULL, 6, 'Thanh Toán Hợp Đồng', 1, 'HDDL #9 Thanh toán lần 2', '21800000', '2019-06-15', 1),
(17, NULL, 66, 6, 'VJ983', 2, 'Đặt cọc vé máy bay VJ983 Tour 4-6', '10000000', '2019-06-15', 1),
(18, 10, NULL, 6, 'Thanh Toán Hợp Đồng', 1, 'HDDL #10 Thanh Toán  Lần 1', '10900000', '2019-06-16', 1),
(19, 10, NULL, 6, 'Thanh Toán Hợp Đồng', 1, 'HDDL #10 Thanh toán lần 2', '10900000', '2019-06-16', 1),
(20, NULL, 68, 6, 'Ăn Trưa', 2, 'Đặt Cọc lần 1', '2000000', '2019-06-16', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinh`
--

CREATE TABLE `tinh` (
  `MaTinh` char(5) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenTinh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaQG` char(5) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tinh`
--

INSERT INTO `tinh` (`MaTinh`, `TenTinh`, `MaQG`) VALUES
('AG', 'AN GIANG', 'VN'),
('BD', 'BÌNH DƯƠNG', 'VN'),
('BDI', 'BÌNH ĐỊNH', 'VN'),
('BG', 'BẮC GIANG', 'VN'),
('BK', 'BẮC KẠN', 'VN'),
('BL', 'BẠC LIÊU', 'VN'),
('BN', 'BẮC NINH', 'VN'),
('BP', 'BÌNH PHƯỚC', 'VN'),
('BRVT', 'BÀ RỊA vŨNG TÀU', 'VN'),
('BT', 'BẾN TRE', 'VN'),
('BTH', 'BÌNH THUẬN', 'VN'),
('CB', 'CAO BẰNG', 'VN'),
('CM', 'CÀ MAU', 'VN'),
('CT', 'CÂN THƠ', 'VN'),
('DANA', 'ĐÀ NẴNG', 'VN'),
('DB', 'ĐIỆN BIÊN', 'VN'),
('DL', 'ĐẮK LẮK', 'VN'),
('DNA', 'ĐỒNG NAI', 'VN'),
('DNO', 'ĐẮK NÔNG', 'VN'),
('DTH', 'ĐỒNG THÁP', 'VN'),
('GL', 'GIA LAI', 'VN'),
('HB', 'HÒA BÌNH', 'VN'),
('HCM', 'HỒ CHÍ MINH', 'VN'),
('HD', 'HẢI DƯƠNG', 'VN'),
('HG', 'HÀ GIANG', 'VN'),
('HN', 'HÀ NỘI', 'VN'),
('HNA', 'HÀ NAM', 'VN'),
('HP', 'HẢI PHÒNG', 'VN'),
('HTI', 'HÀ TĨNH', 'VN'),
('HUE', 'HUẾ', 'VN'),
('HUG', 'HẬU GIANG', 'VN'),
('HY', 'HƯNG YÊN', 'VN'),
('KG', 'KIÊN GIANG', 'VN'),
('KH', 'KHÁNH HÒA', 'VN'),
('KT', 'KON TUM', 'VN'),
('LA', 'LONG AN', 'VN'),
('LCA', 'LÀO CAI', 'VN'),
('LCH', 'LAI CHÂU', 'VN'),
('LD', 'LÂM ĐỒNG', 'VN'),
('LS', 'LẠNG SƠN', 'VN'),
('NA', 'NGHỆ AN', 'VN'),
('NB', 'NINH BÌNH', 'VN'),
('ND', 'NAM ĐỊNH', 'VN'),
('NTH', 'NINH THUẬN', 'VN'),
('PT', 'PHÚ THỌ', 'VN'),
('PY', 'PHÚ YÊN', 'VN'),
('QB', 'QUẢNG BÌNH', 'VN'),
('QNA', 'QUẢNG NAM', 'VN'),
('QNG', 'QUẢNG NGÃI', 'VN'),
('QNI', 'QUẢNG NINH', 'VN'),
('QT', 'QUẢNG TRỊ', 'VN'),
('SL', 'SƠN LA', 'VN'),
('ST', 'SÓC TRĂNG', 'VN'),
('TB', 'THÁI BÌNH', 'VN'),
('TGI', 'TIỀN GIANG', 'VN'),
('TH', 'THANH HÓA', 'VN'),
('TN', 'THÁI NGUYÊN', 'VN'),
('TNI', 'TÂY NINH', 'VN'),
('TQ', 'TUYÊN QUANG', 'VN'),
('TV', 'TRÀ VINH', 'VN'),
('VL', 'VĨNH LONG', 'VN'),
('VP', 'VĨNH PHÚC', 'VN'),
('YB', 'YÊN BÁI', 'VN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tour`
--

CREATE TABLE `tour` (
  `MaTour` int(10) NOT NULL,
  `TenTour` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TieuDe` longtext COLLATE utf8mb4_vietnamese_ci,
  `DiemKhoiHanh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `SoNgay` int(11) DEFAULT '0',
  `MaNV` int(20) UNSIGNED DEFAULT NULL,
  `MaKV` int(11) DEFAULT NULL,
  `MoTa` longtext COLLATE utf8mb4_vietnamese_ci,
  `HinhAnh` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Gia` decimal(10,0) DEFAULT NULL,
  `GiaTE` decimal(10,0) DEFAULT '0',
  `GiaEB` decimal(10,0) DEFAULT '0',
  `NoiBat` int(1) DEFAULT '0',
  `TinhTrang` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tour`
--

INSERT INTO `tour` (`MaTour`, `TenTour`, `TieuDe`, `DiemKhoiHanh`, `SoNgay`, `MaNV`, `MaKV`, `MoTa`, `HinhAnh`, `Gia`, `GiaTE`, `GiaEB`, `NoiBat`, `TinhTrang`) VALUES
(3, 'Khám Phá Tây Bắc', 'DU LỊCH MỘC CHÂU - SƠN LA - ĐIỆN BIÊN - LAI CHÂU - SA PA - LÀO CAI - LŨNG PÔ', 'TP. Hồ Chí Minh', 5, 3, 1, '<p><strong>NG&Agrave;Y&nbsp;01: TP. HỒ CH&Iacute; MINH - HÀ N&Ocirc;̣I - H&Ograve;A B&Igrave;NH - MỘC CH&Acirc;U (Ăn trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch tập trung tại Cổng D4 - Ga đi trong nước - S&acirc;n bay T&acirc;n Sơn Nhất.&nbsp;Khởi h&agrave;nh đi H&agrave; Nội tr&ecirc;n&nbsp;<em><strong>chuyến bay VJ176 l&uacute;c 06:00</strong></em>. &nbsp;Đến s&acirc;n bay Nội B&agrave;i, khởi h&agrave;nh đi H&ograve;a B&igrave;nh. Đo&agrave;n dừng ch&acirc;n tại&nbsp;<strong>Thung Khe - đ&egrave;o Đ&aacute; Trắng, đến Thung Nhuổi.</strong>&nbsp;Đến Mộc Ch&acirc;u, thăm&nbsp;<strong>Di t&iacute;ch lịch sử lưu niệm Trung đo&agrave;n 52 T&acirc;y Tiến,&nbsp;</strong><strong>th&aacute;c Dải Yếm,</strong>&nbsp;<strong>đồi ch&egrave; Mộc Ch&acirc;u<em>.&nbsp;</em></strong>Nghỉ đ&ecirc;m tại Mộc Ch&acirc;u.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/t%C3%A2y%20b%E1%BA%AFc/fresh-green-tea-terraced-fields-in-Moc-Chau_1114369139.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: MỘC CH&Acirc;U - SƠN LA - ĐIỆN BI&Ecirc;N (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nTrả ph&ograve;ng, xe đưa đo&agrave;n gh&eacute; thăm&nbsp;<strong>Bảo t&agrave;ng, nh&agrave; t&ugrave; Sơn La</strong>. Chinh phục&nbsp;<strong>đ&egrave;o Pha Đin</strong>&nbsp;- một trong những đường đ&egrave;o d&agrave;i v&agrave; hiểm trở nhất Việt Nam, ranh giới 2 tỉnh Sơn La &amp; Điện Bi&ecirc;n. Buổi chiều, đo&agrave;n thăm&nbsp;<strong>Tượng đ&agrave;i chiến thắng Điện Bi&ecirc;n Phủ (đồi D1)</strong>. Tự do kh&aacute;m ph&aacute; Điện Bi&ecirc;n về đ&ecirc;m. Nghỉ đ&ecirc;m tại Điện Bi&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/t%C3%A2y%20b%E1%BA%AFc/deodapin.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;03: ĐIỆN BI&Ecirc;N - LAI CH&Acirc;U (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nĐo&agrave;n đến tham quan c&aacute;c di t&iacute;ch gắn liền với chiến thắng Điện Bi&ecirc;n Phủ:&nbsp;<strong>bảo t&agrave;ng chiến thắng Điện Bi&ecirc;n Phủ, đồi A1, Hầm tướng De Castries</strong>. Khởi h&agrave;nh đi Lai Ch&acirc;u, đo&agrave;n sẽ đi ngang qua c&aacute;c địa danh: Mường Ch&agrave;, Mường Lay,&nbsp;<strong>cầu Hang T&ocirc;m</strong>- ranh giới 2 tỉnh Điện Bi&ecirc;n &amp; Lai Ch&acirc;u, Phong Thổ,... ,... Tr&ecirc;n đường đi, đo&agrave;n c&oacute; dịp chi&ecirc;m ngưỡng khung cảnh h&ugrave;ng vĩ của n&uacute;i rừng T&acirc;y Bắc. Tham quan&nbsp;<strong>động Pu Sam C&aacute;p</strong>. &nbsp;Nghỉ đ&ecirc;m tại Lai Ch&acirc;u.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;04: LAI CH&Acirc;U - SAPA - L&Agrave;O CAI (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nTrả ph&ograve;ng. Xe đưa đo&agrave;n theo quốc lộ 4D, chinh phục d&atilde;y Ho&agrave;ng Li&ecirc;n Sơn, chụp h&igrave;nh lưu niệm tại&nbsp;<strong>đỉnh đ&egrave;o &Ocirc; Quy Hồ</strong>. Đến Sapa, đo&agrave;n tự do tham quan, mua sắm,...<br />\r\n<em>Lựa chọn (tự t&uacute;c chi ph&iacute; tham quan)</em>&nbsp;Xe đưa qu&yacute; kh&aacute;ch đến nh&agrave; Ga t&agrave;u hỏa leo n&uacute;i hoặc nh&agrave; Ga c&aacute;p treo. Đo&agrave;n tham quan&nbsp;<strong>khu du lịch c&aacute;p treo Fansipan&nbsp;</strong>với hệ thống c&aacute;p treo 3 d&acirc;y hiện đại vừa kh&aacute;nh th&agrave;nh th&aacute;ng 2/2016. Trải nghiệm cảm gi&aacute;c đi giữa biển m&acirc;y. Viếng khu t&acirc;m linh Fanpsian, vượt gần 600 bậc thang,&nbsp;<strong>chinh phục &ldquo;N&oacute;c nh&agrave; Đ&ocirc;ng Dương&rdquo; - đỉnh Fansipan 3,143m</strong>.<br />\r\nXe đ&oacute;n v&agrave; đưa cả đo&agrave;n trở về L&agrave;o Cai. Tham quan&nbsp;<strong>cửa khẩu quốc tế L&agrave;o Cai,&nbsp;</strong>viếng<strong>&nbsp;Đền Thượng</strong>. Tự do kh&aacute;m ph&aacute; TP. L&agrave;o Cai về đ&ecirc;m. Nghỉ đ&ecirc;m tại L&agrave;o Cai.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/t%C3%A2y%20b%E1%BA%AFc/fanssipan.jpg\" style=\"height:429px; width:1025px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;05: L&Agrave;O CAI - LŨNG P&Ocirc; - NỘI B&Agrave;I - HỒ CH&Iacute; MINH (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, xe đưa đo&agrave;n đi B&aacute;t X&aacute;t, thăm&nbsp;<strong>cột mốc bi&ecirc;n giới thi&ecirc;ng li&ecirc;ng&nbsp;</strong>v&agrave;<strong>&nbsp;cột cờ Lũng P&ocirc;</strong>, nơi con s&ocirc;ng Hồng chảy v&agrave;o đất Việt. Khởi h&agrave;nh ra s&acirc;n bay Nội B&agrave;i, về TP. Hồ Ch&iacute; Minh tr&ecirc;n&nbsp;<strong>chuyến bay VJ173 l&uacute;c 21:35 hoặcVJ163 l&uacute;c 20:10&nbsp;</strong><em>(t&ugrave;y ng&agrave;y)</em>. &nbsp;Kết th&uacute;c chương tr&igrave;nh&nbsp;<em>(Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay về nh&agrave;).</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"/ckfinder/userfiles/images/t%C3%A2y%20b%E1%BA%AFc/cot%20c%E1%BB%9D.jpg\" style=\"height:498px; width:810px\" /></em></p>\r\n\r\n<p><em><strong>Ghi ch&uacute;:</strong></em><br />\r\n<em>-&nbsp; Lịch tr&igrave;nh n&agrave;y chỉ sử dụng xe 35 chỗ trở xuống.<br />\r\n- Trường hợp thời tiết kh&ocirc;ng thuận lợi (m&ugrave;a mưa th&aacute;ng 5,6), điểm tham quan cột cờ Lũng P&ocirc; sẽ được thay thế bằng KDT Đền H&ugrave;ng (Ph&uacute; Thọ).&nbsp;</em><br />\r\n<em>- Giờ bay c&oacute; thể bị thay đổi bởi h&atilde;ng h&agrave;ng kh&ocirc;ng Vietjet Air<br />\r\n- Điểm tham quan c&oacute; thể sắp xếp lại cho ph&ugrave; hợp m&agrave; vẫn bảo đảm đầy đủ nội dung của từng chương tr&igrave;nh</em></p>', 'MOSe_fanssipan.jpg', '11800000', '9700000', '4850000', 0, 1),
(4, 'DU LỊCH HÀ NỘI - LÀO CAI - SAPA - HẠ LONG', 'DU LỊCH HÀ NỘI - LÀO CAI - SAPA - HẠ LONG', 'TP. Hồ Chí Minh', 5, 26, 1, '<p><strong>NG&Agrave;Y 1: TP. HCM - H&Agrave; NỘI - ĐƯỜNG CAO TỐC - L&Agrave;O CAI - SAPA &nbsp;(Ăn trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, tập trung tại Cổng D4&nbsp;- Ga đi trong nước - S&acirc;n bay T&acirc;n Sơn Nhất đ&aacute;p chuyến bay&nbsp;<strong><em>VJ176 l&uacute;c 06:00&nbsp;</em></strong>. Đ&aacute;p xuống s&acirc;n bay Nội B&agrave;i, khởi h&agrave;nh đến L&agrave;o Cai. Đến L&agrave;o Cai tiếp tục l&ecirc;n Sapa. Chi&ecirc;m ngưỡng&nbsp;<strong>d&atilde;y Ho&agrave;ng Li&ecirc;n Sơn&nbsp;</strong>tr&ecirc;n đường đi. Buổi tối tự do dạo&nbsp;<strong>chợ Sapa</strong>. Nghỉ đ&ecirc;m tại Sapa.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/hn-%20sapa/day%20hoang%20lien%20son.jpg\" style=\"height:571px; width:1024px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/hn-%20sapa/ghe-tham-cho-phien-sapa-4.jpg\" style=\"height:682px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y 2: SAPA - L&Agrave;O CAI &nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, chinh phục&nbsp;<strong>n&uacute;i H&agrave;m Rồng</strong>, thưởng ngoạn&nbsp;<strong>vườn lan, vườn hoa &ocirc;n đới, vườn đ&agrave;o v&agrave; khu vườn đ&aacute;</strong>,&nbsp;<strong>xem biểu diễn m&uacute;a h&aacute;t d&acirc;n gian của c&aacute;c d&acirc;n tộc thiểu số</strong>, ngắm to&agrave;n cảnh Sapa v&agrave; &ldquo;N&oacute;c nh&agrave; Đ&ocirc;ng Dương&rdquo; - đỉnh Fansipan tại s&acirc;n m&acirc;y.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/hn-%20sapa/nuihamrong.jpg\" style=\"height:768px; width:1024px\" /></p>\r\n\r\n<p><em>Lựa chọn (tự t&uacute;c chi ph&iacute; tham quan)</em>&nbsp;Xe đưa qu&yacute; kh&aacute;ch đến nh&agrave; Ga t&agrave;u hỏa leo n&uacute;i hoặc nh&agrave; Ga c&aacute;p treo. Đo&agrave;n&nbsp;tham quan&nbsp;<strong>khu du lịch c&aacute;p treo Fansipan</strong>&nbsp;với hệ thống c&aacute;p treo 3 d&acirc;y hiện đại vừa kh&aacute;nh th&agrave;nh th&aacute;ng 2/2016. Trải nghiệm cảm gi&aacute;c đi giữa biển m&acirc;y, ngắm to&agrave;n cảnh Sapa v&agrave; thung lũng Mường Hoa, vườn quốc gia Ho&agrave;ng Li&ecirc;n từ tr&ecirc;n cao. Viếng&nbsp;<strong>khu t&acirc;m linh Fansipan</strong>, vượt gần 600 bậc thang,&nbsp;<strong>chinh phục &ldquo;N&oacute;c nh&agrave; Đ&ocirc;ng Dương&rdquo; -&nbsp;</strong>đỉnh Fansipan ở độ cao 3,143m.<br />\r\nXe đ&oacute;n v&agrave; đưa cả đo&agrave;n trở về L&agrave;o Cai. Tự do kh&aacute;m ph&aacute; TP. L&agrave;o Cai về đ&ecirc;m. Nghỉ đ&ecirc;m tại L&agrave;o Cai</p>\r\n\r\n<p><strong>NG&Agrave;Y 3: L&Agrave;O CAI - H&Agrave; NỘI &nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, trả ph&ograve;ng. Tham quan&nbsp;<strong>cửa khẩu Quốc tế L&agrave;o Cai.&nbsp;</strong>Theo cung đường cao tốc để trở về H&agrave; Nội. Đến Thủ đ&ocirc; tham quan&nbsp;<strong>Ho&agrave;n Th&agrave;nh Thăng Long,&nbsp;Hồ Ho&agrave;n Kiếm</strong>, viếng&nbsp;<strong>đền Ngọc Sơn</strong>. Nhận ph&ograve;ng. Buổi t&ocirc;́i, tự do dạo bộ dọc theo&nbsp;<strong>&ldquo;36 phố phường&rdquo;</strong>- khu phố cổ với những ng&agrave;nh nghề đặc trưng v&agrave; truyền thống của cư d&acirc;n Thủ đ&ocirc;. Nghỉ đ&ecirc;m tại H&agrave; Nội.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/hn-%20sapa/hoang-thanh-thang-long-hinh-anh-3jpg.jpg\" style=\"height:400px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y 4: H&Agrave; NỘI - HẠ LONG &nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nĐến tham quan&nbsp;<strong>Quảng trường Ba Đ&igrave;nh, khu di t&iacute;ch Phủ Chủ tịch</strong>. Ngắm<strong>&nbsp;hồ T&acirc;y, hồ Tr&uacute;c Bạch, viếng ch&ugrave;a Trấn Quốc</strong>&nbsp;- danh lam cổ tự được x&acirc;y dựng từ thế kỷ VI. Khởi h&agrave;nh đến Hạ Long. Tham quan&nbsp;<strong>cầu B&atilde;i Ch&aacute;y</strong>. Buổi chiều tối, qu&yacute; kh&aacute;ch&nbsp;tự do thăm th&uacute; phố biển Hạ Long. Nghỉ đ&ecirc;m tại Hạ Long.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/hn-%20sapa/ownphur%20ch%E1%BB%A7%20t%E1%BB%8Bch.jpg\" style=\"height:662px; width:1024px\" /></p>\r\n\r\n<p><em><strong>Lựa chọn&nbsp;</strong>(tự t&uacute;c chi ph&iacute; di chuyển &amp; tham quan)</em><br />\r\n- Tham quan<em><strong>&nbsp;Khu Du Lịch Đảo Tuần Ch&acirc;u</strong></em>, xem biểu diễn c&aacute; heo - hải cẩu - sư tử biển, xiếc th&uacute;, biểu diễn vũ điệu nhạc nước v&agrave; &aacute;nh s&aacute;ng laser, game trong nh&agrave;, xe điện dụng, xe ngựa h&agrave;o hoa, chiếu phim 5D, triễn l&atilde;m hoa đăng, biễu diễn ca m&uacute;a nhạc.<br />\r\n- Tham quan<strong>&nbsp;Quần thể Du lịch - Giải tr&iacute; Sun World Hạ Long Park</strong>, gồm khu c&ocirc;ng vi&ecirc;n vui chơi ven biển B&atilde;i Ch&aacute;y v&agrave; &nbsp;c&ocirc;ng vi&ecirc;n vui chơi tr&ecirc;n n&uacute;i Ba Đ&egrave;o - được kết nối với nhau bởi hệ thống&nbsp;<strong>c&aacute;p treo vượt biển Nữ Ho&agrave;ng</strong>&nbsp;đạt 2 kỷ lục thế giới (cabin c&oacute; sức chứa lớn nhất thế giới v&agrave; c&aacute;p treo c&oacute; trụ c&aacute;p cao nhất thế giới so với mặt đất). Trải nghiệm Thế giới tr&ograve; chơi mạo hiểm c&ugrave;ng t&agrave;u lượn si&ecirc;u tốc, c&ocirc;ng vi&ecirc;n nước, khu Vườn Nhật, khu tr&ograve; chơi trong nh&agrave; L&acirc;u Đ&agrave;i Huyền B&iacute;, khu trưng b&agrave;y tượng s&aacute;p, v&agrave; đặc biệt l&agrave;&nbsp;<strong>V&ograve;ng quay Mặt Trời</strong>&nbsp;- một trong những v&ograve;ng quay cao nhất thế giới.</p>\r\n\r\n<p><strong>NG&Agrave;Y 5: VỊNH HẠ LONG - BẮC NINH - H&Agrave; NỘI -&nbsp;TP.HCM&nbsp; (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBu&ocirc;̉i sáng, l&ecirc;n thuyền du ngoạn<strong>&nbsp;vịnh Hạ Long</strong>&nbsp;chi&ecirc;m ngưỡng<strong>&nbsp;động Thi&ecirc;n Cung, c&aacute;c h&ograve;n Đỉnh Hương - Trống M&aacute;i (G&agrave; Chọi) - Ch&oacute; Đ&aacute;</strong>. Tham quan&nbsp;<strong>bảo t&agrave;ng Quảng Ninh.&nbsp;</strong>Khởi h&agrave;nh về H&agrave; Nội. Gh&eacute; Hải Dương, mua đặc sản b&aacute;nh đậu xanh, b&aacute;nh gai. Xe đưa ra s&acirc;n bay Nội B&agrave;i, về TP. Hồ Ch&iacute; Minh&nbsp;<em><strong>VJ151&nbsp;l&uacute;c 20:30</strong></em>. Kết th&uacute;c chương tr&igrave;nh (Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay về nh&agrave;).</p>\r\n\r\n<p><strong>Ghi ch&uacute;:</strong><br />\r\n<em>- Lăng Chủ tịch Hồ Ch&iacute; Minh đ&oacute;ng cửa v&agrave;o thứ 2, 6 h&agrave;ng tuần v&agrave; 1 số th&aacute;ng trong năm để tu bổ.&nbsp;Trong những ngày này, Quý khách sẽ tham quan b&ecirc;n ngoài lăng, g&ocirc;̀m: quảng trường Ba Đình, khu di t&iacute;ch Phủ Chủ tịch. Kh&ocirc;ng v&agrave;o vi&ecirc;́ng b&ecirc;n trong lăng.<br />\r\n- Điểm tham quan c&oacute; thể sắp xếp lại cho ph&ugrave; hợp m&agrave; vẫn bảo đảm đầy đủ nội dung của từng chương tr&igrave;nh.<br />\r\n- Giờ bay c&oacute; thể bị thay đổi bởi Vietjet Air.</em></p>', 'C3sA_Gioi-thieu-doi-net-ve-Ho-Hoan-Kiem-Ho-Guom-o-Ha-Noi-3.jpg', '10900000', '9500000', '4600000', 0, 1),
(5, 'DU LỊCH NHA TRANG - HÒN LAO - DỐC LẾT', 'DU LỊCH NHA TRANG - HÒN LAO - DỐC LẾT', 'TP. Hồ Chí Minh', 4, 26, 2, '<p><strong>NG&Agrave;Y&nbsp;01: TP. HỒ CH&Iacute; MINH - NHA TRANG &nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nĐ&oacute;n kh&aacute;ch tại văn ph&ograve;ng Saigontourist (l&uacute;c 06h00 s&aacute;ng tại 1 Nguyễn Ch&iacute; Thanh, F9, Q5&nbsp; hoặc l&uacute;c 06h30 s&aacute;ng tại 102 Nguyễn Huệ, Quận 1) khởi h&agrave;nh đi Nha Trang. Tr&ecirc;n đường đi, chi&ecirc;m ngưỡng vẻ đẹp của B&atilde;i biển c&aacute;t trắng C&agrave; N&aacute;, tham quan&nbsp;<em><strong>Khu tưởng niệm chiến sĩ Gạc Ma</strong></em>. du kh&aacute;ch nhận ph&ograve;ng. Nghỉ đ&ecirc;m tại Nha Trang.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/t%C3%A2y%20b%E1%BA%AFc/gac_ma_2_meea.jpg\" style=\"height:577px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: NHA TRANG - H&Ograve;N LAO - I RESORT NHA TRANG &nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, l&ecirc;n thuyền tới khu du lịch<em><strong>&nbsp;H&ograve;n Lao - đảo Khỉ</strong></em>, tắm biển, thư gi&atilde;n, xem xiếc khỉ, xiếc ch&oacute;, d&ecirc;, đua ch&oacute; hoặc thử c&aacute;c m&ocirc;n thể thao b&atilde;i biển: can&ocirc; k&eacute;o d&ugrave;, m&ocirc;t&ocirc; nước... (chi ph&iacute; tự t&uacute;c). Về lại đất liền, tham quan&nbsp;<strong>Trung t&acirc;m suối kho&aacute;ng n&oacute;ng Iresort Nha Trang</strong>. Du kh&aacute;ch tự do thư gi&atilde;n v&agrave; tắm kho&aacute;ng. Nghỉ đ&ecirc;m tại Nha Trang.</p>\r\n\r\n<p><img alt=\"Đảo Khỉ Nha Trang\" src=\"/ckfinder/userfiles/images/nhatrang/dao-khi-nha-trang.jpg\" style=\"height:512px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y 03: NHA TRANG &ndash; DỐC LẾT - C&Aacute;C THẮNG CẢNH (Ăn s&aacute;ng, trưa)</strong><br />\r\nKhởi h&agrave;nh đi&nbsp;<strong>Dốc Lết</strong>. Tự do tham quan v&agrave; tắm biển. Chiều kh&aacute;ch đi tham quan c&aacute;c thắng cảnh nổi tiếng&nbsp;<strong><em>h&ograve;n Chồng</em></strong>, ngắm cảnh&nbsp;<em><strong>n&uacute;i C&ocirc; Ti&ecirc;n</strong></em>. Viếng&nbsp;<strong><em>th&aacute;p B&agrave; Ponagar</em></strong>, tham quan v&agrave; mua sắm tại&nbsp;<strong><em>chợ Đầm</em></strong>. Tự t&uacute;c ăn tối. Nghỉ đ&ecirc;m tại Nha Trang.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/nhatrang/doc-let-1.jpg\" style=\"height:683px; width:1025px\" /></p>\r\n\r\n<p><img alt=\"Tháp Bà Panagar\" src=\"/ckfinder/userfiles/images/nhatrang/thap-ba-ponagar.jpg\" style=\"height:685px; width:1024px\" /></p>\r\n\r\n<p><strong>Lựa chọn (tự t&uacute;c chi ph&iacute; di chuyển v&agrave; tham quan):</strong>&nbsp;Qu&yacute; kh&aacute;ch c&oacute; thể tham quan Khu vui chơi giải tr&iacute; Vinpearl Land hệ thống c&aacute;p treo vượt biển d&agrave;i nhất thế giới; Thủy cung lớn v&agrave; hiện đại nhất Việt Nam; Khu tr&ograve; chơi trong nh&agrave; hoặc chinh phục thử th&aacute;ch cao độ từ h&agrave;ng chục tr&ograve; chơi cảm gi&aacute;c mạnh tại Khu tr&ograve; chơi ngo&agrave;i trời v&agrave; C&ocirc;ng vi&ecirc;n nước ngọt tr&ecirc;n b&atilde;i biển đầu ti&ecirc;n &amp; duy nhất tại Việt Nam; ph&ograve;ng chiếu phim 4D, chương tr&igrave;nh biểu diễn nhạc nước</p>\r\n\r\n<p><strong>NG&Agrave;Y 04: NHA TRANG -&nbsp;TP. HỒ CH&Iacute;&nbsp; MINH (Ăn s&aacute;ng, trưa)</strong><br />\r\nTrả ph&ograve;ng, khởi h&agrave;nh về th&agrave;nh phố. Tr&ecirc;n đường dừng ch&acirc;n tại Phan Rang nghỉ giải lao v&agrave; mua đặc sản Ninh Thuận. Đến Tp. Hồ Ch&iacute; Minh, kết th&uacute;c chuyến tham quan.</p>', 'pIy6_doc-let-1.jpg', '4500000', '2100000', '800000', 0, 1),
(6, 'DU LỊCH KHÁM PHÁ MIỀN TÂY', 'CÁI BÈ - CẦN THƠ - CHÂU ĐỐC - HÀ TIÊN', 'TP. Hồ Chí Minh', 4, 28, 3, '<p><strong>Ng&agrave;y 01: TP. HỒ CH&Iacute; MINH&nbsp;- C&Aacute;I B&Egrave; - CẦN THƠ&nbsp; (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nĐ&oacute;n kh&aacute;ch tại văn ph&ograve;ng Saigontourist (l&uacute;c 06h00 s&aacute;ng tại 01 Nguyễn Ch&iacute; Thanh, F9, Q5 hoặc 06h30 s&aacute;ng tại 102 Nguyễn Huệ, Q1)&nbsp;Đến C&aacute;i B&egrave;, tham quan&nbsp;<strong><em>chợ nổi C&aacute;i B&egrave;</em></strong>. T&igrave;m hiểu qui tr&igrave;nh<em><strong>&nbsp;l&ograve; cốm, kẹo dừa, nu&ocirc;i ong v&agrave; thưởng thức tr&agrave; mật ong</strong></em>. L&ecirc;n c&ugrave; lao An B&igrave;nh tham quan&nbsp;<strong><em>nh&agrave; xưa Nam Bộ</em></strong>, tham quan&nbsp;<em><strong>vườn ươm c&acirc;y giống c&aacute;c loại c&acirc;y ăn tr&aacute;i nhiệt đới.</strong></em>Nhận ph&ograve;ng v&agrave; nghỉ đ&ecirc;m tại Cần Thơ.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/cho-noi-cai-rang-1_0ffc21288f33475fb097f348b170d501_master.jpg\" style=\"height:731px; width:1024px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 02 : CẦN THƠ - CH&Acirc;U ĐỐC (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, đi thuyền tham quan&nbsp;<em><strong>chợ nổi C&aacute;i Răng</strong></em>, viếng&nbsp;<strong><em>Thiền viện Tr&uacute;c L&acirc;m Phương Nam</em></strong>. Khởi h&agrave;nh đi Ch&acirc;u Đốc. Buổi chiều viếng&nbsp;<strong><em>Miếu B&agrave; Ch&uacute;a Xứ, T&acirc;y An cổ tự, Lăng Thoại Ngọc Hầu, Ch&ugrave;a Hang.</em></strong>&nbsp;Nghỉ đ&ecirc;m tại Ch&acirc;u Đốc.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/Chau-doc-Chua-hang-pagoda.jpg\" style=\"height:676px; width:1014px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 03: CH&Acirc;U ĐỐC - H&Agrave; TI&Ecirc;N (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nKhởi h&agrave;nh đi H&agrave; Ti&ecirc;n. Tr&ecirc;n đường tham quan&nbsp;<strong><em>rừng tr&agrave;m Tr&agrave; Sư</em></strong>, theo những con rạch xuy&ecirc;n qua&nbsp;<em><strong>Lung Sen v&agrave; khu Rừng Giống</strong></em>, l&ecirc;n&nbsp;<em><strong>th&aacute;p vọng cảnh</strong></em>&nbsp;cao 23m nh&igrave;n to&agrave;n cảnh rừng tr&agrave;m v&agrave;<strong><em>&nbsp;</em></strong>tượng Phật Di Lặc, ch&ugrave;a Vạn Linh tr&ecirc;n n&uacute;i Cấm bằng k&iacute;nh viễn vọng. Đi H&agrave; Ti&ecirc;n dọc k&ecirc;nh Vĩnh Tế. Viếng<strong><em>&nbsp;lăng Mạc Cửu</em></strong>; tham quan&nbsp;<em><strong>Thạch Động</strong></em>,&nbsp;<em><strong>b&atilde;i biển Mũi Nai.</strong></em>&nbsp; Nghỉ đ&ecirc;m tại H&agrave; Ti&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/780_crop_rung-tram-tra-su.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 04: H&Agrave; TI&Ecirc;N - TP. HỒ CH&Iacute; Minh &nbsp;(Ăn s&aacute;ng, trưa)</strong><br />\r\nBuổi s&aacute;ng khởi h&agrave;nh về TP. HCM. Đến TP.HCM, đưa qu&yacute; kh&aacute;ch về văn ph&ograve;ng Saigontourist. Kết th&uacute;c chương tr&igrave;nh.&nbsp;</p>', 'Nmik_36Bxbhi5H8YTOckNPNqxVJM5J_TWs2fu.jpg', '4160000', '1990000', '800000', 0, 1),
(7, 'DU LỊCH Miền Tây', 'DU LỊCH TIỀN GIANG - CẦN THƠ - CHÂU ĐỐC - HÀ TIÊN', 'Đà Nẵng', 4, 28, 3, '<p><strong>Ng&agrave;y 01: Đ&Agrave; NẴNG - TP. HỒ CH&Iacute; Minh &ndash; TIỀN GIANG - CẦN THƠ</strong>&nbsp;&nbsp;&nbsp;(Ăn trưa, chiều)<br />\r\nQu&yacute; kh&aacute;ch tự t&uacute;c phương tiện ra s&acirc;n bay Đ&agrave; Nẵng khởi h&agrave;nh đi Hồ Ch&iacute; Minh tr&ecirc;n chuyến bay s&aacute;ng -<strong>&nbsp;VN 105 &ndash; 06:30&nbsp; 08:00&nbsp; /E .</strong>&nbsp;Xe &amp; HDV Saigontourist đ&oacute;n kh&aacute;ch tại s&acirc;n bay T&acirc;n Sơn Nhất. Khởi h&agrave;nh đi C&aacute;i B&egrave; bằng đại lộ Đ&ocirc;ng T&acirc;y. Đến Tiền Giang:<strong>Du thuy&ecirc;̀n tr&ecirc;n s&ocirc;ng Ti&ecirc;̀n, ngắm cảnh 4 cù lao: Long, L&acirc;n, Qui, Phụng. Tham quan cảng cá Mỹ Tho, làng nu&ocirc;i cá bè dọc cù lao T&acirc;n Long.Đến cù lao Thới Sơn: đến nhà d&acirc;n, trại nu&ocirc;i ong, thưởng thức trà m&acirc;̣t ong, các loại mứt đặc sản, chụp hình với trăn g&acirc;́m. Đi b&ocirc;̣ tr&ecirc;n đường làng Thới Sơn, tham quan lò kẹo dừa. Thưởng thức trái c&acirc;y theo mùa, nghe nhạc tài tử Nam B&ocirc;̣. Dùng xuồng chèo len lỏi trong rạch nhỏ dưới 2 hàng dừa nước xanh mát.</strong>Trở lại thuy&ecirc;̀n v&ecirc;̀ Mỹ Tho D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng. Tiếp tục đi Cần Thơ. Đến Cần Thơ nhận ph&ograve;ng nghỉ ngơi.D&ugrave;ng cơm tối tại nh&agrave; h&agrave;ng. Tối tự do dạo bến Ninh Kiều. Nghỉ đ&ecirc;m tại&nbsp;<strong>Cần Thơ</strong>.&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/36Bxbhi5H8YTOckNPNqxVJM5J_TWs2fu.jpg\" style=\"height:679px; width:1024px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 02 : CẦN THƠ - CH&Acirc;U ĐỐC&nbsp;&nbsp;</strong>(Ăn s&aacute;ng, trưa, chiều)<br />\r\nXuống thuyền tại bến Ninh Kiều đi tham quan&nbsp;<strong>chợ nổi C&aacute;i Răng</strong>&nbsp;- một chợ nổi lớn của Đồng Bằng s&ocirc;ng Cửu Long.D&ugrave;ng điểm t&acirc;m s&aacute;ng.&nbsp;Xe đưa du kh&aacute;ch viếng&nbsp;<strong>Thiền viện Tr&uacute;c L&acirc;m Phương Nam.</strong>Tham quan&nbsp;<strong>l&agrave;ng du lịch sinh th&aacute;i Mỹ Kh&aacute;nh,&nbsp;</strong>du kh&aacute;ch c&oacute; thể đi dạo vườn tr&aacute;i c&acirc;y, tham quan nh&agrave; cổ Nam Bộ, c&aacute;c dụng cụ đ&aacute;nh bắt v&ugrave;ng Đồng bằng s&ocirc;ng Cửu Long, tham quan khu vực l&agrave;ng nghề truyền thống Nam Bộ: l&agrave;m b&aacute;nh tr&aacute;ng, chưng cất rượu, thủ c&ocirc;ng mỹ nghệ,&nbsp;<strong>thưởng thức tr&aacute;i c&acirc;y v&agrave; nghe đờn ca t&agrave;i tử.</strong>&nbsp;D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.&nbsp; Xe đưa kh&aacute;ch khởi h&agrave;nh về Ch&acirc;u Đốc.Đến Ch&acirc;u Đốc viếng&nbsp;<strong>Miếu B&agrave; Ch&uacute;a Xứ</strong>&nbsp;nổi tiếng hiển linh,&nbsp;<strong>T&acirc;y An cổ tự, Lăng Thoại Ngọc Hầu</strong>&nbsp;- người c&oacute; c&ocirc;ng khai mở đất An Giang.Tiếp tục đi&nbsp;<strong>viếng Ch&ugrave;a Hang</strong>, ng&ocirc;i ch&ugrave;a gắn liền với truyền thuyết 2 con rắn lớn biết nghe kinh Phật. Gh&eacute; tham quan Chợ Ch&acirc;u Đốc - mua sắm c&aacute;c loại đặc sản mắm của miền T&acirc;y. Nghỉ đ&ecirc;m tại Ch&acirc;u Đốc.&nbsp; D&ugrave;ng cơm tối.&nbsp;<strong>Nghỉ đ&ecirc;m tại Ch&acirc;u Đốc.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/Thien-vien-truc-lam-Phuong-Nam-Tay-Nam-Bo-e1507257691472.png\" style=\"height:683px; width:1024px\" /></strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/082417_0803_Nhngiucn1.jpg\" style=\"height:579px; width:1024px\" /></strong></p>\r\n\r\n<p><strong>NG&Agrave;Y 03 : CH&Acirc;U ĐỐC - H&Agrave; TI&Ecirc;N</strong>&nbsp;( Ăn s&aacute;ng, trưa, chiều)<br />\r\nKhởi h&agrave;nh đi tham quan tham quan&nbsp;<strong>Rừng tr&agrave;m Tr&agrave; Sư</strong>, Đo&agrave;n tập trung tại Trạm Kiểm L&acirc;m nghe thuyết minh v&agrave; xem tư liệu về rừng tr&agrave;m, l&ecirc;n&nbsp;<strong>tắc r&aacute;ng len lỏi theo những con rạch xuy&ecirc;n qua Lung Sen v&agrave; khu Rừng Giống&nbsp;</strong>ngắm nh&igrave;n c&aacute;c lo&agrave;i chim như: Le Le Vịt Trời, C&ograve; Ma (C&ograve; Bợ), Tr&iacute;ch Cồ, v.v&nbsp;<strong>L&ecirc;n th&aacute;p quan s&aacute;t cao 23 m</strong>&nbsp;ngắm nh&igrave;n to&agrave;n cảnh Rừng Tr&agrave;m v&agrave; tượng phật Di Lạc, ch&ugrave;a Vạn Linh tr&ecirc;n N&uacute;i Cấm bằng k&iacute;nh viễn vọng (tầm nh&igrave;n xa 25 km v&agrave; độ ph&oacute;ng đại 40 lần).&nbsp;D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng. Khởi h&agrave;nh đi đi H&agrave; Ti&ecirc;n dọc&nbsp;<strong>k&ecirc;nh Vĩnh Tế</strong>, chi&ecirc;m ngưỡng kỳ c&ocirc;ng của c&aacute;c bậc tiền nh&acirc;n thời khẩn hoang v&ugrave;ng đất phương Nam. Viếng&nbsp;<strong>lăng Mạc Cửu</strong>&nbsp;- người c&oacute; c&ocirc;ng khai trấn đất H&agrave; Ti&ecirc;n v&agrave;o thế kỷ 18; tham quan&nbsp;<strong>Thạch Động, b&atilde;i biển Mũi Nai.</strong>&nbsp;&nbsp;D&ugrave;ng cơm tối tại nh&agrave; h&agrave;ng. Nghỉ đ&ecirc;m tại H&agrave; Ti&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/mien%20tay/Chau-doc-Di-lac-nui-cam.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>Ng&agrave;y 04: H&Agrave; TI&Ecirc;N -&nbsp;</strong><strong>TP. HỒ CH&Iacute; MINH&nbsp; - Đ&Agrave; NẴNG &nbsp;&nbsp;</strong>(Ăn s&aacute;ng, trưa)<br />\r\nKhởi h&agrave;nh về lại Hồ Ch&iacute; Minh. D&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng tr&ecirc;n đường.&nbsp;Đến Hồ Ch&iacute; Minh. Xe đưa đo&agrave;n ra s&acirc;n bay T&acirc;n Sơn Nhất. (Qu&yacute; kh&aacute;ch tự t&uacute;c d&ugrave;ng cơm tối tại s&acirc;n bay) .Đ&oacute;n chuyến bay tối khởi h&agrave;nh về lại Đ&agrave; Nẵng -&nbsp;&nbsp;<strong>VN 140- 20:00&nbsp; 21:20</strong>&nbsp;<br />\r\n<strong>***<u>&nbsp;Ghi ch&uacute;</u></strong><u>:</u>&nbsp;Điểm tham quan c&oacute; thể sắp xếp lại cho ph&ugrave; hợp m&agrave; vẫn bảo đảm đầy đủ nội dung của từng chương tr&igrave;nh.</p>', 'Sfxs_780_crop_rung-tram-tra-su.jpg', '6460000', '4780000', '2500000', 0, 1),
(8, 'Du Lịch Đà Nẵng - Hội An', 'Du Lịch Đà Nẵng - Hội An', 'TP. Hồ Chí Minh', 3, 29, 2, '<p><strong>NG&Agrave;Y 01: TP. HỒ CH&Iacute; MINH - Đ&Agrave; NẴNG - HỘI AN &nbsp;(Ăn trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, đ&oacute;n kh&aacute;ch tại văn ph&ograve;ng Saigontourist v&agrave; đ&aacute;p&nbsp;<em><strong>chuyến bay VJ622 l&uacute;c 06:00</strong></em>. Tham quan&nbsp;<em><strong>b&aacute;n đảo Sơn Tr&agrave;</strong></em>, ngắm&nbsp;<em><strong>cảng Ti&ecirc;n Sa</strong></em>, viếng&nbsp;<strong><em>ch&ugrave;a Linh Ứng B&atilde;i Bụt</em></strong>, chi&ecirc;m b&aacute;i&nbsp;<em><strong>tượng Phật Quan Thế &Acirc;m</strong></em>. Buổi chiều, khởi h&agrave;nh v&agrave;o Hội An. Tham quan&nbsp;<em><strong>Ngũ H&agrave;nh Sơn v&agrave; l&agrave;ng nghề đi&ecirc;u khắc đ&aacute; H&ograve;a Hải</strong></em>,&nbsp;<em><strong>Phố cổ Hội An: Ch&ugrave;a Cầu Nhật Bản, ch&ugrave;a &Ocirc;ng, hội qu&aacute;n Ph&uacute;c Kiến, khu phố&nbsp;đ&egrave;n lồng</strong></em>.&nbsp; Trở rqa v&agrave; nghỉ đ&ecirc;m tại Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/dn-%20hoian/Son-Tra-island-Da-Nang-beach_553280794.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: HỘI AN - C&Ugrave; LAO CH&Agrave;M - Đ&Agrave; NẴNG (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nKhởi hành ra bến cảng du lịch Cửa Đại. L&ecirc;n t&agrave;u đi&nbsp;<em><strong>C&ugrave; Lao Ch&agrave;m</strong></em>. Du kh&aacute;ch tham quan Trung t&acirc;m truyền th&ocirc;ng bảo tồn biển, c&aacute;c di t&iacute;ch tr&ecirc;n Đảo:&nbsp;<em><strong>ch&ugrave;a Hải Tạng, &Acirc;u Thuyền</strong></em>&nbsp;- nơi tàu thuy&ecirc;̀n trú &acirc;̉n, tránh bão, khu d&acirc;n cư, chợ qu&ecirc; T&acirc;n Hiệp. Đến&nbsp;<em><strong>B&atilde;i Chồng hoặc B&atilde;i &Ocirc;ng</strong></em>, tắm biển, tắm suối, thư gi&atilde;n nghỉ ngơi, lặn snorkeling ngắm san h&ocirc;. Ăn trưa với c&aacute;c m&oacute;n hải sản đặc sắc. Kh&aacute;ch l&ecirc;n t&agrave;u, rời đảo quay về đất liền.&nbsp;Buổi chiều, trở về Đ&agrave; Nẵng. Buổi tối, tự do dạo phố, trải nghiệm&nbsp;<em><strong>&ldquo;V&ograve;ng quay Mặt trời -&nbsp;Sun Wheel&rdquo;&nbsp;</strong></em>(tự t&uacute;c chi ph&iacute;). Nghỉ đ&ecirc;m tại Đ&agrave; Nẵng.<br />\r\n<strong>Lưu &yacute;:&nbsp;</strong>Trong trường hợp vì lý do thời tiết, t&agrave;u kh&ocirc;ng thể ra C&ugrave; Lao Ch&agrave;m, Quý khách sẽ được Saigontourist bố tr&iacute; tham quan, tắm kho&aacute;ng tại C&ocirc;ng vi&ecirc;n Suối kho&aacute;ng n&oacute;ng N&uacute;i Thần T&agrave;i</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/dn-%20hoian/sun-wheel-_789911887.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/dn-%20hoian/kinh-nghiem-du-lich-an-bang-3.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;03: B&Agrave; N&Agrave; - CẦU V&Agrave;NG - Đ&Agrave; NẴNG - TP. HỒ CH&Iacute; MINH (Ăn s&aacute;ng, chiều)</strong><br />\r\nSau bữa s&aacute;ng, qu&yacute; kh&aacute;ch sẽ được&nbsp;tự do&nbsp;tham quan ho&agrave;n to&agrave;n. Saigontourist xin ph&eacute;p&nbsp;gợi &yacute; 2 chương tr&igrave;nh để&nbsp;qu&yacute; kh&aacute;ch tham khảo:&nbsp;<br />\r\n-&nbsp;<strong>Lựa chọn 1 (Tự t&uacute;c chi ph&iacute; ăn trưa + tham quan&nbsp;):</strong>&nbsp;Tự do để kh&aacute;m ph&aacute; TP.Đ&agrave; Nẵng. Qu&yacute; kh&aacute;ch c&oacute; thể ra s&ocirc;ng H&agrave;n ngắm&nbsp;<strong>cầu Rồng</strong>&nbsp;- một trong những con rồng th&eacute;p lớn nhất thế giới,&nbsp;<strong>cầu Trần Thị L&yacute;</strong>&nbsp;- với kiến tr&uacute;c tựa con thuyền căng buồm vươn ra biển lớn,&nbsp;<strong>tượng C&aacute; ch&eacute;p h&oacute;a rồng</strong>&nbsp;- một biểu tượng mang đậm t&iacute;nh nghệ thuật v&agrave; t&iacute;n ngưỡng d&acirc;n gian,&nbsp;<strong>cầu T&igrave;nh Y&ecirc;u</strong>&nbsp;- c&acirc;y cầu tr&aacute;i tim với những ổ kh&oacute;a dễ thương tr&ecirc;n th&agrave;nh cầu rất th&uacute; vị v&agrave; l&atilde;ng mạn. Hoặc đến&nbsp;<strong>chợ H&agrave;n (hoặc chợ Cồn)</strong>, mua sắm đặc sản địa phương. Qu&yacute; kh&aacute;ch tự t&uacute;c ăn trưa, trải nghiệm phong vị ẩm thực độc đ&aacute;o của Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/dn-%20hoian/Dragon-River-Bridge_1022166718.jpg\" style=\"height:683px; width:1024px\" /><br />\r\n-<strong>&nbsp;Lựa chọn 2 (Tự t&uacute;c chi ph&iacute;&nbsp;tham quan &amp; Ăn trưa buffet Việt tại B&agrave; N&agrave; Hills)</strong>: Xe đưa qu&yacute; kh&aacute;ch đến Ga c&aacute;p treo của KDL B&agrave; N&agrave; Hills. L&ecirc;n B&agrave; N&agrave; bằng&nbsp;<strong>c&aacute;p treo</strong>, ngắm to&agrave;n cảnh n&uacute;i non h&ugrave;ng vỹ v&agrave; tận hưởng kh&iacute; hậu trong l&agrave;nh. Dạo bước tr&ecirc;n&nbsp;<strong>Cầu V&agrave;ng</strong>&nbsp;tọa lạc tại&nbsp;<strong>Vườn Thi&ecirc;n Thai</strong>, với thiết kế độc đ&aacute;o v&agrave; ấn tượng, đầy mềm mại tựa một dải lụa, được n&acirc;ng đỡ bởi đ&ocirc;i b&agrave;n tay khổng lồ loang lổ r&ecirc;u phong giữa cảnh sắc n&ecirc;n thơ tuyệt diệu của B&agrave; N&agrave; &ndash; N&uacute;i Ch&uacute;a. Viếng&nbsp;<strong>ch&ugrave;a Linh Ứng</strong>, kh&aacute;m ph&aacute;&nbsp;<strong>Fantasy Park - khu vui chơi giải tr&iacute; trong nh&agrave; đẳng cấp quốc tế (miễn ph&iacute; 105 tr&ograve; chơi) v&agrave; tr&ograve; chơi Hiệp sĩ Thần thoại (M&aacute;ng trượt)</strong>. Dạo bộ giữa&nbsp;<strong>Khu l&agrave;ng Ph&aacute;p</strong>&nbsp;một kh&ocirc;ng gian kiến tr&uacute;c t&aacute;i hiện sinh động nước Ph&aacute;p thời cận đại đầy l&atilde;ng mạn, sang trọng v&agrave; lịch l&atilde;m. Trải nghiệm&nbsp;<strong>T&agrave;u hỏa leo n&uacute;i, tham quan 9 vườn hoa, Hầm rượu cổ Debay&nbsp;</strong><em>(kh&ocirc;ng bao gồm thưởng thức rượu vang)</em>&nbsp;.Tự t&uacute;c chi ph&iacute; kh&aacute;m ph&aacute;&nbsp;<strong>Khu trưng b&agrave;y tượng s&aacute;p</strong>&nbsp;- duy nhất tại Việt Nam. Xe đưa qu&yacute; kh&aacute;ch về lại TP.Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/dn-%20hoian/The-Golden-Bridge_1153234282.jpg\" style=\"height:683px; width:1024px\" /><br />\r\nNhập đo&agrave;n, xe đưa cả đo&agrave;n ra s&acirc;n bay Đ&agrave; Nẵng, trở về TP. HCM tr&ecirc;n&nbsp;<strong>chuyến bay VJ641 l&uacute;c 16:35</strong>. Kết th&uacute;c chương tr&igrave;nh&nbsp;<em>(Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay về nh&agrave;).</em></p>\r\n\r\n<p><em><strong>Ghi ch&uacute;:</strong><br />\r\nĐiểm tham quan c&oacute; thể sắp xếp lại cho ph&ugrave; hợp m&agrave; vẫn bảo đảm đầy đủ nội dung của từng chương tr&igrave;nh<br />\r\nGiờ bay c&oacute; thể bị thay đổi bởi Vietjet Air</em></p>', '7cW8_Dragon-River-Bridge_1022166718.jpg', '6200000', '4890000', '2600000', 0, 1),
(10, 'Du Lịch Đăk Nông', 'DU LỊCH TẠI DAK NONG - HỒ TÀ ĐÙNG - KHU BẢO TỒN THIÊN NHIÊN NẬM NUNG', 'TP. Hồ Chí Minh', 2, 27, 2, '<p><strong>NG&Agrave;Y&nbsp;1:&nbsp;TP. HỒ CH&Iacute; MINH&nbsp; - DAK N&Ocirc;NG ( Ăn s&aacute;ng, trưa, chiều) &nbsp;</strong><br />\r\nĐ&oacute;n du kh&aacute;ch tại văn ph&ograve;ng Saigontourist (l&uacute;c 06h00 s&aacute;ng tại 01 Nguyễn Ch&iacute; Thanh, F9, Q5 hoặc 06h30 s&aacute;ng tại 102 Nguyễn Huệ, Q1), khởi h&agrave;nh theo quốc lộ 13 đến thị x&atilde; Đồng Xo&agrave;i, theo quốc lộ 14 qua c&aacute;c địa danh nổi tiếng như&nbsp;<strong>S&oacute;c Bom Bo, B&ugrave; Đăng</strong>&nbsp;v&agrave; quang cảnh n&uacute;i rừng h&ugrave;ng vĩ hai b&ecirc;n đường. Đến Thị X&atilde; Gia Nghĩa, Đắk&nbsp;N&ocirc;ng, d&ugrave;ng cơm trưa tại nh&agrave; h&agrave;ng.<br />\r\nXe đưa đo&agrave;n&nbsp; đi&nbsp;<strong>Khu Bảo Tồn Thi&ecirc;n Nhi&ecirc;n T&agrave; Đ&ugrave;ng</strong>,&nbsp;qua con đường đ&egrave;o d&agrave;i, khung cảnh n&uacute;i rừng hoang vu hiện ra với những đồi caf&eacute;, ti&ecirc;u bạt ng&agrave;n phủ xanh n&uacute;i đồi T&acirc;y Nguy&ecirc;n dọc 2 b&ecirc;n đường mang đến cho Qu&yacute; kh&aacute;ch trải nghiệm kh&oacute; qu&ecirc;n.<br />\r\nĐến&nbsp;<strong>Hồ T&agrave; Đ&ugrave;ng</strong>&nbsp;- được v&iacute; von l&agrave;&nbsp;<strong>Vịnh Hạ Long của T&acirc;y Nguy&ecirc;n</strong>, với khung cảnh n&ecirc;n thơ, bởi vẻ đẹp của thi&ecirc;n nhi&ecirc;n với hơn 36 h&ograve;n đảo lớn nhỏ, nhấp nh&ocirc; tr&ecirc;n mặt hồ. Qu&yacute; kh&aacute;ch xuống thuyền dạo một v&ograve;ng quanh hồ, đắm m&igrave;nh trong cảnh đẹp lung linh của mặt nước hồ m&agrave;u ngọc b&iacute;ch v&agrave; những h&ograve;n đảo nhỏ xanh ngắt.<br />\r\nQu&yacute; kh&aacute;ch dừng ch&acirc;n tại&nbsp;<strong>T&agrave; Đ&ugrave;ng top view home stay&nbsp;</strong>hay c&ograve;n gọi l&agrave;&nbsp;<strong>nh&agrave; &ldquo;Ch&uacute; Đ&ocirc;ng&rdquo;</strong>. Được x&acirc;y dựng tr&ecirc;n đồi cao thưởng thức caphe, tra, hay cac m&oacute;n kem m&aacute;t lạnh tại đ&acirc;y&nbsp;<em>(chi ph&iacute; tự t&uacute;c)</em>. V&agrave; kh&ocirc;ng qu&ecirc;n selfie những bức ảnh sống ảo, ngắm nh&igrave;n to&agrave;n cảnh hồ T&agrave; Đ&ugrave;ng với c&aacute;c h&ograve;n đảo nhấp nh&ocirc; tr&ecirc;n mặt hồ từ tr&ecirc;n cao.<br />\r\nXe đưa đo&agrave;n&nbsp;trờ về trung t&acirc;m. Qu&yacute; kh&aacute;ch dũng bữa tối tại nh&agrave; h&agrave;ng. Tự do đi dạo kh&aacute;m ph&aacute; TX Gia Nghĩa về đ&ecirc;m. Nghỉ đ&ecirc;m tại Gia Nghĩa.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/DakNong_TaDung_1079286740.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;2: KHU BẢO TỒN THI&Ecirc;N NIEN NẬM NUNG&nbsp;- TP. HCM ( Ăn s&aacute;ng, trưa) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><br />\r\nSau bữa s&aacute;ng qu&yacute; kh&aacute;ch trả ph&ograve;ng. Xe đưa Qu&yacute; kh&aacute;ch theo quốc lộ 14 xuy&ecirc;n qua những c&aacute;nh rừng v&agrave; những rẫy c&acirc;y c&ocirc;ng nghiệp xanh ngắt tr&ecirc;n nền đất đỏ bazan đặc trưng của T&acirc;y Nguy&ecirc;n. Đ&acirc;y cũng l&agrave; con đường dẫn tới Khu Bảo tồn thi&ecirc;n nhi&ecirc;n N&acirc;m Nung, tại đ&acirc;y du kh&aacute;ch sẽ viếng<strong><em>&nbsp;Thiền Viện Tr&uacute;c L&acirc;m Đạo Nguy&ecirc;n</em></strong>&nbsp;- nằm trong khu rừng th&ocirc;ng thuộc v&ugrave;ng l&otilde;i của khu bảo tồn thi&ecirc;n nhi&ecirc;n Nậm Nung, dựa lưng v&agrave;o d&atilde;y N&acirc;m Nung cao 1500m n&ecirc;n kh&iacute; hậu quanh năm m&aacute;t mẻ với kh&ocirc;ng kh&iacute; tỉnh mịch v&agrave; trầm lắng.Tiếp tục đến với<strong>&nbsp;<em>Th&aacute;c Lưu Ly</em></strong>&nbsp;&ndash; dưới ch&acirc;n d&atilde;y n&uacute;i N&acirc;m Nung h&ugrave;ng vĩ, l&agrave; một trong những th&aacute;c đẹp nhất Đắk&nbsp;N&ocirc;ng. Hiện tại, th&aacute;c vẫn c&ograve;n hoang sơ quan cảnh xung quanh vẫn chưa được quy hoạch đầu tư. Để xuống ch&acirc;n th&aacute;c, qu&yacute; kh&aacute;ch phải đi bộ&nbsp; qua lối m&ograve;n v&agrave; cả trăm bậc thang đ&atilde; được x&acirc;y dựng ki&ecirc;n cố.&nbsp;<br />\r\nTrở về thị x&atilde;&nbsp;Gia Nghĩa d&ugrave;ng cơm trưa sau đo rời Đắk&nbsp;N&ocirc;ng,&nbsp;đo&agrave;n khởi h&agrave;nh về TP.Hồ Ch&iacute; Minh.&nbsp;Kết th&uacute;c chương tr&igrave;nh tour.</p>\r\n\r\n<p><em><strong>Ghi ch&uacute;:&nbsp;</strong>Điểm tham quan c&oacute; thể sắp xếp lại cho ph&ugrave; hợp m&agrave; vẫn bảo đảm đầy đủ nội dung của từng chương tr&igrave;nh</em>.</p>', 'VQac_DraySapWaterfallsVietnam.jpg', '2590000', '1550000', '700000', 0, 1),
(11, 'DU LỊCH TẠI HUẾ', 'DU LỊCH TẠI HUẾ - ĐÀ NẴNG- HỘI AN - BÀ NÀ - CẦU VÀNG', 'TP. Hồ Chí Minh', 4, 3, 2, '<p><strong>NG&Agrave;Y&nbsp;01: TP. HỒ CH&Iacute; MINH - HUẾ (Ăn trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch tập trung tại cổng D4 - Ga đi trong nước, s&acirc;n bay T&acirc;n Sơn Nhất. Khởi h&agrave;nh ra Huế tr&ecirc;n&nbsp;<em><strong>chuyến bay VJ302&nbsp;l&uacute;c 05:55</strong>.</em>&nbsp;Đến Huế, tham quan&nbsp;<strong>Di sản Văn h&oacute;a Thế giới Kinh Th&agrave;nh Huế&nbsp;</strong>- Ho&agrave;ng cung của 13 vị Vua triều Nguyễn với c&aacute;c c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu:&nbsp;<strong>Ngọ M&ocirc;n, điện Th&aacute;i Ho&agrave;, Tử Cấm Th&agrave;nh, Thế Miếu, Hiển L&acirc;m C&aacute;c, Cửu Đỉnh, Bảo tàng C&ocirc;̉ v&acirc;̣t Cung đình Hu&ecirc;́</strong>. Nhận ph&ograve;ng. Buổi chiều, đo&agrave;n vãng cảnh&nbsp;<strong>ch&ugrave;a Thi&ecirc;n Mụ</strong>&nbsp;- ng&ocirc;i ch&ugrave;a cổ v&agrave; nổi tiếng nhất ở đất Cố đ&ocirc;. Đo&agrave;n tiếp tục đến viếng<strong>&nbsp;lăng Minh Mạng&nbsp;</strong>- vị vua c&oacute; nhiều đ&oacute;ng g&oacute;p v&agrave;o việc ổn định v&agrave; x&acirc;y dựng vương triều nh&agrave; Nguyễn, củng cố nền thống nhất quốc gia. Buổi tối qu&yacute; kh&aacute;ch tự do kh&aacute;m ph&aacute; cố đ&ocirc; về đ&ecirc;m. Nghỉ đ&ecirc;m tại Huế.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/Imperial-Enclosure_780751699.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: HUẾ - Đ&Agrave; NẴNG&nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch viếng&nbsp;<strong>lăng vua Khải Định</strong>&nbsp;- chi&ecirc;m ngưỡng m&ocirc;̣t c&ocirc;ng trình k&ecirc;́t hợp hài hòa giữa ki&ecirc;́n trúc truy&ecirc;̀n th&ocirc;́ng Hu&ecirc;́ và hi&ecirc;̣n đại của T&acirc;y phương. Trả ph&ograve;ng. Khởi hành v&agrave;o Đ&agrave; Nẵng. Tr&ecirc;n đường, ngắm&nbsp;<strong>bi&ecirc;̉n Lăng C&ocirc;</strong>, di chuyển qua&nbsp;<strong>đường h&acirc;̀m Hải V&acirc;n</strong>&nbsp;- h&acirc;̀m đường b&ocirc;̣ hi&ecirc;̣n đại nh&acirc;́t Đ&ocirc;ng Nam Á. Đến Đ&agrave; Nẵng, đo&agrave;n nhận ph&ograve;ng. Buổi chiều, xe đưa qu&yacute; kh&aacute;ch đi&nbsp;<strong><em>tắm biển Mỹ Kh&ecirc;</em></strong>&nbsp;<em>(&aacute;p dụng cho c&aacute;c tour khởi h&agrave;nh từ th&aacute;ng 4- 7 h&agrave;ng&nbsp;năm)</em>-&nbsp;một trong những b&atilde;i biển quyến rũ nhất h&agrave;nh tinh (<em>tự t&uacute;c chi ph&iacute; tắm biển: thu&ecirc; d&ugrave; ghế, tắm nướt ngọt).&nbsp;</em>Tối tự do dạo phố, trải nghiệm&nbsp;<strong><em>&ldquo;V&ograve;ng quay Mặt trời &ndash; Sun Wheel&rdquo;</em></strong>&nbsp;thưởng ngoạn cảnh đẹp Đ&agrave; Nẵng với g&oacute;c nh&igrave;n mới từ độ cao 115m&nbsp;<em>(tự t&uacute;c chi ph&iacute;)</em>. Nghỉ đ&ecirc;m tại Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/Grand-stairs-Imperial-Khai-Dinh-Tomb-Hue-Vietnam_467289413.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;03: Đ&Agrave; NẴNG - HỘI AN - Đ&Agrave; NẴNG (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, quý khách ngoạn cảnh một v&ograve;ng&nbsp;<strong>b&aacute;n đảo Sơn Tr&agrave;</strong>, ngắm cảnh&nbsp;<strong>cảng Ti&ecirc;n Sa</strong>, viếng&nbsp;<strong>ch&ugrave;a Linh Ứng B&atilde;i Bụt&nbsp;</strong>- ng&ocirc;i ch&ugrave;a lớn nhất ở th&agrave;nh phố Đ&agrave; Nẵng, chi&ecirc;m b&aacute;i&nbsp;<strong>tượng Phật Quan Thế &Acirc;m cao nhất Việt Nam</strong>. Tham quan&nbsp;<strong>thắng cảnh Ngũ H&agrave;nh Sơn &amp; l&agrave;ng nghề đi&ecirc;u khắc đ&aacute; H&ograve;a Hải.</strong>&nbsp;Tiếp tục đến với&nbsp;<strong>Hội An</strong>, dạo bộ tham quan&nbsp;<strong>Phố cổ&nbsp;</strong>với c&aacute;c c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu:&nbsp;<strong>Ch&ugrave;a Cầu Nhật Bản, ch&ugrave;a &Ocirc;ng, hội qu&aacute;n Ph&uacute;c Kiến, khu phố&nbsp;đ&egrave;n lồng</strong>. Trở về Đ&agrave; Nẵng. Buổi tối qu&yacute; kh&aacute;ch tự do. Nghỉ đ&ecirc;m tại Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/hoian-old-town.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y 04: Đ&Agrave; NẴNG - B&Agrave; N&Agrave; - CẦU V&Agrave;NG - Đ&Agrave; NẴNG- TP. HỒ CH&Iacute; MINH (Ăn s&aacute;ng, chiều)</strong><br />\r\nSau bữa s&aacute;ng, qu&yacute; kh&aacute;ch sẽ được&nbsp;tự do&nbsp;tham quan ho&agrave;n to&agrave;n. Saigontourist xin ph&eacute;p&nbsp;gợi &yacute; 2 chương tr&igrave;nh để&nbsp;qu&yacute; kh&aacute;ch tham khảo:&nbsp;<br />\r\n-&nbsp;<strong>Lựa chọn 1 (Tự t&uacute;c tham quan +&nbsp;ăn trưa- chi ph&iacute; chưa bao gồm trong gi&aacute; tour )</strong>&nbsp;Tự do để kh&aacute;m ph&aacute; TP.Đ&agrave; Nẵng. Qu&yacute; kh&aacute;ch c&oacute; thể ra s&ocirc;ng H&agrave;n ngắm cầu Rồng - một trong những con rồng th&eacute;p lớn nhất thế giới,&nbsp;<strong>cầu Trần Thị L&yacute;</strong>&nbsp;- với kiến tr&uacute;c tựa con thuyền căng buồm vươn ra biển lớn,<strong>&nbsp;tượng C&aacute; ch&eacute;p h&oacute;a rồng</strong>&nbsp;- một biểu tượng mang đậm t&iacute;nh nghệ thuật v&agrave; t&iacute;n ngưỡng d&acirc;n gian,&nbsp;<strong>cầu T&igrave;nh Y&ecirc;u</strong>&nbsp;- c&acirc;y cầu tr&aacute;i tim với những ổ kh&oacute;a dễ thương tr&ecirc;n th&agrave;nh cầu rất th&uacute; vị v&agrave; l&atilde;ng mạn. Hoặc đến&nbsp;<strong>chợ H&agrave;n (hoặc chợ Cồn),</strong>&nbsp;mua sắm đặc sản địa phương. Qu&yacute; kh&aacute;ch tự t&uacute;c ăn trưa, trải nghiệm phong vị ẩm thực độc đ&aacute;o của Đ&agrave; Nẵng.<br />\r\n-&nbsp;<strong>Lựa chọn 2 (Tự t&uacute;c tham quan &amp; Ăn trưa buffet Việt tại B&agrave; N&agrave; Hills- chi ph&iacute; chưa bao gồm trong gi&aacute; tour)</strong>: Xe đưa qu&yacute; kh&aacute;ch đến Ga c&aacute;p treo của KDL B&agrave; N&agrave; Hills. L&ecirc;n B&agrave; N&agrave; bằng&nbsp;<strong>c&aacute;p treo</strong>, ngắm to&agrave;n cảnh n&uacute;i non h&ugrave;ng vỹ v&agrave; tận hưởng kh&iacute; hậu trong l&agrave;nh. Dạo bước tr&ecirc;n&nbsp;<strong>Cầu V&agrave;ng tọa lạc tại Vườn Thi&ecirc;n Thai</strong>, với thiết kế độc đ&aacute;o v&agrave; ấn tượng, đầy mềm mại tựa một dải lụa, được n&acirc;ng đỡ bởi đ&ocirc;i b&agrave;n tay khổng lồ loang lổ r&ecirc;u phong giữa cảnh sắc n&ecirc;n thơ tuyệt diệu của B&agrave; N&agrave; &ndash; N&uacute;i Ch&uacute;a. Viếng&nbsp;<strong>ch&ugrave;a Linh Ứng</strong>, kh&aacute;m ph&aacute;&nbsp;<strong>Fantasy Park - khu vui chơi giải tr&iacute; trong nh&agrave; đẳng cấp quốc tế (miễn ph&iacute; 105 tr&ograve; chơi) v&agrave; tr&ograve; chơi Hiệp sĩ Thần thoại (M&aacute;ng trượt)</strong>. Dạo bộ giữa&nbsp;<strong>Khu l&agrave;ng Ph&aacute;p</strong>&nbsp;một kh&ocirc;ng gian kiến tr&uacute;c t&aacute;i hiện sinh động nước Ph&aacute;p thời cận đại đầy l&atilde;ng mạn, sang trọng v&agrave; lịch l&atilde;m. Trải nghiệm&nbsp;<strong>T&agrave;u hỏa leo n&uacute;i,</strong>&nbsp;tham quan&nbsp;<strong>9 vườn hoa, Hầm rượu cổ Debay</strong><em>&nbsp;(kh&ocirc;ng bao gồm thưởng thức rượu vang)&nbsp;</em>.Tự t&uacute;c chi ph&iacute; kh&aacute;m ph&aacute;&nbsp;<strong>Khu trưng b&agrave;y tượng s&aacute;p&nbsp;</strong>- duy nhất tại Việt Nam. Xe đưa qu&yacute; kh&aacute;ch về lại TP.Đ&agrave; Nẵng.<br />\r\nNhập đo&agrave;n, xe đưa cả đo&agrave;n ra s&acirc;n bay Đ&agrave; Nẵng, trở về TP. HCM tr&ecirc;n&nbsp;<em><strong>chuyến bay VJ631&nbsp;l&uacute;c 20:35</strong></em>. Kết th&uacute;c chương tr&igrave;nh&nbsp;<em>(Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay về lại nh&agrave;)</em>.</p>', 'Mleo_6bc0f4e3d9a230fc69b3.jpg', '7300000', '6100000', '3200000', 1, 1),
(12, 'DU LỊCH PHAN THIẾT - MŨI NÉ', 'DU LỊCH PHAN THIẾT - MŨI NÉ', 'TP. Hồ Chí Minh', 2, 28, 2, '<p><strong>NG&Agrave;Y&nbsp;01: TP. HCM - PHAN THIẾT (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nĐ&oacute;n qu&yacute; kh&aacute;ch&nbsp;tại văn ph&ograve;ng Saigontourist (l&uacute;c 06h00 s&aacute;ng tại 01 Nguyễn Ch&iacute; Thanh, F9, Q5 hoặc 06h30 s&aacute;ng tại 102 Nguyễn Huệ, Q1), khởi h&agrave;nh đi B&igrave;nh Thuận. Đến Phan Thiết, v&agrave;o khu resort H&agrave;m Tiến - Mũi N&eacute; nhận ph&ograve;ng. Buổi chiều, qu&yacute; kh&aacute;ch đi v&agrave;o H&ograve;n Rơm tham quan&nbsp;<strong>đồi c&aacute;t v&agrave;ng</strong>&nbsp;dưới t&aacute;c động của gi&oacute; biển đ&atilde; tạo n&ecirc;n những h&igrave;nh dạng rất tuyệt vời. Nghỉ đ&ecirc;m tại Mũi N&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/tfd_20160315_%C4%90%E1%BB%93i%20c%C3%A1t%20bay.jpg\" style=\"height:575px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: THAM QUAN PHAN THIẾT (Ăn s&aacute;ng, chiều / Ăn trưa tự t&uacute;c)</strong><br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch tự do nghỉ dưỡng tại resort. Tự t&uacute;c ăn trưa. Buổi chiều, xe đưa qu&yacute; kh&aacute;ch đến tham quan&nbsp;<strong>kh&ocirc;ng gian trưng b&agrave;y nghệ thuật &ldquo;L&agrave;ng ch&agrave;i xưa&rdquo;</strong>. To&agrave;n bộ khu trưng b&agrave;y c&oacute; diện t&iacute;ch 1.600m&sup2;. Đ&acirc;y l&agrave; kh&ocirc;ng gian trưng b&agrave;y nghệ thuật v&agrave; l&agrave; bảo t&agrave;ng thu nhỏ, t&aacute;i hiện lại một phần l&agrave;ng ch&agrave;i xưa của Phan Thiết - Mũi N&eacute; c&aacute;ch đ&acirc;y hơn 300 năm. Du kh&aacute;ch đến đ&acirc;y sẽ được tham quan l&agrave;ng ch&agrave;i dưới rặng dừa; phố cổ ven s&ocirc;ng C&agrave; Ty; nh&agrave; ở v&agrave; nơi sản xuất nước mắm của h&agrave;m hộ Phan Thiết; con đường Phan Thiết - Mũi N&eacute; xưa; đắm m&igrave;nh v&agrave;o biển Mũi N&eacute; 3D v&agrave; mua sắm trong kh&ocirc;ng gian chợ qu&ecirc; l&agrave;ng xưa&hellip; tận mắt được chứng kiến một l&agrave;ng ch&agrave;i xưa của xứ biển Phan Thiết được t&aacute;i hiện một c&aacute;ch c&ocirc;ng phu.<br />\r\nNghỉ đ&ecirc;m tại Mũi N&eacute;.</p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;03: PHAN THIẾT- TP. HCM (Ăn s&aacute;ng, trưa)</strong><br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch tư do nghỉ dưỡng, tắm biển đến giờ trả ph&ograve;ng. Khởi h&agrave;nh về Tp. HCM. Tr&ecirc;n đường về gh&eacute; mua sắm đặc sản Phan Thiết. Kết th&uacute;c chương tr&igrave;nh.</p>', 'AouI_Mui-Ne-beach_1085095151.jpg', '2500000', '1500000', '700000', 1, 1);
INSERT INTO `tour` (`MaTour`, `TenTour`, `TieuDe`, `DiemKhoiHanh`, `SoNgay`, `MaNV`, `MaKV`, `MoTa`, `HinhAnh`, `Gia`, `GiaTE`, `GiaEB`, `NoiBat`, `TinhTrang`) VALUES
(13, 'DU LỊCH ĐÀ NẴNG - QUẢNG NGÃI - LÝ SƠN - LÀNG BÍCH HỌA TAM THANH - KDL BÀ NÀ', 'DU LỊCH ĐÀ NẴNG - QUẢNG NGÃI - LÝ SƠN - LÀNG BÍCH HỌA TAM THANH - KDL BÀ NÀ', 'TP. Hồ Chí Minh', 4, 29, 2, '<p><strong>NG&Agrave;Y&nbsp;01: TP. HCM - Đ&Agrave; NẴNG - HỘI AN - L&Agrave;NG TAM THANH - QUẢNG NG&Atilde;I&nbsp;&nbsp;(Ăn trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, tập trung tại Cổng D3, Ga đi trong nước, s&acirc;n bay T&acirc;n Sơn Nhất ra Đ&agrave; Nẵng tr&ecirc;n chuyến bay&nbsp;<em><strong>VJ626&nbsp;l&uacute;c 05:30</strong></em>. Đến Đ&agrave; Nẵng, di chuyển v&agrave;o Hội An, dạo bộ tham quan&nbsp;<em><strong>Phố cổ: Ch&ugrave;a Cầu Nhật Bản, ch&ugrave;a &Ocirc;ng, hội qu&aacute;n Ph&uacute;c Kiến</strong></em>. Khởi h&agrave;nh đi Quảng Ng&atilde;i. Dừng tham quan&nbsp;<strong><em>L&agrave;ng b&iacute;ch họa Tam Thanh</em></strong>. Dưới b&agrave;n tay t&agrave;i hoa của đội ngũ t&igrave;nh nguyện vi&ecirc;n H&agrave;n Quốc, những bức tường cũ kĩ của hơn 100 ng&ocirc;i nh&agrave; trong l&agrave;ng ch&agrave;i đ&atilde; trở th&agrave;nh c&aacute;c t&aacute;c phẩm hội họa đặc sắc, khắc họa phong cảnh thi&ecirc;n nhi&ecirc;n - biển cả, đời sống sinh hoạt, văn h&oacute;a của người d&acirc;n l&agrave;ng ch&agrave;i, c&ugrave;ng nhiều bức ch&acirc;n dung sống động như thật v&agrave; c&aacute;c nh&acirc;n vật hoạt h&igrave;nh vui nhộn. Viếng&nbsp;<strong><em>tượng đ&agrave;i Mẹ Việt Nam anh h&ugrave;ng</em></strong>. Nhận ph&ograve;ng v&agrave; nghỉ đ&ecirc;m tại Quảng Ng&atilde;i.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/1/japanese-bridge-Hoi-An-Vietnam_552412480.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: QUẢNG NG&Atilde;I - L&Yacute; SƠN &nbsp;(Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nTrả ph&ograve;ng kh&aacute;ch sạn. Khởi h&agrave;nh đi&nbsp;<strong>đảo L&yacute; Sơn</strong>. Đến Đảo L&yacute; Sơn, tham quan khu vực ph&iacute;a T&acirc;y đảo. Viếng<strong><em>&nbsp;&Acirc;m Linh Tự</em></strong>,&nbsp;<em><strong>Ch&ugrave;a Đục</strong></em>, chi&ecirc;m b&aacute;i&nbsp;<em><strong>Quan &Acirc;m Đ&agrave;i</strong>,</em>&nbsp;ngắm nh&igrave;n&nbsp;<em><strong>Cổng T&ograve; V&ograve;, đỉnh n&uacute;i Giếng Tiền</strong></em>, t&igrave;m hiểu truyền thuyết về B&agrave;n Cờ Ti&ecirc;n, ngắm nh&igrave;n to&agrave;n bộ Đảo B&eacute; từ xa. Buổi chiều, đo&agrave;n kh&aacute;m ph&aacute; ph&iacute;a Nam đảo. Tham quan&nbsp;<em><strong>nh&agrave; trưng b&agrave;y Hải Đội Ho&agrave;ng Sa</strong></em>,&nbsp;<strong><em>đ&igrave;nh l&agrave;ng An Hải,</em></strong>&nbsp;t&igrave;m hiểu qui tr&igrave;nh nu&ocirc;i trồng h&agrave;nh hoặc tỏi (t&ugrave;y m&ugrave;a) Chinh phục&nbsp;<strong><em>n&uacute;i Thới Lới: hồ nước ngọt</em></strong>&nbsp;(miệng n&uacute;i lửa), ngắm to&agrave;n cảnh ph&iacute;a Nam huyện đảo L&yacute; Sơn, vũng neo đậu t&agrave;u thuyền,&nbsp;<em><strong>ngọn Hải Đăng, hang C&acirc;u</strong></em>. Viếng<em><strong>&nbsp;Ch&ugrave;a Hang&nbsp;</strong></em>- một trong những thắng cảnh đẹp nhất Đảo L&yacute; Sơn với truyền thuyết &ldquo;Đường l&ecirc;n trời - Đường xuống &acirc;m phủ&rdquo;. Nghỉ đ&ecirc;m tr&ecirc;n đảo L&yacute; Sơn.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/1/ft-langbichhoa-2.jpg\" style=\"height:614px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;03: L&Yacute; SƠN - ĐẢO B&Eacute; - QU&Atilde;NG NG&Atilde;I - Đ&Agrave; NẴNG (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBu&ocirc;̉i sáng, tham quan đảo&nbsp;<strong><em>An B&igrave;nh</em></strong>&nbsp;(đảo B&eacute; L&yacute; Sơn) bằng canoe. Ngồi xe điện dạo một v&ograve;ng&nbsp;<strong><em>đảo B&eacute;</em></strong>, ngắm nh&igrave;n v&ograve;m đ&aacute; với mu&ocirc;n h&igrave;nh vạn trạng, quan s&aacute;t b&ecirc;n ngo&agrave;i Nh&agrave; m&aacute;y lọc nước biển th&agrave;nh nước ngọt. Tắm biển<strong><em>&nbsp;b&atilde;i Hang</em></strong>&nbsp;sau, lặn ngắm san h&ocirc; (tự t&uacute;c chi ph&iacute;). Trở về đảo L&yacute; Sơn, l&ecirc;n t&agrave;u khởi h&agrave;nh về Quảng Ng&atilde;i. Tham quan&nbsp;<strong><em>khu chứng t&iacute;ch Sơn Mỹ</em></strong>. Sau đ&oacute; di chuyển về Đ&agrave; Nẵng. Buổi tối, tự do dạo phố, ngắm nh&igrave;n vẻ đẹp lung linh từ những biểu tượng mới của TP. Đ&agrave; Nẵng:&nbsp;<em><strong>Cầu Rồng, Cầu Trần Thị L&yacute;</strong></em>...Nghỉ đ&ecirc;m tại Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/1/l%C3%BD-s%C6%A1n-1-1024x626.jpg\" style=\"height:626px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;04: Đ&Agrave; NẴNG - B&Agrave; N&Agrave; - TP. HỒ CH&Iacute; MINH (Ăn s&aacute;ng)</strong><br />\r\nSau bữa s&aacute;ng, qu&yacute; kh&aacute;ch sẽ được&nbsp;tự do&nbsp;tham quan ho&agrave;n to&agrave;n. Saigontourist xin ph&eacute;p&nbsp;gợi &yacute; 2 chương tr&igrave;nh để&nbsp;qu&yacute; kh&aacute;ch tham khảo:&nbsp;<br />\r\n-&nbsp;<strong>Lựa chọn 1 (Tự t&uacute;c chi ph&iacute; ăn trưa + tham quan&nbsp;):</strong>&nbsp;Tự do để kh&aacute;m ph&aacute; TP.Đ&agrave; Nẵng. Qu&yacute; kh&aacute;ch c&oacute; thể ra s&ocirc;ng H&agrave;n ngắm&nbsp;<strong>cầu Rồng</strong>&nbsp;- một trong những con rồng th&eacute;p lớn nhất thế giới,&nbsp;<strong>cầu Trần Thị L&yacute;</strong>&nbsp;- với kiến tr&uacute;c tựa con thuyền căng buồm vươn ra biển lớn,&nbsp;<strong>tượng C&aacute; ch&eacute;p h&oacute;a rồng</strong>&nbsp;- một biểu tượng mang đậm t&iacute;nh nghệ thuật v&agrave; t&iacute;n ngưỡng d&acirc;n gian,&nbsp;<strong>cầu T&igrave;nh Y&ecirc;u</strong>&nbsp;- c&acirc;y cầu tr&aacute;i tim với những ổ kh&oacute;a dễ thương tr&ecirc;n th&agrave;nh cầu rất th&uacute; vị v&agrave; l&atilde;ng mạn. Hoặc đến&nbsp;<strong>chợ H&agrave;n (hoặc chợ Cồn)</strong>, mua sắm đặc sản địa phương. Qu&yacute; kh&aacute;ch tự t&uacute;c ăn trưa, trải nghiệm phong vị ẩm thực độc đ&aacute;o của Đ&agrave; Nẵng.<br />\r\n-<strong>&nbsp;Lựa chọn 2 (Tự t&uacute;c chi ph&iacute;&nbsp;tham quan &amp; Ăn trưa buffet Việt tại B&agrave; N&agrave; Hills)</strong>: Xe đưa qu&yacute; kh&aacute;ch đến Ga c&aacute;p treo của KDL B&agrave; N&agrave; Hills. L&ecirc;n B&agrave; N&agrave; bằng&nbsp;<strong>c&aacute;p treo</strong>, ngắm to&agrave;n cảnh n&uacute;i non h&ugrave;ng vỹ v&agrave; tận hưởng kh&iacute; hậu trong l&agrave;nh. Dạo bước tr&ecirc;n&nbsp;<strong>Cầu V&agrave;ng</strong>&nbsp;tọa lạc tại&nbsp;<strong>Vườn Thi&ecirc;n Thai</strong>, với thiết kế độc đ&aacute;o v&agrave; ấn tượng, đầy mềm mại tựa một dải lụa, được n&acirc;ng đỡ bởi đ&ocirc;i b&agrave;n tay khổng lồ loang lổ r&ecirc;u phong giữa cảnh sắc n&ecirc;n thơ tuyệt diệu của B&agrave; N&agrave; &ndash; N&uacute;i Ch&uacute;a. Viếng&nbsp;<strong>ch&ugrave;a Linh Ứng</strong>, kh&aacute;m ph&aacute;&nbsp;<strong>Fantasy Park - khu vui chơi giải tr&iacute; trong nh&agrave; đẳng cấp quốc tế (miễn ph&iacute; 105 tr&ograve; chơi) v&agrave; tr&ograve; chơi Hiệp sĩ Thần thoại (M&aacute;ng trượt)</strong>. Dạo bộ giữa&nbsp;<strong>Khu l&agrave;ng Ph&aacute;p</strong>&nbsp;một kh&ocirc;ng gian kiến tr&uacute;c t&aacute;i hiện sinh động nước Ph&aacute;p thời cận đại đầy l&atilde;ng mạn, sang trọng v&agrave; lịch l&atilde;m. Trải nghiệm&nbsp;<strong>T&agrave;u hỏa leo n&uacute;i, tham quan 9 vườn hoa, Hầm rượu cổ Debay&nbsp;</strong><em>(kh&ocirc;ng bao gồm thưởng thức rượu vang)</em>&nbsp;.Tự t&uacute;c chi ph&iacute; kh&aacute;m ph&aacute;&nbsp;<strong>Khu trưng b&agrave;y tượng s&aacute;p</strong>&nbsp;- duy nhất tại Việt Nam. Xe đưa qu&yacute; kh&aacute;ch về lại TP.Đ&agrave; Nẵng.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/1/150513883879137-1.jpg\" style=\"height:769px; width:1024px\" /></p>', 'hyAY_japanese-bridge-Hoi-An-Vietnam_552412480.jpg', '7500000', '5300000', '3000000', 0, 1),
(14, 'DU LỊCH TẠI PHÚ QUỐC', 'DU LỊCH TẠI PHÚ QUỐC - CÂU CÁ - NGẮM SAN HÔ', 'TP. Hồ Chí Minh', 3, 28, 3, '<p><strong>NG&Agrave;Y&nbsp;01: TP. HỒ CH&Iacute; MINH - PH&Uacute; QUỐC (Ăn s&aacute;ng, trưa)</strong><br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch tập trung tại Cổng D4, Ga đi trong nước, s&acirc;n bay T&acirc;n Sơn Nhất. Khởi h&agrave;nh đi Ph&uacute; Quốc tr&ecirc;n&nbsp;<em><strong>chuyến bay VJ321 l&uacute;c 06:00</strong></em>. Đến Ph&uacute; Quốc, đo&agrave;n khởi h&agrave;nh đi ph&iacute;a Đ&ocirc;ng đảo, tham quan điểm&nbsp;<strong>trại ch&oacute;,&nbsp;vườn ti&ecirc;u, l&ograve; chế biến rượu Sim rừng Ph&uacute; Quốc, cơ sở nước mắm Ph&uacute; Quốc</strong>. Nhận ph&ograve;ng. Buổi chiều tối tự do dạo chợ đ&ecirc;m&nbsp;<strong>Dinh Cậu</strong>, ăn chiều tự t&uacute;c. Nghỉ đ&ecirc;m tại Ph&uacute; Quốc.<br />\r\n<strong>Lựa chọn (tự t&uacute;c chi ph&iacute; tham quan &amp; di chuyển):</strong>&nbsp;<br />\r\n- Tham quan&nbsp;<strong>Khu vui chơi giải tr&iacute; Vinpearl Land&nbsp;Ph&uacute; Quốc</strong>&nbsp;với c&aacute;c tr&ograve; chơi trong nh&agrave;, tr&ograve; chơi ngo&agrave;i trời Đĩa quay si&ecirc;u tốc, Cối xay gi&oacute;, Đĩa bay&hellip;, L&acirc;u đ&agrave;i Cổ t&iacute;ch; Khu c&ocirc;ng vi&ecirc;n nước&nbsp;với c&aacute;c tr&ograve; chơi mạo hiểm: Boomerang khổng lồ, Đường trượt si&ecirc;u l&ograve;ng chảo&hellip;;; Khu Thủy Cung&nbsp;với h&agrave;ng trăm lo&agrave;i sinh vật biển qu&yacute; hiếmThưởng thức chương tr&igrave;nh biểu diễn nhạc nước, biểu diễn c&aacute; heo, n&agrave;ng ti&ecirc;n c&aacute;,&hellip;<br />\r\n- Kh&aacute;m ph&aacute;<strong>&nbsp;Khu Vinpearl Safari</strong>: kh&aacute;m ph&aacute; Vườn Th&uacute; Hoang D&atilde; đầu ti&ecirc;n tại Việt Nam với quy m&ocirc; 180ha, c&ugrave;ng hơn 130 lo&agrave;i động vật qu&yacute; hiếm v&agrave; c&aacute;c chương tr&igrave;nh Biểu diễn động vật, Chụp ảnh với động vật, Kh&aacute;m ph&aacute; v&agrave; trải nghiệm Vườn th&uacute; mở trong rừng tự nhi&ecirc;n, gần gũi v&agrave; th&acirc;n thiện với con người.<br />\r\n-&nbsp;<strong>Trải nghiệm c&aacute;p treo x&aacute;c lập kỷ lục thế giới mới &ldquo;C&aacute;p treo 3 d&acirc;y vượt biển d&agrave;i nhất thế giới tại H&ograve;n Thơm</strong>&nbsp;với tổng chiều d&agrave;i 7.899.9m,thời gian di chuyển 15 ph&uacute;t . C&aacute;p treo sẽ đưa du kh&aacute;ch đến với một h&agrave;nh tr&igrave;nh du ngoạn kỳ th&uacute; tr&ecirc;n cao, để thu v&agrave;o tầm mắt 360 độ vẻ đẹp tựa thi&ecirc;n đường của biển, đảo, rừng xanh v&agrave; những b&atilde;i tắm trong cụm đảo An Thới, Nam Ph&uacute; Quốc. Bước xuống c&aacute;p treo, du kh&aacute;ch sẽ được thỏa sức tận hưởng vẻ đẹp của H&ograve;n Thơm với b&atilde;i tắm c&aacute;t trắng mịn, nước trong veo m&agrave;u ngọc b&iacute;ch b&ecirc;n rừng gi&agrave; hoang sơ v&agrave; những b&atilde;i đ&aacute; được tự nhi&ecirc;n sắp xếp ngoạn mục. hứa hẹn đem đến một kỳ nghỉ kh&oacute; qu&ecirc;n.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/2/VINPEARL-LAND-PHU-QUOC-_LAZY-RIVER.jpg\" style=\"height:598px; width:900px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: PH&Uacute; QUỐC - C&Acirc;U C&Aacute; - NGẮM SAN H&Ocirc; (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nSau bữa sáng, đ&ecirc;́n tham quan&nbsp;<strong>trung t&acirc;m nu&ocirc;i cấy ngọc trai Ph&uacute; Quốc</strong>.&nbsp;<strong>L&ecirc;n thuyền du ngoạn tr&ecirc;n biển</strong>, thử t&agrave;i c&acirc;u c&aacute;, trải nghiệm cuộc sống của ngư d&acirc;n, bơi lội giữa biển v&agrave; ngắm san h&ocirc; với những sắc m&agrave;u tuyệt đẹp.&nbsp;<strong>Tắm biển B&atilde;i Sao (hoặc b&atilde;i &Ocirc;ng Lang t&ugrave;y điều kiện thời tiết)</strong>&nbsp;- một trong những b&atilde;i biển đẹp nh&acirc;́t tại Ph&uacute; Quốc. Buổi chiều tham quan di tich&nbsp;<strong>nh&agrave; t&ugrave; Ph&uacute; Quốc,&nbsp;</strong>viếng<strong>&nbsp;Dinh Bà - Thủy Long Th&aacute;nh Mẫu (Thần Nước), Dinh Cậu</strong>. Trở về kh&aacute;ch sạn nghỉ ngơi. Tối sinh hoạt tự do.<br />\r\n-&nbsp;<strong>Tham gia loại h&igrave;nh du lịch mới &ldquo;Đi bộ dưới đ&aacute;y biển&rdquo; tại B&atilde;i Sao</strong>: Tại đ&acirc;y du kh&aacute;ch được nh&acirc;n vi&ecirc;n chuy&ecirc;n nghiệp hướng dẫn v&agrave; dắt bạn đến với đ&aacute;y dại dương. Bạn được dạo bước giữa d&ograve;ng đại dương tận mắt nh&igrave;n những rạn san h&ocirc; đẹp v&agrave; rất nhiều lo&agrave;i c&aacute; qu&yacute; tại c&ocirc;ng vi&ecirc;n bảo tồn san h&ocirc; đầu ti&ecirc;n v&agrave; duy nhất tại Ph&uacute; Quốc, được cấp ph&eacute;p bởi cơ quan bảo tồn biển Ph&uacute; Quốc&nbsp;<em>(tự t&uacute;c chi ph&iacute;).</em></p>\r\n\r\n<p><em><img alt=\"\" src=\"/ckfinder/userfiles/images/2/ve-may-bay-hai-phong-di-phu-quoc_1512979468.jpg\" style=\"height:660px; width:1024px\" /></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>NG&Agrave;Y 03: PH&Uacute; QUỐC - TP. HỒ CH&Iacute; MINH (Ăn s&aacute;ng, trưa)</strong><br />\r\nQu&yacute; kh&aacute;ch tự do tắm biển Ph&uacute; Quốc, trả ph&ograve;ng. Xe đưa qu&yacute; kh&aacute;ch ra s&acirc;n bay Ph&uacute; Quốc bay về Tp.Hồ Ch&iacute; Minh tr&ecirc;n&nbsp;<em><strong>VJ322 l&uacute;c 11:40 hoặc chuyến bay VJ326 l&uacute;c 16:20&nbsp;</strong></em>. Kết th&uacute;c chương tr&igrave;nh.&nbsp;<em>(Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay về lại nh&agrave;).</em></p>\r\n\r\n<p><em><strong>Ghi ch&uacute;:</strong><br />\r\n- Điểm tham quan c&oacute; thể sắp xếp lại thứ tư cho ph&ugrave; hợp m&agrave; vẫn bảo đảm đầy đủ nội dung của từng chương tr&igrave;nh.<br />\r\n- Nếu t&igrave;nh h&igrave;nh thời tiết, đường s&aacute; kh&ocirc;ng thuận lợi, chương tr&igrave;nh tham quan B&agrave;i Sao - Trung t&acirc;m Nu&ocirc;i cấy Ngọc trai - Nh&agrave; t&ugrave; PQ - Thiền viện Tr&uacute;c L&acirc;m sẽ được thay thế bằng chương tr&igrave;nh tham quan B&atilde;i &Ocirc;ng Lang.<br />\r\n- Giờ bay c&oacute; thể bị thay đổi bởi h&atilde;ng h&agrave;ng kh&ocirc;ng Vietjet Air</em></p>\r\n\r\n<p>&nbsp;</p>', '7iiH_bai-sao-phu-quoc-e1506329625499.jpg', '5200000', '3900000', '2500000', 1, 1),
(15, 'Du Lịch Hạ Long', 'VÂN ĐỒN - MÓNG CÁI - SA VĨ - HẠ LONG - HẢI PHÒNG', 'TP. Hồ Chí Minh', 4, 3, 1, '<p><strong>NG&Agrave;Y 01: TP. HCM - V&Acirc;N ĐỒN - M&Oacute;NG C&Aacute;I - SA VĨ (Ăn trưa, chiều)</strong>&nbsp;<br />\r\nBuổi s&aacute;ng, qu&yacute; kh&aacute;ch tập trung tại Cổng D4 - Ga đi trong nước - S&acirc;n bay T&acirc;n Sơn Nhất. HDV Lữ h&agrave;nh Saigontourist đ&oacute;n qu&yacute; kh&aacute;ch v&agrave; hỗ trợ l&agrave;m thủ tục, bay đi Quảng Ninh tr&ecirc;n&nbsp;<em><strong>chuyến bay VJ230 l&uacute;c 07:00</strong></em>. Đo&agrave;n đ&aacute;p xuống s&acirc;n bay&nbsp;<strong>quốc tế V&acirc;n Đồn</strong>&nbsp;hiện đại, vừa được khai th&aacute;c từ th&aacute;ng 12 năm 2018. Xe đ&oacute;n đo&agrave;n đến viếng&nbsp;<strong>Thiền Viện Tr&uacute;c L&acirc;m Gi&aacute;c T&acirc;m&nbsp;</strong>(ch&ugrave;a C&aacute;i Bầu), ngắm to&agrave;n cảnh vịnh B&aacute;i Tử Long y&ecirc;n b&igrave;nh... Khởi h&agrave;nh đi M&oacute;ng C&aacute;i. Buổi chiều, tham quan&nbsp;<strong>đ&igrave;nh Tr&agrave; Cổ</strong>&nbsp;- ng&ocirc;i đ&igrave;nh tạo cảm hứng cho nhạc sĩ Nguyễn Cường s&aacute;ng t&aacute;c b&agrave;i h&aacute;t M&aacute;i đ&igrave;nh l&agrave;ng biển; chụp h&igrave;nh lưu niệm với c&aacute;c&nbsp;<strong>biểu tượng, cột mốc mũi Sa Vĩ</strong>. Nghỉ đ&ecirc;m tại M&oacute;ng C&aacute;i .</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/3/hinh-anh-tour-thien-duong-mien-trung-da-nang-son-tra-ba-na-hoi-an-cu-lao-cham-tron-goi-ve-may-bay.jpg\" style=\"height:663px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;02: M&Oacute;NG C&Aacute;I - CỬA &Ocirc;NG - HẠ LONG (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, đo&agrave;n mua sắm tại&nbsp;<strong>chợ Trung T&acirc;m, tham quan cửa khẩu M&oacute;ng C&aacute;i&nbsp;</strong>(chụp ảnh lưu niệm b&ecirc;n ngo&agrave;i). Gh&eacute; thăm&nbsp;<strong>đền Cửa &Ocirc;ng</strong>&nbsp;linh thi&ecirc;ng. Khởi h&agrave;nh về Hạ Long. theo trục đường ven biển qua khu d&acirc;n cư mới, hiện đại, tham quan&nbsp;<strong>bảo t&agrave;ng Quảng Ninh</strong>. &nbsp;Nghỉ đ&ecirc;m tại Hạ Long.<br />\r\n<em>Lựa chọn (tự t&uacute;c chi ph&iacute; di chuyển &amp; tham quan):&nbsp;<br />\r\n-&nbsp;</em><strong>Quần thể Du lịch - Giải tr&iacute; Sun World Hạ Long Park</strong>, gồm 2 khu c&ocirc;ng vi&ecirc;n vui chơi ven biển B&atilde;i Ch&aacute;y v&agrave; tr&ecirc;n n&uacute;i Ba Đ&egrave;o - được kết nối với nhau bởi hệ thống c&aacute;p treo vượt biển Nữ Ho&agrave;ng đạt 2 kỷ lục thế giới (cabin c&oacute; sức chứa lớn nhất thế giới v&agrave; c&aacute;p treo c&oacute; trụ c&aacute;p cao nhất thế giới so với mặt đất). Trải nghiệm Thế giới tr&ograve; chơi mạo hiểm, V&ograve;ng quay Mặt Trời - một trong những v&ograve;ng quay cao nhất thế giới.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/3/rock-island-trong-mai_322362233.jpg\" style=\"height:683px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;03: VỊNH HẠ LONG - HANG SỬNG SỐT - B&Atilde;I TI TỐP (Ăn s&aacute;ng, trưa, chiều)</strong><br />\r\nBuổi s&aacute;ng, đo&agrave;n l&ecirc;n thuyền du ngoạn&nbsp;<strong>vịnh Hạ Long&nbsp;</strong>- một trong 7 kỳ quan thi&ecirc;n nhi&ecirc;n mới của thế giới, chi&ecirc;m ngưỡng những thắng cảnh trong lộ tr&igrave;nh s&aacute;u tiếng tr&ecirc;n vịnh: &nbsp;<strong>hang Sửng Sốt, b&atilde;i Ti Tốp&nbsp;</strong>(c&oacute; thể tắm biển v&agrave;o c&aacute;c th&aacute;ng h&egrave;), c&aacute;c&nbsp;<strong>h&ograve;n Đỉnh Hương - Trống M&aacute;i (G&agrave; Chọi)- Ch&oacute; Đ&aacute;.</strong>&nbsp;Buổi chiều, đ&ograve;an trở về đất liền. Nghỉ đ&ecirc;m tại Hạ Long.<br />\r\n<em>Lựa chọn (tự t&uacute;c chi ph&iacute; di chuyển &amp; tham quan):&nbsp;</em><br />\r\n- Khu Du Lịch Đảo Tuần Ch&acirc;u, xem biểu diễn c&aacute; heo - hải cẩu - sư tử biển, xiếc th&uacute;, biểu diễn vũ điệu nhạc nước v&agrave; &aacute;nh s&aacute;ng laser, game trong nh&agrave;, xe điện dụng, xe ngựa h&agrave;o hoa, chiếu phim 5D, triễn l&atilde;m hoa đăng, biễu diễn ca m&uacute;a nhạc.</p>\r\n\r\n<p><img alt=\"\" src=\"/ckfinder/userfiles/images/3/maxresdefault.jpg\" style=\"height:576px; width:1024px\" /></p>\r\n\r\n<p><strong>NG&Agrave;Y&nbsp;04: ĐCT HẠ LONG - HẢI PH&Ograve;NG - TP.HCM (Ăn s&aacute;ng, trưa)</strong><br />\r\nĐo&agrave;n tự do tham quan, mua sắm cho đến giờ trả ph&ograve;ng. Xe đưa đo&agrave;n theo&nbsp;<strong>đường cao tốc Hạ Long - Hải Ph&ograve;ng</strong>, qua cầu Bạch Đằng đến th&agrave;nh phố hoa phượng đỏ, gh&eacute; thăm&nbsp;<strong>quần thể di t&iacute;ch Bạch Đằng Giang</strong>&nbsp;với đền thờ c&aacute;c vị anh h&ugrave;ng d&acirc;n tộc: vua L&ecirc; Đại H&agrave;nh, Ng&ocirc; Quyền, Trần Hưng Đạo,... m&ocirc; h&igrave;nh b&atilde;i cọc tr&ecirc;n s&ocirc;ng Bạch Đằng. Xe đưa đo&agrave;n ra s&acirc;n bay C&aacute;t Bi, đ&aacute;p chuyến bay trở về TP.HCM tr&ecirc;n<em><strong>&nbsp;chuyến bay VJ281 l&uacute;c 17:45</strong></em>. Kết th&uacute;c chương tr&igrave;nh (Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay về nh&agrave;).</p>', 'MTPS_rock-island-trong-mai_322362233.jpg', '8200000', '5800000', '3500000', 1, 1),
(16, 'Pháo Hoa Đà Nẵng', 'Bà Nầ- Núi Thanffan Tài', 'TP. Hồ Chí Minh', 4, 25, 2, '<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">NG&Agrave;Y&nbsp;01: TP. HỒ CH&Iacute; MINH - Đ&Agrave; NẴNG - MỸ KH&Ecirc;&nbsp;&nbsp;(Ăn trưa, chiều)</span></span></span></strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">Buổi s&aacute;ng, qu&yacute; kh&aacute;ch tập trung tại Cổng D4, Ga đi trong nước, s&acirc;n bay T&acirc;n Sơn Nhất. HDV Saigontourist đ&oacute;n qu&yacute; kh&aacute;ch, hỗ trợ l&agrave;m thủ tục. Khởi h&agrave;nh ra Đ&agrave; Nẵng tr&ecirc;n chuyến bay<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;VJ622 l&uacute;c 6:15</span></strong>. Đến Đ&agrave; Nẵng, đến&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">b&aacute;n đảo Sơn Tr&agrave;</span></strong>, ngắm&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">cảng Ti&ecirc;n Sa</span></strong>, viếng&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ch&ugrave;a Linh Ứng B&atilde;i Bụt&nbsp;</span></strong>&ndash; ng&ocirc;i ch&ugrave;a lớn nhất ở th&agrave;nh phố Đ&agrave; Nẵng, chi&ecirc;n b&aacute;i&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">tượng Phật Quan Thế &Acirc;m</span></strong>&nbsp;cao nhất Việt Nam, tham quan thắng cảnh&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ngũ H&agrave;nh Sơn v&agrave; l&agrave;ng nghề đi&ecirc;u khắc đ&aacute; Ho&agrave; Hải</span></strong>. Buổi chiều, xe đưa qu&yacute; kh&aacute;ch đi tắm biển Mỹ Kh&ecirc; (tự t&uacute;c chi ph&iacute; tắm biển: thu&ecirc; d&ugrave; ghế, tắm nướt ngọt). Tối tự do dạo phố, trải nghiệm&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&ldquo;V&ograve;ng quay Mặt trời &ndash; Sun Wheel&rdquo;</span></strong>&nbsp;thưởng ngoạn cảnh đẹp&nbsp;Đ&agrave; Nẵng&nbsp;với g&oacute;c nh&igrave;n mới từ độ cao 115m (tự t&uacute;c chi ph&iacute;). Nghỉ đ&ecirc;m tại&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Đ&agrave; Nẵng.</span></strong><br />\r\n<strong><strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Lựa chọn (Tự t&uacute;c chi ph&iacute; di chuyển v&agrave; mua v&eacute; v&agrave;o kh&aacute;n đ&agrave;i ch&iacute;nh đường Trần Hưng Đạo, TP.Đ&agrave; Nẵng)</span></strong></strong></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">Xem Lễ hội ph&aacute;o hoa Quốc tế Đ&agrave; Nẵng - DIFF 2019 với chủ đề &ldquo;Những d&ograve;ng s&ocirc;ng kể chuyện&rdquo;&nbsp; v&agrave;o l&uacute;c 20:00 ng&agrave;y 6/7 (Đội: Qu&aacute;n Qu&acirc;n v&agrave; &Aacute; Qu&acirc;n).</span></span></span></strong></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">NG&Agrave;Y&nbsp;02: Đ&Agrave; NẴNG - B&Agrave; N&Agrave; (CẦU V&Agrave;NG) - HỘI AN&nbsp;(Ăn s&aacute;ng, chiều)</span></span></span></span></strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\"><span style=\"background-color:white\">Buổi s&aacute;ng, qu&yacute; kh&aacute;ch c&oacute; hai sự lựa chọn:</span><br />\r\n<strong><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">-&nbsp;<u>Lựa chọn 1 (Tự t&uacute;c ăn trưa)</u></span></span></strong><span style=\"background-color:white\">&nbsp;Tự do để kh&aacute;m ph&aacute; TP.Đ&agrave; Nẵng. Qu&yacute; kh&aacute;ch c&oacute; thể ra s&ocirc;ng H&agrave;n ngắm&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">cầu Rồng</span></strong>&nbsp;- một trong những con rồng th&eacute;p lớn nhất thế giới<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">, cầu Trần Thị L&yacute;&nbsp;</span></strong>- với kiến tr&uacute;c tựa con thuyền căng buồm vươn ra biển lớn,&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">tượng C&aacute; ch&eacute;p h&oacute;a rồng</span></strong>&nbsp;- một biểu tượng mang đậm t&iacute;nh nghệ thuật v&agrave; t&iacute;n ngưỡng d&acirc;n gian,&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">cầu T&igrave;nh Y&ecirc;u</span></strong>&nbsp;- c&acirc;y cầu tr&aacute;i tim với những ổ kh&oacute;a dễ thương tr&ecirc;n th&agrave;nh cầu rất th&uacute; vị v&agrave; l&atilde;ng mạn. Hoặc đến&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">chợ H&agrave;n (hoặc chợ Cồn)</span></strong>, mua sắm đặc sản địa phương. Qu&yacute; kh&aacute;ch tự t&uacute;c ăn trưa, trải nghiệm phong vị ẩm thực độc đ&aacute;o của Đ&agrave; Nẵng.</span><br />\r\n<span style=\"background-color:white\">-&nbsp;<strong><u><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Lựa chọn 2 (Tham quan &amp; Ăn trưa buffet Việt tại B&agrave; N&agrave; Hills)</span></u></strong>: Xe đưa qu&yacute; kh&aacute;ch đến Ga c&aacute;p treo của KDL B&agrave; N&agrave; Hills. L&ecirc;n B&agrave; N&agrave; bằng&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">c&aacute;p treo</span></strong>, ngắm to&agrave;n cảnh n&uacute;i non h&ugrave;ng vỹ v&agrave; tận hưởng kh&iacute; hậu trong l&agrave;nh. Dạo bước tr&ecirc;n&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Cầu V&agrave;ng</span></strong>&nbsp;tọa lạc tại&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Vườn Thi&ecirc;n Thai</span></strong>, với thiết kế độc đ&aacute;o v&agrave; ấn tượng, đầy mềm mại tựa một dải lụa, được n&acirc;ng đỡ bởi đ&ocirc;i b&agrave;n tay khổng lồ loang lổ r&ecirc;u phong giữa cảnh sắc n&ecirc;n thơ tuyệt diệu của B&agrave; N&agrave; &ndash; N&uacute;i Ch&uacute;a. Viếng<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;ch&ugrave;a Linh Ứng</span></strong>, kh&aacute;m ph&aacute;&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Fantasy Park - khu vui chơi giải tr&iacute; trong nh&agrave; đẳng cấp quốc tế (miễn ph&iacute; 105 tr&ograve; chơi) v&agrave; tr&ograve; chơi Hiệp sĩ Thần thoại (M&aacute;ng trượt).</span></strong>&nbsp;Dạo bộ giữa&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Khu l&agrave;ng Ph&aacute;p</span></strong>&nbsp;một kh&ocirc;ng gian kiến tr&uacute;c t&aacute;i hiện sinh động nước Ph&aacute;p thời cận đại đầy l&atilde;ng mạn, sang trọng v&agrave; lịch l&atilde;m. Trải nghiệm&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">T&agrave;u hỏa leo n&uacute;i</span></strong>, tham quan&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">9 vườn hoa</span></strong>,<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;Hầm rượu cổ Debay (kh&ocirc;ng bao gồm thưởng thức rượu vang)</span></strong>&nbsp;.Tự t&uacute;c chi ph&iacute; kh&aacute;m ph&aacute;&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Khu trưng b&agrave;y tượng s&aacute;p</span></strong>&nbsp;- duy nhất tại Việt Nam.</span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">Buổi chiều, đo&agrave;n tham quan&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Phố cổ Hội An</span></strong>&nbsp;(với c&aacute;c c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu:&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Ch&ugrave;a Cầu Nhật Bản</span></strong>,&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">ch&ugrave;a &Ocirc;ng, hội qu&aacute;n Ph&uacute;c Kiến, khu phố đ&egrave;n lồng. C&ocirc;ng Vi&ecirc;n Ấn tượng Hội An&nbsp;</span></strong>- T&aacute;i hiện Hội An của qu&aacute; khứ, một cảng thị quốc tế sầm uất với sự hiện diện của c&aacute;c nền văn h&oacute;a &Aacute;, &Acirc;u với rất nhiều mini shows tương t&aacute;c như Trại H&ograve; Đả Hổ, B&agrave; Ch&uacute;a Tằm Tang, Phụng Nguyệt Tửu Lầu, Đ&aacute;m cưới của Ngọc Hoa C&ocirc;ng Ch&uacute;a; t&igrave;m hiểu nghề nu&ocirc;i tằm ươm tơ, trải nghiệm quay tơ dệt lụa bằng khung cửi truyền thống, l&agrave;m b&aacute;nh đậu xanh Hội An, thưởng thức tr&agrave; đạo phong c&aacute;ch Nhật Bản &hellip;. Đặc biệt&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">xem Show &ldquo;K&yacute; Ức Hội An&rdquo;&nbsp;</span></strong>- vở diễn thực cảnh ngo&agrave;i trời với số lượng diễn vi&ecirc;n đạt kỷ lục Việt Nam, t&aacute;i hiện nhịp nh&agrave;ng sinh động miền k&yacute; ức Faifo đa văn h&oacute;a: Champa, Bồ Đ&agrave;o Nha, Nhật, Trung&hellip; chứng kiến cuộc sống th&ocirc;n qu&ecirc; b&igrave;nh dị b&ecirc;n d&ograve;ng s&ocirc;ng Ho&agrave;i, khoảnh khắc h&ugrave;ng tr&aacute;ng trong lịch sử, n&eacute;t ho&agrave;ng kim của cảng thị một thời hay phố Hội nhộn nhịp của hiện tại...</span></span></span></span><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\"><span style=\"background-color:white\">Sau khi xem show đo&agrave;n quay về Đ&agrave; Nẵng. Nghỉ đ&ecirc;m tại&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Đ&agrave; Nẵng.</span></strong></span></span></span></span></span></span></p>\r\n\r\n<p><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:10.5pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">NG&Agrave;Y&nbsp;03: Đ&Agrave; NẴNG - SKN N&Uacute;I THẦN T&Agrave;I - HUẾ&nbsp;(Ăn s&aacute;ng, trưa, chiều)</span></span></span></span></strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\"><span style=\"background-color:white\">Bu&ocirc;̉i sáng, tham quan&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">C&ocirc;ng vi&ecirc;n Suối kho&aacute;ng n&oacute;ng N&uacute;i Thần T&agrave;i:</span></strong>&nbsp;tắm kho&aacute;ng thư gi&atilde;n tại c&aacute;c hồ tự nhi&ecirc;n ngo&agrave;i trời, thư gi&atilde;n với x&ocirc;ng hơi kh&ocirc; - ướt, vui chơi tại C&ocirc;ng vi&ecirc;n nước, tham quan v&agrave; ng&acirc;m ch&acirc;n trực tiếp tại một trong những điểm ph&aacute;t lộ tại mỏ kho&aacute;ng (tự t&uacute;c chi ph&iacute; c&aacute;c loại h&igrave;nh dịch vụ: tắm kho&aacute;ng ph&ograve;ng ri&ecirc;ng, tắm Onsen, tắm b&ugrave;n, tắm tr&agrave;-sữa-c&agrave; ph&ecirc;-rượu-sả). Khởi h&agrave;nh ra Huế. Di chuyển qua&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">đường h&acirc;̀m Hải V&acirc;n</span></strong>&nbsp;- h&acirc;̀m đường b&ocirc;̣ hi&ecirc;̣n đại nh&acirc;́t Đ&ocirc;ng Nam Á. Ngắm&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">bi&ecirc;̉n Lăng C&ocirc; - một trong những vịnh biển đẹp nhất thế giới</span></strong>. Đến Huế, nhận ph&ograve;ng. Tự do kh&aacute;m ph&aacute; đất Cố đ&ocirc;. Nghỉ đ&ecirc;m tại&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Huế.</span></strong></span></span></span></span></span></span></p>\r\n\r\n<p style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"background-color:white\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">NG&Agrave;Y&nbsp;04: HUẾ - TP. HỒ CH&Iacute; MINH&nbsp;(Ăn s&aacute;ng, trưa)</span></span></span></strong><br />\r\n<span style=\"font-size:10.5pt\"><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\"><span style=\"color:black\">Buổi s&aacute;ng, qu&yacute; kh&aacute;ch tham quan Di sản Văn h&oacute;a Thế giới&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Kinh Th&agrave;nh Huế</span></strong>&nbsp;- Ho&agrave;ng cung của 13 vị Vua triều Nguyễn với c&aacute;c c&ocirc;ng tr&igrave;nh ti&ecirc;u biểu:<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">&nbsp;Ngọ M&ocirc;n, điện Th&aacute;i Ho&agrave;, Tử Cấm Th&agrave;nh, Thế Miếu, Hiển L&acirc;m C&aacute;c, Cửu Đỉnh, Bảo tàng C&ocirc;̉ v&acirc;̣t Cung đình Hu&ecirc;́. Viếng ch&ugrave;a Thi&ecirc;n Mụ&nbsp;</span></strong>- ng&ocirc;i ch&ugrave;a cổ v&agrave; nổi tiếng. Chiều tham quan&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">Lăng Tự Đức</span></strong>&nbsp;- nơi c&oacute; phong cảnh sơn thủy hữu t&igrave;nh. Đ&acirc;y l&agrave; một trong những lăng tẩm c&oacute; kiến tr&uacute;c đẹp nhất của c&aacute;c vua ch&uacute;a nh&agrave; Nguyễn. Ra s&acirc;n bay Ph&uacute; B&agrave;i để về TP. HCM&nbsp;<strong><span style=\"font-family:&quot;Arial&quot;,&quot;sans-serif&quot;\">(Chuyến bay VJ309 l&uacute;c 17:50)</span></strong>. Kết th&uacute;c chương tr&igrave;nh. Qu&yacute; kh&aacute;ch tự t&uacute;c phương tiện từ s&acirc;n bay TSN về nh&agrave;.</span></span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>', 'IfMw_le-hoi-phao-hoa-quoc-te-da-nang-diff-2019-anh-3.jpg', '6000000', '3000000', '1500000', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `MaNV` int(20) UNSIGNED NOT NULL,
  `TenNV` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tel` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HinhAnh` longtext COLLATE utf8mb4_unicode_ci,
  `MaKV` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `level` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`MaNV`, `TenNV`, `email`, `email_verified_at`, `password`, `Tel`, `DiaChi`, `HinhAnh`, `MaKV`, `remember_token`, `created_at`, `updated_at`, `level`) VALUES
(1, 'Trịnh Văn Đạt', 'TrinhDat98@gmail.com', NULL, '$2y$10$TevthT6w7sryofe0i5D8CO8D..4QfTLRr.V5rCFj5fAzdFxv1vAH2', '0123456789', 'Cẩm Lệ, Đà Nẵng', 'w6de_b6c120f128df40519b33abb98a4bf0db_1.jpg', NULL, NULL, '2019-05-12 16:25:37', '2019-06-04 03:03:35', 3),
(3, 'Hồ Thị Trúc Linh', 'Hothitruclinh@gmail.com', NULL, '$2y$10$jb6YoAwHvkixXlp2ZJrw1.EJShLrGVZv.CQImPE8UBzq9HYfo84Ya', '0123456789', 'Duy Xuyên Quảng Nam', 'iAac_80b250781d0cec7c102f4dbcabf476db.jpeg', 3, NULL, '2019-05-20 17:33:25', '2019-05-23 01:40:08', 2),
(4, 'Đỗ Thành Hải', 'dothanhhai@gmail.com', NULL, '$2y$10$USRRqK.yXKsDIdEJyeUemOjwKHZbFnnH17kdddRjE3Df9.X558jI.', '0123456789', 'Quảng Bình', 'NdfW_bti1412957527.JPG', 2, NULL, '2019-05-21 01:43:25', '2019-05-23 01:39:08', 1),
(5, 'Lê Trung Doanh', 'letrungdoanh@gmail.com', NULL, '$2y$10$tMC.rpjBv9tM27r1yK/jp.rwF4h4T0FjaRX8vMaAEWblaNF2qfS22', '0123456789', 'Thanh Hóa', 'MsPk_images (4).jpg', 2, NULL, '2019-05-21 01:50:02', '2019-05-21 01:51:12', 2),
(6, 'Nguyễn Thị Diểm', 'nguyenthidiem@gmail.com', NULL, '$2y$10$1/tTLlfNYwuw.S1vzfF7buU7B4mhfwzblieRRGzf05Uc539cAZzmq', '098765421', 'Huyện Bố Trạch , Quảng Bình', 'BjoJ_80b250781d0cec7c102f4dbcabf476db.jpeg', 1, NULL, '2019-05-24 03:06:33', '2019-05-24 03:06:33', 1),
(7, 'Nguyễn Nguyên Hương', 'nguyenhuong@gmail.com', NULL, '$2y$10$c.QsCliPQSPHMK9Ri9EwxOPpctzPephlDphC10BRQKYu79zDo6j/.', '0987654321', 'Thành Phố Đồng Hói, Quảng Bình', 'EnKh_chup-anh-the.jpg', 1, NULL, '2019-05-24 03:07:26', '2019-05-24 03:07:26', 1),
(8, 'Trần Nguyên Ngọc', 'gojcnguyenngoc@gmail.com', NULL, '$2y$10$K9qKm/a3oYsVM2XfcZvduOl7FOMNJGxLlAh5SbN7pfFWyqYyvZmKG', '987654321', 'Thành Phố Phan Rang, Ninh Thuận', 'DCez_chụp ảnh visa.jpg', 2, NULL, '2019-05-24 03:09:24', '2019-05-24 03:09:24', 1),
(9, 'Lê Bùi Vạn Long', 'lebuivanlong@gmail.com', NULL, '$2y$10$X4V.X9zAqcwJVDo6wpIEd.M5rNnfd9xwILBgkqCOE3h4fzNdxHA5O', '09876521', 'Huyện Bắc Ái, Ninh Thuận', '0XHt_images (4).jpg', 2, NULL, '2019-05-24 03:10:39', '2019-05-24 03:10:39', 1),
(10, 'Trần Khánh Chi', 'trankhanhchi@gmail.com', NULL, '$2y$10$Crhu3w61ZC7hm.VevV/WceQyEaorxZljaM1bZZvU2wCpjP8Gczdr2', '0987654321', 'Thành Phố Quy Nhơn, Bình Định', 'ujrT_images (2).jpg', 2, NULL, '2019-05-24 03:11:42', '2019-05-24 03:11:42', 1),
(11, 'Trần Văn Long', 'tranvanlong@gmail.com', NULL, '$2y$10$5s8NebHdFCU5D9pYbuPQEez/49MOsudssBC2D.OPLzC1Mv0TKIUqe', '0987654321', 'Huyện Phù Cát, Bình Định', 'Eh1v_tải xuống (1).jpg', 2, NULL, '2019-05-24 03:12:49', '2019-05-24 03:12:49', 1),
(12, 'Huỳnh Thị Bích Ngọc', 'bichngoc@gmail.com', NULL, '$2y$10$6v6SZKslFC9PTUN16EEureGtqItC5euBl8kK1W6j9uUlJtd5xeNFO', '0987654321', 'Quận Ba Đình, Hà Nội', 'fl8f_BBKlJ0G.jpg', 1, NULL, '2019-05-24 03:14:06', '2019-05-24 03:14:06', 1),
(13, 'Võ Thị Ly Na', 'vothilyna@gmail.com', NULL, '$2y$10$.lfL7v39WloF8zR9VdNbI.S09LxmZNbEAcWjAZJ/ACOvEDGO/ASYi', '0987654321', 'Thành Phố Buôn Ma Thuột', 'cHeI_images (1).jpg', 2, NULL, '2019-05-24 03:15:59', '2019-05-24 03:15:59', 1),
(14, 'Nguyễn Quỳnh Phương', 'quynhphuong@gmail.com', NULL, '$2y$10$TvX7FjoRfHZxlvcn4R9Hp.up0rR7Ryf9FFcAt44ylBuU6dz4amycG', '0987654321', 'Ea Súp, Đắk Lắk', 'zg5z_images.jpg', 2, NULL, '2019-05-24 03:17:15', '2019-05-24 03:17:15', 1),
(15, 'Lê Trần Trúc Hà', 'letrantrucha@gmail.com', NULL, '$2y$10$2z9EJhbJONAhxDQfuwRpuuQyMl5Dkqdce3uIebzhMOwCAfumgXXmK', '0987654321', 'Huyện Ba Vì, Hà Nội', 'Tji5_tải xuống.jpg', 1, NULL, '2019-05-24 03:18:21', '2019-05-24 03:18:21', 1),
(16, 'Văn Trần Thảo Vy', 'vantranthaovy@gmail.com', NULL, '$2y$10$WFNXHUA2mQdUNK6drDjCdORDewienAWz2iO/5gZjiDfCSz453rqlK', '0987654321', 'Quốc Oai Hà Nội', 'ik5A_anh-the-3x4.jpg', 1, NULL, '2019-05-24 03:22:17', '2019-05-24 03:22:17', 1),
(17, 'Nguyễn Hoàng Phương Trâm', 'hoangphuongtram@gmail.com', NULL, '$2y$10$ZMh9wyqFAQyjdiJmJ72ZUeGQkloL.V2boMFoSYSXG5It8ePDC2O2i', '0987654321', 'Tp. Sơn La', 'HKgK_32676337_1563676543730736_6701736436032339968_n.jpg', 1, NULL, '2019-05-24 03:23:31', '2019-05-24 03:23:31', 1),
(18, 'Hoàng Thị Phương Oanh', 'hoangphuongoanh@gmail.com', NULL, '$2y$10$O./L..87IVNqwRb1ypCyweP.dRFuUd832Jew5DvpX0QcmsX6PfPNu', '0987654321', 'Mộc Châu, Sơn La', '4PSW_171981_130086834510000000_2227.jpg', 1, NULL, '2019-05-24 03:24:19', '2019-05-24 03:24:19', 1),
(19, 'Hồ Minh Tuyết', 'minhtuyet@gmail.com', NULL, '$2y$10$RKItPHc8QGFyP4Al4f6nAehc2g8rFpIWCoV30ngOehMloC3ZrxQti', '0987654321', 'TP. Điện Biên Phủ, Điện Biên', 'Isnq_4194-copy.jpg', 1, NULL, '2019-05-24 03:25:41', '2019-05-24 03:25:41', 1),
(20, 'Huỳnh Thị Yến Nhi', 'huynhthiyennhi@gmail.com', NULL, '$2y$10$6WFid0PsXCWF/fsOqfwb6uDEr/T6xv9t4gSrDHXY3rcFrmEFKzGS.', '0987654321', 'TP. Cẩm Phả, Quảng Ninh', '9oSv_images (5).jpg', 1, NULL, '2019-05-24 03:27:33', '2019-05-24 03:27:33', 1),
(21, 'Bùi Thị Mỹ Duyên', 'myduyenbui@gmail.com', NULL, '$2y$10$/yVqwxb7DGQAgAo9cWLaguIuxX4VwEStyLU.cZJtUcwPoQcKKtwiO', '09876543211', 'Bến Cát, Bình Dương', 'gJui_images (6).jpg', 3, NULL, '2019-05-24 03:28:58', '2019-05-24 03:28:58', 1),
(22, 'Dương Diễm My', 'duongdiemmy@gmail.com', NULL, '$2y$10$hiZiTfwR3Flb8MnMdO7ybuN02q2cRllMKuoaQomj3QqOWGH6U7bsi', '0987654321', 'Biên Hòa, Đồng Nai', 'JyS9_tải xuống (2).jpg', 3, NULL, '2019-05-24 03:29:57', '2019-05-24 03:29:57', 1),
(23, 'Nguyễn Thi Hà Giang', 'hagiang@gmail.com', NULL, '$2y$10$O7UUcVYQ4uBTOE/hKKX.IOwOpv8JErXHj4Bn8wm7bLJLSHO0WIVna', '0987654321', 'Thủ Dầu Một, Bình Dương', 'Z4Lh_tải xuống.jpg', 3, NULL, '2019-05-24 03:31:24', '2019-05-24 03:31:24', 1),
(24, 'Huỳnh Thị Phi Hải', 'phihai@gmail.com', NULL, '$2y$10$IKIa.9/ev54Rv04EThPUKu0eI7m8fx9S44Yrh.OqKrqs/XLgzAGu6', '0987654321', 'TP. Tây Ninh, Tây Ninh', 'AgvJ_ros1552716436.jpg', 3, NULL, '2019-05-24 03:32:39', '2019-05-24 03:32:39', 1),
(25, 'Vũ Thị Dung', 'vudung7298@gmail.com', NULL, '$2y$10$l/QGnUdwkd1MxSvcLgyYyu5fPF/gbdD.me3dDmHsQ3QlFxBzmQwW.', '0972972293', 'Quận 1, TP. Hồ Chí Minh', 'auGe_proxy.png', 3, NULL, '2019-05-24 03:34:06', '2019-05-24 03:34:06', 2),
(26, 'Lương Thị Thu Thảo', 'thuthao@gmail.com', NULL, '$2y$10$iXV0hffFbpzNfWZowdBmVuI6cMgiq8hIxvZYwyvfOCUUghh9NUU5m', '0987654321', 'Đồng Xoài Bình Phước', 'n3ES_images (8).jpg', 3, NULL, '2019-05-24 03:35:01', '2019-05-24 03:35:01', 2),
(27, 'Nguyễn Trà Thiên Lý', 'thienly@gmail.com', NULL, '$2y$10$u6CIze.bXWe5sT1WsUCk4ei/QIMqZjnuOpFDCuuuCsxeArwWY8wxy', '987654321', 'Hải Châu, Đà Nẵng', 'AamQ_dich_vu_chup_anh_the_tan_noi.jpg', 2, NULL, '2019-05-24 03:36:09', '2019-05-24 03:36:09', 2),
(28, 'Nguyễn Thị Thanh Thủy', 'thanhthuy@gmail.com', NULL, '$2y$10$iPog42/RjnSkRB/3f/slmehxICOO1hZw90agqN4lx9ITk3eBSxZBe', '0987654321', 'Liên Chiểu, Đà Nẵng', 'jhmo_chụp ảnh visa.jpg', 2, NULL, '2019-05-24 03:37:04', '2019-05-24 03:37:04', 2),
(29, 'Phan Thị Minh Trang', 'minhtrang@gmail.com', NULL, '$2y$10$gKhb.whtDY7p5NewGcJCfOnCLz1ouaabqGbFundtMh83Ht/gKsJyq', '0987654321', 'TP. Quảng Ngãi', 'iHr3_images (6).jpg', 2, NULL, '2019-05-24 03:37:59', '2019-05-24 03:37:59', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banggiadichvu`
--
ALTER TABLE `banggiadichvu`
  ADD PRIMARY KEY (`MaGiaDV`),
  ADD KEY `MaDoiTac` (`MaDoiTac`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`MaBlog`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `chitietnhomtour`
--
ALTER TABLE `chitietnhomtour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaTour` (`MaTour`),
  ADD KEY `MaNhomTour` (`MaNhomTour`);

--
-- Chỉ mục cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD PRIMARY KEY (`MaCTTour`),
  ADD KEY `chitiettour_ibfk_2` (`MaTour`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`level`);

--
-- Chỉ mục cho bảng `diadiemdulich`
--
ALTER TABLE `diadiemdulich`
  ADD PRIMARY KEY (`MaDD`),
  ADD KEY `MaTinh` (`MaTinh`);

--
-- Chỉ mục cho bảng `diadiemtour`
--
ALTER TABLE `diadiemtour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaTour` (`MaTour`),
  ADD KEY `MaDD` (`MaDD`);

--
-- Chỉ mục cho bảng `dichvutour`
--
ALTER TABLE `dichvutour`
  ADD PRIMARY KEY (`MaDVTour`),
  ADD KEY `MaCTTour` (`MaCTTour`),
  ADD KEY `MaDoiTac` (`MaDoiTac`);

--
-- Chỉ mục cho bảng `doitac`
--
ALTER TABLE `doitac`
  ADD PRIMARY KEY (`MaDoiTac`),
  ADD KEY `MaLoaiDT` (`MaLoaiDT`),
  ADD KEY `MaTinh` (`MaTinh`);

--
-- Chỉ mục cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaLoaiTT` (`MaLoaiTT`),
  ADD KEY `hopdong_ibfk_1` (`MaKH`),
  ADD KEY `MaTour` (`MaCTTour`);

--
-- Chỉ mục cho bảng `hopdongdichvu`
--
ALTER TABLE `hopdongdichvu`
  ADD PRIMARY KEY (`MaHDDV`),
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaDVTour` (`MaDVTour`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `MaQG` (`MaQG`);

--
-- Chỉ mục cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`MaKV`);

--
-- Chỉ mục cho bảng `loaidoitac`
--
ALTER TABLE `loaidoitac`
  ADD PRIMARY KEY (`MaLoaiDT`);

--
-- Chỉ mục cho bảng `loaitt`
--
ALTER TABLE `loaitt`
  ADD PRIMARY KEY (`MaLoaiTT`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhomtour`
--
ALTER TABLE `nhomtour`
  ADD PRIMARY KEY (`MaNhomTour`),
  ADD KEY `MaKV` (`MaKV`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `quocgia`
--
ALTER TABLE `quocgia`
  ADD PRIMARY KEY (`MaQG`);

--
-- Chỉ mục cho bảng `thongtinkhach`
--
ALTER TABLE `thongtinkhach`
  ADD PRIMARY KEY (`MaKhach`),
  ADD KEY `thongtinkhach_ibfk_1` (`MaHD`);

--
-- Chỉ mục cho bảng `thuchi`
--
ALTER TABLE `thuchi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaDVTour` (`MaDVTour`);

--
-- Chỉ mục cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`MaTinh`),
  ADD KEY `MaQG` (`MaQG`);

--
-- Chỉ mục cho bảng `tour`
--
ALTER TABLE `tour`
  ADD PRIMARY KEY (`MaTour`),
  ADD KEY `MaKV` (`MaKV`),
  ADD KEY `tour_ibfk_3` (`MaNV`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`MaNV`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_ibfk_1` (`MaKV`),
  ADD KEY `level` (`level`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banggiadichvu`
--
ALTER TABLE `banggiadichvu`
  MODIFY `MaGiaDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `MaBlog` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `chitietnhomtour`
--
ALTER TABLE `chitietnhomtour`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  MODIFY `MaCTTour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `level` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `diadiemdulich`
--
ALTER TABLE `diadiemdulich`
  MODIFY `MaDD` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `diadiemtour`
--
ALTER TABLE `diadiemtour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT cho bảng `dichvutour`
--
ALTER TABLE `dichvutour`
  MODIFY `MaDVTour` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT cho bảng `doitac`
--
ALTER TABLE `doitac`
  MODIFY `MaDoiTac` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `MaHD` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `hopdongdichvu`
--
ALTER TABLE `hopdongdichvu`
  MODIFY `MaHDDV` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `khuvuc`
--
ALTER TABLE `khuvuc`
  MODIFY `MaKV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nhomtour`
--
ALTER TABLE `nhomtour`
  MODIFY `MaNhomTour` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `thongtinkhach`
--
ALTER TABLE `thongtinkhach`
  MODIFY `MaKhach` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `thuchi`
--
ALTER TABLE `thuchi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `tour`
--
ALTER TABLE `tour`
  MODIFY `MaTour` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `MaNV` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `banggiadichvu`
--
ALTER TABLE `banggiadichvu`
  ADD CONSTRAINT `banggiadichvu_ibfk_1` FOREIGN KEY (`MaDoiTac`) REFERENCES `doitac` (`MaDoiTac`);

--
-- Các ràng buộc cho bảng `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `users` (`MaNV`);

--
-- Các ràng buộc cho bảng `chitietnhomtour`
--
ALTER TABLE `chitietnhomtour`
  ADD CONSTRAINT `chitietnhomtour_ibfk_1` FOREIGN KEY (`MaNhomTour`) REFERENCES `nhomtour` (`MaNhomTour`),
  ADD CONSTRAINT `chitietnhomtour_ibfk_2` FOREIGN KEY (`MaTour`) REFERENCES `tour` (`MaTour`);

--
-- Các ràng buộc cho bảng `chitiettour`
--
ALTER TABLE `chitiettour`
  ADD CONSTRAINT `chitiettour_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `users` (`MaNV`),
  ADD CONSTRAINT `chitiettour_ibfk_2` FOREIGN KEY (`MaTour`) REFERENCES `tour` (`MaTour`);

--
-- Các ràng buộc cho bảng `diadiemdulich`
--
ALTER TABLE `diadiemdulich`
  ADD CONSTRAINT `diadiemdulich_ibfk_1` FOREIGN KEY (`MaTinh`) REFERENCES `tinh` (`MaTinh`);

--
-- Các ràng buộc cho bảng `diadiemtour`
--
ALTER TABLE `diadiemtour`
  ADD CONSTRAINT `diadiemtour_ibfk_1` FOREIGN KEY (`MaDD`) REFERENCES `diadiemdulich` (`MaDD`),
  ADD CONSTRAINT `diadiemtour_ibfk_2` FOREIGN KEY (`MaTour`) REFERENCES `tour` (`MaTour`);

--
-- Các ràng buộc cho bảng `dichvutour`
--
ALTER TABLE `dichvutour`
  ADD CONSTRAINT `dichvutour_ibfk_1` FOREIGN KEY (`MaCTTour`) REFERENCES `chitiettour` (`MaCTTour`),
  ADD CONSTRAINT `dichvutour_ibfk_2` FOREIGN KEY (`MaDoiTac`) REFERENCES `doitac` (`MaDoiTac`);

--
-- Các ràng buộc cho bảng `doitac`
--
ALTER TABLE `doitac`
  ADD CONSTRAINT `doitac_ibfk_1` FOREIGN KEY (`MaLoaiDT`) REFERENCES `loaidoitac` (`MaLoaiDT`),
  ADD CONSTRAINT `doitac_ibfk_2` FOREIGN KEY (`MaTinh`) REFERENCES `tinh` (`MaTinh`);

--
-- Các ràng buộc cho bảng `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hopdong_ibfk_3` FOREIGN KEY (`MaLoaiTT`) REFERENCES `loaitt` (`MaLoaiTT`),
  ADD CONSTRAINT `hopdong_ibfk_4` FOREIGN KEY (`MaCTTour`) REFERENCES `chitiettour` (`MaCTTour`);

--
-- Các ràng buộc cho bảng `hopdongdichvu`
--
ALTER TABLE `hopdongdichvu`
  ADD CONSTRAINT `hopdongdichvu_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hopdong` (`MaHD`),
  ADD CONSTRAINT `hopdongdichvu_ibfk_2` FOREIGN KEY (`MaDVTour`) REFERENCES `dichvutour` (`MaDVTour`);

--
-- Các ràng buộc cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`MaQG`) REFERENCES `quocgia` (`MaQG`);

--
-- Các ràng buộc cho bảng `nhomtour`
--
ALTER TABLE `nhomtour`
  ADD CONSTRAINT `nhomtour_ibfk_1` FOREIGN KEY (`MaKV`) REFERENCES `khuvuc` (`MaKV`);

--
-- Các ràng buộc cho bảng `thongtinkhach`
--
ALTER TABLE `thongtinkhach`
  ADD CONSTRAINT `thongtinkhach_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hopdong` (`MaHD`);

--
-- Các ràng buộc cho bảng `thuchi`
--
ALTER TABLE `thuchi`
  ADD CONSTRAINT `thuchi_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hopdong` (`MaHD`),
  ADD CONSTRAINT `thuchi_ibfk_2` FOREIGN KEY (`MaDVTour`) REFERENCES `dichvutour` (`MaDVTour`);

--
-- Các ràng buộc cho bảng `tinh`
--
ALTER TABLE `tinh`
  ADD CONSTRAINT `tinh_ibfk_1` FOREIGN KEY (`MaQG`) REFERENCES `quocgia` (`MaQG`);

--
-- Các ràng buộc cho bảng `tour`
--
ALTER TABLE `tour`
  ADD CONSTRAINT `tour_ibfk_2` FOREIGN KEY (`MaKV`) REFERENCES `khuvuc` (`MaKV`),
  ADD CONSTRAINT `tour_ibfk_3` FOREIGN KEY (`MaNV`) REFERENCES `users` (`MaNV`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`MaKV`) REFERENCES `khuvuc` (`MaKV`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`level`) REFERENCES `chucvu` (`level`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
