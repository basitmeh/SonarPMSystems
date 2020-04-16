<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
</style>
<link href="css/sonar.css" rel="stylesheet" id="sonar-css">

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
	
	function changeUrl(tabName) {
		var stateObj = {
			foo : "bar"
		};
		window.history.pushState(stateObj, "page 2", tabName + ".jsp");

		var tabDesc = document.getElementById("tabdesc");
		if (tabName === 'reports') {
			tabDesc.textContent = "Reports";
		} else if (tabName === 'projects') {
			tabDesc.textContent = "Projects";
		} else if (tabName === 'costcenters') {
			tabDesc.textContent = "Cost Centers";
		} else if (tabName === 'dashboard') {
			tabDesc.textContent = "Dashboard";
		}

	}
</script>

</head>
<body class="body-dashboad" onload="changeUrl('dashboard');">

	<%
	    Cookie[] cks = request.getCookies();
	    if (cks != null) {
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
		<div class="top-bar-text">Sonar Systems</div>
	</div>



	<div class="navigation-container">
		<img src="image/sonar.png">
		<h4>
			<%!String firstName = "";%>
			<%!String lastName = "";%>
			<%!StringBuilder sb = new StringBuilder();%>

			<%
			    firstName = (String) session.getAttribute("firstName");
			%>
			<%
			    lastName = (String) session.getAttribute("lastName");
			%>
			<%
			    if ((firstName != null && !firstName.isEmpty())
			            && (lastName != null && !lastName.isEmpty())) {
			%>

			Logged in as
			<%
			    out.print(firstName + " " + lastName);
			%>
			<%
			    }
			%>
			<form action="Logout" method="post">
				<a> <input type="submit" value="Log out">
				</a>
			</form>
		</h4>
	</div>


	<div class="tabs">
		<div class="tab-button-outer">
			<ul id="tab-button">
				<li><a href="#dashboard" onclick="changeUrl('dashboard')">Dashboard</a></li>
				<li><a href="#reports" onclick="changeUrl('reports')">Executive
						Reports</a></li>
				<li><a href="#projects" onclick="changeUrl('projects')">Projects</a></li>
				<li><a href="#costcenters" onclick="changeUrl('costcenters')">Cost
						Centers</a></li>
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

		<div class="section-header">
			<p>
				<%
				    out.print(firstName);
				%>'s <span id="tabdesc"></span>
			</p>
		</div>

		<div id="dashboard" class="tab-contents">
			<img src="image/dashboards_v2.png">
		</div>

		<div id="reports" class="tab-contents">
			<img src="image/exec%20reports_v2.png">
		</div>

		<div id="projects" class="tab-contents">
			<img src="image/projects_v2.png">
		</div>

		<div id="costcenters" class="tab-contents">
			<img src="image/cost%20centers_v2.png">
		</div>

		<div class="copyrights-section">Sonar Systems Inc. Copyright
			2020 | All Rights Reserved</div>


	</div>

</body>
</html>
