-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 11:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duanweb_thucphamsach`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin Minh Khánh', 'admin@gmail.com', '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '0366656147', NULL, 'K12DHPM 2022', '1185 Hoàng Văn Thụ Phường 9 Quận Phú Nhuận', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'CÁCH LÀM CÁ BỐNG KHO THỊT BA CHỈ', 'cach-lam-ca-bong-kho-thit-ba-chi', 1, 1, 1, 0, 'Cá bống kho thịt ba chỉ là món ăn dân dã mang đậm bản sắc dân tộc Việt Nam. Từng con cá bống nhỏ nhắn nhưng chắc thịt được bao phủ bởi nước kho đậm đà màu cánh gián, vị cay the của ớt và tiêu hoà trộn vào nước kho rất bắt cơm, ăn bao nhiêu cũng không biết ngán.', '2020-11-21__1.jpg', '<h1>Nguy&ecirc;n liệu</h1>\r\n\r\n<ul>\r\n	<li>\r\n	<h4>C&aacute; bống m&uacute; Ph&uacute; Quốc - 500g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Thịt ba rọi hữu cơ 500g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Nước dừa organic đ&oacute;ng hộp Vietcoco</h4>\r\n	</li>\r\n	<li>\r\n	<h4>H&agrave;nh l&aacute; hữu cơ - 100g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>H&agrave;nh T&iacute;m Hữu Cơ - 500g 500gram</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Đường Củ Cải Hữu Cơ Naturata 500g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Hạt N&ecirc;m Hữu Cơ Rau Củ Alce Nero</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Muối Iot Tự Nhi&ecirc;n Hain 737g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Ti&ecirc;u Sọ Hữu Cơ Farmer&#39;s Organic 50g</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Nước mắm Ph&uacute; Quốc nh&atilde;n hiệu Quốc Hương loại 750ML</h4>\r\n	</li>\r\n	<li>\r\n	<h4>Ớt hiểm hữu cơ - 100g</h4>\r\n	</li>\r\n</ul>\r\n\r\n<h2>C&aacute;c bước thực hiện</h2>', '2020-11-20 16:44:50', 1, 1, '2020-11-21 04:13:55'),
(4, 'Bà Nội Mách 5 Cách Kho Cá Trắm Ngon Mềm “Bất Bại', 'ba-noi-mach-5-cach-kho-ca-tram-ngon-mem-bat-bai', 0, 1, 3, 0, 'KHO CA NGON', '2022-01-07__6.jpg', '<p>C&aacute; trắm kho riềng<br />\r\nC&aacute; trắm kho riềng l&agrave; m&oacute;n ăn đặc trưng của người miền Bắc. Riềng l&agrave; gia vị c&oacute; t&iacute;nh ấm n&oacute;ng, kh&ocirc;ng chỉ gi&uacute;p khử tanh c&aacute; m&agrave; c&ograve;n tốt cho hệ ti&ecirc;u h&oacute;a, gi&uacute;p điều trị c&aacute;c chứng kh&oacute; ti&ecirc;u. C&aacute;ch kho c&aacute; trắm với riềng cũng đơn giản như bao m&oacute;n c&aacute; kho kh&aacute;c. Sự kết hợp nguy&ecirc;n liệu đơn giản, kh&ocirc;ng cầu k&igrave; trong chế biến, ấy vậy m&agrave; hương vị hấp dẫn v&ocirc; c&ugrave;ng.</p>\r\n\r\n<p>c&aacute;ch l&agrave;m c&aacute; trắm kho riềng</p>\r\n\r\n<p>&nbsp;<br />\r\nNguy&ecirc;n liệu</p>\r\n\r\n<p>+ C&aacute; trắm đen: 1,5kg<br />\r\n+ Thịt ba chỉ: 500g<br />\r\n+ Riềng: 1 củ to<br />\r\n+ Sả: 3 c&acirc;y<br />\r\n+ H&agrave;nh t&iacute;m: 3 củ<br />\r\n+ Ớt: 3-4 quả t&ugrave;y khả năng ăn cay<br />\r\n+ Ti&ecirc;u xanh: v&agrave;i nh&aacute;nh<br />\r\n+ Nước mắm ngon: 2 th&igrave;a<br />\r\n+ Dầu h&agrave;o: 2 th&igrave;a<br />\r\n+ Nước tương: 2 th&igrave;a<br />\r\n+ Bột n&ecirc;m: 1 th&igrave;a<br />\r\n+ Bột canh: 1 th&igrave;a<br />\r\n+ Đường: 3 th&igrave;a</p>\r\n\r\n<p>nguy&ecirc;n liệu l&agrave;m c&aacute; trắm kho riềng</p>\r\n\r\n<p>&nbsp;<br />\r\nThực hiện</p>\r\n\r\n<p>Bước 1: Sơ chế nguy&ecirc;n liệu</p>\r\n\r\n<p>&ndash; C&aacute; trắm ngon nhất l&agrave; sử dụng c&aacute; trắm đen. C&aacute; trắm đen c&oacute; gi&aacute; th&agrave;nh cao hơn trắm cỏ hay trắm hoa nhưng thịt c&aacute; chắc, thơm ngọt v&agrave; nhiều dinh dưỡng hơn. Con c&aacute; trắm đen k&iacute;ch thước kh&aacute; lớn, c&oacute; thể l&ecirc;n đến 7-10kg/con. Bạn n&ecirc;n chọn mua kh&uacute;c c&aacute; giữa sẽ ngon v&agrave; vừa ăn hơn.</p>\r\n\r\n<p><img src=\"/ckfinder/userfiles/images/1.jpg\" style=\"height:680px; width:1020px\" /></p>\r\n\r\n<p>&ndash; C&aacute; đem rửa sạch với nước muối lo&atilde;ng, cạo sạch m&agrave;ng đen b&ecirc;n trong bởi n&oacute; l&agrave; nguy&ecirc;n nh&acirc;n g&acirc;y ra m&ugrave;i tanh. Sau đ&oacute; rửa lại cho sạch rồi để r&aacute;o nước.<br />\r\n&ndash; Thịt ba chỉ rửa sạch, để r&aacute;o nước rồi th&aacute;i th&agrave;nh miếng vu&ocirc;ng vừa ăn.<br />\r\n&ndash; Riềng cạo sạch vỏ, một nửa đem th&aacute;i l&aacute;t mỏng, một nửa cho v&agrave;o m&aacute;y xay nhỏ<br />\r\n&ndash; Sả đập dập rồi cắt kh&uacute;c<br />\r\n&ndash; Ớt để nguy&ecirc;n quả hoặc th&aacute;i l&aacute;t<br />\r\n&ndash; H&agrave;nh t&iacute;m th&aacute;i l&aacute;t</p>\r\n\r\n<p>Bước 2: Thắng nước h&agrave;ng</p>\r\n\r\n<p>Cho 3 th&igrave;a đường v&agrave; khoảng 3 th&igrave;a nước v&agrave;o chảo. Đun tr&ecirc;n lửa nhỏ cho đường tan chảy từ từ. Lưu &yacute; kh&ocirc;ng được d&ugrave;ng đũa khuấy sẽ l&agrave;m đường bị kết tinh lại. Chỉ lắc nhẹ chảo cho đường tan hết. Đến khi đường ch&aacute;y c&oacute; m&agrave;u n&acirc;u c&aacute;nh gi&aacute;n đẹp mắt th&igrave; th&ecirc;m 1 th&igrave;a nước v&agrave;o khuấy đều l&agrave; được.</p>\r\n\r\n<p>Bước 3: Kho c&aacute; trắm với riềng</p>\r\n\r\n<p>&ndash; Sử dụng nồi đất, nồi s&agrave;nh, nồi gang hoặc một c&aacute;i nồi inox đế d&agrave;y. Xếp riềng v&agrave; sả xuống dưới đ&aacute;y nồi.<br />\r\n&ndash; Xếp c&aacute; trắm v&agrave; thịt ba chỉ v&agrave;o xen kẽ nhau. Cho tất cả gia vị v&agrave; nguy&ecirc;n liệu c&ograve;n lại v&agrave;o</p>\r\n\r\n<p>ướp c&aacute; trắm kho riềng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Đổ nước lọc hoặc nước đun s&ocirc;i v&agrave;o, xăm xắp mặt c&aacute;. Đặt l&ecirc;n bếp đun s&ocirc;i th&igrave; hạ nhỏ lửa. Kho c&aacute; liu riu lửa &iacute;t nhất 60 ph&uacute;t<br />\r\n&ndash; C&aacute; kho ngon nhất l&agrave; kho 2 lửa. Tức l&agrave; kho lần 1 cho gần cạn hết nước th&igrave; tắt bếp, để nguội rồi kho tiếp lần 2. L&uacute;c n&agrave;y bạn c&oacute; thể điều chỉnh m&agrave;u c&aacute; kho đẹp như &yacute; bằng c&aacute;ch chế th&ecirc;m nước h&agrave;ng v&agrave;o nh&eacute;. Kho c&aacute; lần 2 th&ecirc;m 30 ph&uacute;t l&agrave; được.</p>\r\n\r\n<p>c&aacute; trắm đen kho riềng</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho riềng th&agrave;nh phẩm c&oacute; m&agrave;u n&acirc;u &oacute;ng đẹp mắt. Miếng c&aacute; b&ecirc;n ngo&agrave;i nh&iacute;n b&oacute;ng, b&eacute;o đậm đ&agrave;. Thịt c&aacute; mềm nhừ, xương cũng được kho mềm rục, c&aacute; kh&ocirc;ng hề bị kh&ocirc;. Gắp một miếng c&aacute;, miếng thịt ba chỉ rồi ăn c&ugrave;ng cơm trắng th&igrave; đ&aacute;nh bay cả nồi cơm.</p>\r\n\r\n<p>C&aacute; trắm kho dưa<br />\r\nNguy&ecirc;n liệu</p>\r\n\r\n<p>+ C&aacute; trắm: 1,5kg<br />\r\n+ Thịt ba chỉ: 500g<br />\r\n+ Dưa cải chua: 500g<br />\r\n+ H&agrave;nh t&iacute;m: 5 củ<br />\r\n+ Sả: 4 c&acirc;y<br />\r\n+ Nước m&agrave;u: 3 th&igrave;a<br />\r\n+ Ớt cay: 3 quả<br />\r\n+ Gia vị: nước mắm, dầu h&agrave;o, nước tương, bột n&ecirc;m,&hellip;</p>\r\n\r\n<p>nguy&ecirc;n liệu l&agrave;m c&aacute; trắm kho dưa</p>\r\n\r\n<p>&nbsp;<br />\r\nThực hiện</p>\r\n\r\n<p>&ndash; C&aacute; trắm rửa sạch, cạo hết m&agrave;ng đen b&ecirc;n trong. Sau đ&oacute; cắt kh&uacute;c d&agrave;y vừa ăn rồi để r&aacute;o nước<br />\r\n&ndash; Thịt ba chỉ rửa sạch, th&aacute;i miếng vu&ocirc;ng khoảng bằng nửa bao di&ecirc;m<br />\r\n&ndash; Dưa cải rửa cho bớt vị mặn.<br />\r\n&ndash; H&agrave;nh t&iacute;m rửa sạch, bạn c&oacute; thể để cả vỏ h&agrave;nh kh&ocirc;, ch&uacute;ng vừa tạo m&agrave;u đẹp mắt cho c&aacute; vừa c&oacute; m&ugrave;i thơm đặc biệt<br />\r\n&ndash; Sả đập dập, cắt kh&uacute;c.<br />\r\n&ndash; Xếp sả v&agrave;o xuống đ&aacute;y nồi. Xếp tiếp một lượt c&aacute;, xen kẽ với thịt, đến một lượt dưa rồi lại tiếp lượt c&aacute;, lượt dưa. Cho nốt h&agrave;nh t&iacute;m, ớt cay l&ecirc;n tr&ecirc;n</p>\r\n\r\n<p>l&agrave;m c&aacute; trắm kho dưa</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&ndash; Cho 2 th&igrave;a dầu h&agrave;o, 3 th&igrave;a nước mắm ngon, 2 th&igrave;a nước tương, 1 th&igrave;a bột n&ecirc;m, 3 th&igrave;a nước m&agrave;u, 300ml nước v&agrave;o chảo đun s&ocirc;i. Khuấy nhẹ cho nguy&ecirc;n liệu tan hết. Sau đ&oacute; đổ nước kho n&agrave;y v&agrave;o nồi c&aacute;.<br />\r\n&ndash; Kho c&aacute; cho s&ocirc;i b&ugrave;ng khoảng 5 ph&uacute;t th&igrave; hạ nhỏ lửa liu riu. Kho &iacute;t nhất 2 giờ đến khi cạn nước, c&aacute; mềm rục l&agrave; được.</p>\r\n\r\n<p>c&aacute; trắm kho dưa</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho tr&aacute;m<br />\r\nMột c&aacute;ch kho c&aacute; trắm ngon nổi tiếng của người v&ugrave;ng cao miền Bắc, đ&oacute; l&agrave; kho c&aacute; với quả tr&aacute;m. Quả tr&aacute;m c&oacute; 2 loại l&agrave; tr&aacute;m đen v&agrave; tr&aacute;m trắng. &Iacute;t ai nghĩ rằng, thứ quả nhọn nhọn, đen x&igrave; n&agrave;y lại được chị em nội trợ đua nhau mua nhiều đến vậy, mặc d&ugrave; gi&aacute; kh&aacute; cao. Thừng khi v&agrave;o m&ugrave;a, người ta mua cả v&agrave;i c&acirc;n tr&aacute;m về để d&agrave;nh ăn dần. Tr&aacute;m d&ugrave;ng kho thịt, kho c&aacute;, đồ x&ocirc;i, ng&acirc;m muối,&hellip;. đều rất ngon.</p>\r\n\r\n<p>quả tr&aacute;m</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho tr&aacute;m c&oacute; một hương vị rất lạ m&agrave; ai từng nếm thử sẽ nhớ m&atilde;i kh&ocirc;ng qu&ecirc;n. Tr&aacute;m c&oacute; đủ c&aacute;c vị, hơi chua chua, ch&aacute;t ch&aacute;t, b&ugrave;i, ngậy quện v&agrave;o thịt c&aacute; v&agrave; thịt ba chỉ, mang đến m&oacute;n ăn hấp dẫn.</p>\r\n\r\n<p>Quả tr&aacute;m mua về sẽ được kh&iacute;a tr&ograve;n rồi ng&acirc;m v&agrave;o nước muối 20 ph&uacute;t cho ra bớt vị ch&aacute;t. Sau đ&oacute;, trần qua nước s&ocirc;i, tắt bếp, đậy vung om 20 ph&uacute;t để t&aacute;ch hạt ra dễ d&agrave;ng. D&ugrave;ng con dao nhọn, t&aacute;ch đ&ocirc;i quả tr&aacute;m, bỏ hạt.</p>\r\n\r\n<p>l&agrave;m c&aacute; trắm kho tr&aacute;m</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm được sơ chế sạch, xếp v&agrave;o nồi c&ugrave;ng với tr&aacute;m. Dưới đ&aacute;y nồi xếp một lớp riềng th&aacute;i l&aacute;t v&agrave; v&agrave;i l&aacute; ch&egrave; xanh. C&aacute;, thịt ba chỉ v&agrave; tr&aacute;m xếp xen kẽ nhau. N&ecirc;m gia vị gồm nước mắm ngon, dầu h&agrave;o, nước m&agrave;u, bột n&ecirc;m, ớt tươi. Đổ ngập nước rồi kho nhỏ lửa cho đến khi mềm nhừ.</p>\r\n\r\n<p>c&aacute; trắm kho tr&aacute;m</p>\r\n\r\n<p>&nbsp;<br />\r\nC&aacute; trắm kho l&aacute; chanh th&aacute;i<br />\r\nBạn đ&atilde; bao giờ kho c&aacute; trắm với l&aacute; chanh th&aacute;i chưa? L&aacute; chanh Th&aacute;i hay c&ograve;n c&oacute; t&ecirc;n l&agrave; l&aacute; Kaffir lime, một loại c&acirc;y gia vị c&ugrave;ng họ với chanh rất nổi tiếng ở v&ugrave;ng Bảy N&uacute;i An Giang. L&aacute; chanh Th&aacute;i vị the như chanh ta nhưng thơm hơn, m&ugrave;i gắt hơn, nồng hơn. L&aacute; non được d&ugrave;ng cho c&aacute;c m&oacute;n salad, c&ograve;n l&aacute; b&aacute;nh tẻ v&agrave; l&aacute; gi&agrave; d&ugrave;ng chế biến c&aacute;c m&oacute;n c&aacute; hấp, c&aacute; kho, lẩu Th&aacute;i, sốt ướp thịt,&hellip; L&aacute; chanh Th&aacute;i kho c&aacute;, kh&ocirc;ng chỉ c&oacute; t&aacute;c dụng khử tanh hiệu quả m&agrave; n&oacute; mang đến một hương vị rất đặc biệt, kh&ocirc;ng thể diễn tả bằng lời. C&aacute; kho thơm nức, chỉ cần nh&igrave;n th&ocirc;i đ&atilde; muốn thưởng thức ngay lập tức.</p>\r\n\r\n<p>c&aacute; trắm kho l&aacute; chanh Th&aacute;i</p>\r\n\r\n<p>&nbsp;<br />\r\n(Tham khảo: FB Th&acirc;n Hồng Nam)</p>\r\n\r\n<p>Nguy&ecirc;n liệu chuẩn bị</p>\r\n\r\n<p>+ C&aacute; trắm đen: 2kg.<br />\r\n+ H&agrave;nh t&iacute;m: 5 củ<br />\r\n+ Sả: 10 c&acirc;y<br />\r\n+ Riềng: 1 củ<br />\r\n+ Gừng:1. củ nhỏ<br />\r\n+ Thịt ba chỉ: 400g<br />\r\n+ Ớt cay: 3 quả<br />\r\n+ Ớt bột: 1 th&igrave;a<br />\r\n+ Ti&ecirc;u xanh: 1 nắm hoặc sử dụng ti&ecirc;u đen nguy&ecirc;n hạt<br />\r\n+ Hạt dổi: 5 hạt (kh&ocirc;ng bắt buộc)<br />\r\n+ L&aacute; chanh Th&aacute;i: 10 l&aacute;<br />\r\n+ Tỏi: 5 t&eacute;p<br />\r\n+ Nước mắm độ đạm cao: 100g<br />\r\n+ Sốt Teriyaki: 1 th&igrave;a<br />\r\n+ Đường ph&egrave;n: 1 th&igrave;a<br />\r\n+ Nước h&agrave;ng: 3 th&igrave;a<br />\r\n+ Sa tế: 1 th&igrave;a<br />\r\n+ Nước cốt dừa: 4 th&igrave;a<br />\r\n+ Bột n&ecirc;m: 1 th&igrave;a<br />\r\n+ Bột canh: 1 th&igrave;a</p>\r\n\r\n<p>L&agrave;m c&aacute; trắm kho l&aacute; chanh Th&aacute;i</p>\r\n\r\n<p>Bước 1: Sơ chế nguy&ecirc;n liệu</p>\r\n\r\n<p>&ndash; C&aacute; trắm chọn mua kh&uacute;c giữa. Chọn c&aacute; trắm đen, con c&agrave;ng to th&igrave; c&agrave;ng ngon. Cắt c&aacute; th&agrave;nh từng khoanh d&agrave;y khoảng 3cm, nếu to c&oacute; thể chẻ đ&ocirc;i theo đường xương sống nh&eacute;. Rửa c&aacute; với nước muối lo&atilde;ng, cạo hết m&agrave;ng đen b&ecirc;n trong để khử m&ugrave;i tanh. Sau đ&oacute; để c&aacute; r&aacute;o nước.<br />\r\n&ndash; Thịt ba chỉ rửa với nước muối lo&atilde;ng để khử m&ugrave;i h&ocirc;i. Th&aacute;i thịt th&agrave;nh những miếng vu&ocirc;ng, to bằng nửa bao di&ecirc;m l&agrave; được.<br />\r\n&ndash; Sả đập dập, cắt kh&uacute;c<br />\r\n&ndash; Gừng th&aacute;i l&aacute;t. Riềng cạo sạch vỏ rồi c&ugrave;ng th&aacute;i l&aacute;t mỏng<br />\r\n&ndash; Tỏi băm nhỏ. H&agrave;nh t&iacute;m rửa sạch, để nguy&ecirc;n củ</p>\r\n\r\n<p>Bước 2: Nấu nước kho c&aacute;</p>\r\n\r\n<p>&ndash; Nước h&agrave;ng bạn c&oacute; thể mua lọ b&aacute;n sẵn. Nếu c&oacute; thời gian h&atilde;y tự nấu nước h&agrave;ng để c&oacute; m&agrave;u đẹp nhất. C&aacute;ch thắng nước h&agrave;ng cũng rất đơn giản. Cho 3 th&igrave;a đường v&agrave; 3 th&igrave;a nước v&agrave;o chảo rồi đặt tr&ecirc;n lửa nhỏ. Kh&ocirc;ng được d&ugrave;ng đũa khuấy, thi thoảng lắc nhẹ chảo để đường tan hết. Khi đường tan, bắt đầu ch&aacute;y th&agrave;nh caramel. Khi c&oacute; m&agrave;u c&aacute;nh gi&aacute;n đẹp mắt th&igrave; th&ecirc;m v&agrave;o nửa th&igrave;a nước đảo đều l&agrave; được.</p>\r\n\r\n<p>&ndash; Trong một nồi nhỏ, cho nước mắm, sốt Teriyaki, đường ph&egrave;n, nước h&agrave;ng, sa tế, bột n&ecirc;m, bột canh, nước cốt dừa v&agrave; nửa l&iacute;t nước khuấy đều. Đun tr&ecirc;n lửa đến khi hỗn hợp tan ho&agrave;n to&agrave;n, bắt đầu sủi tăm th&igrave; tắt bếp.</p>', '2022-01-07 15:08:27', 1, 0, '2022-01-07 15:09:56'),
(5, 'cách nấu canh chua', 'cach-nau-canh-chua', 0, 1, 4, 0, 'hướng dẫn nấu canh', '2022-01-08__6.jpg', '<p>nội dung hướng dẫn nấu canh</p>', '2022-01-08 08:55:25', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(1, '500 gram', '500-gram', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(2, '1 Kg', '1-kg', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(3, '2 Kg', '2-kg', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(4, '250 gram', '250-gram', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(5, '300 gram', '300-gram', 1, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(6, 'Gói', 'goi', 2, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(7, 'Hộp', 'hop', 2, '2020-11-20 16:45:10', '2020-11-20 16:45:10'),
(8, 'Thùng', 'thung', 2, '2020-11-20 16:45:10', '2020-11-20 16:45:10');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Hoa - Quả', 0, 'rau-cu-qua', '2020-11-20__raucuqua.png', NULL, NULL, 1, 1, '2023-03-20 16:45:26', '2023-03-20 16:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Sản phẩm rất tuyệt vời', 0, 11, 0, 2, 0, 0, '2020-11-20 16:45:44', '2020-11-20 16:45:44'),
(2, NULL, NULL, '@Nguyen Quang Duc: cám ơn shop', 1, 11, 0, 2, 0, 0, '2020-11-20 16:45:44', '2020-11-20 16:45:44'),
(5, NULL, NULL, 'sản phẩm này còn hàng không ?', 0, 10, 0, 35, 0, 0, '2022-01-07 15:17:59', NULL),
(6, NULL, NULL, '@Minh Lan: còn ạ', 5, 10, 0, 35, 0, 0, '2022-01-07 15:18:28', NULL),
(7, NULL, NULL, 'Sản phẩm này rất tốt', 0, 14, 0, 41, 0, 0, '2022-01-08 08:53:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_detail_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_detail_2` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_detail_1`, `e_detail_2`, `created_at`, `updated_at`) VALUES
(1, 'sale 1', '2020-11-20__cua-hang-bach-hoa-xanh-tai-quang-son-ninh-son-2-1211x1713.jpg', '/', 1, 0, 0, 0, 0, 0, '2020-11-20 16:46:09', '2020-11-20 16:46:09'),
(2, 'sale 2', '2020-11-20__smart-food-banner.jpg', '/', 0, 1, 0, 0, 0, 0, '2020-11-20 16:46:09', '2020-11-20 16:46:09'),
(3, 'sale 3', '2020-11-20__11e93518327abdd246ba92c0d900162d.jpg', '/', 0, 0, 1, 0, 0, 0, '2020-11-20 16:46:09', '2020-11-20 16:46:09'),
(4, 'sale 4', '2020-11-21__cong-thuc-banner.jpg', '/', 0, 0, 0, 0, 1, 0, '2020-11-21 04:02:56', '2020-11-21 04:02:56'),
(5, 'sale 5', '2020-11-21__follow-nhan-uu-dai.jpg', '/', 0, 0, 0, 0, 0, 1, '2020-11-21 04:02:48', '2020-11-21 04:02:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(1, 'Thực phẩm sạch', 'thuc-pham-sach', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(2, 'Rau quả hữu cơ', 'rau-qua-huu-co', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(3, 'Thực phẩm sạch vietgap', 'thuc-pham-sach-vietgap', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(4, 'Thực phẩm vietfoods', 'thuc-pham-vietfoods', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(5, 'Organicfood', 'organicfood', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(6, 'Rau quả thực phẩm sạch chuẩn VietGrap', 'rau-qua-thuc-pham-sach-chuan-vietgrap', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(7, 'Nông sản sạch', 'nong-san-sach', NULL, 0, '2020-11-20 16:46:28', '2020-11-20 16:46:28'),
(8, 'Mì Ly Cao Cấp', 'mi-ly-cao-cap', 'mì nhập khẩu', 0, '2022-01-07 15:00:25', NULL),
(9, 'Mì chiên không dầu', 'mi-chien-khong-dau', 'mì nhập khẩu', 0, '2022-01-08 08:49:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-11-20 16:46:44', '2020-11-20 16:46:44'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-11-20 16:46:44', '2020-11-20 16:46:44'),
(3, 'Tin nổi bậc', 'tin-noi-bac', NULL, NULL, NULL, 0, 1, '2022-01-07 15:06:11', NULL),
(4, 'Tin Xem Nhiều', 'tin-xem-nhieu', NULL, NULL, NULL, 0, 1, '2022-01-08 08:54:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(8, 10, 11, 0, 1, 33000, NULL, NULL),
(9, 10, 9, 0, 1, 42000, NULL, NULL),
(10, 10, 8, 0, 1, 65000, NULL, NULL),
(11, 11, 11, 0, 1, 33000, NULL, NULL),
(12, 11, 8, 0, 1, 65000, NULL, NULL),
(13, 12, 9, 0, 3, 42000, NULL, NULL),
(14, 12, 10, 0, 2, 16000, NULL, NULL),
(15, 13, 10, 0, 4, 16000, NULL, NULL),
(16, 14, 7, 0, 1, 33000, NULL, NULL),
(17, 14, 9, 0, 1, 42000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pdr_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(1, 'Nông sản nhật bản', 'nong-san-nhat-ban', 'nongsannhat@gmail.com', '19001907', '2020-11-20 16:47:15', '2020-11-20 16:47:15'),
(2, 'Hợ tác xã nông sản sạch', 'ho-tac-xa-nong-san-sach', 'hoptacnongsansach@gmail.com', '18008989', '2020-11-20 16:47:15', '2020-11-20 16:47:15'),
(3, 'Everyday Organic', 'everyday-organic', 'everydayorganic@gmail.com', '028 38 753 443', '2020-11-20 16:47:15', '2020-11-20 16:47:15'),
(4, 'Organicfood.vn', 'organicfoodvn', 'organicfood@gmail.com', '0928817228', '2020-11-20 16:47:15', '2020-11-20 16:47:15'),
(5, 'Thực phẩm sạch VietGrap', 'thuc-pham-sach-vietgrap', 'vietgap@fsi.org.vn', '02436341933', '2020-11-20 16:47:15', '2020-11-20 16:47:15'),
(6, 'Thực phẩm sạch vietfoods', 'thuc-pham-sach-vietfoods', 'vietfoods@gmail.com', '0243201075', '2020-11-20 16:47:15', '2020-11-20 16:47:15'),
(7, 'Acicook Mi hảo Hảo', 'acicook-mi-hao-hao', 'haohao@gmail.com', '03764641313', '2022-01-07 14:57:27', '2022-01-07 14:59:50'),
(8, 'Omachi', 'omachi', 'congtyomachi@gmail.com', '0333333333', '2022-01-08 08:48:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(15, 'Quýt giống Úc 1kg (5 - 9 trái)', 'quyt-giong-uc-1kg-5-9-trai', 60000, 0, 1, 0, 8, '2023-04-17__download.jpg', 1, 0, 1, 0, '<h3><strong>Ưu điểm khi mua qu&yacute;t &Uacute;c tại B&aacute;ch ho&aacute; XANH</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Qu&yacute;t &Uacute;c tươi ngon, chất lượng, ngọt thanh. Qu&yacute;t &Uacute;c được xem như l&agrave; loại qu&yacute;t ngon nhất thế giới. Qu&yacute;t &Uacute;c c&oacute; m&agrave;u v&agrave;ng ươm, quả hơi đẹp, tr&ecirc;n vỏ qu&yacute;t c&oacute; c&aacute;c đốm tinh dầu to b&oacute;ng. C&aacute;c t&eacute;p qu&yacute;t mọng nước, c&oacute; vị ngọt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Qu&yacute;t &Uacute;c được trồng tại Trung Quốc, đảm bảo nguồn gốc r&otilde; r&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đặt giao h&agrave;ng nhanh</p>\r\n	</li>\r\n</ul>', '<h3><strong>Gi&aacute; trị dinh dưỡng của qu&yacute;t &Uacute;c&nbsp;</strong></h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Qu&yacute;t &Uacute;c l&agrave; một trong những loại tr&aacute;i c&acirc;y c&oacute; gi&aacute; trị dinh dưỡng cao được nhiều người chọn mua. Qu&yacute;t &Uacute;c c&oacute; chứa nhiều vitamin B1, vitamin B2 v&agrave; lượng vitamin C cao gấp nhiều lần so với những loại tr&aacute;i c&acirc;y kh&aacute;c như l&ecirc;. Ngo&agrave;i ra, qu&yacute;t giống &Uacute;c c&ograve;n c&oacute; h&agrave;m lượng protein v&agrave; canxi kh&aacute; cao.</p>\r\n	</li>\r\n	<li>\r\n	<p>Trong 100g qu&yacute;t c&oacute; khoảng 53 Kcal.</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>T&aacute;c dụng của qu&yacute;t &Uacute;c&nbsp; đối với sức khỏe</strong></h3>\r\n\r\n<p>Qu&yacute;t l&agrave; loại tr&aacute;i c&acirc;y.mang đến những c&ocirc;ng dụng to lớn cho sức khỏe con người</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Tăng cường sức đề kh&aacute;ng, hỗ trợ điều trị cảm v&agrave; ho khan</p>\r\n	</li>\r\n	<li>\r\n	<p>Ngăn ngừa b&eacute;o ph&igrave;, tiểu đường, đột quỵ,...</p>\r\n	</li>\r\n	<li>\r\n	<p>Chống oxy h&oacute;a v&agrave; cải thiện, duy tr&igrave; l&agrave;n da lu&ocirc;n săn chắc</p>\r\n	</li>\r\n	<li>\r\n	<p>Cải thiện thị lực</p>\r\n	</li>\r\n	<li>\r\n	<p>Giảm rụng t&oacute;c nhờ h&agrave;m lượng vitamin B12 cao</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&uacute;p xương săn chắc</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3><strong>C&aacute;ch chọn qu&yacute;t &Uacute;c&nbsp; tươi ngon</strong></h3>', 0, 0, 0, '2023-04-17 08:55:16', 22, 4, '2023-04-17 08:57:57'),
(16, 'Bơ 1kg (2 - 4 trái)', 'bo-1kg-2-4-trai', 45000, 0, 1, 0, 3, '2023-04-17__download-1.jpg', 0, 0, 1, 0, '<p>Bơ l&agrave; loại&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\">tr&aacute;i c&acirc;y&nbsp;</a>chứa nhiều th&agrave;nh phần dinh dưỡng tốt cho cơ thể&nbsp;bao gồm vitamin, kho&aacute;ng chất v&agrave; chất chống oxy h&oacute;a.&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon/bo-tui-1kg-3-trai\">Bơ</a>&nbsp;<strong>ngon nhất khi ch&iacute;n c&oacute; vỏ m&agrave;u xanh đậm, đốm v&agrave;ng, khi lắc hột k&ecirc;u nhẹ</strong>. Bơ c&oacute; thể chế biến th&agrave;nh nhiều m&oacute;n ăn v&agrave; thức uống thơm ngon.</p>\r\n\r\n<h3><strong>Ưu điểm khi mua bơ tại B&aacute;ch ho&aacute; XANH</strong></h3>\r\n\r\n<ul>\r\n	<li>Bơ được đảm bảo tươi, ngon,&nbsp;<strong>cơm d&agrave;y, dẻo&nbsp;</strong>v&ocirc; c&ugrave;ng hấp dẫn. Bơ giao đến cho kh&aacute;ch h&agrave;ng nguy&ecirc;n tr&aacute;i,&nbsp;<strong>kh&ocirc;ng bị dập</strong>, hư.</li>\r\n	<li>Bơ l&agrave; loại tr&aacute;i c&acirc;y nội địa, được đảm bảo về nguồn gốc tại L&acirc;m Đồng, Đăk Lăk, c&acirc;n đủ khối lượng v&agrave; số lượng cho kh&aacute;ch h&agrave;ng.</li>\r\n</ul>', '<h3><strong>Gi&aacute; trị dinh dưỡng của bơ</strong></h3>\r\n\r\n<ul>\r\n	<li>Bơ l&agrave; loại tr&aacute;i c&acirc;y bổ dưỡng, rất dễ ti&ecirc;u h&oacute;a, tr&aacute;i của n&oacute; c&oacute; h&igrave;nh tr&ograve;n hoặc d&agrave;i, khi tr&aacute;i ch&iacute;n vỏ c&oacute; m&agrave;u xanh hoặc m&agrave;u t&iacute;m. Trong quả bơ c&oacute; rất nhiều th&agrave;nh phần dinh dưỡng tốt cho cơ thể, chứa một lượng dưỡng chất thiết yếu đ&aacute;ng kinh ngạc, bao gồm vitamin, kho&aacute;ng chất v&agrave; chất chống oxy h&oacute;a.</li>\r\n	<li>Trong 100g bơ s&aacute;p c&oacute; khoảng&nbsp;<strong>160 calo</strong></li>\r\n</ul>\r\n\r\n<h3><strong>T&aacute;c dụng của bơ đối với sức khỏe</strong></h3>\r\n\r\n<p>L&agrave; loại tr&aacute;i c&acirc;y chứa nhiều chất dinh dưỡng, bơ cũng c&oacute; nhiều t&aacute;c dụng đối với sức khỏe như tăng cường sức khỏe v&agrave; t&acirc;m trạng, tốt cho mắt, cung cấp chất xơ tốt cho hệ ti&ecirc;u h&oacute;a, giảm lượng cholesterol trong m&aacute;u,...</p>', 0, 0, 0, '2023-04-17 09:00:17', -1, 5, NULL),
(17, 'Dưa lê hoàng kim trái từ 1.2kg-1.4kg', 'dua-le-hoang-kim-trai-tu-12kg-14kg', 49000, 0, 1, 0, 9, '2023-04-17__ppp.jpg', 0, 0, 1, 0, '<p><a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon/dua-le-hoang-kim-trai\">Dưa l&ecirc; ho&agrave;ng kim</a>&nbsp;c&oacute; vỏ m&agrave;u v&agrave;ng s&aacute;ng, bắt mắt. Dưa l&ecirc; c&oacute; m&ugrave;i thơm ng&agrave;o ngạt, phần thịt quả m&agrave;u v&agrave;ng, gi&ograve;n, ngọt hấp dẫn. Dưa l&ecirc;n ho&agrave;ng kim l&agrave;&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\">tr&aacute;i c&acirc;y</a>&nbsp;thanh m&aacute;t, bổ sung nhiều dưỡng chất cho cơ thể.</p>', '<p><a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon/dua-le-hoang-kim-trai\">Dưa l&ecirc; ho&agrave;ng kim</a>&nbsp;c&oacute; vỏ m&agrave;u v&agrave;ng s&aacute;ng, bắt mắt. Dưa l&ecirc; c&oacute; m&ugrave;i thơm ng&agrave;o ngạt, phần thịt quả m&agrave;u v&agrave;ng, gi&ograve;n, ngọt hấp dẫn. Dưa l&ecirc;n ho&agrave;ng kim l&agrave;&nbsp;<a href=\"https://www.bachhoaxanh.com/trai-cay-tuoi-ngon\">tr&aacute;i c&acirc;y</a>&nbsp;thanh m&aacute;t, bổ sung nhiều dưỡng chất cho cơ thể.</p>', 0, 0, 0, '2023-04-17 09:12:33', 11, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(153, 11, 1),
(154, 11, 2),
(155, 11, 3),
(156, 10, 1),
(157, 9, 1),
(158, 9, 2),
(159, 9, 3),
(160, 8, 1),
(161, 8, 2),
(162, 6, 1),
(163, 6, 2),
(164, 6, 3),
(165, 6, 4),
(166, 6, 5),
(167, 5, 6),
(168, 5, 7),
(169, 4, 1),
(172, 2, 6),
(173, 3, 6),
(175, 1, 1),
(182, 7, 2),
(189, 12, 5),
(190, 12, 6),
(191, 13, 5),
(192, 13, 7),
(195, 14, 5),
(196, 14, 8),
(199, 15, 2),
(200, 15, 7),
(201, 16, 1),
(202, 16, 7),
(203, 17, 1),
(204, 17, 7);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(63, 11, 1),
(64, 11, 2),
(65, 11, 3),
(69, 10, 2),
(70, 10, 6),
(71, 10, 7),
(72, 9, 1),
(73, 9, 3),
(74, 9, 6),
(75, 8, 3),
(76, 8, 5),
(77, 8, 6),
(81, 6, 3),
(82, 5, 3),
(83, 5, 4),
(84, 5, 5),
(85, 4, 1),
(86, 4, 2),
(87, 4, 3),
(92, 2, 1),
(93, 2, 2),
(94, 3, 1),
(95, 3, 2),
(96, 3, 7),
(100, 1, 1),
(101, 1, 2),
(102, 1, 3),
(106, 7, 3),
(107, 7, 4),
(108, 7, 5),
(115, 12, 5),
(116, 12, 8),
(117, 13, 2),
(119, 14, 8),
(121, 15, 2),
(122, 16, 1),
(123, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(3, 37, 11, 2, 0, 'Sản phẩm rất tốt', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(4, 38, 12, 5, 0, 'Sản phẩm rất tuyệt', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(5, 39, 9, 3, 0, 'sản phẩm tốt nhất tôi từng mua!', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(6, 36, 7, 5, 0, 'giá cả rất phải chăng!', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(7, 35, 7, 4, 0, 'giao hàng rất nhanh, rất tốt !', '2022-01-07 14:53:54', '2022-01-07 14:53:54'),
(8, 41, 14, 5, 0, 'rất tốt đánh giá 5*', '2022-01-08 08:53:56', '2022-01-08 08:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 1', '/', '2023-04-17__thuml-2kyzbazw7n2crodl.jpg', 1, 1, 1, '2023-04-17 09:21:26', '2023-04-17 09:21:26'),
(2, 'slide 2', '/', '2023-04-17__website-banner-ngang-03-1400x504.png', 1, 1, 0, '2023-04-17 09:23:56', '2023-04-17 09:23:56'),
(3, 'slide 5', '/', '2023-04-17__trai-cay-nhap-khau-57810.png', 1, 1, 0, '2023-04-17 09:24:54', '2023-04-17 09:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-11-20 16:48:17', '2020-11-20 16:48:17');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tst_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Khối lượng', 'khoi-luong', '2020-11-20 16:48:39', '2020-11-20 16:48:39'),
(2, 'Đơn vị', 'don-vi', '2020-11-20 16:48:39', '2020-11-20 16:48:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `google_id`, `facebook_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(34, 'Minh Khanh', 'minhkhanh@gmail.com', NULL, '$2y$10$aA0To1xYapIqk4.bmSsAAe9p9n4iGAXtYnm6WAnQYKf2NkBSfNRKW', '037575713213', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:00:35', NULL),
(36, 'Minh Thái', 'minhthai@gmail.com', NULL, '$2y$10$MA1dE0zHKmBh/559L4WQDOpiRabbG7.sLvxwSjAge2bWfIsjEIusi', '0375754147', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:34:57', NULL),
(37, 'Minh Dương', 'minhduong@gmail.com', NULL, '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '9437284632', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:35:40', NULL),
(38, 'Minh Châu', 'minhchau@gmail.com', NULL, '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '0364543134', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:35:40', NULL),
(39, 'Minh Mạnh', 'minhmanh@gmail.com', NULL, '$2y$10$wHqjnF1KZkiephAY77gXfebuXJrGh/MT5UkUy6UZAAX8sLb.Gxe0W', '03765323323', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2022-01-07 14:35:40', NULL),
(41, 'Khánh Minh', 'minhkhanhchanel@gmail.com', NULL, 'eyJpdiI6IjlobDg5SHRcL3kzbThiNENQT0g4eVp3PT0iLCJ2YWx1ZSI6InZBbnk2b3lnWE9MYU1GQlwvdGxPS3k0RFp0ckdXYmdkTmo5bjFvV3YzQ1lzPSIsIm1hYyI6ImQ0NTQ5NzI2ODM5YTkyMzMwN2YxMjU1ODQ5NzAzMzE0Mjc0ZTZlZDRlNmFjZjI5YTIyZjYyZDY4NGIzZGY2ZTEifQ==', '', NULL, 1, NULL, NULL, NULL, NULL, NULL, '2022-01-08 08:53:24', '2022-01-08 08:53:24'),
(42, 'xxxx', 'xxxx@gmail.com', NULL, '$2y$10$DsiZh2A7EitYnBaznoJHJes/tVQM.glTjWbrLGR9ZtulRQPRfMbhm', '0987654321', NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-04-10 08:17:26', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
