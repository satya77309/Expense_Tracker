-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2019 at 12:08 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expense_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `expense_category_tbl`
--

CREATE TABLE `expense_category_tbl` (
  `expense_category_id` int(11) UNSIGNED NOT NULL,
  `expense_category_name` varchar(200) NOT NULL,
  `amount` decimal(10,0) NOT NULL DEFAULT '0',
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expense_tbl`
--

CREATE TABLE `expense_tbl` (
  `expense_id` int(11) UNSIGNED NOT NULL,
  `expense_category_id` int(11) UNSIGNED NOT NULL,
  `expense_description` varchar(200) NOT NULL,
  `expense_date` date NOT NULL,
  `created_at` date NOT NULL,
  `deleted` int(1) UNSIGNED NOT NULL,
  `amount_spent` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expense_category_tbl`
--
ALTER TABLE `expense_category_tbl`
  ADD PRIMARY KEY (`expense_category_id`),
  ADD UNIQUE KEY `expense_category_name` (`expense_category_name`);

--
-- Indexes for table `expense_tbl`
--
ALTER TABLE `expense_tbl`
  ADD PRIMARY KEY (`expense_id`),
  ADD KEY `FK_cat_id` (`expense_category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expense_category_tbl`
--
ALTER TABLE `expense_category_tbl`
  MODIFY `expense_category_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `expense_tbl`
--
ALTER TABLE `expense_tbl`
  MODIFY `expense_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `expense_tbl`
--
ALTER TABLE `expense_tbl`
  ADD CONSTRAINT `FK_cat_id` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_category_tbl` (`expense_category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
