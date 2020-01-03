-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 03, 2020 lúc 04:20 PM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan_module4f`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `categoryCode`, `categoryName`, `created_at`, `updated_at`) VALUES
(1, 'DM00001', 'Chung Cư', NULL, NULL),
(2, 'DM00002', 'Đất Nền', NULL, NULL),
(3, 'DM00003', 'Mặt Bằng', NULL, NULL),
(4, 'DM00004', 'Nhà', NULL, NULL),
(5, 'DM00005', 'Phòng Trọ', NULL, NULL),
(6, 'DM00006', 'Tòa Nhà', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `postId` int(11) NOT NULL,
  `commentContent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `userId`, `postId`, `commentContent`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Nha Re Gia Phai Chang', NULL, NULL),
(2, 2, 2, 'Nha Re Gia Phai Chang', NULL, NULL),
(3, 2, 2, 'Nha Re Gia Phai Chang', NULL, NULL),
(4, 2, 2, 'Nha Re Gia Phai Chang, Dep', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `fullName`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Trinh Ngoc Tuan', 'ngoctuan.qhvn@gmail.com', '0984529224', NULL, NULL),
(2, 'Huynh Tan Dai', 'huynhtandai.qhvn@gmail.com', '0984529224', NULL, NULL),
(3, 'Lam The Vu', 'lamthevu.qhvn@gmail.com', '0984529224', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `directions`
--

CREATE TABLE `directions` (
  `id` int(11) NOT NULL,
  `directionCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `directionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `directions`
--

INSERT INTO `directions` (`id`, `directionCode`, `directionName`, `created_at`, `updated_at`) VALUES
(1, 'HV-00001', 'Đông', NULL, NULL),
(2, 'HV-00002', 'Tây', NULL, NULL),
(3, 'HV-00003', 'Nam', NULL, NULL),
(4, 'HV-00004', 'Bắc', NULL, NULL),
(5, 'HV-00005', 'Đông-Nam', NULL, NULL),
(6, 'HV-00006', 'Tây-Nam', NULL, NULL),
(7, 'HV-00007', 'Đông-Bắc', NULL, NULL),
(8, 'HV-00008', 'Tây-Bắc', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `helps`
--

CREATE TABLE `helps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `help_messages`
--

CREATE TABLE `help_messages` (
  `id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sendOfDate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `help_messages`
--

INSERT INTO `help_messages` (`id`, `email`, `phoneNumber`, `fullName`, `reason`, `sendOfDate`, `created_at`, `updated_at`) VALUES
(1, 'ngoctuan.qhvn@gmai.com', '0984529224', 'Trịnh Ngọc Tuấn', 'Không đăng ký được tài khoản', '11/12/2019', NULL, NULL),
(2, 'huynhtandai.qhvn@gmai.com', '0984529224', 'Huynh Tan Dai', 'Không đăng ký được tài khoản', '15/12/2019', NULL, NULL),
(3, 'lamthevu.qhvn@gmai.com', '0984529224', 'Lâm Thế Vũ', 'Không đăng ký được tài khoản', '18/12/2019', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `level_of_users`
--

CREATE TABLE `level_of_users` (
  `id` int(11) NOT NULL,
  `userLevelOfCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userLevelOfName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `level_of_users`
--

INSERT INTO `level_of_users` (`id`, `userLevelOfCode`, `userLevelOfName`) VALUES
(1, 'UN00001', 'Admin'),
(2, 'UN00002', 'Quản Trị Viên'),
(3, 'UN00003', 'Người Dùng'),
(4, 'UN0004', 'Quản trị bài đăng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_11_06_014122_create_post_availability_statuses_table', 1),
(3, '2019_11_07_083102_create_posts_table', 1),
(4, '2019_11_07_083652_create_comments_table', 1),
(5, '2019_11_11_100913_create_verifymails_table', 1),
(6, '2019_11_12_025350_create_categories_table', 1),
(7, '2019_11_12_031529_create_regions_table', 1),
(8, '2019_11_12_031728_create_post_of_types_table', 1),
(9, '2019_11_12_032045_create_help_messages_table', 1),
(10, '2019_11_12_032418_create_sellers_table', 1),
(11, '2019_11_12_033226_create_directions_table', 1),
(12, '2019_11_12_041024_create_status_of_posts_table', 1),
(13, '2019_11_12_072910_create_status_of_users_table', 1),
(14, '2019_11_12_075018_create_level_of_users_table', 1),
(15, '2019_11_12_085728_foreign_key_post', 1),
(16, '2019_11_12_085744_foreign_key_user', 1),
(17, '2019_11_12_085753_foreign_key_comment', 1),
(18, '2019_11_13_024730_create_customers_table', 1),
(19, '2019_11_21_164202_create_helps_table', 1),
(20, '2019_12_06_073732_traffic_table', 1),
(21, '2019_12_06_100009_post_view_table', 1),
(22, '2019_12_07_104427_update_foreign_key_post_view_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) NOT NULL,
  `regionId` int(11) NOT NULL,
  `sellerId` int(11) NOT NULL,
  `postOfTypeId` int(11) NOT NULL,
  `statusOfPostId` int(11) NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL,
  `directionId` int(11) NOT NULL,
  `contentPost` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` bigint(20) NOT NULL,
  `imageFolderName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePost1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePost2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePost3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePost4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePost5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagePost6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_availability_status_id` int(11) NOT NULL DEFAULT 2,
  `ableComposition` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `userId`, `title`, `categoryId`, `regionId`, `sellerId`, `postOfTypeId`, `statusOfPostId`, `address`, `area`, `directionId`, `contentPost`, `price`, `imageFolderName`, `imagePost1`, `imagePost2`, `imagePost3`, `imagePost4`, `imagePost5`, `imagePost6`, `post_availability_status_id`, `ableComposition`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chung Cư Trung Tâm Thành Phố 35-55-100m2', 1, 3, 1, 4, 2, '123 Dien Bien Phu', 50, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 5500000, 'imageFolderOfPost1', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage1.png?alt=media&token=847330c4-a14e-4fd8-975c-973756f20e41', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 2, 1, '2019-11-01 17:00:00', NULL),
(2, 2, 'Chung Cư Giá Rẻ 150m2, full nội thất', 1, 3, 1, 4, 2, '123 Dien Bien Phu', 70, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 8000000, 'imageFolderOfPost2', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage2.png?alt=media&token=3b918492-49e5-471f-bc05-8c75c3f5323d', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(3, 4, 'Chung Cư 2 phòng ngủ, gần cầu rồng 1', 1, 3, 1, 4, 2, '123 Dien Bien Phu', 90, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 9500000, 'imageFolderOfPost3', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage3.png?alt=media&token=e2abc60e-4390-4dcb-9da2-2494681a0459', NULL, NULL, NULL, NULL, NULL, 1, 0, '2019-11-01 17:00:00', '2019-12-13 00:19:24'),
(4, 2, '18 hecta đất rẫy ở Tân Thuận huyện Hàm Thuận Nam', 4, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 9000000, 'imageFolderOfPost4', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage4.png?alt=media&token=e27ab439-4d75-4fe1-9eaa-e1785f0578dd', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(5, 2, 'Căn hộ Ngay Vincom Quận 2, 80m² 2PN, nhận nhà ngay', 5, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 13000000, 'imageFolderOfPost5', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage5.png?alt=media&token=5456be29-dbc3-4969-b50c-ff5ed6119ac7', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(6, 2, 'Bán nhà mt căn góc đường số 5 chợ Bà Hom 6,5mx18m', 6, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 23000000, 'imageFolderOfPost6', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage8.png?alt=media&token=109cc824-41aa-46e6-8f2b-fbe67cb25b18', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 2, 1, '2019-11-01 17:00:00', NULL),
(7, 2, 'MỞ BÁN NHÀ MẶT TIỀN ĐƯỜNG SỐ 6, KHU ĐÔ THỊ 5A', 1, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 3, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 35000000, 'imageFolderOfPost7', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage1.png?alt=media&token=a9afde56-821a-4aac-9ad6-4e24d99163d9', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 3, 1, '2019-11-01 17:00:00', NULL),
(8, 2, 'Bán gấp nhà Phố Thụy Khuê Siêu Rẻ,35/44x5T, giá chỉ 4,5 tỷ.', 2, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 100000000, 'imageFolderOfPost8', 'https://firebasestorage.googleapis.com/v0/b/c0719g1-project-module4-10fa8.appspot.com/o/uploads%2Fimage13.png?alt=media&token=7e8a3fa5-a656-4290-adb7-87c23c9ae71c', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(9, 2, 'BÁN TÒA NHÀ MẶT PHỐ VŨ TÔNG PHAN Siểu Rẻ, 110M2, 26 TỶ', 3, 2, 2, 2, 2, '123 Dien Bien Phu', 300, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 26000000000, 'imageFolderOfPost9', 'https://www.freeiconspng.com/uploads/no-image-icon-11.PNG', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(10, 2, 'BÁN GẤP ĐẤT ĐƯỜNG ĐẶNG VĂN NGỮ GIÁ 2TY570 XDTD', 4, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 1500000000, 'imageFolderOfPost10', 'https://www.freeiconspng.com/uploads/no-image-icon-11.PNG', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(11, 2, 'Bán Lô Góc Kinh Doanh.Quận Hai Bà Trưng 5.4 tỷ', 2, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 2300000000, 'imageFolderOfPost11', 'https://www.freeiconspng.com/uploads/no-image-icon-11.PNG', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(12, 2, 'MUỐN BÁN CĂN 2PN 77M2 RẺ HƠN CHỦ ĐẦU TƯ 600 TRIỆU', 2, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 2500000000, 'imageFolderOfPost12', 'https://www.freeiconspng.com/uploads/no-image-icon-11.PNG', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(13, 2, 'Đất ngay Phòng khám đa khoa SG 80m2 giá đầu tư', 2, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 4200000000, 'imageFolderOfPost13', 'https://www.freeiconspng.com/uploads/no-image-icon-11.PNG', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL),
(14, 2, 'TÔI ĐANG CÀN TIỀN BÁN GẤP LẠI CĂN NHÀ GIÁ CỰC RẺ', 2, 2, 2, 2, 2, '123 Dien Bien Phu', 500, 2, 'Dang can tien - Ban gap - Giam gia cho nguoi co thien chi', 2300000000, 'imageFolderOfPost14', 'https://www.freeiconspng.com/uploads/no-image-icon-11.PNG', 'image2.png', 'image3.png', 'image4.png', 'image5.png', 'image6.png', 1, 1, '2019-11-01 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_availability_status`
--

CREATE TABLE `post_availability_status` (
  `id` int(11) NOT NULL,
  `availability_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_availability_status`
--

INSERT INTO `post_availability_status` (`id`, `availability_status`, `created_at`, `updated_at`) VALUES
(1, 'Đang rao', NULL, NULL),
(2, 'Đang duyệt', NULL, NULL),
(3, 'Đã gỡ bỏ', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_of_types`
--

CREATE TABLE `post_of_types` (
  `id` int(11) NOT NULL,
  `postOfTypeCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postOfTypeName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_of_types`
--

INSERT INTO `post_of_types` (`id`, `postOfTypeCode`, `postOfTypeName`, `created_at`, `updated_at`) VALUES
(1, 'POTC-00001', 'Cần Bán', NULL, NULL),
(2, 'POTC-00002', 'Cần Mua', NULL, NULL),
(3, 'POTC-00003', 'Cần Thuê', NULL, NULL),
(4, 'POTC-00004', 'Cho Thuê', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_view`
--

CREATE TABLE `post_view` (
  `id` int(11) NOT NULL,
  `posts_id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_view`
--

INSERT INTO `post_view` (`id`, `posts_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 2, '2:14.250.230.180', '2019-12-07 08:38:32', '2019-12-07 08:38:32'),
(2, 8, '8:14.250.230.180', '2019-12-07 08:40:15', '2019-12-07 08:40:15'),
(3, 14, '14:14.250.230.180', '2019-12-07 08:45:44', '2019-12-07 08:45:44'),
(5, 7, '7:14.250.230.180', '2019-12-07 08:49:53', '2019-12-07 08:49:53'),
(6, 8, '8:123.19.174.233', '2019-12-09 20:59:42', '2019-12-09 20:59:42'),
(10, 14, '14:171.255.170.11', '2019-12-09 23:55:50', '2019-12-09 23:55:50'),
(11, 2, '2:171.255.170.11', '2019-12-09 23:55:57', '2019-12-09 23:55:57'),
(14, 2, '2:123.19.174.233', '2019-12-10 23:38:34', '2019-12-10 23:38:34'),
(17, 8, '8:171.255.151.103', '2019-12-10 23:40:42', '2019-12-10 23:40:42'),
(20, 8, '8:171.255.145.108', '2019-12-10 23:45:35', '2019-12-10 23:45:35'),
(22, 8, '8:171.255.158.246', '2019-12-11 01:12:31', '2019-12-11 01:12:31'),
(25, 2, '2:171.231.241.110', '2019-12-13 00:28:38', '2019-12-13 00:28:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `regionCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regionName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `regions`
--

INSERT INTO `regions` (`id`, `regionCode`, `regionName`, `created_at`, `updated_at`) VALUES
(1, 'KV00001', 'Hà Nội', NULL, NULL),
(2, 'KV00002', 'Huế', NULL, NULL),
(3, 'KV00003', 'Đà Nẵng', NULL, NULL),
(4, 'KV00004', 'TP.HCM', NULL, NULL),
(5, 'KV00005', 'Cà Mau', NULL, NULL),
(8, 'KV00006', 'Thanh hóa', '2019-12-11 01:27:50', '2019-12-11 01:27:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sellers`
--

CREATE TABLE `sellers` (
  `id` int(11) NOT NULL,
  `sellerCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sellerName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sellers`
--

INSERT INTO `sellers` (`id`, `sellerCode`, `sellerName`, `created_at`, `updated_at`) VALUES
(1, 'SL00001', 'Cá Nhân', NULL, NULL),
(2, 'SL00002', 'Công Ty', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_of_posts`
--

CREATE TABLE `status_of_posts` (
  `id` int(11) NOT NULL,
  `statusOfPostCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusOfPostName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status_of_posts`
--

INSERT INTO `status_of_posts` (`id`, `statusOfPostCode`, `statusOfPostName`, `created_at`, `updated_at`) VALUES
(1, 'SOPC00001', 'Mới', NULL, NULL),
(2, 'SOPC00002', 'Đã Qua Sử Dụng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status_of_users`
--

CREATE TABLE `status_of_users` (
  `id` int(11) NOT NULL,
  `statusOfUserCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusOfUserName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `status_of_users`
--

INSERT INTO `status_of_users` (`id`, `statusOfUserCode`, `statusOfUserName`, `created_at`, `updated_at`) VALUES
(1, 'SOUC00001', 'Đang Hoạt Động', NULL, NULL),
(2, 'SOUC00002', 'Đang Bị Khóa', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `traffic`
--

CREATE TABLE `traffic` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `traffic`
--

INSERT INTO `traffic` (`id`, `ip`, `created_at`, `updated_at`) VALUES
(1, '14.250.230.180', '2019-12-07 08:37:50', '2019-12-07 08:37:50'),
(16, '123.19.174.233', '2019-12-09 20:55:31', '2019-12-09 20:55:31'),
(28, '171.255.170.11', '2019-12-09 23:52:31', '2019-12-09 23:52:31'),
(41, '171.255.151.103', '2019-12-10 23:40:28', '2019-12-10 23:40:28'),
(47, '171.255.145.108', '2019-12-10 23:45:35', '2019-12-10 23:45:35'),
(63, '171.255.158.246', '2019-12-11 01:12:30', '2019-12-11 01:12:30'),
(152, '14.245.115.223', '2019-12-11 20:56:21', '2019-12-11 20:56:21'),
(255, '171.231.241.110', '2019-12-13 00:18:51', '2019-12-13 00:18:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenVerifymail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `VerifymailId` int(11) NOT NULL DEFAULT 1,
  `statusOfUserId` int(11) NOT NULL,
  `levelOfUserId` int(11) NOT NULL,
  `imageAvatarOfUser` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reasonLocked` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullName`, `email`, `address`, `phoneNumber`, `tokenVerifymail`, `VerifymailId`, `statusOfUserId`, `levelOfUserId`, `imageAvatarOfUser`, `password`, `reasonLocked`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Trinh Ngoc Tuan', 'ngoctuan.qhvn@gmail.com', 'Hai Chau - Da Nang', '0904529224', '85mvkMEiFuweVpkx', 2, 1, 3, 'tuan.png', '$2y$10$dT/9T8bCSq9xVj5F0y8deum0eafM8arKrPOdzJJb5IGFew0TcKB.a', NULL, NULL, NULL, '2019-12-13 00:22:56'),
(2, 'Huynh Tan Dai', 'huynhtandai.qhvn@gmail.com', 'Hai Chau - Da Nang', '0904529224', 'nFZG93U9Zw5kF12e', 2, 2, 3, 'dai.png', '123', NULL, NULL, NULL, '2019-12-09 21:07:11'),
(3, 'Lam The Vua', 'lamthevu.qhvn@gmail.com', 'Hai Chau - Da Nanga', '09045292247', '1tkk9LvNPHMcjLDW', 2, 1, 1, 'vu.png', '$2y$10$GDRM.Qv5gRM0G6ngIgftFu9qScwMux34y3j4vNPqlTWpaz2/ukDey', NULL, NULL, NULL, '2019-12-09 21:08:51'),
(4, 'Le Dinh Thoa', 'ledinhthoa.qhvn@gmail.com', 'Hai Chau - Da Nang', '0904529224', 'IsT7WWwQhOI7VEwN', 2, 1, 1, 'thoa.png', '$2y$10$q1xJEEZM/XfFXs4PqTd1le87JInC5tz/Sh0fNIfYSQ7Qou.J/Jg1q', NULL, NULL, NULL, '2019-12-11 01:17:22'),
(7, 'test', 'huynhtandai95@gmail.com', 'test', '0999999999', 'MVknf2FSwPIuFiKN', 2, 1, 3, NULL, '$2y$10$UfpVhke6FfMvPX5VBzYhJue6GupSIn0RPn9dILsyhRDTMj17n5NJm', NULL, NULL, '2019-12-11 22:02:18', '2019-12-11 22:04:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `verifymails`
--

CREATE TABLE `verifymails` (
  `id` int(11) NOT NULL,
  `VerifymailName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `verifymails`
--

INSERT INTO `verifymails` (`id`, `VerifymailName`, `created_at`, `updated_at`) VALUES
(1, 'Chưa Confirm email', NULL, NULL),
(2, 'Đã Confirm email', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userid_foreign` (`userId`),
  ADD KEY `comments_postid_foreign` (`postId`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `helps`
--
ALTER TABLE `helps`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `help_messages`
--
ALTER TABLE `help_messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `level_of_users`
--
ALTER TABLE `level_of_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_userid_foreign` (`userId`),
  ADD KEY `posts_categoryid_foreign` (`categoryId`),
  ADD KEY `posts_regionid_foreign` (`regionId`),
  ADD KEY `posts_sellerid_foreign` (`sellerId`),
  ADD KEY `posts_postoftypeid_foreign` (`postOfTypeId`),
  ADD KEY `posts_statusofpostid_foreign` (`statusOfPostId`),
  ADD KEY `posts_directionid_foreign` (`directionId`),
  ADD KEY `posts_post_availability_status_id_foreign` (`post_availability_status_id`);

--
-- Chỉ mục cho bảng `post_availability_status`
--
ALTER TABLE `post_availability_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_of_types`
--
ALTER TABLE `post_of_types`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `post_view`
--
ALTER TABLE `post_view`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_view_ip_unique` (`ip`),
  ADD KEY `post_view_posts_id_foreign` (`posts_id`);

--
-- Chỉ mục cho bảng `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `status_of_posts`
--
ALTER TABLE `status_of_posts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `status_of_users`
--
ALTER TABLE `status_of_users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `traffic`
--
ALTER TABLE `traffic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `traffic_ip_unique` (`ip`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_statusofuserid_foreign` (`statusOfUserId`),
  ADD KEY `users_levelofuserid_foreign` (`levelOfUserId`),
  ADD KEY `users_verifymailid_foreign` (`VerifymailId`);

--
-- Chỉ mục cho bảng `verifymails`
--
ALTER TABLE `verifymails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `directions`
--
ALTER TABLE `directions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `helps`
--
ALTER TABLE `helps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `help_messages`
--
ALTER TABLE `help_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `level_of_users`
--
ALTER TABLE `level_of_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `post_availability_status`
--
ALTER TABLE `post_availability_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `post_of_types`
--
ALTER TABLE `post_of_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `post_view`
--
ALTER TABLE `post_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `status_of_posts`
--
ALTER TABLE `status_of_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `status_of_users`
--
ALTER TABLE `status_of_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `traffic`
--
ALTER TABLE `traffic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `verifymails`
--
ALTER TABLE `verifymails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_postid_foreign` FOREIGN KEY (`postId`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_categoryid_foreign` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_directionid_foreign` FOREIGN KEY (`directionId`) REFERENCES `directions` (`id`),
  ADD CONSTRAINT `posts_post_availability_status_id_foreign` FOREIGN KEY (`post_availability_status_id`) REFERENCES `post_availability_status` (`id`),
  ADD CONSTRAINT `posts_postoftypeid_foreign` FOREIGN KEY (`postOfTypeId`) REFERENCES `post_of_types` (`id`),
  ADD CONSTRAINT `posts_regionid_foreign` FOREIGN KEY (`regionId`) REFERENCES `regions` (`id`),
  ADD CONSTRAINT `posts_sellerid_foreign` FOREIGN KEY (`sellerId`) REFERENCES `sellers` (`id`),
  ADD CONSTRAINT `posts_statusofpostid_foreign` FOREIGN KEY (`statusOfPostId`) REFERENCES `status_of_posts` (`id`),
  ADD CONSTRAINT `posts_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `post_view`
--
ALTER TABLE `post_view`
  ADD CONSTRAINT `post_view_posts_id_foreign` FOREIGN KEY (`posts_id`) REFERENCES `posts` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_levelofuserid_foreign` FOREIGN KEY (`levelOfUserId`) REFERENCES `level_of_users` (`id`),
  ADD CONSTRAINT `users_statusofuserid_foreign` FOREIGN KEY (`statusOfUserId`) REFERENCES `status_of_users` (`id`),
  ADD CONSTRAINT `users_verifymailid_foreign` FOREIGN KEY (`VerifymailId`) REFERENCES `verifymails` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
