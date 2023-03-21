-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 08:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projet_java`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_customer`
--

CREATE TABLE `tb_customer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_customer`
--

INSERT INTO `tb_customer` (`id_customer`, `name`, `phone`, `address`, `city`) VALUES
(1, 'nary', 342123073, 'Lot IAV 244 Iavoloha', 'Antananarivo'),
(2, 'soaBe', 324232343, 'II Bis Tanjombato', 'Antananarivo'),
(5, 'rakoto', 345567899, 'II Bis Tana', 'Antananarivo'),
(6, 'Vao', 345678987, 'Lot II Tanjombato', 'Antananarivo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_reservation`
--

CREATE TABLE `tb_reservation` (
  `id_customer` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `heure_out` time NOT NULL,
  `dateRes` date NOT NULL,
  `time_entry` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_reservation`
--

INSERT INTO `tb_reservation` (`id_customer`, `id_room`, `heure_out`, `dateRes`, `time_entry`) VALUES
(1, 1, '09:59:52', '2023-03-06', '16:59:52'),
(2, 3, '09:08:22', '2023-03-15', '10:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `tb_room`
--

CREATE TABLE `tb_room` (
  `id_room` int(11) NOT NULL,
  `prices` int(50) NOT NULL,
  `room_type` varchar(30) NOT NULL,
  `room_about` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_room`
--

INSERT INTO `tb_room` (`id_room`, `prices`, `room_type`, `room_about`) VALUES
(1, 300000, 'Classic', 'Room for 1 person'),
(3, 500000, 'Premium', 'Room for 2 Person');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `name`, `username`, `email`, `password`) VALUES
(1, 'Mavita', 'soa', 'soa@gmail.com', '[C@67b04e55'),
(2, 'Manana', 'naivo', 'naivo@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `tb_reservation`
--
ALTER TABLE `tb_reservation`
  ADD PRIMARY KEY (`id_customer`,`id_room`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `tb_room`
--
ALTER TABLE `tb_room`
  ADD PRIMARY KEY (`id_room`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_room`
--
ALTER TABLE `tb_room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
