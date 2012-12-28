<?php

$host="localhost";
$database="Rachel";
$user="Rachel";
$password="Rachelspassword";

mysql_connect($host, $user, $password) or die(mysql_error());

mysql_select_db($database) or die(mysql_error());

?>
