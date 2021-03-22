-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 10:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `departmenstoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_data`
--

CREATE TABLE `customer_data` (
  `id_cust` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `total` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_data`
--

INSERT INTO `customer_data` (`id_cust`, `name`, `gender`, `total`) VALUES
('00000', 'Amanda Arleta', 'F', 2000000),
('00001', 'Budi Budiono', 'M', 30000000),
('00002', 'Charlie Chaplin', 'M', 500000),
('00003', 'Doni Dioni', 'M', 9900000),
('00004', 'Ernia Erlangga', 'F', 6000000),
('00005', 'Fania Fanta', 'F', 600000),
('00006', 'Galing Geraldo', 'M', 1500000);

-- --------------------------------------------------------

--
-- Table structure for table `product_data`
--

CREATE TABLE `product_data` (
  `id_product` varchar(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_data`
--

INSERT INTO `product_data` (`id_product`, `product_name`, `price`) VALUES
('10000', 'Tas Guccia Versi 1', 9900000),
('10001', 'Tas Guccia Versi 2', 15000000),
('10002', 'Tas MarJacabs Versi 1', 6000000),
('10003', 'Tas MarJacabs Versi 2', 5000000),
('10004', 'Tas RV Versi 1', 5000000),
('10005', 'Tas RV Versi 2', 900000),
('20000', 'Kemeja RV', 500000),
('20001', 'Jaket Levay', 600000),
('20002', 'Jaket Kulit CKK', 1400000);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_data`
--

CREATE TABLE `transaction_data` (
  `id_cust` varchar(5) NOT NULL,
  `id_product` varchar(5) NOT NULL,
  `id_transaction` int(10) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_data`
--

INSERT INTO `transaction_data` (`id_cust`, `id_product`, `id_transaction`, `time`) VALUES
('00000', '20001', 0, '2021-01-01 12:00:00'),
('00000', '20002', 1, '2021-01-02 14:00:00'),
('00001', '10001', 2, '2021-01-04 14:00:00'),
('00001', '10003', 3, '2021-01-04 15:17:39'),
('00001', '10004', 4, '2021-01-05 08:00:00'),
('00001', '10004', 5, '2021-01-05 09:00:00'),
('00002', '20000', 6, '2021-01-09 16:00:00'),
('00003', '10000', 7, '2021-01-10 09:15:00'),
('00004', '10002', 8, '2021-01-16 12:00:00'),
('00005', '20001', 9, '2021-01-18 16:00:00'),
('00006', '10005', 10, '2021-02-02 16:30:00'),
('00006', '20001', 11, '2021-02-03 14:29:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_data`
--
ALTER TABLE `customer_data`
  ADD PRIMARY KEY (`id_cust`);

--
-- Indexes for table `product_data`
--
ALTER TABLE `product_data`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `transaction_data`
--
ALTER TABLE `transaction_data`
  ADD KEY `id_cust` (`id_cust`),
  ADD KEY `id_product` (`id_product`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaction_data`
--
ALTER TABLE `transaction_data`
  ADD CONSTRAINT `id_cust` FOREIGN KEY (`id_cust`) REFERENCES `customer_data` (`id_cust`),
  ADD CONSTRAINT `id_product` FOREIGN KEY (`id_product`) REFERENCES `product_data` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
