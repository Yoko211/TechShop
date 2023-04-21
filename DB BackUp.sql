-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2023 at 02:24 PM
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
(2, 'Board'),
(3, 'Memory Ram'),
(4, 'Storage');

-- --------------------------------------------------------

--
-- Table structure for table `ts_comment`
--

CREATE TABLE `ts_comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_title` text NOT NULL,
  `user_comment` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_comment`
--

INSERT INTO `ts_comment` (`id`, `user_id`, `product_id`, `comment_title`, `user_comment`, `created_at`) VALUES
(16, 0, 4, 'Best value for money CPU', 'Don\'t hold your breath. If you are after a solid speedy workhorse CPU - this is it. Best value for money', '2023-04-20 22:41:18'),
(17, 0, 4, 'cost way too much when I bought it', 'price was too high when I bought it. going from 5950x 7950x not seeing mind blowing difference, mainly future proofing, nothing more. 7xxx series is not plug and play like past cpu\'s. long boots, latest bios required, expo is a must, etc. don\'t dislike the cpu, just not a fan of this generation (costly upgrade), assuming things will get better as time goes on. not seeing >5.4 in any benchmarks and I\'m nowhere near throttling. on the plus side, not seeing super high temps as reported online (35-46 on avg)', '2023-04-20 22:41:37'),
(18, 0, 4, 'A performance monster', 'This CPU is an absolute monster. Gaming and productivity workloads offer absolutely no challenge. Honestly, it\'s even overkill for me.\r\n\r\nBenchmarks prove this beast can handle anything - see the hundreds online. I have also undervolted, and set a power limit via BIOs, and runs extremely fast and at low temps.\r\n\r\nOnly sad point was the terribly expensive motherboards on release. I hope that will be less of a problem in coming years, and at least, the platform will last a long time!\r\n\r\nAlso - messing around with undervolting, overclocking and more, resulted in many many BSODs. Even just driver changes can cause BSODs for me. Once I got it stable, it runs perfectly and rarely see any issue.\r\n\r\nAlso overclocking DDR5 proves a bit tricky beyond 7950x supported range. That\'s a challenge for later I guess!', '2023-04-20 22:42:06'),
(19, 0, 8, 'Good performance and stays cool', 'Hovers around 30° even while playing games on high graphics all night even with my cheap cooling fan, no problem keeping up with many programs open I don’t think I’ve seen it past 12% use in task manager so far', '2023-04-20 22:45:25'),
(20, 0, 8, 'Amazing CPU for money. Great value', 'I built a gaming desktop PC with this cpu and a Zotac 3080 trinity GPU. I get higher frame rates with this cpu than the zotac 3080 while playing the new call of duty mw2. I get max:200fps with this cpu and max:165 fps with the gpu, while doing the benchmark test, COD has in game. Keep in mind, I am not the most tech savvy, when it comes to computers and over clocking.', '2023-04-20 22:46:08'),
(25, 0, 42, 'Great speed and value for the money.', 'The first drive did not work but was also delivered in an opened and resealed package. This drive could not be configured in disk management. The second faired the same and was returned. Although the 2 items gave me pause I returned both without incident and ordered a third. The item arrived in a sealed package and once installed worked immediately and I managed to download and use the recommended software on the Sabrent home page and it worked flawlessly. In fact I enjoyed the simplicity of the cloning software to others I have used in the past. I can only give the Over All rating a 3 as the items shipped were a 3 try event to succeed. Other wise the drive works as expected.', '2023-04-21 00:40:39'),
(26, 0, 42, 'Great product as regards performance and capacity', 'I was amazed at how tiny it was when it arrived. A bit fiddly to install but not hard for those who know their way around hardware. Kept loosing the tiny little mounting screw inside the PC chassis but eventually got it screwed in thanks to some tape at the end of the screwdriver. It would probably be easier to install on the motherboard before final assembly of a new PC.\r\nWorked immediately as advertised after installation and formatting. So far so good. Used for mass storage of photographs.\r\nUpdate: Almost three months later. No problems to report. Still fast and great for my photo storage needs. Can\'t see what others complain about with this drive. Huge storage, great overall speed.', '2023-04-21 00:41:03'),
(28, 0, 12, 'Core i9-10900K is a beast, but some reports of its greatness have been exagerated', 'This is hands down a beast of a CPU. However, even with liquid cooling (EVGA CLC 360mm All-In-One RGB LED CPU Liquid Cooler, 3x FX12 120mm) it still reaches thermal limits during prime 95 (Mix of both RAM and CPU testing). The ram runs at 4000Mhz. Perhaps the performance will be better in regular games, rather than stress testing. Still, it is a bit disappointing. However, even though it only has 10 cores, it has a 14nm architecture. Bottom line is that it can theoretically reach over 5 Ghz, but if it reaches thermal limits it is throttled.', '2023-04-21 04:13:00'),
(30, 0, 12, '\"Big Dog\" processor', 'No regrets on picking this cpu - it ROCKS, go team blue !', '2023-04-21 12:05:40'),
(31, 0, 4, 'adfas', 'asdfasdf', '2023-04-21 12:12:39'),
(32, 0, 4, 'asdfasd', 'asdfasdf', '2023-04-21 12:17:30'),
(33, 0, 4, 'Test', 'Test', '2023-04-21 12:19:34'),
(34, 0, 4, 'another', 'test', '2023-04-21 12:19:44'),
(35, 0, 4, 'asdfasdf', 'asdfasdfasdfasf112222', '2023-04-21 12:21:07');

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
(2, 'Fanxiang', 'S101', 'Fanxiang S101 1TB SSD SATA III 6Gb/s 2.5&#34; Internal Solid State Drive, Read Speed up to 550MB/sec, Compatible with Laptop and PC Desktops(Black)', 60.00, 'images/61v6iv_.jpg', '【Speed Up Computer】: Replacing traditional mechanical hard drives, upgrade your laptop or desktop, and reduce the time it takes to boot the operating system and open applications\r\n【Quick Response】: Fanxiang S101 SSD adopts SATA III 6Gb/s interface, the maximum read speed up to 550MB/s, and the maximum write speed up to 500MB/s\r\n【High-Performance】: Solid state internal drive has the characteristics of shockproof and anti-drop, quiet and noiseless, low power consumption, high and low-temperature resistance, faster-booting speed, and program loading speed\r\n【Improve Efficiency】: Solid-state drives can be used to speed up gaming and speed up efficiency for office, video, or graphic design work, 3 years warranty period\r\n【Wide Compatible】: Internal SSD compatible windows 10 / 8.1/8 /7, mac os 10.4 or later, linux 2.6.33 or later, compatible with laptops, desktops, all-in-one computers', 4),
(4, 'AMD', 'Ryzen™ 9 7950X 16-Core, 32-Thread', 'AMD Ryzen™ 9 7950X 16-Core, 32-Thread Unlocked Desktop Processor, Cooler not Included', 800.00, 'images/51nBGlyDO_AC_SL1466_.jpg', 'The best for creators meets the best for gamers, can deliver ultra-fast 100+ FPS performance in the world\'s most popular games\r\n16 Cores and 32 processing threads, based on AMD \"Zen 4\" architecture\r\n5.7 GHz Max Boost, unlocked for overclocking, 80 MB cache, DDR5-5200 support\r\nFor the state-of-the-art Socket AM5 platform, can support PCIe 5.0 on select 600 Series motherboards\r\nCooler not included, liquid cooler recommended. OS Support : Windows 11 - 64-Bit Edition, Windows 10 - 64-Bit Edition, RHEL x86 64-Bit, Ubuntu x86 64-Bit', 1),
(5, 'AMD', 'Epyc 9654 Processor 96 Core 2.4GHz 384MB L3 Cache', 'AMD Epyc 9654 Processor 96 Core 2.4GHz 384MB L3 Cache TDP 360W SP5 Socket (4th gen, Genoa) (100-000000789) (OEM Tray Processor)', 10678.00, 'images/41wn6PR2C1L_AC_.jpg', 'Brand	Generic\r\nCPU manufacturer	AMD\r\nCPU speed	2.4 GHz\r\nCPU socket	Socket SP5\r\nSecondary cache	384 MB', 1),
(6, 'AMD', 'RYZEN 5 4600G', 'AMD RYZEN 5 4600G W/Wraith Stealth Cooler', 200.00, 'images/61xqmYOrStLC_SL1000_.jpg', 'Built on industry leading 7nm \"Zen 2\" processor technology, for faster, more efficient processing that runs cool and quiet\r\nWith 6 processing cores and 12 threads, get ultra-fast performance for productivity, content creation, gaming and more\r\nWith built-in AMD Radeon Graphics, get up to 3x faster graphics than the competition for smooth 1080p HD gaming and amazing entertainment', 1),
(7, 'Intel', 'Core i5-12400 Desktop Processor', 'Intel Core i5-12400 Desktop Processor 18M Cache, up to 4.40 GHz', 250.00, 'images/adsfa.jpg', 'Intel Core i5 2.50 GHz processor offers hyper-threading architecture that delivers high performance for demanding applications with improved onboard graphics and turbo boost\r\nThe processor features Socket LGA-1700 socket for installation on the PCB\r\nIts 18 MB of L3 cache is good enough to carry routine data and process them in a flash giving you fast and smooth performance\r\nBuilt-in Intel UHD Graphics 730 controller for improved graphics and visual quality. Supports up to 4 monitors.', 1),
(8, 'Intel', 'Core i7-12700K Desktop Processor 12 (8P+4E) Cores', 'Intel Core i7-12700K Desktop Processor 12 (8P+4E) Cores up to 5.0 GHz Unlocked  LGA1700 600 Series Chipset 125W', 420.00, 'images/51CVLuhri5L_AC_SL1000_.jpg', 'Intel® Core® i7 3.60 GHz processor offers more cache space and the hyper-threading architecture delivers high performance for demanding applications with better onboard graphics and faster turbo boost\r\nThe processor features Socket LGA-1700 socket for installation on the PCB\r\n25 MB of L3 cache to boost the instruction processing and system performance\r\nIntel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient\r\nTo boost graphics and visual quality, the chipset has a built in Intel UHD Graphics controller', 1),
(9, 'Intel', 'Core i9-12900K Desktop Processor 16 (8P+8E) Cores', 'Intel Core i9-12900K Desktop Processor 16 (8P+8E) Cores up to 5.2 GHz Unlocked LGA1700 600 Series Chipset 125W', 630.00, 'images/61ZRFy6GZ_AC_SL1280_.jpg', 'The processor features Socket LGA-1700 socket for installation on the PCB\r\n30 MB of L3 cache memory provides excellent hit rate in short access time enabling improved system performance\r\n10 nm enables improved performance per watt and micro architecture makes it power-efficient\r\nIntel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient', 1),
(10, 'Intel', 'Core i5-10400F Desktop Processor 6 Cores', ' Intel Core i5-10400F Desktop Processor 6 Cores up to 4.3 GHz Without Processor Graphics LGA1200 (Intel 400 Series chipset) 65W, Model Number: BX8070110400F', 200.00, 'images/61cKmFhEqTAC_SL1500_.jpg', '6 cores / 12 threads\r\nSocket Type LGA 1200\r\nUp to 4.3 GHz\r\nCompatible with Intel 400 series chipset based motherboards\r\nIntel Optane Memory Support\r\nCooler Included', 1),
(11, 'Intel', 'XEON Platinum 8170', 'INTEL - XEON Platinum 8170 Processor 35.75M 2.10', 9587.00, 'images/81TwiU9pQpL_AC_SL1500_.jpg', 'CPU FREQUENCY: 2.10GHZ\r\nCPU MAX TURBO FREQUENCY: 3.70GHZ\r\nMULTI-CORE: 26-CORE\r\nCACHE: 35.75MB L3\r\nTHERMAL DESIGN POWER: 165W', 1),
(12, 'Intel', 'Core i9-13900KS Desktop Processor 24 cores', 'Intel Core i9-13900KS Desktop Processor 24 cores (8 P-cores + 16 E-cores) 36MB Cache, up to 6.0 GHz', 830.00, 'images/61ufrInXMuL_AC_SL1500_.jpg', '24 cores (8 P-cores + 16 E-cores) and 32 threads. Integrated Intel UHD Graphics 770 included\r\nPerformance hybrid architecture integrates two core microarchitectures, prioritizing and distributing workloads to optimize performance\r\nUp to 6.0 GHz unlocked. 36M Cache\r\nCompatible with Intel 600 series and 700 series chipset-based motherboards\r\nTurbo Boost Max Technology 3.0, and PCIe 5.0 & 4.0 support. Intel Optane Memory support. No thermal solution included', 1),
(13, 'ASUS', 'Prime B550-PLUS AMD AM4', ' ASUS Prime B550-PLUS AMD AM4 (3rd Gen Ryzen™) ATX motherboard (PCIe 4.0, ECC memory, 1Gb LAN, HDMI 2.1, DisPlayPort 1.2 (4K@60HZ), Addressable Gen 2 RGB', 180.00, 'images/91bMWZ.jpg', 'ASUS Prime B550-PLUS AMD AM4 (3rd Gen Ryzen™) ATX motherboard (PCIe 4.0, ECC memory, 1Gb LAN, HDMI 2.1, DisPlayPort 1.2 (4K@60HZ), Addressable Gen 2 RGB header and Aura Sync)', 2),
(14, 'ASUS', 'Prime Z690-A LGA 1700', 'ASUS Prime Z690-A LGA 1700(Intel 12th) ATX Motherboard (16+1 DrMOS,PCIe 5.0,DDR5,4X M.2, Intel 2.5 Gb LAN,USB 3.2 Gen 2 Front Panel Type-C,Thunderbolt™ 4,Aura Sync RGB Lighting)', 280.00, 'images/81WVEn+zIAC_SL1500_.jpg', 'Intel LGA 1700 socket: Ready for 12th Gen Intel Core processors and Windows 11, support PCIe 5.0 and DDR5\r\nAI Motherboard : AI overclocking, AI cooling and Two-way AI noise cancellation\r\nEnhanced Power Solution: 16+1 DrMOS, ProCool sockets, alloy chokes and durable capacitors for stable power delivery\r\nComprehensive Cooling: Large VRM heatsink, M.2 heatsink, M.2 backplate with Q-Latch, hybrid fan headers and Fan Xpert 4\r\nNext-gen connectivity: DDR5 memory, PCIe 5.0, Intel 2.5 Gb Ethernet, USB 3.2 Gen2x2 Type-C, front panel USB 3.2 Gen 2 Type-C, Thunderbolt 4 header support', 2),
(15, 'ASUS', 'TUF Gaming B650-PLUS', 'ASUS TUF Gaming B650-PLUS WiFi Socket AM5 (LGA 1718) Ryzen 7000 ATX Gaming Motherboard(14 Power Stages, PCIe® 5.0 M.2 Support, DDR5 Memory, 2.5 Gb Ethernet, WiFi 6, USB4® Support and Aura Sync)', 280.00, 'images/81SXll1-kC_SL1500_.jpg', 'AMD AM5 socket: Ready for AMD Ryzen 7000 Series desktop processors\r\nEnhanced power solution: 12+2 teamed power stages, 8+4 ProCool sockets, alloy chokes and durable capacitors for stable power delivery\r\nNext-gen connectivity: M.2 PCIe 5.0, USB 3.2 Gen2x2 Type-C, front USB 3.2 Gen 1 Type-C, USB4 support\r\nMade for online Gaming: WiFi 6, Realtek 2.5 Gb Ethernet and TUF LANGuard\r\nTwo-way AI Noise Cancelation: Reduces background noise from the microphone and audio output for crystal-clear communication in games or video conferences', 2),
(16, 'ASUS', 'ROG X570 Crosshair VIII Hero', 'Asus ROG X570 Crosshair VIII Hero ATX Motherboard with PCIe 4.0, on-Board WiFi 6, 2.5 Gbps LAN, USB 3.2, SATA, M.2, RGB Lighting', 510.00, 'images/61-7KxpmIAC_SL1000_.jpg', 'AMD AM4 socket: ready for 2nd, and 3rd Gen AMD Ryzen processors and up to two M. 2 drives, USB 3. 2 Gen2, and AMD StoreMI to maximize connectivity and speed.\r\nComprehensive thermal design: active PCH heatsink, M. 2 aluminum heatsink and ROG cooling zone.\r\nHigh-performance networking: on-board Wi-Fi 6 (802. 11Ax) with MU-MIMO support, 2. 5 Gaps Ethernet and Gigabit Ethernet, both with Asus LANGuard protection, and support for GameFirst V software.\r\n5-Way Optimization: automated system-wide tuning, providing overclocking and cooling profiles that are tailor made for your rig.\r\nDIY friendly design: pre-mounted I/O shield, Asus SafeSlot, BIOS Flashback and premium components for maximum endurance.\r\nManageability: WOL, PXE', 2),
(17, 'ASUS', 'ROG Strix B650-A Gaming', 'A Gaming WiFi 6E AM5 (LGA1718) Ryzen 7000 Gaming Motherboard(12+2 Power Stages,DDR5,3xM.2 Slots,PCIe® 4.0, 2.5G LAN,WiFi 6E,USB 3.2 Gen 2x2 Type-C® Port)', 380.00, 'images/71cc6w17AkL_AC_SL1488_.jpg', 'AMD Socket AM5(LGA 1718): Ready for AMD Ryzen 7000 Series desktop processors\r\nRobust Power Solution: 12 + 2 power stages with 8 + 4 pin ProCool power connectors, high-quality alloy chokes, and durable capacitors to support multi-core processors\r\nOptimized Thermal Design: Massive VRM heatsinks with strategically cut airflow channels and high conductivity thermal pads\r\nNext-Gen M.2 Support: One PCIe 5.0 M.2 slot and two PCIe 4.0 M.2 slots, all with heatsinks to maximize performance\r\nAdvanced Connectivity: One USB 3.2 Gen 2x2 Type-C and eight additional rear USB ports, USB 3.2 Gen 2 Type-C front-panel connector, HDMI 2.1, DisplayPort 1.4, and one PCIe 4.0 x16 SafeSlot', 2),
(18, 'AMD', 'Ryzen 7 5700G 8-Core, 16-Thread', 'AMD Ryzen 7 5700G 8-Core, 16-Thread Unlocked Desktop Processor with Radeon Graphics', 250.00, 'images/51D3DAC_SL1000_.jpg', 'Play some of the most popular games at 1080p with the fastest processor graphics in the world, no graphics card required\r\n8 Cores and 16 processing threads, bundled with the AMD Wraith Stealth cooler\r\n4.6 GHz Max Boost, unlocked for overclocking, 20 MB cache, DDR4-3200 support\r\nFor the advanced Socket AM4 platform\r\nPlay some of the most popular games at 1080p with the fastest processor graphics in the world, no graphics card required;\r\n8 Cores and 16 processing threads, bundled with the AMD Wraith Stealth cooler;\r\n4.6 GHz Max Boost, unlocked for overclocking, 20 MB cache, DDR4-3200 support;\r\nFor the advanced Socket AM4 platform. Maximum Operating Temperature (Tjmax)-95°C', 1),
(20, 'AMD', 'Ryzen 5 5500 6-Core, 12-Thread', 'AMD Ryzen 5 5500 6-Core, 12-Thread Unlocked Desktop Processor with Wraith Stealth Cooler', 140.00, 'images/sdafe33_.jpg', 'Can deliver fast 100+ FPS performance in the world\'s most popular games, discrete graphics card required\r\n6 Cores and 12 processing threads, bundled with the AMD Wraith Stealth cooler\r\n4.2 GHz Max Boost, unlocked for overclocking, 19 MB cache, DDR4-3200 support\r\nFor the advanced Socket AM4 platform', 1),
(21, 'ASRock', 'B660M ATX Motherboard B660 Pro RS Intel B660 Series', 'ASRock B660M ATX Motherboard B660 Pro RS Intel B660 Series CPU (LGA1700) Compatible', 160.00, 'images/81lMsKWJAHL_SL1500_.jpg', 'CPU:INTEL SOCKET1700 FOR INTEL 12TH GEN CORE\r\nCHIPSET:INTEL B660\r\nMEMORY:4*DIMM MAX 128GB DDR4\r\nSLOTS:1*PCIE4.0X16;1*PCIE3.0X16;2*PCIE3.0X1', 2),
(23, 'TEAMGROUP', 'T-Force Delta', 'TEAMGROUP T-Force Delta RGB DDR4 16GB (2x8GB) 3600MHz (PC4-28800) CL18 Desktop Gaming Memory Module Ram TF4D416G3600HC18JDC01 - White', 80.00, 'images/71KvpD-WuNLC_SL1500_.jpg', 'Full color, dazzling and 120° ultra wide angle force flow lighting effect\r\nSupports XMP2.0 one-click overclocking technology\r\nCompatible with both Intel & AMD motherboards\r\nSupports variety kinds of lighting control software\r\nLifetime warranty', 3),
(24, 'GIGABYTE', 'Z790 AORUS Elite AX', 'GIGABYTE Z790 AORUS Elite AX (LGA 1700/ Intel Z790/ ATX/ DDR5/ Quad M.2/ PCIe 5.0/ USB 3.2 Gen2X2 Type-C/Intel WiFi 6E/ 2.5GbE LAN/Q-Flash Plus/PCIe EZ-Latch/Gaming Motherboard)', 360.00, 'images/81a48Z1GciLC_SL1500_.jpg', 'Intel LGA 1700 Socket: Supports 13th and 12th Gen Intel Core Series Processors\r\nDDR5 Compatible: 4*SMD DIMMs with XMP 3.0 Memory Module Support\r\nCommanding Power Design: Twin 16+1+2 Phases Digital VRM Solution with 70A Power Stage\r\nCutting-Edge Thermal Design: M.2 Thermal Guard III, Fully Covered MOSFET Heatsinks, PCIe Ultra Durable Armor, 6-Layer PCB\r\nNext Gen Connectivity: SMD PCIe 5.0, 4* PCIe 4.0 x4 M.2, USB 3.2 Gen 2x2 Type-C\r\nEZ-Latch: PCIe 5.0 EZ-Latch with a Quick Release & Screwless Design\r\nFast Networking: 2.5GbE LAN, Intel WiFi 6E 802.11ax, 2T2R & BT5 with AORUS Antenna\r\nDynamic Audio: High-End Audio Capacitor, Audiophile WIMA Capacitors\r\nFine Tuning Features: RGB FUSION 2.0, Supports Addressable LED & RGB LED Strips, Smart Fan 6, Q-Flash Plus Update BIOS without installing CPU, Memory, and GPU', 2),
(25, 'GIGABYTE', 'Z690 UD AX', 'GIGABYTE Z690 UD AX DDR4 (LGA 1700/ Intel Z690/ ATX/ DDR4/ Triple M.2/ PCIe 5.0/ USB 3.2 Gen2X2/ Type-C/WiFi 6/2.5GbE LAN/Motherboard)', 240.00, 'images/81e0M0QkpDAC_SL1500_.jpg', 'Intel LGA 1700 Socket: Supports 12th Gen Intel Core Series Processors\r\nDDR4 Compatible: Dual Channel Non-ECC Unbuffered DDR4\r\nSturdy Power Design: 16+1+2 Digital VRM Design with 60A Power Stage with Tantalum Polymer Capacitor\r\nComprehensive Thermal Design: Ultra performance VRM Heatsinks\r\nNext Gen Connectivity: PCIe 5.0, Triple NVMe PCIe 4.0 x4 M.2, SuperSpeed USB 3.2 Gen 2x2 Type-C', 2),
(26, 'GIGABYTE', 'B660M AORUS PRO AX', 'GIGABYTE B660M AORUS PRO AX DDR4 (B660/ Intel/LGA/ 1700/ Micro-ATX/ DDR4/ Dual M.2/ PCIe 4.0/ USB 3.2 Gen2 Type-C/WiFi 6 802.11ax/ Intel 2.5GbE LAN/Motherboard)', 210.00, 'images/61-Ge9n3b9L_AC_SL1042_.jpg', 'Intel LGA 1700 Socket: Supports 12th Gen Intel Core Series Processors\r\nDDR4 Compatible: Dual Channel Non-ECC Unbuffered DDR4, 4 DIMMs\r\nCommanding Power Design: 12+1+1 Twin Hybrid Digital VRM Design with 60A DrMOS\r\nCutting-Edge Thermal Design: Fully Covered Thermal Design with High Coverage MOSFET Heatsinks, Shielded Memory Routing, Thermal Guards\r\nNext Gen Connectivity: PCIe 4.0, Dual NVMe PCIe 4.0 x4 M.2, USB 3.2 Gen 2x2 Type-C', 2),
(27, 'GIGABYTE', 'Z690 AERO D', 'GIGABYTE Z690 AERO D (LGA 1700/ Intel Z690/ ATX/ DDR5/ Quad M.2/ PCIe 5.0/ USB 3.2 Gen2X2 Type-C/WiFi 6/ AQUANTIA 10GbE LAN/Motherboard)', 600.00, 'images/71Pl7he3ClL_AC_SL1500_.jpg', 'Intel LGA 1700 Socket: Supports 12th Gen Intel Core Series Processors\r\nDDR5 Compatible: Dual Channel Non-ECC Unbuffered DDR5\r\nComprehensive Thermal Design: Advanced Thermal Architecture, Enlarged Thermal Guards\r\nNext Gen Connectivity: PCIe 5.0, VisionLINK I/O , Quad NVMe PCIe 4.0 x4 M.2, SuperSpeed USB 3.2 Gen 2x2 Type-C, Thunderbolt 4\r\nFast Networking: WiFi 6 802.11ax, AQUANTIA 10GbE LAN and Intel 2.5 GbE LAN, BT5\r\nFine Tuning Features: RGB FUSION 2.0, Supports Addressable LED & RGB LED Strips, Smart Fan 6, Q-Flash Plus Update BIOS without installing, CPU, Memory, and GPU\r\nOnly Compatible with Intel LGA1700 Cooling Brackets', 2),
(28, 'MSI', 'MPG Z690 Edge', 'MSI MPG Z690 Edge WiFi DDR4 Gaming Motherboard (ATX, 12th Gen Intel Core, LGA 1700 Socket, DDR4, PCIe 4, CFX, M.2 Slots, Wi-Fi 6E)', 360.00, 'images/81xl402VUuL_AC_SL1500_.jpg', 'Supports 12th Gen Intel Core / Pentium / Celeron processors for LGA 1700 socket\r\nSupports DDR5 Memory, up to 5600(OC) MHz.Support for Windows 11 64-bit, Windows 10 64-bit\r\nPremium Thermal Solution: Extended Heatsink Design and M.2 Shield Frozr are built for high performance system and non-stop works\r\n2.5G LAN and Intel Wi-Fi 6E Solution: Upgraded network solution for professional and multimedia use. Delivers a secure, stable and fast network connection\r\nLightning M.2: Running at PCIe Gen4 x4 maximizes performance for NVMe based SSDs', 2),
(29, 'MSI', 'MPG Z790 Edge WiFi Gaming Motherboard', 'MSI MPG Z790 Edge WiFi Gaming Motherboard (Supports 12th/13th Gen Intel Processors, LGA 1700, DDR5, PCIe 5.0, M.2, 2.5Gbps LAN, USB 3.2 Gen2, Wi-Fi 6E, ATX)', 430.00, 'images/81g473bLYvLAC_SL1500_.jpg', 'Supports 12th/13th Gen Intel Core, Pentium Gold and Celeron processors for LGA 1700 socket\r\nSupports DDR5 Memory, up to 7200+(OC) MHz\r\nLightning Fast Game experience: PCIe 5.0 slot, Lightning Gen 4 x4 M.2, USB 3.2 Gen 2x2\r\nEnhanced Power Design: 16+1+1 Duet Rail Power System, dual 8-pin CPU power connectors, Core Boost, Memory Boost\r\nPremium Thermal Solution: Enlarged heatsink with heat-pipe, MOSFET thermal pads rated for 7W/mk, additional choke thermal pads and M.2 Shield Frozr are built for high performance system and non-stop gaming experience', 2),
(30, 'MSI', 'MPG Z490 Gaming Plus Gaming Motherboard', 'MSI MPG Z490 Gaming Plus Gaming Motherboard (ATX, 10th Gen Intel Core, LGA 1200 Socket, DDR4, CF, Dual M.2 Slots, USB 3.2 Gen 2, 2.5G LAN, DP/HDMI, Mystic Light RGB)', 170.00, 'images/91D8uWFdGDL_AC_SL1500_.jpg', 'Supports 10th Generation Intel Core / Pentium Gold / Celeron Processors for LGA 1200 socket\r\nSupports dual channel DDR4 memory up to 128GB (4800MHz)\r\nTwin Turbo M.2 with M.2 Shield Frozr delivers transfer speeds of up to 32 GB/s for ultra-fast SSDs\r\nCore Boost technology combines optimized power circuit layouts, double CPU power connectors, and a digital power design which allows for precise and steady current delivery to the CPU\r\nMotherboard does not have WIFI function', 2),
(31, 'MSI', 'MAG X670E Tomahawk WiFi Gaming Motherboard', 'MSI MAG X670E Tomahawk WiFi Gaming Motherboard (AMD AM5, DDR5, PCIe 5.0, SATA 6Gb/s, M.2, USB 3.2 Gen 2, Wi-Fi 6E, 2.5Gbps LAN, HDMI/DP, ATX)', 430.00, 'images/816ESNZ4SpLAC_SL1500_.jpg', 'Support AMD Ryzen 7000 Series Desktop Processors\r\nSupports DDR5 Memory, up to 6600+(OC) MHz\r\nEnhanced Power Design: 14+2+1 Duet Rail Power System, dual 8-pin CPU power connectors, Core Boost, Memory Boost\r\nLightning Fast Game experience: PCIe 5.0 slot, Lightning Gen5 M.2, USB 3.2 Gen 2x2\r\nPremium Thermal Solution: Extended Heatsink Design and M.2 Shield Frozr are built for high performance system and non-stop works', 2),
(32, 'Fanxiang', 'S500 Pro', 'Fanxiang S500 Pro 1TB NVMe SSD M.2 2280 PCIe Gen3x4 3500MB/s TLC 3D NAND 640TBW Internal Solid State Hard Drive black', 70.00, 'images/61zv9Ct-AEL_AC_SL1500_.jpg', '【EXCELLENT PERFORMANCE】: The Fanxiang S500 Pro NVMe M.2 SSD PCIe Gen3x4 provides excellent performance and speed, making it perfect for high-end gamers, technology enthusiasts, professionals, and creatives\r\n【HIGH-SPEED TRANSMISSION】: Fanxiang S500 Pro M.2 SSD(NVMe1.3 protocol) has a read and write speed of up to 3500/3000MB/s (1TB model), and the transmission performance is 5 times that of SATA III\r\n【HIGH-QUALITY】: The M.2 NVMe SSD uses high-quality 3D NAND TLC particles to ensure product life and stability, with up to 640 TBW (TeraBytes Written). Operating Temperature: 0 - 70 ℃\r\n【WIDELY COMPATIBLE】: Internal SSD is compatible with Windows 8, 10, 11. Compatible with laptops, desktops, and all-in-one computers (computer motherboard must be equipped with M.2 NVMe interface)\r\n【LONG SERVICE】: Fanxiang is committed to providing high-quality products to global business partners, providing a 3-year warranty service (installation screws and screwdrivers are included in the product package)', 4),
(33, 'Crucial', 'MX500', 'Crucial MX500 1TB 3D NAND SATA 2.5 Inch Internal SSD, up to 560MB/s - CT1000MX500SSD1', 70.00, 'images/81rg-38AdJL_AC_SL1500_.jpg', 'Sequential reads/writes up to 560/510 MB/s and random reads/writes up to 95k/90k on all file types\r\nAccelerated by Micron 3D NAND technology\r\nIntegrated Power Loss Immunity preserves all your saved work if the power unexpectedly gets cut\r\nAES 256-bit hardware-based encryption keeps data safe and secure from hackers and thieves\r\nCrucial 5-year limited warranty', 4),
(34, 'fanxiang', '2280', 'fanxiang 512GB NVMe SSD M.2 2280 PCIe Gen3 x 4 3D NAND Internal Solid State Drive, Up to 2,150/s, Compatible with PCIe Express 3.1 and NVMe 1.3', 40.00, 'images/61BEANZrF5L_AC_SL1500_.jpg', '【NVMe M.2 2280】 - PCIe SSD adopts 3D NAND technology, which improves computer loading speed and power efficiency, and reduces the delay of operating system and games/software\r\n【Quick Response】 - NVMe M.2 PCIe Gen3x4 high-speed interface sequential read and write speed can reach 2150/1600 MB/s, transmission performance is 5 times that of SATA III ,marking the next step in storage innovation\r\n【Improve Efficiency】 - Internal SSD can be used to speed up games and increase the efficiency of the office, video, or design work, ideal for tech enthusiasts, high-end gamers, and content creators\r\n【Excellent Performance】 - M.2 NVMe SSD has the characteristics of fast response speed, low power consumption, Stable and durability, no noise, shock resistance, and high-temperature resistance, and built-in LDPC ECC error correction function\r\n【Wide Compatible】 - M.2 SSD form factor is suitable for motherboards, desktops, and laptops with M.2 interface. Perfect compatibility with windows 8/10/11, and later', 4),
(35, 'Samsung', '970 EVO', 'Samsung 970 EVO Plus 1TB NVMe M.2 Internal SSD (MZ-V7S1T0/AM) [Canada Version]', 115.00, 'images/71bzyYhygWL_AC_SL1500_.jpg', 'INNOVATIVE V-NAND TECHNOLOGY: Powered by Samsung V-NAND Technology, the 970 EVO Plus SSD’s NVMe interface (PCIe Gen 3.0 x4 NVMe 1.3) offers enhanced bandwidth, low latency, and power efficiency ideal for tech enthusiasts, high end gamers, and 4K & 3D content designers\r\nBREAKTHROUGH READ WRITE SPEEDS: Sequential read and write performance levels of up to 3,500MB/s and 3,300MB/s, respectively; Random Read (4KB, QD32): Up to 600,000 IOPS Random Read. Operating Temperature: 0 - 70 ℃. Shock 1,500 G & 0.5 ms (Half sine)\r\nPERFORMANCE OPTIMIZATION AND DATA SECURITY: Seamless cloning and file transfers with Samsung Magician Software, the ideal SSD management solution for performance optimization and data security with automatic firmware updates\r\nSUPERIOR HEAT DISSIPATION: Samsung’s Dynamic Thermal Guard automatically monitors and maintains optimal operating temperatures to minimize performance drops\r\n5-YEAR LIMITED WARRANTY: 5-year limited warranty or 600 TBW (Terabytes Written). Power consumption (Idle) - Max. 30 mW Actual power consumption may vary depending on system hardware & configuration. Voltage - 3.3 V ± 5 % Allowable voltage\r\nNote: Refer to the troubleshooting steps in product description.\r\nNot Intended for use with the Playstation 5 - refer to Samsung 980 Pro with Heatsink. AES Encryption AES 256-bit Encryption (Class 0)TCG/Opal IEEE1667 (Encrypted drive)', 4),
(36, 'Samsung', '980 Series', 'Samsung 980 Series - 1TB PCIe Gen3. X4 NVMe 1.4 - M.2 Internal SSD (MZ-V8V1T0B/AM) [Canada Version]', 110.00, 'images/715OCunnZfL_AC_SL1500_.jpg', 'Upgrade to NVMe Speed : 980 delivers read/write speeds of up to 3,500/3,000 MB/s\r\nBuilt for the long run: Keep your files safe with up to 600 TBW and a 5-year limited Canadian arranty\r\nReliable Thermal Control : High Performance SSD\'s require high-performance thermal control. Nickel coating manages the controller\'s heat level\r\nSamsung Magician Software : Unlock the full power of the 980 with Samsung Magician Software optimize your performance, Monitor Drive health and protect your valuable data\r\nUPGRADE TO IMPRESSIVE NVMe SPEED Whether you need a boost for gaming or a seamless workflow for heavy graphics, the 980 is a smart choice for outstanding SSD performance\r\nPACKED WITH SPEED 980 delivers value, without sacrificing sequential read write speeds up to 3,500 3,000 MB s\r\nKEEP MOVING WITH FULL POWER MODE Keep your SSD running at its peak with Full Power Mode, which drives continuous and consistent high performance\r\nBUILT FOR THE LONG RUN With up to 600 TBW and the 980’s optimized endurance comes with trusted reliability\r\n5yr Samsung Electronics Canada Limited Warranty. Capacity 1,000GB (1GB=1 Billion byte by IDEMA) * Actual usable capacity may be less (due to formatting, partitioning, operating system, applications or otherwise)', 4),
(37, 'Samsung', '870 EVO', 'Samsung 870 EVO 250GB SATA 2.5&#34; Internal SSD Hard Drive (MZ-77E250B/AM) [Canada Version]', 60.00, 'images/816LW.jpg', 'THE SSD ALL-STAR: The latest 870 EVO has indisputable performance, reliability and compatibility built upon Samsung&#39;s pioneering technology\r\nEXCELLENCE IN PERFORMANCE: Enjoy professional level SSD performance with 870 EVO, which maximizes the SATA interface limit to 560/530 MB/s sequential speeds*, Accelerates write speeds and maintains long term high performance with a larger variable buffer\r\nMORE COMPATIBLE THAN EVER: 870 EVO has been compatibility tested for major host systems and applications, including chipsets, motherboards, NAS, and video recording devices****. Trim Support: Yes - TRIM Supported\r\nUPGRADE WITH EASE: Simply plug 870 EVO into the standard 2.5 inch SATA form factor on your desktop PC or laptop and let the renewed migration software takes care of the rest\r\nSAMSUNG MAGICIAN SOFTWARE: Make your drive work smoothly with enhanced Samsung Magician 6 software that helps you easily manage your drive, keep up with the latest updates, monitor the drive&#39;s health and status, or even enhance its performance****\r\n3yr Samsung Electronics Canada Limited Warranty', 4),
(38, 'Seagate', 'BarraCuda', 'Q5 500GB Internal SSD - M.2 NVMe PCIe Gen3 ×4, 3D QLC for Desktop or Laptop (ZP500CV3A001/ZP500CV30001) Renewed', 70.00, 'images/51ZjrFkaIOLC_.jpg', 'FAST: NVMe SSD with speeds up to 2.5x faster than SATA SSDs and up to 50x faster than traditional HDDs; sequential read/write speeds up to 2400/1800 MB/s\r\nRESPONSIVE: Upgrade your PC for more efficient downloads, installs, and multitasking\r\nMigrate and clone data from old drives with ease using our free Seagate DiscWizard software tool', 4),
(39, 'Seagate', 'Barracuda Q5', 'Seagate Barracuda Q5 500GB Internal SSD - M.2 NVMe PCIe Gen3 ×4, 3D QLC for Desktop or Laptop (ZP500CV3A001/ZP500CV30001) ', 60.00, 'images/51ZjrFkaIOL_AC_.jpg', 'FAST: NVMe SSD with speeds up to 2.5x faster than SATA SSDs and up to 50x faster than traditional HDDs; sequential read/write speeds up to 2400/1800 MB/s\r\nRESPONSIVE: Upgrade your PC for more efficient downloads, installs, and multitasking\r\nMigrate and clone data from old drives with ease using our free Seagate DiscWizard software tool', 4),
(40, 'Timetec', 'NAND TLC 350TBW', 'Timetec 512GB SSD NVMe PCIe Gen3x4 8Gb/s M.2 2280 3D NAND TLC 350TBW High Performance SLC Cache Read/Write Speed Up to 2,000/1,600 MB/s Internal Solid State Drive for PC Laptop and Desktop (512GB)', 40.00, 'images/71cez9UDomLAC_SL1500_.jpg', 'NVMe PCIe Gen3x4 3D NAND TLC Breakthrough Read and Write Speeds: Sequential Read Speed up to 2,000MB/s and Write Speed up to 1,600MB/s, the advanced SLC Cache Technology allows performance boost and longer lifespan\r\nAn industry-leading 1,500,000 hours mean time before failure (MTBF) and up to 350TB Written (TBW, Terabyte Written) for enhanced reliability\r\nCompatible for Operating Systems Windows 11 / Windows 10 / Windows 8.1 / Windows 8 / Windows 7, Linux 2.6.33 or later; Compatible with desktops and laptops that accept M.2 2280 NVMe PCIe Gen3x4 SSD, Backwards Compatible with backward compatible to PCIe Gen 2 and Gen 1; Support latest NVMe 1.3 protocol, Support the next-generation platforms of Intel and AMD\r\nSupport S.M.A.R.T. technology, TRIM command functions, Garbage Collection technology, Wear-Leveling technology, Power Management Support for APST / ASPM, RAID, ECC (Error Correction Code), LDPC (Low-Density Parity Check) , ONFi 2.3, ONFi 3.0, ONFi 3.2 and ONFi 4.0 interface to provide the optimized performance.\r\nIncluded Contents: M.2 2280 NVMe PCIe3x4 SSD (All Other Cables, Screws, Brackets Not Included); Five years limited warranty with free technical support service (Timetec M.2 PCIe SSDs which are purchased on or after August 1, 2020 have a 5-Year extended warranty)', 4),
(41, 'Seagate', 'FireCuda 530 ZP4000GM3A013', 'Seagate FireCuda 530 ZP4000GM3A013 4 TB Solid State Drive - M.2 2280 Internal - PCI Express NVMe (PCI Express NVMe 4.0 x4) - Black', 630.00, 'images/51g9Dvyv18L_AC_SL1500_.jpg', 'With 4 TB capacity you have ample space for storing millions of images, hundreds of hours of video or for music lovers, up to a million songs\r\nWith the stunning reading speed of 7300 MB/s, get faster boot times and improved overall computing performance\r\nWrite speed of 6900 MB/s enables you to perform write-related tasks in seconds rather than minutes\r\nPCI Express NVMe 4.0 x4 interface provides quick data transfer and greater throughput', 4),
(42, 'SABRENT', 'Rocket Q 8TB', ' SABRENT Rocket Q 8TB NVMe PCIe M.2 2280 Internal SSD High Performance Solid State Drive R/W 3300/2900MB/s (SB-RKTQ-8TB)', 1200.00, 'images/7132423g.jpg', 'M.2 PCIe Gen3 x 4 Interface.\r\nPCIe 3.1 Compliant / NVMe 1.3 Compliant.\r\nPower Management Support for APST / ASPM / L1.2.\r\nSupports SMART and TRIM commands. Supports ONFi 2.3, ONFi 3.0, ONFi 3.2 and ONFi 4.0 interface.\r\nAll Sabrent SSDs come with FREE Sabrent Acronis True Image for Sabrent Software for easy Cloning. For those who require a specific sector size to clone their existing SSDs: A newly released Sabrent utility enables users to re-format the Rocket drive and choose the sector size of their liking, either 512-bytes or 4K bytes.', 4),
(43, 'Corsair', 'Vengeance LPX', ' Corsair Vengeance LPX 16GB (2x8GB) DDR4 DRAM 3200MHz C16 Desktop Memory Kit - Black (CMK16GX4M2B3200C16)', 50.00, 'images/51gLnYN1W7L_AC_SL1100_.jpg', 'Hand-sorted memory chips ensure high performance with generous Overclocking headroom. SPD Speed-2133MHz\r\nVengeance LPX is optimized for wide compatibility Intel 200 Series,Intel 300 Series,Intel 400 Series,Intel 500 Series,Intel 600 Series,Intel X299,AMD 300 Series,AMD 400 Series,AMD 500 Series,AMD X570 .Package Memory Pin:288\r\nA low-profile height of just 34mm ensures that vengeance LPX even fits in most small-form-factor builds.\r\nA high-performance PCB guarantees strong signal quality and stability for superior Overclocking ability.\r\nA solid aluminum heatspreader efficiently dissipates heat from each module so that they consistently run at high clock speeds.\r\nSupports Intel XMP 2.0 for simple one-setting installation and setup.\r\nAvailable in multiple colors to match the style of your system.', 3);

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
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `ts_user`
--

CREATE TABLE `ts_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ts_user`
--

INSERT INTO `ts_user` (`id`, `username`, `password`, `created_at`, `id_role`) VALUES
(1, 'admin', 'admin', '0000-00-00 00:00:00', 1),
(3, 'juan', 'juan', '0000-00-00 00:00:00', 2);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ts_comment`
--
ALTER TABLE `ts_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `ts_product`
--
ALTER TABLE `ts_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `ts_role`
--
ALTER TABLE `ts_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ts_user`
--
ALTER TABLE `ts_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ts_comment`
--
ALTER TABLE `ts_comment`
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
