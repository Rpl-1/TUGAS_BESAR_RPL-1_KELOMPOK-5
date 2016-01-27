<?php

error_reporting(0);

  $server    = "localhost";
  $username  = "root";
  $password  = "";
  $database  = "brotoresto";
  
  mysql_connect($server, $username, $password)
  		or die ("<h2 align = 'center'><b><font color='red'>Database tidak 	terhubung!!</font></b></h2>");
		
		mysql_select_db($database) 
	     or die ("<h2 align = 'center'><b><font color='red'>Koneksi tidak terbuka!!</font></b></h2>");
		 
		 $mysqli = new mysqli($server, $username, $password, $database);  
?>
