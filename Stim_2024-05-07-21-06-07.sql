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
  `ukuran` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `discount` tinyint(4) DEFAULT 0,
  `jumlah_achievement` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `developer` (`email_developer`),
  CONSTRAINT `developer` FOREIGN KEY (`email_developer`) REFERENCES `developer` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aplikasi`
--

LOCK TABLES `aplikasi` WRITE;
/*!40000 ALTER TABLE `aplikasi` DISABLE KEYS */;
INSERT INTO `aplikasi` VALUES
(1,'noconnect@gmail.com','Fire!',32731,'2009-11-19',9000000,'Burn evertyhing!',37,920),
(2,'gameloft@gmail.com','Hit and Run',99999,'2023-11-23',1000000,'You can experience real-like baseball stadium fields atmosphere. Hit & Run VR is a indoor virtual sports game which you can play like a real baseball player. Just push the trigger button and hit the ball! Make your highest score! Having Fun!',6,56),
(3,'activision@gmail.com','Call of Duty',740600,'2005-08-24',10000000,'Call of Duty delivers the gritty realism and cinematic intensity of World War II\'s epic battlefield moments like never before - through the eyes of citizen soldiers and unsung heroes from an alliance of countries who together helped shape the course of modern history.',81,284),
(4,'gameloft@gmail.com','Word Ladder',1000,'2004-08-20',5000000,'Find the shortest path from start word to target word.',16,434),
(5,'gameloft@gmail.com','Platform Jump',74000,'2012-04-19',1000000,'Welcome to Platform Jump, where gravity-defying leaps and heart-pounding challenges await! In this thrilling arcade-style game, players embark on a high-flying adventure through a series of precarious platforms, obstacles, and traps.',82,165),
(6,'raijin@gmail.com','Samurai',789300,'2021-03-03',3000000,'Samurai is a tricky and tactical turn-based adventure. Take on the Yokai fortress one area at a time and face increasingly challenging foes in beautiful low-poly Japanese themed environments.',78,324),
(7,'mihoyo@gmail.com','Genshin Impact',5000,'2014-09-07',9000000,'Step into Teyvat, a vast world teeming with life and flowing with elemental energy. You and your sibling arrived here from another world. Separated by an unknown god, stripped of your powers, and cast into a deep slumber, you now awake to a world very different from when you first arrived.',71,588),
(8,'atlus@gmail.com','Sheep',97500,'2018-08-04',1000000,'Welcome to the lush pastures of Sheep, where you\'ll embark on an adorable and strategic journey of herding, breeding, and dominating the fields! In this charming simulation game, players take on the role of a shepherd tasked with building and managing their very own flock of sheep.',7,441),
(9,'noname@gmail.com','Plant vs Zombie',21904,'2019-03-30',1000000,'Zombies are invading your home, and the only defense is your arsenal of plants! Armed with an alien nursery-worth of zombie-zapping plants like peashooters and cherry bombs, you\'ll need to think fast and plant faster to stop dozens of types of zombies dead in their tracks.',78,187),
(10,'crypticgames@gmail.com','Portal 2',1165,'2013-03-27',5000000,'The \"Perpetual Testing Initiative\" has been expanded to allow you to design co-op puzzles for you and your friends!',75,973),
(11,'fromsoftware@gmail.com','Hades',82726,'2022-11-09',7000000,'Defy the god of the dead as you hack and slash out of the Underworld in this rogue-like dungeon crawler from the creators of Bastion, Transistor, and Pyre.',71,884),
(12,'raingames@gmail.com','HoloCure',10000,'2005-06-30',6000000,'Play as your favorite Vtubers from Hololive! Fight, explore, and clear your way through armies of fans and save them from their mind-control in this unofficial free fan-game.',69,692),
(13,'raijin@gmail.com','Toram Online',15001,'2017-03-19',2000000,'Biggest RPG Game in the world.',72,116),
(14,'banzai@gmail.com','Plane Simulator',17316,'2020-11-26',9000000,'Welcome to Plane Simulator, where your dreams of soaring through the clouds become a reality! In this exhilarating simulation game, players step into the cockpit of a variety of aircraft, from nimble single-engine planes to massive commercial jets, and experience the thrill of piloting through the skies.',80,347),
(15,'gachaking@gmail.com','Gacha Your Waifu',29952,'2014-10-21',4000000,'Embark on a whimsical journey into the world of romance and chance in Gacha Your Wife! In this charming mobile game, players dive into a captivating universe where love knows no bounds and every spin of the gacha machine brings the promise of a new romance.',98,696),
(16,'copcam@gmail.com','Street 2 Fighter',97953,'2007-08-08',20000000,'Step into the arena and prepare for the ultimate showdown in Street 2 Fighter, where legendary warriors from around the world collide in epic battles of skill, strength, and strategy. In this electrifying fighting game, players choose their champion from a diverse roster of iconic characters, each with their own unique fighting style and special moves.',39,525),
(17,'quagmire@gmail.com','Monster Hunter',245208,'2014-02-18',7000000,'Welcome to a new world! In Monster Hunter, the latest installment in the series, you can enjoy the ultimate hunting experience, using everything at your disposal to hunt monsters in a new world teeming with surprises and excitement.',21,434),
(18,'quagmire@gmail.com','Animal Breeder',12881,'2022-10-26',13000000,'Welcome to the fascinating world of Animal Breeder, where your passion for animals meets your talent for breeding! In this captivating simulation game, players embark on a journey to build and manage their very own animal breeding empire.',80,791),
(19,'1ccompany@gmail.com','Tokyo Drift',37971,'2012-09-30',5000000,'Dejavu!',46,878),
(20,'quagmire@gmail.com','Left 4 Dead 2',11606,'2023-01-03',1000000,'Set in the zombie apocalypse, Left 4 Dead 2 (L4D2) is the highly anticipated sequel to the award-winning Left 4 Dead, the #1 co-op game of 2008. This co-operative action horror FPS takes you and your friends through the cities, swamps and cemeteries of the Deep South, from Savannah to New Orleans across five expansive',1,435),
(21,'1ccompany@gmail.com','Escape',380548,'2009-04-23',19000000,'Welcome to Escape, where your intellect and resourcefulness will be put to the ultimate test in a series of thrilling challenges and mind-bending puzzles! In this gripping adventure game, players find themselves trapped in a variety of immersive environments, each filled with secrets, obstacles, and mysteries waiting to be unraveled.',80,324),
(22,'kamikaze@gmail.com','Wallpaper Engine',30000,'2015-08-05',1000000,'Use stunning live wallpapers on your desktop. Animate your own images to create new wallpapers or import videos/websites and share them on the Steam Workshop!',57,NULL),
(23,'noconnect@gmail.com','Tap and Connect',52461,'2023-07-04',10000000,'Welcome to Tap & Connect, the ultimate puzzle adventure that will test your skills, wit, and strategic thinking! In this addictive mobile game, players embark on a journey through a vibrant world filled with intricate puzzles and challenging obstacles.',7,831),
(24,'1ccompany@gmail.com','RimWorld',58887,'2004-04-20',2000000,'A sci-fi colony sim driven by an intelligent AI storyteller. Generates stories by simulating psychology, ecology, gunplay, melee combat, climate, biomes, diplomacy, interpersonal relationships, art, medicine, trade, and more.',98,709),
(25,'noname@gmail.com','A Short Hike',88229,'2018-08-12',6000000,'Hike, climb, and soar through the peaceful mountainside landscapes of Hawk Peak Provincial Park as you make your way to the summit.',82,408),
(26,'blizzard@gmail.com','Ultrakill',113691,'2006-09-01',7000000,'ULTRAKILL is a fast-paced ultraviolent retro FPS combining the skill-based style scoring from character action games with unadulterated carnage inspired by the best shooters of the \'90s. Rip apart your foes with varied destructive weapons and shower in their blood to regain your health.',4,601),
(27,'noconnect@gmail.com','Lethal Company',14004,'2013-11-03',3000000,'A co-op horror about scavenging at abandoned moons to sell scrap to the Company.',44,714),
(28,'quagmire@gmail.com','Slime Ranche',758103,'2005-10-12',4000000,'Slime Rancher is the tale of Beatrix LeBeau, a plucky, young rancher who sets out for a life a thousand light years away from Earth on the Far, Far Range where she tries her hand at making a living wrangling slimes.',73,625),
(29,'twintower@gmail.com','Spotify',481096,'2014-02-20',3000000,'With the Spotify music and podcast app, you can play millions of songs, albums and original podcasts for free. We have even added audiobooks, so you can enjoy thousands of stories wherever you are!',46,NULL),
(30,'raingames@gmail.com','Youtube Music',886374,'2010-06-29',6000000,'Connecting you to the world of music',9,NULL),
(31,'relogic@gmail.com','Terraria',78000,'2009-11-11',10000000,'Dig, Fight, Explore, Build: The very world is at your fingertips as you fight for survival, fortune, and glory. Will you delve deep into cavernous expanses in search of treasure and raw materials with which to craft ever-evolving gear, machinery, and aesthetics? Perhaps you will choose instead to seek out ever-greater foes to test your mettle in combat? Maybe you will decide to construct your own city to house the host of mysterious allies you may encounter along your travels?',67,451),
(32,'mihoyo@gmail.com','Honkai Star Rail',5000,'2010-08-07',30000000,'Honkai: Star Rail is a new HoYoverse space fantasy RPG. Hop aboard the Astral Express and experience the galaxy\'s infinite wonders filled with adventure and thrills. Players will meet new companions across various worlds and maybe even run into some familiar faces. Overcome the struggles together caused by Stellaron and unravel the hidden truths behind it! May this journey lead us starward!',21,832),
(33,'garena@gmail.com','Point Blank',872014,'2008-08-19',8000000,'Game FPS Favorite sejak 2009, Point Blank Beyond Limit adalah game FPS No. 1 Indonesia selama 10 tahun.',52,576),
(34,'noconnect@gmail.com','VPet-Simulator',622047,'2012-05-31',1000000,'Feeling like the computer desktop is too dull? Need something cute to heal oneself? Come and try this new completely free and open source V-Pet simulator. A cute and adorable pet that supports various feeding interactions to accompany you in game learning is definitely your best choice!',65,771),
(35,'simdategamedev@gmail.com','Virtual Girlfriend',508622,'2006-05-18',3000000,'Lonely? Play this game.',0,941),
(36,'raijin@gmail.com','Callisto',304695,'2009-05-01',7000000,'Survive to escape the horrors of Callisto and uncover the dark secrets of Jupiter\'s dead moon.',29,131),
(37,'blizzard@gmail.com','RPG Maker MV',387144,'2023-08-17',5000000,'POWERFUL enough for a developer SIMPLE enough for a child VERSATILE enough for any platform!RPG MAKER MV allows you to make the RPG of your dreams! This latest version includes a host of new featuresand export options for MacOSX, Android, and iPhone!',22,NULL),
(38,'gameloft@gmail.com','Candy Crush Saga',930049,'2017-10-26',5000000,'Swap the candy and win the game!',67,3),
(39,'raijin@gmail.com','One Shot',568278,'2023-02-13',18000000,'Embark on a journey unlike any other in \"One Shot,\" a captivating puzzle-adventure game that challenges not only your intellect but also your perception of reality.',66,475),
(40,'raingames@gmail.com','Dishonored',488867,'2013-07-11',9000000,'Dishonored is an immersive first-person action game that casts you as a supernatural assassin driven by revenge. With Dishonored’s flexible combat system, creatively eliminate your targets as you combine the supernatural abilities, weapons and unusual gadgets at your disposal.',33,19),
(41,'fromsoftware@gmail.com','Song App',807993,'2022-01-10',6000000,'Welcome to Song App, your one-stop destination for all things music! Whether you\'re a casual listener or a die-hard music enthusiast, our app has everything you need to discover, stream, and enjoy your favorite tunes like never before.',19,NULL),
(42,'noconnect@gmail.com','Entropy: Zero',827175,'2012-03-02',2000000,'Be the bad guy in this modification for Half-Life 2 : Episode 2 and step into the boots of a stranded Metrocop, left for dead in the abandoned City 10.',22,37),
(43,'copcam@gmail.com','Anime Fighting Game',370873,'2022-01-22',1000000,'Enter the arena of Anime Clash, where legendary warriors from across the anime multiverse converge to prove their strength in electrifying battles! Choose your favorite characters from a diverse roster of iconic anime series and engage in adrenaline-fueled combat unlike anything you\'ve experienced before.',95,970),
(44,'gachaking@gmail.com','Fate Grand Order',422928,'2009-11-14',3000000,'A new mobile \"Fate RPG,\" presented by TYPE-MOON! With an impressive main scenario and multiple character quests, the game features millions of words of original story! Packed with content that both fans of the Fate franchise and newcomers will be able to enjoy.',79,355),
(45,'garena@gmail.com','Free Fire',551994,'2008-05-09',8000000,'Free Fire adalah shooting game mobile paling terkenal di dunia. Setiap 10 menit permainan menempatkanmu di pulau terpencil dimana kamu akan bersaing dengan 49 pemain lainnya, semua berjuang untuk bertahan. Pemain secara bebas memilih lokasi turunnya dengan parasut, dan berusaha tetap berada di zona aman selama mungkin. Mengendarai kendaraan untuk menjelajahi peta, bersembunyi di alam liar, atau menjadi tak terlihat dengan bersembunyi di rumput dan semak-semak. Menyergap, membidik, bertahan, hanya untuk satu tujuan: bertahan dan menjawab panggilan tugas.',95,690),
(46,'simdategamedev@gmail.com','Rent a Girlfriend',43239,'2020-10-06',21000000,'Welcome to the world of Rent-a-Girlfriend, where love is just a rental away! In this unique romantic simulation game, players step into the shoes of a protagonist navigating the complexities of modern dating life.',66,760),
(47,'void@gmail.com','Baldur\'s Gate 3',592584,'2023-04-10',4000000,'Baldur\'s Gate 3 is a story-rich, party-based RPG set in the universe of Dungeons & Dragons, where your choices shape a tale of fellowship and betrayal, survival and sacrifice, and the lure of absolute power.',89,262),
(48,'void@gmail.com','Brotato',529390,'2017-09-01',10000000,'Brotato is a top-down arena shooter roguelite where you play a potato wielding up to 6 weapons at a time to fight off hordes of aliens. Choose from a variety of traits and items to create unique builds and survive until help arrives.',99,968),
(49,'relogic@gmail.com','Brawlhala',565983,'2009-12-13',5000000,'An epic platform fighter for up to 8 players online or local. Try casual free-for-alls, ranked matches, or invite friends to a private room. And it\'s free! Play cross-platform with millions of players on PlayStation, Xbox, Nintendo Switch, iOS, Android & Steam! Frequent updates. Over fifty Legends.',85,238),
(50,'gameloft@gmail.com','Red Ball',212001,'2011-02-23',100000000,'\"Red Ball\" thrusts players into a vibrant, whimsical world where they embody the eponymous spherical hero on a quest to save their realm from impending doom. As Red Ball, players must navigate through a series of increasingly challenging levels filled with perilous obstacles, cunning puzzles, and nefarious foes. With intuitive controls and dynamic physics-based mechanics, every bounce, roll, and leap feels exhilaratingly precise.',18,461),
(51,'copcam@gmail.com','Sudoku',20000,'2020-04-14',4000000,'Brand new a classic Sudoku game that their viewers have been requesting for the last two years!',68,926),
(52,'blizzard@gmail.com','Subnautica',366999,'2010-12-08',5000000,'Descend into the depths of an alien underwater world filled with wonder and peril. Craft equipment, pilot submarines and out-smart wildlife to explore lush coral reefs, volcanoes, cave systems, and more - all while trying to survive.',30,5),
(53,'garena@gmail.com','Free Fire: MAX',567800,'2007-05-19',4000000,'Free Fire MAX dirancang secara eksklusif untuk menghadirkan pengalaman bermain Game Premium di Battle Royale. Nikmati berbagai mode permainan seru bersama para pemain Free Fire melalui teknologi Firelink eksklusif. Rasakan pertempuran yang belum pernah ada sebelumnya dengan resolusi Ultra HD dan efek menakjubkan. Serang, Bidik dan Bertahan; Hanya ada satu tujuan: bertahan menjadi yang terakhir.',10,156),
(54,'gameloft@gmail.com','Snowboarding',711626,'2017-10-07',43000000,'\"Snowboarding Shred: Conquer the Slopes!\" Get ready to carve your path through the pristine powder of the world\'s most exhilarating snow-capped peaks in Snowboarding Shred! Strap on your board and embark on an adrenaline-fueled adventure where the mountain is your playground and the possibilities are endless.',21,275),
(55,'raijin@gmail.com','Stardew Valley',117000,'2017-12-16',9000000,'Stardew Valley is an open-ended country-life RPG!',26,874),
(56,'relogic@gmail.com','Aria\'s Secret',642599,'2016-07-15',8000000,'Aria and the Secret of the Labyrinth is a roguelike RPG with turn-based combat. Collect various item with powerful effect and upgrade your equipment to overcome the ever-changing dungeon!',13,399),
(57,'raingames@gmail.com','Hunt and Kill',104682,'2017-10-19',5000000,'Hunt and Kill!',10,213),
(58,'raijin@gmail.com','Vulcan',735669,'2008-08-19',8000000,'Explore vast open areas! Through seas of sand, mountains taller than you could dream of, and more while trying to escape before you and the solar system get destroyed',21,134),
(59,'relogic@gmail.com','Thunder',10000,'2010-12-13',10000000,'Create a thunder.',19,400),
(60,'activision@gmail.com','Undertale',111768,'2009-10-20',7000000,'Welcome to UNDERTALE. In this RPG, you control a human who falls underground into the world of monsters. Now you must find your way out... or stay trapped forever.',48,559),
(61,'quagmire@gmail.com','Left 4 Dead 2 Soundtrack',11606,'2023-01-03',1000000,NULL,1,NULL),
(62,'1ccompany@gmail.com','Escape Soundtrack',380548,'2009-04-23',19000000,NULL,80,NULL),
(63,'noconnect@gmail.com','Tap and Connect Soundtrack',52461,'2023-07-04',10000000,NULL,7,NULL),
(64,'1ccompany@gmail.com','RimWorld Soundtrack',58887,'2004-04-20',2000000,NULL,98,NULL),
(65,'noname@gmail.com','A Short Hike Soundtrack',88229,'2018-08-12',6000000,NULL,82,NULL),
(66,'blizzard@gmail.com','Ultrakill Soundtrack',113691,'2006-09-01',7000000,NULL,4,NULL),
(67,'noconnect@gmail.com','Lethal Company Soundtrack',14004,'2013-11-03',3000000,NULL,44,NULL),
(68,'quagmire@gmail.com','Slime Ranche Soundtrack',758103,'2005-10-12',4000000,NULL,73,NULL),
(69,'twintower@gmail.com','Spotify Soundtrack',481096,'2014-02-20',3000000,NULL,46,NULL),
(70,'raingames@gmail.com','Youtube Music Soundtrack',886374,'2010-06-29',6000000,NULL,9,NULL),
(71,'relogic@gmail.com','Terraria Soundtrack',78000,'2009-11-11',10000000,NULL,67,NULL),
(72,'mihoyo@gmail.com','Honkai Star Rail Soundtrack',5000,'2010-08-07',30000000,NULL,21,NULL),
(73,'garena@gmail.com','Point Blank Soundtrack',872014,'2008-08-19',8000000,NULL,52,NULL),
(74,'noconnect@gmail.com','VPet-Simulator Soundtrack',622047,'2012-05-31',1000000,NULL,65,NULL),
(75,'simdategamedev@gmail.com','Virtual Girlfriend Soundtrack',508622,'2006-05-18',3000000,NULL,0,NULL),
(76,'raijin@gmail.com','Callisto Soundtrack',304695,'2009-05-01',7000000,NULL,29,NULL),
(77,'gameloft@gmail.com','Candy Crush Saga Soundtrack',930049,'2017-10-26',5000000,NULL,67,NULL),
(78,'raijin@gmail.com','One Shot Soundtrack',568278,'2023-02-13',18000000,NULL,66,NULL),
(79,'raingames@gmail.com','Dishonored Soundtrack',488867,'2013-07-11',9000000,NULL,33,NULL),
(80,'fromsoftware@gmail.com','Song App Soundtrack',807993,'2022-01-10',6000000,NULL,19,NULL),
(81,'noconnect@gmail.com','Entropy: Zero Soundtrack',827175,'2012-03-02',2000000,NULL,22,NULL),
(82,'copcam@gmail.com','Anime Fighting Game Soundtrack',370873,'2022-01-22',1000000,NULL,95,NULL),
(83,'gachaking@gmail.com','Fate Grand Order Soundtrack',422928,'2009-11-14',3000000,NULL,79,NULL),
(84,'garena@gmail.com','Free Fire Soundtrack',551994,'2008-05-09',8000000,NULL,95,NULL),
(85,'simdategamedev@gmail.com','Rent a Girlfriend Soundtrack',43239,'2020-10-06',21000000,NULL,66,NULL),
(86,'void@gmail.com','Baldur\'s Gate 3 Soundtrack',592584,'2023-04-10',4000000,NULL,89,NULL),
(87,'void@gmail.com','Brotato Soundtrack',529390,'2017-09-01',10000000,NULL,99,NULL),
(88,'relogic@gmail.com','Brawlhala Soundtrack',565983,'2009-12-13',5000000,NULL,85,NULL),
(89,'gameloft@gmail.com','Red Ball Soundtrack',212001,'2011-02-23',100000000,NULL,18,NULL),
(90,'copcam@gmail.com','Sudoku Soundtrack',20000,'2020-04-14',4000000,NULL,68,NULL),
(91,'blizzard@gmail.com','Subnautica Soundtrack',366999,'2010-12-08',5000000,NULL,30,NULL),
(92,'garena@gmail.com','Free Fire: MAX Soundtrack',567800,'2007-05-19',4000000,NULL,10,NULL),
(93,'gameloft@gmail.com','Snowboarding Soundtrack',711626,'2017-10-07',43000000,NULL,21,NULL),
(94,'raijin@gmail.com','Stardew Valley Soundtrack',117000,'2017-12-16',9000000,NULL,26,NULL),
(95,'relogic@gmail.com','Aria\'s Secret Soundtrack',642599,'2016-07-15',8000000,NULL,13,NULL),
(96,'raingames@gmail.com','Hunt and Kill Soundtrack',104682,'2017-10-19',5000000,NULL,10,NULL),
(97,'raijin@gmail.com','Vulcan Soundtrack',735669,'2008-08-19',8000000,NULL,21,NULL),
(98,'relogic@gmail.com','Thunder Soundtrack',10000,'2010-12-13',10000000,NULL,19,NULL),
(99,'activision@gmail.com','Undertale Soundtrack',111768,'2009-10-20',7000000,NULL,48,NULL),
(100,'activision@gmail.com','Call of Duty Soundtrack',740600,'2005-08-24',10000000,NULL,81,NULL),
(101,'gameloft@gmail.com','Word Ladder Soundtrack',1000,'2004-08-20',5000000,NULL,16,NULL),
(102,'gameloft@gmail.com','Platform Jump Soundtrack',74000,'2012-04-19',1000000,NULL,82,NULL),
(103,'raijin@gmail.com','Samurai Soundtrack',789300,'2021-03-03',3000000,NULL,78,NULL),
(104,'mihoyo@gmail.com','Genshin Impact Soundtrack',5000,'2014-09-07',9000000,NULL,71,NULL),
(105,'atlus@gmail.com','Sheep Soundtrack',97500,'2018-08-04',1000000,NULL,7,NULL),
(106,'noname@gmail.com','Plant vs Zombie Soundtrack',21904,'2019-03-30',1000000,NULL,78,NULL),
(107,'crypticgames@gmail.com','Portal 2 Soundtrack',1165,'2013-03-27',5000000,NULL,75,NULL),
(108,'fromsoftware@gmail.com','Hades Soundtrack',82726,'2022-11-09',7000000,NULL,71,NULL),
(109,'raingames@gmail.com','HoloCure Soundtrack',10000,'2005-06-30',6000000,NULL,69,NULL),
(110,'raijin@gmail.com','Toram Online Soundtrack',15001,'2017-03-19',2000000,NULL,72,NULL),
(111,'banzai@gmail.com','Plane Simulator Soundtrack',17316,'2020-11-26',9000000,NULL,80,NULL),
(112,'gachaking@gmail.com','Gacha Your Waifu Soundtrack',29952,'2014-10-21',4000000,NULL,98,NULL);
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
INSERT INTO `berteman` VALUES
('abarnetti@adobe.com','abeggan2@house.gov','FRIENDS'),
('abarnetti@adobe.com','anarrie0@youtu.be','BLOCKED'),
('abarnetti@adobe.com','aoakwell4@people.com.cn','PENDING'),
('abarnetti@adobe.com','cbirkbeckh@amazon.co.jp','BLOCKED'),
('abarnetti@adobe.com','develynl@webs.com','PENDING'),
('abarnetti@adobe.com','dmccolgan9@pcworld.com','FRIENDS'),
('abarnetti@adobe.com','eludfordb@scribd.com','PENDING'),
('abarnetti@adobe.com','flepickk@simplemachines.org','BLOCKED'),
('abarnetti@adobe.com','ftallquiste@fc2.com','FRIENDS'),
('abarnetti@adobe.com','gcornhillg@un.org','BLOCKED'),
('abarnetti@adobe.com','gpoulson8@amazon.co.jp','FRIENDS'),
('abarnetti@adobe.com','gsebirej@yandex.ru','FRIENDS'),
('abarnetti@adobe.com','jjoire3@example.com','FRIENDS'),
('abarnetti@adobe.com','lcahey7@blogspot.com','FRIENDS'),
('abarnetti@adobe.com','lmalsher1@usda.gov','PENDING'),
('abarnetti@adobe.com','mcumeso@princeton.edu','PENDING'),
('abarnetti@adobe.com','msedgea@furl.net','BLOCKED'),
('abarnetti@adobe.com','rarnaudinm@craigslist.org','BLOCKED'),
('abarnetti@adobe.com','rladdsd@soundcloud.com','BLOCKED'),
('abarnetti@adobe.com','sheathcoatc@phpbb.com','BLOCKED'),
('abarnetti@adobe.com','ubengaln@edublogs.org','BLOCKED'),
('abarnetti@adobe.com','vwahnerf@nsw.gov.au','PENDING'),
('abarnetti@adobe.com','winkin5@nature.com','PENDING'),
('abarnetti@adobe.com','yianelli6@about.com','BLOCKED'),
('anarrie0@youtu.be','rarnaudinm@craigslist.org','FRIENDS'),
('aoakwell4@people.com.cn','cbirkbeckh@amazon.co.jp','PENDING'),
('aoakwell4@people.com.cn','mcumeso@princeton.edu','PENDING'),
('aoakwell4@people.com.cn','vwahnerf@nsw.gov.au','PENDING'),
('cbirkbeckh@amazon.co.jp','ftallquiste@fc2.com','FRIENDS'),
('cbirkbeckh@amazon.co.jp','vwahnerf@nsw.gov.au','PENDING'),
('develynl@webs.com','jjoire3@example.com','FRIENDS'),
('dmccolgan9@pcworld.com','gsebirej@yandex.ru','BLOCKED'),
('dmccolgan9@pcworld.com','ubengaln@edublogs.org','BLOCKED'),
('dmccolgan9@pcworld.com','yianelli6@about.com','FRIENDS'),
('gcornhillg@un.org','gpoulson8@amazon.co.jp','BLOCKED'),
('gcornhillg@un.org','sheathcoatc@phpbb.com','BLOCKED'),
('gpoulson8@amazon.co.jp','abeggan2@house.gov','BLOCKED'),
('gpoulson8@amazon.co.jp','ubengaln@edublogs.org','BLOCKED'),
('gsebirej@yandex.ru','ftallquiste@fc2.com','FRIENDS'),
('gsebirej@yandex.ru','rladdsd@soundcloud.com','PENDING'),
('gsebirej@yandex.ru','yianelli6@about.com','BLOCKED'),
('jjoire3@example.com','vwahnerf@nsw.gov.au','FRIENDS'),
('lcahey7@blogspot.com','yianelli6@about.com','BLOCKED'),
('lmalsher1@usda.gov','lcahey7@blogspot.com','PENDING'),
('mcumeso@princeton.edu','vwahnerf@nsw.gov.au','PENDING'),
('mcumeso@princeton.edu','winkin5@nature.com','FRIENDS'),
('msedgea@furl.net','ftallquiste@fc2.com','BLOCKED'),
('msedgea@furl.net','ubengaln@edublogs.org','BLOCKED'),
('sheathcoatc@phpbb.com','ftallquiste@fc2.com','FRIENDS'),
('vwahnerf@nsw.gov.au','lcahey7@blogspot.com','PENDING'),
('winkin5@nature.com','develynl@webs.com','PENDING'),
('winkin5@nature.com','sheathcoatc@phpbb.com','BLOCKED'),
('winkin5@nature.com','vwahnerf@nsw.gov.au','PENDING'),
('winkin5@nature.com','yianelli6@about.com','BLOCKED'),
('yianelli6@about.com','gpoulson8@amazon.co.jp','BLOCKED');
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
  `nama` varchar(255) DEFAULT NULL,
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
INSERT INTO `developer` VALUES
('1ccompany@gmail.com','1C Company','1991-05-07','Introducing Nova Dynamics, where pixels meet passion and creativity ignites innovation. Our team of boundary-pushing developers crafts immersive worlds and unforgettable experiences, setting new standards in gaming excellence. Join us on our journey as we redefine the gaming landscape, one pixel at a time.'),
('activision@gmail.com','Activision','1979-01-15',''),
('atlus@gmail.com','Atlus','1986-04-11',''),
('banzai@gmail.com','Banzai','2000-02-14','We\'ve released dozens of titles that changed the world (and one that didn\'t). Today, millions of people play our games every day.'),
('blizzard@gmail.com','Blizzard Entertainment','1991-12-08',''),
('copcam@gmail.com','Copcam','1979-08-11',''),
('crypticgames@gmail.com','Cryptic Games','2000-10-21','Cryptic Games is a small indie games team in Adelaide, South Australia. Our mission is to build crazy and exciting worlds for you to explore and conquer.'),
('fromsoftware@gmail.com','FromSoftware','1986-01-18',''),
('gachaking@gmail.com','Gacha Games King','2017-06-12','Let\'s gacha!'),
('gameloft@gmail.com','Gameloft','1999-05-02',''),
('garena@gmail.com','Garena','2014-03-03',''),
('kamikaze@gmail.com','Kamikaze Entertainment','1945-08-01','We are self-innovating, striving to create thrilling adventures. We are building the finest MMO game the world has ever seen. Our goal is to create an unforgettable experience through extraordinary gameplay.'),
('lilboystudio@gmail.com','Little Boys Studio','1945-08-06','We make games that spark your imagination like the games you played as a kid.'),
('mihoyo@gmail.com','Mihoyo','2011-07-05','We have waifu, so come play our games'),
('noconnect@gmail.com','No Connect Studio','2007-09-23','Step into a realm where the boundaries of reality blur and the imagination reigns supreme. Our game invites you to embark on an epic journey through a fantastical world teeming with mystery and wonder. Unravel ancient secrets, forge alliances with powerful allies, and confront formidable adversaries as you strive to shape the fate of this mesmerizing realm. Are you ready to unleash your inner hero and leave your mark on this captivating adventure?'),
('noname@gmail.com','No Name Studio','2009-01-01','It Rhymes With Play'),
('quagmire@gmail.com','Quagmire Games','2006-10-10',''),
('raijin@gmail.com','Raijin','2003-11-29','Raijin is an independent RPG developer founded in 1996 in Gent, Belgium.'),
('raingames@gmail.com','Rain Games','2006-10-10',''),
('relogic@gmail.com','Re-Logic','2011-10-03','Best known for the Terraria franchise - the revolutionary 2D Sandbox Adventure that has entertained millions of gamers worldwide - Re-Logic seeks to showcase and evolve the limits of what Indie gaming can be!'),
('simdategamedev@gmail.com','Date Simulator Lovers','2020-09-02',''),
('twintower@gmail.com','Twin Tower Games','1991-09-11','We make a game of building and destroying towers.'),
('void@gmail.com','Void Games','2012-12-12','');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
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
  `username` varchar(20) NOT NULL,
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
INSERT INTO `user` VALUES
('abarnetti@adobe.com','abarnetti','auJ3*{Q)?3)','Aidan','Barnett','2002-03-29',1531),
('abeggan2@house.gov','abeggan2','acF0.,+@,WOoFj=oK','April','Beggan','2006-09-10',2715),
('anarrie0@youtu.be','anarrie0','rzS3<#PpMVOqtD1','Armand','Narrie','2005-03-12',2889),
('aoakwell4@people.com.cn','aoakwell4','cyM3`$.txQ','Alyssa','Oakwell','2010-08-28',454),
('cbirkbeckh@amazon.co.jp','cbirkbeckh','ycD9_>Fym=iOubt/@b','Caspar','Birkbeck','2008-01-25',3949),
('develynl@webs.com','develynl','swX2%$K`rt(PVq<9qz','Daveta','Evelyn','2004-12-29',1249),
('dmccolgan9@pcworld.com','dmccolgan9','hdU5$*SxB)RNPh+\'n)','Deni','McColgan','1999-12-10',3482),
('eludfordb@scribd.com','eludfordb','gwN6+>GX7L#Es','Elizabeth','Ludford','2002-11-02',1976),
('flepickk@simplemachines.org','flepickk','vqZ1}@58Nx%h','Florie','Lepick','2011-06-22',2884),
('ftallquiste@fc2.com','ftallquiste','alD7=/lT~@mb{JDO','Friedrick','Tallquist','1999-02-05',273),
('gcornhillg@un.org','gcornhillg','umN9}(9T`j','Giovanna','cornhill','2011-02-15',760),
('gpoulson8@amazon.co.jp','gpoulson8','ccY1*{|r6!a}Hb#','Gerrie','Poulson','1999-10-01',3197),
('gsebirej@yandex.ru','gsebirej','cpZ8),A{(@g','Gwyn','Sebire','2005-05-16',1720),
('jjoire3@example.com','jjoire3','mjJ7!>M5#n4=BQ','Joy','Joire','2012-07-02',3879),
('lcahey7@blogspot.com','lcahey7','afW5<_*`_/p%`m','Lishe','Cahey','2006-01-20',2321),
('lmalsher1@usda.gov','lmalsher1','hlA6)|@K<aH+QNrh#t','Lelia','Malsher','1995-09-25',4846),
('mcumeso@princeton.edu','mcumeso','uxJ9+|kzqd','Mira','Cumes','1999-09-13',3448),
('msedgea@furl.net','msedgea','mzA6.}+V\'C${(=','Mavis','Sedge','1997-08-09',4375),
('rarnaudinm@craigslist.org','rarnaudinm','jvE2={lR8Ktt}6?','Rockie','Arnaudin','1997-07-08',4482),
('rladdsd@soundcloud.com','rladdsd','qyT4%`95J|nIxZ(}aP~','Raf','Ladds','2010-12-07',3169),
('sheathcoatc@phpbb.com','sheathcoatc','xwJ2${_j6xvZpW_{{Wx','Sully','Heathcoat','2000-03-15',4196),
('ubengaln@edublogs.org','ubengaln','rgR3{!BwG<k$m%wm@','Ulla','Bengal','2000-12-23',1748),
('vwahnerf@nsw.gov.au','vwahnerf','fmF0(#B!7YAb`m','Vanya','Wahner','2004-02-05',318),
('winkin5@nature.com','winkin5','qxE7_*p#W+X|\"7B1.p','Winnie','Inkin','2003-05-16',3317),
('yianelli6@about.com','yianelli6','dpC8%~gapOoba','Yale','Ianelli','2006-12-27',882);
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_game`
--

LOCK TABLES `video_game` WRITE;
/*!40000 ALTER TABLE `video_game` DISABLE KEYS */;
INSERT INTO `video_game` VALUES
(1,'Horror'),
(1,'Indie'),
(1,'Turn-base'),
(2,'Casual'),
(2,'Puzzle'),
(2,'Strategy'),
(3,'Casual'),
(3,'Puzzle'),
(3,'Strategy'),
(4,'Action-adventure'),
(4,'FPS'),
(4,'Simulation'),
(5,'Adventure'),
(5,'Puzzle'),
(5,'Strategy'),
(6,'FPS'),
(6,'Simulation'),
(6,'Sports'),
(7,'Indie'),
(7,'Racing'),
(7,'Sports'),
(8,'Casual'),
(8,'Indie'),
(8,'Sandbox'),
(9,'Casual'),
(9,'MMORPG'),
(9,'Racing'),
(10,'Horror'),
(10,'Sandbox'),
(10,'Turn-base'),
(11,'Action'),
(11,'Adventure'),
(11,'Horror'),
(12,'FPS'),
(12,'Sandbox'),
(12,'Simulation'),
(13,'Action-adventure'),
(13,'RPG'),
(13,'Sandbox'),
(14,'Action'),
(14,'Casual'),
(14,'RPG'),
(15,'Indie'),
(15,'Racing'),
(15,'Sports'),
(16,'Action'),
(16,'Simulation'),
(16,'Sports'),
(17,'Action-adventure'),
(17,'RPG'),
(17,'Simulation'),
(18,'Action-adventure'),
(18,'FPS'),
(18,'Sandbox'),
(19,'FPS'),
(19,'Racing'),
(19,'Sandbox'),
(20,'Action'),
(20,'Puzzle'),
(20,'Racing'),
(21,'Action'),
(21,'Casual'),
(21,'Indie'),
(23,'Horror'),
(23,'Indie'),
(23,'Sports'),
(24,'Action'),
(24,'Casual'),
(24,'FPS'),
(25,'Action'),
(25,'Puzzle'),
(25,'Racing'),
(26,'Action-adventure'),
(26,'Casual'),
(26,'Simulation'),
(27,'Puzzle'),
(27,'Racing'),
(27,'Sports'),
(28,'Simulation'),
(28,'Sports'),
(28,'Strategy'),
(31,'Puzzle'),
(31,'Simulation'),
(32,'Puzzle'),
(32,'Role-playing'),
(33,'Sports'),
(33,'Strategy'),
(34,'Indie'),
(34,'Puzzle'),
(35,'Action-adventure'),
(35,'Simulation'),
(36,'Action'),
(36,'MMORPG'),
(38,'Racing'),
(38,'Strategy'),
(39,'Action'),
(39,'Indie'),
(40,'MMORPG'),
(40,'Sports'),
(42,'Racing'),
(42,'Sandbox'),
(43,'Casual'),
(43,'FPS'),
(44,'Sports'),
(44,'Turn-base'),
(45,'Adventure'),
(45,'Indie'),
(46,'MMORPG'),
(46,'Turn-base'),
(47,'Sports'),
(47,'Strategy'),
(48,'Racing'),
(48,'Turn-base'),
(49,'Action'),
(49,'FPS'),
(50,'Adventure'),
(50,'Sandbox'),
(51,'Puzzle'),
(51,'Sports'),
(52,'Action'),
(52,'Strategy'),
(53,'Casual'),
(53,'Turn-base'),
(54,'Action'),
(54,'FPS'),
(55,'FPS'),
(55,'Strategy'),
(56,'Action'),
(56,'Role-playing'),
(57,'Role-playing'),
(57,'Strategy'),
(58,'FPS'),
(58,'RPG'),
(59,'FPS'),
(59,'Indie'),
(60,'Adventure'),
(60,'Role-playing');
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

-- Dump completed on 2024-05-07 21:07:54
