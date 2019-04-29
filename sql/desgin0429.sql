-- --------------------------------------------------------
-- 主机:                           188.131.174.115
-- 服务器版本:                        5.5.60-MariaDB - MariaDB Server
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 正在导出表  desgin.category 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`) VALUES
	(1, '猫鼠寓'),
	(2, '业主直租'),
	(3, '整租'),
	(4, '合租');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- 正在导出表  desgin.orderItem 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `orderItem` DISABLE KEYS */;
INSERT INTO `orderItem` (`id`, `pid`, `oid`, `uid`, `number`) VALUES
	(1, 5, 2, 1, 2),
	(2, 4, 3, 1, 1),
	(3, 4, 4, 1, 2),
	(4, 5, 5, 1, 2),
	(5, 3, 6, 1, 3),
	(6, 2, 7, 1, 1);
/*!40000 ALTER TABLE `orderItem` ENABLE KEYS */;

-- 正在导出表  desgin.order_ 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `order_` DISABLE KEYS */;
INSERT INTO `order_` (`id`, `orderCode`, `address`, `post`, `receiver`, `mobile`, `userMessage`, `createDate`, `payDate`, `deliveryDate`, `confirmDate`, `uid`, `status`) VALUES
	(1, '201904292029169583817', '', '', '', '', '', '2019-04-29 20:29:16', '2019-04-29 20:29:22', NULL, NULL, 1, 'delete'),
	(2, '201904292030350873179', '', '', '', '', '', '2019-04-29 20:30:35', '2019-04-29 20:30:42', '2019-04-29 20:56:34', '2019-04-29 20:57:03', 1, 'finish'),
	(3, '201904292111503526924', '', '', '', '', '', '2019-04-29 21:11:50', '2019-04-29 21:14:58', NULL, NULL, 1, 'waitDelivery'),
	(4, '20190429212020995342', '', '', '', '', '', '2019-04-29 21:20:20', '2019-04-29 21:20:25', NULL, NULL, 1, 'waitDelivery'),
	(5, '201904292139396813400', '', '', '', '', '', '2019-04-29 21:39:39', '2019-04-29 21:39:54', NULL, NULL, 1, 'waitDelivery'),
	(6, '201904292153552411090', '', '', '', '', '', '2019-04-29 21:53:55', '2019-04-29 21:54:04', NULL, NULL, 1, 'waitDelivery'),
	(7, '201904292201410995909', '', '', '', '', '', '2019-04-29 22:01:41', '2019-04-29 22:01:45', NULL, NULL, 1, 'waitDelivery');
/*!40000 ALTER TABLE `order_` ENABLE KEYS */;

-- 正在导出表  desgin.product 的数据：~5 rows (大约)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `name`, `subTitle`, `originalPrice`, `promotePrice`, `stock`, `cid`, `createDate`) VALUES
	(1, '中信泰富又一城3居室-03卧', '嘉定 嘉定新城', 1960, 1000, 12, 4, '2019-04-29 19:41:49'),
	(2, '中信泰富又一城3居室-03卧', '嘉定 嘉定新城', 1000, 1000, 12, 4, '2019-04-29 19:42:19'),
	(3, '中信泰富又一城3居室-03卧', '嘉定 嘉定新城', 1960, 1000, 12, 4, '2019-04-29 19:43:49'),
	(4, '路劲上海派2居室', '嘉定 安亭', 3390, 2000, 12, 3, '2019-04-29 20:07:22'),
	(5, '妙栏小区3居室-01卧', '浦东 川沙', 1930, 1000, 12, 3, '2019-04-29 20:08:32');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- 正在导出表  desgin.productImage 的数据：~28 rows (大约)
/*!40000 ALTER TABLE `productImage` DISABLE KEYS */;
INSERT INTO `productImage` (`id`, `pid`, `type`) VALUES
	(1, 3, 'single'),
	(2, 3, 'single'),
	(3, 3, 'single'),
	(4, 3, 'detail'),
	(5, 3, 'detail'),
	(6, 3, 'detail'),
	(7, 3, 'detail'),
	(8, 2, 'single'),
	(9, 2, 'single'),
	(10, 2, 'detail'),
	(11, 2, 'detail'),
	(12, 2, 'detail'),
	(13, 1, 'single'),
	(14, 1, 'single'),
	(15, 1, 'detail'),
	(16, 1, 'detail'),
	(17, 1, 'detail'),
	(18, 1, 'detail'),
	(19, 5, 'single'),
	(20, 5, 'single'),
	(21, 5, 'detail'),
	(22, 5, 'detail'),
	(23, 5, 'detail'),
	(24, 4, 'single'),
	(25, 4, 'single'),
	(26, 4, 'detail'),
	(27, 4, 'detail'),
	(28, 4, 'detail');
/*!40000 ALTER TABLE `productImage` ENABLE KEYS */;

-- 正在导出表  desgin.property 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` (`id`, `cid`, `name`) VALUES
	(1, 4, '面积'),
	(2, 4, '朝向'),
	(3, 4, '户型'),
	(4, 4, '楼层'),
	(5, 4, '交通'),
	(6, 3, '面积'),
	(7, 3, '朝向'),
	(8, 3, '户型'),
	(9, 3, '楼层'),
	(10, 3, '交通');
/*!40000 ALTER TABLE `property` ENABLE KEYS */;

-- 正在导出表  desgin.propertyvalue 的数据：~15 rows (大约)
/*!40000 ALTER TABLE `propertyvalue` DISABLE KEYS */;
INSERT INTO `propertyvalue` (`id`, `pid`, `ptid`, `value`) VALUES
	(1, 3, 1, '12.8'),
	(2, 3, 2, '南'),
	(3, 3, 3, '3室1厅'),
	(4, 3, 4, ' 02/6层'),
	(5, 3, 5, '距11号线三林东243米'),
	(6, 2, 1, '12.8'),
	(7, 2, 2, '南'),
	(8, 2, 3, '三室一厅'),
	(9, 2, 4, '02/6层'),
	(10, 2, 5, '距11号线三林东243米'),
	(11, 1, 1, '12.35'),
	(12, 1, 2, '南'),
	(13, 1, 3, '3室1厅 '),
	(14, 1, 4, '16/37层'),
	(15, 1, 5, ' 距11号线嘉定新城1793米');
/*!40000 ALTER TABLE `propertyvalue` ENABLE KEYS */;

-- 正在导出表  desgin.review 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` (`id`, `content`, `uid`, `pid`, `createDate`) VALUES
	(1, 'hao', 1, 5, '2019-04-29 22:08:33');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;

-- 正在导出表  desgin.user 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `password`, `salt`) VALUES
	(1, 'liuyanqi', '611406ef5c8e43000a916a0f3a99e200', 'qeTMRiJpf1J9hLy3bJbu/w==');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
