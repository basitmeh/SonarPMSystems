<!DOCTYPE html>
<html>
 
  <head>
   
 <style>
 
 .menu-icon {
	width: 30px;
	height: 3px;
	margin: 2px 0;
	
	background: #878C90;
}

.menu-icon-adjustment {
  margin-top: 10px;
  margin-bottom: 10px;
  margin-right: 50px;
  margin-left: 20px;
}
 
 .top-bar {
	left: 0%;
	right: 0%;
	top: 0%;
	bottom: 0px;
	
	background: linear-gradient(180deg, #B5B7C7 41.33%, #FFFDFD 100%);
	border: 2px solid #A2ABB2;
	box-sizing: border-box;
	box-shadow: 0px 3px 3px rgba(0, 0, 0, 0.1);
	border-radius: 1px;
	overflow: hidden;
	
	display: flex;
	
	border : 10px;
}

.top-bar-text {
	font-family: HelveticaNeue;
	font-size: 16px;
	line-height: 19px;
	/* identical to box height */
	
	letter-spacing: 0.2px;
	
	color: #454545;
    display: flex;
    justify-content: center;
    
	margin-top: 10px;
	margin-bottom: 10px;
	margin-right: 150px;
	margin-left: 0px;
}

.login-logo{
margin-top: 2%;
margin-left: 3%;
}

body {
    display: block;
    margin: 0px;
}

      html {
     
position: absolute;
width: 100%;
height: 100%;
left: 0px;
top: 0px;
padding:0px;
margin:0px;

background: linear-gradient(180deg, #EDF2F7 15%, #6686B6 39.16%, #446BA6 51.63%, #7E9EC6 100.96%, #D3EAF5 149.41%);
  
	  
      }
      form {
      border: 5px solid #f1f1f1;
	  background-color: #f1f1f1;
      margin-top: 5%;
      margin-left: 25%;
	  width: 35%;
	  height: 40%;
	  text-align: center;
	  display:center;
	  padding-bottom: 3%;
	  
	  }
      input[type=text], input[type=password] {
      width:40%;
      padding: 6px 25px;
      margin: 10px 15px;
      display: inline-block;
      border: #f1f1f1;
      box-sizing: border-box;
      padding-right: 25px 40px;
	
	  
	  }
     
      button {

left: 70.2%;
right: 21.18%;
top: 73.04%;
bottom: 17.58%;

background: linear-gradient(180deg, #FFFFFF 0%, #6686B6 26.4%, #446BA6 55.12%, #7E9EC6 114.16%, #D3EAF5 149.41%);
border: 1px solid #979797;
box-sizing: border-box;
border-radius: 2px;  

font-family: Consolas;
font-style: normal;
font-weight: normal;
font-size: 14px;
line-height: 16px;
text-align: center;
letter-spacing: 0.198333px;

color: #FFFFFF;    
      
      
      }
      
      h1 {
      text-align:center;
      font-size:10;
	   background-color: #f1f1f1;
      margin-top: 25px;
	  
	  }
	  p {
	  text-align:center;
	   font-size:10;
	  )
      button:hover {
      opacity: 0.8;
      }
      .formcontainer {
      text-align: right;
      margin: 0px 0px 0px;
	   background-color: #f1f1f1;
     
	  
	  
	  }
      .container {
      padding: 50px ;
      text-align:right;
	   background-color: #f1f1f1;
      
	 
	  }
      span.psw {
      float: center;
      padding-center: 20px;
      padding-right: 50px;
	  background-color: #f1f1f1;
      padding: 30px; 
	  padding-left: 50px;
	  
	  font-family: Consolas;
		font-style: normal;
		font-weight: normal;
		font-size: 16px;
		line-height: 19px;
		text-align: center;
		letter-spacing: 0.226667px;
		
		color: #008EDC;
	  
	  }
      
	    
	  /* Change styles for span on extra small screens */
      @media screen and (max-width: 20px) {
      span.psw {
     
      float: right;
	   background-color: #f1f1f1;
      }
  </style>
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
		<img  src="sonar-pm/image/login-logo.png">
	</div>
  
  
  <div>
    <br><br>
  <form action="">

	  </br>
	  </br>
	  <p><strong>You don't have permission to access this page</strong></p>
	  </br>
	  <p><small>Please contact your administrator for access.</small></p>
	  
	  </br>
	  </br>
	  <a href="login.jsp"> Go back </a>

    </form>
  </div> 
    
  </body>
</html>