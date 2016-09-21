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

$sql = "SELECT * FROM tbl_members WHERE username='".$_POST["username"]."'";
$result = $conn->query($sql);
if($_POST['username'] == "admin") {
	header("Location:register.php?errid=1");
} else if ($result->num_rows > 0) {
	/*
	// output data of each row
	while($row = $result->fetch_assoc()) {
		echo "id: " . $row["id"]. " - Name: " . $row["firstname"]. " " . $row["lastname"]. "<br>";
	}
	*/
	header("Location:register.php?errid=1");
} else {
	$sql = "INSERT INTO `tbl_members`(`member_id`, `fname`, `lname`, `username`, `password`, `dob`, `email_id`, `type`, `work_permit`, `approved`)
			VALUES (null, '".$_POST['fname']."', '".$_POST['lname']."', '".$_POST['username']."', '".$_POST['password']."', '".$_POST['dob']."', '".$_POST['email']."', '".$_POST['type']."', '".$_POST['workpermit']."','0')";	
	if ($conn->query($sql) === TRUE) {
		header("Location:register.php?errid=2");
	} else {
		header("Location:register.php?errid=3");
	}
}
$conn->close();

?>