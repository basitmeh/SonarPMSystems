<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
<link
	href="css/sonar.css"
	rel="stylesheet" id="sonar-css">
	
<!-- Add CSS for Tab control -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
	$(function() {
		var $tabButtonItem = $('#tab-button li'), $tabSelect = $('#tab-select'), $tabContents = $('.tab-contents'), activeClass = 'is-active';

		$tabButtonItem.first().addClass(activeClass);
		$tabContents.not(':first').hide();

		$tabButtonItem.find('a').on('click', function(e) {
			var target = $(this).attr('href');

			$tabButtonItem.removeClass(activeClass);
			$(this).parent().addClass(activeClass);
			$tabSelect.val(target);
			$tabContents.hide();
			$(target).show();
			e.preventDefault();
		});

		$tabSelect.on('change', function() {
			var target = $(this).val(), targetSelectNum = $(this).prop(
					'selectedIndex');

			$tabButtonItem.removeClass(activeClass);
			$tabButtonItem.eq(targetSelectNum).addClass(activeClass);
			$tabContents.hide();
			$(target).show();
		});
	});
</script>

</head>
<body class="body-dashboad">

	<%
	    Cookie[] cks = request.getCookies();
	    if (cks != null) {
	        System.out.println("Finding the cookies " + cks);
	        for (int i = 0; i < cks.length; i++) {
	            String name = cks[i].getName();
	            String value = cks[i].getValue();
	            if (name.equals("auth")) {
	                break; // exit the loop and continue the page
	            }
	            if (i == (cks.length - 1)) // if all cookie are not valid redirect to error page
	            {
	                response.sendRedirect("../login.jsp");
	                return; // to stop further execution
	            }
	            i++;
	        }
	    } else {
	        response.sendRedirect("../login.jsp");
	        return; // to stop further execution
	    }
	%>

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
	
	
	<div class="navigation-container">
		<img  src="image/sonar.png">
		<h4 > Logged in as, Eric Leach				
			<form action="Logout" method="post">
				<a>
					<input type="submit" value="Log out">
				</a>	
			</form>
		</h4>
	</div>


	<div class="tabs">
		<div class="tab-button-outer">
			<ul id="tab-button">
				<li><a href="#dashboard">Dashboard</a></li>
				<li><a href="#reports">Executive Reports</a></li>
				<li><a href="#projects">Projects</a></li>
				<li><a href="#costcenters">Cost Centers</a></li>
			</ul>
		</div>
		<div class="tab-select-outer">
			<select id="tab-select">
				<li><a href="#dashboard">Dashboard</a></li>
				<option value="#reports">Executive Reports</option>
				<option value="#projects">Projects</option>
				<option value="#costcenters">Cost Centers</option>
			</select>
		</div>
		
	    <div id="dashboard" class="tab-contents">
			<img  src="image/dashboard.png">
		</div>

		<div id="reports" class="tab-contents">
			<img  src="image/report.png">
		</div>
		
		<div id="projects" class="tab-contents">
			<img  src="image/projects.png">
		</div>
				
		<div id="costcenters" class="tab-contents">
			<img  src="image/costcenter.png">
		</div>



	</div>

</body>
</html>
