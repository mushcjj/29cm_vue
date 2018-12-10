-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-12-10 10:13:52
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `29cm`
--

-- --------------------------------------------------------

--
-- 表的结构 `cm_cloth`
--

CREATE TABLE `cm_cloth` (
  `cid` int(4) NOT NULL,
  `fid` int(4) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `bpic` varchar(128) DEFAULT NULL,
  `lpic` varchar(128) DEFAULT NULL,
  `love` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cm_cloth`
--

INSERT INTO `cm_cloth` (`cid`, `fid`, `title`, `details`, `price`, `bpic`, `lpic`, `love`) VALUES
(1, 1, 'ONE PIECE CHECK衬衫（女士）NAVY', '产品材料：100%棉/颜色：海军/外形尺寸：	\r\nS，M/制造商：N / BARRELS\r\n', '253.80', 'img/products/pro1/1_1.jpg', 'img/products/pro1/1_2.jpg', 352),
(2, 1, '地波超大野马大衣', '产品材料：丙烯酸37％聚酯63％/颜色：米色/外形尺寸：均码/制造商：地波\r\n', '2275.20', 'img/products/pro2/2_1.jpg', 'img/products/pro2/2_2.jpg', 779),
(3, 1, '双面革羊羔毛大衣服', '产品材料：聚酯63％/颜色：米色，浅卡其/外形尺寸：均码/制造商：地波\r\n', '2459.30', 'img/products/pro3/3_1.jpg', 'img/products/pro3/3_2.jpg', 658),
(4, 1, '2018年新款100％纯羊绒围巾（2TYPE）', '产品材料：100%羊毛/颜色：灰色，棕褐色，燕麦片，奶油，淡蓝色，黑色/制造商：Y / HUNDREDSTORE', '304.60', 'img/products/pro4/4_1.jpg', 'img/products/pro4/4_2.jpg', 156),
(5, 1, '原崇山复古印花卫衣', '产品材料：棉100％/颜色：MUSTARD/外形尺寸：s,m/制造商：BEYOND CLOSET / N.', '460.00', 'img/products/pro5/5_1.jpg', 'img/products/pro5/5_2.jpg', 945),
(6, 1, '（7号）Ramsoul圆领针织灰色', '产品材料：50％羊毛，50％涤纶/颜色：黑色，灰色，象牙色，海军蓝/外形尺寸：S，M，L/制造商：N / BARRELS', '240.70', 'img/products/pro6/6_1.jpg', 'img/products/pro6/6_2.jpg', 235),
(7, 2, '沉重的长大衣黑色', '产品材料：100%棉/颜色：黑色/外形尺寸：	\r\n均码/制造商：N / LAYER', '1717.40', 'img/products/pro7/7_1.jpg', 'img/products/pro7/7_2.jpg', 241),
(8, 2, 'WELOVE Furisu汗衫（3色）', '产品材料：涤纶100％/颜色：黑色，象牙，海军/外形尺寸：S，M，L/制造商：HOWEAR', '217.40', 'img/products/pro8/8_1.jpg', 'img/products/pro8/8_2.jpg', 156),
(9, 2, '[FW18 Peanuts]格子开衫毛衣', '产品材料：丙烯酸100％/颜色：红蓝/外形尺寸：S，M，L/制造商：N /About.com', '519.80', 'img/products/pro9/9_1.jpg', 'img/products/pro9/9_2.jpg', 173),
(10, 2, '重绒混合鹦鹉外套', '产品材料：涤纶50％、棉50％/颜色：棕色/外形尺寸：M，L，XL/制造商：合唱团/ N.', '616.10', 'img/products/pro10/10_1.jpg', 'img/products/pro10/10_2.jpg', 452),
(11, 2, '缺角翻领长外套 - 黑色', '产品材料：羊毛27％，涤纶59％，亚克力6％，其他8％/颜色：黑色/外形尺寸：S，M，L/制造商：N / P.', '854.50', 'img/products/pro11/11_1.jpg', 'img/products/pro11/11_2.jpg', 325),
(12, 2, '矮胖的马海毛羊毛衫（杰弗尔橙）', '产品材料：尼龙40％羊毛60％/颜色：杰弗尔橙/外形尺寸：S，M，L/制造商：N / BRICK', '276.50', 'img/products/pro12/12_1.jpg', 'img/products/pro12/12_2.jpg', 125),
(13, 3, '[boouk x 16SPRING]限量版特别套装', '容量：400ml/产品规格：薰衣草味洗手液/有效期：生产日期后2年/制造商：Stin Spring', '238.00', 'img/products/pro13/13_1.jpg', 'img/products/pro13/13_2.jpg', 426),
(14, 3, '冬眠被褥超单SS', '产品材料：表面：高密度微纤维100％/填料：石墨烯50％+杜邦50％/外形尺寸160 x 210厘米（±3厘米）/制造商：泉勋纺织有限公司', '890.00', 'img/products/pro14/14_1.jpg', 'img/products/pro14/14_2.jpg', 771),
(15, 3, '手工雪松装饰香薰', '尺寸：15cm*10cm/香型：雪松/有效期：生产日期后2年/制造商：Spring Tree', '138.00', 'img/products/pro15/15_1.jpg', 'img/products/pro15/15_2.jpg', 465),
(16, 3, '北爱尔兰的圣诞节·羊毛编制挂饰', '产品材料：50%羊毛/外形尺寸50 x 50厘米（±3厘米）/制造商：Nio', '350.00', 'img/products/pro16/16_1.jpg', 'img/products/pro16/16_2.jpg', 356);

-- --------------------------------------------------------

--
-- 表的结构 `cm_cloth_family`
--

CREATE TABLE `cm_cloth_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL,
  `fintro` varchar(128) NOT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cm_cloth_family`
--

INSERT INTO `cm_cloth_family` (`fid`, `fname`, `fintro`, `img`) VALUES
(1, '设计师服装馆 女装', '柔软奢华的新品女装，装点年末新年季！', 'img/indexNews/news1.jpg'),
(2, '设计师品牌馆 男装', '流行趋势在线：不屈的泰迪熊单人外套，火热折扣进行时', 'img/indexNews/news2.jpg'),
(3, '潮品家居馆', '这个冬天，有效防御冷空气！原来你还没有下手这件...', 'img/indexNews/news3.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `cm_shoppingcart_item`
--

CREATE TABLE `cm_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `cloid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cm_shoppingcart_item`
--

INSERT INTO `cm_shoppingcart_item` (`iid`, `uid`, `cloid`, `count`, `is_checked`) VALUES
(3, 12, 1, 10, 1),
(4, 13, 3, 9, 0),
(5, 14, 1, 1, 0),
(13, 20, 1, 1, 1),
(16, 25, 2, 1, 1),
(27, 32, 5, 1, 0),
(29, 33, 1, 1, 0),
(31, 3, 1, 1, 0),
(44, 51, 5, 1, 1),
(45, 54, 1, 1, 1),
(47, 59, 5, 1, 0),
(48, 59, 9, 1, 0),
(50, 31, 1, 1, 1),
(51, 59, 1, 2, 0),
(55, 61, 5, 1, 1),
(56, 61, 6, 1, 0),
(57, 70, 1, 1, 1),
(58, 71, 1, 1, 1),
(62, 35, 5, 13, 0),
(63, 72, 9, 1, 1),
(64, 82, 1, 1, 1),
(69, 1, 3, 2, 0),
(71, 1, 1, 1, 0),
(72, 0, 2, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `cm_user`
--

CREATE TABLE `cm_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cm_user`
--

INSERT INTO `cm_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13511011000', 'img/avatar/default.png', '丁春秋'),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '当当喵'),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强'),
(4, 'yayadddd', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅'),
(6, 'ABCD', '123456', '123@qq.com', '13538894495', NULL, NULL),
(8, '121123', 'w13945128995', '491000888@qq.com', '13213389258', NULL, NULL),
(9, '555555', '5555555', '55555555@163.com', '13400000000', NULL, NULL),
(10, 'xuyong', '123456', '123456789@qq.com', '15525623622', NULL, 'a a '),
(11, 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', NULL, NULL),
(12, 'siyongbo', '900427', '616188545@qq.com', '18447103998', NULL, NULL),
(13, 'qwerty', '123456', '1091256014@qq.com', '15617152367', NULL, NULL),
(14, 'dingziqiang', '456456', '996534706@qq.com', '15567502520', NULL, '汤姆'),
(15, 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', NULL, NULL),
(16, 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', NULL, NULL),
(21, 'Jessy', 'ac210921', '123456@qq.com', '13523456789', NULL, NULL),
(22, 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', NULL, NULL),
(23, '查安军', '025520', '27514172112@qq.com', '18158899905', NULL, NULL),
(24, '123456', '123456', '123456@1.com', '13815668132', NULL, NULL),
(25, '1234', '111111', '734713428@qq.com', '18061920422', NULL, NULL),
(26, 'qwe12345', '123123', '1191769510@qq.com', '15234010643', NULL, NULL),
(27, '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', NULL, NULL),
(28, 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', NULL, NULL),
(29, 'li999999', 'li999999', 'limingdir@163.com', '18557512341', NULL, NULL),
(30, '111111111111', '123456', '1057631733@qq.com', '15275106677', NULL, NULL),
(31, 'tom', '123456', 'tom@tedu.cn', '13801234568', NULL, NULL),
(32, 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', NULL, NULL),
(33, 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', NULL, NULL),
(34, 'yangtao', '123456', '250737026@qq.com', '18256953222', NULL, NULL),
(35, 'tarena', '123456', '783664829@qq.com', '17711625897', NULL, NULL),
(36, 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', NULL, 'lulu'),
(37, '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', NULL, NULL),
(38, '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', NULL, ''),
(39, 'Yeye ', '123456', '1610608370@qq.com', '15062394551', NULL, NULL),
(40, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL),
(41, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL),
(42, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL),
(43, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL),
(45, 'hjh', '958030', 'hjh@126.com', '17812344567', NULL, NULL),
(46, 'ewq', '123456', '1234567890@qq.com', '12345678909', NULL, NULL),
(47, 'pipi', '123456', '78@qq.com', '12367889993', NULL, NULL),
(48, 'Lovica', '309418727', '1684707021@qq.com', '18435130456', NULL, NULL),
(49, 'htt0908', '19920908', '418720482@qq.com', '15244691033', NULL, NULL),
(50, 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', NULL, NULL),
(51, 'zhong', '123456', '123456789@126.com', '13120211111', NULL, NULL),
(52, '金豆豆', '123456789', '1170363143@qq.com', '15738619097', NULL, NULL),
(53, 'wangjunfei', '123456', '396225880@qq.com', '13205935797', NULL, NULL),
(54, 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', NULL, NULL),
(55, 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', NULL, NULL),
(56, 'xiaoming123', '123456', '54646@qq.com', '13553688534', NULL, NULL),
(57, 'yuanzhi', '123456', '270096123@qq.com', '15962573639', NULL, NULL),
(58, 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', NULL, NULL),
(60, 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', NULL, NULL),
(61, 'linlei0001', '58874439', '876056078@qq.com', '13390922939', NULL, NULL),
(62, 'superman', '1314520', '904202099@qq.com', '12345678910', NULL, NULL),
(63, 'tom222', '123456', '1@163.com', '13456789012', NULL, NULL),
(64, 'tom1234', '123456', '2@163.com', '13423456789', NULL, NULL),
(65, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, '左天'),
(66, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, NULL),
(67, '李白李白', '123456', '125365@163.com', '13986273022', NULL, NULL),
(68, 'dingdong', '123456', '15194898156@qq.com', '15112316516', NULL, NULL),
(69, 'wenjinhua', '236239', '461677613@qq.com', '13516574786', NULL, NULL),
(70, 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', NULL, NULL),
(71, 'zhangsan', 'add123456', 'add@qq.com', '12234324223', NULL, NULL),
(72, '高渐离', '123456', '935263676@qq.com', '18352501250', NULL, NULL),
(73, 'lifan', '123456', '18092034652@163.com', '18092933456', NULL, NULL),
(74, 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', NULL, NULL),
(75, 'tingDING', '123456', '12345678@qq.com', '13548525468', NULL, NULL),
(76, 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', NULL, NULL),
(77, 'weiyiwei', '123456', '598475405@qq.com', '15923741956', NULL, '韦祎伟'),
(78, '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', NULL, NULL),
(79, 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', NULL, NULL),
(80, 'loonchao', '123456', '850248873@qq.com', '13548729051', NULL, NULL),
(81, 'hushuang', '123456', '850248813@qq.com', '15802507525', NULL, NULL),
(83, 'fhr9588', '000009588', '111111111@qq.com', '12345666666', NULL, NULL),
(84, 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', NULL, NULL),
(85, 'tom10', '123456', '123@163.com', '12323456', NULL, NULL),
(91, 'tom', '1234', 'tom@qq.com', '13456789251', NULL, NULL),
(92, 'jerry', '123456', 'jerry@qq.com', '13456789251', NULL, '杰瑞'),
(93, 'amy', '123456', 'amy@qq.com', '13456789251', NULL, 'a a '),
(94, 'tom', '123', '47fdasa1062503@qq.com', '13511011000', NULL, '丁春秋'),
(95, 'yayaa a ', '123', '123@qq.com', '13511011000', NULL, '丁春秋'),
(96, 'yaya12', '123', '123@qq.com', '13511011000', NULL, '丁春秋'),
(97, 'yaya', '123', '12333333@qq.com', '13511011000', NULL, '丁春秋'),
(98, 'yaya', '123', '12333af3@qq.com', '13511011000', NULL, '丁春秋'),
(99, 'tom222adfaf', 'adf', '123@qq.com', '13456789251', NULL, '丁春秋'),
(100, 'tom', 'adf', '1232942aef126daf@qq.com', '13456789251', NULL, 'af');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cm_cloth`
--
ALTER TABLE `cm_cloth`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cm_cloth_family`
--
ALTER TABLE `cm_cloth_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `cm_shoppingcart_item`
--
ALTER TABLE `cm_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `cm_user`
--
ALTER TABLE `cm_user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cm_cloth`
--
ALTER TABLE `cm_cloth`
  MODIFY `cid` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- 使用表AUTO_INCREMENT `cm_cloth_family`
--
ALTER TABLE `cm_cloth_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- 使用表AUTO_INCREMENT `cm_shoppingcart_item`
--
ALTER TABLE `cm_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- 使用表AUTO_INCREMENT `cm_user`
--
ALTER TABLE `cm_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
