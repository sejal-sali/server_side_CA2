-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2023 at 01:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `productnm` varchar(150) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cid`, `name`, `email`, `productnm`, `mobile`, `city`, `country`) VALUES
(1, 'Vinod', 'vinod.phoenix@gmail.com', 'Asus Laptopn', '9823145212', 'Nasik', 'India'),
(4, 'Vikas', 'vikas123@gmail.com', 'Macslim', '9123132211', 'Mumbai', 'India'),
(5, 'Sejal', 'sejal11@gmail.com', 'Macbook', '98212344221', 'Nasik', 'India'),
(6, 'sejal sali', 'sejalsali070402@gmail.com', 'need help ', '08010545002', 'nashik', 'India');

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(11) NOT NULL,
  `model` varchar(50) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `memory` varchar(50) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `screen_size` decimal(3,1) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `model`, `processor`, `memory`, `storage`, `screen_size`, `price`, `quantity`, `description`, `image_url`) VALUES
(1, 'MacBook Air', 'Apple M1 chip', '8GB unified memory', '256GB SSD', '13.3', '999.00', 5, 'The MacBook Air with Apple M1 chip is a thin and light laptop with a long battery life.', 'https://images-na.ssl-images-amazon.com/images/I/71TPda7cwUL._AC_SL1500_.jpg'),
(2, 'MacBook Pro', 'Apple M1 chip', '8GB unified memory', '256GB SSD', '13.3', '1299.00', 6, 'The MacBook Pro with Apple M1 chip is a powerful laptop with a stunning Retina display and long battery life.', 'https://images-na.ssl-images-amazon.com/images/I/71an9eiBxpL._AC_SL1500_.jpg'),
(3, 'XPS 13', 'Intel Core i7-1165G7', '16GB LPDDR4X', '512GB SSD', '13.4', '1399.00', 10, 'The Dell XPS 13 is a powerful and compact laptop that is great for both work and play.', 'https://dlcdnwebimgs.asus.com/gain/bb59f0d4-ce53-4b45-bc4a-10ff76c8fac4/w800'),
(4, 'ThinkPad X1 Carbon', 'Intel Core i7-1165G7', '16GB LPDDR4X', '512GB SSD', '14.0', '1799.00', 7, 'The Lenovo ThinkPad X1 Carbon is a business-class laptop with a durable design and long battery life.', 'https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/dell-client-products/notebooks/latitude-notebooks/14-9430/spi/non-touch/ng/notebook-latitude-14-9430-gray-800x550.png?fmt=png-alpha&wid=800&hei=550&scl=0.8&extend=0,0,0,30'),
(5, 'Pavilion Gaming', 'Intel Core i7-10750H', '16GB DDR4', '512GB SSD', '15.6', '1199.00', 4, 'The HP Pavilion Gaming is a high-performance laptop with a dedicated NVIDIA GeForce GTX 1650 graphics card and a fast refresh rate display.', 'https://i.dell.com/is/image/DellContent/content/dam/ss2/page-specific/dell-homepage/pt-br/other/in5320nt-cnb-05000ff090-gy-fpr-cat-compare.png?$S7-png$&wid=800&hei=550&qlt=100,0&resMode=sharp2'),
(6, 'MacBook Pro', 'Apple M1 chip', '16GB unified memory', '512GB SSD', '16.0', '1999.00', 3, 'The MacBook Pro with Apple M1 chip is a powerful laptop with a stunning Retina display and long battery life.', 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4LqQX?ver=fe80&q=90&m=6&h=705&w=1253&b=%23FFFFFFFF&f=jpg&o=f&p=140&aim=true'),
(7, 'XPS 15', 'Intel Core i7-11800H', '16GB DDR4', '1TB SSD', '15.6', '1899.00', 8, 'The Dell XPS 15 is a premium laptop with a gorgeous 4K OLED display and powerful performance.', 'https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE4LJbI?ver=20c5&q=90&m=6&h=705&w=1253&b=%23FFFFFFFF&f=jpg&o=f&p=140&aim=true'),
(8, 'IdeaPad Slim 7', 'AMD Ryzen 7 5800U', '16GB DDR4', '1TB SSD', '14.0', '1199.99', 12, 'The Lenovo IdeaPad Slim 7 is a slim and stylish laptop with fast performance and long battery life.', 'https://90a1c75758623581b3f8-5c119c3de181c9857fcb2784776b17ef.ssl.cf2.rackcdn.com/648875_395624_01_front_zoom.jpg'),
(9, 'Spectre x360', 'Intel Core i7-1165G7', '16GB LPDDR4', '1TB SSD', '13.3', '1499.99', 6, 'The HP Spectre x360 is a 2-in-1 laptop with a gorgeous 4K OLED display and a versatile design.', 'https://cdn.shopify.com/s/files/1/0515/8525/3560/products/GQDodd6XiUiY3tviYddUOw.c-r_800x.jpg?v=1674206501');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `mobile`) VALUES
(1, 'Vinod', 'vinod.phoenix@gmail.com', 'v123', '9823163111'),
(2, 'Vinod', 'vinod.phoenix@gmail.com', 'v123', '9823163111'),
(3, 'Sejal Sali', 'sejal123@gmail.com', 's123', '9823256333'),
(4, 'ak ', 'ak123@hotmail.com', '1234', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
