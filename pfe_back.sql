-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 20 avr. 2024 à 14:16
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pfe_back`
--

-- --------------------------------------------------------

--
-- Structure de la table `accesoirespc`
--

CREATE TABLE `accesoirespc` (
  `id_accesoirespc` int(11) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `adresse_ip` varchar(255) NOT NULL,
  `adresse_mac` varchar(255) NOT NULL,
  `imprimante` varchar(255) NOT NULL,
  `duree_amortissement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `accesoirespc`
--

INSERT INTO `accesoirespc` (`id_accesoirespc`, `marque`, `sn`, `adresse_ip`, `adresse_mac`, `imprimante`, `duree_amortissement`) VALUES
(2, '22 ', '22', '22', '22', '22', '101010'),
(3, 'sds', 'dsd', '0', 'sdsd', 'sdsd', 'dsdsd'),
(4, 'sds', 'dsd', '0', 'sdsd', 'sdsd', 'dsdsd'),
(5, 'qsqs', 'qsq', '0', 'qsq', 'qsqs', 'qsqsqs'),
(6, 'sdds', 'sd', '0', 'sdsd', 'dssdsd', 'sdsdsd'),
(7, 'sd', 'ds', '0', 'sd', 'sd', 'sd'),
(8, 'ere', 'erer', 'erer', 'er', 'reer', 'erer');

-- --------------------------------------------------------

--
-- Structure de la table `bodet`
--

CREATE TABLE `bodet` (
  `id_bodet` int(11) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `adresse_ip` varchar(255) NOT NULL,
  `adresse_mac` varchar(255) NOT NULL,
  `imprimante` varchar(255) NOT NULL,
  `duree_amortissement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `bodet`
--

INSERT INTO `bodet` (`id_bodet`, `marque`, `sn`, `adresse_ip`, `adresse_mac`, `imprimante`, `duree_amortissement`) VALUES
(2, '101010', '125478', '127.0.0.1', '255.255.255.255', 'hp', '20 j'),
(4, '101010', 'dd', 'dd', 'dd', 'dd', 'ddd');

-- --------------------------------------------------------

--
-- Structure de la table `imprimante`
--

CREATE TABLE `imprimante` (
  `id_imprimante` int(11) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `adresse_ip` varchar(255) NOT NULL,
  `adresse_mac` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `imprimante`
--

INSERT INTO `imprimante` (`id_imprimante`, `marque`, `sn`, `adresse_ip`, `adresse_mac`) VALUES
(1, 'hp imprimante', '125478', '1270', '255.255.255.255'),
(2, '00000', 'zeze', 'zeze', 'zeze');

-- --------------------------------------------------------

--
-- Structure de la table `pc`
--

CREATE TABLE `pc` (
  `id_pc` int(11) NOT NULL,
  `marque` varchar(255) NOT NULL,
  `sn` varchar(255) NOT NULL,
  `adresse_ip` varchar(255) NOT NULL,
  `adresse_mac` varchar(255) NOT NULL,
  `imprimante` varchar(255) NOT NULL,
  `duree_amortissement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pc`
--

INSERT INTO `pc` (`id_pc`, `marque`, `sn`, `adresse_ip`, `adresse_mac`, `imprimante`, `duree_amortissement`) VALUES
(1, 'hp', '125478', '127.0.0.1', '255.255.255.255', 'hp', '20 j'),
(4, '00000', 'ss', 'ss', 'ss', 'ss', 'aaaa');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accesoirespc`
--
ALTER TABLE `accesoirespc`
  ADD PRIMARY KEY (`id_accesoirespc`);

--
-- Index pour la table `bodet`
--
ALTER TABLE `bodet`
  ADD PRIMARY KEY (`id_bodet`);

--
-- Index pour la table `imprimante`
--
ALTER TABLE `imprimante`
  ADD PRIMARY KEY (`id_imprimante`);

--
-- Index pour la table `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id_pc`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accesoirespc`
--
ALTER TABLE `accesoirespc`
  MODIFY `id_accesoirespc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `bodet`
--
ALTER TABLE `bodet`
  MODIFY `id_bodet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `imprimante`
--
ALTER TABLE `imprimante`
  MODIFY `id_imprimante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pc`
--
ALTER TABLE `pc`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
