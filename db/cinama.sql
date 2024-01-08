-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 04:31 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinama`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(25) NOT NULL,
  `type` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `password`, `first_name`, `last_name`, `email`, `type`) VALUES
(1, '$2y$10$WbpA9kwzCwqAq3AIlItRieb0hrp5yXDgwpnOLgUYul1MpfJSk1wjS', 'damish', 'nisal', 'admin@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(30) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `password`, `first_name`, `last_name`, `email`, `city`, `contact_no`, `type`) VALUES
(7, '$2y$10$ByJ0oqIR1MOsTvWP9QH4EenHzUGjJjUJlB7bvIpLxHoEe00PKMC.2', 'Janani', 'Jayasuriya', 'jananijayasuriya330@gmail.com', 'Galle', 712349876, 1);

-- --------------------------------------------------------

--
-- Table structure for table `day_ schedule`
--

CREATE TABLE `day_ schedule` (
  `id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `1_slot` int(11) NOT NULL,
  `2_slot` int(11) NOT NULL,
  `3_slot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day_ schedule`
--

INSERT INTO `day_ schedule` (`id`, `day`, `1_slot`, `2_slot`, `3_slot`) VALUES
(1, 'mon', 0, 0, 0),
(2, 'mon', 0, 0, 1),
(3, 'mon', 0, 1, 0),
(4, 'mon', 1, 0, 0),
(5, 'mon', 0, 1, 1),
(6, 'mon', 1, 0, 1),
(7, 'mon', 1, 1, 0),
(8, 'mon', 1, 1, 1),
(9, 'tue', 0, 0, 0),
(10, 'tue', 0, 0, 1),
(11, 'tue', 0, 1, 0),
(12, 'tue', 1, 0, 0),
(13, 'tue', 0, 1, 1),
(14, 'tue', 1, 0, 1),
(15, 'tue', 1, 1, 0),
(16, 'tue', 1, 1, 1),
(17, 'wed', 0, 0, 0),
(18, 'wed', 0, 0, 1),
(19, 'wed', 0, 1, 0),
(20, 'wed', 1, 0, 0),
(21, 'wed', 0, 1, 1),
(22, 'wed', 1, 0, 1),
(23, 'wed', 1, 1, 0),
(24, 'wed', 1, 1, 1),
(25, 'thu', 0, 0, 0),
(26, 'thu', 0, 0, 1),
(27, 'thu', 0, 1, 0),
(28, 'thu', 1, 0, 0),
(29, 'thu', 0, 1, 1),
(30, 'thu', 1, 0, 1),
(31, 'thu', 1, 1, 0),
(32, 'thu', 1, 1, 1),
(33, 'fri', 0, 0, 0),
(34, 'fri', 0, 0, 1),
(35, 'fri', 0, 1, 0),
(36, 'fri', 1, 0, 0),
(37, 'fri', 0, 1, 1),
(38, 'fri', 1, 0, 1),
(39, 'fri', 1, 1, 0),
(40, 'fri', 1, 1, 1),
(41, 'sat', 0, 0, 0),
(42, 'sat', 0, 0, 1),
(43, 'sat', 0, 1, 0),
(44, 'sat', 1, 0, 0),
(45, 'sat', 0, 1, 1),
(46, 'sat', 1, 0, 1),
(47, 'sat', 1, 1, 0),
(48, 'sat', 1, 1, 1),
(49, 'sun', 0, 0, 0),
(50, 'sun', 0, 0, 1),
(51, 'sun', 0, 1, 0),
(52, 'sun', 1, 0, 0),
(53, 'sun', 0, 1, 1),
(54, 'sun', 1, 0, 1),
(55, 'sun', 1, 1, 0),
(56, 'sun', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `release_date` date NOT NULL,
  `director_name` varchar(50) NOT NULL,
  `language` varchar(255) NOT NULL,
  `on_screening` tinyint(1) NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  `votes` int(5) NOT NULL DEFAULT 1982,
  `imbm` int(2) NOT NULL DEFAULT 5,
  `duration` int(11) DEFAULT 120
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movie_id`, `name`, `release_date`, `director_name`, `language`, `on_screening`, `description`, `url`, `votes`, `imbm`, `duration`) VALUES
(1, 'BIG MAGIC', '2022-05-10', 'Elizabeth Gilbert', 'English', 1, 'Readers of all ages and walks of life have drawn inspiration and empowerment from Elizabeth Gilbert’s books for years.', './image/movies/M1.jpeg', 1982, 5, 2),
(2, 'Ten Thousand Skies Above You', '2022-05-17', 'Claudia Gray', 'English', 1, 'The hunt for each splinter of Paul\'s soul sends Marguerite racing through\n                        a war-torn San Francisco.', './image/movies/M2.jpg', 1982, 5, 2),
(3, 'Bridge of Spies', '2022-05-16', 'Ruth Ozeki', 'English', 1, 'In Tokyo, sixteen-year-old Nao has decided there’s only one escape from her aching loneliness and her classmates’ bullying.', './image/movie_1.jpg', 1982, 5, 2),
(4, 'Bachchhan Paandey', '2022-05-16', 'F.Scott Fitzgerald', 'Tamil', 1, 'The Great Gatsby, F. Scott Fitzgerald’s third book, stands as the supreme achievement of his career.', './image/M4.jpg', 156, 5, 2),
(5, 'The Trip', '2022-05-04', 'Elizabeth Gilbert', 'Tamil', 1, 'A dysfunctional couple head to a remote cabin to reconnect, but each has intentions to kill the other. Before they can carry out their plans, unexpected visitors arrive and they face a greater danger', './image/T1.webp', 566, 8, 2),
(6, 'Bhoot Police', '2022-02-01', 'Ruth Ozeki', 'Tamil', 1, 'Two brothers, Vibhooti (Saif Ali Khan)) and Chiraunji (Arjun Kapoor) run an exorcist business and together travel all over the country. They are famous as Ullat Baba and sons, though know nothing about supernatural beings and exorcism and thrive only on the superstitions of people', './image/T2.jpg', 1982, 9, 2),
(7, 'Batman and Superman', '2022-05-04', 'Ruth Ozeki', 'English', 1, 'Batman v Superman: Dawn of Justice is the first live-action film to feature Batman and Superman together, as well as the first live-action cinematic portrayal of Wonder Woman. In the film, criminal mastermind Lex Luthor manipulates Batman into a preemptive battle with Superman, with whom Luthor is obsessed.', './image/T3.jpg', 1982, 9, 2),
(15, 'Gori', '2022-05-03', 'rgehhh', 'English', 2, 'feerg ', './image/movies/rerrehg.jpg', 1982, 23, 130),
(16, 'Happy Birthday', '2022-05-23', 'Aruna Jayawardena', 'Sinhala', 1, 'Nita Saparamadu with her two daughters, Natalie and Venuki arrive at her late father’s estate bungalow to finalize matters connected to the estate settlement. Natalie who turns 18 looks forward to a simple celebration with her family later that day. Though they miss their grandmother, the sisters are eager to know what their grandfather has left them.  Upon entering the house, they are unable to locate their maid & feel a strange presence around the house. Mother and the two daughters try to settle in, but their peace is shattered soon when they get surrounded by a gang of strangers.', './image/movies/Happy_Birthday.jpg', 1982, 10, 7),
(18, 'Ashawari', '2022-05-02', 'Theja Iddamalgoda', 'Sinhala', 1, 'The film revolves around Ranesh Singhawansha, a young man from a very wealthy family in the upcountry. While training at the Diyatalawa Military Academy, he started a love affair with the youngest daughter of the Ohiya Station Master called \"Ashavari\". The film flows with the conflict between the two families.', './image/movies/Ashawari.jpg', 1982, 9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `movie_theater`
--

CREATE TABLE `movie_theater` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `theater_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_theater`
--

INSERT INTO `movie_theater` (`id`, `movie_id`, `theater_id`) VALUES
(22, 16, 13),
(23, 1, 11),
(24, 6, 11),
(25, 16, 11),
(26, 15, 15),
(27, 16, 15),
(28, 15, 14),
(29, 3, 16),
(30, 1, 16),
(31, 16, 16),
(32, 6, 16),
(33, 5, 16),
(34, 7, 16),
(35, 4, 11);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `amount` int(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `shedule`
--

CREATE TABLE `shedule` (
  `schedule_id` int(11) NOT NULL,
  `monday` int(11) NOT NULL,
  `tuesday` int(11) NOT NULL,
  `wednesday` int(11) NOT NULL,
  `thursday` int(11) NOT NULL,
  `friday` int(11) NOT NULL,
  `saturday` int(11) NOT NULL,
  `sunday` int(11) NOT NULL,
  `no_of_showing_dates` int(3) NOT NULL DEFAULT 90,
  `date_start` date NOT NULL,
  `movie_id` int(11) NOT NULL,
  `theater_id` int(11) NOT NULL,
  `is_showing` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shedule`
--

INSERT INTO `shedule` (`schedule_id`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`, `no_of_showing_dates`, `date_start`, `movie_id`, `theater_id`, `is_showing`) VALUES
(20, 8, 13, 17, 27, 40, 45, 49, 5, '2022-05-22', 16, 13, 1),
(21, 8, 16, 24, 29, 39, 45, 53, 8, '2022-05-20', 1, 11, 1),
(22, 1, 9, 23, 29, 39, 47, 49, 4, '2022-05-24', 6, 11, 1),
(23, 7, 13, 22, 29, 40, 41, 49, 5, '2022-05-23', 16, 11, 1),
(24, 1, 16, 23, 29, 38, 41, 49, 4, '2022-05-23', 15, 15, 1),
(25, 4, 12, 21, 27, 33, 41, 49, 4, '2022-05-11', 16, 15, 1),
(26, 6, 13, 22, 29, 39, 45, 54, 7, '2022-05-25', 15, 14, 1),
(27, 7, 13, 22, 27, 33, 41, 49, 4, '2022-05-22', 3, 16, 1),
(28, 4, 11, 23, 29, 38, 41, 49, 5, '2022-05-25', 1, 16, 1),
(29, 6, 13, 24, 29, 39, 42, 56, 7, '2022-05-18', 16, 16, 1),
(30, 4, 15, 24, 29, 35, 46, 49, 6, '2022-05-23', 6, 16, 1),
(31, 8, 16, 24, 25, 33, 41, 49, 3, '2022-05-23', 5, 16, 1),
(32, 6, 14, 22, 29, 39, 48, 49, 6, '2022-06-01', 7, 16, 1),
(33, 7, 13, 23, 29, 40, 41, 49, 5, '2022-05-31', 4, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `theater_owner`
--

CREATE TABLE `theater_owner` (
  `theater_id` int(50) NOT NULL,
  `theater_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `contact_no` int(10) NOT NULL,
  `no_balcony_seats` int(5) NOT NULL,
  `no_odc_seats` int(5) NOT NULL,
  `no_of_box` int(5) NOT NULL,
  `open_time` datetime NOT NULL,
  `type` int(2) NOT NULL DEFAULT 2,
  `isReg` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `theater_owner`
--

INSERT INTO `theater_owner` (`theater_id`, `theater_name`, `email`, `password`, `location`, `contact_no`, `no_balcony_seats`, `no_odc_seats`, `no_of_box`, `open_time`, `type`, `isReg`) VALUES
(11, 'Savoy Cinema', 'savoy@gmail.com', '$2y$10$w8GYz.P/dFBQmQ4dRfFA2uzkz2934N/qIp2H64JCRwgRLwXYSJq2C', 'Colombo', 912256789, 20, 50, 8, '2022-05-10 08:35:50', 2, 1),
(12, 'Majestic Cineplex', 'majestic@gmail.com', '$2y$10$u0ZuUg5FZ9bzG2P0bLeNaej0mCVYhRYG7pXpM2nAAfoaWyRNDdYPO', 'Colombo', 712567001, 30, 70, 10, '2022-05-10 08:35:50', 2, 1),
(13, 'City Cinema', 'citycinema@gmail.com', '$2y$10$1bu4CFi6R0N.GjyZKLGfdOyZpdwCx1YjuAFy0z7xF8e7sHBwdhuci', 'Negombo', 786546781, 40, 60, 4, '2022-05-10 08:35:50', 2, 1),
(14, 'KCC Multiplex', 'kccmultiplex@gmail.com', '$2y$10$d0z1zfXHzZUroR3VMBCBZuWcSAtT.CL91YjSt2vwuXUkL62fZNLf.', 'Kandy', 786542727, 20, 60, 6, '2022-05-10 08:35:50', 2, 1),
(15, 'Sinexpo', 'sinexpo@gmail.com', '$2y$10$zFYy/B5CPKTXLRt7UdtFU.DULQdEyl3jyFMDmaPsg3CJAxF16Ss4a', 'Kurunegala', 914567891, 20, 50, 4, '2022-05-10 08:35:50', 2, 1),
(16, 'Queens', 'queens@gmail.com', '$2y$10$FlUa10DweCltjUO5U4.Mj.AwVL2sbMq126.9yHVcghmzr2nPnvJyi', 'Galle', 765660002, 40, 70, 4, '2022-05-10 08:35:50', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `no_balcony_seats` int(10) NOT NULL DEFAULT 0,
  `no_odc_seats` int(11) NOT NULL DEFAULT 0,
  `no_of_box` int(11) NOT NULL DEFAULT 0,
  `show_time` int(11) NOT NULL,
  `show_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `theater_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `no_balcony_seats`, `no_odc_seats`, `no_of_box`, `show_time`, `show_date`, `customer_id`, `movie_id`, `theater_owner`) VALUES
(19, 0, 4, 0, 2, '2022-05-26', 7, 16, 16),
(20, 0, 2, 0, 1, '2022-05-26', 7, 3, 16),
(21, 2, 3, 0, 1, '2022-05-25', 7, 5, 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `day_ schedule`
--
ALTER TABLE `day_ schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `movie_theater`
--
ALTER TABLE `movie_theater`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movie_mton` (`movie_id`),
  ADD KEY `fk_theater_mton` (`theater_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `fk_movie_theater_id` (`movie_id`),
  ADD KEY `fk_theater_schedule` (`theater_id`);

--
-- Indexes for table `theater_owner`
--
ALTER TABLE `theater_owner`
  ADD PRIMARY KEY (`theater_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `fk_customer` (`customer_id`),
  ADD KEY `fk_movie_ticket` (`movie_id`),
  ADD KEY `fk_theater` (`theater_owner`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `day_ schedule`
--
ALTER TABLE `day_ schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `movie_theater`
--
ALTER TABLE `movie_theater`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shedule`
--
ALTER TABLE `shedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `theater_owner`
--
ALTER TABLE `theater_owner`
  MODIFY `theater_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_theater`
--
ALTER TABLE `movie_theater`
  ADD CONSTRAINT `fk_movie_mton` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_theater_mton` FOREIGN KEY (`theater_id`) REFERENCES `theater_owner` (`theater_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `shedule`
--
ALTER TABLE `shedule`
  ADD CONSTRAINT `fk_movie_theater_id` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_theater_schedule` FOREIGN KEY (`theater_id`) REFERENCES `theater_owner` (`theater_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_movie_ticket` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_theater` FOREIGN KEY (`theater_owner`) REFERENCES `theater_owner` (`theater_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
