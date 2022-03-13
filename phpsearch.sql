SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `phpsearch` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `phpsearch`;

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `article_text` text NOT NULL,
  `article_author` varchar(256) NOT NULL,
  `article_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `articles` (`article_id`, `article_title`, `article_text`, `article_author`, `article_date`) VALUES
(1, 'Homemade Apple Pie', 'This is absolutely the best homemade apple pie you will ever make! It has a flaky, buttery crust and a tender, lightly-spiced apple pie filling. Use a combination of apples for best flavor, and bake until the top is golden and the filling is bubbly!', 'Admin', '2018-10-05 12:35:09'),
(2, 'How to Choose the Right Camera for Video Production', 'In this article, we’ll guide you in choosing the right type of camera for your video production needs. Nowadays, there are several kinds of cameras out there that record high quality video. Some are perfect for travelers. Others are great for online trainers. Some are good for live streaming. Others are great for making short films.', 'Andrey WebDays', '2020-06-17 10:12:30');


ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`);


ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
