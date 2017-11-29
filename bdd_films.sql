-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 28 nov. 2017 à 14:22
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdd_films`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteurs`
--

DROP TABLE IF EXISTS `acteurs`;
CREATE TABLE IF NOT EXISTS `acteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Prenom` varchar(25) COLLATE utf8_bin NOT NULL,
  `Nom` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `acteurs`
--

INSERT INTO `acteurs` (`id`, `Prenom`, `Nom`) VALUES
(1, 'Brad', 'Pitt'),
(2, 'Edward', 'Norton'),
(3, 'Helena', 'Bonham Carter'),
(4, ' Tom', 'Sturridge'),
(5, 'Philip', 'Seymour Hoffman'),
(6, 'Rhys', 'Ifans'),
(7, ' Tyler', 'James Williams'),
(8, ' Tessa', 'Thompson'),
(9, 'Kyle', 'Gallner'),
(10, 'Drew', 'Barrymore'),
(11, 'Ellen', 'Page'),
(12, 'Juliette', 'Lewis'),
(13, 'Michael', 'Cerra'),
(14, 'Jennifer', 'Garner'),
(15, 'Helene', 'Vincent'),
(16, 'Andre', 'Wilms'),
(17, 'Christine', 'Pignet'),
(18, 'Benoit', 'Magimel'),
(19, 'Emily', 'Browning'),
(20, 'Abbie', 'Cornish'),
(21, 'Jena', 'Malone'),
(22, 'Vin', 'Diesel'),
(23, 'Karl', 'Urban'),
(24, 'Katee', 'Sackhoff'),
(25, 'Joaquin', 'Phoenix'),
(26, 'Amy', 'Adams'),
(27, 'Rooney', 'Mara'),
(28, 'Will', 'Smith'),
(29, 'Alan', 'Tudyk'),
(30, 'Bridget', 'Moynahan'),
(31, 'Alice', 'Braga'),
(32, 'Charlie', 'Tahan'),
(33, 'Kim', 'Cattrall'),
(34, 'Steve', 'Guttenberg'),
(35, 'G.W.', 'Bailey');

-- --------------------------------------------------------

--
-- Structure de la table `acteurs_film`
--

DROP TABLE IF EXISTS `acteurs_film`;
CREATE TABLE IF NOT EXISTS `acteurs_film` (
  `Role` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `id` int(11) NOT NULL,
  `id_Films` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_Films`),
  KEY `FK_Acteurs_film_id_Films` (`id_Films`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `acteurs_film`
--

INSERT INTO `acteurs_film` (`Role`, `id`, `id_Films`) VALUES
('Tyler Durden', 1, 1),
('Le narrateur', 2, 1),
('Marla Singer', 3, 1),
('Carl', 4, 2),
('Le comte', 5, 2),
('Gavin', 6, 2),
('Lionel Higgins', 7, 3),
('Samantha White', 8, 3),
('Kurt', 9, 3),
('Trashley Simpson', 10, 4),
('Bliss Cavendar', 11, 4),
('Juno MacGuff', 11, 5),
('Iron Madone', 12, 4),
('Paulie Bleeker', 13, 5),
('Vanessa Loring', 14, 5),
('Marielle Le Quesnoy', 15, 6),
('Monsieur Le Quesnoy', 16, 6),
('Madame Groseille', 17, 6),
('Momo Groseille', 18, 6),
('Babydoll', 19, 7),
('Sweet Pea', 20, 7),
('Rocket', 21, 7),
('Riddick', 22, 8),
('Vaako', 23, 8),
('Dahl', 24, 8),
('Theodore Twombly', 25, 9),
('Amy', 26, 9),
('Catherine', 27, 9),
('Del Spooner', 28, 10),
('Robert Neville', 28, 11),
('Sonny', 29, 10),
('Dr Susan Calvin', 30, 10),
('Anna', 31, 11),
('Ethan', 32, 11),
('Karen Thompson', 33, 12),
('Carey Mahoney', 34, 12),
('Thaddeus Harris', 35, 12);

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

DROP TABLE IF EXISTS `films`;
CREATE TABLE IF NOT EXISTS `films` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Titre` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `id_Realisateurs` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Films_id_Realisateurs` (`id_Realisateurs`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `films`
--

INSERT INTO `films` (`id`, `Titre`, `id_Realisateurs`) VALUES
(1, 'Fight Club', 1),
(2, 'Good Morning England', 2),
(3, 'Dear White People', 3),
(4, 'Bliss', 4),
(5, 'Juno', 5),
(6, 'La vie est un long fleuve tranquille', 6),
(7, 'Sucker Punch', 7),
(8, 'Riddick', 8),
(9, 'Her', 9),
(10, 'I, Robot', 10),
(11, 'Je suis une légende', 11),
(12, 'Police Academy', 12);

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Genre` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `Genre`) VALUES
(1, 'Thriller'),
(2, 'Drame'),
(3, 'Comedie'),
(4, 'Musical'),
(5, 'Fantastique'),
(6, 'Action'),
(7, 'Science Fiction'),
(8, 'Romance');

-- --------------------------------------------------------

--
-- Structure de la table `genre_film`
--

DROP TABLE IF EXISTS `genre_film`;
CREATE TABLE IF NOT EXISTS `genre_film` (
  `id` int(11) NOT NULL,
  `id_Films` int(11) NOT NULL,
  PRIMARY KEY (`id`,`id_Films`),
  KEY `FK_Genre_film_id_Films` (`id_Films`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `genre_film`
--

INSERT INTO `genre_film` (`id`, `id_Films`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(3, 3),
(3, 4),
(3, 6),
(1, 7),
(5, 7),
(6, 7),
(6, 8),
(7, 8),
(2, 9),
(7, 9),
(8, 9),
(6, 10),
(7, 10),
(7, 11),
(3, 12);

-- --------------------------------------------------------

--
-- Structure de la table `realisateurs`
--

DROP TABLE IF EXISTS `realisateurs`;
CREATE TABLE IF NOT EXISTS `realisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `Prenom` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `realisateurs`
--

INSERT INTO `realisateurs` (`id`, `Nom`, `Prenom`) VALUES
(1, 'Fincher', 'David'),
(2, 'Curtis', 'Richard'),
(3, 'Simien', 'Justin'),
(4, 'Barrymore', 'Drew'),
(5, 'Reitman', 'Jason'),
(6, 'Chatiliez', 'Etienne'),
(7, 'Snyder', 'Zach'),
(8, 'Twohy', 'David'),
(9, 'Jonze', 'Spike'),
(10, 'Proyas', 'Alex'),
(11, 'Lawrence ', 'Francis'),
(12, 'Wilson ', 'Hugh ');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acteurs_film`
--
ALTER TABLE `acteurs_film`
  ADD CONSTRAINT `FK_Acteurs_film_id` FOREIGN KEY (`id`) REFERENCES `acteurs` (`id`),
  ADD CONSTRAINT `FK_Acteurs_film_id_Films` FOREIGN KEY (`id_Films`) REFERENCES `films` (`id`);

--
-- Contraintes pour la table `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `FK_Films_id_Realisateurs` FOREIGN KEY (`id_Realisateurs`) REFERENCES `realisateurs` (`id`);

--
-- Contraintes pour la table `genre_film`
--
ALTER TABLE `genre_film`
  ADD CONSTRAINT `FK_Genre_film_id` FOREIGN KEY (`id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK_Genre_film_id_Films` FOREIGN KEY (`id_Films`) REFERENCES `films` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
