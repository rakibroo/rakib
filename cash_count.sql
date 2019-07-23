-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 23, 2019 at 07:29 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cash_count`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts`
--

CREATE TABLE `tbl_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_accounts`
--

INSERT INTO `tbl_accounts` (`id`, `name`, `code`, `status_id`, `country_id`, `updated_at`, `created_at`, `created_by`, `updated_by`) VALUES
(1, 'MD. Rakib', '1234', 1, 101, '2019-07-23 00:00:00', '2019-07-23 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_adjustment`
--

CREATE TABLE `tbl_cash_adjustment` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `details` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `from_cash_source_id` int(11) NOT NULL,
  `to_cash_source_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cash_adjustment`
--

INSERT INTO `tbl_cash_adjustment` (`id`, `date`, `details`, `amount`, `from_cash_source_id`, `to_cash_source_id`, `account_id`, `status_id`, `country_id`, `updated_at`, `created_at`, `created_by`, `updated_by`) VALUES
(1, '2019-07-23', 'Nothing', 100000, 1, 1, 1, 1, 101, '2019-07-23 00:00:00', '2019-07-23 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_movement`
--

CREATE TABLE `tbl_cash_movement` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `details` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `cash_move_type_id` int(11) NOT NULL,
  `cash_source_id` int(11) NOT NULL,
  `cash_type_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_move_type`
--

CREATE TABLE `tbl_cash_move_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `cash_type_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_source`
--

CREATE TABLE `tbl_cash_source` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cash_type`
--

CREATE TABLE `tbl_cash_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emp_acct_map`
--

CREATE TABLE `tbl_emp_acct_map` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_adjustment`
--
ALTER TABLE `tbl_cash_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_movement`
--
ALTER TABLE `tbl_cash_movement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_move_type`
--
ALTER TABLE `tbl_cash_move_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_source`
--
ALTER TABLE `tbl_cash_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cash_type`
--
ALTER TABLE `tbl_cash_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_emp_acct_map`
--
ALTER TABLE `tbl_emp_acct_map`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts`
--
ALTER TABLE `tbl_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cash_adjustment`
--
ALTER TABLE `tbl_cash_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_cash_movement`
--
ALTER TABLE `tbl_cash_movement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_move_type`
--
ALTER TABLE `tbl_cash_move_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_source`
--
ALTER TABLE `tbl_cash_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cash_type`
--
ALTER TABLE `tbl_cash_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_emp_acct_map`
--
ALTER TABLE `tbl_emp_acct_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
