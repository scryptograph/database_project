<?php 
	session_start();

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "admissions_office";

	
	$connect = mysql_connect($servername,$username,$password);
	if(! $connect)
	{
		die('NO CONNECTION'.mysql_error());
	}
	mysql_select_db('admissions_office') or die(mysql_error());
	$query = sprintf("SELECT Hall.hallNumber, Staff.staffName, Staff.staffPhoneNumber FROM Hall INNER JOIN Staff ON (Hall.staffNumber = Staff.staffNumber)");

	
	$result = mysql_query($query);
	while ($row = mysql_fetch_array($result)){
		echo "Hall Number: ".$row[0]."<br/>"."Manager Name: ".$row[1]."<br/>"."Telephone Number: ".$row[2]."<br/>"."<br/>";
	}
	mysql_close($connect);
?>

<!DOCTYPE html>
<html>
 	<footer>
		<p> <a href="http://localhost:8080/FINALBOSS/index.html"> Return To Home </a>
	</footer> 
</html>