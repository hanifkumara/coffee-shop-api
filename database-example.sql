-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(128) NOT NULL,
  `displayName` varchar(128) DEFAULT 'Your Name',
  `firstName` varchar(64) DEFAULT 'Your',
  `lastName` varchar(64) DEFAULT 'Name',
  `avatar` varchar(128) DEFAULT 'default.jpg',
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `mobileNumber` varchar(13) DEFAULT NULL,
  `deliveryAddress` varchar(1024) DEFAULT '-',
  `birthDate` date DEFAULT NULL,
  `gender` varchar(16) DEFAULT 'Male',
  `role` varchar(45) DEFAULT 'user',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('4a20b33b-c88b-4d4d-83dd-c012e06c66aa','Your Name','Your','Name','default.jpg','syauqeesy@gmail.com','$2b$10$wWNLBlIHZ9ZLC2kayuph1uyDH.ThEuJ7ZU/5DWK30jJuAonx0mU5q','081222874281','-',NULL,'Male','admin'),('d414679c-0140-46f8-85f1-81eda5bfeb11','Your Name','Your','Name','default.jpg','defri@gmail.com','$2b$10$EkPSkxj0XCAKKgPjhlwz8eEQtPYXKUL7TlhiIhMbdM99jylZYvFpW','09123812382','-',NULL,'Male','user');
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

-- Dump completed on 2020-12-17 18:32:06
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('03b0900f-1bee-4714-948b-4c83483c611f','Nasi Goreng Special',20000,'Nasi goreng special enak','default_product.jpg',100,'food'),('07fb5444-bad1-454c-a170-58f31e9eb424','Roti Bakar',10000,'Roti bakar manis','default_product.jpg',100,'food'),('09c423f8-1fb7-4a40-95e0-8ebabe86aac8','Sate Kambing',25000,'Sate kambing mantap enak sekali','default_product.jpg',100,'food'),('0a6a29e3-88a4-46cf-b8ab-3252182f2a16','Jus Sirsak',14500,'Jus sisrsak segar','default_product.jpg',100,'drink'),('0b08ad0d-8591-48f3-9518-6aa25096c011','Sate Ayam',15000,'Sate ayam mantap enak sekali','default_product.jpg',100,'food'),('0c303b69-2b80-4321-b2ef-77b1db4d465f','Smoothies',30000,'Smoothies sangat nikmat','default_product.jpg',100,'drink'),('24bd6cf9-99e5-4e26-9730-66e451ec4d84','Jus Semangka',14500,'Jus semangka segar','default_product.jpg',100,'drink'),('2f28eb30-a927-44ad-85fd-5ac5d5236495','Jus Jambu',14500,'Jus jambu segar','default_product.jpg',100,'drink'),('354f7f2a-b87d-4324-bd6d-07f03a669e37','Nasi Goreng',15000,'Nasi goreng enak','default_product.jpg',100,'food'),('55fb2bd7-785e-430b-969e-81f2456679b4','Coklat Panas',25000,'Coklat panas enak diminum saat dingin','default_product.jpg',100,'drink'),('5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','Jus Alpukat',14500,'Jus alpukat segar','default_product.jpg',100,'drink'),('62504076-315a-4247-82dc-e865d0e6e3a2','Susu Segar',20000,'Susu segar sangat fresh','default_product.jpg',100,'drink'),('63d5e381-131f-4c5e-97c9-5d4b4ca7c72f','Gorengan Tahu',3000,'Gorengan tahu wawawaw','1608198542002-Screenshot (9).png',40,'food'),('68acf03a-8b22-410f-9d6a-7e801c938b6b','Indomie Ayam bawang',7500,'Indomie ayam bawang dengan telor','default_product.jpg',100,'food'),('6b3f8ef2-ba10-4119-86ee-58e4495f95e8','Nasi Goreng Kambing',25000,'Nasi goreng kambing enak','default_product.jpg',100,'food'),('7337401c-8308-499c-8650-787888b86825','Jus Marimas Mangga',14500,'Marimas mangga dengan es','default_product.jpg',100,'drink'),('734c6821-9d1f-4120-90a4-c4c1e00517c1','Jus Wortel',14500,'Jus Wortel segar','default_product.jpg',100,'drink'),('76549b2d-0cb5-4321-8586-ec9d63f510bd','Indomie Ayam bawang',7500,'Indomie ayam bawang dengan telor','default_product.jpg',100,'food'),('7d7f125b-e6bb-4327-8797-75b6c00d0c74','Buah apel',5000,'Buah apel sangat manis','default_product.jpg',300,'food'),('83208f20-96ab-4bd1-a176-ce463636bd57','Sate Sapi',20000,'Sate sapi mantap enak sekali','default_product.jpg',100,'food'),('9113785a-886e-4d94-8d05-fcd9c136e98e','Indomie Soto',7500,'Indomie soto','default_product.jpg',100,'food'),('94b44554-74b7-4bf9-a726-80e4aa3049e7','Martabak Keju',25000,'Martabak manis keju mantap sekali','default_product.jpg',100,'food'),('9a7817c7-1962-402b-b5d4-441b3c539c8b','Martabak Coklat',25000,'Martabak manis coklat mantap sekali','default_product.jpg',100,'food'),('9dd48912-a235-4a85-9be1-7478f173797d','Jus Apel',14500,'Jus apel segar','default_product.jpg',100,'drink'),('a2ecae97-affe-4547-9bd6-5674d28cbf6b','Indomie Kari Ayam',7500,'Indomie kari ayam dengan telor','default_product.jpg',100,'food'),('c9c81003-d819-4733-9af7-ca6178d8b092','Martabak Telor',30000,'Martabak telor, telornya banyak','default_product.jpg',100,'food'),('d46b5e0e-3154-4b57-b0f0-b604433b5438','Jus Mangga',14500,'Jus mangga segar','default_product.jpg',100,'drink'),('da499dfc-5e1f-459b-bcb4-25b0099893f2','Kopi Susu',2500,'Kopi hitam dengan susu kental manis','default_product.jpg',300,'drink'),('df9b95ed-51ae-4f94-8ccb-fa95ee114894','Jus Stroberi',14500,'Jus stroberi segar','default_product.jpg',100,'drink'),('edc85181-cb4f-4db6-b0dd-9540cd4a19d0','Jus Jeruk',14500,'Jus jeruk segar','default_product.jpg',100,'drink'),('f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1','Indomie Goreng',7500,'Indomie goreng dengan telor','default_product.jpg',100,'food');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 18:32:06
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `product_sizes`
--

DROP TABLE IF EXISTS `product_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_sizes` (
  `id` varchar(128) NOT NULL,
  `productId` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL,
  KEY `productsizes_ibfk_1_idx` (`productId`),
  CONSTRAINT `product_sizes_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_sizes`
--

LOCK TABLES `product_sizes` WRITE;
/*!40000 ALTER TABLE `product_sizes` DISABLE KEYS */;
INSERT INTO `product_sizes` VALUES ('2c92e586-55d2-4253-9006-beb89a158245','7d7f125b-e6bb-4327-8797-75b6c00d0c74','250gr'),('bc996824-3304-4b1c-910a-28ec1beff5d5','da499dfc-5e1f-459b-bcb4-25b0099893f2','XL'),('89b3fa97-9f7f-4436-a1da-63a61829c85f','da499dfc-5e1f-459b-bcb4-25b0099893f2','L'),('dd072426-eeaa-4cf4-9e71-5edadc387088','da499dfc-5e1f-459b-bcb4-25b0099893f2','R'),('6623ddc1-6b68-43b4-ada4-d3f021361764','9dd48912-a235-4a85-9be1-7478f173797d','XL'),('94d12e69-2123-43e0-8783-e4a9d47f3b42','9dd48912-a235-4a85-9be1-7478f173797d','L'),('bebc6f7a-3343-4a97-8c8c-f7375036a1ca','9dd48912-a235-4a85-9be1-7478f173797d','R'),('5e2cf971-ff22-4b38-a874-d6c42c42c721','df9b95ed-51ae-4f94-8ccb-fa95ee114894','XL'),('8653bc1f-c286-46ed-a953-0d6a85019152','df9b95ed-51ae-4f94-8ccb-fa95ee114894','L'),('23596057-6fde-46e2-8bab-33c401759e70','df9b95ed-51ae-4f94-8ccb-fa95ee114894','R'),('190ed965-0ac8-4d70-bec3-cfa6f8995d7c','edc85181-cb4f-4db6-b0dd-9540cd4a19d0','XL'),('590fb53e-e8cd-45e1-b6f5-17502453c8df','edc85181-cb4f-4db6-b0dd-9540cd4a19d0','L'),('278c9a1b-3e85-424d-98cd-c0903d9dc201','edc85181-cb4f-4db6-b0dd-9540cd4a19d0','R'),('c7b516ed-84ef-4939-bc87-8fd3ca99199c','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','XL'),('aa862274-bd0c-4c04-b666-3172f4360221','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','L'),('1f713646-2f43-400b-b614-03d68fafc50c','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','R'),('6b109463-e058-4fe2-8fed-70b5817c7d00','d46b5e0e-3154-4b57-b0f0-b604433b5438','XL'),('348cdf83-4cb2-4d27-b5f6-bc0693be635c','d46b5e0e-3154-4b57-b0f0-b604433b5438','L'),('56e91a02-0392-484b-87d0-66d8bc693558','d46b5e0e-3154-4b57-b0f0-b604433b5438','R'),('efb33d5c-f9ed-4343-bab5-415cacacdfae','24bd6cf9-99e5-4e26-9730-66e451ec4d84','XL'),('a59cbfaa-17df-4c79-84cc-de84ac4609d5','24bd6cf9-99e5-4e26-9730-66e451ec4d84','L'),('50778462-8211-4c30-bde2-e1ab201ada2f','24bd6cf9-99e5-4e26-9730-66e451ec4d84','R'),('c2e5e76f-6e39-4463-bf4a-4043fe246c2d','2f28eb30-a927-44ad-85fd-5ac5d5236495','XL'),('08a41773-9c0b-44b7-93ca-72e4acfc6145','2f28eb30-a927-44ad-85fd-5ac5d5236495','L'),('5b1df7ff-6048-4fa4-87b3-ef32854a35ab','2f28eb30-a927-44ad-85fd-5ac5d5236495','R'),('fc147521-fe2c-44f9-b0c0-17c3a12df731','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','XL'),('689ee362-e8f6-4218-923a-2514c850b24e','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','L'),('3e01258e-df23-4108-a9ba-afa346b638e1','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','R'),('13e5a19d-10be-401f-a9b6-19bb5358dcff','734c6821-9d1f-4120-90a4-c4c1e00517c1','XL'),('667fa113-c1c0-4cdb-b036-a08cd93d4574','734c6821-9d1f-4120-90a4-c4c1e00517c1','L'),('42c0d4c7-b74a-4cef-ad2d-4125e9b8002f','734c6821-9d1f-4120-90a4-c4c1e00517c1','R'),('024adbc8-686c-4c7b-b578-edfe3cd4b3b1','7337401c-8308-499c-8650-787888b86825','R'),('d3528faf-2ca2-4a73-b869-79318053c9a4','62504076-315a-4247-82dc-e865d0e6e3a2','L'),('572db097-9110-435e-b16c-61c08a50d71a','62504076-315a-4247-82dc-e865d0e6e3a2','XL'),('a135d787-0d62-4d6f-8c7b-13b80ba362a2','55fb2bd7-785e-430b-969e-81f2456679b4','L'),('ff52ea96-f703-4cac-9b1d-77802cd01b07','55fb2bd7-785e-430b-969e-81f2456679b4','XL'),('618a6f50-ff28-4e0b-af80-df7e71883fd9','0c303b69-2b80-4321-b2ef-77b1db4d465f','L'),('fb0eb9e2-7853-484a-9659-a1c1c6056b81','0c303b69-2b80-4321-b2ef-77b1db4d465f','XL'),('55a48134-5f72-4b27-80d3-e3b0f8ffd12b','07fb5444-bad1-454c-a170-58f31e9eb424','250gr'),('38dcf8c0-c4dc-4b77-889f-2891acae2d9f','68acf03a-8b22-410f-9d6a-7e801c938b6b','250gr'),('023311ad-171d-4115-903f-ce35902ba8c8','76549b2d-0cb5-4321-8586-ec9d63f510bd','L'),('e2d3d270-dd3a-4d3b-a8ae-b0fc786b9df4','f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1','L'),('f72a464a-e30a-406f-8acc-8ab29c4e77a3','a2ecae97-affe-4547-9bd6-5674d28cbf6b','L'),('e47ebafc-4b72-4a26-91f8-727669e86e07','9113785a-886e-4d94-8d05-fcd9c136e98e','L'),('d3aefab0-e69e-456e-9908-f3f1863b721f','0b08ad0d-8591-48f3-9518-6aa25096c011','500gr'),('4f29a789-4d7a-4f2b-8539-b62321504ab1','83208f20-96ab-4bd1-a176-ce463636bd57','500gr'),('8439d386-1a0d-46e2-85b1-43a72d9347fd','09c423f8-1fb7-4a40-95e0-8ebabe86aac8','500gr'),('4924c2f4-cc53-4940-94db-8a98d0f6c6ee','354f7f2a-b87d-4324-bd6d-07f03a669e37','300gr'),('14fa7f20-70e0-4d89-aa0a-5898a2cc578a','6b3f8ef2-ba10-4119-86ee-58e4495f95e8','300gr'),('dd06f40d-3f4d-496a-b1ac-8564843820bb','03b0900f-1bee-4714-948b-4c83483c611f','300gr'),('a3586e18-1c7f-47d2-a136-192f0c1bf2e8','c9c81003-d819-4733-9af7-ca6178d8b092','300gr'),('47989c7f-d0d2-457a-84d0-4bda16e9be4e','c9c81003-d819-4733-9af7-ca6178d8b092','250gr'),('918acb65-1154-4b6e-aaae-a6bf21e80ce2','94b44554-74b7-4bf9-a726-80e4aa3049e7','300gr'),('a228be2a-d5fa-418d-8d2a-89f49ab31117','94b44554-74b7-4bf9-a726-80e4aa3049e7','250gr'),('b155afd4-0dc6-42bb-b335-ae3807b4f2a1','9a7817c7-1962-402b-b5d4-441b3c539c8b','300gr'),('e96841bd-8a86-48cf-9736-83b70aa08178','9a7817c7-1962-402b-b5d4-441b3c539c8b','250gr'),('97025a07-083f-4e1b-8478-4e9f562e5de8','63d5e381-131f-4c5e-97c9-5d4b4ca7c72f','250gr');
/*!40000 ALTER TABLE `product_sizes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 18:32:07
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `product_delivery_methods`
--

DROP TABLE IF EXISTS `product_delivery_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_delivery_methods` (
  `id` varchar(128) NOT NULL,
  `productId` varchar(256) NOT NULL,
  `deliveryMethod` varchar(256) NOT NULL,
  KEY `product_delivery_methods_ibfk_1_idx` (`productId`),
  CONSTRAINT `product_delivery_methods` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_delivery_methods`
--

LOCK TABLES `product_delivery_methods` WRITE;
/*!40000 ALTER TABLE `product_delivery_methods` DISABLE KEYS */;
INSERT INTO `product_delivery_methods` VALUES ('fccd67da-d525-451c-acc1-caf496be6422','7d7f125b-e6bb-4327-8797-75b6c00d0c74','Dine in'),('ec16e1d2-3028-4ac8-8922-9b4932543663','7d7f125b-e6bb-4327-8797-75b6c00d0c74','Take Away'),('2c0fa578-b6e5-4b68-9d6d-863527508901','da499dfc-5e1f-459b-bcb4-25b0099893f2','Dine in'),('24c3ec19-de20-4b89-9bd8-5d2567112130','da499dfc-5e1f-459b-bcb4-25b0099893f2','Take Away'),('d7662c2f-4e2e-4b23-99ff-cb1b9ce4d92f','da499dfc-5e1f-459b-bcb4-25b0099893f2','Home Delivery'),('2a12c307-5eef-40fb-9f0b-538739dfd8cd','9dd48912-a235-4a85-9be1-7478f173797d','Dine in'),('670465c8-584e-49c3-b6c5-a1e2b40f980f','9dd48912-a235-4a85-9be1-7478f173797d','Take Away'),('7f7f20aa-9c70-4ec5-ac2f-d254db2b9c3a','9dd48912-a235-4a85-9be1-7478f173797d','Home Delivery'),('7e7f9951-d357-43dd-9106-2bcaa5946f13','df9b95ed-51ae-4f94-8ccb-fa95ee114894','Dine in'),('22f5cda8-b348-45f4-9609-25b676c0d331','df9b95ed-51ae-4f94-8ccb-fa95ee114894','Take Away'),('4376cf2c-4473-4ddf-b3d9-63d9117f8533','df9b95ed-51ae-4f94-8ccb-fa95ee114894','Home Delivery'),('155d63d7-4c74-457a-8250-22ad1a532ae7','edc85181-cb4f-4db6-b0dd-9540cd4a19d0','Dine in'),('7106cba4-e243-42ce-9dd9-8d3bee43e788','edc85181-cb4f-4db6-b0dd-9540cd4a19d0','Take Away'),('abb15832-5e86-40c2-af3d-556a474bda8d','edc85181-cb4f-4db6-b0dd-9540cd4a19d0','Home Delivery'),('34d27774-c769-4a98-806c-6de24f8c4ad1','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','Dine in'),('f2f3c92c-1a97-49b3-b051-0f5c28dc8351','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','Take Away'),('bba65320-c9b1-4271-b58d-2b917efc5e94','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','Home Delivery'),('8ad349af-7268-4ed2-863a-84cb0b5c8087','d46b5e0e-3154-4b57-b0f0-b604433b5438','Dine in'),('9beb4197-b54d-4e2c-b5b9-ac77d1861c3e','d46b5e0e-3154-4b57-b0f0-b604433b5438','Take Away'),('afdda2ff-8411-4d84-a9bc-77277a520193','d46b5e0e-3154-4b57-b0f0-b604433b5438','Home Delivery'),('5db96e4f-fbd2-4390-817e-a800c589239c','24bd6cf9-99e5-4e26-9730-66e451ec4d84','Dine in'),('506d83bc-dc17-42ea-b2fc-fd25f2f510e2','24bd6cf9-99e5-4e26-9730-66e451ec4d84','Take Away'),('1c3d43cc-68e9-47d7-b12e-bf2a782ebbcb','24bd6cf9-99e5-4e26-9730-66e451ec4d84','Home Delivery'),('55cdfce1-b62f-4c31-99ab-700f4392a1f3','2f28eb30-a927-44ad-85fd-5ac5d5236495','Dine in'),('f92ced69-eebf-4ae9-b699-67a78e0ac7c9','2f28eb30-a927-44ad-85fd-5ac5d5236495','Take Away'),('521714fe-fcc2-4c0c-ac9f-d935c9861287','2f28eb30-a927-44ad-85fd-5ac5d5236495','Home Delivery'),('ee5c16cc-3b2c-4577-8d7b-1c20135c42ba','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','Dine in'),('52b8bdc3-dee6-4569-8f67-5beb5754cf8f','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','Take Away'),('fae4f4f0-20f5-4842-a1b7-3f736a0613e8','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','Home Delivery'),('48e3b612-d607-4a5d-80a8-dac21b2c0e17','734c6821-9d1f-4120-90a4-c4c1e00517c1','Dine in'),('3ee854f2-5828-4943-8515-67aae9afcb86','734c6821-9d1f-4120-90a4-c4c1e00517c1','Take Away'),('7a515802-f605-4c90-a0a6-3bbe7689535e','734c6821-9d1f-4120-90a4-c4c1e00517c1','Home Delivery'),('b5bc2de3-cb63-421e-ae23-81b11b3b9e7e','7337401c-8308-499c-8650-787888b86825','Dine in'),('cd0c0846-57f3-4f99-a72a-5384f0b7bcc3','7337401c-8308-499c-8650-787888b86825','Take Away'),('bae9e65b-a8a9-4bca-9aeb-22e09a5e96f2','7337401c-8308-499c-8650-787888b86825','Home Delivery'),('38d070a1-bf0c-44d6-ae9f-314baa58fd1f','62504076-315a-4247-82dc-e865d0e6e3a2','Dine in'),('8f116fbe-0893-4091-96c1-edf19debf451','62504076-315a-4247-82dc-e865d0e6e3a2','Take Away'),('71dbf48e-9069-499d-a0d9-6c6af59baa7c','62504076-315a-4247-82dc-e865d0e6e3a2','Home Delivery'),('31240d20-3406-493c-b34e-bb09e4f99469','55fb2bd7-785e-430b-969e-81f2456679b4','Dine in'),('d9b07dc3-c2b2-4ffc-a23b-0a18af5562d8','55fb2bd7-785e-430b-969e-81f2456679b4','Take Away'),('64076609-1bc6-4b73-bd3d-053625919c5f','55fb2bd7-785e-430b-969e-81f2456679b4','Home Delivery'),('bbab8b02-5794-4e05-8152-458bdb44b91d','0c303b69-2b80-4321-b2ef-77b1db4d465f','Dine in'),('4d82fe4c-98a7-4262-8413-0b8303a450e5','0c303b69-2b80-4321-b2ef-77b1db4d465f','Take Away'),('ad724f8a-6577-47e6-805b-f8226367d645','07fb5444-bad1-454c-a170-58f31e9eb424','Dine in'),('29dbadfc-1008-4e21-a5cc-45baffee0764','07fb5444-bad1-454c-a170-58f31e9eb424','Take Away'),('6149757a-f990-4fc4-b0a3-94793d031a89','07fb5444-bad1-454c-a170-58f31e9eb424','Home Delivery'),('65346a9e-20db-450a-afb1-b5b4a3b77b4c','68acf03a-8b22-410f-9d6a-7e801c938b6b','Dine in'),('3d194186-3ffa-4f11-98f6-0c5322ece608','68acf03a-8b22-410f-9d6a-7e801c938b6b','Take Away'),('67072abf-430b-467c-8a48-830a04c075a3','68acf03a-8b22-410f-9d6a-7e801c938b6b','Home Delivery'),('6603f547-2e5d-442e-bb0d-5c7164d6981a','76549b2d-0cb5-4321-8586-ec9d63f510bd','Dine in'),('c8d04ae4-075f-4e5a-a588-8c9cffd09b17','76549b2d-0cb5-4321-8586-ec9d63f510bd','Take Away'),('b9d61761-d0bc-4bcb-a43b-526c8b2e5301','76549b2d-0cb5-4321-8586-ec9d63f510bd','Home Delivery'),('3ccfd61e-50bc-4899-9081-0143f6ba92b3','f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1','Dine in'),('d30345d0-0fd7-4e9f-a2b7-8d1adde53dc9','f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1','Take Away'),('60690a02-f44a-4507-9931-b1efdf5843f7','f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1','Home Delivery'),('8d11bb17-39ff-4cfb-873e-5bc119534bba','a2ecae97-affe-4547-9bd6-5674d28cbf6b','Dine in'),('89ef2a7d-f4fa-4c62-b077-96ebb9a36997','a2ecae97-affe-4547-9bd6-5674d28cbf6b','Take Away'),('edc57c6e-d17b-436b-8d05-a36f7da40533','a2ecae97-affe-4547-9bd6-5674d28cbf6b','Home Delivery'),('2a5c9e32-5e19-46b6-8c10-f044c5d5aa67','9113785a-886e-4d94-8d05-fcd9c136e98e','Dine in'),('72a8d032-c9cd-4f85-8006-c3028e7cc669','9113785a-886e-4d94-8d05-fcd9c136e98e','Take Away'),('4bb58386-8b34-42ee-801d-85710f1fa272','9113785a-886e-4d94-8d05-fcd9c136e98e','Home Delivery'),('1f728e23-1a7a-4b69-9ac7-edc892865b6f','0b08ad0d-8591-48f3-9518-6aa25096c011','Dine in'),('382639ef-50d9-4acb-bc2f-e1c4b3c733a1','83208f20-96ab-4bd1-a176-ce463636bd57','Dine in'),('87f41413-d695-4677-8d55-4e2171a7b3d4','09c423f8-1fb7-4a40-95e0-8ebabe86aac8','Dine in'),('69d844dd-e25f-4217-bfcd-b51bc86dc070','354f7f2a-b87d-4324-bd6d-07f03a669e37','Dine in'),('4ccf6bd3-e643-4c2e-a87c-81631b74cc47','354f7f2a-b87d-4324-bd6d-07f03a669e37','Take Away'),('8d24b403-d7c2-4535-bf97-5f8103a2c0ef','6b3f8ef2-ba10-4119-86ee-58e4495f95e8','Dine in'),('2315c58a-7553-4a27-b4e0-9ba7b5847de2','6b3f8ef2-ba10-4119-86ee-58e4495f95e8','Take Away'),('3aded652-a69e-409c-8b3a-b8c3a935f7c0','03b0900f-1bee-4714-948b-4c83483c611f','Dine in'),('6cd5859f-b2dd-4bb8-8d3c-a29d507a48a3','03b0900f-1bee-4714-948b-4c83483c611f','Take Away'),('b723095d-e145-4fae-a2d7-b90072618cab','c9c81003-d819-4733-9af7-ca6178d8b092','Dine in'),('28ece73b-5098-4827-9d50-cdec89a903e0','c9c81003-d819-4733-9af7-ca6178d8b092','Take Away'),('1c2de987-7b9c-4479-a20d-4206d53318e5','94b44554-74b7-4bf9-a726-80e4aa3049e7','Dine in'),('b26636d5-9c4f-47ee-9b05-2e44808382a1','94b44554-74b7-4bf9-a726-80e4aa3049e7','Take Away'),('0decdec5-32e9-4903-b145-0ac0a756b057','9a7817c7-1962-402b-b5d4-441b3c539c8b','Dine in'),('447e4c08-7f6b-4ba9-9417-13b1ad65f3b2','9a7817c7-1962-402b-b5d4-441b3c539c8b','Take Away'),('82f5d100-227c-4525-8fe7-14274a5d583d','63d5e381-131f-4c5e-97c9-5d4b4ca7c72f','dine in'),('96e2b54f-49b8-498e-a9b0-57ff3546c23d','63d5e381-131f-4c5e-97c9-5d4b4ca7c72f','take away'),('4103e40c-00b2-4193-b363-b0d1a98dc76d','63d5e381-131f-4c5e-97c9-5d4b4ca7c72f','delivery');
/*!40000 ALTER TABLE `product_delivery_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-17 18:32:05
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` varchar(128) NOT NULL,
  `userId` varchar(128) DEFAULT NULL,
  `subTotal` int DEFAULT NULL,
  `tax` int DEFAULT NULL,
  `shipping` int DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  `deliveryMethod` varchar(256) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_ibfk_!_idx` (`userId`),
  CONSTRAINT `carts_ibfk_!` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES ('527a03d8-41f9-453b-b829-1f913097d2f9','4a20b33b-c88b-4d4d-83dd-c012e06c66aa',29125,2500,0,NULL,'Dine In','complete'),('a0956d8f-7be9-4f75-beef-ef7091ab410e','bc1150ca-141d-4ca6-8891-309f585ca2e7',60900,2500,0,NULL,'Dine In','ready'),('aa2b9293-74ba-4e30-ae82-a2eb572d2004','4a20b33b-c88b-4d4d-83dd-c012e06c66aa',44350,2500,0,'Transfer','Dine In','complete');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 18:14:52
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: coffee_shop
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` varchar(128) NOT NULL,
  `cartId` varchar(128) DEFAULT NULL,
  `productId` varchar(128) DEFAULT NULL,
  `productSize` varchar(256) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_ibfk_1_idx` (`cartId`),
  KEY `orders_ibfk_2_idx` (`productId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cartId`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('1dd1c665-b7e9-4930-9692-4223deffecda','aa2b9293-74ba-4e30-ae82-a2eb572d2004','0a6a29e3-88a4-46cf-b8ab-3252182f2a16','XL',33350,2),('57bd08d1-7c4e-4a64-a429-69543202375b','a0956d8f-7be9-4f75-beef-ef7091ab410e','5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2','R',21000,2),('64f8d8ea-7f15-4628-9ef2-61697c1c7df8','a0956d8f-7be9-4f75-beef-ef7091ab410e','63d5e381-131f-4c5e-97c9-5d4b4ca7c72f','250gr',9450,3),('82ca9a4a-373b-45e6-94db-f203985c187b','aa2b9293-74ba-4e30-ae82-a2eb572d2004','07fb5444-bad1-454c-a170-58f31e9eb424','300gr',11000,1),('c42c5b20-f453-4117-a7cc-69b456f37999','a0956d8f-7be9-4f75-beef-ef7091ab410e','7337401c-8308-499c-8650-787888b86825','R',30450,2),('cbe3f5de-46f0-4f96-b25a-acf511e1c0c9','527a03d8-41f9-453b-b829-1f913097d2f9','da499dfc-5e1f-459b-bcb4-25b0099893f2','L',5500,2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 18:14:56
