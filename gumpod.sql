-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Време на генериране: 
-- Версия на сървъра: 5.5.32
-- Версия на PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- БД: `gumpod`
--
CREATE DATABASE IF NOT EXISTS `gumpod` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gumpod`;

-- --------------------------------------------------------

--
-- Структура на таблица `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `favID` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `trackID` int(11) NOT NULL,
  PRIMARY KEY (`favID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `tracks`
--

CREATE TABLE IF NOT EXISTS `tracks` (
  `trackID` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` text NOT NULL,
  `description` text NOT NULL,
  `dl_link` text NOT NULL,
  `dl_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`trackID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `useID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `password` text NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `tracks_created` int(11) NOT NULL,
  `avatar_path` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`useID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`useID`, `username`, `password`, `first_name`, `last_name`, `tracks_created`, `avatar_path`, `description`) VALUES
(2, 'user1', '123456', 'George', 'Michael', 1, 'sdfasdfa', 'sdfasdffasdasdf'),
(3, 'user3', '123', '', '', 0, '', ''),
(4, 'user3', '123', '', '', 0, '', ''),
(5, 'user3', '123', '', '', 0, '', ''),
(6, 'user3', '123', '', '', 0, '', ''),
(7, 'user2', '0', '', '', 0, '', ''),
(8, 'user4', '0', '', '', 0, '', ''),
(9, 'real_user', 'alpha45fuck', '', '', 0, '', ''),
(10, 'gumpod', 'gumi', '', '', 0, '', ''),
(11, 'HMiku', 'senbonzakura', '', '', 0, '', ''),
(12, 'gorilla', 'z123456', 'Gorilla', 'Inc', 0, '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
