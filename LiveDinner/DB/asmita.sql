-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2023 at 04:42 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asmita`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`) VALUES
(1, 'Soups'),
(2, 'Starters'),
(4, 'Main Dish'),
(6, 'Side Dish'),
(7, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `customerName` varchar(30) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `rating` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `customerName`, `feedback`, `rating`, `date`) VALUES
(1, 'Asmita', 'Nice', 3, '2023-09-16 15:50:37');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `itemName` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `categoryId`, `itemName`, `price`, `description`, `image`) VALUES
(13, 4, 'Biriyani', 300, 'Biryani is a mixed rice dish . It is made with spices, vegetables, rice, and usually some type of meat.', 'Items/biriyani.jpeg'),
(14, 1, 'Sweet Corn Soup', 120, 'Sweet corn soup is made with tender corn kernels, spices and herbs.', 'Items/sweetcorn.webp'),
(15, 6, 'Chilli Chicken', 150, 'Chilli chicken is a sweet, spicy & slightly sour crispy appetizer made with chicken, bell peppers, garlic, chilli sauce & soya sauce. ', 'Items/chillichicken.jpg'),
(16, 7, 'Tutti Frutti', 150, 'Tutti Frutti Ice cream is a soft and fluffy treat that has chewy and sweet bites of tutti frutti in it. Tutti frutti are basically candied fruits.', 'Items/Tutti-fruity-ice-cream.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`CategoryId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
