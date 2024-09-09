<?php include('../../../include/connect.php');
include('function.php');
        $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
        $limit = 3;
        $startpoint = ($page * $limit) - $limit;
        
        
        $statement = "`tb_announcement`";

?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="../../../img/logo.jpg">

    <title>HomeKart: An Online Store</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">

    
    <link href="offcanvas.css" rel="stylesheet">

    
  </head>

  <body>
      <?php include('header.php');?>


        </div><!-- /.nav-collapse -->

      </div><!-- /.container -->
    </div><!-- /.navbar -->

    <div class="container">

      <div class="row row-offcanvas row-offcanvas-right">


          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
           <div class="jumbotron">
            <h2>Advertising System</h2>
          </div>


<!---BODY-->
       <div class="row row-offcanvas row-offcanvas-right">

        <div class="col-xs-12 col-sm-9">
          <p class="pull-right visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas">Toggle nav</button>
          </p>
          
          <iframe src="messages_box.php" height="500px" width="100%"></iframe>
          
          
        </div><!--/span-->

        
       
		<div class="col-xs-6 col-sm-3 " id="sidebar" role="navigation">
		<div class="list-group">
			<a href="index.php" class="list-group-item ">Home</a>
            <a href="Customers.php" class="list-group-item">Customers<img src="customer.png"></a>
            <a href="Customer_list.php" class="list-group-item">Customer List<img src="customer.png"></a>
			<a href="announcement.php" class="list-group-item">Announcement<img src="head.png"></a>
            <a href="messages.php" class="list-group-item active">Messages <img src="message.png"></a>
			
          </div>
		  
        
        </div><!--/span-->

      </div><!--/row-->


      <hr>

      <?php include('footer.php');?>

    </div><!--/.container-->

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="offcanvas.js"></script>
  </body>
</html>
