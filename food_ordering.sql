-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2025 at 05:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_ordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `prod_id` int(10) NOT NULL,
  `prod_qty` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `description` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(225) NOT NULL,
  `meta_title` varchar(225) NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 'Traditional-Food', 'traditional-food', 'Traditional food represents the rich history, culture, and culinary heritage of a region, passed down through generations. These dishes are often made using locally sourced ingredients and traditional cooking techniques, reflecting the unique flavors and customs of a community.', 0, 1, '1742205624.jpg', 'Traditional-Food', 'Traditional food represents the rich history, culture, and culinary heritage of a region, passed down through generations.', 'Traditional food represents the rich history, culture, and culinary heritage of a region, passed down through generations.', '2025-03-17 10:00:24'),
(2, 'Korean-Food', 'korean-food', 'Korean cuisine is known for its bold flavors, vibrant colors, and diverse ingredients, creating a perfect balance of taste and nutrition. Traditional Korean meals often feature rice, vegetables, meat, and fermented foods like kimchi, which is a staple in almost every dish', 0, 1, '1742205707.jpg', 'Korean-Food', 'Korean cuisine is known for its bold flavors', 'Korean cuisine is known for its bold flavors', '2025-03-17 10:01:47'),
(3, 'Japanese-Food', 'japanese-food', 'Japanese cuisine is known for its fresh ingredients, delicate flavors, and artistic presentation. It emphasizes balance, seasonality, and natural taste, with a focus on seafood, rice, and vegetables. Popular dishes include sushi (vinegared rice with raw fish).', 0, 1, '1742205780.jpg', 'Japanese-Food', 'Japanese cuisine is known for its fresh ingredients, delicate flavors, and artistic presentation.', 'Japanese cuisine is known for its fresh ingredients, delicate flavors, and artistic presentation.', '2025-03-17 10:03:00'),
(4, 'Chinese-Food', 'chinese-food', 'Chinese cuisine is one of the most diverse and flavorful in the world, known for its bold flavors, aromatic spices, and balanced textures. It varies by region, with famous styles like Cantonese, Sichuan, Hunan, and Shanghainese cuisine.', 0, 1, '1742205843.jpg', 'Chinese-Food', 'Chinese cuisine is one of the most diverse and flavorful in the world.', 'Chinese cuisine is one of the most diverse and flavorful in the world.', '2025-03-17 10:04:03'),
(5, 'Indian-Food', 'Indian-food', 'Indian cuisine is a vibrant and diverse culinary tradition known for its rich spices, bold flavors, and aromatic ingredients. It varies greatly across regions, with North Indian dishes featuring creamy curries and tandoori meats, while South Indian cuisine is famous for its spicy stews, dosa, and coconut-based flavors.', 0, 0, '1742205907.jpg', 'Indian-Food', 'Indian cuisine is a vibrant and diverse culinary tradition known for its rich spices.', 'Indian cuisine is a vibrant and diverse culinary tradition known for its rich spices.', '2025-03-17 10:05:07'),
(6, 'Snacks', 'snacks', 'Snacks are small, flavorful bites enjoyed between meals, offering a quick and satisfying treat. They come in a wide variety, ranging from savory to sweet, crispy to chewy, and healthy to indulgent.', 0, 0, '1742205984.jpg', 'Snacks', 'Snacks are small, flavorful bites enjoyed between meals.', 'Snacks are small, flavorful bites enjoyed between meals.', '2025-03-17 10:06:24'),
(7, 'Drinks', 'drinks', 'Drinks are refreshing beverages enjoyed for hydration, taste, and relaxation. They come in a variety of types, including hot, cold, carbonated, and non-carbonated options.', 0, 0, '1742206122.jpg', 'Drinks', 'Drinks are refreshing beverages enjoyed for hydration, taste, and relaxation.', 'Drinks are refreshing beverages enjoyed for hydration, taste, and relaxation.', '2025-03-17 10:08:42');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_person`
--

CREATE TABLE `delivery_person` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `vehicle_details` varchar(225) NOT NULL,
  `ph_no` varchar(225) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `delivery_person`
--

INSERT INTO `delivery_person` (`id`, `name`, `vehicle_details`, `ph_no`, `status`) VALUES
(3, 'Tester', 'Bike', '5878790', 0);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(5, 'waiferkolar', 'waiferkolar@gmail.com', 'asdf123A!', '2025-03-04 10:57:45', '2025-03-04 10:57:45');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `tracking_no` varchar(225) NOT NULL,
  `user_id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `address` mediumtext NOT NULL,
  `pincode` int(225) NOT NULL,
  `total_price` int(225) NOT NULL,
  `payment_mode` varchar(225) NOT NULL,
  `payment_id` varchar(225) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `comments` varchar(225) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `tracking_no`, `user_id`, `name`, `email`, `phone`, `address`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `comments`, `created_at`) VALUES
(1, 'coder627334', 2, 'Ko Gyi Kyaw', 'kogyikyaw@gmail.com', '1234', 'testing address', 0, 36, 'COD', '', 1, NULL, '2025-03-16 09:28:30'),
(2, 'coder6458432', 2, 'Mg', 'mg@gmail.com', '65432', 'address', 0, 12, 'COD', '', 1, NULL, '2025-03-16 09:48:08'),
(3, 'coder636934', 2, 'Mg', 'mg@gmail.com', '1234', 'address', 0, 24, 'COD', '', 0, NULL, '2025-03-17 01:17:14'),
(4, 'coder6332654', 2, 'Testing', 'testing123@gmail.com', '87654', 'testing address', 0, 14, 'COD', '', 0, NULL, '2025-03-17 01:30:23'),
(5, 'coder74624', 2, 'test', 'testuser@gmail.com', '234', 'yangon', 0, 26, 'COD', '', 0, NULL, '2025-03-17 08:29:27'),
(6, 'coder4787345', 2, 'Ko', 'ko123@gmail.com', '12345', 'mandalay', 0, 84, 'COD', '', 2, NULL, '2025-03-17 09:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(10) NOT NULL,
  `order_id` int(225) NOT NULL,
  `prod_id` int(225) NOT NULL,
  `qty` int(225) NOT NULL,
  `price` int(225) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`) VALUES
(1, 1, 1, 3, 12, '2025-03-16 09:28:30'),
(2, 2, 1, 1, 12, '2025-03-16 09:48:08'),
(3, 3, 1, 2, 12, '2025-03-17 01:17:14'),
(4, 4, 2, 2, 7, '2025-03-17 01:30:23'),
(5, 5, 2, 2, 7, '2025-03-17 08:29:27'),
(6, 5, 1, 1, 12, '2025-03-17 08:29:27'),
(7, 6, 4, 3, 20, '2025-03-17 09:33:43'),
(8, 6, 1, 2, 12, '2025-03-17 09:33:43');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(10) NOT NULL,
  `owner_name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `phone` int(15) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`id`, `owner_name`, `email`, `password`, `phone`, `status`) VALUES
(1, 'Zaw Gyi', 'kozawgyi@gmail.com', '1234', 0, 0),
(3, 'Test', 'test@gamil.com', 'test1234', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `slug` varchar(225) NOT NULL,
  `small_description` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(225) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `meta_title` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keywords` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `small_description`, `description`, `price`, `image`, `qty`, `status`, `trending`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`) VALUES
(1, 1, 'Lat Phat Thoke', 'latphat', 'Laphet Thoke, also known as Burmese Tea Leaf Salad.', 'Laphet Thoke, also known as Burmese Tea Leaf Salad, is one of Myanmar’s most famous and beloved traditional dishes. This unique and flavorful salad is made with fermented tea leaves (laphet), which have a slightly bitter, tangy taste, mixed with crispy fried beans, roasted peanuts, sesame seeds, garlic chips, shredded cabbage, tomatoes, and chili.', 3, '1742206471.jpg', 50, 0, 1, 'Lat Phat Thoke', 'Laphet Thoke, also known as Burmese Tea Leaf Salad, is one of Myanmar’s most famous and beloved traditional dishes. This unique and flavorful salad is made with fermented tea leaves (laphet), which have a slightly bitter, tangy taste, mixed with crispy fried beans, roasted peanuts, sesame seeds, garlic chips, shredded cabbage, tomatoes, and chili.', 'Laphet Thoke, also known as Burmese Tea Leaf Salad, is one of Myanmar’s most famous and beloved traditional dishes. ', '2025-03-17 10:14:31'),
(2, 1, 'Mohinga', 'moginha', 'Mohinga is Myanmar’s national dish.', 'Mohinga is Myanmar’s national dish, a flavorful and comforting rice noodle soup enjoyed across the country, especially as a traditional breakfast. This hearty dish features thin rice noodles served in a rich, aromatic broth made from fish, lemongrass, garlic, onions, and banana stem, creating a unique blend of umami and herbal flavors.', 5, '1742206594.jpg', 100, 0, 1, 'Mohinga', 'Mohinga is Myanmar’s national dish, a flavorful and comforting rice noodle soup enjoyed across the country, especially as a traditional breakfast. This hearty dish features thin rice noodles served in a rich, aromatic broth made from fish, lemongrass, garlic, onions, and banana stem, creating a unique blend of umami and herbal flavors.', 'Mohinga is Myanmar’s national dish.', '2025-03-17 10:16:34'),
(3, 1, 'Nan Gyi Thoke', 'nangyi', 'Nan Gyi Thoke is a popular and flavorful Burmese dish.', 'Nan Gyi Thoke is a popular and flavorful Burmese dish, often referred to as Burmese Thick Noodle Salad. It consists of thick rice noodles mixed with a rich, fragrant chicken or pork curry, giving it a creamy and mildly spicy taste.', 1, '1742206701.jpg', 30, 0, 0, 'Nan Gyi Thoke', 'Nan Gyi Thoke is a popular and flavorful Burmese dish, often referred to as Burmese Thick Noodle Salad. It consists of thick rice noodles mixed with a rich, fragrant chicken or pork curry, giving it a creamy and mildly spicy taste.', 'Nan Gyi Thoke is a popular and flavorful Burmese dish.', '2025-03-17 10:18:21'),
(4, 2, 'Tteokbokki', 'tteokbokki', 'Tteokbokki is a beloved and iconic Korean street food.', 'Tteokbokki is a beloved and iconic Korean street food known for its spicy, sweet, and savory flavors. Made with chewy rice cakes (tteok), this dish is typically simmered in a vibrant red sauce made from gochujang (Korean chili paste), soy sauce, garlic, and a touch of sugar.', 3, '1742206923.jpg', 35, 0, 1, 'Tteokbokki', 'Tteokbokki is a beloved and iconic Korean street food known for its spicy, sweet, and savory flavors. Made with chewy rice cakes (tteok), this dish is typically simmered in a vibrant red sauce made from gochujang (Korean chili paste), soy sauce, garlic, and a touch of sugar.', 'Tteokbokki is a beloved and iconic Korean street food known.', '2025-03-17 10:22:03'),
(5, 2, 'Spam Kimbap Roll', 'SpamKimbap', 'Spam Kimbap is a popular Korean snack.', 'Spam Kimbap is a popular Korean snack and a unique twist on the traditional kimbap, which is a Korean rice roll similar to sushi. The filling of Spam Kimbap consists of fried slices of Spam, which bring a savory, slightly crispy texture, paired with steamed white rice, pickled radish (danmuji), spinach, and sometimes egg.', 6, '1742207093.jpg', 40, 0, 1, 'Spam Kimbap Roll', 'Spam Kimbap is a popular Korean snack and a unique twist on the traditional kimbap, which is a Korean rice roll similar to sushi. The filling of Spam Kimbap consists of fried slices of Spam, which bring a savory, slightly crispy texture, paired with steamed white rice, pickled radish (danmuji), spinach, and sometimes egg.', 'Spam Kimbap is a popular Korean snack and a unique twist on the traditional kimbap, which is a Korean rice roll similar to sushi.', '2025-03-17 10:24:53'),
(6, 2, 'Dumplings', 'dumplings', 'Mandu are traditional Korean dumplings.', 'Mandu are traditional Korean dumplings that are loved for their delicious fillings and delicate wrappers. These dumplings are typically made with a combination of ground meat (often pork or beef), tofu, vegetables, garlic, and seasoning wrapped in a thin dough.', 10, '1742207235.jpg', 50, 0, 0, 'Dumplings', 'Mandu are traditional Korean dumplings that are loved for their delicious fillings and delicate wrappers. These dumplings are typically made with a combination of ground meat (often pork or beef), tofu, vegetables, garlic, and seasoning wrapped in a thin dough.', 'Mandu are traditional Korean dumplings that are loved for their delicious fillings and delicate wrappers. ', '2025-03-17 10:27:15'),
(7, 3, 'Kare Udon', 'Japanese Curry Udon', 'Kare Udon is a comforting and hearty Japanese noodle dish that combines the rich, flavorful elements of curry with the smooth texture of udon noodles.', 'Kare Udon is a comforting and hearty Japanese noodle dish that combines the rich, flavorful elements of curry with the smooth texture of udon noodles. This dish features thick, chewy udon noodles served in a savory, slightly spicy curry broth, made from a blend of Japanese curry roux, vegetables (like onions, carrots, and potatoes), and sometimes meat (typically chicken, pork, or beef). ', 8, '1742207460.jpg', 150, 0, 1, 'Kare Udon', 'Kare Udon is a comforting and hearty Japanese noodle dish that combines the rich, flavorful elements of curry with the smooth texture of udon noodles. This dish features thick, chewy udon noodles served in a savory, slightly spicy curry broth, made from a blend of Japanese curry roux, vegetables (like onions, carrots, and potatoes), and sometimes meat (typically chicken, pork, or beef). ', 'Kare Udon is a comforting and hearty Japanese noodle dish that combines the rich, flavorful elements of curry with the smooth texture of udon noodles.', '2025-03-17 10:31:00'),
(8, 3, 'Easy Dango Recipe', 'EasyDango ', 'Dango is a traditional Japanese sweet dumpling made from glutinous rice flour.', 'Dango is a traditional Japanese sweet dumpling made from glutinous rice flour (shiratamako or mochiko), giving it a soft and chewy texture. This easy dango recipe involves mixing rice flour with water, shaping the dough into small balls, and boiling or steaming them until tender.', 3, '1742260958.jpg', 60, 0, 0, 'Easy Dango Recipe', 'Dango is a traditional Japanese sweet dumpling made from glutinous rice flour (shiratamako or mochiko), giving it a soft and chewy texture. This easy dango recipe involves mixing rice flour with water, shaping the dough into small balls, and boiling or steaming them until tender.', 'Dango is a traditional Japanese sweet dumpling made from glutinous rice flour (shiratamako or mochiko), giving it a soft and chewy texture.', '2025-03-18 01:22:38'),
(9, 3, 'Different Types Of Sushi', 'sushi', 'Sushi is one of Japan’s most iconic and beloved dishes, known for its fresh ingredients, delicate flavors, and artistic presentation.', 'Sushi is one of Japan’s most iconic and beloved dishes, known for its fresh ingredients, delicate flavors, and artistic presentation. It consists of vinegared rice (shari) paired with fresh seafood, vegetables, or other toppings (neta), often wrapped in seaweed (nori) or served as bite-sized pieces.', 12, '1742261183.jpg', 100, 0, 1, 'Different Types Of Sushi', 'Sushi is one of Japan’s most iconic and beloved dishes, known for its fresh ingredients, delicate flavors, and artistic presentation. It consists of vinegared rice (shari) paired with fresh seafood, vegetables, or other toppings (neta), often wrapped in seaweed (nori) or served as bite-sized pieces.', 'Sushi is one of Japan’s most iconic and beloved dishes.', '2025-03-18 01:26:23'),
(10, 3, 'Sashimi', 'sashimi', 'Sashimi is a traditional Japanese delicacy consisting of thinly sliced, high-quality raw seafood or meat, served fresh without rice.', 'Sashimi is a traditional Japanese delicacy consisting of thinly sliced, high-quality raw seafood or meat, served fresh without rice. It highlights the natural flavors, textures, and freshness of ingredients like tuna (maguro), salmon (sake), yellowtail (hamachi), and octopus (tako).', 10, '1742261337.jpg', 50, 0, 1, 'Sashimi', 'Sashimi is a traditional Japanese delicacy consisting of thinly sliced, high-quality raw seafood or meat, served fresh without rice. It highlights the natural flavors, textures, and freshness of ingredients like tuna (maguro), salmon (sake), yellowtail (hamachi), and octopus (tako).', 'Sashimi is a traditional Japanese delicacy consisting of thinly sliced.', '2025-03-18 01:28:57'),
(11, 4, 'Chinese BBQ Pork Steamed Buns', 'buns', 'Chinese buns, known as Baozi (包子), are soft, fluffy steamed buns filled with a variety of savory or sweet ingredients.', 'Chinese buns, known as Baozi (包子), are soft, fluffy steamed buns filled with a variety of savory or sweet ingredients. These buns are a staple of Chinese cuisine, enjoyed as a breakfast item, snack, or dim sum dish. Popular varieties include Char Siu Bao (BBQ pork buns), Sheng Jian Bao (pan-fried pork buns), and Nai Wong Bao (custard-filled buns).', 7, '1742261591.jpg', 150, 0, 1, 'Chinese BBQ Pork Steamed Buns', 'Chinese buns, known as Baozi (包子), are soft, fluffy steamed buns filled with a variety of savory or sweet ingredients. These buns are a staple of Chinese cuisine, enjoyed as a breakfast item, snack, or dim sum dish. Popular varieties include Char Siu Bao (BBQ pork buns), Sheng Jian Bao (pan-fried pork buns), and Nai Wong Bao (custard-filled buns).', 'Chinese buns, known as Baozi (包子), are soft.', '2025-03-18 01:33:11'),
(12, 4, 'Chicken Chow Mein', 'chowmein', 'Chicken Chow Mein is a classic Chinese stir-fried noodle dish known for its savory flavors, crispy or soft noodles, and tender chicken.', 'Chicken Chow Mein is a classic Chinese stir-fried noodle dish known for its savory flavors, crispy or soft noodles, and tender chicken. It consists of wheat noodles stir-fried with marinated chicken, crunchy vegetables (such as cabbage, carrots, and bell peppers), and a flavorful soy-based sauce. ', 8, '1742261736.jpg', 50, 0, 0, 'Chicken Chow Mein', 'Chicken Chow Mein is a classic Chinese stir-fried noodle dish known for its savory flavors, crispy or soft noodles, and tender chicken. It consists of wheat noodles stir-fried with marinated chicken, crunchy vegetables (such as cabbage, carrots, and bell peppers), and a flavorful soy-based sauce. ', 'Chicken Chow Mein is a classic Chinese stir-fried noodle dish.', '2025-03-18 01:35:36'),
(13, 4, 'Braised Pork Belly', 'pork belly', 'Braised Pork Belly, known as Hong Shao Rou (红烧肉) in Chinese cuisine, is a rich, flavorful dish featuring succulent pork belly slow-cooked in a fragrant, caramelized soy-based sauce.', 'Braised Pork Belly, known as Hong Shao Rou (红烧肉) in Chinese cuisine, is a rich, flavorful dish featuring succulent pork belly slow-cooked in a fragrant, caramelized soy-based sauce. This dish is prepared by braising pork belly with soy sauce, sugar, Shaoxing wine, star anise, and ginger, creating a tender, melt-in-your-mouth texture with a glossy, deep red glaze.', 5, '1742261945.jpg', 60, 0, 0, 'Braised Pork Belly', 'Braised Pork Belly, known as Hong Shao Rou (红烧肉) in Chinese cuisine, is a rich, flavorful dish featuring succulent pork belly slow-cooked in a fragrant, caramelized soy-based sauce. This dish is prepared by braising pork belly with soy sauce, sugar, Shaoxing wine, star anise, and ginger, creating a tender, melt-in-your-mouth texture with a glossy, deep red glaze.', 'Braised Pork Belly, known as Hong Shao Rou (红烧肉) in Chinese cuisine.', '2025-03-18 01:39:05'),
(14, 5, 'Crispy Masala Dosa', 'dosa', 'Crispy Masala Dosa is a popular South Indian dish known for its thin, golden-brown, and crunchy texture.', 'Crispy Masala Dosa is a popular South Indian dish known for its thin, golden-brown, and crunchy texture. It is made from a fermented rice and lentil batter, spread thin on a hot griddle, and cooked until crisp. The dosa is then filled with a spiced potato masala, made with boiled potatoes, onions, mustard seeds, curry leaves, and aromatic spices.', 3, '1742262113.jpg', 80, 0, 0, 'Crispy Masala Dosa', 'Crispy Masala Dosa is a popular South Indian dish known for its thin, golden-brown, and crunchy texture. It is made from a fermented rice and lentil batter, spread thin on a hot griddle, and cooked until crisp. The dosa is then filled with a spiced potato masala, made with boiled potatoes, onions, mustard seeds, curry leaves, and aromatic spices.', 'Crispy Masala Dosa is a popular South Indian dish', '2025-03-18 01:41:53'),
(15, 5, 'Golgappa', 'golgappa', 'Golgappa, also known as Pani Puri in many parts of India, is a crispy, hollow puri filled with spicy, tangy, and flavorful water (pani), along with a delicious stuffing of potatoes, chickpeas, and tamarind chutney.', 'Golgappa, also known as Pani Puri in many parts of India, is a crispy, hollow puri filled with spicy, tangy, and flavorful water (pani), along with a delicious stuffing of potatoes, chickpeas, and tamarind chutney. To make golgappa, semolina and flour are kneaded into a dough, rolled out, and deep-fried until crisp and puffed.', 2, '1742262311.jpg', 70, 0, 1, 'Golgappa', 'Golgappa, also known as Pani Puri in many parts of India, is a crispy, hollow puri filled with spicy, tangy, and flavorful water (pani), along with a delicious stuffing of potatoes, chickpeas, and tamarind chutney. To make golgappa, semolina and flour are kneaded into a dough, rolled out, and deep-fried until crisp and puffed.', 'Golgappa, also known as Pani Puri.', '2025-03-18 01:45:11'),
(16, 5, 'Idli Sambar', 'sambar', 'Idli Sambar is a classic South Indian dish that combines soft, fluffy steamed rice cakes (idli) with a flavorful, tangy lentil soup (sambar).', 'Idli Sambar is a classic South Indian dish that combines soft, fluffy steamed rice cakes (idli) with a flavorful, tangy lentil soup (sambar). Idli is made from a fermented batter of rice and urad dal (black gram lentils), giving it a light and spongy texture. Sambar is a spiced lentil stew, cooked with toor dal (pigeon peas), tamarind, vegetables, and a blend of aromatic spices like mustard seeds, curry leaves, and dried red chilies.', 3, '1742262494.jpg', 100, 0, 1, 'Idli Sambar', 'Idli Sambar is a classic South Indian dish that combines soft, fluffy steamed rice cakes (idli) with a flavorful, tangy lentil soup (sambar). Idli is made from a fermented batter of rice and urad dal (black gram lentils), giving it a light and spongy texture. Sambar is a spiced lentil stew, cooked with toor dal (pigeon peas), tamarind, vegetables, and a blend of aromatic spices like mustard seeds, curry leaves, and dried red chilies.', 'Idli Sambar is a classic South Indian dish.', '2025-03-18 01:48:14'),
(17, 6, 'Candy salad', 'candy', 'Candy salad is a fun and colorful dessert salad that combines a variety of sweet treats and fresh fruits to create a delightful, sugary mix.', 'Candy salad is a fun and colorful dessert salad that combines a variety of sweet treats and fresh fruits to create a delightful, sugary mix. This dish typically features a base of chopped fruits such as apples, grapes, and pineapples, combined with a variety of candies like marshmallows, gummy bears, and chocolate pieces.', 4, '1742262728.jpg', 80, 0, 1, 'Candy salad', 'Candy salad is a fun and colorful dessert salad that combines a variety of sweet treats and fresh fruits to create a delightful, sugary mix. This dish typically features a base of chopped fruits such as apples, grapes, and pineapples, combined with a variety of candies like marshmallows, gummy bears, and chocolate pieces.', 'Candy salad is a fun and colorful dessert salad.', '2025-03-18 01:52:08'),
(18, 6, 'French Fries', 'fries', 'French fries, also known as chips in some parts of the world, are a beloved crispy and golden snack made from potatoes cut into thin strips, then deep-fried until perfectly crunchy on the outside and soft on the inside.', 'French fries, also known as chips in some parts of the world, are a beloved crispy and golden snack made from potatoes cut into thin strips, then deep-fried until perfectly crunchy on the outside and soft on the inside. Often seasoned with a pinch of salt, French fries are enjoyed as a side dish or snack and can be paired with ketchup, mayonnaise, or a variety of dips.', 5, '1742263126.png', 60, 0, 0, 'French Fries', 'French fries, also known as chips in some parts of the world, are a beloved crispy and golden snack made from potatoes cut into thin strips, then deep-fried until perfectly crunchy on the outside and soft on the inside. Often seasoned with a pinch of salt, French fries are enjoyed as a side dish or snack and can be paired with ketchup, mayonnaise, or a variety of dips.', 'French fries, also known as chips in some parts of the world.', '2025-03-18 01:58:46'),
(19, 6, 'Pizza', 'pizza', 'Pizza is a classic Italian dish that has become a global favorite, known for its crispy, golden crust topped with rich tomato sauce, melted cheese, and an array of delicious toppings.', 'Pizza is a classic Italian dish that has become a global favorite, known for its crispy, golden crust topped with rich tomato sauce, melted cheese, and an array of delicious toppings. The base is typically made from dough, which is baked to perfection, creating a satisfying balance of chewy and crunchy textures. ', 5, '1742263222.png', 100, 0, 0, 'Pizza', 'Pizza is a classic Italian dish that has become a global favorite, known for its crispy, golden crust topped with rich tomato sauce, melted cheese, and an array of delicious toppings. The base is typically made from dough, which is baked to perfection, creating a satisfying balance of chewy and crunchy textures. ', 'Pizza is a classic Italian dish that has become a global favorite.', '2025-03-18 02:00:22'),
(20, 6, 'Burger', 'burger', 'A burger is a classic and hearty sandwich consisting of a juicy beef patty (or other proteins like chicken, turkey, or plant-based alternatives), served in a soft bun and often layered with a variety of delicious toppings.', 'A burger is a classic and hearty sandwich consisting of a juicy beef patty (or other proteins like chicken, turkey, or plant-based alternatives), served in a soft bun and often layered with a variety of delicious toppings. These may include fresh lettuce, tomato, onions, pickles, cheese, ketchup, mustard, and mayonnaise.', 3, '1742263344.png', 100, 0, 1, 'Burger', 'A burger is a classic and hearty sandwich consisting of a juicy beef patty (or other proteins like chicken, turkey, or plant-based alternatives), served in a soft bun and often layered with a variety of delicious toppings. These may include fresh lettuce, tomato, onions, pickles, cheese, ketchup, mustard, and mayonnaise.', 'A burger is a classic and hearty sandwich.', '2025-03-18 02:02:24'),
(21, 7, 'Mojito', 'mojito', 'The Mojito is a refreshing Cuban cocktail that combines the perfect balance of rum, fresh mint leaves, lime juice, sugar, and soda water. Its bright and tangy flavor, with a hint of sweetness and a refreshing minty kick, makes it a popular choice for warm-weather sipping. ', 'The Mojito is a refreshing Cuban cocktail that combines the perfect balance of rum, fresh mint leaves, lime juice, sugar, and soda water. Its bright and tangy flavor, with a hint of sweetness and a refreshing minty kick, makes it a popular choice for warm-weather sipping. The crushed ice adds an extra chill, while the mint leaves and lime create a lively, aromatic experience with every sip.', 4, '1742263618.jpg', 0, 0, 1, 'Mojito', 'The Mojito is a refreshing Cuban cocktail that combines the perfect balance of rum, fresh mint leaves, lime juice, sugar, and soda water. Its bright and tangy flavor, with a hint of sweetness and a refreshing minty kick, makes it a popular choice for warm-weather sipping. The crushed ice adds an extra chill, while the mint leaves and lime create a lively, aromatic experience with every sip.', 'The Mojito is a refreshing Cuban cocktail.', '2025-03-18 02:06:58'),
(22, 7, 'Brownie Milkshake', 'Milkshake', 'A Brownie Milkshake is a decadent and indulgent dessert drink that combines the rich, fudgy goodness of chocolate brownies with the creamy smoothness of milkshake.', 'A Brownie Milkshake is a decadent and indulgent dessert drink that combines the rich, fudgy goodness of chocolate brownies with the creamy smoothness of milkshake. Blended with vanilla ice cream, milk, and chunks of chocolate brownie, this milkshake delivers the perfect balance of chocolatey sweetness and creamy texture.', 4, '1742263940.jpg', 50, 0, 0, 'Brownie Milkshake', 'A Brownie Milkshake is a decadent and indulgent dessert drink that combines the rich, fudgy goodness of chocolate brownies with the creamy smoothness of milkshake. Blended with vanilla ice cream, milk, and chunks of chocolate brownie, this milkshake delivers the perfect balance of chocolatey sweetness and creamy texture.', 'A Brownie Milkshake is a decadent and indulgent dessert drink that combines the rich, fudgy goodness of chocolate brownies with the creamy smoothness of milkshake.', '2025-03-18 02:12:20'),
(23, 7, 'Strawberry Banana Smoothie', 'strawberry', 'A Strawberry Banana Smoothie is a deliciously refreshing and nutritious drink made with a blend of ripe strawberries, creamy bananas, and a touch of milk or yogurt.', 'A Strawberry Banana Smoothie is a deliciously refreshing and nutritious drink made with a blend of ripe strawberries, creamy bananas, and a touch of milk or yogurt. This smoothie offers a perfect balance of sweet and tangy flavors, with the creamy texture of banana complementing the bright, juicy taste of strawberries.', 5, '1742264026.jpg', 55, 0, 0, 'Strawberry Banana Smoothie', 'A Strawberry Banana Smoothie is a deliciously refreshing and nutritious drink made with a blend of ripe strawberries, creamy bananas, and a touch of milk or yogurt. This smoothie offers a perfect balance of sweet and tangy flavors, with the creamy texture of banana complementing the bright, juicy taste of strawberries.', 'A Strawberry Banana Smoothie is a deliciously refreshing and nutritious drink.', '2025-03-18 02:13:46');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) NOT NULL,
  `owner_id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `address` varchar(225) NOT NULL,
  `phone` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `owner_id`, `name`, `address`, `phone`, `status`) VALUES
(1, 1, 'Pro One Gyi', 'Yangon', 23456, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role_as`, `created_at`) VALUES
(1, 'admin', 'admin123@gmail.com', 9123456, 'admin', 1, '2025-03-12 03:40:56'),
(2, 'Testing', 'testing123@gmail.com', 12345, 'test123@', 0, '2025-03-12 02:13:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_person`
--
ALTER TABLE `delivery_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `delivery_person`
--
ALTER TABLE `delivery_person`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
