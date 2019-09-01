<?php
    
error_reporting(E_ALL);

ini_set("display_errors", 1);

$conn = mysqli_connect('docker-mysql.cogxf0pevsbj.us-east-2.rds.amazonaws.com', 'admin', 'wkek15sk', 'test', '3306');


   if (!$conn)
  {
  die("Connection error: " . mysqli_connect_errno());
   }
    $sql = "SELECT VERSION()";
$result = mysqli_query($conn, $sql);
$row = mysqli_fetch_array($result);
print_r($row["VERSION()"]);

?>