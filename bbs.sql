-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-09-08 02:04:23
-- 服务器版本： 5.5.42-log
-- PHP Version: 5.6.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_admin`
--

CREATE TABLE IF NOT EXISTS `think_admin` (
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `lastip` varchar(64) NOT NULL,
  `lasttime` int(11) NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_admin`
--

INSERT INTO `think_admin` (`aid`, `uid`, `lastip`, `lasttime`, `info`) VALUES
(1, 1, '36.149.4.215', 1473230081, '[{"lastip":"127.0.0.1","lasttime":1469604074},{"lastip":"127.0.0.1","lasttime":1469604078},{"lastip":"127.0.0.1","lasttime":1469604126},{"lastip":"127.0.0.1","lasttime":1470059871},{"lastip":"127.0.0.1","lasttime":1470096574},{"lastip":"127.0.0.1","lasttime":1470105595},{"lastip":"36.149.197.200","lasttime":1470107254},{"lastip":"115.199.105.85","lasttime":1470107949},{"lastip":"36.149.197.200","lasttime":1470130736},{"lastip":"36.149.197.58","lasttime":1470230533},{"lastip":"36.149.70.171","lasttime":1472912827},{"lastip":"36.149.197.238","lasttime":1473167601},{"lastip":"36.149.4.215","lasttime":1473230081}]');

-- --------------------------------------------------------

--
-- 表的结构 `think_board`
--

CREATE TABLE IF NOT EXISTS `think_board` (
  `bid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_board`
--

INSERT INTO `think_board` (`bid`, `aid`, `uid`, `name`, `time`) VALUES
(13, 1, 1, '灌水', 1470107271),
(14, 1, 1, '电影', 1470107282),
(16, 1, 1, '哲♂学', 1472912902);

-- --------------------------------------------------------

--
-- 表的结构 `think_love`
--

CREATE TABLE IF NOT EXISTS `think_love` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `ul` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_lp`
--

CREATE TABLE IF NOT EXISTS `think_lp` (
  `lp` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_lp`
--

INSERT INTO `think_lp` (`lp`, `time`, `uid`, `point`, `level`, `type`) VALUES
(1, 1473271343, 1, 0, 5, 1),
(2, 1473271343, 1, 5, 0, 1),
(3, 1473271365, 1, 0, 5, 0),
(4, 1473271365, 1, 5, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_message`
--

CREATE TABLE IF NOT EXISTS `think_message` (
  `mid` int(11) NOT NULL,
  `start_uid` int(11) NOT NULL,
  `connect_uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `retime` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `remind` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_post`
--

CREATE TABLE IF NOT EXISTS `think_post` (
  `pid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `text` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `retime` int(11) NOT NULL,
  `love` int(11) NOT NULL,
  `unlove` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_post`
--

INSERT INTO `think_post` (`pid`, `bid`, `uid`, `name`, `title`, `text`, `time`, `retime`, `love`, `unlove`, `view`, `num`) VALUES
(52, 14, 1, '', '电影！！！！', '<p><img src="/Uploads/image/20160906/1473160932101480.jpg" title="1473160932101480.jpg" alt="u=2122264012,1566260705&amp;fm=21&amp;gp=0.jpg"/></p><p>3333</p>', 1473160938, 1473178059, 0, 0, 25, 2),
(53, 13, 24, '', '不知道怎么玩', '<p>已经傻到了这样的地步。没救了<img src="/Uploads/image/20160907/1473191153165685.jpg" title="1473191153165685.jpg" alt="Screenshot_2016-08-14-23-02-49_tv.acfundanmaku.video_1471187031589.jpg"/></p>', 1473191159, 1473238348, 0, 0, 67, 12),
(54, 16, 1, '', 'XXOO', '<p><img src="/Uploads/image/20160907/1473239583514170.jpg" title="1473239583514170.jpg" alt="003.jpg"/></p>', 1473239589, 0, 0, 0, 6, 0),
(56, 13, 1, '', '爆笑GIF', '<p style="background-color: rgb(200, 200, 200);"><img src="/Uploads/image/20160908/1473265593954375.gif" title="1473265593954375.gif" alt="7 - 1.gif"/></p>', 1473265651, 0, 0, 0, 3, 0),
(57, 13, 1, '', '来试试 发帖', '<p><img src="/Uploads/image/20160908/1473267878475922.jpeg" style="" title="1473267878475922.jpeg"/></p><p><img src="/Uploads/image/20160908/1473267879771177.jpg" style="" title="1473267879771177.jpg"/></p><p><br/></p>', 1473267882, 1473268398, 0, 0, 17, 7),
(50, 13, 1, '', 'illya', '<p><img src="/Uploads/image/20160906/1473160585279015.jpg" style="" title="1473160585279015.jpg"/></p><p><img src="/Uploads/image/20160906/1473160585717434.jpg" style="" title="1473160585717434.jpg"/></p><p><img src="/Uploads/image/20160906/1473160587104159.jpg" style="" title="1473160587104159.jpg"/></p><p><img src="/Uploads/image/20160906/1473160587118906.jpg" style="" title="1473160587118906.jpg"/></p><p><br/></p><p>illya!!</p>', 1473160601, 0, 0, 0, 3, 0),
(51, 13, 1, '', 'test#2', '<p><img src="/Uploads/image/20160906/1473160649779042.jpg" style="" title="1473160649779042.jpg"/></p><p><img src="/Uploads/image/20160906/1473160649109601.gif" style="" title="1473160649109601.gif"/></p><p><img src="/Uploads/image/20160906/1473160649818291.gif" style="" title="1473160649818291.gif"/></p><p><img src="/Uploads/image/20160906/1473160650746182.gif" style="" title="1473160650746182.gif"/></p><p><br/></p><p>nice</p><p>!</p><p><br/></p><p style="line-height: 16px;"><img style="vertical-align: middle; margin-right: 2px;" src="http://www.geekw.com/plugins/ue/dialogs/attachment/fileTypeImages/icon_pdf.gif"/><a style="font-size:12px; color:#0066cc;" href="/Uploads/file/20160906/1473160687161254.pdf" title="《共产党宣言》全文.pdf">《共产党宣言》全文.pdf</a></p><p><br/></p>', 1473160694, 1473162977, 0, 0, 15, 1),
(49, 13, 1, '', 'Hello world!', '<p>Hello World</p><p><img src="/Uploads/image/20160906/1473160052115906.gif" style="" title="1473160052115906.gif"/></p><p><img src="/Uploads/image/20160906/1473160052138616.gif" style="" title="1473160052138616.gif"/></p><p><img src="/Uploads/image/20160906/1473160053741298.gif" style="" title="1473160053741298.gif"/></p><p><img src="/Uploads/image/20160906/1473160053348802.gif" style="" title="1473160053348802.gif"/></p><p><img src="/Uploads/image/20160906/1473160053221039.gif" style="" title="1473160053221039.gif"/></p><p><img src="/Uploads/image/20160906/1473160053612969.gif" style="" title="1473160053612969.gif"/></p><p><img src="/Uploads/image/20160906/1473160054499056.gif" style="" title="1473160054499056.gif"/></p><p><img src="/Uploads/image/20160906/1473160054484059.gif" style="" title="1473160054484059.gif"/></p><p><img src="/Uploads/image/20160906/1473160056783126.jpeg" style="" title="1473160056783126.jpeg"/></p><p><br/></p>', 1473160073, 1473160217, 0, 0, 12, 6);

-- --------------------------------------------------------

--
-- 表的结构 `think_remind`
--

CREATE TABLE IF NOT EXISTS `think_remind` (
  `eid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `isread` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `xid` int(11) NOT NULL COMMENT 'for type',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `lc` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_remind`
--

INSERT INTO `think_remind` (`eid`, `sid`, `uid`, `time`, `isread`, `type`, `xid`, `info`, `lc`) VALUES
(110, 21, 1, 1473268316, 0, 'post', 57, '<a href=/index.php/Remind/read?eid=110>moe回复了您的主题《来试试 发帖》;<span class="text-warning">第3楼</span></a>', 3),
(109, 21, 1, 1473268020, 0, 'post', 57, '<a href=/index.php/Remind/read?eid=109>moe回复了您的主题《来试试 发帖》;<span class="text-warning">第2楼</span></a>', 2),
(108, 21, 1, 1473267972, 0, 'post', 57, '<a href=/index.php/Remind/read?eid=108>moe回复了您的主题《来试试 发帖》;<span class="text-warning">第1楼</span></a>', 1),
(107, 25, 1, 1473264826, 0, 'post', 55, '<a href=/index.php/Remind/read?eid=107>com回复了您的主题《zzzzzzzzzzzzzzzxZX》;<span class="text-warning">第1楼</span></a>', 1),
(106, 21, 1, 1473238348, 1, 'repost', 368, '<a href=/index.php/Remind/read?eid=106>moe在主题《不知道怎么玩》中回复了您的回复;<span class="text-warning">第12楼</span></a>', 12),
(105, 21, 1, 1473238347, 1, 'repost', 367, '<a href=/index.php/Remind/read?eid=105>moe在主题《不知道怎么玩》中回复了您的回复;<span class="text-warning">第11楼</span></a>', 11),
(104, 1, 21, 1473238319, 1, 'repost', 366, '<a href=/index.php/Remind/read?eid=104>admin在主题《不知道怎么玩》中回复了您的回复;<span class="text-warning">第10楼</span></a>', 10),
(103, 21, 24, 1473238154, 0, 'repost', 365, '<a href=/index.php/Remind/read?eid=103>moe在主题《不知道怎么玩》中回复了您的回复;<span class="text-warning">第9楼</span></a>', 9),
(102, 21, 1, 1473238053, 1, 'repost', 363, '<a href=/index.php/Remind/read?eid=102>moe在主题《不知道怎么玩》中回复了您的回复;<span class="text-warning">第7楼</span></a>', 7),
(101, 1, 24, 1473237418, 0, 'post', 53, '<a href=/index.php/Remind/read?eid=101>admin回复了您的主题《不知道怎么玩》;<span class="text-warning">第5楼</span></a>', 5),
(100, 1, 24, 1473235723, 0, 'repost', 360, '<a href=/index.php/Remind/read?eid=100>admin在主题《不知道怎么玩》中回复了您的回复;<span class="text-warning">第4楼</span></a>', 4),
(99, 1, 24, 1473224650, 0, 'post', 53, '<a href=/index.php/Remind/read?eid=99>admin回复了您的主题《不知道怎么玩》;<span class="text-warning">第3楼</span></a>', 3),
(98, 21, 1, 1472975774, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=98>moe回复了您的主题《测试第二次》;<span class="text-warning">第22楼</span></a>', 22),
(97, 21, 1, 1472975769, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=97>moe回复了您的主题《测试第二次》;<span class="text-warning">第21楼</span></a>', 21),
(96, 21, 1, 1472975762, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=96>moe回复了您的主题《测试第二次》;<span class="text-warning">第20楼</span></a>', 20),
(95, 21, 1, 1472975746, 1, 'repost', 323, '<a href=/index.php/Remind/read?eid=95>moe在主题《测试第二次》中回复了您的回复;<span class="text-warning">第19楼</span></a>', 19),
(94, 21, 1, 1472975741, 1, 'repost', 322, '<a href=/index.php/Remind/read?eid=94>moe在主题《测试第二次》中回复了您的回复;<span class="text-warning">第18楼</span></a>', 18),
(93, 21, 1, 1472975735, 1, 'repost', 321, '<a href=/index.php/Remind/read?eid=93>moe在主题《测试第二次》中回复了您的回复;<span class="text-warning">第17楼</span></a>', 17),
(92, 21, 1, 1472975729, 1, 'repost', 320, '<a href=/index.php/Remind/read?eid=92>moe在主题《测试第二次》中回复了您的回复;<span class="text-warning">第16楼</span></a>', 16),
(91, 21, 1, 1472975724, 1, 'repost', 319, '<a href=/index.php/Remind/read?eid=91>moe在主题《测试第二次》中回复了您的回复;<span class="text-warning">第15楼</span></a>', 15),
(90, 21, 1, 1472975719, 1, 'repost', 318, '<a href=/index.php/Remind/read?eid=90>moe在主题《测试第二次》中回复了您的回复;<span class="text-warning">第14楼</span></a>', 14),
(89, 21, 1, 1472975711, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=89>moe回复了您的主题《测试第二次》;<span class="text-warning">第13楼</span></a>', 13),
(88, 21, 1, 1472975707, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=88>moe回复了您的主题《测试第二次》;<span class="text-warning">第12楼</span></a>', 12),
(87, 21, 1, 1472975703, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=87>moe回复了您的主题《测试第二次》;<span class="text-warning">第11楼</span></a>', 11),
(86, 21, 1, 1472974090, 1, 'post', 44, '<a href=/index.php/Remind/read?eid=86>moe回复了您的主题《测试第二次》;<span class="text-warning">第10楼</span></a>', 10),
(85, 1, 21, 1472973979, 1, 'repost', 313, '<a href=/index.php/Remind/read?eid=85>admin在主题《测试第二次》中回复了您的回复;<span class="text-warning">第9楼</span></a>', 9),
(84, 21, 1, 1472972274, 1, 'post', 38, '<a href=/index.php/Remind/read?eid=84>moe回复了您的主题《七夕啦！！》;<span class="text-warning">第45楼</span></a>', 45);

-- --------------------------------------------------------

--
-- 表的结构 `think_repost`
--

CREATE TABLE IF NOT EXISTS `think_repost` (
  `rid` int(11) NOT NULL,
  `rrid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `lc` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=377 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_repost`
--

INSERT INTO `think_repost` (`rid`, `rrid`, `bid`, `pid`, `uid`, `text`, `time`, `lc`) VALUES
(362, 0, 13, 53, 1, '<blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>倒萨实打实的打扫打扫大</p><p><br/></p><small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>点撒撒打算</p>', 1473237575, 6),
(360, 0, 0, 53, 1, '<blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>好痛苦。。。。</p><p><br/></p><small><span class="text-warning">引用<cite>nin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>4454545445454</p>', 1473235723, 4),
(361, 0, 13, 53, 1, '<p>倒萨实打实的打扫打扫大</p>', 1473237418, 5),
(359, 0, 0, 53, 1, '<p><img src="/Uploads/image/20160907/1473224641617892.gif" title="1473224641617892.gif" alt="01(3).gif"/></p><p>...</p>', 1473224650, 3),
(354, 0, 0, 52, 1, '<p>Yoo!!<br/></p><p><br/></p>', 1473162738, 1),
(355, 0, 0, 51, 1, '<p><img src="/Uploads/image/20160906/1473162958377659.jpg" title="1473162958377659.jpg" alt="235839tby9p9d00hepr6hb.jpg"/></p><p><br/></p><p>图片OK！！</p>', 1473162977, 1),
(356, 0, 0, 52, 1, '<p>23333333333333333333</p>', 1473178059, 2),
(357, 0, 0, 53, 24, '<p>好痛苦。。。。</p>', 1473191177, 1),
(358, 0, 0, 53, 24, '<p>睡觉</p>', 1473191190, 2),
(353, 0, 0, 49, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>dr<img src="/Uploads/image/20160906/1473160091552002.jpg" title="1473160091552002.jpg" alt="1473157342168124.jpg"/></p><p>sdsdsds</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	cxzczxczxczxczxc</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	vbcbcvbcvbcvbcvbcvb</p><p><br/></p><p><br/></p><p><img src="/Uploads/image/20160906/1473160213339788.jpg" title="1473160213339788.jpg" alt="64380cd7912397ddf9f4a24f5d82b2b7d1a287ef.jpg"/></p>', 1473160217, 6),
(349, 0, 0, 49, 1, '<p>fcdz&#39;fkaflcs]d[lfgvsdfsdf</p>', 1473160107, 2),
(350, 0, 0, 49, 1, '<p>dfsdfdsfsdfsdfsdf</p>', 1473160114, 3),
(351, 0, 0, 49, 1, '<p>ssssssssssssssssssssssssssssssss</p>', 1473160122, 4),
(352, 0, 0, 49, 1, '<p>	</p><blockquote style="background-color:rgb(230,230,230)">\r\n		<p>\r\n		</p><p>dr<img src="/Uploads/image/20160906/1473160091552002.jpg" title="1473160091552002.jpg" alt="1473157342168124.jpg"/></p><p>sdsdsds</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	cxzczxczxczxczxc</p>', 1473160146, 5),
(348, 0, 0, 49, 1, '<p>dr<img src="/Uploads/image/20160906/1473160091552002.jpg" title="1473160091552002.jpg" alt="1473157342168124.jpg"/></p><p>sdsdsds</p>', 1473160098, 1),
(363, 362, 13, 53, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>倒萨实打实的打扫打扫大</p><p><br/></p><small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>点撒撒打算</p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote><blockquote style="background-color:rgb(230,230,230)"></blockquote><hr/><p>站长你好傻Q!</p>', 1473238053, 7),
(364, 363, 13, 53, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>倒萨实打实的打扫打扫大</p><p><br/></p><small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>点撒撒打算</p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote><blockquote style="background-color:rgb(230,230,230)"></blockquote><hr/><p>站长你好傻Q!</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote><p>傻逼站长！！！！！</p>', 1473238120, 8),
(365, 357, 0, 53, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><p>好痛苦。。。。</p></p><small><span class="text-warning">引用 <cite>nin</cite></span></small></blockquote>新人？？<p></p>', 1473238154, 9),
(366, 363, 13, 53, 1, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>倒萨实打实的打扫打扫大</p><p><br/></p><small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>点撒撒打算</p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote><blockquote style="background-color:rgb(230,230,230)"></blockquote><hr/><p>站长你好傻Q!</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>操你妈逼！！！<p></p>', 1473238319, 10),
(367, 366, 13, 53, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>倒萨实打实的打扫打扫大</p><p><br/></p><small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>点撒撒打算</p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote><blockquote style="background-color:rgb(230,230,230)"></blockquote><hr/><p>站长你好傻Q!</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>操你妈逼！！！<p></p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote>你2b！！！<p></p>', 1473238347, 11),
(368, 366, 13, 53, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><br/></p><p>倒萨实打实的打扫打扫大</p><p><br/></p><small><span class="text-warning">引用<cite>admin</cite></span></small>\r\n &nbsp; &nbsp;</blockquote><hr/><p>点撒撒打算</p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote><blockquote style="background-color:rgb(230,230,230)"></blockquote><hr/><p>站长你好傻Q!</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>操你妈逼！！！<p></p></p><small><span class="text-warning">引用 <cite>admin</cite></span></small></blockquote>你2b！！！<p></p>', 1473238348, 12),
(369, 0, 16, 55, 25, '<p>这是本子？？？</p>', 1473264826, 1),
(370, 0, 13, 57, 21, '<p>1楼！！！</p>', 1473267972, 1),
(371, 0, 13, 57, 21, '<p>1212221</p>', 1473268020, 2),
(372, 0, 13, 57, 21, '<p>在来！@@</p>', 1473268316, 3),
(373, 372, 13, 57, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><p>在来！@@</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>二娃热舞认为<p></p>', 1473268331, 4),
(374, 372, 13, 57, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><p>在来！@@</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>二娃热舞认为<p></p>', 1473268331, 5),
(375, 374, 13, 57, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><p>在来！@@</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>二娃热舞认为<p></p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>滴答滴答滴答滴答滴答滴答<p></p>', 1473268367, 6),
(376, 375, 13, 57, 21, '<blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><blockquote style="background-color:rgb(230,230,230)"><p><p>在来！@@</p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>二娃热舞认为<p></p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>滴答滴答滴答滴答滴答滴答<p></p></p><small><span class="text-warning">引用 <cite>moe</cite></span></small></blockquote>撒打算打算<p></p>', 1473268398, 7);

-- --------------------------------------------------------

--
-- 表的结构 `think_sign`
--

CREATE TABLE IF NOT EXISTS `think_sign` (
  `sign` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `info` longtext NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_sign`
--

INSERT INTO `think_sign` (`sign`, `user`, `info`, `date`) VALUES
(1, '["21"]', '[{"uid":"21","time":1473230398}]', 20160907),
(2, '["21"]', '[{"uid":"21","time":1473267924}]', 20160908);

-- --------------------------------------------------------

--
-- 表的结构 `think_site`
--

CREATE TABLE IF NOT EXISTS `think_site` (
  `site` int(11) NOT NULL,
  `footer` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_site`
--

INSERT INTO `think_site` (`site`, `footer`) VALUES
(1, '																												<h4>友情链接</h4>\r\n		<p><a href="http://http://git.oschina.net/supercell/smbbs">smbbs</a></p>\r\n<p><a href="http://www.thinkphp.cn/">ThinkPHP</a></p>\r\n		<p><a href="http://v3.bootcss.com/">bootstrap</a></p>\r\n		<p><a href="http://jquery.com/">JQuery</a></p>																								');

-- --------------------------------------------------------

--
-- 表的结构 `think_torrent`
--

CREATE TABLE IF NOT EXISTS `think_torrent` (
  `tid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `magnet` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `torrent` varchar(255) NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_torrent`
--

INSERT INTO `think_torrent` (`tid`, `time`, `magnet`, `hash`, `name`, `torrent`, `ip`) VALUES
(13, 1469810755, 'magnet:?xt=urn:btih:7CD73AA944D713DE74EE7DC62722D3C5864F5E08', '7CD73AA944D713DE74EE7DC62722D3C5864F5E08', '[Yoshiura Kazuya] Kizashi Ch. 1 [Chinese] [闲着没事就个人汉化组].zip.torrent', './torrent/579b8843ab86a.torrent', ''),
(14, 1469810802, 'magnet:?xt=urn:btih:593E96220B628E2C11790ACE7C9F36B8D1B7E5D6', '593E96220B628E2C11790ACE7C9F36B8D1B7E5D6', '[大嘘] 街角あんよ (COMIC BAVEL 2016年8月号) [中国翻訳] [DL版].zip.torrent', './torrent/579b8872d51c0.torrent', ''),
(15, 1469810912, 'magnet:?xt=urn:btih:11AC14786D585ECDA7A93686D86C5B8F6F57E78E', '11AC14786D585ECDA7A93686D86C5B8F6F57E78E', '[Tsuttsu] マフラーの中でー (COMIC Koh Vol.3) [Chinese] [无毒汉化组].zip.torrent', './torrent/579b88e0a9b06.torrent', '');

-- --------------------------------------------------------

--
-- 表的结构 `think_user`
--

CREATE TABLE IF NOT EXISTS `think_user` (
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `image` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `pnum` int(11) NOT NULL,
  `rnum` int(11) NOT NULL,
  `jointime` int(11) NOT NULL,
  `joinip` varchar(128) NOT NULL,
  `lasttime` int(11) NOT NULL,
  `lastip` varchar(128) NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `joininfo` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `cookie` varchar(128) NOT NULL,
  `point` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sign` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`uid`, `gid`, `name`, `image`, `password`, `pnum`, `rnum`, `jointime`, `joinip`, `lasttime`, `lastip`, `info`, `joininfo`, `cookie`, `point`, `level`, `sign`) VALUES
(1, 1, 'admin', '/Uploads/tx/1.jpg', 'a66abb5684c45962d887564f08346e8d', 25, 105, 0, '', 1473243167, '36.149.4.215', '{"text":"\\t\\t\\t\\u627e\\u5de5\\u4f5c\\uff01\\uff01\\nPHP\\n\\u7f51\\u7ad9\\u7ba1\\u7406\\n\\u524d\\u7aef\\u5b9e\\u4e60\\n\\u7f51\\u7ba1\\n\\u7535\\u6c14\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","email":"maysrp@163.com","date":"1992-12-11"}', '[{"lasttime":1469511467,"lastip":"127.0.0.1"},{"lasttime":1469511595,"lastip":"127.0.0.1"},{"lasttime":1469511704,"lastip":"127.0.0.1"},{"lasttime":1469512610,"lastip":"127.0.0.1"},{"lasttime":1469512726,"lastip":"127.0.0.1"},{"lasttime":1469512856,"lastip":"127.0.0.1"},{"lasttime":1469512914,"lastip":"127.0.0.1"},{"lasttime":1469513114,"lastip":"127.0.0.1"},{"lasttime":1469513143,"lastip":"127.0.0.1"},{"lasttime":1469513262,"lastip":"127.0.0.1"},{"lasttime":1469513263,"lastip":"127.0.0.1"},{"lasttime":1469513279,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469520369,"lastip":"127.0.0.1"},{"lasttime":1469520484,"lastip":"127.0.0.1"},{"lasttime":1469520707,"lastip":"127.0.0.1"},{"lasttime":1470059849,"lastip":"127.0.0.1"},{"lasttime":1470096559,"lastip":"127.0.0.1"},{"lasttime":1470105561,"lastip":"127.0.0.1"},{"lasttime":1470107231,"lastip":"36.149.197.200"},{"lasttime":1470107947,"lastip":"115.199.105.85"},{"lasttime":1470130734,"lastip":"36.149.197.200"},{"lasttime":1470230532,"lastip":"36.149.197.58"},{"lasttime":1470283166,"lastip":"36.149.197.58"},{"lasttime":1470677375,"lastip":"106.185.35.244"},{"lasttime":1470846632,"lastip":"36.149.197.83"},{"lasttime":1471464770,"lastip":"36.149.69.65"},{"lasttime":1471464828,"lastip":"36.149.69.65"},{"lasttime":1472831334,"lastip":"36.149.197.235"},{"lasttime":1472886341,"lastip":"36.149.70.171"},{"lasttime":1472912825,"lastip":"36.149.70.171"},{"lasttime":1472963914,"lastip":"106.185.35.244"},{"lasttime":1473068494,"lastip":"36.149.197.238"},{"lasttime":1473151055,"lastip":"36.149.197.238"},{"lasttime":1473224650,"lastip":"36.149.4.215"},{"lasttime":1473243167,"lastip":"36.149.4.215"}]', 'd2798fd175c3386d069cdb873ee5d412', 8, 5, 20160908),
(5, 0, 'aaaaaa', '', 'dsfsdfsdfs', 0, 0, 1469520234, '127.0.0.1', 1469520234, '127.0.0.1', '', '', 'ffb9d06d744fc88459fb7feca668ec15', 0, 0, 0),
(6, 0, 'sdfsdfsdf', '', 'sdfsdfsdf', 0, 0, 1469520247, '127.0.0.1', 1469520247, '127.0.0.1', '', '', 'a816aa8e16d33a77855872798d236901', 0, 0, 0),
(10, 0, 'aaa', '/Uploads/tx/10.jpg', '552e6a97297c53e592208cf97fbb3b60', 5, 42, 1469522851, '127.0.0.1', 1470097670, '127.0.0.1', '', '[{"lasttime":1469523069,"lastip":"127.0.0.1"},{"lasttime":1469523102,"lastip":"127.0.0.1"},{"lasttime":1469554182,"lastip":"127.0.0.1"},{"lasttime":1470037106,"lastip":"127.0.0.1"},{"lasttime":1470072230,"lastip":"127.0.0.1"},{"lasttime":1470097670,"lastip":"127.0.0.1"}]', '81fd232cc051a619a140e6e9b29e7bd0', 0, 0, 0),
(11, 0, 'mom', '', '863eabdc5516ea49a5c85c7a8cd3979e', 0, 0, 1469882797, '127.0.0.1', 1469883897, '127.0.0.1', '', '[{"lasttime":1469883897,"lastip":"127.0.0.1"}]', '', 0, 0, 0),
(12, 0, 'mom7', '', 'c50c223afa2d625a86f32c270e3710ed', 0, 0, 1469884121, '127.0.0.1', 1469884121, '127.0.0.1', '', '', '', 0, 0, 0),
(13, 0, 'moma', '/Uploads/tx/13.jpg', '9811aa4d32e2217e12e0bff4fb8fb35a', -1, 33, 1469884139, '127.0.0.1', 1470059742, '127.0.0.1', '', '[{"lasttime":1469980313,"lastip":"127.0.0.1"},{"lasttime":1470039327,"lastip":"127.0.0.1"},{"lasttime":1470043552,"lastip":"127.0.0.1"},{"lasttime":1470059742,"lastip":"127.0.0.1"}]', '', 0, 0, 0),
(14, 0, 'admin下次', '', '151c700edf12eeb0f163aec969cf9a51', 0, 0, 1470072542, '127.0.0.1', 1470072542, '127.0.0.1', '', '', '', 0, 0, 0),
(15, 0, '斯蒂芬斯蒂芬', '', 'c0d9b6518f95a97650228ee147997423', 0, 0, 1470072560, '127.0.0.1', 1470072560, '127.0.0.1', '', '', '', 0, 0, 0),
(16, 0, '电风扇地方', '', '7de0723def52fd86d2a65fa210a087c1', 0, 0, 1470072667, '127.0.0.1', 1470072667, '127.0.0.1', '', '', '', 0, 0, 0),
(17, 0, '阿萨斯阿萨德', '', 'ce7a47438e2823e5c23aeecde5984179', 0, 0, 1470073482, '127.0.0.1', 1470073482, '127.0.0.1', '', '', '', 0, 0, 0),
(20, 0, '阿斯达萨斯', '', '7b72094bf9ac5f8082114a23c109d825', 0, 0, 1470074234, '127.0.0.1', 1470074234, '127.0.0.1', '', '', '', 0, 0, 0),
(21, 0, 'moe', '/Uploads/tx/21.jpg', '6bd987edb55c16d2fb86008058bc6030', 4, 55, 1470108377, '36.149.197.200', 1473267921, '36.149.4.215', '', '[{"lasttime":1470130568,"lastip":"36.149.197.200"},{"lasttime":1470205183,"lastip":"36.149.197.58"},{"lasttime":1470222211,"lastip":"36.149.197.58"},{"lasttime":1470300007,"lastip":"36.149.197.58"},{"lasttime":1470469469,"lastip":"183.249.163.116"},{"lasttime":1470553136,"lastip":"183.249.162.224"},{"lasttime":1472967431,"lastip":"106.185.35.244"},{"lasttime":1473230166,"lastip":"36.149.4.215"},{"lasttime":1473231589,"lastip":"36.149.4.215"},{"lasttime":1473231968,"lastip":"36.149.4.215"},{"lasttime":1473233367,"lastip":"36.149.4.215"},{"lasttime":1473267921,"lastip":"36.149.4.215"}]', '8abb1036e07e7373162b3741a8d85b79', 19, 19, 20160908),
(22, 0, 'adad', '/Uploads/tx/22.jpg', '0684a1fb81d37b3bab672863708130ce', 2, 3, 1470238228, '36.149.197.58', 1470302728, '36.149.197.58', '', '[{"lasttime":1470302728,"lastip":"36.149.197.58"}]', 'c59074512b3da3fe1402e76036db8fff', 0, 0, 0),
(23, 0, 'aaaa', '', '6da39cbce5bd7e3bdd4547a0a6d4e72f', 0, 1, 1471464801, '36.149.69.65', 1471464801, '36.149.69.65', '', '', '', 0, 0, 0),
(24, 0, 'nin', '', 'f69af02838a8d934d56c5f5631b7e689', 1, 2, 1473191040, '117.136.67.206', 1473191040, '117.136.67.206', '', '', '85ff5165dfe33a72b7e2bc385a8155ea', 0, 0, 0),
(25, 0, 'com', '', 'fb94a2c123cdf3e9e42691471bfea19d', 0, 1, 1473264810, '36.149.4.215', 1473264810, '36.149.4.215', '', '', 'e18aa12aaea64a110618d5e1197e3401', 0, 0, 20160908);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_admin`
--
ALTER TABLE `think_admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `think_board`
--
ALTER TABLE `think_board`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `think_love`
--
ALTER TABLE `think_love`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `think_lp`
--
ALTER TABLE `think_lp`
  ADD PRIMARY KEY (`lp`);

--
-- Indexes for table `think_message`
--
ALTER TABLE `think_message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `think_post`
--
ALTER TABLE `think_post`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `think_remind`
--
ALTER TABLE `think_remind`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `think_repost`
--
ALTER TABLE `think_repost`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `think_sign`
--
ALTER TABLE `think_sign`
  ADD PRIMARY KEY (`sign`);

--
-- Indexes for table `think_site`
--
ALTER TABLE `think_site`
  ADD PRIMARY KEY (`site`);

--
-- Indexes for table `think_torrent`
--
ALTER TABLE `think_torrent`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `think_user`
--
ALTER TABLE `think_user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `think_admin`
--
ALTER TABLE `think_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `think_board`
--
ALTER TABLE `think_board`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `think_love`
--
ALTER TABLE `think_love`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `think_lp`
--
ALTER TABLE `think_lp`
  MODIFY `lp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `think_message`
--
ALTER TABLE `think_message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `think_post`
--
ALTER TABLE `think_post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `think_remind`
--
ALTER TABLE `think_remind`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `think_repost`
--
ALTER TABLE `think_repost`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=377;
--
-- AUTO_INCREMENT for table `think_sign`
--
ALTER TABLE `think_sign`
  MODIFY `sign` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `think_site`
--
ALTER TABLE `think_site`
  MODIFY `site` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `think_torrent`
--
ALTER TABLE `think_torrent`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `think_user`
--
ALTER TABLE `think_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
