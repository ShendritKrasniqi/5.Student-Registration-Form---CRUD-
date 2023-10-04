-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2023 at 12:23 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `card_activation`
--

CREATE TABLE `card_activation` (
  `id` int(10) NOT NULL,
  `u_card` varchar(12) NOT NULL,
  `u_f_name` text NOT NULL,
  `u_l_name` text NOT NULL,
  `u_father` text NOT NULL,
  `u_passaport` varchar(12) NOT NULL,
  `u_birthday` text NOT NULL,
  `u_gender` varchar(6) NOT NULL,
  `u_email` text NOT NULL,
  `u_phone` varchar(10) NOT NULL,
  `u_state` varchar(12) NOT NULL,
  `u_dist` text NOT NULL,
  `u_village` text NOT NULL,
  `u_pstation` text NOT NULL,
  `u_pincode` text NOT NULL,
  `file` longblob NOT NULL,
  `u_degree` varchar(30) NOT NULL,
  `u_family` text NOT NULL,
  `staff_id` varchar(12) NOT NULL,
  `image` varchar(150) NOT NULL,
  `uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_activation`
--

INSERT INTO `card_activation` (`id`, `u_card`, `u_f_name`, `u_l_name`, `u_father`, `u_passaport`, `u_birthday`, `u_gender`, `u_email`, `u_phone`, `u_state`, `u_dist`, `u_village`, `u_pstation`, `u_pincode`, `file`, `u_degree`, `u_family`, `staff_id`, `image`, `uploaded`) VALUES
(102, '181951308', 'Alma', 'Gashi', 'Blend', 'P00520840RKS', '2002-01-09', 'Female', 'ag@gmail.com', '045222333', 'Kosove', 'Prishtine', '', '', '1000', '', 'Infermieri', '', '329756291', 'woman.jpg', '2021-01-16 12:47:17'),
(106, '202151980', 'Ermir', 'Shabani', 'Shendrit', 'P00497230RKS', '2022-10-19', 'Male', 'esh@outlook.com', '045222333', 'Kosove', 'Gjilan', '', '', '60000', '', 'Juridik', '', '329756291', 'img_avatar.png', '2022-10-11 02:40:45'),
(118, '161762732', 'Alisa', 'Maliqi', 'Vedat', 'P00316913RKS', '2023-10-20', 'Male', 'am@gmail.com', '044222333', 'Shqiperi', 'Tirana', '', '', '1001', '', 'Ekonomik', '', '329756291', 'woman.jpg', '2023-10-03 20:09:29'),
(119, '202151676', 'Shendrit', 'Krasniqi', 'Milhat', 'P00129843RKS', '2002-07-16', 'Male', 'shk@outlook.com', '045222333', 'Kosove', 'Gjilan', '', '', '60000', '', 'Shkenca Kompjuterike', '', '329756291', 'img_avatar.png', '2023-10-04 23:31:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_activation`
--
ALTER TABLE `card_activation`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_activation`
--
ALTER TABLE `card_activation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
