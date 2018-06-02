-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2017 at 01:54 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anshul`
--

-- --------------------------------------------------------

--
-- Table structure for table `advt`
--

CREATE TABLE `advt` (
  `advtid` int(11) NOT NULL,
  `pname` text NOT NULL,
  `pimage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advt`
--

INSERT INTO `advt` (`advtid`, `pname`, `pimage`) VALUES
(2, 'Samsung J2', 'pics/9696b238e3c2259f0185f42720484c58s3.jpg'),
(3, 'iphone 8', 'pics/6d7f470ea5334a842c16fc61fb9abdb5a1.jpg'),
(4, 'BlackBerry B1', 'pics/393637b69a5b036106cc4e1b2fb19a35add2.jpg'),
(6, 'LG Q63', 'pics/888faf0e8191897b0f4678777f810210l1.png');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `bid` int(11) NOT NULL,
  `bname` varchar(20) NOT NULL,
  `bimage` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`bid`, `bname`, `bimage`, `description`) VALUES
(3, 'Micromax', 'bicon/logom.jpg', 'Micromax is one of the most reliable brand and it is serving its users from a long time. Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(4, 'Samsung', 'bicon/logos.jpg', 'Samsung is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(6, 'Gionee', 'bicon/logog.jpg', 'Gionee is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(8, 'Apple', 'bicon/logoa.jpg', 'Apple is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(10, 'HTC', 'bicon/dc1bed87036884a73d6bc14841c3a036logo.jpg', 'HTC is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(11, 'SONY', 'bicon/49c3bf9a8d1f55678bac3fda58d97414logo.jpg', 'Sony is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(12, 'Blackberry', 'bicon/07c7cf90a7c03be21004b41955d3ce28logo.jpg', 'Blackberry is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.'),
(14, 'LG', 'bicon/24ad2a917c796507b75e4dcb7ce60d5dlogo.jpg', 'LG is one of the most reliable brand and it is serving its users from a long time.Nam elementum varius dapibus. Sed hendrerit porta felis at sollicitudin. Sed at nunc ac neque semper fermentum. Proin diam sem, semper fermentum eleifend nec, viverra ac est. Sed ultricies, lectus et vehicula imperdiet, felis tortor vehicula turpis, non fermentum enim est et sapien. Nam justo mi, dignissim a euismod ut, pretium sed leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. In viverra porta est, consequat elementum metus tristique a. Mauris tempus tellus a metus dapibus faucibus egestas lectus consectetur. Integer libero dolor, luctus non congue vitae, tempus ut neque. Nunc eleifend lorem quis diam pharetra sagittis. Aliquam ut dolor dui. Fusce dictum facilisis ipsum eu porttitor. In ultricies rhoncus tortor vitae tincidunt.');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mid`, `name`, `email`, `msg`) VALUES
(2, 'anshul', 'qqq@gmail.com', 'hello'),
(3, 'anshul', 'anshul', 'anshul');

-- --------------------------------------------------------

--
-- Table structure for table `orderdb`
--

CREATE TABLE `orderdb` (
  `oid` int(11) NOT NULL,
  `pid` text NOT NULL,
  `uid` text NOT NULL,
  `phno` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdb`
--

INSERT INTO `orderdb` (`oid`, `pid`, `uid`, `phno`, `address`) VALUES
(10, '48', '9999999999', '889999', 'lllllllllllllllllllllllll'),
(11, '63', '9729385343', '555', 'hhhhhhhhhhhhhhhhhh'),
(12, '93', '9999999999', '86569', 'anshul');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `model` text NOT NULL,
  `ram` text NOT NULL,
  `fcam` text NOT NULL,
  `rcam` text NOT NULL,
  `size` text NOT NULL,
  `im` text NOT NULL,
  `em` text NOT NULL,
  `mrp` text NOT NULL,
  `ofp` text NOT NULL,
  `image` text NOT NULL,
  `brand` text NOT NULL,
  `keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `model`, `ram`, `fcam`, `rcam`, `size`, `im`, `em`, `mrp`, `ofp`, `image`, `brand`, `keywords`) VALUES
(12, 'Galaxy s6', '1GB', '5MP', '10MP', '5 inch', '5GB', '32GB', '20000', '12000', 'pics/2224c1a039454e579eb67992c199fa42samsung-galaxy-note-edge-3d-model-3d-model-max-obj.jpg', 'Samsung', 'Galaxy s6,Samsung,Galaxy s6Samsung,Samsung Galaxy s6,Galaxy s6 Samsung,SamsungGalaxy s6'),
(13, 'AS6', '512MB', '8MP', '15MP', '6 inchs', '5GB', '32GB', '12000', '10000', 'pics/5a4f764ad4f0cb4f1601922ea6170ea4m2.jpg', 'Micromax', 'AS6,Micromax,AS6Micromax,Micromax AS6,AS6 Micromax,MicromaxAS6'),
(14, 'iphone 4s', '1GB', '5MP', '10MP', '4 inchs', '5GB', '0GB', '15000', '12000', 'pics/8f4164c0e1f27ab91184cc3901cfcec1a1.jpg', 'Apple', 'iphone 4s,Apple,iphone 4sApple,Apple iphone 4s,iphone 4s Apple,Appleiphone 4s'),
(16, 'iphone 4', '1GB', '5MP', '10MP', '4 inchs', '5GB', '0GB', '13000', '10000', 'pics/4ba086b52815c3fd462111c58b02e19da2.jpg', 'Apple', 'iphone 4,Apple,iphone 4Apple,Apple iphone 4,iphone 4 Apple,Appleiphone 4'),
(17, 'iphone 6', '1GB', '5MP', '16MP', '4 inchs', '16GB', '0GB', '13000', '10000', 'pics/a44f96b1ba6af857ae83f0e8d890bb14a3.jpg', 'Apple', 'iphone 6,Apple,iphone 6Apple,Apple iphone 6,iphone 6 Apple,Appleiphone 6'),
(18, 'iphone 2', '1GB', '5MP', '16MP', '4 inchs', '16GB', '0GB', '19000', '15000', 'pics/bb97ab11f42de5049735d74754072bd5a4.png', 'Apple', 'iphone 2,Apple,iphone 2Apple,Apple iphone 2,iphone 2 Apple,Appleiphone 2'),
(19, 'iphone 3', '1GB', '5MP', '16MP', '4 inchs', '16GB', '0GB', '30000', '25000', 'pics/2f89ef786254b04b97b51461c9db67b5add1.jpg', 'Apple', 'iphone 3,Apple,iphone 3Apple,Apple iphone 3,iphone 3 Apple,Appleiphone 3'),
(20, 'iphone 5S', '2GB', '5MP', '20MP', '6 inchs', '16GB', '0GB', '20000', '15000', 'pics/89583dc6b7c0ee20cdb1db7888c74614add2.png', 'Apple', 'iphone 5S,Apple,iphone 5SApple,Apple iphone 5S,iphone 5S Apple,Appleiphone 5S'),
(21, 'iphone 7', '2GB', '5MP', '20MP', '6 inchs', '16GB', '0GB', '20000', '16000', 'pics/96ae39e48dac7297cdb32ca16ac2e170add3.jpg', 'Apple', 'iphone 7,Apple,iphone 7Apple,Apple iphone 7,iphone 7 Apple,Appleiphone 7'),
(22, 'q63', '1GB', '16MP', '10MP', '4.5 INCHS', '5GB', '32GB', '15000', '14000', 'pics/8d26dd7e1f4d966b5635781de21d3e90add1.jpg', 'Micromax', 'q63,Micromax,q63Micromax,Micromax q63,q63 Micromax,Micromaxq63'),
(23, 'q74', '1GB', '16MP', '10MP', '4.5 INCHS', '5GB', '32GB', '16000', '15000', 'pics/67b99529524837c1b64a4859ca7fc66badd2.jpg', 'Micromax', 'q74,Micromax,q74Micromax,Micromax q74,q74 Micromax,Micromaxq74'),
(24, 'M29', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '16000', '15000', 'pics/0939c1b57f38f8a76663130c03e8e771add3.jpg', 'Micromax', 'M29,Micromax,M29Micromax,Micromax M29,M29 Micromax,MicromaxM29'),
(25, 's60', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '16000', '15000', 'pics/dc12e408b7fe3a32591263917e005528m1.jpg', 'Micromax', 's60,Micromax,s60Micromax,Micromax s60,s60 Micromax,Micromaxs60'),
(26, 'q333', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '20000', '18000', 'pics/245068e294038004cb425e8c090dfda0m2.jpg', 'Micromax', 'q333,Micromax,q333Micromax,Micromax q333,q333 Micromax,Micromaxq333'),
(27, 'q343', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '12000', '10000', 'pics/b107802c7863ab5938f8e41134ddeb91m3.jpg', 'Micromax', 'q343,Micromax,q343Micromax,Micromax q343,q343 Micromax,Micromaxq343'),
(28, 'q65', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '12000', '10000', 'pics/26f9dde9968b618713310b56140dc87fm4.jpg', 'Micromax', 'q65,Micromax,q65Micromax,Micromax q65,q65 Micromax,Micromaxq65'),
(29, 'q690', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '10000', '6000', 'pics/d803818b71007e99c3c5e2a3f6be1c88m5.jpg', 'Micromax', 'q690,Micromax,q690Micromax,Micromax q690,q690 Micromax,Micromaxq690'),
(30, 'q230', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '6000', '4000', 'pics/a45d9f4393599155bb26abd5f2e31bc7m6.jpg', 'Micromax', 'q230,Micromax,q230Micromax,Micromax q230,q230 Micromax,Micromaxq230'),
(31, 'r76', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '6000', '4000', 'pics/df6b66b03e499f2f828f40ceec3c53dfm7.jpg', 'Micromax', 'r76,Micromax,r76Micromax,Micromax r76,r76 Micromax,Micromaxr76'),
(32, 'minis', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '6000', '4000', 'pics/de6d704e071bc075a3c5cffc6b52fc99m8.png', 'Micromax', 'minis,Micromax,minisMicromax,Micromax minis,minis Micromax,Micromaxminis'),
(33, 'minis2', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '8000', '7000', 'pics/dcb46193fd4d3ee4d8a16babad32c94fm9.jpg', 'Micromax', 'minis2,Micromax,minis2Micromax,Micromax minis2,minis2 Micromax,Micromaxminis2'),
(34, 'sl1', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '20000', '19000', 'pics/b10444335f8c5b0a5257626e17e321bcadd1.jpg', 'Samsung', 'sl1,Samsung,sl1Samsung,Samsung sl1,sl1 Samsung,Samsungsl1'),
(35, 'sl2', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '22000', '19000', 'pics/00ce1a027aee8becab99698a9b8e1af3add2.jpg', 'Samsung', 'sl2,Samsung,sl2Samsung,Samsung sl2,sl2 Samsung,Samsungsl2'),
(36, 'sl3', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '15000', '14000', 'pics/13964da029d6203ebafcee8caefb3398add3.jpg', 'Samsung', 'sl3,Samsung,sl3Samsung,Samsung sl3,sl3 Samsung,Samsungsl3'),
(37, 'sl4', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '12000', '11000', 'pics/17aa4effb28bad4ec3ae1c690668fd9cs1.jpg', 'Samsung', 'sl4,Samsung,sl4Samsung,Samsung sl4,sl4 Samsung,Samsungsl4'),
(38, 'sl5', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '15000', '11000', 'pics/affebe5f2db339fd4fa64265300bd702s2.jpg', 'Samsung', 'sl5,Samsung,sl5Samsung,Samsung sl5,sl5 Samsung,Samsungsl5'),
(40, 'sl6', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '16000', '15000', 'pics/4c1cedb63fcd79feed4861866408a477s3.jpg', 'Samsung', 'sl6,Samsung,sl6Samsung,Samsung sl6,sl6 Samsung,Samsungsl6'),
(41, 'sl7', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '16000', '15000', 'pics/93dbcd41652f1ca1381ae04c0ee7498bs4.jpg', 'Samsung', 'sl7,Samsung,sl7Samsung,Samsung sl7,sl7 Samsung,Samsungsl7'),
(42, 'sl8', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '16000', '15000', 'pics/e9a997ff0a45d0327e24450ddf824adbs5.jpg', 'Samsung', 'sl8,Samsung,sl8Samsung,Samsung sl8,sl8 Samsung,Samsungsl8'),
(44, 'sl10', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '17000', '16000', 'pics/1e896ef424ce3b2e7674278c4b35c90as7.jpg', 'Samsung', 'sl10,Samsung,sl10Samsung,Samsung sl10,sl10 Samsung,Samsungsl10'),
(46, 'm11', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '5000', '4000', 'pics/c4ca3e03cddeb459070671f6a107fa5es9.jpg', 'Samsung', 'm11,Samsung,m11Samsung,Samsung m11,m11 Samsung,Samsungm11'),
(47, 'note', '1GB', '12MP', '10MP', '7 INCHS', '5GB', '32GB', '15000', '14000', 'pics/a503ce286152c929113c2a802ea2a527s8.jpg', 'Samsung', 'note,Samsung,noteSamsung,Samsung note,note Samsung,Samsungnote'),
(48, 'P3', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '12000', '10000', 'pics/870f6a9210a4a5d68fd72ebe15454bc93.jpg', 'Gionee', 'P3,Gionee,P3Gionee,Gionee P3,P3 Gionee,GioneeP3'),
(49, 'P4', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '15000', '13000', 'pics/4c8633eb3546cf7d9aafe2b1ca5caa0307gionee-s7-2.jpg', 'Gionee', 'P4,Gionee,P4Gionee,Gionee P4,P4 Gionee,GioneeP4'),
(50, 'P1', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '14000', '13000', 'pics/6f13e7f95f324f6d97e2ae4ffe93c12cf103.png', 'Gionee', 'P1,Gionee,P1Gionee,Gionee P1,P1 Gionee,GioneeP1'),
(51, 'XL1', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '16000', '15000', 'pics/b33160fc759a59170f7214d80a76a94aGionee-Dream-D11.jpg', 'Gionee', 'XL1,Gionee,XL1Gionee,Gionee XL1,XL1 Gionee,GioneeXL1'),
(52, 'XL2', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '17000', '15000', 'pics/4295a990b218ccdb8dedd88bd0681aa9Gionee-F103-Pro-price-in-Nepal.jpg', 'Gionee', 'XL2,Gionee,XL2Gionee,Gionee XL2,XL2 Gionee,GioneeXL2'),
(53, 'XL3', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '27000', '25000', 'pics/cab9f41e7423584dbaa0ebc3f6147f1cGionee-Marathon-M5-mini-1240000.jpg', 'Gionee', 'XL3,Gionee,XL3Gionee,Gionee XL3,XL3 Gionee,GioneeXL3'),
(54, 'XL4', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '22000', '20000', 'pics/37f2c4dbad713343be9dac437d128ff1Gionee-mobile-service-center-Trichy-contact-numbers-300x200.jpg', 'Gionee', 'XL4,Gionee,XL4Gionee,Gionee XL4,XL4 Gionee,GioneeXL4'),
(55, 'Spark', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '22000', '20000', 'pics/48ea53273b298a89f6ade311843d8f86Gionee-P5W-16GB-Gold-SDL946351434-1-bbc33.jpg', 'Gionee', 'Spark,Gionee,SparkGionee,Gionee Spark,Spark Gionee,GioneeSpark'),
(56, 'Spark2', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '32000', '30000', 'pics/8f5f40400718bfc87c9e4daddc19e31agionee-pioneer-p4-dual-sim-android-mobile-phone-black-medium_17cda5503ea03e8500ab9174784487e9.jpg', 'Gionee', 'Spark2,Gionee,Spark2Gionee,Gionee Spark2,Spark2 Gionee,GioneeSpark2'),
(57, 'Mini', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '8000', '7000', 'pics/f8b1bc634435fbfed4790fde0f34f785gionne-mobile.jpg', 'Gionee', 'Mini,Gionee,MiniGionee,Gionee Mini,Mini Gionee,GioneeMini'),
(58, 'Mini2', '1GB', '10MP', '16MP', '5.5 inchs', '16GB', '64GB', '8000', '7000', 'pics/cc44876a50cbcb2128cfadd6bdf2decaimages.jpg', 'Gionee', 'Mini2,Gionee,Mini2Gionee,Gionee Mini2,Mini2 Gionee,GioneeMini2'),
(59, 'Hybride', '1GB', '5MP', '10MP', '7 inchs', '2GB', '32GB', '10000', '9000', 'pics/1e573874d098ebdec997aafa15102b8aadd1.PNG', 'HTC', 'Hybride,HTC,HybrideHTC,HTC Hybride,Hybride HTC,HTCHybride'),
(60, 'Hybride2', '1GB', '5MP', '13MP', '7 inchs', '2GB', '32GB', '12000', '11000', 'pics/9434c8e86adc5093416edc9bace7a2b4add2.jpg', 'HTC', 'Hybride2,HTC,Hybride2HTC,HTC Hybride2,Hybride2 HTC,HTCHybride2'),
(61, 'Hybride3', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '15000', '14000', 'pics/6d343f50b4062183789885a9182866dcadd3.jpg', 'HTC', 'Hybride3,HTC,Hybride3HTC,HTC Hybride3,Hybride3 HTC,HTCHybride3'),
(62, 'Atom', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '13000', '12000', 'pics/c7e404a90e6d45c8537f4c84b0801ecch1.jpg', 'HTC', 'Atom,HTC,AtomHTC,HTC Atom,Atom HTC,HTCAtom'),
(63, 'Atom2', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '23000', '22000', 'pics/92f4c14b804c15d2e9229c77790d9130h2.jpg', 'HTC', 'Atom2,HTC,Atom2HTC,HTC Atom2,Atom2 HTC,HTCAtom2'),
(64, 'Atom3', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '16000', '15000', 'pics/08eb58cadd83a2ca83de5c5d8d1a0494h3.jpg', 'HTC', 'Atom3,HTC,Atom3HTC,HTC Atom3,Atom3 HTC,HTCAtom3'),
(65, 'Atom4', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '19000', '16000', 'pics/e302792f9c3d8ed57fb38a535bebb1beh4.jpg', 'HTC', 'Atom4,HTC,Atom4HTC,HTC Atom4,Atom4 HTC,HTCAtom4'),
(66, 'Z1', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '29000', '26000', 'pics/09d4f9584c36f59dd4d766007afcd04bh5.jpg', 'HTC', 'Z1,HTC,Z1HTC,HTC Z1,Z1 HTC,HTCZ1'),
(67, 'Z2', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '25000', '22000', 'pics/3e29a3a71109e5e411a32d8811275706h6.png', 'HTC', 'Z2,HTC,Z2HTC,HTC Z2,Z2 HTC,HTCZ2'),
(68, 'Z3', '2GB', '5MP', '13MP', '7 inchs', '6GB', '32GB', '35000', '32000', 'pics/0673b9d9264a9410fad151b40f7e111ch7.png', 'HTC', 'Z3,HTC,Z3HTC,HTC Z3,Z3 HTC,HTCZ3'),
(70, 'Z4', '2GB', '5MP', '8MP', '4 inchs', '6GB', '32GB', '9000', '5000', 'pics/1fa3ba45d310c2ca5ac3d8992daa09d9h8.jpg', 'HTC', 'Z4,HTC,Z4HTC,HTC Z4,Z4 HTC,HTCZ4'),
(71, 'Z7', '2GB', '5MP', '8MP', '4 inchs', '6GB', '32GB', '19000', '15000', 'pics/49a92278784c5b6c33e0cf4b9bec6d84h9.jpg', 'HTC', 'Z7,HTC,Z7HTC,HTC Z7,Z7 HTC,HTCZ7'),
(72, 'PRIME', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '10000', '9000', 'pics/9abfc9c1a434a9172753836bcaae2cd6add1.jpg', 'SONY', 'PRIME,SONY,PRIMESONY,SONY PRIME,PRIME SONY,SONYPRIME'),
(73, 'PRIME2', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '9000', '8000', 'pics/9555cd93145def82aa78b4afbb1b1ba4add2.jpg', 'SONY', 'PRIME2,SONY,PRIME2SONY,SONY PRIME2,PRIME2 SONY,SONYPRIME2'),
(74, 'Z1', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '20000', '18000', 'pics/a42629c82b12848fae5434281dd0a57aadd3.jpeg', 'SONY', 'Z1,SONY,Z1SONY,SONY Z1,Z1 SONY,SONYZ1'),
(75, 'Z2', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '15000', '14000', 'pics/e381ea2f81463a0cf6de27a6c41c7a04s1.jpg', 'SONY', 'Z2,SONY,Z2SONY,SONY Z2,Z2 SONY,SONYZ2'),
(76, 'Z3', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '18000', '17000', 'pics/c20101519ac54163285a1e417fae1494s2.jpg', 'SONY', 'Z3,SONY,Z3SONY,SONY Z3,Z3 SONY,SONYZ3'),
(77, 'Z4', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '19000', '17000', 'pics/da514ee3b3acfcdfd7add1d0a2b011bas3.jpg', 'SONY', 'Z4,SONY,Z4SONY,SONY Z4,Z4 SONY,SONYZ4'),
(78, 'NEO1', '1GB', '5MP', '8MP', '6inchs', '5GB', '32GB', '20000', '18000', 'pics/ead278d5fbb8f83844faeaf7040c799ds4.jpg', 'SONY', 'NEO1,SONY,NEO1SONY,SONY NEO1,NEO1 SONY,SONYNEO1'),
(79, 'NEO2', '1GB', '5MP', '8MP', '5inchs', '5GB', '32GB', '10000', '9000', 'pics/39599e514c7dccdff5d3367adddfae93s5.png', 'SONY', 'NEO2,SONY,NEO2SONY,SONY NEO2,NEO2 SONY,SONYNEO2'),
(80, 'NEO3', '1GB', '5MP', '8MP', '5inchs', '5GB', '32GB', '18000', '16000', 'pics/472b661d68a1546965c8a929723e5507s6.jpg', 'SONY', 'NEO3,SONY,NEO3SONY,SONY NEO3,NEO3 SONY,SONYNEO3'),
(81, 'NEO4', '1GB', '5MP', '8MP', '5inchs', '5GB', '32GB', '16000', '15000', 'pics/0249a432112d4e5f5a896b69228c027fs8.jpg', 'SONY', 'NEO4,SONY,NEO4SONY,SONY NEO4,NEO4 SONY,SONYNEO4'),
(82, 'NEO5', '1GB', '5MP', '8MP', '5inchs', '5GB', '32GB', '15500', '15000', 'pics/f8099ec37c8130a42651248491adfec0s9.png', 'SONY', 'NEO5,SONY,NEO5SONY,SONY NEO5,NEO5 SONY,SONYNEO5'),
(83, 'B1', '512MB', '5MP', '8MP', '4.5inchs', '5GB', '32GB', '15000', '13000', 'pics/f2eee7c5225b274f4b9a8073c2939e10add1.jpg', 'Blackberry', 'B1,Blackberry,B1Blackberry,Blackberry B1,B1 Blackberry,BlackberryB1'),
(84, 'B2', '512MB', '5MP', '8MP', '4.5inchs', '5GB', '32GB', '16000', '13000', 'pics/961de401c9a0c35386e3f3b0ed94b30aadd2.jpg', 'Blackberry', 'B2,Blackberry,B2Blackberry,Blackberry B2,B2 Blackberry,BlackberryB2'),
(85, 'B3', '512MB', '5MP', '8MP', '4.5inchs', '5GB', '32GB', '19000', '18000', 'pics/b037b4ce6c54e392ad6351d803a56519add3.jpg', 'Blackberry', 'B3,Blackberry,B3Blackberry,Blackberry B3,B3 Blackberry,BlackberryB3'),
(86, 'B4', '1GB', '5MP', '8MP', '3inchs', '5GB', '32GB', '22000', '18000', 'pics/cb3de960fed5d30863308f6eabf45130b1.jpg', 'Blackberry', 'B4,Blackberry,B4Blackberry,Blackberry B4,B4 Blackberry,BlackberryB4'),
(87, 'B4', '1GB', '5MP', '8MP', '3inchs', '5GB', '32GB', '19000', '18000', 'pics/f00b00682cf97d7679f841717ea59dc8b2.jpg', 'Blackberry', 'B4,Blackberry,B4Blackberry,Blackberry B4,B4 Blackberry,BlackberryB4'),
(88, 'BM1', '1GB', '5MP', '8MP', '3inchs', '5GB', '32GB', '12000', '11000', 'pics/8b47e75aa2a625602a79f4cdd2fdd474b3.jpg', 'Blackberry', 'BM1,Blackberry,BM1Blackberry,Blackberry BM1,BM1 Blackberry,BlackberryBM1'),
(89, 'BM2', '1GB', '5MP', '8MP', '3inchs', '5GB', '32GB', '16000', '14000', 'pics/e037d7c26f746874a64b49b20d90ac48b4.jpg', 'Blackberry', 'BM2,Blackberry,BM2Blackberry,Blackberry BM2,BM2 Blackberry,BlackberryBM2'),
(91, 'PING1', '512MB', '5MP', '16MP', '4.5 inch&#039;s', '5GB', '32GB', '10000', '9000', 'pics/a181377fe1c6fb70c3cfd701289c2bbeadd1.jpg', 'LG', 'PING1,LG,PING1LG,LG PING1,PING1 LG,LGPING1'),
(92, 'Ping2', '1GB', '6MP', '20MP', '6inch&#039;s', '5GB', '32GB', '15000', '13000', 'pics/f5cfb4e2deb0f873057c1d282964a50fadd2.jpg', 'LG', 'Ping2,LG,Ping2LG,LG Ping2,Ping2 LG,LGPing2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `pno` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`pno`, `name`, `password`) VALUES
('9999999999', 'Anshul', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advt`
--
ALTER TABLE `advt`
  ADD PRIMARY KEY (`advtid`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `orderdb`
--
ALTER TABLE `orderdb`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`pno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advt`
--
ALTER TABLE `advt`
  MODIFY `advtid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `orderdb`
--
ALTER TABLE `orderdb`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
