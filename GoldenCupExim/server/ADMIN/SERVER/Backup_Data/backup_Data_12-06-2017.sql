DROP TABLE IF EXISTS asset_archive;

CREATE TABLE `asset_archive` (
  `productID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(50) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO asset_archive VALUES("1","Professional Standard Box Camera ","8000","products/1.JPG","Sensor Type: 1/3 Sony High Resolution CCD Chipset\n\n\n\nSystem of Signal: NTSC\n\n\n\nHorizontal Resolution: 420 TV Lines\n\n\n\nOperating Temp: -10? C-50?C\n\n\n\nIllumination: 1.0Lux @ F1.2\n\n\n\n","95","August 5, 2015 11:34:pm ");


DROP TABLE IF EXISTS asset_depreciation;

CREATE TABLE `asset_depreciation` (
  `item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `salvage_val` int(11) NOT NULL,
  `years` int(11) NOT NULL,
  `depmed` int(11) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO asset_depreciation VALUES("1","20000","500","5","2");
INSERT INTO asset_depreciation VALUES("2","15000","200","5","1");
INSERT INTO asset_depreciation VALUES("3","1500","200","5","1");


DROP TABLE IF EXISTS audit_trail;

CREATE TABLE `audit_trail` (
  `KeyID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Date_time` varchar(50) NOT NULL,
  `Outcome` varchar(20) NOT NULL,
  `Detail` varchar(250) NOT NULL,
  PRIMARY KEY (`KeyID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO audit_trail VALUES("1","4","DAVIS_SERVER","September 7, 2015 3:49:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("2","4","DAVIS_SERVER","September 7, 2015 3:49:pm  ","Deleted","CustomerID 3 Name Julius Felicen Message was deleted!");
INSERT INTO audit_trail VALUES("3","4","DAVIS_SERVER","September 7, 2015 3:49:pm  ","Deleted","CustomerID 4 Name Leo Aranzamendez Message was deleted!");
INSERT INTO audit_trail VALUES("4","4","DAVIS_SERVER","September 15, 2015 6:06:pm  ","Inserted","Announcement = JRU New Announcement was created");
INSERT INTO audit_trail VALUES("5","0","","December 4, 2017 11:05:am  ","Move","ProductID 1 Name= Professional Standard Box Camera  was move to Archive");
INSERT INTO audit_trail VALUES("6","0","","December 4, 2017 11:15:am  ","Deleted","Product ID 2 was permanently deleted!");
INSERT INTO audit_trail VALUES("7","4","DAVIS_SERVER","December 4, 2017 11:17:am  ","Updated","image= products/Canon-IR-3035-680x1024.png where productID= 3 was updated");
INSERT INTO audit_trail VALUES("8","4","DAVIS_SERVER","December 4, 2017 12:28:pm  ","Updated","image= products/Canon-IR-4570-199x300.png where productID= 3 was updated");
INSERT INTO audit_trail VALUES("9","4","DAVIS_SERVER","December 4, 2017 12:29:pm  ","Inserted","Name= Konica was added to product ");
INSERT INTO audit_trail VALUES("10","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 3 was permanently deleted!");
INSERT INTO audit_trail VALUES("11","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 4 was permanently deleted!");
INSERT INTO audit_trail VALUES("12","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 5 was permanently deleted!");
INSERT INTO audit_trail VALUES("13","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 6 was permanently deleted!");
INSERT INTO audit_trail VALUES("14","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 7 was permanently deleted!");
INSERT INTO audit_trail VALUES("15","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 8 was permanently deleted!");
INSERT INTO audit_trail VALUES("16","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 9 was permanently deleted!");
INSERT INTO audit_trail VALUES("17","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 10 was permanently deleted!");
INSERT INTO audit_trail VALUES("18","4","DAVIS_SERVER","December 4, 2017 12:30:pm  ","Deleted","Product ID 11 was permanently deleted!");
INSERT INTO audit_trail VALUES("19","4","DAVIS_SERVER","December 4, 2017 1:06:pm  ","Deleted","CustomerID 1 was permanently deleted!");
INSERT INTO audit_trail VALUES("20","4","DAVIS_SERVER","December 4, 2017 1:06:pm  ","Deleted","CustomerID 2 was permanently deleted!");
INSERT INTO audit_trail VALUES("21","4","DAVIS_SERVER","December 4, 2017 1:06:pm  ","Deleted","CustomerID 3 was permanently deleted!");
INSERT INTO audit_trail VALUES("22","4","DAVIS_SERVER","December 4, 2017 1:06:pm  ","Deleted","CustomerID 4 was permanently deleted!");
INSERT INTO audit_trail VALUES("23","4","DAVIS_SERVER","December 4, 2017 1:06:pm  ","Deleted","CustomerID 5 was permanently deleted!");
INSERT INTO audit_trail VALUES("24","4","DAVIS_SERVER","December 4, 2017 1:06:pm  ","Deleted","CustomerID 6 was permanently deleted!");
INSERT INTO audit_trail VALUES("25","4","DAVIS_SERVER","December 4, 2017 1:07:pm  ","Updated","image=upload/Canon-IR-4570-199x300.png where announcementID=1 was Updated");
INSERT INTO audit_trail VALUES("26","4","DAVIS_SERVER","December 4, 2017 1:07:pm  ","Deleted","ProductID= 2, PROMO FOR The Day was permanently Deleted!");
INSERT INTO audit_trail VALUES("27","4","DAVIS_SERVER","December 4, 2017 1:07:pm  ","Deleted","ProductID= 3, JRU was permanently Deleted!");
INSERT INTO audit_trail VALUES("28","4","DAVIS_SERVER","December 4, 2017 1:08:pm  ","Updated","name=Konica Minolta, detail=Updated, date=December 4, 2017 1:08:pm  , place=MANDALUYONG where announcementID=1 Updated");
INSERT INTO audit_trail VALUES("29","4","ginopiol","December 6, 2017 12:03:pm  ","Updated","name=Konica Minolta, detail=Updated, date=December 6, 2017 12:03:pm  , place=MANDALUYONG where announcementID=1 Updated");
INSERT INTO audit_trail VALUES("30","4","ginopiol","December 6, 2017 12:09:pm  ","Deleted","CustomerID 1 Name Richmon Sabello Message was deleted!");
INSERT INTO audit_trail VALUES("31","4","ginopiol","December 6, 2017 2:37:pm  ","Updated","ID= 12, name= Konica, price= Php 12,222.00, details= Updated, quantity= 23 was Updated");


DROP TABLE IF EXISTS backup_dbname;

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO backup_dbname VALUES("1","backup_Data_12-06-2017","December 6, 2017 2:50:pm  ");


DROP TABLE IF EXISTS comment;

CREATE TABLE `comment` (
  `Num` int(11) NOT NULL AUTO_INCREMENT,
  `announcementID` int(11) NOT NULL,
  `Comment` varchar(500) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `date_posted` varchar(250) NOT NULL,
  PRIMARY KEY (`Num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS customer_archive;

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
  `Date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS customers;

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("7","Gino","Tolentino","Piol","0000-00-00","Better Living Paranaque City","Paranaque City","09154413727","Male","gino3@yahoo.com","e3ffa95805bbd0af70f1043bc86d1326","December 3, 2017 2:23:pm  ","inactive");


DROP TABLE IF EXISTS dep_method;

CREATE TABLE `dep_method` (
  `methodID` int(11) NOT NULL,
  `dep_method` varchar(50) NOT NULL,
  PRIMARY KEY (`methodID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO dep_method VALUES("1","Straight Line Depreciation");
INSERT INTO dep_method VALUES("2","Double Declining Balance Depreciation");


DROP TABLE IF EXISTS item_category;

CREATE TABLE `item_category` (
  `category_id` int(10) NOT NULL,
  `item_name` varchar(30) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO item_category VALUES("1","Office Machine");
INSERT INTO item_category VALUES("2","Computer Accessories");
INSERT INTO item_category VALUES("3","Furniture");
INSERT INTO item_category VALUES("4","Filing & Storage");
INSERT INTO item_category VALUES("5","Office Supplies");


DROP TABLE IF EXISTS loginout_history;

CREATE TABLE `loginout_history` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO loginout_history VALUES("1","1","sabellorichmon@yahoo.com","Richmon","September 7, 2015 5:26:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("2","1","sabellorichmon@yahoo.com","Richmon","September 11, 2015 1:52:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("3","1","sabellorichmon@yahoo.com","Richmon","September 11, 2015 2:07:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("4","1","sabellorichmon@yahoo.com","Richmon","September 13, 2015 10:41:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("5","1","sabellorichmon@yahoo.com","Richmon","September 14, 2015 11:11:am  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("6","1","sabellorichmon@yahoo.com","Richmon","September 14, 2015 1:56:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("7","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 3:11:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("8","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 4:14:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("9","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 6:05:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("10","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 6:06:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("11","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 10:18:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("12","1","sabellorichmon@yahoo.com","Richmon","September 15, 2015 11:09:pm  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("13","1","sabellorichmon@yahoo.com","Richmon","September 16, 2015 12:55:am  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("14","1","sabellorichmon@yahoo.com","Richmon","September 16, 2015 12:55:am  ","September 16, 2015 12:55:am  ");
INSERT INTO loginout_history VALUES("15","6","sabellorap@yahoo.com","Raffy","September 16, 2015 1:26:am  ","September 16, 2015 1:30:am  ");
INSERT INTO loginout_history VALUES("16","6","sabellorap@yahoo.com","Raffy","September 16, 2015 1:30:am  ","September 16, 2015 1:30:am  ");
INSERT INTO loginout_history VALUES("17","7","gino3@yahoo.com","Gino","December 3, 2017 2:24:pm  ","December 4, 2017 10:42:am  ");
INSERT INTO loginout_history VALUES("18","7","gino3@yahoo.com","Gino","December 3, 2017 2:38:pm  ","December 4, 2017 10:42:am  ");
INSERT INTO loginout_history VALUES("19","7","gino3@yahoo.com","Gino","December 3, 2017 2:38:pm  ","December 4, 2017 10:42:am  ");
INSERT INTO loginout_history VALUES("20","7","gino3@yahoo.com","Gino","December 3, 2017 2:41:pm  ","December 4, 2017 10:42:am  ");
INSERT INTO loginout_history VALUES("21","7","gino3@yahoo.com","Gino","December 4, 2017 9:57:am  ","December 4, 2017 10:42:am  ");
INSERT INTO loginout_history VALUES("22","7","gino3@yahoo.com","Gino","December 4, 2017 10:19:am  ","December 4, 2017 10:42:am  ");
INSERT INTO loginout_history VALUES("23","7","gino3@yahoo.com","Gino","December 4, 2017 10:52:am  ","");
INSERT INTO loginout_history VALUES("24","7","gino3@yahoo.com","Gino","December 4, 2017 12:10:pm  ","");
INSERT INTO loginout_history VALUES("25","7","gino3@yahoo.com","Gino","December 4, 2017 12:11:pm  ","");
INSERT INTO loginout_history VALUES("26","7","gino3@yahoo.com","Gino","December 6, 2017 12:38:pm  ","");


DROP TABLE IF EXISTS loginout_serverhistory;

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

INSERT INTO loginout_serverhistory VALUES("1","3","JULIUS_ADS","Julius  Felicen","September 7, 2015 6:31:pm  ","September 11, 2015 2:30:pm ");
INSERT INTO loginout_serverhistory VALUES("2","2","LEO_AS","Leo Aranzamendez","September 7, 2015 6:34:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("3","2","LEO_AS","Leo Aranzamendez","September 7, 2015 6:34:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("4","1","BENJIE_OOS","Benjie I. Alfanta","September 7, 2015 6:35:pm  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("5","3","JULIUS_ADS","Julius  Felicen","September 11, 2015 2:29:pm  ","September 11, 2015 2:30:pm ");
INSERT INTO loginout_serverhistory VALUES("6","2","LEO_AS","Leo Aranzamendez","September 11, 2015 2:30:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("7","1","BENJIE_OOS","Benjie I. Alfanta","September 11, 2015 2:31:pm  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("8","2","LEO_AS","Leo Aranzamendez","September 13, 2015 10:16:pm  ","September 13, 2015 10:25:pm ");
INSERT INTO loginout_serverhistory VALUES("9","1","BENJIE_OOS","Benjie I. Alfanta","September 14, 2015 1:55:pm  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("10","1","BENJIE_OOS","Benjie I. Alfanta","September 15, 2015 11:07:pm  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("11","1","gino","Gino T. Piol","December 3, 2017 2:20:pm  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("12","1","gino","Gino T. Piol","December 3, 2017 3:08:pm  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("13","1","gino","Gino T. Piol","December 4, 2017 10:16:am  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("14","1","gino","Gino T. Piol","December 4, 2017 11:15:am  ","December 6, 2017 11:58:am ");
INSERT INTO loginout_serverhistory VALUES("15","1","gino","Gino T. Piol","December 6, 2017 11:52:am  ","December 6, 2017 11:58:am ");


DROP TABLE IF EXISTS message;

CREATE TABLE `message` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO message VALUES("2","7","Gino Piol","gino3@yahoo.com","Test","Test","December 4, 2017 10:16:am  ","Seen");


DROP TABLE IF EXISTS notif;

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notif VALUES("1","1","","2017-12-06");
INSERT INTO notif VALUES("2","2","","2017-12-06");
INSERT INTO notif VALUES("3","3","","2017-12-06");


DROP TABLE IF EXISTS order_details;

CREATE TABLE `order_details` (
  `CustomerID` int(10) NOT NULL,
  `Quantity` int(10) NOT NULL,
  `ProductID` int(10) NOT NULL,
  `Total` int(10) NOT NULL,
  `Total_qty` varchar(50) NOT NULL,
  `OrderID` varchar(10) NOT NULL,
  `Orderdetailsid` int(11) NOT NULL,
  PRIMARY KEY (`Orderdetailsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO order_details VALUES("7","1","12","12222","1","1","1");
INSERT INTO order_details VALUES("7","1","12","12222","0","2","2");
INSERT INTO order_details VALUES("7","1","12","12222","22","3","3");


DROP TABLE IF EXISTS orders;

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
  `shipping_address` varchar(100) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES("1","7","12222","2017-12-06","","Pending","","AA0017","1467","Taguig Manila City");
INSERT INTO orders VALUES("2","7","12222","2017-12-06","","Pending","","AA0027","1467","Same Manila City");
INSERT INTO orders VALUES("3","7","12222","2017-12-06","","Pending","","AA0037","1467","tf Manila City");


DROP TABLE IF EXISTS purchases;

CREATE TABLE `purchases` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `trasaction_id` varchar(600) NOT NULL,
  `payer_fname` varchar(300) NOT NULL,
  `payer_lname` varchar(300) NOT NULL,
  `payer_address` varchar(300) NOT NULL,
  `payer_city` varchar(300) NOT NULL,
  `payer_country` varchar(300) NOT NULL,
  `payer_email` text NOT NULL,
  `posted_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS reply_message;

CREATE TABLE `reply_message` (
  `Primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Primary_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO reply_message VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","Richmon Davis B. Sabello","thank you","September 15, 2015 9:22:pm  ","Seen");
INSERT INTO reply_message VALUES("2","7","Gino Piol","gino3@yahoo.com","Richmon Davis B. Sabello","tets","December 4, 2017 10:19:am  ","Seen");


DROP TABLE IF EXISTS sent_messages;

CREATE TABLE `sent_messages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO sent_messages VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","wqe`s","sdasdasda","September 15, 2015 9:21:pm  ","");
INSERT INTO sent_messages VALUES("2","7","Gino Piol","gino3@yahoo.com","Test","Test","December 4, 2017 10:16:am  ","");


DROP TABLE IF EXISTS tb_announcement;

CREATE TABLE `tb_announcement` (
  `announcementID` int(11) NOT NULL,
  `detail` text NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`announcementID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_announcement VALUES("1","Price Php 1,000","2015-07-16 00:30:00","Konica Minolta","MANDALUYONG","upload/Canon-IR-4570-199x300.png","Seen");


DROP TABLE IF EXISTS tb_equipment;

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
  `date_post` varchar(20) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_equipment VALUES("1","JHasdks6328HYd","Laptop","ASUS","20000","Mark Dave ","2","Damage","Deeco","2015-09-13");
INSERT INTO tb_equipment VALUES("2","43dsffc234htyet","Desktop","ACER","15000","Rhea Dela Crus","2","Good","Deeco","2015-09-13");


DROP TABLE IF EXISTS tb_productreport;

CREATE TABLE `tb_productreport` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tb_productreport VALUES("1","100","");
INSERT INTO tb_productreport VALUES("12","3","23");


DROP TABLE IF EXISTS tb_products;

CREATE TABLE `tb_products` (
  `productID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(20) NOT NULL,
  `image` varchar(200) NOT NULL,
  `details` text NOT NULL,
  `quantity` int(20) NOT NULL,
  `date_created` varchar(50) NOT NULL,
  PRIMARY KEY (`productID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO tb_products VALUES("12","Konica","12222","products/Canon-IR-3035-680x1024.png","Test","22","December 4, 2017 12:29:pm  ");


DROP TABLE IF EXISTS tb_sentmessage;

CREATE TABLE `tb_sentmessage` (
  `Primary_key` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `From_admin` varchar(50) NOT NULL,
  `Message` varchar(1000) NOT NULL,
  `Date_created` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary_key`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO tb_sentmessage VALUES("1","1","Richmon Sabello","sabellorichmon@yahoo.com","Richmon Davis B. Sabello","thank you","September 15, 2015 9:22:pm  ","");
INSERT INTO tb_sentmessage VALUES("2","7","Gino Piol","gino3@yahoo.com","Richmon Davis B. Sabello","tets","December 4, 2017 10:19:am  ","");


DROP TABLE IF EXISTS tb_user;

CREATE TABLE `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_user VALUES("1","gino","e3ffa95805bbd0af70f1043bc86d1326","4","Gino T. Piol");
INSERT INTO tb_user VALUES("4","ginopiol","e3ffa95805bbd0af70f1043bc86d1326","4","Gino Piol");


DROP TABLE IF EXISTS user_type;

CREATE TABLE `user_type` (
  `typeID` int(11) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  PRIMARY KEY (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO user_type VALUES("1","ADVERTISING Admin");
INSERT INTO user_type VALUES("2","ASSET Admin");
INSERT INTO user_type VALUES("3","ONLINE ORDERING Admin");
INSERT INTO user_type VALUES("4","SUPER Admin");


