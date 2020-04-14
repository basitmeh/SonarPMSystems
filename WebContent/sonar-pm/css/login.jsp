<!DOCTYPE html>
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
		<div class="top-bar-text"> 
			Sonar Systems
		</div>		
	</div>  
	
	<div class="login-logo">
		<img class="logo-img" src="sonar-pm/image/Sonar%20Systems_Logo.svg">
	</div>
  
  
  <div>
    <br><br>
  <form action="Login" method="post">

      <h1>Welcome</h1>
	  <p>Enter your credentials for access</p>
      <div class="formcontainer" "style=width: 617.58px;">
      <div class="container">
        <label for="uname"><strong>Username:</strong></label>
        <input type="text" placeholder=" " name="uname" required><br>
        <label for="psw"><strong>Password:</strong></label>
        <input type="password" placeholder="" name="psw" required>
      </div>
	 <span id="forgot-password-section" class="psw" style="display: none;"><a href="#">Forgot password?</a></span>
      <button type="submit">LOG IN</button>
        
      </div>
    </form>
  </div> 
    
  </body>
</html>