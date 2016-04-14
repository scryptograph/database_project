<?php 
	session_start();

	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "admissions_office";

	$conn = new mysqli($servername, $username, $password, $dbname);
	// Check connection
	if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
	} 

	$sql1 = "SELECT COUNT(studentCategory) AS FreshmenStudentNumber FROM Student WHERE studentCategory = 'Freshman'";
	$result1 = $conn->query($sql1);

	if (!$result1) {
		die("Query Failed" . mysql_error());
	}
	$row = $result1->fetch_row();
	echo "Number of Freshmen: ".$row[0]."<br/>";

	$sql2 = "SELECT COUNT(studentCategory) AS FreshmenStudentNumber FROM Student WHERE studentCategory = 'Sophmore'";
	$result2 = $conn->query($sql2);

	if (!$result2) {
		die("Query Failed" . mysql_error());
	}
	$row = $result2->fetch_row();
	echo "Number of Sophmores: ".$row[0]."<br/>";
	
	$sql3 = "SELECT COUNT(studentCategory) AS FreshmenStudentNumber FROM Student WHERE studentCategory = 'Junior'";
	$result3 = $conn->query($sql3);

	if (!$result3) {
		die("Query Failed" . mysql_error());
	}
	$row = $result3->fetch_row();
	echo "Number of Juniors: ".$row[0]."<br/>";
	
	$sql2 = "SELECT COUNT(studentCategory) AS FreshmenStudentNumber FROM Student WHERE studentCategory = 'Senior'";
	$result2 = $conn->query($sql2);

	if (!$result2) {
		die("Query Failed" . mysql_error());
	}
	$row = $result2->fetch_row();
	echo "Number of Seniors: ".$row[0]."<br/>";

	$sql2 = "SELECT COUNT(studentCategory) AS FreshmenStudentNumber FROM Student WHERE studentCategory = 'Graduate'";
	$result2 = $conn->query($sql2);

	if (!$result2) {
		die("Query Failed" . mysql_error());
	}
	$row = $result2->fetch_row();
	echo "Number of Grads: ".$row[0]."<br/>";
	

?>

<!DOCTYPE html>
<html>
 	<footer>
		<p> <a href="http://localhost:8080/FINALBOSS/index.html"> Return To Home </a>
	</footer> 
</html>