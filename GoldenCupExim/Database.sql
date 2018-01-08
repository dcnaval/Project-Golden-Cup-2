-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2018 at 09:19 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aa2000`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset_archive`
--

CREATE TABLE `asset_archive` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_archive`
--

INSERT INTO `asset_archive` (`productID`, `name`, `price`, `image`, `details`, `quantity`, `date_created`) VALUES
(1, 'Professional Standard Box Camera ', 8000, 'products/1.JPG', 'Sensor Type: 1/3 Sony High Resolution CCD Chipset\r\n\r\n\r\n\r\nSystem of Signal: NTSC\r\n\r\n\r\n\r\nHorizontal Resolution: 420 TV Lines\r\n\r\n\r\n\r\nOperating Temp: -10? C-50?C\r\n\r\n\r\n\r\nIllumination: 1.0Lux @ F1.2\r\n\r\n\r\n\r\n', 95, 'August 5, 2015 11:34:pm ');

-- --------------------------------------------------------

--
-- Table structure for table `asset_depreciation`
--

CREATE TABLE `asset_depreciation` (
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `salvage_val` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `depmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_depreciation`
--

INSERT INTO `asset_depreciation` (`item_id`, `price`, `salvage_val`, `years`, `depmed`) VALUES
(1, 20000, 500, 5, 2),
(2, 15000, 200, 5, 1),
(3, 1500, 200, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `audit_trail`
--

CREATE TABLE `audit_trail` (
  `KeyID` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit_trail`
--

INSERT INTO `audit_trail` (`KeyID`, `ID`, `User`, `Date_time`, `Outcome`, `Detail`) VALUES
(29, 4, 'ginopiol', 'December 6, 2017 12:03:pm  ', 'Updated', 'name=Konica Minolta, detail=Updated, date=December 6, 2017 12:03:pm  , place=MANDALUYONG where announcementID=1 Updated'),
(30, 4, 'ginopiol', 'December 6, 2017 12:09:pm  ', 'Deleted', 'CustomerID 1 Name Richmon Sabello Message was deleted!'),
(31, 4, 'ginopiol', 'December 6, 2017 2:37:pm  ', 'Updated', 'ID= 12, name= Konica, price= Php 12,222.00, details= Updated, quantity= 23 was Updated'),
(32, 1, 'gino', 'December 6, 2017 3:26:pm  ', 'Inserted', 'Name= Ricoh MP 5000 was added to product '),
(33, 1, 'gino', 'December 6, 2017 3:28:pm  ', 'Deleted', 'Product ID 12 was permanently deleted!'),
(34, 1, 'gino', 'December 6, 2017 3:28:pm  ', 'Updated', 'name=Konica Minolta, detail=Updated, date=December 6, 2017 3:28:pm  , place=MANDALUYONG where announcementID=1 Updated'),
(35, 1, 'gino', 'December 6, 2017 3:35:pm  ', 'Inserted', 'Name= Ricoh MP 4500 was added to product '),
(36, 1, 'gino', 'December 6, 2017 3:38:pm  ', 'Inserted', 'Name= Canon Image Runner 4570 was added to product '),
(37, 1, 'gino', 'December 6, 2017 3:41:pm  ', 'Inserted', 'Name= Canon Image Runner 3035 was added to product '),
(38, 1, 'gino', 'December 6, 2017 3:43:pm  ', 'Inserted', 'Name= Bizhub Colored 250 was added to product '),
(39, 1, 'gino', 'December 6, 2017 3:47:pm  ', 'Inserted', 'Name= Bizhub 350 was added to product '),
(40, 1, 'gino', 'January 3, 2018 5:21:pm  ', 'Updated', 'name=New Products, detail=Updated, date=January 3, 2018 5:21:pm  , place=MANDALUYONG where announcementID=1 Updated');

-- --------------------------------------------------------

--
-- Table structure for table `backup_dbname`
--

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backup_dbname`
--

INSERT INTO `backup_dbname` (`ID`, `Name`, `Date`) VALUES
(1, 'backup_Data_12-06-2017', 'December 6, 2017 2:50:pm  ');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Num` int(11) NOT NULL,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `Firstname`, `Middle_name`, `Lastname`, `Birthday`, `Address`, `City`, `Contact_number`, `Gender`, `Email`, `Password`, `Date_created`, `status`) VALUES
(7, 'Gino', 'Tolentino', 'Piol', '0000-00-00', 'Better Living Paranaque City', 'Paranaque City', '09154413727', 'Male', 'gino3@yahoo.com', 'e3ffa95805bbd0af70f1043bc86d1326', 'December 3, 2017 2:23:pm  ', 'inactive'),
(8, 'Cora', 'Talania', 'Magnaye', '1991-01-04', '3 humabon', 'Manila City', '092343432', 'Female', 'cmagnaye85@gmail.com', '6eea9b7ef19179a06954edd0f6c05ceb', 'January 4, 2018 10:47:am  ', 'inactive'),
(9, 'Darryl', 'C', 'Naval', '0000-00-00', 'Paranaque', 'Manila City', '1234567890', 'Male', 'thereal.naval@gmail.com', '7debcb0454bcd23e1d61adde233fd607', 'January 6, 2018 1:26:pm  ', 'inactive');

-- --------------------------------------------------------

--
-- Table structure for table `customer_archive`
--

CREATE TABLE `customer_archive` (
  `CustomerID` int(11) NOT NULL,
  `Firstname` char(50) NOT NULL,
  `Middle_name` char(50) NOT NULL,
  `Lastname` char(50) NOT NULL,
  `Birthday` date NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Contact_number` varchar(50) NOT NULL,
  `Gender` char(11) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dep_method`
--

CREATE TABLE `dep_method` (
  `methodID` int(11) NOT NULL,
  `dep_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dep_method`
--

INSERT INTO `dep_method` (`methodID`, `dep_method`) VALUES
(1, 'Straight Line Depreciation'),
(2, 'Double Declining Balance Depreciation');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `category_id` int(10) NOT NULL,
  `item_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`category_id`, `item_name`) VALUES
(1, 'Office Machine'),
(2, 'Computer Accessories'),
(3, 'Furniture'),
(4, 'Filing & Storage'),
(5, 'Office Supplies');

-- --------------------------------------------------------

--
-- Table structure for table `loginout_history`
--

CREATE TABLE `loginout_history` (
  `Primary` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginout_history`
--

INSERT INTO `loginout_history` (`Primary`, `CustomerID`, `User`, `Name`, `Time_in`, `Time_out`) VALUES
(17, 7, 'gino3@yahoo.com', 'Gino', 'December 3, 2017 2:24:pm  ', 'January 4, 2018 10:54:am  '),
(18, 7, 'gino3@yahoo.com', 'Gino', 'December 3, 2017 2:38:pm  ', 'January 4, 2018 10:54:am  '),
(19, 7, 'gino3@yahoo.com', 'Gino', 'December 3, 2017 2:38:pm  ', 'January 4, 2018 10:54:am  '),
(20, 7, 'gino3@yahoo.com', 'Gino', 'December 3, 2017 2:41:pm  ', 'January 4, 2018 10:54:am  '),
(21, 7, 'gino3@yahoo.com', 'Gino', 'December 4, 2017 9:57:am  ', 'January 4, 2018 10:54:am  '),
(22, 7, 'gino3@yahoo.com', 'Gino', 'December 4, 2017 10:19:am  ', 'January 4, 2018 10:54:am  '),
(23, 7, 'gino3@yahoo.com', 'Gino', 'December 4, 2017 10:52:am  ', 'January 4, 2018 10:54:am  '),
(24, 7, 'gino3@yahoo.com', 'Gino', 'December 4, 2017 12:10:pm  ', 'January 4, 2018 10:54:am  '),
(25, 7, 'gino3@yahoo.com', 'Gino', 'December 4, 2017 12:11:pm  ', 'January 4, 2018 10:54:am  '),
(26, 7, 'gino3@yahoo.com', 'Gino', 'December 6, 2017 12:38:pm  ', 'January 4, 2018 10:54:am  '),
(27, 7, 'gino3@yahoo.com', 'Gino', 'December 6, 2017 3:47:pm  ', 'January 4, 2018 10:54:am  '),
(28, 7, 'gino3@yahoo.com', 'Gino', 'December 6, 2017 5:19:pm  ', 'January 4, 2018 10:54:am  '),
(29, 7, 'gino3@yahoo.com', 'Gino', 'December 6, 2017 10:04:pm  ', 'January 4, 2018 10:54:am  '),
(30, 7, 'gino3@yahoo.com', 'Gino', 'December 7, 2017 10:02:am  ', 'January 4, 2018 10:54:am  '),
(31, 7, 'gino3@yahoo.com', 'Gino', 'December 7, 2017 10:35:am  ', 'January 4, 2018 10:54:am  '),
(32, 7, 'gino3@yahoo.com', 'Gino', 'December 7, 2017 10:41:am  ', 'January 4, 2018 10:54:am  '),
(33, 7, 'gino3@yahoo.com', 'Gino', 'December 7, 2017 10:53:am  ', 'January 4, 2018 10:54:am  '),
(34, 7, 'gino3@yahoo.com', 'Gino', 'December 7, 2017 12:42:pm  ', 'January 4, 2018 10:54:am  '),
(35, 7, 'gino3@yahoo.com', 'Gino', 'December 7, 2017 12:43:pm  ', 'January 4, 2018 10:54:am  '),
(36, 7, 'gino3@yahoo.com', 'Gino', 'December 10, 2017 2:12:pm  ', 'January 4, 2018 10:54:am  '),
(37, 7, 'gino3@yahoo.com', 'Gino', 'December 11, 2017 11:27:am  ', 'January 4, 2018 10:54:am  '),
(38, 7, 'gino3@yahoo.com', 'Gino', 'December 11, 2017 11:51:am  ', 'January 4, 2018 10:54:am  '),
(39, 7, 'gino3@yahoo.com', 'Gino', 'December 11, 2017 12:01:pm  ', 'January 4, 2018 10:54:am  '),
(40, 7, 'gino3@yahoo.com', 'Gino', 'December 11, 2017 12:06:pm  ', 'January 4, 2018 10:54:am  '),
(41, 7, 'gino3@yahoo.com', 'Gino', 'December 11, 2017 12:36:pm  ', 'January 4, 2018 10:54:am  '),
(42, 7, 'gino3@yahoo.com', 'Gino', 'January 3, 2018 3:33:pm  ', 'January 4, 2018 10:54:am  '),
(43, 7, 'gino3@yahoo.com', 'Gino', 'January 3, 2018 3:34:pm  ', 'January 4, 2018 10:54:am  '),
(44, 7, 'gino3@yahoo.com', 'Gino', 'January 3, 2018 3:35:pm  ', 'January 4, 2018 10:54:am  '),
(45, 7, 'gino3@yahoo.com', 'Gino', 'January 3, 2018 3:38:pm  ', 'January 4, 2018 10:54:am  '),
(46, 7, 'gino3@yahoo.com', 'Gino', 'January 3, 2018 3:44:pm  ', 'January 4, 2018 10:54:am  '),
(47, 7, 'gino3@yahoo.com', 'Gino', 'January 3, 2018 5:25:pm  ', 'January 4, 2018 10:54:am  '),
(48, 7, 'gino3@yahoo.com', 'Gino', 'January 4, 2018 10:33:am  ', 'January 4, 2018 10:54:am  '),
(49, 8, 'cmagnaye85@gmail.com', 'Cora', 'January 4, 2018 10:48:am  ', ''),
(50, 8, 'cmagnaye85@gmail.com', 'Cora', 'January 4, 2018 10:49:am  ', ''),
(51, 9, 'thereal.naval@gmail.com', 'Darryl', 'January 6, 2018 1:26:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `loginout_serverhistory`
--

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginout_serverhistory`
--

INSERT INTO `loginout_serverhistory` (`Primary`, `AdminID`, `User`, `Name`, `Time_in`, `Time_out`) VALUES
(11, 1, 'gino', 'Gino T. Piol', 'December 3, 2017 2:20:pm  ', 'January 3, 2018 4:19:pm '),
(12, 1, 'gino', 'Gino T. Piol', 'December 3, 2017 3:08:pm  ', 'January 3, 2018 4:19:pm '),
(13, 1, 'gino', 'Gino T. Piol', 'December 4, 2017 10:16:am  ', 'January 3, 2018 4:19:pm '),
(14, 1, 'gino', 'Gino T. Piol', 'December 4, 2017 11:15:am  ', 'January 3, 2018 4:19:pm '),
(15, 1, 'gino', 'Gino T. Piol', 'December 6, 2017 11:52:am  ', 'January 3, 2018 4:19:pm ');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `CustomerID`, `Name`, `Email`, `Subject`, `Message`, `Date_created`, `Status`) VALUES
(2, 7, 'Gino Piol', 'gino3@yahoo.com', 'Test', 'Test', 'December 4, 2017 10:16:am  ', 'Seen'),
(3, 7, 'Gino Piol', 'gino3@yahoo.com', 'test', 'test', 'December 11, 2017 12:08:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notif`
--

INSERT INTO `notif` (`notifID`, `orderID`, `status`, `date_ordered`) VALUES
(2, 2, 'Seen', '2017-12-06'),
(3, 3, 'Seen', '2017-12-07'),
(4, 4, 'Seen', '2017-12-07'),
(5, 5, '', '2017-12-07'),
(6, 6, '', '2017-12-07'),
(7, 7, '', '2017-12-07'),
(8, 8, 'Seen', '2017-12-10'),
(9, 9, '', '2017-12-10'),
(10, 10, '', '2017-12-11'),
(11, 11, '', '2017-12-11'),
(12, 12, '', '2018-01-04'),
(13, 13, '', '2018-01-04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `total` varchar(30) NOT NULL,
  `orderdate` date NOT NULL,
  `Date_paid` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `deliverystatus` varchar(50) NOT NULL,
  `Transaction_code` varchar(50) NOT NULL,
  `tax` int(11) NOT NULL,
  `shipping_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `customerID`, `total`, `orderdate`, `Date_paid`, `status`, `deliverystatus`, `Transaction_code`, `tax`, `shipping_address`) VALUES
(2, 7, '56000', '2017-12-06', 'December 7, 2017 11:09:am  ', 'Confirmed', 'Delivered', 'AA0027', 6720, 'NCR Manila City'),
(3, 7, '56000', '2017-12-07', 'December 7, 2017 11:09:am  ', 'Confirmed', 'Delivered', 'AA0037', 6720, 'Taguig Manila City'),
(4, 7, '56000', '2017-12-07', 'December 7, 2017 11:09:am  ', 'Confirmed', 'Delivered', 'AA0047', 6720, 'tea Manila City'),
(5, 7, '45600', '2017-12-07', 'December 7, 2017 11:09:am  ', 'Confirmed', 'Delivered', 'AA0057', 5472, 'test Manila City'),
(6, 7, '52000', '2017-12-07', 'December 7, 2017 12:48:pm  ', 'Confirmed', 'Delivered', 'AA0067', 6240, 'paranaque Manila City'),
(7, 7, '45600', '2017-12-07', 'December 11, 2017 12:00:pm  ', 'Confirmed', '', 'AA0077', 5472, 'Taguig Manila City'),
(8, 7, '52000', '2017-12-10', 'December 11, 2017 12:21:pm  ', 'Confirmed', '', 'AA0087', 6240, 'Taguig Manila City'),
(9, 7, '52000', '2017-12-10', '', 'Pending', '', 'AA0097', 6240, 'tag Manila City'),
(10, 7, '56000', '2017-12-11', '', 'Pending', '', 'AA00107', 6720, 'APC Manila City'),
(11, 7, '101600', '2017-12-11', '', 'Pending', '', 'AA00117', 12192, 'APC Manila City'),
(12, 7, '45600', '2018-01-04', '', 'Pending', '', 'AA00127', 5472, 'ncr Manila City'),
(13, 7, '135600', '2018-01-04', '', 'Pending', '', 'AA00137', 16272, 'ncr Manila City');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Total_qty` varchar(50) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`CustomerID`, `Quantity`, `ProductID`, `Total`, `Total_qty`, `OrderID`, `Orderdetailsid`) VALUES
(7, 1, 13, 56000, '4', '2', 2),
(7, 1, 13, 56000, '3', '3', 3),
(7, 1, 13, 56000, '2', '4', 4),
(7, 1, 15, 45600, '7', '5', 5),
(7, 1, 14, 52000, '2', '6', 6),
(7, 1, 15, 45600, '6', '7', 7),
(7, 1, 14, 52000, '1', '8', 8),
(7, 1, 14, 52000, '0', '9', 9),
(7, 1, 13, 56000, '1', '10', 10),
(7, 1, 15, 45600, '5', '11', 11),
(7, 1, 13, 56000, '0', '11', 12),
(7, 1, 15, 45600, '4', '12', 13),
(7, 1, 15, 45600, '3', '13', 14),
(7, 2, 16, 90000, '7', '13', 15);

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL,
  `trasaction_id` varchar(600) NOT NULL,
  `payer_fname` varchar(300) NOT NULL,
  `payer_lname` varchar(300) NOT NULL,
  `payer_address` varchar(300) NOT NULL,
  `payer_city` varchar(300) NOT NULL,
  `payer_country` varchar(300) NOT NULL,
  `payer_email` text NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reply_message`
--

CREATE TABLE `reply_message` (
  `Primary_key` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reply_message`
--

INSERT INTO `reply_message` (`Primary_key`, `CustomerID`, `Recipient`, `Email`, `From_admin`, `Message`, `Date_created`, `Status`) VALUES
(2, 7, 'Gino Piol', 'gino3@yahoo.com', 'Richmon Davis B. Sabello', 'tets', 'December 4, 2017 10:19:am  ', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `sent_messages`
--

CREATE TABLE `sent_messages` (
  `ID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_messages`
--

INSERT INTO `sent_messages` (`ID`, `CustomerID`, `Name`, `Email`, `Subject`, `Message`, `Date_created`, `Status`) VALUES
(2, 7, 'Gino Piol', 'gino3@yahoo.com', 'Test', 'Test', 'December 4, 2017 10:16:am  ', ''),
(3, 7, 'Gino Piol', 'gino3@yahoo.com', 'test', 'test', 'December 11, 2017 12:08:pm  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_announcement`
--

CREATE TABLE `tb_announcement` (
  `announcementID` int(11) NOT NULL,
  `detail` text NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_announcement`
--

INSERT INTO `tb_announcement` (`announcementID`, `detail`, `date`, `name`, `place`, `image`, `status`) VALUES
(1, 'New Products', '2015-07-10 00:30:00', 'New Products', 'MANDALUYONG', 'upload/Canon-IR-4570-199x300.png', 'Seen');

-- --------------------------------------------------------

--
-- Table structure for table `tb_equipment`
--

CREATE TABLE `tb_equipment` (
  `item_id` int(11) NOT NULL,
  `item_code` text NOT NULL,
  `item_name` varchar(500) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `price` int(11) NOT NULL,
  `employee_id` varchar(250) NOT NULL,
  `item_category` int(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `supplier_id` varchar(250) NOT NULL,
  `date_post` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_equipment`
--

INSERT INTO `tb_equipment` (`item_id`, `item_code`, `item_name`, `brand_name`, `price`, `employee_id`, `item_category`, `status`, `supplier_id`, `date_post`) VALUES
(1, 'JHasdks6328HYd', 'Laptop', 'ASUS', 20000, 'Mark Dave ', 2, 'Damage', 'Deeco', '2015-09-13'),
(2, '43dsffc234htyet', 'Desktop', 'ACER', 15000, 'Rhea Dela Crus', 2, 'Good', 'Deeco', '2015-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_productreport`
--

CREATE TABLE `tb_productreport` (
  `ProductID` int(11) NOT NULL,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_productreport`
--

INSERT INTO `tb_productreport` (`ProductID`, `Beg_qty`, `updated_qty`) VALUES
(1, '100', ''),
(13, '5', ''),
(14, '4', ''),
(15, '8', ''),
(16, '9', ''),
(17, '10', ''),
(18, '7', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE `tb_products` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`productID`, `name`, `price`, `image`, `details`, `quantity`, `date_created`) VALUES
(13, 'Ricoh MP 5000', 56000, 'products/Ricoh-MP-5000-197x300.png', '  35 or 45 Copies Per Minute \r\n  4 Cassettes\r\n Scan Once, Copy Many\r\n with Enlarger\r\nwith Reducer\r\nStand Alone\r\nBypass \r\nDuplex Type (optional)\r\nAutomatic Document Feeder\r\n', 0, 'December 6, 2017 3:26:pm  '),
(14, 'Ricoh MP 4500', 52000, 'products/Ricoh-MP-4500-199x300.png', '  22 Copies Per Minute, \r\n2 or 4 Cassettes, Scan Once, Copy Many \r\n  with Enlarger,  with Reducer, Stand Alone, Bypass,  Duplex Type (optional),  Automatic Document Feeder\r\n', 0, 'December 6, 2017 3:35:pm  '),
(15, 'Canon Image Runner 4570', 45600, 'products/Canon-IR-4570-199x300.png', '45 copies per minute (B/W)\r\n30 seconds warm-up time\r\nWith 2 to 4 cassettes (depends on the availability)\r\nWith Automatic Document Feeder (ADF)\r\nWith reducer and enlarger\r\nDimension: 29-7/8â€³W x 22-1/4â€³D x 27-5/8â€³H\r\n', 3, 'December 6, 2017 3:38:pm  '),
(16, 'Canon Image Runner 3035', 45000, 'products/Canon-IR-3035-199x300.png', '35 copies per minute (B/W)\r\n30 seconds warm-up time\r\nWith 2 to 4 cassettes (depends on the availability)\r\nWith Automatic Document Feeder (ADF)\r\nWith reducer and enlarger\r\nDimensions: 18-5/8â€³W x 14-5/8â€³D x 23-1/4â€³H\r\n', 7, 'December 6, 2017 3:41:pm  '),
(17, 'Bizhub Colored 250', 47000, 'products/Konica-Bizhub-C250-208x300.png', '25 copies per minute\r\n110 seconds or less warm-up time\r\nWith 2 to 4 cassettes (depends on the availability)\r\nWith Automatic Document Feeder (ADF)\r\nWith reducer and enlarger\r\nDimension: 25-3/4â€W x 29-3/4â€D x 30-1/2â€H\r\n', 10, 'December 6, 2017 3:43:pm  '),
(18, 'Bizhub 350', 48900, 'products/Konica-Bizhub-350-209x300.png', '35 copies per minute\r\n24 seconds warm-up time\r\nWith 2 to 4 cassettes (depends on the availability)\r\nWith Automatic Document Feeder (ADF)\r\nWith reducer and enlarger\r\nDimension: 26-3/4â€W x 28â€D x 28-1/4â€H\r\n', 7, 'December 6, 2017 3:47:pm  ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sentmessage`
--

CREATE TABLE `tb_sentmessage` (
  `Primary_key` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sentmessage`
--

INSERT INTO `tb_sentmessage` (`Primary_key`, `CustomerID`, `Recipient`, `Email`, `From_admin`, `Message`, `Date_created`, `Status`) VALUES
(2, 7, 'Gino Piol', 'gino3@yahoo.com', 'Richmon Davis B. Sabello', 'tets', 'December 4, 2017 10:19:am  ', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`userID`, `username`, `password`, `utype`, `Employee`) VALUES
(1, 'gino', 'e3ffa95805bbd0af70f1043bc86d1326', 4, 'Gino T. Piol'),
(4, 'ginopiol', 'e3ffa95805bbd0af70f1043bc86d1326', 4, 'Gino Piol');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `typeID` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`typeID`, `user_type`) VALUES
(1, 'ADVERTISING Admin'),
(2, 'ASSET Admin'),
(3, 'ONLINE ORDERING Admin'),
(4, 'SUPER Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset_depreciation`
--
ALTER TABLE `asset_depreciation`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `audit_trail`
--
ALTER TABLE `audit_trail`
  ADD PRIMARY KEY (`KeyID`);

--
-- Indexes for table `backup_dbname`
--
ALTER TABLE `backup_dbname`
  ADD PRIMARY KEY (`Name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Num`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `customer_archive`
--
ALTER TABLE `customer_archive`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dep_method`
--
ALTER TABLE `dep_method`
  ADD PRIMARY KEY (`methodID`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `loginout_history`
--
ALTER TABLE `loginout_history`
  ADD PRIMARY KEY (`Primary`);

--
-- Indexes for table `loginout_serverhistory`
--
ALTER TABLE `loginout_serverhistory`
  ADD PRIMARY KEY (`Primary`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`notifID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Orderdetailsid`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply_message`
--
ALTER TABLE `reply_message`
  ADD PRIMARY KEY (`Primary_key`);

--
-- Indexes for table `sent_messages`
--
ALTER TABLE `sent_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_announcement`
--
ALTER TABLE `tb_announcement`
  ADD PRIMARY KEY (`announcementID`);

--
-- Indexes for table `tb_equipment`
--
ALTER TABLE `tb_equipment`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tb_productreport`
--
ALTER TABLE `tb_productreport`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `tb_sentmessage`
--
ALTER TABLE `tb_sentmessage`
  ADD PRIMARY KEY (`Primary_key`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`userID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`typeID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit_trail`
--
ALTER TABLE `audit_trail`
  MODIFY `KeyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Num` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `loginout_history`
--
ALTER TABLE `loginout_history`
  MODIFY `Primary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `loginout_serverhistory`
--
ALTER TABLE `loginout_serverhistory`
  MODIFY `Primary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `reply_message`
--
ALTER TABLE `reply_message`
  MODIFY `Primary_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sent_messages`
--
ALTER TABLE `sent_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_productreport`
--
ALTER TABLE `tb_productreport`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tb_sentmessage`
--
ALTER TABLE `tb_sentmessage`
  MODIFY `Primary_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
