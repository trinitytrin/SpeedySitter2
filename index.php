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
						<li><a href="index.php">Home</a></li>
						<li><a href="#">Pricing</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Faq</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
				</p>
			</div>
		</header>
		<div width="100%">
			<div style="float:left;width:50%">
				<img src="welcome.jpg" width="100%" />
			</div>
			<div style="float:right;width:50%">
				<div class="form">
				  <form action="login.php" method="post">
					<div align="center"><h1>Login</h1></div>
					<div style="color: #ff0000;">
						<?php 
							if(isset($_GET['errid'])) {
								if($_GET['errid'] == "1"){
									echo "Invalid Username and Password.";
								}
							}
						?>
					</div>
					<label for="username"><b>Username</b></label>
					<input type="text" id="username" name="username">

					<label for="password"><b>Password</b></label>
					<input type="password" id="password" name="password">
				  
					<input type="submit" value="Login">

					<label for="password"><b>New Customer?</b>&nbsp;<a href="register.php">Register</a>&nbsp;<b>here</b></label>
				  </form>
				</div>
			</div>
		</div>
	</body>
</html>