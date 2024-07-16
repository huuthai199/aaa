-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 10, 2023 lúc 11:51 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

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
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(9) NOT NULL,
  `idorder` int(9) DEFAULT NULL,
  `idpro` int(9) DEFAULT NULL,
  `price` int(9) DEFAULT NULL,
  `dongia` double(10,2) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(9) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Nước hoa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_details`
--

CREATE TABLE `orders_details` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `view` int(20) NOT NULL,
  `iddm` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `image`, `description`, `view`, `iddm`) VALUES
(1, 'Nước hoa Châu Âu ', '50000000', 100, '1.jpg', 'aergdg', 123, 0),
(2, 'Nước hoa Verati', '1000', 6, '1.webp', '<br />\r\n<b>Warning</b>:  Undefined variable $mota in <b>C:xamppphpwwwmauduan1 - Copyadminsanphamupdate.php</b> on line <b>50</b><br />\r\n>', 12, 0),
(3, 'Nước hoa Lịch lãm', '1200000', 50, '4.png', '<br />\r\n<b>Warning</b>:  Undefined variable $mota in <b>C:xampphtdocsmauduan1 - Copyadminsanphamupdate.php</b> on line <b>50</b><br />\r\n>', 76, 0),
(4, 'Nước hoa Châu Âu ', '2500000', 12, '5.png', '<br />\r\n<b>Warning</b>:  Undefined variable $mota in <b>C:xampphtdocsmauduan1 - Copyadminsanphamupdate.php</b> on line <b>50</b><br />\r\n>', 59, 0),
(5, 'Nước Hoa Ý', '5000000', 125, '9.png', '<br />\r\n<b>Warning</b>:  Undefined variable $mota in <b>C:xampphtdocsmauduan1 - Copyadminsanphamupdate.php</b> on line <b>50</b><br />\r\n>', 62, 0),
(6, 'Nước hoa Chanel', '12000000', 15, '11.png', 'adxtfcjygvuhbivhyucgktyfxjtdhrzexdtfcygvhbjk', 50, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(9) NOT NULL,
  `iddh` int(9) NOT NULL,
  `idpro` int(9) NOT NULL,
  `soluong` int(9) NOT NULL DEFAULT 0,
  `dongia` int(20) NOT NULL,
  `tensp` varchar(50) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `iddh`, `idpro`, `soluong`, `dongia`, `tensp`, `img`) VALUES
(31, 53, 0, 1, 5000000, 'Nước Hoa Ý', '5'),
(32, 55, 0, 1, 2500000, 'Nước hoa Châu Âu ', '4'),
(33, 57, 0, 1, 5000000, 'Nước Hoa Ý', '5'),
(34, 61, 0, 1, 5000000, 'Nước Hoa Ý', '5'),
(35, 63, 0, 1, 1200000, 'Nước hoa Lịch lãm', '3'),
(36, 64, 0, 1, 12000000, 'Nước hoa Chanel', '6'),
(37, 65, 0, 1, 12000000, 'Nước hoa Chanel', '6'),
(38, 66, 0, 1, 12000000, 'Nước hoa Chanel', '6'),
(39, 67, 0, 1, 12000000, 'Nước hoa Chanel', ''),
(40, 0, 0, 0, 1, '12000000', 'Nước hoa Chanel'),
(41, 0, 0, 0, 2, '12000000', 'Nước hoa Chanel'),
(42, 70, 0, 2, 1000, 'Nước hoa Verati', '2'),
(43, 71, 0, 2, 1000, 'Nước hoa Verati', '2'),
(44, 72, 0, 2, 1000, 'Nước hoa Verati', '2'),
(45, 73, 0, 6, 12000000, 'Nước hoa Chanel', '1'),
(46, 74, 0, 6, 12000000, 'Nước hoa Chanel', '1'),
(47, 75, 0, 6, 12000000, 'Nước hoa Chanel', '1'),
(48, 76, 0, 6, 12000000, 'Nước hoa Chanel', '1'),
(49, 77, 0, 5, 5000000, 'Nước Hoa Ý', '1'),
(50, 78, 0, 0, 12000000, '6', '1'),
(51, 79, 0, 6, 12000000, 'Nước hoa Chanel', '1'),
(52, 80, 0, 0, 12000000, '1', ''),
(53, 81, 0, 0, 12000000, '1', '<br />\r\n<b>Warning</b>:  Undefined variable $tong in <b>C:xampphtdocsmauduan1Hviewcartviewcart.php</'),
(54, 82, 0, 0, 12000000, '1', '<br />\r\n<b>Warning</b>:  Undefined variable $tong in <b>C:xampphtdocsmauduan1Hviewcartviewcart.php</'),
(55, 83, 0, 0, 2500000, '1', '<br />\r\n<b>Warning</b>:  Undefined variable $tong in <b>C:xampphtdocsmauduan1Hviewcartviewcart.php</'),
(56, 84, 0, 4, 2500000, 'Nước hoa Châu Âu ', '1'),
(57, 85, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(58, 86, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(59, 87, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(60, 88, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(61, 89, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(62, 90, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(63, 91, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(64, 92, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(65, 93, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(66, 94, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(67, 95, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(68, 96, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(69, 96, 5, 1, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(70, 97, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(71, 97, 5, 1, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(72, 98, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(73, 98, 5, 1, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(74, 99, 5, 1, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(75, 99, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(76, 104, 5, 2, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(77, 104, 6, 1, 12000000, 'Nước hoa Chanel', 'upload/11.png'),
(78, 105, 5, 2, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(79, 105, 6, 1, 12000000, 'Nước hoa Chanel', 'upload/11.png'),
(80, 106, 5, 2, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(81, 106, 6, 1, 12000000, 'Nước hoa Chanel', 'upload/11.png'),
(82, 107, 5, 2, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(83, 107, 6, 1, 12000000, 'Nước hoa Chanel', 'upload/11.png'),
(84, 110, 6, 1, 12000000, 'Nước hoa Chanel', 'upload/11.png'),
(85, 110, 2, 1, 1000, 'Nước hoa Verati', 'upload/1.webp'),
(86, 110, 1, 2, 50000000, 'Nước hoa Châu Âu ', 'upload/1.jpg'),
(87, 112, 6, 1, 12000000, 'Nước hoa Chanel', 'upload/11.png'),
(88, 112, 5, 1, 5000000, 'Nước Hoa Ý', 'upload/9.png'),
(89, 112, 3, 1, 1200000, 'Nước hoa Lịch lãm', 'upload/4.png'),
(90, 114, 4, 1, 2500000, 'Nước hoa Châu Âu ', 'upload/5.png'),
(91, 114, 3, 1, 1200000, 'Nước hoa Lịch lãm', 'upload/4.png'),
(92, 114, 5, 1, 5000000, 'Nước Hoa Ý', 'upload/9.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

CREATE TABLE `tbl_oder` (
  `id` int(9) NOT NULL,
  `madh` varchar(20) NOT NULL,
  `tongdonhang` int(20) NOT NULL,
  `pttt` tinyint(1) DEFAULT 1,
  `iduser` int(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`id`, `madh`, `tongdonhang`, `pttt`, `iduser`, `name`, `address`, `email`, `tel`) VALUES
(53, 'Nước hoa279742', 0, 2, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '8745132'),
(54, 'Nước hoa885758', 0, 2, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '8745132'),
(55, 'Nước hoa897252', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '7856'),
(56, 'Nước hoa699502', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '7856'),
(57, 'Nước hoa453924', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '0963527829'),
(58, 'Nước hoa824437', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '0963527829'),
(59, 'Nước hoa7785', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '0963527829'),
(60, 'Nước hoa798090', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '0963527829'),
(61, 'Nước hoa797884', 0, 0, 0, '', '', '', ''),
(62, 'Nước hoa197097', 0, 0, 0, '', '', '', ''),
(63, 'Nước hoa633848', 0, 2, 0, 'ưerqwerb', 'ewrg', 'thainhph44403@fpt.edu.vn', '8745132'),
(64, 'Nước hoa108461', 0, 2, 0, '', '', '', ''),
(65, 'Nước hoa498173', 0, 2, 0, '', '', '', ''),
(66, 'Nước hoa29945', 0, 1, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '7856'),
(67, 'Nước hoa680497', 0, 1, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '7856'),
(68, 'Nước hoa704364', 0, 1, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '7856'),
(69, 'Nước hoa107229', 0, 2, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '0963527829'),
(70, 'Nước hoa16345', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '8745132'),
(71, 'Nước hoa81813', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '8745132'),
(72, 'Nước hoa899239', 0, 1, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '8745132'),
(73, 'Nước hoa621401', 0, 1, 0, 'ưerqwerb', 'ewrg', 'thainhph44403@fpt.edu.vn', '7856'),
(74, 'Nước hoa399156', 0, 1, 0, 'ưerqwerb', 'ewrg', 'thainhph44403@fpt.edu.vn', '7856'),
(75, 'Nước hoa30187', 0, 1, 0, 'ưerqwerb', 'ewrg', 'thainhph44403@fpt.edu.vn', '7856'),
(76, 'Nước hoa308945', 0, 1, 0, 'ưerqwerb', 'ewrg', 'thainhph44403@fpt.edu.vn', '7856'),
(77, 'Nước hoa906132', 0, 4, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '0963527829'),
(78, 'Nước hoa638641', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '8745132'),
(79, 'Nước hoa185689', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '8745132'),
(80, 'Nước hoa700929', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '8745132'),
(81, 'Nước hoa920171', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '8745132'),
(82, 'Nước hoa921271', 0, 1, 0, 'ưerqwerb', 'aerty', 'thainhph44403@fpt.edu.vn', '8745132'),
(83, 'Nước hoa254130', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(84, 'Nước hoa861984', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(85, 'Nước hoa426626', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(86, 'Nước hoa59527', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(87, 'Nước hoa135140', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(88, 'Nước hoa756129', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(89, 'Nước hoa70502', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(90, 'Nước hoa402880', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(91, 'Nước hoa976872', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(92, 'Nước hoa320694', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(93, 'Nước hoa713570', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(94, 'Nước hoa955653', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(95, 'Nước hoa822171', 0, 3, 0, 'ưerqwerb', 'erzxtctyhgjv', 'thainhph44403@fpt.edu.vn', '7856'),
(96, 'Nước hoa174519', 0, 1, 0, 'ưerqwerb', '23 tran phu', 'thainhph44403@fpt.edu.vn', '0334306410'),
(97, 'Nước hoa203492', 0, 1, 0, 'ưerqwerb', '23 tran phu', 'thainhph44403@fpt.edu.vn', '0334306410'),
(98, 'Nước hoa484435', 0, 1, 0, 'ưerqwerb', '23 tran phu', 'thainhph44403@fpt.edu.vn', '0334306410'),
(99, 'Nước hoa821344', 0, 3, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '0963527829'),
(100, 'Nước hoa439353', 0, 3, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '0963527829'),
(101, 'Nước hoa945074', 0, 3, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '0963527829'),
(102, 'Nước hoa426313', 0, 3, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '0963527829'),
(103, 'Nước hoa187050', 0, 3, 0, 'ưerqwerb', 'Tây Tựu', 'thainhph44403@fpt.edu.vn', '0963527829'),
(104, 'Nước hoa159490', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0963527829'),
(105, 'Nước hoa261564', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0963527829'),
(106, 'Nước hoa557455', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0963527829'),
(107, 'NUOCHOA580519', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0963527829'),
(108, 'NUOCHOA398849', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0963527829'),
(109, 'NUOCHOA834271', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0963527829'),
(110, 'NUOCHOA964324', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0334306410'),
(111, 'NUOCHOA459018', 0, 1, 0, 'Nguyễn Hữu Thái', 'Tây Tựu, Bắc Từ Liêm, Hà Nội', 'thainhph44403@fpt.edu.vn', '0334306410'),
(112, 'NUOCHOA787778', 0, 2, 0, 'Nguyễn Hữu Thái', '23 tran phu', 'thainhph44403@fpt.edu.vn', '0334306410'),
(113, 'NUOCHOA691258', 0, 2, 0, 'Nguyễn Hữu Thái', '23 tran phu', 'thainhph44403@fpt.edu.vn', '0334306410'),
(114, 'NUOCHOA475780', 0, 4, 0, 'Nguyễn Hữu Thái', '23 tran phu', 'thainhph44403@fpt.edu.vn', '0334306410');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `email`, `tel`, `address`, `role_id`) VALUES
(1, 'thainhph44403@fpt.edu.vn', 'huuthai', '123456', NULL, NULL, NULL),
(4, '', '', '', NULL, NULL, NULL),
(5, 'hihi123', '123456', 'thainhph44403@fpt.edu.vn', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `orders_details`
--
ALTER TABLE `orders_details`
  ADD CONSTRAINT `orders_details_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orders_details_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
