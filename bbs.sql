-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-09-12 21:22:00
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neww`
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_admin`
--

INSERT INTO `think_admin` (`aid`, `uid`, `lastip`, `lasttime`, `info`) VALUES
(1, 1, '36.149.69.132', 1473438930, '[{"lastip":"127.0.0.1","lasttime":1469604074},{"lastip":"127.0.0.1","lasttime":1469604078},{"lastip":"127.0.0.1","lasttime":1469604126},{"lastip":"127.0.0.1","lasttime":1470059871},{"lastip":"127.0.0.1","lasttime":1470096574},{"lastip":"127.0.0.1","lasttime":1470105595},{"lastip":"36.149.197.200","lasttime":1470107254},{"lastip":"115.199.105.85","lasttime":1470107949},{"lastip":"36.149.197.200","lasttime":1470130736},{"lastip":"36.149.197.58","lasttime":1470230533},{"lastip":"36.149.70.171","lasttime":1472912827},{"lastip":"36.149.197.238","lasttime":1473167601},{"lastip":"36.149.4.215","lasttime":1473230081},{"lastip":"36.149.69.132","lasttime":1473438930}]');

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_board`
--

INSERT INTO `think_board` (`bid`, `aid`, `uid`, `name`, `time`) VALUES
(13, 1, 1, '灌水', 1470107271);

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_lp`
--

CREATE TABLE `think_lp` (
  `lp` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `point` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `image` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `retime` int(11) NOT NULL,
  `love` int(11) NOT NULL,
  `unlove` int(11) NOT NULL,
  `view` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `info` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `lc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_repost`
--

CREATE TABLE `think_repost` (
  `rid` int(11) NOT NULL,
  `rrid` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `lc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `think_sign`
--

CREATE TABLE `think_sign` (
  `sign` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `info` longtext NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `think_site`
--

CREATE TABLE `think_site` (
  `site` int(11) NOT NULL,
  `footer` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `think_site`
--

INSERT INTO `think_site` (`site`, `footer`) VALUES
(1, '																												<h4>友情链接</h4>\r\n		<p><a href="http://http://git.oschina.net/supercell/smbbs">smbbs</a></p>\r\n<p><a href="http://www.thinkphp.cn/">ThinkPHP</a></p>\r\n		<p><a href="http://v3.bootcss.com/">bootstrap</a></p>\r\n		<p><a href="http://jquery.com/">JQuery</a></p>																								');

-- --------------------------------------------------------

--
-- 表的结构 `think_talk`
--

CREATE TABLE `think_talk` (
  `tid` int(11) NOT NULL,
  `suid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `info` longtext CHARACTER SET utf8 COLLATE utf8_general_mysql500_ci NOT NULL,
  `time` int(11) NOT NULL,
  `info_key` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `retime` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `point` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sign` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `think_user`
--

INSERT INTO `think_user` (`uid`, `gid`, `name`, `image`, `password`, `pnum`, `rnum`, `jointime`, `joinip`, `lasttime`, `lastip`, `info`, `joininfo`, `cookie`, `point`, `level`, `sign`) VALUES
(1, 1, 'admin', '/Uploads/tx/1.jpg', 'a66abb5684c45962d887564f08346e8d', 44, 111, 0, '', 1473661584, '36.149.197.13', '{"text":"\\t\\t\\t\\u627e\\u5de5\\u4f5c\\uff01\\uff01\\nPHP\\n\\u7f51\\u7ad9\\u7ba1\\u7406\\n\\u524d\\u7aef\\u5b9e\\u4e60\\n\\u7f51\\u7ba1\\n\\u7535\\u6c14\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t","email":"maysrp@163.com","date":"1992-12-11"}', '[{"lasttime":1469511467,"lastip":"127.0.0.1"},{"lasttime":1469511595,"lastip":"127.0.0.1"},{"lasttime":1469511704,"lastip":"127.0.0.1"},{"lasttime":1469512610,"lastip":"127.0.0.1"},{"lasttime":1469512726,"lastip":"127.0.0.1"},{"lasttime":1469512856,"lastip":"127.0.0.1"},{"lasttime":1469512914,"lastip":"127.0.0.1"},{"lasttime":1469513114,"lastip":"127.0.0.1"},{"lasttime":1469513143,"lastip":"127.0.0.1"},{"lasttime":1469513262,"lastip":"127.0.0.1"},{"lasttime":1469513263,"lastip":"127.0.0.1"},{"lasttime":1469513279,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469513281,"lastip":"127.0.0.1"},{"lasttime":1469520369,"lastip":"127.0.0.1"},{"lasttime":1469520484,"lastip":"127.0.0.1"},{"lasttime":1469520707,"lastip":"127.0.0.1"},{"lasttime":1470059849,"lastip":"127.0.0.1"},{"lasttime":1470096559,"lastip":"127.0.0.1"},{"lasttime":1470105561,"lastip":"127.0.0.1"},{"lasttime":1470107231,"lastip":"36.149.197.200"},{"lasttime":1470107947,"lastip":"115.199.105.85"},{"lasttime":1470130734,"lastip":"36.149.197.200"},{"lasttime":1470230532,"lastip":"36.149.197.58"},{"lasttime":1470283166,"lastip":"36.149.197.58"},{"lasttime":1470677375,"lastip":"106.185.35.244"},{"lasttime":1470846632,"lastip":"36.149.197.83"},{"lasttime":1471464770,"lastip":"36.149.69.65"},{"lasttime":1471464828,"lastip":"36.149.69.65"},{"lasttime":1472831334,"lastip":"36.149.197.235"},{"lasttime":1472886341,"lastip":"36.149.70.171"},{"lasttime":1472912825,"lastip":"36.149.70.171"},{"lasttime":1472963914,"lastip":"106.185.35.244"},{"lasttime":1473068494,"lastip":"36.149.197.238"},{"lasttime":1473151055,"lastip":"36.149.197.238"},{"lasttime":1473224650,"lastip":"36.149.4.215"},{"lasttime":1473243167,"lastip":"36.149.4.215"},{"lasttime":1473296858,"lastip":"106.185.35.244"},{"lasttime":1473348455,"lastip":"36.149.4.215"},{"lasttime":1473409518,"lastip":"36.149.69.132"},{"lasttime":1473512444,"lastip":"106.185.35.244"},{"lasttime":1473572847,"lastip":"36.149.197.13"},{"lasttime":1473614453,"lastip":"36.149.197.13"},{"lasttime":1473661584,"lastip":"36.149.197.13"}]', 'd2798fd175c3386d069cdb873ee5d412', 666, 666, 20160913);

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
-- Indexes for table `think_talk`
--
ALTER TABLE `think_talk`
  ADD PRIMARY KEY (`tid`);

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
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- 使用表AUTO_INCREMENT `think_love`
--
ALTER TABLE `think_love`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_lp`
--
ALTER TABLE `think_lp`
  MODIFY `lp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- 使用表AUTO_INCREMENT `think_message`
--
ALTER TABLE `think_message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `think_post`
--
ALTER TABLE `think_post`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- 使用表AUTO_INCREMENT `think_remind`
--
ALTER TABLE `think_remind`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
--
-- 使用表AUTO_INCREMENT `think_repost`
--
ALTER TABLE `think_repost`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=391;
--
-- 使用表AUTO_INCREMENT `think_sign`
--
ALTER TABLE `think_sign`
  MODIFY `sign` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `think_site`
--
ALTER TABLE `think_site`
  MODIFY `site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `think_talk`
--
ALTER TABLE `think_talk`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- 使用表AUTO_INCREMENT `think_torrent`
--
ALTER TABLE `think_torrent`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- 使用表AUTO_INCREMENT `think_user`
--
ALTER TABLE `think_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
