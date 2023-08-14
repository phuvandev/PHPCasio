-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2023 lúc 11:16 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webdonghocasio`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctanhdongsanpham`
--

CREATE TABLE `ctanhdongsanpham` (
  `id` int(11) NOT NULL,
  `Anh` varchar(250) DEFAULT NULL,
  `MaDSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctanhdongsanpham`
--

INSERT INTO `ctanhdongsanpham` (`id`, `Anh`, `MaDSP`, `created_at`, `updated_at`) VALUES
(1, 'G-Shock_large.png', 1, '2023-05-12 00:49:18', NULL),
(2, 'Baby-G_large.png', 2, '2023-05-12 00:49:18', NULL),
(3, 'Edifice_large.png', 3, '2023-05-12 00:49:18', NULL),
(4, 'Sheen_large.png', 4, '2023-05-12 00:49:18', NULL),
(5, 'General_large.png', 5, '2023-05-12 00:49:18', NULL),
(6, 'ProTrek_large.png', 6, '2023-05-12 00:49:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctanhsanpham`
--

CREATE TABLE `ctanhsanpham` (
  `id` int(11) NOT NULL,
  `Anh` varchar(250) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctanhsanpham`
--

INSERT INTO `ctanhsanpham` (`id`, `Anh`, `MaSP`, `created_at`, `updated_at`) VALUES
(1, 'GM-2140GEM-2ADR_1.png', 1, '2023-05-12 00:53:19', NULL),
(2, 'GM-2140GEM-2ADR_2.png', 1, '2023-05-12 00:53:19', NULL),
(3, 'GM-114GEM-1A9DR_1.png', 2, '2023-05-12 00:53:19', NULL),
(4, 'GM-114GEM-1A9DR_2.png', 2, '2023-05-12 00:53:19', NULL),
(5, 'GG-B100Y-1ADR_1.png', 3, '2023-05-12 00:53:19', NULL),
(6, 'GG-B100Y-1ADR_2.png', 3, '2023-05-12 00:53:19', NULL),
(7, 'BGD-565XG-2_1.png', 4, '2023-05-12 00:53:19', NULL),
(8, 'BGD-565XG-2_2.png', 4, '2023-05-12 00:53:19', NULL),
(9, 'BG-169HRB-7_1.png', 5, '2023-05-12 00:53:19', NULL),
(10, 'BG-169HRB-7_2.png', 5, '2023-05-12 00:53:19', NULL),
(11, 'BA-110XRG-4A_1.png', 6, '2023-05-12 00:53:19', NULL),
(12, 'BA-110XRG-4A_2.png', 6, '2023-05-12 00:53:20', NULL),
(13, 'ECB-950MP-1ADF_1.png', 7, '2023-05-12 00:53:20', NULL),
(14, 'ECB-950MP-1ADF_2.png', 7, '2023-05-12 00:53:20', NULL),
(15, 'ECB-900MP-1ADF_1.png', 8, '2023-05-12 00:53:20', NULL),
(16, 'ECB-900MP-1ADF_2.png', 8, '2023-05-12 00:53:20', NULL),
(17, 'ECB-2000MFG-1A_1.png', 9, '2023-05-12 00:53:20', NULL),
(18, 'ECB-2000MFG-1A_2.png', 9, '2023-05-12 00:53:20', NULL),
(19, 'SHE-4554PGL-8AUDF_1.png', 10, '2023-05-12 00:53:20', NULL),
(20, 'SHE-4554PGL-8AUDF_2.png', 10, '2023-05-12 00:53:20', NULL),
(21, 'SHE-4541G-9A_1.png', 11, '2023-05-12 00:53:20', NULL),
(22, 'SHE-4541G-9A_2.png', 11, '2023-05-12 00:53:20', NULL),
(23, 'SHE-4539FPL-7A_1.png', 12, '2023-05-12 00:53:20', NULL),
(24, 'SHE-4539FPL-7A_2.png', 12, '2023-05-12 00:53:20', NULL),
(25, 'MQ-24S-8B_1.png', 13, '2023-05-12 00:53:20', NULL),
(26, 'MQ-24S-8B_2.png', 13, '2023-05-12 00:53:20', NULL),
(27, 'LF-10WH-1_1.png', 14, '2023-05-12 00:53:20', NULL),
(28, 'LF-10WH-1_2.png', 14, '2023-05-12 00:53:20', NULL),
(29, 'WS-1500H-5AV_1.png', 15, '2023-05-12 00:53:20', NULL),
(30, 'WS-1500H-5AV_2.png', 15, '2023-05-12 00:53:20', NULL),
(31, 'F-94WA-9DG_1.png', 16, '2023-05-12 00:53:20', NULL),
(32, 'F-91WS-7DF_1.png', 17, '2023-05-12 00:53:20', NULL),
(33, 'PRG-340-3DR_1.png', 18, '2023-05-12 00:53:20', NULL),
(34, 'PRG-340-3DR_2.png', 18, '2023-05-12 00:53:20', NULL),
(35, 'PRG-30B-4_1.png', 19, '2023-05-12 00:53:20', NULL),
(36, 'PRG-30B-4_2.png', 19, '2023-05-12 00:53:20', NULL),
(37, 'PRT-B70BE-1_1.png', 20, '2023-05-12 00:53:20', NULL),
(38, 'PRT-B70BE-1_2.png', 20, '2023-05-12 00:53:20', NULL),
(39, 'GBD-H2000-2DR_1.png', 21, '2023-05-13 20:03:30', NULL),
(40, 'GBD-H2000-2DR_2.png', 21, '2023-05-13 20:03:30', NULL),
(41, 'GBD-H2000-2DR_3.png', 21, '2023-05-13 20:03:30', NULL),
(42, 'GBD-H2000-1BDR_1.png', 22, '2023-05-13 20:03:30', NULL),
(43, 'GBD-H2000-1BDR_2.png', 22, '2023-05-13 20:03:30', NULL),
(44, 'GBD-H2000-1BDR_3.png', 22, '2023-05-13 20:03:30', NULL),
(45, 'GBD-H2000-1BDR_4.png', 22, '2023-05-13 20:03:30', NULL),
(46, 'GBD-H2000-1ADR_1.png', 23, '2023-05-13 20:03:30', NULL),
(47, 'GBD-H2000-1ADR_2.png', 23, '2023-05-13 20:03:30', NULL),
(48, 'GBD-H2000-1ADR_3.png', 23, '2023-05-13 20:03:30', NULL),
(49, 'GBD-H2000-1ADR_4.png', 23, '2023-05-13 20:03:30', NULL),
(50, 'GBD-H2000-2DR_1.png', 21, '2023-05-13 23:34:12', NULL),
(51, 'GBD-H2000-2DR_2.png', 21, '2023-05-13 23:34:13', NULL),
(52, 'GBD-H2000-2DR_3.png', 21, '2023-05-13 23:34:13', NULL),
(53, 'GBD-H2000-1BDR_1.png', 22, '2023-05-13 23:34:13', NULL),
(54, 'GBD-H2000-1BDR_2.png', 22, '2023-05-13 23:34:13', NULL),
(55, 'GBD-H2000-1BDR_3.png', 22, '2023-05-13 23:34:13', NULL),
(56, 'GBD-H2000-1BDR_4.png', 22, '2023-05-13 23:34:13', NULL),
(57, 'GBD-H2000-1ADR_1.png', 23, '2023-05-13 23:34:13', NULL),
(58, 'GBD-H2000-1ADR_2.png', 23, '2023-05-13 23:34:13', NULL),
(59, 'GBD-H2000-1ADR_3.png', 23, '2023-05-13 23:34:13', NULL),
(60, 'GBD-H2000-1ADR_4.png', 23, '2023-05-13 23:34:13', NULL),
(61, 'GM-B2100GD-9ADR_1.png', 24, '2023-05-13 23:34:13', NULL),
(62, 'GM-B2100GD-9ADR_2.png', 24, '2023-05-13 23:34:13', NULL),
(63, 'GM-B2100GD-9ADR_3.png', 24, '2023-05-13 23:34:13', NULL),
(64, 'GMA-S120TB-8ADR_1.png', 25, '2023-05-13 23:34:13', NULL),
(65, 'GMA-S120TB-8ADR_2.png', 25, '2023-05-13 23:34:13', NULL),
(66, 'GMA-S110TB-8ADR_1.png', 26, '2023-05-13 23:34:13', NULL),
(67, 'GMA-S110TB-8ADR_2.png', 26, '2023-05-13 23:34:13', NULL),
(68, 'GA-2100FT-8ADR_1.png', 27, '2023-05-13 23:34:13', NULL),
(69, 'GA-2100FT-8ADR_2.png', 27, '2023-05-13 23:34:13', NULL),
(70, 'DW-5600YIB23-8DR_1.png', 28, '2023-05-13 23:34:13', NULL),
(71, 'DW-5600YIB23-8DR_2.png', 28, '2023-05-13 23:34:13', NULL),
(72, 'G-B001MVE-9DR_1.png', 29, '2023-05-13 23:34:13', NULL),
(73, 'G-B001MVE-9DR_2.png', 29, '2023-05-13 23:34:13', NULL),
(74, 'G-B001MVB-8DR_1.png', 30, '2023-05-13 23:34:13', NULL),
(75, 'G-B001MVB-8DR_2.png', 30, '2023-05-13 23:34:13', NULL),
(76, 'G-B001MVA-1DR_1.png', 31, '2023-05-13 23:34:13', NULL),
(77, 'G-B001MVA-1DR_2.png', 31, '2023-05-13 23:34:13', NULL),
(78, 'GMA-S2100GA-3ADR_1.png', 32, '2023-05-13 23:34:13', NULL),
(79, 'GMA-S2100GA-3ADR_2.png', 32, '2023-05-13 23:34:13', NULL),
(80, 'GA-700RGB-1ADR_1.png', 33, '2023-05-13 23:34:13', NULL),
(81, 'GA-700RGB-1ADR_2.png', 33, '2023-05-13 23:34:13', NULL),
(82, 'DW-6900SBY-2DR_1.png', 34, '2023-05-13 23:34:13', NULL),
(83, 'DW-6900SBY-2DR_2.png', 34, '2023-05-13 23:34:13', NULL),
(84, 'GA-110GL-4ADR_1.png', 35, '2023-05-13 23:34:13', NULL),
(85, 'GA-110GL-4ADR_2.png', 35, '2023-05-13 23:34:13', NULL),
(86, 'GA-110GL-4ADR_3.png', 35, '2023-05-13 23:34:13', NULL),
(87, 'BG-169U-8BDR_1.png', 36, '2023-05-13 23:54:12', NULL),
(88, 'BG-169U-8BDR_2.png', 36, '2023-05-13 23:54:12', NULL),
(89, 'BG-169U-4BDR_1.png', 37, '2023-05-13 23:54:12', NULL),
(90, 'BG-169U-4BDR_2.png', 37, '2023-05-13 23:54:12', NULL),
(91, 'BG-169U-3DR_1.png', 38, '2023-05-13 23:54:12', NULL),
(92, 'BG-169U-3DR_2.png', 38, '2023-05-13 23:54:12', NULL),
(93, 'BG-169U-1CDR_1.png', 39, '2023-05-13 23:54:12', NULL),
(94, 'BG-169U-1CDR_2.png', 39, '2023-05-13 23:54:12', NULL),
(95, 'BGD-565SC-3DR_1.png', 40, '2023-05-13 23:54:12', NULL),
(96, 'BGD-565SC-3DR_2.png', 40, '2023-05-13 23:54:12', NULL),
(97, 'BA-110X-7A1DR_1.png', 41, '2023-05-13 23:54:12', NULL),
(98, 'BA-110X-7A1DR_2.png', 41, '2023-05-13 23:54:12', NULL),
(99, 'BA-110XBE-7ADR_1.png', 42, '2023-05-13 23:54:12', NULL),
(100, 'ECB-40MP-1ADF_1.png', 43, '2023-05-13 23:54:12', NULL),
(101, 'ECB-40MP-1ADF_2.png', 43, '2023-05-13 23:54:12', NULL),
(102, 'ECB-40MP-1ADF_3.png', 43, '2023-05-13 23:54:12', NULL),
(103, 'ECB-40P-1ADF_1.png', 44, '2023-05-13 23:54:12', NULL),
(104, 'ECB-40P-1ADF_2.png', 44, '2023-05-13 23:54:12', NULL),
(105, 'SHE-4556SPG-5AUDF_1.png', 45, '2023-05-13 23:54:12', NULL),
(106, 'SHE-4556SPG-5AUDF_2.png', 45, '2023-05-13 23:54:12', NULL),
(107, 'SHE-4556PGL-7AUDF_1.png', 46, '2023-05-13 23:54:12', NULL),
(108, 'SHE-4556PGL-7AUDF_2.png', 46, '2023-05-13 23:54:12', NULL),
(109, 'PRG-240-3DR_1.png', 47, '2023-05-13 23:54:12', NULL),
(110, 'PRG-240-5DR_1.png', 48, '2023-05-13 23:54:12', NULL),
(111, 'PRG-260-2DR_1.png', 49, '2023-05-13 23:54:12', NULL),
(112, 'PRG-30-1DR_1.png', 50, '2023-05-13 23:54:13', NULL),
(113, 'PRG-30-2DR_1.png', 51, '2023-05-13 23:54:13', NULL),
(114, 'PRG-30-5DR_1.png', 52, '2023-05-13 23:54:13', NULL),
(115, 'PRG-300-1A2DR_1.png', 53, '2023-05-13 23:54:13', NULL),
(116, 'SHB-100CG-4ADR_1.png', 55, '2023-05-14 13:42:51', NULL),
(117, 'SHB-100D-4A_1.png', 56, '2023-05-14 13:42:51', NULL),
(118, 'SHE-3028D-7A_1.png', 57, '2023-05-14 13:42:51', NULL),
(119, 'SHE-3028L-4A_1.png', 58, '2023-05-14 13:42:51', NULL),
(120, 'SHE-3034D-7A_1.png', 59, '2023-05-14 13:42:51', NULL),
(121, 'SHE-3034GL-7A_1.png', 60, '2023-05-14 13:42:51', NULL),
(122, 'SHE-3034GL-7A2_1.png', 61, '2023-05-14 13:42:51', NULL),
(123, 'SHE-3034GL-7B_1.png', 62, '2023-05-14 13:42:51', NULL),
(124, 'SHE-3034PG-9A_1.png', 63, '2023-05-14 13:42:51', NULL),
(125, 'SHE-4057PGL-7B_1.png', 64, '2023-05-14 13:42:51', NULL),
(126, 'SHE-4532PGL-7A_1.png', 65, '2023-05-14 13:42:51', NULL),
(127, 'LWA-300H-7EV_1.png', 66, '2023-05-14 13:47:51', NULL),
(128, 'LWA-300HB-1EV_1.png', 67, '2023-05-14 13:47:51', NULL),
(129, 'MTP-M300D-4AV_1.png', 68, '2023-05-14 13:47:51', NULL),
(130, 'MTP-M300D-7AV_1.png', 69, '2023-05-14 13:47:51', NULL),
(131, 'MTP-M300L-1AV_1.png', 70, '2023-05-14 13:47:51', NULL),
(132, 'MTP-M300L-7AV_1.png', 71, '2023-05-14 13:47:51', NULL),
(133, 'MTP-M305D-7AV_1.png', 72, '2023-05-14 13:47:51', NULL),
(134, 'MTP-M305L-1AV_1.png', 73, '2023-05-14 13:47:51', NULL),
(135, 'MTP-M305L-2AV_1.png', 74, '2023-05-14 13:47:52', NULL),
(136, 'MTP-M305L-7AV_1.png', 75, '2023-05-14 13:47:52', NULL),
(137, 'W-201-1BV_1.png', 76, '2023-05-14 13:47:52', NULL),
(138, 'BG-169PB-4_1.png', 77, '2023-05-14 13:54:02', NULL),
(139, 'BG-169PB-4_2.png', 77, '2023-05-14 13:54:02', NULL),
(140, 'BG-169PB-4_3.png', 77, '2023-05-14 13:54:02', NULL),
(141, 'BG-169PB-7_1.png', 78, '2023-05-14 13:54:02', NULL),
(142, 'BG-169PB-7_2.png', 78, '2023-05-14 13:54:02', NULL),
(143, 'BGA-320-3A_1.png', 79, '2023-05-14 13:54:02', NULL),
(144, 'BGA-320-3A_2.png', 79, '2023-05-14 13:54:02', NULL),
(145, 'BGA-320-4A_1.png', 80, '2023-05-14 13:54:02', NULL),
(146, 'BGA-320-4A_2.png', 80, '2023-05-14 13:54:02', NULL),
(147, 'BGA-320-7A1_1.png', 81, '2023-05-14 13:54:02', NULL),
(148, 'BGA-320-7A1_2.png', 81, '2023-05-14 13:54:02', NULL),
(149, 'BGA-320-9A_1.png', 82, '2023-05-14 13:54:02', NULL),
(150, 'BGA-320-9A_2.png', 82, '2023-05-14 13:54:02', NULL),
(151, 'BGA-320-9A_3.png', 82, '2023-05-14 13:54:02', NULL),
(152, 'EQB-1200AT-1A_1.png', 83, '2023-05-14 14:02:18', NULL),
(153, 'EQB-1200AT-1A_2.png', 83, '2023-05-14 14:02:18', NULL),
(154, 'EFV-640L-2AV_1.png', 84, '2023-05-14 14:02:18', NULL),
(155, 'EFV-640DC-3AV_1.png', 85, '2023-05-14 14:02:19', NULL),
(156, 'EFV-640D-5AV_1.png', 86, '2023-05-14 14:02:19', NULL),
(157, 'EFV-640D-2AV_1.png', 87, '2023-05-14 14:02:19', NULL),
(158, 'EFV-640D-1AV_1.png', 88, '2023-05-14 14:02:19', NULL),
(159, 'EFB-710D-7AV_1.png', 89, '2023-05-14 14:02:19', NULL),
(160, 'EFB-710D-2AV_1.png', 90, '2023-05-14 14:02:19', NULL),
(161, 'EFB-710D-2AV_2.png', 90, '2023-05-14 14:02:19', NULL),
(162, 'ECB-2000NIS-1A_1.png', 91, '2023-05-14 14:02:19', NULL),
(163, 'ECB-2000NIS-1A_2.png', 91, '2023-05-14 14:02:19', NULL),
(164, 'ECB-2000NIS-1A_3.png', 91, '2023-05-14 14:02:19', NULL),
(165, 'ECB-950DB-2A_1.png', 92, '2023-05-14 14:02:19', NULL),
(166, 'ECB-40DB-1A_1.png', 93, '2023-05-14 14:02:19', NULL),
(167, 'ECB-40DB-1A_2.png', 93, '2023-05-14 14:02:19', NULL),
(168, 'PRG-600YB-1_1.png', 94, '2023-05-14 14:05:07', NULL),
(169, 'PRG-650YL-3_1.png', 95, '2023-05-14 14:05:07', NULL),
(170, 'PRT-B50T-7_1.png', 96, '2023-05-14 14:05:07', NULL),
(171, 'PRT-B50YT-1_1.png', 97, '2023-05-14 14:05:07', NULL),
(172, 'PRW-6000SG-3_1.png', 98, '2023-05-14 14:05:07', NULL),
(173, 'PRW-6000SYT-1DR_1.png', 99, '2023-05-14 14:05:07', NULL),
(174, 'GBD-H2000-1A9_1.png', 100, '2023-05-14 14:05:13', NULL),
(175, 'GBD-H2000-1A9_2.png', 100, '2023-05-14 14:05:14', NULL),
(176, 'GBD-H2000-1A9_3.png', 100, '2023-05-14 14:05:14', NULL),
(177, 'GBX-100TT-8_1.png', 101, '2023-05-14 14:05:14', NULL),
(178, 'GBX-100TT-8_2.png', 101, '2023-05-14 14:05:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctdonhang`
--

CREATE TABLE `ctdonhang` (
  `id` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaMua` int(11) DEFAULT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctdonhang`
--

INSERT INTO `ctdonhang` (`id`, `SoLuong`, `GiaMua`, `MaDH`, `MaSP`, `created_at`, `updated_at`) VALUES
(1, 1, 8636000, 1, 20, '2023-05-12 01:28:41', '2023-05-12 01:28:41'),
(2, 2, 12363000, 1, 3, '2023-05-12 01:28:41', '2023-05-12 01:28:41'),
(3, 1, 907000, 1, 17, '2023-05-12 01:28:41', '2023-05-12 01:28:41'),
(4, 3, 1259000, 2, 15, '2023-05-12 01:39:40', '2023-05-12 01:39:40'),
(5, 1, 4145000, 2, 5, '2023-05-12 01:39:40', '2023-05-12 01:39:40'),
(6, 1, 12363000, 3, 3, '2023-05-12 01:41:18', '2023-05-12 01:41:18'),
(7, 1, 492000, 3, 16, '2023-05-12 01:41:18', '2023-05-12 01:41:18'),
(8, 1, 7353000, 3, 18, '2023-05-12 01:41:18', '2023-05-12 01:41:18'),
(9, 2, 4343000, 4, 6, '2023-05-12 01:43:00', '2023-05-12 01:43:00'),
(10, 1, 4072000, 4, 4, '2023-05-12 01:43:00', '2023-05-12 01:43:00'),
(11, 1, 4145000, 4, 5, '2023-05-12 01:43:00', '2023-05-12 01:43:00'),
(12, 1, 6909000, 5, 7, '2023-05-12 01:53:12', '2023-05-12 01:53:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cthoadonnhap`
--

CREATE TABLE `cthoadonnhap` (
  `id` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `DonGiaNhap` int(11) DEFAULT NULL,
  `MaHDN` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cthoadonnhap`
--

INSERT INTO `cthoadonnhap` (`id`, `SoLuong`, `DonGiaNhap`, `MaHDN`, `MaSP`, `created_at`, `updated_at`) VALUES
(1, 5, 10000000, 1, 1, '2023-05-12 01:03:56', NULL),
(2, 5, 10000000, 2, 2, '2023-05-12 01:03:56', NULL),
(3, 5, 10000000, 3, 3, '2023-05-12 01:03:56', NULL),
(4, 5, 10000000, 4, 4, '2023-05-12 01:03:56', NULL),
(5, 5, 10000000, 5, 5, '2023-05-12 01:03:56', NULL),
(6, 5, 10000000, 6, 6, '2023-05-12 01:03:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ctkho`
--

CREATE TABLE `ctkho` (
  `id` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `MaKho` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `ctkho`
--

INSERT INTO `ctkho` (`id`, `SoLuong`, `MaKho`, `MaSP`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 1, '2023-05-12 00:57:15', NULL),
(2, 10, 2, 1, '2023-05-12 00:57:16', NULL),
(3, 10, 1, 2, '2023-05-12 00:57:16', NULL),
(4, 10, 2, 2, '2023-05-12 00:57:16', NULL),
(5, 10, 3, 2, '2023-05-12 00:57:16', NULL),
(6, 10, 5, 3, '2023-05-12 00:57:16', NULL),
(7, 10, 6, 3, '2023-05-12 00:57:16', NULL),
(8, 10, 2, 4, '2023-05-12 00:57:16', NULL),
(9, 10, 3, 4, '2023-05-12 00:57:16', NULL),
(10, 10, 3, 5, '2023-05-12 00:57:16', NULL),
(11, 10, 4, 5, '2023-05-12 00:57:16', NULL),
(12, 10, 5, 5, '2023-05-12 00:57:16', NULL),
(13, 10, 6, 5, '2023-05-12 00:57:16', NULL),
(14, 10, 1, 6, '2023-05-12 00:57:16', NULL),
(15, 10, 3, 6, '2023-05-12 00:57:16', NULL),
(16, 10, 1, 7, '2023-05-12 00:57:16', NULL),
(17, 10, 4, 7, '2023-05-12 00:57:16', NULL),
(18, 10, 2, 8, '2023-05-12 00:57:16', NULL),
(19, 10, 5, 8, '2023-05-12 00:57:16', NULL),
(20, 10, 3, 9, '2023-05-12 00:57:16', NULL),
(21, 10, 4, 9, '2023-05-12 00:57:16', NULL),
(22, 10, 5, 10, '2023-05-12 00:57:16', NULL),
(23, 10, 6, 10, '2023-05-12 00:57:16', NULL),
(24, 10, 5, 11, '2023-05-12 00:57:16', NULL),
(25, 10, 6, 11, '2023-05-12 00:57:16', NULL),
(26, 10, 4, 12, '2023-05-12 00:57:16', NULL),
(27, 10, 6, 12, '2023-05-12 00:57:16', NULL),
(28, 10, 1, 13, '2023-05-12 00:57:16', NULL),
(29, 10, 6, 13, '2023-05-12 00:57:16', NULL),
(30, 10, 3, 14, '2023-05-12 00:57:16', NULL),
(31, 10, 6, 14, '2023-05-12 00:57:16', NULL),
(32, 10, 1, 15, '2023-05-12 00:57:16', NULL),
(33, 10, 2, 15, '2023-05-12 00:57:16', NULL),
(34, 10, 5, 15, '2023-05-12 00:57:16', NULL),
(35, 10, 6, 15, '2023-05-12 00:57:16', NULL),
(36, 10, 2, 16, '2023-05-12 00:57:16', NULL),
(37, 10, 3, 16, '2023-05-12 00:57:16', NULL),
(38, 10, 1, 17, '2023-05-12 00:57:16', NULL),
(39, 10, 4, 17, '2023-05-12 00:57:16', NULL),
(40, 10, 5, 18, '2023-05-12 00:57:16', NULL),
(41, 10, 6, 18, '2023-05-12 00:57:16', NULL),
(42, 10, 1, 19, '2023-05-12 00:57:16', NULL),
(43, 10, 3, 19, '2023-05-12 00:57:16', NULL),
(44, 10, 6, 19, '2023-05-12 00:57:16', NULL),
(45, 10, 2, 20, '2023-05-12 00:57:16', NULL),
(46, 10, 6, 20, '2023-05-12 00:57:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cttintuc`
--

CREATE TABLE `cttintuc` (
  `id` int(11) NOT NULL,
  `Anh` varchar(250) DEFAULT NULL,
  `NoiDung` text DEFAULT NULL,
  `MaTT` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cttintuc`
--

INSERT INTO `cttintuc` (`id`, `Anh`, `NoiDung`, `MaTT`, `created_at`, `updated_at`) VALUES
(1, 'CTTT1_1.png', 'Đồng hồ Baby-G BGD-570BC-3\r\nModel đầu tiên chính là một chiếc đồng hồ Baby-G điện tử có kiểu dáng độc đáo. Vỏ đồng hồ hình tròn và có kích thước nhỏ gọn, còn phần mặt số bên trong là hình vuông, có một màn hình LCD để hiển thị các thông tin cần thiết về giờ hiện hành, lịch, cũng như để sử dụng các chức năng. Toàn bộ mẫu đồng hồ Casio Baby-G này được bao phủ bởi tông màu xanh bạc hà tươi mát và trông rất đẹp mắt. Trên mặt đồng hồ có các họa tiết cây cọ, cánh buồm và con sóng màu hồng, tím. Tổng thể mang đến một chút hoài cổ nhưng cũng đầy lãng mạn, gợi nhớ đến những bãi biển mùa hè vào lúc hoàng hôn. Với item này, chắc chắn chuyến đi chơi biển vào mùa hè của bạn sẽ trở nên thú vị và sôi động hơn đấy nhé!', 1, '2023-05-12 01:01:08', NULL),
(2, 'CTTT1_2.png', 'Đồng hồ Baby-G BGA-280-3A\r\nĐây là mẫu đồng hồ Baby-G mới cho ra mắt trong thời gian gần đây. Toàn bộ đồng hồ được bao phủ bởi tông màu bạc hà nhẹ nhàng, không bóng. Ngay cả mặt số cũng có màu xanh lấp lánh rất đẹp mắt. Còn phần gờ đồng hồ là màu trắng, kết hợp hài hòa mang đến một diện mạo tươi mới và đầy dễ thương. Mẫu đồng hồ Baby-G này được Casio ra mắt lấy cảm hứng từ thời trang đường phố Los Angeles. Phần vỏ tròn và các vạch giờ bằng kim loại trông rất thể thao, thích hợp kết hợp cùng nhiều phong cách thời trang khác nhau. Trong mùa hè này, BGA-280-3A được dự đoán sẽ lên ngôi, và các cô nàng thời thượng đã bắt đầu săn hàng rồi đấy nhé!', 1, '2023-05-12 01:01:08', NULL),
(3, 'CTTT1_3.png', 'Đồng hồ Baby-G BG-169R-3\r\nBG-169R-3 là một chiếc đồng hồ Baby-G có giá thành tương đối rẻ vì thuộc dòng đồng hồ điện tử. Tuy nhiên, model này lại trở thành item bán chạy hàng đầu chính nhờ màu sắc siêu dễ thương cùng thiết kế gọn nhẹ, xinh xắn. Bộ vỏ được bao phủ bởi xanh bạc hà pastel, xen lẫn một số chi tiết màu trắng đơn giản cho nút bấm. Bên trên mặt đồng hồ còn có hai thanh kim loại bảo vệ bề mặt khỏi bị trầy xước khi va chạm. Về tính năng, mẫu đồng hồ Casio Baby-G này cũng giống như các model được giới thiệu ở trên. Chúng được trang bị đầy đủ các chức năng cơ bản của dòng Baby-G như đồng hồ bấm thời gian, đồng hồ đếm ngược, lịch tự động, giờ thế giới,... Đặc biệt, đồng hồ có đèn Led để xem thông tin dễ dàng trong bóng đêm. Khả năng chống nước ở mức 100M, đáp ứng nhu cầu sử dụng hàng ngày như tắm rửa hay bơi lội.', 1, '2023-05-12 01:01:08', NULL),
(4, 'TT2.png', '1. Thiết kế mặt đồng hồ\r\nHiện nay các hãng đồng hồ nổi tiếng trên thế giới có rất nhiều sản phẩm đồng hồ với kiểu dáng, mẫu mã đa dạng khác nhau. Tuy nhiên các mẫu đồng hồ được thiết chủ yếu là mặt vuông, mặt tròn, mặt oval, mặt hình chữ nhật. Trong số đó thì đồng hồ có kiểu dáng mặt vuông và mặt tròn là hai mẫu đồng hồ được người tiêu dùng ưa chuộng nhất bởi phong cách cổ điển, lịch lãm và sang trọng. Đồng hồ G-Shock của Casio với thiết kế hầu hết là mặt tròn và mặt vuông. Hai kiểu thiết kế này sẽ giúp bạn dễ dàng phối hợp cùng với nhiều loại trang phục trong nhiều hoàn cảnh khác nhau để bạn có thể thể hiện được cá tính riêng của mình.', 2, '2023-05-12 01:01:08', NULL),
(5, 'CTTT2_1.png', '2. Đồng hồ G-Shock mặt tròn\r\nVòng tròn từ xưa tới nay luôn được coi là biểu tượng cho tính tuần hoàn của thời gian. Người chọn mặt đồng hồ tròn là người có phong cách mang hơi hướng cổ điển. Đồng hồ G-Shock mặt tròn là thiết kế phổ biến và chiếm hơn 80% các mẫu đồng hồ thể thao của Casio. Tuy là dòng đồng hồ thể thao dành cho phái mạnh nhưng đồng hồ G-Shock được thiết kế với nhiều kích cỡ mặt khác nhau phù hợp với phái mạnh.\r\nĐối với các bạn nam có cổ tay to nên chọn đồng hồ G-Shock mặt tròn có kích thước lớn từ 42mm trở lên. Mặt đồng hồ lớn kết hợp với dây đeo bằng nhựa hoặc bằng da ôm vừa vặn cổ tay sẽ giúp cho phái mạnh trông mạnh mẽ và cá tính hơn.\r\nMặc dù đồng hồ G-Shock là dòng đồng hồ thể thao dành cho phái mạnh nhưng các nhà thiết kế của Casio đã tạo ra những mẫu đồng hồ có kích thước mặt vừa phải phù hợp với các bạn nam có cổ tay nhỏ. Đối với các bạn có cổ tay nhỏ nên chọn đồng hồ có dây đeo mỏng nhẹ, kích thước mặt 36mm là lựa chọn tối ưu sẽ tạo cho bạn cảm giác thoải mái, vừa vặn với cổ tay, mà vẫn thể hiện được chất riêng của mình.', 2, '2023-05-12 01:01:08', NULL),
(6, 'CTTT2_2.png', '3. Đồng hồ G-Shock mặt vuông\r\nĐồng hồ G-Shock mặt vuông đầu tiên được ra đời vào năm 1983. DW-5600E là mẫu thiết kế nguyên bản, đơn giản nhưng ấn tượng với những đường nét góc cạnh tạo cá tính mạnh mẽ. Khả năng chống sốc, chống va đập gần như tuyệt đối của đồng hồ G-Shock mà ở các hãng đồng hồ khác không có được. Điều này đã giúp cho chiếc đồng hồ G-Shock Casio ghi điểm trong lòng người đam mê đồng hồ.\r\nNgoài các thiết kế mặt vuông cổ điển, Casio cũng cho ra đời những mẫu đồng hồ G-Shock thiết kế phá cách dựa trên mẫu thiết kế nguyên bản. Mẫu tân cổ điển được phối hợp với vỏ kim loại vô cùng sang trọng, thiết kế hỗ trợ nhiều tính năng hơn cho người dùng và phù hợp với cả bạn nam có cổ tay to hoặc nhỏ.\r\nĐồng hồ mặt tròn hay mặt vuông đều có những vẻ đẹp và sức hút riêng của nó. Mỗi loại đồng hồ phù hợp với những cá tính khác nhau. Việc lựa chọn hình dáng mặt đồng hồ cũng nói lên rất nhiều về phong cách thời trang của người đeo cũng như cá tính của họ.\r\nHãy lựa chọn cho mình những chiếc đồng hồ G-Shock thật phù hợp để thể hiện được “chất” riêng của mình, bạn nhé!', 2, '2023-05-12 01:01:08', NULL),
(7, 'CTTT3_1.png', '1. Đồng hồ G Shock DW-5600LS\r\nDW-5600LS là phiên bản mới của mẫu đồng hồ G Shock mặt vuông cổ điển của thập niên 80. Với mẫu thiết kế làm từ vật liệu bán trong suốt với 2 phiên bản màu huỳnh quang xanh và trắng mang đến một màu sắc tươi mới trẻ trung phù hợp cho cả nam và nữ. Đây là một sự lựa chọn lý tưởng cho các cặp đôi khi kết hợp với trang phục mùa hè năng động.', 3, '2023-05-12 01:01:08', NULL),
(8, 'CTTT3_2.png', '2. Đồng hồ G Shock GA-2100\r\nGA-2100 là mẫu đồng hồ G Shock được sử dụng cấu trúc lõi carbon. Lớp vỏ đồng hồ làm bằng nhựa mịn pha lẫn sợi carbon tạo nên độ bền vượt trội so với các dòng đồng hồ G Shock khác.\r\nGA-2100 được thiết kế với gam màu trung tính là màu đen huyền bí và màu đỏ nổi bật nên chiếc đồng hồ G Shock này phù hợp với cả nam lẫn nữ. Kích thước mặt đồng hồ là 45,5mm khá lớn so với cổ tay của nữ. Tuy nhiên độ dày của mặt đồng hồ khá mỏng chỉ 11,8mm và trọng lượng chiếc đồng hồ G Shock này chỉ 51gram nên vẫn phù hợp với các bạn nữ có cổ tay to yêu thích sự cá tính mạnh mẽ.', 3, '2023-05-12 01:01:08', NULL),
(9, 'TT3.png', '3. Đồng hồ G Shock GAX-100\r\nGAX-100 là mẫu đồng hồ G Shock được giới thiệu vào mùa hè 2018. Vẫn là mẫu đồng hồ thu hút giới trẻ với thiết kế cá tính mạnh mẽ với cùng với sự bền bỉ tuyệt đối, đây cũng là mẫu đồng hồ được yêu thích của nhiều vận động viên nổi tiếng trên thế giới. ', 3, '2023-05-12 01:01:08', NULL),
(10, 'TT4.png', 'Ngày 17/02, Công ty cổ phần Văn Phú Watch tổ chức chương trình “Hội nghị trưng bày và giới thiệu sản phẩm mới tháng 2/2023” nhằm giới thiệu các sản phẩm đồng hồ Casio mới đến quý đại lý.', 4, '2023-05-12 01:01:08', NULL),
(11, 'CTTT4_1.png', 'Bên cạnh việc giới thiệu đến quý đại lý những dòng sản phẩm mới nhất, Văn Phú Watch còn chia sẻ thêm chính sách bán hàng đến quý đại lý. Chương trình là hoạt động thường niên nhằm kết nối, duy trì mối quan hệ hợp tác thân thiện giữa công ty và quý đại lý.', 4, '2023-05-12 01:01:08', NULL),
(12, 'CTTT4_2.png', 'Cuối chương trình, công ty cũng đã có phần giải đáp thêm những thắc mắc đến quý đại lý để những thông tin về sản phẩm cũng như chính sách bán hàng được rõ ràng hơn, từ đó quý đại lý có thể tư vấn và hỗ trợ người tiêu dùng một cách đầy đủ, nhanh chóng.\r\nHi vọng với hoạt động giới thiệu sản phẩm mới thường xuyên cùng với các chính sách bán hàng hấp dẫn, Văn Phú Watch sẽ tiếp tục nhận được sự tin tưởng, đồng hành của quý đại lý và ngày càng thắt chặt hơn mối quan hệ hợp tác trong thời gian tới.', 4, '2023-05-12 01:01:08', NULL),
(13, 'CTTT5_1.png', 'Đồng hồ không chỉ là một vật dụng dùng để xem giờ mà nó còn là món phụ kiện giúp làm nổi bật phong cách thời trang của các bạn nữ. Đó cũng là lý do vì sao đồng hồ Casio luôn thường xuyên cho ra mắt những mẫu mã khác nhau. Sau đây, hãy cùng chúng tôi tìm hiểu một số tips mix đồng hồ Casio Baby-G thật sành điệu nhé! ', 5, '2023-05-12 01:01:08', NULL),
(14, 'CTTT5_2.png', 'Bước 1: Phải chọn được một chiếc đồng hồ Baby-G phù hợp : \r\nDòng đồng hồ Casio Baby-G có phong cách chung là trẻ trung, năng động, thích hợp cho giới trẻ. Tuy nhiên, Baby-G cũng có nhiều mẫu mã, kiểu dáng khác nhau như: đồng hồ mặt vuông, đồng hồ mặt tròn, đồng hồ điện tử, đồng hồ dây kim loại… Trước khi mix đồng hồ, bạn phải chọn được một chiếc Casio Baby-G phù hợp với mình. Phù hợp ở đây nghĩa là nó tạo sự thoải mái khi đeo, không quá lớn hoặc quá nhỏ với cổ tay. Màu sắc của đồng hồ cũng phải phù hợp với nước da… ', 5, '2023-05-12 01:01:08', NULL),
(15, 'CTTT5_3.png', 'Bước 2: Mix đồng hồ ton sur ton với trang phục :\r\nĐồng hồ là một món phụ kiện, mà phụ kiện chỉ phát huy được vai trò của nó nếu như bạn áp dụng đúng quy tắc phối màu ton sur ton trong thời trang. Màu sắc của đồng hồ tương đồng với màu trang phục hoặc giày dép, thắt lưng, túi xách… Chẳng hạn, bạn có thể kết hợp một chiếc áo đỏ với đồng hồ Baby-G đỏ cùng giày và quần đen. Đồng hồ Baby-G màu hồng pastel sẽ thích hợp để đi cùng những trang phục màu trắng. Hoặc khi đi chơi, màu của đồng hồ tốt nhất nên cùng màu với túi xách hoặc giày nếu như bạn diện váy áo khác màu. Có một điểm chung giữa các món phụ kiện sẽ khiến tổng thể set đồ của bạn trông hài hòa và dễ chịu hơn. Bạn cũng sẽ ghi điểm và chứng tỏ là một người có gu thẩm mỹ trong mắt những người xung quanh. ', 5, '2023-05-12 01:01:08', NULL),
(16, 'TT5.png', 'Bước 3: Hãy mix đồng hồ Baby-G cùng vòng tay nếu muốn cá tính và sành điệu :\r\nHầu hết các mẫu đồng hồ Casio Baby-G đều được làm bằng nhựa cao cấp, vì thế nên bạn không cần quá lo lắng các mẫu vòng tay sẽ làm ảnh hưởng đến đồng hồ. Ngược lại, nếu biết cách chọn lựa vòng tay phù hợp thì sẽ khiến cho bạn trông sành điệu và cá tính hơn rất nhiều đấy!\r\nCách chọn vòng tay để mix với đồng hồ Baby G cũng dựa theo định luật màu sắc tương đồng như với trang phục, trừ khi bạn là một người “sành” mix đồ và muốn thử sức với những phong cách mới lạ. Vòng tay để mix cùng có thể lựa chọn nhiều mẫu khác nhau. \r\nĐồng hồ Casio Baby-G được thiết kế dành cho giới nữ với rất nhiều kiểu dáng và màu sắc phong phú. Đối tượng của Casio Baby-G cũng không giới hạn ở những cô nàng tuổi teen cá tính mà bất kỳ cô gái nào cũng có thể sử dụng. Hãy tự tạo cho mình một phong cách ấn tượng với những chiếc đồng hồ Baby-G cô gái nhé!', 5, '2023-05-12 01:01:08', NULL),
(17, 'CTTT6_1.png', 'Không quá lời khi nói rằng G-Shock GW-B5600-2 khá rẻ, vì ngoài việc được trang bị các tính năng năng lượng mặt trời, dòng sản phẩm này còn đi kèm với các tính năng đa băng tần 6, liên kết di động (bluetooth) và cả tính năng tiết kiệm năng lượng. Xu hướng đồng hồ mạnh mẽ với giá cả phải chăng đang dần trở nên phổ biến hơn. ', 6, '2023-05-12 01:01:08', NULL),
(18, 'CTTT6_2.png', 'Chiếc đồng hồ này cung cấp khá nhiều tính năng cao cấp từ G-Shock như năng lượng mặt trời Tough Solar, đa băng tần và cả kết nối với điện thoại di động thông qua chức năng (bluetooth).\r\nĐối với liên kết di động, trước tiên bạn phải cài đặt ứng dụng G-SHOCK CONNECTED trên điện thoại thông minh của mình (Android / iOS) và sau đó bạn có thể ghép nối (kết nối) với đồng hồ GW-B5600 qua bluetooth. Với ứng dụng này, bạn có thể thực hiện các điều chỉnh nhanh hơn và dễ dàng hơn thông qua điện thoại của mình. Một số chế độ mà bạn có thể truy cập như điều chỉnh thời gian, múi giờ, báo thức, hẹn giờ. ', 6, '2023-05-12 01:01:08', NULL),
(19, 'CTTT6_3.png', 'Dây đeo của GW-B5600-2 không có gì khác biệt với các dòng 5600 khác. Vẫn là dây đeo bằng nhựa và ôm trọn cổ tay của bạn. Với khả năng chống nước lên đến 200 mét, GW-B5600 an toàn cho những bạn yêu thích các hoạt động ngoài trời. Đừng quên rửa lại đồng hồ bằng nước sạch nếu bạn tiếp xúc với nước biển. \r\nĐồng hồ này sử dụng đèn LED và bạn có thể cài đặt để luôn sáng trong 2 hoặc 4 giây. Việc cài đặt 4 giây chắc chắn sẽ giúp bạn có nhiều thời gian hơn để xem dữ liệu trên đồng hồ, nhưng tác dụng phụ là nó sẽ nhanh hết pin. Nhưng đừng lo lắng vì dòng GW-B5600-2 đã được trang bị một tấm pin năng lượng mặt trời có thể sạc pin từ ánh sáng đến hàng giờ (năng lượng mặt trời tough solar).Trên thực tế là tất cả đồng hồ Casio có chức năng Tough Solar vẫn sử dụng pin sạc (có thể sạc lại) bằng các tấm pin mặt trời trên chiếc đồng hồ này. Vì vậy, bạn cũng cần phải thay pin nếu tuổi thọ sử dụng đã hết hoặc bị hỏng (trong khoảng từ 2-3 năm). \r\nKích thước mặt đồng hồ là 42,8 mm, kích thước này lý tưởng cho những bạn có cổ tay nhỏ không tự tin đeo các dòng G-Shock có kích thước lớn khác. Giá bán lẻ của dòng GW-B5600 đắt hơn nếu so sánh với các dòng 5600 khác, nhưng so với sự chênh lệch về giá thì quả thật rất hợp lý. Tất cả các tính năng mà GW-B5600 mang lại đều thuộc các tính năng ở các dòng đồng hồ G-Shock cao cấp khác là tính năng năng lượng mặt trời, tough solar, liên kết di động (bluetooth) và đa băng tần 6. ', 6, '2023-05-12 01:01:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dongsanpham`
--

CREATE TABLE `dongsanpham` (
  `id` int(11) NOT NULL,
  `TenDSP` varchar(250) NOT NULL,
  `AnhDaiDien` varchar(250) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `MaMenu` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dongsanpham`
--

INSERT INTO `dongsanpham` (`id`, `TenDSP`, `AnhDaiDien`, `MoTa`, `MaMenu`, `created_at`, `updated_at`) VALUES
(1, 'G-SHOCK', 'G-Shock.png', 'Kể từ khi chiếc DW-5000C đầu tiên được bán trở lại vào năm 1983, G-SHOCK vẫn luôn không ngừng vượt qua các giới hạn mới về độ bền đồng hồ hiển thị giờ hiện hành, đồng thời tạo ra các thiết kế mới lạ và độc đáo. Những mẫu mới này thể hiện những nỗ lực đó trong hình dáng mỏng đầy cuốn hút.\r\nNhững mẫu mới này thừa hưởng kiểu dáng bát giác cũng được dùng cho mẫu DW-5000C nguyên bản. Chiếc đồng hồ hiển thị giờ hiện hành kết hợp kim và số gói gọn trong một thiết kế đơn giản hữu dụng mà vẫn giữ được độ bền ngang bằng G-SHOCK.\r\nChất liệu nhựa vô cùng mạnh mẽ còn được gia cố sợi cacbon giúp tạo nên lớp vỏ chỉ dày 11,8 mm. Đây là lớp vỏ mỏng nhất trong số các mẫu kết hợp của đồng hồ Casio G-Shock.\r\nNeobrite: Dành riêng cho GA-2100-1A, GA-2100-4A\r\nCấu trúc bảo vệ lõi cacbon\r\nCấu trúc bảo vệ lõi cacbon mới bảo vệ mô-đun bằng cách bao kín mô-đun trong lớp vỏ cacbon. Lớp vỏ làm bằng nhựa mịn pha lẫn sợi cacbon có độ bền và sức chịu nứt vỡ vượt trội.', 1, '2023-05-12 00:49:18', NULL),
(2, 'BABY-G', 'Baby-G.png', 'Cùng chiêm ngưỡng những mẫu đồng hồ Casio Baby-G mới đầy ấn tượng với thiết kế đơn giản và thanh lịch của BABY-G G-MS, dòng sản phẩm dành cho những người phụ nữ hiện đại năng động và sành điệu.\r\nPhần viền mỏng và sắc nét, vạch chỉ giờ hình tam giác, nút điều chỉnh bát giác cùng nhiều chi tiết khác, tất cả đã tạo nên một kiệt tác hiện đại không thể cưỡng lại. Quai đeo được chế tạo từ chất liệu nhựa tổng hợp vừa đậm chất thể thao, vừa mang phong cách thời trang thường nhật, trưởng thành.\r\nMẫu đồng hồ sở hữu thiết kế vỏ mỏng phù hợp với mọi hoàn cảnh, ba kim chỉ thời gian và hiển thị ngày, hoạt động bằng năng lượng mặt trời và khả năng chống nước tới 100m.\r\nĐây chắc chắn là sự lựa chọn hoàn hảo cho công việc, giải trí hay bất cứ hoạt động nào khác của bạn.', 1, '2023-05-12 00:49:18', NULL),
(3, 'EDIFICE', 'Edifice.png', 'Mẫu đồng hồ Edifice mới siêu mỏng có thông số kỹ thuật cao với khả năng kết nối với điện thoại này là mẫu mới nhất bổ sung dòng sản phẩm đồng hồ ghi thời gian bằng kim loại EDIFICE sở hữu nhiều chức năng và luôn vượt qua các giới hạn của đồng hồ hiển thị giờ hiện hành.\r\nTất cả các tính năng Kết nối điện thoại thông minh qua Bluetooth®, hệ thống năng lượng Tough Solar khiến đồng hồ có thể sạc khi tiếp xúc với ánh sáng huỳnh quang và tính năng hiển thị giờ hiện hành của bộ ghi thời gian nhiều kim được gói gọn trong lớp vỏ chỉ dày 8,9 mm.\r\nCông nghệ gắn kết mới kết hợp với các đổi mới về chi tiết và cấu trúc giúp tạo ra lớp vỏ mỏng hơn khoảng 30% so với mô-đun EDIFICE EQB-800 Kết nối với điện thoại.', 1, '2023-05-12 00:49:18', NULL),
(4, 'SHEEN', 'Sheen.png', 'Casio Sheen là dòng đồng hồ thanh lịch, sang trọng được thiết kế dành riêng cho phái đẹp của thương hiệu Casio. Với sự kết hợp hài hòa giữa phong cách cổ điển và hiện đại. Sheen thể hiện về một dòng sản phẩm đồng hồ đeo tay nữ đậm chất cá tính, vừa mạnh mẻ, vừa dịu dàng, đằm thắm. Đối tượng mà Casio Sheen hướng tới là những chị em có độ tuổi từ 25 trở lên, chín chắn, có kinh nghiệm sống, có bản lãnh, sẵn sàng đương đầu với thử thách.', 1, '2023-05-12 00:49:18', NULL),
(5, 'GENERAL', 'General.png', 'Đồng hồ Casio thiết kế đa dạng, độ bền cao với nhiều dòng khác nhau, đa dạng mẫu mã. Những mẫu đồng hồ phổ biến nhất với thiết kế đồng hồ kim và cả các thiết kế màn hình điện tử dành cho cả nam và nữ. Bảo hành chính hãng tại Casio Anh Khuê - Nhà phân phối và bảo hành chính thức đồng hồ Casio tại Việt Nam. Đồng hồ Casio được biết đến là thương hiệu đồng hồ lâu đời trong ngành công nghiệp đồng hồ tại Nhật Bản. Những mẫu đồng hồ Casio nam và đồng hồ Casio nữ được yêu thích bởi thiết kế đơn giản, được trang bị đầy đủ các công nghệ mới nhất và có giá bán cực kỳ rẻ. Ngoài ra, đồng hồ Casio chính hãng còn nổi bật với chức năng đa dạng giúp ích cho người dùng vào những hoạt động đời sống thường ngày.', 1, '2023-05-12 00:49:18', NULL),
(6, 'PRO TREK', '', 'Casio ProTrek là dòng đồng hồ leo núi thông minhchính hãng Casio dành cho nam với tích hợp bộ ba cảm biến (phương vị, độ cao/áp suất khí quyển, nhiệt độ). Đây là dòng sản phẩm đặc biệt với nhiều công nghệ hiện đại được thiết kế để chịu được sự khắc nghiệt của thời tiết, hoat động bền bỉ nhờ sử công nghệ năng lượng mặt trời để vận hành toàn bộ hệ thống, kết hợp với pin có khả năng sạc lại được, đảm bảo đồng hồ hoạt động liên tục cho cuộc hành trình thám hiểm của bạn.', 1, '2023-05-12 00:49:18', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL,
  `NguoiDuyet` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `MaKH`, `TrangThai`, `NguoiDuyet`, `created_at`, `updated_at`) VALUES
(1, 1, b'1', 'Phạm Phú', '2023-05-12 01:28:41', '2023-05-12 01:35:39'),
(2, 2, b'1', 'Trần Hương', '2023-05-12 01:39:40', '2023-05-12 01:50:03'),
(3, 3, b'1', 'Trần Hương', '2023-05-12 01:41:18', '2023-05-12 01:50:12'),
(4, 4, b'1', 'Trần Hương', '2023-05-12 01:43:00', '2023-05-12 01:50:09'),
(5, 5, b'0', NULL, '2023-05-12 01:53:12', '2023-05-12 01:53:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giamgia`
--

CREATE TABLE `giamgia` (
  `id` int(11) NOT NULL,
  `PhanTram` int(11) DEFAULT NULL,
  `ThoiGianBD` date DEFAULT NULL,
  `ThoiGianKT` date DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giamgia`
--

INSERT INTO `giamgia` (`id`, `PhanTram`, `ThoiGianBD`, `ThoiGianKT`, `MaSP`, `created_at`, `updated_at`) VALUES
(1, 10, '2023-01-01', '2023-06-01', 1, '2023-05-12 01:01:42', NULL),
(2, 20, '2023-01-02', '2023-06-02', 2, '2023-05-12 01:01:51', NULL),
(3, 25, '2023-01-03', '2023-06-03', 3, '2023-05-12 01:02:02', NULL),
(4, 30, '2023-01-04', '2023-06-01', 4, '2023-05-12 01:02:09', NULL),
(5, 35, '2023-01-05', '2023-06-02', 5, '2023-05-12 01:02:32', NULL),
(6, 40, '2023-01-06', '2023-06-03', 6, '2023-05-12 01:02:40', NULL),
(7, 45, '2023-01-07', '2023-06-04', 7, '2023-05-12 01:02:48', NULL),
(8, 50, '2023-01-07', '2023-06-05', 8, '2023-05-12 01:02:54', NULL),
(9, 10, '2023-01-08', '2023-06-06', 9, '2023-05-12 01:03:02', NULL),
(10, 15, '2023-01-08', '2023-06-06', 10, '2023-05-12 01:03:09', NULL),
(11, 20, '2023-01-08', '2023-06-06', 11, '2023-05-12 01:03:18', NULL),
(12, 25, '2023-01-09', '2023-06-07', 12, '2023-05-12 01:03:26', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(250) DEFAULT NULL,
  `Anh` varchar(250) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gioithieu`
--

INSERT INTO `gioithieu` (`id`, `TieuDe`, `Anh`, `MoTa`, `created_at`, `updated_at`) VALUES
(1, 'GIỚI THIỆU', '', 'Công ty Cổ phần Văn Phú Watch - thành viên của Tập đoàn BITEX - là nhà phân phối duy nhất và bảo hành chính thức sản phẩm đồng hồ CASIO - NHẬT BẢN của công ty CASIO COMPUTER CO., LTD Tokyo, Japan tại thị trường Việt Nam trong hơn 23 năm qua.', '2023-05-12 00:48:27', NULL),
(2, '', 'service-center.png', 'Thương hiệu CASIO đã có mặt trên thị trường thế giới hơn 50 năm với nhiều sản phẩm điện tử nổi tiếng và điều đó là bảo chứng về chất lượng sản phẩm mà chúng tôi đang cung cấp.', '2023-05-12 00:48:27', NULL),
(3, '', '', 'Trong vai trò nhà phân phối chính thức và duy nhất đồng hồ CASIO tại thị trường Việt Nam, Công ty Cổ Phần Văn Phú Watch luôn cố gắng đưa sản phẩm đến tay người tiêu dùng ở mức giá cạnh tranh và hợp lý nhất. Ngoài những chương trình khuyến mãi hấp dẫn, chúng tôi còn đặc biệt chú trọng đến trải nghiệm khách hàng về tính năng sản phẩm và dịch vụ bảo hành chính hãng.', '2023-05-12 00:48:27', NULL),
(4, '', '', 'Với hệ thống hơn 70 cửa hàng và 300 đại lý trải dài khắp các tỉnh thành trong cả nước, Công ty Cổ Phần Văn Phú Watch mong muốn đem Thương hiệu quốc tế đến gần hơn với người dùng Việt Nam.', '2023-05-12 00:48:27', NULL),
(5, '', '', 'Bên cạnh hoạt động kinh doanh bán lẻ, chúng tôi còn cung cấp số lượng lớn sản phẩm cho các công ty để làm chương trình khuyến mãi hoặc làm quà tặng với chính sách chiết khấu đặc biệt. Chúng tôi còn có thể in logo công ty quý khách lên mặt đồng hồ và đây là một phương thức quảng cáo hữu hiệu nhất cho thương hiệu của quý khách trên đồng hồ CASIO.', '2023-05-12 00:48:27', NULL),
(6, '', '', 'Với thế mạnh về chất lượng sản phẩm, dịch vụ và uy tín thương hiệu, Văn Phú Watch cam kết sẽ khiến Quý Công ty hài lòng với mọi sản phẩm và dịch vụ trải nghiệm mà chúng tôi mang lại!', '2023-05-12 00:48:27', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonnhap`
--

CREATE TABLE `hoadonnhap` (
  `id` int(11) NOT NULL,
  `TenHDN` varchar(250) DEFAULT NULL,
  `MaND` int(11) DEFAULT NULL,
  `MaNCC` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonnhap`
--

INSERT INTO `hoadonnhap` (`id`, `TenHDN`, `MaND`, `MaNCC`, `created_at`, `updated_at`) VALUES
(1, 'HDN1', 2, 1, '2023-05-12 01:03:47', NULL),
(2, 'HDN2', 2, 2, '2023-05-12 01:03:47', NULL),
(3, 'HDN3', 3, 3, '2023-05-12 01:03:47', NULL),
(4, 'HDN4', 3, 4, '2023-05-12 01:03:47', NULL),
(5, 'HDN5', 4, 5, '2023-05-12 01:03:47', NULL),
(6, 'HDN6', 4, 6, '2023-05-12 01:03:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id` int(11) NOT NULL,
  `TenKH` varchar(250) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id`, `TenKH`, `DiaChi`, `SDT`, `Email`, `created_at`, `updated_at`) VALUES
(1, 'Phan Trung Kiên', '78 Ba Vì, Hà Nội', '0331233334', 'tommyxiaomi1@gmail.com', '2023-05-12 01:28:41', '2023-05-12 01:28:41'),
(2, 'Phạm Đức Hoàng', '18 Nguyễn Trãi, Hải Phòng', '0357893478', 'hoangpham12@gmail.com', '2023-05-12 01:39:40', '2023-05-12 01:39:40'),
(3, 'Nguyễn Văn Cường', '12 Bình Lộc, phường Tân Bình, TP Hải Dương', '0345678912', 'cuongdz1@gmail.com', '2023-05-12 01:41:18', '2023-05-12 01:41:18'),
(4, 'Nguyễn Phương Hoa', '16/7 Quang Trung, TP Thanh Hóa', '0356612345', 'phuonghoa18@gmail.com', '2023-05-12 01:43:00', '2023-05-12 01:43:00'),
(5, 'Nguyễn Văn Cường', '12 Bình Lộc, phường Tân Bình, TP Hải Dương', '0345678912', 'cuongdz1@gmail.com', '2023-05-12 01:53:12', '2023-05-12 01:53:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kho`
--

CREATE TABLE `kho` (
  `id` int(11) NOT NULL,
  `TenKho` varchar(250) DEFAULT NULL,
  `DiaChi` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `kho`
--

INSERT INTO `kho` (`id`, `TenKho`, `DiaChi`, `created_at`, `updated_at`) VALUES
(1, 'Kho 1', 'TP Hà Nội', '2023-05-12 00:54:53', NULL),
(2, 'Kho 2', 'TP Hưng Yên', '2023-05-12 00:54:54', NULL),
(3, 'Kho 3', 'TP Hải Dương', '2023-05-12 00:54:54', NULL),
(4, 'Kho 4', 'TP Đà Nẵng', '2023-05-12 00:54:54', NULL),
(5, 'Kho 5', 'TP Cần Thơ', '2023-05-12 00:54:54', NULL),
(6, 'Kho 6', 'TP Hồ Chí Minh', '2023-05-12 00:54:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `id` int(11) NOT NULL,
  `TieuDe` varchar(250) DEFAULT NULL,
  `TieuMuc` varchar(250) DEFAULT NULL,
  `Anh` varchar(250) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`id`, `TieuDe`, `TieuMuc`, `Anh`, `MoTa`, `created_at`, `updated_at`) VALUES
(1, 'NHỮNG ĐIỀU CẦN BIẾT VỀ TRUNG TÂM BẢO HÀNH ĐỒNG HỒ CASIO CHÍNH HÃNG', '', '', 'Casio có hệ thống bảo hành quốc tế cho các dòng sản phẩm như đồng hồ G-Shock, đồng hồ Baby-G, đồng hồ Edifice. Vậy Trung tâm bảo hành của Casio tại Việt Nam ở đâu, có bao nhiêu điểm bảo hành Casio chính hãng và quy trình tiếp nhận bảo hành như thế nào? Hãy cùng tìm hiểu qua bài viết sau đây!', '2023-05-12 00:48:38', NULL),
(2, '', 'THẾ NÀO LÀ BẢO HÀNH CHÍNH HÃNG?', '', 'Bảo hành chính hãng là dịch vụ bảo hành của nhà sản xuất dành cho các sản phẩm của họ được phân phối và bán trên thị trường. Bảo hành chính hãng áp dụng cho những sản phẩm được nhập khẩu chính hãng, có đầy đủ giấy tờ bảo hành của hãng hoặc của các đơn vị phân phối, đại lý...\r\nTrung tâm bảo hành chính hãng đồng hồ Casio tại Việt Nam\r\nBảo hành chính hãng được dùng để phân biệt với bảo hành tại công ty, cửa hàng. Bảo hành tại công ty là chính sách bảo hành của điểm bán sản phẩm, không liên quan đến hãng sản xuất. Nhiều điểm bán chỉ có bảo hành công ty/cửa hàng mà không có bảo hành chính hãng là do sản phẩm của họ không phải là sản phẩm chính hãng, hoặc là sản phẩm được làm giả/nhái. Vì thế, khách hàng cần kiểm tra chế độ bảo hành của sản phẩm chính hãng trước khi mua để tránh mua phải hàng không chính hãng và không được bảo trợ từ nhà sản xuất.', '2023-05-12 00:48:38', NULL),
(3, '', 'VÌ SAO NÊN SỬ DỤNG DỊCH VỤ BẢO HÀNH CHÍNH HÃNG?', '', '- Thứ nhất, bảo hành chính hãng mang lại sự an tâm cho người sử dụng. Khách hàng sẽ không phải lo lắng sản phẩm của mình có bị tráo đổi linh kiện hay bị giảm chất lượng sau khi sửa chữa hay không. Vì hãng chính là nơi chịu trách nhiệm cao nhất cho chất lượng của sản phẩm chính hãng trên thị trường.\r\n- Thứ hai, bảo hành chính hãng sử dụng các linh kiện chính hãng từ nhà sản xuất. Thậm chí, nhiều linh kiện không thể tìm thấy ở bất kỳ nơi nào khác trên thị trường. Điều này nhằm đảm bảo chất lượng và tuổi thọ của sản phẩm chính hãng sau khi bảo hành, vì nếu sử dụng các linh kiện thay thế kém chất lượng sẽ khiến sản phẩm chính hãng nhanh hư, hoạt động không tốt như trước. \r\n- Thứ ba, trong trường hợp không may, khách hàng mua phải sản phẩm bị lỗi kỹ thuật không thể khắc phục được, nếu có bảo hành chính hãng thì khách hàng sẽ được đổi sản phẩm mới.\r\n- Thứ tư, các hạng mục bảo hành miễn phí/tính phí luôn được niêm yết rõ ràng theo giá từ hãng nên khách hàng hoàn toàn yên tâm sẽ không bị “hét giá”. Bảo hành chính hãng phụ trách chăm sóc sản phẩm trọn đời.', '2023-05-12 00:48:38', NULL),
(4, '', 'TRUNG TÂM BẢO HÀNH ĐỒNG HỒ CASIO TẠI VIỆT NAM', 'service-center.png', 'Tuy không có chi nhánh hay công ty con tại Việt Nam, song Casio vẫn có Trung tâm bảo hành tiếp nhận bảo hành và sửa chữa đồng hồ Casio chính hãng cho khách hàng trong nước và quốc tế. Các Trung tâm bảo hành đồng hồ Casio chính hãng này được thành lập và quản lý bởi đại diện phân phối ủy quyền chính thức của Casio tại Việt Nam là Công ty Cổ phần Anh Khuê Watch. Tất cả các hoạt động, sự kiện của Casio tại Việt Nam cũng được thực hiện thông qua Văn Phú Watch.', '2023-05-12 00:48:38', NULL),
(5, '', 'MÁY ĐO NĂNG LƯỢNG PIN VÀ IC WITSCHI.', '', '+ Kính hiển vi: Những chi tiết hư hỏng nhẹ cũng có thể ảnh hưởng đến hoạt động của bộ máy đồng hồ, đó là lý do vì sao kính hiển vi thường được các Trung tâm sửa chữa đồng hồ chuyên nghiệp sử dụng.\r\n+ Máy vệ sinh đồng hồ: Loại máy này giúp làm sạch bụi bẩn và những vết gỉ sét bám trên đồng hồ, trả lại sản phẩm một diện mạo như mới.\r\n+ Máy điều áp chân không: Một trong những tính năng độc đáo của đồng hồ Casio đó chính là khả năng chống nước (Water Resistance),nhiều dòng sản phẩm còn có chỉ số chống nước tới 20ATM (tương đương 200 mét). Sau khi đồng hồ Casio được tháo rời để sửa chữa hoặc thay pin, vệ sinh, chúng cần được kiểm tra lại khả năng chống nước. Việc này sẽ được thực hiện bằng cách sử dụng máy điều áp chân không. Loại máy này sẽ tạo ra một mức áp suất để kiểm tra khả năng chống nước của đồng hồ đạt đến mức độ nào. Tất cả đồng hồ Casio được mang đến bảo hành đều phải trải qua kiểm nghiệm này trước khi bàn giao lại cho khách hàng.', '2023-05-12 00:48:38', NULL),
(6, '', 'MỘT SỐ THIẾT BỊ TẠI TRUNG TÂM BẢO HÀNH ĐỒNG HỒ CASIO.', '', '+ Bên cạnh những thiết bị chính này thì Trung tâm bảo hành đồng hồ Casio chính hãng còn được trang bị nhiều bộ dụng cụ và thiết bị chuyên nghiệp để phục vụ cho nhu cầu bảo hành, sửa chữa đồng hồ Casio tại Việt Nam.\r\n- Đội ngũ kỹ thuật viên giỏi: Đồng hành với các trang thiết bị hiện đại chính là đội ngũ kỹ thuật viên sửa chữa đồng hồ chuyên nghiệp, tận tâm. Các nhân viên Trung tâm bảo hành Casio cũng thường xuyên được tham gia các lớp tập huấn về sản phẩm và đào tạo nâng cao tay nghề, nhằm mang lại sự hài lòng và đưa Trung tâm trở thành sự lựa chọn đáng tin cậy dành cho các khách hàng Casio trên cả nước, ngay cả khi đồng hồ đã hết thời gian bảo hành.\r\n- Dịch vụ thân thiện: Trung tâm bảo hành Casio lấy sự hài lòng của khách hàng làm thước đo tiêu chuẩn và đánh giá nhân viên. Chính vì thế, hầu hết các khách hàng đều bày tỏ sự hài lòng sau khi sử dụng dịch vụ. Phương châm của Trung tâm chính là: Không để khách chờ lâu, Tư vấn dịch vụ rõ ràng, thái độ đúng chuẩn mực và Phục vụ bằng sự chân thành. Hotline 0916 12 17 19 luôn sẵn sàng tiếp nhận mọi khiếu nại, phàn nàn từ khách hàng để có biện pháp xử lý sớm nhất.', '2023-05-12 00:48:38', NULL),
(7, '', 'BÊN TRONG PHÒNG LÀM VIỆC CỦA MỘT TTBH CASIO.', '', '- Linh kiện thay thế chính hãng: Tất cả các linh kiện thay thế cho đồng hồ Casio đều được nhập khẩu trực tiếp từ nhà sản xuất Casio. Những linh kiện này không được bán công khai trên thị trường. Nên để đảm bảo đồng hồ chính hãng được thay đúng linh kiện chính hãng, bạn cần phải đem đồng hồ đến các Trung tâm bảo hành Casio Văn Phú Watch.', '2023-05-12 00:48:38', NULL),
(8, '', 'QUY ĐỊNH VỀ THỜI GIAN VÀ ĐIỀU KIỆN BẢO HÀNH', '', 'Tùy theo từng dòng sản phẩm mà thời gian bảo hành đồng hồ Casio cũng khác nhau:\r\n- Đồng hồ G-Shock và Baby-G: Bảo hành 5 năm cho cả máy và pin.\r\n- Đồng hồ Casio các dòng còn lại: Bảo hành 12 tháng cho máy và 18 tháng cho pin. Riêng đồng hồ để bàn và đồng hồ treo tường chỉ bảo hành máy, không bảo hành pin.', '2023-05-12 00:48:38', NULL),
(9, '', 'ĐIỀU KIỆN BẢO HÀNH: ', '', '- Bảo hành không tính phí:\r\n+ Sản phẩm còn trong thời gian bảo hành. Thời gian bảo hành sẽ được tính từ ngày mua được ghi trên phiếu bảo hành.\r\n+ Sản phẩm bảo hành phải có đầy đủ giấy tờ bảo hành, nguyên vẹn và không được tẩy xóa.\r\nĐối với các sản phẩm vẫn còn trong thời hạn bảo hành Nếu khách gửi bảo hành/sửa chữa tại cửa hàng thì các chi phí vận chuyển từ cửa hàng => TTBH và ngược lại thì công ty chịu phí.\r\nTrong thời gian bảo hành chi phí vận chuyển từ TTBH => nhà khách hàng và ngược lại thì công ty chịu phí.\r\n- Bảo hành có tính phí:\r\n+ Đồng hồ Casio chính hãng hết thời hạn bảo hành theo quy định.\r\n+ Đồng hồ Casio chính hãng của khách hàng là người nước ngoài.\r\n+ Đồng hồ còn đang trong thời gian bảo hành nhưng bị hư hỏng do các nguyên nhân như sử dụng sai hướng dẫn, bấm nút điều chỉnh đồng hồ trong môi trường nước, trầy xước mặt kính, vỏ, khóa, dây đeo xỉn màu,…\r\n+ Mọi hư hỏng của đồng hồ do tự ý sửa chửa hoặc do sửa chửa không đúng cách từ các dịch vụ khác không phải do TTBH chính hãng cũng bị tính phí.\r\nMức phí sửa chửa và giá các linh kiện thay thế sẽ được thông báo cho khách hàng trước khi tiến hành sửa chửa, thay thế.\r\n- Đồng hồng Casio giả, nhái không được bảo hành.\r\nĐối với các sản phẩm KHÔNG còn trong thời hạn bảo hành khách gửi bảo hành/sửa chữa tại cửa hàng thì khách hàng chịu phí.', '2023-05-12 00:48:38', NULL),
(10, '', 'DANH SÁCH TRUNG TÂM BẢO HÀNH ĐỒNG HỒ CASIO CHÍNH HÃNG TRÊN TOÀN QUỐC', '', 'Mọi thông tin liên hệ Phòng bảo hành đồng hồ Casio chính hãng:\r\n- Hotline Phòng Bảo Hành: 1900.866.858 (Phím 4)\r\n- Hệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại Hà Nội:\r\n+ Trung tâm bảo hành Casio số 1: Số 15 Ô Chợ Dừa, P. Ô Chợ Dừa, Quận Đống Đa\r\nĐiện thoại: (024) 3223 2229\r\n+ Trung tâm bảo hành Casio số 2: 128 Bạch Mai, P. Cầu Dền, Quận Hai Bà Trưng, TP Hà Nội\r\nĐiện thoại: (0243) 624 5647\r\nHệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại Hà Nội\r\n- Hệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại Đà Nẵng:\r\n+ Trung tâm bảo hành Casio số 1: Số 140 Nguyễn Văn Linh, Quận Hải Châu, TP. Đà Nẵng\r\nĐiện thoại: (0236) 366 4789\r\nHệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại Đà Nẵng\r\n- Hệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại TP. Hồ Chí Minh:\r\n+ Trung tâm bảo hành Casio số 1: Số 437 Lý Thái Tổ, Phường 9, Quận 10\r\nĐiện thoại: (028) 3927 3778 - (028) 3927 3779\r\n+ Trung tâm bảo hành Casio số 2: Số 295 Trần Hưng Đạo, P. Cô Giang, Quận 1\r\nĐiện thoại: (028) 3836 1562\r\n+ Trung tâm bảo hành Casio số 3: Lầu 2, Số 20 đường Ba Tháng Hai, P. 12, Quận 10\r\nĐiện thoại: (028) 3927 0317 - (028) 3927 3517\r\nHệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại TP. Hồ Chí Minh\r\n- Hệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại Cần Thơ:\r\n+ Trung tâm bảo hành Casio số 1: Số 56 Trần Văn Khéo, Phường Cái Khế, Quận Ninh Kiều\r\nĐiện thoại: (0292) 3760 630\r\nPhòng bảo hành làm việc vào giờ hành chính: Thứ 2 – Thứ 6 (8h00 – 17h00) và thứ 7 (8h00 – 12h00).\r\nHệ thống trung tâm bảo hành đồng hồ Casio chính hãng tại Cần Thơ', '2023-05-12 00:48:39', NULL),
(11, '', 'QUY TRÌNH TIẾP NHẬN VÀ BÀN GIAO SẢN PHẨM BẢO HÀNH', '', '- Đối với khách hàng đến bảo hành trực tiếp tại TTBH Casio:\r\n+ Khách hàng mang đồng hồ Casio cần được bảo hành cùng phiếu bảo hành (nếu đang trong thời gian bảo hành) đến các địa điểm trung tâm bảo hành gần nhất.\r\n+ Bộ phận lễ tân sẽ tiếp nhận, kiểm tra giấy tờ và ghi nhận vấn đề cần bảo hành sau đó chuyển đến các kỹ thuật viên kiểm tra.\r\n+ Sau khi kiểm tra xong, khách hàng sẽ nhận được thông báo chi tiết về tình trạng của đồng hồ và báo giá (nếu có tính phí). Khách hàng đồng ý sửa chữa thì TTBH sẽ tiếp nhận và bắt đầu tiến hành sửa chữa.\r\nTùy theo thời gian sửa chữa mà khách hàng sẽ được thông báo đợi lấy đồng hồ hoặc có giấy hẹn ghi thời gian cụ thể để lên nhận lại sản phẩm. Với các trường hợp bảo hành như thay pin hay đánh bóng thì khách hàng chỉ cần đợi khoảng 30 phút.\r\nKhách hàng có thể đến bảo hành đến trực tiếp hoặc thông qua cửa hàng Casio Văn Phú.\r\n- Đối với khách hàng ở xa:\r\n+ Khách hàng sẽ có 2 cách gửi sản phẩm cần bảo hành đến TTBH Casio:\r\n1. Mang ra cửa hàng Văn Phú Watch gần nhất (nếu mua ở đại lý thì mang đến đại lý),nhân viên bán hàng sẽ ghi nhận và gửi sản phẩm cần bảo hành về TTBH Casio.\r\n2. Gửi trực tiếp qua đường bưu điện về địa chỉ TTBH Casio gần nhất, kèm với phiếu bảo hành sản phẩm.\r\n+ Sau khi nhận được sản phẩm cần bảo hành, nhân viên TTBH Casio sẽ liên hệ trực tiếp với khách hàng.\r\n+ Sản phẩm được bảo hành xong sẽ gửi trả khách hàng theo đường bưu điện hoặc cửa hàng mà khách gửi.\r\nMọi thắc mắc, vấn đề cần tư vấn, khách hàng có thể liên hệ trực tiếp thông qua số điện thoại của các Trung tâm bảo hành đồng hồ Casio ở trên hoặc qua Hotline Phòng Bảo Hành: 1900.866.858 (Phím 4).', '2023-05-12 00:48:39', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `TenMenu` varchar(250) NOT NULL,
  `STT` int(11) DEFAULT NULL,
  `Link` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `TenMenu`, `STT`, `Link`, `created_at`, `updated_at`) VALUES
(1, 'DANH MỤC SẢN PHẨM', 1, '', '2023-05-12 00:48:08', NULL),
(2, 'TRANG CHỦ', 2, '/', '2023-05-12 00:48:08', NULL),
(3, 'GIỚI THIỆU', 3, '/gioithieu', '2023-05-12 00:48:08', NULL),
(4, 'TIN TỨC', 4, '/tintuc', '2023-05-12 00:48:08', NULL),
(5, 'LIÊN HỆ', 5, '/lienhe', '2023-05-12 00:48:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id` int(11) NOT NULL,
  `TenNCC` varchar(250) NOT NULL,
  `DiaChi` varchar(500) NOT NULL,
  `SDT` varchar(10) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id`, `TenNCC`, `DiaChi`, `SDT`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Quang Hải', 'Hà Nội', '0354472583', '2023-05-12 00:48:47', NULL),
(2, 'Nguyễn Việt Trung', 'TP Hồ CHí Minh', '0354473456', '2023-05-12 00:48:47', NULL),
(3, 'Lê Việt Thái', 'Đà Nẵng', '0357872583', '2023-05-12 00:48:47', NULL),
(4, 'Nguyễn Văn Cường', 'Hải Dương', '0354471234', '2023-05-12 00:48:47', NULL),
(5, 'Phạm Đức Hoàng', 'TP Hồ CHí Minh', '0354471457', '2023-05-12 00:48:47', NULL),
(6, 'Nguyễn Thành Trung', 'Đà Nẵng', '0357876345', '2023-05-12 00:48:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `TenSP` varchar(250) NOT NULL,
  `AnhDaiDien` varchar(250) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `MaDSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `TenSP`, `AnhDaiDien`, `GiaBan`, `MoTa`, `MaDSP`, `created_at`, `updated_at`) VALUES
(1, 'GM-2140GEM-2ADR', 'GM-2140GEM-2ADR.png', 9500000, 'Các mẫu G-SHOCK Adventurer’s Stone mới này sử dụng các họa tiết của đá khoáng chất, làm điểm đánh dấu dẫn đường từ thời trung cổ.\r\nMỗi thiết kế đều kết hợp tinh thần của G-SHOCK, nhằm hỗ trợ và hướng dẫn cho những người thích mạo hiểm và các nhà thám hiểm trên toàn thế giới. Dựa trên các mẫu được phủ kim loại, những chiếc đồng hồ mới này sử dụng kỹ thuật rèn và mạ ion tiên tiến (IP) để tạo ra các thiết kế tái tạo kết cấu thô và độ sáng nhiều màu của khoáng quặng.\r\nKết quả là một bộ sưu tập các mẫu đặc biệt nắm bắt được tinh thần của quá khứ và những thách thức trong tương lai, thành một phiên bản kỷ niệm ý nghĩa\r\nCác bezels phủ kim loại được tạo ra bằng cách rèn đặc biệt và đúc bằng khuôn đặc biệt. Toàn bộ bề mặt của tất cả các bezels có bề mặt gồ ghề giống như quặng khoáng sản. Nhưng vẫn được mãi dũa để có lớp hoàn thiện bóng loáng, mặt trên và các mặt của khung bezel được đánh bóng hoàn hảo sáng bóng đến từng chi tiết nhỏ nhất. \r\nThành phẩm tạo ra từ quy trình sử dụng công nghệ gia công kim loại tái tạo trung thực hình thức, kết cấu, và độ sáng chói của từng loại quặng khoáng sản.\r\nNắp sau của các mẫu này được khắc chữ G-SHOCK\r\nLogo kỷ niệm 40 năm. Vòng dây cho GM-2140GEM, GM5640GEM và GM-114GEM là khắc laser với bốn ngôi sao và các chữ TỪ 1983.\r\nHộp thiết kế đặc biệt theo kiểu chữ cái G, vật liệu thân thiện với môi trường tái chế vật liệu.', 1, '2023-05-12 00:50:28', NULL),
(2, 'GM-114GEM-1A9DR', 'GM-114GEM-1A9DR.png', 10117000, 'Các mẫu G-SHOCK Adventurer’s Stone mới này sử dụng các họa tiết của đá khoáng chất, làm điểm đánh dấu dẫn đường từ thời trung cổ.\r\nMỗi thiết kế đều kết hợp tinh thần của G-SHOCK, nhằm hỗ trợ và hướng dẫn cho những người thích mạo hiểm và các nhà thám hiểm trên toàn thế giới. Dựa trên các mẫu được phủ kim loại, những chiếc đồng hồ mới này sử dụng kỹ thuật rèn và mạ ion tiên tiến (IP) để tạo ra các thiết kế tái tạo kết cấu thô và độ sáng nhiều màu của khoáng quặng.\r\nKết quả là một bộ sưu tập các mẫu đặc biệt nắm bắt được tinh thần của quá khứ và những thách thức trong tương lai, thành một phiên bản kỷ niệm ý nghĩa\r\nCác bezels phủ kim loại được tạo ra bằng cách rèn đặc biệt và đúc bằng khuôn đặc biệt. Toàn bộ bề mặt của tất cả các bezels có bề mặt gồ ghề giống như quặng khoáng sản. Nhưng vẫn được mãi dũa để có lớp hoàn thiện bóng loáng, mặt trên và các mặt của khung bezel được đánh bóng hoàn hảo sáng bóng đến từng chi tiết nhỏ nhất. \r\nThành phẩm tạo ra từ quy trình sử dụng công nghệ gia công kim loại tái tạo trung thực hình thức, kết cấu, và độ sáng chói của từng loại quặng khoáng sản.\r\nNắp sau của các mẫu này được khắc chữ G-SHOCK\r\nLogo kỷ niệm 40 năm. Vòng dây cho GM-2140GEM, GM-5640GEM và GM-114GEM là khắc laser với bốn ngôi sao và các chữ TỪ 1983.\r\nHộp thiết kế đặc biệt theo kiểu chữ cái G, vật liệu thân thiện với môi trường tái chế vật liệu.', 1, '2023-05-12 00:50:47', NULL),
(3, 'GG-B100Y-1ADR', 'GG-B100Y-1ADR.png', 12363000, 'Vỏ của mẫu GG-B100Y MUDMASTER được chế tạo bằng vật liệu cacbon có độ cứng cao có thể chịu được biến dạng và chống hư hỏng, ngoài ra còn có độ kín khí cao và chống va đập. Mẫu đồng hồ này còn được tích hợp bộ lọc để ngăn chặn bùn tràn vào bên trong vỏ, một bảng điều khiển phía sau bằng thép không gỉ và nắp lưng được làm bằng nhựa cao cấp pha sợi thủy tinh chống sốc. Vòng mặt số cũng được tạo hình từ ba lớp nhựa cao cấp pha sợi cacbon.\r\nĐèn LED đôi: gồm 1 đèn LED dành cho mặt đồng hồ tự động và đèn nền LED chiếu sáng cực mạnh dành cho màn hình số. Cả 2 đen đều chiếu sáng cực mạnh, thời lượng chiếu sáng có thể chọn 1,5 giây hoặc 3 giây \r\nChống nước độ sâu 200m ; Công cụ tìm điện thoại\r\nLiên kết điện thoại thông minh (Kết nối không dây với thiết bị Bluetooth).  Yêu cầu cài đặt ứng dụng trên điện thoại của bạn.\r\nHiển thị giờ mặt trời mọc, mặt trời lặn Giờ mặt trời mọc và mặt trời lặn cho ngày cụ thể\r\n5 chế độ báo thức hằng ngày và cập nhật lịch hoàn toàn tự động đến 2099 vô cùng tiện nghi khi sử dụng. Chức năng bấm giờ G7', 1, '2023-05-12 00:50:54', NULL),
(4, 'BGD-565XG-2', 'BGD-565XG-2.png', 4072000, 'Đừng bỏ lỡ phong cách đường phố phù hợp với những cô gái cá tính. BABY-G và X-girl hợp tác tạo nên chiếc đồng hồ đơn giản vô cùng phù hợp với những cô gái năng động. BABY-G và X-girl là hai thương hiệu mang phong cách đường phố đích thực dành cho những cô gái sinh ra vào thời kỳ đỉnh cao của thời trang đường phố năm 1994. Họ đã trở lại với phong cách ảnh chế theo trào lưu vaporwave vào đầu những năm 2010 trong mẫu đồng hồ BGD-565 màu neon phân cực đặc trưng, tạo nên một cảm giác hư ảo và cổ điển. Dây đeo màu xanh lam nhạt mờ được hoàn thiện bằng lớp phủ ngọc trai màu tím, kết hợp với mặt đồng hồ phân cực với màu sắc óng ánh theo từng cử động nghiêng cổ tay. X-girl luôn đi đầu và là trung tâm của những điểm nhấn thiết kế đặc biệt. Logo X-girl được in trên vòng dây và xuất hiện trên màn hình khi bạn nhấn nút đèn. Ngoài ra còn có logo khuôn mặt nổi tiếng của thương hiệu do Mike Mills thiết kế được khắc trên phần lưng vỏ. Khi phong cách vaporwave không phù hợp với bầu không khí, chúng tôi có ngay dây đeo và gờ bằng nhựa màu đen có thể thay thế để đưa bạn đến bất cứ đâu. Chỉ cần trượt cần gạt trên lưng vỏ để dễ dàng hoán đổi dây đeo và khoác lên mình phong cách bạn muốn. Bao bì được thiết kế đặc biệt nhằm hoàn thiện trải nghiệm X-girl. Phong cách đường phố X-girl dành cho những cô gái cá tính. X-girl cung cấp “Trang phục cho những cô gái cá tính” lấy cảm hứng từ âm nhạc, văn hóa, thể thao và nhiều yếu tố khung cảnh đường phố khác đi trước thời đại.', 2, '2023-05-12 00:50:59', NULL),
(5, 'BG-169HRB-7', 'BG-169HRB-7.png', 4145000, 'BABY-G, dòng đồng hồ đơn giản dành cho giới nữ năng động, đã phát triển mẫu đồng hồ mới được hợp tác sản xuất cùng với thương hiệu HARIBO, nhà sản xuất kẹo dẻo nổi tiếng của Đức. Mọi yếu tố trong phong cách thiết kế của chiếc đồng hồ này đều vui nhộn và phá cách, hoàn toàn phù hợp với thế giới HARIBO. Chất liệu trong mờ màu trắng cơ bản của mẫu đồng hồ được tạo thêm điểm nhấn với màu sắc của những chiếc kẹo Goldbears phổ biến. Mẫu cơ sở là chiếc đồng hồ BABY-G BG-169 nhỏ nhắn. Các nút và mặt đồng hồ được trang trí với màu sắc lấy cảm hứng từ HARIBO Goldbears. Toàn bộ phần mặt đồng hồ đều được trang trí hình HARIBO Goldbears đặc trưng, mô phỏng hương vị của kẹo mâm xôi, chanh, táo và cam. Khi bật đèn nền EL của đồng hồ cũng sẽ thấy được hoa văn HARIBO Goldbears sắp xếp theo mẫu cố định trên mặt đồng hồ. Dây đeo và vỏ của mẫu đồng hồ này được làm bằng nhựa trong mờ, tạo cảm giác giống như kẹo dẻo và tô điểm cho màu sắc tươi sáng của thiết kế. Biểu tượng Goldbears màu vàng được in trên vòng dây đeo, trong khi nắp sau của đồng hồ được khắc biểu tượng Goldbears và HARIBO quen thuộc. Bao bì của mẫu đồng hồ này cũng được thiết kế nhằm gợi lên mô-típ kẹo dẻo. Mọi chi tiết trong thiết kế dễ thương của mẫu hợp tác đặc biệt này khiến nó trở thành một biểu tượng đại chúng. HARIBO TM &  2022 HARIBO Holding GmbH & Co. KG. Mọi quyền được bảo lưu.', 2, '2023-05-12 00:51:07', NULL),
(6, 'BA-110XRG-4A', 'BA-110XRG-4A.png', 4343000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK GA-110 nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.', 2, '2023-05-12 00:51:14', NULL),
(7, 'ECB-950MP-1ADF', 'ECB-950MP-1ADF.png', 6909000, 'Bộ sưu tập mới mang tên Racing Multicolor lấy ý tưởng dựa theo màu sắc trên vô lăng của những chiếc xe đua. Bốn sắc màu làm điểm nhấn trên mặt số của bộ sưu tập mới này được bố trí giống với cách phối màu nút trên vô lăng của những chiếc xe đua. Thiết kế của bộ sưu tập mới này mang đến tinh thần của môn đua xe thể thao chính là ra quyết định tức thời và hành động chính xác và nâng cao tính khả dụng của các chức năng khác. Kim giây và màn hình hiển thị giờ vòng được thiết kế giúp dễ đọc hơn. Dây nhựa mềm của các mẫu mới này cũng được thiết kế để mang đến sự thoải mái tuyệt đối cho người đeo. Mặt sau của đồng hồ được mạ ion màu đen , gờ được làm từ thép không gỉ và mạ inon màu đen tăng độ bền cũng như sự sang trọng cho chiếc đồng hồ . Tất cả những điều này và những điều khác hơn thế nữa đã được rèn giũa đến mức hoàn hảo dựa trên các phản hồi từ các môi trường đường đua thực tế.\r\nMẫu đồng hồ ECB-950MP, ECB-900MP, và ECB-40MP được trang bị khả năng kết nối với điện thoại thông qua Bluetooth để sử dụng trọn vẹn mọi tính năng  trong tầm tay nhằm hỗ trợ các đội đua. Đồng hồ có thể kết nối với một ứng dụng đặc biệt trên điện thoại để tự động điều chỉnh thời gian hiện hành. Chức năng liên kết điện thoại cũng có thể được sử dụng để lựa chọn hiển thị giờ thế giới, cài đặt báo thức và hẹn giờ, công cụ tìm điện thoại bằng cách nhấn vào nút đồng hồ để điện thoại đổ chuông ( nằm trong phạm vi Bluetooth ) và các hoạt động khác. Bạn cũng có thể gửi giờ vòng với đơn vị đo 1/1000 giây đến điện thoại và sử dụng ứng dụng để kiểm tra biểu đồ giờ vòng.\r\nMẫu ECB-950MP và ECB-900MP còn được trang bị hệ thống pin năng lượng mặt trời có thể sạc bằng đèn huỳnh quang hoặc ánh sáng mặt trời. Thời gian pin sạ 6 tháng với điều kiện ánh sáng bình thường không tiếp xúc với ánh sáng khi sạc và 19 tháng trong bóng tối. Điều này có nghĩa là bạn cứ tự tin đeo đồng hồ ở mọi lúc mọi nơi mà không cần quan tâm đến việc hết pin và giúp tiết kiệm năng lượng sau khi pin đã được sạc đầy. Ngoài ra thì có thêm các chức năng khác như đèn LED kép chiếu sáng cực mạng( gồm 1 đền LED cho mặt đồng hồ, 1 đền LED màn hình kĩ thuật số) dễ dàng xem giờ trong bóng tối.', 3, '2023-05-12 00:51:20', NULL),
(8, 'ECB-900MP-1ADF', 'ECB-900MP-1ADF.png', 6909000, 'Bộ sưu tập mới mang tên Racing Multicolor lấy ý tưởng dựa theo màu sắc trên vô lăng của những chiếc xe đua. Bốn sắc màu làm điểm nhấn trên mặt số của bộ sưu tập mới này được bố trí giống với cách phối màu nút trên vô lăng của những chiếc xe đua. Thiết kế của bộ sưu tập mới này mang đến tinh thần của môn đua xe thể thao chính là ra quyết định tức thời và hành động chính xác và nâng cao tính khả dụng của các chức năng khác. Kim giây và màn hình hiển thị giờ vòng được thiết kế giúp dễ đọc hơn. Dây nhựa mềm của các mẫu mới này cũng được thiết kế để mang đến sự thoải mái tuyệt đối cho người đeo. Mặt sau của đồng hồ được mạ ion màu đen , gờ được làm từ thép không gỉ và mạ inon màu đen tăng độ bền cũng như sự sang trọng cho chiếc đồng hồ . Tất cả những điều này và những điều khác hơn thế nữa đã được rèn giũa đến mức hoàn hảo dựa trên các phản hồi từ các môi trường đường đua thực tế.\r\nMẫu đồng hồ ECB-950MP, ECB-900MP, và ECB-40MP được trang bị khả năng kết nối với điện thoại thông qua Bluetooth để sử dụng trọn vẹn mọi tính năng  trong tầm tay nhằm hỗ trợ các đội đua. Đồng hồ có thể kết nối với một ứng dụng đặc biệt trên điện thoại để tự động điều chỉnh thời gian hiện hành. Chức năng liên kết điện thoại cũng có thể được sử dụng để lựa chọn hiển thị giờ thế giới, cài đặt báo thức và hẹn giờ, công cụ tìm điện thoại bằng cách nhấn vào nút đồng hồ để điện thoại đổ chuông ( nằm trong phạm vi Bluetooth ) và các hoạt động khác. Bạn cũng có thể gửi giờ vòng với đơn vị đo 1/1000 giây đến điện thoại và sử dụng ứng dụng để kiểm tra biểu đồ giờ vòng.\r\nMẫu ECB-950MP và ECB-900MP còn được trang bị hệ thống pin năng lượng mặt trời có thể sạc bằng đèn huỳnh quang hoặc ánh sáng mặt trời. Thời gian pin sạ 6 tháng với điều kiện ánh sáng bình thường không tiếp xúc với ánh sáng khi sạc và 19 tháng trong bóng tối. Điều này có nghĩa là bạn cứ tự tin đeo đồng hồ ở mọi lúc mọi nơi mà không cần quan tâm đến việc hết pin và giúp tiết kiệm năng lượng sau khi pin đã được sạc đầy. Ngoài ra thì có thêm các chức năng khác như đèn LED kép chiếu sáng cực mạng( gồm 1 đền LED cho mặt đồng hồ, 1 đền LED màn hình kĩ thuật số) dễ dàng xem giờ trong bóng tối.', 3, '2023-05-12 00:51:27', NULL),
(9, 'ECB-2000MFG-1A', 'ECB-2000MFG-1A.png', 15545000, 'Xin giới thiệu mẫu đồng hồ ECB-2000MFG đua xe thể thao có một không hai, hiệu suất cao. Hãng EDIFICE hợp tác với họa sĩ Shuichi Shigeno tạo nên mẫu thiết kế vô cùng đặc biệt. Ông là họa sĩ chấp bút cho hai bộ truyện manga chủ đề đua xe thể thao nổi tiếng: Initial D và MF GHOST. Tác phẩm Initial D nổi tiếng với các cuộc đua băng qua đèo dốc. Tác phẩm được xuất bản từ năm 1995 đến năm 2013 trên Tạp chí Young của nhà xuất bản Kodansha Ltd. và được người hâm mộ vô cùng yêu thích với hơn 56 triệu bản được bán ra. MF GHOST là bộ manga đua xe lấy bối cảnh đường phố của Shigeno. Tác phẩm xuất hiện trên cùng một tạp chí từ năm 2017, cùng một loạt anime truyền hình dự kiến ra mắt vào năm 2023. Mẫu hợp tác trong mơ này mô phỏng thế giới của hai bộ truyện Initial D và MF GHOST. Các chi tiết trong cả hai bộ truyện đều được đưa vào mẫu thiết kế đồng hồ dành riêng cho người chiến thắng này. Thiết kế màu đỏ và đen dựa trên chiếc Toyota GT86 do nhân vật chính Kanata Rivington trong bộ truyện MF GHOST điều khiển. Phần đế của mặt số và mặt dưới của dây da đều được đóng dấu ký tự Gyaaa (tiếng lốp xe rít trên đường) cắt ngang các trang sách của hai bộ truyện Initial D và MF GHOST. Mặt dưới của dây đeo cũng có dòng chữ “Cửa hàng đậu phụ Fujiwara (Xe của gia đình),” dòng chữ quen thuộc ở bên hông xe Toyota AE86 của Takumi Fujiwara, nhân vật chính trong truyện Initial D. Với tính năng kết nối với điện thoại thông minh qua Bluetooth giúp bạn thao tác dễ dàng và hệ thống sạc Tough Solar cung cấp năng lượng, chiếc đồng hồ hiệu suất cao này giúp bạn tự do tập trung vào con đường phía trước.', 3, '2023-05-12 00:51:32', NULL),
(10, 'SHE-4554PGL-8AUDF', 'SHE-4554PGL-8AUDF.png', 3973000, 'Bộ vỏ bát giác thời trang của bộ sưu tập đồng hồ SHEEN mới lần này được hoàn thiện bằng cách tạo nên một vẻ ngoài sang trọng quý phái. Bề mặt trên cùng của vòng mặt số phẳng được xử lý đánh bóng xước tạo điểm độc đáo và lấp lánh cho chiếc đồng hồ. Bề mặt dốc của vỏ được xử lý đánh bóng tráng gương. Bộ vỏ và vòng mặt số đa diệm kết hợp với vật liệu kim loại có lớp phủ bóng đã tạo nên một thiết kế đẹp tuyệt vời và làm cho mẫu đồng hồ trông giống như một phụ kiện thời trang đẳng cấp. Casio đã ứng dụng kĩ thuật tiên tiến thiết kế cho toàn bộ vỏ mỏng hơn chỉ còn 7.5 mm giúp cho người đeo cảm giác nhẹ nhàng khi đeo.  \r\nSHE-4554PGL: Bộ vỏ mạ ion (IP) màu vàng hồng kết hợp hoàn hảo với màu đen của mặt số. Dây đeo dạng lưới nhuyễn mang đến cảm giác thoải mái khi đeo và giúp chiếc đồng hồ trở thành một phụ kiện thời trang trên cổ tay.\r\nCác tính năng khác của những mã đồng hồ này bao gồm mặt kính saphia chống trầy, đi cùng với khả năng chống nươc đến 50 mét.', 4, '2023-05-12 00:51:40', NULL),
(11, 'SHE-4541G-9A', 'SHE-4541G-9A.png', 6564000, 'Bổ sung phiên bản đồng hồ mang màu sắc dịu nhẹ, lung linh vào bộ sưu tập bảng màu của bạn. Chiếc đồng hồ đơn giản có diện mạo cổ điển với kim giờ, phút và giây nay trông rực rỡ hơn với đường gờ và dây đeo phủ lớp tráng gương lấp lánh. Mặt kính saphia chống xước và khả năng chống nước ở độ sâu lên đến 50 mét giúp bạn không phải lo lắng, trong khi màn hình hiển thị ngày dễ đọc và các chức năng tiện dụng khác mang đến cho bạn cuộc sống dễ dàng hơn. Kết hợp cả phong cách lẫn tính thực tiễn, đây là món phụ kiện tuyệt đẹp mà cổ tay bạn đang còn thiếu.', 4, '2023-05-12 00:51:47', NULL),
(12, 'SHE-4539FPL-7A', 'SHE-4539FPL-7A.png', 3973000, 'Trải nghiệm phong cách có đôi chút khác thường và lãng mạn với chiếc đồng hồ lấy cảm hứng từ những vòng hoa. Vòng hoa không có điểm kết thúc tượng trưng cho tình yêu vĩnh cửu và may mắn – những cảm xúc dường như bừng nở từ thiết kế vòng hoa của những chiếc đồng hồ này.\r\nLớp hoàn thiện một tông màu kết hợp hài hòa với màu sắc của mặt số, cùng viên pha lê duy nhất lấp lánh đầy tinh tế ở vị trí 7 giờ.\r\nVỏ và dây đeo đều được mạ ion cùng tông màu với mặt số, tạo nên diện mạo đơn sắc vô cùng tinh tế. Với mặt kính saphia chống xước và khả năng chống nước ở độ sâu lên đến 50 mét, những chiếc đồng hồ tuyệt đẹp mà vẫn đầy đủ chức năng này mang đến cho bạn niềm vui trong cuộc sống năng động.', 4, '2023-05-12 00:51:56', NULL),
(13, 'MQ-24S-8B', 'MQ-24S-8B.png', 914000, 'Mẫu đồng hồ MQ-24 bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-12 00:52:02', NULL),
(14, 'LF-10WH-1', 'LF-10WH-1.png', 1062000, '\"Những chiếc đồng hồ kỹ thuật số nhỏ gọn và nhẹ này được tạo ra bằng cách sử dụng nhựa sinh khối.( nhựa sinh khối là những loại vật liệu sinh học có nguồn gốc từ sinh vật, thực vật như phế phẩm từ nông nghiệp, lâm nghiệp (Rơm, bã cây, lá khô, vụn gỗ, giấy vụn,... ). Thiết kế đơn sắc liền khối giữa mặt số và dây đeo tăng thêm sự rắn chắc mạnh mẽ dù SP rất mỏng nhẹ\r\nDây urethane (Urethane là một nhóm các chất hữu cơ được sử dụng nhiều trong sản xuất công nghiệp hiện nay, rất nhẹ ) được làm bằng nhựa sinh khối thân thiện với môi trường giúp giảm bớt tác động môi trường bằng cách sử dụng hữu cơ tái tạo.  Những SP này giúp nâng cao lối sống có ý thức về giữ gìn sinh thái và bảo vệ môi trường tự nhiên.Các chức năng hữu ích bao gồm báo thức, đồng hồ bấm giờ và lịch tự động đầy đủ cùng với đèn nền LED để dễ đọc ngay cả trong\r\ntối.  SP này an toàn khi đeo trong mưa\"', 5, '2023-05-12 00:52:08', NULL),
(15, 'WS-1500H-5AV', 'WS-1500H-5AV.png', 1259000, 'Thoả mãn con người phong cách và thực tiễn trong bạn với chiếc đồng hồ số đa năng mang thiết kế táo bạo, to bản và dễ đọc. Hoàn chỉnh với tuổi thọ pin 10 năm, khả năng chống nước lên đến 100 mét, đèn LED và chế độ hiển thị giờ kép, mẫu đồng hồ này luôn sẵn sàng cho bạn. Chỉ báo mực nước câu cá và tuần trăng chính là những gì bạn cần khi ra khơi.', 5, '2023-05-12 00:52:15', NULL),
(16, 'F-94WA-9DG', 'F-94WA-9DG.png', 492000, 'Giá thành hợp lý, phù hợp cho đối tượng các em học sinh. Ba mẹ có thể yên tâm mua các sản phẩm bên shop cho con em mình để trải nghiệm cảm giác có 1 không 2 từ giá trị mà sản phẩm bên shop đem lại... ', 5, '2023-05-12 00:52:21', NULL),
(17, 'F-91WS-7DF', 'F-91WS-7DF.png', 907000, 'Giá thành hợp lý, phù hợp cho đối tượng các em học sinh. Ba mẹ có thể yên tâm mua các sản phẩm bên shop cho con em mình để trải nghiệm cảm giác có 1 không 2 từ giá trị mà sản phẩm bên shop đem lại... ', 5, '2023-05-12 00:52:26', NULL),
(18, 'PRG-340-3DR', 'PRG-340-3DR.png', 7353000, 'Hòa mình vào không gian ngoài trời tuyệt vời với mẫu đồng hồ PRO TREK chạy bằng năng lượng mặt trời với các vật liệu thân thiện với môi trường nhằm thể hiện sự quan tâm đối với môi trường. Dòng phụ kiện PRO TREK nguyên bản ngoài trời dành cho những người yêu thiên nhiên giới thiệu mẫu đồng hồ PRG-340 kết hợp nhựa sinh học thân thiện với môi trường, mang lại cảm giác vừa vặn thoải mái cho cổ tay của bạn.\r\nVỏ và dây đeo uretan được chế tạo bằng nhựa sinh học làm từ dầu thầu dầu và dây đeo bằng nhựa sinh học làm từ ngô. Màn hình LCD hai mặt bố trí các lớp riêng biệt hiển thị đồ họa la bàn và các chức năng của đồng hồ, tạo nên màn hình la bàn lớn hơn giúp bạn đọc và chuyển hướng dễ hơn trong một thiết kế vừa đẹp mắt vừa đầy đủ chức năng. Đường gờ xoay giúp bạn dễ dàng ghi lại các chỉ số la bàn, trong khi hệ thống sạc Tough Solar duy trì chức năng cải tiến khi di chuyển.\r\nRa ngoài khám phá trên đôi chân mềm mại! Nhựa sinh học là các polyme được sản xuất bằng cách sử dụng các vật liệu hóa học hoặc sinh học tổng hợp từ các chất có nguồn gốc từ thực vật hoặc các chất hữu cơ tái tạo khác và được cho là có tác dụng làm giảm tác động môi trường và thúc đẩy chuyển dịch sang nền kinh tế tuần hoàn.', 6, '2023-05-12 00:52:35', NULL),
(19, 'PRG-30B-4', 'PRG-30B-4.png', 7353000, 'Hòa mình vào không gian ngoài trời tuyệt vời với mẫu đồng hồ PRO TREK chạy bằng năng lượng mặt trời với các vật liệu thân thiện với môi trường nhằm thể hiện sự quan tâm đối với môi trường. Dòng phụ kiện PRO TREK nguyên bản ngoài trời dành cho những người yêu thiên nhiên giới thiệu mẫu đồng hồ PRG-30B kết hợp nhựa sinh học thân thiện với môi trường, mang lại cảm giác vừa vặn thoải mái cho cổ tay của bạn.\r\nVỏ và dây đeo uretan được chế tạo bằng nhựa sinh học làm từ dầu thầu dầu và dây đeo bằng nhựa sinh học làm từ ngô. Màn hình LCD hai mặt bố trí các lớp riêng biệt hiển thị đồ họa la bàn và các chức năng của đồng hồ, tạo nên màn hình la bàn lớn hơn giúp bạn đọc và chuyển hướng dễ hơn trong một thiết kế vừa đẹp mắt vừa đầy đủ chức năng. Đường gờ xoay giúp bạn dễ dàng ghi lại các chỉ số la bàn, trong khi hệ thống sạc Tough Solar duy trì chức năng cải tiến khi di chuyển.\r\nRa ngoài khám phá trên đôi chân mềm mại! Nhựa sinh học là các polyme được sản xuất bằng cách sử dụng các vật liệu hóa học hoặc sinh học tổng hợp từ các chất có nguồn gốc từ thực vật hoặc các chất hữu cơ tái tạo khác và được cho là có tác dụng làm giảm tác động môi trường và thúc đẩy chuyển dịch sang nền kinh tế tuần hoàn.', 6, '2023-05-12 00:52:41', NULL),
(20, 'PRT-B70BE-1', 'PRT-B70BE-1.png', 8636000, 'Hòa mình vào không gian ngoài trời tuyệt vời với mẫu đồng hồ PRO TREK chạy bằng năng lượng mặt trời với các vật liệu thân thiện với môi trường nhằm thể hiện sự quan tâm đối với môi trường. Dòng phụ kiện PRO TREK nguyên bản ngoài trời dành cho những người yêu thiên nhiên giới thiệu mẫu đồng hồ PRT-B70BE kết hợp nhựa sinh học thân thiện với môi trường, mang lại cảm giác vừa vặn thoải mái cho cổ tay của bạn.\r\nVỏ và dây đeo uretan được chế tạo bằng nhựa sinh học làm từ dầu thầu dầu và dây đeo bằng nhựa sinh học làm từ ngô. Màn hình LCD hai mặt bố trí các lớp riêng biệt hiển thị đồ họa la bàn và các chức năng của đồng hồ, tạo nên màn hình la bàn lớn hơn giúp bạn đọc và chuyển hướng dễ hơn trong một thiết kế vừa đẹp mắt vừa đầy đủ chức năng. Đường gờ xoay giúp bạn dễ dàng ghi lại các chỉ số la bàn, trong khi hệ thống sạc Tough Solar duy trì chức năng cải tiến khi di chuyển.\r\nRa ngoài khám phá trên đôi chân mềm mại! Nhựa sinh học là các polyme được sản xuất bằng cách sử dụng các vật liệu hóa học hoặc sinh học tổng hợp từ các chất có nguồn gốc từ thực vật hoặc các chất hữu cơ tái tạo khác và được cho là có tác dụng làm giảm tác động môi trường và thúc đẩy chuyển dịch sang nền kinh tế tuần hoàn.', 6, '2023-05-12 00:52:47', NULL),
(21, 'GBD-H2000-2DR', 'GBD-H2000-2DR.png', 19864000, 'Giới thiệu những sản phẩm mới nhất cho dòng đồng hồ thể thao G-SQUAD của G-SHOCK. \r\nNhững mẫu đồng hồ thuộc dòng GBD-H2000 mới ra mắt được trang bị máy đo nhịp tim và khả năng kết nối GPS để hỗ trợ cho các hoạt động thể thao của nhiều môn thể thao khác nhau.\r\nCác tính năng và chức năng được thiết kế để hỗ trợ, sao lưu việc tập luyện của bạn bằng bộ ba cảm biến: \r\n- Một cảm biến quang đo nhịp tim. \r\n- Một cảm biến gia tốc đếm số bước.\r\n- Cảm biến con quay hồi chuyển (Nó là một thiết bị ứng dụng nguyên tắc bảo toàn mô men động lượng để đo đạc hoặc duy trì phương hướng. Có thể hiểu đơn giản, cảm biến con quay hồi chuyển là một bánh xe hay đĩa quay có trục quay tự do theo mọi hướng. Người ta dùng nó để đo vận tốc góc rất lớn của những vật trong không gian và qua đó phát hiện những thay đổi, để kịp thời điều chỉnh sự cân bằng của vật) để phát hiện kiểu bơi và hướng rẽ của bạn. \r\nNgoài ra còn có điều hướng, độ cao/áp suất khí quyển, và cảm biến nhiệt độ. Mẫu đồng hồ này không chỉ hỗ trợ việc chạy bộ mà còn hỗ trợ cho nhiều môn thể thao khác như đạp xe hay bơi lội.\r\nKhả năng GPS có thể sử dụng để đo khoảng cách, tốc độ, nhịp độ, và hơn thế nữa.\r\nBạn cũng có thể phân tích quá trình luyện tập và phục hồi của mình thông qua giấc ngủ bằng cách sử dụng thư viện Polar. \r\nDây đeo và vòng mặt số sử dụng vật liệu nhựa sinh khối làm từ bắp, thân thiện với môi trường. Nhựa sinh khối là vật liệu polyme bao gồm các chất có nguồn gốc từ vật liệu hữu cơ tái tạo, thu được bằng cách tổng hợp hóa học hoặc sinh học các nguyên liệu thô.\r\nNhựa sinh khối giảm tải tác động xấu đến môi trường và giúp con người tiến gần hơn một \"xã hội xanh\".\r\nThiết kế thông minh với nắp lưng cong giúp ôm sát chuyển động của mu bàn tay, các nút bấm được cải thiện khả năng hoạt động và tinh thể lỏng MIP độ nét cao giúp cho màn hình hiển thị dễ đọc hơn. \r\nCả USB và sạc năng lượng mặt trời đều được hỗ trợ để đồng hồ hoạt động liên tục mà không bị gián đoạn.\r\n', 1, '2023-05-13 15:14:47', NULL),
(22, 'GBD-H2000-1BDR', 'GBD-H2000-1BDR.png', 19864000, 'Các tính năng và chức năng được thiết kế để hỗ trợ, sao lưu việc tập luyện của bạn bằng bộ ba cảm biến: \r\n- Một cảm biến quang đo nhịp tim. \r\n- Một cảm biến gia tốc đếm số bước.\r\n- Cảm biến con quay hồi chuyển (Nó là một thiết bị ứng dụng nguyên tắc bảo toàn mô men động lượng để đo đạc hoặc duy trì phương hướng. Có thể hiểu đơn giản, cảm biến con quay hồi chuyển là một bánh xe hay đĩa quay có trục quay tự do theo mọi hướng. Người ta dùng nó để đo vận tốc góc rất lớn của những vật trong không gian và qua đó phát hiện những thay đổi, để kịp thời điều chỉnh sự cân bằng của vật) để phát hiện kiểu bơi và hướng rẽ của bạn. \r\nNgoài ra còn có điều hướng, độ cao/áp suất khí quyển, và cảm biến nhiệt độ. Mẫu đồng hồ này không chỉ hỗ trợ việc chạy bộ mà còn hỗ trợ cho nhiều môn thể thao khác như đạp xe hay bơi lội.\r\nKhả năng GPS có thể sử dụng để đo khoảng cách, tốc độ, nhịp độ, và hơn thế nữa.\r\nBạn cũng có thể phân tích quá trình luyện tập và phục hồi của mình thông qua giấc ngủ bằng cách sử dụng thư viện Polar. \r\nDây đeo và vòng mặt số sử dụng vật liệu nhựa sinh khối làm từ bắp, thân thiện với môi trường. Nhựa sinh khối là vật liệu polyme bao gồm các chất có nguồn gốc từ vật liệu hữu cơ tái tạo, thu được bằng cách tổng hợp hóa học hoặc sinh học các nguyên liệu thô.\r\nNhựa sinh khối giảm tải tác động xấu đến môi trường và giúp con người tiến gần hơn một \"xã hội xanh\".\r\nThiết kế thông minh với nắp lưng cong giúp ôm sát chuyển động của mu bàn tay, các nút bấm được cải thiện khả năng hoạt động và tinh thể lỏng MIP độ nét cao giúp cho màn hình hiển thị dễ đọc hơn. \r\nCả USB và sạc năng lượng mặt trời đều được hỗ trợ để đồng hồ hoạt động liên tục mà không bị gián đoạn.\r\n', 1, '2023-05-13 15:15:02', NULL),
(23, 'GBD-H2000-1ADR', 'GBD-H2000-1ADR.png', 19864000, 'Các tính năng và chức năng được thiết kế để hỗ trợ, sao lưu việc tập luyện của bạn bằng bộ ba cảm biến: \r\n- Một cảm biến quang đo nhịp tim. \r\n- Một cảm biến gia tốc đếm số bước.\r\n- Cảm biến con quay hồi chuyển (Nó là một thiết bị ứng dụng nguyên tắc bảo toàn mô men động lượng để đo đạc hoặc duy trì phương hướng. Có thể hiểu đơn giản, cảm biến con quay hồi chuyển là một bánh xe hay đĩa quay có trục quay tự do theo mọi hướng. Người ta dùng nó để đo vận tốc góc rất lớn của những vật trong không gian và qua đó phát hiện những thay đổi, để kịp thời điều chỉnh sự cân bằng của vật) để phát hiện kiểu bơi và hướng rẽ của bạn. \r\nNgoài ra còn có điều hướng, độ cao/áp suất khí quyển, và cảm biến nhiệt độ. Mẫu đồng hồ này không chỉ hỗ trợ việc chạy bộ mà còn hỗ trợ cho nhiều môn thể thao khác như đạp xe hay bơi lội.\r\nKhả năng GPS có thể sử dụng để đo khoảng cách, tốc độ, nhịp độ, và hơn thế nữa.\r\nBạn cũng có thể phân tích quá trình luyện tập và phục hồi của mình thông qua giấc ngủ bằng cách sử dụng thư viện Polar. \r\nDây đeo và vòng mặt số sử dụng vật liệu nhựa sinh khối làm từ bắp, thân thiện với môi trường. Nhựa sinh khối là vật liệu polyme bao gồm các chất có nguồn gốc từ vật liệu hữu cơ tái tạo, thu được bằng cách tổng hợp hóa học hoặc sinh học các nguyên liệu thô.\r\nNhựa sinh khối giảm tải tác động xấu đến môi trường và giúp con người tiến gần hơn một \"xã hội xanh\".\r\nThiết kế thông minh với nắp lưng cong giúp ôm sát chuyển động của mu bàn tay, các nút bấm được cải thiện khả năng hoạt động và tinh thể lỏng MIP độ nét cao giúp cho màn hình hiển thị dễ đọc hơn. \r\nCả USB và sạc năng lượng mặt trời đều được hỗ trợ để đồng hồ hoạt động liên tục mà không bị gián đoạn.\r\n', 1, '2023-05-13 15:15:13', NULL),
(24, 'GM-B2100GD-9ADR', 'GM-B2100GD-9ADR.png', 19000000, 'Trân trọng giới thiệu dòng đồng hồ G-SHOCK GM-B2100 kim điện tử kết hợp, với bộ vỏ kim loại nguyên khối hoàn toàn mới và được thừa hưởng nguyên bản ý tưởng thiết kế của mẫu đồng hồ G-SHOCK DW-5000C. Thép không gỉ được sử dụng làm ốc nắp lưng, vòng mặt số và dây, mang đến sự đơn giản, đồng thời loại bỏ những chi tiết thiết kế không hợp lý. GM-B2100GD giữ nguyên cấu trúc chống va đập nhằm bảo vệ bộ máy tránh khỏi những hư hỏng do va chạm.\r\nCác chức năng được thừa hưởng từ mẫu đồng hồ nguyên bản DW-5000C từ năm 1983 bao gồm vòng mặt số bát giác và những lỗ nhỏ trên bề mặt dây đeo.\r\nVòng mặt số và dây của mẫu đồng hồ GM-B2100GD-9A được hoàn thiện bằng phương pháp phủ ion (IP) màu vàng kim.\r\nĐộ dày tổng thể đã được giảm đi nhờ vào việc ứng dụng công nghệ gắn kết mật độ cao để sản xuất bộ máy mỏng và hiệu suất cao. Từng chi tiết được cải tiến nhằm mang đến sự thoải mái khi đeo trên cổ tay.\r\nVòng mặt số bằng thép không gỉ, hình thành sau quá trình rèn, cắt đến đánh bóng cực kỳ tỉ mỉ. Bề mặt đồng hồ được hoàn thiện bằng phương pháp đánh bóng vân xoáy; trong khi đó, bề mặt của các góc cạnh lại được đánh bóng tráng gương. \r\nCấu trúc chống sốc cho các bộ phận kim loại bên ngoài có được nhờ vào các bộ phận đệm bằng nhựa cao cấp nằm giữa vòng mặt số và vỏ. Mặt số được tạo hình tinh tế nhờ vào \"công nghệ vi chế tạo\" của Nhà máy CASIO Yamagata và hoàn thiện bề mặt một cách tinh xảo với \"công nghệ phủ lắng đọng màng mỏng\".\r\nBộ máy kim điện tử kết hợp có kích thước mỏng và hiệu suất cao có thể kết nối với điện thoại thông minh bằng Bluetooth để truy cập dữ liệu thời gian một cách chính xác.\r\nCùng một số tính năng hữu ích khác bao gồm pin mặt trời, đèn LED siêu sáng.\r\n', 1, '2023-05-13 15:15:20', NULL),
(25, 'GMA-S120TB-8ADR', 'GMA-S120TB-8ADR.png', 5256000, 'Từ bộ sưu tập đồng hồ kim điện tử nhỏ gọn GMA-S110 và GMA-S120, trân trọng giới thiệu bộ sưu tập mới với sắc xanh dương làm điểm nhấn. Dây và vỏ làm từ nhựa bán trong suốt màu xám, kết hợp với mặt đồng hồ màu xanh thời thượng, tạo nên một mẫu đồng hồ đời thường và đa phong cách. Đây là sự kết hợp hoàn hảo với phong cách thời trang đường phố.\r\n', 1, '2023-05-13 15:15:26', NULL),
(26, 'GMA-S110TB-8ADR', 'GMA-S110TB-8ADR.png', 5256000, 'Từ bộ sưu tập đồng hồ kim điện tử nhỏ gọn GMA-S110 và GMA-S120, trân trọng giới thiệu bộ sưu tập mới với sắc xanh dương làm điểm nhấn. Dây và vỏ làm từ nhựa bán trong suốt màu xám kết hợp với mặt đồng hồ màu xanh thời thượng tạo nên một mẫu đồng hồ đời thường và đa phong cách và là sự kết hợp hoàn hảo với phong cách thời trang đường phố.\r\n', 1, '2023-05-13 15:15:32', NULL),
(27, 'GA-2100FT-8ADR', 'GA-2100FT-8ADR.png', 5010000, 'Từ G-SHOCK, thương hiệu đồng hồ đã luôn không ngừng theo đuổi sự bền bỉ từ năm 1983, trân trọng giới thiệu một mẫu đồng hồ hợp tác cùng thương hiệu FUTUR, thương hiệu thời trang mới nổi gần đây đến từ Pháp.\r\nMẫu đồng hồ nguyên bản là mẫu mặt số bát giác GA-2100, sử dụng sắc màu xám kết hợp cùng một số bộ phận bán trong suốt, hoàn thiện bằng những gam màu đơn sắc.\r\nMột mặt số nhỏ ở vị trí 9h được nhấn nhá nổi bật bằng chiếc kim nhỏ màu vàng kim kết hợp cùng các chữ số màu xanh dương, trắng, đỏ, tượng trưng cho 3 màu cờ nước Pháp.\r\nSự kết hợp cùng thương hiệu thời trang đường phố được ưa chuộng như FUTUR mang đến một mẫu đồng hồ đơn giản nhưng không bao giờ lỗi mốt.\r\nFUTUR\r\nFUTUR được sáng lập bởi Felix Schaper và Benoit Fredonie vào tháng 7/2014. Xuất phát từ hai nền tảng khác nhau, một từ lĩnh vực trượt ván và nền tảng còn lại đến từ lĩnh vực thời trang. Hai cá thể riêng biệt này cùng nhau xây dựng FUTUR thành một thương hiệu tập trung vào gu thẩm mỹ bóng bẩy hút mắt bắt nguồn từ phong cách trượt ván đi cùng với sản phẩm chất lượng cao.\r\n', 1, '2023-05-13 15:15:39', NULL),
(28, 'DW-5600YIB23-8DR', 'DW-5600YIB23-8DR.png', 4145000, 'G-SHOCK tung ra sản phẩm phá cách với mẫu Youths in Balaclava mới - bổ sung vào bộ sưu tập rất thành công của họ ra mắt lần đầu tiên vào năm 2022.\r\nG-Shock & Youths In Balaclava phát hành mẫu G-shock mới với mặt số màu xanh lá cây rừng, nối liền với dây cao su đen mờ.\r\nTừ G-SHOCK, chiếc đồng hồ bền chắc được tiếp tục phát triển để theo đuổi độ dẻo dai tối ưu kể từ năm 1983, đã xuất hiện một mẫu mới được tạo ra với sự hợp tác của Youths in Balaclava.\r\nTừ lần hợp tác đầu tiên vào năm 2022 cho bộ sưu tập đồng hồ cực chất, hai thương hiệu đồng hồ và thời trang đã một lần nữa kết hợp với nhau để tạo ra một bổ sung mới cho dòng sản phẩm kết hợp – tạo dấu ấn về độ bền chắc của G-Shock và thương hiệu chuyên về sự phá cách như Balaclava.\r\nTuổi trẻ ở Balaclava nhân cách hóa sự hoảng loạn của một quốc gia bên bờ vực chiến tranh, họ bắt đầu khi còn là những thanh thiếu niên đi qua hành trình cuộc đời và tình cờ phát hiện ra một điểm chung là tất cả đều bị thúc đẩy với mong muốn được đóng góp một phần vào cuộc sống biến động đầy kịch tính ở đó .\r\nMột bộ sưu tập mang tính truyền cảm hứng đến giới trẻ ngày nay –  để sáng tạo, cảm nhận và sống. Mặc trang phục balaclava là để đoàn kết và tôn vinh mọi cá tính. Thanh niên ở Balaclava tin rằng điều quan trọng là phải nhắc nhở những thanh niên đang chán nản rằng họ có cơ hội lắng nghe và luôn được lắng nghe.\r\nG-SHOCK x Youths in Balaclava : \r\nMẫu cơ bản là DW-5600 kỹ thuật số tiêu chuẩn, nhưng lần này mặt đồng hồ khoác chiếc áo xanh lá cây của rừng rậm cùng các họa tiết hoa lá làm nền cho tên viết của Casio và Youths in Balaclava.\r\nLogo của một chiếc balaclava ( mũ trùm mặt ) tô điểm cho mặt sau của đồng hồ cùng với toàn bộ tên thương hiệu. Dây đồng hồ sử dụng chất cao su đen mờ.\r\nKhả năng chống va đập mạnh mẽ cùng với thiết kế hiện đại, đẹp mắt làm cho chiếc đồng hồ này trở thành chiếc đồng hồ hoàn hảo cho những người hâm mộ nghệ thuật và nhịp điệu phá cách. Nó đi kèm với bộ tính năng đầy đủ của G-SHOCK bao gồm khả năng chống sốc, đèn nền phát quang, đồng hồ bấm giờ 1/100 giây, đồng hồ đếm ngược, báo thức đa chức năng và tín hiệu thời gian hàng giờ với lịch hoàn toàn tự động ở định dạng giờ 12/24.\r\nĐôi nét về G-SHOCK : \r\nTừ nhà sáng tạo- Ông Ibe – với sứ mệnh làm ra chiếc đồng hồ không thể phá vỡ, G-SHOCK là chiếc đồng hồ đã làm thế giới sửng sốt với khái niệm về độ bền bất chấp logic chế tạo đồng hồ thông thường.\r\nG-SHOCK tạo ra những chiếc đồng hồ có công nghệ tiên tiến có thể chống lại trọng lực, nhiệt độ đóng băng, áp suất nước cao và từ trường, những chiếc đồng hồ được chế tạo để trường tồn vĩnh viễn thông qua việc không ngừng theo đuổi độ bền bỉ.\r\nRa mắt vào năm 1983, G-SHOCK đã kỷ niệm 35 năm thành lập vào năm 2018 và đồng hồ của hãng đã bán được hơn 100 triệu chiếc tại hơn 100 quốc gia trong thời gian đó. Bộ sưu tập G-SHOCK Premium sử dụng các tiêu chuẩn cao nhất về kỹ thuật và thử nghiệm nghiêm ngặt tại trung tâm thiết kế của hãng ở Yamagata, Nhật Bản, để đảm bảo rằng mọi chi tiết đều đúng với ý tưởng ban đầu, đồng thời sự kết hợp giữa vật liệu tốt và kiểu dáng mang đến những chiếc đồng hồ cao cấp tuyệt đỉnh .\r\nĐôi nét về CASIO : \r\nCasio Computer Co., Ltd. là một trong những nhà sản xuất hàng đầu thế giới về các sản phẩm điện tử tiêu dùng và giải pháp thiết bị cho kinh doanh. Kể từ khi thành lập vào năm 1946, Casio đã cố gắng hiện thực hóa niềm tin của công ty về “sáng tạo và đóng góp” thông qua việc giới thiệu các sản phẩm sáng tạo và giàu trí tưởng tượng. Ngày nay, các dịch vụ của Casio bao gồm đồng hồ, từ điển điện tử, máy tính, nhạc cụ, thiết bị hệ thống và các sản phẩm khác.\r\n', 1, '2023-05-13 15:15:46', NULL),
(29, 'G-B001MVE-9DR', 'G-B001MVE-9DR.png', 10882000, 'Trân trọng giới thiệu mẫu đồng hồ hoàn toàn mới G-B001M, là phiên bản nâng cấp của mẫu đồng hồ DW-001, được ra mắt với tạo hình Capsule Tough và trở lại vào năm 1994. Mẫu G-B001M vẫn giữ phom dáng nguyên bản và cấu trúc chống sốc của mẫu DW-001 nhưng lại được thêm vào cấu trúc bảo vệ lõi cacbon và vòng mặt số bằng kim loại được đánh bóng để mang đến một lớp hoàn thiện độc đáo. Bộ vỏ vòng mặt số hai màu mang đến một vẻ đẹp mới mẻ và độc lạ. Mẫu G-B001MVE-9 sử dụng màu vàng đặc trưng của mẫu DW-001 ra mắt năm 1994, được thiết kế thêm dây đeo có thể thay thế và bộ vỏ vòng mặt số bằng nhựa có thể mix-match với bất kỳ mã đồng hồ nào trong 12 phiên bản khác nhau của bộ sưu tập mới này. \r\nĐồng hồ có khả năng kết nối Bluetooth, bạn có thể liên kết với một ứng dụng đặc biệt trên điện thoại để đi đến bất kỳ thông báo nào.\r\n', 1, '2023-05-13 15:15:52', NULL),
(30, 'G-B001MVB-8DR', 'G-B001MVB-8DR.png', 7872000, 'Trân trọng giới thiệu bộ sưu tập hoàn toàn mới, mẫu đồng hồ G-B001M đến từ G-SHOCK, thương hiệu đồng hồ đã không ngừng thử nghiệm những giới hạn mới về độ cứng cáp bền bỉ của chiếc đồng hồ đeo tay từ năm 1983. Bộ sưu tập mới lần này được tích hợp khả năng kết nối với điện thoại thông minh và vòng mặt số có khả năng tháo rời.\r\nMẫu đồng hồ G-B001M là một phiên bản mới và được cải tiến từ mẫu DW-001, được thiết kế theo kiểu Capsule Tough trở trở lại vào năm 1994. Mẫu G-B001M vẫn được giữ nguyên hình dáng cũ và tính năng chống sốc của mẫu DW-001 nhưng cũng được trang bị thêm cấu trúc bảo vệ lõi cacbon và vòng mặt số bằng kim loại được đánh bóng mang đến vẻ đẹp độc đáo. Một sự cải tiến sáng tạo với vỏ bọc vòng mặt số được kết hợp với nhựa bán trong suốt tạo nên một vẻ ngoài độc đáo khác lạ.\r\nBộ sưu tập mới lần này cải tiến hơn so với thiết kế ban đầu vì được tích hợp khả năng kết nối điện thoại thông minh trong một cấu trúc chống sốc của G-SHOCK cùng với thiết kế mới lạ.\r\n', 1, '2023-05-13 15:15:57', NULL),
(31, 'G-B001MVA-1DR', 'G-B001MVA-1DR.png', 8119000, 'Trân trọng giới thiệu bộ sưu tập hoàn toàn mới, mẫu đồng hồ G-B001M đến từ G-SHOCK, thương hiệu đồng hồ đã không ngừng thử nghiệm những giới hạn mới về độ cứng cáp bền bỉ của chiếc đồng hồ đeo tay từ năm 1983. Bộ sưu tập mới lần này được tích hợp khả năng kết nối với điện thoại thông minh và vòng mặt số có khả năng tháo rời.\r\nMẫu đồng hồ G-B001M là một phiên bản mới và được cải tiến từ mẫu DW-001, được thiết kế theo kiểu Capsule Tough trở trở lại vào năm 1994. Mẫu G-B001M vẫn được giữ nguyên hình dáng cũ và tính năng chống sốc của mẫu DW-001 nhưng cũng được trang bị thêm cấu trúc bảo vệ lõi cacbon và vòng mặt số bằng kim loại được đánh bóng mang đến vẻ đẹp độc đáo. Một sự cải tiến sáng tạo với vỏ bọc vòng mặt số được kết hợp với nhựa bán trong suốt tạo nên một vẻ ngoài độc đáo khác lạ.\r\nBộ sưu tập mới lần này cải tiến hơn so với thiết kế ban đầu vì được tích hợp khả năng kết nối điện thoại thông minh trong một cấu trúc chống sốc của G-SHOCK cùng với thiết kế mới lạ.\r\n', 1, '2023-05-13 15:16:03', NULL),
(32, 'GMA-S2100GA-3ADR', 'GMA-S2100GA-3ADR.png', 3628000, 'Từ bộ sưu tập đồng hồ kim - điện tử kết hợp và nhỏ gọn GMA-S2100, trân trọng giới thiệu một số mẫu đồng hồ mới sử dụng màu xanh lá làm điểm nhấn nổi bật. Mặt số phẳng kết hợp với vạch chỉ giờ đơn giản mang đến vẻ đẹp tối giản cho mẫu đồng hồ. Màu xanh lá đang là xu hướng được sử dụng cho logo, vạch chỉ giờ, LCD và một số chi tiết khác giúp cho mẫu đồng hồ đời thường trở nên thật phong cách khi kết hợp với thời trang đường phố hiện nay.\r\n- Bộ đôi đèn LED\r\n  Đèn LED ở mặt đồng hồ (siêu chiếu sáng, lựa chọn thời gian chiếu sáng (1.5 giây hoặc 3 giây), phát sáng sau)\r\n  Đèn LED màn hình điện tử (siêu chiếu sáng, lựa chọn thời gian chiếu sáng (1.5 giây hoặc 3 giây), phát sáng sau)\r\n- Chức năng dời kim (bộ kim di chuyển sang vị trí khác để dễ dàng quan sát màn hình điện tử)\r\n- Giờ thế giới\r\n 31 múi giờ (48 thành phố + giờ UTC), bật/tắt chế độ giờ DTS\r\n- Bấm giờ 1/100 giây\r\n', 1, '2023-05-13 15:16:09', NULL),
(33, 'GA-700RGB-1ADR', 'GA-700RGB-1ADR.png', 4072000, 'Từ G-SHOCK, dòng đồng hồ cứng cáp luôn không ngừng thúc đẩy những giới hạn mới về độ bền bỉ của chiếc đồng hồ đeo tay từ năm 1983, trân trọng giới thiệu bộ sưu tập hoàn toàn mới mang tên Virtual Rainbow (tạm dịch: cầu vồng thế giới ảo) dựa theo mô-típ là hình ảnh sắc màu cầu vồng của thế giới ảo trong các trò chơi điện tử.\r\nVòng mặt số và dây đeo của mẫu đồng hồ này được sơn một màu đen tuyền lấp lánh, cùng với màu cầu vồng được phủ lên mặt số và thêm vào một vài chi tiết sắc màu khác để tạo nên một thiết kế hoàn toàn phù hợp với đa dạng các phong cách thời trang khác nhau.\r\nMẫu cơ bản bao gồm mẫu có bộ vỏ lớn GA-100 và GA-700, mẫu DW-6900 có vỏ tròn và 3 vòng mặt số phụ điện tử và mẫu GA-2100 với vòng mặt số bát giác.\r\nSắc màu cầu vồng rực rỡ của mặt số sáng rực tương phản với màu đen lấp lánh của dây đeo mang đến một thiết kế vô cùng độc đáo\r\n', 1, '2023-05-13 15:16:14', NULL),
(34, 'DW-6900SBY-2DR', 'DW-6900SBY-2DR.png', 4763000, 'Từ G-SHOCK, thương hiệu đồng hồ luôn không ngừng theo đuổi mục tiêu tối thượng về độ bền bỉ của một chiếc đồng hồ đeo tay, trân trọng giới thiệu bộ sưu tập mới để bày tỏ long kính trọng với văn hóa đường phố Nhật Bản.\r\nVòng mặt số, dây đeo và mặt số của những mẫu đồng hồ mới này được in bản đồ của phố Shibuya, nơi khai sinh ra văn hóa đường phố Nhật Bản từ những năm 1990.\r\nMẫu đồng hồ cơ bản bao gồm mẫu mang tính biểu tượng DW-5600, mẫu 3 vòng mặt số phụ điện tử DW-6900 và mẫu có bộ vỏ lớn GA-2200\r\nCách in và thiết kế độc đáo của bộ sưu tập mới này mang đến một điểm nhấn thú vị cho phong cách thường ngày của bạn.\r\n', 1, '2023-05-13 15:16:20', NULL),
(35, 'GA-110GL-4ADR', 'GA-110GL-4ADR.png', 5454000, 'Từ G-SHOCK, mẫu đồng hồ cứng cáp luôn không ngừng theo đuổi mục tiêu tối thượng về độ bền bỉ của một chiếc đồng hồ đeo tay từ năm 1983, trân trọng giới thiệu bộ sưu tập mới mang tên Lucky Drop (tạm dịch: bóng may mắn) với thiết kế màu sắc lấy cảm hứng từ bóng đồ chơi bằng nhựa có thể tách rời của Nhật.\r\nMẫu cơ bản bao gồm mẫu đồng hồ điện tử tiêu chuẩn DW-5600, mẫu đồng hồ có nút phía trước DW-6900, và mẫu vỏ lớn GA-110.\r\nMặt số và vòng đeo dây của những mẫu đồng hồ này có thiết kế với hình ảnh từ bóng đồ chơi bằng nhựa có thể tách rời, mang đến cảm giác vui vẻ năng động.\r\nNhững thiết kế tuyệt vời này có nhiều lựa chọn về màu sắc giúp làm nổi bật bất kỳ phong cách thời trang nào.\r\n', 1, '2023-05-13 15:16:25', NULL),
(36, 'BG-169U-8BDR', 'BG-169U-8BDR.png', 2764000, 'Trân trọng giới thiệu bộ sưu tập mới đến từ BABY-G, thương hiệu đồng hồ dành cho phái nữ năng động.\r\nBộ sưu tập đồng hồ BG-169 được trang bị càng bảo vệ ở mặt đồng hồ cũng là bộ phận chống va đập tích hợp với phần thân được bo tròn nhỏ gọn.\r\nMột số chức năng hữu ích bao gồm chống nước đến độ sâu 200m, giờ thế giới, đồng hồ bấm giờ,...\r\nTất cả những mẫu đồng hồ BABY-G này đều là mẫu đồng hồ hợp thời trang cho cả khi đi làm hoặc khi đi chơi.\r\n', 2, '2023-05-13 15:16:35', NULL),
(37, 'BG-169U-4BDR', 'BG-169U-4BDR.png', 2764000, 'Trân trọng giới thiệu bộ sưu tập mới đến từ BABY-G, thương hiệu đồng hồ dành cho phái nữ năng động.\r\nBộ sưu tập đồng hồ BG-169 được trang bị càng bảo vệ ở mặt đồng hồ cũng là bộ phận chống va đập tích hợp với phần thân được bo tròn nhỏ gọn.\r\nMột số chức năng hữu ích bao gồm chống nước đến độ sâu 200m, giờ thế giới, đồng hồ bấm giờ,...\r\nTất cả những mẫu đồng hồ BABY-G này đều là mẫu đồng hồ hợp thời trang cho cả khi đi làm hoặc khi đi chơi.\r\n', 2, '2023-05-13 15:16:41', NULL),
(38, 'BG-169U-3DR', 'BG-169U-3DR.png', 2764000, 'Trân trọng giới thiệu bộ sưu tập mới đến từ BABY-G, thương hiệu đồng hồ dành cho phái nữ năng động.\r\nBộ sưu tập đồng hồ BG-169 được trang bị càng bảo vệ ở mặt đồng hồ cũng là bộ phận chống va đập tích hợp với phần thân được bo tròn nhỏ gọn.\r\nMột số chức năng hữu ích bao gồm chống nước đến độ sâu 200m, giờ thế giới, đồng hồ bấm giờ,...\r\nTất cả những mẫu đồng hồ BABY-G này đều là mẫu đồng hồ hợp thời trang cho cả khi đi làm hoặc khi đi chơi.\r\n', 2, '2023-05-13 15:16:46', NULL),
(39, 'BG-169U-1CDR', 'BG-169U-1CDR.png', 2764000, 'Trân trọng giới thiệu bộ sưu tập mới đến từ BABY-G, thương hiệu đồng hồ dành cho phái nữ năng động.\r\nBộ sưu tập đồng hồ BG-169 được trang bị càng bảo vệ ở mặt đồng hồ cũng là bộ phận chống va đập tích hợp với phần thân được bo tròn nhỏ gọn.\r\nMột số chức năng hữu ích bao gồm chống nước đến độ sâu 200m, giờ thế giới, đồng hồ bấm giờ,...\r\nTất cả những mẫu đồng hồ BABY-G này đều là mẫu đồng hồ hợp thời trang cho cả khi đi làm hoặc khi đi chơi.\r\n', 2, '2023-05-13 15:16:51', NULL),
(40, 'BGD-565SC-3DR', 'BGD-565SC-3DR.png', 2937000, 'Từ BABY-G, thương hiệu đồng hồ đời thường chống sốc dành cho phái nữ năng động, trân trọng giới thiệu bộ sưu tập mới với nhiều màu sắc hoàn hảo dành cho mùa xuân.\r\nMẫu cơ bản là BGD-565, được biết đến với kích thước nhỏ gọn. Ba màu sắc của mẫu đồng hồ này được đặc biệt lựa chọn để tạo nên hình ảnh của hoa tử đinh hương, hoa xô thơm và hoa anh đào. Hai mẫu hoa tử đinh hương và hoa xô thơm có mặt số, dây đeo và vỏ cùng tông màu.\r\nRiêng mẫu hoa anh đào có dây đeo màu trắng và mặt số màu hồng nhạt mang đến hình ảnh e ấp  dịu dàng của cánh hoa anh đào hoàn toàn phù hợp với phong cách thời trang thường ngày.\r\nMặt số được phủ một lớp ngọc trai lấp lánh mang đến vẻ quyến rũ cho mẫu đồng hồ.\r\nMỗi một chiếc đồng hồ trong bộ sưu tập mới lần này sẽ mang đến cho người đeo cảm giác tươi mới của mùa xuân.\r\n', 2, '2023-05-13 15:16:56', NULL),
(41, 'BA-110X-7A1DR', 'BA-110X-7A1DR.png', 4343000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-13 15:17:01', NULL),
(42, 'BA-110XBE-7ADR', 'BA-110XBE-7ADR.png', 4343000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK GA-110 nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-13 15:17:41', NULL),
(43, 'ECB-40MP-1ADF', 'ECB-40MP-1ADF.png', 5626000, 'EDIFICE, mẫu đồng hồ hiện đại luôn không ngừng theo đuổi sự độc đáo với thiết kế theo kiểu dáng xe đua thể thao đi cùng với các chức năng thông minh, tự hào giới thiệu bộ sưu tập mới mang tên Racing Multicolor lấy ý tưởng dựa theo màu sắc trên vô lăng của những chiếc xe đua. Bốn sắc màu làm điểm nhấn trên mặt số của bộ sưu tập mới này được bố trí giống với cách phối màu nút trên vô lăng của những chiếc xe đua. Thiết kế của bộ sưu tập mới này mang đến tinh thần của môn đua xe thể thao chính là ra quyết định tức thời và hành động chính xác và nâng cao tính khả dụng của các chức năng khác. Kim giây và màn hình hiển thị giờ vòng được thiết kế giúp dễ đọc hơn. Dây nhựa mềm của các mẫu mới này cũng được thiết kế để mang đến sự thoải mái tuyệt đối cho người đeo. Tất cả những điều này và những điều khác hơn thế nữa đã được rèn giũa đến mức hoàn hảo dựa trên các phản hồi từ các môi trường đường đua thực tế.\r\nMẫu đồng hồ ECB-950MP, ECB-900MP, và ECB-40MP được trang bị khả năng kết nối với điện thoại thông qua Bluetooth. Đồng hồ có thể kết nối với một ứng dụng đặc biệt trên điện thoại để tự động điều chỉnh thời gian hiện hành. Chức năng liên kết điện thoại cũng có thể được sử dụng để lựa chọn hiển thị giờ thế giới, cài đặt báo thức, và các hoạt động khác. Bạn cũng có thể gửi giờ vòng với đơn vị đo 1/1000 giây đến điện thoại và sử dụng ứng dụng để kiểm tra biểu đồ giờ vòng.\r\n', 3, '2023-05-13 15:17:48', NULL),
(44, 'ECB-40P-1ADF', 'ECB-40P-1ADF.png', 5182000, 'Trân trọng giới thiệu mẫu đồng hồ ECB-40 EDIFICE SOSPENSIONE được tích hợp khả năng kết nối điện thoại thông minh. Phần thiết kế lấy cảm hứng từ \"cánh tay đòn - suspension arm design\" của xe đua thể thao với chất liệu nhựa pha sợi carbon bền bỉ.\r\nMấu gắn dây của mẫu đồng hồ này mang kiểu dáng của hai cánh tay đòn phía trước và phía sau. Chất liệu nhựa pha sợi carbon được sử dụng để làm mấu gài dây mang đến vẻ ngoài mạnh mẽ nhưng trọng lượng thì nhẹ.\r\nMỗi mẫu đồng hồ trong bộ sưu tập này đều tự động kết nối với điện thoại thông minh thông qua Bluetooth bất cứ khi nào hai thiết bị này được đặt gần nhau. Bạn không cần phải nhấn bất kỳ nút nào để kết nối. Tính năng này giúp đảm bảo hiệu chỉnh thời gian chính xác, đơn giản hóa việc xem giờ thế giới, và cho phép ghi dữ liệu thời gian bấm giờ đến 1/1000 giây cho tối đa 200 vòng lặp.\r\nTất cả những tính năng trên đây đều cần thiết phải sử dụng đối với đội đua. Đèn LED siêu sáng giúp chiếu sáng màn hình kỹ thuật số và mặt số trong bóng tối.\r\n', 3, '2023-05-13 15:17:53', NULL),
(45, 'SHE-4556SPG-5AUDF', 'SHE-4556SPG-5AUDF.png', 5971000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-13 15:17:58', NULL),
(46, 'SHE-4556PGL-7AUDF', 'SHE-4556PGL-7AUDF.png', 5108000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-13 15:18:03', NULL);
INSERT INTO `sanpham` (`id`, `TenSP`, `AnhDaiDien`, `GiaBan`, `MoTa`, `MaDSP`, `created_at`, `updated_at`) VALUES
(47, 'PRG-240-3DR', 'PRG-240-3DR.png', 8883000, 'Các tính năng\r\nGiới thiệu các màu mới của mẫu PRG-240 Tough Solar và Cảm biến bộ ba cho dòng sản phẩm đồng hồ PRO TREK dành cho các hoạt động nghiêm túc ngoài trời.\r\nDây đeo tông màu trái đất kaki và màu be của cát tạo nên vẻ ngoài hoàn hảo cho đồng hồ đeo tay ngoài trời.\r\nSử dụng màu cam và màu vàng cho hai nút phía trước, và chọn phần chữ của gờ được lắp vào để hiển thị rõ hơn.\r\nMột màn hình LCD hai lớp có thể hiển thị đồng thời các loại dữ liệu khác nhau kết hợp với một vòng bảo vệ để chỉ báo hướng đơn giản tạo nên một thiết kế thiết thực.\r\nTinh thể lỏng hai lớp giúp hiển thị con trỏ la bàn màu xanh dương phủ trên màn hình hiển thị giờ hiện hành hiện tại, cho tính linh hoạt vượt trội.\r\nCác chức năng la bàn, đo áp suất khí quyển/độ cao và nhiệt độ chạy bằng hệ thống Tough Solar giúp duy trì hoạt động của các chức năng ngay cả khi chỉ tiếp xúc với lượng ánh sáng nhỏ.\r\nCải tiến cách sắp xếp các nút lớn kích hoạt la bàn, đo áp suất khí quyển/độ cao và nhiệt độ cho phép thao tác một chạm ngay cả khi đeo găng tay.\r\nBộ phận bảo vệ nút bao bọc bề mặt bên ngoài của nút bằng nhựa để tránh xảy ra hoạt động sai.\r\nNgoài tính thiết thực và vô cùng hữu dụng, các mẫu PRG-240 này còn được thiết kế để dễ dàng kết hợp với thời trang ngoài trời ngày nay.\r\n', 6, '2023-05-13 15:18:08', NULL),
(48, 'PRG-240-5DR', 'PRG-240-5DR.png', 8883000, 'Các tính năng\r\nGiới thiệu các màu mới của mẫu PRG-240 Tough Solar và Cảm biến bộ ba cho dòng sản phẩm đồng hồ PRO TREK dành cho các hoạt động nghiêm túc ngoài trời.\r\nDây đeo tông màu trái đất kaki và màu be của cát tạo nên vẻ ngoài hoàn hảo cho đồng hồ đeo tay ngoài trời.\r\nSử dụng màu cam và màu vàng cho hai nút phía trước, và chọn phần chữ của gờ được lắp vào để hiển thị rõ hơn.\r\nMột màn hình LCD hai lớp có thể hiển thị đồng thời các loại dữ liệu khác nhau kết hợp với một vòng bảo vệ để chỉ báo hướng đơn giản tạo nên một thiết kế thiết thực.\r\nTinh thể lỏng hai lớp giúp hiển thị con trỏ la bàn màu xanh dương phủ trên màn hình hiển thị giờ hiện hành hiện tại, cho tính linh hoạt vượt trội.\r\nCác chức năng la bàn, đo áp suất khí quyển/độ cao và nhiệt độ chạy bằng hệ thống Tough Solar giúp duy trì hoạt động của các chức năng ngay cả khi chỉ tiếp xúc với lượng ánh sáng nhỏ.\r\nCải tiến cách sắp xếp các nút lớn kích hoạt la bàn, đo áp suất khí quyển/độ cao và nhiệt độ cho phép thao tác một chạm ngay cả khi đeo găng tay.\r\nBộ phận bảo vệ nút bao bọc bề mặt bên ngoài của nút bằng nhựa để tránh xảy ra hoạt động sai.\r\nNgoài tính thiết thực và vô cùng hữu dụng, các mẫu PRG-240 này còn được thiết kế để dễ dàng kết hợp với thời trang ngoài trời ngày nay.\r\n', 6, '2023-05-13 15:18:14', NULL),
(49, 'PRG-260-2DR', 'PRG-260-2DR.png', 10882000, 'Các mô hình TRIPLE SENSOR mới này có các nút chuyên dụng cho phép truy cập vào hướng, phong vũ biểu và đọc độ cao chỉ bằng một nút bấm. Khung thép không gỉ tạo ra một thiết kế sắc nét và mạnh mẽ.\r\nCác chức năng hữu ích khác bao gồm thời gian mặt trời mọc và mặt trời lặn, Giờ thế giới 48 thành phố, phát năng lượng mặt trời Tough từ ánh sáng có sẵn và tính năng Auto Light chiếu sáng màn hình mỗi khi đồng hồ nghiêng về phía mặt để đọc.\r\n• Chống nước 200m\r\n• Tough Solar đảm bảo hoạt động ổn định ngay cả khi sử dụng các chức năng ngốn điện.\r\n• Bộ cảm biến ba: La bàn, áp kế / nhiệt kế, đo độ cao\r\n• Chịu được nhiệt độ thấp (-10 độ C / 14 độ F)', 6, '2023-05-13 15:18:18', NULL),
(50, 'PRG-30-1DR', 'PRG-30-1DR.png', 7181000, 'Đây là ba mẫu bổ sung mới cỡ trung cho dòng đồng hồ đeo tay ngoài trời PRO TREK. Vẫn giữ lại chức năng Cảm biến bộ ba và Tough Solar (chạy bằng năng lượng mặt trời),kích thước và trọng lượng của các mẫu này đã được giảm bớt giúp bạn thoải mái hơn khi sử dụng trong thời gian dài.\r\nCác nút truy cập trực tiếp vào các phép đo của Cảm biến bộ ba nằm dọc bên phải vỏ và tên chức năng cho từng nút được đánh dấu trên gờ giúp bạn thao tác trơn tru và không gặp lỗi.\r\nMàn hình hiển thị sử dụng phông chữ đậm hơn giúp bạn dễ đọc thời gian hiện tại và các thông tin hiển thị khác hơn, ngay cả khi màn hình được chiếu sáng.\r\nCảm biến bộ ba (phương vị, độ cao/áp suất khí quyển, nhiệt độ)\r\nTough Solar\r\nĐồ thị áp suất khí quyển\r\nCảnh báo áp suất khí quyển\r\nThông số kỹ thuật về nhiệt độ thấp (-10 độ C/14 độ F)\r\nDây đeo loại thanh trượt\r\nPhông chữ đậm dễ đọc\r\nĐèn LED tự động hoàn toàn (Chiếu sáng cực mạnh)\r\nHiển thị thời gian mặt trời mọc/mặt trời lặn', 6, '2023-05-13 15:18:25', NULL),
(51, 'PRG-30-2DR', 'PRG-30-2DR.png', 7181000, 'Các tính năng\r\nĐây là ba mẫu bổ sung mới cỡ trung cho dòng đồng hồ đeo tay ngoài trời PRO TREK. Vẫn giữ lại chức năng Cảm biến bộ ba và Tough Solar (chạy bằng năng lượng mặt trời), kích thước và trọng lượng của các mẫu này đã được giảm bớt giúp bạn thoải mái hơn khi sử dụng trong thời gian dài.\r\nCác nút truy cập trực tiếp vào các phép đo của Cảm biến bộ ba nằm dọc bên phải vỏ và tên chức năng cho từng nút được đánh dấu trên gờ giúp bạn thao tác trơn tru và không gặp lỗi.\r\nMàn hình hiển thị sử dụng phông chữ đậm hơn giúp bạn dễ đọc thời gian hiện tại và các thông tin hiển thị khác hơn, ngay cả khi màn hình được chiếu sáng.\r\nCảm biến bộ ba (phương vị, độ cao/áp suất khí quyển, nhiệt độ)\r\nTough Solar\r\nĐồ thị áp suất khí quyển\r\nCảnh báo áp suất khí quyển\r\nThông số kỹ thuật về nhiệt độ thấp (-10 độ C/14 độ F)\r\nDây đeo loại thanh trượt\r\nPhông chữ đậm dễ đọc\r\nĐèn LED tự động hoàn toàn (Chiếu sáng cực mạnh)\r\nHiển thị thời gian mặt trời mọc/mặt trời lặn\r\n', 6, '2023-05-13 15:18:32', NULL),
(52, 'PRG-30-5DR', 'PRG-30-5DR.png', 7181000, 'Các tính năng\r\nĐây là ba mẫu bổ sung mới cỡ trung cho dòng đồng hồ đeo tay ngoài trời PRO TREK. Vẫn giữ lại chức năng Cảm biến bộ ba và Tough Solar (chạy bằng năng lượng mặt trời), kích thước và trọng lượng của các mẫu này đã được giảm bớt giúp bạn thoải mái hơn khi sử dụng trong thời gian dài.\r\nCác nút truy cập trực tiếp vào các phép đo của Cảm biến bộ ba nằm dọc bên phải vỏ và tên chức năng cho từng nút được đánh dấu trên gờ giúp bạn thao tác trơn tru và không gặp lỗi.\r\nMàn hình hiển thị sử dụng phông chữ đậm hơn giúp bạn dễ đọc thời gian hiện tại và các thông tin hiển thị khác hơn, ngay cả khi màn hình được chiếu sáng.\r\nCảm biến bộ ba (phương vị, độ cao/áp suất khí quyển, nhiệt độ)\r\nTough Solar\r\nĐồ thị áp suất khí quyển\r\nCảnh báo áp suất khí quyển\r\nThông số kỹ thuật về nhiệt độ thấp (-10 độ C/14 độ F)\r\nDây đeo loại thanh trượt\r\nPhông chữ đậm dễ đọc\r\nĐèn LED tự động hoàn toàn (Chiếu sáng cực mạnh)\r\nHiển thị thời gian mặt trời mọc/mặt trời lặn\r\n', 6, '2023-05-13 15:18:38', NULL),
(53, 'PRG-300-1A2DR', 'PRG-300-1A2DR.png', 8168000, 'Các tính năng\r\nCẢM BIẾN BỘ BA\r\nGiới thiệu Cảm biến bộ ba phiên bản 3, công nghệCASIOchính hãng tiên tiến giúp thu nhỏ cảm biến tới 95% so với các mẫu trước đó thành một loại PRO TREK nhỏ gọn hoàn toàn mới. Mặc dù kích cỡ bé hơn nhưng các cảm biến mới thuộc các mẫu này có khả năng đọc chính xác hơn và giúp tiết kiệm năng lượng hơn.\r\nNhững mẫu Cảm biến bộ ba này cung cấp các chỉ số về cao độ, áp suất khí quyển và hướng với độ chính xác cao hơn các mẫu trước đó và Cảnh báo xu hướng áp suất khí áp kế sẽ báo cho người đeo về những thay đổi chỉ số áp suất đột ngột.\r\nCác đặc điểm thiết kế bao gồm một vỏ dành riêng cho trang thiết bị du lịch ngoài trời. Các nút bên lớn và khả năng truy cập một lần bấm vào các thông số la bàn số, áp suất khí quyển, cao độ và nhiệt độ, đảm bảo thông tin luôn sẵn sàng trong tầm tay bạn.\r\nCác tính năng khác bao gồm Tough Solar , khả năng chống nước ở độ sâu 100 mét và nhiều tính năng khác nữa. Mọi thứ về các mẫu đồng hồ này được thiết kế và chế tạo sao cho chúng trở thành bộ phận thiết yếu phù hợp với trang thiết bị du lịch ngoài trời.\r\n• Tough Solar đảm bảo vận hành ổn định ngay cả khi sử dụng các chức năng cần nhiều năng lượng.\r\n• Cảm biến ba: La bàn, Khí áp kế/Nhiệt kế, Cao độ kế\r\n• Chịu nhiệt độ thấp (–10 độ C/14 độ F)\r\n', 6, '2023-05-13 15:18:44', NULL),
(55, 'SHB-100CG-4ADR', 'SHB-100CG-4ADR.png', 18137000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:22:19', NULL),
(56, 'SHB-100D-4A', 'SHB-100D-4A.png', 12708000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:28:54', NULL),
(57, 'SHE-3028D-7A', 'SHE-3028D-7A.png', 5873000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:28:59', NULL),
(58, 'SHE-3028L-4A', 'SHE-3028L-4A.png', 5404000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:04', NULL),
(59, 'SHE-3034D-7A', 'SHE-3034D-7A.png', 5454000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:09', NULL),
(60, 'SHE-3034GL-7A', 'SHE-3034GL-7A.png', 5454000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:14', NULL),
(61, 'SHE-3034GL-7A2', 'SHE-3034GL-7A2.png', 5454000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:20', NULL),
(62, 'SHE-3034GL-7B', 'SHE-3034GL-7B.png', 5454000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:24', NULL),
(63, 'SHE-3034PG-9A', 'SHE-3034PG-9A.png', 5898000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:30', NULL),
(64, 'SHE-4057PGL-7B', 'SHE-4057PGL-7B.png', 4244000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:35', NULL),
(65, 'SHE-4532PGL-7A', 'SHE-4532PGL-7A.png', 4491000, 'Trân trọng giới thiệu bộ sưu tập đồng hồ SHEEN sang trọng với nhiều sắc vàng hồng khác nhau để lựa chọn.\r\nCác viên pha lê được viền xung quanh vòng mặt số tạo nên một điểm nhấn thời trang.\r\nMột số chức năng bao gồm, mặt kính sapphire chống trầy và khả năng chống nước đến 50 mét giúp bảo vệ đồng hồ khi đi mưa.\r\n', 4, '2023-05-14 13:29:39', NULL),
(66, 'LWA-300H-7EV', 'LWA-300H-7EV.png', 1431000, 'Mẫu đồng hồ LWA-300H-7EV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:07', NULL),
(67, 'LWA-300HB-1EV', 'LWA-300HB-1EV.png', 1629000, 'Mẫu đồng hồ LWA-300HB-1EV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:12', NULL),
(68, 'MTP-M300D-4AV', 'MTP-M300D-4AV.png', 3455000, 'Mẫu đồng hồ MTP-M300D-4AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:17', NULL),
(69, 'MTP-M300D-7AV', 'MTP-M300D-7AV.png', 3455000, 'Mẫu đồng hồ MTP-M300D-7AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:22', NULL),
(70, 'MTP-M300L-1AV', 'MTP-M300L-1AV.png', 3381000, 'Mẫu đồng hồ MTP-M300L-1AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:26', NULL),
(71, 'MTP-M300L-7AV', 'MTP-M300L-7AV.png', 3381000, 'Mẫu đồng hồ MTP-M300L-7AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:30', NULL),
(72, 'MTP-M305D-7AV', 'MTP-M305D-7AV.png', 3652000, 'Mẫu đồng hồ MTP-M305D-7AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:36', NULL),
(73, 'MTP-M305L-1AV', 'MTP-M305L-1AV.png', 3553000, 'Mẫu đồng hồ MTP-M305L-1AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:41', NULL),
(74, 'MTP-M305L-2AV', 'MTP-M305L-2AV.png', 3553000, 'Mẫu đồng hồ MTP-M305L-2AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:45', NULL),
(75, 'MTP-M305L-7AV', 'MTP-M305L-7AV.png', 3553000, 'Mẫu đồng hồ MTP-M305L-7AV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:50', NULL),
(76, 'W-201-1BV', 'W-201-1BV.png', 691000, 'Mẫu đồng hồ W-201-1BV bán chạy nhất đã quay trở lại với phong cách thiết kế trong mờ rực rỡ! Những chiếc đồng hồ này có vỏ kim loại, mặt số mang ánh mặt trời và dây đeo kết hợp nhiều màu đơn sắc hài hòa. Mẫu đồng hồ tiện dụng, tạo cảm giác vừa vặn, thoải mái có trọng lượng nhẹ và thiết kế đơn giản với kim giờ, phút, giây và chế độ chống nước sử dụng hằng ngày.', 5, '2023-05-14 13:30:54', NULL),
(77, 'BG-169PB-4', 'BG-169PB-4.png', 2764000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-14 13:31:46', NULL),
(78, 'BG-169PB-7', 'BG-169PB-7.png', 2764000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-14 13:31:52', NULL),
(79, 'BGA-320-3A', 'BGA-320-3A.png', 3628000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-14 13:31:57', NULL),
(80, 'BGA-320-4A', 'BGA-320-4A.png', 3628000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-14 13:32:01', NULL),
(81, 'BGA-320-7A1', 'BGA-320-7A1.png', 3628000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-14 13:32:06', NULL),
(82, 'BGA-320-9A', 'BGA-320-9A.png', 3628000, 'Hãy đeo lên tay chiếc đồng hồ bắt mắt với màu sắc tươi tắn, thanh lịch, lấy cảm hứng từ thiết kế G-SHOCK BA-110X nổi tiếng. Sự kết hợp tinh xảo giữa mặt số, vạch chỉ giờ và các bộ phận khác tạo nên hình ảnh thiết bị cơ khí với điểm nhấn sắc nét tràn đầy năng lượng. Mẫu đồng hồ BABY-G mang phong cách thời trang đường phố nổi trội và có nhiều chức năng. Trải nghiệm các chức năng tiện dụng, đáng tin cậy như đèn LED và đồng hồ bấm giờ, bên cạnh khả năng chống va đập và chống nước.\r\n', 2, '2023-05-14 13:32:10', NULL),
(83, 'EQB-1200AT-1A', 'EQB-1200AT-1A.png', 21591000, 'Tăng cường tốc độ và độ chính xác của bạn với chiếc đồng hồ EDIFICE đặc biệt này được thiết kế với sự cộng tác của đội F1TM Scuderia AlphaTauri. Được làm bằng cùng loại sợi carbon 6K được sử dụng ở sàn và cánh của cỗ máy đua Scuderia AlphaTauri, EQB-1200AT đặt công nghệ đua xe thể thao mới nhất ngay trên cổ tay của bạn. Màu vàng huỳnh quang — màu mà các kỹ thuật viên của đội sử dụng tại đường đua để đảm bảo an toàn — làm nổi bật các bộ phận chính, mang lại khả năng hiển thị nổi bật theo yêu cầu của các đội đua, những người phải tính đến từng giây. Kim giây màu vàng và Liên kết điện thoại thông minh siêu chính xác giúp bạn đi đúng hướng với độ chính xác tỉ mỉ. Đồng hồ bấm giờ mỏng, thông số kỹ thuật cao, chạy bằng năng lượng mặt trời này đồng bộ hóa với điện thoại thông minh của bạn qua Bluetooth để vận hành dễ dàng mọi lúc mọi nơi. Với độ chính xác đến mili giây và hiển thị Giờ thế giới cho hai thành phố khác nhau\r\n', 3, '2023-05-14 13:32:47', NULL),
(84, 'EFV-640L-2AV', 'EFV-640L-2AV.png', 3529000, 'Đồng hồ bấm giờ thể thao cổ điển với vỏ bezel hình bát giác Hiện đại - Mạnh mẽ - Chắc chắn.\r\n', 3, '2023-05-14 13:32:52', NULL),
(85, 'EFV-640DC-3AV', 'EFV-640DC-3AV.png', 4713000, 'Đồng hồ bấm giờ thể thao cổ điển với vỏ bezel hình bát giác Hiện đại - Mạnh mẽ - Chắc chắn.\r\n', 3, '2023-05-14 13:32:57', NULL),
(86, 'EFV-640D-5AV', 'EFV-640D-5AV.png', 3529000, 'Đồng hồ bấm giờ thể thao cổ điển với vỏ bezel hình bát giác Hiện đại - Mạnh mẽ - Chắc chắn.\r\n', 3, '2023-05-14 13:33:01', NULL),
(87, 'EFV-640D-2AV', 'EFV-640D-2AV.png', 3529000, 'Đồng hồ bấm giờ thể thao cổ điển với vỏ bezel hình bát giác Hiện đại - Mạnh mẽ - Chắc chắn.\r\n', 3, '2023-05-14 13:33:05', NULL),
(88, 'EFV-640D-1AV', 'EFV-640D-1AV.png', 3529000, 'Đồng hồ bấm giờ thể thao cổ điển với vỏ bezel hình bát giác Hiện đại - Mạnh mẽ - Chắc chắn.\r\n', 3, '2023-05-14 13:33:09', NULL),
(89, 'EFB-710D-7AV', 'EFB-710D-7AV.png', 5182000, 'Những chiếc đồng hồ bấm giờ thể thao cổ điển này tạo thêm sự đẳng cấp cho phong cách đồng hồ hiện đại. \r\nDây đồng hồ được tạo thành từ các mắc dây hình chữ H để vừa vặn ôm vào cổ tay. \r\nMặt đồng hồ được bảo vệ bởi tinh thể sapphire chống trầy xước.\r\n', 3, '2023-05-14 13:33:14', NULL),
(90, 'EFB-710D-2AV', 'EFB-710D-2AV.png', 5182000, 'Những chiếc đồng hồ bấm giờ thể thao cổ điển này tạo thêm sự đẳng cấp cho phong cách đồng hồ hiện đại. \r\nDây đồng hồ được tạo thành từ các mắc dây hình chữ H để vừa vặn ôm vào cổ tay. \r\nMặt đồng hồ được bảo vệ bởi tinh thể sapphire chống trầy xước.\r\n', 3, '2023-05-14 13:33:19', NULL),
(91, 'ECB-2000NIS-1A', 'ECB-2000NIS-1A.png', 15545000, 'EDIFICE và NISMO vừa hợp tác để cho ra mắt \"cực phẩm\" đồng hồ Edifice thể thao mang tên \"EDIFICE NISMO MY23 EDITION\" - Phiên bản đặc biệt năm 2023, với nhiều tính năng hiện đại, chuyên dành riêng cho bộ môn đua xe. \r\nEDIFICE NISMO MY23 EDITION ra đời từ ý tưởng chiếc xe đua #23 Nissan Z (đây là một dòng xe thể thao của hãng Nissan và đã được sản xuất từ những năm 1960) trong giải đua SUPER GT. \r\nTừng bộ phận, đặc điểm trên chiếc xe đua #23 Nissan Z được thiết kế và lồng ghép một cách tinh tế trên mẫu đồng hồ Edifice.\r\n', 3, '2023-05-14 13:33:24', NULL),
(92, 'ECB-950DB-2A', 'ECB-950DB-2A.png', 6909000, 'Bộ sưu tập mới mang tên Racing Multicolor lấy ý tưởng dựa theo màu sắc trên vô lăng của những chiếc xe đua. Bốn sắc màu làm điểm nhấn trên mặt số của bộ sưu tập mới này được bố trí giống với cách phối màu nút trên vô lăng của những chiếc xe đua. Thiết kế của bộ sưu tập mới này mang đến tinh thần của môn đua xe thể thao chính là ra quyết định tức thời và hành động chính xác và nâng cao tính khả dụng của các chức năng khác. Kim giây và màn hình hiển thị giờ vòng được thiết kế giúp dễ đọc hơn. Dây nhựa mềm của các mẫu mới này cũng được thiết kế để mang đến sự thoải mái tuyệt đối cho người đeo. Mặt sau của đồng hồ được mạ ion màu đen , gờ được làm từ thép không gỉ và mạ inon màu đen tăng độ bền cũng như sự sang trọng cho chiếc đồng hồ . Tất cả những điều này và những điều khác hơn thế nữa đã được rèn giũa đến mức hoàn hảo dựa trên các phản hồi từ các môi trường đường đua thực tế.\r\nMẫu đồng hồ ECB-950MP, ECB-900MP, và ECB-40MP được trang bị khả năng kết nối với điện thoại thông qua Bluetooth để sử dụng trọn vẹn mọi tính năng  trong tầm tay nhằm hỗ trợ các đội đua. Đồng hồ có thể kết nối với một ứng dụng đặc biệt trên điện thoại để tự động điều chỉnh thời gian hiện hành. Chức năng liên kết điện thoại cũng có thể được sử dụng để lựa chọn hiển thị giờ thế giới, cài đặt báo thức và hẹn giờ, công cụ tìm điện thoại bằng cách nhấn vào nút đồng hồ để điện thoại đổ chuông ( nằm trong phạm vi Bluetooth ) và các hoạt động khác. Bạn cũng có thể gửi giờ vòng với đơn vị đo 1/1000 giây đến điện thoại và sử dụng ứng dụng để kiểm tra biểu đồ giờ vòng.\r\nMẫu ECB-950MP và ECB-900MP còn được trang bị hệ thống pin năng lượng mặt trời có thể sạc bằng đèn huỳnh quang hoặc ánh sáng mặt trời. Thời gian pin sạ 6 tháng với điều kiện ánh sáng bình thường không tiếp xúc với ánh sáng khi sạc và 19 tháng trong bóng tối. Điều này có nghĩa là bạn cứ tự tin đeo đồng hồ ở mọi lúc mọi nơi mà không cần quan tâm đến việc hết pin và giúp tiết kiệm năng lượng sau khi pin đã được sạc đầy. Ngoài ra thì có thêm các chức năng khác như đèn LED kép chiếu sáng cực mạng( gồm 1 đền LED cho mặt đồng hồ, 1 đền LED màn hình kĩ thuật số) dễ dàng xem giờ trong bóng tối. \r\n', 3, '2023-05-14 13:33:29', NULL),
(93, 'ECB-40DB-1A', 'ECB-40DB-1A.png', 5626000, 'Trân trọng giới thiệu mẫu đồng hồ ECB-40 EDIFICE SOSPENSIONE được tích hợp khả năng kết nối điện thoại thông minh bên trong một thiết kế lấy cảm hứng từ cánh tay đòn treo của xe đua thể thao với chất liệu nhựa pha sợi cacbon bền bỉ.\r\nMấu gắn dây của những mẫu đồng hồ này mang kiểu dáng của hai cánh tay đòn treo ở phía trước và hai cánh tay đòn treo phía sau. Nhưa pha sợi cacbon được sử dụng để làm mấu gài dây mang đến sự kết hợp của sự mạnh mẽ nhưng lại có trọng lượng nhẹ.\r\nMỗi một mẫu đồng hồ trong bộ sưu tập này đều tự động kết nối với điện thoại thông minh được lựa chọn để kết đôi thông qua Bluetooth bất cứ khi nào hai thiết bị này được đặt gần nhau. Bạn không cần phải nhấn bất kỳ nút nào để kết nối. Tính năng này giúp đảm bảo hiệu chỉnh thời gian chính xác, đơn giản hóa việc xem giờ thế giới, và cho phép ghi dữ liệu thời gian bấm giờ đến 1/1000 giây cho tối đa 200 vòng lặp.\r\nTất cả những tính năng trên đây đều là những điều cần thiết phải sử dụng đối với đội đua. Đèn LED siêu sáng giúp chiếu sáng màn hình kỹ thuật số và mặt số trong bóng tối.\r\n', 3, '2023-05-14 13:33:34', NULL),
(94, 'PRG-600YB-1', 'PRG-600YB-1.png', 12708000, 'Các tính năng: \r\nMẫu đồng hồ theo chủ đề hang động này chính là sản phẩm mới nhất của PRO TREK, dòng đồng hồ ngoài trời không ngừng áp dụng những công nghệ mới nhất cùng thiết kế đột phá.\r\nMẫu đồng hồ này sở hữu sắc màu đen tuyền như bóng tối dưới lòng đất, với những điểm nhấn bằng màu cam và màu vàng thường xuất hiện trên những bộ quần áo thám hiểm hang động. Các vạch giờ và ký hiệu trên đường gờ được nhúng chất liệu dạ quang để bạn có thể dễ dàng đọc trong bóng tối. Vòng kẹp cố định dây đeo bằng kim loại thép không gỉ được mạ ion (IP) phù hợp với thiết kế màu đen của đồng hồ cũng như góp phần nâng cao độ bền.\r\nDây đeo của PRG-600YB được chế tạo từ chất liệu vải MAXIFRESH* giúp khử mùi hôi và sự hình thành vi khuẩn từ mồ hôi, giúp giảm đáng kể mùi mồ hôi khó chịu.\r\nCác chức năng nâng cao bao gồm Cảm biến bộ ba (phương vị, độ cao/áp suất khí quyển, nhiệt độ) và nhiều hơn nữa.\r\n*MAXIFRESH: \r\nMAXIFRESH giúp loại bỏ mùi mồ hôi khó chịu khi tham gia thể thao, hoạt động ngoài trời hoặc ngay cả các hoạt động thường nhật nhanh hơn rất nhiều so với quần áo thông thường. Đó là nhờ công nghệ trung hòa các thành phần có mùi ở cấp độ phân tử.\r\nDây đeo vải đặc biệt của đồng hồ này được dệt bằng vật liệu MAXIFRESH, giúp ngăn chặn mùi mồ hôi và vi khuẩn hình thành, nhờ đó giảm bớt một nguyên nhân gây khó chịu khi leo núi dài ngày. Việc giặt sạch sẽ khôi phục khả năng khử mùi của dây đeo, vì vậy bạn có thể tận dụng công dụng của dây đeo này suốt một thời gian dài.\r\n', 6, '2023-05-14 13:34:08', NULL),
(95, 'PRG-650YL-3', 'PRG-650YL-3.png', 12708000, 'Các tính năng: \r\nMẫu đồng hồ theo chủ đề hang động này chính là sản phẩm mới nhất của PRO TREK, dòng đồng hồ ngoài trời không ngừng áp dụng những công nghệ mới nhất cùng thiết kế đột phá.\r\nMẫu đồng hồ này sở hữu sắc màu đen tuyền như bóng tối dưới lòng đất, với những điểm nhấn bằng màu cam và màu vàng thường xuất hiện trên những bộ quần áo thám hiểm hang động. Các vạch giờ và ký hiệu trên đường gờ được nhúng chất liệu dạ quang để bạn có thể dễ dàng đọc trong bóng tối. Vòng kẹp cố định dây đeo bằng kim loại thép không gỉ được mạ ion (IP) phù hợp với thiết kế màu đen của đồng hồ cũng như góp phần nâng cao độ bền.\r\nDây đeo của PRG-600YL được chế tạo từ chất liệu vải MAXIFRESH* giúp khử mùi hôi và sự hình thành vi khuẩn từ mồ hôi, giúp giảm đáng kể mùi mồ hôi khó chịu.\r\nCác chức năng nâng cao bao gồm Cảm biến bộ ba (phương vị, độ cao/áp suất khí quyển, nhiệt độ) và nhiều hơn nữa.\r\n*MAXIFRESH: \r\nMAXIFRESH giúp loại bỏ mùi mồ hôi khó chịu khi tham gia thể thao, hoạt động ngoài trời hoặc ngay cả các hoạt động thường nhật nhanh hơn rất nhiều so với quần áo thông thường. Đó là nhờ công nghệ trung hòa các thành phần có mùi ở cấp độ phân tử.\r\nDây đeo vải đặc biệt của đồng hồ này được dệt bằng vật liệu MAXIFRESH, giúp ngăn chặn mùi mồ hôi và vi khuẩn hình thành, nhờ đó giảm bớt một nguyên nhân gây khó chịu khi leo núi dài ngày. Việc giặt sạch sẽ khôi phục khả năng khử mùi của dây đeo, vì vậy bạn có thể tận dụng công dụng của dây đeo này suốt một thời gian dài.\r\n', 6, '2023-05-14 13:34:14', NULL),
(96, 'PRT-B50T-7', 'PRT-B50T-7.png', 9945000, 'Các tính năng: \r\nGiới thiệu mẫu đồng hồ dây đeo titan mới cho dòng sản phẩm PRT-B50 của PRO TREK cùng công nghệ Bộ tứ cảm biến (phương vị, độ cao/áp suất khí quyển, nhiệt độ, bộ đếm bước chân) và Kết nối điện thoại thông minh.\r\nDây đeo của mẫu đồng hồ mới được làm từ chất liệu hợp kim titan nhẹ, có khả năng chống gỉ cao và ít gây dị ứng kim loại. Đây là chiếc đồng hồ được thiết kế và chế tạo cho các hoạt động ngoài trời và cả trong cuộc sống thường ngày.\r\nPRT-B50T sở hữu tông màu cơ bản, với điểm nhấn là kim giây và kim chỉ hướng bắc trên phần gờ lớn có màu cam, giúp tăng cường khả năng hiển thị và tạo nên nét phá cách thú vị.\r\nMặt đồng hồ đa chiều với các chữ số Ả Rập lớn cho phép người dùng đọc giờ một cách nhanh chóng trong khi các chi tiết bằng kim loại lại tạo nên ấn tượng về một vẻ ngoài đẳng cấp và sang trọng.\r\nPhần nắp sau được chế tạo bằng chất liệu nhựa cao cấp pha lẫn sợi thủy tinh gọn nhẹ, chắc chắn cùng cấu trúc kết hợp các vấu lồi nối dây đeo và bộ phận bảo vệ nút chống lỗi thao tác. Cả hai tính năng này đều góp phần tạo nên vẻ ngoài mạnh mẽ cho mẫu đồng hồ. Gờ xoay lớn thuận tiện cho các hoạt động ngoài trời, ngay cả khi đeo găng tay, đồng thời tôn lên nét phóng khoáng, cá tính cho thiết kế.\r\nChức năng chính của đồng hồ :\r\nHệ thống Bộ tứ cảm biến sử dụng các cảm biến nhỏ gọn giúp tích hợp la bàn, cao độ kế/Khí áp kế, tất cả chỉ trong một cấu trúc nhỏ gọn. Nhờ vậy, bạn có thể tự quản lý tốc độ của bản thân trong khi leo núi hoặc đi bộ đường dài, đồng thời, xây dựng kế hoạch tối ưu cho tất cả các hoạt động ngoài trời của bạn. Tính năng bộ đếm bước cung cấp những phản hồi quan trọng về kết quả đi bộ hàng ngày và các khía cạnh khác để có một cuộc sống năng động.\r\n', 6, '2023-05-14 13:34:19', NULL),
(97, 'PRT-B50YT-1', 'PRT-B50YT-1.png', 12955000, 'Các tính năng: \r\nGiới thiệu mẫu đồng hồ dây đeo titan mới cho dòng sản phẩm PRT-B50 của PRO TREK cùng công nghệ Bộ tứ cảm biến (phương vị, độ cao/áp suất khí quyển, nhiệt độ, bộ đếm bước chân) và Kết nối điện thoại thông minh.\r\nDây đeo của mẫu đồng hồ mới được làm từ chất liệu hợp kim titan nhẹ, có khả năng chống gỉ cao và ít gây dị ứng kim loại. Đây là chiếc đồng hồ được thiết kế và chế tạo cho các hoạt động ngoài trời và cả trong cuộc sống thường ngày.\r\nPRT-B50T sở hữu tông màu cơ bản, với điểm nhấn là kim giây và kim chỉ hướng bắc trên phần gờ lớn có màu cam, giúp tăng cường khả năng hiển thị và tạo nên nét phá cách thú vị.\r\nMặt đồng hồ đa chiều với các chữ số Ả Rập lớn cho phép người dùng đọc giờ một cách nhanh chóng trong khi các chi tiết bằng kim loại lại tạo nên ấn tượng về một vẻ ngoài đẳng cấp và sang trọng.\r\nPhần nắp sau được chế tạo bằng chất liệu nhựa cao cấp pha lẫn sợi thủy tinh gọn nhẹ, chắc chắn cùng cấu trúc kết hợp các vấu lồi nối dây đeo và bộ phận bảo vệ nút chống lỗi thao tác. Cả hai tính năng này đều góp phần tạo nên vẻ ngoài mạnh mẽ cho mẫu đồng hồ. Gờ xoay lớn thuận tiện cho các hoạt động ngoài trời, ngay cả khi đeo găng tay, đồng thời tôn lên nét phóng khoáng, cá tính cho thiết kế.\r\nChức năng chính của đồng hồ: \r\nHệ thống Bộ tứ cảm biến sử dụng các cảm biến nhỏ gọn giúp tích hợp la bàn, cao độ kế/Khí áp kế, tất cả chỉ trong một cấu trúc nhỏ gọn. Nhờ vậy, bạn có thể tự quản lý tốc độ của bản thân trong khi leo núi hoặc đi bộ đường dài, đồng thời, xây dựng kế hoạch tối ưu cho tất cả các hoạt động ngoài trời của bạn. Tính năng bộ đếm bước cung cấp những phản hồi quan trọng về kết quả đi bộ hàng ngày và các khía cạnh khác để có một cuộc sống năng động.\r\n', 6, '2023-05-14 13:34:24', NULL),
(98, 'PRW-6000SG-3', 'PRW-6000SG-3.png', 18137000, 'Các tính năng: \r\nGiới thiệu mẫu đồng hồ dây đeo titan mới cho dòng sản phẩm PRW-6000SG của PRO TREK cùng công nghệ Bộ tứ cảm biến (phương vị, độ cao/áp suất khí quyển, nhiệt độ, bộ đếm bước chân) và Kết nối điện thoại thông minh.\r\nDây đeo của mẫu đồng hồ mới được làm từ chất liệu hợp kim titan nhẹ, có khả năng chống gỉ cao và ít gây dị ứng kim loại. Đây là chiếc đồng hồ được thiết kế và chế tạo cho các hoạt động ngoài trời và cả trong cuộc sống thường ngày.\r\nPRW-6000SG sở hữu tông màu cơ bản, với điểm nhấn là kim giây và kim chỉ hướng bắc trên phần gờ lớn có màu cam, giúp tăng cường khả năng hiển thị và tạo nên nét phá cách thú vị.\r\nMặt đồng hồ đa chiều với các chữ số Ả Rập lớn cho phép người dùng đọc giờ một cách nhanh chóng trong khi các chi tiết bằng kim loại lại tạo nên ấn tượng về một vẻ ngoài đẳng cấp và sang trọng.\r\nPhần nắp sau được chế tạo bằng chất liệu nhựa cao cấp pha lẫn sợi thủy tinh gọn nhẹ, chắc chắn cùng cấu trúc kết hợp các vấu lồi nối dây đeo và bộ phận bảo vệ nút chống lỗi thao tác. Cả hai tính năng này đều góp phần tạo nên vẻ ngoài mạnh mẽ cho mẫu đồng hồ. Gờ xoay lớn thuận tiện cho các hoạt động ngoài trời, ngay cả khi đeo găng tay, đồng thời tôn lên nét phóng khoáng, cá tính cho thiết kế.\r\nChức năng chính của đồng hồ: \r\nHệ thống Bộ tứ cảm biến sử dụng các cảm biến nhỏ gọn giúp tích hợp la bàn, cao độ kế/Khí áp kế, tất cả chỉ trong một cấu trúc nhỏ gọn. Nhờ vậy, bạn có thể tự quản lý tốc độ của bản thân trong khi leo núi hoặc đi bộ đường dài, đồng thời, xây dựng kế hoạch tối ưu cho tất cả các hoạt động ngoài trời của bạn. Tính năng bộ đếm bước cung cấp những phản hồi quan trọng về kết quả đi bộ hàng ngày và các khía cạnh khác để có một cuộc sống năng động.\r\n', 6, '2023-05-14 13:34:29', NULL),
(99, 'PRW-6000SYT-1DR', 'PRW-6000SYT-1DR.png', 26970000, 'Các tính năng: \r\nGiới thiệu mẫu đồng hồ dây đeo titan mới cho dòng sản phẩm PRW-6000SYT của PRO TREK cùng công nghệ Bộ tứ cảm biến (phương vị, độ cao/áp suất khí quyển, nhiệt độ, bộ đếm bước chân) và Kết nối điện thoại thông minh.\r\nDây đeo của mẫu đồng hồ mới được làm từ chất liệu hợp kim titan nhẹ, có khả năng chống gỉ cao và ít gây dị ứng kim loại. Đây là chiếc đồng hồ được thiết kế và chế tạo cho các hoạt động ngoài trời và cả trong cuộc sống thường ngày.\r\nPRW-6000SYT sở hữu tông màu cơ bản, với điểm nhấn là kim giây và kim chỉ hướng bắc trên phần gờ lớn có màu cam, giúp tăng cường khả năng hiển thị và tạo nên nét phá cách thú vị.\r\nMặt đồng hồ đa chiều với các chữ số Ả Rập lớn cho phép người dùng đọc giờ một cách nhanh chóng trong khi các chi tiết bằng kim loại lại tạo nên ấn tượng về một vẻ ngoài đẳng cấp và sang trọng.\r\nPhần nắp sau được chế tạo bằng chất liệu nhựa cao cấp pha lẫn sợi thủy tinh gọn nhẹ, chắc chắn cùng cấu trúc kết hợp các vấu lồi nối dây đeo và bộ phận bảo vệ nút chống lỗi thao tác. Cả hai tính năng này đều góp phần tạo nên vẻ ngoài mạnh mẽ cho mẫu đồng hồ. Gờ xoay lớn thuận tiện cho các hoạt động ngoài trời, ngay cả khi đeo găng tay, đồng thời tôn lên nét phóng khoáng, cá tính cho thiết kế.\r\nChức năng chính của đồng hồ: \r\nHệ thống Bộ tứ cảm biến sử dụng các cảm biến nhỏ gọn giúp tích hợp la bàn, cao độ kế/Khí áp kế, tất cả chỉ trong một cấu trúc nhỏ gọn. Nhờ vậy, bạn có thể tự quản lý tốc độ của bản thân trong khi leo núi hoặc đi bộ đường dài, đồng thời, xây dựng kế hoạch tối ưu cho tất cả các hoạt động ngoài trời của bạn. Tính năng bộ đếm bước cung cấp những phản hồi quan trọng về kết quả đi bộ hàng ngày và các khía cạnh khác để có một cuộc sống năng động.\r\n', 6, '2023-05-14 13:34:34', NULL),
(100, 'GBD-H2000-1A9', 'GBD-H2000-1A9.png', 19864000, 'Giới thiệu những sản phẩm mới nhất cho dòng đồng hồ thể thao G-SQUAD của G-SHOCK. \r\nNhững mẫu đồng hồ thuộc dòng GBD-H2000 mới ra mắt được trang bị máy đo nhịp tim và khả năng kết nối GPS để hỗ trợ cho các hoạt động thể thao của nhiều môn thể thao khác nhau.\r\nCác tính năng và chức năng được thiết kế để hỗ trợ, sao lưu việc tập luyện của bạn bằng bộ ba cảm biến: \r\n- Một cảm biến quang đo nhịp tim. \r\n- Một cảm biến gia tốc đếm số bước.\r\n- Cảm biến con quay hồi chuyển (Nó là một thiết bị ứng dụng nguyên tắc bảo toàn mô men động lượng để đo đạc hoặc duy trì phương hướng. Có thể hiểu đơn giản, cảm biến con quay hồi chuyển là một bánh xe hay đĩa quay có trục quay tự do theo mọi hướng. Người ta dùng nó để đo vận tốc góc rất lớn của những vật trong không gian và qua đó phát hiện những thay đổi, để kịp thời điều chỉnh sự cân bằng của vật) để phát hiện kiểu bơi và hướng rẽ của bạn. \r\nNgoài ra còn có điều hướng, độ cao/áp suất khí quyển, và cảm biến nhiệt độ. Mẫu đồng hồ này không chỉ hỗ trợ việc chạy bộ mà còn hỗ trợ cho nhiều môn thể thao khác như đạp xe hay bơi lội.\r\nKhả năng GPS có thể sử dụng để đo khoảng cách, tốc độ, nhịp độ, và hơn thế nữa.\r\nBạn cũng có thể phân tích quá trình luyện tập và phục hồi của mình thông qua giấc ngủ bằng cách sử dụng thư viện Polar. \r\nDây đeo và vòng mặt số sử dụng vật liệu nhựa sinh khối làm từ bắp, thân thiện với môi trường. Nhựa sinh khối là vật liệu polyme bao gồm các chất có nguồn gốc từ vật liệu hữu cơ tái tạo, thu được bằng cách tổng hợp hóa học hoặc sinh học các nguyên liệu thô.\r\nNhựa sinh khối giảm tải tác động xấu đến môi trường và giúp con người tiến gần hơn một \"xã hội xanh\".\r\nThiết kế thông minh với nắp lưng cong giúp ôm sát chuyển động của mu bàn tay, các nút bấm được cải thiện khả năng hoạt động và tinh thể lỏng MIP độ nét cao giúp cho màn hình hiển thị dễ đọc hơn. \r\nCả USB và sạc năng lượng mặt trời đều được hỗ trợ để đồng hồ hoạt động liên tục mà không bị gián đoạn. \r\n', 1, '2023-05-14 13:34:43', NULL),
(101, 'GBX-100TT-8', 'GBX-100TT-8.png', 6046000, 'Những mẫu mới này thuộc dòng thể thao G-LIDE của G-SHOCK và đã trở thành sự lựa chọn yêu thích của những tay lướt sóng hàng đầu thế giới.\r\nGBX-100TT có tính năng kết nối điện thoại. Ứng dụng trên điện thoại thông minh có thể sử dụng nhanh chóng, dễ dàng truy cập thông tin thủy triều, mặt trời mọc và thời gian hoàng hôn tại hơn 3.300 địa điểm trên toàn thế giới. Đây đều là những dữ liệu cần thiết cho người chơi lướt sóng. \r\nMàu sắc lấy cảm hứng từ môn lướt sóng kết hợp cùng ý tưởng về du hành thời gian – xuyên không giữa hiện tại và quá khứ. Hiện tại được thể hiện bằng nhiều màu sắc khác nhau, còn quá khứ là những màu đơn sắc (gam màu trắng đen),tạo ra hình ảnh của một chuyến đi lướt sóng từ quá khứ đến hiện tại.\r\nMặt đồng hồ kích thước lớn và MIP (Memory In Pixel) độ phân giải cao, sắc nét.\r\nLCD nâng cấp khả năng đọc màn hình của các chức năng tiêu chuẩn như Biểu đồ thủy triều, hiển thị dữ liệu mặt trăng, thủy triều cao - thấp, thời gian mặt trời mọc - lặn. Điều này cung cấp thông tin quan trọng về các điều kiện hiện tại trong tích tắc.\r\nĐây cũng là bộ sưu tập các tính năng về đo lường cho training (khoảng cách, tốc độ, vòng lặp, cao độ),hỗ trợ tối đa cho những người lướt sóng, đáp ứng những thách thức toàn cầu mới.\r\nVề thiết kế bên ngoài, vòng gờ kết hợp giữa nhựa và kim loại. Mặt trên của khung bezel bao phủ bằng thép không gỉ với các đường xước dọc và sử dụng kỹ thuật đặc biệt để hoàn thiện bề mặt, tạo ra vẻ ngoài chắc chắn mà thanh lịch.\r\nMột cấu trúc bảo vệ bằng nhựa có khả năng chống lại tác động từ mọi hướng, kết hợp với nút bảo vệ ở vị trí 6 giờ, mang đến khả năng chống sốc vượt trội cho G-SHOCK. Bên cạnh đó, dây đeo làm từ chất liệu urethane mềm, ở vị trí 6 giờ có các khe hở để thoát nước và mồ hôi, mang đến sự thoải mái cho người sử dụng .\r\nMẫu G-LIDE mới này mang đến cảm giác xuyên không, trôi giữa hiện tại đầy màu sắc và quá khứ một màu giản đơn. \r\n', 1, '2023-05-14 13:34:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `Anh` varchar(250) DEFAULT NULL,
  `Link` varchar(250) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `slide`
--

INSERT INTO `slide` (`id`, `Anh`, `Link`, `created_at`, `updated_at`) VALUES
(1, 'slideshow1.png', '2', '2023-05-12 00:48:08', NULL),
(2, 'slideshow2.png', '4', '2023-05-12 00:48:08', NULL),
(3, 'slideshow3.png', '1', '2023-05-12 00:48:08', NULL),
(4, 'slideshow4.png', '3', '2023-05-12 00:48:08', NULL),
(5, 'slideshow5.png', '1', '2023-05-12 00:48:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongsokythuat`
--

CREATE TABLE `thongsokythuat` (
  `id` int(11) NOT NULL,
  `TenTS` varchar(250) DEFAULT NULL,
  `MoTa` varchar(250) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `thongsokythuat`
--

INSERT INTO `thongsokythuat` (`id`, `TenTS`, `MoTa`, `MaSP`, `created_at`, `updated_at`) VALUES
(1, 'Loại máy', 'Quartz', 1, '2023-05-12 00:53:46', NULL),
(2, 'Đường kính mặt', '53.4 mm', 1, '2023-05-12 00:53:46', NULL),
(3, 'Độ rộng dây', '57.5 mm', 1, '2023-05-12 00:53:46', NULL),
(4, 'Chất liệu dây', 'Dây đeo bằng nhựa', 1, '2023-05-12 00:53:46', NULL),
(5, 'Chống nước', '20ATM (200 mét)', 1, '2023-05-12 00:53:46', NULL),
(6, 'Đối tượng sử dụng', 'Nam', 1, '2023-05-12 00:53:46', NULL),
(7, 'Loại máy', 'Quartz', 2, '2023-05-12 00:53:46', NULL),
(8, 'Đường kính mặt', '53.4 mm', 2, '2023-05-12 00:53:46', NULL),
(9, 'Độ rộng dây', '57.5 mm', 2, '2023-05-12 00:53:46', NULL),
(10, 'Chất liệu dây', 'Dây đeo bằng nhựa', 2, '2023-05-12 00:53:46', NULL),
(11, 'Chống nước', '20ATM (200 mét)', 2, '2023-05-12 00:53:46', NULL),
(12, 'Đối tượng sử dụng', 'Nam', 2, '2023-05-12 00:53:46', NULL),
(13, 'Loại máy', 'Quartz', 3, '2023-05-12 00:53:46', NULL),
(14, 'Đường kính mặt', '53.4 mm', 3, '2023-05-12 00:53:46', NULL),
(15, 'Độ rộng dây', '57.5 mm', 3, '2023-05-12 00:53:46', NULL),
(16, 'Chất liệu dây', 'Dây đeo bằng nhựa', 3, '2023-05-12 00:53:46', NULL),
(17, 'Chống nước', '20ATM (200 mét)', 3, '2023-05-12 00:53:46', NULL),
(18, 'Đối tượng sử dụng', 'Nam', 3, '2023-05-12 00:53:46', NULL),
(19, 'Loại máy', 'Quartz', 4, '2023-05-12 00:53:46', NULL),
(20, 'Đường kính mặt', '37.9 mm', 4, '2023-05-12 00:53:46', NULL),
(21, 'Độ rộng dây', '125 đến 180 mm', 4, '2023-05-12 00:53:46', NULL),
(22, 'Chất liệu dây', 'Dây đeo bằng nhựa', 4, '2023-05-12 00:53:46', NULL),
(23, 'Chống nước', '10ATM (100 mét)', 4, '2023-05-12 00:53:46', NULL),
(24, 'Đối tượng sử dụng', 'Nữ', 4, '2023-05-12 00:53:46', NULL),
(25, 'Loại máy', 'Quartz', 5, '2023-05-12 00:53:46', NULL),
(26, 'Đường kính mặt', '37.9 mm', 5, '2023-05-12 00:53:46', NULL),
(27, 'Độ rộng dây', '125 đến 180 mm', 5, '2023-05-12 00:53:46', NULL),
(28, 'Chất liệu dây', 'Dây đeo bằng nhựa', 5, '2023-05-12 00:53:46', NULL),
(29, 'Chống nước', '10ATM (100 mét)', 5, '2023-05-12 00:53:46', NULL),
(30, 'Đối tượng sử dụng', 'Nữ', 5, '2023-05-12 00:53:46', NULL),
(31, 'Loại máy', 'Quartz', 6, '2023-05-12 00:53:46', NULL),
(32, 'Đường kính mặt', '37.9 mm', 6, '2023-05-12 00:53:46', NULL),
(33, 'Độ rộng dây', '125 đến 180 mm', 6, '2023-05-12 00:53:46', NULL),
(34, 'Chất liệu dây', 'Dây đeo bằng nhựa', 6, '2023-05-12 00:53:46', NULL),
(35, 'Chống nước', '10ATM (100 mét)', 6, '2023-05-12 00:53:46', NULL),
(36, 'Đối tượng sử dụng', 'Nữ', 6, '2023-05-12 00:53:46', NULL),
(37, 'Loại máy', 'Tough Solar', 7, '2023-05-12 00:53:46', NULL),
(38, 'Đường kính mặt', '53.4 mm', 7, '2023-05-12 00:53:46', NULL),
(39, 'Độ rộng dây', '57.5 mm', 7, '2023-05-12 00:53:46', NULL),
(40, 'Chất liệu dây', 'Dây đeo bằng nhựa', 7, '2023-05-12 00:53:46', NULL),
(41, 'Chống nước', '10ATM (100 mét)', 7, '2023-05-12 00:53:46', NULL),
(42, 'Đối tượng sử dụng', 'Nam', 7, '2023-05-12 00:53:46', NULL),
(43, 'Loại máy', 'Tough Solar', 8, '2023-05-12 00:53:46', NULL),
(44, 'Đường kính mặt', '53.4 mm', 8, '2023-05-12 00:53:46', NULL),
(45, 'Độ rộng dây', '57.5 mm', 8, '2023-05-12 00:53:46', NULL),
(46, 'Chất liệu dây', 'Dây đeo bằng nhựa', 8, '2023-05-12 00:53:46', NULL),
(47, 'Chống nước', '10ATM (100 mét)', 8, '2023-05-12 00:53:46', NULL),
(48, 'Đối tượng sử dụng', 'Nam', 8, '2023-05-12 00:53:46', NULL),
(49, 'Loại máy', 'Tough Solar', 9, '2023-05-12 00:53:46', NULL),
(50, 'Đường kính mặt', '53.4 mm', 9, '2023-05-12 00:53:46', NULL),
(51, 'Độ rộng dây', '57.5 mm', 9, '2023-05-12 00:53:46', NULL),
(52, 'Chất liệu dây', 'Dây đeo bằng nhựa', 9, '2023-05-12 00:53:46', NULL),
(53, 'Chống nước', '10ATM (100 mét)', 9, '2023-05-12 00:53:46', NULL),
(54, 'Đối tượng sử dụng', 'Nam', 9, '2023-05-12 00:53:46', NULL),
(55, 'Loại máy', 'Quartz', 10, '2023-05-12 00:53:46', NULL),
(56, 'Đường kính mặt', '38 mm', 10, '2023-05-12 00:53:46', NULL),
(57, 'Độ rộng dây', '135 mm', 10, '2023-05-12 00:53:46', NULL),
(58, 'Chất liệu dây', 'Dây đeo bằng da', 10, '2023-05-12 00:53:46', NULL),
(59, 'Chống nước', '5ATM (50 mét)', 10, '2023-05-12 00:53:46', NULL),
(60, 'Đối tượng sử dụng', 'Nữ', 10, '2023-05-12 00:53:46', NULL),
(61, 'Loại máy', 'Quartz', 11, '2023-05-12 00:53:46', NULL),
(62, 'Đường kính mặt', '38 mm', 11, '2023-05-12 00:53:46', NULL),
(63, 'Độ rộng dây', '135 mm', 11, '2023-05-12 00:53:46', NULL),
(64, 'Chất liệu dây', 'Dây đeo bằng thép không gỉ', 11, '2023-05-12 00:53:46', NULL),
(65, 'Chống nước', '5ATM (50 mét)', 11, '2023-05-12 00:53:46', NULL),
(66, 'Đối tượng sử dụng', 'Nữ', 11, '2023-05-12 00:53:46', NULL),
(67, 'Loại máy', 'Quartz', 12, '2023-05-12 00:53:46', NULL),
(68, 'Đường kính mặt', '38 mm', 12, '2023-05-12 00:53:46', NULL),
(69, 'Độ rộng dây', '135 mm', 12, '2023-05-12 00:53:46', NULL),
(70, 'Chất liệu dây', 'Dây đeo bằng da thật', 12, '2023-05-12 00:53:46', NULL),
(71, 'Chống nước', '5ATM (50 mét)', 12, '2023-05-12 00:53:46', NULL),
(72, 'Đối tượng sử dụng', 'Nữ', 12, '2023-05-12 00:53:46', NULL),
(73, 'Loại máy', 'Quartz', 13, '2023-05-12 00:53:46', NULL),
(74, 'Đường kính mặt', '38 mm', 13, '2023-05-12 00:53:46', NULL),
(75, 'Độ rộng dây', '135 mm', 13, '2023-05-12 00:53:46', NULL),
(76, 'Chất liệu dây', 'Dây đeo bằng nhựa', 13, '2023-05-12 00:53:47', NULL),
(77, 'Chống nước', '5ATM (50 mét)', 13, '2023-05-12 00:53:47', NULL),
(78, 'Đối tượng sử dụng', 'Nữ', 13, '2023-05-12 00:53:47', NULL),
(79, 'Loại máy', 'Quartz', 14, '2023-05-12 00:53:47', NULL),
(80, 'Đường kính mặt', '38 mm', 14, '2023-05-12 00:53:47', NULL),
(81, 'Độ rộng dây', '135 mm', 14, '2023-05-12 00:53:47', NULL),
(82, 'Chất liệu dây', 'Dây đeo bằng nhựa', 14, '2023-05-12 00:53:47', NULL),
(83, 'Chống nước', '5ATM (50 mét)', 14, '2023-05-12 00:53:47', NULL),
(84, 'Đối tượng sử dụng', 'Nữ', 14, '2023-05-12 00:53:47', NULL),
(85, 'Loại máy', 'Quartz', 15, '2023-05-12 00:53:47', NULL),
(86, 'Đường kính mặt', '53.4 mm', 15, '2023-05-12 00:53:47', NULL),
(87, 'Độ rộng dây', '58.5 mm', 15, '2023-05-12 00:53:47', NULL),
(88, 'Chất liệu dây', 'Dây đeo bằng nhựa', 15, '2023-05-12 00:53:47', NULL),
(89, 'Chống nước', '10ATM (100 mét)', 15, '2023-05-12 00:53:47', NULL),
(90, 'Đối tượng sử dụng', 'Nam', 15, '2023-05-12 00:53:47', NULL),
(91, 'Loại máy', 'Quartz', 16, '2023-05-12 00:53:47', NULL),
(92, 'Đường kính mặt', '38 mm', 16, '2023-05-12 00:53:47', NULL),
(93, 'Độ rộng dây', '45 mm', 16, '2023-05-12 00:53:47', NULL),
(94, 'Chất liệu dây', 'Dây đeo bằng nhựa', 16, '2023-05-12 00:53:47', NULL),
(95, 'Chống nước', '10ATM (100 mét)', 16, '2023-05-12 00:53:47', NULL),
(96, 'Loại máy', 'Quartz', 17, '2023-05-12 00:53:47', NULL),
(97, 'Đường kính mặt', '38 mm', 17, '2023-05-12 00:53:47', NULL),
(98, 'Độ rộng dây', '45 mm', 17, '2023-05-12 00:53:47', NULL),
(99, 'Chất liệu dây', 'Dây đeo bằng nhựa', 17, '2023-05-12 00:53:47', NULL),
(100, 'Chống nước', '10ATM (100 mét)', 17, '2023-05-12 00:53:47', NULL),
(101, 'Loại máy', 'Pin năng lượng mặt trời', 18, '2023-05-12 00:53:47', NULL),
(102, 'Đường kính mặt', '53.4 mm', 18, '2023-05-12 00:53:47', NULL),
(103, 'Độ rộng dây', '145 đến 215 mm', 18, '2023-05-12 00:53:47', NULL),
(104, 'Chất liệu dây', 'Dây đeo bằng uretan mềm (nhựa sinh học)', 18, '2023-05-12 00:53:47', NULL),
(105, 'Chống nước', '10ATM (100 mét)', 18, '2023-05-12 00:53:47', NULL),
(106, 'Đối tượng sử dụng', 'Nam', 18, '2023-05-12 00:53:47', NULL),
(107, 'Loại máy', 'Pin năng lượng mặt trời', 19, '2023-05-12 00:53:47', NULL),
(108, 'Đường kính mặt', '45.2 mm', 19, '2023-05-12 00:53:47', NULL),
(109, 'Độ rộng dây', '145 đến 215 mm', 19, '2023-05-12 00:53:47', NULL),
(110, 'Chất liệu dây', 'Dây đeo bằng vải', 19, '2023-05-12 00:53:47', NULL),
(111, 'Chống nước', '20ATM (200 mét)', 19, '2023-05-12 00:53:47', NULL),
(112, 'Đối tượng sử dụng', 'Nam', 19, '2023-05-12 00:53:47', NULL),
(113, 'Loại máy', 'Quartz', 20, '2023-05-12 00:53:47', NULL),
(114, 'Đường kính mặt', '50.8 mm', 20, '2023-05-12 00:53:47', NULL),
(115, 'Độ rộng dây', '145 đến 215 mm', 20, '2023-05-12 00:53:47', NULL),
(116, 'Chất liệu dây', 'Dây đeo bằng nhựa', 20, '2023-05-12 00:53:47', NULL),
(117, 'Chống nước', '20ATM (200 mét)', 20, '2023-05-12 00:53:47', NULL),
(118, 'Đối tượng sử dụng', 'Nam', 20, '2023-05-12 00:53:47', NULL),
(119, 'Loại máy', 'Quartz', 21, '2023-05-13 19:58:12', NULL),
(120, 'Đường kính mặt', '53.4 mm', 21, '2023-05-13 19:58:12', NULL),
(121, 'Độ rộng dây', '57.5 mm', 21, '2023-05-13 19:58:12', NULL),
(122, 'Chất liệu dây', 'Dây đeo bằng nhựa', 21, '2023-05-13 19:58:12', NULL),
(123, 'Chống nước', '20ATM (200 mét)', 21, '2023-05-13 19:58:12', NULL),
(124, 'Đối tượng sử dụng', 'Nam', 21, '2023-05-13 19:58:12', NULL),
(125, 'Loại máy', 'Quartz', 22, '2023-05-13 19:58:12', NULL),
(126, 'Đường kính mặt', '53.4 mm', 22, '2023-05-13 19:58:12', NULL),
(127, 'Độ rộng dây', '57.5 mm', 22, '2023-05-13 19:58:12', NULL),
(128, 'Chất liệu dây', 'Dây đeo bằng nhựa', 22, '2023-05-13 19:58:12', NULL),
(129, 'Chống nước', '20ATM (200 mét)', 22, '2023-05-13 19:58:12', NULL),
(130, 'Đối tượng sử dụng', 'Nam', 22, '2023-05-13 19:58:12', NULL),
(131, 'Loại máy', 'Quartz', 23, '2023-05-13 19:58:12', NULL),
(132, 'Đường kính mặt', '53.4 mm', 23, '2023-05-13 19:58:12', NULL),
(133, 'Độ rộng dây', '57.5 mm', 23, '2023-05-13 19:58:12', NULL),
(134, 'Chất liệu dây', 'Dây đeo bằng nhựa', 23, '2023-05-13 19:58:12', NULL),
(135, 'Chống nước', '20ATM (200 mét)', 23, '2023-05-13 19:58:12', NULL),
(136, 'Đối tượng sử dụng', 'Nam', 23, '2023-05-13 19:58:12', NULL),
(137, 'Loại máy', 'Quartz', 24, '2023-05-13 19:58:12', NULL),
(138, 'Đường kính mặt', '53.4 mm', 24, '2023-05-13 19:58:12', NULL),
(139, 'Độ rộng dây', '57.5 mm', 24, '2023-05-13 19:58:12', NULL),
(140, 'Chất liệu dây', 'Dây đeo bằng nhựa', 24, '2023-05-13 19:58:12', NULL),
(141, 'Chống nước', '20ATM (200 mét)', 24, '2023-05-13 19:58:12', NULL),
(142, 'Đối tượng sử dụng', 'Nam', 24, '2023-05-13 19:58:12', NULL),
(143, 'Loại máy', 'Quartz', 25, '2023-05-13 19:58:12', NULL),
(144, 'Đường kính mặt', '53.4 mm', 25, '2023-05-13 19:58:12', NULL),
(145, 'Độ rộng dây', '57.5 mm', 25, '2023-05-13 19:58:12', NULL),
(146, 'Chất liệu dây', 'Dây đeo bằng nhựa', 25, '2023-05-13 19:58:12', NULL),
(147, 'Chống nước', '20ATM (200 mét)', 25, '2023-05-13 19:58:12', NULL),
(148, 'Đối tượng sử dụng', 'Nam', 25, '2023-05-13 19:58:12', NULL),
(149, 'Loại máy', 'Quartz', 26, '2023-05-13 19:58:12', NULL),
(150, 'Đường kính mặt', '53.4 mm', 26, '2023-05-13 19:58:12', NULL),
(151, 'Độ rộng dây', '57.5 mm', 26, '2023-05-13 19:58:12', NULL),
(152, 'Chất liệu dây', 'Dây đeo bằng nhựa', 26, '2023-05-13 19:58:12', NULL),
(153, 'Chống nước', '20ATM (200 mét)', 26, '2023-05-13 19:58:12', NULL),
(154, 'Đối tượng sử dụng', 'Nam', 26, '2023-05-13 19:58:12', NULL),
(155, 'Loại máy', 'Quartz', 27, '2023-05-13 19:58:12', NULL),
(156, 'Đường kính mặt', '53.4 mm', 27, '2023-05-13 19:58:12', NULL),
(157, 'Độ rộng dây', '57.5 mm', 27, '2023-05-13 19:58:12', NULL),
(158, 'Chất liệu dây', 'Dây đeo bằng nhựa', 27, '2023-05-13 19:58:12', NULL),
(159, 'Chống nước', '20ATM (200 mét)', 27, '2023-05-13 19:58:12', NULL),
(160, 'Đối tượng sử dụng', 'Nam', 27, '2023-05-13 19:58:12', NULL),
(161, 'Loại máy', 'Quartz', 28, '2023-05-13 19:58:12', NULL),
(162, 'Đường kính mặt', '53.4 mm', 28, '2023-05-13 19:58:13', NULL),
(163, 'Độ rộng dây', '57.5 mm', 28, '2023-05-13 19:58:13', NULL),
(164, 'Chất liệu dây', 'Dây đeo bằng nhựa', 28, '2023-05-13 19:58:13', NULL),
(165, 'Chống nước', '20ATM (200 mét)', 28, '2023-05-13 19:58:13', NULL),
(166, 'Đối tượng sử dụng', 'Nam', 28, '2023-05-13 19:58:13', NULL),
(167, 'Loại máy', 'Quartz', 29, '2023-05-13 19:58:13', NULL),
(168, 'Đường kính mặt', '53.4 mm', 29, '2023-05-13 19:58:13', NULL),
(169, 'Độ rộng dây', '57.5 mm', 29, '2023-05-13 19:58:13', NULL),
(170, 'Chất liệu dây', 'Dây đeo bằng nhựa', 29, '2023-05-13 19:58:13', NULL),
(171, 'Chống nước', '20ATM (200 mét)', 29, '2023-05-13 19:58:13', NULL),
(172, 'Đối tượng sử dụng', 'Nam', 29, '2023-05-13 19:58:13', NULL),
(173, 'Loại máy', 'Quartz', 30, '2023-05-13 19:58:13', NULL),
(174, 'Đường kính mặt', '53.4 mm', 30, '2023-05-13 19:58:13', NULL),
(175, 'Độ rộng dây', '57.5 mm', 30, '2023-05-13 19:58:13', NULL),
(176, 'Chất liệu dây', 'Dây đeo bằng nhựa', 30, '2023-05-13 19:58:13', NULL),
(177, 'Chống nước', '20ATM (200 mét)', 30, '2023-05-13 19:58:13', NULL),
(178, 'Đối tượng sử dụng', 'Nam', 30, '2023-05-13 19:58:13', NULL),
(179, 'Loại máy', 'Quartz', 31, '2023-05-13 19:58:13', NULL),
(180, 'Đường kính mặt', '53.4 mm', 31, '2023-05-13 19:58:13', NULL),
(181, 'Độ rộng dây', '57.5 mm', 31, '2023-05-13 19:58:13', NULL),
(182, 'Chất liệu dây', 'Dây đeo bằng nhựa', 31, '2023-05-13 19:58:13', NULL),
(183, 'Chống nước', '20ATM (200 mét)', 31, '2023-05-13 19:58:13', NULL),
(184, 'Đối tượng sử dụng', 'Nam', 31, '2023-05-13 19:58:13', NULL),
(185, 'Loại máy', 'Quartz', 32, '2023-05-13 19:58:13', NULL),
(186, 'Đường kính mặt', '53.4 mm', 32, '2023-05-13 19:58:13', NULL),
(187, 'Độ rộng dây', '57.5 mm', 32, '2023-05-13 19:58:13', NULL),
(188, 'Chất liệu dây', 'Dây đeo bằng nhựa', 32, '2023-05-13 19:58:13', NULL),
(189, 'Chống nước', '20ATM (200 mét)', 32, '2023-05-13 19:58:13', NULL),
(190, 'Đối tượng sử dụng', 'Nam', 32, '2023-05-13 19:58:13', NULL),
(191, 'Loại máy', 'Quartz', 33, '2023-05-13 19:58:13', NULL),
(192, 'Đường kính mặt', '53.4 mm', 33, '2023-05-13 19:58:13', NULL),
(193, 'Độ rộng dây', '57.5 mm', 33, '2023-05-13 19:58:13', NULL),
(194, 'Chất liệu dây', 'Dây đeo bằng nhựa', 33, '2023-05-13 19:58:13', NULL),
(195, 'Chống nước', '20ATM (200 mét)', 33, '2023-05-13 19:58:13', NULL),
(196, 'Đối tượng sử dụng', 'Nam', 33, '2023-05-13 19:58:13', NULL),
(197, 'Loại máy', 'Quartz', 34, '2023-05-13 19:58:13', NULL),
(198, 'Đường kính mặt', '53.4 mm', 34, '2023-05-13 19:58:13', NULL),
(199, 'Độ rộng dây', '57.5 mm', 34, '2023-05-13 19:58:13', NULL),
(200, 'Chất liệu dây', 'Dây đeo bằng nhựa', 34, '2023-05-13 19:58:13', NULL),
(201, 'Chống nước', '20ATM (200 mét)', 34, '2023-05-13 19:58:13', NULL),
(202, 'Đối tượng sử dụng', 'Nam', 34, '2023-05-13 19:58:13', NULL),
(203, 'Loại máy', 'Quartz', 35, '2023-05-13 19:58:13', NULL),
(204, 'Đường kính mặt', '53.4 mm', 35, '2023-05-13 19:58:13', NULL),
(205, 'Độ rộng dây', '57.5 mm', 35, '2023-05-13 19:58:13', NULL),
(206, 'Chất liệu dây', 'Dây đeo bằng nhựa', 35, '2023-05-13 19:58:13', NULL),
(207, 'Chống nước', '20ATM (200 mét)', 35, '2023-05-13 19:58:13', NULL),
(208, 'Đối tượng sử dụng', 'Nam', 35, '2023-05-13 19:58:13', NULL),
(209, 'Loại máy', 'Quartz', 36, '2023-05-13 19:58:13', NULL),
(210, 'Đường kính mặt', '53.4 mm', 36, '2023-05-13 19:58:13', NULL),
(211, 'Độ rộng dây', '57.5 mm', 36, '2023-05-13 19:58:13', NULL),
(212, 'Chất liệu dây', 'Dây đeo bằng nhựa', 36, '2023-05-13 19:58:13', NULL),
(213, 'Chống nước', '10ATM (10 mét)', 36, '2023-05-13 19:58:13', NULL),
(214, 'Đối tượng sử dụng', 'Nữ', 36, '2023-05-13 19:58:13', NULL),
(215, 'Loại máy', 'Quartz', 37, '2023-05-13 19:58:13', NULL),
(216, 'Đường kính mặt', '53.4 mm', 37, '2023-05-13 19:58:13', NULL),
(217, 'Độ rộng dây', '57.5 mm', 37, '2023-05-13 19:58:13', NULL),
(218, 'Chất liệu dây', 'Dây đeo bằng nhựa', 37, '2023-05-13 19:58:13', NULL),
(219, 'Chống nước', '10ATM (10 mét)', 37, '2023-05-13 19:58:13', NULL),
(220, 'Đối tượng sử dụng', 'Nữ', 37, '2023-05-13 19:58:13', NULL),
(221, 'Loại máy', 'Quartz', 38, '2023-05-13 19:58:13', NULL),
(222, 'Đường kính mặt', '53.4 mm', 38, '2023-05-13 19:58:13', NULL),
(223, 'Độ rộng dây', '57.5 mm', 38, '2023-05-13 19:58:13', NULL),
(224, 'Chất liệu dây', 'Dây đeo bằng nhựa', 38, '2023-05-13 19:58:13', NULL),
(225, 'Chống nước', '10ATM (10 mét)', 38, '2023-05-13 19:58:13', NULL),
(226, 'Đối tượng sử dụng', 'Nữ', 38, '2023-05-13 19:58:13', NULL),
(227, 'Loại máy', 'Quartz', 39, '2023-05-13 19:58:13', NULL),
(228, 'Đường kính mặt', '53.4 mm', 39, '2023-05-13 19:58:13', NULL),
(229, 'Độ rộng dây', '57.5 mm', 39, '2023-05-13 19:58:13', NULL),
(230, 'Chất liệu dây', 'Dây đeo bằng nhựa', 39, '2023-05-13 19:58:13', NULL),
(231, 'Chống nước', '10ATM (10 mét)', 39, '2023-05-13 19:58:13', NULL),
(232, 'Đối tượng sử dụng', 'Nữ', 39, '2023-05-13 19:58:13', NULL),
(233, 'Loại máy', 'Quartz', 40, '2023-05-13 19:58:13', NULL),
(234, 'Đường kính mặt', '53.4 mm', 40, '2023-05-13 19:58:13', NULL),
(235, 'Độ rộng dây', '57.5 mm', 40, '2023-05-13 19:58:13', NULL),
(236, 'Chất liệu dây', 'Dây đeo bằng nhựa', 40, '2023-05-13 19:58:13', NULL),
(237, 'Chống nước', '10ATM (10 mét)', 40, '2023-05-13 19:58:13', NULL),
(238, 'Đối tượng sử dụng', 'Nữ', 40, '2023-05-13 19:58:13', NULL),
(239, 'Loại máy', 'Quartz', 41, '2023-05-13 19:58:13', NULL),
(240, 'Đường kính mặt', '53.4 mm', 41, '2023-05-13 19:58:13', NULL),
(241, 'Độ rộng dây', '57.5 mm', 41, '2023-05-13 19:58:13', NULL),
(242, 'Chất liệu dây', 'Dây đeo bằng nhựa', 41, '2023-05-13 19:58:13', NULL),
(243, 'Chống nước', '10ATM (10 mét)', 41, '2023-05-13 19:58:13', NULL),
(244, 'Đối tượng sử dụng', 'Nữ', 41, '2023-05-13 19:58:13', NULL),
(245, 'Loại máy', 'Quartz', 42, '2023-05-13 19:58:13', NULL),
(246, 'Đường kính mặt', '53.4 mm', 42, '2023-05-13 19:58:13', NULL),
(247, 'Độ rộng dây', '57.5 mm', 42, '2023-05-13 19:58:13', NULL),
(248, 'Chất liệu dây', 'Dây đeo bằng nhựa', 42, '2023-05-13 19:58:13', NULL),
(249, 'Chống nước', '10ATM (10 mét)', 42, '2023-05-13 19:58:13', NULL),
(250, 'Đối tượng sử dụng', 'Nữ', 42, '2023-05-13 19:58:13', NULL),
(251, 'Loại máy', 'Tough Solar', 43, '2023-05-13 19:58:13', NULL),
(252, 'Đường kính mặt', '53.4 mm', 43, '2023-05-13 19:58:13', NULL),
(253, 'Độ rộng dây', '57.5 mm', 43, '2023-05-13 19:58:13', NULL),
(254, 'Chất liệu dây', 'Dây đeo bằng nhựa', 43, '2023-05-13 19:58:13', NULL),
(255, 'Chống nước', '20ATM (20 mét)', 43, '2023-05-13 19:58:13', NULL),
(256, 'Đối tượng sử dụng', 'Nam', 43, '2023-05-13 19:58:13', NULL),
(257, 'Loại máy', 'Tough Solar', 44, '2023-05-13 19:58:13', NULL),
(258, 'Đường kính mặt', '53.4 mm', 44, '2023-05-13 19:58:13', NULL),
(259, 'Độ rộng dây', '57.5 mm', 44, '2023-05-13 19:58:13', NULL),
(260, 'Chất liệu dây', 'Dây đeo bằng nhựa', 44, '2023-05-13 19:58:13', NULL),
(261, 'Chống nước', '20ATM (20 mét)', 44, '2023-05-13 19:58:13', NULL),
(262, 'Đối tượng sử dụng', 'Nam', 44, '2023-05-13 19:58:13', NULL),
(263, 'Loại máy', 'Quartz', 45, '2023-05-13 19:58:13', NULL),
(264, 'Đường kính mặt', '53.4 mm', 45, '2023-05-13 19:58:13', NULL),
(265, 'Độ rộng dây', '57.5 mm', 45, '2023-05-13 19:58:14', NULL),
(266, 'Chất liệu dây', 'Dây đeo bằng nhựa', 45, '2023-05-13 19:58:14', NULL),
(267, 'Chống nước', '10ATM (10 mét)', 45, '2023-05-13 19:58:14', NULL),
(268, 'Đối tượng sử dụng', 'Nữ', 45, '2023-05-13 19:58:14', NULL),
(269, 'Loại máy', 'Quartz', 46, '2023-05-13 19:58:14', NULL),
(270, 'Đường kính mặt', '53.4 mm', 46, '2023-05-13 19:58:14', NULL),
(271, 'Độ rộng dây', '57.5 mm', 46, '2023-05-13 19:58:14', NULL),
(272, 'Chất liệu dây', 'Dây đeo bằng nhựa', 46, '2023-05-13 19:58:14', NULL),
(273, 'Chống nước', '10ATM (10 mét)', 46, '2023-05-13 19:58:14', NULL),
(274, 'Đối tượng sử dụng', 'Nữ', 46, '2023-05-13 19:58:14', NULL),
(275, 'Loại máy', 'Quartz', 47, '2023-05-13 19:58:14', NULL),
(276, 'Đường kính mặt', '50.8 mm', 47, '2023-05-13 19:58:14', NULL),
(277, 'Độ rộng dây', '145 đến 215 mm', 47, '2023-05-13 19:58:14', NULL),
(278, 'Chất liệu dây', 'Dây đeo bằng nhựa', 47, '2023-05-13 19:58:14', NULL),
(279, 'Chống nước', '20ATM (200 mét)', 47, '2023-05-13 19:58:14', NULL),
(280, 'Đối tượng sử dụng', 'Nam', 47, '2023-05-13 19:58:14', NULL),
(281, 'Loại máy', 'Quartz', 48, '2023-05-13 19:58:14', NULL),
(282, 'Đường kính mặt', '50.8 mm', 48, '2023-05-13 19:58:14', NULL),
(283, 'Độ rộng dây', '145 đến 215 mm', 48, '2023-05-13 19:58:14', NULL),
(284, 'Chất liệu dây', 'Dây đeo bằng nhựa', 48, '2023-05-13 19:58:14', NULL),
(285, 'Chống nước', '20ATM (200 mét)', 48, '2023-05-13 19:58:14', NULL),
(286, 'Đối tượng sử dụng', 'Nam', 48, '2023-05-13 19:58:14', NULL),
(287, 'Loại máy', 'Quartz', 49, '2023-05-13 19:58:14', NULL),
(288, 'Đường kính mặt', '50.8 mm', 49, '2023-05-13 19:58:14', NULL),
(289, 'Độ rộng dây', '145 đến 215 mm', 49, '2023-05-13 19:58:14', NULL),
(290, 'Chất liệu dây', 'Dây đeo bằng nhựa', 49, '2023-05-13 19:58:14', NULL),
(291, 'Chống nước', '20ATM (200 mét)', 49, '2023-05-13 19:58:14', NULL),
(292, 'Đối tượng sử dụng', 'Nam', 49, '2023-05-13 19:58:14', NULL),
(293, 'Loại máy', 'Quartz', 50, '2023-05-13 19:58:14', NULL),
(294, 'Đường kính mặt', '50.8 mm', 50, '2023-05-13 19:58:14', NULL),
(295, 'Độ rộng dây', '145 đến 215 mm', 50, '2023-05-13 19:58:14', NULL),
(296, 'Chất liệu dây', 'Dây đeo bằng nhựa', 50, '2023-05-13 19:58:14', NULL),
(297, 'Chống nước', '20ATM (200 mét)', 50, '2023-05-13 19:58:14', NULL),
(298, 'Đối tượng sử dụng', 'Nam', 50, '2023-05-13 19:58:14', NULL),
(299, 'Loại máy', 'Quartz', 51, '2023-05-13 19:58:14', NULL),
(300, 'Đường kính mặt', '50.8 mm', 51, '2023-05-13 19:58:14', NULL),
(301, 'Độ rộng dây', '145 đến 215 mm', 51, '2023-05-13 19:58:14', NULL),
(302, 'Chất liệu dây', 'Dây đeo bằng nhựa', 51, '2023-05-13 19:58:14', NULL),
(303, 'Chống nước', '20ATM (200 mét)', 51, '2023-05-13 19:58:14', NULL),
(304, 'Đối tượng sử dụng', 'Nam', 51, '2023-05-13 19:58:14', NULL),
(305, 'Loại máy', 'Quartz', 52, '2023-05-13 19:58:14', NULL),
(306, 'Đường kính mặt', '50.8 mm', 52, '2023-05-13 19:58:14', NULL),
(307, 'Độ rộng dây', '145 đến 215 mm', 52, '2023-05-13 19:58:14', NULL),
(308, 'Chất liệu dây', 'Dây đeo bằng nhựa', 52, '2023-05-13 19:58:14', NULL),
(309, 'Chống nước', '20ATM (200 mét)', 52, '2023-05-13 19:58:14', NULL),
(310, 'Đối tượng sử dụng', 'Nam', 52, '2023-05-13 19:58:14', NULL),
(311, 'Loại máy', 'Quartz', 53, '2023-05-13 19:58:14', NULL),
(312, 'Đường kính mặt', '50.8 mm', 53, '2023-05-13 19:58:14', NULL),
(313, 'Độ rộng dây', '145 đến 215 mm', 53, '2023-05-13 19:58:14', NULL),
(314, 'Chất liệu dây', 'Dây đeo bằng nhựa', 53, '2023-05-13 19:58:14', NULL),
(315, 'Chống nước', '20ATM (200 mét)', 53, '2023-05-13 19:58:14', NULL),
(316, 'Đối tượng sử dụng', 'Nam', 53, '2023-05-13 19:58:14', NULL),
(317, 'Loại máy', 'Quartz', 55, '2023-05-14 13:36:11', NULL),
(318, 'Đường kính mặt', '53.4 mm', 55, '2023-05-14 13:36:11', NULL),
(319, 'Độ rộng dây', '57.5 mm', 55, '2023-05-14 13:36:11', NULL),
(320, 'Chất liệu dây', 'Dây đeo bằng nhựa', 55, '2023-05-14 13:36:11', NULL),
(321, 'Chống nước', '10ATM (100 mét)', 55, '2023-05-14 13:36:11', NULL),
(322, 'Đối tượng sử dụng', 'Nữ', 55, '2023-05-14 13:36:11', NULL),
(323, 'Loại máy', 'Quartz', 56, '2023-05-14 13:36:11', NULL),
(324, 'Đường kính mặt', '53.4 mm', 56, '2023-05-14 13:36:11', NULL),
(325, 'Độ rộng dây', '57.5 mm', 56, '2023-05-14 13:36:11', NULL),
(326, 'Chất liệu dây', 'Dây đeo bằng nhựa', 56, '2023-05-14 13:36:11', NULL),
(327, 'Chống nước', '10ATM (100 mét)', 56, '2023-05-14 13:36:11', NULL),
(328, 'Đối tượng sử dụng', 'Nữ', 56, '2023-05-14 13:36:11', NULL),
(329, 'Loại máy', 'Quartz', 57, '2023-05-14 13:36:11', NULL),
(330, 'Đường kính mặt', '53.4 mm', 57, '2023-05-14 13:36:11', NULL),
(331, 'Độ rộng dây', '57.5 mm', 57, '2023-05-14 13:36:11', NULL),
(332, 'Chất liệu dây', 'Dây đeo bằng nhựa', 57, '2023-05-14 13:36:11', NULL),
(333, 'Chống nước', '10ATM (100 mét)', 57, '2023-05-14 13:36:11', NULL),
(334, 'Đối tượng sử dụng', 'Nữ', 57, '2023-05-14 13:36:11', NULL),
(335, 'Loại máy', 'Quartz', 58, '2023-05-14 13:36:11', NULL),
(336, 'Đường kính mặt', '53.4 mm', 58, '2023-05-14 13:36:11', NULL),
(337, 'Độ rộng dây', '57.5 mm', 58, '2023-05-14 13:36:11', NULL),
(338, 'Chất liệu dây', 'Dây đeo bằng nhựa', 58, '2023-05-14 13:36:12', NULL),
(339, 'Chống nước', '10ATM (100 mét)', 58, '2023-05-14 13:36:12', NULL),
(340, 'Đối tượng sử dụng', 'Nữ', 58, '2023-05-14 13:36:12', NULL),
(341, 'Loại máy', 'Quartz', 59, '2023-05-14 13:36:12', NULL),
(342, 'Đường kính mặt', '53.4 mm', 59, '2023-05-14 13:36:12', NULL),
(343, 'Độ rộng dây', '57.5 mm', 59, '2023-05-14 13:36:12', NULL),
(344, 'Chất liệu dây', 'Dây đeo bằng nhựa', 59, '2023-05-14 13:36:12', NULL),
(345, 'Chống nước', '10ATM (100 mét)', 59, '2023-05-14 13:36:12', NULL),
(346, 'Đối tượng sử dụng', 'Nữ', 59, '2023-05-14 13:36:12', NULL),
(347, 'Loại máy', 'Quartz', 60, '2023-05-14 13:36:12', NULL),
(348, 'Đường kính mặt', '53.4 mm', 60, '2023-05-14 13:36:12', NULL),
(349, 'Độ rộng dây', '57.5 mm', 60, '2023-05-14 13:36:12', NULL),
(350, 'Chất liệu dây', 'Dây đeo bằng nhựa', 60, '2023-05-14 13:36:12', NULL),
(351, 'Chống nước', '10ATM (100 mét)', 60, '2023-05-14 13:36:12', NULL),
(352, 'Đối tượng sử dụng', 'Nữ', 60, '2023-05-14 13:36:12', NULL),
(353, 'Loại máy', 'Quartz', 61, '2023-05-14 13:36:12', NULL),
(354, 'Đường kính mặt', '53.4 mm', 61, '2023-05-14 13:36:12', NULL),
(355, 'Độ rộng dây', '57.5 mm', 61, '2023-05-14 13:36:12', NULL),
(356, 'Chất liệu dây', 'Dây đeo bằng nhựa', 61, '2023-05-14 13:36:12', NULL),
(357, 'Chống nước', '10ATM (100 mét)', 61, '2023-05-14 13:36:12', NULL),
(358, 'Đối tượng sử dụng', 'Nữ', 61, '2023-05-14 13:36:12', NULL),
(359, 'Loại máy', 'Quartz', 62, '2023-05-14 13:36:12', NULL),
(360, 'Đường kính mặt', '53.4 mm', 62, '2023-05-14 13:36:12', NULL),
(361, 'Độ rộng dây', '57.5 mm', 62, '2023-05-14 13:36:12', NULL),
(362, 'Chất liệu dây', 'Dây đeo bằng nhựa', 62, '2023-05-14 13:36:12', NULL),
(363, 'Chống nước', '10ATM (100 mét)', 62, '2023-05-14 13:36:12', NULL),
(364, 'Đối tượng sử dụng', 'Nữ', 62, '2023-05-14 13:36:12', NULL),
(365, 'Loại máy', 'Quartz', 63, '2023-05-14 13:36:12', NULL),
(366, 'Đường kính mặt', '53.4 mm', 63, '2023-05-14 13:36:12', NULL),
(367, 'Độ rộng dây', '57.5 mm', 63, '2023-05-14 13:36:12', NULL),
(368, 'Chất liệu dây', 'Dây đeo bằng nhựa', 63, '2023-05-14 13:36:12', NULL),
(369, 'Chống nước', '10ATM (100 mét)', 63, '2023-05-14 13:36:12', NULL),
(370, 'Đối tượng sử dụng', 'Nữ', 63, '2023-05-14 13:36:12', NULL),
(371, 'Loại máy', 'Quartz', 64, '2023-05-14 13:36:12', NULL),
(372, 'Đường kính mặt', '53.4 mm', 64, '2023-05-14 13:36:12', NULL),
(373, 'Độ rộng dây', '57.5 mm', 64, '2023-05-14 13:36:12', NULL),
(374, 'Chất liệu dây', 'Dây đeo bằng nhựa', 64, '2023-05-14 13:36:12', NULL),
(375, 'Chống nước', '10ATM (100 mét)', 64, '2023-05-14 13:36:12', NULL),
(376, 'Đối tượng sử dụng', 'Nữ', 64, '2023-05-14 13:36:12', NULL),
(377, 'Loại máy', 'Quartz', 65, '2023-05-14 13:36:12', NULL),
(378, 'Đường kính mặt', '53.4 mm', 65, '2023-05-14 13:36:12', NULL),
(379, 'Độ rộng dây', '57.5 mm', 65, '2023-05-14 13:36:12', NULL),
(380, 'Chất liệu dây', 'Dây đeo bằng nhựa', 65, '2023-05-14 13:36:12', NULL),
(381, 'Chống nước', '10ATM (100 mét)', 65, '2023-05-14 13:36:12', NULL),
(382, 'Đối tượng sử dụng', 'Nữ', 65, '2023-05-14 13:36:12', NULL),
(383, 'Loại máy', 'Quartz', 66, '2023-05-14 13:36:23', NULL),
(384, 'Đường kính mặt', '53.4 mm', 66, '2023-05-14 13:36:23', NULL),
(385, 'Độ rộng dây', '57.5 mm', 66, '2023-05-14 13:36:23', NULL),
(386, 'Chất liệu dây', 'Dây đeo bằng nhựa', 66, '2023-05-14 13:36:23', NULL),
(387, 'Chống nước', '10ATM (100 mét)', 66, '2023-05-14 13:36:23', NULL),
(388, 'Đối tượng sử dụng', 'Nam', 66, '2023-05-14 13:36:23', NULL),
(389, 'Loại máy', 'Quartz', 67, '2023-05-14 13:36:23', NULL),
(390, 'Đường kính mặt', '53.4 mm', 67, '2023-05-14 13:36:23', NULL),
(391, 'Độ rộng dây', '57.5 mm', 67, '2023-05-14 13:36:23', NULL),
(392, 'Chất liệu dây', 'Dây đeo bằng nhựa', 67, '2023-05-14 13:36:23', NULL),
(393, 'Chống nước', '10ATM (100 mét)', 67, '2023-05-14 13:36:23', NULL),
(394, 'Đối tượng sử dụng', 'Nam', 67, '2023-05-14 13:36:23', NULL),
(395, 'Loại máy', 'Quartz', 68, '2023-05-14 13:36:23', NULL),
(396, 'Đường kính mặt', '53.4 mm', 68, '2023-05-14 13:36:23', NULL),
(397, 'Độ rộng dây', '57.5 mm', 68, '2023-05-14 13:36:23', NULL),
(398, 'Chất liệu dây', 'Dây đeo bằng nhựa', 68, '2023-05-14 13:36:23', NULL),
(399, 'Chống nước', '10ATM (100 mét)', 68, '2023-05-14 13:36:23', NULL),
(400, 'Đối tượng sử dụng', 'Nam', 68, '2023-05-14 13:36:23', NULL),
(401, 'Loại máy', 'Quartz', 69, '2023-05-14 13:36:23', NULL),
(402, 'Đường kính mặt', '53.4 mm', 69, '2023-05-14 13:36:23', NULL),
(403, 'Độ rộng dây', '57.5 mm', 69, '2023-05-14 13:36:23', NULL),
(404, 'Chất liệu dây', 'Dây đeo bằng nhựa', 69, '2023-05-14 13:36:23', NULL),
(405, 'Chống nước', '10ATM (100 mét)', 69, '2023-05-14 13:36:23', NULL),
(406, 'Đối tượng sử dụng', 'Nam', 69, '2023-05-14 13:36:23', NULL),
(407, 'Loại máy', 'Quartz', 70, '2023-05-14 13:36:23', NULL),
(408, 'Đường kính mặt', '53.4 mm', 70, '2023-05-14 13:36:23', NULL),
(409, 'Độ rộng dây', '57.5 mm', 70, '2023-05-14 13:36:23', NULL),
(410, 'Chất liệu dây', 'Dây đeo bằng nhựa', 70, '2023-05-14 13:36:23', NULL),
(411, 'Chống nước', '10ATM (100 mét)', 70, '2023-05-14 13:36:23', NULL),
(412, 'Đối tượng sử dụng', 'Nam', 70, '2023-05-14 13:36:23', NULL),
(413, 'Loại máy', 'Quartz', 71, '2023-05-14 13:36:23', NULL),
(414, 'Đường kính mặt', '53.4 mm', 71, '2023-05-14 13:36:24', NULL),
(415, 'Độ rộng dây', '57.5 mm', 71, '2023-05-14 13:36:24', NULL),
(416, 'Chất liệu dây', 'Dây đeo bằng nhựa', 71, '2023-05-14 13:36:24', NULL),
(417, 'Chống nước', '10ATM (100 mét)', 71, '2023-05-14 13:36:24', NULL),
(418, 'Đối tượng sử dụng', 'Nam', 71, '2023-05-14 13:36:24', NULL),
(419, 'Loại máy', 'Quartz', 72, '2023-05-14 13:36:24', NULL),
(420, 'Đường kính mặt', '53.4 mm', 72, '2023-05-14 13:36:24', NULL),
(421, 'Độ rộng dây', '57.5 mm', 72, '2023-05-14 13:36:24', NULL),
(422, 'Chất liệu dây', 'Dây đeo bằng nhựa', 72, '2023-05-14 13:36:24', NULL),
(423, 'Chống nước', '10ATM (100 mét)', 72, '2023-05-14 13:36:24', NULL),
(424, 'Đối tượng sử dụng', 'Nam', 72, '2023-05-14 13:36:24', NULL),
(425, 'Loại máy', 'Quartz', 73, '2023-05-14 13:36:24', NULL),
(426, 'Đường kính mặt', '53.4 mm', 73, '2023-05-14 13:36:24', NULL),
(427, 'Độ rộng dây', '57.5 mm', 73, '2023-05-14 13:36:24', NULL),
(428, 'Chất liệu dây', 'Dây đeo bằng nhựa', 73, '2023-05-14 13:36:24', NULL),
(429, 'Chống nước', '10ATM (100 mét)', 73, '2023-05-14 13:36:24', NULL),
(430, 'Đối tượng sử dụng', 'Nam', 73, '2023-05-14 13:36:24', NULL),
(431, 'Loại máy', 'Quartz', 74, '2023-05-14 13:36:24', NULL),
(432, 'Đường kính mặt', '53.4 mm', 74, '2023-05-14 13:36:24', NULL),
(433, 'Độ rộng dây', '57.5 mm', 74, '2023-05-14 13:36:24', NULL),
(434, 'Chất liệu dây', 'Dây đeo bằng nhựa', 74, '2023-05-14 13:36:24', NULL),
(435, 'Chống nước', '10ATM (100 mét)', 74, '2023-05-14 13:36:24', NULL),
(436, 'Đối tượng sử dụng', 'Nam', 74, '2023-05-14 13:36:24', NULL),
(437, 'Loại máy', 'Quartz', 75, '2023-05-14 13:36:24', NULL),
(438, 'Đường kính mặt', '53.4 mm', 75, '2023-05-14 13:36:24', NULL),
(439, 'Độ rộng dây', '57.5 mm', 75, '2023-05-14 13:36:24', NULL),
(440, 'Chất liệu dây', 'Dây đeo bằng nhựa', 75, '2023-05-14 13:36:24', NULL),
(441, 'Chống nước', '10ATM (100 mét)', 75, '2023-05-14 13:36:24', NULL),
(442, 'Đối tượng sử dụng', 'Nam', 75, '2023-05-14 13:36:24', NULL),
(443, 'Loại máy', 'Quartz', 76, '2023-05-14 13:36:24', NULL),
(444, 'Đường kính mặt', '53.4 mm', 76, '2023-05-14 13:36:24', NULL),
(445, 'Độ rộng dây', '57.5 mm', 76, '2023-05-14 13:36:24', NULL),
(446, 'Chất liệu dây', 'Dây đeo bằng nhựa', 76, '2023-05-14 13:36:24', NULL),
(447, 'Chống nước', '10ATM (100 mét)', 76, '2023-05-14 13:36:24', NULL),
(448, 'Đối tượng sử dụng', 'Nam', 76, '2023-05-14 13:36:24', NULL),
(449, 'Loại máy', 'Quartz', 77, '2023-05-14 13:36:33', NULL),
(450, 'Đường kính mặt', '53.4 mm', 77, '2023-05-14 13:36:33', NULL),
(451, 'Độ rộng dây', '57.5 mm', 77, '2023-05-14 13:36:33', NULL),
(452, 'Chất liệu dây', 'Dây đeo bằng nhựa', 77, '2023-05-14 13:36:33', NULL),
(453, 'Chống nước', '10ATM (100 mét)', 77, '2023-05-14 13:36:33', NULL),
(454, 'Đối tượng sử dụng', 'Nữ', 77, '2023-05-14 13:36:34', NULL),
(455, 'Loại máy', 'Quartz', 78, '2023-05-14 13:36:34', NULL),
(456, 'Đường kính mặt', '53.4 mm', 78, '2023-05-14 13:36:34', NULL),
(457, 'Độ rộng dây', '57.5 mm', 78, '2023-05-14 13:36:34', NULL),
(458, 'Chất liệu dây', 'Dây đeo bằng nhựa', 78, '2023-05-14 13:36:34', NULL),
(459, 'Chống nước', '10ATM (100 mét)', 78, '2023-05-14 13:36:34', NULL),
(460, 'Đối tượng sử dụng', 'Nữ', 78, '2023-05-14 13:36:34', NULL),
(461, 'Loại máy', 'Quartz', 79, '2023-05-14 13:36:34', NULL),
(462, 'Đường kính mặt', '53.4 mm', 79, '2023-05-14 13:36:34', NULL),
(463, 'Độ rộng dây', '57.5 mm', 79, '2023-05-14 13:36:34', NULL),
(464, 'Chất liệu dây', 'Dây đeo bằng nhựa', 79, '2023-05-14 13:36:34', NULL),
(465, 'Chống nước', '10ATM (100 mét)', 79, '2023-05-14 13:36:34', NULL),
(466, 'Đối tượng sử dụng', 'Nữ', 79, '2023-05-14 13:36:34', NULL),
(467, 'Loại máy', 'Quartz', 80, '2023-05-14 13:36:34', NULL),
(468, 'Đường kính mặt', '53.4 mm', 80, '2023-05-14 13:36:34', NULL),
(469, 'Độ rộng dây', '57.5 mm', 80, '2023-05-14 13:36:34', NULL),
(470, 'Chất liệu dây', 'Dây đeo bằng nhựa', 80, '2023-05-14 13:36:34', NULL),
(471, 'Chống nước', '10ATM (100 mét)', 80, '2023-05-14 13:36:34', NULL),
(472, 'Đối tượng sử dụng', 'Nữ', 80, '2023-05-14 13:36:34', NULL),
(473, 'Loại máy', 'Quartz', 81, '2023-05-14 13:36:34', NULL),
(474, 'Đường kính mặt', '53.4 mm', 81, '2023-05-14 13:36:34', NULL),
(475, 'Độ rộng dây', '57.5 mm', 81, '2023-05-14 13:36:34', NULL),
(476, 'Chất liệu dây', 'Dây đeo bằng nhựa', 81, '2023-05-14 13:36:34', NULL),
(477, 'Chống nước', '10ATM (100 mét)', 81, '2023-05-14 13:36:34', NULL),
(478, 'Đối tượng sử dụng', 'Nữ', 81, '2023-05-14 13:36:34', NULL),
(479, 'Loại máy', 'Quartz', 82, '2023-05-14 13:36:34', NULL),
(480, 'Đường kính mặt', '53.4 mm', 82, '2023-05-14 13:36:34', NULL),
(481, 'Độ rộng dây', '57.5 mm', 82, '2023-05-14 13:36:34', NULL),
(482, 'Chất liệu dây', 'Dây đeo bằng nhựa', 82, '2023-05-14 13:36:34', NULL),
(483, 'Chống nước', '10ATM (100 mét)', 82, '2023-05-14 13:36:34', NULL),
(484, 'Đối tượng sử dụng', 'Nữ', 82, '2023-05-14 13:36:34', NULL),
(485, 'Loại máy', 'Quartz', 83, '2023-05-14 13:36:43', NULL),
(486, 'Đường kính mặt', '53.4 mm', 83, '2023-05-14 13:36:43', NULL),
(487, 'Độ rộng dây', '57.5 mm', 83, '2023-05-14 13:36:43', NULL),
(488, 'Chất liệu dây', 'Dây đeo bằng nhựa', 83, '2023-05-14 13:36:43', NULL),
(489, 'Chống nước', '10ATM (100 mét)', 83, '2023-05-14 13:36:43', NULL),
(490, 'Đối tượng sử dụng', 'Nam', 83, '2023-05-14 13:36:43', NULL),
(491, 'Loại máy', 'Quartz', 84, '2023-05-14 13:36:43', NULL),
(492, 'Đường kính mặt', '53.4 mm', 84, '2023-05-14 13:36:43', NULL),
(493, 'Độ rộng dây', '57.5 mm', 84, '2023-05-14 13:36:43', NULL),
(494, 'Chất liệu dây', 'Dây đeo bằng nhựa', 84, '2023-05-14 13:36:43', NULL),
(495, 'Chống nước', '10ATM (100 mét)', 84, '2023-05-14 13:36:43', NULL),
(496, 'Đối tượng sử dụng', 'Nam', 84, '2023-05-14 13:36:43', NULL),
(497, 'Loại máy', 'Quartz', 85, '2023-05-14 13:36:43', NULL),
(498, 'Đường kính mặt', '53.4 mm', 85, '2023-05-14 13:36:43', NULL),
(499, 'Độ rộng dây', '57.5 mm', 85, '2023-05-14 13:36:43', NULL),
(500, 'Chất liệu dây', 'Dây đeo bằng nhựa', 85, '2023-05-14 13:36:43', NULL),
(501, 'Chống nước', '10ATM (100 mét)', 85, '2023-05-14 13:36:43', NULL),
(502, 'Đối tượng sử dụng', 'Nam', 85, '2023-05-14 13:36:43', NULL),
(503, 'Loại máy', 'Quartz', 86, '2023-05-14 13:36:43', NULL),
(504, 'Đường kính mặt', '53.4 mm', 86, '2023-05-14 13:36:43', NULL),
(505, 'Độ rộng dây', '57.5 mm', 86, '2023-05-14 13:36:43', NULL),
(506, 'Chất liệu dây', 'Dây đeo bằng nhựa', 86, '2023-05-14 13:36:43', NULL),
(507, 'Chống nước', '10ATM (100 mét)', 86, '2023-05-14 13:36:43', NULL),
(508, 'Đối tượng sử dụng', 'Nam', 86, '2023-05-14 13:36:43', NULL),
(509, 'Loại máy', 'Quartz', 87, '2023-05-14 13:36:43', NULL),
(510, 'Đường kính mặt', '53.4 mm', 87, '2023-05-14 13:36:43', NULL),
(511, 'Độ rộng dây', '57.5 mm', 87, '2023-05-14 13:36:43', NULL),
(512, 'Chất liệu dây', 'Dây đeo bằng nhựa', 87, '2023-05-14 13:36:43', NULL),
(513, 'Chống nước', '10ATM (100 mét)', 87, '2023-05-14 13:36:43', NULL),
(514, 'Đối tượng sử dụng', 'Nam', 87, '2023-05-14 13:36:43', NULL),
(515, 'Loại máy', 'Quartz', 88, '2023-05-14 13:36:43', NULL),
(516, 'Đường kính mặt', '53.4 mm', 88, '2023-05-14 13:36:43', NULL),
(517, 'Độ rộng dây', '57.5 mm', 88, '2023-05-14 13:36:43', NULL),
(518, 'Chất liệu dây', 'Dây đeo bằng nhựa', 88, '2023-05-14 13:36:43', NULL),
(519, 'Chống nước', '10ATM (100 mét)', 88, '2023-05-14 13:36:43', NULL),
(520, 'Đối tượng sử dụng', 'Nam', 88, '2023-05-14 13:36:43', NULL),
(521, 'Loại máy', 'Quartz', 89, '2023-05-14 13:36:43', NULL),
(522, 'Đường kính mặt', '53.4 mm', 89, '2023-05-14 13:36:43', NULL),
(523, 'Độ rộng dây', '57.5 mm', 89, '2023-05-14 13:36:43', NULL),
(524, 'Chất liệu dây', 'Dây đeo bằng nhựa', 89, '2023-05-14 13:36:43', NULL),
(525, 'Chống nước', '10ATM (100 mét)', 89, '2023-05-14 13:36:43', NULL),
(526, 'Đối tượng sử dụng', 'Nam', 89, '2023-05-14 13:36:43', NULL),
(527, 'Loại máy', 'Quartz', 90, '2023-05-14 13:36:43', NULL),
(528, 'Đường kính mặt', '53.4 mm', 90, '2023-05-14 13:36:43', NULL),
(529, 'Độ rộng dây', '57.5 mm', 90, '2023-05-14 13:36:43', NULL),
(530, 'Chất liệu dây', 'Dây đeo bằng nhựa', 90, '2023-05-14 13:36:43', NULL),
(531, 'Chống nước', '10ATM (100 mét)', 90, '2023-05-14 13:36:43', NULL),
(532, 'Đối tượng sử dụng', 'Nam', 90, '2023-05-14 13:36:43', NULL),
(533, 'Loại máy', 'Quartz', 91, '2023-05-14 13:36:44', NULL),
(534, 'Đường kính mặt', '53.4 mm', 91, '2023-05-14 13:36:44', NULL),
(535, 'Độ rộng dây', '57.5 mm', 91, '2023-05-14 13:36:44', NULL),
(536, 'Chất liệu dây', 'Dây đeo bằng nhựa', 91, '2023-05-14 13:36:44', NULL),
(537, 'Chống nước', '10ATM (100 mét)', 91, '2023-05-14 13:36:44', NULL),
(538, 'Đối tượng sử dụng', 'Nam', 91, '2023-05-14 13:36:44', NULL),
(539, 'Loại máy', 'Quartz', 92, '2023-05-14 13:36:44', NULL),
(540, 'Đường kính mặt', '53.4 mm', 92, '2023-05-14 13:36:44', NULL),
(541, 'Độ rộng dây', '57.5 mm', 92, '2023-05-14 13:36:44', NULL),
(542, 'Chất liệu dây', 'Dây đeo bằng nhựa', 92, '2023-05-14 13:36:44', NULL),
(543, 'Chống nước', '10ATM (100 mét)', 92, '2023-05-14 13:36:44', NULL),
(544, 'Đối tượng sử dụng', 'Nam', 92, '2023-05-14 13:36:44', NULL),
(545, 'Loại máy', 'Quartz', 93, '2023-05-14 13:36:44', NULL),
(546, 'Đường kính mặt', '53.4 mm', 93, '2023-05-14 13:36:44', NULL),
(547, 'Độ rộng dây', '57.5 mm', 93, '2023-05-14 13:36:44', NULL),
(548, 'Chất liệu dây', 'Dây đeo bằng nhựa', 93, '2023-05-14 13:36:44', NULL),
(549, 'Chống nước', '10ATM (100 mét)', 93, '2023-05-14 13:36:44', NULL),
(550, 'Đối tượng sử dụng', 'Nam', 93, '2023-05-14 13:36:44', NULL),
(551, 'Loại máy', 'Quartz', 94, '2023-05-14 13:36:55', NULL),
(552, 'Đường kính mặt', '53.4 mm', 94, '2023-05-14 13:36:56', NULL),
(553, 'Độ rộng dây', '57.5 mm', 94, '2023-05-14 13:36:56', NULL),
(554, 'Chất liệu dây', 'Dây đeo bằng nhựa', 94, '2023-05-14 13:36:56', NULL),
(555, 'Chống nước', '10ATM (100 mét)', 94, '2023-05-14 13:36:56', NULL),
(556, 'Đối tượng sử dụng', 'Nam', 94, '2023-05-14 13:36:56', NULL),
(557, 'Loại máy', 'Quartz', 95, '2023-05-14 13:36:56', NULL),
(558, 'Đường kính mặt', '53.4 mm', 95, '2023-05-14 13:36:56', NULL),
(559, 'Độ rộng dây', '57.5 mm', 95, '2023-05-14 13:36:56', NULL),
(560, 'Chất liệu dây', 'Dây đeo bằng nhựa', 95, '2023-05-14 13:36:56', NULL),
(561, 'Chống nước', '10ATM (100 mét)', 95, '2023-05-14 13:36:56', NULL),
(562, 'Đối tượng sử dụng', 'Nam', 95, '2023-05-14 13:36:56', NULL),
(563, 'Loại máy', 'Quartz', 96, '2023-05-14 13:36:56', NULL),
(564, 'Đường kính mặt', '53.4 mm', 96, '2023-05-14 13:36:56', NULL),
(565, 'Độ rộng dây', '57.5 mm', 96, '2023-05-14 13:36:56', NULL),
(566, 'Chất liệu dây', 'Dây đeo bằng nhựa', 96, '2023-05-14 13:36:56', NULL),
(567, 'Chống nước', '10ATM (100 mét)', 96, '2023-05-14 13:36:56', NULL),
(568, 'Đối tượng sử dụng', 'Nam', 96, '2023-05-14 13:36:56', NULL),
(569, 'Loại máy', 'Quartz', 97, '2023-05-14 13:36:56', NULL),
(570, 'Đường kính mặt', '53.4 mm', 97, '2023-05-14 13:36:56', NULL),
(571, 'Độ rộng dây', '57.5 mm', 97, '2023-05-14 13:36:56', NULL),
(572, 'Chất liệu dây', 'Dây đeo bằng nhựa', 97, '2023-05-14 13:36:56', NULL),
(573, 'Chống nước', '10ATM (100 mét)', 97, '2023-05-14 13:36:56', NULL),
(574, 'Đối tượng sử dụng', 'Nam', 97, '2023-05-14 13:36:56', NULL),
(575, 'Loại máy', 'Quartz', 98, '2023-05-14 13:36:56', NULL),
(576, 'Đường kính mặt', '53.4 mm', 98, '2023-05-14 13:36:56', NULL),
(577, 'Độ rộng dây', '57.5 mm', 98, '2023-05-14 13:36:56', NULL),
(578, 'Chất liệu dây', 'Dây đeo bằng nhựa', 98, '2023-05-14 13:36:56', NULL),
(579, 'Chống nước', '10ATM (100 mét)', 98, '2023-05-14 13:36:56', NULL),
(580, 'Đối tượng sử dụng', 'Nam', 98, '2023-05-14 13:36:56', NULL),
(581, 'Loại máy', 'Quartz', 99, '2023-05-14 13:36:56', NULL),
(582, 'Đường kính mặt', '53.4 mm', 99, '2023-05-14 13:36:56', NULL),
(583, 'Độ rộng dây', '57.5 mm', 99, '2023-05-14 13:36:56', NULL),
(584, 'Chất liệu dây', 'Dây đeo bằng nhựa', 99, '2023-05-14 13:36:56', NULL),
(585, 'Chống nước', '10ATM (100 mét)', 99, '2023-05-14 13:36:57', NULL),
(586, 'Đối tượng sử dụng', 'Nam', 99, '2023-05-14 13:36:57', NULL),
(587, 'Loại máy', 'Quartz', 100, '2023-05-14 13:37:03', NULL),
(588, 'Đường kính mặt', '53.4 mm', 100, '2023-05-14 13:37:03', NULL),
(589, 'Độ rộng dây', '57.5 mm', 100, '2023-05-14 13:37:03', NULL),
(590, 'Chất liệu dây', 'Dây đeo bằng nhựa', 100, '2023-05-14 13:37:03', NULL),
(591, 'Chống nước', '10ATM (100 mét)', 100, '2023-05-14 13:37:03', NULL),
(592, 'Đối tượng sử dụng', 'Nam', 100, '2023-05-14 13:37:03', NULL),
(593, 'Loại máy', 'Quartz', 101, '2023-05-14 13:37:03', NULL),
(594, 'Đường kính mặt', '53.4 mm', 101, '2023-05-14 13:37:03', NULL),
(595, 'Độ rộng dây', '57.5 mm', 101, '2023-05-14 13:37:03', NULL),
(596, 'Chất liệu dây', 'Dây đeo bằng nhựa', 101, '2023-05-14 13:37:03', NULL),
(597, 'Chống nước', '10ATM (100 mét)', 101, '2023-05-14 13:37:03', NULL),
(598, 'Đối tượng sử dụng', 'Nam', 101, '2023-05-14 13:37:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id` int(11) NOT NULL,
  `AnhDaiDien` varchar(250) DEFAULT NULL,
  `TieuDe` varchar(250) DEFAULT NULL,
  `MoTa` text DEFAULT NULL,
  `MaND` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id`, `AnhDaiDien`, `TieuDe`, `MoTa`, `MaND`, `created_at`, `updated_at`) VALUES
(1, 'TT1.png', 'Cận cảnh 03 mẫu đồng hồ Baby-G màu xanh bạc hà tuyệt đẹp', 'Màu sắc đẹp là một trong những lợi thế của đồng hồ Baby-G. Và trong hôm nay, hãy cùng Casio Anh Khuê tìm hiểu về những chiếc đồng hồ Baby-G có màu xanh bạc hà tuyệt đẹp và cực thích hợp cho những ngày hè nắng nóng. Cùng tham khảo và lựa chọn cho mình một item yêu thích các bạn gái nhé!', 2, '2023-05-12 00:57:47', NULL),
(2, 'TT2.png', 'Nên chọn đồng hồ G-Shock mặt vuông hay mặt tròn?', 'Đồng hồ G-Shock có nhiều hình dạng khác nhau như mặt vuông, mặt tròn. Bạn đang phân vân không biết nên chọn loại sẽ phù hợp với bạn. Cùng Casio Anh Khuê tìm hiểu xem loại mặt nào sẽ đẹp và phù hợp hơn với bạn nhé.', 3, '2023-05-12 00:58:01', NULL),
(3, 'TT3.png', '03 mẫu đồng hồ G Shock thích hợp cho cả nam lẫn nữ', 'Đồng hồ G Shock thường được biết đến là dòng đồng hồ dành cho nam giới bởi thiết kế hầm hố, thể thao và cá tính. Tuy nhiên có một số mẫu đồng hồ G Shock có nhiều màu sắc đa dạng phù hợp với cả nam và nữ.', 4, '2023-05-12 00:59:13', NULL),
(4, 'TT4.png', 'Văn Phú Watch tổ chức chương trình hội nghị trưng bày và giới thiệu sản phẩm mới tháng 2/2023', 'Ngày 17/02, Công ty cổ phần Anh Khuê Watch tổ chức chương trình “Hội nghị trưng bày và giới thiệu sản phẩm mới tháng 2/2023” nhằm giới thiệu các sản phẩm đồng hồ Casio mới đến quý đại lý.', 5, '2023-05-12 00:59:22', NULL),
(5, 'TT5.png', 'Các tips mix đồng hồ Baby-G cho các cô nàng sành điệu', 'Đồng hồ không chỉ là một vật dụng dùng để xem giờ mà nó còn là món phụ kiện giúp làm nổi bật phong cách thời trang của các bạn nữ. Đó cũng là lý do vì sao đồng hồ Casio luôn thường xuyên cho ra mắt những mẫu mã khác nhau. Sau đây, hãy cùng chúng tôi tìm hiểu một số tips mix đồng hồ Casio Baby-G thật sành điệu nhé!', 6, '2023-05-12 00:59:29', NULL),
(6, 'TT6.png', 'Khám phá đồng hồ G-Shock GW-B5600-2 - ấn tượng mạnh mẽ với mức giá hấp dẫ', 'Kể từ khi ra mắt vào đầu tháng 1 năm 2019, dòng đồng hồ Casio G-Shock GW-B5600-2 đã nhanh chóng trở thành mẫu đồng hồ được săn đón nhờ sự kết hợp của thiết kế đồng hồ đẹp mắt, tính năng ấn tượng và mức giá khá hấp dẫn. ', 7, '2023-05-12 00:59:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `dob`, `gender`, `address`, `phone`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$nqHmdmH12LqVtPOMih1OdubXgz/mIs3OfAkeS9fFoB4xpqsN0aOiq', 'phuphamvan411@gmail.com', 'Phạm Phú', '2002-11-24', b'1', 'Hải Dương', '0357717404', 'Quản trị', '2023-05-12 00:57:31', NULL),
(2, 'huonghn1', '$2y$10$AHIR1IyhYYTuQJn.bg6nte/7/lTpbgbgWdXuPsdDsgj5ySSpMPMDS', 'huonghn1@gmail.com', 'Trần Hương', '2002-01-02', b'0', 'Hà Nội', '0355555556', 'Nhân viên', '2023-05-12 00:57:31', NULL),
(3, 'hung333', '$2y$10$AHIR1IyhYYTuQJn.bg6nte/7/lTpbgbgWdXuPsdDsgj5ySSpMPMDS', 'hung333@gmail.com', 'Vũ Hùng', '2002-12-13', b'1', 'Hưng Yên', '0357777778', 'Nhân viên', '2023-05-12 00:57:31', NULL),
(4, 'dung09', '$2y$10$AHIR1IyhYYTuQJn.bg6nte/7/lTpbgbgWdXuPsdDsgj5ySSpMPMDS', 'dung09@gmail.com', 'Đinh Dũng', '2002-05-06', b'1', 'Thái Bình', '0356666666', 'Nhân viên', '2023-05-12 00:57:31', NULL),
(5, 'trungth1', '$2y$10$AHIR1IyhYYTuQJn.bg6nte/7/lTpbgbgWdXuPsdDsgj5ySSpMPMDS', 'trungth1@gmail.com', 'Nguyễn Trung', '2002-02-02', b'1', 'Hải Dương', '0333333334', 'Nhân viên', '2023-05-12 00:57:31', NULL),
(6, 'hoanghd45', '$2y$10$AHIR1IyhYYTuQJn.bg6nte/7/lTpbgbgWdXuPsdDsgj5ySSpMPMDS', 'hoanghd45@gmail.com', 'Phạm Hoàng', '2002-11-18', b'1', 'Hải Dương', '0351111112', 'Nhân viên', '2023-05-12 00:57:31', NULL),
(7, 'trangnemo1', '$2y$10$AHIR1IyhYYTuQJn.bg6nte/7/lTpbgbgWdXuPsdDsgj5ySSpMPMDS', 'trangnemo1@gmail.com', 'Lê Trang', '2002-06-08', b'0', 'Sa Pa', '0352222223', 'Nhân viên', '2023-05-12 00:57:31', NULL),
(8, 'cuongdz1', '$2y$10$DP8fSJhDvab6FXQvOQDdTuXVl/M3uSB4aT9F6l5kx4V.gg6SbAxU2', 'cuongdz1@gmail.com', 'Nguyễn Văn Cường', '2002-11-02', b'1', '12 Bình Lộc, phường Tân Bình, TP Hải Dương', '0345678912', 'Khách hàng', '2023-05-12 00:57:31', NULL),
(9, 'hoangpham12', '$2y$10$DP8fSJhDvab6FXQvOQDdTuXVl/M3uSB4aT9F6l5kx4V.gg6SbAxU2', 'hoangpham12@gmail.com', 'Phạm Đức Hoàng', '2002-10-13', b'1', '18 Nguyễn Trãi, Hải Phòng', '0357893478', 'Khách hàng', '2023-05-12 00:57:31', NULL),
(10, 'phuonghoa18', '$2y$10$DP8fSJhDvab6FXQvOQDdTuXVl/M3uSB4aT9F6l5kx4V.gg6SbAxU2', 'phuonghoa18@gmail.com', 'Nguyễn Phương Hoa', '2002-06-06', b'0', '16/7 Quang Trung, TP Thanh Hóa', '0356612345', 'Khách hàng', '2023-05-12 00:57:31', NULL),
(11, 'tommyxiaomi1', '$2y$10$DP8fSJhDvab6FXQvOQDdTuXVl/M3uSB4aT9F6l5kx4V.gg6SbAxU2', 'tommyxiaomi1@gmail.com', 'Phan Trung Kiên', '2002-08-02', b'1', '78 Ba Vì, Hà Nội', '0331233334', 'Khách hàng', '2023-05-12 00:57:31', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ctanhdongsanpham`
--
ALTER TABLE `ctanhdongsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaDSP` (`MaDSP`);

--
-- Chỉ mục cho bảng `ctanhsanpham`
--
ALTER TABLE `ctanhsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaDH` (`MaDH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `cthoadonnhap`
--
ALTER TABLE `cthoadonnhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaHDN` (`MaHDN`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `ctkho`
--
ALTER TABLE `ctkho`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaKho` (`MaKho`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `cttintuc`
--
ALTER TABLE `cttintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaTT` (`MaTT`);

--
-- Chỉ mục cho bảng `dongsanpham`
--
ALTER TABLE `dongsanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaMenu` (`MaMenu`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kho`
--
ALTER TABLE `kho`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaDSP` (`MaDSP`);

--
-- Chỉ mục cho bảng `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `MaND` (`MaND`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ctanhdongsanpham`
--
ALTER TABLE `ctanhdongsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ctanhsanpham`
--
ALTER TABLE `ctanhsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `cthoadonnhap`
--
ALTER TABLE `cthoadonnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ctkho`
--
ALTER TABLE `ctkho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `cttintuc`
--
ALTER TABLE `cttintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `dongsanpham`
--
ALTER TABLE `dongsanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `kho`
--
ALTER TABLE `kho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=599;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ctanhdongsanpham`
--
ALTER TABLE `ctanhdongsanpham`
  ADD CONSTRAINT `ctanhdongsanpham_ibfk_1` FOREIGN KEY (`MaDSP`) REFERENCES `dongsanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ctanhsanpham`
--
ALTER TABLE `ctanhsanpham`
  ADD CONSTRAINT `ctanhsanpham_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ctdonhang`
--
ALTER TABLE `ctdonhang`
  ADD CONSTRAINT `ctdonhang_ibfk_1` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ctdonhang_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cthoadonnhap`
--
ALTER TABLE `cthoadonnhap`
  ADD CONSTRAINT `cthoadonnhap_ibfk_1` FOREIGN KEY (`MaHDN`) REFERENCES `hoadonnhap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cthoadonnhap_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `ctkho`
--
ALTER TABLE `ctkho`
  ADD CONSTRAINT `ctkho_ibfk_1` FOREIGN KEY (`MaKho`) REFERENCES `kho` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ctkho_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `cttintuc`
--
ALTER TABLE `cttintuc`
  ADD CONSTRAINT `cttintuc_ibfk_1` FOREIGN KEY (`MaTT`) REFERENCES `tintuc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `dongsanpham`
--
ALTER TABLE `dongsanpham`
  ADD CONSTRAINT `dongsanpham_ibfk_1` FOREIGN KEY (`MaMenu`) REFERENCES `menu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD CONSTRAINT `giamgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadonnhap`
--
ALTER TABLE `hoadonnhap`
  ADD CONSTRAINT `hoadonnhap_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadonnhap_ibfk_2` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaDSP`) REFERENCES `dongsanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thongsokythuat`
--
ALTER TABLE `thongsokythuat`
  ADD CONSTRAINT `thongsokythuat_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
