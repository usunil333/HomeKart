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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS backup_dbname;

CREATE TABLE `backup_dbname` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO backup_dbname VALUES("1","backup_Data_04-29-2017","April 29, 2017 3:09:pm  ");


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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("1","Prashant","","Subedi","1996-03-21","Hetauda-6","Hetauda City","9845404434","Male","njrprashant@gmail.com","48e8fd00b2ae3e8a62690e3c0c2814b1","April 25, 2017 10:52:pm  ","inactive");
INSERT INTO customers VALUES("2","Sudeep","Thapa","Magar","1996-12-08","Hetauda-5","Hetauda City","9867543456","Male","hcc@gmail.com","1b5c4975b55bc2b3be66dcf829368b31","May 3, 2017 7:25:am  ","inactive");


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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

INSERT INTO loginout_history VALUES("1","7","njrprashant@gmail.com","Prashant","April 25, 2017 10:52:pm  ","April 25, 2017 11:03:pm  ");
INSERT INTO loginout_history VALUES("2","7","njrprashant@gmail.com","Prashant","April 27, 2017 8:52:pm  ","");
INSERT INTO loginout_history VALUES("3","1","njrprashant@gmail.com","Prashant","April 30, 2017 1:44:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("4","1","njrprashant@gmail.com","Prashant","April 30, 2017 7:15:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("5","1","njrprashant@gmail.com","Prashant","May 2, 2017 8:24:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("6","1","njrprashant@gmail.com","Prashant","May 2, 2017 8:26:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("7","1","njrprashant@gmail.com","Prashant","May 2, 2017 9:03:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("8","1","njrprashant@gmail.com","Prashant","May 2, 2017 9:19:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("9","1","njrprashant@gmail.com","Prashant","May 3, 2017 6:15:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("10","2","hcc@gmail.com","Sudeep","May 3, 2017 7:26:am  ","May 3, 2017 9:41:am  ");
INSERT INTO loginout_history VALUES("11","1","njrprashant@gmail.com","Prashant","May 16, 2017 7:58:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("12","1","njrprashant@gmail.com","Prashant","May 16, 2017 8:00:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("13","1","njrprashant@gmail.com","Prashant","May 16, 2017 8:02:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("14","1","njrprashant@gmail.com","Prashant","May 16, 2017 8:13:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("15","1","njrprashant@gmail.com","Prashant","May 16, 2017 7:38:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("16","1","njrprashant@gmail.com","Prashant","June 2, 2017 2:24:pm  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("17","1","njrprashant@gmail.com","Prashant","June 6, 2017 8:42:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("18","1","njrprashant@gmail.com","Prashant","July 24, 2017 10:59:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("19","2","hcc@gmail.com","Sudeep","July 24, 2017 11:00:am  ","");
INSERT INTO loginout_history VALUES("20","1","njrprashant@gmail.com","Prashant","July 24, 2017 11:18:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("21","1","njrprashant@gmail.com","Prashant","July 24, 2017 11:21:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("22","1","njrprashant@gmail.com","Prashant","July 24, 2017 11:28:am  ","July 24, 2017 2:10:pm  ");
INSERT INTO loginout_history VALUES("23","1","njrprashant@gmail.com","Prashant","July 24, 2017 11:32:am  ","July 24, 2017 2:10:pm  ");


DROP TABLE IF EXISTS loginout_serverhistory;

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO loginout_serverhistory VALUES("1","1","Prashant","Prashant Subedi ","April 28, 2017 4:08:pm  ","July 24, 2017 11:56:am ");
INSERT INTO loginout_serverhistory VALUES("13","3","binaya","Binaya Neupane ","April 28, 2017 4:56:pm  ","May 3, 2017 7:21:am ");
INSERT INTO loginout_serverhistory VALUES("14","1","Prashant","Prashant Subedi ","April 29, 2017 9:15:am  ","July 24, 2017 11:56:am ");
INSERT INTO loginout_serverhistory VALUES("15","2","Sudeep","Sudeep Magar","April 29, 2017 10:16:am  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("16","2","Sudeep","Sudeep Magar","April 29, 2017 11:30:am  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("17","3","binaya","Binaya Neupane ","April 29, 2017 11:41:am  ","May 3, 2017 7:21:am ");
INSERT INTO loginout_serverhistory VALUES("18","2","sudeep","Sudeep Magar","April 30, 2017 10:01:am  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("19","1","prashant","Prashant Subedi ","April 30, 2017 10:02:am  ","July 24, 2017 11:56:am ");
INSERT INTO loginout_serverhistory VALUES("20","2","sudeep","Sudeep Magar","May 2, 2017 8:23:pm  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("21","1","Prashant","Prashant Subedi ","May 2, 2017 8:39:pm  ","July 24, 2017 11:56:am ");
INSERT INTO loginout_serverhistory VALUES("22","2","Sudeep","Sudeep Magar","May 2, 2017 8:40:pm  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("23","3","binaya","Binaya Neupane ","May 2, 2017 8:41:pm  ","May 3, 2017 7:21:am ");
INSERT INTO loginout_serverhistory VALUES("24","2","sudeep","Sudeep Magar","May 3, 2017 7:20:am  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("25","3","binaya","Binaya Neupane ","May 3, 2017 7:21:am  ","May 3, 2017 7:21:am ");
INSERT INTO loginout_serverhistory VALUES("26","3","binaya","Binaya Neupane ","June 2, 2017 2:45:pm  ","");
INSERT INTO loginout_serverhistory VALUES("27","1","Prashant","Prashant Subedi ","July 24, 2017 10:50:am  ","July 24, 2017 11:56:am ");
INSERT INTO loginout_serverhistory VALUES("28","2","Sudeep","Sudeep Magar","July 24, 2017 10:55:am  ","July 24, 2017 10:58:am ");
INSERT INTO loginout_serverhistory VALUES("29","1","Prashant","Prashant Subedi ","July 24, 2017 11:55:am  ","July 24, 2017 11:56:am ");


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

INSERT INTO message VALUES("1","1","Prashant Subedi","njrprashant@gmail.com","wqe`s","sdasdasda","April 26, 2017 9:21 pm","Seen");
INSERT INTO message VALUES("2","1","Prashant Subedi","njrprashant@gmail.com","zz","zz","April 30, 2017 10:05:pm  ","");


DROP TABLE IF EXISTS notif;

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notif VALUES("1","1","Seen","2017-04-28");
INSERT INTO notif VALUES("2","2","Seen","2017-04-30");
INSERT INTO notif VALUES("3","3","","2017-04-30");
INSERT INTO notif VALUES("4","4","","2017-04-30");
INSERT INTO notif VALUES("5","5","","2017-04-30");
INSERT INTO notif VALUES("6","6","","2017-04-30");
INSERT INTO notif VALUES("7","7","","2017-05-02");
INSERT INTO notif VALUES("8","8","","2017-05-16");
INSERT INTO notif VALUES("9","9","","2017-06-06");
INSERT INTO notif VALUES("10","10","","2017-07-24");
INSERT INTO notif VALUES("11","11","","2017-07-24");
INSERT INTO notif VALUES("12","12","","2017-07-24");
INSERT INTO notif VALUES("13","13","","2017-07-24");
INSERT INTO notif VALUES("14","14","","2017-07-24");


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

INSERT INTO order_details VALUES("1","1","1","95000","95","1","1");
INSERT INTO order_details VALUES("1","1","1","95000","94","2","2");
INSERT INTO order_details VALUES("1","1","1","95000","93","3","3");
INSERT INTO order_details VALUES("1","1","1","95000","92","4","4");
INSERT INTO order_details VALUES("1","1","1","95000","91","5","5");
INSERT INTO order_details VALUES("1","1","1","95000","90","6","6");
INSERT INTO order_details VALUES("1","1","2","99990","94","7","7");
INSERT INTO order_details VALUES("1","1","1","95000","89","8","8");
INSERT INTO order_details VALUES("1","4","1","380000","85","9","9");
INSERT INTO order_details VALUES("2","1","1","95000","84","10","10");
INSERT INTO order_details VALUES("2","1","1","95000","83","11","11");
INSERT INTO order_details VALUES("1","1","1","95000","82","12","12");
INSERT INTO order_details VALUES("1","1","1","95000","81","13","13");
INSERT INTO order_details VALUES("1","1","1","95000","80","14","14");


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

INSERT INTO orders VALUES("1","1","95000","2017-04-28","April 28, 2017 4:16 pm","Confirmed","Delivered","AA0011","960","Kantirajpath,Hetauda City");
INSERT INTO orders VALUES("2","1","95000","2017-04-30","","Pending","","AA0021","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("3","1","95000","2017-04-30","","Pending","","AA0031","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("4","1","95000","2017-04-30","","Pending","","AA0041","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("5","1","95000","2017-04-30","","Pending","","AA0051","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("6","1","95000","2017-04-30","","Pending","","AA0061","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("7","1","99990","2017-05-02","","Pending","","AA0071","11999","Hetauda Hetauda City");
INSERT INTO orders VALUES("8","1","95000","2017-05-16","","Pending","","AA0081","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("9","1","380000","2017-06-06","","Pending","","AA0091","45600","Hetauda Hetauda City");
INSERT INTO orders VALUES("10","2","95000","2017-07-24","","Pending","","AA00102","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("11","2","95000","2017-07-24","","Pending","","AA00112","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("12","1","95000","2017-07-24","","Pending","","AA00121","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("13","1","95000","2017-07-24","","Pending","","AA00131","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("14","1","95000","2017-07-24","","Pending","","AA00141","11400","Hetauda Hetauda City");


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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



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

INSERT INTO sent_messages VALUES("1","1","Prashant Subedi","njrprashant@gmail.com","wqe`s","sdasdasda","April 28, 2017 4:21 pm","");
INSERT INTO sent_messages VALUES("2","1","Prashant Subedi","njrprashant@gmail.com","zz","zz","April 30, 2017 10:05 pm","");


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

INSERT INTO tb_announcement VALUES("1","Price Rs 75,000only","2017-04-28 00:30:00","PROMO FOR The Day","Hetauda ","upload/d.JPEG","Seen");
INSERT INTO tb_announcement VALUES("2","PRomo","2017-04-28 00:30:00","PROMO FOR The Day","Hetauda","upload/a.JPG","Seen");
INSERT INTO tb_announcement VALUES("3","asdasdasdas","2017-04-28 00:30:00","PROMO FOR THE Day","Hetauda","upload/b.jpg","Seen");


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



DROP TABLE IF EXISTS tb_productreport;

CREATE TABLE `tb_productreport` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Beg_qty` varchar(50) NOT NULL,
  `updated_qty` varchar(50) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tb_productreport VALUES("1","100","");
INSERT INTO tb_productreport VALUES("2","100","");
INSERT INTO tb_productreport VALUES("3","100","");
INSERT INTO tb_productreport VALUES("4","100","");
INSERT INTO tb_productreport VALUES("5","100","");
INSERT INTO tb_productreport VALUES("6","100","");
INSERT INTO tb_productreport VALUES("7","100","");
INSERT INTO tb_productreport VALUES("8","100","");
INSERT INTO tb_productreport VALUES("9","50","");
INSERT INTO tb_productreport VALUES("10","30","");
INSERT INTO tb_productreport VALUES("11","20","");


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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

INSERT INTO tb_products VALUES("1","Dell-Inspiron-5368-t","95000","products/a.JPG","Display- 13.3 inch LED Backlit Touch Display Full HD (1920 x 1080) resolution GPU- Intel HD Graphics 520CPU- 6th Generation Intel Core i7 Memory- 8 GB DDR4 SDRAM  Battery– 42 WHr, 3-Cell Battery   ","80","April 26, 2017 11:34 am ");
INSERT INTO tb_products VALUES("2","Dell-inspiron-13-7000-7359","99990","products/b.JPG","Display- 15.6 inch LED Backlit Touch Display with Truelife and FHD resolution (1920 x 1080) CPU- 6th Generation Intel Core i5-6200U Processor GPU- Intel HD Graphics 520 Memory- 8 GB DDR3L SDRAM Battery : 43 WHr, 3-Cell Battery  ","94","April 26, 2017 11:34 am ");
INSERT INTO tb_products VALUES("3","Dell-XPS-13-9343","99000","products/c.JPG","Display- 13.3” QHD(3200×1800) Infinity-edge touch display CPU- 6th Generation Intel Core i5-6200U Processor GPU- Intel® HD Graphics 520 Memory- 8GB LPDDR3-1866MHz RAM Battery : 56Whr, 4-Cell Battery","99","April 26, 2017 11:34 am ");
INSERT INTO tb_products VALUES("4","Dell-latitude_e5450","90000","products/d.jpeg","Display- 14.0” HD (1366×768), Anti-Glare LCD display CPU- 5th Generation Intel Core i5-5200U Processor GPU- Intel HD Graphics 5500 Graphics Memory- 4 GB DDR3L SDRAM Battery:4-cell 51Whr Battery","100","April 27, 2017 11:30 am ");
INSERT INTO tb_products VALUES("5","Lenovo_Ideapad_500","15000","products/e.JPG","Display- 13.3-inch QHD + 3,200 x 1,800 IPS display CPU- 2.5GHz Intel Core i7-6500U GPU- Intel HD Graphics 520 Memory- 16GB LP-DDR3 RAM Storage- 512GB SSD Battery:Up to 9 Hours Local Video Playback","100","April 27, 2017 11:30 am ");
INSERT INTO tb_products VALUES("6","Lenovo-Thinkpad-T460","1800","products/f.JPG","Display- 14.0 inch 16:9 HD (1366×768) CPU- 2.4 GHz Intel Core i5 GPU- Integrated Intel® HD Graphics 4400 Memory- 8 GB DDR3L SDRAM 1600 MHz Storage- 500GB HDD Battery- 46 Wh, 23mAh Lithium-Ion, removable","100","May 1, 2017 8:22 pm");
INSERT INTO tb_products VALUES("7","lenovo-yoga-900","2800","products/g.png","Display- 14 inch FHD (1920 x 1080) Touch CPU- Intel Core i7 5500U Processor GPU- 2GB NVIDIA GeForce GT 940M Memory- 8.0GB DDR3L 1600 MHz Storage- 256GB SSD Battery- Up to 7.2 hours4 Cell 44.8 Watt Hour Li-Polymer","100","May 1, 2017 11:40 pm");
INSERT INTO tb_products VALUES("8","Lenovo_Yoga_3","2000","products/h.JPG","Display- 14 inch 1920 x 1080 pixels FHD CPU- 5th Gen Intel® Core™ i7 Processor GPU- Intel Graphic + 2GB Graphic AMD R9 M275 Memory- 8GB Storage- 1TB HDD (5400RPM) Battery- Up to 5 hours WiFi browsing depending on configuration","100","May 2, 2017 10:33 am");
INSERT INTO tb_products VALUES("9","Hp-SlateBook-e1484573699907","6000","products/i.JPG","Display- 10.1 inch diagonal WUXGA LED-backlit IPS Touchscreen (1920 x 1200) CPU- 1.8 GHz NVIDIA Tegra T40S 4-Plus-1 Quad GPU- NVIDIA® GeForce® GTX 960M with 4GB GDDR5 VRAM Memory- 2GB 1600MHz DDR3L SDRAM Storage- 64 GB eMMC Battery- 2-cell Li-Ion polymer","50","May 3, 2017 10:40 am");
INSERT INTO tb_products VALUES("10","Hp-242-G1-e1484573352498","5000","products/j.JPG","Display- 14 inch diagonal HD SVA BrightView WLED-backlit (1366 x 768) CPU- Intel® Core™ i5-6200U (2.3 GHz, up to 2.8 GHz, 3 MB cache, 2 cores) GPU- AMD Radeon™ R5 M430 Graphics (2 GB DDR3 dedicated) Memory- 4 GB DDR4-2133 SDRAM (1 x 4 GB) Storage- 1 TB 5400 rpm SATA Battery- 4-cell, 41 Wh Li-ion","30","May 3, 2017 12:42 pm");
INSERT INTO tb_products VALUES("11","HP-spectre","5500","products/k.png","Display- 13.3 inch diagonal FHD IPS UWVA BrightView Corning® Gorilla® Glass WLED-backlit (1920 x 1080) CPU- Intel® Core™ i5-7200U (2.5 GHz, up to 3.1 GHz, 3 MB cache, 2 cores), 7th Generation GPU- Intel® HD Graphics 620 Memory- 8 GB LPDDR3-1866 SDRAM (onboard) Storage- 256 GB PCIe® NVMe™ M.2 SSD Battery- 4-cell, 38 Wh Li-ion","19","May 4, 2017 12:52 pm");


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO tb_sentmessage VALUES("1","1","Prashant Subedi ","njrprashant@gmail.com","Prashant Subedi","thank you","September 15, 2015 3:22:pm  ","");


DROP TABLE IF EXISTS tb_user;

CREATE TABLE `tb_user` (
  `userID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `utype` int(11) NOT NULL,
  `Employee` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO tb_user VALUES("1","Prashant","f30aa7a662c728b7407c54ae6bfd27d1","3","Prashant Subedi ");
INSERT INTO tb_user VALUES("2","Sudeep","e99a18c428cb38d5f260853678922e03","2","Sudeep Magar");
INSERT INTO tb_user VALUES("3","binaya","a141c47927929bc2d1fb6d336a256df4","1","Binaya Neupane ");
INSERT INTO tb_user VALUES("4","prashant1","9a1996efc97181f0aee18321aa3b3b12","4","Prashant Subedi");


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


