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

if(isset($_GET['id'])) {
	$sql = "SELECT * FROM tbl_members WHERE member_id='".$_GET['id']."'";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		$sql = "UPDATE tbl_members SET approved='1' WHERE member_id='".$_GET['id']."'";
		$result = $conn->query($sql);
	}
}

$sql = "SELECT * FROM tbl_members WHERE approved='0'";
$result = $conn->query($sql);

?>
<!doctype html>
<html lang="en">
	<head>
		<!-- IE6-8 support of HTML5 elements --> <!--[if lt IE 9]>
		<script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<style>
			body {
				font: normal 16px sans-serif;
			}

			.submit {
				background-color: #4CAF50; /* Green */
				border: none;
				color: white;
				padding: 15px 32px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
			}

			.header-distributed{
				background-color: #292c2f;
				box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
				box-sizing: border-box;
				width: 100%;
				text-align: left;
				font: normal 16px sans-serif;
				
			}

			.header-distributed .header-left p{
				color:  #8f9296;
				font-size: 14px;
				margin: 0;
			}

			/* header links */

			.header-distributed p.header-links{
				font-size:18px;
				font-weight: bold;
				color:  #ffffff;
				margin: 0 0 10px;
				padding: 0;
			}

			.header-distributed p.header-links a{
				display:inline-block;
				line-height: 1.8;
				text-decoration: none;
				color:  inherit;
			}
			
			.header-distributed .header-right{
				float: right;
				margin-top: 6px;
				max-width: 180px;
			}
			
			.header-distributed .header-right a{
				display: inline-block;
				width: 35px;
				height: 35px;
				background-color:  #33383b;
				border-radius: 2px;
			
				font-size: 20px;
				color: #ffffff;
				text-align: center;
				line-height: 35px;
			
				margin-left: 3px;
			}

			ul {
				list-style-type: none;
				margin: 0;
				padding: 0;
				overflow: hidden;
				background-color: #333;
			}

			li {
				float: left;
			}

			li a {
				display: block;
				color: white;
				text-align: center;
				padding: 14px 16px;
				text-decoration: none;
			}

			li a:hover {
				background-color: #111;
			}
		</style>
		<style>
			/* Form CSS */
			input[type=text], select {
				width: 100%;
				padding: 12px 20px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
			}

			input[type=password], select {
				width: 100%;
				padding: 12px 20px;
				margin: 8px 0;
				display: inline-block;
				border: 1px solid #ccc;
				border-radius: 4px;
				box-sizing: border-box;
			}

			input[type=submit] {
				width: 100%;
				background-color: #4CAF50;
				color: white;
				padding: 14px 20px;
				margin: 8px 0;
				border: none;
				border-radius: 4px;
				cursor: pointer;
				font-size:18px;
				font-weight: bold;
			}

			input[type=submit]:hover {
				background-color: #45a049;
			}

			.form {
				border-radius: 5px;
				background-color: #ffffff;
				padding: 20px;
				margin-top:20%;
			}
		</style>
	</head>
	<body>
		<header class="header-distributed">
			<div class="header-left">
				<p class="header-links">
					<ul>
						<li><a href="admin_index.php">Home</a></li>
						<li><a href="#">Pricing</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Faq</a></li>
						<li><a href="#">Contact</a></li>
						<li align="right"><a>Welcome Admin</a></li>
						<li><a href="index.php">Logout</a></li>
					</ul>
				</p>
			</div>					
		</header>
		<div width="100%">
			<table width="100%" cellspacing="5" cellpadding="5" border="3">
				<thead>
					<tr>
						<th>#</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email ID</th>
						<th>Username</th>
						<th>Work Permit</th>
						<th>Registration Type</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php 
					if ($result->num_rows > 0) {
						$index = 1; 
						while($row = $result->fetch_assoc()) {
							echo "<tr>";
							echo "<td>".$index++."</td>";
							echo "<td>".$row['fname']."</td>";
							echo "<td>".$row['lname']."</td>";
							echo "<td>".$row['email_id']."</td>";
							echo "<td>".$row['username']."</td>";
							echo "<td>".$row['work_permit']."</td>";
							echo "<td>".$row['type']."</td>";
							echo "<td><a href='admin_index.php?id=".$row['member_id']."'>Approve</a></td>";
							echo "</tr>";
						}
					}					
					?>
				</tbody>
			</table>
		</div>
	</body>
</html>