<?php
	
	session_Start();
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "admissions_office";
	$name = $_POST['student_name'];

	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
	} 
	$sql = "SELECT Adviser.advisorName, Adviser.telephoneNumber FROM Adviser INNER JOIN Student ON Adviser.advisorName = Student.advisorName WHERE Student.studentName = '$name'";
	$result = $conn->query($sql);
	if ($result == false) {
		die('Query failed: ' . mysql_error());
	}
	$row = $result->fetch_row();
	echo "Adviser Name      : ".$row[0]."<br/>";
	echo "Telephone Number: ".$row[1];
?>

<!DOCTYPE html>
<html>
 	<footer>
		<p> <a href="http://localhost:8080/FINALBOSS/index.html"> Return To Home </a>
	</footer> 
</html>