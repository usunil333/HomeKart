<?php
	$con=mysqli_connect("localhost","root","") or die ("DOWN!");
		if ($con) {
			mysqli_select_db($con,"homekart");
           
		}
		else
		{
			die("DOWN");
		}	

