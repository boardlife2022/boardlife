-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: localhost    Database: boardgame
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.22.04.1

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
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `basket_no` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) DEFAULT NULL,
  `product_num` varchar(6) DEFAULT NULL,
  `basket_amount` int DEFAULT NULL,
  `basket_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`basket_no`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (58,'gwang','000038',4,'2023-06-01 06:45:48'),(59,'gwang','000040',1,'2023-06-01 07:05:16'),(60,'gwang','000004',1,'2023-06-01 07:18:09'),(61,'gwang','000036',1,'2023-06-01 09:24:29'),(62,'gwang','000009',11,'2023-06-09 05:53:59'),(63,'gwang','000009',11,'2023-06-09 06:35:00');
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_game`
--

DROP TABLE IF EXISTS `board_game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_game` (
  `b_id` varchar(6) NOT NULL,
  `b_title` varchar(50) NOT NULL,
  `yearof` varchar(6) NOT NULL,
  `price` int NOT NULL,
  `pnum` varchar(10) DEFAULT NULL,
  `running_time` varchar(10) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `b_img` varchar(150) NOT NULL,
  `game_level` int NOT NULL,
  `designer` varchar(30) NOT NULL,
  `sub_lang` varchar(30) DEFAULT NULL,
  `b_theme` varchar(30) NOT NULL,
  `proceed` varchar(30) NOT NULL,
  `b_detail` text NOT NULL,
  `publisher` varchar(30) NOT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_game`
--

LOCK TABLES `board_game` WRITE;
/*!40000 ALTER TABLE `board_game` DISABLE KEYS */;
INSERT INTO `board_game` VALUES ('1','Sleeping Gods','2019',191000,'1-4','60-250','13+','sleepinggods.png',3,'Ryan Laukat','많은 텍스트로 한글화 필요 (53%)','Fantasy','Hand Management','Voyages of the steamship \"Manticore\" and her crew on the Wandering Sea.','Maldito Games'),('10','Roll Player Adventures','2021',164160,'1-4','90-150','14+','Roll_Player_Adventures.png',2,'James William Ryan','많은 텍스트로 한글화 필요 (50%)','Fantasy','Dice Rolling','Choose wisely in this RPG style adventure — every decision has lasting consequences.','Thunderworks Games'),('11','Peaky Blinders: Under New Management','2019',28600,'2-4','90','18+','peakyblinders.png',3,'René Groen','적당한 텍스트로 참조표 등 필요 (100%)','Dice','Dice Rolling','Create and manage your criminal network in a gang war set in 1920\'s England. ','Just Games'),('12','Marvel Champions: The Card Game','2019',71200,'1-4','45-90','14+','Marvel Champions The Card Game.png',3,'Caleb Grace','많은 텍스트로 한글화 필요 (54%)','Comic Book','Hand Management','Battle Marvel villains with unique teams of iconic heroes in this LCG.','Fantasy Flight Games'),('2','Too Many Bones','2016',194650,'1-4','75','12+','toomanybones.png',4,'Josh J. Carlson','많은 텍스트로 한글화 필요 (61%)','Fantasy','Dice Rolling','Toss gobs of unique dice in an epic adventure en route to a final boss showdown.','Chip Theory Games'),('3','Champions of Midgard','2015',66000,'2-4','60-90','10+','Champions_of_Midgard.png',3,'Ole Steiness','일부 간단한 텍스트 존재 (90%)','Fantasy','Dice Rolling','Gain glory by defending a Viking harbor town against trolls, draugr and other beasts.','Grey Fox Games'),('4','Woodcraft','2022',302770,'1-4','60-120','12+','Woodcraft.png',4,'Vladimír Suchý','게임 내 텍스트 없음 (100%)','Fantasy','Dice Rolling','Grow trees, gather wood and other materials, craft items and build the best workshop!','Delicious Games'),('5','7 Wonders: Duel','2015',29530,'2','30','10+','7wonders.png',2,'Antoine Bauza','게임 내 텍스트 없음 (92%)','Civilization','Card Drafting','Science? Military? What will you draft to win this head-to-head version of 7 Wonders?','Repos Production'),('6','Terraforming Mars','2016',53900,'1-5','120','12+','Terraforming_Mars.png',3,'Jacob Fryxelius','많은 텍스트로 한글화 필요 (46%)','Science Fiction','Hand Management','Compete with rival CEOs to make Mars habitable and build your corporate empire.','FryxGames'),('7','Feed the Kraken','2021',32800,'5-11','45-90','12+','Feed_the_Kraken.png',2,'Dr. Hans Joachim Höh','일부 간단한 텍스트 존재 (100%)','Nautical','Variable Player Powers','Social deduction - Loyal sailors, ruthless pirates, crazy cultists and... The Kraken!','Funtails'),('8','Paladins of the West Kingdom','2019',131830,'1-4','90-120','12+','Paladins_of_the_West_Kingdom.png',4,'Shem Phillips','일부 간단한 텍스트 존재 (76%)','Medieval','Worker Placement','Invaders are coming from everywhere. Keep the faith and defend your homeland.','Garphill Games'),('9','Pandemic Legacy: Season 1','2015',69300,'2-4','60','13+','Pandemic_Legacy.png',3,'Rob Daviau','많은 텍스트로 한글화 필요 (67%)','Environmental','Hand Management','Mutating diseases are spreading around the world - can your team save humanity?','Z-Man Games'),('99','10','10',10,'10','10','10','null',1,'010','10','10','10','null','10');
/*!40000 ALTER TABLE `board_game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_game2`
--

DROP TABLE IF EXISTS `board_game2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_game2` (
  `b_id` varchar(6) NOT NULL,
  `b_title_kor` varchar(50) NOT NULL,
  `b_title_eng` varchar(50) NOT NULL,
  `yearof` varchar(6) DEFAULT NULL,
  `pnum` varchar(10) DEFAULT NULL,
  `running_time` varchar(10) DEFAULT NULL,
  `age` varchar(5) DEFAULT NULL,
  `game_level` double NOT NULL,
  `sub_lang` varchar(100) NOT NULL,
  `b_detail` mediumtext NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `geeklink` varchar(255) NOT NULL,
  `designer` varchar(255) NOT NULL,
  `b_theme` varchar(255) NOT NULL,
  `proceed` varchar(255) NOT NULL,
  `b_img` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_game2`
--

LOCK TABLES `board_game2` WRITE;
/*!40000 ALTER TABLE `board_game2` DISABLE KEYS */;
INSERT INTO `board_game2` VALUES ('0','브래스','Brass','2007','3 - 4','60 - 120','14+',3.86,'게임 내 텍스트 없음 (90%)','Test your economic mettle as you build and network in the Industrial Revolution. ','Maldito Games','null','Martin Wallace','산업 / 제조','핸드 관리, 네트워크 및 경로 구축수입','Brass.jpg'),('1','0','0','0','0','0','0',0,'0','0','0','0','0','0','0','dice_logo.png'),('102680','트라야누스','Trajan','2011','2 - 4','60 - 120','12+',3.65,'게임 내 텍스트 없음 (96%)','Manage and rule all aspects of Ancient Rome with a clever action selection mancala. ','DiceTree Games','https://boardgamegeek.com/boardgame/102680/trajan','Stefan Feld','정치','핸드 관리, 셋 컬렉션, 일꾼 놓기','Trajan.png'),('102794','카베르나: 동굴 속 농부들','Caverna: The Cave Farmers','2013','1 - 7','30 - 210','12+',3.78,'적당한 텍스트로 참조표 등 필요 (64%)','From a simple cave, expand your dwarven home through mining, agriculture, and more. ','999 Games','https://boardgamegeek.com/boardgame/102794/caverna-cave-farmers','Uwe Rosenberg','농업','일꾼 놓기','Caverna_The_Cave_Farmers.png'),('115746','반지 전쟁 (2판)','War of the Ring: Second Edition','2012','2 - 4','150 - 180','13+',4.2,'많은 텍스트로 한글화 필요 (81%)','The Fellowship and the Free Peoples clash with Sauron over the fate of Middle-Earth.','Zhiyanjia','https://boardgamegeek.com/boardgame/115746/war-ring-second-edition','Francesco Nepitello','판타지','핸드 관리, 주사위 굴림, 지역 최다 / 영향력','War_of_the_Ring_Second_Edition.jpg'),('117959','라스베가스','Las Vegas','2012','2 - 5','30','8+',1.18,'게임 내 텍스트 없음 (100%)','Win the payout from various casinos by placing the most dice on them. ','Broadway Toys LTD','https://boardgamegeek.com/boardgame/117959/las-vegas','Rüdiger Dorn','주사위','주사위 굴림, 지역 최다 / 영향력','Las_Vegas.jpg'),('120677','테라 미스티카','Terra Mystica','2012','2 - 5','60 - 150','12+',3.97,'게임 내 텍스트 없음 (95%)','Play fantastical factions. Expand your influence by terraforming and joining cults.','Capstone Games','https://boardgamegeek.com/boardgame/120677/terra-mystica','Helge Ostertag','판타지','플레이어별 특수능력, 지역 최다 / 영향력','Terra_Mystica.jpg'),('121921','로빈슨 크루소 : 저주받은 섬에서의 모험','Robinson Crusoe: Adventures on the Cursed Island','2012','1 - 4','60 - 120','14+',3.81,'많은 텍스트로 한글화 필요 (79%)','Work together — with friends or with Friday — to survive on a deserted island.','Z-Man Games','https://boardgamegeek.com/boardgame/121921/robinson-crusoe-adventures-cursed-island','Ignacy Trzewiczek','소설-기반','주사위 굴림, 플레이어별 특수능력, 셋 컬렉션','Robinson_Crusoe_Adventures_on_the_Cursed_Island.jpg'),('12333','황혼의 투쟁','Twilight Struggle','2005','2','120 - 150','13+',3.6,'많은 텍스트로 한글화 필요 (80%)','Relive the Cold War and rewrite history in an epic clash between the USA and USSR.','GMT Games','https://boardgamegeek.com/boardgame/12333/twilight-struggle','Ananda Gupta','정치','핸드 관리, 주사위 굴림, 지역 최다 / 영향력','Twilight_Struggle.jpg'),('124742','안드로이드: 넷러너','Android: Netrunner','2012','2','45','14+',3.4,'많은 텍스트로 한글화 필요 (84%)','Megacorporation versus Netrunner in this futuristic cyberpunk game of cat and mouse.','Edge Entertainment','https://boardgamegeek.com/boardgame/124742/android-netrunner','Richard Garfield','블러핑','핸드 관리, 플레이어별 특수능력, 액션 포인트','Android_Netrunner.jpg'),('125153','더 갤러리스트','The Gallerist','2015','1 - 4','60 - 150','13+',4.26,'게임 내 텍스트 없음 (96%)','Amass a fortune, and stake your reputation by operating a lucrative art gallery.','Intrafin Games','https://boardgamegeek.com/boardgame/125153/gallerist','Vital Lacerda','경제','셋 컬렉션, 일꾼 놓기, 솔로/솔로테어 게임','The_Gallerist.jpg'),('126163','촐킨: 마야의 달력','Tzolk\'in: The Mayan Calendar','2012','2 - 4','90','13+',3.67,'게임 내 텍스트 없음 (97%)','Lead your people, build monuments and make offerings to earn the favour of the gods.','DiceTree Games','https://boardgamegeek.com/boardgame/126163/tzolk-mayan-calendar','Daniele Tascini','농업','셋 컬렉션, 일꾼 놓기','Tzolk\'in_The_Mayan_Calendar.jpg'),('128882','레지스탕스: 아발론','The Resistance: Avalon','2012','5 - 10','30','13+',1.75,'일부 간단한 텍스트 존재 (69%)','Who can you trust? A game of social deduction set in King Arthur’s legendary realm.','Broadway Toys LTD','https://boardgamegeek.com/boardgame/128882/resistance-avalon','Don Eskridge','판타지','동시 액션 선택, 팀 기반 게임, 투표','The_Resistance_Avalon.png'),('146021','엘드리치 호러','Eldritch Horror','2013','1 - 8','120 - 240','14+',3.32,'많은 텍스트로 한글화 필요 (78%)','An unknown Ancient One approaches the world—and you must solve mysteries to stop it.','ADC Blackfire Entertainment','https://boardgamegeek.com/boardgame/146021/eldritch-horror','Nikki Valens','판타지','주사위 굴림, 플레이어별 특수능력, 협력 게임','Eldritch_Horror.jpg'),('148228','스플렌더','Splendor','2014','2 - 4','30','10+',1.79,'게임 내 텍스트 없음 (98%)','Renaissance merchants race to grab gems, acquire property, and please nobility.','Brain Games','https://boardgamegeek.com/boardgame/148228/splendor','Marc André','르네상스','셋 컬렉션, 오픈 드래프팅, 레이스','Splendor.png'),('150145','스컬킹','skull king','2013','2 - 6','30','8+',1.7,'게임 내 텍스트 없음 (100%)','Trick-taking on the high seas. Meet your bid to please the Skull King.','Schmidt Spiele','https://boardgamegeek.com/boardgame/150145/skull-king','Brent Beck','항해','트릭-테이킹, 예측 입찰','skull_king.png'),('150376','데드 오브 윈터 : 크로스로드 게임','Dead of Winter: A Crossroads Game','2014','2 - 5','60 - 120','13+',3.02,'많은 텍스트로 한글화 필요 (75%)','As you struggle to keep survivors alive, how will you value group vs. personal needs?','Isaac Vega','https://boardgamegeek.com/boardgame/150376/dead-winter-crossroads-game','Plaid Hat Games','좀비','핸드 관리, 플레이어별 특수능력, 협력 게임','Dead_of_Winter_A_Crossroads_Game.jpg'),('161936','팬데믹 레거시: 시즌 1','Pandemic Legacy: Season 1','2015','2 - 4','60','13+',2.83,'많은 텍스트로 한글화 필요 (67%)','Mutating diseases are spreading around the world - can your team save humanity?','Z-Man Games','https://boardgamegeek.com/boardgame/161936/pandemic-legacy-season-1','Rob Daviau','환경','핸드 관리, 플레이어별 특수능력, 셋 컬렉션','Pandemic_Legacy_Season_1.png'),('162886','정령섬','Spirit Island','2017','1 - 4','90 - 120','13+',4.06,'많은 텍스트로 한글화 필요 (72%)','Island Spirits join forces using elemental powers to defend their home from invaders.','Intrafin Games','https://boardgamegeek.com/boardgame/162886/spirit-island','R. Eric Reuss','판타지','핸드 관리, 플레이어별 특수능력, 셋 컬렉션','Spirit_Island.jpg'),('167791','테라포밍 마스','Terraforming Mars','2016','1 - 5','120','12+',3.26,'많은 텍스트로 한글화 필요 (46%)','Compete with rival CEOs to make Mars habitable and build your corporate empire.','Intrafin Games','https://boardgamegeek.com/boardgame/167791/terraforming-mars','Jacob Fryxelius','SF 공상 과학','핸드 관리, 플레이어별 특수능력, 셋 컬렉션','Terraforming_Mars.jpg'),('169786','사이드','Scythe','2106','1 - 5','90 - 115','14+',3.44,'적당한 텍스트로 참조표 등 필요 (73%)','Five factions vie for dominance in a war-torn, mech-filled, dieselpunk 1920s Europe. ','Maldito Games','https://boardgamegeek.com/boardgame/169786/scythe','Jamey Stegmaier','SF 공상 과학','플레이어별 특수능력, 그리드 이동, 솔로/솔로테어 게임','Scythe.png'),('171623','마르코 폴로','The Voyages of Marco Polo','2015','2 - 4','40 - 100','12+',3.19,'게임 내 텍스트 없음 (92%)','Using unique abilities, fulfill contracts and reach your goals along the Silk Road.','999 Games','https://boardgamegeek.com/boardgame/171623/voyages-marco-polo','Daniele Tascini','여행','주사위 굴림, 플레이어별 특수능력, 네트워크 및 경로 구축','The_Voyages_of_Marco_Polo.jpg'),('173346','7 원더스: 대결','7 Wonders: Duel','2015','2','30','10+',2.22,'게임 내 텍스트 없음 (92%)','Science? Military? What will you draft to win this head-to-head version of 7 Wonders?','ADC Blackfire Entertainment','https://boardgamegeek.com/boardgame/173346/7-wonders-duel','Antoine Bauza','문명','셋 컬렉션, 카드 드래프팅, 레이어링','7_Wonders_Duel.png'),('174430','글룸헤이븐','Gloomhaven','2017','1 - 4','60 - 120','14+',3.89,'많은 텍스트로 한글화 필요 (68%)','Vanquish monsters with strategic cardplay. Fulfill your quest to leave your legacy!','Cephalofair Games','https://boardgamegeek.com/boardgame/174430/gloomhaven','Isaac Childres','판타지','핸드 관리, 플레이어별 특수능력, 협력 게임','Gloomhaven.jpg'),('177736','오딘을 위하여','A Feast for Odin','2016','1 - 4','30 - 120','12+',3.85,'적당한 텍스트로 참조표 등 필요 (74%)','Puzzle together the life of a Viking village as you hunt, farm, craft, and explore.','Maldito Games','https://boardgamegeek.com/boardgame/177736/feast-odin','Uwe Rosenberg','퍼즐','주사위 굴림, 타일 놓기, 일꾼 놓기','A_Feast_for_Odin.png'),('181289','테라 미스티카 빅 박스','Terra Mystica Big Box','2015','2 - 5','60 - 150','12+',4,'게임 내 텍스트 없음 (100%)','A good strategy game that arouses the desire to do well','Korea Boardgames co., Ltd.','https://boardgamegeek.com/boardgame/181289/terra-mystica-big-box','Helge Ostertag','도시 건설','플레이어별 특수능력지역 최다 / 영향력','Terra_Mystica_Big_Box.jpg'),('182028','쓰루 디 에이지스: 문명에 관한 새로운 이야기','Through the Ages: A New Story of Civilization','2015','2 - 4','120','14+',4.43,'많은 텍스트로 한글화 필요 (75%)','Rewrite history as you build up your civilization in this epic card drafting game!','DiceTree Games','https://boardgamegeek.com/boardgame/182028/through-ages-new-story-civilization','Vlaada Chvátil','문명','액션 포인트, 카드 드래프팅, 경매/입찰','Through_the_Ages_A_New_Story_of_Civilization.jpg'),('182874','그랜드 오스트리아 호텔','Grand Austria Hotel','2015','2 - 4','60 - 120','12+',3.22,'게임 내 텍스트 없음 (93%)','Serve guests and prepare rooms to be the best hotelier in the Viennese modern age.','Maldito Games','https://boardgamegeek.com/boardgame/182874/grand-austria-hotel','Virginio Gigli','주사위','핸드 관리, 주사위 굴림, 셋 컬렉션','Grand_Austria_Hotel.jpeg'),('187645','스타워즈: 리벨리온','Star Wars: Rebellion','2016','2 - 4','180 - 240','14+',3.73,'많은 텍스트로 한글화 필요 (87%)','Strike from your hidden base as the Rebels—or find and destroy it as the Empire. ','ADC Blackfire Entertainment','https://boardgamegeek.com/boardgame/187645/star-wars-rebellion','Corey Konieczka','SF 공상 과학','핸드 관리, 주사위 굴림, 플레이어별 특수능력','Star_Wars_Rebellion.png'),('193738','그레이트 웨스턴 트레일','Great Western Trail','2016','2 - 4','75 - 150','12+',3.7,'게임 내 텍스트 없음 (95%)','Use strategic outposts and navigate danger as you herd your cattle to Kansas City.','999 Games','https://boardgamegeek.com/boardgame/193738/great-western-trail','Alexander Pfister','동물','핸드 관리, 셋 컬렉션, 타일 놓기','Great_Western_Trail.jpg'),('196340','요코하마','YOKOHAMA','2016','2 - 4','90','14+',3.31,'일부 간단한 텍스트 존재 (60%)','Claim your fame as the dominant merchant in the Meiji period of Yokohama.','dlp games','https://boardgamegeek.com/boardgame/196340/yokohama','Hisashi Hayashi','경제','셋 컬렉션, 조립 보드, 일꾼 놓기','YOKOHAMA.jpg'),('203993','위대한 로렌초','Lorenzo il Magnifico','2016','2 - 4','60 - 120','12+',3.3,'게임 내 텍스트 없음 (100%)','Avoid excommunication and lead your family to power during the Italian Renaissance.','Maldito Games','https://boardgamegeek.com/boardgame/203993/lorenzo-il-magnifico','Flaminia Brasini','르네상스','주사위 굴림, 일꾼 놓기, 오픈 드래프팅','Lorenzo_il_Magnifico.jpg'),('205059','광기의 저택_2판','Mansions_of_Madness_Second_Edition','2016','1 - 5','120 - 180','14+',2.67,'많은 텍스트로 한글화 필요 (56%)','Unravel mysteries in Arkham with your investigative team in this app-guided game.','ADC Blackfire Entertainment','https://boardgamegeek.com/boardgame/205059/mansions-madness-second-edition','Corey Konieczka','판타지','핸드 관리, 주사위 굴림, 플레이어별 특수능력','Mansions_of_Madness_Second_Edition.jpg'),('205637','아컴 호러: 카드 게임','Arkham Horror: The Card Game','2016','1 - 2','60 - 120','14+',3.52,'많은 텍스트로 한글화 필요 (77%)','Investigate the horrors of Arkham while courting cosmic doom.','Edge Entertainment','https://boardgamegeek.com/boardgame/205637/arkham-horror-card-game','Matthew Newman','판타지','핸드 관리, 플레이어별 특수능력, 협력 게임','Arkham_Horror_The_Card_Game.jpg'),('215','티츄','Tichu','2014','3 - 10','60','10+',2.34,'게임 내 텍스트 없음 (100%)','Be the first team to empty your hands in this popular partnership climbing card game.','999 Games','https://boardgamegeek.com/boardgame/215/tichu','Urs Hostettler','카드 게임','핸드 관리, 팀 기반 게임, 트릭-테이킹','Tichu.jpg'),('220308','가이아 프로젝트','Gaia Project','2017','1 - 4','60 - 150','12+',4.39,'게임 내 텍스트 없음 (90%)','Expand, research, upgrade, and settle the galaxy with one of 14 alien species.','DiceTree Games','https://boardgamegeek.com/boardgame/220308/gaia-project','Helge Ostertag','SF 공상 과학','플레이어별 특수능력, 조립 보드, 네트워크 및 경로 구축','Gaia_Project.jpg'),('224517','브라스: 버밍엄','Brass: Birmingham','2018','2 - 4','60 - 120','14+',3.9,'게임 내 텍스트 없음 (95%)','Build networks, grow industries, and navigate the world of the Industrial Revolution.','Maldito Games','https://boardgamegeek.com/boardgame/224517/brass-birmingham','Martin Wallace','산업 / 제조','핸드 관리, 네트워크 및 경로 구축, 변화하는 게임 세팅','Brass_Birmingham.jpg'),('247030','테라포밍 마스: 서곡','Terraforming Mars: Prelude','2018','1 - 5','60 - 120','12+',2.5,'적당한 텍스트로 참조표 등 필요 (81%)','This expansion will give your initial terraforming endeavours a little boost. ','Intrafin Games','https://boardgamegeek.com/boardgame/247030/terraforming-mars-prelude','Jacob Fryxelius','SF 공상 과학','핸드 관리, 플레이어별 특수능력, 타일 놓기','Terraforming_Mars_Prelude.png'),('248562','메이지 나이트: 얼티밋 에디션','Mage Knight: Ultimate Edition','2018','1 - 5','150','14+',4.65,'많은 텍스트로 한글화 필요 (85%)','Command armies, gather spells and artifacts as you conquer a fantasy land.','Pegasus Spiele','https://boardgamegeek.com/boardgame/248562/mage-knight-ultimate-edition','Vlaada Chvátil','전투','핸드 관리, 협력 게임, 지역 최다 / 영향력','Mage_Knight_Ultimate_Edition.jpg'),('28720','브라스: 랭커셔','Brass: Lancashire','2017','2 - 4','60 - 120','13+',3.86,'게임 내 텍스트 없음 (90%)','Test your economic mettle as you build and network in the Industrial Revolution. ','Maldito Games','https://boardgamegeek.com/boardgame/28720/brass-lancashire','Martin Wallace','산업 / 제조','핸드 관리, 네트워크 및 경로 구축수입','Brass_Lancashire.jpg'),('290822','피키 블라인더스: 언더 뉴 매니지먼트','Peaky Blinders: Under New Management','2019','2 - 4','90','18+',2.67,'적당한 텍스트로 참조표 등 필요 (100%)','Create and manage your criminal network in a gang war set in 1920\'s England.','Just Games','https://boardgamegeek.com/boardgame/290822/peaky-blinders-under-new-management','René Groen','주사위','주사위 굴림, 베팅 / 내기','peakyblinders.png'),('3076','푸에르토 리코','Puerto Rico','2002','3 - 5','90 - 150','12+',3.27,'적당한 텍스트로 참조표 등 필요 (55%)','Ship goods, construct buildings, and choose roles that benefit you more than others.','Tilsit','https://boardgamegeek.com/boardgame/3076/puerto-rico','Andreas Seyfarth','농업','단계 순서 변화, 게임 종료 보너스, 차례 순서: 정방향','Puerto_Rico.jpg'),('31260','아그리콜라','Agricola','2007','1 - 5','30 - 150','12+',3.64,'많은 텍스트로 한글화 필요 (75%)','Build your farmstead by sowing fields and raising livestock. But don\'t forget to eat!','999 Games','https://boardgamegeek.com/boardgame/31260/agricola','Uwe Rosenberg','농업','핸드 관리, 플레이어별 특수능력, 일꾼 놓기','Agricola.jpg'),('342942','아크 노바','Ark Nova','2021','1 - 4','90 - 150','14+',3.72,'많은 텍스트로 한글화 필요 (63%)','Plan and build a modern, scientifically managed zoo to support conservation projects.','Maldito Games','https://boardgamegeek.com/boardgame/342942/ark-nova','Mathias Wigge','환경','핸드 관리, 플레이어별 특수능력, 셋 컬렉션','Ark_Nova.jpg'),('35677','르아브르','Le Havre','2008','1 - 5','30 - 150','12+',3.73,'적당한 텍스트로 참조표 등 필요 (58%)','Establish a supply chain by collecting resources, building industries, and shipping.','999 Games','https://boardgamegeek.com/boardgame/35677/le-havre','Uwe Rosenberg','항해','일꾼 놓기, 솔로/솔로테어 게임, 게임 종료 보너스','Le_Havre.png'),('36218','도미니언','Dominion','2008','2 - 4','30','13+',2.35,'적당한 텍스트로 참조표 등 필요 (53%)','Acquire the most valuable lands by building your deck with treasure and power cards.','999 Games','https://boardgamegeek.com/boardgame/36218/dominion','Donald X','중세','핸드 관리, 덱 빌딩, 빼앗기','Dominion.jpg'),('366469','버라지: 나일 강 확장','Barrage: The Nile Affair Expansion','2022','2 - 4','60 - 120','14+',0,'0 (0%)','Compete for the fertile water of the Nile and irrigate its banks','Portal Games','https://boardgamegeek.com/boardgameexpansion/366469/barrage-nile-affair-expansion','Simone Luciani','산업 / 제조','플레이어별 특수능력, 일꾼 놓기, 네트워크 및 경로 구축','Barrage_The_Nile_Affair_Expansion.jpg'),('40834','도미니언: 장막뒤의 사람들','Dominion: Intrigue','2009','2 - 6','30','13+',2.42,'적당한 텍스트로 참조표 등 필요 (54%)','Enlist torturers, swindlers, and saboteurs to gain wealth and dominate the kingdom.','999 Games','https://boardgamegeek.com/boardgame/40834/dominion-intrigue','Donald X','중세','핸드 관리, 덱 빌딩','Dominion_Intrigue.jpg'),('4098','증기의 시대','Age of Steam','2022','3 - 6','120','13+',3.89,'일부 간단한 텍스트 존재 (67%)','Outperform your railroad rivals with shares, auctions, trackbuilding, and deliveries.','Pegasus Spiele','https://boardgamegeek.com/boardgame/4098/age-steam','Martin Wallace','기차','주사위 굴림, 타일 놓기, 네트워크 및 경로 구축','Age_of_Steam.jpg'),('46213','텔레스트레이션','Telestrations','2009','4 - 8','30','12+',1.07,'많은 텍스트로 한글화 필요 (50%)','Guess what they drew, then draw what they guessed, and see how funny the changes get. ','Broadway Toys LTD','https://boardgamegeek.com/boardgame/46213/telestrations','null','실시간','스토리텔링, 종이와 펜','Telestrations.jpg'),('84876','버건디의 성','The Castles of Burgundy','2011','2 - 4','30 - 90','12+',2.99,'게임 내 텍스트 없음 (87%)','Plan, trade, and build your Burgundian estate to prosperity and prominence.','Broadway Toys LTD','https://boardgamegeek.com/boardgame/84876/castles-burgundy','Stefan Feld','영역 건설','주사위 굴림, 셋 컬렉션, 타일 놓기','The_Castles_of_Burgundy.jpg'),('96848','메이지 나이트','Mage Knight','2011','1 - 4','60 - 240','14+',4.35,'많은 텍스트로 한글화 필요 (81%)','Build your hero’s spells, abilities, and artifacts as you explore & conquer cities.','WizKids','https://boardgamegeek.com/boardgame/96848/mage-knight-board-game','Vlaada Chvátil','모험','핸드 관리, 주사위 굴림, 플레이어별 특수능력','Terraforming_Mars.jpg');
/*!40000 ALTER TABLE `board_game2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board_game_rating`
--

DROP TABLE IF EXISTS `board_game_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board_game_rating` (
  `br_id` varchar(6) NOT NULL,
  `user_id` varchar(6) NOT NULL,
  `b_id` varchar(6) NOT NULL,
  `br_title` varchar(50) NOT NULL,
  `br_content` mediumtext NOT NULL,
  `br_rating` int NOT NULL,
  `br_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`br_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board_game_rating`
--

LOCK TABLES `board_game_rating` WRITE;
/*!40000 ALTER TABLE `board_game_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `board_game_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_qna`
--

DROP TABLE IF EXISTS `club_qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_qna` (
  `club_qna_num` int NOT NULL AUTO_INCREMENT,
  `club_num` int NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `club_qna_category` varchar(20) NOT NULL,
  `club_qna_title` varchar(50) NOT NULL,
  `club_qna_content` mediumtext NOT NULL,
  `club_qna_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `qnum` int DEFAULT NULL,
  `qna` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`club_qna_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_qna`
--

LOCK TABLES `club_qna` WRITE;
/*!40000 ALTER TABLE `club_qna` DISABLE KEYS */;
/*!40000 ALTER TABLE `club_qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_review`
--

DROP TABLE IF EXISTS `club_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_review` (
  `club_review_num` int NOT NULL AUTO_INCREMENT,
  `club_num` int NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `club_review_content` mediumtext NOT NULL,
  `club_review_rating` int NOT NULL,
  `club_review_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`club_review_num`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_review`
--

LOCK TABLES `club_review` WRITE;
/*!40000 ALTER TABLE `club_review` DISABLE KEYS */;
INSERT INTO `club_review` VALUES (1,30,'abc','백양자리 보드게임 클럽에서 Too Many Bones를 플레이해봤는데 정말 재미있었어요! 캐릭터들마다 다른 능력과 전략을 가지고 있어서 게임을 진행하면서 계획을 세우는 재미가 있었고, 적들과의 전투도 진정한 팀워크를 요구해서 더욱 즐거웠어요. 보드게임을 좋아하는 사람들에게 꼭 추천하고 싶은 게임이에요.',3,'2023-05-19 02:44:16'),(2,30,'wes','미드가르드의 챔피언은 백양자리 보드게임 클럽에서 새롭게 소개된 게임 중 하나인데, 플레이해보니까 정말 중독성 있는 게임이었어요. 캐릭터를 성장시키고 던전에서 몬스터들과 싸우는 과정이 진짜 스릴 넘치고 재미있었어요. 게임마다 다른 이야기가 펼쳐지고 선택의 영향도 주는 요소도 있어서 계속해서 다시 플레이하고 싶은 게임이에요.',4,'2023-05-19 02:45:39'),(3,30,'rty','백양자리 보드게임 클럽에서 Too Many Bones와 미드가르드의 챔피언을 함께 플레이한 경험이 정말 좋았어요. 클럽 내의 다른 참여자들과 함께 게임을 즐기며 새로운 전략을 배우고 공유할 수 있었고, 게임에 대한 열정과 토론이 흥미로웠어요. 클럽 분위기도 좋아서 다른 보드게임을 도전해보고 싶은 동기를 더욱 키워주는 경험이었어요.',2,'2023-05-19 02:45:39'),(4,30,'scv','Too Many Bones는 조금 규칙이 복잡해 보였지만, 백양자리 보드게임 클럽에서 함께 플레이하면서 멋진 게임 동료들의 도움을 받을 수 있어서 좋았어요. 함께 규칙을 익히고 전략을 공유하며 플레이하니 게임에 대한 이해도가 높아지고 승리의 성취감도 더욱 크게 느껴졌어요. 보드게임을 배우고 싶은 사람들에게 클럽을 추천해주고 싶어요.',5,'2023-05-19 02:45:39'),(5,30,'bhf','백양자리 보드게임 클럽에서의 경험한 토너먼트 경쟁은 아니었지만, 백양자리 보드게임 클럽에서의 경기는 항상 친밀하고 친근한 분위기에서 진행되었어요. Too Many Bones와 미드가르드의 챔피언을 함께 즐기면서 다른 참여자들과의 친목도 도모할 수 있었고, 게임 중에는 다양한 대화와 웃음 소리가 가득했어요. 클럽 멤버들은 상호간에 조언과 지원을 아끼지 않았고, 게임 이외의 주제로도 즐겁게 대화하며 보드게임을 즐길 수 있는 좋은 공간이었어요. 백양자리 보드게임 클럽은 보드게임을 사랑하는 이들에게 정말로 권해드릴만한 멋진 모임이었어요.',2,'2023-05-19 02:45:39'),(9,29,'user','황소자리 보드게임 클럽',2,'2023-05-19 05:47:34'),(10,28,'user','이게 무슨일이야 이렇게 좋은 날에',1,'2023-05-19 05:50:06'),(11,28,'user','보여줘야겠어, 내가 망할거란놈들에게도 내가 잘될거란 애들에게도',3,'2023-05-19 05:50:55'),(12,5,'user','VICIT ITER DURUM PIETAS',1,'2023-05-19 06:01:33'),(13,5,'user','labora et mea',1,'2023-05-19 06:01:50'),(19,29,'user','별점과 리뷰는 반드시 로그인한 사람만 입력할 수 있습니다',1,'2023-05-19 07:23:22'),(21,25,'mongja','like an G6 like an G6 l',4,'2023-05-19 07:34:55'),(22,12,'woohyuk','현우형 괴롭히지 마요!',4,'2023-05-19 08:16:33'),(23,26,'mongja','호출 URL??',4,'2023-05-30 08:31:53'),(24,29,'kreble','123456789',4,'2023-05-30 09:47:41'),(25,6,'mongja','매우 좋아요',4,'2023-05-31 08:27:31');
/*!40000 ALTER TABLE `club_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `b_id` varchar(6) DEFAULT NULL,
  `post_title` varchar(50) NOT NULL,
  `post_content` longtext NOT NULL,
  `user_id` varchar(30) DEFAULT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `post_category` varchar(20) NOT NULL,
  `post_img` varchar(255) DEFAULT NULL,
  `post_cnt` int DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (198,'290822','새로운 보드게임','입니다.','gwang','2023-05-10 18:08:39','free','null',NULL),(199,'12333','asdf','asdf','gwang','2023-05-10 18:27:55','archive','null',NULL),(200,'3076','푸에르토 리코','거기 미국땅이래잖아','null','2023-05-11 11:41:49','null','null',NULL),(201,'102680','웹이나 잘하라고','Yo YO','gwangju','2023-05-18 08:23:10','free','null',NULL),(202,'148228','스플렌더 잘하는법','귀족타일을 산다.','gwang','2023-05-22 01:47:49','tip','null',NULL),(203,'162886','g','g\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\ng\r\n','gwang','2023-05-24 07:45:12','archive','null',NULL),(205,'121921','rum rum rumble krumble','다 krumble','kreble','2023-05-30 09:47:26','free','null',NULL),(207,'0','쉼표 by 다섯','고생했다 오늘도\r\n습관처럼 내뱉는 말\r\n하루를 안주로 삼아\r\n고생하자 내일도\r\n물 보듯 뻔할 테니까\r\n흔들려도 돌아오자\r\n아니면 당장 짐을 챙긴 다음\r\n집에 좀 다녀올까\r\n그래 잠깐만 쉬다 갈까\r\n아니면 당장 짐을 챙긴 다음\r\n먼 곳으로 떠나볼까\r\n그래 잠깐만 쉬다 오자\r\n살아본다 매일 밤\r\n버티면 된다 하니까\r\n그 무책임한 말을 믿자\r\n보지 말자 매일 밤\r\n작은 화면 속에 속아\r\n그곳에 날 가두지 말자\r\n아니면 당장 짐을 챙긴 다음\r\n집에 좀 다녀올까\r\n그래 잠깐만 쉬다 갈까\r\n아니면 당장 짐을 챙긴 다음\r\n먼 곳으로 떠나볼까\r\n그래 잠깐만 쉬다 오자\r\n아니면 당장 짐을 챙긴 다음\r\n집에 좀 다녀올까\r\n그래 잠깐만 쉬다 갈까\r\n아니면 당장 짐을 챙긴 다음\r\n먼 곳으로 떠나볼까\r\n그래 잠깐만 쉬다 오자','mongja','2023-05-31 03:55:17','free','null',NULL),(210,'150376','자유게시판','자유','mongja','2023-05-31 03:59:22','free','null',NULL),(211,'150145','bang bang by Ariana Grande','She got a body like an hourglass\r\nBut I can give it to you all the time\r\n','mongja','2023-05-31 03:59:41','free','null',NULL),(216,'1','이벤트 참여도 설문','참여 허쉴?','gwang','2023-05-31 08:44:21','survey','null',NULL),(217,'215','티츄 후기입니다.','해본적 없습니다.','gwang','2023-05-31 08:45:08','review','null',NULL),(218,'148228','스플렌더 게임판 공유합니다.','공유','gwang','2023-05-31 08:45:27','archive','null',NULL),(219,'174430','글룸헤이븐 잘하는 법','글룸헤이븐','green','2023-05-31 08:49:02','tip','null',NULL),(221,'290822','피키블라인더스 후기입니다!','재미있습니다!','green','2023-05-31 08:51:29','review','null',NULL),(222,'1','않이;;;','Fucking UI 좀 어떻게 해보세요 쫌!!!','wwwtt','2023-06-05 08:25:23','free','null',NULL),(223,'1','물건구매가 안됩니다.','빠른수정 부탁드립니다.','wwwtt','2023-06-05 08:29:18','free','null',NULL),(224,'1','현우형 돌아와 돌아와','허리어디가아파!!!!!!!!','aaaaaaaa','2023-06-07 07:21:58','null','null',NULL),(225,'290822','젤다의 전설 2','젤다의 전설하고싶엉','aaaaaaaa','2023-06-07 07:22:42','free','null',NULL),(226,'1','현우형 오늘도 안오는거? 답글달아줘','현우형 어디갔어','aaaaaaaa','2023-06-08 03:27:54','null','null',NULL),(227,'1','현우형 준열이형 오늘안왔어 오늘 안전한날이야!!!','돌아와','aaaaaaaa','2023-06-08 03:28:52','null','null',NULL),(229,'1','현우형 준열이형 왔어 오늘 위험한날이야!!!','근데 오는중이네 ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ','aaaaaaaa','2023-06-09 00:25:39','null','null',NULL),(230,'1','현우형 도착!!!','실시간현황','aaaaaaaa','2023-06-09 00:29:35','null','null',NULL),(231,'1','면접관님 이거보세요','이포트폴리오 제출한 사람  합격시키세요 명령입니다.','aaaaaaaa','2023-06-09 00:30:58','null','null',NULL),(232,'102680','광의형 돌아와!!!!!','돌아와!','aaaaaaaa','2023-06-09 02:49:06','archive','null',NULL),(233,'1','현우선임개발자님 공지사항 보세요','큰일났습니다.!!! 회사에서 강경대응했어요!!!','aaaaaaaa','2023-06-13 01:52:35','null','null',NULL);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_info`
--

DROP TABLE IF EXISTS `member_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_info` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `name` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `nickname` varchar(10) DEFAULT NULL,
  `birth` varchar(8) DEFAULT NULL,
  `p_image` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_info`
--

LOCK TABLES `member_info` WRITE;
/*!40000 ALTER TABLE `member_info` DISABLE KEYS */;
INSERT INTO `member_info` VALUES ('','','','','','','','','',''),('aaaaaaaa','aaaaaaaa','aaaaaaa@naver.com','남','이준열 라면','ㅈㅁㄹㅈㅁㄹ ㅈㅁㄹㅈㅁㄹㅈㅁ','00000000000','','','null'),('abcde','12345678','zxc@naver.com','남','zx','z z','01012345678','한글','19891015','dream_TradingCard (13).jpg'),('betelgeus','12345678','betghe@naver.com','남','yuuri','서울 강남구 강남대로 238 스카이쏠라 반지하','01012345678','반지하','19871014','best04.png'),('dddas','12345678','qwe@naver.com','남','q','q q','01012345678','','',''),('dearmy','12345678','deat@naver.com','여','디얼','제주특별자치도 서귀포시 가가로 14 가가가가','01012345678','까','19991212','bg2.jpeg'),('diasd','12345678','wqe@naver.com','여','sa','a a','01012345678','아직도','1970927','Java_Logo.png'),('dungdae','12345678','deundae@naver.com','남','하현상','강원 강릉시 주문진읍 등대1길 1 등대','01012345678','하현상','197130','cafe_img.jpg'),('eweqwe','aaaaaaaaa','aa@naver.com','남','a','a a','01012345678','','','null'),('geograph','12345678','qwerty@naver.com','여','김그린','ㅇ ㅇ','01012345678','필모그래피','19851114','Action.jpg'),('great','12345678','123@naver.com','남','gre','w e','01012345678','','',''),('green','12345678','green@naver.com','남','김그린','경기 성남시 분당구 서판교로 188 판교동 짬뽕','01012345678','안녕하세요','199547','Netflix_Logo_PMS.png'),('greenlss','12345678','greenlee@naver.com','남','이그린','경기 성남시 분당구 대왕판교로606번길 45 101동 101호','01012345678','이그린','1987914','database.png'),('greenpark','12345678','ta1234@naver.com','남','박그린','경기 성남시 분당구 판교역로 4 101동 101호','01012345678','그린박','1981914','jquery_logo_icon_181281.png'),('gregajigo','12345678','gregajigo@naver.com','남','그래가지고','광주 남구 백서로 57-2 스낵타운','01012345678','','','null'),('grenger','12345678','qwe@naver.com','남','qwe','qw w','01012345678','','',''),('gwang','qwerqwer','gwang@naver.com','남','광의','경기 안산시 단원구 중앙역 1번출구','01012345678','GWANG','19930805','peakyblinders.png'),('gwangju','12345678','qwe@naver.com','남','광주','경기 광주시 경안로 6-2 ㅇ','01012345678','','','null'),('gwangju2','12345678','qwe2@naver.com','남','이광주','경기 광주시 경안로 5 젤','01012345678','','','null'),('gwangju3','12345678','qwe@naver.com','남','김광주','경기 광주시 경안로41번길 6 ㅎㅎ','01012345678','','','null'),('heortai','12345678','qwerty@naver.com','남','이그린','경기 성남시 분당구 판교역로 4 101동 101호','01012345678','이그린','1973926','자게.png'),('kreble','12345678','krumble@naver.com','남','크럼블','서울 강남구 강남대로 238 krumble','01012345678','','','null'),('lgere','12345678','qwe2@naver.com','남','광주','경기 성남시 분당구 대왕판교로606번길 45 101동 101호','01012345678','이그린','19711129','jquery_logo_icon_1812811.png'),('lllll','llllllll','llllllllll@naver.com','남','이름','경기 수원시 장안구 수성로 249 그린 컴퓨터 5층','01001001000','닉네임','1991425','null'),('mbcmmm','1234aaaa','mbc@naver.com','남','MBC','서울 강남구 가로수길 5 길바닥','01023456789','','','null'),('mongja','12345678','mongja@naver.com','여','송이몽자','경기 성남시 분당구 판교역로 지하 160 판교에 산다','01012345678','','',''),('mongja2','12345678','mongja@naver.com','남','몽자','서울 강동구 천호대로213길 14 010','01012345678','몽자','1999131','dream_TradingCard (4).jpg'),('neogeo','12345678','neogeo@naver.com','남','neogeo','전북 순창군 복흥면 산정길 117 길바닥','01012345678','네오지오','1981814','homer - iliad.pdf'),('nuksal','12345678','nuck@hanmail.net','남','넉살','경기 성남시 분당구 대왕판교로 477 ㅇㅇ','01012345678','넉살','1974927','Java_Logo1.png'),('qwerty2','12345678','qwerty@naver.com','남','이그린','경기 성남시 분당구 판교역로 지하 160 101동 101호','01012345678','이그린','19851114','database1.png'),('spring','springboot','email@naver.com','남','이름','서울 강남구 가로수길 5 가로수길','01112211921','','','null'),('woohyuk','12341234','sadf@naver.com','여','서우혁','경기 광주시 경안로 3 ㅎㅎ','01022222222','흑흑흑흑서우','','null'),('wwwtt','12345678','wwwtt@naver.com','남','zz','인천 옹진군 백령면 백령로 866-10 111','01023456789','','','null'),('zagreus','12345678','zag@naver.com','남','자그레우스','경기 성남시 분당구 경부고속도로 409 out of tartarus','01012345678','자그레우스','1974627','dream_TradingCard (9).jpg');
/*!40000 ALTER TABLE `member_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_title` varchar(50) NOT NULL,
  `post_content` mediumtext NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'peaky blinders','fokin execute siri','gwangju','2023-05-18 08:23:32'),(2,'moonlight','I need you','mongja','2023-05-31 07:19:50'),(5,'java server page','jsp','mongja','2023-05-31 07:21:57'),(7,'By miller','\"Life is like a dice. You may throw them a hundred times and never once roll a six. Yet each throw is an individual event; statistically independent from the throw before it.\" - A.D. Miller','mongja','2023-05-31 07:22:56'),(9,'The dice of Zeus','\"The dice of Zeus always falls luckily.\" - Sophocles\r\n\r\ngive','mongja','2023-05-31 07:23:51'),(10,'Albert Einstein','\"God does not play dice with the universe.\" - Albert Einstein','mongja','2023-05-31 07:29:37'),(11,'Brian Greene','\"You cannot predict the outcome of a dice toss - in other words, which experimental result you get upon measurement.\" - Brian Greene','mongja','2023-05-31 07:29:50'),(12,'제목','글','mongja','2023-05-31 07:35:29'),(13,'이준열라면 사이트입니다,','라면 사이트입니다.','aaaaaaaa','2023-06-07 07:23:20'),(14,'안돼 인스턴스 중지라니','중지 검지 엄지','aaaaaaaa','2023-06-07 07:23:53'),(15,'서버 복구 되었습니다.','개발자 및 사용자분들은 참고 바랍니다.','aaaaaaaa','2023-06-08 03:34:06'),(16,'관리자가 공지드립니다. 쇼핑몰은 치명적인 버그로인해 당분간은 업데이트진행이어려울예정입니다.','1차 버그 발생 키워드 (허리)','aaaaaaaa','2023-06-08 06:45:24'),(18,' 관리자가 공지드립니다. 쇼핑몰 임시 버그해결로인해 다시 정상 업데이트 진행될예정입니다.','1차 버그 발생 키워드 (허리) -임시 복구 완료-\r\n','aaaaaaaa','2023-06-09 00:27:16'),(19,'관리자가 공지드립니다.','오늘 이후로 게임쇼핑몰은 더이상 업데이트가 없을 예정입니다. (개발자 뽑을 예정 전까지 )\r\n사유: 개발자의 잦은 지각으로인한 해고처리\r\n\r\n','aaaaaaaa','2023-06-13 01:50:41');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer_club`
--

DROP TABLE IF EXISTS `offer_club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offer_club` (
  `club_num` int NOT NULL AUTO_INCREMENT,
  `club_title` varchar(50) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `b_id` varchar(50) NOT NULL,
  `club_place` varchar(200) NOT NULL,
  `club_day` varchar(10) NOT NULL,
  `club_time` varchar(10) NOT NULL,
  `club_intro` varchar(150) NOT NULL,
  `club_detail` text NOT NULL,
  `start_date` varchar(8) NOT NULL,
  `finish_date` varchar(8) NOT NULL,
  `club_reps` int DEFAULT NULL,
  `capacity` int NOT NULL,
  `membership_fee` int NOT NULL,
  `offer_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `approve_date` datetime DEFAULT NULL,
  PRIMARY KEY (`club_num`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer_club`
--

LOCK TABLES `offer_club` WRITE;
/*!40000 ALTER TABLE `offer_club` DISABLE KEYS */;
INSERT INTO `offer_club` VALUES (1,'톰 셸비의 보드게임 여행','shelby','290822,3076,125153','서울특별시 강남구 강남대로96길 16 5층 501호','수,목','18-19','톰 셸비가 직접 안내하는 보드게임 여행은 다양한 보드게임을 즐기며 새로운 사람들과 친구가 될 수 있는 좋은 기회입니다. 각종 이벤트와 대회도 준비되어 있으며,보드게임을 좋아하는 사람이라면 누구나 참여할 수 있습니다.',' \"톰 셸비의 보드게임 여행\"은 대한민국의 보드게임 클럽 중 하나로, 킬리언 머피가 출연한 드라마 \'Peaky Blinders\'를 주제로 한 보드게임 \'Peaky Blinders: Under New Management\'을 함께 즐기는 클럽입니다.','230412','230413',1,6,20000,'2023-04-14 09:53:07',NULL),(4,'장삐쭈 보드게임 클럽','green','5,2,12','서울특별시 강남구 강남대로96길 16 5층 501호','월','11-12','즐거움을 나누는 곳, 장삐쭈의 보드게임 클럽입니다! 함께하는 이들과 함께 새로운 게임을 배우고 즐기며 인간관계를 쌓아나가는, 소중한 추억이 담긴 공간입니다. 여러분도 이곳에서 다양한 게임을 즐기며, 새로운 친구들과 소통하는 즐거움을 느껴보세요!','장삐쭈의 보드게임 클럽은 보드게임을 좋아하는 이들이 모여서 즐길 수 있는 클럽입니다. 이 클럽은 보드게임을 즐기는 모임이며, 보드게임을 통해 새로운 친구를 만들고, 즐겁게 시간을 보낼 수 있는 장소입니다.','230414','230414',1,8,10000,'2023-04-14 10:21:14',NULL),(5,'휠록 보드게임 클럽','wheelock','2,12','서울특별시 중구 명동길 74','화','12-13','안녕하세요! 휠록 보드게임 클럽입니다. 전략적인 요소와 게임 즐거움을 함께 느낄 수 있는 곳이에요. 새로운 게임을 배우고, 친구들을 만나 즐거움을 느껴보세요!','Hic est Ludo Rotae Societas, in qua ludorum amatores congregantur ad ludendum. Societas haec convivium est, ubi nova amicitia et gaudium in lusibus capi possunt.','230415','230415',1,6,2000,'2023-04-14 10:21:14',NULL),(6,'친구와 함께하는 보드게임 클럽','friend','3,2,12','서울특별시 강남구 강남대로96길 16 5층 501호','수','13-14','안녕하세요! 우리는 친구와 함께하는 보드게임 클럽입니다. 새로운 게임을 배우며 즐거움을 느끼고, 새로운 인간관계를 형성할 수 있는 곳이에요. 함께 즐거운 시간을 보내며 소중한 추억을 만들어보세요!','주제는 \"우정과 우정파괴\"입니다.','230416','230416',1,8,85000,'2023-04-14 10:21:14',NULL),(7,'보드게임 플레이어스','player','9,4,12','서울특별시 강남구 강남대로96길 16 5층 501호','목','14-15','안녕하세요! 우리는 보드게임 플레이어스입니다. 전략적인 게임 즐거움을 함께 느낄 수 있는 곳입니다. 새로운 친구를 만나 즐거운 추억을 만들어보세요!','보드게임 플레이어스는 진정한 보드게임을 즐기는 이들이 모여 있는 클럽입니다. 우리는 보드게임을 플레이함에 있어서 예의 바른 매너와 전략적인 플레이를 중요하게 생각합니다.','230417','230417',1,10,6200,'2023-04-14 10:21:14',NULL),(8,'서산 보드게임','seosan','5,7,12','충청남도 서산시 읍내동 관아문길 1','금','15-16','안녕하세요! 우리는 서산보드게임 클럽입니다. 포커와 홀덤 등 다양한 게임을 즐기며 새로운 인연을 만들 수 있는 곳입니다. 함께 즐거운 시간을 보내며 새로운 친구를 만들어보세요!','서산보드게임 클럽은 포커, 홀덤 등의 카드 게임을 즐기는 이들이 모인 클럽입니다. 우리 클럽은 다양한 카드 게임을 즐기며, 포커와 홀덤을 비롯한 다양한 게임들을 다룹니다.','230418','230418',1,9,3200,'2023-04-14 10:21:14',NULL),(9,'다크소울보드게임','darksoul','6,8,12','서울특별시 강남구 강남대로96길 16 5층 501호','토','16-17','다크소울 보드게임 클럽입니다. 다크소울 보드게임을 소개하고 함께 즐기는 공간이에요. 전략적인 게임 플레이와 함께, 세계관에 빠져들어보세요.','다크소울보드게임 클럽은 멤버들이 소유하고 있는 다크소울 보드게임들을 소개하고 함께 플레이하는 게임 클럽입니다. 우리는 서로 다른 다크소울 보드게임을 즐기며, 이를 공유하며 함께 플레이합니다.','230419','230419',1,8,7500,'2023-04-14 10:21:14',NULL),(10,'그래가지고 스낵타운 보드게임','snack','7,6,12','서울특별시 강남구 강남대로96길 16 5층 501호','일','18-19','안녕하세요! 스낵타운 보드게임 클럽입니다. 코미디 유튜버 멤버들의 졸라 웃김 보드게임 클럽이에요. 함께 웃으며 게임을 즐겨봐요!','스낵타운 보드게임은 코미디 유튜버 이재율과 강현석이 운영하는 보드게임 클럽입니다. 이들은 하여튼 졸라 웃김으로 유명하며, 보드게임을 즐기는 이들에게 새로운 재미와 웃음을 선사하고 있습니다.','230420','230420',1,9,4100,'2023-04-14 10:21:14',NULL),(11,'파라독스 보드게임 클럽','paradox','4,8,12','서울특별시 강남구 강남대로96길 16 5층 501호','월','19-20','안녕하세요! 파라독스 스튜디오에서 운영하는 보드게임 클럽입니다. 밀리터리 관련 보드게임을 즐기는 총기덕후들의 모임이에요. 함께 깊이 있는 게임 플레이와 인간관계를 쌓아보세요!','파라독스 스튜디오 보드게임 클럽은 총기덕후들이 모여 밀리터리 관련 보드게임을 즐기는 클럽입니다. 우리는 보드게임을 즐기는 것 뿐만 아니라, 총기와 밀리터리에 대해 잘 알고 있습니다. 이를 통해 다양한 전략을 구사하며 게임을 즐기는 재미와 전술적인 즐거움을 느낄 수 있습니다.','230421','230421',1,8,2500,'2023-04-14 10:21:14',NULL),(12,'속삭이는 보드게임 클럽','mongja','7,8,12','서울특별시 강남구 강남대로96길 16 5층 501호','화','20-21','안녕하세요! 속삭이는 몽자의 팬이 모인 보드게임 클럽입니다. 즐겁고 귀여운 게임들로 소통하며, 몽자 굿즈도 함께 즐길 수 있어요. 함께 소중한 추억을 만들어봐요!','주인공인 강아지 유튜브 채널)의 팬들로 이루어진 클럽입니다. 우리는 속삭이는 몽자의 팬이기 때문에, 몽자를 사랑하는 마음으로 보드게임을 즐기고 있습니다. 또한, 몽자와 관련된 다양한 굿즈들을 보유하고 있어, 모임에서 함께 공유하며 즐길 수 있습니다.','230422','230422',1,9,9800,'2023-04-14 10:21:14',NULL),(13,'브레이킹 배드 보드게임클럽','higenberg','10,11,12','서울특별시 용산구 백범로 329','수','21-22','안녕하세요! 브레이킹 배드 보드게임 클럽입니다. 브레이킹 배드를 소재로 한 게임을 즐기며, 새로운 전략을 경험하고 새로운 인연을 만들어보세요. 함께 멋진 추억을 만들어봅시다!','브레이킹 배드 보드게임 클럽은 인기 드라마 \'브레이킹 배드\'를 주제로 한 보드게임을 즐기는 클럽입니다. 우리 클럽은 브레이킹 배드에 대한 이해도가 높은 클럽원들로 이루어져 있습니다. 이를 바탕으로 게임을 즐기며 브레이킹 배드의 세계에 빠져들 수 있습니다.','230423','230423',1,7,16000,'2023-04-14 10:21:14',NULL),(23,'일리아드 보드게임클럽','achilles','8,2,12','online','월','14-15','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 다양한 보드게임을 즐길 수 있는 모임을 제공하며, 매주 정기적으로 클럽 회원들끼리 모여 게임을 즐기는 모임을 가지고 있습니다. 보드게임을 좋아하는 분이라면 누구든 참여할 수 있으며, 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','230419','230406',2,8,5000,'2023-04-19 17:30:28',NULL),(24,'오디세이아 보드게임 클럽','odyssey','2,12','online','화','16-17','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 다양한 보드게임을 즐길 수 있는 모임을 제공하며, 매주 정기적으로 클럽 회원들끼리 모여 게임을 즐기는 모임을 가지고 있습니다. 보드게임을 좋아하는 분이라면 누구든 참여할 수 있으며, 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','230420','230421',5,3,8000,'2023-04-19 17:30:28',NULL),(25,'짜라투스트라 보드게임 클럽','nitche','3,5,12','경기도 안산시 상록구 충장로 56','수','18-19','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','Ludorum Circulus est conventus hominum qui tabulas lusorias amant et una ludunt. Diversae tabulae lusoriae luduntur et conventus membra singulis septimanis consociantur, ut in communitate ludant. Omnes ludis ludentes admittuntur, novas ludos discunt et amicitias creant. Cum Ludorum Circulo communi consuetudine ludendi incoepi!','230421','230422',7,8,7000,'2023-04-19 17:30:28',NULL),(26,'황소자리보드게임클럽','cancer','6,12','경기도 오산시 청학로147번길 33','목','20-21','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','Ludorum Circulus est conventus hominum qui tabulas lusorias amant et una ludunt. Diversae tabulae lusoriae luduntur et conventus membra singulis septimanis consociantur, ut in communitate ludant. Omnes ludis ludentes admittuntur, novas ludos discunt et amicitias creant. Cum Ludorum Circulo communi consuetudine ludendi incoepi!','230422','230424',4,9,12000,'2023-04-19 17:30:28',NULL),(27,'전갈자리보드게임클럽','scorpion','7,8,12','충청북도 청주시 서원구 충대로 1','금','17-18','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','Ludorum Circulus est conventus hominum qui tabulas lusorias amant et una ludunt. Diversae tabulae lusoriae luduntur et conventus membra singulis septimanis consociantur, ut in communitate ludant. Omnes ludis ludentes admittuntur, novas ludos discunt et amicitias creant. Cum Ludorum Circulo communi consuetudine ludendi incoepi!','230423','230424',1,7,14000,'2023-04-19 17:30:28',NULL),(28,'물병자리보드게임클럽','aquarius','8,2,12','충청북도 청주시 서원구 충대로 1','토','14-15','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','Ludorum Circulus est conventus hominum qui tabulas lusorias amant et una ludunt. Diversae tabulae lusoriae luduntur et conventus membra singulis septimanis consociantur, ut in communitate ludant. Omnes ludis ludentes admittuntur, novas ludos discunt et amicitias creant. Cum Ludorum Circulo communi consuetudine ludendi incoepi!','230424','230425',3,5,15000,'2023-04-19 17:30:28',NULL),(29,'황소자리보드게임클럽','vulkan','9,6,12','서울특별시 서초구 서초대로73길 24','일','11-12','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','Ludorum Circulus est conventus hominum qui tabulas lusorias amant et una ludunt. Diversae tabulae lusoriae luduntur et conventus membra singulis septimanis consociantur, ut in communitate ludant. Omnes ludis ludentes admittuntur, novas ludos discunt et amicitias creant. Cum Ludorum Circulo communi consuetudine ludendi incoepi!','230425','230426',5,4,16000,'2023-04-19 17:30:28',NULL),(30,'백양자리보드게임클럽','iason','2,3,12','서울특별시 서초구 강남대로 465','수','10-11','일리아드 보드게임 클럽은 보드게임을 즐기는 이들이 모여 함께 게임을 즐길 수 있는 모임입니다. 새로운 보드게임을 배우고, 다양한 사람들과 친목을 다질 수 있는 공간을 제공합니다. 함께 즐거운 보드게임 클럽 생활을 시작해보세요!','Ludorum Circulus est conventus hominum qui tabulas lusorias amant et una ludunt. Diversae tabulae lusoriae luduntur et conventus membra singulis septimanis consociantur, ut in communitate ludant. Omnes ludis ludentes admittuntur, novas ludos discunt et amicitias creant. Cum Ludorum Circulo communi consuetudine ludendi incoepi!','230426','230427',2,15,22000,'2023-04-19 17:30:28',NULL);
/*!40000 ALTER TABLE `offer_club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_num` varchar(6) NOT NULL,
  `product_pub` varchar(255) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_summary` varchar(255) NOT NULL,
  `product_price` int NOT NULL,
  `product_lang` varchar(100) NOT NULL,
  `product_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `p_designer` varchar(255) DEFAULT NULL,
  `p_year` varchar(6) NOT NULL,
  `p_theme` varchar(255) DEFAULT NULL,
  `p_proceed` varchar(255) DEFAULT NULL,
  `product_img` text NOT NULL,
  `p_num` varchar(6) DEFAULT NULL,
  `p_age` varchar(6) DEFAULT NULL,
  `p_runtime` varchar(6) DEFAULT NULL,
  `p_level` varchar(6) DEFAULT NULL,
  `product_detail` text NOT NULL,
  PRIMARY KEY (`product_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('000001','999 Games','엘 그란데 빅 박스','영향력 게임의 원조, 왕이 돌아왔다!',99000,'한국어','2023-04-18 08:39:10','Wolfgang Kramer','2015','르네상스','핸드 관리, 지역 최다 / 영향력, 카드 드래프팅','prod_El_Grande_Big_Box.jpg','2-5명','12+','90분','2.80','prodd_El_Grande_Big_Box.jpg'),('000002','Intrafin Games','테라포밍 마스','아직.. 화성이 있습니다.',79000,'한국어','2023-04-18 08:42:55','Jacob Fryxelius','2016','SF 공상 과학','핸드 관리, 플레이어별 특수능력, 셋 컬렉션','prod_Terraforming_Mars.jpg','1-5명','12+','120분','3.26','prodd_Terraforming_Mars.jpg'),('000003','ADC Blackfire Entertainment','7 원더스: 대결','2인용 문명 건설 게임의 최고봉',49000,'한국어','2023-04-18 08:42:55','Antoine Bauza','2015','문명','셋 컬렉션, 카드 드래프팅, 레이어링','prod_7Wonders_Duel.jpg','2명','10+','30분','2.22','prodd_7Wonders_Duel.jpg'),('000004','999 Games','카탄','유로 보드 게임 이라는 장르의 존재를 세계인에게 각인시킨 역사적인 작품.',59000,'한국어','2023-04-18 08:44:43','Klaus Teuber','1995','협상','주사위 굴림, 셋 컬렉션, 조립 보드','prod_The_Settlers_of_Catan.png','3-4명','10+','60분','2.30','prodd_The_Settlers_of_Catan.jpg'),('000005','Runadrake','티켓 투 라이드: 유럽','기차를 타고 북미 대륙을 여행하세요!',59000,'한국어','2023-04-18 08:46:18','Alan R. Moon','2005','기차','핸드관리, 셋 컬렉션, 타일 놓기','prod_Ticket_to_Ride.jpg','2-5명','8+','30분','1.92','prodd_Ticket_to_Ride.jpg'),('000006','Broadway Toys LTD','센추리: 향신료의 길','금보다 귀한 향신료를 찾아 동방으로 여행하는 대상을 이끄는 상인이 되어 보자!',52000,'한국어','2023-04-18 08:48:00','Emerson Matsuuchi','2017','중세','핸드 관리, 셋 컬렉션, 덱/백/풀 빌딩','prod_Century_Spice_Road.jpg','2-5명','8+','30분','1.79','prodd_Century_Spice_Road.png'),('000007','Mandoo Games','사그라다','화려한 스테인드글라스를 창조해보세요!',55000,'한국어','2023-04-18 08:49:41','Daryl Andrews','2017','퍼즐','주사위 굴림, 셋 컬렉션, 솔로/솔로테어 게임','prod_Sagrada.jpg','1-4명','14+','30분','1.92','prodd_Sagrada.jpg'),('000008','Brain Games','팬데믹 한글판','당신은 인류를 구할 수 있습니까?',66000,'한국어','2023-04-18 08:59:38','Matt Leacock','2008','의학','핸드 관리, 플레이어별 특수능력, 셋 컬렉션','prod_Pandemic.jpg','2-4명','8+','45분','2.40','prodd_Pandemic.jpg'),('000009','ADC Blackfire Entertainment','스플렌더: 찬란한도시','최고의 보석상이 되어보세요!',49000,'한국어','2023-04-18 09:01:06','Marc André','2017','르네상스','셋 컬렉션, 카드 드래프팅','prod_Cities_of_Splendor.jpg','2-4명','10+','30분','2.17','prodd_Cities_of_Splendor.jpg'),('000010','999 Games','EXIT 방 탈출 게임: 파라오의 무덤','이집트의 고대 유적, 숨겨진 비밀 묘실에서 탈출하세요!',25000,'한국어','2023-04-18 09:02:15','Inka Brand','2016','퍼즐','협력 게임','prod_The_Pharaoh\'s_Tomb.jpg','1-6명','12+','45분','2.78','prodd_The_Pharaoh\'s_Tomb.jpg'),('000011','999 Games','타르기','숨 막히는 수 싸움의 세계로!',28000,'한국어','2023-04-18 09:03:29','Andreas Steiger','2012','카드 게임','셋 컬렉션, 조립 보드, 일꾼 놓기','prod_Targi.jpg','2명','12+','60분','2.34','prodd_Targi.jpg'),('000012','999 Games','화이트채플에서 온 편지','역사상 악명 높은 연쇄 살인 사건을 재현한 게임!',62000,'한국어','2023-04-18 09:04:43','Gabriele Mari','2011','살인/미스터리','팀 기반 게임, 포인트 이동, 기억력','prod_Letters_from_Whitechapel.jpg','2-6명','13+','90분','2.65','prodd_Letters_from_Whitechapel.jpg'),('000013','GameWorks SàRL','자이푸르','인도 자이푸르 최고의 대상인이 되어라',30000,'한국어','2023-04-18 09:07:03','Sébastien Pauchon','2009','동물','핸드 관리, 셋 컬렉션, 카드 드래프팅','prod_Jaipur.jpg','2명','12+','30분','1.47','prodd_Jaipur.jpg'),('000014','Z-Man Games','우봉고','퍼즐을 빠르게 풀고, 다 풀었다면 외치세요! 우봉고!',56000,'한국어','2023-04-18 09:09:34','Grzegorz Rejchtman','2003','퍼즐','셋 컬렉션, 패턴 빌딩, 그리드 범위','prod_Ubongo.jpg','1-4명','8+','25분','1.00','prodd_Ubongo.jpg'),('000015','Plaid Hat Games','데드 오브 윈터：크로스로드 게임','혹한 속에서 힙을 합친 생존자들… 허나, 서로를 믿을수 있는가?',69000,'한국어','2023-04-18 09:09:34','Isaac Vega','2014','좀비','핸드 관리, 플레이어별 특수능력, 협력 게임','prod_Dead_of_Winter_A Crossroads_Game.jpg','2-5명','13+','60분','3.02','prodd_Dead_of_Winter_A Crossroads_Game.jpg'),('000016',' Brio AB','만칼라','북아프리카와 고대 이집트의 지혜를 배워보자!',52000,'한국어','2023-04-18 09:10:58','William Julius Champion Jr.','700','추상전략','만칼라','prod_Mancala.jpg','2명','5+','10분','1.61','prodd_Mancala.jpg'),('000017','Paul Lamond Games Ltd','벤도미노','하나의 전략과 두 개의 재미!',37500,'한국어, 영어','2023-04-18 09:12:22','Thierry Denoual','2007','추상전략','타일 놓기, 패턴 빌딩, 패턴 인식','prod_Bendomino.jpg','2-4명','6+','10분','1.72','prodd_Bendomino.jpg'),('000018','CMON Limited','레일로드 잉크: 딥 블루 에디션','주사위로 만드는 나만의 도시',26000,'한국어','2023-04-18 09:13:38','Hjalmar Hach','2018','기차','주사위 굴림, 네트어크 및 경로 구축, 종이와 펜','prod_Railroad_Ink_Deep_Blue_Edition.jpg','1-6명','8+','20분','1.47','prodd_Railroad_Ink_Deep_Blue_Edition.jpg'),('000019','alea','와이어트 어프','보안관들의 현상금 사냥! 곧 석양이 진다…',30000,'한국어','2023-04-18 09:14:56','Mike Fitzgerald','2014','카드 게임','핸드 관리, 셋 컬렉션, 카드 드래프팅','prod_Wyatt_Earp.jpg','2-4명','8+','30분','1.84','prodd_Wyatt_Earp.jpg'),('000020','Drei Hasen in der Abendsonne','챠오챠오','남을 속이지 못하면, 낭떠러지로 안녕…',24000,'한국어','2023-04-18 09:16:22','Alex Randolph','1997','주사위','주사위 굴름, 배팅과 블러핑','prod_Ciao_Ciao.jpg','2-4명','10+','30분','1.07','prodd_Ciao_Ciao.jpg'),('000021','999 Games','할리갈리','같은 과일이 5개 모이면, 종을 쳐라!',19000,'한국어','2023-04-18 09:17:46','Haim Shafir','2003','실시간','플레이어 제거, 패턴 인식','prod_Halli_Galli.jpg','2-6명','6+','10분','1.02','prodd_Halli_Galli.jpg'),('000022','Dagoy','렉시오 오리지널 블랙','누구와 플레이해도 재미있는 게임!',63000,'한국어','2023-04-18 09:27:03','Thomas H. Jung','2005','핸드 관리','사다리 타기','prod_Lexio.jpg','3-5명','8+','20분','1.91','prodd_Lexio.jpg'),('000023','Broadway Toys LTD','레지스탕스: 아발론 한글판','악이 스스로를 드러냈고, 대마법사 멀린이 미래를 보았다.',22000,'한국어','2023-04-18 09:28:54','Don Eskridge','2012','판타지','동시 액션 선택, 팀 기반 게임, 투표','prod_The_Resistance_Avalon.jpg','5-10명','13+','30분','1.75','prodd_The_Resistance_Avalon.jpg'),('000024','Broadway Toys LTD','아브라카 왓?','난 마법의 지배자야!',33000,'한국어','2023-04-18 09:30:45','Gary Kim','2014','추론','운걸기, 기억력, 비대칭 정보가 있는 역할','prod_Abraca_what.jpg','2-5명','7+','30분','1.65','prodd_Abraca_what.jpg'),('000025','Z-Man Games','아키올로지 :사막의 폭풍','모래 폭풍을 피해서 보물을 모으자!',22000,'한국어','2023-04-18 09:33:27','Phil Walker-Harding','2016','카드 게임','셋 컬렉션, 오픈 드래프팅, 운걸기','prod_Archaeology_The_New_Expedition.jpg','2-5명','10+','20분','1.30','prodd_Archaeology_The_New_Expedition.jpg'),('000026','Schmidt Spiele','아임 더 보스','이 구역의 보스는 나야',49000,'한국어','2023-04-18 09:37:56','Sid Sackson','1994','협상','핸드 관리, 주사위 굴림, 셋 컬렉션','prod_I\'m_the_Boss.jpg','3-6명','12+','60분','1.97','prodd_I\'m_the_Boss.jpg'),('000027','Broadway Toys LTD','광합성','광합성을 위한 나무들의 아름다운 경쟁이 시작됩니다.',48000,'한국어','2023-04-18 09:39:44','Hjalmar Hach','2017','경제','지역 최다 / 영향력, 액션 포인트, 육각형 그리드','prod_Photosynthesis.jpg','2-4명','10+','30분','2.26','prodd_Photosynthesis.jpg'),('000028','Mancalamaro','데드 맨스 드로우','최고의 해적은 누구?',22000,'한국어','2023-04-18 09:43:09','작자 미상','2014','해적','플레이어별 특수능력, 셋 컬렉션, 운걸기','prod_Dead_Man\'s_Draw.jpg','2-4명','13+','10분','1.33','prodd_Dead_Man\'s_Draw.jpg'),('000029','Pandasaurus Games','미니빌','주사위로 만드는 마을!',28000,'한국어','2023-04-18 09:45:02','Masao Suganuma','2012','도시 건설','주사위 굴림, 무작위 생산','prod_Minivilles.jpg','2-4명','10+','30분','1.53','prodd_Minivilles.jpg'),('000030','Brohm-Parker-Spiele','클루','다른 사람의 반응을 읽어 최고의 명탐정이 되자',41000,'한국어','2023-04-18 09:46:20','Anthony E. Pratt','2012','영화/TV/라디오 테마','주사위 굴림, 그리드 이동, 기억력','prod_Clue.jpg','2-6명','8+','45분','1.65','prodd_Clue.jpg'),('000031','Schwerkraft-Verlag','클랭크','잠자는 드래곤의 둥지에서 보물을 훔쳐라!',45000,'한국어','2023-04-18 09:59:02','Paul Dennen','2016','판타지','덱/백/풀 빌딩, 오픈 드래프팅, 운걸기','prod_Clank!_A_Deck_Building_Adventure.jpg','2-4명','12+','30분','2.22','prodd_Clank!_A_Deck_Building_Adventure.jpg'),('000032','Hasbro Gaming','모노폴리 80주년','80주년 동안 가장 많은 사람들에게 사랑받은 바로 그 게임',39000,'한국어','2023-04-18 10:13:42','작자 미상','2015','도시 건설','주사위 굴림, 셋 컬렉션, 경매/입찰','prod_Monopoly_80th_Anniversary_Edition.jpg','2-8명','8+','100분','1.50','prodd_Monopoly_80th_Anniversary_Edition.jpg'),('000033','Genius Games','주기율표 원소 보드게임','주기율표 쉽게 외우는',66000,'한국어','2023-04-18 10:15:20','John Coveyou','2019','교육','셋 컬렉션, 액션 포인트, 그리드 이동','prod_Periodic_A_Game_of_The_Elements.jpg','2-5명','10+','40분','1.94','prodd_Periodic_A_Game_of_The_Elements.jpg'),('000034','Mandala Jogos','와골와골 발굴단','발굴한 뼈를 조립해 나만의 공룡을 만드세요!',28000,'한국어','2023-04-18 10:16:42','Charles Chevallier','2020','동물','셋 컬렉션','prod_My_Funny_Dinos.jpg','2-4명','7+','20분','1.00','prodd_My_Funny_Dinos.jpg'),('000035','Happy Baobab','비버 타워','귀여운 비버들의 <타워 쌓기 대회>가 열렸어요!',28000,'한국어','2023-04-18 10:18:32','Yves Renou','2021','실시간','패턴 인식','prod_BeaverTower.jpg','2-4명','7+','20분','1.00','prodd_BeaverTower.jpg'),('000036','Eagle-Gryphon Games','포세일','경매게임의 스테디셀러',29000,'한국어','2023-04-18 10:20:13','Stefan Dorra','1997','카드 게임','핸드 관리, 동시 액션 선택, 경매/입찰','prod_For_Sale.jpg','3-6명','10+','30분','1.26','prodd_For_Sale.jpg'),('000037','Mandoo Games','꼬치의 달인','여기, 새우 치즈말이 꼬치 하나요!',35000,'한국어','2023-04-18 10:21:40','Yohan Goh','2019','실시간','패턴 빌딩','prod_Kushi_Express.jpg','2-4명','6+','20분','1.00','prodd_Kushi_Express.jpg'),('000038','Zhiyanjia','아이스 앤 더 스카이','온난화의 위기에 빠진 지구의 운명을 바꿔보자!',20000,'한국어','2023-04-18 10:29:48','Florent Toscano','2015','소설 기반','협력 게임','prod_La_Glace_et_le_Ciel.jpg','2-4명','10+','20분','1.67','prodd_La_Glace_et_le_Ciel.jpg'),('000039','Padgett Bros','텀블링몽키','원숭이도 나무에서 떨어질 때가 있다?',35000,'한국어','2023-04-18 10:31:34','Craig V. McKee','1999','행동 / 재주','주사위 굴림, 물리적 제거','prod_Tumblin_Monkeys.jpg','2-4명','5+','15분','1.00','prodd_Tumblin_Monkeys.jpg'),('000040','Gemblo, Inc.','젬블로','육각형 블록들로 벌이는 치열한 영역 다툼!',43000,'한국어','2023-04-18 10:32:42','Justin Oh','2005','추상전략','핸드 관리, 타일 놓기, 육각형 그리드','prod_Gemblo.jpg','2-6명','6+','30분','1.85','prodd_Gemblo.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_trade`
--

DROP TABLE IF EXISTS `user_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_trade` (
  `trpost_num` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tr_title` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tr_category` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tr_date` date NOT NULL,
  `tr_price` int NOT NULL,
  `tr_content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`trpost_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_trade`
--

LOCK TABLES `user_trade` WRITE;
/*!40000 ALTER TABLE `user_trade` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_trade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-02  7:49:45
