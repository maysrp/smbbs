-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2016-09-04 14:56:01
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
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `think_remind`
--
ALTER TABLE `think_remind`
  ADD PRIMARY KEY (`eid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `think_remind`
--
ALTER TABLE `think_remind`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
