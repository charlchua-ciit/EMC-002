-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2024 at 08:17 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

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
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `order_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `item_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `item_id` int(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `item_img` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`item_id`, `itemname`, `description`, `price`, `item_img`, `category_id`) VALUES
(1, 'Nintendo Entertainment System', '8-bit home video game console produced by Nintendo, one of the best-selling consoles of its time.', '$80.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/NES-Console-Set.png/1920px-NES-Console-Set.png', 1),
(2, 'Super Nintendo Entertainment System', 'Nintendo\'s second programmable home console, following the NES, with advanced graphics and sound capabilities.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/SNES-Mod1-Console-Set.png/1280px-SNES-Mod1-Console-Set.png', 1),
(3, 'Nintendo 64', 'The successor to the Super Nintendo Entertainment System, named after its 64-bit CPU, which aided in the console\'s 3D capabilities.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/N64-Console-Set.png/1920px-N64-Console-Set.png', 1),
(4, 'Sony Playstation', 'A home video game console developed and marketed by Sony Computer Entertainment, popular for its extensive game library and popular franchises.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/PlayStation-SCPH-1000-with-Controller.jpg/1920px-PlayStation-SCPH-1000-with-Controller.jpg', 1),
(5, 'Sony Playstation 2', 'The successor to the original PlayStation, receiving widespread critical acclaim upon release.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/PS2-Versions.jpg/1024px-PS2-Versions.jpg', 1),
(6, 'Nintendo Gamecube', 'The successor to the Nintendo 64, home of the illustrious Super Smash Bros. Melee, among many other high quality games', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/GameCube-Console-Set.png/1920px-GameCube-Console-Set.png', 1),
(7, 'XBOX', 'Home video game console manufactured by Microsoft, the first installment in the Xbox series of consoles.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Xbox-Console-wDuke-L.jpg/1920px-Xbox-Console-wDuke-L.jpg', 1),
(8, 'Game Boy', 'One of the most recognizable devices from the 1990s, becoming a cultural icon in the years following its release.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Game-Boy-FL.jpg/800px-Game-Boy-FL.jpg', 2),
(9, 'Game Boy Advance', '32-bit handheld game console developed by Nintendo as the successor to the Game Boy, with hardware performance comparable to the SNES.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Nintendo-Game-Boy-Advance-Purple-FL.jpg/1280px-Nintendo-Game-Boy-Advance-Purple-FL.jpg', 2),
(10, 'Nintendo DS', 'Foldable handheld game console produced by Nintendo, the best-selling Nintendo system, handheld game console, and the second-best-selling video game console of all time.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Nintendo-DS-Fat-Blue.jpg/1024px-Nintendo-DS-Fat-Blue.jpg', 2),
(11, 'Playstation Portable', 'The most powerful portable console at the time of its introduction, and the first viable competitor to Nintendo\'s handheld consoles after many challengers fell short.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Psp-1000.jpg/1920px-Psp-1000.jpg', 2),
(12, 'NES Controller', 'Controller for Nintendo Entertainment System', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/Nintendo-Entertainment-System-NES-Controller-FL.jpg/1280px-Nintendo-Entertainment-System-NES-Controller-FL.jpg', 3),
(13, 'NES Zapper', 'Special light gun controller, for use in NES games like Duck Hunt', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2e/Nintendo-Entertainment-System-NES-Zapper-Gray-L.jpg/1920px-Nintendo-Entertainment-System-NES-Zapper-Gray-L.jpg', 3),
(14, 'SNES Controller', 'Controller for the Super Nintendo Entertainment System', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Super-Famicom-Controller.jpg/1280px-Super-Famicom-Controller.jpg', 3),
(15, 'PSX Controller', 'Controller for the Playstation 1', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f9/PSX-Original-Controller.jpg/1024px-PSX-Original-Controller.jpg', 3),
(16, 'N64 Controller', 'Controller for the Nintendo 64', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/N64-Controller-Gray.jpg/1280px-N64-Controller-Gray.jpg', 3),
(17, 'Dualshock', 'Dual Analog controller for the PSX', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/DualShock.png', 3),
(18, 'Dualshock 2', 'Dual Analog controller for the Playstation 2', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/DualShock_2.jpg/1280px-DualShock_2.jpg', 3),
(19, 'Gamecube Controller', 'Dual Analog controller for the Nintendo Gamecube', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/GameCube_controller.png/1280px-GameCube_controller.png', 3),
(20, 'XBOX S Controller', 'Dual Analog controller for the XBOX', '$40.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Xbox-s-controller.jpg/1024px-Xbox-s-controller.jpg', 3),
(21, 'NES Game', 'Game for NES', '$80.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/NES-Console-Set.png/1920px-NES-Console-Set.png', 4),
(22, 'SNES Game', 'Game for SNES', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/36/SNES-Mod1-Console-Set.png/1280px-SNES-Mod1-Console-Set.png', 4),
(23, 'Nintendo 64 Game', 'Game for N64', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/N64-Console-Set.png/1920px-N64-Console-Set.png', 4),
(24, 'PSX Game', 'Game for the Playstation 1', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/60/PlayStation-SCPH-1000-with-Controller.jpg/1920px-PlayStation-SCPH-1000-with-Controller.jpg', 4),
(25, 'PS2 Game', 'Game for the PS2', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/PS2-Versions.jpg/1024px-PS2-Versions.jpg', 4),
(26, 'Gamecube Game', 'Game for the Gamecube', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/GameCube-Console-Set.png/1920px-GameCube-Console-Set.png', 4),
(27, 'XBOX Game', 'Game for the XBOX', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Xbox-Console-wDuke-L.jpg/1920px-Xbox-Console-wDuke-L.jpg', 4),
(28, 'Game Boy Game', 'Game for the GB', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Game-Boy-FL.jpg/800px-Game-Boy-FL.jpg', 4),
(29, 'Game Boy Advance Game', 'Game for the GBA', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7d/Nintendo-Game-Boy-Advance-Purple-FL.jpg/1280px-Nintendo-Game-Boy-Advance-Purple-FL.jpg', 4),
(30, 'Nintendo DS Game', 'Game for the NDS', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Nintendo-DS-Fat-Blue.jpg/1024px-Nintendo-DS-Fat-Blue.jpg', 4),
(31, 'Playstation Portable Game', 'Game for the PSP', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Psp-1000.jpg/1920px-Psp-1000.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `category_id` (`category_id`);

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
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `user_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `profile` (`user_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `products` (`item_id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
