-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 18, 2021 at 02:27 AM
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
(1, 'interstellar.svg', 'Interstellar ', '(2014)', '2h 45m', 'Earth’s future has been riddled by \r\ndisasters, famines, and droughts. There \r\nis only one way to ensure mankind’s \r\nsurvival: Interstellar travel. A newly \r\ndiscovered wormhole in the far reaches of \r\nour solar system allows a team of \r\nastronauts to go where no man has gone \r\nbefore, a planet that may have the right \r\nenvironment to sustain human life.', 'interstellar.mp4', 'Christopher Nolan', 'Jonathan Nolan', 'Matthew McConaughey, \r\nAnne Hathaway, Jessica Chastain '),
(2, 'thelord.svg', 'The Lord of the Rings: The Return \r\nof the King', '(2003)', '3h 21min', 'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'the_lord_of_the_rings.mp4', 'Peter Jackson', 'Fran Walsh', 'Elijah Wood, Viggo Mortensen, Ian McKellen '),
(3, 'intouchable.svg', 'The Intouchables', '(2011)', ' 1h 52min', 'After he becomes a quadriplegic from a paragliding accident, an aristocrat hires a young man from the projects to be his caregiver.', 'the_intouchables.mp4', 'Olivier Nakache, Éric Toledano', 'Olivier Nakache, Philippe Pozzo di Borgo ', 'François Cluzet, Omar Sy, Anne Le Ny'),
(4, 'leon.svg', 'Léon: The Professional ', '(1994)', ' 1h 50min', 'Mathilda, a 12-year-old girl, is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée and learns the assassin\'s trade.', 'leon.mp4', 'Luc Besson', 'Luc Besson', 'Jean Reno, Gary Oldman, Natalie Portman'),
(5, 'shoushenk.svg', 'The Shawshank Redemption ', '(1994)', '2h 22min', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'the_shawshank_redemption.mp4', 'Frank Darabont', 'Frank Darabont ', 'Tim Robbins, Morgan Freeman, Bob Gunton'),
(6, 'harry_potter.svg', 'Harry Potter and the Chamber of Secrets', '2002', '2h 41m', 'An ancient prophecy seems to be coming true when a mysterious presence begins stalking the corridors of a school of magic and leaving its victims paralyzed.', 'harry_potter.mp4', 'Chris Columbus', 'J.K. Rowling (novel), Steve Kloves (screenplay)', 'Daniel Radcliffe, Rupert Grint, Emma Watson'),
(7, 'home_alone.svg', 'Home Alone', '1990', '1h 43min', 'An eight-year-old troublemaker must protect his house from a pair of burglars when he is accidentally left home alone by his family during Christmas vacation.', 'home_alone.mp4', 'Chris Columbus', 'John Hughes', 'Macaulay Culkin, Joe Pesci, Daniel Stern'),
(8, 'howl\'s_moving_castle.svg', 'Howl\'s Moving Castle', '2004', ' 1h 59min', 'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.', 'howl\'s_moving_castle.mp4', 'Hayao Miyazaki', 'Hayao Miyazaki, Diana Wynne Jones', 'Chieko Baishô, Takuya Kimura, Tatsuya Gashûin'),
(9, 'coco.svg', 'Coco', '2017', '1h 45min', 'Aspiring musician Miguel, confronted with his family\'s ancestral ban on music, enters the Land of the Dead to find his great-great-grandfather, a legendary singer.', 'coco.mp4', 'Lee Unkrich, Adrian Molina (co-director)', 'Lee Unkrich, Jason Katz ', 'Anthony Gonzalez, Gael García Bernal, Benjamin Bratt'),
(10, 'paddington.svg', 'Paddington', '2014', ' 1h 35min', 'A young Peruvian bear travels to London in search of a home. Finding himself lost and alone at Paddington Station, he meets the kindly Brown family, who offer him a temporary haven.', 'paddington.mp4', 'Paul King', ' Paul King, Hamish McColl ', 'Hugh Bonneville, Sally Hawkins, Julie Walters ');

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
(2, 'Fuck Sleep', 'A$AP ROCKY', 'Testing', '2018', 'default.jpg', 'Fuck \'em, fuck sleep, come clean, zonin\'\r\nCan\'t forget that I\'m golden, can\'t forget where I\'m going\r\nFuck popo, police, enemies, fake homies\r\nCan\'t forget that I\'m a OG, better act like you know it\r\nBlunt smoke, smoke weed, codeine, cough\r\nTell that bitch that I\'m awesome, better back the fuck up off me\r\nCoco, Celine, Tiffany, she flossy\r\nAin\'t concerned with who worthy, can\'t forget that she bossy', 'ASAP_Rocky_Testing.svg'),
(3, 'Abbey Road', 'The Beatles', 'Here comes the sun', '1969', 'Beatles_Abbey_Road.mp4', 'Here comes the sun do, do, do\r\nHere comes the sun\r\nAnd I say it\'s all right\r\nLittle darling, it\'s been a long cold lonely winter\r\nLittle darling, it seems like years since it\'s been here\r\nHere comes the sun do, do, do\r\nHere comes the sun\r\nAnd I say it\'s all right\r\nLittle darling, the smiles returning to the faces\r\nLittle darling, it feels like years since it\'s been here\r\nHere comes the sun do, do, do', 'Beatles_Abbey_Road.svg'),
(4, 'Joanne', 'Lady Gaga', 'Joanne', '2016', 'Lady_Gaga_-Joanne(Official_Album_Cover).mp4', 'Take my hand, stay Joanne\r\nHeaven\'s not ready for you\r\nEvery part of my aching heart\r\nNeeds you more than the angels do\r\nGirl, where do you think you\'re goin\'?\r\nWhere do you think you\'re goin\'\r\nGoin\', girl?\r\nGirl, where do you think you\'re goin\'?\r\nWhere do you think you\'re goin\'\r\nGoin\', girl?', 'Lady_Gaga_-Joanne(Official_Album_Cover).svg'),
(5, 'Jumpsuit', 'Twenty One Pilots', 'Trench ', '2018', 'Trench_Twenty_One_Pilots.mp4', 'Cover me, oh\r\nI can\'t believe how much I hate\r\nPressures of a new place roll my way\r\nJumpsuit, jumpsuit, cover me\r\nJumpsuit, jumpsuit, cover me\r\nI crumble underneath the weight\r\nPressures of a new place roll my way\r\nJumpsuit, jumpsuit, cover me\r\nJumpsuit, jumpsuit, cover me', 'Trench_Twenty_One_Pilots.svg'),
(6, 'Test Drive', 'John Powell', 'How To Train Your Dragon', '2011', 'how_to_train_the_dragon.mp4', '', 'how_to_train_the_dragon.svg'),
(7, 'Faith', 'Stevie Wonder feat Ariana Grande', 'Sing', '2016', 'sing_meena_sings.mp4', 'Yes I do, mmm\r\nI get around ya and my mind goes crazy\r\nI think about you mornin\', noon, night and day\r\nI get around ya and my mind goes crazy\r\nI think about you mornin\', noon, night and day\r\nI get around you and my mind goes crazy\r\nI think about you mornin\', noon, night and day\r\nI got faith in you, honey\r\nI got faith in you, girl\r\nI met you, hallelujah\r\nI got faith in you, baby\r\nI got faith in you now\r\nAnd you\'ve been such a, such a good friend to me\r\nKnow that I love you somehow (love you somehow)\r\nI met you, hallelujah, I got faith\r\n(Faith, faith, baby)\r\nI got faith in you, baby\r\nI got faith in you now\r\nAnd you\'ve been such a, such a good friend to me\r\nKnow that I love you somehow (yes I do)\r\nI met you, hallelujah\r\nI met you, hallelujah\r\nI met you, hallelujah, I got faith', 'sing_meena_sings.svg'),
(8, 'Happy', 'Pharrell Williams', 'Despicable Me ', '2013', 'despicable_me.mp4', 'Hey, come on, uh (Happy)\r\nBring me down, can\'t nuthin\' (Happy)\r\nBring me down, my level is too high (Happy)\r\nTo bring me down, can\'t nuthin\' (Happy)\r\nBring me down I said, let me tell you now\r\n(Happy, Happy, Happy, Happy) bring me down, can\'t nuthin\'\r\n(Happy, Happy, Happy, Happy) bring me down, my level is too high\r\n(Happy, Happy, Happy, Happy) to bring me down, can\'t nuthin\'\r\n(Happy, Happy, Happy, Happy) bring me down, I said\r\nBecause I\'m Happy\r\nClap along if you feel like a room without a roof\r\nBecause I\'m Happy\r\nClap along if you feel like happiness is the truth\r\nBecause I\'m Happy\r\nClap along if you know what happiness is to you\r\nBecause I\'m Happy\r\nClap along if you feel like that\'s what you wanna do', 'despicable_me.svg'),
(9, 'Let it go', 'Demi Lovato', 'Frozen ', '2013', 'frozen.mp4', 'Let it go, let it go\r\nCan\'t hold it back anymore\r\nLet it go, let it go\r\nTurn away and slam the door\r\nI don\'t care what they\'re going to say\r\nLet the storm rage on\r\nThe cold never bothered me anyway\r\nIt\'s funny how some distance makes everything seem small\r\nAnd the fears that once controlled me can\'t get to me at all\r\nIt\'s time to see what I can do\r\nTo test the limits and break through\r\nNo right, no wrong, no rules for me\r\nI\'m free', 'frozen.svg'),
(10, 'Fireworks', 'Katy Perry', 'Madagascar ', '2012', 'madagascar.mp4', 'Do you ever feel like a plastic bag\r\nDrifting through the wind\r\nWanting to start again?\r\nDo you ever feel, feel so paper thin\r\nLike a house of cards\r\nOne blow from caving in?\r\nDo you ever feel already buried deep?\r\nSix feet under screams, but no one seems to hear a thing\r\nDo you know that there\'s still a chance for you\r\n\'Cause there\'s a spark in you\r\nYou just gotta ignite the light, and let it shine\r\nJust own the night like the 4th of July\r\n\'Cause, baby, you\'re a firework\r\nCome on, show \'em what you\'re worth\r\nMake \'em go, \"Oh, oh, oh\"\r\nAs you shoot across the sky\r\nBaby, you\'re a firework\r\nCome on, let your colors burst\r\nMake \'em go, \"Oh, oh, oh\"\r\nYou\'re gonna leave \'em all in awe, awe, awe\r\nYou don\'t have to feel like a waste of space\r\nYou\'re original, cannot be replaced\r\nIf you only…', 'madagascar.svg');

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
(5, 'gameofthrones.svg', 'Game of Thrones ', '(2011–2019)', '57min', 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'trailer_default.jpg', 'David Benioff, D.B. Weiss', 'Emilia Clarke, Peter Dinklage, Kit Harington'),
(6, 'adventure_time.svg', 'Adventure Time', '(2010-2018)', '11 min', 'A 12-year-old boy and his best friend, wise 28-year-old dog with magical powers, go on a series of surreal adventures with each other in a remote future.', 'adventure_time.mp4', 'Pendleton Ward', 'John DiMaggio, Jeremy Shada, Tom Kenny'),
(7, 'gravity_falls.svg', 'Gravity Falls', '(2012–2016 )', '24 min', 'Twin siblings Dipper and Mabel Pines spend the summer at their great-uncle\'s tourist trap in the enigmatic Gravity Falls, Oregon.', 'gravity_falls.mp4', 'Alex Hirsch', ' Jason Ritter, Alex Hirsch, Kristen Schaal '),
(8, 'phineas.svg', 'Phineas and Ferb', '(2007–2015)', ' 22 min', 'Phineas and Ferb invent, scheme, and stay one step ahead of their bratty sister. Meanwhile, their pet platypus plots against evil Dr. Doofenshmirtz.', 'phineas.mp4', 'Dan Povenmire, Jeff \'Swampy\' Marsh', 'Vincent Martella, Thomas Brodie-Sangster, Dan Povenmire '),
(9, 'klaus.svg', 'Klaus', '2019', '22', 'A simple act of kindness always sparks another, even in a frozen, faraway place. When Smeerensburg\'s new postman, Jesper, befriends toymaker Klaus, their gifts melt an age-old feud and deliver a sleigh full of holiday traditions.', 'klaus.mp4', 'Sergio Pablos, Carlos Martínez López', 'Jason Schwartzman, J.K. Simmons, Rashida Jones '),
(10, 'sponge_bob.svg', 'SpongeBob SquarePants', '(1999- )', '11', 'The misadventures of a talking sea sponge who works at a fast food restaurant, attends a boating school, and lives in an underwater pineapple.', 'sponge_bob.mp4', 'Stephen Hillenburg, Tim Hill, Nick Jennings', 'Tom Kenny, Bill Fagerbakke, Rodger Bumpass ');

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
  `user_access` tinyint(4) DEFAULT NULL,
  `user_avatar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_fname`, `user_name`, `user_pass`, `user_email`, `user_date`, `user_ip`, `user_admin`, `user_access`, `user_avatar`) VALUES
(1, 'trevor', 'user1', 'password', 't@t.com', '2019-02-01 19:07:35', '::1', 1, 5, 'account_adult.svg'),
(2, 'Jane', 'user2', 'password', 'j@j.ca', '2021-04-17 19:53:05', 'no', 0, 3, 'account_kids.svg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  ADD PRIMARY KEY (`movies_id`);

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
-- AUTO_INCREMENT for table `tbl_movies`
--
ALTER TABLE `tbl_movies`
  MODIFY `movies_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_music`
--
ALTER TABLE `tbl_music`
  MODIFY `music_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_tv`
--
ALTER TABLE `tbl_tv`
  MODIFY `tv_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
