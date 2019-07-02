-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2018 at 09:56 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sales`
--

-- --------------------------------------------------------

--
-- Table structure for table `citas`
--

CREATE TABLE `citas` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `barber` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `service` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citas`
--

INSERT INTO `citas` (`customer_id`, `customer_name`, `barber`, `address`, `service`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(12, 'Juan Carlos Guzman', 'Jairo Brenes', '', '', '83409368', '10000', 'Corte de Cabello', '2018-04-30', '5PM'),
(13, 'Keyla Rica', 'Ricardo Lavolpe', '', '', '45869536', '10000', 'Corte de Cabello', '2018-04-30', '5:00 PM'),
(15, 'Luis Fonsi', 'Anthony Castellon', '', '', '89754896', '4500', 'Corte de Barba', '2018-04-30', '6:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `transaction_id` int(11) NOT NULL,
  `date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `membership_number` varchar(100) NOT NULL,
  `prod_name` varchar(550) NOT NULL,
  `expected_date` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `address`, `contact`, `membership_number`, `prod_name`, `expected_date`, `note`) VALUES
(6, 'Karolina Mora Cisneros', 'Ipis, La Mora', '85954875', '60000', 'karo@mora.com', '2018-04-23', 'Llega a menudo');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(200) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `o_price` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `onhand_qty` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `qty_sold` int(10) NOT NULL,
  `expiry_date` varchar(500) NOT NULL,
  `date_arrival` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_code`, `gen_name`, `product_name`, `cost`, `o_price`, `price`, `profit`, `supplier`, `onhand_qty`, `qty`, `qty_sold`, `expiry_date`, `date_arrival`) VALUES
(64, 'Corte de Cabello', 'Jairo Brenes', 'Cortes ', '', '10000', '10000', '0', 'Jairo Brenes', 0, 3999933, 4000000, '2026-06-16', '2018-04-23'),
(65, 'Corte de Barba', 'Giovanny', 'Barbas ', '', '5000', '5000', '0', 'Jairo Brenes', 0, 3999930, 4000000, '2018-04-30', '2018-04-23'),
(66, 'Marcado de Cejas', '', '', '', '3000', '3000', '0', 'Ernesto Cruz', 0, 474985, 475000, '2036-07-17', '2018-04-26'),
(68, 'Corte de Cabello', '', '', '', '10000', '10000', '0', 'Ricardo Lavolpe', 0, 44983, 45000, '2018-11-23', '2018-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `transaction_id` int(11) NOT NULL,
  `invoice_number` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `suplier` varchar(100) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchases_item`
--

CREATE TABLE `purchases_item` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `cost` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(20) NOT NULL,
  `cashier` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `supplier` varchar(150) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `balance` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`transaction_id`, `invoice`, `product`, `qty`, `cashier`, `date`, `type`, `amount`, `price`, `discount`, `profit`, `product_code`, `supplier`, `due_date`, `name`, `balance`) VALUES
(142, 'RS-32285029', '', '', 'Admin', '04/03/18', 'cash', '8000', '', '', '0', '', '', '4000', 'Jairo Brenes', ''),
(143, 'RS-60296232', '', '', 'Admin', '04/03/18', 'cash', '12000', '', '', '0', '', '', '4', 'test', ''),
(144, 'RS-820242', '', '', 'Admin', '04/03/18', 'cash', '20000', '', '', '0', '', '', '800', '', ''),
(145, 'RS-3338032', '', '', 'Admin', '04/03/18', 'cash', '16000', '', '', '0', '', '', '20000', 'Jairo Brenes', ''),
(146, 'RS-0302209', '', '', 'Admin', '04/22/18', 'cash', '4000', '', '', '0', '', '', '4000', 'Joaquin', ''),
(147, 'RS-030700', '', '', 'Admin', '04/22/18', 'cash', '8000', '', '', '0', '', '', '1', 'testcust', ''),
(148, 'RS-0522422', '', '', 'Admin', '04/22/18', 'cash', '5000', '', '', '0', '', '', '10000', 'Jairo Brenes', ''),
(149, 'RS-79733', '', '', 'Admin', '04/23/18', 'cash', '5000', '', '', '0', '', '', '20000', 'Miguel Brenes', ''),
(150, 'RS-5320023', '', '', 'Admin', '04/23/18', 'cash', '20000', '', '', '0', '', '', '25000', 'Fabricio Mora', ''),
(151, 'RS-06270022', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '60000', 'Roberto', ''),
(152, 'RS-04222033', '', '', 'Admin', '04/26/18', 'cash', '5000', '', '', '0', '', '', '8000', 'Gerardo', ''),
(153, 'RS-303532', '', '', 'Admin', '04/26/18', 'cash', '5000', '', '', '0', '', '', '70000', 'Diego Leon', ''),
(154, 'RS-270036', '', '', 'Admin', '04/26/18', 'cash', '5000', '', '', '0', '', '', '9000', 'Ernesto', ''),
(155, 'RS-23330', '', '', 'Admin', '04/26/18', 'cash', '15000', '', '', '0', '', '', '25000', 'Fabricio Alvarado', ''),
(156, 'RS-0443849', '', '', 'Admin', '04/26/18', 'cash', '15000', '', '', '0', '', '', '40000', 'Roberto Orellana', ''),
(157, 'RS-323020', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '45000', 'Leonel Messi', ''),
(158, 'RS-324085', '', '', 'Admin', '04/25/18', 'cash', '10000', '', '', '0', '', '', '45000', 'Leonel Messi', ''),
(159, 'RS-220202', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '15000', 'Marino Ballena', ''),
(160, 'RS-6322233', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '25000', 'Roberto Gomez BolaÃ±os', ''),
(161, 'RS-7982982', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '15000', 'Hubert Rodriguez', ''),
(162, 'RS-222640', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '15000', 'Ricardo Lavolpe', ''),
(163, 'RS-2230200', '', '', 'Admin', '04/26/18', 'cash', '5000', '', '', '0', '', '', '15000', 'Daniel Espinoza', ''),
(164, 'RS-9362', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '25000', 'karol Mora', ''),
(165, 'RS-392320', '', '', 'Admin', '04/26/18', 'cash', '15000', '', '', '0', '', '', '25000', 'Stepnany Munoz', ''),
(166, 'RS-62383620', '', '', 'Admin', '04/26/18', 'cash', '15000', '', '', '0', '', '', '25000', 'Braulio Carrillo', ''),
(167, 'RS-30232022', '', '', 'Admin', '04/26/18', 'cash', '10000', '', '', '0', '', '', '25000', 'Joaquin', ''),
(168, 'RS-22030320', '', '', 'Admin', '04/26/18', 'cash', '30000', '', '', '0', '', '', '30000', 'Joaquin Lopez Doriga', ''),
(169, 'RS-928023', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(170, 'RS-928023', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(171, 'RS-928023', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(172, 'RS-928023', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(173, 'RS-23334003', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(174, 'RS-322023', '66', '1', '', '04/27/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', '', '', '', ''),
(175, 'RS-329203', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(176, 'RS-38203', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(177, 'RS-233238', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', '', '', 'Cortes ', ''),
(178, 'RS-2303020', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', '', '', 'Barbas ', ''),
(179, 'RS-6353302', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(180, 'RS-3838360', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(181, 'RS-0058332', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(182, 'RS-0058332', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(183, 'RS-3200323', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(184, 'RS-420823', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(185, 'RS-420823', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(186, 'RS-2773339', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(187, 'RS-2773339', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(188, 'RS-332023', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(189, 'RS-332023', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(190, 'RS-72032', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(191, 'RS-50008235', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(192, 'RS-0900222', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(193, 'RS-992007', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(194, 'RS-69222', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(195, 'RS-2320940', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(196, 'RS-23322', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(197, 'RS-2093333', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(198, 'RS-2093333', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(199, 'RS-33732', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(200, 'RS-2308082', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(201, 'RS-25023', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(202, 'RS-3330300', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(203, 'RS-595227', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(204, 'RS-33822', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(205, 'RS-0322232', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(206, 'RS-62370', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(207, 'RS-53222939', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(208, 'RS-3953328', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(209, 'RS-2037233', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(210, 'RS-53059', '66', '1', '', '04/27/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(211, 'RS-73430230', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(212, 'RS-73430230', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(213, 'RS-7020220', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(214, 'RS-22732', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(215, 'RS-22732', '65', '1', '', '04/27/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(216, 'RS-3724324', '64', '1', '', '04/27/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(217, 'RS-233335', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(218, 'RS-3523022', '68', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(219, 'RS-23243805', '64', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(220, 'RS-23243805', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(221, 'RS-527034', '64', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(222, 'RS-527034', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(223, 'RS-72293233', '64', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(224, 'RS-72293233', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(225, 'RS-72293233', '68', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(226, 'RS-02200303', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(229, 'RS-275002', '69', '1', '', '04/28/18', '', '6000', '6000', '', '0', 'Shampoo', '', '', '', ''),
(230, 'RS-72327', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(231, 'RS-0332830', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(232, 'RS-33332222', '64', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(234, 'RS-33932200', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(235, 'RS-23200', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(236, 'RS-30030', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(237, 'RS-222333', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(238, 'RS-3238202', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(239, 'RS-23387', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(240, 'RS-33034232', '68', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(242, 'RS-32966230', '68', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(243, 'RS-3992220', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(244, 'RS-02330', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(245, 'RS-229522', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(246, 'RS-33025', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(247, 'RS-222370', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(248, 'RS-0303300', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(249, 'RS-3330303', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(250, 'RS-30223', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(251, 'RS-37232303', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(252, 'RS-3303762', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(253, 'RS-0303332', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(254, 'RS-002533', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(255, 'RS-580403', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(256, 'RS-3027230', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(257, 'RS-40762002', '64', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Jairo Brenes', '', 'Cortes ', ''),
(258, 'RS-223329', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(259, 'RS-020233', '68', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(260, 'RS-226028', '68', '1', '', '04/28/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(261, 'RS-3533638', '65', '1', '', '04/28/18', '', '5000', '5000', '', '0', 'Corte de Barba', 'Jairo Brenes', '', 'Barbas ', ''),
(262, 'RS-3533638', '66', '1', '', '04/28/18', '', '3000', '3000', '', '0', 'Marcado de Cejas', 'Ernesto Cruz', '', '', ''),
(273, 'RS-306200', '68', '1', '', '04/30/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(274, 'RS-42062302', '68', '1', '', '04/30/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', ''),
(275, 'RS-263303', '68', '1', '', '04/30/18', '', '10000', '10000', '', '0', 'Corte de Cabello', 'Ricardo Lavolpe', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales_order`
--

CREATE TABLE `sales_order` (
  `transaction_id` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `cashier` varchar(50) NOT NULL,
  `product` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `profit` varchar(100) NOT NULL,
  `due_date` varchar(100) NOT NULL,
  `product_code` varchar(150) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `gen_name` varchar(200) NOT NULL,
  `cust_name` varchar(150) NOT NULL,
  `name` varchar(200) NOT NULL,
  `price` varchar(100) NOT NULL,
  `discount` varchar(100) NOT NULL,
  `date` varchar(500) NOT NULL,
  `BarberCard` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_order`
--

INSERT INTO `sales_order` (`transaction_id`, `invoice`, `cashier`, `product`, `qty`, `amount`, `type`, `profit`, `due_date`, `product_code`, `supplier`, `gen_name`, `cust_name`, `name`, `price`, `discount`, `date`, `BarberCard`) VALUES
(315, 'RS-32285029', '', '58', '1', '4000', '', '0', '', 'Corte de Pelo', '', 'Corte', '', ' Corte de Pelo', '4000', '', '04/03/18', ''),
(316, 'RS-32285029', '', '58', '1', '4000', '', '0', '', 'Corte de Pelo', '', 'Corte', '', ' Corte de Pelo', '4000', '', '04/03/18', ''),
(317, 'RS-60296232', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(318, 'RS-60296232', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(319, 'RS-60296232', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(320, 'RS-820242', '', '58', '1', '4000', '', '0', '', 'Corte de Pelo', '', 'Corte', '', ' Corte de Pelo', '4000', '', '04/03/18', ''),
(321, 'RS-820242', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(322, 'RS-820242', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(323, 'RS-820242', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(324, 'RS-820242', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(325, 'RS-3338032', '', '58', '1', '4000', '', '0', '', 'Corte de Pelo', '', 'Corte', '', ' Corte de Pelo', '4000', '', '04/03/18', ''),
(326, 'RS-3338032', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(327, 'RS-3338032', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(328, 'RS-3338032', '', '59', '1', '4000', '', '0', '', 'Barba', '', 'Diego Espinoza', '', ' Barber ', '4000', '', '04/03/18', ''),
(329, 'RS-0302209', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon ', '4000', '', '04/22/18', ''),
(330, 'RS-3232827', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon ', '4000', '', '04/22/18', ''),
(331, 'RS-030700', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon  ', '4000', '', '04/22/18', ''),
(332, 'RS-030700', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon  ', '4000', '', '04/22/18', ''),
(333, 'RS-0522422', '', '61', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Barba', '', ' Cortes', '5000', '', '04/22/18', ''),
(334, 'RS-222030', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon  ', '4000', '', '04/22/18', ''),
(335, 'RS-222030', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon  ', '4000', '', '04/22/18', ''),
(336, 'RS-2325202', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon  ', '4000', '', '04/22/18', ''),
(337, 'RS-2325202', '', '61', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Barba', '', ' Cortes', '5000', '', '04/22/18', ''),
(338, 'RS-38032302', '', '60', '1', '4000', '', '0', '', 'Corte de Cabello', '', 'Corte', '', 'Salon  ', '4000', '', '04/23/18', ''),
(339, 'RS-23023', '', '61', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Barba', '', ' Cortes', '5000', '', '04/23/18', ''),
(340, 'RS-79733', '', '61', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', ' Cortes ', '5000', '', '04/23/18', ''),
(341, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/23/18', ''),
(342, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/23/18', ''),
(343, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Miguel Brenes', '', 'Arreglo Sarten', '10000', '', '04/23/18', ''),
(344, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'David Brenes', '', 'Dejar a Marleny', '10000', '', '04/23/18', ''),
(345, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Cindy Brenes', '', 'Cuidar los Niños', '10000', '', '04/23/18', ''),
(346, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Nancy Brenes', '', 'Ir a la Quimio', '10000', '', '04/23/18', ''),
(347, 'RS-5320023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Josue Brenes', '', 'Uberear', '10000', '', '04/23/18', ''),
(348, 'RS-06270022', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(349, 'RS-04222033', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/25/18', ''),
(350, 'RS-303532', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/25/18', ''),
(351, 'RS-270036', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/25/18', ''),
(352, 'RS-23330', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(353, 'RS-23330', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/25/18', ''),
(354, 'RS-0443849', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(355, 'RS-0443849', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/25/18', ''),
(356, 'RS-323020', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(358, 'RS-532407', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Josue Brenes', '', 'Uberear', '10000', '', '2018-04-25', ''),
(359, 'RS-220202', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(360, 'RS-6322233', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(361, 'RS-7982982', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(362, 'RS-3932232', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(363, 'RS-033290', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(364, 'RS-050023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(365, 'RS-830060', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/25/18', ''),
(366, 'RS-53333300', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(367, 'RS-23203222', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(368, 'RS-02330', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(369, 'RS-342940', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(370, 'RS-273034', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/25/18', ''),
(371, 'RS-222640', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(372, 'RS-3003233', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(373, 'RS-2230200', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(375, 'RS-32336820', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(376, 'RS-32336820', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(377, 'RS-9362', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(378, 'RS-9362', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(379, 'RS-392320', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(380, 'RS-392320', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(381, 'RS-62383620', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(382, 'RS-62383620', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(383, 'RS-22232623', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(384, 'RS-2333206', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(385, 'RS-30232022', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(386, 'RS-22030320', '', '64', '3', '30000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(387, 'RS-03002200', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(388, 'RS-03002200', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(389, 'RS-05505639', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(390, 'RS-05505639', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(391, 'RS-73258', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(392, 'RS-73258', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(393, 'RS-233333', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/26/18', ''),
(394, 'RS-233333', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/26/18', ''),
(395, 'RS-26237302', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(396, 'RS-26237302', '', '66', '1', '3000', '', '0', '', 'Marcado de Cejas', 'Ernesto Cruz', '', '', '', '3000', '', '04/26/18', ''),
(397, 'RS-9040023', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', 'Jairo Brenes', '', '', 'Cortes ', '10000', '', '04/26/18', ''),
(398, 'RS-9040023', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(399, 'RS-9040023', 'Admin', '', '', '15000', 'cash', '0', '20000', '', '<br />\r\n<b>Notice</b>:  Undefined index: supplier in <b>C:\\xampp\\htdocs\\pos\\main\\checkout.php</b> on', '', 'Jonathan ruiz', '', '', '', '04/26/18', ''),
(400, 'RS-250353', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', 'Jairo Brenes', '', '', 'Cortes ', '10000', '', '04/26/18', ''),
(401, 'RS-250353', '', '65', '2', '10000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(402, 'RS-32228363', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(403, 'RS-32228363', '', '65', '2', '10000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(404, 'RS-3866033', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', 'Jairo Brenes', '', '', 'Cortes ', '10000', '', '04/26/18', ''),
(405, 'RS-3866033', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(406, 'RS-3208002', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', 'Jairo Brenes', '', '', 'Cortes ', '10000', '', '04/26/18', ''),
(407, 'RS-3208002', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', 'Jairo Brenes', '', '', 'Barbas ', '5000', '', '04/26/18', ''),
(408, 'RS-32320', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', 'Jairo Brenes', '', '', 'Cortes ', '10000', '', '04/26/18', ''),
(409, 'RS-02332', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', 'Jairo Brenes', '', '', 'Cortes ', '10000', '', '04/26/18', ''),
(410, 'RS-02332', 'Admin', '', '', '10000', 'cash', '0', '10000', '', '<br />\r\n<b>Notice</b>:  Undefined index: supplier in <b>C:\\xampp\\htdocs\\pos\\main\\checkout.php</b> on', '', 'Azul Valeska', '', '', '', '04/26/18', ''),
(421, 'RS-233238', 'Admin', '', '', '10000', 'cash', '0', '10000', '', '<br />\r\n<b>Notice</b>:  Undefined index: supplier in <b>C:\\xampp\\htdocs\\pos\\main\\checkout.php</b> on', '', 'Lucrecia Venta Prueba', '', '', '', '04/28/18', ''),
(422, 'RS-6353302', 'Admin', '', '', '5000', 'cash', '0', '5000', '', '<br />\r\n<b>Notice</b>:  Undefined index: supplier in <b>C:\\xampp\\htdocs\\pos\\main\\checkout.php</b> on', '', 'Me Llamo Jairo', '', '', '', '04/28/18', ''),
(423, 'RS-3838360', 'Admin', '', '', '10000', 'cash', '0', '10000', '', '<br />\r\n<b>Notice</b>:  Undefined index: supplier in <b>C:\\xampp\\htdocs\\pos\\main\\checkout.php</b> on', '', 'gfsdgfsdg', '', '', '', '04/27/18', ''),
(424, 'RS-73430230', 'Admin', '', '', '15000', 'cash', '0 ', '20000', '', 'Jairo Brenes ', '', 'Davile Brenes', '', '', '', '04/27/18', ''),
(425, 'RS-7020220', 'Admin', '', '', '10000', 'cash', '0 ', '10000', '', 'Jairo Brenes ', '', 'Samuel Etoo', '', '', '', '04/27/18', ''),
(426, 'RS-3724324', 'Admin', '', '', '10000', 'cash', '0 ', '10000', 'Corte de Cabello', 'Jairo Brenes  ', '', 'Kennier Trejos', '', '', '', '04/27/18', ''),
(427, 'RS-8543302', '', '64', '1', '10000', '', '0', '', 'Corte de Cabello', '', 'Jairo Brenes', '', 'Cortes ', '10000', '', '04/28/18', ''),
(428, 'RS-8543302', '', '65', '1', '5000', '', '0', '', 'Corte de Barba', '', 'Giovanny', '', 'Barbas ', '5000', '', '04/28/18', ''),
(429, 'RS-233335', 'Admin', '', '', '5000', 'cash', '0 ', '55000', 'Corte de Barba', 'Jairo Brenes  ', '', 'Rogelio Ramos', '', '', '', '04/28/18', ''),
(430, 'RS-3523022', 'Admin', '', '', '10000', 'cash', '0 ', '15000', 'Corte de Cabello', 'Ricardo Lavolpe  ', '', 'Thor Ragnarok', '', '', '', '04/28/18', ''),
(431, 'RS-23243805', 'Admin', '', '', '15000', 'cash', '0 ', '20000', 'Corte de Barba', 'Jairo Brenes  ', '', 'VentaCon Dos Productos', '', '', '', '04/28/18', ''),
(432, 'RS-527034', 'Admin', '', '', '13000', 'cash', '0 ', '15000', 'Marcado de Cejas', 'Ernesto Cruz  ', '', 'VentaConDosBarberos', '', '', '', '04/28/18', ''),
(433, 'RS-72293233', 'Admin', '', '', '23000', 'cash', '0 ', '25000', 'Corte de Cabello', 'Ricardo Lavolpe  ', '', 'ClienteImportante 3 Barberos', '', '', '', '04/28/18', ''),
(434, 'RS-275002', 'Admin', '', '', '6000', 'cash', '0 ', '10000', 'Shampoo', '  ', '', 'SoloCompraShampoo', '', '', '', '04/28/18', ''),
(435, 'RS-32966230', 'Admin', '', '', '10000', 'M', '0 ', '15000', 'Corte de Cabello', 'Ricardo Lavolpe  ', '', 'Jorge Luis Pinto', '', '', '', '04/28/18', ''),
(436, 'RS-3992220', 'Admin', '', '', '3000', 'Tarjeta', '0 ', '40000', 'Marcado de Cejas', 'Ernesto Cruz  ', '', 'Mr Rasta', '', '', '', '04/28/18', ''),
(437, 'RS-37232303', 'Admin', '', '', '5000', 'Efectivo', '0 ', '5000', 'Corte de Barba', 'Jairo Brenes  ', '', 'duele mucho', '', '', '', '04/28/18', ''),
(438, 'RS-3303762', 'Admin', '', '', '5000', 'Efectivo', '0 ', '45000', 'Corte de Barba', 'Jairo Brenes  ', '', 'Prueba', '', '', '', '04/28/18', ''),
(439, 'RS-0303332', 'Admin', '', '', '3000', 'Tarjeta', '0 ', '3000', 'Marcado de Cejas', 'Ernesto Cruz  ', '', 'Tarjeta', '', '', '', '04/28/18', ''),
(440, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Hola'),
(441, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5000'),
(442, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2865'),
(443, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9550'),
(444, 'RS-223329', 'Admin', '', '', '5000', 'Efectivo', '0 ', '10000', '', 'Jairo Brenes  ', '', 'SinRebajo', '', '', '', '04/28/18', '5000'),
(445, 'RS-020233', 'Admin', '', '', '10000', 'Efectivo', '0 ', '10000', '', 'Ricardo Lavolpe  ', '', 'PagoEfectivo', '', '', '', '04/28/18', '10000'),
(446, 'RS-226028', 'Admin', '', '', '10000', 'Tarjeta', '0 ', '10000', '', 'Ricardo Lavolpe  ', '', 'Pago tarjeta', '', '', '', '04/28/18', '9550'),
(447, 'RS-3533638', 'Admin', '', '', '8000', 'Tarjeta', '0 ', '10000', '', 'Ernesto Cruz  ', '', 'Diego Espinoza', '', '', '', '04/28/18', '7640'),
(448, 'RS-932022', 'Admin', '', '', '10000', 'Efectivo', '0 ', '10000', '', 'Jairo Brenes  ', '', 'Priscilla Cuadra', '', '', '', '04/30/18', '10000'),
(449, 'RS-222035', 'Admin', '', '', '10000', 'Tarjeta', '0 ', '10000', '', 'Jairo Brenes  ', '', 'Hugo Marroquin', '', '', '', '04/30/18', '9550'),
(455, 'RS-306200', 'Admin', '', '', '10000', 'Efectivo', '0 ', '10000', '', 'Ricardo Lavolpe  ', '', 'Ricardo Lavolpe', '', '', '', '04/30/18', '5000'),
(456, 'RS-42062302', 'Admin', '', '', '10000', 'Efectivo', '0 ', '10000', '', 'Ricardo Lavolpe  ', '', 'sdfsdfsd', '', '', '', '04/30/18', '5000'),
(457, 'RS-263303', 'Admin', '', '', '10000', 'Tarjeta', '0 ', '10000', '', 'Ricardo Lavolpe  ', '', 'Orlando de Leon', '', '', '', '04/30/18', '4550');

-- --------------------------------------------------------

--
-- Table structure for table `supliers`
--

CREATE TABLE `supliers` (
  `suplier_id` int(11) NOT NULL,
  `suplier_name` varchar(100) NOT NULL,
  `suplier_address` varchar(100) NOT NULL,
  `suplier_contact` varchar(100) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `note` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supliers`
--

INSERT INTO `supliers` (`suplier_id`, `suplier_name`, `suplier_address`, `suplier_contact`, `contact_person`, `note`) VALUES
(3, 'Jairo Brenes', 'Coronado', 'brenes.jairo@hotmail.com', '83409368', 'Es muy guapo'),
(5, 'Ernesto Cruz', '7685815', 'Siquirres', 'ernesto@hotmail.com', 'Nuevo Barbero'),
(6, 'Juan Carlos Guzman', '89567845', 'San Antonio Coronado', 'jc@gmail.com', 'Pastor Evangelico'),
(7, 'Ricardo Lavolpe', '83409368', 'Coronado', 'brenes.jairo@hotmail.com', 'Buen Barbero, Buenos Cortes'),
(9, 'Yatnnael Restrepo', '78956589', 'Curridabat', 'yatnnael@barber.com', 'Feillo'),
(10, 'Anthony Castellon', '75894565', 'Coronado', 'tony@feo.com', 'Horrible');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `position`) VALUES
(1, 'admin', 'admin', 'Admin', 'admin'),
(2, 'cashier', 'cashier', 'Cashier Pharmacy', 'Cashier'),
(3, 'admin', 'admin123', 'Administrator', 'admin'),
(4, 'diego', 'DiegoAdmin', 'Diego Espinoza', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `purchases_item`
--
ALTER TABLE `purchases_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `sales_order`
--
ALTER TABLE `sales_order`
  ADD PRIMARY KEY (`transaction_id`);

--
-- Indexes for table `supliers`
--
ALTER TABLE `supliers`
  ADD PRIMARY KEY (`suplier_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citas`
--
ALTER TABLE `citas`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `collection`
--
ALTER TABLE `collection`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases_item`
--
ALTER TABLE `purchases_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `sales_order`
--
ALTER TABLE `sales_order`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=458;

--
-- AUTO_INCREMENT for table `supliers`
--
ALTER TABLE `supliers`
  MODIFY `suplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
