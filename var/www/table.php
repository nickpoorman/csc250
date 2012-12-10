<html>
<head>
<title>Favorite Color</title>

</head>

<body>
<h1>Favorite Color</h1>
 

<?php
$db_host = 'localhost';
$db_user = 'root';
$db_pwd = 'aceracer';

$database = 'student';
$table = 'users';

if (!mysql_connect($db_host, $db_user, $db_pwd))
    die("Can't connect to database");

if (!mysql_select_db($database))
    die("Can't select database");

$f = $_POST['firstname'];

$result = mysql_query("SELECT firstname, favcolor FROM users WHERE firstname = \"$f\"");
if (!$result) {
    die("Query to show fields from table failed: " . mysql_error());
}
$row = mysql_fetch_array($result);
if(!$row){
	print("User: {$f} doesn't exist");
}
else

{
?>
<h1> Welcome, <?php echo $row[0]; ?> </h1>

<p>You said your favorite color is <?php echo $_POST['color']; ?> and I have it
listed as
<?php echo $row[1];
 

if($_POST['color'] == $row[1])
{
echo "<p> ";
echo $_POST['color'];
echo " is equal to ";
echo $row[1];
echo ". You have told the truth!!</p>";
}
else
{
echo "<p> ";
echo $_POST['color'];
echo " is not equal to ";
echo $row[1];
echo ". You are telling a lie!!</p>";

}
}

mysql_free_result($result);
?>

</body>
</html>
