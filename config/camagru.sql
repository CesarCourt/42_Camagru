-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3307
-- Généré le : lun. 25 mai 2020 à 15:16
-- Version du serveur :  8.0.20
-- Version de PHP : 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `camagru`
--

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id_com` int NOT NULL,
  `id_user` int NOT NULL,
  `id_img` int NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id_com`, `id_user`, `id_img`, `text`, `date`) VALUES
(125, 93, 72, 'hello', '2020-05-25 17:11:38'),
(126, 93, 80, 'Yo', '2020-05-25 17:14:55');

-- --------------------------------------------------------

--
-- Structure de la table `like`
--

CREATE TABLE `like` (
  `id_like` int NOT NULL,
  `id_user` int NOT NULL,
  `id_img` int NOT NULL,
  `liked` enum('0','1') NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `like`
--

INSERT INTO `like` (`id_like`, `id_user`, `id_img`, `liked`, `date`) VALUES
(75, 93, 72, '1', '2020-05-25 17:12:38'),
(76, 93, 80, '1', '2020-05-25 17:14:51');

-- --------------------------------------------------------

--
-- Structure de la table `picture`
--

CREATE TABLE `picture` (
  `id_img` int NOT NULL,
  `id_user` int NOT NULL,
  `img` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `like` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `picture`
--

INSERT INTO `picture` (`id_img`, `id_user`, `img`, `date`, `like`) VALUES
(80, 93, 'public/picture/Cococo92/Cococo92(1).png', '2020-05-25 17:13:27', 0);

-- --------------------------------------------------------

--
-- Structure de la table `sticker`
--

CREATE TABLE `sticker` (
  `id_sticker` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img_sticker` varchar(255) DEFAULT NULL,
  `sticker_label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sticker`
--

INSERT INTO `sticker` (`id_sticker`, `name`, `img_sticker`, `sticker_label`) VALUES
(1, '42', './public/stickers/42.png', './public/stickers/42Label.png'),
(2, 'glasses', './public/stickers/glasses.png', './public/stickers/glassesLabel.png'),
(3, 'mask', './public/stickers/mask.png', './public/stickers/maskLabel.png'),
(4, 'eiffel', './public/stickers/eiffel.png', './public/stickers/eiffelLabel.png'),
(5, 'hearts', './public/stickers/hearts.png', './public/stickers/heartsLabel.png'),
(6, 'stars', './public/stickers/stars.png', './public/stickers/starsLabel.png'),
(7, 'starwars', './public/stickers/starwars.png', './public/stickers/starwarsLabel.png'),
(8, 'unicorn', './public/stickers/unicorn.png', './public/stickers/unicornLabel.png');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(12) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `receive_mail` enum('0','1') NOT NULL DEFAULT '1',
  `name` varchar(15) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `profile_pic` varchar(255) NOT NULL DEFAULT './public/images/profile.png',
  `bio` varchar(140) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `activation_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `login`, `mail`, `receive_mail`, `name`, `pass`, `active`, `profile_pic`, `bio`, `activation_key`) VALUES
(1, 'test', 'xorogi7922@provamail.com', '1', 'test', '$2y$10$D/jz6653LWiP18ttD2WfXufFaeprWDnaaelC1gVrm9euMWajABPdq', '1', './public/images/profile.png', NULL, 'b305be0e832effe026439c82a94daed0'),
(93, 'cococo92', 'vilivo7654@prowerl.com', '1', 'Cococo92', '$2y$10$UTrdAKMDbJihA/hrL3fx1.8T1Krg6l3iKKo2.Cy6unKzhA/O8cZWu', '1', './public/images/profile.png', 'hello', '06d21138a49e50267efd4c63b1ab9726');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_com`);

--
-- Index pour la table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id_like`);

--
-- Index pour la table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id_img`);

--
-- Index pour la table `sticker`
--
ALTER TABLE `sticker`
  ADD PRIMARY KEY (`id_sticker`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_com` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pour la table `like`
--
ALTER TABLE `like`
  MODIFY `id_like` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT pour la table `picture`
--
ALTER TABLE `picture`
  MODIFY `id_img` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `sticker`
--
ALTER TABLE `sticker`
  MODIFY `id_sticker` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;