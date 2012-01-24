<?php
include("db.php");

$query = "SELECT * FROM games";

$result = mysql_query($query) or die(mysql_error());

while($row = mysql_fetch_array($result)){
	$location = $row['Location'];
	$icon = $row['Icon'];
	$id = $row['ID'];
	echo <<<END
<a href="$location"><img src="images/$icon"></a>
<a href="modifyactivity?a=d&id=$id" onclick='javascript:return confirm("Are you sure you want to delete this activity?")'><img src="del.png" height=25 width=25 /></a>
<a href="modifyactivity?a=m&id=$id"><img src="edit.png" height=25 width=25 /></a>
END;

}
echo <<<END


</form>
END;

?>

<h1>Add New</h1>
<form action="addactivity.php" method="post" enctype="multipart/form-data">
<select name="type">
<option>Website</option>
<option>Local</option>
</select>
Activity Name:<input name="name" type="text"/>
Location:<input name="location" type="text"/>
Icon:<input name="icon" type="file" />
<input type="submit" />
</form>
