<?php
$db_host = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "days";

 $con = mysqli_connect($db_host,$db_username,$db_password,$db_name);
 if (!$con){
 echo("not connected:".mysqli_connect_error());
 exit();
 }

?>
