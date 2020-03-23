-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 22. Okt 2019 um 21:23
-- Server-Version: 10.1.38-MariaDB
-- PHP-Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `movie_app`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_name`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `choices`
--

CREATE TABLE `choices` (
  `id` int(11) NOT NULL,
  `id_question` int(11) DEFAULT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `choices`
--

INSERT INTO `choices` (`id`, `id_question`, `text`) VALUES
(1, 1, 'Just Me, myself and I'),
(10, 1, 'My entire family, all 17 generations are coming over'),
(11, 1, 'My loved one'),
(13, 1, 'Rex!'),
(14, 2, 'Seven courses French cuisine tasting menu'),
(15, 2, 'Popcorn- dah!'),
(16, 2, 'I have a diet!'),
(17, 2, 'Burger'),
(18, 3, 'Rainy weather'),
(20, 3, 'Hot'),
(21, 3, 'Windy'),
(22, 3, 'Rainy weather'),
(26, 4, 'A remote island.'),
(27, 4, 'Somewhere creepy...'),
(30, 4, 'Back and forth across the country.'),
(31, 4, 'The old West.'),
(32, 5, 'Black and white movies from the 40th'),
(33, 5, 'Not older than 2000'),
(34, 5, 'only this year released'),
(35, 6, 'Love'),
(36, 6, 'Freedom'),
(37, 5, 'not so much important'),
(38, 6, 'Happy'),
(39, 6, 'Fly'),
(40, 7, 'Action/Adventure'),
(41, 7, 'Drama/Romance'),
(44, 7, 'Horror/Thriller'),
(45, 7, 'Comedy/Family'),
(50, 8, 'Good'),
(51, 8, 'Bad'),
(52, 8, 'Super'),
(53, 8, 'Im so happy!'),
(61, 9, '15-20'),
(62, 9, '20-30'),
(63, 9, '30-40'),
(64, 9, '40-60');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `text_questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `questions`
--

INSERT INTO `questions` (`id`, `text_questions`) VALUES
(1, 'Who will you be watching with?'),
(2, 'What\'s on the menu?'),
(3, 'What is your favorite kind of weather?'),
(4, 'Where should the movie take place?'),
(5, 'How old do you want your movie to be?'),
(6, 'Pick a word! Quick!'),
(7, 'What genre of movie do you want to watch?'),
(8, 'How are you doing?'),
(9, 'How old are you?');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `role`
--

INSERT INTO `role` (`role_id`, `role`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `survey_results`
--

CREATE TABLE `survey_results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `homepage` varchar(255) NOT NULL,
  `poster` varchar(255) NOT NULL,
  `vote_average` varchar(255) NOT NULL,
  `genres` varchar(255) NOT NULL,
  `overview` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `survey_results`
--

INSERT INTO `survey_results` (`id`, `user_id`, `title`, `homepage`, `poster`, `vote_average`, `genres`, `overview`) VALUES
(1, 18, 'Anatomy of a Murder', '', '/rZ9QOB1ZqTjg9j0ftfur4AndoDa.jpg', '7.9', 'Crime', 'The film pits a humble small-town lawyer against a hard-headed big city prosecutor. Emotions flare as a jealous army lieutenant pleads innocent to murdering the rapist of his seductive, beautiful wife.'),
(3, 18, 'Stand by Me', '', '/kedC0y75jdzByjuZNLOWIOtduNw.jpg', '7.9', 'Crime', 'After the death of a friend, a writer recounts a boyhood journey to find the body of a missing boy.'),
(4, 18, 'Carne trÃ©mula', '', '/6fpt82Sfpkzw4dZgKgZMVFoaMBb.jpg', '7.2', 'Drama', 'A scorned ex-convict forces himself into the lives of the couple who put him behind bars.'),
(5, 18, 'Natural Born Killers', '', '/w5sruoTQ87PFAGRJQyyaCOM1C4A.jpg', '7.1', 'Crime', 'Two victims of traumatized childhoods become lovers and psychopathic serial murderers irresponsibly glorified by the mass media.'),
(6, 18, 'Das Cabinet des Dr. Caligari', '', '/myK9DeIsXWGKgUTZyGXg2IfFk0W.jpg', '7.9', 'Drama', 'Francis, a young man, recalls in his memory the horrible experiences he and his fiancÃ©e Jane recently went through. It is the annual fair in Holstenwall. Francis and his friend Alan visit The Cabinet of Dr. Caligari, an exhibit where the mysterious docto'),
(7, 18, 'The English Patient', '', '/yqaKkARc9Ku8mIENQt8bGVHaowJ.jpg', '7.2', 'Drama', 'In the 1930s, Count AlmÃ¡sy is a Hungarian map maker employed by the Royal Geographical Society to chart the vast expanses of the Sahara Desert along with several other prominent explorers. As World War II unfolds, AlmÃ¡sy enters into a world of love, bet'),
(30, 18, 'A Close Shave', 'http://www.wallaceandgromit.com/films/a-close-shave', '/efFW4euBJIha6WVJoBPSfyui2Aa.jpg', '7.5', 'Family', 'Wallace falls in love with wool-shop owner Wendolene, not suspecting that she (or rather, her dog) is at the head of a fiendish sheep-rustling plot. Gromit is set up and jailed, but his new-found sheepish friend is determined to give Wallace a helping han'),
(31, 18, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(32, 18, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(33, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(34, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(35, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(36, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(37, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(38, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(39, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(40, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(41, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(42, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(43, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(44, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(45, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(46, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(47, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(48, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(49, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(50, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(51, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(52, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(53, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(54, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(55, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(56, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(57, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(58, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(59, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(60, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(61, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(62, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(63, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(64, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(65, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(66, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(67, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(68, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(69, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(70, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(71, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(72, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(73, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(74, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(75, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(76, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(77, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(78, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(79, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(80, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(81, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(82, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(83, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(84, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(85, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(86, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(87, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(88, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(89, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(90, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(91, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(92, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(93, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(94, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(95, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(96, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(97, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(98, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(99, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(100, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(101, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(102, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(103, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(104, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(105, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(106, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(107, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(108, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(109, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(110, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(111, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(112, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(113, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(114, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(115, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(116, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(117, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(118, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(119, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(120, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(121, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(122, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(123, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(124, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(125, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(126, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(127, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(128, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(129, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(130, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(131, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(132, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(133, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(134, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(135, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(136, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(137, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(138, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(139, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(140, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(141, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(142, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(143, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(144, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(145, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(146, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(147, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(148, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(149, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(150, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(151, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(152, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(153, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(154, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(155, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(156, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(157, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(158, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(159, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(160, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(161, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(162, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(163, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(164, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(165, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(166, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(167, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(168, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(169, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(170, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(171, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(172, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(173, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(174, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(175, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(176, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(177, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(178, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(179, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(180, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(181, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.');
INSERT INTO `survey_results` (`id`, `user_id`, `title`, `homepage`, `poster`, `vote_average`, `genres`, `overview`) VALUES
(182, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(183, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(184, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(185, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(186, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(187, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(188, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(189, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(190, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(191, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(192, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(193, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(194, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(195, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(196, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(197, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(198, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(199, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(200, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(201, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(202, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(203, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(204, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(205, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(206, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(207, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(208, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(209, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(210, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(211, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(212, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(213, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(214, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(215, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(216, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(217, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(218, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(219, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(220, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(221, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(222, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(223, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(224, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(225, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(226, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(227, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(228, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(229, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(230, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(231, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(232, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(233, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(234, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(235, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(236, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(237, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(238, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(239, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(240, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(241, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(242, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(243, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(244, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(245, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(246, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(247, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(248, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(249, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(250, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(251, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(252, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(253, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(254, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(255, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(256, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(257, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(258, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(259, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(260, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(261, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(262, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(263, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(264, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(265, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(266, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(267, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(268, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(269, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(270, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(271, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(272, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(273, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(274, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(275, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(276, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(277, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(278, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(279, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(280, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(281, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(282, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(283, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(284, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(285, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(286, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(287, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(288, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(289, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(290, 13, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(291, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(292, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(293, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(294, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(295, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(296, 13, 'Killing Zoe', '', '/xhGpPx5o4ngIbXKUs8ogn24hrBL.jpg', '6.2', 'Action', 'Zed (Eric Stoltz) is an American vault-cracker who travels to Paris to meet up with his old friend Eric (Jean-Hugues Anglade). Eric and his gang have planned to raid the only bank in the city which is open on Bastille day. After offering his services, Zed'),
(297, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(298, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(299, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(300, 13, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(301, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(302, 13, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(303, 13, 'Bandyta', '', '/73d8HxtublBXQDhHuhtQ8ysOYUe.jpg', '6.3', 'Drama', 'Bastard depicts the distress of needy children and the love of a nurse and a hard boiled criminal. A film from Polish director Maciej Dejczer and actor Til Schweigerâ€™s first international film.'),
(304, 13, 'Cube Zero', '', '/m6Vn1rysx6vmgJuy78Ih9QxFoOy.jpg', '5.7', 'Mystery', 'Cube Zero is the third film in the trilogy yet this time instead of a film about people trapped in a deadly cube trying to get out we see it from the eyes of someone who is controlling the cube and the torture of the victims inside. When the nerd canâ€™t '),
(305, 13, 'Sommer vorm Balkon', 'http://www.sommervormbalkon.de/', '/hJR2yhAMywVwguGr9JJqZDNGMgH.jpg', '6.8', 'Comedy', 'When you read the title â€˜Summer on the Balconyâ€™ you probably think it will be a light Berlin summer comedy but itâ€™s not. This film is an intimate study of two women friends who come to each other because of troubles with everyday life and with men a'),
(306, 13, '', '', '', '', '', ''),
(307, 13, '', '', '', '', '', ''),
(308, 13, 'Ghettokids - BrÃ¼der ohne Heimat', '', '/bxtKVrkuKWIFydavfgIB5IawB9Z.jpg', '9.7', 'Drama', 'Two trouble-causing brothers, who in the second generation after World War II Germany live, are in the center of this German made for TV movie. The movie makes a subject out of their everyday lives and the helpless attempt for them to build a normal life.'),
(309, 13, '21 Grams', 'http://www.21-grams.com/index.php', '/Aps7GzrYiJZKHNT524Rsg4jaXej.jpg', '7.3', 'Drama', 'This is the story of three gentle persons: Paul Rivers, an ailing mathematician lovelessly married to an English Ã©migrÃ©; Christina Peck, an upper-middle-class suburban housewife, happily married and mother of two little girl; and Jack Jordan, an ex-conv'),
(310, 13, '', '', '', '', '', ''),
(311, 13, 'CachÃ©', 'http://www.cache-derfilm.at', '/i21qLdE76ACgjhh9vjk5D2sFEQe.jpg', '7.2', 'Mystery', 'A married couple is terrorized by a series of videotapes planted on their front porch.'),
(312, 13, 'Batman & Robin', '', '/79AYCcxw3kSKbhGpx1LiqaCAbwo.jpg', '4.2', 'Science Fiction', 'Along with crime-fighting partner Robin and new recruit Batgirl, Batman battles the dual threat of frosty genius Mr. Freeze and homicidal horticulturalist Poison Ivy. Freeze plans to put Gotham City on ice, while Ivy tries to drive a wedge between the dyn'),
(313, 13, 'Monsoon Wedding', 'http://monsoonwedding.indiatimes.com', '/aRWp1b8IhmAr12dbermVaqoV2bl.jpg', '7', 'Comedy', 'As the romantic monsoon rains loom, the extended Verma family reunites from around the globe for a last-minute arranged marriage in New Delhi. This film traces five intersecting stories, each navigating different aspects of love as they cross boundaries o'),
(314, 13, '', '', '', '', '', ''),
(315, 13, '', '', '', '', '', ''),
(316, 13, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(317, 13, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.'),
(318, 13, 'Johnny Handsome', '', '/fJBea43DpS6BhL9ZTBDoTNMiOG6.jpg', '6.3', 'Crime', 'A career criminal who has been deformed since birth is given a new face by a kindly doctor and paroled from prison. It appears that he has gone straight, but he is really planning his revenge on the man who killed his mentor and sent him to prison.'),
(319, 13, 'Reservoir Dogs', '', '/jX94vnfcuJ8rTnFbsoriY6dlHrC.jpg', '8.2', 'Crime', 'A botched robbery indicates a police informant, and the pressure mounts in the aftermath at a warehouse. Crime begets violence as the survivors -- veteran Mr. White, newcomer Mr. Orange, psychopathic parolee Mr. Blonde, bickering weasel Mr. Pink and Nice '),
(320, 134, '', '', '', '', '', ''),
(321, 134, '', '', '', '', '', ''),
(322, 134, '', '', '', '', '', ''),
(323, 134, '', '', '', '', '', ''),
(324, 134, '', '', '', '', '', ''),
(325, 134, 'Love Actually', 'http://www.loveactually.com/', '/kfX8Ctin3fSZbdnjh6CXSNZUOVP.jpg', '7.1', 'Comedy', 'Follows seemingly unrelated people as their lives begin to intertwine while they fall in â€“ and out â€“ of love. Affections languish and develop as Christmas draws near.'),
(326, 134, 'Notting Hill', 'http://www.notting-hill.com/', '/f1gMw3PVicfdq9thlvUIjJ5UdvS.jpg', '7.2', 'Romance', 'William Thacker is a London bookstore owner whose humdrum existence is thrown into romantic turmoil when famous American actress Anna Scott appears in his shop. A chance encounter over spilled orange juice leads to a kiss that blossoms into a full-blown a'),
(327, 134, 'Poseidon', 'http://www2.warnerbros.com/poseidon/', '/yeiCuwMSHLmf7NoYzxiEAjkJHkg.jpg', '5.7', 'Adventure', 'A packed cruise ship traveling the Atlantic is hit and overturned by a massive wave, compelling the passengers to begin a dramatic fight for their lives.'),
(328, 134, 'Marnie', '', '/mwEuBWMJyebtJ1OP4W2jeRcVf3k.jpg', '7.3', 'Mystery', 'Marnie is a thief, a liar, and a cheat. When her new boss, Mark Rutland, catches on to her routine kleptomania, she finds herself being blackmailed.'),
(329, 134, 'Fail-Safe', '', '/qrsj5hort5xkLOKw9NyraGMnlVP.jpg', '7.8', 'Drama', 'Because of a technical defect an American bomber team mistakenly orders the destruction of Moscow. The President of the United States has but little time to prevent an atomic catastrophe from occurring.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT '1',
  `img` varchar(255) NOT NULL DEFAULT 'https://rus.postimees.ee/v5/img/icons/shrek.svg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `description`, `role_id`, `img`) VALUES
(132, 'admintest', 'admintest@gmail.com', '$2y$10$GFX9/3NaUMEn1Ivhhu59Q.CrvmNve2WB6clHIGmZz2/luR7I8ypxa', '', 2, 'https://rus.postimees.ee/v5/img/icons/shrek.svg'),
(134, 'user1', 'user1@gmail.com', '$2y$10$1394ij8BsgoefltYNfTAyOkx0fG1pNtScAjAAjPjrg9Z.dDoILii2', '', 1, '../files/4.jpg'),
(135, 'user2', 'user2@gmail.com', '$2y$10$5ih.PEQvJ4DsNj.k2fq3CeIg6VGcyPBP8w2yDha9ZDD.lXeCDNgjS', '', 1, '../files/12.jpg'),
(141, 'user4', 'user4@gmail.com', '$2y$10$RiFFpuR/6koLziqMI5FsieDgQr0N3y4GPVWsbdbw/tMz6Z0Ilcn8e', '\"A medium dry martini, lemon peel. Shaken, not stirred.\"', 1, '../files/');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indizes für die Tabelle `choices`
--
ALTER TABLE `choices`
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `id_question` (`id_question`);

--
-- Indizes für die Tabelle `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indizes für die Tabelle `survey_results`
--
ALTER TABLE `survey_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `choices`
--
ALTER TABLE `choices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT für Tabelle `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT für Tabelle `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT für Tabelle `survey_results`
--
ALTER TABLE `survey_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `choices`
--
ALTER TABLE `choices`
  ADD CONSTRAINT `choices_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id`);

--
-- Constraints der Tabelle `survey_results`
--
ALTER TABLE `survey_results`
  ADD CONSTRAINT `survey_results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints der Tabelle `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
