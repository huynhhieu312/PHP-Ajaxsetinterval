-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 20, 2017 lúc 11:32 SA
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `exp_nk`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mk_comments`
--

CREATE TABLE `mk_comments` (
  `comment_id` int(11) NOT NULL,
  `xu_ly` tinyint(4) NOT NULL,
  `new_id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rep` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_comment` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `AnHien` tinyint(4) NOT NULL DEFAULT '0',
  `idGroup` tinyint(4) NOT NULL COMMENT '1=post, 2=page'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `mk_comments`
--

INSERT INTO `mk_comments` (`comment_id`, `xu_ly`, `new_id`, `email`, `ho_ten`, `content`, `rep`, `date_comment`, `AnHien`, `idGroup`) VALUES
(7, 0, 3, '63nguyenvannam@gmail.com', '63nguyenvannam@gmail.com', '<p>mua thuoc tri cau nho khong cuong cung khi nam gan phu nu</p>\n\n', '<p style=\"text-align: justify;\">Ch&agrave;o bạn. Hỗ trợ điều trị rối loạn cương dương&nbsp;c&oacute; nhiều phương ph&aacute;p như liệu ph&aacute;p t&acirc;m l&yacute;, thuốc uống, thuốc b&ocirc;i, vật l&yacute; trị liệu, tiểu phẫu,...v&agrave; t&ugrave;y v&agrave;o từng nguy&ecirc;n nh&acirc;n, t&igrave;nh trạng bệnh b&aacute;c sĩ sẽ chỉ định phương ph&aacute;p hỗ trợ điều trị bệnh hiệu quả.</p>\n\n\n\n<p style=\"text-align: justify;\">Bệnh nếu hỗ trợ điều trị kh&ocirc;ng đ&uacute;ng phương ph&aacute;p, tự mua thuốc uống khi chưa qua thăm kh&aacute;m&nbsp;sẽ khiến bệnh ng&agrave;y th&ecirc;m nặng, tốn nhiều thời gian v&agrave; chi ph&iacute;. Tốt hơn, để biết biện ph&aacute;p n&agrave;o hỗ trợ điều trị rối loạn cương dương&nbsp;hiệu quả, bạn n&ecirc;n nhanh đến b&aacute;c sĩ kh&aacute;m, kiểm tra bệnh, sau đ&oacute; b&aacute;c sĩ sẽ &aacute;p dụng phương ph&aacute;p hỗ trợ điều trị ph&ugrave; hợp cho bạn.&nbsp;</p>\n\n\n\n<p style=\"text-align: justify;\">Khi cần hỗ trợ về điều g&igrave;, bạn c&oacute; thể li&ecirc;n hệ với b&aacute;c sĩ qua số điện thoại <strong><span style=\"color:#FF0000\">(08) 3960 9999</span></strong> - nhấp v&agrave;o <a href=\"http://phongkhamdakhoa3thang2.com/link-out.html\" target=\"_blank\"><span style=\"color:#FF0000\"><strong>[Tư vấn c&ugrave;ng b&aacute;c sĩ]</strong></span></a> để được giải đ&aacute;p.</p>\n\n\n\n<p style=\"text-align: justify;\">Ch&uacute;c bạn sức khỏe!</p>\n\n\n\n<p>&nbsp;</p>\n\n', '2017-09-20 09:27:52', 1, 1),
(2566, 1, 3, '3333333333', '33333333', '3333333', '', '2017-09-20 09:28:41', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mk_post`
--

CREATE TABLE `mk_post` (
  `idPO` int(11) NOT NULL,
  `idCL` int(11) NOT NULL,
  `idLoai` int(1) NOT NULL,
  `idSub` int(11) NOT NULL,
  `TieuDe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDeKD` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Des` text COLLATE utf8_unicode_ci NOT NULL,
  `Keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `UrlHinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` datetime NOT NULL,
  `AnHien` tinyint(4) NOT NULL DEFAULT '1',
  `NoiBat` tinyint(2) NOT NULL DEFAULT '0',
  `SoLanXem` int(11) NOT NULL,
  `idGroup` int(11) NOT NULL,
  `DanhGia` tinyint(11) NOT NULL,
  `DanhGiaBacSi` tinyint(11) NOT NULL,
  `Hieu` int(11) NOT NULL,
  `DoiXe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MauXe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DongXe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` int(11) NOT NULL,
  `LoaiHinh` int(11) NOT NULL,
  `LoTrinh` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mk_post`
--

INSERT INTO `mk_post` (`idPO`, `idCL`, `idLoai`, `idSub`, `TieuDe`, `TieuDeKD`, `Title`, `Des`, `Keyword`, `TomTat`, `NoiDung`, `UrlHinh`, `NgayDang`, `AnHien`, `NoiBat`, `SoLanXem`, `idGroup`, `DanhGia`, `DanhGiaBacSi`, `Hieu`, `DoiXe`, `MauXe`, `DongXe`, `Gia`, `LoaiHinh`, `LoTrinh`) VALUES
(3, 3, 0, 0, 'Rối loạn cương dương', 'roi-loan-cuong-duong', 'Rối loạn cương dương', '', '', '', '<p style=\"text-align:justify\"><strong><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><em>1. Rối loạn cương dương l&agrave; g&igrave;?</em></span></span></strong></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">-&nbsp;&nbsp;Thường được gọi l&agrave; ED, l&agrave; kh&ocirc;ng c&oacute; khả năng đạt được v&agrave; duy tr&igrave; sự cương cứng th&iacute;ch hợp cho quan hệ t&igrave;nh dục. T&igrave;nh trạng n&agrave;y l&agrave; kh&ocirc;ng nhất thiết phải coi l&agrave; b&igrave;nh thường ở mọi lứa tuổi v&agrave; l&agrave; kh&aacute;c nhau từ c&aacute;c vấn đề kh&aacute;c ảnh hưởng đến quan hệ t&igrave;nh dục, chẳng hạn như thiếu ham muốn t&igrave;nh dục v&agrave; c&aacute;c vấn đề về xuất tinh v&agrave; cực kho&aacute;i.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><strong><em>2. L&agrave;m thế n&agrave;o để biết m&igrave;nh bị rối loạn cương dương?</em></strong></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;-&nbsp;&nbsp; Theo Viện Y tế Quốc gia Hoa Kỳ, khoảng 5% đ&agrave;n &ocirc;ng 40 tuổi v&agrave; từ 15% đến 25% đ&agrave;n &ocirc;ng 65 tuổi, kinh nghiệm ED tr&ecirc;n cơ sở l&acirc;u d&agrave;i.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;-&nbsp; Một vấn đề phổ biến hơn nhiều c&oacute; ảnh hưởng đến đa số nam giới tại một số điểm trong cuộc sống của họ l&agrave; sự thất bại thường xuy&ecirc;n để đạt được&nbsp;<strong>sự cương cứng</strong>, c&oacute; thể xảy ra v&igrave; nhiều l&yacute; do, chẳng hạn như do uống qu&aacute; nhiều rượu hoặc từ l&agrave; v&ocirc; c&ugrave;ng mệt mỏi.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;- Thất bại trong việc đạt được sự cương cứng &iacute;t hơn 20% thời gian kh&ocirc;ng phải l&agrave; bất thường v&agrave; điều trị hiếm khi cần thiết. Thất bại trong việc đạt được&nbsp;<strong>sự cương cứng</strong>&nbsp;hơn 50% thời gian, tuy nhi&ecirc;n, thường chỉ c&oacute; một vấn đề cần phải điều trị.</span></span></p>\n\n\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n\n\n<p style=\"text-align:center\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><img alt=\"\" src=\"http://phongkhamdakhoa3thang2.com/upload/hinhanh/060101_740.jpg\" style=\"height:300px; width:402px\" /></span></span></p>\n\n\n\n<p style=\"text-align:justify\">&nbsp;</p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><strong><em>3. Nguy&ecirc;n nh&acirc;n g&igrave; g&acirc;y Rối loạn cương dương?</em></strong></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;<em><strong>- Để đạt được sự cương cứng, c&aacute;c điều kiện phải xảy ra:</strong></em></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">+&nbsp; C&aacute;c d&acirc;y thần kinh đến dương vật phải được hoạt động tốt.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">+ Sự lưu th&ocirc;ng m&aacute;u v&agrave;o dương vật phải đầy đủ.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;+ C&aacute;c tĩnh mạch phải c&oacute; khả năng &ldquo;bẫy v&agrave; giữ&rdquo; m&aacute;u b&ecirc;n trong dương vật.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;+ Phải c&oacute; một k&iacute;ch th&iacute;ch từ n&atilde;o bộ.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">-&nbsp; Nếu c&oacute; c&aacute;i g&igrave; đ&oacute; can thiệp với bất kỳ hoặc tất cả c&aacute;c điều kiện, một&nbsp;<strong>sự cương cứng</strong>&nbsp;đầy đủ sẽ được ngăn chặn.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;-&nbsp; Nguy&ecirc;n nh&acirc;n phổ biến của&nbsp;<strong>rối loạn cương dương</strong>&nbsp;bao gồm c&aacute;c bệnh c&oacute; ảnh hưởng đến lưu lượng m&aacute;u, chẳng hạn như xơ vữa động mạch (xơ cứng động mạch) hoặc r&ograve; rỉ tĩnh mạch (tĩnh mạch yếu), bệnh thần kinh, yếu tố t&acirc;m l&yacute;, chẳng hạn như căng thẳng, trầm cảm, v&agrave; performanceanxiety; v&agrave; tổn thương dương vật. Bệnh m&atilde;n t&iacute;nh, một số loại thuốc, v&agrave; một t&igrave;nh trạng gọi l&agrave; bệnh Peyronie (m&ocirc; sẹo trong dương vật) cũng c&oacute; thể g&acirc;y ra rối loạn cương dương.&nbsp;</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><strong><em>4.&nbsp; Rối loạn cương dương c&oacute; thể được ngăn chặn?</em></strong></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;- Đối với những người c&oacute; nguy cơ ph&aacute;t triển RLCD do h&agrave;nh vi c&aacute; nh&acirc;n, chẳng hạn như uống qu&aacute; nhiều rượu, c&aacute;c bước c&oacute; thể được thực hiện để ngăn chặn n&oacute;. Tuy nhi&ecirc;n, c&aacute;c nguy&ecirc;n nh&acirc;n kh&aacute;c của ED c&oacute; thể kh&ocirc;ng ph&ograve;ng ngừa được.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><strong><em>Những g&igrave; b&aacute;c sĩ điều trị rối loạn cương dương?</em></strong></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp; -&nbsp; Loại chuy&ecirc;n gia y tế người đối xử rối loạn cương dương sẽ phụ thuộc v&agrave;o nguy&ecirc;n nh&acirc;n của vấn đề. Dựa tr&ecirc;n bệnh sử gia đ&igrave;nh của bạn cũng như lịch sử y tế của ri&ecirc;ng bạn v&agrave; sức khỏe hiện tại, b&aacute;c sĩ c&oacute; thể điều trị bằng thuốc uống như asViagra hoặc thuốc tương tự. Nếu thất bại, họ c&oacute; thể giới thiệu bạn đến một b&aacute;c sĩ tiết niệu hoặc chuy&ecirc;n gia t&acirc;m l&yacute;.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><strong><em>&nbsp;Những g&igrave; t&ocirc;i n&ecirc;n l&agrave;m nếu t&ocirc;i c&oacute; vấn đề Đạt / Duy tr&igrave; Lắp?</em></strong></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;-&nbsp; Nếu bạn nghi ngờ bạn c&oacute; thể c&oacute;&nbsp;<strong>rối loạn chức năng cương dương</strong>, đến gặp b&aacute;c sĩ. Người đ&oacute; c&oacute; thể thực hiện một loạt c&aacute;c x&eacute;t nghiệm để x&aacute;c định những g&igrave; đang g&acirc;y ra vấn đề của bạn v&agrave; giới thiệu bạn đến một chuy&ecirc;n gia nếu cần thiết. Một nguy&ecirc;n nh&acirc;n được x&aacute;c định, c&oacute; một số phương ph&aacute;p điều trị để xem x&eacute;t.</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\"><strong><em>&nbsp;L&agrave;m thế n&agrave;o l&agrave; điều trị Rối loạn cương dương?</em></strong></span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;-&nbsp; C&oacute; nhiều loại&nbsp;<strong>rối loạn cương dương</strong>&nbsp;kh&aacute;c nhau c&oacute; thể được điều trị, bao gồm cả thuốc uống chứa&nbsp;<strong>Kẽm</strong>, c&aacute;c loại thuốc uống kh&aacute;c, liệu ph&aacute;p t&igrave;nh dục, ti&ecirc;m dương vật, thuốc đạn, m&aacute;y bơm ch&acirc;n kh&ocirc;ng, andsurgery.&nbsp;</span></span></p>\n\n\n\n<p style=\"text-align:justify\"><span style=\"font-size:14px\"><span style=\"font-family:times new roman,times,serif\">&nbsp;-&nbsp; Mỗi c&aacute;ch điều trị c&oacute; ưu v&agrave; nhược điểm ri&ecirc;ng của m&igrave;nh. N&oacute;i chuyện với b&aacute;c sĩ của bạn để x&aacute;c định điều trị tốt nhất cho bạn.</span></span></p>\n\n', 'http://phongkhamdakhoa3thang2.com/upload/hinhanh/roi-loan-cuong-duong1.jpg', '2014-02-14 10:00:25', 1, 0, 129, 4, 0, 0, 0, '', '', '', 0, 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `mk_comments`
--
ALTER TABLE `mk_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Chỉ mục cho bảng `mk_post`
--
ALTER TABLE `mk_post`
  ADD PRIMARY KEY (`idPO`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `mk_comments`
--
ALTER TABLE `mk_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2598;
--
-- AUTO_INCREMENT cho bảng `mk_post`
--
ALTER TABLE `mk_post`
  MODIFY `idPO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1999;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
