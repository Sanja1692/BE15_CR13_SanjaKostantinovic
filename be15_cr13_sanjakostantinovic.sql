-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 12:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr13_sanjakostantinovic`
--
CREATE DATABASE IF NOT EXISTS `be15_cr13_sanjakostantinovic` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr13_sanjakostantinovic`;

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220408092643', '2022-04-08 11:26:51', 39),
('DoctrineMigrations\\Version20220408220805', '2022-04-09 00:08:15', 37),
('DoctrineMigrations\\Version20220408221636', '2022-04-09 00:16:46', 72);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fklocation_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `date`, `description`, `picture`, `capacity`, `email`, `phone`, `url`, `type`, `fklocation_id`) VALUES
(1, 'Divine Comedy', '2022-04-08 11:27:00', 'An epic poem written by Dante in the early fourteenth century, describing the authors journey through the afterlife. It has three parts, each of which is concerned with one of the three divisions of the world beyond: hell, purgatory, and heaven.', 'divine.jpg', 220, 'divinecomedy@org.mail.at', 660444411, 'http://divine/theater/at', 'Theater', 1),
(2, 'Rihanna for You', '2022-07-01 19:00:00', 'Concert for all lovers of Rihanna', 'rihanna.jpg', 500, 'rihanna.vienna@gmail.com', 660242422, 'http://rihanna/vienna/at', 'Music', 2),
(3, 'Salzburg Film Festival', '2022-05-01 10:53:00', 'The Salzburg Festival is the most important festival for opera, music and theatre worldwide. This years highlights will be \'The Magic Flute\'(Mozart) and \'Aida\'(Verdi), amongst others.', 'salzburg.jpg', 1000, 'salzburg@festival.org.at', 660444111, 'http://salzburg/festival.org', 'Theater', 2),
(4, 'Boneca presents: CARNAVAL DO BRASIL', '2022-04-08 08:00:00', 'On April 8th and 9th we are returning to the Leake Street Arches for 2 nights of Carnaval madness. For those of you that have been to a Boneca Carnaval party, you will know what to expect - we are going all out for the party of the year!', 'brasil.jpg', 500, 'carnaval-brasil@mail.com', 660333322, 'http://carnaval/brasil/at', 'Music', 3),
(5, 'Marriott Dinner', '2022-04-08 18:00:00', 'Get ready for the event you\'ve all been waiting for!  We can\'t wait to welcome you 🍾  7:00 Friday Night Services  7:30 Drinks  8:00 Dinner', 'dinner.jpg', 80, 'marriott_dinner@gmail.com', 660222667, 'http://marriott/dinner/at', 'Food', 7),
(6, 'Vivaldi - The Four Seasons by Candlelight', '2022-04-24 18:00:00', 'Prepare yourself for a musical feast in the majestic, glistening, gilded setting of The Grand Temple at Freemasons\' Hall, in the heart of Covent Garden. Sit back and relax as the joys of Vivaldi\'s exuberant \'Four Seasons\' are brought to you by a group of ', 'vivaldi.jpg', 600, 'vivaldy_vienna@mail.at', 660008899, 'http://vivaldi/vienna/at', 'Music', 5),
(7, 'The MildMay Jazz Club', '2022-04-12 21:00:00', 'Deep in the heart of Hackney, a cool, cozy jazz club pops up each week.   Hot jazz, cheap drinks, and the evening flow as London\'s best musicians gather to play the sweetest of jazz music you\'ve ever heard.  Get on the dance floor and swing, pull up a cha', 'jazz-6250ad066404e.jpg', 200, 'jazz.mildmay@gmail.com', 66024441, 'http://jazzmild/may/at', 'Music', 1),
(8, 'Ceramic Art London 2022', '2022-04-10 08:00:00', 'After a sellout in 2019, and two years out, CAL is looking forward to coming back, showcasing contemporary developments in ceramic practise, in addition to our ever-popular Claytalks programme, ceramics bookshop and toolshop and the usual top class select', 'ceramic-6250ae50c1992.jpg', 120, 'ceramic_london@gmail.com', 650654111, 'http://ceramic/london/at', 'Exhibition', 4),
(9, 'Rapid:Dinamo', '2022-07-01 14:00:00', 'Bei diesem Spiel wird es eine Treue-Ticketaktion geben: jedes Mitglied, Greeniemitglied und jeder Abonnent kann sich eine Freikarte buchen sowie eine weitere Karte um -50% erwerben.  Abonnenten, die gleichzeitig auch Mitglieder sind, können demnach zwei F', 'allianz-6250afa1bc1a6.jpg', 10000, 'rapidtickets@mail.com', 660111441, 'http://rapid/dinamo/at', 'Sport', 6),
(10, 'SERET FILM FESTIVAL: THE FOURTH WINDOW', '2022-05-16 18:00:00', 'Behind the international success story of the well-known author Amos Oz, a symbol of the Israeli conscience and a writer translated into 45 languages, lurked a double tragedy. When he was 12-years-old his mother committed suicide, and a few years before h', 'cinema-6250b0f943f33.jpg', 180, 'film_festival@mail.com', 660234561, 'http://film/festival/at', 'Movie', 5);

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(11) NOT NULL,
  `address` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `address`, `zip`, `city`) VALUES
(1, 'Fiftheenstreet 101', 4020, 'Linz'),
(2, 'Seventheenstr 23', 5020, 'Salzburg'),
(3, 'Loppstreett 220', 8010, 'Graz'),
(4, 'Seventheenstr 97', 1020, 'Vienna'),
(5, 'Kärntner Strasse 25', 1010, 'Vienna'),
(6, 'Cossmanngasse 1', 1140, 'Vienna'),
(7, 'Gingerstreet 86', 1200, 'Vienna');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5387574A95681B65` (`fklocation_id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `FK_5387574A95681B65` FOREIGN KEY (`fklocation_id`) REFERENCES `location` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
