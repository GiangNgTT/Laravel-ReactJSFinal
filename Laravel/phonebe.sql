-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2022 at 03:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phonebe`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(2, 'Iphone', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(3, 'Xiaomi', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(4, 'Sony', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(5, 'Vivo', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(6, 'Nokia', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(7, 'Oppo', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(8, 'Google pixel', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(9, 'Huawei', '2022-07-22 19:18:49', '2022-07-22 19:18:49'),
(10, 'One plus', '2022-07-22 19:18:49', '2022-07-22 19:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `cus_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cusphone_number` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_day` date NOT NULL,
  `received_day` date NOT NULL,
  `phone_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_emei` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `cus_name`, `cusphone_number`, `repair_day`, `received_day`, `phone_name`, `phone_emei`, `model`, `note`, `product_id`, `created_at`, `updated_at`) VALUES
(5, 'Willy Waters', '172-786-8778', '2022-07-23', '2022-07-23', 'Polly Beer MD', '4905629477', 'Madisyn Mayert', 'Consectetur dolores deleniti at voluptas et ut. Est quia at soluta magni sit. Doloribus deleniti minus quidem et quis nulla.', 3, '2022-07-22 19:20:31', '2022-07-22 19:20:31'),
(6, 'Zane Ebert', '665-974-0255', '2022-07-23', '2022-07-23', 'Chanelle Waters', '8731357725', 'Casey Runolfsdottir I', 'Aperiam blanditiis veritatis quia modi rerum. Sequi officiis voluptate facilis non maxime minima. Recusandae dolorem facere voluptatem iste ex numquam autem. Non optio quidem in iure numquam doloribus.', 4, '2022-07-22 19:20:31', '2022-07-22 19:20:31'),
(11, 'ghj', 'ghjhg', '2022-08-02', '2022-08-03', 'gh', 'ghjhg', 'ghjh', 'hjh', NULL, '2022-08-18 08:59:29', '2022-08-18 08:59:29'),
(13, 'fgrth', 'fghg', '2022-08-03', '2022-08-18', 'Giang', 'df', 'cdf', 'rtrh', NULL, '2022-08-18 11:08:29', '2022-08-18 11:08:29'),
(14, 'dfvf', 'dfgdfg', '2022-08-03', '2022-08-19', 'dgfgh', 'dffd', 'dfdfg', 'sdfdg', NULL, '2022-08-18 16:09:27', '2022-08-18 16:09:27'),
(15, 'Skyyy', '64326419494', '2022-08-19', '2022-08-25', 'oppo', 'cdsc', '21edc', 'ccscss', NULL, '2022-08-19 10:59:22', '2022-08-19 10:59:22'),
(16, 'Skyyy', '64326419494', '2022-08-19', '2022-08-25', 'oppo', 'cdsc', '21edc', 'ccscss', NULL, '2022-08-19 10:59:28', '2022-08-19 10:59:28');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_07_21_030352_create_admin_table', 1),
(3, '2022_07_21_030558_create_brands_table', 1),
(4, '2022_07_21_030659_create_versions_table', 1),
(5, '2022_07_21_030718_create_services_table', 1),
(6, '2022_07_21_030748_create_products_table', 1),
(7, '2022_07_21_045123_create_customers_table', 1),
(8, '2022_07_26_132740_create_slides_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,3) NOT NULL,
  `version_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `img`, `description`, `price`, `version_id`, `service_id`, `created_at`, `updated_at`) VALUES
(3, 'Thay màn hình Huawei P50 pro', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658845360/m%C3%A0n_h%C3%ACnh_Huawei_P50_pro_siolfv.png', 'Hãy để ngón tay của bạn chạm vào cảm ứng màn hình thoải mái nhất', 8207.330, 8, 2, '2022-07-22 19:19:53', '2022-07-22 19:19:53'),
(4, 'Thay chân sạc Redmi note 5 pro', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658844816/duoi-sac-micro-redmi-note-5-pro-thumb-removebg-preview_1_qsfoxk.png', 'Một chân sạc đảm bảo và an toàn, bạn còn chần chờ gì nữa?', 666.000, 2, 4, '2022-07-22 19:19:53', '2022-07-22 19:19:53'),
(20, 'Thay vỏ iPhone SE', '', 'iPhone SE là dòng điện thoại cao cấp của Apple với thiết kế đẹp, kim loại nguyên khối. Tuy nhiên trong quá trình sử dụng, vỏ là phần tiếp xúc với bên ngoài nhiều nhất nên dễ bị hư hỏng như: trầy xước, bị bể hay bị móp, cấn', 350.000, 11, 1, '2022-07-01 14:45:01', '2022-08-04 08:14:47'),
(21, 'Thay vỏ iPhone 13 Pro', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658846837/hqx2nvoxmmkjhpn9vgtv.png\r\n\r\n', 'Vỏ điện thoại bị xước do bị bỏ chung và va chạm với những vật dụng sắc nhọn.', 3500.000, 7, 1, '2022-07-20 14:49:21', '2022-07-20 14:49:21'),
(22, 'Thay vỏ iPhone 12 Pro max', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658846687/ujfjnhgzbpnicfzw0kqk.png', 'Với phần khung sườn vỏ bằng thép giúp chiếc điện thoại iPhone 12 Pro Max trở nên chắc chắn và bền bỉ. Tuy nhiên nếu iPhone 12 Pro Max bị rơi hay va đập mạnh thì sườn vỏ sau không tránh khỏi vỡ, nứt, cong, móp và cần phải thay thế mới', 450.000, 12, 1, '2022-07-07 14:54:34', '2022-07-06 14:54:34'),
(23, 'Thay vỏ iPhone XS', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658846248/tgojr6youas71knonm2v.webp', 'Phiên bản cao cấp nhất iPhone Xs Max của Apple năm nay nổi bật với cấu hình mạnh mẽ và thiết kế sang trọng. Tuy nhiên trong quá trình sử dụng do sơ ý làm rơi, va đập khiến chiếc Xs Max của mình trầy vỏ, móp vỏ máy khiến mất thẩm mĩ', 1750.000, 13, 1, '2022-07-01 14:59:05', '2022-07-01 14:59:05'),
(24, 'Thay mặt kính Samsung A50/A50', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658847129/gv8hw1dnj89bcluui6sk.png\r\n\r\n', 'Sử dụng linh kiện được nhập khẩu từ nhà sản xuất, có nguồn gốc rõ ràng. Ưu đãi kiểm tra, vệ sinh máy hoàn toàn miễn phí', 340.000, 14, 2, '2022-07-06 15:04:47', '2022-07-07 15:04:47'),
(25, 'Thay mặt kính Xiaomi Mi Max 3', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658847427/ypcrv2eye8c3buv6worb.png', 'Đơ/liệt cảm ứng là một hiện tượng khá phổ biến trên các thiết bị smartphone sau khi làm rơi', 350.000, 15, 2, '2022-07-05 15:09:47', '2022-07-07 15:09:47'),
(26, 'Thay mặt kính IPhone 11 pro', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658847748/bijvcficdsbxppaplzu7.png\r\n', 'iPhone 11 Pro sở hữu màn hình công nghệ mới mang tên Super Retina XDR OLED cùng với kích thước lên tới 5.8 inch giúp tăng trải nghiệm hiển thị cho người dùng. Ngoài ra, màn hình này còn được trang bị tính năng hạn chế trầy xước giúp tăng độ bền cho m', 1250.000, 16, 2, '2022-07-06 15:11:40', '2022-07-06 15:11:40'),
(27, 'Thay màn hình Xiaomi Note 8', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658847886/vbqza6ijgzmuwor1qj9e.png\r\n', 'Xiaomi Redmi Note 8 sở hữu thiết kế nguyên khối vô cùng cứng cáp cùng mặt lưng kính cường lực sang trọng. Công nghệ màn hình IPS LCD với độ phân giải Full HD+ giúp mọi hình ảnh được hiển thị sắc nét, sinh động.', 1000.000, 17, 2, '2022-07-19 15:14:19', '2022-07-06 15:14:19'),
(28, 'Thay pin IPhone 6 Plus', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658848048/hmyebluysbwikxdlamml.png', 'iPhone 6 Plus sau một thời gian sử dụng bị giảm hiệu năng, giật lag và thường hay sập nguồn. Nếu bạn đang gặp phải các tình trạng trên thì nhiều khả năng chiếc iPhone của bạn đã bị chai pin', 400.000, 18, 3, '2022-07-01 15:16:26', '2022-07-01 15:16:26'),
(29, 'Thay pin Xiaomi note 7', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658848131/hi039vwkcue9ta4m4cof.png\r\n\r\n', 'Là một chiếc smartphone giải trí tốt trong tầm giá, sẽ rất khó chịu khi Redmi Note 7 gặp phải lỗi về pin. Nếu bạn đang phải trải qua tình huống này, dịch vụ thay pin Xiaomi sẽ là giải pháp dành cho bạn', 300.000, 19, 3, '2022-07-06 15:18:16', '2022-07-07 15:18:16'),
(30, 'Thay pin Samsung Galaxy A11 20', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658848268/vc7pp90m18oy32idc2u5.png\r\n', 'Khi pin Samsung A11 của bạn bị chai với các dấu hiệu/ biểu hiện sau, hãy thay ngay một viên pin zin công ty Samsung  Galaxy A11 2020, A115F HQ-70N - 4000 mAh', 160.000, 20, 3, '2022-07-06 15:20:14', '2022-07-07 15:20:14'),
(31, 'Thay pin Xiaomi Pocophone F1', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658848376/tgta4p0fx968zeht1lce.png\r\n', 'Thời gian sử dụng, thời gian dùng của pin sụt giảm nghiêm trọng, thậm chí chỉ còn một nửa so với lúc ban đầu, thời gian sạc pin nhanh chóng nhưng cũng thiết bị cũng tiêu hao nhanh chóng', 350.000, 21, 3, '2022-07-01 15:22:44', '2022-07-01 15:22:44'),
(32, 'Sửa camara sau Xiaomi Mi A2', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658848572/gzze6rhmoicb53bag2io.png', 'Trong quá trình sử dụng điện thoại lâu dài, những va chạm trong lúc di chuyển hoặc làm rơi điện thoại từ độ cao khiến camera sau bị hư, bị vỡ hoặc gặp phải những lỗi không mong muốn là điều không tránh khỏi.', 450.000, 22, 4, '2022-07-06 15:26:50', '2022-07-05 15:26:50'),
(33, 'Sửa ổ cứng Samsung Galaxy', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658848893/vcuwx0thdafndxgybvv6.png', 'SAMSUNG GALAXY BỊ HƯ Ổ CỨNG\r\n', 200.000, 23, 4, '2022-07-07 15:28:28', '2022-07-01 15:28:28'),
(34, 'Thay loa trong Samsung Galaxy ', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658849067/rheq8tuoraln73mrern5.png', 'Với hệ thống loa đơn, chất lượng âm thanh ở tầm trung. Hệ thống âm thanh này vẫn có thể đáp ứng mọi nhu cầu thường ngày của người dùng như nghe nhạc, xem phim, gọi điện và chơi game', 550.000, 24, 4, '2022-07-01 15:33:27', '2022-07-01 15:33:27'),
(35, 'Thay loa iPhone 11', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658849164/y7etcmgkz6jhlw95vuig.png\r\n', 'Loa trong là một trong những bộ phận giúp người dùng giải trí thư giãn khi nghe nhạc, xem phim sử dụng tai nghe hay thực hiện chức năng nghe gọi', 800.000, 16, 4, '2022-07-06 15:37:15', '2022-07-06 15:37:15'),
(37, 'Thay main iPhone 13 Pro Max có', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1659625398/yoztpvuw1bftpubmpniw.png', 'Thay main iphone mới, chính hãng, giá rẻ', 0.000, 7, 5, NULL, NULL),
(39, 'Thay main Xiaomi note 7', '', 'Thay main mới chính hãng, chất lượng', 1.490, 19, 5, NULL, NULL),
(40, 'Thay  main iPhone 6', '', 'Thay main iphone chính hãng', 2.300, 18, 5, NULL, NULL),
(41, 'Thay main SamSung A50', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1659625337/wcnp0epttyav22pxzylj.png\r\n', 'Thay main SamSung A50 chính hãng', 2.200, 14, 5, NULL, NULL),
(42, 'Thay main IPhone 11', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1659625415/yjiegtbxg7a3q44r3n4h.png', 'Thay main chính hãng', 5.500, 27, 5, NULL, NULL),
(43, 'Thay vỏ iPhone SE-nguyet', 'https://res.cloudinary.com/datpnv23apasserellnumeriques/image/upload/v1658846065/hr9bc3nwfuj3ytuyrw7c.png', 'iPhone SE là dòng điện thoại cao cấp của Apple với thiết kế đẹp, kim loại nguyên khối. Tuy nhiên trong quá trình sử dụng, vỏ là phần tiếp xúc với bên ngoài nhiều nhất nên dễ bị hư hỏng như: trầy xước, bị bể hay bị móp, cấn', 350.000, 11, 1, '2022-08-04 08:13:59', '2022-08-04 08:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `created_at`, `updated_at`) VALUES
(1, 'Thay vỏ', '2022-07-22 19:19:43', '2022-07-22 19:19:43'),
(2, 'Thay màn hình - Ép kính', '2022-07-22 19:19:43', '2022-07-22 19:19:43'),
(3, 'Thay pin', '2022-07-22 19:19:43', '2022-07-22 19:19:43'),
(4, 'Sữa chữa phần cứng', '2022-07-22 19:19:43', '2022-07-22 19:19:43'),
(5, 'thay main điện thoại ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `slide` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `slide`, `created_at`, `updated_at`) VALUES
(1, 'https://res.cloudinary.com/datpnv23apasserellnumer', NULL, NULL),
(2, 'https://res.cloudinary.com/datpnv23apasserellnumer', NULL, NULL),
(3, 'https://res.cloudinary.com/datpnv23apasserellnumer', NULL, NULL),
(4, 'https://res.cloudinary.com/datpnv23apasserellnumer', NULL, NULL),
(5, 'https://res.cloudinary.com/datpnv23apasserellnumer', NULL, NULL),
(6, 'https://res.cloudinary.com/datpnv23apasserellnumer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `version_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `brand_id`, `version_name`, `created_at`, `updated_at`) VALUES
(1, 3, 'Redmi 10', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(2, 3, 'Redmi note 9 pro', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(3, 8, 'Google pixel 6', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(4, 3, 'Redmi note 9 5G pro', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(5, 6, 'Nokia G50', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(6, 10, 'Oneplus 8T 5G', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(7, 2, 'Iphone 13 pro', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(8, 9, 'Huawei P50 pro', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(10, 10, 'Oneplus Nord N10', '2022-07-22 19:19:03', '2022-07-22 19:19:03'),
(11, 2, 'iPhone SE', '2022-07-03 14:43:59', '2022-07-03 14:43:59'),
(12, 2, 'iPhone 12', '2022-07-01 14:53:56', '2022-07-01 14:53:56'),
(13, 2, 'iPhone XS', '2022-07-01 14:58:15', '2022-07-01 14:58:15'),
(14, 1, 'Sam sung A50', '2022-07-22 15:04:04', '2022-07-22 15:04:04'),
(15, 3, 'Xiaomi Mi Max 3', '2022-07-05 15:07:35', '2022-07-05 15:07:35'),
(16, 2, 'iPhone 11 pro', '2022-07-01 15:11:17', '2022-07-02 15:11:17'),
(17, 3, 'Xiaomi Note 8\r\n\r\n', '2022-07-06 15:14:01', '2022-07-06 15:14:01'),
(18, 2, 'iPhone 6 Plus', '2022-07-05 15:16:06', '2022-07-06 15:16:06'),
(19, 3, 'Xiaomi note 7', '2022-07-01 15:17:55', '2022-07-01 15:17:55'),
(20, 1, 'Samsung Galaxy A11 2020', '2022-07-06 15:19:53', '2022-07-15 15:19:53'),
(21, 3, 'Xiaomi Pocophone F1', '2022-07-05 15:22:03', '2022-07-06 15:22:03'),
(22, 3, 'Xiaomi Mi A2', '2022-07-13 15:25:04', '2022-07-14 15:25:04'),
(23, 1, 'Samsung Galaxy', '2022-07-13 15:28:02', '2022-07-06 15:28:02'),
(24, 1, 'Samsung Galaxy A5 2017', '2022-07-07 15:33:00', '2022-07-07 15:33:00'),
(25, 1, 'Galaxy nguyet ultra', '2022-08-02 08:35:27', '2022-08-02 08:35:27'),
(26, 1, 'Galaxy nguyet ultra', '2022-08-02 08:39:32', '2022-08-02 08:39:32'),
(27, 2, 'Iphone 11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customers_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_version_id_foreign` (`version_id`),
  ADD KEY `products_service_id_foreign` (`service_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `versions_brand_id_foreign` (`brand_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `versions`
--
ALTER TABLE `versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_version_id_foreign` FOREIGN KEY (`version_id`) REFERENCES `versions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `versions`
--
ALTER TABLE `versions`
  ADD CONSTRAINT `versions_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
