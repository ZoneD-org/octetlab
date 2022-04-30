-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: octetlab
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `avis`
--

DROP TABLE IF EXISTS `avis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avis` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` int DEFAULT NULL,
  `commentaire` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avis`
--

LOCK TABLES `avis` WRITE;
/*!40000 ALTER TABLE `avis` DISABLE KEYS */;
INSERT INTO `avis` VALUES (1,'Arnold FOSSO','arnold.f@intekor.ca',4,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus at ante tincidunt, commodo dui vitae, venenatis ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Vivamus consectetur turpis non tempor fringilla. Integer sodales velit rutrum dui cursus, vel sodales ipsum bibendum.','2022-03-17 05:09:47','2022-03-17 05:09:47'),(2,'Arnold FOSSO','arnold.f@intekor.ca',4,'Weil Ihre Meinung zählt, hinterlassen Sie uns Ihre Kommentare, um unsere Vorgehensweise zu verbessern.Weil Ihre Meinung zählt, hinterlassen Sie uns Ihre Kommentare, um unsere Vorgehensweise zu verbessern.Weil Ihre Meinung zählt, hinterlassen Sie uns Ihre Kommentare, um unsere Vorgehensweise zu verbessern.','2022-03-17 05:19:55','2022-03-17 05:19:55'),(3,'arthur','arthur@gmail.com',4,'Vos services sont cool','2022-03-18 18:34:12','2022-03-18 18:34:12'),(4,'arthur','arnoldprosperfosso237@gmail.com',4,'i like it!','2022-04-08 19:21:53','2022-04-08 19:21:53');
/*!40000 ALTER TABLE `avis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_services`
--

DROP TABLE IF EXISTS `categorie_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorie_services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `etat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_services`
--

LOCK TABLES `categorie_services` WRITE;
/*!40000 ALTER TABLE `categorie_services` DISABLE KEYS */;
INSERT INTO `categorie_services` VALUES (1,'Conception graphique','Graphic design','Grafische Gestaltung','Notre service de conception graphique a pour objectif de rendre l’image de votre marque encore plus percutante grâce à un design graphique original, propre, clair et correspondant à l’identité de votre entreprise. \r\nNous vous proposons une panoplie de supports de communication à personnaliser à votre effigie : logos, dépliants, cartes de visite, présentoirs, étiquettes et autocollants, packagings, affiches et supports grand format tels que les bannières et les supports rigides. Pour vous aider, nos graphistes professionnels sont à votre disposition pour créer vos supports marketing. Alors, rapprochez-vous de vos objectifs marketing en optant pour nos services de création graphique afin de bénéficier du support de nos graphistes pour la réalisation de votre design graphique !','Unser Grafikdesign-Service zielt darauf ab, das Image Ihrer Marke durch ein originelles, sauberes, klares und der Identität Ihres Unternehmens entsprechendes Grafikdesign noch schlagkräftiger zu machen. \r\nWir bieten Ihnen eine ganze Reihe von Kommunikationsmitteln, die Sie mit Ihrem Logo versehen können: Logos, Faltblätter, Visitenkarten, Displays, Etiketten und Aufkleber, Verpackungen, Poster und großformatige Medien wie Banner und starre Materialien. Zu Ihrer Unterstützung stehen Ihnen unsere professionellen Grafikdesigner zur Verfügung, die Ihre Marketingmaterialien gestalten. Kommen Sie also Ihren Marketingzielen näher, indem Sie sich für unsere Grafikdesign-Dienstleistungen entscheiden, um von der Unterstützung unserer Grafikdesigner bei der Erstellung Ihres Grafikdesigns zu profitieren!','Our graphic design service aims to make your brand\'s image even more striking thanks to an original, clean, clear graphic design that matches your company\'s identity. \r\nWe offer you a wide range of communication media to personalise with your image: logos, leaflets, business cards, displays, labels and stickers, packaging, posters and large format media such as banners and rigid media. To help you, our professional graphic designers are available to create your marketing materials. So, get closer to your marketing objectives by opting for our graphic design services and benefit from the support of our graphic designers for the creation of your graphic design!','conception-graphique','http://vps-ab2ebf02.vps.ovh.net:8003/images/1647099362eG.jpg','2022-03-12 14:36:02','2022-03-12 14:36:02','published'),(2,'Conception et développement Web','Web design and development','Webdesign und -entwicklung','Votre site web est le reflet de votre marque, votre réputation, votre expertise et votre professionnalisme.  Un site web réactif, attractif, fonctionnel et visuellement attrayant est vital pour la réussite des entreprises. Nos experts créeront un site web dédié, réactif et mobile qui non seulement captera votre audience, mais représentera également votre marque et votre vision. Pour mettre en valeur votre entreprise, un site web doit offrir une expérience exceptionnelle aux visiteurs ou aux utilisateurs. C’est pourquoi la conception et le développement du site web deviennent la base de la stratégie de vente et de marketing de votre entreprise. Nous collaborons avec vous pour planifier et exécuter chaque élément de votre site internet afin qu\'il soit en connexion avec votre public, qu’il communique votre message tout en valorisant votre marque.','Ihre Website ist das Spiegelbild Ihrer Marke, Ihres Rufs, Ihres Fachwissens und Ihrer Professionalität.  Eine reaktionsschnelle, attraktive, funktionale und optisch ansprechende Website ist für den Erfolg eines Unternehmens von entscheidender Bedeutung. Unsere Experten erstellen eine dedizierte, reaktionsschnelle und mobile Website, die nicht nur Ihr Publikum fesseln, sondern auch Ihre Marke und Ihre Vision repräsentieren wird. Um Ihr Unternehmen ins rechte Licht zu rücken, muss eine Website den Besuchern oder Nutzern ein außergewöhnliches Erlebnis bieten. Deshalb werden das Design und die Entwicklung der Website zur Grundlage der Verkaufs- und Marketingstrategie Ihres Unternehmens. Wir arbeiten mit Ihnen zusammen, um jedes Element Ihrer Website so zu planen und auszuführen, dass sie mit Ihrem Publikum in Verbindung steht, Ihre Botschaft vermittelt und gleichzeitig Ihre Marke aufwertet.','Your website is a reflection of your brand, your reputation, your expertise and your professionalism.  A responsive, attractive, functional and visually appealing website is vital to business success. Our experts will create a dedicated, responsive and mobile-friendly website that not only captures your audience, but also represents your brand and vision. To showcase your business, a website must provide an exceptional experience for visitors or users. That\'s why website design and development becomes the foundation of your company\'s sales and marketing strategy. We work with you to plan and execute every element of your website so that it connects with your audience, communicates your message and enhances your brand.','conception-et-developpement-web','http://vps-ab2ebf02.vps.ovh.net:8003/images/1647118298dv.jpg','2022-03-12 15:05:18','2022-03-12 19:51:38','published'),(3,'Développement d\'applications web et mobile','Application development','Entwicklung von Anwendungen','Nous sommes spécialisés dans la conception et le développement mobile sur Android et IOS , la création des sites web , et le développement des plateformes digitales. Notre équipe est composée de développeurs, designers et chefs de projet, tous experts, et fiers par les applications web et mobiles que nous réalisons pour nos clients. Nous mettons notre expertise, passion, et savoir faire, au service de vos besoins , afin de vous aider à développer votre stratégie digitale, renforcez votre business , et améliorer votre visibilité et votre notoriété.','Wir haben uns auf das Design und die Entwicklung von Mobilgeräten für Android und IOS , die Erstellung von Websites und die Entwicklung digitaler Plattformen spezialisiert. Unser Team besteht aus Entwicklern, Designern und Projektmanagern, die alle Experten sind und stolz auf die Web- und Mobilanwendungen sind, die wir für unsere Kunden entwickeln. Wir stellen unser Fachwissen, unsere Leidenschaft und unser Know-how in den Dienst Ihrer Bedürfnisse, um Ihnen zu helfen, Ihre digitale Strategie zu entwickeln, Ihr Geschäft zu stärken und Ihre Sichtbarkeit und Ihren Bekanntheitsgrad zu erhöhen.','We specialise in mobile design and development on Android and IOS, website design, and digital platform development. Our team is made up of developers, designers and project managers, all of whom are experts in, and proud of, the web and mobile applications we create for our clients. We put our expertise, passion and know-how at your service to help you develop your digital strategy, strengthen your business and improve your visibility and reputation.','developpement-dapplications-web-et-mobile','http://vps-ab2ebf02.vps.ovh.net:8003/images/1647119851OD.jpg','2022-03-12 15:14:54','2022-03-12 20:20:54','published'),(4,'Marketing digitale','Marketing digital','Digitales Marketing','Marketing digitalLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','marketing-digitale','http://vps-ab2ebf02.vps.ovh.net:8003/images/1650330075Gc.jpg','2022-04-08 19:00:07','2022-04-19 01:01:15','published');
/*!40000 ALTER TABLE `categorie_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipes`
--

DROP TABLE IF EXISTS `equipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `poste_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipes`
--

LOCK TABLES `equipes` WRITE;
/*!40000 ALTER TABLE `equipes` DISABLE KEYS */;
INSERT INTO `equipes` VALUES (1,'Dimitri Mbe','mbedimitri14@gmail.com','Président directeur général','Chief Executive Officer','Geschäftsführer',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1650395497pz.png','2022-03-12 22:37:14','2022-04-19 19:11:37'),(2,'Donzong Darryl','fokochanel@gmail.com','Directeur technique','Chief Operative Officer','Operativer Geschäftsführer',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647130713Di.png','2022-03-12 22:39:46','2022-03-18 18:39:29'),(3,'Mekouontchou Cedric','takisensei694@gmail.com','Responsable du marketing','Marketing manager','Marketingleiter',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647132267Y6.png','2022-03-12 22:41:32','2022-03-12 23:44:27'),(4,'Moustapha Doucoure','doucoure.moustapha@ugb.edu.sn','Directeur graphique','Graphic Director','Grafischer Leiter',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647132092nI.png','2022-03-12 22:42:49','2022-03-13 11:23:22'),(5,'Lesline Evengue','leslineevengue12@gmail.com','Responsable des ressources','Ressources manager','Ressourcen Manager',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647132442OJ.png','2022-03-12 22:43:57','2022-03-12 23:47:22'),(6,'Arnold FOSSO','arnold.f@intekor.ca','Développeur web','Web developer','Web developer',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1650326979aS.jpg','2022-04-08 19:13:44','2022-04-19 00:09:39'),(7,'Tsakam Oscar','digtoj@gmail.com','Chef de projets','Chief project manager','Chief Project Manager',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1650395244cU.png','2022-04-19 19:07:24','2022-04-19 19:07:24'),(8,'Djoken Christian','djokenvicky@gmail.com','Directeur technique','IT Director','IT-Direktor',NULL,NULL,NULL,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1650395438Sk.jpeg','2022-04-19 19:10:38','2022-04-19 19:10:38');
/*!40000 ALTER TABLE `equipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `item` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `logs_user_id_foreign` (`user_id`),
  CONSTRAINT `logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,'Enregistrement d\'une nouvelle catégorie de service: Test','Catégorie de service',1,'2022-04-14 18:33:55','2022-04-14 18:33:55'),(2,'Mise à jour de la catégorie de service Marketing digitale','Catégorie de service',1,'2022-04-14 18:37:30','2022-04-14 18:37:30'),(3,'Suppression catégorie de service Test','Catégorie de service',1,'2022-04-14 18:38:07','2022-04-14 18:38:07'),(4,'Connexion de l\'utilisateur Arnold FOSSO','Utilisateurs',1,'2022-04-19 00:07:19','2022-04-19 00:07:19'),(5,'Mise à jour des informations du membre Arnold FOSSO','Equipe',1,'2022-04-19 00:09:39','2022-04-19 00:09:39'),(6,'Connexion de l\'utilisateur Arnold FOSSO','Utilisateurs',1,'2022-04-19 00:11:01','2022-04-19 00:11:01'),(7,'Mise à jour des informations du témoignage de Yvan','Témoignages',1,'2022-04-19 00:11:28','2022-04-19 00:11:28'),(8,'Connexion de l\'utilisateur Arnold FOSSO','Utilisateurs',1,'2022-04-19 00:13:29','2022-04-19 00:13:29'),(9,'Connexion de l\'utilisateur Arnold FOSSO','Utilisateurs',1,'2022-04-19 00:28:40','2022-04-19 00:28:40'),(10,'Suppression de l\'utilisateur Prosper FONKOU','Utilisateurs',1,'2022-04-19 00:48:05','2022-04-19 00:48:05'),(11,'Enregistrement de l\'utilisateur Admin OctetLab','Utilisateurs',1,'2022-04-19 00:50:40','2022-04-19 00:50:40'),(12,'Déconnexion de l\'utilisateur Arnold FOSSO','Utilisateurs',1,'2022-04-19 00:51:09','2022-04-19 00:51:09'),(13,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 00:51:23','2022-04-19 00:51:23'),(14,'Connexion de l\'utilisateur Arnold FOSSO','Utilisateurs',1,'2022-04-19 00:59:17','2022-04-19 00:59:17'),(15,'Suppression de l\'image d\'une réalisation','Réalisation',1,'2022-04-19 00:59:36','2022-04-19 00:59:36'),(16,'Suppression de l\'image d\'une réalisation','Réalisation',1,'2022-04-19 00:59:44','2022-04-19 00:59:44'),(17,'Enregistrement des images pour une réalisation','Réalisation',1,'2022-04-19 01:00:15','2022-04-19 01:00:15'),(18,'Mise à jour de la catégorie de service Marketing digitale','Catégorie de service',1,'2022-04-19 01:01:15','2022-04-19 01:01:15'),(19,'Mise à jour de son mot de passe','Utilisateurs',1,'2022-04-19 01:01:52','2022-04-19 01:01:52'),(20,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 01:07:18','2022-04-19 01:07:18'),(21,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 07:10:41','2022-04-19 07:10:41'),(22,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 18:55:21','2022-04-19 18:55:21'),(23,'Enregistrement du témoignage de Mbe Dimitri','Témoignages',3,'2022-04-19 18:59:57','2022-04-19 18:59:57'),(24,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 19:01:06','2022-04-19 19:01:06'),(25,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 19:04:16','2022-04-19 19:04:16'),(26,'Mise à jour des informations du membre Dimitri Mbe','Equipe',3,'2022-04-19 19:04:31','2022-04-19 19:04:31'),(27,'Enregistrement du membre Tsakam Oscar','Equipe',3,'2022-04-19 19:07:24','2022-04-19 19:07:24'),(28,'Enregistrement du membre Djoken Christian','Equipe',3,'2022-04-19 19:10:38','2022-04-19 19:10:38'),(29,'Mise à jour des informations du membre Dimitri Mbe','Equipe',3,'2022-04-19 19:11:37','2022-04-19 19:11:37'),(30,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-19 19:13:21','2022-04-19 19:13:21'),(31,'Connexion de l\'utilisateur Admin OctetLab','Utilisateurs',3,'2022-04-20 19:41:22','2022-04-20 19:41:22');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(21,'2022_03_06_123152_create_services_table',2),(22,'2022_03_07_233702_create_realisations_table',2),(23,'2022_03_07_235347_create_realisations_images_table',2),(24,'2022_03_08_190926_create_equipes_table',2),(25,'2022_03_08_202314_create_temoignages_table',2),(26,'2022_03_08_214803_create_process_table',2),(27,'2022_03_10_041947_create_packages_table',2),(28,'2022_03_10_051742_create_avis_table',2),(29,'2022_03_10_061102_create_sections_table',2),(30,'2022_03_12_021115_create_categorie_services_table',2),(31,'2022_03_12_095102_add_categorie_service_id_to_services_table',2),(32,'2022_03_12_174731_add_client_to_realisations',3),(33,'2022_04_14_181216_add_etat_to_categorie_services',4),(34,'2022_04_14_181438_add_etat_to_services',4),(35,'2022_04_14_181516_add_etat_to_realisations',4),(36,'2022_04_14_191413_create_logs_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `services_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packages`
--

LOCK TABLES `packages` WRITE;
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
INSERT INTO `packages` VALUES (1,'Basic','Basic','Basic','Charte Graphique, Développement de site web, SEO, Community management, Support 2 mois','Grafikdesign, Website-Entwicklung, SEO, Community Management, Support 2 Monate','Graphic design, Website development, SEO, Community management, Support 2 months',NULL,'2022-03-16 15:21:22','2022-03-17 02:27:34'),(2,'Premium','Premuim','Premuin','Charte graphique + Branding, Développement du site web, SEO + Consultation, Community management, support 6 mois','Grafikdesign + Branding, Entwicklung der Website, SEO + Beratung, Community Management, Unterstützung 6 Monate','Graphic design + Branding, Website development, SEO + Consulting, Community management, support 6 months',NULL,'2022-03-16 15:22:00','2022-03-17 02:26:13'),(3,'Business','Business','Business','Charte graphique + Branding, Développement du site web, SEO, Community management, support 6 mois','SeGrafikdesign + Branding, Entwicklung der Website, SEO, Community Management, Unterstützung 6 Monatervice1, Service2, Service3','Graphic design + Branding, Website development, SEO, Community management, support 6 months',NULL,'2022-03-16 15:22:55','2022-03-17 02:25:17'),(4,'Package test','Package test','Package test','Service1, service2, service3','Service1, service2, service3','Service1, service2, service3','100$','2022-04-08 19:16:07','2022-04-08 19:17:09');
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `process`
--

DROP TABLE IF EXISTS `process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `process` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `titre_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `process`
--

LOCK TABLES `process` WRITE;
/*!40000 ALTER TABLE `process` DISABLE KEYS */;
INSERT INTO `process` VALUES (1,'Atelier découverte','Discovery workshop','Entdeckungs-Workshop','Recueillir des détails du projet. Le but est d\'établir une idée claire sur le besoin et les attentes du client.','Sammeln Sie Details über das Projekt. Ziel ist es, eine klare Vorstellung vom Bedarf und den Erwartungen des Kunden zu entwickeln.','Gather details of the project. The aim is to establish a clear idea of the client\'s needs and expectations.','2022-03-17 03:53:41','2022-03-17 03:53:41'),(2,'Analyse du projet','Project analysis','Analyse des Projekts','Etude de faisabilité, comprendre le paysage concurrentiel, comprendre le public cible, le marché et la géographie, relever les contraintes.','Machbarkeitsstudie, die Wettbewerbslandschaft verstehen, die Zielgruppe, den Markt und die Geografie verstehen, Einschränkungen erheben.','Feasibility study, understanding the competitive landscape, understanding the target audience, market and geography, identifying constraints.','2022-03-17 03:58:31','2022-03-17 03:58:31'),(3,'Conception','Design','Konzeption','Choix des outils et technologies à utiliser en fonction des besoins du client, réalisation des maquettes, planification du projet.','Auswahl der zu verwendenden Werkzeuge und Technologien entsprechend den Bedürfnissen des Kunden, Erstellung von Modellen, Projektplanung.','Choice of tools and technologies to be used according to the client\'s needs, creation of models, project planning.','2022-03-17 04:03:59','2022-03-17 04:03:59'),(4,'Implémentation et tests','Implementation and testing','Implementierung und Tests','Réalisation du projet, tests, audit des failles et sécurité, Mise en production.','Durchführung des Projekts, Tests, Prüfung von Schwachstellen und Sicherheit, Inbetriebnahme.','Project implementation, testing, vulnerability and security audits, production start-up.','2022-03-17 04:07:08','2022-03-17 04:07:08'),(5,'Support','Support','Unterstützung','Formation des utilisateurs finaux, mise en place d\'une politique de maintenance.','Schulung der Endnutzer, Einführung einer Wartungspolitik.','End-user training, implementation of a maintenance policy.','2022-03-17 04:09:08','2022-03-17 04:09:08'),(6,'Maintenance','Maintenance','Maintenance','Description de l\'étape de maintenance','Description de l\'étape de maintenance','Description de l\'étape de maintenance','2022-04-08 19:18:58','2022-04-08 19:18:58');
/*!40000 ALTER TABLE `process` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realisations`
--

DROP TABLE IF EXISTS `realisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realisations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `client` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `presentation_client_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `presentation_client_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `presentation_client_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_realisation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `etat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  KEY `realisations_service_id_foreign` (`service_id`),
  CONSTRAINT `realisations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realisations`
--

LOCK TABLES `realisations` WRITE;
/*!40000 ALTER TABLE `realisations` DISABLE KEYS */;
INSERT INTO `realisations` VALUES (1,'Réalisation Logo','Logo design','Logo-Realisierung','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','realisation-logo','https://tontine.plus',1,'2022-03-12 18:28:36','2022-03-12 18:30:13','ARTECH','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex.','12 Mars 2022','published'),(2,'Réalisation Flyers sa_shop','Flyer production sa_shop','Erstellung von Flyern sa_shop','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','realisation-flyers-sa-shop','https://tontine.plus',2,'2022-03-12 18:33:23','2022-03-18 16:56:17','sa_shop','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor.','22 Avril 2022','published'),(3,'Réalisation Flyers SA SHOP','Flyer production SA SHOP','Erstellung von Flyern SA SHOP','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','realisation-flyers-sa-shop','https://tontine.plus',2,'2022-03-12 18:35:08','2022-03-18 16:56:57','SA SHOP','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex.','12 Mars 2022','published'),(4,'Carte de visite','Business card','Visitenkarte','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','carte-de-visite','https://tontine.plus',5,'2022-03-12 18:37:58','2022-03-12 18:37:58','ARTECH','Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','15 Décembre 2021','published'),(5,'Site web de Tontine.Plus','Tontine.Plus website','Website von Tontine.Plus','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','site-web-de-tontineplus','https://tontine.plus',7,'2022-03-18 17:04:08','2022-03-18 17:04:08','Tontine.Plus','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus.','2022-12-22','published'),(6,'Application Web Falcon Remit','Anwendung Web Falcon Aufgabenstellung','Anwendung Web Falcon Aufgabenstellung','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','application-web-falcon-remit','http://falconremit.com',11,'2022-03-18 17:05:52','2022-03-18 17:05:52','Falcon Remit','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit','23-12-22','published'),(7,'Application mobile','Mobile App','Mobile Anwendung','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','application-mobile',NULL,12,'2022-03-18 17:07:15','2022-03-18 17:07:15','Customer',NULL,NULL,NULL,NULL,'published'),(8,'Site e-commerce','E-commerce website','E-Commerce auf der Website','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit. Donec quis erat faucibus, pretium felis ac, sodales lacus. Praesent porta nec orci vitae finibus. Mauris volutpat libero enim, a vestibulum nisi ultrices eget. Maecenas blandit accumsan sem, ullamcorper feugiat nisl pulvinar nec. Donec quis congue tellus. Donec efficitur, magna eget tempor viverra, sapien diam dictum erat, sed vestibulum augue purus in ligula. Nulla id nunc dignissim, egestas leo efficitur, egestas metus. Vivamus maximus sollicitudin leo, non blandit tortor dapibus eu.','site-e-commerce','https://tontine.plus',9,'2022-03-18 17:09:58','2022-03-18 17:09:58','Customer e-commerce','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus imperdiet porttitor sem vitae maximus. Maecenas ipsum sapien, sodales ut ullamcorper sed, eleifend at velit.','2022-12-22','published'),(9,'Réalisation marketing digital','Réalisation marketing digital','Réalisation marketing digital','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','realisation-marketing-digital','https://tontine.plus',13,'2022-04-08 19:06:34','2022-04-08 19:06:34','Client test','Présentation du client','Présentation du client','Présentation du client','2022-12-22','published');
/*!40000 ALTER TABLE `realisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realisations_images`
--

DROP TABLE IF EXISTS `realisations_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realisations_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `realisation_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `realisations_images_realisation_id_foreign` (`realisation_id`),
  CONSTRAINT `realisations_images_realisation_id_foreign` FOREIGN KEY (`realisation_id`) REFERENCES `realisations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realisations_images`
--

LOCK TABLES `realisations_images` WRITE;
/*!40000 ALTER TABLE `realisations_images` DISABLE KEYS */;
INSERT INTO `realisations_images` VALUES (2,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647113317Yq.jpeg',1,'2022-03-12 18:28:37','2022-03-12 18:28:37'),(3,'http://vps-ab2ebf02.vps.ovh.net:8003/images/16471136033G.jpg',2,'2022-03-12 18:33:23','2022-03-12 18:33:23'),(4,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647113708Xl.jpeg',3,'2022-03-12 18:35:08','2022-03-12 18:35:08'),(5,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647113708qw.jpg',3,'2022-03-12 18:35:08','2022-03-12 18:35:08'),(6,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647113878Xo.jpg',4,'2022-03-12 18:37:58','2022-03-12 18:37:58'),(7,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647113879ec.jpeg',4,'2022-03-12 18:37:59','2022-03-12 18:37:59'),(8,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647626649tx.jpg',5,'2022-03-18 17:04:09','2022-03-18 17:04:09'),(9,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647626752JH.jpg',6,'2022-03-18 17:05:52','2022-03-18 17:05:52'),(10,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647626835f5.jpg',7,'2022-03-18 17:07:15','2022-03-18 17:07:15'),(11,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1647626998Yb.png',8,'2022-03-18 17:09:58','2022-03-18 17:09:58'),(14,'http://vps-ab2ebf02.vps.ovh.net:8003/images/1650330015w1.jpg',9,'2022-04-19 01:00:15','2022-04-19 01:00:15');
/*!40000 ALTER TABLE `realisations_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sectionID` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom_fr` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_de` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `categorie_service_id` bigint unsigned NOT NULL,
  `etat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  PRIMARY KEY (`id`),
  KEY `services_categorie_service_id_foreign` (`categorie_service_id`),
  CONSTRAINT `services_categorie_service_id_foreign` FOREIGN KEY (`categorie_service_id`) REFERENCES `categorie_services` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Logo','Logo','Logo','Un logotype est une représentation graphique d’une marque ou d’une entreprise, il est le résultat d’un brief créatif suivi d’une recherche créative approfondie visant à représenter et valoriser l’image d’une marque ou d’une entreprise. Nos graphistes conçoivent des logos taillés à la mesure de votre entreprise.','Ein Logo ist eine grafische Darstellung einer Marke oder eines Unternehmens. Es ist das Ergebnis eines kreativen Briefings, gefolgt von einer gründlichen kreativen Recherche, die darauf abzielt, das Image einer Marke oder eines Unternehmens zu repräsentieren und aufzuwerten. Unsere Grafikdesigner entwerfen Logos, die genau auf Ihr Unternehmen zugeschnitten sind.','A logo is a graphic representation of a brand or company, it is the result of a creative brief followed by in-depth creative research aimed at representing and enhancing the image of a brand or company. Our graphic designers design logos tailored to your company.','logo',NULL,'2022-03-12 15:28:57','2022-03-12 15:35:55',1,'published'),(2,'Flyers','Flyers','Flyer','Un flyer est un support de communication imprimé sur du papier. Aussi appelé tract ou prospectus, il a pour but de délivrer un maximum d’informations sur une surface réduite. C’est une sorte de mini-affiche publicitaire imprimée sur une feuille volante. Nos experts conçoivent des flyers beaux, épurés et attractifs pour toucher les cibles de votre entreprise.','Ein Flyer ist ein auf Papier gedrucktes Kommunikationsmittel. Er wird auch als Flugblatt oder Prospekt bezeichnet und soll auf einer kleinen Fläche möglichst viele Informationen liefern. Er ist eine Art Mini-Werbeplakat, das auf ein loses Blatt gedruckt wird. Unsere Experten entwerfen schöne, schlichte und ansprechende Flyer, um die Zielgruppen Ihres Unternehmens zu erreichen.','A flyer is a communication medium printed on paper. Also known as a leaflet or flyer, its purpose is to deliver a maximum of information on a small surface. It is a kind of mini advertising poster printed on a loose leaf. Our experts design beautiful, uncluttered and attractive flyers to reach your company\'s targets.','flyers',NULL,'2022-03-12 15:39:36','2022-03-12 15:39:36',1,'published'),(3,'Affiche publicitaire','Advertising poster','Werbeplakat','Pour une entreprise, l’utilisation d’affiches publicitaires devient même vitale. La raison est toute simple. Chaque entreprise a forcément besoin de faire connaître ses produits et services. Les affiches permettent par exemple de : lancer de nouveaux produits, faire de la publicité, transmettre des informations,\r\npromouvoir des événements et des campagnes,\r\nredonner vie à un produit existant et bien d’autres choses encore !\r\nL\'équipe d\'OctetLab vous accompagne dans la création de vos affiches publicitaires.','Für ein Unternehmen wird der Einsatz von Werbeplakaten sogar lebenswichtig. Der Grund dafür ist ganz einfach. Jedes Unternehmen hat zwangsläufig das Bedürfnis, seine Produkte und Dienstleistungen bekannt zu machen. Mithilfe von Plakaten können Sie zum Beispiel: neue Produkte einführen, Werbung machen, Informationen weitergeben,\r\nVeranstaltungen und Kampagnen zu bewerben,\r\neinem bestehenden Produkt neues Leben einhauchen und vieles mehr!\r\nDas Team von OctetLab unterstützt Sie bei der Erstellung Ihrer Werbeplakate.','For a company, the use of advertising posters is even vital. The reason is simple. Every company needs to make its products and services known. Posters can be used to: launch new products, advertise, pass on information,\r\npromote events and campaigns,\r\nrevive an existing product and much more!\r\nThe OctetLab team can help you create your advertising posters.','affiche-publicitaire',NULL,'2022-03-12 15:43:44','2022-03-12 15:43:44',1,'published'),(4,'Vidéo publicitaire + shooting','Advertising video + shooting','Werbevideo + Shooting','OctetLab accompagne votre entreprise dans toutes vos campagnes publicitaires en vous offrant des vidéos publicitaires de très haute qualité et des shooting photos professionnels.','OctetLab begleitet Ihr Unternehmen bei all Ihren Werbekampagnen und bietet Ihnen Werbevideos von höchster Qualität und professionelle Fotoshootings.','OctetLab accompanies your company in all your advertising campaigns by offering you very high quality advertising videos and professional photo shoots.','video-publicitaire-shooting',NULL,'2022-03-12 15:49:03','2022-03-12 15:49:03',1,'published'),(5,'Carte de visite','Business card','Visitenkarte','Nous vous offrons un service de création et impression des cartes de visites professionnelles pour vous et les membres de votre équipe.','Wir bieten einen professionellen Visitenkarten-Design- und Druckservice für Sie und Ihre Teammitglieder.','We offer a professional business card design and printing service for you and your team members.','carte-de-visite',NULL,'2022-03-12 15:53:25','2022-03-12 15:53:25',1,'published'),(6,'Charte graphique','Graphic charter','Grafische Charta','La charte graphique traduit l’âme de votre entreprise (votre mission, votre vision et vos valeurs) en plusieurs éléments de design. Notre équipe vous accompagne dans la création d\'une charte graphique adaptée à votre entreprise.','Die Grafikcharta übersetzt die Seele Ihres Unternehmens (Ihre Mission, Ihre Vision und Ihre Werte) in verschiedene Designelemente. Unser Team begleitet Sie bei der Erstellung eines auf Ihr Unternehmen zugeschnittenen Corporate Designs.','The graphic charter translates the soul of your company (your mission, vision and values) into several design elements. Our team will help you create a graphic charter adapted to your company.','charte-graphique',NULL,'2022-03-12 15:57:37','2022-03-12 15:57:37',1,'published'),(7,'Sites vitrines','Showcase sites','Schaufensterseiten','Un site vitrine a pour but de présenter les offres et services de votre entreprise, association et collectivité. Il se doit donc d\'être attractif, bien structuré et fonctionnel. Nous travaillons donc avec vous pour mettre sur pied un site beau et fonctionnel.','Eine Schaufensterseite soll die Angebote und Dienstleistungen Ihres Unternehmens, Vereins oder Ihrer Körperschaft präsentieren. Sie muss daher attraktiv, gut strukturiert und funktional sein. Wir arbeiten daher mit Ihnen zusammen, um eine schöne und funktionale Website zu erstellen.','The purpose of a showcase site is to present the offers and services of your company, association or community. It must therefore be attractive, well structured and functional. We work with you to create a beautiful and functional website.','sites-vitrines',NULL,'2022-03-12 16:06:11','2022-03-12 16:06:11',2,'published'),(8,'Sites portail','Portal sites','Portalseiten','Nous développons des sites portail pour accéder à vos différents services.','Wir entwickeln Portalseiten, um auf Ihre verschiedenen Dienste zuzugreifen.','We develop portal sites to access your various services.','sites-portail',NULL,'2022-03-12 16:09:09','2022-03-12 16:09:09',2,'published'),(9,'Sites E-commerces','E-commerce sites','Standorte E-commerces','Nous créons pour vous des boutiques en ligne et nous gérons la maintenance pour vous permettre de conquérir de nouveaux clients et de booster vos ventes.','Wir erstellen für Sie Online-Shops und kümmern uns um die Wartung, damit Sie neue Kunden gewinnen und Ihren Umsatz ankurbeln können.','We create online shops for you and manage the maintenance so that you can win new customers and boost your sales.','sites-e-commerces',NULL,'2022-03-12 16:16:03','2022-03-12 16:16:03',2,'published'),(10,'Blog','Blog','Blog','Le blogging dans un cadre professionnel est une stratégie de content marketing qui a pour but de stimuler la visibilité d’une entreprise. Via la rédaction d’articles autour de ses services, des thématiques de son sujet d’expertise ou de sujets plus larges, la tenue d’un blog permet de drainer une audience ciblée, à plusieurs étapes du cycle d’achat, avec pour objectif de transformer une partie de cette audience en clients.\r\nOctetLab met sur pied des blogs ultra-professionnel','Das Bloggen im beruflichen Umfeld ist eine Content-Marketing-Strategie, die darauf abzielt, die Sichtbarkeit eines Unternehmens zu steigern. Durch das Verfassen von Artikeln über die Dienstleistungen des Unternehmens, über die Themen seines Fachgebiets oder über allgemeinere Themen kann ein Blog ein Zielpublikum in verschiedenen Phasen des Kaufzyklus ansprechen, mit dem Ziel, einen Teil dieses Publikums in Kunden umzuwandeln.\r\nOctetLab richtet ultra-professionelle Blogs ein','Blogging in a professional context is a content marketing strategy that aims to boost a company\'s visibility. By writing articles about its services, the themes of its area of expertise or broader topics, blogging can attract a targeted audience at several stages of the buying cycle, with the aim of turning part of this audience into customers.\r\nOctetLab sets up ultra-professional blogs','blog',NULL,'2022-03-12 16:29:13','2022-03-12 16:29:13',2,'published'),(11,'Applications Web','Web applications','Web-Anwendungen','Nous proposons des services de développement des applications web afin de répondre à des besoins précis de votre entreprise, projet, etc...','Wir bieten Dienstleistungen zur Entwicklung von Webanwendungen an, um die genauen Anforderungen Ihres Unternehmens, Projekts usw. zu erfüllen.','We offer web application development services to meet the specific needs of your company, project, etc.','applications-web',NULL,'2022-03-12 16:37:32','2022-03-12 16:37:32',3,'published'),(12,'Applications mobiles','Mobile applications','Mobile Anwendungen','Nous développons pour vous des applications mobiles pour les plateformes Android et IOS.','Wir entwickeln für Sie mobile Anwendungen für die Plattformen Android und IOS.','We develop mobile applications for you for the Android and IOS platforms.','applications-mobiles',NULL,'2022-03-12 16:42:06','2022-03-16 09:07:49',3,'published'),(13,'Sous service1','sub service1','Sub service1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius. Pellentesque vulputate augue massa, sed auctor neque luctus mattis. Morbi auctor sed ligula ac ultricies. Curabitur vitae sem tempor turpis eleifend vestibulum. Nunc interdum nibh odio, id tincidunt lectus tempus laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus rutrum volutpat nunc, vitae dapibus ex eleifend fermentum. Sed neque nisl, malesuada at pretium et, sodales in ipsum. Pellentesque efficitur mattis risus non cursus. Maecenas sollicitudin nulla eu neque pulvinar malesuada.','sous-service1',NULL,'2022-04-08 19:04:01','2022-04-08 19:04:01',4,'published');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temoignages`
--

DROP TABLE IF EXISTS `temoignages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temoignages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_fr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu_de` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temoignages`
--

LOCK TABLES `temoignages` WRITE;
/*!40000 ALTER TABLE `temoignages` DISABLE KEYS */;
INSERT INTO `temoignages` VALUES (1,'Arnold FOSSO','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla vitae urna nec lacus pretium pharetra non eu tortor. Integer vitae eros quis mauris rutrum lobortis quis ac ex. Nunc nunc leo, rutrum a venenatis ut, porta in massa. Vestibulum molestie enim diam, a pharetra lacus vulputate eget. Mauris ultricies erat at dui congue consectetur. Maecenas laoreet enim a rutrum varius. Etiam sed libero purus. Mauris et dui id enim faucibus maximus sit amet congue mauris.','http://vps-ab2ebf02.vps.ovh.net:8003/images/1647127410LB.jpg','2022-03-12 22:23:30','2022-03-12 22:23:30'),(2,'Jean BOSCO','.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img','.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img','.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img.testimonial-item .testimonial-item-img img','http://vps-ab2ebf02.vps.ovh.net:8003/images/1647127622IO.jpg','2022-03-12 22:27:02','2022-03-12 22:27:02'),(3,'Yvan','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius.','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vehicula arcu ac tempor scelerisque. Etiam laoreet rutrum convallis. Vestibulum accumsan leo ac nulla fringilla, ac suscipit augue varius.','http://vps-ab2ebf02.vps.ovh.net:8003/images/1650327088dV.jpg','2022-04-08 19:20:28','2022-04-19 00:11:28'),(4,'Mbe Dimitri','Une équipe très professionnelle et à l\'écoute des besoins du client','a professional team','Ein professionelles Team','http://vps-ab2ebf02.vps.ovh.net:8003/images/1650394797AO.png','2022-04-19 18:59:57','2022-04-19 18:59:57');
/*!40000 ALTER TABLE `temoignages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Arnold FOSSO','arnoldprosperfosso237@gmail.com','$2y$10$TpECjZRsIQu93YLbUWdhmeqzS3tmKRZ1r3el6IIjMFKWk2988Ehi.','http://vps-ab2ebf02.vps.ovh.net:8003/images/16493052392k.jpg',NULL,NULL,'2022-04-19 01:01:52'),(3,'Admin OctetLab','admin@octetlab.com','$2y$10$Cr5/xJlPmyVPP/3o5uGHEeiWrmW6QNwCW.s4ducwJt6sju8B9frzS','http://vps-ab2ebf02.vps.ovh.net:8003/images/1650329440X3.png',NULL,'2022-04-19 00:50:40','2022-04-19 00:50:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-29 15:38:57
