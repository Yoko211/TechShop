-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2023 at 01:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `serverside`
--

-- --------------------------------------------------------

--
-- Table structure for table `ts_category`
--

CREATE TABLE `ts_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_category`
--

INSERT INTO `ts_category` (`id`, `name`) VALUES
(1, 'Processor'),
(2, 'Board');

-- --------------------------------------------------------

--
-- Table structure for table `ts_comment`
--

CREATE TABLE `ts_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ts_product`
--

CREATE TABLE `ts_product` (
  `id` int(11) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `features` text DEFAULT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_product`
--

INSERT INTO `ts_product` (`id`, `manufacturer`, `reference`, `description`, `price`, `image_url`, `features`, `category_id`) VALUES
(1, 'AMD', 'AMD Ryzen™ 9 7950X 16-Cores', 'AMD Ryzen™ 9 7950X 16-Core, 32-Thread Unlocked Desktop Processor, Cooler not Included', 800.00, 'images/amd.jpg', 'The best for creators meets the best for gamers, can deliver ultra-fast 100+ FPS performance in the world&#39;s most popular games\r\n16 Cores and 32 processing threads, based on AMD &#34;Zen 4&#34; architecture\r\n5.7 GHz Max Boost, unlocked for overclocking, 80 MB cache, DDR5-5200 support\r\nFor the state-of-the-art Socket AM5 platform, can support PCIe 5.0 on select 600 Series motherboards\r\nCooler not included, liquid cooler recommended. OS Support : Windows 11 - 64-Bit Edition, Windows 10 - 64-Bit Edition, RHEL x86 64-Bit, Ubuntu x86 64-Bit', 1),
(2, 'AMD', 'Ryzen 7 5700G 8-Core, 16-Thread', 'AMD Ryzen 7 5700G 8-Core, 16-Thread Unlocked Desktop Processor with Radeon Graphics', 250.00, 'images/51D3DAC_SL1000_.jpg', 'Play some of the most popular games at 1080p with the fastest processor graphics in the world, no graphics card required\r\n8 Cores and 16 processing threads, bundled with the AMD Wraith Stealth cooler\r\n4.6 GHz Max Boost, unlocked for overclocking, 20 MB cache, DDR4-3200 support\r\nFor the advanced Socket AM4 platform\r\nPlay some of the most popular games at 1080p with the fastest processor graphics in the world, no graphics card required;\r\n8 Cores and 16 processing threads, bundled with the AMD Wraith Stealth cooler;\r\n4.6 GHz Max Boost, unlocked for overclocking, 20 MB cache, DDR4-3200 support;\r\nFor the advanced Socket AM4 platform. Maximum Operating Temperature (Tjmax)-95°C', 1),
(3, 'AMD', 'Ryzen 5 5500 6-Core, 12-Thread', 'AMD Ryzen 5 5500 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler', 140.00, 'images/sdafe33_.jpg', 'Can deliver fast 100+ FPS performance in the world\'s most popular games, discrete graphics card required\r\n6 Cores and 12 processing threads, bundled with the AMD Wraith Stealth cooler\r\n4.2 GHz Max Boost, unlocked for overclocking, 19 MB cache, DDR4-3200 support\r\nFor the advanced Socket AM4 platform', 1),
(4, 'AMD', 'Ryzen™ 9 7950X 16-Core, 32-Thread', 'AMD Ryzen™ 9 7950X 16-Core, 32-Thread Unlocked Desktop Processor, Cooler not Included', 800.00, 'images/51nBGlyDO_AC_SL1466_.jpg', 'The best for creators meets the best for gamers, can deliver ultra-fast 100+ FPS performance in the world\'s most popular games\r\n16 Cores and 32 processing threads, based on AMD \"Zen 4\" architecture\r\n5.7 GHz Max Boost, unlocked for overclocking, 80 MB cache, DDR5-5200 support\r\nFor the state-of-the-art Socket AM5 platform, can support PCIe 5.0 on select 600 Series motherboards\r\nCooler not included, liquid cooler recommended. OS Support : Windows 11 - 64-Bit Edition, Windows 10 - 64-Bit Edition, RHEL x86 64-Bit, Ubuntu x86 64-Bit', 1),
(5, 'AMD', 'Epyc 9654 Processor 96 Core 2.4GHz 384MB L3 Cache', 'AMD Epyc 9654 Processor 96 Core 2.4GHz 384MB L3 Cache TDP 360W SP5 Socket (4th gen, Genoa) (100-000000789) (OEM Tray Processor)', 10678.00, 'images/41wn6PR2C1L_AC_.jpg', 'Brand	Generic\r\nCPU manufacturer	AMD\r\nCPU speed	2.4 GHz\r\nCPU socket	Socket SP5\r\nSecondary cache	384 MB', 1),
(6, 'AMD', 'RYZEN 5 4600G', 'AMD RYZEN 5 4600G W/Wraith Stealth Cooler', 200.00, 'images/61xqmYOrStLC_SL1000_.jpg', 'Built on industry leading 7nm \"Zen 2\" processor technology, for faster, more efficient processing that runs cool and quiet\r\nWith 6 processing cores and 12 threads, get ultra-fast performance for productivity, content creation, gaming and more\r\nWith built-in AMD Radeon Graphics, get up to 3x faster graphics than the competition for smooth 1080p HD gaming and amazing entertainment', 1),
(7, 'Intel', 'Core i5-12400 Desktop Processor', 'Intel Core i5-12400 Desktop Processor 18M Cache, up to 4.40 GHz', 250.00, 'images/adsfa.jpg', 'Intel Core i5 2.50 GHz processor offers hyper-threading architecture that delivers high performance for demanding applications with improved onboard graphics and turbo boost\r\nThe processor features Socket LGA-1700 socket for installation on the PCB\r\nIts 18 MB of L3 cache is good enough to carry routine data and process them in a flash giving you fast and smooth performance\r\nBuilt-in Intel UHD Graphics 730 controller for improved graphics and visual quality. Supports up to 4 monitors.', 1),
(8, 'Intel', 'Core i7-12700K Desktop Processor 12 (8P+4E) Cores', 'Intel Core i7-12700K Desktop Processor 12 (8P+4E) Cores up to 5.0 GHz Unlocked  LGA1700 600 Series Chipset 125W', 420.00, 'images/51CVLuhri5L_AC_SL1000_.jpg', 'Intel® Core® i7 3.60 GHz processor offers more cache space and the hyper-threading architecture delivers high performance for demanding applications with better onboard graphics and faster turbo boost\r\nThe processor features Socket LGA-1700 socket for installation on the PCB\r\n25 MB of L3 cache to boost the instruction processing and system performance\r\nIntel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient\r\nTo boost graphics and visual quality, the chipset has a built in Intel UHD Graphics controller', 1),
(9, 'Intel', 'Core i9-12900K Desktop Processor 16 (8P+8E) Cores', 'Intel Core i9-12900K Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked LGA1700 600 Series Chipset 125W', 630.00, 'images/61ZRFy6GZ_AC_SL1280_.jpg', 'The processor features Socket LGA-1700 socket for installation on the PCB\r\n30 MB of L3 cache memory provides excellent hit rate in short access time enabling improved system performance\r\n10 nm enables improved performance per watt and micro architecture makes it power-efficient\r\nIntel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient', 1),
(10, 'Intel', 'Core i5-10400F Desktop Processor 6 Cores', ' Intel Core i5-10400F Desktop Processor 6 Cores up to 4.3 GHz Without Processor Graphics LGA1200 (Intel 400 Series chipset) 65W, Model Number: BX8070110400F', 200.00, 'images/61cKmFhEqTAC_SL1500_.jpg', '6 cores / 12 threads\r\nSocket Type LGA 1200\r\nUp to 4.3 GHz\r\nCompatible with Intel 400 series chipset based motherboards\r\nIntel Optane Memory Support\r\nCooler Included', 1),
(11, 'Intel', 'XEON Platinum 8170', 'INTEL - XEON Platinum 8170 Processor 35.75M 2.10', 9587.00, 'images/81TwiU9pQpL_AC_SL1500_.jpg', 'CPU FREQUENCY: 2.10GHZ\r\nCPU MAX TURBO FREQUENCY: 3.70GHZ\r\nMULTI-CORE: 26-CORE\r\nCACHE: 35.75MB L3\r\nTHERMAL DESIGN POWER: 165W', 1),
(12, 'Intel', 'Core i9-13900KS Desktop Processor 24 cores', 'Intel Core i9-13900KS Desktop Processor 24 cores (8 P-cores + 16 E-cores) 36MB Cache, up to 6.0 GHz', 830.00, 'images/61ufrInXMuL_AC_SL1500_.jpg', '24 cores (8 P-cores + 16 E-cores) and 32 threads. Integrated Intel UHD Graphics 770 included\r\nPerformance hybrid architecture integrates two core microarchitectures, prioritizing and distributing workloads to optimize performance\r\nUp to 6.0 GHz unlocked. 36M Cache\r\nCompatible with Intel 600 series and 700 series chipset-based motherboards\r\nTurbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support. Intel Optane Memory support. No thermal solution included', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ts_role`
--

CREATE TABLE `ts_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_role`
--

INSERT INTO `ts_role` (`id`, `name`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `ts_user`
--

CREATE TABLE `ts_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_user`
--

INSERT INTO `ts_user` (`id`, `username`, `password`, `created_at`, `id_role`) VALUES
(1, 'admin', 'admin', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ts_userrole`
--

CREATE TABLE `ts_userrole` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ts_category`
--
ALTER TABLE `ts_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ts_comment`
--
ALTER TABLE `ts_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `ts_product`
--
ALTER TABLE `ts_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `ts_role`
--
ALTER TABLE `ts_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ts_user`
--
ALTER TABLE `ts_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Role_validation` (`id_role`);

--
-- Indexes for table `ts_userrole`
--
ALTER TABLE `ts_userrole`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ts_category`
--
ALTER TABLE `ts_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ts_comment`
--
ALTER TABLE `ts_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ts_product`
--
ALTER TABLE `ts_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ts_role`
--
ALTER TABLE `ts_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ts_user`
--
ALTER TABLE `ts_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ts_comment`
--
ALTER TABLE `ts_comment`
  ADD CONSTRAINT `ts_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ts_user` (`id`),
  ADD CONSTRAINT `ts_comment_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `ts_product` (`id`);

--
-- Constraints for table `ts_product`
--
ALTER TABLE `ts_product`
  ADD CONSTRAINT `ts_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `ts_category` (`id`);

--
-- Constraints for table `ts_user`
--
ALTER TABLE `ts_user`
  ADD CONSTRAINT `Role_validation` FOREIGN KEY (`id_role`) REFERENCES `ts_role` (`id`);

--
-- Constraints for table `ts_userrole`
--
ALTER TABLE `ts_userrole`
  ADD CONSTRAINT `ts_userrole_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `ts_user` (`id`),
  ADD CONSTRAINT `ts_userrole_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `ts_role` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
