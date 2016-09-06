-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-09-06 21:41:06
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
(1, '														<h4>友情链接</h4>\r\n		<p><a href="http://http://git.oschina.net/supercell/smbbs">smbbs</a></p>\r\n		<p><a href="http://v3.bootcss.com/">bootstrap</a></p>\r\n		<p><a href="http://jquery.com/">JQuery</a></p>												');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_site`
--
ALTER TABLE `think_site`
  ADD PRIMARY KEY (`site`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `think_site`
--
ALTER TABLE `think_site`
  MODIFY `site` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
