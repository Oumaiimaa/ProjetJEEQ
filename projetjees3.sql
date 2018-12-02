-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 03 Octobre 2018 à 15:56
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projetjees3`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nom_admin` varchar(254) DEFAULT NULL,
  `prenom_admin` varchar(254) DEFAULT NULL,
  `email_admin` varchar(254) DEFAULT NULL,
  `num_tel_admin` varchar(254) DEFAULT NULL,
  `psw_admin` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chercheur_at`
--

CREATE TABLE `chercheur_at` (
  `id_user` int(11) NOT NULL,
  `id_cherch_at` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chercheur_st`
--

CREATE TABLE `chercheur_st` (
  `id_user` int(11) NOT NULL,
  `id_cherch_st` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cherch_labo`
--

CREATE TABLE `cherch_labo` (
  `id_user` int(11) NOT NULL,
  `id_cherch_at` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cherch_terr`
--

CREATE TABLE `cherch_terr` (
  `id_user` int(11) NOT NULL,
  `id_cherch_at` int(11) NOT NULL,
  `id_terrain` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `laboratoire`
--

CREATE TABLE `laboratoire` (
  `id_lab` int(11) NOT NULL,
  `nom_lab` varchar(254) DEFAULT NULL,
  `adresse_lab` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `markers`
--

CREATE TABLE `markers` (
  `id_mark` int(11) NOT NULL,
  `position2` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `markers`
--

INSERT INTO `markers` (`id_mark`, `position2`) VALUES
(1, '(28.613459424004418, 5.009765625)'),
(2, '(26.431228064506442, 5.185546875)'),
(3, '(26.902476886279832, 18.193359375)'),
(4, '(14.093957177836222, 10.458984375)'),
(5, '(14.43468021529728, -1.669921875)#'),
(6, '(27.839076094777816, 5.009765625)'),
(7, '(21.125497636606276, -9.580078125)'),
(8, '(19.973348786110602, -3.603515625)'),
(9, '(10.660607953624776, 1.318359375)'),
(11, '(17.97873309555617, 10.283203125)'),
(12, '(20.96143961409684, -4.306640625)'),
(13, '(25.16517336866393, 7.294921875)'),
(14, '(17.308687886770034, -2.197265625)'),
(15, '(18.145851771694467, 13.798828125)'),
(16, '(27.527758206861883, 1.494140625)'),
(17, '(-1.2303741774326018, -67.060546875)'),
(18, '(-0.5273363048115043, 27.158203125)'),
(19, '(27.839076094777816, 3.076171875)'),
(20, '(27.059125784374068, 17.490234375)'),
(45, '(50.958426723359935, 9.755859375)'),
(44, '(48.10743118848039, 23.642578125)'),
(42, '(50.17689812200107, 50.712890625)'),
(40, '(25.482951175355307, 20.830078125)'),
(41, '(13.752724664396988, 20.302734375)'),
(36, '(55.07836723201514, -71.630859375)'),
(35, '(16.46769474828897, 13.271484375)'),
(38, '(49.72447918871298, -71.455078125)'),
(43, '(50.84757295365389, 40.693359375)'),
(33, '(51.94426487902877, -71.455078125)');

-- --------------------------------------------------------

--
-- Structure de la table `markers2`
--

CREATE TABLE `markers2` (
  `id_mark` int(11) NOT NULL,
  `position2` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id_pays` int(11) NOT NULL,
  `nom_pays` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `recherche`
--

CREATE TABLE `recherche` (
  `id_rech` int(11) NOT NULL,
  `nom_rech` varchar(254) DEFAULT NULL,
  `desc_rech` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rech_at`
--

CREATE TABLE `rech_at` (
  `id_user` int(11) NOT NULL,
  `id_cherch_at` int(11) NOT NULL,
  `id_rech` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rech_st`
--

CREATE TABLE `rech_st` (
  `id_user` int(11) NOT NULL,
  `id_cherch_st` int(11) NOT NULL,
  `id_rech` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rech_theme`
--

CREATE TABLE `rech_theme` (
  `id_rech` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `terrain_recherche`
--

CREATE TABLE `terrain_recherche` (
  `id_terrain` int(11) NOT NULL,
  `id_pays` int(11) NOT NULL,
  `nom_terrain` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL,
  `nom_theme` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `universite`
--

CREATE TABLE `universite` (
  `id_uni` int(11) NOT NULL,
  `id_lab` int(11) NOT NULL,
  `id_pays` int(11) NOT NULL,
  `nom_uni` varchar(254) DEFAULT NULL,
  `adresse_uni` varchar(254) DEFAULT NULL,
  `num_tel_uni` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_user` int(11) NOT NULL,
  `nom_user` varchar(254) DEFAULT NULL,
  `prenom_user` varchar(254) DEFAULT NULL,
  `email_user` varchar(254) DEFAULT NULL,
  `num_tel_user` varchar(254) DEFAULT NULL,
  `visib_user` int(11) DEFAULT NULL,
  `desc_user` varchar(254) DEFAULT NULL,
  `date_naiss_user` varchar(254) DEFAULT NULL,
  `niv_user` varchar(254) DEFAULT NULL,
  `pays_org_user` varchar(254) DEFAULT NULL,
  `pos_act_user` varchar(254) DEFAULT NULL,
  `psw_user` varchar(254) DEFAULT NULL,
  `type_cherch` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_user`, `nom_user`, `prenom_user`, `email_user`, `num_tel_user`, `visib_user`, `desc_user`, `date_naiss_user`, `niv_user`, `pays_org_user`, `pos_act_user`, `psw_user`, `type_cherch`) VALUES
(1, 'Alaoui', 'Zahra', 'zahra@gmail.com', '+212644335566', NULL, 'Doctorante en math ', '1990-09-09', 'Doctorant', 'Maroc', 'Chef d\'un laboratoire', 'zahra', NULL),
(5, 'h', 'g', 'vfv@hh.h', '+212644335566', NULL, '', '', '', 'Maroc', '', 'h', 0),
(3, 'Elouassaa', 'Amina', 'amina-at@gmail.com', '+212644335566', NULL, 'Doctorante en  chimie', '1992-03-22', 'Doctorant', 'Maroc', 'Chef d\'un laboratoire', 'amina', 0),
(4, 'Elghandour', 'Yassine', 'yassine@gmail.com', '+212644335566', NULL, 'Etudiant à l\'ENSIAS', '1996-02-07', 'Post-Doctorant', 'Maroc', '', 'yassine', 0),
(6, 'b', 'fgb', 'gb@g.f', 'fb', NULL, '', '', '', 'Maroc', '', 'sa', 0),
(56, 'Zahidi', 'Zahra', 'zahidi@gmail.com', '+212644335566', NULL, 'Doctorante en math ', '1994-09-09', 'Doctorant', 'Maroc', 'Chef d\'un laboratoire', 'zahra', 0),
(11, 'a', '', '', '', NULL, '', '', '', 'Maroc', '', '', 0),
(12, 'f', 'd', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(13, 'g', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(14, 'd', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(15, 'df', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(16, 'h', '', 'amina-at@gmail.com', '+212644335566', NULL, '', '', '', 'Maroc', '', '', 0),
(17, 'f', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(27, 'fgh', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(28, 'gh', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(29, 'hvgh', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(30, 'g', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(31, '', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(32, '', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(33, '', '', 'zahra@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(34, '', '', 'root@hm.h', '', NULL, '', '', '', 'Maroc', '', '', 0),
(35, '', '', 'root@hm.h', '', NULL, '', '', '', 'Maroc', '', '', 0),
(36, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(37, '', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(38, '', '', 'root@hm.h', '', NULL, '', '', '', 'Maroc', '', '', 0),
(39, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(40, '', '', 'zahra@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(41, '', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(42, '', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(43, '', '', 'zahra@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(44, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(45, '', '', 'root@hm.h', '', NULL, '', '', '', 'Maroc', '', '', 0),
(46, '', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(47, '', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(48, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(49, '', '', 'root@hm.h', '', NULL, '', '', '', 'Maroc', '', '', 0),
(50, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(51, '', '', 'zineb-at@outlook.fr', '', NULL, '', '', '', 'Maroc', '', '', 0),
(52, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(53, '', '', 'zainab@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(54, 'ELOUASSAA', '', 'amina-at@gmail.com', '', NULL, '', '', '', 'Maroc', '', '', 0),
(55, 'Zahidi', 'Zahra', 'zahidi@gmail.com', '', NULL, '', '', '', 'Maroc', '', 'zahidi', 0);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `chercheur_at`
--
ALTER TABLE `chercheur_at`
  ADD PRIMARY KEY (`id_user`,`id_cherch_at`);

--
-- Index pour la table `chercheur_st`
--
ALTER TABLE `chercheur_st`
  ADD PRIMARY KEY (`id_user`,`id_cherch_st`);

--
-- Index pour la table `cherch_labo`
--
ALTER TABLE `cherch_labo`
  ADD PRIMARY KEY (`id_user`,`id_cherch_at`,`id_lab`),
  ADD KEY `FK_cherch_labo` (`id_lab`);

--
-- Index pour la table `cherch_terr`
--
ALTER TABLE `cherch_terr`
  ADD PRIMARY KEY (`id_user`,`id_cherch_at`,`id_terrain`),
  ADD KEY `FK_cherch_terr` (`id_terrain`);

--
-- Index pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  ADD PRIMARY KEY (`id_lab`);

--
-- Index pour la table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id_mark`);

--
-- Index pour la table `markers2`
--
ALTER TABLE `markers2`
  ADD PRIMARY KEY (`id_mark`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id_pays`);

--
-- Index pour la table `recherche`
--
ALTER TABLE `recherche`
  ADD PRIMARY KEY (`id_rech`);

--
-- Index pour la table `rech_at`
--
ALTER TABLE `rech_at`
  ADD PRIMARY KEY (`id_user`,`id_cherch_at`,`id_rech`),
  ADD KEY `FK_rech_at` (`id_rech`);

--
-- Index pour la table `rech_st`
--
ALTER TABLE `rech_st`
  ADD PRIMARY KEY (`id_user`,`id_cherch_st`,`id_rech`),
  ADD KEY `FK_rech_st` (`id_rech`);

--
-- Index pour la table `rech_theme`
--
ALTER TABLE `rech_theme`
  ADD PRIMARY KEY (`id_rech`,`id_theme`);

--
-- Index pour la table `terrain_recherche`
--
ALTER TABLE `terrain_recherche`
  ADD PRIMARY KEY (`id_terrain`),
  ADD KEY `FK_terrain_pays` (`id_pays`);

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id_theme`);

--
-- Index pour la table `universite`
--
ALTER TABLE `universite`
  ADD PRIMARY KEY (`id_uni`),
  ADD KEY `FK_uni_lab` (`id_lab`),
  ADD KEY `FK_uni_pays` (`id_pays`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `markers`
--
ALTER TABLE `markers`
  MODIFY `id_mark` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `markers2`
--
ALTER TABLE `markers2`
  MODIFY `id_mark` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
