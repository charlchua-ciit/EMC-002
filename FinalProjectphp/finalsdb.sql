-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2024 at 06:24 AM
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
-- Database: `finalsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(1, 'Home Consoles'),
(2, 'Handheld Consoles'),
(3, 'Peripherals'),
(4, 'Games');

-- --------------------------------------------------------

--
-- Table structure for table `customer_support`
--

CREATE TABLE `customer_support` (
  `ticket_id` int(255) NOT NULL,
  `issue` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `user_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_support`
--

INSERT INTO `customer_support` (`ticket_id`, `issue`, `details`, `user_id`) VALUES
(2, 'safd', '', 6),
(3, 'safd', '', 6),
(4, 'safd', '', 6),
(5, 'afadga', '', 6),
(6, 'asfgadg', 'fsdhdgjhgfjfjfdhjkfk', 6),
(7, 'No Issue', 'Testing the issue function', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `item_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `item_id`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `item_id` int(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `item_img` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`item_id`, `itemname`, `description`, `price`, `item_img`, `category_id`) VALUES
(1, 'Nintendo Entertainment System', '8-bit home video game console produced by Nintendo, the NES is one of the best-selling consoles of its time.', 100, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/NES-Console-Set.png/1920px-NES-Console-Set.png', 1),
(2, 'Super Nintendo Entertainment System', 'Nintendo\'s second programmable home console, following the NES, the SNES has advanced graphics and sound capabilities.', 110, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/SNES-Mod1-Console-Set.png/1280px-SNES-Mod1-Console-Set.png', 1),
(3, 'Nintendo 64', 'The successor to the Super Nintendo Entertainment System, the N64 is named after its 64-bit CPU, which aided in the console\'s 3D capabilities.', 120, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/N64-Console-Set.png/1920px-N64-Console-Set.png', 1),
(4, 'Sony Playstation', 'A home video game console developed and marketed by Sony Computer Entertainment, popular for its extensive game library and popular franchises. Referred to as the PSX or the PS1 by the masses.', 120, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/PlayStation-SCPH-1000-with-Controller.jpg/1920px-PlayStation-SCPH-1000-with-Controller.jpg', 1),
(5, 'Sony Playstation 2', 'The successor to the original PlayStation, receiving widespread critical acclaim upon release, the PS2 will not disappoint.', 130, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/PS2-Versions.jpg/1024px-PS2-Versions.jpg', 1),
(6, 'Nintendo Gamecube', 'The successor to the Nintendo 64, home of the illustrious Super Smash Bros. Melee, among many other high quality games', 130, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/GameCube-Console-Set.png/1920px-GameCube-Console-Set.png', 1),
(7, 'XBOX', 'Home video game console manufactured by Microsoft, the first installment in the Xbox series of consoles.', 130, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Xbox-Console-wDuke-L.jpg/1920px-Xbox-Console-wDuke-L.jpg', 1),
(8, 'Game Boy', 'One of the most recognizable devices from the 1990s, becoming a cultural icon in the years following its release.', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Game-Boy-FL.jpg/800px-Game-Boy-FL.jpg', 2),
(9, 'Game Boy Advance', '32-bit handheld game console developed by Nintendo as the successor to the Game Boy, the GBA is notable for hardware performance comparable to the SNES.', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Nintendo-Game-Boy-Advance-Purple-FL.jpg/1280px-Nintendo-Game-Boy-Advance-Purple-FL.jpg', 2),
(10, 'Nintendo DS', 'Foldable handheld game console produced by Nintendo, the best-selling Nintendo system, handheld game console, and the second-best-selling video game console of all time.', 80, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Nintendo-DS-Fat-Blue.jpg/1024px-Nintendo-DS-Fat-Blue.jpg', 2),
(11, 'Playstation Portable', 'The most powerful portable console at the time of its introduction, the PSP was the first viable competitor to Nintendo\'s handheld consoles after many challengers fell short.', 80, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Psp-1000.jpg/1920px-Psp-1000.jpg', 2),
(12, 'NES Controller', 'Controller for Nintendo Entertainment System', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Nintendo-Entertainment-System-NES-Controller-FL.jpg/1280px-Nintendo-Entertainment-System-NES-Controller-FL.jpg', 3),
(13, 'NES Zapper', 'Special light gun controller, for use in NES games like Duck Hunt', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Nintendo-Entertainment-System-NES-Zapper-Gray-L.jpg/1920px-Nintendo-Entertainment-System-NES-Zapper-Gray-L.jpg', 3),
(14, 'SNES Controller', 'Controller for the Super Nintendo Entertainment System', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Super-Famicom-Controller.jpg/1280px-Super-Famicom-Controller.jpg', 3),
(15, 'PSX Controller', 'Controller for the Playstation 1', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/PSX-Original-Controller.jpg/1024px-PSX-Original-Controller.jpg', 3),
(16, 'N64 Controller', 'Controller for the Nintendo 64', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/N64-Controller-Gray.jpg/1280px-N64-Controller-Gray.jpg', 3),
(17, 'Dualshock', 'Dual Analog controller for the PSX', 60, 'https://upload.wikimedia.org/wikipedia/commons/c/c2/DualShock.png', 3),
(18, 'Dualshock 2', 'Dual Analog controller for the Playstation 2', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/DualShock_2.jpg/1280px-DualShock_2.jpg', 3),
(19, 'Gamecube Controller', 'Dual Analog controller for the Nintendo Gamecube', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/GameCube_controller.png/1280px-GameCube_controller.png', 3),
(20, 'XBOX S Controller', 'Dual Analog controller for the XBOX', 60, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Xbox-s-controller.jpg/1024px-Xbox-s-controller.jpg', 3),
(21, 'NES Game', 'Game for NES', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/NES-Console-Set.png/1920px-NES-Console-Set.png', 4),
(22, 'SNES Game', 'Game for SNES', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/SNES-Mod1-Console-Set.png/1280px-SNES-Mod1-Console-Set.png', 4),
(23, 'Nintendo 64 Game', 'Game for N64', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/N64-Console-Set.png/1920px-N64-Console-Set.png', 4),
(24, 'PSX Game', 'Game for the Playstation 1', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/PlayStation-SCPH-1000-with-Controller.jpg/1920px-PlayStation-SCPH-1000-with-Controller.jpg', 4),
(25, 'PS2 Game', 'Game for the PS2', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/PS2-Versions.jpg/1024px-PS2-Versions.jpg', 4),
(26, 'Gamecube Game', 'Game for the Gamecube', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/GameCube-Console-Set.png/1920px-GameCube-Console-Set.png', 4),
(27, 'XBOX Game', 'Game for the XBOX', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Xbox-Console-wDuke-L.jpg/1920px-Xbox-Console-wDuke-L.jpg', 4),
(28, 'Game Boy Game', 'Game for the GB', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Game-Boy-FL.jpg/800px-Game-Boy-FL.jpg', 4),
(29, 'Game Boy Advance Game', 'Game for the GBA', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Nintendo-Game-Boy-Advance-Purple-FL.jpg/1280px-Nintendo-Game-Boy-Advance-Purple-FL.jpg', 4),
(30, 'Nintendo DS Game', 'Game for the NDS', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Nintendo-DS-Fat-Blue.jpg/1024px-Nintendo-DS-Fat-Blue.jpg', 4),
(31, 'Playstation Portable Game', 'Game for the PSP', 30, 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Psp-1000.jpg/1920px-Psp-1000.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `user`, `email`, `pass`) VALUES
(3, 'charl1', 'charldaniel.chua@gmail.com', '$2y$10$of/dsa7xyhXEDc6IgmHMDexYiO6OJL/3yIivuwRzuHXNbPoHXLZJm'),
(6, 'UserName123', 'email@email.com', '$2y$10$LbKkZQhoNimPH3AlrrzQRuFaHgglUMKF06Exb5.8TiB7Y/RE1Jip2'),
(9, 'UserName1233', 'email2@email.com', '$2y$10$eHAPPXYLYsSjNSvyagyN/uGtsavx53dwHnQv7M0tO/kWuP6gwLTym');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `customer_support`
--
ALTER TABLE `customer_support`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer_support`
--
ALTER TABLE `customer_support`
  MODIFY `ticket_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_support`
--
ALTER TABLE `customer_support`
  ADD CONSTRAINT `customer_support_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `products` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
