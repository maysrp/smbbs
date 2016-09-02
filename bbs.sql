-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-20 00:05:54
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbs`
--

-- --------------------------------------------------------

--
-- 表的结构 `think_admin`
--

CREATE TABLE `think_admin` (
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `lastip` varchar(64) NOT NULL,
  `lasttime` int(11) NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_admin`
--

INSERT INTO `think_admin` (`aid`, `uid`, `lastip`, `lasttime`, `info`) VALUES
(1, 1, '127.0.0.1', 1470205573, '[{"lastip":"127.0.0.1","lasttime":1469604074},{"lastip":"127.0.0.1","lasttime":1469604078},{"lastip":"127.0.0.1","lasttime":1469604126},{"lastip":"127.0.0.1","lasttime":1470059871},{"lastip":"127.0.0.1","lasttime":1470096574},{"lastip":"127.0.0.1","lasttime":1470105595},{"lastip":"127.0.0.1","lasttime":1470205573}]');

-- --------------------------------------------------------

--
-- 表的结构 `think_board`
--

CREATE TABLE `think_board` (
  `bid` int(11) NOT NULL,
  `aid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_board`
--

INSERT INTO `think_board` (`bid`, `aid`, `uid`, `name`, `time`) VALUES
(1, 1, 1, 'sss', 1470205580);

-- --------------------------------------------------------

--
-- 表的结构 `think_love`
--

CREATE TABLE `think_love` (
  `lid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `ul` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_message`
--

CREATE TABLE `think_message` (
  `mid` int(11) NOT NULL,
  `start_uid` int(11) NOT NULL,
  `connect_uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `retime` int(11) NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `remind` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_post`
--

CREATE TABLE `think_post` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_post`
--

INSERT INTO `think_post` (`pid`, `bid`, `uid`, `name`, `title`, `text`, `time`, `retime`, `love`, `unlove`, `view`, `num`) VALUES
(1, 1, 1, '', 'asas', '<p>sadasdas</p>', 1470205706, 1470208438, 0, 0, 9, 2),
(2, 1, 1, '', '三大三大', '<p>三大三大</p>', 1470208968, 1470229975, 0, 0, 3, 1),
(3, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223919, 0, 0, 0, 1, 0),
(4, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223922, 0, 0, 0, 1, 0),
(5, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223924, 0, 0, 0, 1, 0),
(6, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223926, 0, 0, 0, 1, 0),
(7, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223929, 0, 0, 0, 1, 0),
(8, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223931, 0, 0, 0, 1, 0),
(9, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223934, 0, 0, 0, 1, 0),
(10, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223936, 0, 0, 0, 1, 0),
(11, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223938, 0, 0, 0, 1, 0),
(12, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223940, 0, 0, 0, 1, 0),
(13, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223942, 0, 0, 0, 1, 0),
(14, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223943, 0, 0, 0, 1, 0),
(15, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223946, 0, 0, 0, 1, 0),
(16, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223948, 0, 0, 0, 1, 0),
(17, 1, 1, '', 'wed', '<p>qweqwe</p>', 1470223950, 0, 0, 0, 1, 0),
(18, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223969, 1470229938, 0, 0, 3, 1),
(19, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223972, 0, 0, 0, 1, 0),
(20, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223974, 0, 0, 0, 1, 0),
(21, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223978, 0, 0, 0, 1, 0),
(22, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223980, 0, 0, 0, 1, 0),
(23, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223982, 0, 0, 0, 1, 0),
(24, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223985, 0, 0, 0, 1, 0),
(25, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223986, 0, 0, 0, 1, 0),
(26, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223994, 0, 0, 0, 1, 0),
(27, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223996, 0, 0, 0, 1, 0),
(28, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223998, 0, 0, 0, 1, 0),
(29, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470223999, 0, 0, 0, 1, 0),
(30, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470224001, 0, 0, 0, 1, 0),
(31, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470224004, 0, 0, 0, 2, 0),
(32, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470224006, 0, 0, 0, 1, 0),
(33, 1, 1, '', 'ewrer', '<p>werwer</p>', 1470224008, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `think_remind`
--

CREATE TABLE `think_remind` (
  `eid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `isread` int(11) NOT NULL,
  `type` varchar(11) NOT NULL,
  `xid` int(11) NOT NULL COMMENT 'for type',
  `info` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_remind`
--

INSERT INTO `think_remind` (`eid`, `sid`, `uid`, `time`, `isread`, `type`, `xid`, `info`) VALUES
(14, 10, 13, 1470041027, 1, 'post', 15, 'aaa回复了您的主题<<usjdojaosjd>>。'),
(15, 10, 10, 1470041749, 1, 'repost', 166, 'aaa在主题<<usjdojaosjd>>中回复了你的回复'),
(16, 10, 10, 1470043248, 1, 'repost', 161, 'aaa在主题<<usjdojaosjd>>中回复了您的回复'),
(17, 10, 13, 1470043644, 1, 'post', 15, 'aaa回复了您的主题<<usjdojaosjd>>。'),
(18, 10, 13, 1470043932, 1, 'post', 14, 'aaa回复了您的主题<<我去恶趣味>>。'),
(19, 13, 10, 1470043953, 1, 'repost', 170, 'moma在主题<<我去恶趣味>>中回复了您的回复'),
(20, 10, 13, 1470044035, 1, 'repost', 171, 'aaa在主题<<我去恶趣味>>中回复了您的回复'),
(21, 13, 10, 1470044094, 1, 'post', 16, 'moma回复了您的主题<<正经去>>。'),
(22, 10, 13, 1470044107, 1, 'repost', 175, 'aaa在主题<<正经去>>中回复了您的回复'),
(23, 10, 13, 1470044140, 1, 'repost', 177, 'aaa在主题<<正经去>>中回复了您的回复'),
(24, 10, 13, 1470044252, 1, 'repost', 175, 'aaa在主题<<正经去>>中回复了您的回复'),
(25, 10, 13, 1470044366, 1, 'post', 17, 'aaa回复了您的主题<<散打>>。'),
(26, 13, 10, 1470044382, 1, 'repost', 181, 'moma在主题<<散打>>中回复了您的回复'),
(27, 10, 13, 1470044696, 1, 'post', 17, 'aaa回复了您的主题<<散打>>。'),
(28, 13, 10, 1470044792, 1, 'repost', 189, 'moma在主题<<散打>>中回复了您的回复'),
(29, 10, 13, 1470044810, 1, 'repost', 190, 'aaa在主题<<散打>>中回复了您的回复'),
(30, 13, 10, 1470044829, 1, 'repost', 191, 'moma在主题<<散打>>中回复了您的回复'),
(31, 13, 10, 1470045075, 1, 'repost', 192, 'moma在主题<<散打>>中回复了您的回复'),
(32, 13, 10, 1470045151, 1, 'repost', 193, 'moma在主题<<散打>>中回复了您的回复'),
(33, 10, 13, 1470045207, 1, 'repost', 194, 'aaa在主题<<散打>>中回复了您的回复'),
(34, 13, 10, 1470045229, 1, 'post', 18, 'moma回复了您的主题<<boo他>>。'),
(35, 13, 10, 1470045268, 1, 'post', 19, 'moma回复了您的主题<<滴答滴答滴答滴答滴答滴答滴答滴答滴答>>。'),
(36, 13, 10, 1470045294, 1, 'post', 20, 'moma回复了您的主题<<哒哒哒>>。'),
(37, 13, 10, 1470045319, 1, 'post', 21, 'moma回复了您的主题<<1111>>。'),
(38, 13, 10, 1470045339, 1, 'post', 22, 'moma回复了您的主题<<s>>。'),
(39, 10, 13, 1470045387, 1, 'repost', 201, 'aaa在主题《s》中回复了您的回复'),
(40, 13, 10, 1470045396, 1, 'repost', 202, 'moma在主题《s》中回复了您的回复'),
(41, 10, 13, 1470050316, 1, 'repost', 206, 'aaa在主题《s》中回复了您的回复'),
(42, 1, 10, 1470059860, 1, 'post', 22, 'admin回复了您的主题《s》。'),
(43, 10, 1, 1470072870, 1, 'repost', 212, 'aaa在主题《s》中回复了您的回复'),
(44, 1, 10, 1470074075, 1, 'repost', 213, 'admin在主题《s》中回复了您的回复'),
(45, 10, 1, 1470099045, 1, 'repost', 214, 'aaa在主题《s》中回复了您的回复'),
(46, 1, 10, 1470102408, 0, 'post', 27, 'admin回复了您的主题《wewr eeeeee》。'),
(47, 1, 10, 1470102571, 0, 'post', 27, 'admin回复了您的主题《wewr eeeeee》。'),
(48, 1, 10, 1470102599, 0, 'repost', 217, 'admin在主题《s》中回复了您的回复'),
(49, 1, 10, 1470106400, 0, 'post', 27, 'admin回复了您的主题《wewr eeeeee》。');

-- --------------------------------------------------------

--
-- 表的结构 `think_repost`
--

CREATE TABLE `think_repost` (
  `rid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_repost`
--

INSERT INTO `think_repost` (`rid`, `bid`, `pid`, `uid`, `text`, `time`) VALUES
(87, 0, 5, 13, '<p>23</p>', 1469904392),
(88, 0, 5, 13, '			', 1469904394),
(89, 0, 5, 13, '			', 1469904396),
(90, 0, 5, 13, '			', 1469904398),
(91, 0, 5, 13, '			', 1469904400),
(92, 0, 5, 13, '			', 1469904403),
(93, 0, 5, 13, '			', 1469905107),
(94, 0, 5, 13, '			', 1469905109),
(95, 0, 5, 13, '			', 1469905111),
(96, 0, 5, 13, '			', 1469905113),
(97, 0, 5, 13, '<p>少时诵诗书</p>', 1469905118),
(98, 0, 5, 13, '			', 1469905120),
(99, 0, 5, 13, '<p>	</p><blockquote>\r\n		<p>少时诵诗书</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	<br/></p>', 1469905177),
(100, 0, 5, 13, '			', 1469905243),
(101, 0, 5, 13, '			', 1469905246),
(102, 0, 5, 13, '<p>	</p><blockquote>\r\n						</blockquote><p>\r\n	</p><hr/><p>\r\n	<br/></p>', 1469905334),
(103, 0, 5, 13, '<p>	</p><blockquote>\r\n						</blockquote><p>\r\n	</p><hr/><p>\r\n	<br/></p>', 1469905337),
(104, 0, 6, 13, '<p>fdasdfasd</p>', 1469906031),
(105, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>fdasdfasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	dfsfsdf</p>', 1469906035),
(106, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>fdasdfasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	6521621632</p>', 1469906055),
(107, 0, 9, 13, '<p>asdfsaf</p>', 1469906367),
(108, 0, 9, 13, '<p>sdfsdfs</p>', 1469906370),
(109, 0, 9, 13, '<p>dfsdfsdfs</p>', 1469906372),
(110, 0, 9, 13, '<p>sdfsdfsdf</p>', 1469906376),
(111, 0, 10, 13, '<p>sadsa</p>', 1469906461),
(112, 0, 10, 13, '<p>dsfsdf</p>', 1469906463),
(113, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>', 1469906519),
(114, 0, 10, 13, '<p>sdasdasd</p>', 1469906527),
(115, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	656545441</p>', 1469906636),
(116, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>', 1469906910),
(117, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdfsd</p>', 1469906915),
(118, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdfsd</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	assada</p>', 1469907070),
(119, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p>dsfsdf</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdasd</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	asada</p>	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdfsd</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	assada</p>		<small>----moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sadasdasda</p>', 1469907107),
(120, 0, 10, 13, '<p><img src="/Uploads/image/20160731/1469907135392535.jpg" title="1469907135392535.jpg" alt="itano22.jpg"/></p><p>222</p>', 1469907150),
(121, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p><img src="/Uploads/image/20160731/1469907135392535.jpg" title="1469907135392535.jpg" alt="itano22.jpg"/></p><p>222</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160731/1469907170883356.jpg" title="1469907170883356.jpg" alt="081.jpg"/></p>', 1469907173),
(122, 0, 10, 13, '<p>	</p><blockquote>\r\n		<p>	</p><blockquote>\r\n		<p><img src="/Uploads/image/20160731/1469907135392535.jpg" title="1469907135392535.jpg" alt="itano22.jpg"/></p><p>222</p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160731/1469907170883356.jpg" title="1469907170883356.jpg" alt="081.jpg"/></p>		<small>moma</small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	<img src="/Uploads/image/20160731/1469907233712735.jpg" title="1469907233712735.jpg" alt="137.jpg"/></p>', 1469907235),
(123, 0, 6, 13, '<p>q&nbsp;&nbsp;&nbsp;&nbsp;w&nbsp;&nbsp;&nbsp;&nbsp;qw</p>', 1469947427),
(124, 0, 6, 13, '<p>QWQ</p>', 1469947431),
(125, 0, 10, 13, '<p>	</p><blockquote>\r\n		<span class="grey">引用 moma：</span>\r\n		<p>\r\n		</p><p>sdasdasd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aszasasasasa</p>', 1469947565),
(126, 0, 10, 13, '<p>	</p><blockquote class="muted">\r\n		引用 moma：		<p>\r\n		</p><p>	</p><blockquote>\r\n		<span class="grey">引用 moma：</span>\r\n		<p>\r\n		</p><p>sdasdasd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aszasasasasa</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfasdasda</p>', 1469948237),
(127, 0, 8, 13, '<p>sdafsdfsd</p>', 1469948272),
(128, 0, 8, 13, '<p>	</p><blockquote class="muted">\r\n		引用 moma：		<p>\r\n		</p><p>sdafsdfsd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdf</p>', 1469948276),
(129, 0, 8, 13, '<p>	</p><blockquote>\r\n		<span class="muted">引用 moma：</span>\r\n		<p>\r\n		</p><p>	</p><blockquote class="muted">\r\n		引用 moma：		<p>\r\n		</p><p>sdafsdfsd</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdfsdf</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sdazsda</p>', 1469948295),
(130, 0, 8, 13, '<p>11111111111</p>', 1469948301),
(131, 0, 8, 13, '<p>	</p><blockquote>\r\n		<span class="muted">引用 moma：</span>\r\n		<p>\r\n		</p><p>11111111111</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	ewrwerwer</p>', 1469948307),
(132, 0, 6, 13, '<p>	</p><blockquote>\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>QWQ</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aaaaaaaaaaaa</p>', 1469948366),
(133, 0, 8, 13, '<p>	</p><blockquote class="pull-right">\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<span class="muted">引用 moma：</span>\r\n		<p>\r\n		</p><p>11111111111</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	ewrwerwer</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	asdsdaw</p>', 1469948479),
(134, 0, 8, 13, '<p>1111111111111111111</p>', 1469948492),
(135, 0, 8, 13, '<p>	</p><blockquote class="pull-right">\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>1111111111111111111</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	ewrwerwer</p>', 1469948497),
(136, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<span class="text-warning">引用 moma：</span>\r\n		<p>\r\n		</p><p>QWQ</p>		<p><br/></p>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aaaaaaaaaaaa</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	aaaaaaaaaaaaaaa</p>', 1469948582),
(137, 0, 6, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>fdasdfasd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	dfwerwerwe</p>', 1469948601),
(138, 0, 8, 13, '<p>f&#39;d&#39;s&#39;f&#39;s&#39;d</p>', 1469952142),
(139, 0, 4, 13, '<p>第三方地方</p>', 1469980314),
(140, 0, 4, 13, '<p>风格豆腐干豆腐干</p>', 1469980319),
(141, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>风格豆腐干豆腐干</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	斯蒂芬斯蒂芬</p>', 1469980396),
(142, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>风格豆腐干豆腐干</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	斯蒂芬斯蒂芬</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	&nbsp;&nbsp;&nbsp;&nbsp;2饿&nbsp;&nbsp;&nbsp;&nbsp;2俄而且为轻微其闻气味<br/></p>', 1469980408),
(143, 0, 12, 13, '<p>sdfsd&nbsp;</p>', 1469981244),
(144, 0, 12, 13, '<p>fsdfsdf</p>', 1469981249),
(145, 0, 4, 13, '<p>sdsdsdsdsdsdsdsdsdsdsdsd</p>', 1469981326),
(146, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>azsxasd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	sssssssssssss</p>', 1469981406),
(147, 0, 4, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>azsxasd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	22222222</p>', 1469981423),
(148, 0, 10, 13, '<p>sdsfsdfsdfsdf</p>', 1469981484),
(149, 0, 14, 13, '<p>11111111</p>', 1469983094),
(150, 0, 14, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>11111111</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	12123123</p>', 1469983098),
(151, 0, 2, 13, '<p>日图尔特</p>', 1469984213),
(152, 0, 2, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>日图尔特</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	豆腐干地方</p>', 1469984216),
(153, 0, 15, 10, '<p>sssssssssssssssssssssssssssss</p>', 1470037106),
(154, 0, 15, 10, '<p>xczxczxczxc</p>', 1470037160),
(155, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	etretert</p>', 1470037777),
(156, 0, 15, 10, '<p>sad</p>', 1470038323),
(157, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	终身大事的</p>', 1470038608),
(158, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	asdASD啊是打扫打扫</p>', 1470039971),
(159, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	1515151</p>', 1470040242),
(160, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>', 1470040300),
(161, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>', 1470040307),
(162, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>', 1470040307),
(163, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>', 1470040307),
(164, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxc</p>', 1470040314),
(165, 0, 15, 10, '<p>asdfasdf</p>', 1470040837),
(166, 0, 15, 10, '<p>的说法撒旦法</p>', 1470041026),
(167, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>的说法撒旦法</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	撒打算打算打算</p>', 1470041749),
(168, 0, 15, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>sssssssssssssssssssssssssssss</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	fgdfgdfgd</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	adasdasdasda</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	drtertert</p>', 1470043248),
(169, 0, 15, 10, '<p>qwqwqwqwqwqwqwqwqwqwqwqwqwqw</p>', 1470043644),
(170, 0, 14, 10, '<p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>', 1470043932),
(171, 0, 14, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxcz</p>', 1470043953),
(172, 0, 14, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><p><br/></p><hr/><p>卖萌可耻！！！！！<img src="http://img.baidu.com/hi/jx2/j_0013.gif"/></p>', 1470043982),
(173, 0, 14, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxcz</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	我去</p>', 1470044035),
(174, 0, 14, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p><img src="/Uploads/image/20160801/1470043924335647.jpg" title="1470043924335647.jpg" alt="1469927319216.jpg"/>sefsdfsdf</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	zxczxczxczxcz</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>呵呵呵</p>', 1470044054),
(175, 0, 16, 13, '<p>不高吗？</p>', 1470044094),
(176, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊</p>', 1470044107),
(177, 0, 16, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	自行车ZXZXZ</p>', 1470044124),
(178, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	自行车ZXZXZ</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	拭擦在市场</p>', 1470044139),
(179, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	阿娥分哇</p>', 1470044176),
(180, 0, 16, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>不高吗？</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊</p>', 1470044252),
(181, 0, 17, 10, '<p>1</p>', 1470044366),
(182, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>', 1470044382),
(183, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	22</p>', 1470044566),
(184, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3</p>', 1470044589),
(185, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	22</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3</p>', 1470044621),
(186, 0, 17, 10, '<p>死死死死死死死死死死死死</p>', 1470044696),
(187, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>死死死死死死死死死死死死</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333333333</p>', 1470044709),
(188, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>', 1470044721),
(189, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>', 1470044792),
(190, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>', 1470044810),
(191, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	下次vzczxcxzczx</p>', 1470044829),
(192, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊</p>', 1470045075),
(193, 0, 17, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	爱爱爱</p>', 1470045151),
(194, 0, 17, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>1</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	2</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	3333333333333333333333333333333</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	333333333333333333333335444444444444</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊啊啊啊啊啊啊啊</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊大多数打算</p>', 1470045206),
(195, 0, 18, 13, '<p>分vs</p>', 1470045229),
(196, 0, 18, 10, '<p>的法撒旦发射</p>', 1470045246),
(197, 0, 19, 13, '<p>跌幅大幅放大</p>', 1470045267),
(198, 0, 20, 13, '<p>打发打发</p>', 1470045294),
(199, 0, 21, 13, '<p>死死死死死死</p>', 1470045319),
(200, 0, 22, 13, '<p>斯蒂芬森的</p>', 1470045339),
(201, 0, 22, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>斯蒂芬森的</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	豆腐干豆腐干</p>', 1470045387),
(202, 0, 22, 13, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>	</p><blockquote>\r\n		<p>\r\n		</p><p>斯蒂芬森的</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	豆腐干豆腐干</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	薪酬增长速度成为撒d</p>', 1470045396),
(203, 0, 22, 10, '<p>斯蒂芬斯蒂芬</p>', 1470049914),
(204, 0, 22, 10, '<p>呜呜呜呜呜呜呜呜呜呜呜</p>', 1470050204),
(205, 0, 22, 10, '<p>额的点点滴滴的</p>', 1470050271),
(206, 0, 22, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>斯蒂芬森的</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>moma</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	啊色情啊为</p>', 1470050315),
(207, 0, 22, 10, '<p>下次在现场</p>', 1470050879),
(208, 0, 22, 10, '<p>滴滴</p>', 1470050917),
(209, 0, 22, 10, '<p>	</p><blockquote>\r\n		<p>\r\n		</p><p>下次在现场</p>		<p><br/></p>\r\n		<small><span class="text-warning">引用<cite>aaa</cite></span></small>\r\n	</blockquote><p>\r\n	</p><hr/><p>\r\n	俄方为不</p>', 1470050929),
(210, 0, 16, 10, '<p>速度vs</p>', 1470050946),
(211, 0, 22, 1, '<p>yooo!</p>', 1470059860),
(212, 0, 1, 1, '<p>41844165</p>', 1470205785),
(213, 0, 1, 1, '<p>AZxasdaS</p>', 1470208438),
(214, 0, 18, 1, '<p>adgsdfgsd</p>', 1470229938),
(215, 0, 2, 1, '<p>sdfsdf</p>', 1470229975);

-- --------------------------------------------------------

--
-- 表的结构 `think_torrent`
--

CREATE TABLE `think_torrent` (
  `tid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `magnet` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `torrent` varchar(255) NOT NULL,
  `ip` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `think_user` (
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
  `point` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`uid`, `gid`, `name`, `image`, `password`, `pnum`, `rnum`, `jointime`, `joinip`, `lasttime`, `lastip`, `info`, `joininfo`, `cookie`, `point`) VALUES
(1, 1, 'admin', '/Uploads/tx/1.png', 'a66abb5684c45962d887564f08346e8d', 38, 13, 0, '', 1471625594, '127.0.0.1', '', '[{"lasttime":1469511467,"lastip":"127.0.0.1"},{"lasttime":1469511595,"lastip":"127.0.0.1"},{"lasttime":1469511704,"lastip":"127.0.0.1"},{"lasttime":1469512610,"lastip":"127.0.0.1"},{"lasttime":1469512726,"lastip":"127.0.0.1"},{"lasttime":1469512856,"lastip":"127.0.0.1"},{"lasttime":1469512914,"lastip":"127.0.0.1"},{"lasttime":1469513114,"lastip":"127.0.0.1"},{"lasttime":1469513143,"lastip":"127.0.0.1"},{"lasttime":1469513262,"lastip":"127.0.0.1"},{"lasttime":1469513263,"lastip":"127.0.0.1"},{"lasttime":1469513279,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469520369,"lastip":"127.0.0.1"},{"lasttime":1469520484,"lastip":"127.0.0.1"},{"lasttime":1469520707,"lastip":"127.0.0.1"},{"lasttime":1470059849,"lastip":"127.0.0.1"},{"lasttime":1470096559,"lastip":"127.0.0.1"},{"lasttime":1470105561,"lastip":"127.0.0.1"},{"lasttime":1470205573,"lastip":"127.0.0.1"},{"lasttime":1470223917,"lastip":"127.0.0.1"},{"lasttime":1470332360,"lastip":"127.0.0.1"},{"lasttime":1471625594,"lastip":"127.0.0.1"}]', '', 3),
(4, 0, 'admina', '', 'sss', 0, 0, 1469519883, '127.0.0.1', 1469519883, '127.0.0.1', '', '', '08bd890f228dc5410efc65790c9b5d48', 0),
(5, 0, 'aaaaaa', '', 'dsfsdfsdfs', 0, 0, 1469520234, '127.0.0.1', 1469520234, '127.0.0.1', '', '', 'ffb9d06d744fc88459fb7feca668ec15', 0),
(6, 0, 'sdfsdfsdf', '', 'sdfsdfsdf', 0, 0, 1469520247, '127.0.0.1', 1469520247, '127.0.0.1', '', '', 'a816aa8e16d33a77855872798d236901', 0),
(10, 0, 'aaa', '/Uploads/tx/10.jpg', '552e6a97297c53e592208cf97fbb3b60', 5, 42, 1469522851, '127.0.0.1', 1470097670, '127.0.0.1', '', '[{"lasttime":1469523069,"lastip":"127.0.0.1"},{"lasttime":1469523102,"lastip":"127.0.0.1"},{"lasttime":1469554182,"lastip":"127.0.0.1"},{"lasttime":1470037106,"lastip":"127.0.0.1"},{"lasttime":1470072230,"lastip":"127.0.0.1"},{"lasttime":1470097670,"lastip":"127.0.0.1"}]', '81fd232cc051a619a140e6e9b29e7bd0', 0),
(11, 0, 'mom', '', '863eabdc5516ea49a5c85c7a8cd3979e', 0, 0, 1469882797, '127.0.0.1', 1469883897, '127.0.0.1', '', '[{"lasttime":1469883897,"lastip":"127.0.0.1"}]', '', 0),
(12, 0, 'mom7', '', 'c50c223afa2d625a86f32c270e3710ed', 0, 0, 1469884121, '127.0.0.1', 1469884121, '127.0.0.1', '', '', '', 0),
(13, 0, 'moma', '/Uploads/tx/13.jpg', '9811aa4d32e2217e12e0bff4fb8fb35a', -1, 33, 1469884139, '127.0.0.1', 1470059742, '127.0.0.1', '', '[{"lasttime":1469980313,"lastip":"127.0.0.1"},{"lasttime":1470039327,"lastip":"127.0.0.1"},{"lasttime":1470043552,"lastip":"127.0.0.1"},{"lasttime":1470059742,"lastip":"127.0.0.1"}]', '', 0),
(14, 0, 'admin下次', '', '151c700edf12eeb0f163aec969cf9a51', 0, 0, 1470072542, '127.0.0.1', 1470072542, '127.0.0.1', '', '', '', 0),
(15, 0, '斯蒂芬斯蒂芬', '', 'c0d9b6518f95a97650228ee147997423', 0, 0, 1470072560, '127.0.0.1', 1470072560, '127.0.0.1', '', '', '', 0),
(16, 0, '电风扇地方', '', '7de0723def52fd86d2a65fa210a087c1', 0, 0, 1470072667, '127.0.0.1', 1470072667, '127.0.0.1', '', '', '', 0),
(17, 0, '阿萨斯阿萨德', '', 'ce7a47438e2823e5c23aeecde5984179', 0, 0, 1470073482, '127.0.0.1', 1470073482, '127.0.0.1', '', '', '', 0),
(18, 0, '速度', '', '834dca8b096a162758859b8e5f9d2759', 0, 0, 1470073653, '127.0.0.1', 1470073653, '127.0.0.1', '', '', '', 0),
(19, 0, '啊啊啊啊', '', '23adce2017a9ada01f5c3adb8bd70482', 0, 0, 1470073902, '127.0.0.1', 1470073902, '127.0.0.1', '', '', '', 0),
(20, 0, '阿斯达萨斯', '', '7b72094bf9ac5f8082114a23c109d825', 0, 0, 1470074234, '127.0.0.1', 1471629554, '127.0.0.1', '', '[{"lasttime":1471628775,"lastip":"127.0.0.1"},{"lasttime":1471629554,"lastip":"127.0.0.1"}]', 'a666a7413368f05be77c91f369bb6898', 0);

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
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `think_admin`
--
ALTER TABLE `think_admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_board`
--
ALTER TABLE `think_board`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_love`
--
ALTER TABLE `think_love`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_message`
--
ALTER TABLE `think_message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_post`
--
ALTER TABLE `think_post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- 使用表AUTO_INCREMENT `think_remind`
--
ALTER TABLE `think_remind`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- 使用表AUTO_INCREMENT `think_repost`
--
ALTER TABLE `think_repost`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- 使用表AUTO_INCREMENT `think_torrent`
--
ALTER TABLE `think_torrent`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `think_user`
--
ALTER TABLE `think_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
