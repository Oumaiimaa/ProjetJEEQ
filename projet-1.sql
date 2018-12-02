-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 04 Octobre 2018 à 11:35
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet`
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

--
-- Contenu de la table `chercheur_at`
--

INSERT INTO `chercheur_at` (`id_user`, `id_cherch_at`) VALUES
(34, 34),
(36, 36),
(53, 53),
(57, 57),
(89, 89),
(98, 98);

-- --------------------------------------------------------

--
-- Structure de la table `chercheur_st`
--

CREATE TABLE `chercheur_st` (
  `id_user` int(11) NOT NULL,
  `id_cherch_st` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `chercheur_st`
--

INSERT INTO `chercheur_st` (`id_user`, `id_cherch_st`) VALUES
(5, 5),
(16, 16),
(17, 17),
(41, 41),
(61, 61),
(65, 65),
(70, 70),
(75, 75),
(85, 85),
(88, 88),
(97, 97),
(100, 100);

-- --------------------------------------------------------

--
-- Structure de la table `cherch_rech_at`
--

CREATE TABLE `cherch_rech_at` (
  `id_user` int(11) NOT NULL,
  `id_cherch_at` int(11) NOT NULL,
  `id_rech` int(11) NOT NULL,
  `id_rech_at` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `cherch_rech_at`
--

INSERT INTO `cherch_rech_at` (`id_user`, `id_cherch_at`, `id_rech`, `id_rech_at`) VALUES
(53, 53, 50186, 4),
(53, 53, 50186, 84),
(53, 53, 53237, 39),
(53, 53, 53237, 74),
(53, 53, 65439, 12),
(53, 53, 65439, 37),
(53, 53, 65439, 75),
(53, 53, 97447, 38),
(57, 57, 56401, 65),
(57, 57, 56401, 71),
(57, 57, 72265, 72),
(57, 57, 72893, 78),
(57, 57, 72893, 94),
(57, 57, 74711, 6),
(57, 57, 95288, 31),
(65, 65, 16198, 6),
(65, 65, 30204, 47),
(65, 65, 30204, 86),
(89, 89, 64878, 10),
(89, 89, 64878, 20);

-- --------------------------------------------------------

--
-- Structure de la table `cherch_rech_st`
--

CREATE TABLE `cherch_rech_st` (
  `id_user` int(11) NOT NULL,
  `id_cherch_st` int(11) NOT NULL,
  `id_rech` int(11) NOT NULL,
  `id_rech_st` int(11) NOT NULL
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
  `desc_rech` varchar(254) DEFAULT NULL,
  `uni_rech` varchar(255) NOT NULL,
  `terr_rech` varchar(255) NOT NULL,
  `labo_rech` varchar(255) NOT NULL,
  `pays_rech` varchar(255) NOT NULL,
  `mots_cle_rech` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `recherche`
--

INSERT INTO `recherche` (`id_rech`, `nom_rech`, `desc_rech`, `uni_rech`, `terr_rech`, `labo_rech`, `pays_rech`, `mots_cle_rech`) VALUES
(74711, 'Recherche de Adnane 2', 'Recherche de Adnane 2', 'Recherche de Adnane 2', 'Recherche de Adnane 2', 'Recherche de Adnane 2', 'Recherche de Adnane 2', 'Recherche de Adnane 2'),
(56401, 'Recherche de Adnane 1', 'Recherche de Adnane 1', 'Recherche de Adnane 1', 'Recherche de Adnane 1', 'Recherche de Adnane 1', 'Recherche de Adnane 1', 'Recherche de Adnane 1'),
(30204, 'Recherche de Zineb 1', 'Recherche de Zineb 1', 'Recherche de Zineb 1', 'Recherche de Zineb 1', 'Recherche de Zineb 1', 'Recherche de Zineb 1', 'Recherche de Zineb 1'),
(16198, 'Recherche Zineb 2', 'Desc Recherche Zineb 2', 'Uni Recherche Zineb 2', 'Terrain Recherche Zineb 2', 'Labo Recherche Zineb 2', 'Pays Recherche Zineb 2', 'Mots Cles Recherche Zineb 2'),
(83543, 'Recherche de Jamal 1', 'Desc Recherche de Jamal 1', 'Uni Recherche de Jamal 1', 'Terrain Recherche de Jamal 1', 'Labo Recherche de Jamal 1', 'Pays Recherche de Jamal 1', 'Mots Clé Recherche de Jamal 1'),
(27180, 'garbage', 'garbage', 'garbage', 'garbage', 'garbage', 'garbage', 'garbage'),
(86339, 'ii', 'ii', 'ii', 'ii', 'ii', 'ii', 'ii'),
(94568, 'Recherche de Zineb 3', 'Desc Recherche de Zineb 3', 'Uni Recherche de Zineb 3', 'Terrain Recherche de Zineb 3', 'Labo Recherche de Zineb 3', 'Pays Recherche de Zineb 3', 'Mots Clés Recherche de Zineb 3'),
(42511, 'Zineb4', 'Zineb4', 'Zineb4', 'Zineb4', 'Zineb4', 'Zineb4', 'Zineb4'),
(13061, 'Zineb5', 'Zineb5', 'Zineb5', 'Zineb5', 'Zineb5', 'Zineb5', 'Zineb5'),
(72893, 'sidfhdisn', 'uiniun', 'iuniu', 'niunui', 'niu', 'nuin', 'iuniui'),
(95288, 'vdsqg', 'dsgdf', 'cxvxwv', 'wvxcwvxw', 'vxcvw', 'cxvwvw', 'vxcvxwv'),
(72265, 'ooooo', 'ooooo', 'ooooo', 'ooooo', 'ooooo', 'ooooo', 'ooooo'),
(30791, 'eeeeeeee', 'eeeeeeee', 'eeeeeeee', 'eeeeeeee', 'eeeeeeee', 'eeeeeeee', 'eeeeeeee'),
(67828, 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm', 'mmmmmm'),
(74029, 'ppppp', 'ppppp', 'ppppp', 'ppppp', 'ppppp', 'ppppp', 'ppppp'),
(64949, 'kkkkkkkk', 'kkkkkkkk', 'kkkkkkkk', 'kkkkkkkk', 'kkkkkkkk', 'kkkkkkkk', 'kkkkkkkk'),
(60329, 'llllllllll', '', '', '', '', '', ''),
(83845, 'vhvgh', '', '', '', '', '', ''),
(66411, 'popopopopopo', 'popopopopopo', 'popopopopopo', 'popopopopopo', 'popopopopopo', 'popopopopopo', 'popopopopopo'),
(64878, '', '', '', '', '', '', ''),
(31604, 'do', 'do', '', '', '', '', 'do,do'),
(18547, '', '', '', '', '', '', ''),
(19442, '', '', '', '', '', '', ''),
(65439, 'Info', 'développement des applications web ', 'Test4', 'Test5', 'Test6', 'Test7', 'Test8'),
(53237, 'yass', 'yass', 'yass', 'yass', 'yass', 'yass', 'yass'),
(50186, 'Test', 'Test', 'Test', 'Test', 'Test', 'Test', 'Test'),
(97447, 'Test2', 'Test2', 'Test2', 'Test2', 'Test2', 'Test2', 'Test2'),
(49326, 'La géolocalisation sur map', 'Localiser les recherches des doctorants ', 'ENSIAS', 'ENSIAS', 'Test', 'Maroc', 'java EE, Géolocalisation'),
(29530, 'La géolocalisation sur map', 'Localiser les recherches des doctorants ', 'ENSIAS', 'ENSIAS', 'Test', 'Maroc', 'java EE, Géolocalisation');

-- --------------------------------------------------------

--
-- Structure de la table `rechercheat`
--

CREATE TABLE `rechercheat` (
  `id_rech` int(11) NOT NULL,
  `id_rech_at` int(11) NOT NULL,
  `loc_rech_at` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rechercheat`
--

INSERT INTO `rechercheat` (`id_rech`, `id_rech_at`, `loc_rech_at`) VALUES
(72265, 72, '(29.840643899834415, 2.900390625)'),
(95288, 31, '(33.870415550941836, 37.353515625)'),
(72893, 78, '(8.059229627200192, 8.349609375)'),
(72893, 94, '(13.068776734357693, 1.142578125)'),
(16198, 6, '(27.68352808378776, 28.740234375)'),
(30204, 47, '(32.694865977875054, -6.943359375)'),
(30204, 86, '(32.10118973232094, -7.822265625)'),
(74711, 6, '(47.04018214480667, -80.244140625)'),
(56401, 71, '(30.902224705171438, -2.197265625)'),
(56401, 65, '(29.38217507514529, 4.482421875)'),
(64878, 10, '(54.67383096593114, -73.916015625)'),
(64878, 20, '(47.04018214480667, -80.244140625)'),
(65439, 12, '(65.6582745198266, 70.400390625)'),
(65439, 75, '(61.10078883158897, 55.810546875)'),
(65439, 37, '(71.41317683396566, -44.208984375)'),
(53237, 74, '(19.476950206488414, 16.787109375)'),
(53237, 39, '(11.178401873711785, 1.845703125)'),
(50186, 84, '(32.24997445586331, -7.294921875)'),
(50186, 4, '(29.993002284551075, 3.779296875)'),
(97447, 38, '(63.6267446447533, -45.615234375)');

-- --------------------------------------------------------

--
-- Structure de la table `recherchest`
--

CREATE TABLE `recherchest` (
  `id_rech` int(11) NOT NULL,
  `id_rech_st` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rech_pays_at`
--

CREATE TABLE `rech_pays_at` (
  `id_rech` int(11) NOT NULL,
  `id_rech_at` int(11) NOT NULL,
  `id_pays` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `rech_theme`
--

CREATE TABLE `rech_theme` (
  `id_rech` int(11) NOT NULL,
  `id_theme` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rech_theme`
--

INSERT INTO `rech_theme` (`id_rech`, `id_theme`) VALUES
(16198, 47),
(18547, 3),
(19442, 28),
(27180, 96),
(29530, 41),
(30204, 39),
(30791, 72),
(31604, 33),
(42511, 81),
(49326, 4),
(53237, 20),
(56401, 79),
(60329, 67),
(64878, 9),
(64949, 6),
(65439, 63),
(67828, 76),
(72265, 43),
(72893, 75),
(74029, 23),
(74711, 62),
(83543, 53),
(83845, 32),
(86339, 87),
(94568, 42),
(97447, 74);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL,
  `nom_theme` varchar(254) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `theme`
--

INSERT INTO `theme` (`id_theme`, `nom_theme`) VALUES
(72, 'eeeeeeee'),
(43, 'ooooo'),
(75, 'niiun'),
(81, 'Zineb4'),
(42, 'Theme Recherche de Zineb 3'),
(87, 'ii'),
(96, 'garbage'),
(53, 'Theme Recherche de Jamal 1'),
(47, 'Theme Recherche Zineb 2'),
(39, 'Recherche de Zineb 1'),
(62, 'Recherche de Adnane 2'),
(79, 'Recherche de Adnane 1'),
(76, 'mmmmmm'),
(23, 'ppppp'),
(6, 'kkkkkkkk'),
(67, ''),
(32, ''),
(9, ''),
(33, 'do'),
(3, ''),
(28, ''),
(63, 'Test3'),
(20, 'yass'),
(74, 'Test2'),
(4, 'Travail avec des outils de développement'),
(41, 'Travail avec des outils de développement');

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
  `visib_user` varchar(11) DEFAULT NULL,
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
(75, 'Rakibi', 'Jamal', 'rakibi.jamal@gmail.com', '+212685954512', '1', 'Desc Opt', '1996-12-12', 'Doctorant', 'Maroc', 'Post Opt', 'lol', 0),
(57, 'LAMGHARI', 'Adnane', 'lamghari.adnane@gmail.com', '+212623214115', '0', 'King of Linkden', '1996-06-05', 'Doctorant', 'Maroc', 'King of shiet', 'lol', 1),
(65, 'ELOUASSAA', 'Zineb', 'elouassaa.zineb@gmail.com', '+212653211415', '1', 'Queen', '1996-06-05', 'Doctorant', 'Maroc', 'Queen', 'lol', 0),
(61, 'Test9', 'Test9', 'zahra11@gmail.com', '', '0', '', '', '', 'Maroc', '', '', 0),
(89, 'Elghandour', 'Yassine', 'zzz@gmail.com', '', '1', '', '', '', 'Maroc', '', '123', 1),
(53, 'Faridi', 'Nadia', 'nadia@gmail.com', '+212644335566', '0', 'Etudiante ENSIAS', '1995-09-09', 'Post-Doctorant', 'Maroc', 'Etudiant', 'nadia', 1),
(97, 'dd', 'jdj', 'ss@gmail.com', '', '1', '', '', '', 'Maroc', '', '', 0),
(16, 'hgj', 'jgj', 'ko@g.com', '', '1', '', '', '', 'Maroc', '', '', 0),
(36, 'Naciri', 'Nadia', 'naciri@gmail.com', '+212644335566', '0', 'Esprit d\'équipe,étudiante à l\'ENSIAS', '1995-09-09', 'Doctorant', 'Maroc', 'chef de projet à la société CCIG', 'naciri', 1),
(98, 'Faraby', 'Youssef', 'youssef@gmail.com', '+212644335566', '1', 'Esprit d\'équipe,étudiant à l\'ENSIAS', '1995-07-06', 'Doctorant', 'Maroc', 'chef de projet à la société CCIG', 'youssef', 1),
(100, 'Papay', '', 'dfd@g.h', '', '1', '', '', '', 'Maroc', '', '', 0),
(88, 'fdgh', 'hfgfh', 'df@dff.f', '', '1', '', '', '', 'Maroc', '', '', 0),
(70, 'jdghuf', 'hjndfdn', 'df@dj.d', '', '0', '', '', '', 'Maroc', '', '', 0),
(34, 'Bouaddi', 'Amal', 'amal.bouaddi@gmail.com', '+212644335566', NULL, 'Etudiante de l\'ENSIAS', '1990-09-09', 'Post-Doctorant', 'Maroc', 'chef de projet à la société CCIG', 'amal', 1),
(85, 'ss', 'df', 'sd@h.k', '+212644335566', NULL, '', '', '', 'Maroc', '', 'saa', 0);

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
-- Index pour la table `cherch_rech_at`
--
ALTER TABLE `cherch_rech_at`
  ADD PRIMARY KEY (`id_user`,`id_cherch_at`,`id_rech`,`id_rech_at`),
  ADD KEY `FK_cherch_rech_at` (`id_rech`,`id_rech_at`);

--
-- Index pour la table `cherch_rech_st`
--
ALTER TABLE `cherch_rech_st`
  ADD PRIMARY KEY (`id_user`,`id_cherch_st`,`id_rech`,`id_rech_st`),
  ADD KEY `FK_cherch_rech_st` (`id_rech`,`id_rech_st`);

--
-- Index pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  ADD PRIMARY KEY (`id_lab`);

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
-- Index pour la table `rechercheat`
--
ALTER TABLE `rechercheat`
  ADD PRIMARY KEY (`id_rech`,`id_rech_at`);

--
-- Index pour la table `recherchest`
--
ALTER TABLE `recherchest`
  ADD PRIMARY KEY (`id_rech`,`id_rech_st`);

--
-- Index pour la table `rech_pays_at`
--
ALTER TABLE `rech_pays_at`
  ADD PRIMARY KEY (`id_rech`,`id_rech_at`,`id_pays`),
  ADD KEY `FK_rech_pays_at` (`id_pays`);

--
-- Index pour la table `rech_theme`
--
ALTER TABLE `rech_theme`
  ADD PRIMARY KEY (`id_rech`,`id_theme`),
  ADD KEY `FK_rech_theme` (`id_theme`);

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
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `chercheur_at`
--
ALTER TABLE `chercheur_at`
  MODIFY `id_cherch_at` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `chercheur_st`
--
ALTER TABLE `chercheur_st`
  MODIFY `id_cherch_st` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `laboratoire`
--
ALTER TABLE `laboratoire`
  MODIFY `id_lab` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id_pays` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recherche`
--
ALTER TABLE `recherche`
  MODIFY `id_rech` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99737;
--
-- AUTO_INCREMENT pour la table `rechercheat`
--
ALTER TABLE `rechercheat`
  MODIFY `id_rech_at` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `recherchest`
--
ALTER TABLE `recherchest`
  MODIFY `id_rech_st` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT pour la table `universite`
--
ALTER TABLE `universite`
  MODIFY `id_uni` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
