<?php
$command = $_GET['p'];
$host = getenv(REMOTE_ADDR);
$output = shell_exec('python /var/www/Serverpush.py ' . $host . ' '. $command);
echo $output;

Header( 'Location: https://10.10.10.48' ) ;

?>
