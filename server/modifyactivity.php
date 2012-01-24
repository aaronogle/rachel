<?php include('db.php');

if(isset($_GET['a'])){

$action = $_GET['a'];

$ID = $_GET['id'];
if($action == "d"){
	mysql_query("DELETE FROM games WHERE ID = '$ID'") or die(mysql_error());
	header('Location: activities.php');
}
if($action == "m"){
	echo <<<END
	<script type="text/javascript">
	var newlocation=prompt("Please Enter updated url")
	window.location = "modifyactivity?a=m2&id=$ID&loc="+newlocation
	</script>
END;
}
if($action == "m2"){
	if(isset($_GET['loc'])){
		$location = $_GET['loc'];
		mysql_query("UPDATE games SET Location = '$location' WHERE ID = '$ID'");
		header('Location: activities.php');
	}
}

}//end of isset

?>
