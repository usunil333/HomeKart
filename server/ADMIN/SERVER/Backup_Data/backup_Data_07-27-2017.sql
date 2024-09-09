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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO customers VALUES("1","Prashant","","Subedi","1996-03-21","Hetauda-6","Hetauda City","9845404434","Male","njrprashant@gmail.com","81ea339bef24a8dde6091a115fb71eae","April 25, 2017 10:52:pm  ","inactive");
INSERT INTO customers VALUES("2","Sudeep","Thapa","Magar","1996-01-12","Hetauda","Hetauda City","1234567890","Male","sudeep123@gmail.com","7eec1296e2fc13aeae093a6813b9cf25","July 26, 2017 8:39:am  ","inactive");
INSERT INTO customers VALUES("9","Binaya","","Neupane","1996-02-11","Hetauda","Hetauda City","9876543210","Male","binaya123@gmail.com","54eff46137ed9d868d35d22b734534df","July 26, 2017 9:19:pm  ","inactive");
INSERT INTO customers VALUES("10","Saroj","","Paudel","1995-02-12","Hetauda","Hetauda City","9876543211","Male","saroj123@gmail.com","6f4824ab7dd3f79a4d2924881b24cb71","July 27, 2017 2:35:pm  ","inactive");


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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

INSERT INTO loginout_history VALUES("1","7","njrprashant@gmail.com","Prashant","April 25, 2017 10:52:pm  ","April 25, 2017 11:03:pm  ");
INSERT INTO loginout_history VALUES("2","7","njrprashant@gmail.com","Prashant","April 27, 2017 8:52:pm  ","");
INSERT INTO loginout_history VALUES("19","1","njrprashant@gmail.com","Prashant","July 26, 2017 8:36:am  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("20","1","njrprashant@gmail.com","Prashant","July 26, 2017 8:48:am  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("21","8","sudeep123@gmail.com","Sudeep","July 26, 2017 2:42:pm  ","July 26, 2017 5:06:pm  ");
INSERT INTO loginout_history VALUES("22","1","njrprashant@gmail.com","Prashant","July 26, 2017 3:01:pm  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("23","1","njrprashant@gmail.com","Prashant","July 26, 2017 8:37:pm  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("24","2","sudeep123@gmail.com","Sudeep","July 26, 2017 8:44:pm  ","July 26, 2017 10:59:pm  ");
INSERT INTO loginout_history VALUES("25","1","njrprashant@gmail.com","Prashant","July 26, 2017 8:46:pm  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("26","9","binaya123@gmail.com","Binaya","July 26, 2017 9:20:pm  ","July 26, 2017 11:35:pm  ");
INSERT INTO loginout_history VALUES("27","1","njrprashant@gmail.com","Prashant","July 26, 2017 9:33:pm  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("28","1","njrprashant@gmail.com","Prashant","July 27, 2017 2:34:pm  ","July 27, 2017 2:34:pm  ");
INSERT INTO loginout_history VALUES("29","10","saroj123@gmail.com","Saroj","July 27, 2017 2:35:pm  ","July 27, 2017 2:37:pm  ");


DROP TABLE IF EXISTS loginout_serverhistory;

CREATE TABLE `loginout_serverhistory` (
  `Primary` int(11) NOT NULL AUTO_INCREMENT,
  `AdminID` int(11) NOT NULL,
  `User` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Time_in` varchar(50) NOT NULL,
  `Time_out` varchar(50) NOT NULL,
  PRIMARY KEY (`Primary`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO loginout_serverhistory VALUES("1","1","Prashant","Prashant Subedi ","April 28, 2017 4:08:pm  ","July 26, 2017 8:39:pm ");
INSERT INTO loginout_serverhistory VALUES("13","3","binaya","Binaya Neupane ","April 28, 2017 4:56:pm  ","July 26, 2017 8:41:pm ");
INSERT INTO loginout_serverhistory VALUES("14","1","Prashant","Prashant Subedi ","July 26, 2017 8:38:pm  ","July 26, 2017 8:39:pm ");
INSERT INTO loginout_serverhistory VALUES("15","3","binaya","Binaya Neupane ","July 26, 2017 8:41:pm  ","July 26, 2017 8:41:pm ");
INSERT INTO loginout_serverhistory VALUES("16","2","Sudeep","Sudeep Magar","July 26, 2017 8:42:pm  ","July 26, 2017 8:43:pm ");
INSERT INTO loginout_serverhistory VALUES("17","5","saroj","saroj sir","July 27, 2017 2:29:pm  ","July 27, 2017 2:30:pm ");


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO message VALUES("1","1","Prashant Subedi","njrprashant@gmail.com","wqe`s","sdasdasda","April 26, 2017 9:21:pm  ","Seen");


DROP TABLE IF EXISTS notif;

CREATE TABLE `notif` (
  `notifID` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_ordered` date NOT NULL,
  PRIMARY KEY (`notifID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO notif VALUES("1","1","Seen","2017-04-28");
INSERT INTO notif VALUES("2","2","","2017-07-26");
INSERT INTO notif VALUES("3","3","","2017-07-26");


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
INSERT INTO order_details VALUES("8","1","1","95000","94","2","2");
INSERT INTO order_details VALUES("1","1","1","95000","93","3","3");


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

INSERT INTO orders VALUES("1","1","95000","2017-04-28","April 28, 2017 4:16:pm  ","Confirmed","Delivered","AA0011","960","Kantirajpath,Hetauda City");
INSERT INTO orders VALUES("2","8","95000","2017-07-26","","Pending","","AA0028","11400","Hetauda Hetauda City");
INSERT INTO orders VALUES("3","1","95000","2017-07-26","","Pending","","AA0031","11400","Hetauda Hetauda City");


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO reply_message VALUES("1","1","Prashant","njrprashant@gmail.com","Prashant Subedi","thank you","April 28, 2017 9:16:pm  ","Seen");


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO sent_messages VALUES("1","1","Prashant Subedi","njrprashant@gmail.com","wqe`s","sdasdasda","April 28, 2017 4:21:pm  ","");


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

INSERT INTO tb_products VALUES("1","Dell-Inspiron-5368-t","95000","products/a.JPG","Display- 13.3 inch LED Backlit Touch Display Full HD (1920 x 1080) resolution GPU- Intel HD Graphics 520CPU- 6th Generation Intel Core i7 Memory- 8 GB DDR4 SDRAM  Battery– 42 WHr, 3-Cell Battery   ","93","April 26, 2017 11:34:am ");
INSERT INTO tb_products VALUES("2","Dell-inspiron-13-7000-7359","99990","products/b.JPG","Display- 15.6 inch LED Backlit Touch Display with Truelife and FHD resolution (1920 x 1080) CPU- 6th Generation Intel Core i5-6200U Processor GPU- Intel HD Graphics 520 Memory- 8 GB DDR3L SDRAM Battery : 43 WHr, 3-Cell Battery  ","95","April 26, 2017 11:34:am ");
INSERT INTO tb_products VALUES("3","Dell-XPS-13-9343","99000","products/c.JPG","Display- 13.3” QHD(3200×1800) Infinity-edge touch display CPU- 6th Generation Intel Core i5-6200U Processor GPU- Intel® HD Graphics 520 Memory- 8GB LPDDR3-1866MHz RAM Battery : 56Whr, 4-Cell Battery","99","April 26, 2017 11:34:am ");
INSERT INTO tb_products VALUES("4","Dell-latitude_e5450","90000","products/d.jpeg","Display- 14.0” HD (1366×768), Anti-Glare LCD display CPU- 5th Generation Intel Core i5-5200U Processor GPU- Intel HD Graphics 5500 Graphics Memory- 4 GB DDR3L SDRAM Battery:4-cell 51Whr Battery","100","April 27, 2017 11:30:am ");
INSERT INTO tb_products VALUES("5","Lenovo_Ideapad_500","15000","products/e.JPG","Display- 13.3-inch QHD + 3,200 x 1,800 IPS display CPU- 2.5GHz Intel Core i7-6500U GPU- Intel HD Graphics 520 Memory- 16GB LP-DDR3 RAM Storage- 512GB SSD Battery:Up to 9 Hours Local Video Playback","100","April 27, 2017 11:30:am ");
INSERT INTO tb_products VALUES("6","Lenovo-Thinkpad-T460","1800","products/f.JPG","Display- 14.0 inch 16:9 HD (1366×768) CPU- 2.4 GHz Intel Core i5 GPU- Integrated Intel® HD Graphics 4400 Memory- 8 GB DDR3L SDRAM 1600 MHz Storage- 500GB HDD Battery- 46 Wh, 23mAh Lithium-Ion, removable","100","May 1, 2017 8:22:pm  ");
INSERT INTO tb_products VALUES("7","lenovo-yoga-900","2800","products/g.png","Display- 14 inch FHD (1920 x 1080) Touch CPU- Intel Core i7 5500U Processor GPU- 2GB NVIDIA GeForce GT 940M Memory- 8.0GB DDR3L 1600 MHz Storage- 256GB SSD Battery- Up to 7.2 hours4 Cell 44.8 Watt Hour Li-Polymer","100","May 1, 2017 11:40:pm  ");
INSERT INTO tb_products VALUES("8","Lenovo_Yoga_3","2000","products/h.JPG","Display- 14 inch 1920 x 1080 pixels FHD CPU- 5th Gen Intel® Core™ i7 Processor GPU- Intel Graphic + 2GB Graphic AMD R9 M275 Memory- 8GB Storage- 1TB HDD (5400RPM) Battery- Up to 5 hours WiFi browsing depending on configuration","100","May 2, 2017 10:33:am  ");
INSERT INTO tb_products VALUES("9","Hp-SlateBook-e1484573699907","6000","products/i.JPG","Display- 10.1 inch diagonal WUXGA LED-backlit IPS Touchscreen (1920 x 1200) CPU- 1.8 GHz NVIDIA Tegra T40S 4-Plus-1 Quad GPU- NVIDIA® GeForce® GTX 960M with 4GB GDDR5 VRAM Memory- 2GB 1600MHz DDR3L SDRAM Storage- 64 GB eMMC Battery- 2-cell Li-Ion polymer","50","May 3, 2017 10:40:am  ");
INSERT INTO tb_products VALUES("10","Hp-242-G1-e1484573352498","5000","products/j.JPG","Display- 14 inch diagonal HD SVA BrightView WLED-backlit (1366 x 768) CPU- Intel® Core™ i5-6200U (2.3 GHz, up to 2.8 GHz, 3 MB cache, 2 cores) GPU- AMD Radeon™ R5 M430 Graphics (2 GB DDR3 dedicated) Memory- 4 GB DDR4-2133 SDRAM (1 x 4 GB) Storage- 1 TB 5400 rpm SATA Battery- 4-cell, 41 Wh Li-ion","30","May 3, 2017 12:42:pm  ");
INSERT INTO tb_products VALUES("11","HP-spectre","5500","products/k.png","Display- 13.3 inch diagonal FHD IPS UWVA BrightView Corning® Gorilla® Glass WLED-backlit (1920 x 1080) CPU- Intel® Core™ i5-7200U (2.5 GHz, up to 3.1 GHz, 3 MB cache, 2 cores), 7th Generation GPU- Intel® HD Graphics 620 Memory- 8 GB LPDDR3-1866 SDRAM (onboard) Storage- 256 GB PCIe® NVMe™ M.2 SSD Battery- 4-cell, 38 Wh Li-ion","19","May 4, 2017 12:52:pm  ");


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
INSERT INTO tb_user VALUES("2","Sudeep","94b7cc149c608be2a9c221a17c6acaa2","2","Sudeep Magar");
INSERT INTO tb_user VALUES("3","binaya","4768c3d44158c9a54650fe3063dad86f","1","Binaya Neupane ");
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


