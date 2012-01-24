<?php

$host="localhost";
$database="Childrens";
$user="Childrens";
$password="test";

mysql_connect($host, $user, $password) or die(mysql_error());

mysql_select_db($database) or die(mysql_error());

?>
