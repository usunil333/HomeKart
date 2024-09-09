<?php include('include/connect.php');
include('include/session.php');
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
     <link rel="shortcut icon" href="img/logo.jpg">

    <title>HomeKart:Best Online Sales of Laptop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">


    <link href="assets/css/bootstrap.css" rel="stylesheet"/>
    <link href="assets/css/bootstrap-responsive.css" rel="stylesheet"/>
	<link href="assets/css/docs.css" rel="stylesheet"/>
	 
    <link href="assets/style.css" rel="stylesheet"/>
	<link href="assets/js/google-code-prettify/prettify.css" rel="stylesheet"/>

	

      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
     <style>
   body {
    background-image: url("mybackground.JPG");
    background-repeat: no-repeat;
}
</style>

 </head>
<body>

<div class="navbar navbar-fixed-top">
              <div class="navbar-inner">
                <div class="container">
					<a id="logoM" href="index.html"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					 	 <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class=""><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li ><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class="active"><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
              <li class=""><a href="user_order.php"><i class="icon-shopping-cart"></i> Ordered Products</a></li>
               <li class=""><a href="Email.php"><i class="icon-envelope"></i> Email</a></li>
					</ul>
                   
                    <ul class="nav pull-right">
				<li>
				<a href="user_account2.php"><?php $query = mysql_query("select * from customers where CustomerID='$ses_id'") or die(mysql_error());
                $row = mysql_fetch_array($query);
                $id = $row['CustomerID']; ?> <b>Welcome!  </b> <?php echo $row['Firstname'];?> <?php echo $row['Lastname'];?> <span class="badge badge-info"> <?Php include('announce.php');?></span></a>
					</li>
					<li>
						<a href="logout.php"><i class="icon-off"></i> Log Out</a>
					</li>
					</ul>
                  </div>
                </div>
              </div>
            </div>

<div id="mainBody" class="container">
<div class="thumbnail">
<?php include ('header2.php'); ?></div>

<center><a href="maps.php"><h2><font color="white">Click here!</h2> LOCATION OF THE COMPANY, <b>MAP</b></a></center></font>

		<div class = "well">
        <font color="red">HomeKart</font><br />
 Homekart system is an easy to use online store interface to sell their products an services.The interface also allows internet users to buy their products and services.The main purpose of the application is to allow the customer to shop virtually uing the internet and allow customers to buy the items and articles of their desire from the store.
<br /><br />

<font color="red">SCOPE</font><br />
<ul>
<li>HomeKart system is the simple shopping solution.</li>
<li>It is a full featured website and shopping cart system that bends over backwards to give you the flexibility you need to run your online store.</li>
<li>The basic concept of the application is to allow the customer to shop virtually using the internet and allow customers to buy the items and articles of their desire from the store.</li>
<li>It can also be used to display information of buyers of buyers and sellers and hence is more convenient and cost effective means of shopping .</li>
<li>Consumers can sit in front of the computer and visit online stores and buy a variety of items from online stores..</li>
</ul>
<font color="red">OUR OBJECTIVES</font><br />
1.  To shop comfortly from your own home via online browsing,without having to step out of the door.<br />
2.  Enabling secure registration and profile management facilities for customers.<br />
3.  Performance Excellence<br />
4.  To allow customers to mail the shop about the items they would like to see in the shop.<br />
5.  Providing home deliveries for the purchased items at reasonable cost.<br />
<br/><font color="red">OUR TEAM<br /></font> 
<br/>Sunil Uprety
<br />	Prashant Baral
<br />	Bijay Tamang


		
	
	</div>

<hr class="soft">
<div class="thumbnail"  id="footerSection">
<marquee>&copy; HomeKart<?php echo date("Y")?></marquee>
</div></div></body>
