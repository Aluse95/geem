-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 20, 2023 lúc 06:50 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `geem`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(11) NOT NULL,
  `json_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_information`)),
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role`, `json_information`, `is_super_admin`, `status`, `remember_token`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Thắng Nguyễn', 'huuthangb2k50@gmail.com', '$2y$10$1IT8.iwpx.s9JyY.7RZdFOwPHQt4gyMWLgIp0obcdvu/kveTJGFwi', 2, NULL, 1, 'active', NULL, NULL, NULL, '2021-09-24 08:48:18', '2022-12-08 03:56:38'),
(2, 'Test', 'test@gmail.com', '$2y$10$7gxfGSFLfg1BwfRZfsBCL.UNBLgP/R.c87SeIelNhACtfyVYACjoe', 1, NULL, 0, 'active', NULL, NULL, NULL, '2022-07-08 11:13:53', '2022-07-08 11:13:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_09_21_090133_create_admins_table', 1),
(5, '2021_09_29_090019_create_tb_options_table', 1),
(6, '2021_09_29_090048_create_tb_logs_table', 1),
(7, '2021_09_29_090107_create_tb_admin_menus_table', 1),
(8, '2021_09_29_090214_create_tb_modules_table', 1),
(9, '2021_09_29_090233_create_tb_module_functions_table', 1),
(10, '2021_09_29_090301_create_tb_roles_table', 1),
(11, '2021_09_29_090402_create_tb_menus_table', 1),
(12, '2021_09_29_090455_create_tb_blocks_table', 1),
(13, '2021_09_29_090509_create_tb_block_contents_table', 1),
(14, '2021_09_29_090709_create_tb_cms_taxonomys_table', 1),
(15, '2021_09_29_090743_create_tb_cms_posts_table', 1),
(16, '2021_10_09_013236_create_tb_pages_table', 1),
(17, '2021_10_26_210129_change_tb_users_table', 1),
(24, '2022_04_25_163138_create_tb_widgets_table', 3),
(25, '2022_04_25_163922_create_tb_components_table', 3),
(26, '2022_04_26_155008_create_tb_widget_configs_table', 4),
(27, '2022_04_26_155035_create_tb_component_configs_table', 4),
(28, '2022_06_02_102255_create_tb_bookings_table', 5),
(29, '2022_02_14_165457_create_tb_contacts_table', 6),
(30, '2022_02_14_170033_create_tb_orders_table', 6),
(31, '2022_02_14_170056_create_tb_order_details_table', 6),
(32, '2022_06_27_162451_create_tb_popups_table', 7),
(33, '2022_06_29_095757_change_users_table', 8),
(35, '2022_07_07_144844_create_tb_affiliate_payments_table', 9),
(36, '2022_07_12_210520_create_tb_affiliate_historys_table', 10),
(37, '2022_12_02_162806_create_tb_branchs_table', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_admin_menus`
--

CREATE TABLE `tb_admin_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT 'active',
  `toolbar` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_admin_menus`
--

INSERT INTO `tb_admin_menus` (`id`, `parent_id`, `name`, `icon`, `url_link`, `iorder`, `status`, `toolbar`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(3, 10, 'Quản lý người dùng', 'fa fa-user-plus', 'admins', 3, 'active', 'deactive', 1, 1, '2021-09-30 07:38:46', '2022-03-02 19:25:15'),
(5, 10, 'Quản lý nhóm quyền', 'fa fa-users', 'roles', 4, 'active', 'active', 1, 1, '2021-09-30 09:57:11', '2022-03-02 19:25:00'),
(6, 10, 'Quản lý Menu Admin', 'fa fa-tasks', 'admin_menus', 5, 'active', 'deactive', 1, 1, '2021-09-30 21:41:45', '2022-03-02 19:26:32'),
(10, NULL, 'Quản lý hệ thống', 'fa fa-server', NULL, 4, 'active', 'deactive', 1, 1, '2021-10-01 17:10:06', '2022-12-31 04:36:46'),
(13, NULL, 'Quản lý cấu hình', 'fa fa-home', NULL, 3, 'active', 'deactive', 1, 1, '2021-10-02 10:26:41', '2022-12-31 04:36:36'),
(17, 71, 'Quản lý Khối nội dung', 'fa fa-object-group', 'block_contents', 999, 'active', 'deactive', 1, 1, '2021-10-07 09:08:48', '2022-08-06 08:30:21'),
(41, 71, 'Quản lý Pages - Trang', 'fa fa-clone', 'pages', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:15:57', '2022-08-06 08:30:18'),
(42, 71, 'Quản lý Menu Website', 'fa fa-bars', 'menus', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:19:53', '2022-08-06 08:30:15'),
(44, 70, 'Quản lý hình ảnh hệ thống', 'fa fa-picture-o', 'web_image', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:03', '2022-08-06 08:29:09'),
(45, 70, 'Quản lý thông tin Website', 'fa fa-globe', 'web_information', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:28', '2022-08-06 08:29:06'),
(46, 70, 'Quản lý liên kết MXH', 'fa fa-share-alt-square', 'web_social', NULL, 'active', 'deactive', 1, 1, '2022-03-02 18:23:43', '2022-08-06 08:29:03'),
(51, NULL, 'Quản lý nội dung', 'fa fa-folder', NULL, 2, 'active', NULL, 1, 1, '2022-05-30 08:46:23', '2022-08-06 08:32:52'),
(52, 51, 'Quản lý danh mục - thể loại', NULL, 'cms_taxonomys', 1, 'active', NULL, 1, 1, '2022-05-30 08:46:51', '2022-05-30 08:46:51'),
(53, 51, 'Quản lý bài viết', NULL, 'cms_posts', 2, 'active', NULL, 1, 1, '2022-05-30 09:56:47', '2022-05-30 09:56:47'),
(58, 71, 'Quản lý mã nhúng CSS - JS', NULL, 'web_source', NULL, 'active', NULL, 1, 1, '2022-06-07 02:41:52', '2022-08-06 08:30:12'),
(59, 72, 'Quản lý liên hệ', NULL, 'contacts', 3, 'active', NULL, 1, 1, '2022-06-08 03:16:46', '2022-08-06 08:35:02'),
(62, 72, 'Quản lý Đăng ký bản tin', NULL, 'call_request', 2, 'active', NULL, 1, 1, '2022-06-10 03:01:44', '2022-12-07 02:40:22'),
(70, 13, 'Cấu hình thông tin chung', 'fa fa-bars', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:28:32', '2022-08-06 08:31:29'),
(71, 13, 'Cấu hình Website', 'fa fa-object-group', '#', 2, 'active', NULL, 1, 1, '2022-08-06 08:29:55', '2022-08-06 08:31:10'),
(72, NULL, 'Quản lý khách hàng', 'fa fa-opencart', '#', 1, 'active', NULL, 1, 1, '2022-08-06 08:32:30', '2022-08-06 08:34:15'),
(76, NULL, 'Khai báo Module Functions', NULL, 'module_functions', 5, 'active', NULL, 1, 1, '2022-12-31 01:44:58', '2022-12-31 04:36:52'),
(77, 76, 'Khai báo Modules', NULL, 'modules', 1, 'active', NULL, 1, 1, '2022-12-31 01:45:41', '2022-12-31 01:45:41'),
(78, 76, 'Khai báo Blocks', NULL, 'blocks', 2, 'active', NULL, 1, 1, '2022-12-31 01:46:03', '2022-12-31 01:46:03'),
(79, 76, 'Khai báo tham số', NULL, 'options', 3, 'active', NULL, 1, 1, '2022-12-31 01:46:24', '2022-12-31 01:46:24'),
(82, 51, 'Quản lý dịch vụ', NULL, 'cms_services', 3, 'active', NULL, 1, 1, '2023-05-19 09:09:55', '2023-05-19 09:09:55'),
(83, 51, 'Quản lý dự án', NULL, 'cms_resources', 4, 'active', NULL, 1, 1, '2023-05-19 09:10:18', '2023-05-19 09:10:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_historys`
--

CREATE TABLE `tb_affiliate_historys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `order_total_money` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_percent` double(20,2) NOT NULL DEFAULT 0.00,
  `affiliate_point` double(20,2) DEFAULT NULL,
  `affiliate_money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_historys`
--

INSERT INTO `tb_affiliate_historys` (`id`, `is_type`, `user_id`, `order_id`, `order_total_money`, `affiliate_percent`, `affiliate_point`, `affiliate_money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'product', 3, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 17:51:21', '2022-07-12 18:52:58'),
(3, 'product', 2, 9, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:18:05', '2022-07-12 18:52:58'),
(4, 'service', 3, 14, 0.00, 3.00, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(5, 'service', 2, 14, 0.00, 2.50, 0.00, 0.00, '', NULL, 'processed', NULL, NULL, '2022-07-12 18:53:27', '2022-07-12 18:53:27'),
(6, 'product', 3, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(7, 'product', 2, 11, 3500000000.00, 1.50, 52500000.00, 52500000.00, '', NULL, 'processed', NULL, NULL, '2022-07-13 08:11:45', '2022-07-13 08:11:54'),
(8, 'product', 3, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(9, 'product', 2, 16, 5350000.00, 1.50, 80250.00, 80250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(10, 'service', 3, 15, 450000.00, 3.00, 13500.00, 13500.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17'),
(11, 'service', 2, 15, 450000.00, 2.50, 11250.00, 11250.00, '', NULL, 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_affiliate_payments`
--

CREATE TABLE `tb_affiliate_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` double(20,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_affiliate_payments`
--

INSERT INTO `tb_affiliate_payments` (`id`, `user_id`, `money`, `description`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 3, 5000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: Vietcombank Hà Tây', NULL, 'new', NULL, NULL, '2022-07-13 08:29:49', '2022-07-13 08:29:49'),
(2, 3, 15000000.00, 'Số tài khoản: 1122335789\r\nChủ tài khoản: Nguyễn Hữu Thắng\r\nTên ngân hàng: MB Bank', '{\"admin_note\":\"ThangNH \\u0111ang x\\u1eed l\\u00fd \\u0111\\u1ec1 ngh\\u1ecb thanh to\\u00e1n n\\u00e0y\"}', 'processing', NULL, 1, '2022-07-13 08:33:09', '2022-07-13 10:40:49'),
(3, 3, 50000.00, NULL, NULL, 'new', NULL, NULL, '2022-07-13 09:01:39', '2022-07-13 09:01:39'),
(4, 3, 5350000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":16}', 'processed', NULL, NULL, '2022-07-14 04:08:05', '2022-07-14 04:08:05'),
(5, 3, 450000.00, NULL, '{\"admin_note\":\"Payment for orders by affiliate wallet\",\"order_id\":15}', 'processed', NULL, NULL, '2022-07-14 04:28:17', '2022-07-14 04:28:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_blocks`
--

CREATE TABLE `tb_blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_blocks`
--

INSERT INTO `tb_blocks` (`id`, `name`, `description`, `block_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Khối hình ảnh quảng cáo', 'Block used for displaying banner advertising images, with or without additional content', 'banner', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"slide\",\r\n                \"static\",\r\n                \"logo_partner\"\r\n	]\r\n}', 1, 2, 'active', 1, 1, '2021-10-07 04:49:19', '2022-12-31 01:47:03'),
(11, 'Khối nội dung tùy chọn', 'Blocks are used for optional content and styled accordingly', 'custom', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"about_us\",\r\n		\"contact\",\r\n		\"counter\",\r\n		\"testimonial\",\r\n		\"why_choose\"\r\n	]\r\n}', 1, 3, 'active', 1, 1, '2021-10-11 16:44:15', '2023-05-19 08:57:58'),
(20, 'Khối nội dung đầu trang', NULL, 'header', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, 1, 'active', 1, 1, '2022-05-30 03:05:17', '2022-12-05 09:11:16'),
(21, 'Khối nội dung chân trang', NULL, 'footer', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"branch.default\"\r\n	]\r\n}', 1, 99, 'active', 1, 1, '2022-05-30 03:06:28', '2022-12-05 09:11:25'),
(22, 'Khối danh sách dịch vụ nổi bật', NULL, 'cms_service', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 5, 'active', 1, 1, '2022-05-31 07:25:43', '2022-12-31 03:36:17'),
(23, 'Khối danh sách bài viết nổi bật', NULL, 'cms_post', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	]\r\n}', 1, 7, 'active', 1, 1, '2022-05-31 09:53:32', '2023-01-03 15:54:48'),
(24, 'Khối danh sách dự án nổi bật', NULL, 'cms_resource', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	],\r\n	\"layout\":[\r\n		\"furniture\"\r\n	]\r\n}', 1, 6, 'active', 1, 1, '2022-06-01 08:38:54', '2023-05-19 10:14:07'),
(27, 'Khối hiển thị nội dung chính', 'Khối hiển thị nội dung theo từng chức năng cụ thể', 'main', '{\r\n	\"template\":[\r\n		\"post.detail\",\r\n		\"post.default\",\r\n		\"product.detail\",\r\n		\"product.default\",\r\n		\"service.detail\",\r\n		\"service.default\",\r\n		\"department.default\",\r\n		\"doctor.default\",\r\n		\"doctor.detail\",\r\n		\"resource.detail\",\r\n		\"resource.default\",\r\n		\"contact.default\",\r\n		\"cart.default\",\r\n		\"user.default\",\r\n		\"tags.default\",\r\n		\"search.default\",\r\n		\"page.price\",\r\n		\"page.content\",\r\n		\"branch.default\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-06-02 11:23:39', '2022-12-05 10:19:52'),
(35, 'Khối nội dung form đăng ký', NULL, 'form', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.intro\"\r\n	],\r\n	\"layout\":[\r\n		\"booking\"\r\n	]\r\n}', 1, 8, 'active', 1, 1, '2022-09-13 09:23:28', '2023-05-20 04:15:24'),
(36, 'Khối danh sách sản phẩm nổi bật', NULL, 'cms_product', '{\r\n	\"template\":[\r\n		\"home.primary\",\r\n		\"page.default\"\r\n	]\r\n}', 1, 4, 'active', 1, 1, '2022-10-08 03:22:14', '2022-12-31 03:36:05'),
(37, 'Khối danh sách câu hỏi thường gặp - FAQs', NULL, 'faq', '{\r\n	\"template\":[\r\n		\"home.primary\"\r\n	],\r\n	\"layout\":[\r\n		\"default\"\r\n	]\r\n}', 1, NULL, 'deactive', 1, 1, '2022-10-17 04:36:18', '2022-11-30 07:21:44'),
(39, 'Khối nội dung Page Giới thiệu', NULL, 'introduce', '{\r\n	\"template\":[\r\n		\"page.intro\"\r\n	],\r\n	\"layout\":[\r\n		\"banner\",\r\n		\"company\",\r\n		\"teammate\"\r\n	]\r\n}', 1, NULL, 'active', 1, 1, '2023-05-19 08:55:56', '2023-05-19 08:55:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_block_contents`
--

CREATE TABLE `tb_block_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `block_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `url_link_title` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_block_contents`
--

INSERT INTO `tb_block_contents` (`id`, `parent_id`, `title`, `brief`, `content`, `block_code`, `json_params`, `image`, `image_background`, `icon`, `url_link`, `url_link_title`, `position`, `system_code`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(362, NULL, 'Khối nội dung banner đầu trang', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":\"slide\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 09:48:02', '2023-05-19 09:50:26'),
(363, 362, 'kiến tạo không gian sống hoàn hảo', NULL, NULL, 'banner', '{\"title\":{\"en\":\"Create the perfect living space\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":\"Contact\"}}', '/data/cms-image/1/resource/3.jpg', NULL, NULL, '/lien-he', 'Liên hệ', NULL, NULL, 1, 'active', 1, 1, '2023-05-19 09:49:41', '2023-05-20 02:45:28'),
(364, 362, 'kiến tạo không gian sống hoàn hảo', NULL, NULL, 'banner', '{\"title\":{\"en\":\"Create the perfect living space\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":\"Contact\"}}', '/data/cms-image/1/resource/Model.6.png', NULL, NULL, '/lien-he', 'Liên hệ', NULL, NULL, 2, 'active', 1, 1, '2023-05-19 09:51:20', '2023-05-20 02:45:36'),
(365, 362, 'kiến tạo không gian sống hoàn hảo', NULL, NULL, 'banner', '{\"title\":{\"en\":\"Create the perfect living space\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":\"Contact\"}}', '/data/cms-image/1/Banner/lux11.jpg', NULL, NULL, '/lien-he', 'Liên hệ', NULL, NULL, 3, 'active', 1, 1, '2023-05-19 09:52:35', '2023-05-20 02:45:43'),
(366, NULL, 'Liên hệ <span class=\"text-warning\">tư vấn</span> ngay với chúng tôi', NULL, NULL, 'custom', '{\"title\":{\"en\":\"Contact <span class=\\\"text-warning\\\">us now<\\/span> for a consultation\"},\"layout\":\"contact\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 09:53:42', '2023-05-20 02:25:47'),
(367, NULL, 'Về chúng tôi', 'Khởi nguồn từ niềm say mê với kiến trúc, nội thất của những KTS, KS thâm niên và gu thẩm mỹ, GEEM được thành lập bởi đội ngũ KTS, KS cùng chí hướng với mong muốn mang đến “tổ ấm” hoàn hảo thể hiện được nét đẹp cá tính của gia chủ từ kiến trúc đến nội thất, ngoại thất. GEEM mang đến cho khách hàng', NULL, 'custom', '{\"title\":{\"en\":\"About us\"},\"layout\":\"about_us\",\"brief\":{\"en\":\"Originating from the passion for architecture and interior of senior architects, architects and aesthetic taste, GEEM was founded by a team of like-minded architects and architects with the desire to bring the perfect \\\"home\\\" to express. Get the beauty of the owner\'s personality from architecture to interior and exterior. GEEM brings to customers\"},\"content\":{\"en\":null},\"style\":null}', NULL, '/data/cms-image/1/resource/lux12.jpg', NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 09:54:47', '2023-05-20 02:28:23'),
(368, 367, '#1', 'Những thiết kế sáng tạo “độc bản” hài hòa về công năng và phong thủy.', NULL, 'custom', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":\"The \\\"unique\\\" creative designs are in harmony with function and feng shui.\"},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 09:55:41', '2023-05-20 02:28:39'),
(369, 367, '#2', 'Sở hữu xưởng sản xuất hơn 2500m2 với công nghệ sản xuất hiện đại cho ra đời những sản phẩm nội thất tốt nhất, tiết kiệm chi phí nhất.', NULL, 'custom', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":\"Owning a factory of more than 2500m2 with modern production technology to produce the best and most cost-effective furniture products.\"},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 09:55:41', '2023-05-20 02:28:57'),
(370, 367, '#3', 'Những giải pháp thi công hoàn hảo. Hạn chế tối đa những chi phí phát sinh.', NULL, 'custom', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":\"Perfect construction solutions. Minimize costs incurred.\"},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 09:55:41', '2023-05-20 02:29:18'),
(371, NULL, 'Các dự án đã thực hiện', NULL, NULL, 'custom', '{\"title\":{\"en\":null},\"layout\":\"counter\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-05-19 09:58:02', '2023-05-19 09:58:02'),
(372, 371, 'Dự án', NULL, '<span\r\ndata-from=\"100\"\r\ndata-to=\"345\"\r\ndata-refresh-interval=\"20\"\r\ndata-speed=\"2000\"\r\n></span>', 'custom', '{\"title\":{\"en\":\"Project\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:00:37', '2023-05-20 02:30:14'),
(373, 371, 'Khách hàng', NULL, '<span\r\n                      data-from=\"10\"\r\n                      data-to=\"116\"\r\n                      data-refresh-interval=\"10\"\r\n                      data-speed=\"2000\"\r\n                    ></span>', 'custom', '{\"title\":{\"en\":\"customer\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:01:12', '2023-05-20 02:30:41'),
(374, 371, 'Dự án', NULL, '<span\r\ndata-from=\"2\"\r\ndata-to=\"178\"\r\ndata-refresh-interval=\"13\"\r\ndata-speed=\"3000\"\r\n></span>', 'custom', '{\"title\":{\"en\":\"Project\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 10:00:37', '2023-05-20 02:30:21'),
(375, 371, 'Khách hàng', NULL, '<span\r\ndata-from=\"50\"\r\ndata-to=\"1523\"\r\ndata-refresh-interval=\"25\"\r\ndata-speed=\"2500\"\r\n></span>', 'custom', '{\"title\":{\"en\":\"customer\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-05-19 10:01:12', '2023-05-20 02:30:44'),
(376, NULL, 'Dịch vụ của chúng tôi', NULL, NULL, 'cms_service', '{\"title\":{\"en\":\"our services\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-05-19 10:03:02', '2023-05-20 02:31:31'),
(377, NULL, 'Dự án kiến trúc', NULL, NULL, 'cms_resource', '{\"title\":{\"en\":\"architectural project\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":\"View all\"}}', NULL, NULL, NULL, '/du-an-kien-truc', 'Xem tất cả', NULL, NULL, 6, 'active', 1, 1, '2023-05-19 10:13:05', '2023-05-20 03:26:57'),
(378, NULL, 'Dự án nội thất', NULL, NULL, 'cms_resource', '{\"title\":{\"en\":\"Furniture project\"},\"layout\":\"furniture\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":\"View all\"}}', NULL, NULL, NULL, '/du-an-noi-that', 'Xem tất cả', NULL, NULL, 7, 'active', 1, 1, '2023-05-19 10:13:48', '2023-05-20 03:27:12'),
(379, NULL, 'Lý do chọn chúng tôi', NULL, NULL, 'custom', '{\"title\":{\"en\":\"Reasons to choose us\"},\"layout\":\"why_choose\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', '/data/cms-image/1/logo/logo.png', '/data/cms-image/1/resource/lux11.jpg', NULL, NULL, NULL, NULL, NULL, 8, 'active', 1, 1, '2023-05-19 10:15:55', '2023-05-20 02:46:35'),
(380, 379, 'Miễn phí tư vấn, báo giá khái toán', 'Đội ngũ nhân sự tâm huyết từ KTS, KS, nhân nhân viên luôn sẵn sàng phục vụ Quý khách hàng 24/7.', NULL, 'custom', '{\"title\":{\"en\":\"Free consultation, approximate quotation\"},\"layout\":null,\"brief\":{\"en\":\"Enthusiastic staff from architects, engineers, staffs are always ready to serve customers 24\\/7.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, 'icon-line-heart', NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:17:13', '2023-05-20 02:48:18'),
(381, 379, 'Thiết kế sáng tạo – đúng Phong Thủy', 'Đội ngũ KTS, KS tối thiểu 5 năm kinh nghiệm. Luôn năng động sáng tạo cập nhật xu hướng mới.', NULL, 'custom', '{\"title\":{\"en\":\"Creative design \\u2013 true Feng Shui\"},\"layout\":null,\"brief\":{\"en\":\"Team of architects and engineers with at least 5 years of experience. Always active, creative, updated with new trends.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, 'icon-line-paper', NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:17:13', '2023-05-20 02:48:48'),
(382, 379, 'Thi công đúng tiến độ', 'Chúng tôi luôn cố gắng hoàn thiện dự án một cách chính xác về mặt tiến độ. Đảm bảo độ hoàn hảo tối đa về vật liệu thiết bị. Hạn chế các phát sinh không đáng có.', NULL, 'custom', '{\"title\":{\"en\":\"Construction on schedule\"},\"layout\":null,\"brief\":{\"en\":\"We always try to complete the project exactly on schedule. Ensure maximum perfection in equipment materials. Limit unnecessary occurrences.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, 'icon-line-layers', NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 10:17:13', '2023-05-20 02:49:15'),
(383, 379, 'Quy Trình làm việc rõ ràng', 'Quy trình làm việc rõ ràng, minh bạch. Quý khách hàng có thể theo dõi, nắm bắt mọi thông tin xuyên xuốt quy trình làm việc của chúng tôi.', NULL, 'custom', '{\"title\":{\"en\":\"Clear Workflow\"},\"layout\":null,\"brief\":{\"en\":\"The working process is clear and transparent. Customers can monitor and capture all information throughout our working process.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, 'icon-line-power', NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-05-19 10:17:13', '2023-05-20 02:49:40'),
(384, 379, 'Bảo hành công trình lâu dài', 'GEEM luôn đồng hành cùng quý khách trong suốt quá trình sử dụng. Bảo hành, bảo trì lên đến 6 năm sử dụng.', NULL, 'custom', '{\"title\":{\"en\":\"Long-term project warranty\"},\"layout\":null,\"brief\":{\"en\":\"GEEM always accompanies you throughout the use process. Warranty, maintenance up to 6 years of use.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, 'icon-line-check', NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-05-19 10:17:13', '2023-05-20 02:50:05'),
(385, 379, 'Tiết kiệm chi phí', 'Với lợi thế sử hữu xưởng sản xuất 2500m2. GEEM luôn cam kết mang đến cho quý khách hàng những sản phẩm chất lượng cao cấp, với chi phí tiết kiệm nhất.', NULL, 'custom', '{\"title\":{\"en\":\"Cost savings\"},\"layout\":null,\"brief\":{\"en\":\"With the advantage of owning a 2500m2 factory. GEEM is always committed to bringing customers high quality products, with the most economical cost.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, 'icon-bulb', NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-05-19 10:17:13', '2023-05-20 02:50:31'),
(386, NULL, 'Ý kiến khách hàng', NULL, NULL, 'custom', '{\"title\":{\"en\":\"customer reviews\"},\"layout\":\"testimonial\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 'active', 1, 1, '2023-05-19 10:25:04', '2023-05-20 02:51:15'),
(387, 386, 'Anh Hùng', 'Công ty FHM Việt Nam', 'Trên cả tuyệt vời, tôi rất tin tưởng khi giao ngôi nhà của mình cho GEEM thi công và thiết kế. Mọi thứ thật hoàn hảo, tôi rất ưng ý!', 'custom', '{\"title\":{\"en\":\"Mr. Hung\"},\"layout\":null,\"brief\":{\"en\":\"FHM Vietnam Company\"},\"content\":{\"en\":\"Above all, I am very confident when entrusting my house to GEEM for construction and design. Everything is perfect, I am very satisfied!\"},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:26:39', '2023-05-20 02:52:02'),
(388, 386, 'Anh Mạnh', 'Công ty FHM Việt Nam', 'Trên cả tuyệt vời, tôi rất tin tưởng khi giao ngôi nhà của mình cho GEEM thi công và thiết kế. Mọi thứ thật hoàn hảo, tôi rất ưng ý!', 'custom', '{\"title\":{\"en\":\"Mr. Manh\"},\"layout\":null,\"brief\":{\"en\":\"FHM Vietnam Company\"},\"content\":{\"en\":\"Above all, I am very confident when entrusting my house to GEEM for construction and design. Everything is perfect, I am very satisfied!\"},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:26:39', '2023-05-20 02:52:44'),
(389, 386, 'Anh Hùng', 'Công ty FHM Việt Nam', 'Trên cả tuyệt vời, tôi rất tin tưởng khi giao ngôi nhà của mình cho GEEM thi công và thiết kế. Mọi thứ thật hoàn hảo, tôi rất ưng ý!', 'custom', '{\"title\":{\"en\":\"Mr. Hung\"},\"layout\":null,\"brief\":{\"en\":\"FHM Vietnam Company\"},\"content\":{\"en\":\"Above all, I am very confident when entrusting my house to GEEM for construction and design. Everything is perfect, I am very satisfied!\"},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 10:26:39', '2023-05-20 02:52:52'),
(390, 386, 'Anh Mạnh', 'Công ty FHM Việt Nam', 'Trên cả tuyệt vời, tôi rất tin tưởng khi giao ngôi nhà của mình cho GEEM thi công và thiết kế. Mọi thứ thật hoàn hảo, tôi rất ưng ý!', 'custom', '{\"title\":{\"en\":\"Mr. Manh\"},\"layout\":null,\"brief\":{\"en\":\"FHM Vietnam Company\"},\"content\":{\"en\":\"Above all, I am very confident when entrusting my house to GEEM for construction and design. Everything is perfect, I am very satisfied!\"},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-05-19 10:26:39', '2023-05-20 02:52:38'),
(391, NULL, 'Đối tác của chúng tôi', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":\"logo_partner\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 'active', 1, 1, '2023-05-19 10:28:46', '2023-05-19 10:28:55'),
(392, 391, '#1', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/1.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(393, 391, '#2', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(394, 391, '#3', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/3.png', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(395, 391, '#4', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/4.png', NULL, NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(396, 391, '#5', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/5.png', NULL, NULL, NULL, NULL, NULL, NULL, 5, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(397, 391, '#6', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/6.png', NULL, NULL, NULL, NULL, NULL, NULL, 6, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(398, 391, '#7', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/7.png', NULL, NULL, NULL, NULL, NULL, NULL, 7, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(399, 391, '#8', NULL, NULL, 'banner', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/partner/8.png', NULL, NULL, NULL, NULL, NULL, NULL, 8, 'active', 1, 1, '2023-05-19 10:29:17', '2023-05-19 10:29:17'),
(400, NULL, 'Tin tức & sự kiện', NULL, NULL, 'cms_post', '{\"title\":{\"en\":\"news & events\"},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 'active', 1, 1, '2023-05-19 10:32:22', '2023-05-20 02:53:38'),
(401, NULL, 'Liên hệ tư vấn', NULL, NULL, 'form', '{\"title\":{\"en\":\"Consultancy contact\"},\"layout\":\"booking\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":\"Submit\"}}', NULL, '/data/cms-image/1/resource/lux.1.jpg', NULL, NULL, 'Gửi', NULL, NULL, 12, 'active', 1, 1, '2023-05-19 10:36:29', '2023-05-20 02:54:10'),
(402, NULL, 'Banner giới thiệu', NULL, NULL, 'introduce', '{\"title\":{\"en\":null},\"layout\":\"banner\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/resource/lux11.jpg', '/data/cms-image/1/resource/lux11.jpg', NULL, NULL, NULL, NULL, NULL, 13, 'active', 1, 1, '2023-05-19 10:41:29', '2023-05-19 10:42:57'),
(403, NULL, 'Về chúng tôi', 'GEEM hoạt động trong lĩnh vực thiết kế thi công nội thất trọn gói. Được thành lập từ năm 2017, với đội ngũ thiết kế chuyên môn cao, đội ngũ thi công có kinh nghiệm, đam mê với nghề và khắt khe trong từng sản phẩm, tên tuổi của GEEM đã được khẳng định qua các công trình thực tế đẳng cấp, sang trọng và đặc biệt qua sự hài lòng của khách hàng. Chúng tôi luôn hướng tới sự hoàn hảo và yếu tố nghệ thuật trong các thiết kế.', NULL, 'introduce', '{\"title\":{\"en\":\"About us\"},\"layout\":\"company\",\"brief\":{\"en\":\"GEEM operates in the field of interior design and construction package. Established in 2017, with a highly specialized design team, experienced construction team, passion for the profession and strictness in each product, GEEM\'s name has been confirmed through actual works. class, luxury and especially through customer satisfaction. We always aim for perfection and artistic elements in the designs.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 'active', 1, 1, '2023-05-19 10:42:36', '2023-05-20 04:24:55'),
(404, 403, '#1', NULL, NULL, 'introduce', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/resource/lux4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:43:48', '2023-05-19 10:48:44'),
(405, 403, '#2', NULL, NULL, 'introduce', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/resource/Model.2.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:44:34', '2023-05-19 10:48:36'),
(406, 405, '#1', NULL, NULL, 'introduce', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/resource/ge1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:45:39', '2023-05-19 10:45:39'),
(407, 405, '#2', NULL, NULL, 'introduce', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:46:22', '2023-05-19 10:46:22'),
(408, NULL, 'Đội ngũ của chúng tôi', NULL, NULL, 'introduce', '{\"title\":{\"en\":\"Our team\"},\"layout\":\"teammate\",\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 'active', 1, 1, '2023-05-19 10:49:24', '2023-05-20 04:25:20'),
(409, 408, 'ĐỘI NGŨ THIẾT KẾ SÁNG TẠO, CHUYÊN NGHIỆP', 'Kim Furniture tự hào với đội ngũ kiến trúc sư chuyên môn cao, sáng tạo độc đáo và đặc biệt tâm huyết với nghề, mang đến cho khách hàng những sản phẩm hoàn hảo nhất', NULL, 'introduce', '{\"title\":{\"en\":\"CREATIVE, PROFESSIONAL DESIGN TEAM\"},\"layout\":null,\"brief\":{\"en\":\"Kim Furniture is proud of a team of highly specialized architects, unique creations and especially dedicated to the profession, bringing customers the most perfect products.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', '/data/cms-image/1/resource/Model.3.png', NULL, NULL, NULL, NULL, NULL, NULL, 2, 'active', 1, 1, '2023-05-19 10:49:54', '2023-05-20 04:26:13'),
(410, 408, 'ĐỘI NGŨ THIẾT KẾ SÁNG TẠO, CHUYÊN NGHIỆP', 'Kim Furniture tự hào với đội ngũ kiến trúc sư chuyên môn cao, sáng tạo độc đáo và đặc biệt tâm huyết với nghề, mang đến cho khách hàng những sản phẩm hoàn hảo nhất', NULL, 'introduce', '{\"title\":{\"en\":\"CREATIVE, PROFESSIONAL DESIGN TEAM\"},\"layout\":null,\"brief\":{\"en\":\"Kim Furniture is proud of a team of highly specialized architects, unique creations and especially dedicated to the profession, bringing customers the most perfect products.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', '/data/cms-image/1/Banner/team.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', 1, 1, '2023-05-19 10:50:17', '2023-05-20 04:25:57'),
(411, 408, 'ĐỘI NGŨ THIẾT KẾ SÁNG TẠO, CHUYÊN NGHIỆP', 'Kim Furniture tự hào với đội ngũ kiến trúc sư chuyên môn cao, sáng tạo độc đáo và đặc biệt tâm huyết với nghề, mang đến cho khách hàng những sản phẩm hoàn hảo nhất', NULL, 'introduce', '{\"title\":{\"en\":\"CREATIVE, PROFESSIONAL DESIGN TEAM\"},\"layout\":null,\"brief\":{\"en\":\"Kim Furniture is proud of a team of highly specialized architects, unique creations and especially dedicated to the profession, bringing customers the most perfect products.\"},\"content\":{\"en\":null},\"style\":null,\"url_link_title\":{\"en\":null}}', '/data/cms-image/1/resource/4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 3, 'active', 1, 1, '2023-05-19 10:51:35', '2023-05-20 04:26:12'),
(412, NULL, 'Khối nội dung chính', NULL, NULL, 'main', '{\"title\":{\"en\":null},\"layout\":null,\"brief\":{\"en\":null},\"content\":{\"en\":null},\"style\":null}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'active', 1, 1, '2023-05-19 14:28:07', '2023-05-19 14:28:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_bookings`
--

CREATE TABLE `tb_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `doctor_id` bigint(20) UNSIGNED DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `booking_time` varchar(255) DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_branchs`
--

CREATE TABLE `tb_branchs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `map` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_branchs`
--

INSERT INTO `tb_branchs` (`id`, `is_type`, `name`, `city`, `district`, `address`, `phone`, `fax`, `map`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 'FHM Agency', '5', '825', 'Số 16 Trần Quốc Vượng, Cầu Giấy, Hà nội', '098 226 9600', '098 226 9611', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d29792.14029028318!2d105.7910779951155!3d21.03198432079961!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab398a2a3667%3A0x24328ecb439376f!2sFHM%20Agency!5e0!3m2!1svi!2sus!4v1670225754820!5m2!1svi!2sus\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:47:15', '2022-12-05 09:41:38'),
(2, NULL, 'Công ty cổ phần FHM Agency Hà Nội', '5', '825', '2/25 Thọ Tháp, Cầu Giấy, Hà Nội', '0393004567', '0393004567', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29792.155949030785!2d105.791078!3d21.031906!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xd0905b6cacd304da!2zQ8O0bmcgdHkgY-G7lSBwaOG6p24gdGjGsMahbmcgbeG6oWkgRkhNIFZp4buHdCBOYW0!5e0!3m2!1svi!2sus!4v1670225430705!5m2!1svi!2sus\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', NULL, 'active', 1, 1, '2022-12-05 07:49:39', '2022-12-05 07:49:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_posts`
--

CREATE TABLE `tb_cms_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_type` varchar(255) DEFAULT 'post',
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_thumb` varchar(255) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `count_visited` int(11) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_posts`
--

INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(128, 48, 'service', 'Thiết kế kiến trúc', '{\"title\":{\"en\":\"architectural design\"},\"price\":\"100000\",\"price_currency\":null,\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<h2><strong>3 L\\u00dd DO B\\u1ea0N N\\u00caN L\\u1ef0A CH\\u1eccN \\u0110\\u01a0N V\\u1eca THI\\u1ebeT K\\u1ebe N\\u1ed8I TH\\u1ea4T ?<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. T\\u1ed0I \\u01afU DI\\u1ec6N T\\u00cdCH V\\u00c0 KH\\u00d4NG GIAN<\\/strong><\\/h3>\\r\\n\\r\\n<p>Di\\u1ec7n t\\u00edch c\\u0103n nh\\u00e0 d\\u00f9 l\\u1edbn hay nh\\u1ecf c\\u0169ng c\\u1ea7n \\u0111\\u01b0\\u1ee3c b\\u1ed1 tr\\u00ed c\\u00f4ng n\\u0103ng ph\\u00f9 h\\u1ee3p \\u0111\\u1ec3 t\\u1eadn d\\u1ee5ng h\\u1ebft \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00f4ng gian v\\u00e0 gi\\u00e1 tr\\u1ecb s\\u1eed d\\u1ee5ng c\\u1ee7a nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t. \\u0110\\u1ec3 gi\\u1ea3i \\u0111\\u01b0\\u1ee3c b\\u00e0i to\\u00e1n n\\u00e0y, ch\\u00fang ta c\\u1ea7n \\u0111\\u1ebfn s\\u1ef1 h\\u1ed7 tr\\u1ee3 c\\u1ee7a c\\u00e1c chuy\\u00ean gia \\u0111\\u00f3 l\\u00e0 ki\\u1ebfn tr\\u00fac s\\u01b0.&nbsp;<\\/p>\\r\\n\\r\\n<p>L\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 kinh nghi\\u1ec7m chuy\\u00ean m\\u00f4n, ki\\u1ebfn tr\\u00fac s\\u01b0 c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra nh\\u1eefng gi\\u1ea3i ph\\u00e1p gi\\u00fap c\\u00e2n b\\u1eb1ng gi\\u1eefa mong mu\\u1ed1n c\\u1ee7a gia ch\\u1ee7 v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o c\\u00e1c y\\u1ebfu t\\u1ed1 ti\\u00eau chu\\u1ea9n trong thi\\u1ebft k\\u1ebf.&nbsp; Ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e0 ng\\u01b0\\u1eddi c\\u00f3 th\\u1ec3 h\\u00ecnh dung ra nh\\u1eefng th\\u1ee9 m\\u00e0 b\\u1ea1n kh\\u00f4ng th\\u1ec3 nh\\u00ecn th\\u1ea5y \\u0111\\u01b0\\u1ee3c, t\\u1eeb \\u0111\\u00f3 \\u0111\\u01b0a ra l\\u1eddi khuy\\u00ean h\\u1eefu \\u00edch, nh\\u1eefng gi\\u1ea3i ph\\u00e1p b\\u1ed1 tr\\u00ed cho b\\u1ea1n, k\\u1ebft h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 mong mu\\u1ed1n c\\u1ee7a b\\u1ea1n \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf ra b\\u1ea3n v\\u1ebd ho\\u00e0n h\\u1ea3o nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>T\\u1ed1i \\u01b0u h\\u00f3a di\\u1ec7n t\\u00edch kh\\u00f4ng gian nh\\u1edd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>2. TI\\u1ebeT KI\\u1ec6M TH\\u1edcI GIAN V\\u00c0 CHI PH\\u00cd<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi ti\\u1ebfp nh\\u1eadn th\\u00f4ng tin, nhu c\\u1ea7u v\\u00e0 m\\u1ee9c ng\\u00e2n s\\u00e1ch \\u0111\\u1ea7u t\\u01b0 c\\u1ee7a gia ch\\u1ee7, ki\\u1ebfn tr\\u00fac s\\u01b0 s\\u1ebd \\u0111\\u01b0a ra ph\\u01b0\\u01a1ng \\u00e1n thi\\u1ebft k\\u1ebf tr\\u00e1nh vi\\u1ec7c ph\\u00e1t sinh chi ph\\u00ed m\\u1ea5t ki\\u1ec3m so\\u00e1t. Trong b\\u1ea3n v\\u1ebd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chu\\u1ea9n s\\u1ebd bao g\\u1ed3m n\\u1ed9i th\\u1ea5t v\\u00e0 v\\u1eadt li\\u1ec7u ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 kh\\u00f4ng gian c\\u1ee7a gia ch\\u1ee7.<\\/p>\\r\\n\\r\\n<p>B\\u00e0i to\\u00e1n v\\u1ec1 chi ph\\u00ed v\\u00e0 th\\u1eddi gian \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c gi\\u1ea3i quy\\u1ebft, b\\u1ea1n kh\\u00f4ng c\\u1ea7n m\\u1ea5t qu\\u00e1 nhi\\u1ec1u th\\u1eddi gian \\u0111\\u1ec3 t\\u00ecm t\\u00f2i v\\u00e0 nghi\\u00ean c\\u1ee9u cho m\\u1ed7i lo\\u1ea1i s\\u1ea3n ph\\u1ea9m hay v\\u1eadt li\\u1ec7u. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, s\\u1ebd gi\\u00fap b\\u1ea1n ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c chi ph\\u00ed di chuy\\u1ec3n mua s\\u1eafm, s\\u1eeda \\u0111\\u1ed5i do kh\\u00f4ng ph\\u00f9 h\\u1ee3p ho\\u1eb7c k\\u00e9m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Ti\\u1ebft ki\\u1ec7m th\\u1eddi gian v\\u00e0 chi ph\\u00ed nh\\u1edd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>3. TH\\u1ea8M M\\u1ef8 V\\u00c0 TI\\u1ec6N NGHI<\\/strong><\\/h3>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u quan tr\\u1ecdng trong thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t \\u0111\\u00f3 l\\u00e0 \\u0111\\u1ea3m b\\u1ea3o t\\u00ednh th\\u1ea9m m\\u1ef9, s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 t\\u1ed5ng th\\u1ec3 v\\u00e0 ti\\u1ec7n nghi trong qu\\u00e1 tr\\u00ecnh s\\u1eed d\\u1ee5ng. Ki\\u1ebfn tr\\u00fac s\\u01b0 ngo\\u00e0i vi\\u1ec7c s\\u00e1ng t\\u1ea1o ra kh\\u00f4ng gian s\\u1ed1ng tr\\u1ecdn v\\u1eb9n cho kh\\u00e1ch h\\u00e0ng th\\u00f4ng qua vi\\u1ec7c thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t, c\\u00f2n c\\u1ea7n ph\\u1ea3i l\\u1eafng nghe \\u00fd ki\\u1ebfn, s\\u1edf th\\u00edch c\\u1ee7a kh\\u00e1ch h\\u00e0ng, c\\u0169ng nh\\u01b0 nhu c\\u1ea7u s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 c\\u00f3 th\\u1ec3 k\\u1ebft h\\u1ee3p m\\u1ed9t c\\u00e1ch h\\u00e0i h\\u00f2a c\\u00e1c y\\u1ebfu t\\u1ed1 c\\u00f3 trong kh\\u00f4ng gian s\\u1ed1ng \\u0111\\u1ec3 ng\\u00f4i nh\\u00e0 kh\\u00f4ng ch\\u1ec9 \\u0111\\u1eb9p m\\u00e0 c\\u00f2n mang \\u0111\\u1eadm phong c\\u00e1ch c\\u1ee7a gia ch\\u1ee7.&nbsp;<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chuy\\u00ean nghi\\u1ec7p s\\u1ebd mang \\u0111\\u1ebfn cho b\\u1ea1n c\\u00e1c gi\\u1ea3i ph\\u00e1p thi\\u1ebft k\\u1ebf m\\u1edbi nh\\u1ea5t, ph\\u00f9 h\\u1ee3p v\\u1edbi xu h\\u01b0\\u1edbng th\\u1ecb tr\\u01b0\\u1eddng c\\u0169ng nh\\u01b0 s\\u1edf th\\u00edch c\\u00e1 nh\\u00e2n c\\u1ee7a b\\u1ea1n. H\\u1ecd s\\u1ebd gi\\u00fap b\\u1ea1n t\\u1ea1o ra m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u0111\\u1eb9p v\\u00e0 ti\\u1ec7n nghi, \\u0111\\u1ed3ng th\\u1eddi \\u0111\\u1ea3m b\\u1ea3o s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 m\\u1eb7t th\\u1ea9m m\\u1ef9 cho c\\u0103n nh\\u00e0 c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t gi\\u00fap kh\\u00f4ng gian \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9ng b\\u1ed9, h\\u00e0i h\\u00f2a<\\/em><\\/p>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 795.8px; left: 1180px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\",\"en\":\"<p><strong>3 REASONS YOU SHOULD CHOOSE INTERIOR DESIGN UNIT?<br \\/>\\r\\n1. OPTIMIZING AREA AND SPACE<br \\/>\\r\\nThe area of \\u200b\\u200bthe house, whether large or small, also needs to be arranged with appropriate functions to make the most of the space and use value of the furniture. To solve this problem, we need the support of experts that are architects.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>As people with professional experience, architects can offer solutions that help balance the wishes of the homeowner and ensure standard elements in the design. An architect is someone who can visualize things that you cannot see, thereby giving useful advice, layout solutions for you, combined with your needs and desires to design. Make the perfect drawing.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Optimizing space with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>2. SAVE TIME AND COST<br \\/>\\r\\nAfter receiving the information, needs and investment budget of the owner, the architect will come up with a design plan to avoid incurring out-of-control costs. The standard interior design drawing will include furniture and materials suitable to the needs and space of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>The problem of cost and time has been solved, you do not need to spend too much time researching and researching for each type of product or material. Besides, it will help you save costs of moving, shopping, modifying due to inappropriate or poor quality.<\\/em><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Save time and money with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>3. BEAUTY AND CONVENIENCE<br \\/>\\r\\nThe important thing in interior design is to ensure aesthetics, overall harmony and comfort during use. Architects, in addition to creating a complete living space for customers through interior design, also need to listen to the opinions and preferences of customers, as well as user needs to be able to combine a How to harmonize the elements in the living space so that the house is not only beautiful but also bold in the style of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>A professional interior design unit will bring you the latest design solutions, in line with market trends as well as your personal preferences. They will help you create a beautiful and comfortable living space, while ensuring aesthetic harmony for your home.<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Interior design helps the space to be synchronized and harmonious<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/05ace195798d61cf6e1658a137c3bf4c.jpg', NULL, 1, 3, 1, 'active', 1, 1, '2023-05-19 09:16:17', '2023-05-20 04:35:40', 'thiet-ke-kien-truc'),
(129, 48, 'service', 'Thiết kế nội thất', '{\"title\":{\"en\":\"interior design\"},\"price\":\"100000\",\"price_currency\":null,\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\",\"en\":\"<p><strong>3 REASONS YOU SHOULD CHOOSE INTERIOR DESIGN UNIT?<br \\/>\\r\\n1. OPTIMIZING AREA AND SPACE<br \\/>\\r\\nThe area of \\u200b\\u200bthe house, whether large or small, also needs to be arranged with appropriate functions to make the most of the space and use value of the furniture. To solve this problem, we need the support of experts that are architects.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>As people with professional experience, architects can offer solutions that help balance the wishes of the homeowner and ensure standard elements in the design. An architect is someone who can visualize things that you cannot see, thereby giving useful advice, layout solutions for you, combined with your needs and desires to design. Make the perfect drawing.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Optimizing space with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>2. SAVE TIME AND COST<br \\/>\\r\\nAfter receiving the information, needs and investment budget of the owner, the architect will come up with a design plan to avoid incurring out-of-control costs. The standard interior design drawing will include furniture and materials suitable to the needs and space of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>The problem of cost and time has been solved, you do not need to spend too much time researching and researching for each type of product or material. Besides, it will help you save costs of moving, shopping, modifying due to inappropriate or poor quality.<\\/em><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Save time and money with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>3. BEAUTY AND CONVENIENCE<br \\/>\\r\\nThe important thing in interior design is to ensure aesthetics, overall harmony and comfort during use. Architects, in addition to creating a complete living space for customers through interior design, also need to listen to the opinions and preferences of customers, as well as user needs to be able to combine a How to harmonize the elements in the living space so that the house is not only beautiful but also bold in the style of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>A professional interior design unit will bring you the latest design solutions, in line with market trends as well as your personal preferences. They will help you create a beautiful and comfortable living space, while ensuring aesthetic harmony for your home.<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Interior design helps the space to be synchronized and harmonious<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/1.jpg', NULL, 1, 5, 2, 'active', 1, 1, '2023-05-19 09:16:38', '2023-05-20 04:36:09', 'thiet-ke-noi-that'),
(130, 48, 'service', 'Thiết kế thi công', '{\"title\":{\"en\":\"Construction Design\"},\"price\":\"100000\",\"price_currency\":null,\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<h2><strong>3 L\\u00dd DO B\\u1ea0N N\\u00caN L\\u1ef0A CH\\u1eccN \\u0110\\u01a0N V\\u1eca THI\\u1ebeT K\\u1ebe N\\u1ed8I TH\\u1ea4T ?<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. T\\u1ed0I \\u01afU DI\\u1ec6N T\\u00cdCH V\\u00c0 KH\\u00d4NG GIAN<\\/strong><\\/h3>\\r\\n\\r\\n<p>Di\\u1ec7n t\\u00edch c\\u0103n nh\\u00e0 d\\u00f9 l\\u1edbn hay nh\\u1ecf c\\u0169ng c\\u1ea7n \\u0111\\u01b0\\u1ee3c b\\u1ed1 tr\\u00ed c\\u00f4ng n\\u0103ng ph\\u00f9 h\\u1ee3p \\u0111\\u1ec3 t\\u1eadn d\\u1ee5ng h\\u1ebft \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00f4ng gian v\\u00e0 gi\\u00e1 tr\\u1ecb s\\u1eed d\\u1ee5ng c\\u1ee7a nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t. \\u0110\\u1ec3 gi\\u1ea3i \\u0111\\u01b0\\u1ee3c b\\u00e0i to\\u00e1n n\\u00e0y, ch\\u00fang ta c\\u1ea7n \\u0111\\u1ebfn s\\u1ef1 h\\u1ed7 tr\\u1ee3 c\\u1ee7a c\\u00e1c chuy\\u00ean gia \\u0111\\u00f3 l\\u00e0 ki\\u1ebfn tr\\u00fac s\\u01b0.&nbsp;<\\/p>\\r\\n\\r\\n<p>L\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 kinh nghi\\u1ec7m chuy\\u00ean m\\u00f4n, ki\\u1ebfn tr\\u00fac s\\u01b0 c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra nh\\u1eefng gi\\u1ea3i ph\\u00e1p gi\\u00fap c\\u00e2n b\\u1eb1ng gi\\u1eefa mong mu\\u1ed1n c\\u1ee7a gia ch\\u1ee7 v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o c\\u00e1c y\\u1ebfu t\\u1ed1 ti\\u00eau chu\\u1ea9n trong thi\\u1ebft k\\u1ebf.&nbsp; Ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e0 ng\\u01b0\\u1eddi c\\u00f3 th\\u1ec3 h\\u00ecnh dung ra nh\\u1eefng th\\u1ee9 m\\u00e0 b\\u1ea1n kh\\u00f4ng th\\u1ec3 nh\\u00ecn th\\u1ea5y \\u0111\\u01b0\\u1ee3c, t\\u1eeb \\u0111\\u00f3 \\u0111\\u01b0a ra l\\u1eddi khuy\\u00ean h\\u1eefu \\u00edch, nh\\u1eefng gi\\u1ea3i ph\\u00e1p b\\u1ed1 tr\\u00ed cho b\\u1ea1n, k\\u1ebft h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 mong mu\\u1ed1n c\\u1ee7a b\\u1ea1n \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf ra b\\u1ea3n v\\u1ebd ho\\u00e0n h\\u1ea3o nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>T\\u1ed1i \\u01b0u h\\u00f3a di\\u1ec7n t\\u00edch kh\\u00f4ng gian nh\\u1edd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>2. TI\\u1ebeT KI\\u1ec6M TH\\u1edcI GIAN V\\u00c0 CHI PH\\u00cd<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi ti\\u1ebfp nh\\u1eadn th\\u00f4ng tin, nhu c\\u1ea7u v\\u00e0 m\\u1ee9c ng\\u00e2n s\\u00e1ch \\u0111\\u1ea7u t\\u01b0 c\\u1ee7a gia ch\\u1ee7, ki\\u1ebfn tr\\u00fac s\\u01b0 s\\u1ebd \\u0111\\u01b0a ra ph\\u01b0\\u01a1ng \\u00e1n thi\\u1ebft k\\u1ebf tr\\u00e1nh vi\\u1ec7c ph\\u00e1t sinh chi ph\\u00ed m\\u1ea5t ki\\u1ec3m so\\u00e1t. Trong b\\u1ea3n v\\u1ebd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chu\\u1ea9n s\\u1ebd bao g\\u1ed3m n\\u1ed9i th\\u1ea5t v\\u00e0 v\\u1eadt li\\u1ec7u ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 kh\\u00f4ng gian c\\u1ee7a gia ch\\u1ee7.<\\/p>\\r\\n\\r\\n<p>B\\u00e0i to\\u00e1n v\\u1ec1 chi ph\\u00ed v\\u00e0 th\\u1eddi gian \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c gi\\u1ea3i quy\\u1ebft, b\\u1ea1n kh\\u00f4ng c\\u1ea7n m\\u1ea5t qu\\u00e1 nhi\\u1ec1u th\\u1eddi gian \\u0111\\u1ec3 t\\u00ecm t\\u00f2i v\\u00e0 nghi\\u00ean c\\u1ee9u cho m\\u1ed7i lo\\u1ea1i s\\u1ea3n ph\\u1ea9m hay v\\u1eadt li\\u1ec7u. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, s\\u1ebd gi\\u00fap b\\u1ea1n ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c chi ph\\u00ed di chuy\\u1ec3n mua s\\u1eafm, s\\u1eeda \\u0111\\u1ed5i do kh\\u00f4ng ph\\u00f9 h\\u1ee3p ho\\u1eb7c k\\u00e9m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Ti\\u1ebft ki\\u1ec7m th\\u1eddi gian v\\u00e0 chi ph\\u00ed nh\\u1edd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>3. TH\\u1ea8M M\\u1ef8 V\\u00c0 TI\\u1ec6N NGHI<\\/strong><\\/h3>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u quan tr\\u1ecdng trong thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t \\u0111\\u00f3 l\\u00e0 \\u0111\\u1ea3m b\\u1ea3o t\\u00ednh th\\u1ea9m m\\u1ef9, s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 t\\u1ed5ng th\\u1ec3 v\\u00e0 ti\\u1ec7n nghi trong qu\\u00e1 tr\\u00ecnh s\\u1eed d\\u1ee5ng. Ki\\u1ebfn tr\\u00fac s\\u01b0 ngo\\u00e0i vi\\u1ec7c s\\u00e1ng t\\u1ea1o ra kh\\u00f4ng gian s\\u1ed1ng tr\\u1ecdn v\\u1eb9n cho kh\\u00e1ch h\\u00e0ng th\\u00f4ng qua vi\\u1ec7c thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t, c\\u00f2n c\\u1ea7n ph\\u1ea3i l\\u1eafng nghe \\u00fd ki\\u1ebfn, s\\u1edf th\\u00edch c\\u1ee7a kh\\u00e1ch h\\u00e0ng, c\\u0169ng nh\\u01b0 nhu c\\u1ea7u s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 c\\u00f3 th\\u1ec3 k\\u1ebft h\\u1ee3p m\\u1ed9t c\\u00e1ch h\\u00e0i h\\u00f2a c\\u00e1c y\\u1ebfu t\\u1ed1 c\\u00f3 trong kh\\u00f4ng gian s\\u1ed1ng \\u0111\\u1ec3 ng\\u00f4i nh\\u00e0 kh\\u00f4ng ch\\u1ec9 \\u0111\\u1eb9p m\\u00e0 c\\u00f2n mang \\u0111\\u1eadm phong c\\u00e1ch c\\u1ee7a gia ch\\u1ee7.&nbsp;<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chuy\\u00ean nghi\\u1ec7p s\\u1ebd mang \\u0111\\u1ebfn cho b\\u1ea1n c\\u00e1c gi\\u1ea3i ph\\u00e1p thi\\u1ebft k\\u1ebf m\\u1edbi nh\\u1ea5t, ph\\u00f9 h\\u1ee3p v\\u1edbi xu h\\u01b0\\u1edbng th\\u1ecb tr\\u01b0\\u1eddng c\\u0169ng nh\\u01b0 s\\u1edf th\\u00edch c\\u00e1 nh\\u00e2n c\\u1ee7a b\\u1ea1n. H\\u1ecd s\\u1ebd gi\\u00fap b\\u1ea1n t\\u1ea1o ra m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u0111\\u1eb9p v\\u00e0 ti\\u1ec7n nghi, \\u0111\\u1ed3ng th\\u1eddi \\u0111\\u1ea3m b\\u1ea3o s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 m\\u1eb7t th\\u1ea9m m\\u1ef9 cho c\\u0103n nh\\u00e0 c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t gi\\u00fap kh\\u00f4ng gian \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9ng b\\u1ed9, h\\u00e0i h\\u00f2a<\\/em><\\/p>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 798.8px; left: 1180px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\",\"en\":\"<p><strong>3 REASONS YOU SHOULD CHOOSE INTERIOR DESIGN UNIT?<br \\/>\\r\\n1. OPTIMIZING AREA AND SPACE<br \\/>\\r\\nThe area of \\u200b\\u200bthe house, whether large or small, also needs to be arranged with appropriate functions to make the most of the space and use value of the furniture. To solve this problem, we need the support of experts that are architects.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>As people with professional experience, architects can offer solutions that help balance the wishes of the homeowner and ensure standard elements in the design. An architect is someone who can visualize things that you cannot see, thereby giving useful advice, layout solutions for you, combined with your needs and desires to design. Make the perfect drawing.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Optimizing space with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>2. SAVE TIME AND COST<br \\/>\\r\\nAfter receiving the information, needs and investment budget of the owner, the architect will come up with a design plan to avoid incurring out-of-control costs. The standard interior design drawing will include furniture and materials suitable to the needs and space of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>The problem of cost and time has been solved, you do not need to spend too much time researching and researching for each type of product or material. Besides, it will help you save costs of moving, shopping, modifying due to inappropriate or poor quality.<\\/em><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Save time and money with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>3. BEAUTY AND CONVENIENCE<br \\/>\\r\\nThe important thing in interior design is to ensure aesthetics, overall harmony and comfort during use. Architects, in addition to creating a complete living space for customers through interior design, also need to listen to the opinions and preferences of customers, as well as user needs to be able to combine a How to harmonize the elements in the living space so that the house is not only beautiful but also bold in the style of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>A professional interior design unit will bring you the latest design solutions, in line with market trends as well as your personal preferences. They will help you create a beautiful and comfortable living space, while ensuring aesthetic harmony for your home.<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Interior design helps the space to be synchronized and harmonious<\\/em><\\/p>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/2.jpg', NULL, 1, 2, 3, 'active', 1, 1, '2023-05-19 09:16:59', '2023-05-20 04:36:17', 'thiet-ke-thi-cong'),
(131, 50, 'resource', 'Biệt thự hồ Tây 1', '{\"title\":{\"en\":\"Tay Lake Villa 1\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.1.jpg', NULL, 1, 0, 1, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:14', 'biet-thu-ho-tay-1'),
(132, 50, 'resource', 'Biệt thự hồ Tây 2', '{\"title\":{\"en\":\"Tay Lake Villa 2\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, 1, 0, 2, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:34', 'biet-thu-ho-tay-2'),
(133, 50, 'resource', 'Biệt thự hồ Tây 3', '{\"title\":{\"en\":\"Tay Lake Villa 3\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux1.jpg', NULL, 1, 0, 3, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:39', 'biet-thu-ho-tay-3');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(134, 50, 'resource', 'Biệt thự hồ Tây 4', '{\"title\":{\"en\":\"Tay Lake Villa 4\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux2.jpg', NULL, 1, 0, 4, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:49', 'biet-thu-ho-tay-2'),
(135, 50, 'resource', 'Biệt thự hồ Tây 5', '{\"title\":{\"en\":\"Tay Lake Villa 5\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.1.jpg', NULL, 1, 0, 5, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:53', 'biet-thu-ho-tay-5'),
(136, 50, 'resource', 'Biệt thự hồ Tây 6', '{\"title\":{\"en\":\"Tay Lake Villa 6\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, 1, 0, 6, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:58', 'biet-thu-ho-tay-6'),
(137, 50, 'resource', 'Biệt thự hồ Tây 7', '{\"title\":{\"en\":\"Tay Lake Villa 7\"},\"price\":null,\"price_old\":null,\"place\":\"Bi\\u1ec7t th\\u1ef1 ven h\\u1ed3 T\\u00e2y s\\u1ed1 21\",\"area\":\"250 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux2.jpg', NULL, 1, 0, 4, 'active', 1, 1, '2023-05-19 09:18:45', '2023-05-20 04:00:43', 'biet-thu-ho-tay-7'),
(138, 49, 'resource', 'Biệt thự sân vườn VinHome RiverSide  1', '{\"title\":{\"en\":\"Vinhomes Riverside Garden Villa 1\"},\"price\":null,\"price_old\":null,\"place\":\"BT 04 Ph\\u1ed1 Hoa H\\u1ed3ng VinHome Riverside\",\"area\":\"350 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/Model.6.png', NULL, 1, 0, 8, 'active', 1, 1, '2023-05-19 09:23:56', '2023-05-20 04:01:40', 'biet-thu-san-vuon-vinhome-riverside-1'),
(139, 49, 'resource', 'Biệt thự sân vườn VinHome RiverSide 2', '{\"title\":{\"en\":\"Vinhomes Riverside Garden Villa 2\"},\"price\":null,\"price_old\":null,\"place\":\"BT 04 Ph\\u1ed1 Hoa H\\u1ed3ng VinHome Riverside\",\"area\":\"350 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/Model.1.png', NULL, 1, 0, 9, 'active', 1, 1, '2023-05-19 09:23:56', '2023-05-20 04:01:53', 'biet-thu-san-vuon-vinhome-riverside-2'),
(140, 49, 'resource', 'Biệt thự sân vườn VinHome RiverSide 3', '{\"title\":{\"en\":\"Vinhomes Riverside Garden Villa 3\"},\"price\":null,\"price_old\":null,\"place\":\"BT 04 Ph\\u1ed1 Hoa H\\u1ed3ng VinHome Riverside\",\"area\":\"350 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/Model.2.png', NULL, 1, 0, 13, 'active', 1, 1, '2023-05-19 09:23:56', '2023-05-20 04:02:11', 'biet-thu-san-vuon-vinhome-riverside-3'),
(141, 49, 'resource', 'Biệt thự sân vườn VinHome RiverSide 4', '{\"title\":{\"en\":\"Vinhomes Riverside Garden Villa 4\"},\"price\":null,\"price_old\":null,\"place\":\"BT 04 Ph\\u1ed1 Hoa H\\u1ed3ng VinHome Riverside\",\"area\":\"350 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/Model.3.png', NULL, 1, 0, 10, 'active', 1, 1, '2023-05-19 09:23:56', '2023-05-20 04:01:58', 'biet-thu-san-vuon-vinhome-riverside-4'),
(142, 49, 'resource', 'Biệt thự sân vườn VinHome RiverSide 5', '{\"title\":{\"en\":\"Vinhomes Riverside Garden Villa 5\"},\"price\":null,\"price_old\":null,\"place\":\"BT 04 Ph\\u1ed1 Hoa H\\u1ed3ng VinHome Riverside\",\"area\":\"350 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/Model.5.png', NULL, 1, 0, 11, 'active', 1, 1, '2023-05-19 09:23:56', '2023-05-20 04:02:02', 'biet-thu-san-vuon-vinhome-riverside-5'),
(143, 49, 'resource', 'Biệt thự sân vườn VinHome RiverSide 6', '{\"title\":{\"en\":\"Vinhomes Riverside Garden Villa 6\"},\"price\":null,\"price_old\":null,\"place\":\"BT 04 Ph\\u1ed1 Hoa H\\u1ed3ng VinHome Riverside\",\"area\":\"350 m2\",\"scale\":\"3 t\\u1ea7ng l\\u1ea7u + s\\u00e2n v\\u01b0\\u1eddn\",\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<p>V\\u1edbi xu h\\u01b0\\u1edbng ng\\u00e0y nay con ng\\u01b0\\u1eddi t\\u1eadp trung v\\u00e0o l\\u1ed1i s\\u1ed1ng t\\u1ed1i gi\\u1ea3n v\\u00e0 c\\u00f4ng n\\u0103ng s\\u1ea3n ph\\u1ea9m nhi\\u1ec1u h\\u01a1n do di\\u1ec7n t\\u00edch nh\\u00e0 ph\\u1ed1 ng\\u00e0y c\\u00e0ng thu h\\u1eb9p ch\\u00ednh v\\u00ec v\\u1eady c\\u00e1c m\\u1eabu&nbsp;<strong>Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01<\\/strong><strong>&nbsp;<\\/strong>Vfuni lu\\u00f4n ch\\u00fa tr\\u1ecdng v\\u00e0o c\\u00e1c m\\u1eabu thi\\u1ebft k\\u1ebf t\\u1ed1i gi\\u1ea3n, t\\u1eadp trung v\\u00e0o c\\u00f4ng n\\u0103ng s\\u1eed d\\u1ee5ng, kh\\u00f4ng c\\u00f3 qu\\u00e1 nhi\\u1ec1u chi ti\\u1ebft c\\u1ea7u k\\u00ec b\\u00ean ngo\\u00e0i, kh\\u00f4ng ch\\u1ea1m kh\\u1eafc hoa v\\u0103n nh\\u01b0ng l\\u1ea1i r\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi di\\u1ec7n t\\u00edch, kh\\u00f4ng gian ph\\u00f2ng (\\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 chung c\\u01b0).<\\/p>\\r\\n\\r\\n<p>Ngay c\\u1ea3 m\\u00e0u s\\u1eafc<strong>&nbsp;Gi\\u01b0\\u1eddng ng\\u1ee7 \\u0111a n\\u0103ng 4 ng\\u0103n k\\u00e9o GN-01&nbsp;<\\/strong>c\\u0169ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng t\\u00f4ng m\\u00e0u thanh l\\u1ecbch, m\\u00e0u g\\u1ed7 t\\u1ef1 nhi\\u00ean gi\\u1ea3n d\\u1ecb. Tuy \\u0111\\u01a1n gi\\u1ea3n v\\u00e0 m\\u00e0u s\\u1eafc nh\\u1eb9 nh\\u00e0ng nh\\u01b0ng v\\u1edbi l\\u1edbp ph\\u1ee7 melamine v\\u1eabn gi\\u00fap cho s\\u1ea3n ph\\u1ea9m to\\u00e1t l\\u00ean v\\u1ebb \\u0111\\u1eb9p sang tr\\u1ecdng, tinh t\\u1ebf v\\u00e0 \\u0111\\u1eb7c bi\\u1ec7t t\\u1ea1o c\\u1ea3m gi\\u00e1c cho c\\u0103n ph\\u00f2ng tr\\u00f4ng r\\u1ed9ng r\\u00e3i, th\\u00f4ng tho\\u00e1ng h\\u01a1n.<\\/p>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Ch\\u1ea5t li\\u1ec7u: G\\u1ed7 c\\u00f4ng nghi\\u1ec7p MDF ph\\u1ee7 Melamine, \\u0111\\u00e3 qua x\\u1eed l\\u00fd ch\\u1ed1ng cong v\\u00eanh, m\\u1ed1i m\\u1ecdt.<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc gi\\u01b0\\u1eddng: (R) 1600 x (C) 300 x (D) 2000 mm ( k\\u00edch th\\u01b0\\u1edbc l\\u1ecdt l\\u00f2ng )<\\/li>\\r\\n\\t<li>K\\u00edch th\\u01b0\\u1edbc tap: (R) 350 x (C) 450 x (D) 350 mm.<\\/li>\\r\\n\\t<li>Gi\\u00e1: 6.500.000 vn\\u0111 ( ch\\u01b0a bao g\\u1ed3m tap ) tap gi\\u00e1 900.000\\/1 chi\\u1ebfc<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc: 9223<\\/li>\\r\\n\\t<li>M\\u00e0u s\\u1eafc \\u2013 K\\u00edch th\\u01b0\\u1edbc \\u2013 Ch\\u1ea5t li\\u1ec7u c\\u00f3 th\\u1ec3 thay \\u0111\\u1ed5i theo y\\u00eau c\\u1ea7u c\\u1ee7a kh\\u00e1ch h\\u00e0ng<\\/li>\\r\\n\\t<li>Th\\u1eddi gian giao h\\u00e0ng: T\\u1eeb 2 \\u2013 3 ng\\u00e0y<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<p><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077533755_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_1114063325.jpg\\\" width=\\\"600\\\" \\/><img alt=\\\"\\\" data-src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" decoding=\\\"async\\\" height=\\\"600\\\" src=\\\"https:\\/\\/vfuni.vn\\/wp-content\\/uploads\\/2020\\/12\\/22077539620_11140633251.jpg\\\" width=\\\"600\\\" \\/><\\/p>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/Model.7.png', NULL, 1, 0, 12, 'active', 1, 1, '2023-05-19 09:23:56', '2023-05-20 04:02:07', 'biet-thu-san-vuon-vinhome-riverside-6');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(144, 1, 'post', 'Quy trình thi công nội thất 1', '{\"title\":{\"en\":\"Interior construction process 1\"},\"brief\":{\"vi\":\"\\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng\\u00a0\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.\\r\\n\\r\\nNh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.\",\"en\":\"Balcony furniture\\u00a0designed with a variety of colors, extremely rich designs, suitable for many garden spaces, townhouses, villas, apartments and public places such as parks; You can freely choose to get a model\\u00a0beautiful balcony furniture\\u00a0suitable for your home.\"},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 308px; left: 1169.05px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux4.jpg', NULL, 1, 0, 1, 'active', 1, 1, '2023-05-19 09:30:55', '2023-05-20 03:56:45', 'quy-trinh-thi-cong-noi-that-1'),
(145, 1, 'post', 'Quy trình thi công nội thất 2', '{\"title\":{\"en\":\"Interior construction process 2\"},\"brief\":{\"vi\":\"+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng\\u00a0\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.\\r\\n\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.\",\"en\":\"Balcony furniture\\u00a0designed with a variety of colors, extremely rich designs, suitable for many garden spaces, townhouses, villas, apartments and public places such as parks; You can freely choose to get a model\\u00a0beautiful balcony furniture\\u00a0suitable for your home.\"},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, 1, 0, 2, 'active', 1, 1, '2023-05-19 09:30:55', '2023-05-20 03:57:19', 'quy-trinh-thi-cong-noi-that-2'),
(146, 1, 'post', 'Quy trình thi công nội thất 3', '{\"title\":{\"en\":\"Interior construction process 3\"},\"brief\":{\"vi\":\"+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng\\u00a0\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.\\r\\n\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.\",\"en\":\"Balcony furniture\\u00a0designed with a variety of colors, extremely rich designs, suitable for many garden spaces, townhouses, villas, apartments and public places such as parks; You can freely choose to get a model\\u00a0beautiful balcony furniture\\u00a0suitable for your home.\"},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux12.jpg', NULL, 1, 0, 3, 'active', 1, 1, '2023-05-19 09:30:55', '2023-05-20 03:57:46', 'quy-trinh-thi-cong-noi-that-3'),
(147, 1, 'post', 'Quy trình thi công nội thất 4', '{\"title\":{\"en\":\"Interior construction process 4\"},\"brief\":{\"vi\":\"+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng\\u00a0\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.\\r\\n\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.\",\"en\":\"Balcony furniture\\u00a0designed with a variety of colors, extremely rich designs, suitable for many garden spaces, townhouses, villas, apartments and public places such as parks; You can freely choose to get a model\\u00a0beautiful balcony furniture\\u00a0suitable for your home.\"},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, 1, 0, 4, 'active', 1, 1, '2023-05-19 09:30:55', '2023-05-20 03:58:11', 'quy-trinh-thi-cong-noi-that-4'),
(148, 1, 'post', 'Quy trình thi công nội thất 5', '{\"title\":{\"en\":\"Interior construction process 1\"},\"brief\":{\"vi\":\"\\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng\\u00a0\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.\\r\\n\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026\\u00a0\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.\",\"en\":\"Balcony furniture\\u00a0designed with a variety of colors, extremely rich designs, suitable for many garden spaces, townhouses, villas, apartments and public places such as parks; You can freely choose to get a model\\u00a0beautiful balcony furniture\\u00a0suitable for your home.\"},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.1.jpg', NULL, 1, 0, 5, 'active', 1, 1, '2023-05-19 09:30:55', '2023-05-20 03:58:36', 'quy-trinh-thi-cong-noi-that-5');
INSERT INTO `tb_cms_posts` (`id`, `taxonomy_id`, `is_type`, `title`, `json_params`, `image`, `image_thumb`, `is_featured`, `count_visited`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(149, 1, 'post', 'Quy trình thi công nội thất 6', '{\"title\":{\"en\":\"Interior construction process 6\"},\"brief\":{\"vi\":\"\\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng\\u00a0\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu\\u00a0n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p\\u00a0ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.\",\"en\":\"Balcony furniture\\u00a0designed with a variety of colors, extremely rich designs, suitable for many garden spaces, townhouses, villas, apartments and public places such as parks; You can freely choose to get a model\\u00a0beautiful balcony furniture\\u00a0suitable for your home.\"},\"content\":{\"vi\":\"<h1>N\\u1ed8I TH\\u1ea4T BAN C\\u00d4NG, V\\u01af\\u1edcN<\\/h1>\\r\\n\\r\\n<p>Mua s\\u1eafm c\\u00e1c \\u0111\\u1ed3&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong>&nbsp;l\\u00e0 \\u0111i\\u1ec1u m\\u00e0 nhi\\u1ec1u gia ch\\u1ee7 quan t\\u00e2m trong th\\u1eddi bu\\u1ed5i ng\\u00e0y nay, khi cu\\u1ed9c s\\u1ed1ng ng\\u00e0y c\\u00e0ng tr\\u1edf n\\u00ean ng\\u1ed9t ng\\u1ea1t v\\u1edbi nh\\u01b0ng khu nh\\u00e0 cao t\\u1ea7ng, \\u0111\\u01b0\\u1eddng x\\u00e1, c\\u1ea7u c\\u1ed1ng \\u2026m\\u00e0 thi\\u1ebfu v\\u1eafng c\\u00e2y xanh th\\u00ec xu h\\u01b0\\u1edbng t\\u1ea1o n\\u00ean khu v\\u01b0\\u1eddn ngay trong nh\\u00e0 ho\\u1eb7c trong khu ban c\\u00f4ng l\\u00e0 \\u0111i\\u1ec1u nhi\\u1ec1u ng\\u01b0\\u1eddi th\\u1ef1c hi\\u1ec7n.<\\/p>\\r\\n\\r\\n<h2><br \\/>\\r\\n<strong>M\\u1ed9t s\\u1ed1 \\u01b0u \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c m\\u1eabu n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn<\\/strong><\\/h2>\\r\\n\\r\\n<p><br \\/>\\r\\n<strong>+ \\u0110\\u1ed3 n\\u1ed9i th\\u1ea5t ban c\\u00f4ng&nbsp;<\\/strong>\\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf v\\u1edbi \\u0111a d\\u1ea1ng m\\u00e0u m\\u00e0u s\\u1eafc, ki\\u1ec3u d\\u00e1ng v\\u00f4 c\\u00f9ng phong ph\\u00fa, th\\u00edch h\\u1ee3p v\\u1edbi nhi\\u1ec1u kh\\u00f4ng gian s\\u00e2n v\\u01b0\\u1eddn nh\\u00e0 ph\\u1ed1, bi\\u1ec7t th\\u1ef1, chung c\\u01b0 v\\u00e0 c\\u00e1c \\u0111\\u1ecba \\u0111i\\u1ec3m c\\u00f4ng c\\u1ed9ng nh\\u01b0 c\\u00f4ng vi\\u00ean; b\\u1ea1n c\\u00f3 th\\u1ec3 tho\\u1ea3i m\\u00e1i ch\\u1ecdn l\\u1ef1a \\u0111\\u1ec3 c\\u00f3 \\u0111\\u01b0\\u1ee3c m\\u1ed9t m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng \\u0111\\u1eb9p<\\/strong>&nbsp;ph\\u00f9 h\\u1ee3p v\\u1edbi ng\\u00f4i nh\\u00e0 c\\u1ee7a m\\u00ecnh.<br \\/>\\r\\n<br \\/>\\r\\n+ Nh\\u1eb1m m\\u1ee5c \\u0111\\u00edch h\\u1ea1n ch\\u1ebf nh\\u1eefng nh\\u01b0\\u1ee3c \\u0111i\\u1ec3m c\\u1ee7a c\\u00e1c ng\\u00f4i nh\\u00e0, c\\u00e1c m\\u1eabu&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng chung c\\u01b0, n\\u1ed9i th\\u1ea5t ban c\\u00f4ng c\\u0103n h\\u1ed9\\u2026<\\/strong>&nbsp;\\u0111\\u1ec3 \\u0111\\u01b0\\u1ee3c c\\u00e1c nh\\u00e0 s\\u1ea3n xu\\u1ea5t c\\u1ea3i thi\\u1ec7n b\\u1eb1ng vi\\u1ec7c cho ra nh\\u1eefng thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111\\u00e1o, \\u0111a d\\u1ea1ng ph\\u00f9 h\\u1ee3p v\\u1edbi t\\u1eebng thi\\u1ebft k\\u1ebf nh\\u00e0 \\u1edf, kh\\u00f4ng gian nh\\u1eb1m t\\u0103ng t\\u00ednh th\\u1ea9m m\\u1ef9, h\\u1ea1n ch\\u1ebf t\\u1ed1i \\u0111a c\\u00e1c g\\u00f3c ch\\u1ebft c\\u1ee7a ng\\u00f4i nh\\u00e0 nh\\u01b0 khu v\\u1ef1c ban c\\u00f4ng, g\\u1ea7m c\\u1ea7u thang, m\\u1ea3nh s\\u00e2n nh\\u1ecf\\u2026.<br \\/>\\r\\n<br \\/>\\r\\n+ + Vai tr\\u00f2 ch\\u00ednh c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m&nbsp;<a href=\\\"https:\\/\\/vuongquocnoithat.vn\\/noi-that-ban-cong-vuon\\/\\\"><strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn&nbsp;<\\/strong><\\/a>ch\\u00ednh l\\u00e0 \\u0111\\u1ec3&nbsp;<strong>trang tr\\u00ed ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p&nbsp;<\\/strong>th\\u1ea9m m\\u1ef9 v\\u00e0 th\\u1ec3 hi\\u1ec7n c\\u00e1 t\\u00ednh c\\u1ee7a gia ch\\u1ee7. N\\u1ebfu b\\u1ea1n b\\u01b0\\u1edbc v\\u00e0o m\\u1ed9t ng\\u00f4i nh\\u00e0 v\\u1edbi khu\\u00f4n vi\\u00ean \\u0111\\u1ea7y&nbsp;<strong>c\\u00e2y ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn<\\/strong>&nbsp;m\\u00e0u xanh, k\\u1ebft h\\u1ee3p v\\u1edbi nh\\u1eefng b\\u1ed9 b\\u00e0n gh\\u1ebf s\\u00e2n v\\u01b0\\u1eddn hi\\u1ec7n \\u0111\\u1ea1i th\\u00ec kh\\u00f4ng th\\u1ec3 ng\\u1eebng suy\\u1ebft xoa ph\\u1ea3i kh\\u00f4ng n\\u00e0o?<br \\/>\\r\\n<br \\/>\\r\\n+ V\\u1ebb \\u0111\\u1eb9p c\\u1ee7a c\\u00e1c s\\u1ea3n ph\\u1ea9m n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn kh\\u00f4ng ch\\u1ec9 n\\u1eb1m \\u1edf thi\\u1ebft k\\u1ebf m\\u00e0 c\\u00f2n d\\u1ef1a v\\u00e0o ch\\u1ea5t l\\u01b0\\u1ee3ng \\u0111\\u1ea1t ti\\u00eau chu\\u1ea9n Ch\\u00e2u \\u00c2u, \\u0111\\u1eb7c bi\\u1ec7t l\\u00e0 c\\u00e1c thi\\u1ebft k\\u1ebf nh\\u1eadp kh\\u1ea9u. M\\u1ed7i s\\u1ea3n ph\\u1ea9m&nbsp;<strong>ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn \\u0111\\u1eb9p<\\/strong>&nbsp;\\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c thi\\u1ebft k\\u1ebf sao cho ph\\u00f9 h\\u1ee3p v\\u1edbi \\u0111i\\u1ec1u ki\\u1ec7n th\\u1eddi ti\\u1ebft b\\u00ean ngo\\u00e0i. S\\u1eed d\\u1ee5ng ch\\u1ee7 y\\u1ebfu v\\u1edbi c\\u00e1c ch\\u1ea5t li\\u1ec7u nh\\u01b0: nh\\u1ef1a gi\\u1ea3 m\\u00e2y, h\\u1ee3p kim, m\\u00e2y tre \\u0111an, g\\u1ed7 t\\u1ef1 nhi\\u00ean, nh\\u1ef1a t\\u1ed5ng h\\u1ee3p\\u2026.<br \\/>\\r\\n&nbsp;<\\/p>\\r\\n\\r\\n<h2><strong>V\\u00ec sao n\\u00ean mua n\\u1ed9i th\\u1ea5t ban c\\u00f4ng, v\\u01b0\\u1eddn t\\u1ea1i Si\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia?<\\/strong><br \\/>\\r\\n<br \\/>\\r\\nSi\\u00eau Th\\u1ecb N\\u1ed9i Th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia t\\u1ef1 h\\u00e0o l\\u00e0 \\u0111\\u01a1n v\\u1ecb h\\u00e0ng \\u0111\\u1ea7u tr\\u00ean c\\u1ea3 n\\u01b0\\u1edbc cung c\\u1ea5p \\u0111\\u1ebfn th\\u1ecb tr\\u01b0\\u1eddng nh\\u1eefng m\\u1eabu n\\u1ed9i ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn, ban c\\u00f4ng \\u0111\\u1eb9p \\u0111\\u1ea3m b\\u1ea3o an to\\u00e0n ch\\u1ea5t l\\u01b0\\u1ee3ng, gi\\u00e1 c\\u1ea3 ph\\u1ea3i ch\\u0103ng, r\\u1ea5t uy t\\u00edn v\\u00e0 chuy\\u00ean nghi\\u1ec7p.<br \\/>\\r\\n<br \\/>\\r\\nT\\u1ea5t c\\u1ea3 c\\u00e1c s\\u1ea3n ph\\u1ea9m \\u0111\\u1ec1u \\u0111\\u01b0\\u1ee3c nh\\u1eadp kh\\u1ea9u ch\\u00ednh h\\u00e3ng 100%, cam k\\u1ebft ch\\u1ea5t l\\u01b0\\u1ee3ng t\\u1ed1t, an to\\u00e0n s\\u1ee9c kho\\u1ebb v\\u00e0 b\\u1ec1n \\u0111\\u1eb9p l\\u00e2u d\\u00e0i v\\u1edbi th\\u1eddi gian. H\\u01a1n n\\u1eefa v\\u1edbi th\\u1eddi gian b\\u1ea3o h\\u00e0nh l\\u00ean t\\u1edbi 2 n\\u0103m s\\u1eed d\\u1ee5ng, kh\\u00e1ch h\\u00e0ng ho\\u00e0n to\\u00e0n c\\u00f3 th\\u1ec3 y\\u00ean t\\u00e2m khi ch\\u1ecdn mua s\\u1ea3n ph\\u1ea9m&nbsp;<strong>n\\u1ed9i th\\u1ea5t ban c\\u00f4ng<\\/strong>&nbsp;c\\u0169ng nh\\u01b0 ngo\\u1ea1i th\\u1ea5t s\\u00e2n v\\u01b0\\u1eddn c\\u1ee7a ch\\u00fang t\\u00f4i.<br \\/>\\r\\n<br \\/>\\r\\nH\\u01a1n n\\u1eefa, v\\u1edbi \\u0111\\u1ed9i ng\\u0169 nh\\u00e2n vi\\u00ean chuy\\u00ean nghi\\u1ec7p, gi\\u00e0u kinh nghi\\u1ec7m, T\\u00e2n Ho\\u00e0ng Gia s\\u1ebd t\\u01b0 v\\u1ea5n gi\\u00fap b\\u1ea1n ch\\u1ecdn \\u0111\\u01b0\\u1ee3c nh\\u1eefng \\u0111\\u1ed3 n\\u1ed9i ngo\\u1ea1i th\\u1ea5t ph\\u00f9 h\\u1ee3p v\\u1edbi kh\\u00f4ng gian ban c\\u00f4ng, s\\u00e2n v\\u01b0\\u1eddn, qu\\u00e1n cafe m\\u00e0 b\\u1ea1n mong mu\\u1ed1n.<br \\/>\\r\\n<br \\/>\\r\\nH\\u00e3y \\u0111\\u1ebfn v\\u1edbi V\\u01b0\\u01a1ng qu\\u1ed1c n\\u1ed9i th\\u1ea5t T\\u00e2n Ho\\u00e0ng Gia b\\u1eb1ng c\\u00e1ch li\\u00ean h\\u1ec7 hotline: (024)66.712.777- 0948.306.234 - 0984.493.961 ho\\u1eb7c gh\\u00e9 th\\u0103m showroom t\\u1ea1i: T\\u1ea7ng 1 t\\u00f2a 2 Vinaconex12, 57 V\\u0169 Tr\\u1ecdng Ph\\u1ee5ng qu\\u1eadn Thanh Xu\\u00e2n&nbsp; TP H\\u00e0 N\\u1ed9i nh\\u00e9!<\\/h2>\",\"en\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, 1, 0, 6, 'active', 1, 1, '2023-05-19 09:30:55', '2023-05-20 04:11:58', 'quy-trinh-thi-cong-noi-that-6'),
(150, 48, 'service', 'Xây nhà trọn gói', '{\"title\":{\"en\":\"Build a house package\"},\"price\":\"100000\",\"price_currency\":null,\"brief\":{\"vi\":null,\"en\":null},\"content\":{\"vi\":\"<h2><strong>3 L\\u00dd DO B\\u1ea0N N\\u00caN L\\u1ef0A CH\\u1eccN \\u0110\\u01a0N V\\u1eca THI\\u1ebeT K\\u1ebe N\\u1ed8I TH\\u1ea4T ?<\\/strong><\\/h2>\\r\\n\\r\\n<h3><strong>1. T\\u1ed0I \\u01afU DI\\u1ec6N T\\u00cdCH V\\u00c0 KH\\u00d4NG GIAN<\\/strong><\\/h3>\\r\\n\\r\\n<p>Di\\u1ec7n t\\u00edch c\\u0103n nh\\u00e0 d\\u00f9 l\\u1edbn hay nh\\u1ecf c\\u0169ng c\\u1ea7n \\u0111\\u01b0\\u1ee3c b\\u1ed1 tr\\u00ed c\\u00f4ng n\\u0103ng ph\\u00f9 h\\u1ee3p \\u0111\\u1ec3 t\\u1eadn d\\u1ee5ng h\\u1ebft \\u0111\\u01b0\\u1ee3c c\\u00e1c kh\\u00f4ng gian v\\u00e0 gi\\u00e1 tr\\u1ecb s\\u1eed d\\u1ee5ng c\\u1ee7a nh\\u1eefng m\\u00f3n \\u0111\\u1ed3 n\\u1ed9i th\\u1ea5t. \\u0110\\u1ec3 gi\\u1ea3i \\u0111\\u01b0\\u1ee3c b\\u00e0i to\\u00e1n n\\u00e0y, ch\\u00fang ta c\\u1ea7n \\u0111\\u1ebfn s\\u1ef1 h\\u1ed7 tr\\u1ee3 c\\u1ee7a c\\u00e1c chuy\\u00ean gia \\u0111\\u00f3 l\\u00e0 ki\\u1ebfn tr\\u00fac s\\u01b0.&nbsp;<\\/p>\\r\\n\\r\\n<p>L\\u00e0 nh\\u1eefng ng\\u01b0\\u1eddi c\\u00f3 kinh nghi\\u1ec7m chuy\\u00ean m\\u00f4n, ki\\u1ebfn tr\\u00fac s\\u01b0 c\\u00f3 th\\u1ec3 \\u0111\\u01b0a ra nh\\u1eefng gi\\u1ea3i ph\\u00e1p gi\\u00fap c\\u00e2n b\\u1eb1ng gi\\u1eefa mong mu\\u1ed1n c\\u1ee7a gia ch\\u1ee7 v\\u00e0 \\u0111\\u1ea3m b\\u1ea3o c\\u00e1c y\\u1ebfu t\\u1ed1 ti\\u00eau chu\\u1ea9n trong thi\\u1ebft k\\u1ebf.&nbsp; Ki\\u1ebfn tr\\u00fac s\\u01b0 l\\u00e0 ng\\u01b0\\u1eddi c\\u00f3 th\\u1ec3 h\\u00ecnh dung ra nh\\u1eefng th\\u1ee9 m\\u00e0 b\\u1ea1n kh\\u00f4ng th\\u1ec3 nh\\u00ecn th\\u1ea5y \\u0111\\u01b0\\u1ee3c, t\\u1eeb \\u0111\\u00f3 \\u0111\\u01b0a ra l\\u1eddi khuy\\u00ean h\\u1eefu \\u00edch, nh\\u1eefng gi\\u1ea3i ph\\u00e1p b\\u1ed1 tr\\u00ed cho b\\u1ea1n, k\\u1ebft h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 mong mu\\u1ed1n c\\u1ee7a b\\u1ea1n \\u0111\\u1ec3 thi\\u1ebft k\\u1ebf ra b\\u1ea3n v\\u1ebd ho\\u00e0n h\\u1ea3o nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>T\\u1ed1i \\u01b0u h\\u00f3a di\\u1ec7n t\\u00edch kh\\u00f4ng gian nh\\u1edd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>2. TI\\u1ebeT KI\\u1ec6M TH\\u1edcI GIAN V\\u00c0 CHI PH\\u00cd<\\/strong><\\/h3>\\r\\n\\r\\n<p>Sau khi ti\\u1ebfp nh\\u1eadn th\\u00f4ng tin, nhu c\\u1ea7u v\\u00e0 m\\u1ee9c ng\\u00e2n s\\u00e1ch \\u0111\\u1ea7u t\\u01b0 c\\u1ee7a gia ch\\u1ee7, ki\\u1ebfn tr\\u00fac s\\u01b0 s\\u1ebd \\u0111\\u01b0a ra ph\\u01b0\\u01a1ng \\u00e1n thi\\u1ebft k\\u1ebf tr\\u00e1nh vi\\u1ec7c ph\\u00e1t sinh chi ph\\u00ed m\\u1ea5t ki\\u1ec3m so\\u00e1t. Trong b\\u1ea3n v\\u1ebd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chu\\u1ea9n s\\u1ebd bao g\\u1ed3m n\\u1ed9i th\\u1ea5t v\\u00e0 v\\u1eadt li\\u1ec7u ph\\u00f9 h\\u1ee3p v\\u1edbi nhu c\\u1ea7u v\\u00e0 kh\\u00f4ng gian c\\u1ee7a gia ch\\u1ee7.<\\/p>\\r\\n\\r\\n<p>B\\u00e0i to\\u00e1n v\\u1ec1 chi ph\\u00ed v\\u00e0 th\\u1eddi gian \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c gi\\u1ea3i quy\\u1ebft, b\\u1ea1n kh\\u00f4ng c\\u1ea7n m\\u1ea5t qu\\u00e1 nhi\\u1ec1u th\\u1eddi gian \\u0111\\u1ec3 t\\u00ecm t\\u00f2i v\\u00e0 nghi\\u00ean c\\u1ee9u cho m\\u1ed7i lo\\u1ea1i s\\u1ea3n ph\\u1ea9m hay v\\u1eadt li\\u1ec7u. B\\u00ean c\\u1ea1nh \\u0111\\u00f3, s\\u1ebd gi\\u00fap b\\u1ea1n ti\\u1ebft ki\\u1ec7m \\u0111\\u01b0\\u1ee3c chi ph\\u00ed di chuy\\u1ec3n mua s\\u1eafm, s\\u1eeda \\u0111\\u1ed5i do kh\\u00f4ng ph\\u00f9 h\\u1ee3p ho\\u1eb7c k\\u00e9m ch\\u1ea5t l\\u01b0\\u1ee3ng.<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Ti\\u1ebft ki\\u1ec7m th\\u1eddi gian v\\u00e0 chi ph\\u00ed nh\\u1edd thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t<\\/em><\\/p>\\r\\n\\r\\n<h3><strong>3. TH\\u1ea8M M\\u1ef8 V\\u00c0 TI\\u1ec6N NGHI<\\/strong><\\/h3>\\r\\n\\r\\n<p>\\u0110i\\u1ec1u quan tr\\u1ecdng trong thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t \\u0111\\u00f3 l\\u00e0 \\u0111\\u1ea3m b\\u1ea3o t\\u00ednh th\\u1ea9m m\\u1ef9, s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 t\\u1ed5ng th\\u1ec3 v\\u00e0 ti\\u1ec7n nghi trong qu\\u00e1 tr\\u00ecnh s\\u1eed d\\u1ee5ng. Ki\\u1ebfn tr\\u00fac s\\u01b0 ngo\\u00e0i vi\\u1ec7c s\\u00e1ng t\\u1ea1o ra kh\\u00f4ng gian s\\u1ed1ng tr\\u1ecdn v\\u1eb9n cho kh\\u00e1ch h\\u00e0ng th\\u00f4ng qua vi\\u1ec7c thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t, c\\u00f2n c\\u1ea7n ph\\u1ea3i l\\u1eafng nghe \\u00fd ki\\u1ebfn, s\\u1edf th\\u00edch c\\u1ee7a kh\\u00e1ch h\\u00e0ng, c\\u0169ng nh\\u01b0 nhu c\\u1ea7u s\\u1eed d\\u1ee5ng \\u0111\\u1ec3 c\\u00f3 th\\u1ec3 k\\u1ebft h\\u1ee3p m\\u1ed9t c\\u00e1ch h\\u00e0i h\\u00f2a c\\u00e1c y\\u1ebfu t\\u1ed1 c\\u00f3 trong kh\\u00f4ng gian s\\u1ed1ng \\u0111\\u1ec3 ng\\u00f4i nh\\u00e0 kh\\u00f4ng ch\\u1ec9 \\u0111\\u1eb9p m\\u00e0 c\\u00f2n mang \\u0111\\u1eadm phong c\\u00e1ch c\\u1ee7a gia ch\\u1ee7.&nbsp;<\\/p>\\r\\n\\r\\n<p>M\\u1ed9t \\u0111\\u01a1n v\\u1ecb thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t chuy\\u00ean nghi\\u1ec7p s\\u1ebd mang \\u0111\\u1ebfn cho b\\u1ea1n c\\u00e1c gi\\u1ea3i ph\\u00e1p thi\\u1ebft k\\u1ebf m\\u1edbi nh\\u1ea5t, ph\\u00f9 h\\u1ee3p v\\u1edbi xu h\\u01b0\\u1edbng th\\u1ecb tr\\u01b0\\u1eddng c\\u0169ng nh\\u01b0 s\\u1edf th\\u00edch c\\u00e1 nh\\u00e2n c\\u1ee7a b\\u1ea1n. H\\u1ecd s\\u1ebd gi\\u00fap b\\u1ea1n t\\u1ea1o ra m\\u1ed9t kh\\u00f4ng gian s\\u1ed1ng \\u0111\\u1eb9p v\\u00e0 ti\\u1ec7n nghi, \\u0111\\u1ed3ng th\\u1eddi \\u0111\\u1ea3m b\\u1ea3o s\\u1ef1 h\\u00e0i h\\u00f2a v\\u1ec1 m\\u1eb7t th\\u1ea9m m\\u1ef9 cho c\\u0103n nh\\u00e0 c\\u1ee7a b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Thi\\u1ebft k\\u1ebf n\\u1ed9i th\\u1ea5t gi\\u00fap kh\\u00f4ng gian \\u0111\\u01b0\\u1ee3c \\u0111\\u1ed9ng b\\u1ed9, h\\u00e0i h\\u00f2a<\\/em><\\/p>\",\"en\":\"<p><strong>3 REASONS YOU SHOULD CHOOSE INTERIOR DESIGN UNIT?<br \\/>\\r\\n1. OPTIMIZING AREA AND SPACE<br \\/>\\r\\nThe area of \\u200b\\u200bthe house, whether large or small, also needs to be arranged with appropriate functions to make the most of the space and use value of the furniture. To solve this problem, we need the support of experts that are architects.<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>As people with professional experience, architects can offer solutions that help balance the wishes of the homeowner and ensure standard elements in the design. An architect is someone who can visualize things that you cannot see, thereby giving useful advice, layout solutions for you, combined with your needs and desires to design. Make the perfect drawing.<\\/strong><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 1 1\\\" decoding=\\\"async\\\" height=\\\"736\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1.webp 2000w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-768x471.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-1-1-1536x942.webp 1536w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Optimizing space with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>2. SAVE TIME AND COST<br \\/>\\r\\nAfter receiving the information, needs and investment budget of the owner, the architect will come up with a design plan to avoid incurring out-of-control costs. The standard interior design drawing will include furniture and materials suitable to the needs and space of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>The problem of cost and time has been solved, you do not need to spend too much time researching and researching for each type of product or material. Besides, it will help you save costs of moving, shopping, modifying due to inappropriate or poor quality.<\\/em><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 2 2\\\" decoding=\\\"async\\\" height=\\\"565\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2.webp 850w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-2-2-768x361.webp 768w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Save time and money with interior design<\\/em><\\/p>\\r\\n\\r\\n<p><em>3. BEAUTY AND CONVENIENCE<br \\/>\\r\\nThe important thing in interior design is to ensure aesthetics, overall harmony and comfort during use. Architects, in addition to creating a complete living space for customers through interior design, also need to listen to the opinions and preferences of customers, as well as user needs to be able to combine a How to harmonize the elements in the living space so that the house is not only beautiful but also bold in the style of the owner.<\\/em><\\/p>\\r\\n\\r\\n<p><em>A professional interior design unit will bring you the latest design solutions, in line with market trends as well as your personal preferences. They will help you create a beautiful and comfortable living space, while ensuring aesthetic harmony for your home.<\\/em><\\/p>\\r\\n\\r\\n<p><img alt=\\\"thiet ke noi that 3 1 scaled\\\" decoding=\\\"async\\\" height=\\\"667\\\" loading=\\\"lazy\\\" sizes=\\\"(max-width: 1200px) 100vw, 1200px\\\" src=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp\\\" srcset=\\\"https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-scaled.webp 2560w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-768x427.webp 768w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-1536x854.webp 1536w, https:\\/\\/noithatducduong.com\\/wp-content\\/uploads\\/2023\\/04\\/thiet-ke-noi-that-3-1-2048x1138.webp 2048w\\\" width=\\\"1200\\\" \\/><\\/p>\\r\\n\\r\\n<p><em>Interior design helps the space to be synchronized and harmonious<\\/em><\\/p>\\r\\n\\r\\n<div class=\\\"ddict_btn\\\" style=\\\"top: 2588px; left: 341.837px;\\\"><img src=\\\"chrome-extension:\\/\\/bpggmmljdiliancllaapiggllnkbjocb\\/logo\\/48.png\\\" \\/><\\/div>\"},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', '/data/cms-image/1/resource/lux.2.jpg', NULL, 1, 0, 4, 'active', 1, 1, '2023-05-19 10:08:27', '2023-05-20 04:35:07', 'xay-nha-tron-goi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_cms_taxonomys`
--

CREATE TABLE `tb_cms_taxonomys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `taxonomy` varchar(255) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_cms_taxonomys`
--

INSERT INTO `tb_cms_taxonomys` (`id`, `taxonomy`, `parent_id`, `title`, `json_params`, `is_featured`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `alias`) VALUES
(1, 'post', NULL, 'Tin tức', '{\"title\":{\"en\":\"News\"},\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/resource\\/Model.7.png\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 1, 'active', 1, 1, '2021-10-15 03:19:10', '2023-05-20 03:22:33', 'tin-tuc'),
(48, 'service', NULL, 'Dịch vụ', '{\"title\":{\"en\":\"Service\"},\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/resource\\/Model.7.png\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 0, 4, 'active', 1, 1, '2023-05-19 09:11:11', '2023-05-20 03:22:46', 'dich-vu'),
(49, 'resource', NULL, 'Dự án kiến trúc', '{\"title\":{\"en\":\"architectural project\"},\"image\":\"\\/data\\/cms-image\\/1\\/resource\\/Model.7.png\",\"image_background\":\"\\/data\\/cms-image\\/1\\/resource\\/Model.7.png\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 3, 'active', 1, 1, '2023-05-19 09:12:14', '2023-05-20 03:22:23', 'du-an-kien-truc'),
(50, 'resource', NULL, 'Dự án nội thất', '{\"title\":{\"en\":\"Furniture project\"},\"image\":null,\"image_background\":\"\\/data\\/cms-image\\/1\\/resource\\/Model.7.png\",\"brief\":{\"vi\":null},\"content\":{\"vi\":null},\"seo_title\":null,\"seo_keyword\":null,\"seo_description\":null}', 1, 2, 'active', 1, 1, '2023-05-19 09:13:10', '2023-05-20 03:22:05', 'du-an-noi-that');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_components`
--

CREATE TABLE `tb_components` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `component_code` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `image_background` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_components`
--

INSERT INTO `tb_components` (`id`, `component_code`, `parent_id`, `title`, `brief`, `content`, `json_params`, `image`, `image_background`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'menu', NULL, 'Main menu', NULL, NULL, '{\"menu_id\":\"24\"}', NULL, NULL, 1, 'active', 1, 1, '2022-05-04 08:23:05', '2022-05-20 01:38:02'),
(2, 'banner_image', NULL, 'Adv banner', NULL, NULL, NULL, '/data/cms-image/banner/no-banner.jpg', NULL, 2, 'active', 1, 1, '2022-05-04 10:25:30', '2022-05-04 10:25:30'),
(3, 'menu', NULL, 'Primary sidebar', 'Primary sidebar section', NULL, '{\"menu_id\":\"33\"}', NULL, NULL, 3, 'active', 1, 1, '2022-05-19 07:24:44', '2022-05-20 01:38:15'),
(4, 'custom', NULL, 'Footer content', NULL, NULL, NULL, NULL, NULL, 4, 'active', 1, 1, '2022-05-19 15:21:27', '2022-05-19 15:21:27'),
(5, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 5, 'delete', 1, 1, '2022-05-20 04:24:40', '2022-05-20 06:23:36'),
(6, NULL, 2, 'Right banner 1', 'Description to this banner', NULL, '{\"url_link\":\"#\",\"url_link_title\":\"Show now\",\"target\":\"_self\"}', '/data/cms-image/meta-logo-favicon.png', NULL, 1, 'active', 1, 1, '2022-05-20 04:27:07', '2022-05-20 04:27:07'),
(7, NULL, 2, 'Right banner 2', NULL, NULL, '{\"url_link\":\"#\",\"url_link_title\":\"View more\",\"target\":\"_self\"}', '/data/banner/architektura-5.jpg', NULL, 2, 'active', 1, 1, '2022-05-20 06:25:03', '2022-05-20 06:25:03'),
(8, NULL, 2, 'Right banner 3', NULL, NULL, '{\"url_link\":null,\"url_link_title\":null,\"target\":\"_self\"}', '/data/banner/ewx_cslxkaio8su.jpg', NULL, 3, 'active', 1, 1, '2022-05-20 06:27:24', '2022-05-20 06:27:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_component_configs`
--

CREATE TABLE `tb_component_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `component_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_component_configs`
--

INSERT INTO `tb_component_configs` (`id`, `name`, `description`, `component_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Menu', NULL, 'menu', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:53:00', '2022-04-26 09:53:00'),
(2, 'Custom', NULL, 'custom', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:53:17', '2022-04-26 09:53:17'),
(3, 'Banner / Image', NULL, 'banner_image', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:53:50', '2022-04-26 09:53:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_contacts`
--

CREATE TABLE `tb_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) DEFAULT 'contact',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_contacts`
--

INSERT INTO `tb_contacts` (`id`, `is_type`, `name`, `email`, `phone`, `subject`, `content`, `admin_note`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'newsletter', NULL, 'huuthangb2k50@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-06-02 08:02:36', '2022-06-02 08:02:36'),
(16, 'newsletter', NULL, 'thangnh.edu@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'active', NULL, NULL, '2022-09-13 09:54:38', '2022-09-13 09:54:38'),
(41, 'call_request', NULL, 'tuonglee1001@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-13 15:49:50', '2023-03-13 15:49:50'),
(42, 'contact', 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', '0388830059', NULL, 'hrrh', NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-14 04:18:57', '2023-03-14 04:18:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_logs`
--

CREATE TABLE `tb_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `url_referer` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `params` text DEFAULT NULL,
  `logged_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_menus`
--

CREATE TABLE `tb_menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `url_link` varchar(255) DEFAULT NULL,
  `menu_type` varchar(255) DEFAULT NULL,
  `system_code` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_menus`
--

INSERT INTO `tb_menus` (`id`, `parent_id`, `name`, `description`, `url_link`, `menu_type`, `system_code`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(24, NULL, 'Menu đầu trang', 'Menu link for main navbar', NULL, 'header', NULL, NULL, 1, 'active', 1, 1, '2022-05-10 10:29:01', '2022-08-10 06:52:06'),
(26, 24, 'Dự án', NULL, '#', 'main', 'public', '{\"name\":{\"en\":\"Project\"},\"target\":\"_self\",\"style\":\"normal\"}', 7, 'active', 1, 1, '2021-12-08 02:51:06', '2023-05-19 09:40:46'),
(30, 24, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"name\":{\"en\":\"News\"},\"target\":\"_self\",\"style\":\"normal\"}', 6, 'active', 1, 1, '2022-05-18 16:49:38', '2023-05-19 09:40:46'),
(31, 24, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"name\":{\"en\":\"Contact\"},\"target\":\"_self\",\"style\":\"normal\"}', 8, 'active', 1, 1, '2022-05-18 16:52:41', '2023-05-19 09:40:46'),
(33, NULL, 'LIÊN KẾT NHANH', 'Hiển thị liên kết cuối chân trang', NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-05-18 18:47:23', '2022-12-31 04:10:56'),
(34, 33, 'Điều khoản dịch vụ', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-05-18 18:49:06', '2022-08-18 04:34:19'),
(35, 33, 'Chính sách bảo mật', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-05-18 18:49:24', '2022-08-18 04:34:32'),
(36, NULL, 'Menu cuối trang #2', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-06-02 07:25:15', '2022-08-05 10:14:07'),
(37, 36, 'Chính sách bảo mật thông tin', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-06-02 07:25:33', '2022-06-02 07:25:33'),
(38, 36, 'Hướng dẫn tra cứu', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-06-02 07:25:44', '2022-06-02 07:25:44'),
(46, 33, 'Câu hỏi thường gặp', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-08-05 10:15:12', '2022-08-18 04:34:42'),
(58, 24, '<i class=\"fa-solid fa-house\" style=\"font-size: 20px\" ></i>', NULL, '/', NULL, NULL, '{\"name\":{\"en\":null},\"target\":\"_self\",\"style\":\"normal\"}', 1, 'active', 1, 1, '2022-08-17 09:34:50', '2023-05-19 09:40:46'),
(64, NULL, 'GIỚI THIỆU', NULL, NULL, 'footer', NULL, NULL, 2, 'delete', 1, 1, '2022-10-17 07:19:46', '2022-12-31 04:10:53'),
(65, 64, 'Câu chuyện Thaiever', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-10-17 07:19:58', '2022-11-30 07:30:20'),
(66, 64, 'Tầm nhìn sứ mệnh', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-10-17 07:20:09', '2022-11-30 07:30:29'),
(67, 64, 'Giá trị cốt lõi', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 3, 'active', 1, 1, '2022-10-17 07:20:16', '2022-11-30 07:30:42'),
(68, NULL, 'SẢN PHẨM', NULL, NULL, 'footer', NULL, NULL, 3, 'delete', 1, 1, '2022-11-30 07:30:01', '2022-11-30 07:41:17'),
(69, 64, 'Chiến lược phát triển', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 4, 'active', 1, 1, '2022-11-30 07:30:51', '2022-11-30 07:30:51'),
(70, 64, 'Danh hiệu giải thưởng', NULL, '#', NULL, NULL, '{\"target\":\"_self\"}', 5, 'active', 1, 1, '2022-11-30 07:30:59', '2022-11-30 07:30:59'),
(74, 26, 'Dự án kiến trúc', NULL, '/du-an-kien-truc', NULL, NULL, '{\"name\":{\"en\":\"Architectural design\"},\"target\":\"_self\"}', 1, 'active', 1, 1, '2022-12-31 01:58:04', '2023-05-19 09:40:46'),
(78, 26, 'Dự án nội thất', NULL, '/du-an-noi-that', NULL, NULL, '{\"name\":{\"en\":\"Construction Design\"},\"target\":\"_self\"}', 2, 'active', 1, 1, '2022-12-31 01:59:27', '2023-05-19 09:40:46'),
(81, NULL, 'Liên kết', NULL, NULL, 'footer', NULL, NULL, 2, 'delete', 1, 1, '2022-12-31 04:08:52', '2023-03-15 02:02:23'),
(82, 81, 'Facebook', NULL, '/facebook.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 1, 'active', 1, 1, '2022-12-31 04:09:15', '2023-03-14 04:29:22'),
(83, 81, 'Instagram', NULL, '/instagram.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:09:27', '2023-03-14 04:29:35'),
(84, 81, 'Twitter', NULL, '/twitter.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 3, 'active', 1, 1, '2022-12-31 04:09:46', '2023-03-14 04:30:01'),
(85, 81, 'Youtube', NULL, '/youtube.com', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 4, 'active', 1, 1, '2022-12-31 04:09:53', '2023-03-14 04:30:18'),
(86, NULL, 'Liên kết', NULL, NULL, 'footer', NULL, '{\"name\":{\"en\":\"Links\"}}', 3, 'active', 1, 1, '2022-12-31 04:10:13', '2023-05-20 03:13:26'),
(87, 86, 'Trang chủ', NULL, '/', NULL, NULL, '{\"name\":{\"en\":\"Home\"},\"target\":\"_self\",\"style\":\"normal\"}', 1, 'active', 1, 1, '2022-12-31 04:10:23', '2023-05-20 03:01:55'),
(88, 86, 'Giới thiệu', NULL, '/gioi-thieu', NULL, NULL, '{\"name\":{\"en\":\"About Us\"},\"target\":\"_self\",\"style\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:10:34', '2023-05-20 03:02:03'),
(89, 86, 'Liên hệ', NULL, '/lien-he', NULL, NULL, '{\"name\":{\"en\":\"Contact\"},\"target\":\"_self\",\"style\":\"normal\"}', 4, 'active', 1, 1, '2022-12-31 04:10:44', '2023-05-20 03:02:14'),
(90, NULL, 'Xu hướng', NULL, NULL, 'footer', NULL, NULL, 4, 'delete', 1, 1, '2022-12-31 04:11:11', '2023-03-15 02:10:55'),
(92, 90, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:11:39', '2023-03-14 04:28:07'),
(93, 90, 'Về chúng tôi', NULL, '/gioi-thieu', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 3, 'active', 1, 1, '2022-12-31 04:11:49', '2023-03-14 04:27:52'),
(94, NULL, 'Chính sách', NULL, NULL, 'footer', NULL, NULL, 5, 'delete', 1, 1, '2022-12-31 04:12:09', '2023-03-15 02:21:42'),
(95, 94, 'Điều khoản dịch vụ', NULL, '/dieu-khoan-dich-vu', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 1, 'active', 1, 1, '2022-12-31 04:12:25', '2023-03-14 04:26:46'),
(96, 94, 'Chính sách hỗ trợ', NULL, '/chinh-sach-ho-tro', NULL, NULL, '{\"target\":\"_self\",\"menu_type\":\"normal\"}', 2, 'active', 1, 1, '2022-12-31 04:12:35', '2023-03-14 04:27:14'),
(100, 24, 'Về chúng tôi', NULL, '/gioi-thieu', NULL, NULL, '{\"name\":{\"en\":\"About Us\"},\"target\":\"_self\",\"style\":\"normal\"}', 2, 'active', 1, 1, '2023-03-13 04:45:33', '2023-05-19 09:40:46'),
(101, 24, 'Thiết kế kiến trúc', NULL, '/dich-vu/thiet-ke-kien-truc', NULL, NULL, '{\"name\":{\"en\":\"Architectural design\"},\"target\":\"_self\",\"style\":\"normal\"}', 3, 'active', 1, 1, '2023-03-13 04:46:30', '2023-05-19 09:40:46'),
(111, 24, 'Thiết kế nội thất', NULL, '/dich-vu/thiet-ke-noi-that', NULL, NULL, '{\"name\":{\"en\":\"Interior Design\"},\"target\":\"_self\",\"style\":\"normal\"}', 4, 'active', 1, 1, '2023-05-19 09:39:42', '2023-05-19 09:40:46'),
(112, 24, 'Thiết kế thi công', NULL, '/dich-vu/thiet-ke-thi-cong', NULL, NULL, '{\"name\":{\"en\":\"Construction Design\"},\"target\":\"_self\",\"style\":\"normal\"}', 5, 'active', 1, 1, '2023-05-19 09:40:41', '2023-05-20 02:09:41'),
(113, 86, 'Tin tức', NULL, '/tin-tuc', NULL, NULL, '{\"name\":{\"en\":\"News\"},\"target\":\"_self\",\"style\":\"normal\"}', 3, 'active', 1, 1, '2023-05-19 10:39:39', '2023-05-20 03:02:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_modules`
--

CREATE TABLE `tb_modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_modules`
--

INSERT INTO `tb_modules` (`id`, `module_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'admins', 'Quản lý người dùng', 'Chức năng quản lý người dùng hệ thống', 100, 'active', 1, 1, '2021-10-01 12:35:15', '2022-08-08 06:47:54'),
(5, 'admin_menus', 'Quản lý Menu Admin', NULL, 102, 'active', 1, 1, '2022-03-04 05:19:37', '2022-08-08 06:47:53'),
(6, 'roles', 'Quản lý nhóm quyền', NULL, 101, 'active', 1, 1, '2022-03-04 05:20:18', '2022-08-08 06:47:54'),
(7, 'menus', 'Quản lý Menu Website Public', NULL, 94, 'active', 1, 1, '2022-03-04 05:20:46', '2022-08-08 06:49:15'),
(8, 'block_contents', 'Quản lý Khối nội dung', NULL, 96, 'active', 1, 1, '2022-03-04 05:21:07', '2022-08-08 06:49:14'),
(9, 'pages', 'Quản lý Pages - Trang', NULL, 95, 'active', 1, 1, '2022-03-04 05:21:19', '2022-08-08 06:49:15'),
(10, 'cms_taxonomys', 'Quản lý danh mục - thể loại', NULL, 3, 'active', 1, 1, '2022-03-04 05:21:40', '2022-03-04 05:29:06'),
(11, 'cms_posts', 'Quản lý bài viết', NULL, 4, 'active', 1, 1, '2022-03-04 05:22:17', '2022-03-04 05:29:11'),
(12, 'cms_services', 'Quản lý dịch vụ', NULL, 5, 'deactive', 1, 1, '2022-03-04 05:22:40', '2022-12-07 02:40:50'),
(13, 'cms_products', 'Quản lý sản phẩm', NULL, 6, 'active', 1, 1, '2022-03-04 05:22:52', '2022-11-06 09:15:07'),
(16, 'web_information', 'Quản lý thông tin website', NULL, 91, 'active', 1, 1, '2022-03-04 05:24:37', '2022-08-08 06:49:17'),
(17, 'web_image', 'Quản lý hình ảnh hệ thống', NULL, 92, 'active', 1, 1, '2022-03-04 05:25:38', '2022-08-08 06:49:17'),
(18, 'web_social', 'Quản lý liên kết MXH', NULL, 90, 'active', 1, 1, '2022-03-04 05:25:53', '2022-08-08 06:49:18'),
(19, 'contacts', 'Quản lý liên hệ', NULL, 1, 'active', 1, 1, '2022-03-04 05:26:39', '2022-08-08 06:44:47'),
(20, 'call_request', 'Quản lý đăng ký tư vấn', NULL, 2, 'active', 1, 1, '2022-08-08 06:42:19', '2023-03-15 03:29:09'),
(21, 'web_source', 'Quản lý mã nhúng CSS - JS', NULL, 93, 'active', 1, 1, '2022-08-08 06:46:02', '2022-08-08 06:49:16'),
(22, 'order_services', 'Quản lý đăng ký dịch vụ', NULL, NULL, 'deactive', 1, 1, '2022-08-08 06:50:09', '2023-01-03 09:59:04'),
(23, 'cms_resource', 'Quản lý danh sách đại lý', NULL, 5, 'active', 1, 1, '2023-03-15 03:28:57', '2023-03-15 03:30:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_module_functions`
--

CREATE TABLE `tb_module_functions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_id` bigint(20) UNSIGNED NOT NULL,
  `function_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_module_functions`
--

INSERT INTO `tb_module_functions` (`id`, `module_id`, `function_code`, `name`, `description`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(7, 19, 'contacts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 05:32:15', '2022-03-04 05:35:40'),
(8, 19, 'contacts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 05:35:45', '2022-03-04 05:35:45'),
(9, 19, 'contacts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 05:35:48', '2022-03-04 05:35:48'),
(10, 19, 'contacts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 05:35:51', '2022-03-04 05:35:51'),
(11, 19, 'contacts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 05:35:55', '2022-03-04 05:35:55'),
(12, 19, 'contacts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 05:35:58', '2022-03-04 05:35:58'),
(27, 1, 'admins.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(28, 1, 'admins.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(29, 1, 'admins.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(30, 1, 'admins.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(31, 1, 'admins.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(32, 1, 'admins.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(39, 5, 'admin_menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(40, 5, 'admin_menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(41, 5, 'admin_menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(42, 5, 'admin_menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(43, 5, 'admin_menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(44, 5, 'admin_menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(45, 6, 'roles.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(46, 6, 'roles.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(47, 6, 'roles.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(48, 6, 'roles.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(49, 6, 'roles.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(50, 6, 'roles.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(51, 7, 'menus.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(52, 7, 'menus.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(53, 7, 'menus.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(54, 7, 'menus.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(55, 7, 'menus.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(56, 7, 'menus.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(57, 8, 'block_contents.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(58, 8, 'block_contents.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(59, 8, 'block_contents.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(60, 8, 'block_contents.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(61, 8, 'block_contents.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(62, 8, 'block_contents.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(63, 9, 'pages.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(64, 9, 'pages.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(65, 9, 'pages.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(66, 9, 'pages.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(67, 9, 'pages.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(68, 9, 'pages.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(75, 10, 'cms_taxonomys.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(76, 10, 'cms_taxonomys.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(77, 10, 'cms_taxonomys.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(78, 10, 'cms_taxonomys.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(79, 10, 'cms_taxonomys.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(80, 10, 'cms_taxonomys.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(81, 11, 'cms_posts.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(82, 11, 'cms_posts.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(83, 11, 'cms_posts.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(84, 11, 'cms_posts.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(85, 11, 'cms_posts.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(86, 11, 'cms_posts.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(87, 12, 'cms_services.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-03-04 06:51:52'),
(88, 12, 'cms_services.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-03-04 06:51:55'),
(89, 12, 'cms_services.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-03-04 06:51:58'),
(90, 12, 'cms_services.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-03-04 06:52:01'),
(91, 12, 'cms_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-03-04 06:52:03'),
(92, 12, 'cms_services.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-03-04 06:52:06'),
(93, 13, 'cms_products.index', 'Xem danh sách', NULL, 1, 'active', 1, 1, '2022-03-04 06:51:52', '2022-11-06 09:15:42'),
(94, 13, 'cms_products.create', 'Thêm mới (Form nhập)', NULL, 2, 'active', 1, 1, '2022-03-04 06:51:55', '2022-11-06 09:15:42'),
(95, 13, 'cms_products.store', 'Thêm mới (Lưu thông tin)', NULL, 3, 'active', 1, 1, '2022-03-04 06:51:58', '2022-11-06 09:15:41'),
(96, 13, 'cms_products.edit', 'Sửa thông tin (Form nhập)', NULL, 4, 'active', 1, 1, '2022-03-04 06:52:01', '2022-11-06 09:15:41'),
(97, 13, 'cms_products.update', 'Sửa thông tin (Lưu thông tin)', NULL, 5, 'active', 1, 1, '2022-03-04 06:52:03', '2022-11-06 09:15:40'),
(98, 13, 'cms_products.destroy', 'Xóa', NULL, 6, 'active', 1, 1, '2022-03-04 06:52:06', '2022-11-06 09:15:40'),
(117, 16, 'web.information', 'Xem thông tin website', NULL, 1, 'active', 1, 1, '2022-03-04 07:24:06', '2022-03-04 07:24:06'),
(118, 16, 'web.information.update', 'Cập nhật thông tin website', NULL, 2, 'active', 1, 1, '2022-03-04 07:24:24', '2022-03-04 07:24:24'),
(119, 17, 'web.image', 'Xem hình ảnh hệ thống', NULL, 1, 'active', 1, 1, '2022-03-04 07:25:11', '2022-03-04 07:25:11'),
(120, 17, 'web.image.update', 'Cập nhật hình ảnh hệ thống', NULL, 2, 'active', 1, 1, '2022-03-04 07:25:34', '2022-03-04 07:25:34'),
(121, 18, 'web.social', 'Xem liên kết MXH', NULL, 1, 'active', 1, 1, '2022-03-04 07:26:03', '2022-03-04 07:26:03'),
(122, 18, 'web.social.update', 'Cập nhật liên kết MXH', NULL, 2, 'active', 1, 1, '2022-03-04 07:26:23', '2022-03-04 07:26:23'),
(123, 20, 'call_request.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(124, 20, 'call_request.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:30', '2022-08-08 06:44:30'),
(125, 20, 'call_request.show', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(126, 20, 'call_request.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:44:31', '2022-08-08 06:44:31'),
(127, 21, 'web.source.update', 'Cập nhật mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(128, 21, 'web.source', 'Xem chi tiết mã', NULL, NULL, 'active', 1, 1, '2022-08-08 06:46:40', '2022-08-08 06:46:40'),
(129, 22, 'order_services.destroy', 'Xóa', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(130, 22, 'order_services.update', 'Sửa thông tin (Lưu thông tin)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:30', '2022-08-08 06:51:30'),
(131, 22, 'order_services.edit', 'Sửa thông tin (Form nhập)', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31'),
(132, 22, 'order_services.index', 'Xem danh sách', NULL, NULL, 'active', 1, 1, '2022-08-08 06:51:31', '2022-08-08 06:51:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_options`
--

CREATE TABLE `tb_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(255) NOT NULL,
  `option_value` longtext NOT NULL,
  `description` text DEFAULT NULL,
  `is_system_param` tinyint(1) DEFAULT 1,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_options`
--

INSERT INTO `tb_options` (`id`, `option_name`, `option_value`, `description`, `is_system_param`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(2, 'information', '{\"site_name\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n d\\u1ecbch v\\u1ee5 v\\u00e0 th\\u01b0\\u01a1ng m\\u1ea1i NOVA\",\"phone\":\"0914.088.899\",\"email\":\"novaexpress.vn@gmail.com\",\"address\":\"241 ph\\u1ed1 Quan Hoa, ph\\u01b0\\u1eddng Quan Hoa, qu\\u1eadn C\\u1ea7u Gi\\u1ea5y, TP H\\u00e0 N\\u1ed9i\",\"seo_title\":\"C\\u00f4ng ty c\\u1ed5 ph\\u1ea7n d\\u1ecbch v\\u1ee5 v\\u00e0 th\\u01b0\\u01a1ng m\\u1ea1i NOVA\",\"seo_keyword\":\"\\u0110\\u1ed3 d\\u00f9ng v\\u0103n ph\\u00f2ng\",\"seo_description\":null}', 'Các dữ liệu cấu trúc liên quan đến thông tin liên hệ của hệ thống website', 0, 1, 1, '2021-10-02 05:06:00', '2023-03-14 04:12:06'),
(5, 'image', '{\"logo_header\":\"\\/data\\/cms-image\\/1\\/logo\\/logo.png\",\"logo_footer\":\"\\/data\\/cms-image\\/1\\/logo\\/logo.png\",\"favicon\":\"\\/data\\/cms-image\\/1\\/logo\\/logo.png\",\"background_breadcrumbs\":\"\\/data\\/cms-image\\/1\\/resource\\/Model.7.png\",\"seo_og_image\":\"\\/data\\/cms-image\\/1\\/logo\\/logo.png\"}', 'Danh sách các hình ảnh cấu hình trên hệ thống tại các vị trí', 0, 1, 1, '2021-10-11 09:22:56', '2023-05-19 09:41:59'),
(6, 'social', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/\",\"youtube\":\"https:\\/\\/www.youtube.com\\/\",\"instagram\":\"https:\\/\\/www.instagram.com\\/\",\"twitter\":\"https:\\/\\/www.twitter.com\\/\",\"call_now\":\"0914.088.899\",\"zalo\":\"https:\\/\\/zalo.me\\/0914088899\",\"messenger\":\"https:\\/\\/www.facebook.com\\/\"}', 'Danh sách các Social network của hệ thống', 0, 1, 1, '2022-02-14 10:35:40', '2023-05-19 10:22:56'),
(7, 'page', '{\r\n\"frontend.home\":  1\r\n}', NULL, 0, 1, 1, '2022-05-26 11:03:52', '2022-06-09 04:03:39'),
(8, 'source_code', '{\"header\":null,\"footer\":null,\"map\":\"<iframe src=\\\"https:\\/\\/www.google.com\\/maps\\/embed?pb=!1m18!1m12!1m3!1d3723.8863391373734!2d105.80380921488353!3d21.037233385993787!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab157ba2798b%3A0xd6cdd02f918d781f!2zMjQxIFAuIFF1YW4gSG9hLCBRdWFuIEhvYSwgQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1678847933130!5m2!1svi!2s\\\" width=\\\"100%\\\" height=\\\"60\\\" style=\\\"border:0;\\\" allowfullscreen=\\\"\\\" loading=\\\"lazy\\\" referrerpolicy=\\\"no-referrer-when-downgrade\\\"><\\/iframe>\"}', NULL, 0, 1, 1, '2022-06-07 02:24:11', '2023-03-15 02:40:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_orders`
--

CREATE TABLE `tb_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_type` varchar(255) NOT NULL DEFAULT 'product',
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) NOT NULL DEFAULT 'new',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_orders`
--

INSERT INTO `tb_orders` (`id`, `is_type`, `customer_id`, `name`, `email`, `phone`, `address`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'service', NULL, 'Quản lý đăng ký sự kiện', 'thangnh.edu@gmail.com', '0912 568 999', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 09:46:37', '2022-10-31 09:46:37'),
(2, 'product', NULL, 'Thắng Nguyễn 2', 'huuthangb2k50@gmail.com', '098 226 9600', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(17, 'product', NULL, 'Nhật Minh', 'nguyenvana@gmail.com', '03666666666', 'Hoàng Mai Hà Nội', '123456', NULL, NULL, 'new', NULL, NULL, '2023-01-03 09:51:08', '2023-01-03 09:51:08'),
(19, 'product', 10, 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', '0388830059', 'Bạch Hạ - Phú Xuyên', 'haha', NULL, NULL, 'new', NULL, NULL, '2023-03-14 10:55:34', '2023-03-14 10:55:34'),
(20, 'product', 10, 'Lê Mạnh Tưởng', NULL, '0388830059', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-16 07:02:18', '2023-03-16 07:02:18'),
(21, 'product', 10, 'Lê Mạnh Tưởng', NULL, '0388830059', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-16 08:00:33', '2023-03-16 08:00:33'),
(34, 'product', 10, 'Lê Mạnh Tưởng', NULL, '0388830059', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-16 09:14:48', '2023-03-16 09:14:48'),
(35, 'product', 10, 'Lê Mạnh Tưởng', NULL, '0388830059', NULL, NULL, NULL, NULL, 'new', NULL, NULL, '2023-03-16 09:15:52', '2023-03-16 09:15:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_order_details`
--

CREATE TABLE `tb_order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` double(20,2) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `discount` double(20,2) DEFAULT NULL,
  `customer_note` text DEFAULT NULL,
  `admin_note` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `status` varchar(255) DEFAULT NULL,
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_order_details`
--

INSERT INTO `tb_order_details` (`id`, `order_id`, `item_id`, `quantity`, `price`, `color`, `discount`, `customer_note`, `admin_note`, `json_params`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 1, 44, 1, 5000000.00, NULL, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 09:46:38', '2022-10-31 09:46:38'),
(2, 2, 44, 1, 5000000.00, NULL, NULL, NULL, NULL, '{\"post_type\":\"product\",\"post_link\":\"http:\\/\\/fhmvn.test\\/kho-giao-dien\\/ban-hang\\/mau-website-ban-hang-01-44.html\"}', NULL, NULL, NULL, '2022-10-31 10:02:12', '2022-10-31 10:02:12'),
(21, 17, 53, 2, 600000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 17, 54, 1, 50000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 18, 57, 1, 10000000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 19, 101, 1, 20000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 19, 107, 1, 20000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 19, 100, 1, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 19, 94, 1, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 20, 112, 1, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 21, 112, 3, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 21, 109, 1, 10000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 21, 111, 1, 5000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 34, 112, 4, 10000.00, 'Vàng trắng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 35, 112, 2, 10000.00, 'Vàng trắng', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2023-03-16 09:16:01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_pages`
--

CREATE TABLE `tb_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `keyword` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_page` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_pages`
--

INSERT INTO `tb_pages` (`id`, `name`, `title`, `keyword`, `description`, `content`, `route_name`, `alias`, `json_params`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`, `is_page`) VALUES
(1, 'Trang chủ', NULL, NULL, NULL, NULL, 'frontend.home', 'trang-chu', '{\"og_image\":null,\"template\":\"home.primary\",\"block_content\":[362,366,367,371,376,377,378,379,386,391,400,401]}', 1, 'active', 1, 1, '2022-03-23 09:35:33', '2023-05-19 10:36:40', 1),
(3, 'Danh mục', 'Danh mục', NULL, NULL, NULL, 'frontend.cms.taxonomy', 'danh-muc', '{\"og_image\":null,\"template\":\"post.default\",\"block_content\":[412]}', 2, 'active', 1, 1, '2022-06-02 11:20:50', '2023-05-19 14:31:21', 0),
(4, 'Chi tiết nội dung', NULL, NULL, NULL, NULL, 'frontend.cms.detail', 'chi-tiet-bai-viet', '{\"og_image\":null,\"template\":\"post.detail\",\"block_content\":[412]}', 3, 'active', 1, 1, '2022-06-03 02:52:10', '2023-05-19 14:31:31', 0),
(13, 'Liên hệ', 'Liên hệ với chúng tôi', NULL, NULL, NULL, 'frontend.contact', 'lien-he', '{\"og_image\":null,\"template\":\"contact.default\",\"block_content\":[412]}', 6, 'active', 1, 1, '2022-06-07 07:35:49', '2023-05-19 14:37:17', 1),
(19, 'Tìm kiếm', NULL, NULL, NULL, NULL, 'frontend.search', 'tim-kiem', '{\"og_image\":null,\"template\":\"search.default\",\"block_content\":[412]}', 7, 'active', 1, 1, '2022-07-18 08:36:34', '2023-05-19 14:37:26', 1),
(30, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[\"94\"]}', NULL, 'delete', 1, 1, '2022-12-05 09:09:28', '2022-12-31 04:26:58', 1),
(31, 'Giỏ hàng', 'Giỏ hàng', NULL, NULL, NULL, 'frontend.order.cart', 'gio-hang', '{\"og_image\":null,\"template\":\"cart.default\",\"block_content\":[412]}', 4, 'active', 1, 1, '2022-12-31 04:26:34', '2023-05-19 14:37:06', 1),
(32, 'Giới thiệu', 'Giới thiệu', NULL, NULL, NULL, 'frontend.page', 'gioi-thieu', '{\"og_image\":null,\"template\":\"page.intro\",\"block_content\":[402,403,408,401]}', 5, 'active', 1, 1, '2023-01-03 15:37:40', '2023-05-19 10:51:58', 1),
(33, 'Đại lý', 'Danh sách đại lý', NULL, NULL, NULL, 'frontend.branch', 'dai-ly', '{\"og_image\":null,\"template\":\"branch.default\",\"block_content\":[412]}', 8, 'active', 1, 1, '2023-03-15 03:57:43', '2023-05-19 14:37:33', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_popups`
--

CREATE TABLE `tb_popups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_popups`
--

INSERT INTO `tb_popups` (`id`, `title`, `content`, `image`, `json_params`, `start_time`, `end_time`, `duration`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Home Popup', '<p>Nullam mollis ultrices est. Nulla in justo lacinia, scelerisque purus et, semper tortor. Donec bibendum leo vitae commodo porttitor. Proin tempus sollicitudin odio in feugiat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ultrices vitae nisl tristique commodo. Phasellus porttitor metus at mattis ultricies. In imperdiet nec nunc in tincidunt.</p>\r\n\r\n<p>Curabitur faucibus dolor at dui lobortis, eget dictum nisi mattis. Fusce risus dui, fringilla non elit sit amet, lobortis interdum eros. Donec mattis lectus quis elit fermentum lacinia. Nullam at ligula semper ante mollis pretium. Nam euismod velit ut quam accumsan vestibulum. Etiam diam augue, dapibus ac placerat nec, accumsan eget nibh. Cras sodales, leo ut volutpat laoreet, velit enim pharetra magna, at dapibus lacus elit vel mi. Nullam a massa ac ligula scelerisque maximus. Quisque dictum quis lorem ut sodales. Duis at semper odio. Morbi in sapien vel lacus posuere mattis ac eget ante. Etiam viverra accumsan rhoncus. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>', '/data/cms-image/banner/no-banner.jpg', '{\"page\":[\"1\",\"3\",\"4\"]}', '2022-06-27 00:00:00', '2022-06-28 00:00:00', 5, 'active', 1, 1, '2022-06-27 15:22:00', '2022-06-27 18:01:38'),
(2, 'Thông báo bảo trì hệ thống', NULL, '/data/cms-image/banner/1.jpg', '{\"page\":[\"1\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\",\"11\",\"13\",\"14\",\"15\",\"16\"]}', '2022-06-28 00:00:00', '2022-06-28 00:00:00', NULL, 'deactive', 1, 1, '2022-06-27 15:42:38', '2022-06-27 18:10:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `json_access` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_access`)),
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_roles`
--

INSERT INTO `tb_roles` (`id`, `name`, `description`, `json_access`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Quyền quản trị nội dung', 'Dành cho nhân viên thiết kế và cập nhật nội dung', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"74\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\"]}', 1, 'active', 1, 1, '2021-10-02 10:59:48', '2022-12-07 02:42:01'),
(2, 'Quản trị hệ thống', 'Quyền dành cho người quản trị hệ thống', '{\"menu_id\":[\"72\",\"62\",\"59\",\"51\",\"52\",\"53\",\"73\",\"74\",\"75\",\"13\",\"70\",\"46\",\"45\",\"44\",\"71\",\"58\",\"42\",\"41\",\"17\",\"10\",\"3\",\"5\",\"6\"],\"function_code\":[\"call_request.index\",\"call_request.show\",\"call_request.update\",\"call_request.destroy\",\"contacts.index\",\"contacts.create\",\"contacts.store\",\"contacts.edit\",\"contacts.update\",\"contacts.destroy\",\"cms_taxonomys.index\",\"cms_taxonomys.create\",\"cms_taxonomys.store\",\"cms_taxonomys.edit\",\"cms_taxonomys.update\",\"cms_taxonomys.destroy\",\"cms_posts.index\",\"cms_posts.create\",\"cms_posts.store\",\"cms_posts.edit\",\"cms_posts.update\",\"cms_posts.destroy\",\"cms_products.index\",\"cms_products.create\",\"cms_products.store\",\"cms_products.edit\",\"cms_products.update\",\"cms_products.destroy\",\"web.social\",\"web.social.update\",\"web.information\",\"web.information.update\",\"web.image\",\"web.image.update\",\"web.source\",\"web.source.update\",\"menus.index\",\"menus.create\",\"menus.store\",\"menus.edit\",\"menus.update\",\"menus.destroy\",\"pages.index\",\"pages.create\",\"pages.store\",\"pages.edit\",\"pages.update\",\"pages.destroy\",\"block_contents.index\",\"block_contents.create\",\"block_contents.store\",\"block_contents.edit\",\"block_contents.update\",\"block_contents.destroy\",\"admins.index\",\"admins.create\",\"admins.store\",\"admins.edit\",\"admins.update\",\"admins.destroy\",\"roles.index\",\"roles.create\",\"roles.store\",\"roles.edit\",\"roles.update\",\"roles.destroy\",\"admin_menus.index\",\"admin_menus.create\",\"admin_menus.store\",\"admin_menus.edit\",\"admin_menus.update\",\"admin_menus.destroy\"]}', 2, 'active', 1, 1, '2021-10-02 11:28:09', '2022-12-07 02:43:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widgets`
--

CREATE TABLE `tb_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_code` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `brief` text DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `image` varchar(255) DEFAULT NULL,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widgets`
--

INSERT INTO `tb_widgets` (`id`, `widget_code`, `title`, `brief`, `json_params`, `image`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'header', 'Header Style 1', 'Header 1 brief content', '{\"layout\":null,\"style\":null,\"component\":[\"1\",\"2\"]}', NULL, 10, 'active', 1, 1, '2022-05-04 14:59:07', '2022-05-10 07:29:20'),
(2, 'footer', 'Footer Style 1', NULL, '{\"layout\":null,\"style\":null,\"component\":[\"2\",\"1\"]}', NULL, 20, 'active', 1, 1, '2022-05-10 07:29:03', '2022-05-10 07:29:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_widget_configs`
--

CREATE TABLE `tb_widget_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `widget_code` varchar(255) NOT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `is_config` tinyint(1) NOT NULL DEFAULT 1,
  `iorder` int(11) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `admin_created_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_widget_configs`
--

INSERT INTO `tb_widget_configs` (`id`, `name`, `description`, `widget_code`, `json_params`, `is_config`, `iorder`, `status`, `admin_created_id`, `admin_updated_id`, `created_at`, `updated_at`) VALUES
(1, 'Header', NULL, 'header', NULL, 1, 1, 'active', 1, 1, '2022-04-26 09:40:39', '2022-04-26 09:40:39'),
(2, 'Footer', NULL, 'footer', NULL, 1, 2, 'active', 1, 1, '2022-04-26 09:42:09', '2022-04-26 09:42:09'),
(3, 'Left Sidebar', NULL, 'left_sidebar', NULL, 1, 3, 'active', 1, 1, '2022-04-26 09:42:46', '2022-04-26 09:42:46'),
(4, 'Right Sidebar', NULL, 'right_sidebar', NULL, 1, 4, 'active', 1, 1, '2022-04-26 09:43:02', '2022-04-26 09:43:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `affiliate_code` varchar(255) DEFAULT NULL,
  `total_score` double NOT NULL DEFAULT 0,
  `total_money` double NOT NULL DEFAULT 0,
  `total_payment` double NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `email_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verification_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `is_super_user` tinyint(1) NOT NULL DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `count_view_info` int(11) NOT NULL DEFAULT 0,
  `country_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `json_params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_params`)),
  `json_profiles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_profiles`)),
  `admin_updated_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `affiliate_id`, `affiliate_code`, `total_score`, `total_money`, `total_payment`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `user_type`, `email_verified`, `email_verification_code`, `status`, `is_super_user`, `avatar`, `birthday`, `sex`, `phone`, `count_view_info`, `country_id`, `city_id`, `district_id`, `json_params`, `json_profiles`, `admin_updated_id`) VALUES
(2, NULL, '2', 105091500, 105091500, 0, 'Thắng Nguyễn', 'meta_thangnh', NULL, '$2y$10$V78sbM3Ny/Tvd/bWOLjCLeDDSgLmwlds8tWQh/nhXWCcQheYbtcQy', NULL, '2022-07-11 02:33:03', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'mRpdEly6Bx3', 79243750, 79243750, 25850000, 'Thắng Nguyễn EDU', 'huuthangb2k50@gmail.com', NULL, '$2y$10$FLuZlM/WTtFZPKJW4PyC0efVJeTFeWSzichj1d/55v7Qe0aoEKVJu', NULL, '2022-07-11 03:04:45', '2022-07-14 04:28:17', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '096 220 92 11', 0, NULL, NULL, NULL, NULL, NULL, 1),
(4, 3, 'qBmtRsfkwH4', 0, 0, 0, 'Thắng Nguyễn 2', 'meta_test', NULL, '$2y$10$SGOy7paQ82Pt8lbIg1Z0nuAhCR04yxYTIhXbqbK.3HoSSO/FIrumy', NULL, '2022-07-11 03:20:37', '2022-07-11 03:20:37', NULL, 0, NULL, 'active', 0, NULL, NULL, 'female', '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(5, 4, 'U7fj3GtOb95', 0, 0, 0, 'Nguyễn Hữu Thắng', 'meta_thangnguyen', NULL, '$2y$10$qb4Y74yT4dQhwk3ER8Cyq.qZBbif//5SLb3JK7PWysraIQ43Gnu/y', NULL, '2022-07-11 03:53:11', '2022-07-11 03:53:11', NULL, 0, NULL, 'active', 0, NULL, NULL, 'male', '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 3, 'lM2Z3vEmFM6', 0, 0, 0, 'Bắc Hà AFL', 'meta_bacha', NULL, '$2y$10$36l5V8DsEp7rWar78gGaZe2XvrtKfg6qD/XvB/n/DFj7cg8iwF18y', NULL, '2022-07-11 18:08:34', '2022-07-11 18:08:34', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0936.267.568', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, 'ajXYJMQwtg7', 0, 0, 0, 'Lịch sử Apply', 'test_lai', NULL, '$2y$10$GpNMSXWwC4fHsRciLRCabOIZFakxt1KUh.HkD/mAAaBQYw.C03nd.', NULL, '2022-07-11 18:11:04', '2022-07-11 18:11:04', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0912 568 999', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, '1mQVhkwtR38', 0, 0, 0, 'Đặt lại mật khẩu', 'huuthangb2k250@gmail.com', NULL, '$2y$10$h2VUcj4EumZJHqG/ERzGDex59lR0qff6gkqD/9G4k8NlgE0ASaBEC', NULL, '2022-07-11 18:13:20', '2022-07-11 18:13:20', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '098 226 9600', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 4, 'mLu1qHUYPF9', 0, 0, 0, 'Tags', 'test2@gmail.com', NULL, '$2y$10$g5hcIFbN9zr37wiikne1CuEmLMUC9JMUDfjvyu1URsUGCTLV5h5FK', NULL, '2022-07-11 18:25:50', '2022-07-11 18:30:37', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '1900 1570', 0, NULL, NULL, NULL, NULL, NULL, 1),
(10, NULL, 'ukSRd10', 0, 0, 0, 'Lê Mạnh Tưởng', 'tuonglee1001@gmail.com', NULL, '$2y$10$3oR9gz.4o5RDt/Qrlvs2DeI0lQOk7vohFGy9yqDP9fivO5j6Of/Je', NULL, '2023-03-14 09:15:38', '2023-03-14 09:15:38', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0388830059', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, NULL, 'UKlBr11', 0, 0, 0, 'Lê Nhật Minh', 'tuonglee1995@gmail.com', NULL, '$2y$10$O7FhWhh7Ik/m8RPeAEfx/uahlLp9FvZZ6vY3tIY5hD6g2aTj/Z54C', NULL, '2023-03-14 09:47:30', '2023-03-14 09:47:30', NULL, 0, NULL, 'active', 0, NULL, NULL, NULL, '0388830059', 0, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD KEY `admins_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `admins_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_admin_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_admin_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_historys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_historys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_affiliate_payments_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_affiliate_payments_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_blocks_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_blocks_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_block_contents_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_block_contents_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_bookings_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_bookings_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_branchs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_branchs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_posts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_posts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_cms_taxonomys_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_cms_taxonomys_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_components_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_components_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_component_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_component_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_contacts_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_contacts_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_menus_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_menus_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_modules_module_code_unique` (`module_code`),
  ADD KEY `tb_modules_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_modules_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_module_functions_function_code_unique` (`function_code`),
  ADD KEY `tb_module_functions_module_id_foreign` (`module_id`),
  ADD KEY `tb_module_functions_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_module_functions_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tb_options_option_name_unique` (`option_name`),
  ADD KEY `tb_options_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_options_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_orders_customer_id_foreign` (`customer_id`),
  ADD KEY `tb_orders_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_orders_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_order_details_order_id_foreign` (`order_id`),
  ADD KEY `tb_order_details_item_id_foreign` (`item_id`),
  ADD KEY `tb_order_details_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_order_details_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_pages_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_pages_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_popups_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_popups_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_roles_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_roles_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widgets_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widgets_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tb_widget_configs_admin_created_id_foreign` (`admin_created_id`),
  ADD KEY `tb_widget_configs_admin_updated_id_foreign` (`admin_updated_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_admin_updated_id_foreign` (`admin_updated_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tb_logs`
--
ALTER TABLE `tb_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `admins_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_admin_menus`
--
ALTER TABLE `tb_admin_menus`
  ADD CONSTRAINT `tb_admin_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_admin_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_historys`
--
ALTER TABLE `tb_affiliate_historys`
  ADD CONSTRAINT `tb_affiliate_historys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_historys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_affiliate_payments`
--
ALTER TABLE `tb_affiliate_payments`
  ADD CONSTRAINT `tb_affiliate_payments_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_affiliate_payments_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_blocks`
--
ALTER TABLE `tb_blocks`
  ADD CONSTRAINT `tb_blocks_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_blocks_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_block_contents`
--
ALTER TABLE `tb_block_contents`
  ADD CONSTRAINT `tb_block_contents_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_block_contents_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_bookings`
--
ALTER TABLE `tb_bookings`
  ADD CONSTRAINT `tb_bookings_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_bookings_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_branchs`
--
ALTER TABLE `tb_branchs`
  ADD CONSTRAINT `tb_branchs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_branchs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_posts`
--
ALTER TABLE `tb_cms_posts`
  ADD CONSTRAINT `tb_cms_posts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_posts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_cms_taxonomys`
--
ALTER TABLE `tb_cms_taxonomys`
  ADD CONSTRAINT `tb_cms_taxonomys_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_cms_taxonomys_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_components`
--
ALTER TABLE `tb_components`
  ADD CONSTRAINT `tb_components_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_components_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_component_configs`
--
ALTER TABLE `tb_component_configs`
  ADD CONSTRAINT `tb_component_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_component_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_contacts`
--
ALTER TABLE `tb_contacts`
  ADD CONSTRAINT `tb_contacts_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_contacts_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_menus`
--
ALTER TABLE `tb_menus`
  ADD CONSTRAINT `tb_menus_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_menus_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_modules`
--
ALTER TABLE `tb_modules`
  ADD CONSTRAINT `tb_modules_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_modules_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_module_functions`
--
ALTER TABLE `tb_module_functions`
  ADD CONSTRAINT `tb_module_functions_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_module_functions_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_options`
--
ALTER TABLE `tb_options`
  ADD CONSTRAINT `tb_options_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_options_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_orders`
--
ALTER TABLE `tb_orders`
  ADD CONSTRAINT `tb_orders_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_orders_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_order_details`
--
ALTER TABLE `tb_order_details`
  ADD CONSTRAINT `tb_order_details_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_order_details_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_pages`
--
ALTER TABLE `tb_pages`
  ADD CONSTRAINT `tb_pages_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_pages_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_popups`
--
ALTER TABLE `tb_popups`
  ADD CONSTRAINT `tb_popups_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_popups_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD CONSTRAINT `tb_roles_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_roles_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widgets`
--
ALTER TABLE `tb_widgets`
  ADD CONSTRAINT `tb_widgets_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widgets_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `tb_widget_configs`
--
ALTER TABLE `tb_widget_configs`
  ADD CONSTRAINT `tb_widget_configs_admin_created_id_foreign` FOREIGN KEY (`admin_created_id`) REFERENCES `admins` (`id`),
  ADD CONSTRAINT `tb_widget_configs_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_admin_updated_id_foreign` FOREIGN KEY (`admin_updated_id`) REFERENCES `admins` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
