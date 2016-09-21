<?php	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db = "speedysitter";
	
	// Create connection
	$conn = new mysqli($servername, $username, $password, $db);
	
	// Check connection
	if ($conn->connect_error) {
		die("Connection failed: " . $conn->connect_error);
	}
	
	$sql = "SELECT * FROM tbl_members WHERE username='".$_POST["username"]."' and password='".$_POST['password']."' and approved='1'";
	$result = $conn->query($sql);
	
	if($_POST['username'] == "admin" && $_POST['password'] == "admin") {
		header("Location:admin_index.php");
	} else if ($result->num_rows > 0) {
		header("Location:welcome.php");
	} else {
		header("Location:index.php?errid=1");
	}
	$conn->close();
?>