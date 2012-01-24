
<html>
<head>
<title>Admin Interface</title>
</head>

<body>

<form action="addactivity.php" method="post"> 
<select name="type"> 
<option>Web Page</option>
<option>Local Application</option>
</select>
Application Name: <input name="name" type="text" />
Description: <input name="description" type="text" />
Location: <input name="location" type="text" />
<select name="age">
<option>3 and Under</option>
<option>3-6</option>
<option>6-9</option>
<option>All ages</option>
</select>
<input type="submit" />
</form>

</body>

</html>
