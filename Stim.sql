-- MariaDB dump 10.19  Distrib 10.11.7-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: stim
-- ------------------------------------------------------
-- Server version	10.11.7-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aplikasi`
--

DROP TABLE IF EXISTS `aplikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplikasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_developer` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `harga` int(11) DEFAULT 0,
  `tanggal_peluncuran` date NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `discount` tinyint(4) DEFAULT 0,
  `jumlah_achievement` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `developer` (`email_developer`),
  CONSTRAINT `developer` FOREIGN KEY (`email_developer`) REFERENCES `developer` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplikasi`
--

LOCK TABLES `aplikasi` WRITE;
/*!40000 ALTER TABLE `aplikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aplikasi_user`
--

DROP TABLE IF EXISTS `aplikasi_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aplikasi_user` (
  `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(255) NOT NULL,
  `total_waktu_pemakaian` bigint(20) NOT NULL,
  `waktu_terakhir_pemakaian` datetime NOT NULL,
  `jumlah_achievement_tercapai` smallint(6) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`id_aplikasi`,`email_user`),
  KEY `email_user` (`email_user`),
  CONSTRAINT `aplikasi_user_ibfk_1` FOREIGN KEY (`id_aplikasi`) REFERENCES `aplikasi` (`id`),
  CONSTRAINT `aplikasi_user_ibfk_2` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplikasi_user`
--

LOCK TABLES `aplikasi_user` WRITE;
/*!40000 ALTER TABLE `aplikasi_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `aplikasi_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `kategori` varchar(255) NOT NULL,
  `tahun` smallint(6) NOT NULL,
  `id_game` int(11) NOT NULL,
  PRIMARY KEY (`kategori`,`tahun`),
  KEY `id_game` (`id_game`),
  CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`id_game`) REFERENCES `video_game` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `berteman`
--

DROP TABLE IF EXISTS `berteman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `berteman` (
  `email_user_1` varchar(255) NOT NULL,
  `email_user_2` varchar(255) NOT NULL,
  `status` enum('FRIENDS','PENDING','BLOCKED') NOT NULL,
  PRIMARY KEY (`email_user_1`,`email_user_2`),
  KEY `email_user_2` (`email_user_2`),
  CONSTRAINT `berteman_ibfk_1` FOREIGN KEY (`email_user_1`) REFERENCES `user` (`email`),
  CONSTRAINT `berteman_ibfk_2` FOREIGN KEY (`email_user_2`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `berteman`
--

LOCK TABLES `berteman` WRITE;
/*!40000 ALTER TABLE `berteman` DISABLE KEYS */;
/*!40000 ALTER TABLE `berteman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `email` varchar(255) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tanggal_pendirian` date NOT NULL,
  `deskripsi` text DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlc`
--

DROP TABLE IF EXISTS `dlc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlc` (
  `judul` varchar(255) NOT NULL,
  `id_video_game` int(11) NOT NULL AUTO_INCREMENT,
  `harga` int(11) NOT NULL DEFAULT 0,
  `tanggal_peluncuran` date NOT NULL,
  PRIMARY KEY (`judul`,`id_video_game`),
  KEY `id_video_game` (`id_video_game`),
  CONSTRAINT `dlc_ibfk_1` FOREIGN KEY (`id_video_game`) REFERENCES `video_game` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlc`
--

LOCK TABLES `dlc` WRITE;
/*!40000 ALTER TABLE `dlc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_user` varchar(255) NOT NULL,
  `id_aplikasi` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `waktu_pembuatan` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `email_user` (`email_user`),
  KEY `id_aplikasi` (`id_aplikasi`),
  CONSTRAINT `forum_ibfk_1` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`),
  CONSTRAINT `forum_ibfk_2` FOREIGN KEY (`id_aplikasi`) REFERENCES `aplikasi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lagu`
--

DROP TABLE IF EXISTS `lagu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lagu` (
  `judul` varchar(255) NOT NULL,
  `id_aplikasi` int(11) NOT NULL AUTO_INCREMENT,
  `durasi` bigint(20) NOT NULL,
  PRIMARY KEY (`judul`,`id_aplikasi`),
  KEY `id_aplikasi` (`id_aplikasi`),
  CONSTRAINT `lagu_ibfk_1` FOREIGN KEY (`id_aplikasi`) REFERENCES `soundtrack` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lagu`
--

LOCK TABLES `lagu` WRITE;
/*!40000 ALTER TABLE `lagu` DISABLE KEYS */;
/*!40000 ALTER TABLE `lagu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mengikuti`
--

DROP TABLE IF EXISTS `mengikuti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mengikuti` (
  `email_dev` varchar(255) NOT NULL,
  `email_user` varchar(255) NOT NULL,
  PRIMARY KEY (`email_dev`,`email_user`),
  KEY `email_user` (`email_user`),
  CONSTRAINT `mengikuti_ibfk_1` FOREIGN KEY (`email_dev`) REFERENCES `developer` (`email`),
  CONSTRAINT `mengikuti_ibfk_2` FOREIGN KEY (`email_user`) REFERENCES `user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mengikuti`
--

LOCK TABLES `mengikuti` WRITE;
/*!40000 ALTER TABLE `mengikuti` DISABLE KEYS */;
/*!40000 ALTER TABLE `mengikuti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_forum` int(11) NOT NULL,
  `email_pembuat` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `waktu_pembuatan` datetime NOT NULL,
  PRIMARY KEY (`id`,`id_forum`),
  KEY `email_pembuat` (`email_pembuat`),
  KEY `id_forum` (`id_forum`),
  CONSTRAINT `post_ibfk_1` FOREIGN KEY (`email_pembuat`) REFERENCES `user` (`email`),
  CONSTRAINT `post_ibfk_2` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soundtrack`
--

DROP TABLE IF EXISTS `soundtrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `soundtrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  CONSTRAINT `soundtrack_ibfk_1` FOREIGN KEY (`id`) REFERENCES `aplikasi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soundtrack`
--

LOCK TABLES `soundtrack` WRITE;
/*!40000 ALTER TABLE `soundtrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `soundtrack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `email` varchar(255) NOT NULL,
  `user` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `nama_depan` varchar(20) DEFAULT NULL,
  `nama_belakang` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date NOT NULL,
  `level_akun` int(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_game`
--

DROP TABLE IF EXISTS `video_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`genre`),
  CONSTRAINT `video_game_ibfk_1` FOREIGN KEY (`id`) REFERENCES `aplikasi` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_game`
--

LOCK TABLES `video_game` WRITE;
/*!40000 ALTER TABLE `video_game` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vote` (
  `email` varchar(255) NOT NULL,
  `id_forum` int(11) NOT NULL,
  `upvote_downvote` enum('UP','DOWN') NOT NULL,
  PRIMARY KEY (`email`,`id_forum`),
  KEY `id_forum` (`id_forum`),
  CONSTRAINT `vote_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`),
  CONSTRAINT `vote_ibfk_2` FOREIGN KEY (`id_forum`) REFERENCES `forum` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05 18:05:29
