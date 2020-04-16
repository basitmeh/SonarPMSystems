<!DOCTYPE html>
<%@page import="java.util.Enumeration"%>
<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@page import="com.sonar.util.PropertiesMapUtil"%>
<%@page import="java.util.Map"%>
<html>

<head>

<link href="sonar-pm/css/login.css" rel="stylesheet" id="sonar-css">
</head>
<body>
	<div class="top-bar">
		<div class="menu-icon-adjustment">
			<div class="menu-icon"></div>
			<div class="menu-icon"></div>
			<div class="menu-icon"></div>
		</div>
		<div class="top-bar-text">Sonar Systems</div>
	</div>

	<div class="login-logo">
		<img class="logo-img" src="sonar-pm/image/Sonar%20Systems_Logo.svg">
	</div>


	<div>
		<br>
		<br>
		<form action="Login" method="post">

			<h1>Welcome</h1>
			<p>Enter your credentials for access</p>
			<div class="formcontainer">
				<%! String s1 = ""; %>

				<% s1  = (String) session.getAttribute("auth");%>
				<% if(s1 != null && s1.equals("false")){ %>
				<p>
					<font color=red>Either user name or password is wrong.</font>
				</p>
				<%} %>
				<div class="container">
					<label for="uname"><strong>Username:</strong></label> <input
						type="text" placeholder=" " name="uname" required><br>
					<label for="psw"><strong>Password:</strong></label> <input
						type="password" placeholder="" name="psw" required>
				</div>
				<span id="forgot-password-section" class="psw"
					style="display: none;"><a href="#">Forgot password?</a></span>
				<button type="submit">LOG IN</button>

			</div>
		</form>
	</div>

</body>
</html>