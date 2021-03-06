-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: faithwraps
-- ------------------------------------------------------
-- Server version	5.6.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `address_2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_addresses`
--

LOCK TABLES `billing_addresses` WRITE;
/*!40000 ALTER TABLE `billing_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_style_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Holds all the items in a users cart. Once a purchase is made, the cart will be emptied and the items will be moved to orders.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galleries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `desc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Traditional FaithWraps','The traditional FaithWrap is the original concept design by Faith Benoit. These wraps cover a wide variety of styles. If you\'re new to the site, start here and browse the different attributes of each gem. Pair them with your favorite ribbon to create the perfect FaithWrap combination for you.'),(2,'Limited Edition FaithWraps','The limited edition FaithWrap is a special collection designed from gems that are hard to find. Each new gem has a unique quality; whether it\'s for style or a new energy, there\'s one perfect for you. Check back often for new editions because once they\'re sold out, they\'re unlikely to return.'),(4,'Affirmations in a Bottle','Affirmations in a Bottle is the newest design to come to FaithWraps. It\'s not just a fashion statement - These bottles combine gems and powerful mantras to affirm the qualities within that we sometimes need to be reminded of. '),(3,'Leather & Feather','The Leather & Feather collection combine our favorite gems with rare feathers to create unique headbands, cuffs and earrings.');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gems`
--

DROP TABLE IF EXISTS `gems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `desc` text NOT NULL,
  `colors` text NOT NULL,
  `energies` text NOT NULL,
  `chakras` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gems`
--

LOCK TABLES `gems` WRITE;
/*!40000 ALTER TABLE `gems` DISABLE KEYS */;
INSERT INTO `gems` VALUES (1,'Malachite','This ancient gem was used by Egyptians, Greeks, and Romans for jewelry and grounded to use as eye shadow. Malachite is the stone of transformation, assisting it\\\'s wearer with changing situations. During these transformations, it helps to clarify ones emotions and release negative experiences. It can serve as a mirror, allowing the self to understand the process and our greater good more clearly. Having malachite in a period of change can be extremely insightful and comforting, reminding us that we are never alone, and change is always for our greatest good and highest intention. The rich green color is also great for the healing process. ','Emerald Green','Change, Clarity','Heart'),(2,'Lapis Lazuli','Lapis lazuli is an ancient gem that was valued more highly than gold in early cultures. The Egyptians thought the stone was a symbol of truth. It was also buried with their dead as it was said to offer protection. Lapis lazuli is a deep blue stone with beautiful pieces of golden pyrite.  The stone is a powerful meditation tool which can bring great insight and clarity, helping the wearer to see things more clearly.                                                                                                                                                                    Lapis lazuli helps one to expand awareness and intellectual capacity. It assists in attuning to the divine self and increases one\\\'s consciousness and intuition. The stone can help one to become a channel and turn deep within.                                       The stone serves as a great asset for clarity, inner communication, as well as harmonious relationships  ','Royal Blue with gold specks of pyrite','Clarity, Inner Communication, Harmony, Intuition','Third Eye and Throat'),(3,'Rhodonite','Rhodonite is referred to as the \\&quot;Stone of Love.\\&quot; It activates and energizes the heart chakra and helps to resonate unconditional love.                                              Rhodonite clears anxiety from the heart and increases self worth. It opens the heart to opportunities and receiving love. The stone has been known to help its wearer achieve his or her greatest potential.                                                                                                                                                                                                                          We all could use a little more love in our lives and whether it is romantic love or self love, rhodonite can serve as a great companionÂ¸','Pink with black streaks','Unconditional Love, Self Worth, and Emotional Healing   ','Heart'),(4,'Tiger\'s Eye','Tiger\\\'s Eye is a great tool to assist in determination and abundance. It serves individuals seeking mental clarity. It contains sharpness and grounding energy and helps bring light in situations where one must be practical. Tiger\'s Eye generates calmness and helps one enhance their optimism. The stone aids in stimulating wealth and enhances the stability to maintain it.','Gold and Brown','Determination, Grounding, Focus, Mental Clarity, Optimism, Abundance  ','Solar Plexus'),(5,'Onyx','Onyx is a powerful stone for anyone who feels overwhelmed or stressed. The stone is a valuable tool when dealing with difficult times, detachment, or letting go. Onyx is a protective stone and also repels negative energy directed towards you. It centers and grounds the self. The stone enhances self control and wise decision making         ','Black','Grounding, Protection, Healing','Root'),(6,'Carnelian','Carnelian has a long storied past, and was once considered strictly the property of the noble class. People holding a high social status were often buried with this gem stone. It was a stone of honor comparable to the diamond and emerald. Carnelian increases physical energy and personal power. The stone helps the self to be proactive and find what gives the self a sense of meaning. It reminds of us of our passions and helps to embrace our creative self. Carnelian also protects against anger, fear, envy, rage, and sorrow.   ','Red','Creativity, Energy, Passion','Sacral'),(7,'Blue Lace Agate','Blue lace agate is a calming uplifting stone. It stimulates the throat chakra and encourages communication, peace, and serenity. Blue lace agate is considered a stone of communication. It can ease the harsh edge off communication in difficult times, enhance public speaking, and smooth discussions. It\\\'s a great stone for anyone dealing with harsh anxiety or stress. It serves as a reminder to relax and let go of the stressors of the day.','Bands of blue and white','Serenity, Healing, Communication, Peace      ','Throat'),(8,'Rose Quartz','Rose Quartz is the stone of self love. It emits a cool calming energy.  The stone gently removes negativity and replaces it with self worth. It helps to open the heart center and heal emotional wounds and stress. Rose Quartz serves as a reminder to love ourselves and appreciate all of our beautiful qualities.      \r\n','Soft Pink','Self love and Emotional Healing  ','Heart'),(9,'Aventurine','The name aventurine is said to have derived its name from the Italian word â€˜a venturaâ€™ which means by chance. Aventurine is thought to be a talisman of luck and abundance. It\\\'s a great stone for someone who is looking to find prosperity, wealth, and courage. It reinforces decisiveness and amplifies one\\\'s leadership qualities. Aventurine activates and clears the heart chakra. ','Pastel Green','Luck, Wealth, Abundance, Leadership','Heart'),(10,'Goldstone','Goldstone is said to be a Master Healer, assisting in staying calm and stabilizing emotions.  It\\\'s a great mood lifter for anyone who needs some positive energy. Goldstone is also used for protection as it reflects negative energy. This is technically a man-made stone but has healing properties, as it is created from copper. Copper is also thought to be extremely helpful in increasing blood flow and reducing inflammation.','Copper','Positive Energy, Healing, Protection','Root and Sacral'),(11,'Labradorite','Labradorite is a stunning gem, with it\\\'s flash of colors, depending on the angle viewed. It\\\'s known to be a powerful tool for receiving prophetic dreams and guidance. This gorgeous stone can increase intuition and help to understand present situations more clearly. Labradorite can help it\\\'s wearer relax and easily achieve a deep state of meditation. ','Green with shimmering flashes of purple, blue and yellow ','Prophetic Dreaming, Meditation, Intuition, Healing  ','Third Eye'),(12,'Flower Sugilite','Flower sugilite, a variety of lepidolite, is said to assist in the forgiveness process. The stone promotes openness and honesty. The stone rids the self of headaches, negativity, and jealousy. Flower sugilite is a natural relaxer and promotes a restful sleep. It\\\'s a great stone for insomniacs or those who have frequent nightmares.','Lilac','Peace, Relaxation, Forgiveness','Crown and Heart'),(13,'African Turquoise','African Turquoise, a type of spotted Jasper found in Africa, is said to be one of the best protection stones. The stone is especially great for traveler\\\'s or those who could use a boost of courage. It\\\'s a peaceful stone with a calm and relaxing energy. It helps the wearer to achieve a state of wholeness. African Turquoise is also said to attract prosperity and success.','Blue with black spots','Protection, Prosperity, Relaxation, Courage ','Throat'),(14,'Snow Quartz','Bring out your inner child with Snow Quartz! Snow Quartz is said to increase positivity and help us relearn the word \\&quot;wonderful.\\&quot; Quartz is a power stone and known to be the master healer. Snow quartz is also great for mental clarity. It\\\'s a calming stone that\\\'s the perfect tool for meditation and insight.','White ','Healing, Positivity, Innocence, Mental Clarity, Calming, Meditation','Crown'),(15,'Paua Shell','Although not a gemstone, the paua shell is said to have healing properties. The paua shell stimulates imagination and intuition. It\\\'s used as  a calming tool and is great to have during emotional situations. It\\\'s worn to balance one\\\'s mood throughout the day. The paua shell is also used for harmonizing relationships and connecting family.','Ocean Blue','Intuition, Imagination, Calming, Emotional Stability','Solar Plexus, Heart, Third Eye'),(16,'Poppy Jasper','Poppy Jasper is a feel good stone, known to bring relaxation and joy to its wearer. The stone helps to achieve a state of tranquility and wholeness. It\\\'s said to bring happiness and positivity. Poppy Jasper is great for enhancing organization abilities. It\\\'s a protection stone that also has a beautiful soft grounding energy. ','Red','Relaxation, Protection, Prosperity','Root'),(17,'Sodalite','Sodalite is the stone of self expression and perfect for writers. The stone helps to calm the mind, clear fears, and instill confidence. It eases communication and causes artistic expression to flow. Sodalite is a great tool for meditation and accessing deep thought.','Purple-blue with white','Clarity, Inner Communication, Harmony, Intuition','Throat'),(18,'Blue Laguna Agate','Laguna agate is said create stability, balance, and strength. The stone increases consciousness and spiritual growth. Laguna agate eases depression and helps the wearer find inner happiness. The stone is thought to stimulate brain activity and improve memory and concentration. Laguna agate is also used for protection. The color of this stone may have been enhanced.','Blue, grey, and black','Inner Happiness, Stability, Strength, Memory','Root'),(19,'Rhodocrosite','Rhodochrosite \\&quot;the stone of love and balance\\&quot; is said to attract love and deepend already existing love. It\\\'s an uplifting stone and a mood booster. Rhodochrosite has a strong loving energy, which makes it difficult to feel negativity. It calms the emotions and rids anxiety and loneliness. The stone enhances self worth, lifts depression, and soothes emotional stress and fear. Rhodocrosite is also though to stimulate creativity, innovation, and dream states.','Pink with white streaks','Love, Balance, Mood Booster, Self Worth, Soothing, Creativity','Heart'),(20,'Copper Turquoise','Turquoise is considered one of the oldest stones used for protection by the ancients. It was also thought to be a symbol of wealth and courage. The copper infused with the turquoise is said to increase and amplify the properties of the turquoise. The stone carries great wisdom and truth for it\\\'s wearer. Turquoise stabilizes one\\\'s mood and is also great for preventing depression and panic attacks. The stone protects the wearer from negativity and promotes self-realization and communication.','Turquoise, Green, and Copper','Protection, Love, Healing, Wisdom, Communication','Throat and Heart'),(21,'Abalone Shell','Although not a gemstone, the abalone shell is said to have healing properties. The abalone shell stimulates imagination and intuition. It\\\'s used as a calming tool and is great to have during emotional situations. It\\\'s worn to balance one\\\'s mood throughout the day. The abalone shell is also used for harmonizing relationships and connecting family.','Iridescent silver, blue, and green','Intuition, Imagination, Calming, Emotional Stability','Solar Plexus, Heart, Third Eye'),(22,'Turquoise','Bring some noble wisdom into your life with The Ancients\\\' Wrap. Whether you seek courage, communication, or self-realization, the stone serves as a beautiful companion. Turquoise grows closer to it\\\'s wearer with age. This timeless turquoise gem is sure to enrich your wardrobe and sense of style. Wear it with our hand-dyed Rainforest ribbon to bring out its stunning color.','Turquoise and Green','Protection, Love, Healing, Wisdom, Communication','Throat and Heart'),(23,'Drusy Quartz','Druzy Quartz is a beautiful and powerful piece. It softly amplifies energy and encourages growth, positive patterns, and spiritual protection. The stone increases positivity and eliminates stress, as it clears negative thoughts and emotions. Drusy Quartz is perfect for meditation and spiritual healing. The gem is also used in Feng Shui to bring life in lifeless corners. ','Crystal','Positivity, Meditation, Balance, Eliminates stress and negativity','Crown'),(24,'Rainbow Moonstone','Moonstone is the stone of motherhood and goddess energy. It is said to heal feminine health issues and protect the health of pregnant women. This beautiful gem reduces stress and treats female hormone imbalance and headaches. Rainbow Moonstone is also said to increase intuition, wisdom, and harmony.\r\n','White with a flash of the rainbow','Uplifting, Stress relief, Intuition, Wisdom, Peace','Crown'),(25,'Amethyst','Amethyst is a beautiful spiritual stone, perfect for meditation and its calming affects. It works to provide the wearer with intuition, balance, peace, patience, and serenity. The stone brings inner strength and emotional stability. Amethyst is a great tool for anyone dealing with grief or loss. The stone is also used for bringing pleasant dreams and understanding them.','Purple','Intuition, Balance, Serenity, Inner Strength, Emotional Stability, Lucid Dreaming','Crown and Third Eye'),(26,'Black Tourmaline','Black tourmaline is a very powerful stone. It is said to protect the wearer from all negativity. Black tourmaline is excellent for grounding the self and dispelling fear. It goes one step further to also balance the body and support the nervous system. Black tourmaline is a great companion which helps it\\\'s wearer get to the place they need to be. The stone is also said to bring good luck and happiness.','Black','Protection, Strength, Grounding,  Positivity   ','Root'),(27,'Kyanite','Kyanite is the stone of all forms of communication. It is said to serve as powerful tool for the manifestation of hopes and dreams. The gem calms the mind, and helps the wear to let go of anxiety and confusion. Kyanite is one of the best stones to use in your daily practice.','Blue','Communication, Intuition, Manifestation, Medication, Stress Relief ','Throat'),(28,'Peridot','The joyful energy of peridot is said to be great for making friends and strengthening bonds. It increases patience and confidence. The stone releases stress, anger, and guilt from the heart. The gem is said to be a visionary stone and good for helping the wearer understand her purpose. Peridot is also a stone of prosperity.','Green, Yellow','Protection, Balance, Traumatic Healing, Recovery, Romance','Heart, Solar Plexus'),(29,'Aventurine','The name aventurine is said to have derived its name from the Italian word â€˜a venturaâ€™ which means by chance. Aventurine is thought to be a talisman of luck and abundance. It\'s a great stone for someone who is looking to find prosperity, wealth, and courage. It reinforces decisiveness and amplifies one\'s leadership qualities. Aventurine activates and clears the heart chakra.','Green','Luck, Wealth, Abundance, Leadership','Heart'),(30,'Peridot','The joyful energy of peridot is said to be great for making friends and strengthening bonds. It increases patience and confidence. The stone releases stress, anger, and guilt from the heart. The gem is said to be a visionary stone and good for helping the wearer understand her purpose. Peridot is also a stone of prosperity.','Green, Yellow','Protection, Balance, Traumatic Healing, Recovery, Romance','Heart, Solar Plexus'),(31,'Tiger\'s Eye','Tiger\'s Eye is a great tool to assist in determination and abundance. It serves individuals seeking mental clarity. It contains sharpness and grounding energy and helps bring light in situations where one must be practical. Tiger\'s Eye generates calmness and helps one enhance their optimism. The stone aids in stimulating wealth and enhances the stability to maintain it.','Gold and Brown','Determination, Grounding, Focus, Mental Clarity, Optimism, Abundance','Solar Plexus'),(32,'Aventurine','The name aventurine is said to have derived its name from the Italian word â€˜a venturaâ€™ which means by chance. Aventurine is thought to be a talisman of luck and abundance. It\'s a great stone for someone who is looking to find prosperity, wealth, and courage. It reinforces decisiveness and amplifies one\'s leadership qualities. Aventurine activates and clears the heart chakra.','Green','Luck, Wealth, Abundance, Leadership','Heart'),(33,'Peridot','The joyful energy of peridot is said to be great for making friends and strengthening bonds. It increases patience and confidence. The stone releases stress, anger, and guilt from the heart. The gem is said to be a visionary stone and good for helping the wearer understand her purpose. Peridot is also a stone of prosperity.','Green, Yellow','Protection, Balance, Traumatic Healing, Recovery, Romance','Heart, Solar Plexus'),(34,'Tiger\'s Eye','Tiger\'s Eye is a great tool to assist in determination and abundance. It serves individuals seeking mental clarity. It contains sharpness and grounding energy and helps bring light in situations where one must be practical. Tiger\'s Eye generates calmness and helps one enhance their optimism. The stone aids in stimulating wealth and enhances the stability to maintain it.','Gold and Brown','Determination, Grounding, Focus, Mental Clarity, Optimism, Abundance','Solar Plexus');
/*!40000 ALTER TABLE `gems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mailing_addresses`
--

DROP TABLE IF EXISTS `mailing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailing_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `address_2` varchar(50) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(15) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mailing_addresses`
--

LOCK TABLES `mailing_addresses` WRITE;
/*!40000 ALTER TABLE `mailing_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `mailing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_types`
--

DROP TABLE IF EXISTS `oauth_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_types`
--

LOCK TABLES `oauth_types` WRITE;
/*!40000 ALTER TABLE `oauth_types` DISABLE KEYS */;
INSERT INTO `oauth_types` VALUES (1,'google'),(2,'facebook');
/*!40000 ALTER TABLE `oauth_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_users`
--

DROP TABLE IF EXISTS `oauth_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `verified_email` enum('0','1') DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `oauth_id` varchar(45) DEFAULT NULL,
  `oauth_type_id` int(2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_users`
--

LOCK TABLES `oauth_users` WRITE;
/*!40000 ALTER TABLE `oauth_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_parts`
--

DROP TABLE IF EXISTS `order_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_style_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_parts`
--

LOCK TABLES `order_parts` WRITE;
/*!40000 ALTER TABLE `order_parts` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_parts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_price` decimal(10,2) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `filled` enum('0','1') NOT NULL DEFAULT '0',
  `shipped` enum('0','1') NOT NULL DEFAULT '0',
  `tracking` varchar(50) NOT NULL DEFAULT '0',
  `stripe_order_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `expiry` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_styles`
--

DROP TABLE IF EXISTS `product_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_styles`
--

LOCK TABLES `product_styles` WRITE;
/*!40000 ALTER TABLE `product_styles` DISABLE KEYS */;
INSERT INTO `product_styles` VALUES (1,1,'Mistletoe','transformation_mistletoe.jpg'),(2,1,'Royal Lush','transformation_royallush.jpg'),(3,1,'Rainforest','transformation_rainforest.jpg'),(4,1,'River Stone','transformation_riverstone.jpg'),(5,1,'Raven','transformation_raven.jpg'),(6,1,'Cabernet','transformation_cabernet.jpg'),(7,1,'Electric Guitar','transformation_electricguitar.jpg'),(8,2,'Rustic Gold','meditation_rusticgold.jpg'),(9,2,'Raven','meditation_raven.jpg'),(10,2,'Sunshine','meditation_sunshine.jpg'),(11,2,'Venus','meditation_venus.jpg'),(12,2,'Electric Guitar','meditation_electricguitar.jpg'),(13,3,'Riverstone','love_riverstone.jpg'),(14,3,'Raven','love_raven.jpg'),(15,3,'Wonderland','love_wonderland.jpg'),(16,3,'Ballet Slipper','love_balletslipper.jpg'),(17,3,'Royal Lush','love_royallush.jpg'),(18,3,'Blushing Bride','love_blushingbride.jpg'),(19,3,'Sunshine','love_sunshine.jpg'),(20,4,'Rustic Gold','tigress_rusticgold.jpg'),(21,4,'Royal Lush','tigress_royallush.jpg'),(22,4,'Rain Forest','tigress_rainforest.jpg'),(23,4,'River Stone','tigress_riverstone.jpg'),(24,4,'Raven','tigress_raven.jpg'),(25,4,'Cabernet','tigress_cabernet.jpg'),(26,4,'Sunshine','tigress_sunshine.jpg'),(27,5,'Royal Lush','grounding_royallush.jpg'),(28,5,'Electric Guitar','grounding_electricguitar.jpg'),(29,5,'River Stone','grounding_riverstone.jpg'),(30,5,'Mistletoe','grounding_mistletoe.jpg'),(31,5,'Raven','grounding_raven.jpg'),(32,5,'Rainforest','grounding_rainforest.jpg'),(33,5,'Wonderland','grounding_wonderland.jpg'),(34,5,'Cabernet','grounding_cabernet.jpg'),(35,6,'Venus','creativity_venus.jpg'),(36,6,'Ballet Slipper','creativity_balletslipper.jpg'),(37,6,'River Stone','creativity_riverstone.jpg'),(38,6,'Wonderland','creativity_wonderland.jpg'),(39,6,'Raven','creativity_raven.jpg'),(40,6,'Sunshine','creativity_sunshine.jpg'),(41,7,'Orchid Ivory','serenity_orchidivory.jpg'),(42,7,'Ballet Slipper','serenity_balletslipper.jpg'),(43,7,'Blushing Bride','serenity_blushingbride.jpg'),(44,7,'River Stone','serenity_riverstone.jpg'),(45,7,'Wonderland','serenity_wonderland.jpg'),(46,7,'Raven','serenity_raven.jpg'),(47,8,'Blushing Bride','selflove_blushingbride.jpg'),(48,8,'Ballet Slipper','selflove_balletslipper.jpg'),(49,8,'Tulip','selflove_tulip.jpg'),(50,8,'River Stone','selflove_riverstone.jpg'),(51,8,'Royal Lush','selflove_royallush.jpg'),(52,8,'Rustic Gold','selflove_rusticgold.jpg'),(53,8,'Raven','selflove_raven.jpg'),(54,8,'Wonderland','selflove_wonderland.jpg'),(55,8,'Cabernet','selflove_cabernet.jpg'),(56,9,'Tulip','lucky_tulip.jpg'),(57,9,'Raven','lucky_raven.jpg'),(58,9,'Ballet Slipper','lucky_balletslipper.jpg'),(59,9,'Wonderland','lucky_wonderland.jpg'),(60,9,'River Stone','lucky_riverstone.jpg'),(61,10,'Raven','healing_raven.jpg'),(62,10,'Rustic Gold','healing_rusticgold.jpg'),(63,10,'Venus','healing_venus.jpg'),(64,11,'Raven','dream_raven.jpg'),(65,11,'Rain Forest','dream_rainforest.jpg'),(66,11,'Royal Lush','dream_royallush.jpg'),(67,11,'Venus','dream_venus.jpg'),(68,12,'Orchid Ivory','peace_orchidivory.jpg'),(69,12,'Venus','peace_venus.jpg'),(70,12,'Raven','peace_raven.jpg'),(71,13,'Rain Forest','protection_rainforest.jpg'),(72,13,'Raven','protection_raven.jpg'),(73,14,'Ballet Slipper','snow_balletslipper.jpg'),(74,14,'Rainforest','snow_rainforest.jpg'),(75,14,'Mistletoe','snow_mistletoe.jpg'),(76,14,'Royal Lush','snow_royallush.jpg'),(77,14,'Cabernet','snow_cabernet.jpg'),(78,15,'Royal Lush','ocean_royallush.jpg'),(79,15,'Raven','ocean_raven.jpg'),(80,16,'River Stone','relaxation_riverstone.jpg'),(81,16,'Cabernet','relaxation_cabernet.jpg'),(82,16,'Raven','relaxation_raven.jpg'),(83,16,'Rainforest','relaxation_rainforest.jpg'),(84,16,'Venus','relaxation_venus.jpg'),(85,17,'Orchid Ivory','expression_orchidivory.jpg'),(86,17,'Rain Forest','expression_rainforest.jpg'),(87,17,'Ballet Slipper','expression_balletslipper.jpg'),(88,17,'Raven','expression_raven.jpg'),(89,17,'Blushing Bride','expression_blushingbride.jpg'),(90,17,'Venus','expression_venus.jpg'),(91,18,'River Stone','balance_riverstone.jpg'),(92,18,'Rainforest','balance_rainforest.jpg'),(93,18,'Raven','balance_raven.jpg'),(94,18,'Royal Lush','balance_royallush.jpg'),(95,19,'Wonderland','attraction_wonderland.jpg'),(96,19,'Ballet Slipper','attraction_balletslipper.jpg'),(97,19,'River Stone','attraction_riverstone.jpg'),(98,19,'Blushing Bride','attraction_blushingbride.jpg'),(99,19,'Royal Lush','attraction_royallush.jpg'),(100,19,'Electric Guitar','attraction_electricguitar.jpg'),(101,19,'Orchid Ivory','attraction_orchidivory.jpg'),(102,20,'Rustic Gold','sacred_rusticgold.jpg'),(103,20,'Rainforest','sacred_rainforest.jpg'),(104,20,'Raven','sacred_raven.jpg'),(105,21,'Ballet Slipper','lucky_balletslipper.jpg'),(106,22,'Electric Guitar','meditation_electricguitar.jpg'),(107,23,'Ballet Slipper','serenity_balletslipper.jpg'),(108,23,'Blushing Bride','serenity_blushingbride.jpg'),(109,24,'Cabernet','grounding_cabernet.jpg'),(110,24,'Electric Guitar','grounding_electricguitar.jpg'),(111,25,'Rustic Gold','ocean_rusticgold.jpg'),(112,25,'Rainforest','ocean_rainforest.jpg'),(113,25,'Raven','ocean_raven.jpg'),(114,25,'Venus','ocean_venus.jpg'),(115,26,'Rainforest','ancients_rainforest.jpg'),(116,26,'Raven','ancients_raven.jpg'),(117,26,'Rustic Gold','ancients_rusticgold.jpg'),(118,27,'Wonderland','spirit_wonderland.jpg'),(119,27,'Cabernet','spirit_cabernet.jpg'),(120,27,'Orchid Ivory','spirit_orchidivory.jpg'),(121,27,'Raven','spirit_raven.jpg'),(122,27,'Venus','spirit_venus.jpg'),(123,28,'Wonderland','mother_wonderland.jpg'),(124,28,'Raven','mother_raven.jpg'),(125,28,'Royal Lush','mother_royallush.jpg'),(126,28,'Orchid Ivory','mother_orchidivory.jpg'),(127,29,'Trust In A Bottle Necklace','bottlenecklace_trust.jpg'),(128,29,'Inside the scroll','bottlescroll_trust.jpg'),(129,30,'Strength In A Bottle Necklace','bottlenecklace_strength.jpg'),(130,30,'Inside the scroll','bottlescroll_strength.jpg'),(131,31,'Confidence In A Bottle Necklace','bottlenecklace_confidence.jpg'),(132,31,'Inside the scroll','bottlescroll_confidence.jpg'),(133,32,'Trust In A Bottle Ring','bottlering_trust.jpg'),(134,32,'Inside the scroll','bottlescroll_trust.jpg'),(135,33,'Strength In A Bottle Ring','bottlering_strength.jpg'),(136,33,'Inside the scroll','bottlescroll_strength.jpg'),(137,34,'Confidence In A Bottle Ring','bottlering_confidence.jpg'),(138,34,'Inside the scroll','bottlescroll_confidence.jpg'),(139,35,'Trust In A Bottle Set','bottleset_trust.jpg'),(140,35,'Trust In A Bottle Necklace','bottlenecklace_trust.jpg'),(141,35,'Inside the scroll','bottlescroll_trust.jpg'),(142,35,'Trust In A Bottle Ring','bottlering_trust.jpg'),(143,36,'Strength In A Bottle Set','bottleset_strength.jpg'),(144,36,'Strength In A Bottle Necklace','bottlenecklace_strength.jpg'),(145,36,'Inside the scroll','bottlescroll_strength.jpg'),(146,36,'Strength In A Bottle Ring','bottlering_strength.jpg'),(147,37,'Confidence In A Bottle Set','bottleset_confidence.jpg'),(148,37,'Confidence In A Bottle Necklace','bottlenecklace_confidence.jpg'),(149,37,'Inside the scroll','bottlescroll_confidence.jpg'),(150,37,'Confidence In A Bottle Ring','bottlering_confidence.jpg'),(151,38,'Tigress Cuff','tigresscuff.jpg'),(152,39,'The Leather Wrap','leatherwrap.jpg'),(153,40,'The Grounding Cuff','groundingcuff.jpg'),(154,41,'Men\'s Arrowhead Wrap','arrowheadwrap.jpg'),(155,42,'Men\'s Grounding Cuff','mensgroundingcuff.jpg'),(156,43,'Brown Pheasant Headband','brownheadband.jpg'),(157,44,'Green Pheasant Headband','greenheadband.jpg'),(158,45,'Green Pheasant Earrings','greenpheasant.jpg'),(159,46,'Brown Pheasant Earrings','brownpheasant.jpg'),(160,47,'Black Feather Earrings','blackearrings.jpg'),(161,48,'Layered Green Pheasant Earrings','layeredgreenpheasant.jpg'),(162,49,'Layered Black & White Earrings','layeredblackandwhite.jpg'),(163,50,'Layered Black Earrings','layeredblackearrings.jpg'),(164,51,'Black & White Earrings','blackandwhite.jpg'),(165,52,'Orange Pheasant Earrings','orangepheasant.jpg'),(166,53,'Gold Pheasant Earrings','goldpheasant.jpg');
/*!40000 ALTER TABLE `product_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gem_id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `desc` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `combined_shipping` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,1,1,'The Transformation Wrap','Whether you\\\'re seeking transformation, wanting clarity for the changes around you, or simply need to surround yourself with a healing color, Malachite is the perfect gem. There\\\'s no wonder why the ancients used this stone for their prized jewelry. Its brilliant green color is the perfect accessory for this holiday season. Pair it with our mistletoe hand-dyed ribbon and have that perfect discussion piece at your annual office party. Or give it as a gift to your best friend who deserves a meaningful holiday present this year. ',38.00,3.99,1.00,3),(2,2,1,'The Meditation Wrap','The fierce royal blue and golden specked lapis lazuli will be sure to catch anyone\\\'s eye. This beautiful rich stone will make any outfit pop. Wear it with a sleek black dress and a pair of blue pumps or dress it down and bring out your inner diva. The Meditation Wrap is sure to enrich your daily practice and outer goddess.',38.00,3.99,1.00,1),(3,3,1,'The Love Wrap','Welcome unconditional love into your life with this passionate piece. Every woman could use a little more love in her life and what better way than with The Love Wrap. Wear this rich pink stone with your favorite black or pink top. Rhodonite and its feminine charm are bound to dazzle any wardrobe with a boost of goddess energy. Pair it with our Raven hand-dyed ribbon for a sophisticated look or Blushing Bride for the special day.',38.00,3.99,1.00,4),(4,4,1,'The Tigress Wrap','The Tigress Wrap is a powerful combination of determination and beauty. With its satin gold brown colors, this gem is bound to enrich your sense of style. Combine it with our Rustic Gold hand-dyed ribbon and embrace your inner tigress. The Tigress Wrap enhances our fierce feminine energy with mental clarity, determination, confidence, and a touch of abundance. Everything a goddess forgets to embrace from time to time.',35.00,3.99,1.00,7),(5,5,1,'The Grounding Wrap','Add an instant touch of elegance to any outfit with The Grounding Wrap. Black is a classic color that never goes out of style.  This rich black color will now serve as your favorite basic yet give you powerful grounding energy in your fast-paced daily routine. Pair it with a hand-dyed Mistletoe silk ribbon for that perfect holiday accessory! ',35.00,3.99,1.00,1),(6,6,1,'The Creativity Wrap','Embrace this stone of honor and give your creative side a surge of energy! With our crazy schedules these days, we all could use a little boost. Energize your sacral chakra and find some time in your day to do something you love. The Creativity Wrap is the perfect way to add a dash of color to your wardrobe and lifestyle.',35.00,3.99,1.00,5),(7,7,1,'The Serenity Wrap','Throughout a busy day, a hardworking woman could use a piece of serenity. Whether you find yourself stressed in rush hour traffic, at work, or at home, blue lace agate can help with your anxieties. Its soothing blue color will complement any pastel palette or vintage dress you\\\'ve been dying to wear. Wear it with our Wonderland hand-dyed ribbon and highlight your winter wonderland wardrobe this holiday season.',38.00,3.99,1.00,1),(8,8,1,'The Self Love Wrap','The Self Love Wrap is the perfect way to add a touch of Victorian elegance and self love. Its soft pink color will compliment all of our fun feminine pieces while surrounding ourselves with soothing love. Rose Quartz is a timeless stone that is bound to make any outfit chic. Indulge in your inner and outer beauty with this exquisite gem. Wear it with our hand-dyed Blushing Bride ribbon for that special day.',38.00,3.99,1.00,10),(9,9,1,'The Lucky Wrap','Take home a little bit of luck with Aventurine! We all need some good fortune in our lives now and then and this gem is the perfect tool to realize those affirmations. Welcome opportunity and wealth at your door with The Lucky Wrap. Pair this beautiful pastel green stone with a ballet slipper hand-dyed ribbon for a vintage look. ',35.00,3.99,1.00,1),(10,10,2,'The Healing Wrap','Take home a piece of glitz and glamor with Goldstone. This beautiful stone will be sure to add some shimmer to any holiday outfit. Wear it with our hand-dyed Raven ribbon and awe at it\\\'s sparkle!',35.00,0.00,0.00,4),(11,11,2,'The Dream Wrap','Get lost in this exquisite one-of-a-kind gem. Labradorite is definitely a piece you\\\'ll want to show off time and time again. Pair it with a hand-dyed Raven ribbon and let it\\\'s flashes of color shine. ',50.00,0.00,0.00,0),(12,12,2,'The Peace Wrap','Flower Sugilite is perfect for that flower child! This lovely purple stone will make a great addition to any sundress or flowy blouse. Pair it with our Orchid Ivory hand-dyed ribbon for a beautiful soft look.',38.00,0.00,0.00,1),(13,13,1,'The Protection Wrap','For us weary travelers, The Protection Wrap will give it\\\'s wearer a boost of courage in style. This beautiful serene looking stone is the perfect addition to your favorite pair of jeans. Wear it with our hand-dyed Rainforest ribbon and make any basic outfit pop.',40.00,0.00,0.00,4),(14,14,1,'The Snow Wrap','Let it snow! Let it snow! Let is snow with The Snow Wrap! The beautiful snow quartz is true to its name and resembles a fresh sheet of pure snow. Pair it with our hand-dyed Mistletoe ribbon for that perfect holiday accessory! It\\\'s fluffy white charm will sure to be the talk of your holiday studded evening. ',35.00,3.99,1.00,4),(15,15,2,'The Paua Shell Wrap','Bring the serenity of the ocean to your hands with the paua shell. This stunning shell, only found on the shores of New Zealand, will capture your gaze the entire day. It\\\'s brilliant shimmering colors will make any ordinary outfit come to life. Wear it with our Purple Lush or Raven hand-dyed ribbon to really bring out the paua shell\\\'s majestic beauty.',35.00,3.00,1.00,0),(16,16,1,'The Relaxation Wrap','Keep a small piece of R&amp;R at your wrist with The Relaxation Wrap. Poppy Jasper reminds us to put some time aside for ourselves and find our inner peace. The stone\\\'s rich red tones make a beautiful addition to your neutral wardrobe.',35.00,0.00,0.00,5),(17,17,2,'The Expression Wrap','Whether you need to clear your mind, instill a boost of confidence, or say the words you\\\'ve been meaning to say, The Expression Wrap is the perfect piece. Sodalite and it\\\'s purple-blue color will brighten any outfit. Make a statement with our hand-dyed Rainforest ribbon.',35.00,3.99,1.00,4),(18,18,2,'The Balance Wrap','Bring some stability to your life with The Balance Wrap. We all need to find our center from time to time and what better way than with laguna agate. This mesmerizing gem will splash color to any outfit. Wear it with our hand-dyed river stone ribbon for your daily practice.',35.00,3.99,1.00,3),(19,19,2,'The Attraction Wrap','Feel pretty in pink with The Attraction Wrap. For those who have lost contact with your inner diva, the powerful Rhodochrosite will add some definite goddess energy to your life. This exquisite pink gem will make the perfect accessory for all your feminine outfits. Pair it with our hand-dyed electric guitar ribbon and rock out.',40.00,3.99,1.00,5),(20,20,2,'The Sacred Wrap','Bring some noble wisdom into your life with The Sacred Wrap. Whether you seek courage, communication, or self-realization, the stone serves as a beautiful companion. Turquoise grows closer to it\\\'s wearer with age. This timeless designer gem is sure to enrich your wardrobe and sense of style. Wear it with our hand-dyed Rainforest ribbon to bring out its stunning color.',42.00,0.00,0.00,0),(21,9,1,'The Lucky Valentine\'s Wrap','Take home a little bit of luck with Aventurine! We all need some good fortune in our lives now and then and this gem is the perfect tool to realize those affirmations. Welcome opportunity and wealth at your door with The Lucky Wrap. Pair this beautiful pastel green stone with a ballet slipper hand-dyed ribbon for a vintage look. ',35.00,0.00,0.00,3),(22,2,1,'The Meditation Valentine\'s Wrap','The fierce royal blue and golden specked lapis lazuli will be sure to catch anyone\\\'s eye. This beautiful rich stone will make any outfit pop. Wear it with a sleek black dress and a pair of blue pumps or dress it down and bring out your inner diva. The Meditation Wrap is sure to enrich your daily practice and outer goddess.',38.00,0.00,0.00,2),(23,7,1,'The Serenity Valentine\'s Wrap','Throughout a busy day, a hardworking woman could use a piece of serenity. Whether you find yourself stressed in rush hour traffic, at work, or at home, blue lace agate can help with your anxieties. Its soothing blue color will complement any pastel palette or vintage dress you\\\'ve been dying to wear. Wear it with our Wonderland hand-dyed ribbon and highlight your winter wonderland wardrobe this holiday season.',38.00,0.00,0.00,2),(24,5,1,'The Grounding Valentine\'s Wrap','Add an instant touch of elegance to any outfit with The Grounding Wrap. Black is a classic color that never goes out of style.  This rich black color will now serve as your favorite basic yet give you powerful grounding energy in your fast-paced daily routine. Pair it with a hand-dyed Mistletoe silk ribbon for that perfect holiday accessory! ',35.00,0.00,0.00,1),(25,21,2,'The Ocean Wrap','Bring the serenity of the ocean to your hands with the abalone shell. This stunning natural shell will capture your gaze the entire day. It\\\'s brilliant shimmering colors will make any ordinary outfit come to life. Wear it with our Rustic Gold hand-dyed ribbon to really bring out the abalone shell\\\'s majestic beauty.',35.00,0.00,0.00,1),(26,22,2,'The Ancients\' Wrap','Turquoise is considered one of the oldest stones used for protection by the ancients. It was also thought to be a symbol of wealth and courage. The stone carries great wisdom and truth for it\\\'s wearer. Turquoise stabilizes one\\\'s mood and is also great for preventing depression and panic attacks. The stone protects the wearer from negativity and promotes self-realization and communication.',38.00,0.00,0.00,1),(27,23,2,'The Spirit Wrap','Get a surge of positivity with The Spirit Wrap. This drusy quartz brilliantly catches light with all of its crystals. There\\\'s not a more stunning way to dissolve your worry and stress and amplify positivity. Druzy Quartz is sure to dazzle your wardrobe with some glitz and glamour! Pair it with our hand-dyed River Stone ribbon for an exquisite accessory.',55.00,0.00,0.00,0),(28,24,2,'The Mother\"s Wrap','The Mother Wrap is the perfect gift for that amazing mom in your life. With it\\\'s stunning iridescent  flashes of light, it serves as a reminder of the powerful goddess energy they possess. The rare rainbow moonstone will make any outfit come to life. Pair it with our Wonderland hand-dyed ribbon to bring out its blue flashes.',42.00,0.00,0.00,1),(29,25,4,'Trust In A Bottle Necklace','Bring peace and intuition to your heart center with the Trust In A Bottle necklace. This adorable tiny bottle contains an affirmation on a hand-distressed scroll, which reads \\&quot;I trust my dreams and intuitions. I am destined for great things.\\&quot; The bottle also includes amethyst gems and an antique key on a 27\\&quot; antique chain. This little bottle is the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. Pair it with the Strength In A Bottle ring for a cute key and lock affirmation set.',19.00,0.00,0.00,1),(30,26,4,'Strength In A Bottle Necklace','Bring some inner strength to your heart center with the Strength In A Bottle necklace. This adorable tiny bottle contains an affirmation on a hand-distressed scroll, which reads \\&quot;I\\\'m strong, confident, fearless, and powerful. I\\\'m in control.\\&quot; The bottle also includes black tourmaline gems and an antique key on a 27\\&quot; antique chain. This little bottle is the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. Pair it with the Strength In A Bottle ring for a cute key and lock affirmation set.',19.00,0.00,0.00,1),(31,8,4,'Confidence In A Bottle Necklace','Bring your inner diva to your heart center with the Confidence In A Bottle necklace. This adorable tiny bottle contains an affirmation on a hand-distressed scroll, which reads \\&quot;I\\\'m beautiful, confident, appreciated, and admired. I\\\'m loved. I\\\'m perfection.\\&quot; The bottle also includes rose quartz gems and an antique key on a 27\\&quot; antique chain. This little bottle is the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. Pair it with the Confidence In A Bottle ring for a cute key and lock affirmation set.',19.00,0.00,0.00,1),(32,25,4,'Trust In A Bottle Ring','Bring peace and intuition to your finger tips with the Trust In A Bottle ring. This adorable tiny bottle contains an affirmation on a hand-distressed scroll, which reads \\&quot;I trust my dreams and intuitions. I am destined for great things.\\&quot; The bottle also includes amethyst gems and an antique heart lock on an antique adjustable ring. This little bottle is the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. Pair it with the Strength In A Bottle necklace for a cute key and lock affirmation set.',14.00,0.00,0.00,2),(33,26,4,'Strength In A Bottle Ring','Bring some inner strength to your finger tips with the Strength In A Bottle ring. This adorable tiny bottle contains an affirmation on a hand-distressed scroll, which reads \\&quot;I\\\'m strong, confident, fearless, and powerful. I\\\'m in control.\\&quot; The bottle also includes black tourmaline gems and an antique heart lock on an antique adjustable ring. This little bottle is the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. Pair it with the Strength In A Bottle necklace for a cute key and lock affirmation set.',14.00,0.00,0.00,2),(34,8,4,'Confidence In A Bottle Ring','Bring your inner diva to your finger tips with the Confidence In A Bottle ring. This adorable tiny bottle contains an affirmation on a hand-distressed scroll, which reads \\&quot;I\\\'m beautiful, confident, appreciated, and admired. I\\\'m loved. I\\\'m perfection.\\&quot; The bottle also includes rose quartz gems and an antique heart lock on an antique adjustable ring. This little bottle is the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. Pair it with the Confidence In A Bottle necklace for a cute key and lock affirmation set.',14.00,0.00,0.00,2),(35,25,4,'Trust In A Bottle Set','Bring peace and intuition to your heart center and finger tips with the Trust In A Bottle necklace and ring set. These adorable tiny bottles contain affirmations on hand-distressed scrolls, which read \\&quot;I trust my dreams and intuitions. I am destined for great things.\\&quot; The bottles also include amethyst gems. The ring is finished with an antique heart lock and an adjustable ring. The necklace comes with an antique key and  matching 27\\&quot; chain.  These exquisite bottles are the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. ',30.00,0.00,0.00,2),(36,26,4,'Strength In A Bottle Set','Bring some inner strength to your heart center and finger tips with the Strength In A Bottle necklace and ring set. These adorable tiny bottles contain affirmations on hand-distressed scrolls, which read \\&quot;I\\\'m strong, confident, fearless, and powerful. I\\\'m in control.\\&quot; The bottles also include black tourmaline gems. The ring is finished with an antique heart lock and an adjustable ring. The necklace comes with an antique key and matching 27\\&quot; chain.  These exquisite bottles are the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. ',30.00,0.00,0.00,2),(37,8,4,'Confidence In A Bottle Set','Bring your inner diva to your heart center and finger tips with the Confidence In A Bottle necklace and ring set. These adorable tiny bottles contain affirmations on hand-distressed scrolls, which read \\&quot;I\\\'m beautiful, confident, appreciated, and admired. I\\\'m loved. I\\\'m perfection.\\&quot; The bottles also include rose quartz gems. The ring is finished with an antique heart lock and an adjustable ring. The necklace comes with an antique key and matching 27\\&quot; chain.  These exquisite bottles are the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. ',30.00,0.00,0.00,2),(38,4,3,'Tigress Leather Cuff','Wrap yourself in feathers with this stylish leather cuff. It features brown pheasant feathers and a tiger\\\'s eye at it\\\'s core. The cuff is 1.5\\\" wide and adjusts from 6.5\\\" to 7.5\\\". Wear it with any basic outfit with this rich handmade piece.',32.00,1.00,0.00,1),(39,27,1,'The Leather Wrap','Elegance meets rocker chic with this exquisite piece. This handmade leather wrap features rich black feathers and a kyanite at it\\\'s core. Dress it up or wear it with your favorite vintage tee.',36.00,1.00,0.00,1),(40,5,3,'The Grounding Cuff','Wrap yourself in feathers with this stylish leather cuff. It features green pheasant feathers and an onyx at it\\\'s core. The cuff is 1.5\\&quot; wide and adjusts from 6.5\\&quot; to 7.5\\&quot;. Wear any basic outfit with this rich handmade piece.',32.00,0.00,0.00,1),(41,5,3,'Men\'s Arrowhead Wrap','Get in touch with your inner rocker with The Arrowhead Wrap. It\\\'s the perfect accessory for the stylish man in your life. It features a unique onyx arrowhead and red suede. It\\\'s sure to fit any man with an adjustable closure.',36.00,1.00,0.00,1),(42,5,3,'Men\'s Grounding Cuff','This handsome leather cuff is sleek with a slight edge. It features a large onyx wrapped in red suede. It\\\'s sure to fit that special man in your life with an adjustable buckle closure. The grounding cuff is the perfect accessory for your favorite vintage tee and jeans.',30.00,1.00,0.00,1),(43,5,3,'Brown Pheasant Headband','No matter what hair color you\\\'re rocking this season, embellish it with the brown pheasant headband. These beautiful natural brown feathers are sure to enhance any hair style. This elegant headband features an onyx gem and a 1.5\\&quot; wide headband lined with suede for maximum comfort.',0.00,0.00,0.00,1),(44,5,3,'Green Pheasant Headband','Add some textured color to your locks.  These beautiful green pheasant and guinea feathers are sure to enhance any hair style. This elegant headband features an onyx gem and a 1.5\\&quot; wide headband lined with suede for maximum comfort.',0.00,0.00,0.00,1),(45,5,3,'Green Pheasant Earrings','These elegant earrings feature a rich  emerald pheasant feather topped with an onyx gem.  Measuring at approximately 4.25&quot; long, these earrings are sure to bring the solid tops and dresses in your wardrobe to the next level.',18.00,0.00,0.00,1),(46,5,3,'Brown Pheasant Earrings','Add some warmth to your profile with this rich pair. These earrings feature feathers topped with an onyx gem.  Measuring at approximately 4.5\\&quot; long, these earrings are sure to compliment all the neutrals in your wardrobe.',18.00,0.00,0.00,1),(47,11,3,'Black Feather Earrings','These sleek black earrings make the perfect evening accessory.  Handmade with black labradorite gems, they are sure to add some sparkle to your night. Measuring at approximately 4.5\\&quot; long, these feathers easily create a stunning dramatic look.',17.00,0.00,0.00,1),(48,5,3,'Layered Green Pheasant Earrings','These elegant earrings feature rich  emerald pheasant feathers topped with an onyx gem.  Measuring at approximately 5\\&quot; long, these earrings are sure to help create that dramatic evening look.',19.00,0.00,0.00,1),(49,5,3,'Layered Black & White Earrings','Take elegance to the next level with stunning layered black and white feathers. Measuring at 4.75\", these rare pheasant feathers will enrich any outfit.  Pair them with a bold solid top or dress for that desired dramatic look.',19.00,1.99,0.00,1),(50,11,3,'Layered Black Earrings','These sleek black earrings make the perfect evening accessory.  Handmade with black labradorite gems, they are sure to add some sparkle to your night. Measuring at approximately 5\\&quot; long, the layered black feathers easily create a stunning dramatic look.',19.00,0.00,0.00,1),(51,5,3,'Black & White Earrings','Take elegance to the next level with stunning black and white feathers. Measuring at 5\", these rare pheasant feathers will enrich any outfit.  Pair them with a bold solid top or dress for that desired dramatic look.',19.00,1.99,0.50,1),(52,5,3,'Orange Pheasant Earrings','Add a pop color to your wardrobe with this fun pair. This elegant set of earrings features an orange pheasant feather and an onyx gem. Measuring at 4.25&quot;, these feathers are sure to spice up your neutrals.',18.00,0.00,0.00,1),(53,5,3,'Gold Pheasant Earrings','Add a pop color to your wardrobe with this fun pair. This elegant set of earrings features a gold pheasant feather and an onyx gem. Measuring at 4.5&quot;, these feathers are sure to spice up your neutrals.',18.00,0.00,0.00,1),(54,9,4,'Luck in a Bottle Set','Bring opportunity and abundance to your heart center and finger tips with the Luck In A Bottle necklace and ring set. These adorable tiny bottles contain affirmations on hand-distressed scrolls, which read &quot;Doors are opening for me. Wealth is pouring into my life. I\'m lucky in every aspect.&quot; The bottles also include aventurine gems. The ring is finished with an antique heart lock and an adjustable ring. The necklace comes with an antique key and  matching 27&quot; chain.  These exquisite bottles are the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day',30.00,0.00,0.00,2),(55,28,4,'Comfort in a Bottle Set','Bring some joy to your heart center and finger tips with the Comfort In A Bottle necklace and ring set. These adorable tiny bottles contain affirmations on hand-distressed scrolls, which read \"I\'m grateful for the people and things which bring joy to my life. My life is rich. I love being me.\" The bottles also include peridot gems. The ring is finished with an antique heart lock and an adjustable ring. The necklace comes with an antique key and  matching 27\" chain.  These exquisite bottles are the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. ',30.00,0.00,0.00,2),(56,4,4,'Clarity in a Bottle Set','Bring some focus and determination to your heart center and finger tips with the Clarity In A Bottle necklace and ring set. These adorable tiny bottles contain affirmations on hand-distressed scrolls, which read \"My inner vision is clear and focused. I\'m grounded, sharp, and determined. I\'m a pure force.\" The bottles also include tigers eye gems. The ring is finished with an antique heart lock and an adjustable ring. The necklace comes with an antique key and  matching 27\" chain.  These exquisite bottles are the perfect touch of vintage to any outfit, while reminding us to keep positive throughout the day. ',30.00,0.00,0.00,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tweets`
--

DROP TABLE IF EXISTS `tweets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tweets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tweet_id` varchar(45) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `time_tweeted` timestamp NULL DEFAULT NULL,
  `time_checked` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tweets`
--

LOCK TABLES `tweets` WRITE;
/*!40000 ALTER TABLE `tweets` DISABLE KEYS */;
INSERT INTO `tweets` VALUES (1,'517712882176634880','Enhance your #Creativity #Energy &amp; #Passion. Carnelian gem the heart of our Creativity Wrap on http://t.co/ojawE5hKZK http://t.co/enCzlSJiLH','2014-10-02 16:29:04','2015-09-04 19:02:24'),(2,'517710991300517888','My inner vision is clear and focused. I\'m grounded, sharp, and determined. I\'m a pure force. #Clarity @... http://t.co/E6XgwdRmhJ','2014-10-02 16:21:33','2015-09-04 19:02:24'),(3,'517430879921401856','The Comfort in a Bottle Set on http://t.co/ojawE5hKZK #Affirmations #Comfort http://t.co/YXmqv9rVm6','2014-10-01 21:48:29','2015-09-04 19:02:24'),(4,'517430702305189888','I\'m grateful for the people and things which bring joy to my life. My life is rich. I love being me. #Comfort http://t.co/Ez5dfbWTCy','2014-10-01 21:47:47','2015-09-04 19:02:24');
/*!40000 ALTER TABLE `tweets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT '1',
  `password` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `ip` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `product_last_viewed` int(11) NOT NULL DEFAULT '0',
  `is_confirmed` enum('0','1') COLLATE latin1_general_ci DEFAULT '1',
  `confirmation_code` varchar(255) COLLATE latin1_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_email` (`email`),
  UNIQUE KEY `confirmation_code_UNIQUE` (`confirmation_code`),
  FULLTEXT KEY `idx_search` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,NULL,NULL,'root@faithwraps.com',5,'$2y$10$CFzBbvCI0W0xUEzetnRjPe68Ho4ZwD6QYVgiroxaIAWI5x6eyl7JW','',0,'1','8a7b85d0221eb03fcd47db4474861ae6','2015-09-04 19:11:24','2015-09-04 19:11:24','2015-09-04 19:11:24');
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

-- Dump completed on 2015-09-04 12:15:21
