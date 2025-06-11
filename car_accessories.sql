-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 27, 2022 at 01:31 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `car_accessories`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE `acc` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `price` varchar(15) NOT NULL,
  `car` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `year` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `img` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`id`, `name`, `price`, `car`, `model`, `year`, `date`, `img`) VALUES
(1, 'test', '20000', 'test', 'test', '2022', '3333-03-31', 'ab.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(5) NOT NULL auto_increment,
  `uid` varchar(5) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `aid` varchar(5) NOT NULL,
  `acce` varchar(30) NOT NULL,
  `price` varchar(15) NOT NULL,
  `car` varchar(30) NOT NULL,
  `model` varchar(30) NOT NULL,
  `year` varchar(15) NOT NULL,
  `date` varchar(15) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `uid`, `uname`, `aid`, `acce`, `price`, `car`, `model`, `year`, `date`, `contact`, `email`, `address`) VALUES
(1, '1', 'anas', '1', 'test', '20000', 'test', 'test', '2022', '3333-03-31', '7708352825', 'anasm6024@gmail.com', 'trichy');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `uname` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `cpass` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `gender`, `contact`, `email`, `address`, `uname`, `pass`, `cpass`) VALUES
(1, 'anas', 'Male', '1234567890', 'anas@gmail.com', 'trichy', 'anas', '123', '123');
