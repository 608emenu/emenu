-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2017 at 06:53 AM
-- Server version: 5.6.34
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emenu`
--

-- --------------------------------------------------------

--
-- Table structure for table `emenu_access`
--

CREATE TABLE `emenu_access` (
  `role_id` smallint(6) UNSIGNED NOT NULL,
  `node_id` smallint(6) UNSIGNED NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emenu_admin`
--

CREATE TABLE `emenu_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_admin`
--

INSERT INTO `emenu_admin` (`id`, `username`, `password`, `time`) VALUES
(1, 'admin', '202cb962ac59075b964b07152d234b70', '2017-05-25 06:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_alipay`
--

CREATE TABLE `emenu_alipay` (
  `id` int(11) NOT NULL,
  `alipayname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝名称',
  `partner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '合作身份者id',
  `key` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '安全检验码'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emenu_alipay`
--

INSERT INTO `emenu_alipay` (`id`, `alipayname`, `partner`, `key`) VALUES
(1, '1', '2', '3');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_good`
--

CREATE TABLE `emenu_good` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `old_price` text NOT NULL,
  `savepath` text NOT NULL,
  `image` text NOT NULL,
  `detail` text NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_good`
--

INSERT INTO `emenu_good` (`id`, `menu_id`, `sort`, `name`, `price`, `old_price`, `savepath`, `image`, `detail`, `status`, `time`) VALUES
(1, 1, 1, '一品杂粮', '55', '58', '/Uploads/2017-06-08/', '5938e6cf5496c.jpg', '', 1, '2017-06-08 05:55:27'),
(2, 1, 2, '金酱肉丝', '66', '68', '/Uploads/2017-06-08/', '5938e707634a6.jpg', '', 1, '2017-06-08 05:56:23'),
(3, 3, 4, '鸡丝面(碗)', '8', '8', '/Uploads/2017-06-08/', '5938e74138c4d.jpg', '', 1, '2017-06-08 05:57:21'),
(4, 3, 4, '海鲜面', '30', '35', '/Uploads/2017-06-08/', '5938e76747b19.jpg', '', 1, '2017-06-08 05:57:59'),
(5, 4, 3, '红菇土鸡汤', '36', '40', '/Uploads/2017-06-08/', '5938e79860215.jpg', '', 1, '2017-06-08 05:58:48'),
(6, 4, 3, '佛跳墙', '366', '388', '/Uploads/2017-06-08/', '5938e7bae278d.jpg', '', 1, '2017-06-08 05:59:22'),
(7, 5, 2, '水煮毛血旺', '66', '78', '/Uploads/2017-06-08/', '5938e7d7ee33d.jpg', '', 1, '2017-06-08 05:59:51'),
(8, 5, 2, '巴式烤鱼', '68', '78', '/Uploads/2017-06-08/', '5938e80a1756d.jpg', '', 1, '2017-06-08 06:00:42'),
(9, 6, 5, '醉虾', '88', '98', '/Uploads/2017-06-08/', '5938e835c8d4e.jpg', '<p>新鲜大虾，价格实惠</p>', 1, '2017-06-08 06:01:25'),
(10, 6, 5, '白切鸡', '48', '56', '/Uploads/2017-06-08/', '5938e858a1019.jpg', '<p>白白切切鸡鸡</p>', 1, '2017-06-08 06:02:00'),
(11, 7, 6, '夫妻肺片', '48', '56', '/Uploads/2017-06-08/', '5938e87e17c8b.jpg', '', 1, '2017-06-08 06:02:38'),
(12, 7, 6, '红酒燕窝', '888', '999', '/Uploads/2017-06-08/', '5938e8b228638.jpg', '', 1, '2017-06-08 06:03:30'),
(13, 8, 7, '干锅鲍鱼', '168', '188', '/Uploads/2017-06-08/', '5938e8dd90f17.jpg', '', 1, '2017-06-08 06:04:13'),
(14, 8, 7, '干锅乳鸽', '256', '288', '/Uploads/2017-06-08/', '5938e8fc7f2c3.jpg', '', 1, '2017-06-08 06:04:44'),
(15, 9, 8, '醪糟红烧肉', '128', '138', '/Uploads/2017-06-08/', '5938e92142e5b.jpg', '', 1, '2017-06-08 06:05:21'),
(16, 9, 8, '鲍汁白灵菇扣海参(例)', '98', '128', '/Uploads/2017-06-08/', '5938e940e414e.jpg', '', 1, '2017-06-08 06:05:52'),
(17, 3, 0, '馒头', '0.5', '1', '/Uploads/2017-06-05/', '5935009854cf2.jpg', '', 1, '2017-06-05 06:56:24'),
(18, 3, 0, '米饭', '1', '1.2', '/Uploads/2017-06-05/', '593500d06d56a.jpg', '', 1, '2017-06-05 06:57:20'),
(19, 10, 0, '果粒橙', '3.5', '4', '/Uploads/2017-06-05/', '59350300b9294.jpg', '', 1, '2017-06-05 07:06:40'),
(20, 10, 0, '绿茶', '3', '4', '/Uploads/2017-06-05/', '5935034ba8215.jpg', '', 1, '2017-06-05 07:07:55'),
(21, 10, 0, '红茶', '2', '2.5', '/Uploads/2017-06-05/', '5935038697de7.jpg', '', 1, '2017-06-05 07:08:54'),
(22, 10, 0, '真果粒', '1', '1.5', '/Uploads/2017-06-05/', '593503e314214.jpg', '', 1, '2017-06-05 07:10:27'),
(23, 10, 0, '蒙牛纯奶', '2', '2', '/Uploads/2017-06-05/', '593504296ff62.jpg', '', 1, '2017-06-05 07:11:37'),
(24, 9, 0, '西红柿炒鸡蛋', '8', '8', '/Uploads/2017-06-05/', '593504a3a526a.png', '', 1, '2017-06-05 07:13:39'),
(25, 9, 0, '干煸芸豆', '14', '15', '/Uploads/2017-06-05/', '593505b970a98.png', '', 1, '2017-06-05 07:18:17'),
(26, 1, 0, '蒜苔炒肉', '15', '16', '/Uploads/2017-06-05/', '59350645884e8.jpg', '', 1, '2017-06-05 07:20:37'),
(27, 9, 0, '酸辣土豆丝', '8', '9', '/Uploads/2017-06-05/', '5935069643a7b.png', '', 1, '2017-06-05 07:21:58'),
(28, 9, 0, '木耳炒肉', '14', '15', '/Uploads/2017-06-05/', '593506dcb2e35.jpg', '', 1, '2017-06-05 07:23:08'),
(29, 9, 0, '红烧茄子', '10', '12', '/Uploads/2017-06-05/', '59350711b0480.png', '', 1, '2017-06-05 07:24:01'),
(30, 1, 0, '宫保鸡丁', '18', '20', '/Uploads/2017-06-05/', '5935073a56d47.png', '', 1, '2017-06-05 07:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_info`
--

CREATE TABLE `emenu_info` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `notification` text NOT NULL,
  `theme` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_info`
--

INSERT INTO `emenu_info` (`id`, `name`, `notification`, `theme`) VALUES
(1, 'Emenu', '欢迎使用Emenu!', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_mail`
--

CREATE TABLE `emenu_mail` (
  `id` int(10) UNSIGNED NOT NULL,
  `smtp` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emenu_menu`
--

CREATE TABLE `emenu_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_menu`
--

INSERT INTO `emenu_menu` (`id`, `name`, `pid`) VALUES
(1, '  特色菜', 0),
(3, '主食', 0),
(4, '汤类', 0),
(5, '水煮类', 0),
(6, '凉菜类', 0),
(7, '下酒菜', 0),
(8, '铁锅类', 0),
(9, '热菜', 0),
(10, '饮料', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emenu_node`
--

CREATE TABLE `emenu_node` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) UNSIGNED DEFAULT NULL,
  `pid` smallint(6) UNSIGNED NOT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emenu_order`
--

CREATE TABLE `emenu_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `orderid` text NOT NULL,
  `totalprice` text NOT NULL,
  `pay_style` text NOT NULL,
  `pay_status` text NOT NULL,
  `note` text NOT NULL,
  `order_status` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cartdata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_order`
--

INSERT INTO `emenu_order` (`id`, `user_id`, `orderid`, `totalprice`, `pay_style`, `pay_status`, `note`, `order_status`, `time`, `cartdata`) VALUES
(1, 1, '1603070532392', '5.00', '货到付款', '1', '哈哈', '1', '2016-03-07 09:32:52', '[{"name":"苹果","num":"1","price":"5"}]'),
(3, 2, '1706050512209', '55.00', '货到付款', '0', '', '0', '2017-06-05 09:12:20', '[{&quot;name&quot;:&quot;一品杂粮&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;55&quot;}]'),
(5, 2, '1706080210105', '140.00', '货到付款', '1', '少辣，配送员最好是漂亮妹子', '0', '2017-06-08 06:24:51', '[{&quot;name&quot;:&quot;金酱肉丝&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;66&quot;},{&quot;name&quot;:&quot;鸡丝面(碗)&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;8&quot;},{&quot;name&quot;:&quot;海鲜面&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;30&quot;},{&quot;name&quot;:&quot;红菇土鸡汤&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;36&quot;}]'),
(6, 2, '1706080210457', '30.00', '货到付款', '0', '', '0', '2017-06-08 06:10:45', '[{&quot;name&quot;:&quot;海鲜面&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;30&quot;}]'),
(10, 2, '1706080220517', '104.00', '货到付款', '0', '', '0', '2017-06-08 06:20:51', '[{&quot;name&quot;:&quot;金酱肉丝&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;66&quot;},{&quot;name&quot;:&quot;海鲜面&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;30&quot;},{&quot;name&quot;:&quot;鸡丝面(碗)&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;8&quot;}]'),
(12, 2, '1706080222494', '440.00', '货到付款', '1', '', '1', '2017-06-08 06:23:37', '[{&quot;name&quot;:&quot;红菇土鸡汤&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;36&quot;},{&quot;name&quot;:&quot;鸡丝面(碗)&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;8&quot;},{&quot;name&quot;:&quot;海鲜面&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;30&quot;},{&quot;name&quot;:&quot;佛跳墙&quot;,&quot;num&quot;:&quot;1&quot;,&quot;price&quot;:&quot;366&quot;}]');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_role`
--

CREATE TABLE `emenu_role` (
  `id` smallint(6) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) UNSIGNED DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emenu_role_user`
--

CREATE TABLE `emenu_role_user` (
  `role_id` mediumint(9) UNSIGNED DEFAULT NULL,
  `admin_id` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emenu_user`
--

CREATE TABLE `emenu_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` text NOT NULL,
  `username` text NOT NULL,
  `phone` text NOT NULL,
  `password` text,
  `address` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_user`
--

INSERT INTO `emenu_user` (`id`, `uid`, `username`, `phone`, `password`, `address`, `time`) VALUES
(1, '1', '何先生', '15378708792', '', '郑州市金水区', '2016-03-04 07:35:45'),
(2, '', '卢巨帅', '123123123', NULL, '斯顿上', '2017-06-08 06:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_wxconfig`
--

CREATE TABLE `emenu_wxconfig` (
  `id` int(5) NOT NULL,
  `num` text NOT NULL,
  `token` text NOT NULL,
  `appid` text NOT NULL,
  `appsecret` text NOT NULL,
  `encodingaeskey` text NOT NULL,
  `mchid` text NOT NULL,
  `key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_wxconfig`
--

INSERT INTO `emenu_wxconfig` (`id`, `num`, `token`, `appid`, `appsecret`, `encodingaeskey`, `mchid`, `key`) VALUES
(1, 'wemall', 'wemall', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `emenu_wxmenu`
--

CREATE TABLE `emenu_wxmenu` (
  `id` int(5) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `name` varchar(10) NOT NULL,
  `key` varchar(200) NOT NULL,
  `url` varchar(300) NOT NULL,
  `pid` int(5) NOT NULL DEFAULT '0',
  `listorder` varchar(5) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_wxmenu`
--

INSERT INTO `emenu_wxmenu` (`id`, `type`, `name`, `key`, `url`, `pid`, `listorder`, `status`) VALUES
(1, 'click', '进入商城', 'BUY', '', 0, '', 1),
(2, 'view', '关于我们', '', 'http://m.baidu.com', 0, '3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `emenu_wxmessage`
--

CREATE TABLE `emenu_wxmessage` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `savepath` text NOT NULL,
  `picurl` text NOT NULL,
  `url` text NOT NULL,
  `key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `emenu_wxmessage`
--

INSERT INTO `emenu_wxmessage` (`id`, `type`, `title`, `description`, `savepath`, `picurl`, `url`, `key`) VALUES
(1, '0', 'wemall', '欢迎来到wemall1', '/Uploads/2016-03-07/', '56dd51a3ed4df.jpg', 'http://www.xxx.com/index.php?m=App&amp;c=Index&amp;a=index', 'BUY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emenu_access`
--
ALTER TABLE `emenu_access`
  ADD KEY `groupId` (`role_id`),
  ADD KEY `nodeId` (`node_id`);

--
-- Indexes for table `emenu_admin`
--
ALTER TABLE `emenu_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_alipay`
--
ALTER TABLE `emenu_alipay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_good`
--
ALTER TABLE `emenu_good`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_info`
--
ALTER TABLE `emenu_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_mail`
--
ALTER TABLE `emenu_mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_menu`
--
ALTER TABLE `emenu_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_node`
--
ALTER TABLE `emenu_node`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level` (`level`),
  ADD KEY `pid` (`pid`),
  ADD KEY `status` (`status`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `emenu_order`
--
ALTER TABLE `emenu_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_role`
--
ALTER TABLE `emenu_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `emenu_role_user`
--
ALTER TABLE `emenu_role_user`
  ADD KEY `group_id` (`role_id`),
  ADD KEY `user_id` (`admin_id`);

--
-- Indexes for table `emenu_user`
--
ALTER TABLE `emenu_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_wxconfig`
--
ALTER TABLE `emenu_wxconfig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_wxmenu`
--
ALTER TABLE `emenu_wxmenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emenu_wxmessage`
--
ALTER TABLE `emenu_wxmessage`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emenu_admin`
--
ALTER TABLE `emenu_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emenu_alipay`
--
ALTER TABLE `emenu_alipay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emenu_good`
--
ALTER TABLE `emenu_good`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `emenu_info`
--
ALTER TABLE `emenu_info`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emenu_mail`
--
ALTER TABLE `emenu_mail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emenu_menu`
--
ALTER TABLE `emenu_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `emenu_node`
--
ALTER TABLE `emenu_node`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emenu_order`
--
ALTER TABLE `emenu_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `emenu_role`
--
ALTER TABLE `emenu_role`
  MODIFY `id` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emenu_user`
--
ALTER TABLE `emenu_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emenu_wxconfig`
--
ALTER TABLE `emenu_wxconfig`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `emenu_wxmenu`
--
ALTER TABLE `emenu_wxmenu`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `emenu_wxmessage`
--
ALTER TABLE `emenu_wxmessage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
