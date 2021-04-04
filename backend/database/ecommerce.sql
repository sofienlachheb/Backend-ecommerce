-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 29 déc. 2020 à 07:05
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ecommerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` smallint(6) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `category`, `icon`) VALUES
(1, 'Talons femmes 2021', 'hashtag'),
(2, 'Robes femmes 2021', 'home'),
(3, 'pantalons femmes', 'plus-circle'),
(4, 'Chemises femmes', 'shopping-bag'),
(5, 'Bon plan femmes', 'success-standard'),
(6, 'Mode femmes', 'plus-circle');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `sexe` int(11) DEFAULT NULL,
  `pseudo` varchar(255) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `dateBirth` datetime NOT NULL DEFAULT current_timestamp(),
  `adresse_facturation` varchar(255) NOT NULL,
  `adresse_livraison` varchar(255) NOT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`id`, `sexe`, `pseudo`, `firstname`, `lastname`, `description`, `dateBirth`, `adresse_facturation`, `adresse_livraison`, `tel`, `email`, `password`) VALUES
(1, 1, 'pseudo1', 'DUPONT 0', 'Jeanne  0', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne0@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(2, 1, 'pseudo1', 'DUPONT 1', 'Jeanne  1', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne1@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(3, 1, 'pseudo1', 'DUPONT 2', 'Jeanne  2', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne2@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(4, 2, 'pseudo1', 'DUPONT 3', 'Jeanne  3', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne3@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(5, 2, 'pseudo1', 'DUPONT 4', 'Jeanne  4', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne4@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(6, 1, 'pseudo1', 'DUPONT 5', 'Jeanne  5', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne5@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(7, 2, 'pseudo1', 'DUPONT 6', 'Jeanne  6', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne6@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(8, 1, 'pseudo1', 'DUPONT 7', 'Jeanne  7', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne7@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(9, 1, 'pseudo1', 'DUPONT 8', 'Jeanne  8', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne8@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(10, 2, 'pseudo1', 'DUPONT 9', 'Jeanne  9', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne9@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(11, 2, 'pseudo1', 'DUPONT 10', 'Jeanne  10', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne10@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(12, 2, 'pseudo1', 'DUPONT 11', 'Jeanne  11', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne11@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(13, 2, 'pseudo1', 'DUPONT 12', 'Jeanne  12', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne12@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(14, 2, 'pseudo1', 'DUPONT 13', 'Jeanne  13', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne13@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(15, 1, 'pseudo1', 'DUPONT 14', 'Jeanne  14', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne14@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(16, 2, 'pseudo1', 'DUPONT 15', 'Jeanne  15', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne15@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(17, 2, 'pseudo1', 'DUPONT 16', 'Jeanne  16', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne16@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(18, 2, 'pseudo1', 'DUPONT 17', 'Jeanne  17', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne17@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(19, 1, 'pseudo1', 'DUPONT 18', 'Jeanne  18', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne18@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a'),
(20, 1, 'pseudo1', 'DUPONT 19', 'Jeanne  19', '', '1925-10-26 13:48:11', '', '', NULL, 'jeanne19@espero-soft.com', 'a9ad35afa4d1539b4bbaa9a34813e5c8b5932d6a');

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_customers` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `createdat` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `id_customers`, `id_product`, `quantity`, `price`, `createdat`) VALUES
(1, 11, 29, 1, 56.99, '2020-04-24 21:38:30'),
(2, 11, 15, 1, 29.99, '2020-04-24 21:38:30'),
(3, 11, 5, 1, 23.89, '2020-04-24 21:41:33'),
(4, 11, 36, 1, 788.99, '2020-04-24 21:41:33'),
(5, 11, 1, 1, 78.98, '2020-04-24 22:27:11'),
(6, 11, 1, 1, 78.98, '2020-04-24 22:27:12'),
(7, 24, 2, 1, 78.98, '2020-04-25 12:17:07'),
(8, 24, 35, 1, 666.99, '2020-04-25 12:18:04'),
(9, 11, 4, 1, 23.98, '2020-05-25 03:24:44'),
(10, 11, 4, 1, 23.98, '2020-05-25 03:24:44'),
(14, 1, 2, 3, 20, '2020-10-10 23:05:32'),
(15, 11, 14, 5, 269.36, '2020-10-27 09:23:06');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `createdat` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `stock`, `category`, `image`, `createdat`) VALUES
(1, 'Talons hauts 2020 femme', 'SARAIRIS 2020 mode été plate-forme talons hauts compensés décontracté confortable lumière loisirs chaussures femme sandales femmes chaussures femme', 59.99, 600, 1, 'talon1.PNG', '2020-04-16 00:00:00'),
(2, 'sandales compensées', 'DAHOOD sandales compensées pour femme mi-talon été sans lacet boucle dames chaussures artificiel bout ouvert décontracté pompes de mariage femmes Sandalias', 78.98, 200, 1, 'talon2.PNG', '2020-03-20 16:56:47'),
(3, 'Chaussures à talons hauts pour femmes', 'Chaussures à talons hauts pour femmes, escarpins superbes 12cm, escarpins à talons fins, à plateforme pointue et à motif serpent', 23.98, 200, 1, 'talon4.PNG', '2020-03-20 16:57:53'),
(4, 'Sandales femmes', 'Sandales femmes nouvelles chaussures d\'été femme grande taille 46 talons sandales pour chaussures à semelles compensées femme chaussures décontractées gladiateur Sandalias Mujer', 23.98, 200, 1, 'b2.png', '2020-03-20 16:57:53'),
(5, 'Direct talons bas', 'Usine Direct talons bas sandales femmes bride à la cheville chaussures d\'été femme grande taille 43 bloc talons femmes chaussures 2019 sandales décontractées', 23.89, 50, 1, 'b5.png', '2020-03-22 15:17:02'),
(6, 'sandales plates', 'Femmes 2020 été sandales plates décontractées grande taille tongs femme troupeau métal décoration fermeture éclair cheville Wrap chaussures loisirs chaussures', 67.99, 900, 1, 'b6.png', '2020-03-22 15:17:02'),
(7, 'sandales grande taille', 'Usine Direct femmes sandales grande taille 43 gladiateur sandales pour plage plat d\'été Chaussures Femme Zip livraison directe Chaussures Femme', 89.99, 202, 1, 'b7.png', '2020-03-22 15:30:57'),
(8, 'femmes Slingback', '2020 été élégant femmes Slingback sandales blanc noir argent bas talons hauts fermé orteil sandales décontracté bureau dame chaussures de fête', 88.99, 200, 1, 'b8.png', '2020-03-22 15:30:57'),
(9, 'Sexy mince talons', 'Sarairis 2020 nouvelle mode grande taille 43 Sexy mince talons hauts d\'été sandales femme chaussures bout pointu mélange couleur chaussures femmes', 34.99, 500, 1, 'b9.png', '2020-03-22 15:30:57'),
(10, 'femmes sandales', 'Été femmes sandales bride à la cheville treillis dames épais talons hauts chaussures femme croix bout ouvert couverture talons femme sandales 2020', 56.99, 200, 1, 'b10.png', '2020-03-22 15:30:57'),
(11, 'Élégant robe longue', 'Élégant robe longue femmes printemps Plaid imprimer robe de soirée irrégulière Vintage robes dames bouton a-ligne 2020 nouvelle robe de mode', 55.99, 8500, 2, 'c2.png', '2020-03-24 21:15:47'),
(12, 'robe de bureau Sexy', 'Grande taille 2019 mode été Patchwork pli travail robe de bureau Sexy moulante sans manches femmes décontracté tenue de fête robe de fête', 34.99, 500, 2, 'c3.png', '2020-03-24 21:15:47'),
(13, 'Bandage moulante à manches', 'Recherché nouveau femmes Bandage moulante à manches courtes robe de soirée Midi', 56.99, 200, 2, 'c4.png', '2020-03-24 21:15:47'),
(14, 'mode femmes Sexy dames', 'Marque nouvelle mode femmes Sexy dames o-cou robe noire pansement moulante à manches longues soirée Cocktail courte Mini robe', 165.99, 200, 2, 'c5.png', '2020-03-24 21:15:47'),
(15, 'Robe femmes grande', 'Robe femmes grande taille 3XL 11 couleur Sexy col en v solide paillettes couture brillant Club gaine', 29.99, 100, 2, 'c7.png', '2020-03-24 21:15:47'),
(16, 'brillant Club gaine', 'Robe femmes grande taille 3XL 11 couleur Sexy col en v solide paillettes couture brillant Club gaine4.', 23.8, 200, 2, 'c8.png', '2020-03-24 21:20:54'),
(17, 'mode femmes Sexy', 'Marque nouvelle mode femmes Sexy dames o-cou robe noire pansement moulante à manches longues soirée Cocktail courte Mini robe', 23.8, 200, 2, 'c6.png', '2020-03-24 21:23:24'),
(18, 'Robe femmes bureau', 'Robe de bureau femmes élégantes femmes bureau dame Sexy solide col rabattu à manches longues boutons moulante travail robe formelle', 89.99, 100, 2, 'c9.png', '2020-03-26 14:57:08'),
(19, 'Robe élégante femmes', 'Bureau dames robe élégante femmes mode jaune à manches courtes grande taille moulante taille haute grandes tailles travail Sexy robe Midi femme', 99.99, 200, 2, 'c10.png', '2020-03-26 14:58:48'),
(20, 'cuir pantalon noir', 'Pantalon femmes taille haute PU cuir pantalon noir Leggings femme brillant Stretch crayon pantalon élastique pantalon femme vêtements', 45.99, 150, 3, 'p4.png', '2020-04-01 10:36:57'),
(21, 'pantalon large jambe', 'Toplook Neon pantalon large jambe 2019 été femmes taille haute Streetwear Festival pantalon lâche noir vêtements bureau dames ceinture', 78.9, 255, 3, 'p2.png', '2020-04-01 10:36:57'),
(22, 'Flare pantalon femme', 'Taille haute décontracté Flare pantalon femme mode nouveau pantalon femmes cheville-longueur femmes vêtements 2018', 67.89, 300, 3, 'p3.png', '2020-04-01 10:36:57'),
(23, 'Skinny Slim pantalon', 'Femmes Stretch taille haute Jegging Denim Jeans Skinny Slim pantalon pantalons Leggings décontracté quotidien vêtements Skinny crayon', 78.99, 500, 3, 'p1.png', '2020-04-01 10:36:57'),
(24, 'Rayonne tricoté Sexy', 'couleurs de haute qualité crayon femmes pantalon rayonne tricoté Sexy & Club pantalon de pansement vêtements de fête', 67.99, 444, 3, 'p5.png', '2020-04-01 10:36:57'),
(25, 'Pantalon élastique', 'Grande taille femmes pantalon élastique taille haute pantalon femmes pantalon Patchwork Capris pantalons de survêtement Joggers mode décontracté femmes vêtements', 56.99, 500, 3, 'p6.png', '2020-04-01 10:36:57'),
(26, 'chauve-souris aile', 'Été chauve-souris aile haut femmes avant lacé Blouse dame dentelle à manches courtes tunique dente chemise femme t-shirt blusas mujer nouveau', 56.99, 200, 4, 'f1.png', '2020-04-01 10:50:39'),
(27, 'Rayures irrégulières', 'Automne à manches longues col en V chemise à rayures irrégulières femmes décontracté hauts et chemisiers chemise femme camisas mujer femmes blouses', 76.99, 455, 4, 'f2.png', '2020-04-01 10:50:39'),
(28, 'Blouse à manches courtes', 'Femmes 2019 été Blouse à manches courtes à bretelles blusas chemise femme chemise élégante femme moulante hauts ShirtDorp', 89.99, 444, 4, 'f3.png', '2020-04-01 10:50:39'),
(29, 'vêtements décontracté', '4xl grande taille femmes vêtements décontracté col en v femmes Blouses à manches courtes imprimé Chemise Femme taille ceinture haut pour Femme Chemise Femme', 56.99, 555, 4, 'f4.png', '2020-04-01 10:50:39'),
(30, 'Chemises À Carreaux', '2019 Printemps Chemises À Carreaux Femmes Batwing Manches En Mousseline De Soie Blouses décontracté Nuisette Femme hauts grande taille Tartan Blusas Mujer M-4XL', 65.88, 222, 4, 'f5.png', '2020-04-01 10:50:39'),
(31, 'Mode Vintage imprimé', 'Mode Vintage imprimé Floral Blouse Chemise 2019 été sans manches en mousseline de soie Blouse Sexy col en V femmes chemises décontractées amples Chemise', 56.99, 444, 4, 'f6.png', '2020-04-01 10:50:39'),
(32, 'baskets maille respirant', 'Femmes baskets maille respirant plate-forme talons compensés chaussures de sport d\'été chaussures plates Zapatillas Deportivas Mujer', 299.99, 200, 5, 'm2.png', '2020-04-01 11:13:38'),
(33, 'chaussures de course', 'Nouveau élégant femme chaussures de course augmentant 6CM INS haut talon baskets femmes hauteur plate-forme respirant sport marche filles', 188.99, 444, 5, 'm3.png', '2020-04-01 11:13:38'),
(34, 'Doux décontracté', 'Doux décontracté épais Sneaker plate-forme été respirant maille chaussures pour femmes plat décontracté jaune chaussures de sport femme Orange 2020', 499.99, 222, 5, 'm4.png', '2020-04-01 11:13:38'),
(35, 'baskets légères', 'Mode femmes baskets légères chaussures de sport femmes chaussures respirant confort plate-forme chaussures pour dames Basket Femme formateurs', 666.99, 889, 5, 'm5.png', '2020-04-01 11:13:38'),
(36, 'baskets blanc noir', 'Femmes baskets blanc noir chaussures de créateur femme automne hiver grosses baskets mode lumière papa chaussures dames plate-forme chaussures', 788.99, 333, 5, 'm6.png', '2020-04-01 11:13:38'),
(37, 'baskets femmes hauteur', 'nouveau élégant femme chaussures de course augmentant 6CM INS haut talon baskets femmes hauteur plate-forme respirant sport marche filles', 568.99, 222, 5, 'm7.png', '2020-04-01 11:13:38'),
(41, 'chemise femme VIP 2020', 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de tex', 69.99, 600, 4, 'ch1.PNG', '2020-12-09 19:07:13'),
(42, ' Chemisier blanc en mousseline', 'Chemisier blanc en mousseline de soie pour femme, vêtement de bureau, à la mode, chemise à manches longues, tenue décontractée', 19.99, 300, 4, 'ch4.PNG', '2020-12-09 19:52:00'),
(43, 'Chemisier bleu en mousseline', 'Chemisier blanc en mousseline de soie pour femme, vêtement de bureau, à la mode, chemise à manches longues, tenue décontractée', 79.99, 500, 4, 'ch2.PNG', '2020-12-09 19:54:40'),
(44, 'Chaussures blanches compensées', 'Chaussures blanches compensées plate-forme baskets femmes respirant Air maille chaussette compensée chaussures femme 2020 chaussures décontractées Zapatos De Mujer', 59.99, 550, 5, 'bonplan1.PNG', '2020-12-09 19:59:34'),
(45, 'Escarpins en cristal 2021', 'Escarpins en cristal pour femmes, chaussures à talons hauts plateforme, chaussures de mariage, rouge et argent, collection 2020', 59.99, 300, 1, 'talon3.PNG', '2020-12-09 20:00:43'),
(47, 'Manteau Hiver 2021', 'Hiver fausse fourrure de renard col vestes femmes mode court Denim manteaux femmes élégantes grandes poches vestes chaudes femmes dames', 69.99, 350, 4, 'manteau_2.PNG', '2020-12-09 22:23:44'),
(62, 'Chemise Femme été 2065', 'Merci Pour ce produit ajouté', 69.99, 600, 3, 'ch2.PNG', '2020-12-26 13:51:51'),
(69, 'Chemise Femme été 2020', 'Wizards are used to help users walk through a defined step-by-step process. Each step is in the sidebar on the left. As users complete steps, the steps are marked with a green bar to the left.', 39.99, 800, 5, 'chemise_4.webp', '2020-12-27 18:07:22'),
(75, 'Product Test', 'fdsvefgber fzergre gferger', 69.99, 500, 5, 'manteau_2.PNG', '2020-12-28 12:49:49'),
(76, 'Chemise Femme été 2065', 'Cours 10 Admin - Service d\'upload d\'image associé à un produit', 39.99, 200, 4, 'chaussure_1.webp', '2020-12-28 14:14:56'),
(77, 'Talons hauts 2020', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 369.99, 600, 4, 'robe_1.PNG', '2020-12-28 15:11:58'),
(78, 'Chemise Femme été 2065', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 39.99, 200, 0, 'robe_2.PNG', '2020-12-28 15:13:28'),
(79, 'Chemise Femme été 2065', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 39.99, 200, 0, 'robes_1.webp', '2020-12-28 15:17:16'),
(80, 'Name 2020', 'Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on u', 39.99, 200, 0, 'robes_3.webp', '2020-12-28 15:31:48');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customers_index` (`id_customers`),
  ADD KEY `id_product_index` (`id_product`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_index` (`category`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
