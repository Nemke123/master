-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 14, 2019 at 09:18 PM
-- Server version: 5.6.44-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `author` varchar(50) NOT NULL,
  `text` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `author`, `text`, `post_id`) VALUES
(4, 'user1', 'Good Job Admin!', 16),
(5, 'admin', 'Good Job User1!', 17),
(6, 'admin', 'Thank you, user1!', 16);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `body` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `author`, `created_at`) VALUES
(17, 'Hello blog', 'Hello blog, this is the first post from user1.', '5', '2019-08-15 00:00:00'),
(16, 'Another Post', 'This is another post, also posted by admin, just for testing.', '4', '2019-08-15 00:00:00'),
(15, 'First Post', 'This is the first post on this blog, posted by admin.', '4', '2019-08-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(5, 'user1', '$2y$10$GmTCXzmmb81cXxb9fSKpI.WdAoPqvQLPOpVdFAhlzRppNNg1wUl/u', '2019-08-14 20:21:07'),
(4, 'admin', '$2y$10$0x2MP0IU7ckDPxQ8H/M1C.f8ANiqnztEzimVDV5i4djRFqU1btr2S', '2019-08-14 20:19:18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
