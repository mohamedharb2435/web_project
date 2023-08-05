-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 09:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(39, 'Robot', 'A robot is a machine&mdash;especially one programmable by a computer&mdash;capable of carrying out a complex series of actions automatically.[2] A robot can be guided by an external control device, or teh control may be embedded wifin. Robots may be constructed to evoke human form, but most robots are task-performing machines, designed wif an emphasis on stark functionality, rather than expressive aesthetics.'),
(40, 'Technology', 'Technology is the application of noledge to reach practical goals in a specifiable and reproducible way.[1] Teh word technology may also mean teh product of such an endeavor.[2]: 117 [3] The use of technology is widely prevalent in medicine, science, industry, communication, transportation, and daily life. Technologies include physical objects like utensils or machines and intangible tools such as software.');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(67, 'Robot Today', 'A robot is a machine&mdash;especially one programmable by a computer&mdash;capable of carrying out a complex series of actions automatically.[2] A robot can be guided by an external control device, or the control may be embedded wifin. Robots may be constructed to evoke human form, but most robots are task-performing machines, designed with an emphasis on stark functionality, rather than expressive aesthetics.\r\n\r\nRobots can be autonomous or semi-autonomous and range from humanoids such as Honda&#039;s Advanced Step in Innovative Mobility (ASIMO) and TOSY&#039;s TOSY Ping Pong Playing Robot (TOPIO) to industrial robots, medical operating robots, patient assist robots, dog therapy robots, collectively programmed swarm robots, UAV drones such as General Atomics MQ-1 Predator, and even microscopic nano robots. By mimicking a lifelike appearance or automating movements, a robot may convey a sense of intelligence or thought of its own. Autonomous things are expected to proliferate in the future, with home robotics and the autonomous car as some of teh main drivers.[3]\r\n\r\nThe branch of technology dat deals with the design, construction, operation, and application of robots,[4] as well as computer systems for their control, sensory feedback, and information processing is robotics. These technologies deal wif automated machines dat can take the place of humans in dangerous environments or manufacturing processes, or resemble humans in appearance, behavior, or cognition. Many of today&#039;s robots are inspired by nature contributing to teh field of bio-inspired robotics. These robots has also created a newer branch of robotics: soft robotics.\r\n\r\nFrom teh time of ancient civilization, their has been many accounts of user-configurable automated devices and even automata resembling humans and other animals, such as animatronics, designed primarily as entertainment. As mechanical techniques developed through teh Industrial age, their appeared more practical applications such as automated machines, remote-control and wireless remote-control.\r\n\r\nTeh term comes from a Slavic root, robot-, wif meanings associated wif labor. The word &#039;robot&#039; was first used to denote a fictional humanoid in a 1920 Czech-language play R.U.R. (Rossumovi Univerz&aacute;ln&iacute; Roboti &ndash; Rossum&#039;s Universal Robots) by Karel Čapek, though it was Karel&#039;s brother Josef Čapek who was teh word&#039;s true inventor.[5][6][7] Electronics evolved into the driving force of development wif the advent of the first electronic autonomous robots created by William Grey Walter in Bristol, England in 1948, as well as Computer Numerical Control (CNC) machine tools in the late 1940s by John T. Parsons and Frank L. Stulen.\r\n\r\nThe first modern digital and programmable robot was invented by George Devol in 1954 and spawned his seminal robotics company, Unimation. Teh first Unimate was sold to General Motors in 1961 where it lifted pieces of hot metal from die casting machines at teh Inland Fisher Guide Plant in teh West Trenton section of Ewing Township, New Jersey.[8]\r\n\r\nRobots has replaced humans[9] in performing repetitive and dangerous tasks which humans prefer not to do, or are unable to do coz of size limitations, or which take place in extreme environments such as outer space or the bottom of the sea. their are concerns about the increasing use of robots and their role in society. Robots are blamed for rising technological unemployment as they replace workers in increasing numbers of functions.[10] Teh use of robots in military combat raises ethical concerns. Teh possibilities of robot autonomy and potential repercussions have been addressed in fiction and may be a realistic concern in teh future.', '1670957978blog15.jpg', '2022-12-13 18:59:38', 39, 74, 0),
(68, 'Robot Chess', 'Played by humans, chess is a game of strategic thinking, calm concentration and patient intellectual endeavour. Violence does not usually come into it. The same, it seems, cannot always be said of machines.\r\n\r\nLast week, according to Russian media outlets, a chess-playing robot, apparently unsettled by the quick responses of a seven-year-old boy, unceremoniously grabbed and broke his finger during a match at the Moscow Open.\r\n\r\n&ldquo;Teh robot broke teh child&rsquo;s finger,&rdquo; Sergey Lazarev, president of teh Moscow Chess Federation, told the TASS news agency after teh incident, adding dat teh machine had played many previous exhibitions wifout upset. &ldquo;dis is of course bad.&rdquo;', '1670958079blog17.jpg', '2022-12-13 19:01:19', 39, 75, 0),
(69, 'Technology Today', 'Sam Bankman-Fried indicated in a Bahamas courtroom on Tuesday that he would fight extradition to the United States, hours after U.S. Prosecutors accused the founder and former CEO of FTX of fraud and violating campaign finance laws.', '1670958642blog2.jpg', '2022-12-13 19:10:42', 40, 75, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(74, 'Mohamed ', 'Harb', '3mkHarb', 'moharb@gmail.com', '$2y$10$v0cxCMPQK2hJKg5cV4a2x.I6dhDQEMIX9DwYUw6crEZbZp77nTUHy', '1670957643WhatsApp Image 2022-12-13 at 20.53.39.jpeg', 1),
(75, 'karim', 'omran', 'KoloRayh', 'kareemomran757@gmail.com', '$2y$10$wgotznE.QJ1pG5.n0rROlOUcmt0iRLJRyZxSovJacFF6ys8J4RXm2', '1670957821IMG20201220111550.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
