<?php include('include/connect.php');
 include('include/session.php');
 function formatMoney($number, $fractional=false) {
                if ($fractional) {
                  $number = sprintf('%.2f', $number);
                }
                while (true) {
                  $replaced = preg_replace('/(-?\d+)(\d\d\d)/', '$1,$2', $number);
                  if ($replaced != $number) {
                    $number = $replaced;
                  } else {
                    break;
                  }
                }
                return $number;
              } 

 
 
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
					<a id="logoM" href="user_index.php"><img src="" alt=""/></a>
                  <a data-target="#sidebar" data-toggle="collapse" class="btn btn-navbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </a>
                  <div class="nav-collapse">
                    <ul class="nav">
					 <li class=""><a href="user_index.php"><i class="icon-home icon-large"></i> Home</a></li>
					  <li class=""><a href="user_products.php"><i class=" icon-th-large icon-large"></i> Products</a></li>
					  <li class="active"><a href="user_contact.php"><i class="icon-signal"></i> Contact Us</a></li>
                      <li class=""><a href="user_aboutus.php"><i class="icon-flag"></i> About Us</a></li>
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

<div id="mainBody" class="container"><div class="thumbnail">
<?php include ('user_header.php'); ?>
<center><a href="maps.php"><h2>Click here!</h2> LOCATION OF THE STORE, <b>MAP</b></a></center></div>
<br />
		<div class = "jumbotron">
	<ol><b><align = "center"> For more comments and suggestions, contact us at: </align><ol></b>
	<br/>
	<p>The store is located at Balkumari, Lalitpur, Nepal</p>
	<p>Email Address: homekart@gmail.com</p>
	<p>Website: http://homekart.blogspot.com</p>
    <p>https://www.facebook.com/HomeKart-807788686038250</p>
	<p>Contact No:   5186354,5186355,5186270,5186358,5186361</p>
		
	
	</div>

<hr class="soft">
<div class="thumbnail"  id="footerSection">
<marquee><b>&copy; HomeKart<?php echo date("Y")?></b></marquee></body></html></div>

