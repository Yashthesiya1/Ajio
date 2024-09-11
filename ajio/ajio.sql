-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 11:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ajio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'MENS', 'Apparel And Accessories For Men', '2023-09-22 20:05:46', NULL),
(8, 'WOMENS', ' Relaxed And Comfortable Clothes For Everyday Wear.', '2023-09-22 20:07:37', NULL),
(9, 'KIDS', 'Children Are Naturally Drawn To Visually Appealing Things', '2023-09-22 20:14:15', NULL),
(10, 'BEAUTY', 'cleaning, Beautifying, Promoting Attractiveness Or Changing Its Appearance.\r\n', '2023-09-22 20:16:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(1, 1, '3', 1, '2017-03-07 19:32:57', 'COD', NULL),
(3, 1, '4', 1, '2017-03-10 19:43:04', 'Debit / Credit card', 'Delivered'),
(4, 1, '17', 1, '2017-03-08 16:14:17', 'COD', 'in Process'),
(5, 1, '3', 1, '2017-03-08 19:21:38', 'COD', NULL),
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '2', 1, '2023-09-24 13:50:47', 'COD', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(2, 1, 'Delivered', 'Order Has been delivered', '2017-03-10 19:37:31'),
(3, 3, 'Delivered', 'Product delivered successfully', '2017-03-10 19:43:04'),
(4, 4, 'in Process', 'Product ready for Shipping', '2017-03-10 19:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(24, 7, 13, 'Louis Philippe Sport', 'Louis Philippe', 1184, 1499, '<ul style=\"box-sizing: inherit; list-style: none; margin-left: 0px; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">Burgundy Tshirt for men</li><li style=\"box-sizing: inherit;\">Solid&nbsp;</li><li style=\"box-sizing: inherit;\">Regular length</li><li style=\"box-sizing: inherit;\">Polo collar</li><li style=\"box-sizing: inherit;\">Short, regular sleeves</li><li style=\"box-sizing: inherit;\">Knitted cotton fabric</li><li style=\"box-sizing: inherit;\">Button closure</li></ul>', 'WhatsApp Image 2023-09-25 at 02.19.25 (1).jpeg', 'WhatsApp Image 2023-09-25 at 02.19.25 (2).jpeg', 'WhatsApp Image 2023-09-25 at 02.19.25.jpeg', 0, 'In Stock', '2023-09-24 20:54:12', NULL),
(25, 7, 13, 'Printed Collar Pure Cotton Polo Shirt', 'U.S. Polo Assn.', 1313, 1899, '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;\"></p><ul style=\"box-sizing: inherit; list-style: none; margin-left: 0px;\"><li style=\"box-sizing: inherit;\">White t-shirt for men</li><li style=\"box-sizing: inherit;\">Solid</li><li style=\"box-sizing: inherit;\">Regular length</li><li style=\"box-sizing: inherit;\">Polo collar</li><li style=\"box-sizing: inherit;\">Short, regular sleeves</li><li style=\"box-sizing: inherit;\">Knitted cotton fabric</li><li style=\"box-sizing: inherit;\">Button closure</li></ul></div>', 'WhatsApp Image 2023-09-25 at 02.28.00.jpeg', 'WhatsApp Image 2023-09-25 at 02.28.01 (1).jpeg', 'WhatsApp Image 2023-09-25 at 02.28.01.jpeg', 75, 'In Stock', '2023-09-24 21:00:18', NULL),
(26, 7, 13, 'The Lifestyle Co Men Green Pure Cotton Solid Mandarin Collar T-shirt', 'Roadster', 1133, 1999, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Green solid T-shirt, has a mandarin collar, button closure, and short sleeves</span><br>', 'WhatsApp Image 2023-09-25 at 02.33.14.jpeg', 'WhatsApp Image 2023-09-25 at 02.33.15.jpeg', 'WhatsApp Image 2023-09-25 at 02.33.32.jpeg', 0, 'In Stock', '2023-09-24 21:04:22', NULL),
(27, 7, 13, 'Typography Printed Football Real Madrid Slim Fit Football T-shirt', 'ADIDAS', 4522, 5299, '<ul style=\"box-sizing: inherit; list-style: none; margin-left: 0px; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">White Football Tshirt for men</li><li style=\"box-sizing: inherit;\">Typography printed</li><li style=\"box-sizing: inherit;\">Regular length</li><li style=\"box-sizing: inherit;\">V-neck</li><li style=\"box-sizing: inherit;\">Short, raglan sleeves</li><li style=\"box-sizing: inherit;\">Knitted polyester fabric</li><li></li></ul><span style=\"box-sizing: inherit; font-weight: 700; display: inline-block; margin-top: 16px; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"></span>', 'WhatsApp Image 2023-09-25 at 02.37.13.jpeg', 'WhatsApp Image 2023-09-25 at 02.37.13.jpeg', 'WhatsApp Image 2023-09-25 at 02.37.14.jpeg', 0, 'In Stock', '2023-09-24 21:07:57', NULL),
(28, 7, 13, 'Men Maroon Solid Polo Collar T-shirt', 'Roadster', 499, 999, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Maroon solid T-shirt, has a polo collar, short sleeves</span><br>', 'WhatsApp Image 2023-09-25 at 02.40.23.jpeg', 'WhatsApp Image 2023-09-25 at 02.40.24 (1).jpeg', 'WhatsApp Image 2023-09-25 at 02.40.24.jpeg', 75, 'In Stock', '2023-09-24 21:11:16', NULL),
(29, 7, 14, 'Pure Cotton Self Checked Slim Fit Opaque Formal Shirt', 'Louis Philippe', 2599, 4799, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Blue textured self design opaque Formal shirt ,has a spread collar, button placket, 1 patch pocket, long regular sleeves, straight hem</span><br>', 'WhatsApp Image 2023-09-25 at 02.45.49.jpeg', 'WhatsApp Image 2023-09-25 at 02.45.50 (1).jpeg', 'WhatsApp Image 2023-09-25 at 02.45.50.jpeg', 100, 'In Stock', '2023-09-24 21:16:41', NULL),
(30, 7, 14, 'Pure Cotton Slim Fit Formal Shirt', 'Raymond', 1503, 2599, '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;\">Burgundy solid opaque formal shirt, has a spread collar, button placket, one patch pocket, long regular sleeves, and curved hem</p><div><br></div></div><div class=\"pdp-sizeFitDesc\" style=\"box-sizing: inherit; border: none; margin-top: 12px; color: rgb(0, 0, 0); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"></div>', 'WhatsApp Image 2023-09-25 at 02.50.02.jpeg', 'WhatsApp Image 2023-09-25 at 02.50.02.jpeg', 'WhatsApp Image 2023-09-25 at 02.50.18.jpeg', 100, 'In Stock', '2023-09-24 21:21:20', NULL),
(31, 7, 14, 'Pure Cotton Custom Striped Formal Shirt', 'Van Heusen', 1633, 2599, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Blue vertical&nbsp; striped opaque Formal shirt ,has a spread collar, button placket, 1 patch pocket, long regular sleeves, straight hem</span><br>', 'WhatsApp Image 2023-09-25 at 02.54.09.jpeg', 'WhatsApp Image 2023-09-25 at 02.54.11.jpeg', 'WhatsApp Image 2023-09-25 at 02.54.14.jpeg', 100, 'In Stock', '2023-09-24 21:24:53', NULL),
(32, 7, 14, 'Slim Fit Striped Formal Shirt', 'Peter England', 2633, 4599, '<ul style=\"box-sizing: inherit; list-style: none; margin-left: 0px; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"box-sizing: inherit;\">Navy blue vertical stripes opaque Formal shirt</li><li style=\"box-sizing: inherit;\">Has a cutaway collar</li><li style=\"box-sizing: inherit;\">Button placket</li><li style=\"box-sizing: inherit;\">1 patch pocket</li><li style=\"box-sizing: inherit;\">Long regular sleeves</li><li style=\"box-sizing: inherit;\">Curved hem</li></ul>', 'WhatsApp Image 2023-09-25 at 02.58.05.jpeg', 'WhatsApp Image 2023-09-25 at 02.58.06 (1).jpeg', 'WhatsApp Image 2023-09-25 at 02.58.06.jpeg', 25, 'In Stock', '2023-09-24 21:29:27', NULL),
(33, 7, 15, 'Relaxed Fit Sweatshirt', 'H&M', 1199, 2999, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Top in sweatshirt fabric made from a cotton blend. Relaxed fit with dropped shoulders and ribbing around the neckline, cuffs and hem. Soft brushed inside.</span><br>', 'WhatsApp Image 2023-09-26 at 02.10.23.jpeg', 'WhatsApp Image 2023-09-26 at 02.10.23 (2).jpeg', 'WhatsApp Image 2023-09-26 at 02.10.23.jpeg', 0, 'In Stock', '2023-09-25 20:41:15', NULL),
(34, 7, 15, 'Embroidered Brand Logo Loose Fit NSW CRW FLC HWYWT NCPS Sweatshirt', 'Nike', 5933, 6999, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">This classic crew gives you minimalist retro style with optimal warmth. Smooth on the outside and plush on the inside, our heavyweight brushed fleece helps keep you supremely cozy with thick, structured fabric for a premium look.</span><br>', 'WhatsApp Image 2023-09-26 at 02.13.36.jpeg', 'WhatsApp Image 2023-09-26 at 02.13.36.jpeg', 'WhatsApp Image 2023-09-26 at 02.13.37.jpeg', 100, 'In Stock', '2023-09-25 20:44:20', NULL),
(35, 7, 15, 'Men Navy Blue Logo Printed Front-Open Hooded Track Sweatshirt', 'Puma', 1799, 3599, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">PRODUCT DESIGN DETAILS : Regular fit</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Side pockets for convenient storage solutions</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Full-zip closure</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Jersey-lined hood with drawcords for customised comfort</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Ribbed cuffs and hem</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Some styles feature PUMA No.</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">1 Logo at left chest</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Some styles feature PUMA Cat Logo at left chest</span><br style=\"box-sizing: inherit; color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Cotton and recycled polyester</span><br>', 'WhatsApp Image 2023-09-26 at 02.16.46.jpeg', 'WhatsApp Image 2023-09-26 at 02.16.46 (2).jpeg', 'WhatsApp Image 2023-09-26 at 02.16.46.jpeg', 0, 'In Stock', '2023-09-25 20:47:38', NULL),
(36, 7, 16, 'Men Navy Blue & Off White Slim Fit Printed Casual Shirt', 'HERE&NOW', 1665, 2999, '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: medium;\"><p class=\"pdp-product-description-content\" style=\"box-sizing: inherit; color: rgb(40, 44, 63); line-height: 1.4; font-size: 16px; margin-top: 12px; width: 491px;\">Men Navy blue &amp; Off White abstract printed opaque Casual shirt ,has a mandarin collar, button placket, short regular sleeves, curved hem</p></div>', 'WhatsApp Image 2023-09-26 at 02.21.40.jpeg', 'WhatsApp Image 2023-09-26 at 02.21.40 (2).jpeg', 'WhatsApp Image 2023-09-26 at 02.21.40.jpeg', 0, 'In Stock', '2023-09-25 20:52:36', NULL),
(37, 7, 16, 'Men Blue Slim Fit Windowpane Checked Casual Shirt', 'Dennis Lingo', 1999, 4622, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Blue windowpane checks checked opaque Casual shirt ,has a spread collar, button placket , long regular sleeves, curved hem</span><br>', 'WhatsApp Image 2023-09-26 at 02.25.02.jpeg', 'WhatsApp Image 2023-09-26 at 02.25.02 (2).jpeg', 'WhatsApp Image 2023-09-26 at 02.25.02.jpeg', 75, 'In Stock', '2023-09-25 20:55:47', NULL),
(38, 7, 16, 'Men Black & White Checked Pure Cotton Casual Sustainable Shirt', 'Roadster', 1166, 1999, '<span style=\"color: rgb(40, 44, 63); font-family: Assistant, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 16px;\">Black and white checked casual shirt, has a mandarin collar, long sleeves, curved hem</span><br>', 'WhatsApp Image 2023-09-26 at 02.28.47.jpeg', 'WhatsApp Image 2023-09-26 at 02.28.47.jpeg', 'WhatsApp Image 2023-09-26 at 02.28.48.jpeg', 0, 'In Stock', '2023-09-25 20:59:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'T-Shirts', '2023-09-22 20:21:49', NULL),
(14, 7, 'Formal Shirts ', '2023-09-22 20:22:16', '23-09-2023 01:52:57 AM'),
(15, 7, 'Sweatshirts ', '2023-09-22 20:22:46', NULL),
(16, 7, 'Casual Shirts', '2023-09-22 20:23:41', NULL),
(17, 8, 'Kurtis', '2023-09-22 20:24:44', '23-09-2023 01:54:57 AM'),
(18, 8, 'Ethnic Tops', '2023-09-22 20:25:33', NULL),
(19, 8, 'Sarees', '2023-09-22 20:25:58', NULL),
(20, 8, 'Ethnic Wear', '2023-09-22 20:26:19', NULL),
(21, 9, 'T-shirts', '2023-09-22 20:27:12', NULL),
(22, 9, 'Shorts', '2023-09-22 20:27:35', NULL),
(23, 9, 'Shirts', '2023-09-22 20:27:56', NULL),
(24, 9, 'Track Pants', '2023-09-22 20:28:30', NULL),
(25, 10, 'Face Moisturisers', '2023-09-22 20:29:21', NULL),
(26, 10, 'Sunscreen', '2023-09-22 20:29:54', NULL),
(27, 10, 'Shampoo', '2023-09-22 20:30:38', NULL),
(28, 10, 'Perfumes', '2023-09-22 20:31:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 11:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 15:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 18:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 18:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 18:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 18:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 12:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 18:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 19:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 17:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 01:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 09:30:40', '', 1),
(24, 'samreshadhikari1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-09-20 19:59:08', NULL, 1),
(25, 'samreshadhikari1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-09-21 20:46:00', NULL, 1),
(26, 'samreshadhikari1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-09-24 13:50:13', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(4, 'SAMRESH ADHIKARI', 'samreshadhikari1@gmail.com', 8849307209, 'e10adc3949ba59abbe56e057f20f883e', 'RAJKOT GUJARAT', 'GUJARAT', 'RAJKOT', 360001, 'RAJKOT GUJARAT', 'RAJKOT GUJARAT', 'RAJKOT', 360001, '2023-09-20 19:58:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
