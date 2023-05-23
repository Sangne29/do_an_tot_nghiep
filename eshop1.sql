-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 25, 2023 lúc 02:01 AM
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
-- Cơ sở dữ liệu: `eshop1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_category`
--

CREATE TABLE `latnt_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parentid` int(11) UNSIGNED NOT NULL,
  `orders` int(11) UNSIGNED NOT NULL,
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_category`
--

INSERT INTO `latnt_category` (`id`, `name`, `slug`, `parentid`, `orders`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'GÓI ĂN', 'goi-an', 0, 1, 'GÓI ĂN', 'GÓI ĂN', '2023-03-02 17:00:00', 1, '2023-04-04 05:49:23', 0, 1),
(2, 'GÓI NƯỚC', 'goi-nuoc', 0, 2, 'GÓI NƯỚC', 'GÓI NƯỚC', '2023-03-02 17:00:00', 1, '2023-04-03 04:59:29', 28, 1),
(3, 'CHẾ BIẾN SẴN', 'che-bien-san', 0, 3, 'CHẾ BIẾN SẴN', 'CHẾ BIẾN SẴN', '2023-03-02 17:00:00', 1, '2023-04-03 04:59:38', 28, 1),
(4, 'SNACKS', 'snacks', 0, 4, 'SNACKS', 'SNACKS', '2023-03-02 17:00:00', 1, '2023-04-04 05:08:59', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_comment`
--

CREATE TABLE `latnt_review` (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `review` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createda_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

CREATE TABLE `latnt_comment` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `createda_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `catid` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_comment`
--

INSERT INTO `latnt_comment` (`id`, `name`, `comment`, `email`, `createda_at`, `catid`, `status`) VALUES
(230, 'aaaaaaaaa', 'aaa', NULL, '2023-03-02 17:00:00', 0, 1),
(231, 'sssssss', 'ssss', NULL, '2023-03-02 17:00:00', 0, 1),
(232, 'ss', 'ss', NULL, '2023-03-02 17:00:00', 4, 1),
(233, 'aa', 'aa', NULL, '2023-03-02 17:00:00', 4, 1),
(234, 'bb', 'bb', NULL, '2023-03-02 17:00:00', 4, 1),
(235, 'aaaaaaaaaaaaaaaaa', 'aaaaaa', NULL, '2023-03-02 17:00:00', 4, 1),
(236, 'aaaaaa', 'aaaaaa', NULL, '2023-03-02 17:00:00', 4, 1),
(237, 'sa', 'sa', NULL, '2023-03-02 17:00:00', 4, 1),
(238, 'sa', 'sa', NULL, '2023-03-02 17:00:00', 4, 1),
(239, 'aaaaaaaaaaa', 'aaaaaaaaa', NULL, '2023-03-02 17:00:00', 0, 1),
(240, '2', '2', NULL, '2023-03-02 17:00:00', 0, 1),
(241, 'aaaaaaaaaaaaaaaaa', 'aaaaa', NULL, '2023-03-02 17:00:00', 0, 1),
(242, 'Túi Xácha', '⭐Xin chào mọi người ạ, e năm nay 2k4 và săp tới sẽ bước vào ngưỡng cửa cấp 3, e rất thích software engineer nhưng tiếc thay cho em là em biết ra quá trể đến tận năm nay mới biết ạ, e đang theo tiến trình học của bản thân là học cấp 3 rồi đến đại học e hiện tại đang đăng ký theo toán lý hóa e định lên 11 sẽ chuyển sang toán lý thuyết anh văn , nhưng e nghe 1 số người nói là có học thêm những lập trình ở bên ngoài và e rất thắc mắc ', NULL, '2023-03-02 17:00:00', 0, 1),
(243, 'a', 'a', NULL, '2023-03-02 17:00:00', 0, 1),
(244, 'a', 'a', NULL, '2023-03-02 17:00:00', 0, 1),
(245, '123', '123', NULL, '2023-03-02 17:00:00', 0, 1),
(246, 'l', 'n', NULL, '2023-03-02 17:00:00', 5, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_config`
--

CREATE TABLE `latnt_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `themeid` int(11) NOT NULL,
  `metaauth` varchar(255) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `map` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_counter`
--

CREATE TABLE `latnt_counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `visit` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_feedback`
--

CREATE TABLE `latnt_feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `detail` mediumtext CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `CreateBy` int(11) DEFAULT NULL,
  `CateParent` varchar(255) DEFAULT NULL,
  `CateParentDes` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `Cate` varchar(255) DEFAULT NULL,
  `CateDes` varchar(255) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `ParentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_feedback`
--

INSERT INTO `latnt_feedback` (`id`, `fullname`, `email`, `phone`, `title`, `detail`, `status`, `CreateBy`, `CateParent`, `CateParentDes`, `Cate`, `CateDes`, `ParentID`) VALUES
(17, 'nguyen ban hung', 'vanhung3339@gmail.com', '0377377794', 'Tư vấn bệnh tiểu đường', 'Tư vấn bệnh tiểu a', 1, 1, 'tu-van-cac-loai-benh', 'Tư vấn các loại bệnh', 'b-tieu-duong', 'Tiểu đường', 0),
(21, 'Nguyễn Tiếng Hoàng', 'latnt@gmail.com', '0964290200', 'gsfsdf', 'Không chỉ chứa các thành phần giúp ổn định chỉ số đường huyết. Giúp kích thích tuyến tụy tự sản sinh ra Insulin nội sinh, đồng thời tăng khả năng hấp thu gấp 15 lần  so với các dòng sữa thông thường\nKhông chỉ chứa các thành phần giúp ổn định chỉ số đường huyết. Giúp kích thích tuyến tụy tự sản sinh ra Insulin nội sinh, đồng thời tăng khả năng hấp thu gấp 15 lần  so với các dòng sữa thông thường\n', 1, 28, '', '', 'hg', '', 17),
(31, 'Nguyễn Văn Hưng', 'vanhung3339@gmail.com', '0377377794', 'Tư vấn tiêur đường', 'Tôi cần tư vấn tiểu Tư vấn tiêur đường', 1, 38, 'tu-van-cac-loai-benh', 'Tư vấn các loại bệnh', 'b-tieu-duong', 'Tiểu đường', 0),
(32, 'nguyen ban hung', 'vanhung3339@gmail.com', '0377377794', 'Tư vấn béo phì', 'Tôi cần tư vấn sức khỏe béo phì', 1, 38, 'tu-van-suc-khoe', 'Tư vấn sức khỏe', 'beo-phi', 'Béo phì', 0),
(33, 'nguyen ban hung', 'vanhung3339@gmail.com', '0377377794', 'Tư vấn tâm sinh lý theo lưa tuổi', 'Tôi cần tư vấn tâm sinh lý theo lưa tuổi', 1, 38, 'tam-sinh-ly-theo-lua-tuoi', 'Tâm sinh lý theo lứa tuổi', 'thanh-thieu-nien', 'Thanh thiêu niên', 0),
(34, 'nguyen ban hung', 'vanhung3339@gmail.com', '0377377794', 'Tư vấn aa', 'Tôi muốn tư vấn aâ', 1, 38, 'tam-sinh-ly-theo-lua-tuoi', 'Tâm sinh lý theo lứa tuổi', 'thanh-thieu-nien', 'Thanh thiêu niên', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_menu`
--

CREATE TABLE `latnt_menu` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `tableid` int(11) DEFAULT NULL,
  `parentid` int(11) NOT NULL DEFAULT 0,
  `orders` int(11) NOT NULL DEFAULT 0,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_menu`
--

INSERT INTO `latnt_menu` (`id`, `name`, `type`, `link`, `tableid`, `parentid`, `orders`, `position`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'HOME', 'menu', 'index.php', NULL, 0, 0, 'mainmenu', '2023-04-03 17:25:33', 28, '2023-03-02 17:00:00', 28, 1),
(2, 'INTRODUCE', 'menu', 'introduce.php', NULL, 0, 0, 'mainmenu', '2023-04-03 17:31:07', 28, '2023-04-03 17:31:07', 28, 1),
(3, 'TƯ VẤN SỨC KHỎE', 'menu', 'index.php?option=feedback&cate=b-tieu-duong&cateDes=Tiểu%20đường&parentCat=Tư%20vấn%20các%20loại%20bệnh&parentCatSymbol=tu-van-cac-loai-benh', NULL, 0, 0, 'mainmenu', '2023-04-23 03:12:25', 28, '2023-04-23 03:12:25', 28, 1),
(4, 'PRODUCT', 'menu', '#', NULL, 0, 0, '', '2023-04-03 17:25:31', 0, '2023-03-02 17:00:00', 28, 1),
(5, 'Chat', 'menu', 'https://www.facebook.com/boutiqueshopmanagement/', NULL, 0, 0, 'mainmenu', '2023-03-02 17:00:00', 28, '2023-03-02 17:00:00', 28, 1),
(6, 'POST', 'menu', '#', NULL, 0, 0, '', '2023-04-03 17:25:39', 0, '2023-03-02 17:00:00', 28, 1),
(7, 'ALL PRODUCT', 'menu', 'product', NULL, 4, 0, '', '2023-04-03 17:25:42', 0, '2023-03-02 17:00:00', 28, 1),
(8, 'All Post', 'menu', 'post', NULL, 6, 10, 'mainmenu', '2023-04-03 17:25:45', 28, '2023-03-02 17:00:00', 28, 1),
(9, 'New Post', 'menu', 'post&cat=tin-tuc', NULL, 6, 10, 'mainmenu', '2023-04-03 17:25:48', 28, '2023-03-02 17:00:00', 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_orders`
--

CREATE TABLE `latnt_orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `code` int(11) NOT NULL,
  `userid` int(11) UNSIGNED NOT NULL,
  `created_date` date NOT NULL,
  `exportdate` date NOT NULL,
  `deliveryaddress` varchar(255) NOT NULL,
  `deliveryname` varchar(100) NOT NULL,
  `deliveryphone` varchar(255) NOT NULL,
  `deliveryemail` varchar(255) NOT NULL,
  `ShipingMethods` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `Payments` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_orders`
--

INSERT INTO `latnt_orders` (`id`, `code`, `userid`, `created_date`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `ShipingMethods`, `updated_at`, `updated_by`, `status`, `Payments`) VALUES
(60, 1335488423, 0, '2023-03-03', '0000-00-00', 'adas adasd sada sd', 'Nguyễn Văn A', '0975271384', 'vanhung123@gmail.com', 0, NULL, 0, 2, 'Ship_COD'),
(61, 1335488423, 0, '2023-03-03', '0000-00-00', 'adas adasd sada sd', 'Nguyễn tiếng hoàng', '0975271384', 'vanhung123@gmail.com', 0, NULL, 0, 2, 'Ship_COD'),
(64, 468495292, 0, '2023-04-22', '0000-00-00', 'AD', 'nguyen ban hung', '0377377794', 'vanhung3339@gmail.com', 0, NULL, 0, 2, 'Ship_COD'),
(65, 468495292, 0, '2023-04-22', '0000-00-00', 'AD', 'nguyen ban hung', '0377377794', 'vanhung3339@gmail.com', 0, NULL, 0, 2, 'Ship_COD');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_ordersdetail`
--

CREATE TABLE `latnt_ordersdetail` (
  `id` int(11) UNSIGNED NOT NULL,
  `orderid` int(11) UNSIGNED NOT NULL,
  `productid` int(11) UNSIGNED NOT NULL,
  `price` float(12,0) NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL,
  `amount` float(12,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_ordersdetail`
--

INSERT INTO `latnt_ordersdetail` (`id`, `orderid`, `productid`, `price`, `quantity`, `amount`) VALUES
(1, 1, 24, 1000, 1, 1000),
(87, 61, 20, 3000, 1, 3000),
(88, 63, 22, 5000, 1, 5000),
(89, 65, 21, 200000, 1, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_post`
--

CREATE TABLE `latnt_post` (
  `id` int(11) UNSIGNED NOT NULL,
  `topid` int(11) UNSIGNED DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `detail` longtext NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `type` varchar(50) DEFAULT 'post',
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_post`
--

INSERT INTO `latnt_post` (`id`, `topid`, `title`, `slug`, `detail`, `img`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(0, 1, 'FITFOOD VN HỢP TÁC CÙNG H&H NUTRITION RA MẮT GÓI TƯ VẤN DINH DƯỠNG CHUYÊN SÂU', 'fitfood-vn-hop-tac-cung-h-h-nutrition-ra-mat-goi-tu-van-dinh-duong-chuyen-sau', 'FITFOOD VN HỢP TÁC CÙNG H&H NUTRITION RA MẮT \"GÓI TƯ VẤN DINH DƯỠNG CHUYÊN SÂU\"\r\n20/11/2020 By Fitfood\r\nCơ thể mỗi người khỏe mạnh là sự cân bằng. Trong quá trình sống và sinh hoạt vô tình hay cố ý chúng ta đã làm mất sự cân bằng đó, sự mất cân bằng kéo dài sẽ gây ra các rối loạn và dẫn đến bệnh tật. Cung cấp dinh dưỡng hợp lý và kịp thời sẽ thúc đẩy cơ thể chúng ta lấy lại sự cân bằng nhanh hơn điều này sẽ giúp hạn chế phải sử dụng các loại thuốc điều trị. Nhưng để lựa chọn các sản phẩm dinh dưỡng chính thống, khoa học không phải là điều dễ dàng mà phải cần đến những chuyên gia dinh dưỡng tư vấn và lựa chọn nhãn hiệu uy tín nhất.\r\n\r\nH&H Nutrition là đơn vị chuyên cung cấp các sản phẩm dinh dưỡng, dịch vụ tư vấn, thiết kế thực đơn,… dựa trên những thương hiệu nổi tiếng trên thế giới đã có bằng chứng khoa học để chăm sóc, điều trị cho khách hàng. H&H Nutrition sẽ cung cấp giải pháp cho khách hàng thông qua hệ thống Cửa hàng dinh dưỡng, đội ngũ Chuyên gia và ứng dụng công nghệ để mang giải pháp dinh dưỡng tuyệt vời giúp cho quý khách cải thiện sức khỏe toàn diện.\r\n\r\nHiểu được tầm quan trọng của sức khỏe, dinh dưỡng đối với quý khách hàng, Fitfood VN kết hợp cùng H&H Nutrition ra mắt \"Gói tư vấn dinh dưỡng chuyên sâu\". \r\n\r\n\r\n\r\nGói tư vấn dinh dưỡng chuyên sâu gồm các dịch vụ gì?\r\nGói Tư Vấn Dinh Dưỡng Chuyên Sâu của H&H bao gồm:\r\n\r\n- Khám & đo các chỉ số dinh dưỡng của cơ thể. BMI, mỡ cơ thể, huyết áp, tim mạch.\r\n\r\n- Đội ngũ Tư Vấn của H&H sẽ chẩn đoán, tư vấn chế độ dinh dưỡng & các giải pháp phù hợp tùy thuộc vào nhu cầu của bạn như giảm cân, tăng cơ.\r\n\r\n- Các khuyến nghị về chế độ dinh dưỡng, khẩu phần ăn, hướng dẫn vận động hoặc bổ sung các chất dinh dưỡng phụ trợ cần thiết khác.\r\n\r\nĐội ngũ bác sĩ của H&H Nutrition\r\n- Ths Đặng Ngọc Hùng: Founder H&H Nutrition. Chứng chỉ dinh dưỡng định hướng chuyên khoa dinh dưỡng lâm sàng - ĐH Y Dược TPHCM\r\n\r\n- Ths Bùi Đình Hoàn: Giảng viên ĐH Y Dược, chuyên khoa dinh dưỡng. Chứng chỉ dinh dưỡng tiết chế lâm sàng nâng cao ĐH Y khoa Phạm Ngọc Thạch\r\n\r\n- Ths Lê Thị Thu Huyền: Chuyên khoa Y học cỗ truyền, chứng chỉ định hướng chuyên khoa da liễu\r\n\r\nFitfood sẽ giao đến bạn Voucher Gói Tư Vấn Dinh Dưỡng khi bạn mua kèm phần ăn. Mua gói tư vấn dinh dưỡng chuyên sâu tại đây. \r\n\r\nVui lòng liên hệ & đặt lịch trực tiếp với trung tâm H&H để được tư vấn:\r\n\r\nĐia chỉ: 294/2 đường 3/2, Phường 12, Quận 10, TPHCM\r\nHotline: 088 8844 733\r\nWebsite: https://dinhduongtoiuu.com\r\n\r\n20/11/2020 By Fitfood\r\n', 'fitfood-vn-hop-tac-cung-h-h-nutrition-ra-mat-goi-tu-van-dinh-duong-chuyen-sau.jpg', 'post', '', '', '2023-03-02 17:00:00', 28, '2023-04-04 05:28:24', 28, 1),
(4, 2, 'FITFOOD HỢP TÁC CÙNG STAR KOMBUCHA RA MẮT COMBO ĂN SẠCH SỐNG KHỎE', 'fitfood-hop-tac-cung-star-kombucha-ra-mat-combo-an-sach-song-khoe', ' Star Kombucha là gì?\r\nStar Kombucha là thức uống lên men dành cho sức khỏe với 100% thành phần tự nhiên từ trà, men tự nhiên SCOBY, trái cây và thảo mộc tự nhiên giàu nguồn lợi khuẩn probiotics (chủng lactobacillus), axit hữu cơ, chất chống oxy hóa, vitamin B, polyphenols, EGCG, có tác dụng rất tốt đối với sức khỏe nhất là đối với hệ miễn dịch.\r\n\r\nQuá trình lên men Kombucha diễn ra 7-30 ngày trong nhiệt độ phòng 20-29°C, càng ủ lâu thức uống sẽ có vị chua ngọt, nước trà cũng có hương vị đặc trưng. Kombucha tác động tích cực đến hệ miễn dịch nhờ nguồn probiotics dồi dào, các vitamin B, chất chống oxy hóa, acid acetic tự nhiên khó tìm thấy ở các loại thức uống nhiều đường thông thường.\r\n\r\nKombucha hiện nay đã trở thành thức uống hàng ngày tại Mỹ, Canada, Pháp, Đức, Úc, New Zealand… giúp tăng cường sức khỏe và cung cấp các dưỡng chất thiết yếu cho cơ thể cũng như tăng sức đề kháng, bảo vệ hệ tiêu hóa.\r\n\r\nKombucha hiện nay là dòng thức uống dành cho sức khỏe rất được yêu thích tại Mỹ và được các ngôi sao Hollywood tin dùng.\r\n\r\nTác dụng của Star Kombucha: \r\n- Tăng cường hệ miễn dịch\r\n\r\n- Bảo vệ hệ tiêu hóa\r\n\r\n- Thúc đẩy giảm cân\r\n\r\n- Cải thiện sắc đẹp làn da\r\n\r\n- Thanh lọc cơ thể\r\n\r\n- Tái tạo nguồn năng lượng tươi trẻ\r\n\r\nLàm sao để đặt hàng Star Kombucha trên Fitfood?\r\n\r\n\r\nTừ nay, bạn đã có thể order combo Star Kombucha ngay trên Fitfood VN với giá chỉ 150.000/combo 5 chai. Star Kombucha sẽ được giao kèm với phần ăn hàng ngày của bạn. Vui lòng bảo quản trong ngăn mát tủ lạnh.\r\n\r\nXem thêm về sản phẩm tại đây.\r\n\r\nĐặt hàng tại đây. \r\n\r\n', 'fitfood-hop-tac-cung-star-kombucha-ra-mat-combo-an-sach-song-khoe.jpg', 'post', '', '', '2023-03-02 17:00:00', 28, '2023-04-04 05:29:27', 28, 1),
(5, 2, 'Những điều bạn cần biết về Cheat Day', 'nhung-dieu-ban-can-biet-ve-cheat-day', 'Những điều bạn cần biết về Cheat Day\r\nCheat day (ngày gian lận) cho phép bạn ăn thỏa thích các món mình yêu thích trong một ngày khi bạn đang trong chế độ giảm cân. Ví dụ, nếu bạn áp dụng phương pháp Eat Clean của Fitfood để giảm cân, chắc chắn sẽ có khoảng thời gian bạn cảm thấy ngán. Hãy lên kế hoạch chọn cho mình một ngày Cheat Day, có thể là thứ bảy hoặc chủ nhật, để ăn những món bạn đang thèm nhưng không lành mạnh.\r\n\r\n\r\n\r\nTại sao nên áp dụng cheat day\r\nVề mặt tâm lý, những bữa ăn gian lận sẽ khiến chế độ giảm cân khả thi hơn. Mỗi tuần một bữa ăn giàu calo với những món ăn yêu thích sẽ giúp tạo cho bạn một tinh thần thoải mái để tiếp tục thực hiện chế độ ăn kiêng lành mạnh vào tuần tiếp theo. Mặt khác, cơ thể mất khoảng vài tuần, vài tháng để thay đổi nhờ những chế độ ăn kiêng nên quá trình ăn kiêng thực sự sẽ khá dài và cần nhiều động lực. Và đương nhiên, bạn cần tâm lý thoải mái để duy trì việc này. \r\n\r\nKhông chỉ như thế, khoa học cũng giải thích tại sao chúng ta cần một bữa ăn gian lận (cheat meal) hoặc ngày ăn gian lận. Những bữa ăn này giúp tăng khả năng sản sinh leptin, một loại protein được tạo ra bởi các mô mỡ, giúp điều chỉnh trọng lượng cơ thể và khối lượng chất béo bằng cách gây ra sự thèm ăn và sự cân bằng năng lượng cơ thể. Chế độ ăn kiêng liên tục cuối cùng sẽ dẫn đến thâm hụt calo, gây ra thiếu hụt năng lượng cho cơ thể. Một bữa ăn gian lận chứa nhiều calo sẽ giúp cơ thể duy trì mức năng lượng cần thiết để bạn tiếp tục ăn kiêng và tập thể dục.\r\n\r\nLợi ích và bất lợi của Cheat Day đối với chế độ ăn kiêng\r\nĐể có thể giảm cân, bạn sẽ phải giảm thiểu lượng calories nạp vào cơ thể. Về lâu dài, điều này gây ra việc thâm hụt năng lượng, dẫn đến rối loạn quá trình trao đổi chất. Giải pháp Cheat Day được áp dụng không chỉ giúp tâm lý bạn thoải mái hơn mà còn giúp cân bằng hoạt động bên trong cơ thể. Việc dung nạp lượng calories lớn từ thực phẩm giúp cơ thể đồng hoá quá trình chuyển đổi, vừa đẩy nhanh việc đốt cháy lượng mỡ thừa đồng thời thoả mãn cơn thèm muốn hiện tại của bạn, giúp cho việc giảm cân duy trì hiệu quả lâu dài hơn.\r\n\r\nTuy nhiên, nếu không quyết tâm, bạn sẽ dễ bị sa vào \"thói gian lận\" của Cheat Day. Có thể bạn sẽ tự cho phép mình ăn Cheat Day thêm một chút cũng chẳng sao, nhưng dần dần việc gian lận 1 ngày sẽ kéo thành vài ngày, rồi 1 tuần rồi không khéo kéo thành 1 tháng,… Bạn sẽ thất vọng và bỏ cuộc.\r\n\r\n\r\n\r\nKhi nào nên áp dụng Cheat Day?\r\nHãy nhớ rằng, cơ thể bạn vẫn cần ba chất dinh dưỡng đa lượng thiết yếu như protein, carbohydrate và chất béo để tạo năng lượng và xây dựng cơ bắp.\r\n\r\nHãy nghĩ về bữa ăn gian lận của bạn như một thời gian để bạn thưởng thức các món ăn chứa protein, carbs và chất béo. Bạn có thể chuyển từ gà nướng sang gà rán cho một bữa ăn trong tuần hoặc những món chứa carbs phức tạp sang carbs đơn giản. Ngoài ra, hãy cân nhắc việc tiết kiệm bữa ăn gian lận của bạn để tập luyện sau khi cơ thể sẵn sàng.\r\n\r\nVí dụ, giữ chế độ ăn 1.400 calo mỗi ngày trong bốn ngày liên tiếp và thêm 200-300 calo trong ba ngày còn lại có thể giúp bạn điều chỉnh được vóc dáng. Bằng cách thỉnh thoảng tăng lượng calo của bạn, bạn khuyến khích cơ thể đốt cháy calo nhanh hơn thay vì cho phép nó điều chỉnh hoàn toàn lối sống có lượng calo thấp hơn.\r\n\r\nĐôi khi tăng lượng calo nạp vào cơ thể, bạn sẽ khuyến khích cơ thể đốt cháy calo nhanh hơn thay vì cho phép nó điều chỉnh hoàn toàn với lối sống ít calo hơn.\r\n\r\nChuyên gia dinh dưỡng nói gì về Cheat Day?\r\nTheo chuyên gia dinh dưỡng Michael Smith, ông đã kiểm nghiệm tính xác thực và hiệu quả của phương pháp này trên hành trình giảm cân của mình. Kết quả ông đã thành công và đúc kết ra những kết luận sau:\r\n\r\n– Giới hạn ngày Cheat Day chỉ 1 ngày/ tuần (nên chọn cuối tuần để không phải từ chối các cuộc hẹn với bạn bè)\r\n\r\n– Nghiêm túc tuân thủ kế hoạch giảm cân sau ngày Cheat Day\r\n\r\n– Đặc biệt, khi đang Cheat Day hãy loại bỏ những hình ảnh tiêu cực vì nó sẽ ảnh hưởng đến tâm lý từ bỏ chế độ giảm cân hiện tại\r\n\r\nNguồn: Tổng hợp\r\n\r\nXem thêm menu Eat Clean cả tuần cùng Fitfood tại đây. \r\n\r\n', 'nhung-dieu-ban-can-biet-ve-cheat-day.jpg', 'post', '', '', '2023-03-02 17:00:00', 28, '2023-04-04 05:29:23', 28, 1),
(6, 1, 'LÀM THẾ NÀO ĐỂ KIỂM SOÁT CẢM GIÁC THÈM ĂN?', 'lam-the-nao-de-kiem-soat-cam-giac-them-an', 'LÀM THẾ NÀO ĐỂ KIỂM SOÁT CẢM GIÁC THÈM ĂN?\r\n29/05/2020 By Fitfood\r\nĐể có thể đạt được cân nặng như ý, các nàng phải trải qua vô vàn những thử thách khó khăn. Trong đó, cảm giác thèm ăn chính là “đối thủ” nặng ký nhất.\r\n\r\nCùng Fitfood tìm hiểu những nguyên nhân dẫn đến chứng thèm ăn nói chung, cũng như cách giải quyết vấn đề an toàn và hiệu quả để có thể vượt qua mùa dịch mà vẫn bảo toàn cân nặng.\r\n\r\n\r\n\r\nNhững nguyên nhân khiến bạn thèm ăn \r\n1. Căng thẳng tinh thần \r\nSự căng thẳng được ví như “kẻ thù” của cân nặng. Đã có rất nhiều nghiên cứu chỉ ra rằng tinh thần không ổn định sẽ dễ dẫn đến chứng thèm ăn.\r\n\r\nStress eating, hay còn gọi là chứng ăn theo cảm xúc, chính là thuật ngữ dùng để miêu tả tình trạng này. Khi cơ thể cảm thấy mệt mỏi do áp lực từ cuộc sống, hormone Cortisol sẽ được kích thích sản sinh. Điều này khiến bạn cảm thấy thèm ăn hơn, biến việc ăn thành một cách để giải tỏa stress. Thông thường, những món ăn mà các cô nàng thường tìm đến bao gồm những món ngọt và dầu mỡ. Như chúng ta đã biết, đường và dầu mỡ chính là những món không “thân thiện” với cân nặng. \r\n\r\n2. Cơ thể thiếu hụt nước\r\nKhi tìm hiểu về những bí quyết giảm cân an toàn, nước là yếu tố thường xuyên “góp mặt” trong danh sách. Uống nhiều nước giúp kích thích quá trình trao đổi chất, theo đó làm giảm cảm giác thèm ăn. Ngược lại, khi cơ thể thiếu nước, bạn sẽ dễ bị nhầm lẫn với cảm giác đói bụng. Theo tiêu chuẩn, mỗi ngày cơ thể cần được bồ sung từ 2-2.5 lít nước.\r\n\r\nNhững cách giúp bạn giảm cảm giác thèm ăn\r\n1. Bổ sung Protein và chất béo tốt cho cơ thể\r\nMỗi loại thực phẩm có khả năng thỏa mãn cơn đói khác nhau. So với carbohydrate, protein và một số chất béo tốt có thể giúp bạn cảm thấy no lâu hơn. Nhờ đó, hấp thụ những món ăn này sẽ giảm thiểu chứng thèm ăn của bạn.\r\n\r\nMột số thực phẩm được xem là chứa nhiều protein và chất béo tốt:\r\n\r\nThịt nạc\r\nTrứng\r\n Bơ\r\nCác loại hạt\r\nMỡ cá\r\nCác loại đậu\r\nDầu olive\r\n2. Ăn nhiều thưc phẩm giàu chất xơ\r\nNghiên cứu cho thấy chất xơ là một chất ức chế sự thèm ăn hiệu quả. Chất xơ có thể tồn tại trong cơ thể trong thời gian dài hơn so với những chất dinh dưỡng khác. Khi được tiêu thụ, chất xơ có thể lên men trong ruột và sản sinh axit béo chuỗi ngắn. Điều này có thể tăng cảm giác no cho bạn. Chế độ ăn giàu chất xơ cũng có khả năng giảm thiểu nguy cơ gây béo phì.\r\n\r\n\r\n\r\nCác thực phẩm giàu chất xơ bao gồm:\r\n\r\nCác loại ngũ cốc\r\nRau củ\r\nĐậu\r\nTáo và bơ\r\nQuả hạnh\r\nHạt chia\r\n3. Giữ tinh thần thoải mái\r\nTinh thần căng thẳng chính là một trong những nguyên nhân dẫn đến chứng thèm ăn. Những quý cô thời hiện đại phải gánh trên vai những áp lực từ công việc và cuộc sống tấp nập. Stress trở thành hiện tượng khó có thể tránh. Bên cạnh dành ra cho bản thân thời gian để nghỉ ngơi, các nàng có thể áp dụng một số phương pháp thư giãn tinh thần. \r\n\r\nNgủ đủ giấc cũng là một bí quyết giúp tinh thần thoải mái và giảm cảm giác thèm ăn. Nghiên cứu cho thấy thiếu ngủ có khả năng gây đói lên đến 24%. Thường xuyên ngủ ít hơn 6 tiếng mỗi ngày sẽ tăng nguy cơ béo phì lên 55%.\r\n\r\n4. Tăng gia vị cay giúp giảm cảm giác thèm ăn\r\nNhững loại gia vị như gừng, tiêu và ớt đều rất quen thuộc đối với chúng ta. Những gia vị này đóng vai trò quan trọng trong việc biến các món ăn thêm đậm vị.Tuy nhiên, bạn có biết rằng những nguyên liệu thân quen này còn có khả năng làm giảm cảm giác thèm ăn? Thực phẩm cay nóng chứa lượng capsaicin dồi dào. Hợp chất này giúp thúc đẩy quá trình trao đổi chất và ức chế sự thèm ăn. Vì thế, bạn có thể tăng một ít vị cay cho những món ăn của mình. \r\n\r\nLưu ý: Bạn nên điều chỉnh độ cay vừa phải để không gây ảnh hưởng xấu đến hệ tiêu hóa và dạ dày. Đối với những nàng có vấn đề về bao tử, cần kiểm soát lượng tiêu thụ thức ăn cay.\r\n\r\nFitfood chuyên cung cấp các bữa ăn sạch hàng tuần được chuẩn bị sẵn theo phong cách Á Âu, giúp bạn theo đuổi một phong cách sống khỏe và cân bằng dinh dưỡng.\r\n\r\nTùy theo nhu cầu của bạn là giảm cân hay tăng cơ, bạn có thể chọn gói sản phẩm phù hợp tại trang Đặt Hàng. Fitfood sẽ đảm nhận việc nấu nướng và giao hàng mỗi ngày (thứ 2 đến thứ 6) cho bạn từ 2 đến 3 phần ăn. Các bữa ăn đều được tính toán calories cẩn thận và sử dụng các nguyên liệu tươi ngon tốt cho sức khỏe.\r\n\r\nVới Menu hơn 100 món của mình, Fitfood luôn đảm bảo các phần ăn luôn giàu đạm, nhiều rau củ và ít tinh bột. Đồng thời Fitfood cam kết nói KHÔNG với việc sử dụng Bột Ngọt. Tất cả các bữa ăn đều được làm lạnh nhằm đảm bảo an toàn thực phẩm trong quá trình vận chuyển. Bạn vui lòng bảo quản trong tủ lạnh và hâm nóng bằng lò vi sóng trước khi ăn.\r\n\r\n', 'lam-the-nao-de-kiem-soat-cam-giac-them-an.png', 'post', '', '', '2023-03-02 17:00:00', 28, '2023-04-04 05:30:07', 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_product`
--

CREATE TABLE `latnt_product` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `qr_code` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `detail` longtext NOT NULL,
  `number` int(11) UNSIGNED NOT NULL,
  `numberReceipt` int(11) NOT NULL,
  `price` float(12,0) NOT NULL,
  `pricesale` float(12,0) NOT NULL,
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_product`
--

INSERT INTO `latnt_product` (`id`, `catid`, `name`, `slug`, `img`, `detail`, `number`, `numberReceipt`, `price`, `pricesale`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(11, 6, 'OYSTER PERPETUAL 118348 DAY-DATE 36', 'oyster-perpetual-118348-day-date-36', 'oyster-perpetual-118348-day-date-36.png', '     DIAMOND PAVED DIAL\r\nGem-setters, like sculptors, finely carve the precious metal to hand-shape the seat in which each gemstone will be perfectly lodged. With the art and craft of a jeweller, the stone is placed and meticulously aligned with the others, then firmly secured in its gold or platinum setting. Besides the intrinsic quality of the stones, several other criteria contribute to the beauty of Rolex gem-setting: the precise alignment of the height of the gems, their orientation and position, the regularity, strength and proportions of the setting as well as the intricate finishing of the metalwork. \r\nA sparkling symphony to enhance the watch and enchant the wearer.\r\n \r\nTHE PRESIDENT BRACELET\r\nThe design, development and production of Rolex bracelets and clasps, as well as the stringent tests they face, involve advanced high technology. And, as with all the components of the watch, aesthetic controls by the human eye guarantee impeccable beauty. The President bracelet, with its semi-circular three piece links, was created in 1956 for the launch of the Oyster Perpetual Day-Date. It represents the ultimate in refinement and comfort and is always made of carefully selected precious metals.\r\n \r\n3155 MOVEMENT\r\nThe Day-Date 36 is equipped with calibre 3155, a self-winding mechanical movement entirely developed and manufactured by Rolex. It features a day and date calendar disc mechanism. Like all Rolex Perpetual movements, the 3155 is a certified Swiss chronometer, a designation reserved for high-precision watches that have successfully passed the Swiss Official Chronometer Testing Institute (COSC) tests. Its architecture, in common with all Oyster watch movements, makes it singularly reliable.\r\n \r\nMONDAY, LUNDI\r\nInitially presented in 1956, the Day-Date was a world first. The first watch to indicate the day of the week spelt out in full. Worn by many world leaders, the Day-Date is available with a bespoke day display in a wide choice of languages.', 30, 30, 1000, 1000, 'OYSTER PERPETUAL', '     OYSTER PERPETUAL', '2023-03-02 17:00:00', 28, '2023-04-03 04:53:18', 0, 0),
(12, 1, 'BISCOTTI VỊ TRÀ XANH', 'biscotti-vi-tra-xanh', 'biscotti-vi-tra-xanh.jpg', '200 Gram/Hộp\r\n\r\nSản phẩm BISCOTTI từ Fitfood - Vị Matcha\r\n\r\nSản phẩm dành cho người ăn kiêng, ít calo, giàu chất xơ và đạm thực vật. Bánh được được nướng vàng mặt 2 lần trong thời gian dài giúp bánh luôn giòn thơm và gia tăng HSD tự nhiên. Fitfood cam kết không sử dụng chất bảo quản, bột matcha và chocolate cho màu sắc tự nhiên, không phẩm màu độc hại.\r\n\r\nNguyên liệu cao cấp: từ bột mì nguyên cám, bột hạnh nhân cùng các loại hạt dinh dưỡng khác nhau (hạt bí, hạt điều, hạnh nhân, nho khô). \r\n\r\nMột lựa chọn ăn vặt healthy, eatclean mà không lo tăng cân, bổ sung vào khẩu phần ăn hàng ngày của bạn.Biscotti giòn thơm có 3 vị: Truyển thống, Matcha, Chocolate.\r\n\r\nNutrition facts (100g): 412 Kcal, 50g carb, 14.2g fat, 16g protein\r\n\r\nHSD sản phẩm : 06 tháng Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.\r\n\r\nKhông sử dụng khi sản phẩm có dấu hiệu ẩm mốc, mùi và màu lạ, sản phẩm hết hạn sử dụng', 100, 30, 1200000, 1200000, 'Sản phẩm BISCOTTI từ Fitfood - Vị Matcha', 'Sản phẩm BISCOTTI từ Fitfood - Vị Matcha', '2023-03-02 17:00:00', 28, '2023-04-04 05:50:22', 0, 1),
(13, 4, 'BÁNH MÌ NGŨ CỐC', 'banh-mi-ngu-coc', 'banh-mi-ngu-coc.jpg', ' 500 Gram/Hộp\r\n\r\nBÁNH MÌ NGŨ CỐC NGUYÊN CÁM - CHỐT ORDER MỖI NGÀY , GIAO VÀO HÔM SAU !!!\r\n\r\nBánh Mì Ngũ Cốc Fitfood được chế biến từ bột lúa mạch nguyên cám, trứng, mật ong và quả mạn việt quất (cranberries), Bánh Mì Ngũ Cốc cung cấp cho bạn lượng chất xơ cao gấp 4 lần so với bánh mì thường.\r\n\r\nThông tin dinh dưỡng (cho 1 hộp 500gr): 1,005 kcal | Tinh bột: 200g | Chất béo: 8g | Đạm: 35g \r\n\r\nBánh mì ngũ cốc nguyên cám là bánh mì làm từ bột lúa mì mà khi xay xát vẫn còn giữ nguyên lớp vỏ cám và phôi, kết hợp thêm nhiều loại ngũ cốc khác. Với hàm lượng chất xơ cao, chỉ số đường huyết thấp giúp cơ thể no lâu mà không bị thèm ăn thêm tinh bột, Bánh mì ngũ cốc rất phù hợp với người ăn kiêng, và góp phần giảm nguy cơ các bệnh tim mạch, tiểu đường.\r\n\r\nBánh được làm thủ công tại chính căn bếp của Fitfood. Đảm bảo KHÔNG CHẤT BẢO QUẢN, KHÔNG PHỤ GIA và MÀU THỰC PHẨM.\r\n\r\n* Lưu ý: Do sản phẩm ko dùng chất bảo quản, vui lòng để vào ngăn mát tủ lạnh sau khi sử dụng. Nếu bánh bị cứng, bạn chỉ cần hâm lại bằng lò vi sóng là bánh sẽ thơm mềm trở lại!\r\n\r\n', 1, 30, 1000, 1000, 'BÁNH MÌ NGŨ CỐC NGUYÊN CÁM - CHỐT ORDER MỖI NGÀY , GIAO VÀO HÔM SAU !!!\r\n\r\n', ' BÁNH MÌ NGŨ CỐC NGUYÊN CÁM - CHỐT ORDER MỖI NGÀY , GIAO VÀO HÔM SAU !!!\r\n\r\n', '2023-03-02 17:00:00', 28, '2023-04-04 05:11:16', 28, 1),
(14, 4, 'TEMPEH TƯƠNG NÉN', 'tempeh-tuong-nen', 'tempeh-tuong-nen.jpg', '500 Gram/Gói\r\n\r\nTempeh là đậu nành lên men có xuất xứ từ Indonesia.\r\n\r\nĐây là thực phẩm có hàm lượng dinh dưỡng cực kỳ cao (19% protein) và rất tốt cho sức khỏe. Thích hợp cho cả việc dùng chay và dùng mặn hoặc thay thế thịt cá. \r\n\r\nMỗi 500g Tempeh có thể cung cấp đến 95g protein nguyên chất.\r\n\r\nHướng dẫn sử dụng: Rã đông trước khi chế biến. Tempeh có vị dai như thịt gà, có thể chiên, xào, hấp, nấu cà ri, kẹp bánh mì hoặc ăn kèm Salad.\r\n\r\n', 100, 30, 100000, 100000, 'Tempeh là đậu nành lên men có xuất xứ từ Indonesia.\r\n', 'Tempeh là đậu nành lên men có xuất xứ từ Indonesia.', '2023-03-02 17:00:00', 28, '2023-04-04 05:10:24', 28, 1),
(15, 4, 'GẠO LỨT RONG BIỂN', 'gao-lut-rong-bien', 'gao-lut-rong-bien.jpg', '200 Gram/Hộp\r\n\r\nSản phẩm THANH GẠO LỨC từ Fitfood - Vị RONG BIỂN\r\n\r\nSản phẩm dành cho người ăn kiêng, ít calo, giàu chất xơ và đạm thực vật. Sản phẩm được làm từ gạo lức cùng các loại hạt dinh dưỡng. Fitfood cam kết không sử dụng chất bảo quản, không phẩm màu độc hại.\r\n\r\nNguyên liệu cao cấp: gạo lứt, hạt điều, đường nâu, hạt bí, hạnh nhân, rong biển, gia vị \r\n\r\nMột lựa chọn ăn vặt healthy, eatclean mà không lo tăng cân, bổ sung vào khẩu phần ăn hàng ngày của bạn.\r\n\r\nHSD sản phẩm : 06 tháng Bảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp.\r\n\r\nKhông sử dụng khi sản phẩm có dấu hiệu ẩm mốc, mùi và màu lạ, sản phẩm hết hạn sử dụng\r\n\r\n', 1, 30, 1500000, 1400000, 'Sản phẩm THANH GẠO LỨC từ Fitfood - Vị RONG BIỂN', 'Sản phẩm THANH GẠO LỨC từ Fitfood - Vị RONG BIỂN', '2023-03-02 17:00:00', 28, '2023-04-04 05:09:35', 28, 1),
(16, 3, '05 GÓI CƠM GẠO LỨC ĂN LIỀN', '05-goi-com-gao-luc-an-lien', '05-goi-com-gao-luc-an-lien.jpg', '200 Gram/Gói\r\n\r\nSet 05 gói Cơm gạo lức ăn liền sẽ được giao kèm phần ăn sau khi bạn đặt hàng thành công.\r\n\r\nSản phẩm Cơm gạo lức ăn liền Fitpack đã được nấu chín, chỉ cần xé túi hoặc hâm nóng lại là có thể dùng ngay, cực kỳ tiện lợi và nhanh chóng. Sản phẩm có mix một số loại hạt hỗ trợ cho việc tiêu hóa, giúp bạn có một khẩu phần cơm lành mạnh, thơm ngon, nhanh chóng mà không bị khô ngán.\r\n\r\nNutrition Facts trong 100g cơm gạo lức ăn liền: 245 Kcal, 25g Carb, 1g Fat, 2.8g Protein.\r\n\r\nMỗi combo gồm 5 gói: 3 gói vị truyền thống, 1 gói vị rong biển và 1 gói vị cá mặn.\r\n\r\nMỗi gói có định lượng là 200g bao gồm 2 phần cơm minisize 100g bọc lại cẩn thận, tương đương 2 khẩu phần cơm ăn hằng ngày. Một set 05 gói sẽ gồm 10 phần cơm. \r\n\r\n* Hướng dẫn sử dụng\r\n\r\n- Dùng trực tiếp sau khi mở bao bì\r\n\r\n- Cắt một góc miệng túi, bỏ vào microwave hâm nóng trong 2 phút\r\n\r\n- Ngâm vào nước nóng (60°C) trong 5-10 phút (không mở túi)\r\n\r\n*** Vui lòng bảo quản sản phẩm trong tủ mát nhiệt độ 5 độ C sau khi nhận được sản phẩm. Sản phẩm có HSD 03 tháng.\r\n\r\n', 100, 30, 150000, 150000, 'Set 05 gói Cơm gạo lức ăn liền sẽ được giao kèm phần ăn sau khi bạn đặt hàng thành công.\r\n\r\n', 'Set 05 gói Cơm gạo lức ăn liền sẽ được giao kèm phần ăn sau khi bạn đặt hàng thành công.\r\n\r\n', '2023-03-02 17:00:00', 28, '2023-04-04 05:08:07', 28, 1),
(17, 3, '06 NHÂN BURGER GÀ TERIYAKI', '06-nhan-burger-ga-teriyaki', '06-nhan-burger-ga-teriyaki.jpg', '150 Gram/Gói\r\n\r\nSet 03 túi (06 nhân) Burger Gà Teriyaki sẽ được giao kèm phần ăn sau khi bạn đặt hàng thành công.\r\n\r\nSản phẩm Burger Gà Teriyaki là sản phẩm chế biến sẵn gồm nhân thịt ức gà được ướp sốt teriyaki đậm đà. Phần nhân được làm từ ức gà tươi xay nhuyễn và hầm chung với sốt Teriyaki giúp nhân bánh thơm ngon nhưng không bị khô ngán. Nhân bánh có thể dùng chung với cơm, kẹp bánh mì ăn sáng hoặc . Từng chiếc bánh khoảng 70g minsize vừa đủ khẩu phần ăn mà không gây lãng phí.\r\n\r\nMột lựa chọn bữa sáng lành mạnh mỗi ngày. Chỉ cần burger nguyên cám và miếng burger gà teriyaki là đã có một bữa sáng tiện lợi, đầy đủ dinh dưỡng và cực kỳ tốt cho sức khỏe\r\n\r\nSet sản phẩm bao gồm 03 túi nhân burger gà, mỗi túi 02 nhân burger = 06 nhân burger gà teriyaki.\r\n\r\n* Thành phần nhân Burger gà teriyaki: Ức gà, hành tây, gia vị, sốt teriyaki\r\n\r\nHướng dẫn sử dụng:\r\n\r\n* Nhân bánh burger: Xé túi dùng lạnh, hoặc hâm nóng trong lò vi sóng trong 2 phút', 100, 30, 1500000, 1400000, 'Set 03 túi (06 nhân) Burger Gà Teriyaki sẽ được giao kèm phần ăn sau khi bạn đặt hàng thành công.\r\n\r\n', 'Set 03 túi (06 nhân) Burger Gà Teriyaki sẽ được giao kèm phần ăn sau khi bạn đặt hàng thành công.\r\n\r\n', '2023-03-02 17:00:00', 28, '2023-04-04 05:07:29', 28, 1),
(19, 3, 'SET 05 GÓI CANH SÚP', 'set-05-goi-canh-sup', 'set-05-goi-canh-sup.jpg', '55 Gram/Hộp\r\n\r\nFitfood nay đã có canh súp nóng tiện dụng cho khách hàng. Combo 05 viên canh ăn liền từ I-soup với 05 mùi vị thơm ngon sẽ được giao kèm phần ăn của khách hàng. Chỉ với 01 phút bạn sẽ có ngay một phần canh nóng đầy dinh dưỡng như vừa mới nấu:\r\n\r\n+ Canh chua cay ngọt thơm ngon\r\n\r\n+ Canh khoai mỡ chay mặn đều dùng được\r\n\r\n+ Canh rong biển thịt gà bổ dưỡng\r\n\r\n+ Canh kim chi thịt gà với vị cay kích thích vị giác\r\n\r\n+ Canh cải xoong nấu thịt bằm\r\n\r\n05 gói canh súp sẽ được giao cùng lúc với đơn hàng của bạn. Hạn sử dụng được ghi trên bao bì.\r\n\r\nHướng dẫn sử dụng: Đổ 100-150ml nước nóng vào chén, sau đó thả viên canh vào, để viên canh tan vào nước và có ngay một phần canh nóng thơm ngon. \r\n\r\n', 100, 30, 1500000, 1500000, ' Canh chua cay ngọt thơm ngon', ' Canh chua cay ngọt thơm ngon', '2023-03-02 17:00:00', 28, '2023-04-04 05:06:43', 28, 1),
(20, 2, 'FITFOOD JUICE SWEETIE', 'fitfood-juice-sweetie', 'fitfood-juice-sweetie.jpg', '5 Chai/Tuần\r\n\r\nNếu bạn yêu thích sự tươi mát và vị ngọt tự nhiên từ trái cây, hãy chọn Set FITFOOD JUICE SWEETIE\r\n\r\nSet nước FITFOOD JUICE sẽ được giao kèm phần ăn mỗi buổi sáng các ngày trong tuần.\r\n\r\nCOMBO SWEETIE bao gồm 05 chai sau: \r\n\r\n+ Minty Melon: Dưa hấu, lá bạc hà, chanh vàng. Giúp bù nước, đẹp da, cải thiện thị giác, tăng khả năng tiêu hóa.\r\n\r\n+ Celery ananas: carrot, thơm, cần tây. Giảm hàm lượng cholesterol cao trong cơ thể, giảm viêm, bổ mắt, ngăn ngừa ung thư, hỗ trợ hệ tiêu hoá, giảm chứng cao huyết áp.\r\n\r\n+ Passion Lemongrass: sả, dưa leo, chanh dây. Tốt cho hệ tiêu hoá, ngăn ngừa ung thư, cung cấp chất chống oxi hoá cho cơ thể, ngừa bệnh hô hấp, bảo vệ tim mạch.\r\n\r\n+ Green Detox: Dưa leo, bạc hà, cải bó xôi, táo đỏ, thơm. Giúp kháng viêm, giải độc gan, tăng sức khỏe răng miệng, chống oxy hóa, giàu chất xơ hỗ trợ ăn kiêng.\r\n\r\n+ Pinky Chia: ổi hồng, thơm, hạt chia. Tăng cường hệ miễn dịch, tốt cho tim mạch,  hỗ trợ hệ tiêu hoá, giảm chứng cao huyết áp, thải độc cơ thể.\r\n\r\n*** Các sản phẩm của FITFOOD JUICE được làm từ công nghệ ép lạnh cao cấp, giúp giữ nguyên hương vị và đảm bảo dinh dưỡng. Đảm bảo nguyên chất 100% và cam kết không đường.\r\n\r\nVui lòng bảo quản trong tủ mát nhiệt độ 5 độ C và lắc đều trước khi sử dụng\r\n\r\n', 150000, 30, 750000, 750000, 'FITFOOD JUICE SWEETIE', 'FITFOOD JUICE SWEETIE', '2023-03-02 17:00:00', 28, '2023-04-04 05:04:28', 28, 1),
(21, 2, 'NƯỚC MÁT THẢO MỘC', 'nuoc-mat-thao-moc', 'nuoc-mat-thao-moc.jpg', '5 Chai/Tuần\r\n\r\nNước mát thanh nhiệt là trợ thủ đắc lực trong những ngày hè nóng nực của Saigon. Set nước mát sẽ được giao kèm phần ăn mỗi buổi sáng các ngày trong tuần.\r\n\r\nSET NƯỚC MÁT bao gồm 05 chai như sau: \r\n\r\nNha đam hạt chia\r\n\r\nSâm mát nhãn nhục\r\n\r\nBí đao hạt chia\r\n\r\nNhân sâm táo đỏ\r\n\r\nBông cúc kỷ tử\r\n\r\n*** Các sản phẩm của SET NƯỚC MÁT là sản phẩm hợp tác với FITPACK, được nấu thủ công mỗi ngày từ các loại thảo mộc tự nhiên, lưu ý sản phẩm có chứa đường phèn nhưng vẫn giữ vị thanh mát, vừa giúp giải nhiệt cho những ngày hè oi nóng lại được đánh giá là tốt cho sức khỏe người dùng hơn đường kinh rất nhiều.\r\n\r\nVui lòng bảo quản trong tủ mát nhiệt độ 5 độ C và lắc đều trước khi sử dụng', 100, 30, 200000, 200000, 'Nước mát thanh nhiệt là trợ thủ đắc lực trong những ngày hè nóng nực của Saigon', 'Nước mát thanh nhiệt là trợ thủ đắc lực trong những ngày hè nóng nực của Saigon', '2023-03-02 17:00:00', 28, '2023-04-04 05:03:36', 28, 1),
(22, 1, 'GÓI FIT 2', 'goi-fit-2', 'goi-fit-2.jpg', 'Gói 2 bữa SÁNG - TỐI\r\n\r\n- Sử dụng thực đơn 2 bữa SÁNG - TỐI tại trang fitfood.vn/menu.\r\n\r\n- Giao 02 phần ăn tận nơi mỗi ngày, từ thứ 2 đến thứ 6.\r\n\r\n- Calories dao động từ 1000 - 1100 Kcal mỗi ngày\r\n\r\n- Kèm tinh bột phức, ít đường, đảm bảo ko bột ngọt, nhiều rau củ và chất đạm\r\n\r\n* Thích hợp cho dân văn phòng thường dành thời gian Ăn Trưa cùng bạn bè đồng nghiệp\r\n\r\n', 1, 30, 1150000, 1000, 'Gói 2 bữa SÁNG - TỐI', 'Gói 2 bữa SÁNG - TỐI', '2023-03-02 17:00:00', 28, '2023-04-04 05:02:14', 28, 1),
(23, 1, 'GÓI MEAT', 'goi-meat', 'goi-meat.jpg', 'Gói 2 bữa TRƯA - TỐI (gấp đôi thịt)\r\n\r\n- Sử dụng thực đơn 2 bữa TRƯA -TỐI tại trang fitfood.vn/menu.\r\n\r\n- Các món đều được nhân đôi định lượng thịt và rau củ\r\n\r\n- Giao 02 phần ăn tận nơi mỗi ngày, từ thứ 2 đến thứ 6.\r\n\r\n- Calories dao động từ 2000 - 2100 Kcal mỗi ngày\r\n\r\n- Kèm tinh bột phức, ít đường, đảm bảo ko bột ngọt, nhiều rau củ và chất đạm\r\n\r\n* Thích hợp cho các bạn đang tập Gym, Fitness cường độ cao hoặc cần Bulking\r\n\r\n', 100, 30, 1150000, 1150000, 'Gói 2 bữa TRƯA - TỐI (gấp đôi thịt)', 'Gói 2 bữa TRƯA - TỐI (gấp đôi thịt)', '2023-03-02 17:00:00', 28, '2023-04-04 05:01:27', 28, 1),
(24, 1, 'GÓI FIT 3', 'goi-fit-3', 'goi-fit-3.jpg', ' *** Lưu ý: Giá trên là giá cho Thực Đơn Tiêu Chuẩn 5 ngày từ Thứ 2 đến Thứ 6. Nếu bạn đặt hàng vào hôm nay (Thứ 2), đơn hàng của bạn sẽ được giao từ Thứ 4(05.04). Giá Gói Ăn bạn phải trả là 360,000đ cho 3 ngày (Thứ 4(05.04) tới Thứ 6)\r\n\r\nGói 2 bữa TRƯA - TỐI (Best Seller)\r\n\r\n- Sử dụng thực đơn 2 bữa TRƯA -TỐI tại trang fitfood.vn/menu.\r\n\r\n- Giao 02 phần ăn tận nơi mỗi ngày, từ thứ 2 đến thứ 6.\r\n\r\n- Calories dao động từ 1100 - 1200 Kcal mỗi ngày\r\n\r\n- Kèm tinh bột phức, ít đường, đảm bảo ko bột ngọt, nhiều rau củ và chất đạm\r\n\r\n* Thích hợp cho dân văn phòng bận rộn, vừa giảm cân, vừa tiết kiệm thời gian\r\n\r\n', 1, 30, 1000, 1000, 'Gói 2 bữa TRƯA - TỐI', ' Gói 2 bữa TRƯA - TỐI', '2023-03-02 17:00:00', 28, '2023-04-04 05:00:25', 28, 1),
(25, 1, 'GÓI FULL 3 bữa 001', 'goi-full-3-bua-001', 'goi-full-3-bua-001.jpg', ' Gói 3 bữa SÁNG - TRƯA - TỐI\r\n\r\n- Sử dụng thực đơn 3 bữa/ngày tại trang fitfood.vn/menu.\r\n\r\n- Giao 03 phần ăn tận nơi mỗi ngày, từ thứ 2 đến thứ 6.\r\n\r\n- Calories dao động từ 1300 - 1500 Kcal phù hợp với thể trạng người Châu Á\r\n\r\n- Kèm tinh bột phức, ít đường, đảm bảo ko bột ngọt, nhiều rau củ và chất đạm\r\n\r\n* Thích hợp cho người ăn kiêng bận rộn hoặc theo đuổi chế độ ăn lâu dài\r\n\r\n', 1, 30, 1000, 1000, 'Gói 3 bữa SÁNG - TRƯA - TỐI', ' Gói 3 bữa SÁNG - TRƯA - TỐI', '2023-03-02 17:00:00', 28, '2023-04-04 05:00:19', 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_slider`
--

CREATE TABLE `latnt_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `position` varchar(100) NOT NULL,
  `sale` varchar(100) NOT NULL,
  `saletitel` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `orders` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_slider`
--

INSERT INTO `latnt_slider` (`id`, `name`, `url`, `position`, `sale`, `saletitel`, `img`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(2, 'slider2aaaaaaaaaaa', 'slider2aaaaaaaaaaa', 'slideshow', 'HOT DEAL', '       Up to 50% OFF', 'banner01.jpg', 0, '2019-07-06 22:09:30', 37, '2019-10-14 19:58:36', 28, 1),
(3, 'slider3', 'slider1', 'slideshow', 'New Product', 'Collection', 'banner03.jpg', 0, '0000-00-00 00:00:00', 1, '2019-07-06 22:16:12', 28, 1),
(8, 'slider2', 'slider2', 'slideshow', 'HOT DEAL', '      Up to 50% OFF', 'banner02.jpg', 0, '0000-00-00 00:00:00', 1, '2019-07-06 22:16:12', 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_theme`
--

CREATE TABLE `latnt_theme` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_topic`
--

CREATE TABLE `latnt_topic` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `parentid` int(11) UNSIGNED NOT NULL,
  `orders` int(11) UNSIGNED NOT NULL,
  `metakey` varchar(150) NOT NULL,
  `metadesc` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_topic`
--

INSERT INTO `latnt_topic` (`id`, `name`, `slug`, `parentid`, `orders`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Giới Thiệu', 'gioi-thieu', 0, 1, '', '', '2023-03-02 17:00:00', 28, '2023-03-02 17:00:00', 28, 1),
(2, 'Tin Tức', 'tin-tuc', 0, 1, '', '', '2023-03-02 17:00:00', 28, '2023-03-02 17:00:00', 28, 1),
(3, 'Thời Sự', 'thoi-sua', 0, 1, '', '', '2023-03-02 17:00:00', 28, '2023-03-02 17:00:00', 28, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_user`
--

CREATE TABLE `latnt_user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `img` varchar(100) DEFAULT NULL,
  `access` int(11) NOT NULL,
  `ad_access` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `RoleAdvise` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_user`
--

INSERT INTO `latnt_user` (`user_id`, `fullname`, `username`, `password`, `email`, `gender`, `phone`, `img`, `access`, `ad_access`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`, `RoleAdvise`) VALUES
(28, 'Nguyễn Tiếng Hoàng', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'latnt@gmail.com', 0, '0964290200', 'admin.jpg', 1, 1, '2019-01-04 23:53:00', 0, '2019-01-06 20:54:43', 0, 1, ''),
(37, 'Nguyễn Tiếng Hoàng', 'adminbt', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'latnt@gmail.com', 0, '0964290200', '', 1, 0, '2019-12-06 23:57:27', 0, '2019-12-16 20:51:43', 0, 1, ''),
(38, 'Nguyễn Tiếng Hoàng', 'khachhang1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'longngu@gmail.com', 1, '0945333156', '', 0, 1, '2019-12-20 00:33:00', 1, '2023-04-06 05:43:24', 0, 1, ''),
(39, 'Nguyễn Tiếng Hoàng', 'khachhang2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'tudeptrai@gmail.com', 0, '19001990', NULL, 1, 0, '2019-12-20 00:33:00', 1, '2019-12-20 20:38:34', 0, 1, ''),
(43, 'admin role 1', 'admin1', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'latnt@gmail.com', 0, '0964290200', 'admin.jpg', 1, 1, '2019-01-04 23:53:00', 0, '2019-01-06 20:54:43', 0, 1, 'tu-van-cac-loai-benh'),
(44, 'admin role 2', 'admin2', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'latnt@gmail.com', 0, '0964290200', 'admin.jpg', 1, 1, '2019-01-04 23:53:00', 0, '2019-01-06 20:54:43', 0, 1, 'tu-van-suc-khoe'),
(45, 'admin role 3', 'admin3', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'latnt@gmail.com', 0, '0964290200', 'admin.jpg', 1, 1, '2019-01-04 23:53:00', 0, '2019-01-06 20:54:43', 0, 1, 'tam-sinh-ly-theo-lua-tuoi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `latnt_work`
--

CREATE TABLE `latnt_work` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `TimeWork` datetime NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `latnt_work`
--

INSERT INTO `latnt_work` (`ID`, `Name`, `TimeWork`, `UserId`) VALUES
(1, 'Trả lời tư vấn', '2023-04-23 05:49:05', 43),
(2, 'Nguyên cứu chế độ dinh dưỡng mới', '2023-04-23 05:49:05', 43),
(3, 'Trả lời tư vấn', '2023-04-23 05:49:05', 44),
(4, 'Trả lời tư vấn', '2023-04-23 05:49:05', 45),
(5, 'Trả lời tư vấn', '2023-04-23 05:49:05', 28),
(6, 'Trả lời tư vấn', '2023-04-23 05:49:05', 29);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `latnt_category`
--
ALTER TABLE `latnt_category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_comment`
--
ALTER TABLE `latnt_comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_config`
--
ALTER TABLE `latnt_config`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_counter`
--
ALTER TABLE `latnt_counter`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time` (`id`);

--
-- Chỉ mục cho bảng `latnt_feedback`
--
ALTER TABLE `latnt_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_menu`
--
ALTER TABLE `latnt_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_orders`
--
ALTER TABLE `latnt_orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_ordersdetail`
--
ALTER TABLE `latnt_ordersdetail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_post`
--
ALTER TABLE `latnt_post`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_product`
--
ALTER TABLE `latnt_product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_theme`
--
ALTER TABLE `latnt_theme`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_topic`
--
ALTER TABLE `latnt_topic`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `latnt_user`
--
ALTER TABLE `latnt_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `latnt_work`
--
ALTER TABLE `latnt_work`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `latnt_category`
--
ALTER TABLE `latnt_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `latnt_comment`
--
ALTER TABLE `latnt_comment`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT cho bảng `latnt_config`
--
ALTER TABLE `latnt_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `latnt_counter`
--
ALTER TABLE `latnt_counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `latnt_feedback`
--
ALTER TABLE `latnt_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `latnt_menu`
--
ALTER TABLE `latnt_menu`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `latnt_orders`
--
ALTER TABLE `latnt_orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT cho bảng `latnt_ordersdetail`
--
ALTER TABLE `latnt_ordersdetail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT cho bảng `latnt_post`
--
ALTER TABLE `latnt_post`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `latnt_product`
--
ALTER TABLE `latnt_product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `latnt_theme`
--
ALTER TABLE `latnt_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `latnt_topic`
--
ALTER TABLE `latnt_topic`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `latnt_user`
--
ALTER TABLE `latnt_user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `latnt_work`
--
ALTER TABLE `latnt_work`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
