-- phpMyAdmin SQL Dump
-- version 4.6.6deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2017 at 01:31 PM
-- Server version: 5.6.30-1
-- PHP Version: 7.0.16-3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `mafia`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `years` mediumint(8) UNSIGNED NOT NULL,
  `capo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `years`, `capo_id`) VALUES
(1, 'Al Capone', 40, NULL),
(2, 'Carlo Gambino', 30, 1),
(3, 'Cesare Manzella', 5, 2),
(4, 'Mariano Di Girolamo', 10, 2),
(5, 'Tom Valero', 20, 2),
(6, 'Gemma Bernet', 25, 2),
(7, 'Alberti Raich', 15, 5),
(8, 'Alexandro Sala', 1, 5),
(9, 'Eduardi Molini', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `members_jail`
--

DROP TABLE IF EXISTS `members_jail`;
CREATE TABLE `members_jail` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `years` mediumint(8) UNSIGNED NOT NULL,
  `years_of_conviction` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members_jail`
--

INSERT INTO `members_jail` (`id`, `name`, `years`, `years_of_conviction`) VALUES
(1, 'Francesco Fascio', 10, 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members_jail`
--
ALTER TABLE `members_jail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `members_jail`
--
ALTER TABLE `members_jail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;