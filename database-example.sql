-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2021 at 03:05 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_coffee_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` varchar(128) NOT NULL,
  `userId` varchar(128) DEFAULT NULL,
  `subTotal` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `shipping` int(11) DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  `deliveryMethod` varchar(256) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `userId`, `subTotal`, `tax`, `shipping`, `paymentMethod`, `deliveryMethod`, `status`) VALUES
('0816d5bc-2203-4887-92a3-da82f4f926cd', '7e821571-fb00-48bb-8df6-f4e92cbbb1d7', 0, 2500, 0, 'Card', 'Dine In', 'complete'),
('155f91af-959d-4dcd-8791-af576a50f1c6', '7e821571-fb00-48bb-8df6-f4e92cbbb1d7', 0, 2500, 0, '', 'Dine In', 'complete'),
('1ea9cd47-6d20-4bb0-b4bc-c6f5c399b5dd', '7e821571-fb00-48bb-8df6-f4e92cbbb1d7', 0, 2500, 0, 'Bank Account', 'Dine In', 'complete'),
('2ba18f26-2276-4690-8e35-9358216eccd4', '5919bfa0-8141-43dd-8ea6-8efcd6f86f0a', 0, 2500, 0, '', 'Dine In', 'complete'),
('3be49c5e-de9f-4bf1-99d2-9ae89e8d3d29', '7e821571-fb00-48bb-8df6-f4e92cbbb1d7', 0, 2500, 0, 'Bank Account', 'Dine In', 'complete'),
('40512dd6-b62f-438b-9869-805c22e5c89a', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 99000, 2500, 0, 'Bank Account', 'Dine In', 'complete'),
('527a03d8-41f9-453b-b829-1f913097d2f9', '4a20b33b-c88b-4d4d-83dd-c012e06c66aa', 29125, 2500, 0, NULL, 'Dine In', 'complete'),
('57003da9-b692-449a-ac21-c550189c5e02', '4b1422f3-e56a-4999-9809-157d319255fc', 0, 2500, 0, 'Card', 'Dine In', 'complete'),
('63c7ac98-ca6e-460f-ab59-5c46d738c0c4', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 92000, 2500, 0, 'Card', 'Dine In', 'complete'),
('7aee6874-42f4-4224-9a52-31cd0f68e906', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 253000, 2500, 0, 'Card', 'Dine In', 'waiting'),
('8067d4f2-f272-4926-bf03-43b69d5b35ca', '5919bfa0-8141-43dd-8ea6-8efcd6f86f0a', 0, 2500, 0, NULL, 'Dine In', 'ready'),
('831185d8-19d7-4c63-b979-cb79e596a3a4', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 23000, 2500, 0, 'Card', 'Dine In', 'complete'),
('879eac61-46b0-4d6a-9872-37d4b45a4a5a', '5919bfa0-8141-43dd-8ea6-8efcd6f86f0a', 0, 2500, 0, 'Card', 'Dine In', 'complete'),
('9efad530-0b90-4a7a-a497-6cc3e131f8e4', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 0, 2500, 0, 'Cash on Delivery', 'Dine In', 'complete'),
('a0956d8f-7be9-4f75-beef-ef7091ab410e', 'bc1150ca-141d-4ca6-8891-309f585ca2e7', 60900, 2500, 0, NULL, 'Dine In', 'ready'),
('a1ad0d8c-098d-48f6-aa26-cbf56a87826c', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 5750, 2500, 0, '', 'Dine In', 'complete'),
('aa2b9293-74ba-4e30-ae82-a2eb572d2004', '4a20b33b-c88b-4d4d-83dd-c012e06c66aa', 44350, 2500, 0, 'Transfer', 'Dine In', 'complete'),
('bb7251d5-e0bc-4c2d-bfe8-dfb60a2b6920', '7e821571-fb00-48bb-8df6-f4e92cbbb1d7', 0, 2500, 0, 'Bank Account', 'Dine In', 'complete'),
('ce0f8433-ce14-4e89-9bef-0d64252fc51e', '4b1422f3-e56a-4999-9809-157d319255fc', 46000, 2500, 0, 'Card', 'Dine In', 'complete'),
('ddc0f6bb-0e2e-460a-b0a3-53aec3dbeded', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 15750, 2500, 0, 'Bank Account', 'Dine In', 'complete'),
('ef2d26e2-f367-469f-aa19-7be77e8316bd', '5919bfa0-8141-43dd-8ea6-8efcd6f86f0a', 0, 2500, 0, 'Card', 'Dine In', 'complete'),
('efb92215-b6d9-4ad9-a0a7-4772a1fa20e4', 'd127f8b1-3071-468b-b35e-8adc9cd1aa32', 207000, 2500, 0, 'Card', 'Dine In', 'complete');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` varchar(128) NOT NULL,
  `cartId` varchar(128) DEFAULT NULL,
  `productId` varchar(128) DEFAULT NULL,
  `productSize` varchar(256) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `cartId`, `productId`, `productSize`, `price`, `amount`) VALUES
('09131493-1c65-4f61-ac07-43c1867a9625', '63c7ac98-ca6e-460f-ab59-5c46d738c0c4', 'ac4ef66a-4daa-47ea-9a40-a37e9e45baf4', 'XL', 92000, 4),
('09384c5e-69ca-400c-b1ab-c35774749162', '155f91af-959d-4dcd-8791-af576a50f1c6', '68acf03a-8b22-410f-9d6a-7e801c938b6b', '', 0, NULL),
('12ba50b1-c4bc-41e7-b962-f508bdb86537', 'a1ad0d8c-098d-48f6-aa26-cbf56a87826c', 'f9816565-d488-431c-9529-f74bf52daf88', 'XL', 5750, 1),
('1dd1c665-b7e9-4930-9692-4223deffecda', 'aa2b9293-74ba-4e30-ae82-a2eb572d2004', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'XL', 33350, 2),
('35f5f135-56bf-4f3f-9b23-71d078a52855', '2ba18f26-2276-4690-8e35-9358216eccd4', '9113785a-886e-4d94-8d05-fcd9c136e98e', 'L', 0, NULL),
('3b57e9d3-3bf8-44b6-b849-a32d4c2d8098', '3be49c5e-de9f-4bf1-99d2-9ae89e8d3d29', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', '250gr', 0, NULL),
('44bbc42a-dfce-443c-924d-d642fe732a47', '7aee6874-42f4-4224-9a52-31cd0f68e906', '812142f9-e046-4809-8cb0-b0f99d23d909', 'XL', 51750, 3),
('4599df87-de78-4544-9b78-2432caa66747', '3be49c5e-de9f-4bf1-99d2-9ae89e8d3d29', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', '', 0, NULL),
('57bd08d1-7c4e-4a64-a429-69543202375b', 'a0956d8f-7be9-4f75-beef-ef7091ab410e', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'R', 21000, 2),
('64f8d8ea-7f15-4628-9ef2-61697c1c7df8', 'a0956d8f-7be9-4f75-beef-ef7091ab410e', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', '250gr', 9450, 3),
('6bf209e4-3384-45e4-9e65-a2b33b7116e6', '3be49c5e-de9f-4bf1-99d2-9ae89e8d3d29', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', '250gr', 0, NULL),
('77e73f21-1590-4f05-b60c-50619785b886', '3be49c5e-de9f-4bf1-99d2-9ae89e8d3d29', '7d7f125b-e6bb-4327-8797-75b6c00d0c74', '', 0, NULL),
('7820394e-3c7e-47d8-a17c-b585919fa687', 'ddc0f6bb-0e2e-460a-b0a3-53aec3dbeded', '207a21e3-309b-4455-8230-7a1ccbd40c77', '250gr', 15750, 1),
('7bfd79a7-5714-4325-9e3f-48ca7f1f4439', 'ce0f8433-ce14-4e89-9bef-0d64252fc51e', '45556896-5fba-4650-84dc-b9231fcf3397', 'XL', 46000, 2),
('7d33a4f0-5394-40a4-9d20-69769e23249c', '8067d4f2-f272-4926-bf03-43b69d5b35ca', '68acf03a-8b22-410f-9d6a-7e801c938b6b', '250gr', 0, NULL),
('95b73ed1-e4b0-4b14-9747-ccaaf9855869', '831185d8-19d7-4c63-b979-cb79e596a3a4', '0ff84a67-584b-40bb-bdc3-9441826bfedd', 'XL', 23000, 1),
('95d4f775-13cc-4cc6-80b0-2b2083343a2b', '2ba18f26-2276-4690-8e35-9358216eccd4', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'L', 0, NULL),
('ad87c6f7-aafe-42d2-a471-5e0a515a231f', '3be49c5e-de9f-4bf1-99d2-9ae89e8d3d29', '7337401c-8308-499c-8650-787888b86825', 'R', 0, NULL),
('bad1fe47-9525-43f5-ae3b-8a32ebe7cc2c', '57003da9-b692-449a-ac21-c550189c5e02', 'bf034095-b93a-459f-a964-142d01b68ebf', '', 0, 0),
('c1a1c30a-ce28-4202-8cbd-a8889c3b11f1', '7aee6874-42f4-4224-9a52-31cd0f68e906', '433c76ec-f4b4-4d95-83c0-f324b20e21ef', 'XL', 172500, 3),
('c42c5b20-f453-4117-a7cc-69b456f37999', 'a0956d8f-7be9-4f75-beef-ef7091ab410e', '7337401c-8308-499c-8650-787888b86825', 'R', 30450, 2),
('cbe3f5de-46f0-4f96-b25a-acf511e1c0c9', '527a03d8-41f9-453b-b829-1f913097d2f9', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'L', 5500, 2),
('d0cd8ec9-7355-429a-a726-546d03a7f506', '879eac61-46b0-4d6a-9872-37d4b45a4a5a', '03b0900f-1bee-4714-948b-4c83483c611f', '', 0, NULL),
('d2ade2ce-4549-45a5-a7de-921256700fac', '1ea9cd47-6d20-4bb0-b4bc-c6f5c399b5dd', '76549b2d-0cb5-4321-8586-ec9d63f510bd', '', 0, NULL),
('d500feaf-ea4b-4881-9139-81dc8727a070', '0816d5bc-2203-4887-92a3-da82f4f926cd', 'a2ecae97-affe-4547-9bd6-5674d28cbf6b', '', 0, NULL),
('de6a1e9d-1d43-4039-87d2-aaad0e0a676f', '2ba18f26-2276-4690-8e35-9358216eccd4', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', '', 0, NULL),
('e0bf3a43-a4ad-4b2d-b395-5161781f33bd', '7aee6874-42f4-4224-9a52-31cd0f68e906', '4748af4a-3ce2-4cd0-81e3-74c5cc320d2f', 'XL', 28750, 1),
('e1ff5b3d-9d2f-46b0-baad-653538a47646', '9efad530-0b90-4a7a-a497-6cc3e131f8e4', '812142f9-e046-4809-8cb0-b0f99d23d909', '', 0, 2),
('e4580e4b-824f-43ce-8544-a8d7616ac1c0', 'ef2d26e2-f367-469f-aa19-7be77e8316bd', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'XL', 0, NULL),
('ef0dc2bd-4fb7-4bdd-af70-125a5bb429ff', 'bb7251d5-e0bc-4c2d-bfe8-dfb60a2b6920', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'XL', 0, NULL),
('ef94e0f2-f7f6-45be-920a-98dace0a4706', '1ea9cd47-6d20-4bb0-b4bc-c6f5c399b5dd', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', '', 0, NULL),
('efdf0c55-8579-43fd-96cc-2681551eab19', 'efb92215-b6d9-4ad9-a0a7-4772a1fa20e4', 'f7744a37-f9dd-420d-82df-c06a4a37e410', 'XL', 207000, 2),
('f42c883c-e879-4012-8e16-4da0d17daae0', '40512dd6-b62f-438b-9869-805c22e5c89a', '6e730b53-0f95-4eac-894d-49bfcc96c9c5', 'L', 99000, 1),
('ff305896-5ae5-438d-a368-1604a6c7ac09', '2ba18f26-2276-4690-8e35-9358216eccd4', 'a2ecae97-affe-4547-9bd6-5674d28cbf6b', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(128) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `image` varchar(128) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `description`, `image`, `stock`, `category`) VALUES
('0ff84a67-584b-40bb-bdc3-9441826bfedd', 'Small meatballs with chicken meat', 20000, 'Savory meatballs, made from selected ingredients. Made from beef and chicken', '1611807151150-bakso3.jpg', 50, 'Food'),
('1019bbc6-ae00-411e-ae5c-fca9a3414364', 'Crunchy and tasty meatballs', 50000, 'Savory meatballs, made from selected ingredients. Made from beef and chicken', '1611807103072-bakso2.jpg', 50, 'Food'),
('1271e368-6de3-44dc-924c-5758220b8c45', 'Soto with red plates', 25000, 'Delicious soup, cheap and healthy', '1611806738478-soto1.jpeg', 50, 'Food'),
('207a21e3-309b-4455-8230-7a1ccbd40c77', 'Soto Ayam with white plates', 15000, 'Delicious soup, cheap and healthy', '1611806654879-soto5.jpg', 50, 'Food'),
('433c76ec-f4b4-4d95-83c0-f324b20e21ef', 'Soto with lots of tomatoes and sweet and sour taste', 50000, 'Soto is cheap, delicious and healthy. Made from selected spices and of course it is safe for consumption at all ages', '1611806970761-soto4.jpg', 50, 'Food'),
('4748af4a-3ce2-4cd0-81e3-74c5cc320d2f', 'Soto porridge soft and delicious sauce', 25000, 'Soto is cheap, delicious and healthy. Made from selected spices and of course it is safe for consumption at all ages', '1611806924943-soto3.jpg', 50, 'Food'),
('6d2a4be6-0810-4274-a71f-abebc86c1365', 'Special limited edition black coffee', 100000, 'Coffee is made from selected coffee beans, original guys', '1611807417999-coffee5.jpg', 50, 'Drink'),
('6e730b53-0f95-4eac-894d-49bfcc96c9c5', 'Super spicy meatballs', 90000, 'Savory meatballs, made from selected ingredients. Made from beef and chicken', '1611807174761-bakso4.jpg', 50, 'Food'),
('812142f9-e046-4809-8cb0-b0f99d23d909', 'Creamy coffee latte', 15000, 'Coffee is made from selected coffee beans, original guys', '1611807460941-coffee6.jpg', 50, 'Drink'),
('90306d08-d5cd-4afe-9127-a54ce77f0389', 'Special Black Coffee', 5000, 'Coffee is made from selected coffee beans, original guys', '1611807267188-coffe1.jpg', 50, 'Drink'),
('97e10e20-e777-4759-a439-f5d0b2d5dc5e', 'Black coffee with white glass', 20000, 'Coffee is made from selected coffee beans, original guys', '1611812913090-coffee4.jpg', 50, 'Drink'),
('ac4ef66a-4daa-47ea-9a40-a37e9e45baf4', 'Limited edition black coffee', 20000, 'Coffee is made from selected coffee beans, original guys', '1611807350517-coffee3.jpg', 50, 'Drink'),
('c2971e71-73fa-4aeb-b3e8-e35f3d26d44d', 'Jumbo meatballs with children', 90000, 'Savory meatballs, made from selected ingredients. Made from beef and chicken', '1611807069198-bakso1.jpg', 50, 'Food'),
('d513da31-e03f-4306-9a5b-8cd5eb5f49aa', 'Soto shredded chicken a lot', 90000, 'Soto is cheap, delicious and healthy. Made from selected spices and of course it is safe for consumption at all ages', '1611806858719-soto2.jpg', 50, 'Food'),
('f7744a37-f9dd-420d-82df-c06a4a37e410', 'Limited edition milk coffee', 90000, 'Coffee is made from selected coffee beans, original guys', '1611807311056-coffee2.jpg', 50, 'Drink'),
('f9816565-d488-431c-9529-f74bf52daf88', 'Modern coffee', 5000, 'Coffee is made from selected coffee beans, original guys', '1611807498933-coffee7.jpg', 50, 'Drink');

-- --------------------------------------------------------

--
-- Table structure for table `product_delivery_methods`
--

CREATE TABLE `product_delivery_methods` (
  `id` varchar(128) NOT NULL,
  `productId` varchar(256) NOT NULL,
  `deliveryMethod` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_delivery_methods`
--

INSERT INTO `product_delivery_methods` (`id`, `productId`, `deliveryMethod`) VALUES
('fccd67da-d525-451c-acc1-caf496be6422', '7d7f125b-e6bb-4327-8797-75b6c00d0c74', 'Dine in'),
('ec16e1d2-3028-4ac8-8922-9b4932543663', '7d7f125b-e6bb-4327-8797-75b6c00d0c74', 'Take Away'),
('2c0fa578-b6e5-4b68-9d6d-863527508901', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'Dine in'),
('24c3ec19-de20-4b89-9bd8-5d2567112130', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'Take Away'),
('d7662c2f-4e2e-4b23-99ff-cb1b9ce4d92f', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'Home Delivery'),
('2a12c307-5eef-40fb-9f0b-538739dfd8cd', '9dd48912-a235-4a85-9be1-7478f173797d', 'Dine in'),
('670465c8-584e-49c3-b6c5-a1e2b40f980f', '9dd48912-a235-4a85-9be1-7478f173797d', 'Take Away'),
('7f7f20aa-9c70-4ec5-ac2f-d254db2b9c3a', '9dd48912-a235-4a85-9be1-7478f173797d', 'Home Delivery'),
('7e7f9951-d357-43dd-9106-2bcaa5946f13', 'df9b95ed-51ae-4f94-8ccb-fa95ee114894', 'Dine in'),
('22f5cda8-b348-45f4-9609-25b676c0d331', 'df9b95ed-51ae-4f94-8ccb-fa95ee114894', 'Take Away'),
('4376cf2c-4473-4ddf-b3d9-63d9117f8533', 'df9b95ed-51ae-4f94-8ccb-fa95ee114894', 'Home Delivery'),
('155d63d7-4c74-457a-8250-22ad1a532ae7', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'Dine in'),
('7106cba4-e243-42ce-9dd9-8d3bee43e788', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'Take Away'),
('abb15832-5e86-40c2-af3d-556a474bda8d', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'Home Delivery'),
('34d27774-c769-4a98-806c-6de24f8c4ad1', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'Dine in'),
('f2f3c92c-1a97-49b3-b051-0f5c28dc8351', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'Take Away'),
('bba65320-c9b1-4271-b58d-2b917efc5e94', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'Home Delivery'),
('8ad349af-7268-4ed2-863a-84cb0b5c8087', 'd46b5e0e-3154-4b57-b0f0-b604433b5438', 'Dine in'),
('9beb4197-b54d-4e2c-b5b9-ac77d1861c3e', 'd46b5e0e-3154-4b57-b0f0-b604433b5438', 'Take Away'),
('afdda2ff-8411-4d84-a9bc-77277a520193', 'd46b5e0e-3154-4b57-b0f0-b604433b5438', 'Home Delivery'),
('5db96e4f-fbd2-4390-817e-a800c589239c', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'Dine in'),
('506d83bc-dc17-42ea-b2fc-fd25f2f510e2', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'Take Away'),
('1c3d43cc-68e9-47d7-b12e-bf2a782ebbcb', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'Home Delivery'),
('55cdfce1-b62f-4c31-99ab-700f4392a1f3', '2f28eb30-a927-44ad-85fd-5ac5d5236495', 'Dine in'),
('f92ced69-eebf-4ae9-b699-67a78e0ac7c9', '2f28eb30-a927-44ad-85fd-5ac5d5236495', 'Take Away'),
('521714fe-fcc2-4c0c-ac9f-d935c9861287', '2f28eb30-a927-44ad-85fd-5ac5d5236495', 'Home Delivery'),
('ee5c16cc-3b2c-4577-8d7b-1c20135c42ba', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'Dine in'),
('52b8bdc3-dee6-4569-8f67-5beb5754cf8f', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'Take Away'),
('fae4f4f0-20f5-4842-a1b7-3f736a0613e8', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'Home Delivery'),
('48e3b612-d607-4a5d-80a8-dac21b2c0e17', '734c6821-9d1f-4120-90a4-c4c1e00517c1', 'Dine in'),
('3ee854f2-5828-4943-8515-67aae9afcb86', '734c6821-9d1f-4120-90a4-c4c1e00517c1', 'Take Away'),
('7a515802-f605-4c90-a0a6-3bbe7689535e', '734c6821-9d1f-4120-90a4-c4c1e00517c1', 'Home Delivery'),
('b5bc2de3-cb63-421e-ae23-81b11b3b9e7e', '7337401c-8308-499c-8650-787888b86825', 'Dine in'),
('cd0c0846-57f3-4f99-a72a-5384f0b7bcc3', '7337401c-8308-499c-8650-787888b86825', 'Take Away'),
('bae9e65b-a8a9-4bca-9aeb-22e09a5e96f2', '7337401c-8308-499c-8650-787888b86825', 'Home Delivery'),
('38d070a1-bf0c-44d6-ae9f-314baa58fd1f', '62504076-315a-4247-82dc-e865d0e6e3a2', 'Dine in'),
('8f116fbe-0893-4091-96c1-edf19debf451', '62504076-315a-4247-82dc-e865d0e6e3a2', 'Take Away'),
('71dbf48e-9069-499d-a0d9-6c6af59baa7c', '62504076-315a-4247-82dc-e865d0e6e3a2', 'Home Delivery'),
('31240d20-3406-493c-b34e-bb09e4f99469', '55fb2bd7-785e-430b-969e-81f2456679b4', 'Dine in'),
('d9b07dc3-c2b2-4ffc-a23b-0a18af5562d8', '55fb2bd7-785e-430b-969e-81f2456679b4', 'Take Away'),
('64076609-1bc6-4b73-bd3d-053625919c5f', '55fb2bd7-785e-430b-969e-81f2456679b4', 'Home Delivery'),
('bbab8b02-5794-4e05-8152-458bdb44b91d', '0c303b69-2b80-4321-b2ef-77b1db4d465f', 'Dine in'),
('4d82fe4c-98a7-4262-8413-0b8303a450e5', '0c303b69-2b80-4321-b2ef-77b1db4d465f', 'Take Away'),
('65346a9e-20db-450a-afb1-b5b4a3b77b4c', '68acf03a-8b22-410f-9d6a-7e801c938b6b', 'Dine in'),
('3d194186-3ffa-4f11-98f6-0c5322ece608', '68acf03a-8b22-410f-9d6a-7e801c938b6b', 'Take Away'),
('67072abf-430b-467c-8a48-830a04c075a3', '68acf03a-8b22-410f-9d6a-7e801c938b6b', 'Home Delivery'),
('6603f547-2e5d-442e-bb0d-5c7164d6981a', '76549b2d-0cb5-4321-8586-ec9d63f510bd', 'Dine in'),
('c8d04ae4-075f-4e5a-a588-8c9cffd09b17', '76549b2d-0cb5-4321-8586-ec9d63f510bd', 'Take Away'),
('b9d61761-d0bc-4bcb-a43b-526c8b2e5301', '76549b2d-0cb5-4321-8586-ec9d63f510bd', 'Home Delivery'),
('3ccfd61e-50bc-4899-9081-0143f6ba92b3', 'f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1', 'Dine in'),
('d30345d0-0fd7-4e9f-a2b7-8d1adde53dc9', 'f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1', 'Take Away'),
('60690a02-f44a-4507-9931-b1efdf5843f7', 'f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1', 'Home Delivery'),
('8d11bb17-39ff-4cfb-873e-5bc119534bba', 'a2ecae97-affe-4547-9bd6-5674d28cbf6b', 'Dine in'),
('89ef2a7d-f4fa-4c62-b077-96ebb9a36997', 'a2ecae97-affe-4547-9bd6-5674d28cbf6b', 'Take Away'),
('edc57c6e-d17b-436b-8d05-a36f7da40533', 'a2ecae97-affe-4547-9bd6-5674d28cbf6b', 'Home Delivery'),
('2a5c9e32-5e19-46b6-8c10-f044c5d5aa67', '9113785a-886e-4d94-8d05-fcd9c136e98e', 'Dine in'),
('72a8d032-c9cd-4f85-8006-c3028e7cc669', '9113785a-886e-4d94-8d05-fcd9c136e98e', 'Take Away'),
('4bb58386-8b34-42ee-801d-85710f1fa272', '9113785a-886e-4d94-8d05-fcd9c136e98e', 'Home Delivery'),
('1f728e23-1a7a-4b69-9ac7-edc892865b6f', '0b08ad0d-8591-48f3-9518-6aa25096c011', 'Dine in'),
('382639ef-50d9-4acb-bc2f-e1c4b3c733a1', '83208f20-96ab-4bd1-a176-ce463636bd57', 'Dine in'),
('87f41413-d695-4677-8d55-4e2171a7b3d4', '09c423f8-1fb7-4a40-95e0-8ebabe86aac8', 'Dine in'),
('69d844dd-e25f-4217-bfcd-b51bc86dc070', '354f7f2a-b87d-4324-bd6d-07f03a669e37', 'Dine in'),
('4ccf6bd3-e643-4c2e-a87c-81631b74cc47', '354f7f2a-b87d-4324-bd6d-07f03a669e37', 'Take Away'),
('8d24b403-d7c2-4535-bf97-5f8103a2c0ef', '6b3f8ef2-ba10-4119-86ee-58e4495f95e8', 'Dine in'),
('2315c58a-7553-4a27-b4e0-9ba7b5847de2', '6b3f8ef2-ba10-4119-86ee-58e4495f95e8', 'Take Away'),
('3aded652-a69e-409c-8b3a-b8c3a935f7c0', '03b0900f-1bee-4714-948b-4c83483c611f', 'Dine in'),
('6cd5859f-b2dd-4bb8-8d3c-a29d507a48a3', '03b0900f-1bee-4714-948b-4c83483c611f', 'Take Away'),
('b723095d-e145-4fae-a2d7-b90072618cab', 'c9c81003-d819-4733-9af7-ca6178d8b092', 'Dine in'),
('28ece73b-5098-4827-9d50-cdec89a903e0', 'c9c81003-d819-4733-9af7-ca6178d8b092', 'Take Away'),
('1c2de987-7b9c-4479-a20d-4206d53318e5', '94b44554-74b7-4bf9-a726-80e4aa3049e7', 'Dine in'),
('b26636d5-9c4f-47ee-9b05-2e44808382a1', '94b44554-74b7-4bf9-a726-80e4aa3049e7', 'Take Away'),
('0decdec5-32e9-4903-b145-0ac0a756b057', '9a7817c7-1962-402b-b5d4-441b3c539c8b', 'Dine in'),
('447e4c08-7f6b-4ba9-9417-13b1ad65f3b2', '9a7817c7-1962-402b-b5d4-441b3c539c8b', 'Take Away'),
('82f5d100-227c-4525-8fe7-14274a5d583d', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', 'dine in'),
('96e2b54f-49b8-498e-a9b0-57ff3546c23d', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', 'take away'),
('4103e40c-00b2-4193-b363-b0d1a98dc76d', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', 'delivery'),
('97c42e78-e44d-4aff-b2ab-d84db2069545', 'e2ab0f78-ac7a-4cae-925a-f9624de596ad', 'Home Delivery'),
('f95c384a-fb8b-4179-ac4f-94c0b2922b5a', 'e2ab0f78-ac7a-4cae-925a-f9624de596ad', 'Drive In'),
('a6b8d4ba-7706-44bf-afa2-3013923c300a', 'e2ab0f78-ac7a-4cae-925a-f9624de596ad', 'Take Away'),
('2f28450e-45f4-417b-b3c7-8182503904e5', 'e4de76f0-2664-4019-a9d6-228a329f2162', 'Take Away'),
('43a4cc1a-feb0-4700-b73b-6b99ab3d9062', 'd8bc337d-f9ab-4553-8655-d3e4626524c8', 'Drive In'),
('7541bee5-eecd-4bba-94b5-ad13dac2d0fe', 'bf034095-b93a-459f-a964-142d01b68ebf', 'Take Away'),
('13e384b9-d9f2-43d9-aa42-4344ce18d0fe', 'bf034095-b93a-459f-a964-142d01b68ebf', 'Home Delivery'),
('5017c69a-bdbe-4dca-bff4-de0fe7136026', '45556896-5fba-4650-84dc-b9231fcf3397', 'Take Away'),
('be1c0e92-33e7-4a49-b503-a1cde780e8ba', '45556896-5fba-4650-84dc-b9231fcf3397', 'Drive In'),
('e40158a3-7a53-43d9-8780-ba95fe7f058d', '1436ef56-4f85-4bad-9989-9ab39180b1d6', 'Home Delivery'),
('c58410b4-2a51-4ea0-963b-2650f6657bfe', '4b4f50a6-926f-4173-8a90-b4382fd07cbb', 'Take Away'),
('74cc58f7-75d4-41f0-8537-b7fc8c6a1f94', 'b54e860a-a678-4d0c-9965-250eede7fb46', 'Take Away'),
('13040ee0-54e0-4265-8da8-4d1aad8d764b', '207a21e3-309b-4455-8230-7a1ccbd40c77', 'Home Delivery'),
('6e5569b7-9c9e-4e8b-bc39-065941d3c528', '207a21e3-309b-4455-8230-7a1ccbd40c77', 'Drive In'),
('ffe2af4c-e7ef-494d-ac6b-fefcae661de1', '207a21e3-309b-4455-8230-7a1ccbd40c77', 'Take Away'),
('ebcdceb1-717a-4759-958b-96a4ac655229', '1271e368-6de3-44dc-924c-5758220b8c45', 'Take Away'),
('cec22d9f-8111-40bd-9312-dc83a09b3ff2', 'd513da31-e03f-4306-9a5b-8cd5eb5f49aa', 'Drive In'),
('493ed4cd-eb9e-4a6a-86dd-1479d5eb1057', '4748af4a-3ce2-4cd0-81e3-74c5cc320d2f', 'Take Away'),
('1d3aa35a-4f73-4969-b9bb-3327b572ba57', '4748af4a-3ce2-4cd0-81e3-74c5cc320d2f', 'Drive In'),
('6ff3dfcd-33bd-4ae4-952f-33d1dba801c2', '433c76ec-f4b4-4d95-83c0-f324b20e21ef', 'Take Away'),
('65f63955-fe56-4e18-925e-0bcba7e64c61', 'c2971e71-73fa-4aeb-b3e8-e35f3d26d44d', 'Take Away'),
('eddc60fe-cb88-4000-99ec-35853271c2a3', '1019bbc6-ae00-411e-ae5c-fca9a3414364', 'Drive In'),
('819702ca-b2b0-4f22-9e4f-3a420f3985ed', '0ff84a67-584b-40bb-bdc3-9441826bfedd', 'Home Delivery'),
('57a72506-77ec-4ab8-a67a-c308c9abe81e', '6e730b53-0f95-4eac-894d-49bfcc96c9c5', 'Drive In'),
('8cfe18b9-2a8a-4ac6-9aa3-02483d762ad0', '90306d08-d5cd-4afe-9127-a54ce77f0389', 'Take Away'),
('bb46041f-5040-49d5-83d7-0b3b8310faa1', 'f7744a37-f9dd-420d-82df-c06a4a37e410', 'Take Away'),
('cbcde83b-94f3-4dd5-b526-745125e94e6b', 'ac4ef66a-4daa-47ea-9a40-a37e9e45baf4', 'Home Delivery'),
('89941cb5-fd28-405b-8ab1-ea0cc8530ef3', '97e10e20-e777-4759-a439-f5d0b2d5dc5e', 'Home Delivery'),
('77122a5a-fd49-46cb-a8b3-3c05baa12ebb', '6d2a4be6-0810-4274-a71f-abebc86c1365', 'Drive In'),
('9fbf4aac-ac6d-41ce-abf7-9374e51a5d40', '812142f9-e046-4809-8cb0-b0f99d23d909', 'Drive In'),
('039868d8-0758-48c8-b976-7bc0ce0f012a', 'f9816565-d488-431c-9529-f74bf52daf88', 'Drive In'),
('f4860f43-559c-4771-99ad-4d6b0aa89b41', 'f9816565-d488-431c-9529-f74bf52daf88', 'Take Away'),
('9ca9a4f3-5ccb-4446-831e-3798983c3f04', 'f9816565-d488-431c-9529-f74bf52daf88', 'Home Delivery');

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` varchar(128) NOT NULL,
  `productId` varchar(256) NOT NULL,
  `size` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `productId`, `size`) VALUES
('2c92e586-55d2-4253-9006-beb89a158245', '7d7f125b-e6bb-4327-8797-75b6c00d0c74', '250gr'),
('bc996824-3304-4b1c-910a-28ec1beff5d5', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'XL'),
('89b3fa97-9f7f-4436-a1da-63a61829c85f', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'L'),
('dd072426-eeaa-4cf4-9e71-5edadc387088', 'da499dfc-5e1f-459b-bcb4-25b0099893f2', 'R'),
('6623ddc1-6b68-43b4-ada4-d3f021361764', '9dd48912-a235-4a85-9be1-7478f173797d', 'XL'),
('94d12e69-2123-43e0-8783-e4a9d47f3b42', '9dd48912-a235-4a85-9be1-7478f173797d', 'L'),
('bebc6f7a-3343-4a97-8c8c-f7375036a1ca', '9dd48912-a235-4a85-9be1-7478f173797d', 'R'),
('5e2cf971-ff22-4b38-a874-d6c42c42c721', 'df9b95ed-51ae-4f94-8ccb-fa95ee114894', 'XL'),
('8653bc1f-c286-46ed-a953-0d6a85019152', 'df9b95ed-51ae-4f94-8ccb-fa95ee114894', 'L'),
('23596057-6fde-46e2-8bab-33c401759e70', 'df9b95ed-51ae-4f94-8ccb-fa95ee114894', 'R'),
('190ed965-0ac8-4d70-bec3-cfa6f8995d7c', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'XL'),
('590fb53e-e8cd-45e1-b6f5-17502453c8df', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'L'),
('278c9a1b-3e85-424d-98cd-c0903d9dc201', 'edc85181-cb4f-4db6-b0dd-9540cd4a19d0', 'R'),
('c7b516ed-84ef-4939-bc87-8fd3ca99199c', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'XL'),
('aa862274-bd0c-4c04-b666-3172f4360221', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'L'),
('1f713646-2f43-400b-b614-03d68fafc50c', '0a6a29e3-88a4-46cf-b8ab-3252182f2a16', 'R'),
('6b109463-e058-4fe2-8fed-70b5817c7d00', 'd46b5e0e-3154-4b57-b0f0-b604433b5438', 'XL'),
('348cdf83-4cb2-4d27-b5f6-bc0693be635c', 'd46b5e0e-3154-4b57-b0f0-b604433b5438', 'L'),
('56e91a02-0392-484b-87d0-66d8bc693558', 'd46b5e0e-3154-4b57-b0f0-b604433b5438', 'R'),
('efb33d5c-f9ed-4343-bab5-415cacacdfae', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'XL'),
('a59cbfaa-17df-4c79-84cc-de84ac4609d5', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'L'),
('50778462-8211-4c30-bde2-e1ab201ada2f', '24bd6cf9-99e5-4e26-9730-66e451ec4d84', 'R'),
('c2e5e76f-6e39-4463-bf4a-4043fe246c2d', '2f28eb30-a927-44ad-85fd-5ac5d5236495', 'XL'),
('08a41773-9c0b-44b7-93ca-72e4acfc6145', '2f28eb30-a927-44ad-85fd-5ac5d5236495', 'L'),
('5b1df7ff-6048-4fa4-87b3-ef32854a35ab', '2f28eb30-a927-44ad-85fd-5ac5d5236495', 'R'),
('fc147521-fe2c-44f9-b0c0-17c3a12df731', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'XL'),
('689ee362-e8f6-4218-923a-2514c850b24e', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'L'),
('3e01258e-df23-4108-a9ba-afa346b638e1', '5b8b5b68-63a6-4ca4-9e34-ebd8930b67d2', 'R'),
('13e5a19d-10be-401f-a9b6-19bb5358dcff', '734c6821-9d1f-4120-90a4-c4c1e00517c1', 'XL'),
('667fa113-c1c0-4cdb-b036-a08cd93d4574', '734c6821-9d1f-4120-90a4-c4c1e00517c1', 'L'),
('42c0d4c7-b74a-4cef-ad2d-4125e9b8002f', '734c6821-9d1f-4120-90a4-c4c1e00517c1', 'R'),
('024adbc8-686c-4c7b-b578-edfe3cd4b3b1', '7337401c-8308-499c-8650-787888b86825', 'R'),
('d3528faf-2ca2-4a73-b869-79318053c9a4', '62504076-315a-4247-82dc-e865d0e6e3a2', 'L'),
('572db097-9110-435e-b16c-61c08a50d71a', '62504076-315a-4247-82dc-e865d0e6e3a2', 'XL'),
('a135d787-0d62-4d6f-8c7b-13b80ba362a2', '55fb2bd7-785e-430b-969e-81f2456679b4', 'L'),
('ff52ea96-f703-4cac-9b1d-77802cd01b07', '55fb2bd7-785e-430b-969e-81f2456679b4', 'XL'),
('618a6f50-ff28-4e0b-af80-df7e71883fd9', '0c303b69-2b80-4321-b2ef-77b1db4d465f', 'L'),
('fb0eb9e2-7853-484a-9659-a1c1c6056b81', '0c303b69-2b80-4321-b2ef-77b1db4d465f', 'XL'),
('38dcf8c0-c4dc-4b77-889f-2891acae2d9f', '68acf03a-8b22-410f-9d6a-7e801c938b6b', '250gr'),
('023311ad-171d-4115-903f-ce35902ba8c8', '76549b2d-0cb5-4321-8586-ec9d63f510bd', 'L'),
('e2d3d270-dd3a-4d3b-a8ae-b0fc786b9df4', 'f18b1262-acaf-4f95-b8df-9cb5ebd6bfa1', 'L'),
('f72a464a-e30a-406f-8acc-8ab29c4e77a3', 'a2ecae97-affe-4547-9bd6-5674d28cbf6b', 'L'),
('e47ebafc-4b72-4a26-91f8-727669e86e07', '9113785a-886e-4d94-8d05-fcd9c136e98e', 'L'),
('d3aefab0-e69e-456e-9908-f3f1863b721f', '0b08ad0d-8591-48f3-9518-6aa25096c011', '500gr'),
('4f29a789-4d7a-4f2b-8539-b62321504ab1', '83208f20-96ab-4bd1-a176-ce463636bd57', '500gr'),
('8439d386-1a0d-46e2-85b1-43a72d9347fd', '09c423f8-1fb7-4a40-95e0-8ebabe86aac8', '500gr'),
('4924c2f4-cc53-4940-94db-8a98d0f6c6ee', '354f7f2a-b87d-4324-bd6d-07f03a669e37', '300gr'),
('14fa7f20-70e0-4d89-aa0a-5898a2cc578a', '6b3f8ef2-ba10-4119-86ee-58e4495f95e8', '300gr'),
('dd06f40d-3f4d-496a-b1ac-8564843820bb', '03b0900f-1bee-4714-948b-4c83483c611f', '300gr'),
('a3586e18-1c7f-47d2-a136-192f0c1bf2e8', 'c9c81003-d819-4733-9af7-ca6178d8b092', '300gr'),
('47989c7f-d0d2-457a-84d0-4bda16e9be4e', 'c9c81003-d819-4733-9af7-ca6178d8b092', '250gr'),
('918acb65-1154-4b6e-aaae-a6bf21e80ce2', '94b44554-74b7-4bf9-a726-80e4aa3049e7', '300gr'),
('a228be2a-d5fa-418d-8d2a-89f49ab31117', '94b44554-74b7-4bf9-a726-80e4aa3049e7', '250gr'),
('b155afd4-0dc6-42bb-b335-ae3807b4f2a1', '9a7817c7-1962-402b-b5d4-441b3c539c8b', '300gr'),
('e96841bd-8a86-48cf-9736-83b70aa08178', '9a7817c7-1962-402b-b5d4-441b3c539c8b', '250gr'),
('97025a07-083f-4e1b-8478-4e9f562e5de8', '63d5e381-131f-4c5e-97c9-5d4b4ca7c72f', '250gr'),
('e3ff8234-839b-495f-b3fd-3271e27eebd8', 'e2ab0f78-ac7a-4cae-925a-f9624de596ad', 'R'),
('94fb5111-ef9d-4a61-9b08-6ececdbebd6e', 'e2ab0f78-ac7a-4cae-925a-f9624de596ad', 'L'),
('3f0a1867-d3f1-454f-8371-48f984392c94', 'e2ab0f78-ac7a-4cae-925a-f9624de596ad', 'XL'),
('91fefd1d-dac9-4b65-a2f1-d280e04b3b63', 'e4de76f0-2664-4019-a9d6-228a329f2162', 'L'),
('d14fe29f-e698-48f1-ae9b-ca5f3e203cda', 'e4de76f0-2664-4019-a9d6-228a329f2162', 'XL'),
('34912d57-1ffd-4324-8f33-44c1943c8d32', 'd8bc337d-f9ab-4553-8655-d3e4626524c8', 'XL'),
('476d5e9c-18cb-4ca5-bc87-6c3a16669188', 'bf034095-b93a-459f-a964-142d01b68ebf', 'R'),
('b3993869-b064-4949-8803-544f8d3690ba', 'bf034095-b93a-459f-a964-142d01b68ebf', 'L'),
('4b856819-79f6-4373-9beb-2197122538d8', 'bf034095-b93a-459f-a964-142d01b68ebf', 'XL'),
('0a7c388f-7df0-4d73-b42a-cd5606550438', '45556896-5fba-4650-84dc-b9231fcf3397', 'L'),
('1b2142bc-0653-477b-a06c-4fe0832051ed', '45556896-5fba-4650-84dc-b9231fcf3397', 'XL'),
('96059fc6-8fcc-4e3b-9a8e-f32de2661e1a', '45556896-5fba-4650-84dc-b9231fcf3397', '350gr'),
('477dcdd5-ec85-4ded-bac3-5dc8b936c7ab', '1436ef56-4f85-4bad-9989-9ab39180b1d6', 'XL'),
('76f5c0ad-d00b-4ace-ab36-a9ba017a3ce2', '1436ef56-4f85-4bad-9989-9ab39180b1d6', '350gr'),
('28de04de-33fc-4c83-9688-d47ceff0eb2e', '1436ef56-4f85-4bad-9989-9ab39180b1d6', '500gr'),
('ca2c9590-962a-461c-aded-10865fdbd47b', '4b4f50a6-926f-4173-8a90-b4382fd07cbb', 'R'),
('1555e182-4cd7-4fc9-ab29-d289523a5c01', '4b4f50a6-926f-4173-8a90-b4382fd07cbb', '500gr'),
('99b924be-a4be-4d77-a962-08389172a1d3', 'b54e860a-a678-4d0c-9965-250eede7fb46', 'XL'),
('7ff33bbb-53b8-4bf3-b4e4-0c59e2fbf5c2', 'b54e860a-a678-4d0c-9965-250eede7fb46', '350gr'),
('21433818-49d6-4b56-b3d6-ed4e492f87d7', '207a21e3-309b-4455-8230-7a1ccbd40c77', '250gr'),
('55a64698-a788-4067-86a3-429c1e1c3f55', '1271e368-6de3-44dc-924c-5758220b8c45', 'R'),
('201ea52b-0a2a-4130-9f7c-47ca61e3e0fc', '1271e368-6de3-44dc-924c-5758220b8c45', 'XL'),
('45c86912-3ed6-41f7-b759-dc45593665ff', 'd513da31-e03f-4306-9a5b-8cd5eb5f49aa', 'XL'),
('7fa78075-98b6-4365-ae16-b8a87107a9f5', 'd513da31-e03f-4306-9a5b-8cd5eb5f49aa', 'L'),
('427134db-3a31-47f1-85fc-c49c601f2378', 'd513da31-e03f-4306-9a5b-8cd5eb5f49aa', 'R'),
('16d4c5e3-541a-4898-8bc2-dd49f26f80a6', '4748af4a-3ce2-4cd0-81e3-74c5cc320d2f', 'XL'),
('30f799fa-e803-43fa-aee9-06913187c9a1', '4748af4a-3ce2-4cd0-81e3-74c5cc320d2f', 'L'),
('4a61c601-a121-4c97-be16-f8ce72505bc4', '433c76ec-f4b4-4d95-83c0-f324b20e21ef', 'XL'),
('db343ed2-1489-4c47-841f-7dba36b91ca3', 'c2971e71-73fa-4aeb-b3e8-e35f3d26d44d', 'XL'),
('ceed8d75-e4c0-4539-a891-6ea4c0e41750', 'c2971e71-73fa-4aeb-b3e8-e35f3d26d44d', 'L'),
('7f53c3bd-95fa-4994-a127-10cc1c86feb6', 'c2971e71-73fa-4aeb-b3e8-e35f3d26d44d', 'R'),
('de427714-bfa4-4eac-9ec3-5e5eef2a7f1e', '1019bbc6-ae00-411e-ae5c-fca9a3414364', 'R'),
('d44ade54-d986-4b42-9678-6bc36789ab02', '1019bbc6-ae00-411e-ae5c-fca9a3414364', 'L'),
('100c3f41-ac07-47e1-a14c-0f16e8fc6af2', '1019bbc6-ae00-411e-ae5c-fca9a3414364', 'XL'),
('bb46caec-efad-41b3-81e8-923d46827cdf', '0ff84a67-584b-40bb-bdc3-9441826bfedd', 'XL'),
('22a787c5-a785-48cc-b10f-bda4984ff420', '0ff84a67-584b-40bb-bdc3-9441826bfedd', 'L'),
('7b930e72-1dc4-48f1-b3e4-19cd17d93c91', '0ff84a67-584b-40bb-bdc3-9441826bfedd', 'R'),
('512eb933-1f79-462c-a459-c94727d4d8fc', '6e730b53-0f95-4eac-894d-49bfcc96c9c5', 'R'),
('24a05160-bf7c-4b31-bcd1-9b3616813e45', '6e730b53-0f95-4eac-894d-49bfcc96c9c5', 'L'),
('127887ef-52df-460f-aebc-ccfe222b5d18', '6e730b53-0f95-4eac-894d-49bfcc96c9c5', 'XL'),
('6d09d96e-b9da-4075-ac4d-22b8919817b3', '90306d08-d5cd-4afe-9127-a54ce77f0389', 'L'),
('41d6063f-7ef4-4d10-97cc-bef8a0e00325', '90306d08-d5cd-4afe-9127-a54ce77f0389', 'R'),
('4f63eee2-d88b-4671-ab59-e088f8ab001f', '90306d08-d5cd-4afe-9127-a54ce77f0389', 'XL'),
('276dedf9-0220-4389-8e38-2cbf66d85695', 'f7744a37-f9dd-420d-82df-c06a4a37e410', 'R'),
('4f4ff506-8274-4381-8f8d-5f91d9b6cbc4', 'f7744a37-f9dd-420d-82df-c06a4a37e410', 'L'),
('00afe732-f717-437a-9f1a-bc16442e7149', 'f7744a37-f9dd-420d-82df-c06a4a37e410', 'XL'),
('6b2631d4-beda-45ab-95a4-22b28c52b085', 'ac4ef66a-4daa-47ea-9a40-a37e9e45baf4', 'R'),
('1f092b36-301c-46cb-8cdf-26db0eca89e8', 'ac4ef66a-4daa-47ea-9a40-a37e9e45baf4', 'L'),
('d0a7573c-fcc0-401d-969d-b1fda76b7453', 'ac4ef66a-4daa-47ea-9a40-a37e9e45baf4', 'XL'),
('bcaab7d0-5f38-4b8d-9858-13f49fecba5d', '97e10e20-e777-4759-a439-f5d0b2d5dc5e', 'R'),
('ffffe4d4-e31e-4979-88b6-98ebc16ac275', '97e10e20-e777-4759-a439-f5d0b2d5dc5e', 'XL'),
('34635d1b-44de-490b-8db8-f200c7e322a8', '6d2a4be6-0810-4274-a71f-abebc86c1365', 'XL'),
('882468ac-dd87-4f48-9fa9-a939596e01dd', '6d2a4be6-0810-4274-a71f-abebc86c1365', 'R'),
('5b1c037f-4185-42bb-a746-9f211c4d4d30', '812142f9-e046-4809-8cb0-b0f99d23d909', 'R'),
('d1744aff-482f-4704-b00a-084e27c3b2da', '812142f9-e046-4809-8cb0-b0f99d23d909', 'XL'),
('0813cfbf-1fe2-46bf-9a4c-2b2053e9bab2', 'f9816565-d488-431c-9529-f74bf52daf88', 'L'),
('aa529f69-46d7-48d7-9b85-39319f4dee6f', 'f9816565-d488-431c-9529-f74bf52daf88', 'R'),
('4b475309-45ce-4ebb-8ead-d4a23e264643', 'f9816565-d488-431c-9529-f74bf52daf88', 'XL');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

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
  `confirmed` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `displayName`, `firstName`, `lastName`, `avatar`, `email`, `password`, `mobileNumber`, `deliveryAddress`, `birthDate`, `gender`, `role`, `confirmed`) VALUES
('267235d6-1804-40ed-8e31-0baa5dde8ceb', 'Your Name', 'Your', 'Name', 'default.jpg', 'kepo@dot.com', '$2b$10$Nq/TuVRdGGQe8Gc/yT8rk.heAHpnEpZai5WW13Ic0CvHq1JdVQ.qy', '12345678986', '-', NULL, 'Male', 'user', NULL),
('3ed99a86-7b00-4f9d-ae9b-439adf4f17f3', 'Your Name', 'Your', 'Name', 'default.jpg', 'hanifkumara@gmail.com', '$2b$10$rrW8aoAMDu545TEPG8N8ZeN7HBv4TAyQr573sET8oMbfj123IzeEm', '081928392823', '-', NULL, 'Male', 'user', NULL),
('4a20b33b-c88b-4d4d-83dd-c012e06c66aa', 'Your Name', 'Your', 'Name', 'default.jpg', 'syauqeesy@gmail.com', '$2b$10$wWNLBlIHZ9ZLC2kayuph1uyDH.ThEuJ7ZU/5DWK30jJuAonx0mU5q', '081222874281', '-', NULL, 'Male', 'admin', 1),
('4b1422f3-e56a-4999-9809-157d319255fc', 'Hanif Kumara', 'Your', 'Name', '1611167866595-em.JPG', 'hanif@gmail.com', '$2b$10$JqxDhq/X2jYkAs.rrREMROTonBam4G3QueqoIBiX9Wbt.JiqSYSSa', '081234567890', 'Sukoharjo, Sukoharjo Jawa Tengah', '0000-00-00', 'Male', 'user', 1),
('7e821571-fb00-48bb-8df6-f4e92cbbb1d7', 'Your Name', 'Your', 'Name', 'default.jpg', 'fathoni@gmail.com', '$2b$10$srT9Hc6wbV6lWARfiZiruuQyJkA9KTdbQNnpzqa2qaVZW2L3lmnFG', '09123456789', '-', NULL, 'Male', 'user', NULL),
('83bfc00c-c94a-4372-b11e-c796ca1b6fd4', 'Your Name', 'Your', 'Name', 'default.jpg', 'hanip.mutu@gmail.com', '$2b$10$HexlOn0g1/SNbjuVvXmapujzLLbyK0ZB4M0aIN4sE8g.YYf1kuBl6', '012312312312', '-', NULL, 'Male', 'user', 1),
('ac8bbe68-7a91-48a6-9762-b9ff6c24cf5d', 'Your Name', 'Your', 'Name', '1611835850696-coffee4.sjpg', 'hanifkumara00@gmail.com', '$2b$10$BuzEczPFsB/ZTKLUgOOF.Olzlp5O81pcZ7FRC5hTQTt9s/lpRI7Eq', '12398123982', '-', '0000-00-00', 'Male', 'admin', 1),
('d127f8b1-3071-468b-b35e-8adc9cd1aa32', 'Hanif Kumara', 'Hanif', 'Kumara', '1611839734280-01-cat-names-nationalgeographic_1525054.jpg', 'hnflasting@gmail.com', '$2b$10$yryBUkZegwznw/chnbVZZ.7xWszZXmHX/e7p1ZwjlCWs0N3tYr0iq', '08123456789', 'Sukoharjo, Sukoharjo Jawa Tengah', NULL, 'Male', 'user', 1),
('d414679c-0140-46f8-85f1-81eda5bfeb11', 'Your Name', 'Your', 'Name', 'default.jpg', 'defri@gmail.com', '$2b$10$EkPSkxj0XCAKKgPjhlwz8eEQtPYXKUL7TlhiIhMbdM99jylZYvFpW', '09123812382', '-', NULL, 'Male', 'user', NULL),
('e5fe9954-50aa-41e0-a6de-1945ead1054d', 'Your Name', 'Your', 'Name', 'default.jpg', 'hnflasting@gmail.com', '$2b$10$OJ823mNLvhKljXEwpEul6eWyJHlLoiflRGoEDfPUM7yP/CSU6pylK', '089128292382', '-', NULL, 'Male', 'user', 1),
('eb2c58d3-248a-4984-b8c3-dad88f33777c', 'Your Name', 'Your', 'Name', 'default.jpg', 'muhammadrisano@gmail.com', '$2b$10$Q2ueaWcaBO47082zXSvweeM8.DrNsLpzA23ycOoOHHPAbqJCQyKj2', '081231231233', '-', NULL, 'Male', 'user', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_ibfk_!_idx` (`userId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ibfk_1_idx` (`cartId`),
  ADD KEY `orders_ibfk_2_idx` (`productId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_delivery_methods`
--
ALTER TABLE `product_delivery_methods`
  ADD KEY `product_delivery_methods_ibfk_1_idx` (`productId`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD KEY `productsizes_ibfk_1_idx` (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
