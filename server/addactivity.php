<?php include('db.php');



$target_path = "images/";

$target_path = $target_path . basename( $_FILES['icon']['name']); 

if(move_uploaded_file($_FILES['icon']['tmp_name'], $target_path)) {

} else{
    echo "There was an error uploading the file, please try again!";
}

$name= $_POST['name'];
$location = $_POST['location'];
$type = $_POST['type'];
$icon = $_FILES['icon']['name'];

if($type == "Website")
	$type=2;

else
	$type=1;


mysql_query("INSERT INTO games (Name, Location, Type, Icon) VALUES('$name','$location','$type', '$icon')") or die(mysql_error());

header( 'Location: activities.php' ) ;
?>
