<?php
  $username ="root";
  $password ="";
  $server ="localhost";
  $db = "shivangi";

  $con=mysqli_connect($server, $username, $password, $db);
  if($con)
  {
     

  }
  else{
      echo "connection unsccessful";
      die("no connection" .mysqli_connect_error());
  }
?>