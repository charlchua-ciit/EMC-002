-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 08:18 AM
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
-- Database: `myonline_store`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `item_id` int(255) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `item_img` varchar(255) NOT NULL,
  `category_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(11, 'Playstation Portable', 'The most powerful portable console at the time of its introduction, and the first viable competitor to Nintendo\'s handheld consoles after many challengers fell short.', '$18.00', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Psp-1000.jpg/1920px-Psp-1000.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `mobile` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `username`, `password`, `firstname`, `lastname`, `mobile`, `address`, `email`) VALUES
(1, 'a', 'afa', 'sdgsg', 'sdgs', 0, 'sfg', 'dsg'),
(2, 'aGDHS', 'ADSFGSDGHD', 'sdgsgFSDG', 'sdgsSFDG', 0, 'sfgSFG', 'dsgSgDF');

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
  MODIFY `item_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
