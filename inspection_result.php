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
	
	$query = "SELECT* FROM Inspection WHERE passInspection LIKE '%No%'";

	
	$result = mysql_query($query);
	while ($row = mysql_fetch_array($result)){
		echo "Inspection Number: ".$row[0]."<br/>"."Inspection Date: ".$row[1]."<br/>"."Inspection Result: ".$row[2]."<br/>"."Comments		: ".$row[3]."<br/>"."Flat Number :		 ".$row[4]."<br/>"."<br/>";
	}
	mysql_close($connect);
?>

<!DOCTYPE html>
<html>
 	<footer>
		<p> <a href="http://localhost:8080/FINALBOSS/index.html"> Return To Home </a>
	</footer> 
</html>