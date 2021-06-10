-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: info1d_exercice_mod_104_2021

-- Détection si une autre base de donnée du même nom existe

DROP DATABASE IF EXISTS info1d_exercice_mod_104_2021;

-- Création d'une nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS info1d_exercice_mod_104_2021;

-- Utilisation de cette base de donnée

USE info1d_exercice_mod_104_2021;
-- --------------------------------------------------------
-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 27 mai 2021 à 10:18
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `info1d_exercice_mod_104_2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_ex_theme`
--

CREATE TABLE `t_ex_theme` (
  `id_ex_theme` int(11) NOT NULL,
  `fk_theme` int(11) NOT NULL,
  `fk_exercice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `t_ex_theme`
--

INSERT INTO `t_ex_theme` (`id_ex_theme`, `fk_theme`, `fk_exercice`) VALUES
(1, 1, 2),
(2, 10, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_ex_theme`
--
ALTER TABLE `t_ex_theme`
  ADD PRIMARY KEY (`id_ex_theme`),
  ADD KEY `fk_exercice` (`fk_exercice`),
  ADD KEY `fk_theme` (`fk_theme`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_ex_theme`
--
ALTER TABLE `t_ex_theme`
  MODIFY `id_ex_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_ex_theme`
--
ALTER TABLE `t_ex_theme`
  ADD CONSTRAINT `t_ex_theme_ibfk_1` FOREIGN KEY (`fk_exercice`) REFERENCES `t_exercice` (`id_exercice`),
  ADD CONSTRAINT `t_ex_theme_ibfk_2` FOREIGN KEY (`fk_theme`) REFERENCES `t_theme` (`id_theme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;