<?php

// ProxySQL connection string
$databaseHost = getenv('DB_HOST');
$proxysqlport = getenv('DB_PORT');
$databaseUsername = getenv('DB_USERNAME');
$databasePassword = getenv('DB_PASSWORD');
$databaseName = getenv('DB_NAME');

$con = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName, $proxysqlport);
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName, $proxysqlport); 
 
?>