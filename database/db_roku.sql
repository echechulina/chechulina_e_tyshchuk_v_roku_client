-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 15, 2021 at 03:25 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_roku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_arating`
--

CREATE TABLE `tbl_arating` (
  `arating_id` smallint(5) UNSIGNED NOT NULL,
  `arating_name` varchar(125) NOT NULL,
  `arating_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_arating`
--

INSERT INTO `tbl_arating` (`arating_id`, `arating_name`, `arating_desc`) VALUES
(1, 'G', 'G – General Audiences\r\nAll ages admitted. Nothing that would offend parents for viewing by children. '),
(2, 'PG', 'PG – Parental Guidance Suggested\r\nSome material may not be suitable for children. Parents urged to give  	&ldquo;parental guidance&rdquo;. '),
(3, 'PG-13', 'PG-13 – Parents Strongly Cautioned\r\nSome material may be inappropriate for children under 13. Parents are urged to be cautious. Some material may be inappropriate for pre-teenagers.'),
(4, 'R', 'R – Restricted\r\nUnder 17 requires accompanying parent or adult guardian. Contains some adult material. Parents are urged to learn more about the film before taking their young children with them. '),
(5, 'NC-17', 'NC-17 – Adults Only\r\nNo One 17 and Under Admitted. Clearly adult. Children are not admitted. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_genre`
--

CREATE TABLE `tbl_genre` (
  `genre_id` tinyint(3) UNSIGNED NOT NULL,
  `genre_name` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_genre`
--

INSERT INTO `tbl_genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Comedy'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Historical'),
(7, 'Horror'),
(8, 'Musical'),
(9, 'Science Fiction'),
(10, 'War'),
(11, 'Western'),
(12, 'Animation'),
(13, 'Family'),
(14, 'Fantasy'),
(15, 'Romance'),
(16, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_movies`
--

CREATE TABLE `tbl_movies` (
  `movies_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `movies_title` varchar(125) NOT NULL,
  `movies_year` varchar(6) NOT NULL,
  `movies_runtime` varchar(25) NOT NULL,
  `movies_storyline` text NOT NULL,
  `movies_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `movies_director` varchar(125) NOT NULL,
  `movies_screenwriter` varchar(50) NOT NULL,
  `movies_cast` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_movies`
--

INSERT INTO `tbl_movies` (`movies_id`, `movies_cover`, `movies_title`, `movies_year`, `movies_runtime`, `movies_storyline`, `movies_trailer`, `movies_director`, `movies_screenwriter`, `movies_cast`) VALUES
(1, 'interstellar.svg', 'Interstellar ', '(2014)', '2h 45m', 'Earth’s future has been riddled by \r\ndisasters, famines, and droughts. There \r\nis only one way to ensure mankind’s \r\nsurvival: Interstellar travel. A newly \r\ndiscovered wormhole in the far reaches of \r\nour solar system allows a team of \r\nastronauts to go where no man has gone \r\nbefore, a planet that may have the right \r\nenvironment to sustain human life.', 'trailer_default.jpg', 'Christopher Nolan', 'Jonathan Nolan', 'Matthew McConaughey, \r\nAnne Hathaway, Jessica Chastain '),
(2, 'thelord.svg', 'The Lord of the Rings: The Return \r\nof the King', '(2003)', '3h 21min', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'trailer_default.jpg', 'Peter Jackson', 'Fran Walsh', 'Elijah Wood, Viggo Mortensen, Ian McKellen '),
(3, 'intouchable.svg', 'The Intouchables', '(2011)', ' 1h 52min', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'trailer_default.jpg', 'Olivier Nakache, Éric Toledano', 'Olivier Nakache, Philippe Pozzo di Borgo ', 'François Cluzet, Omar Sy, Anne Le Ny'),
(4, 'leon.svg', 'Léon: The Professional ', '(1994)', ' 1h 50min', 'Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', 'trailer_default.jpg', 'Luc Besson', 'Luc Besson', 'Jean Reno, Gary Oldman, Natalie Portman'),
(5, 'shoushenk.svg', 'The Shawshank Redemption ', '(1994)', '2h 22min', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'trailer_default.jpg', 'Frank Darabont', 'Frank Darabont ', 'Tim Robbins, Morgan Freeman, Bob Gunton');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mov_genre`
--

CREATE TABLE `tbl_mov_genre` (
  `mov_genre_id` mediumint(8) UNSIGNED NOT NULL,
  `movies_id` mediumint(9) NOT NULL,
  `genre_id` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_mov_genre`
--

INSERT INTO `tbl_mov_genre` (`mov_genre_id`, `movies_id`, `genre_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 9),
(4, 2, 1),
(5, 2, 5),
(6, 2, 6),
(7, 2, 10),
(8, 3, 1),
(9, 3, 5),
(10, 3, 9),
(11, 4, 1),
(12, 4, 2),
(13, 4, 5),
(14, 4, 9),
(15, 5, 8),
(16, 5, 13),
(17, 5, 14),
(18, 6, 5),
(19, 6, 6),
(20, 6, 10),
(21, 7, 1),
(22, 7, 2),
(23, 7, 3),
(24, 7, 15),
(25, 8, 5),
(26, 8, 9),
(27, 9, 3),
(28, 9, 5),
(29, 9, 16),
(30, 10, 14),
(31, 10, 2),
(32, 10, 3),
(33, 10, 8),
(34, 10, 13),
(35, 11, 2),
(36, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_music`
--

CREATE TABLE `tbl_music` (
  `music_id` int(11) NOT NULL,
  `music_track_name` varchar(50) NOT NULL,
  `music_artist` varchar(50) NOT NULL,
  `music_albom` varchar(50) NOT NULL,
  `music_albom_year` varchar(15) NOT NULL,
  `music_video` varchar(50) NOT NULL,
  `music_lyrics` text NOT NULL,
  `music_cover` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_music`
--

INSERT INTO `tbl_music` (`music_id`, `music_track_name`, `music_artist`, `music_albom`, `music_albom_year`, `music_video`, `music_lyrics`, `music_cover`) VALUES
(1, 'Do I Wanna Know?', 'Arctic Monkeys', 'AM', '2013', 'default.jpg', '(Do I wanna know?)\r\nIf this feeling flows both ways?\r\n(Sad to see you go)\r\nWas sort of hoping that you’d stay\r\n(Baby, we both know)\r\nThat the nights were mainly made for saying\r\n things that you can’t say tomorrow day\r\nCrawling back to you\r\n\r\nEver thought of calling when you’ve had a few?\r\n‘Cause I always do\r\nMaybe I’m too busy being yours \r\nto fall for somebody new\r\nNow I’ve thought it through\r\nCrawling back to you', 'Arctic_Monkeys.svg'),
(2, 'Fuck Sleep', 'A$AP ROCKY', 'Testing', '2018', 'default.jpg', 'Fuck \'em, fuck sleep, come clean, zonin\'\r\nCan\'t forget that I\'m golden, can\'t forget where I\'m going\r\nFuck popo, police, enemies, fake homies\r\nCan\'t forget that I\'m a OG, better act like you know it\r\nBlunt smoke, smoke weed, codeine, cough\r\nTell that bitch that I\'m awesome, better back the fuck up off me\r\nCoco, Celine, Tiffany, she flossy\r\nAin\'t concerned with who worthy, can\'t forget that she bossy', 'ASAP_Rocky_Testing.svg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tv`
--

CREATE TABLE `tbl_tv` (
  `tv_id` mediumint(8) UNSIGNED NOT NULL,
  `tv_cover` varchar(75) NOT NULL DEFAULT 'cover_default.jpg',
  `tv_title` varchar(125) NOT NULL,
  `tv_year` varchar(15) NOT NULL,
  `tv_runtime` varchar(25) NOT NULL,
  `tv_storyline` text NOT NULL,
  `tv_trailer` varchar(75) NOT NULL DEFAULT 'trailer_default.jpg',
  `tv_director` varchar(125) NOT NULL,
  `tv_cast` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tv`
--

INSERT INTO `tbl_tv` (`tv_id`, `tv_cover`, `tv_title`, `tv_year`, `tv_runtime`, `tv_storyline`, `tv_trailer`, `tv_director`, `tv_cast`) VALUES
(1, 'witcher.svg', 'The Witcher ', '(2019)', '1h', 'Geralt of Rivia, a solitary monster hunter, struggles to find his place in a world where people often prove more wicked than beasts.', 'trailer_default.jpg', 'Lauren Schmidt', 'Henry Cavill, Freya Allan, Yasen Atour '),
(2, 'friends.svg', 'Friends ', '(1994–2004)', ' 22 min', 'Follows the personal and professional lives of six twenty to thirty-something-year-old friends living in Manhattan.', 'trailer_default.jpg', 'David Crane, Marta Kauffman', 'Jennifer Aniston, Courteney Cox, Lisa Kudrow'),
(3, 'sherlock.svg', 'Sherlock ', '(2010–2017)', ' 1h 28min', 'A modern update finds the famous sleuth and his doctor partner solving crime in 21st century London.', 'trailer_default.jpg', 'Mark Gatiss, Steven Moffat', 'Benedict Cumberbatch, Martin Freeman, Una Stubbs'),
(4, 'stranger_things.svg', 'Stranger Things ', '(2016– )', ' 51min', 'When a young boy disappears, his mother, a police chief and his friends must confront terrifying supernatural forces in order to get him back.', 'trailer_default.jpg', 'Matt Duffer, Ross Duffer', 'Millie Bobby Brown, Finn Wolfhard, Winona Ryder'),
(5, 'gameofthrones.svg', 'Game of Thrones ', '(2011–2019)', '57min', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'trailer_default.jpg', 'David Benioff, D.B. Weiss', 'Emilia Clarke, Peter Dinklage, Kit Harington');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `user_fname` varchar(250) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_pass` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ip` varchar(50) NOT NULL DEFAULT 'no',
  `user_admin` tinyint(4) DEFAULT NULL,
  `user_access` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`) VALUES
(1, 'trevor', 'user1', 'password', 't@t.com', '2019-02-01 19:07:35', '::1', 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  ADD PRIMARY KEY (`arating_id`);

--
-- Indexes for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

--
-- Indexes for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  ADD PRIMARY KEY (`mov_genre_id`);

--
-- Indexes for table `tbl_music`
--
ALTER TABLE `tbl_music`
  ADD PRIMARY KEY (`music_id`);

--
-- Indexes for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  ADD PRIMARY KEY (`tv_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_arating`
--
ALTER TABLE `tbl_arating`
  MODIFY `arating_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_genre`
--
ALTER TABLE `tbl_genre`
  MODIFY `genre_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_mov_genre`
--
ALTER TABLE `tbl_mov_genre`
  MODIFY `mov_genre_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
