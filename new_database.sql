-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 04:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sharetrip`
--
CREATE DATABASE IF NOT EXISTS `sharetrip` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sharetrip`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_server`
--

CREATE TABLE `admin_server` (
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_phone` varchar(20) NOT NULL,
  `security_key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_server`
--

INSERT INTO `admin_server` (`admin_email`, `admin_password`, `admin_name`, `admin_phone`, `security_key`) VALUES
('mtalukdar201056@bscse.uiu.ac.bd', 'Aa1', 'Md Mushfikur Talukda', '01797381242', 'none'),
('sadia@gmail.com', 'Aa1', 'Sadia Hasan', '0198744566', '15');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `place_name` varchar(30) NOT NULL,
  `place_image` varchar(30) NOT NULL,
  `place_information` varchar(255) NOT NULL,
  `place_count` int(11) NOT NULL,
  `place_link` varchar(255) NOT NULL,
  `place_categories` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`place_name`, `place_image`, `place_information`, `place_count`, `place_link`, `place_categories`) VALUES
('Bandarban', 'blog_img\\6.jpg', 'Bandarban is the pious hub of Theravada Buddhism practiced by tribal communities like Marma or Mogh. Here you will find Buddha Dhatu Jadi, the largest Theravada Buddhist Temple of Bangladesh and the second biggest Buddha sculpture in the country. ', 8, 'https://en.wikipedia.org/wiki/Bandarban_District', 'hill'),
('Cox\'s bazar', 'blog_img\\2.jpg', 'Cox\'s Bazar is a city, fishing port, tourism centre, and district headquarters in southeastern Bangladesh.', 20, 'https://en.wikipedia.org/wiki/Cox%27s_Bazar', 'sea'),
('Jaflong', 'blog_img\\3.jpg', 'Jaflong is famous for its stone collections and is home of the Khasi tribe. Backdropped by mountains, this popular, scenic nature reserve also features rivers & waterfalls. Jaflong is one of the most attractive tourist spots in Sylhet division.', 7, 'https://en.wikipedia.org/wiki/Jaflong', 'river'),
('Lalakhal', 'blog_img\\8.jpg', 'Lalakhal is a wide channel in the Sharee River near the Tamabil road. The river is not very deep and is one of the sources of sand in Sylhet. The focal point of the feature is the variety of colours of the water, which varies from blue to green two color.', 4, 'https://en.wikipedia.org/wiki/Lalakhal', 'river'),
('Mahasthangarh', 'blog_img\\7.jpg', 'Mahasthangarh is the oldest archaeological site in Bangladesh. It dates back to 300 BCE and was the ancient capital of the Pundra Kingdom.', 7, 'https://en.wikipedia.org/wiki/Mahasthangarh', 'historical '),
('Rangamati', 'blog_img\\4.jpg', 'Rangamati is also famous for cashew nut, water melon, Bangla Banana, fresh fishes of Kaptai lake. The district is also known to all for having a hydraulic Power Plant at Kaptai and Terrestrial Earth Satellite at Betbunia, Kawkhli.', 15, 'https://en.wikipedia.org/wiki/Rangamati', 'hill'),
('Sreemangal ', 'blog_img\\5.jpg', 'Sreemangal is often referred to as the \'tea capital\' of Bangladesh, and is most famous for its tea fields. Other than tea, the rubber, pineapple, wood, betel, and lemon industries also exist in the upazila.', 5, 'https://en.wikipedia.org/wiki/Sreemangal_Upazila', 'others'),
('Sundarbans', 'blog_img\\1.jpg', 'Sundarbans is a mangrove area in the delta formed by the confluence of the Padma, Brahmaputra and Meghna Rivers in the Bay of Bengal.', 12, 'https://en.wikipedia.org/wiki/Sundarbans', 'others');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `f_name` varchar(50) NOT NULL,
  `f_price` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `f_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`f_name`, `f_price`, `f_id`, `f_image`) VALUES
('Egg', 25, 20, 'fegg.jpg'),
('Water', 30, 21, 'fw.jpg'),
('Biscuit ', 40, 22, 'fbis.jpg'),
('Dry Fruits ', 100, 23, 'fdry.jpg'),
('Bread', 50, 24, 'fbread.jpg'),
('Sweet ', 95, 25, 'fs.jpg'),
('Cake', 80, 26, 'fc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `guide`
--

CREATE TABLE `guide` (
  `g_email` varchar(50) NOT NULL,
  `g_password` varchar(50) NOT NULL,
  `g_name` varchar(50) NOT NULL,
  `g_phone` varchar(20) NOT NULL,
  `g_age` int(11) NOT NULL,
  `g_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guide`
--

INSERT INTO `guide` (`g_email`, `g_password`, `g_name`, `g_phone`, `g_age`, `g_image`) VALUES
('farjana@gmail.com                                 ', 'Aa1', 'Farjana Akter                                ', '0198774563          ', 29, 'aaag4g.jpg'),
('mithu@gmail.com                                 ', 'Aa1', 'Mithu Talukdar                                ', '01369774661         ', 24, 'aaag5b.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_server`
--
ALTER TABLE `admin_server`
  ADD PRIMARY KEY (`admin_email`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`place_name`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `guide`
--
ALTER TABLE `guide`
  ADD PRIMARY KEY (`g_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
