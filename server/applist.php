<?php
include("db.php");
$i = 0;

if(!isset($_GET['startrow']) or !is_numeric($_GET['startrow'])){
	$startrow=0;
} else {
	$startrow = (int)$_GET['startrow'];
}

$query = "SELECT * FROM games LIMIT $startrow, 16";

$result = mysql_query($query) or die(mysql_error());

$num_rows = mysql_num_rows($result);

while($row = mysql_fetch_array($result)){
	$location = $row['Location'];
	$icon = $row['Icon'];
	if($i==0){
		echo '<div id="row">';
	}
	if($i==4){
		echo '</div>';
		$i=0;
		echo '<div id="row">';
	}
	echo <<<END
<a href="$location"><img src="images/$icon" /></a>
END;
$i++;
}

?>
</div>


<?php
$prev = $startrow - 16;

if ($prev >= 0)
    echo '<a href="'.$_SERVER['PHP_SELF'].'?startrow='.$prev.'"><img src="images/arrow_back.png" /></a>';
else
    echo '<img src="images/arrow_back_grey.png" />';


if($num_rows < 16)
    echo '<img src="images/arrow_forward_grey.png" />';
else
    echo '<a href="'.$_SERVER['PHP_SELF'].'?startrow='.($startrow+16).'"><img src="images/arrow_forward.png" /></a>';

?>

