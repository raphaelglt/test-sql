-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 07 nov. 2022 à 12:10
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `planning`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `classe_id` int(11) NOT NULL,
  `classe_professeur` int(11) NOT NULL,
  `classe_ecole` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`classe_id`, `classe_professeur`, `classe_ecole`) VALUES
(1, 6, 3),
(2, 12, 3),
(3, 1, 3),
(4, 2, 2),
(5, 4, 3),
(6, 3, 1),
(7, 5, 1),
(8, 7, 3),
(9, 8, 2),
(10, 9, 3),
(11, 10, 1),
(12, 11, 1),
(13, 13, 1),
(14, 14, 2),
(15, 15, 2);

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `ecole_id` int(11) NOT NULL,
  `ecole_nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`ecole_id`, `ecole_nom`) VALUES
(1, 'Meilleure école'),
(2, 'Ecole bof bof'),
(3, 'Chez les nazes');

-- --------------------------------------------------------

--
-- Structure de la table `eleve`
--

CREATE TABLE `eleve` (
  `eleve_id` int(11) NOT NULL,
  `eleve_nom` varchar(255) NOT NULL,
  `eleve_classe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `eleve`
--

INSERT INTO `eleve` (`eleve_id`, `eleve_nom`, `eleve_classe`) VALUES
(44, 'Steve', 1),
(45, 'Paul', 2),
(46, 'Jean', 3),
(47, 'Albert', 3),
(48, 'Aziz', 1),
(49, 'Karim', 2),
(50, 'Mathys', 1),
(51, 'Ulysse', 2),
(52, 'Yonny', 2),
(53, 'Hélio', 2),
(54, 'Marion', 2),
(55, 'Clothilde', 3),
(56, 'Cassandre', 3),
(57, 'Steven', 3),
(58, 'Enzo', 4),
(59, 'Nathan', 14),
(60, 'Maëlys', 13),
(61, 'Nap', 12),
(62, 'Yoyo', 11),
(63, 'Kiki', 11),
(64, 'Steve', 11),
(65, 'Steve', 1),
(66, 'Steve', 1),
(67, 'Steve', 11),
(68, 'Steve', 11),
(69, 'Steve', 11),
(70, 'Steve', 11),
(71, 'Steve', 11),
(72, 'Steve', 11),
(73, 'Steve', 11),
(74, 'Steve', 11),
(75, 'Steve', 11),
(76, 'Steve', 11),
(77, 'Steve', 12),
(78, 'Steve', 13),
(79, 'Steve', 13),
(80, 'Steve', 14),
(81, 'Steve', 14),
(82, 'Steve', 14),
(83, 'Steve', 14),
(84, 'Steve', 10),
(85, 'Steve', 10),
(86, 'Steve', 10);

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `matiere_id` int(11) NOT NULL,
  `matiere_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`matiere_id`, `matiere_name`) VALUES
(1, 'Math'),
(2, 'Français'),
(3, 'Anglais'),
(4, 'Allemand'),
(5, 'Physique'),
(6, 'SVT'),
(7, 'Techno');

-- --------------------------------------------------------

--
-- Structure de la table `matiere_prof`
--

CREATE TABLE `matiere_prof` (
  `relation_id` int(11) NOT NULL,
  `relation_matiere` int(11) NOT NULL,
  `relation_professeur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `matiere_prof`
--

INSERT INTO `matiere_prof` (`relation_id`, `relation_matiere`, `relation_professeur`) VALUES
(1, 5, 1),
(2, 6, 1),
(3, 6, 2),
(4, 7, 3),
(5, 1, 3),
(6, 3, 3),
(7, 7, 4),
(8, 4, 5),
(9, 3, 6),
(10, 4, 7),
(11, 2, 8),
(12, 1, 9),
(13, 6, 10),
(14, 7, 11),
(15, 1, 12),
(16, 5, 13),
(17, 2, 14),
(18, 4, 15),
(19, 3, 15),
(20, 2, 13);

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `professeur_id` int(11) NOT NULL,
  `professeur_nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`professeur_id`, `professeur_nom`) VALUES
(1, 'Aziz'),
(2, 'Mouloud'),
(3, 'Gérome'),
(4, 'Jérome'),
(5, 'J\'airhum'),
(6, 'Abdel-kader'),
(7, 'Philippe'),
(8, 'Napoléon'),
(9, 'Karim'),
(10, 'Karene'),
(11, 'Paul'),
(12, 'Chloé'),
(13, 'Ylona'),
(14, 'Mariam'),
(15, 'Zouzou');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`classe_id`),
  ADD KEY `fk_classe_professeur` (`classe_professeur`),
  ADD KEY `fk_classe_ecole` (`classe_ecole`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`ecole_id`);

--
-- Index pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD PRIMARY KEY (`eleve_id`),
  ADD KEY `fk_eleve_classe` (`eleve_classe`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`matiere_id`);

--
-- Index pour la table `matiere_prof`
--
ALTER TABLE `matiere_prof`
  ADD PRIMARY KEY (`relation_id`),
  ADD KEY `fk_relation_professeur` (`relation_professeur`),
  ADD KEY `fk_relation_matiere` (`relation_matiere`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`professeur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `classe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `ecole_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `eleve`
--
ALTER TABLE `eleve`
  MODIFY `eleve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `matiere_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `matiere_prof`
--
ALTER TABLE `matiere_prof`
  MODIFY `relation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `professeur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `fk_classe_ecole` FOREIGN KEY (`classe_ecole`) REFERENCES `ecole` (`ecole_id`),
  ADD CONSTRAINT `fk_classe_professeur` FOREIGN KEY (`classe_professeur`) REFERENCES `professeur` (`professeur_id`);

--
-- Contraintes pour la table `eleve`
--
ALTER TABLE `eleve`
  ADD CONSTRAINT `fk_eleve_classe` FOREIGN KEY (`eleve_classe`) REFERENCES `classe` (`classe_id`);

--
-- Contraintes pour la table `matiere_prof`
--
ALTER TABLE `matiere_prof`
  ADD CONSTRAINT `fk_relation_matiere` FOREIGN KEY (`relation_matiere`) REFERENCES `matiere` (`matiere_id`),
  ADD CONSTRAINT `fk_relation_professeur` FOREIGN KEY (`relation_professeur`) REFERENCES `professeur` (`professeur_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
