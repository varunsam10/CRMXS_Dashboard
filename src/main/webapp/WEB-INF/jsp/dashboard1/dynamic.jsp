
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" href="assets/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="assets/css/animate.min.css" rel="stylesheet" />

<!--  Light Bootstrap Table core CSS    -->
<link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="assets/css/demo.css" rel="stylesheet" />


<!--     Fonts and icons     -->
<link
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300'
	rel='stylesheet' type='text/css'>
<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

</head>
<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg">

			<!--   you can change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple" -->


			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.cprvision.com" class="simple-text"> CPR
						Vision </a>
				</div>

				<ul class="nav">
					<li><a href="dashboard1.html"> <i class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
					<li class="active"><a href="user.html"> <i
							class="pe-7s-user"></i>
							<p>User Profile</p>
					</a></li>
					<li><a href="dynamic.html"> <i class="pe-7s-user"></i>
							<p>Dynamic Graphs</p>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Profile</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">
							<li><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-dashboard"></i>
							</a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-globe"></i> <b
									class="caret"></b> <span class="notification">5</span>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Notification 1</a></li>
									<li><a href="#">Notification 2</a></li>
									<li><a href="#">Notification 3</a></li>
									<li><a href="#">Notification 4</a></li>
									<li><a href="#">Another notification</a></li>
								</ul></li>
							<li><a href=""> <i class="fa fa-search"></i>
							</a></li>
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li><a href=""> Account </a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> Dropdown <b class="caret"></b>
							</a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>
							<li><a href="#"> Log out </a></li>
						</ul>
					</div>
				</div>
			</nav>

			
			<div class="content">
				<div class="container-fluid">
					<div class="row">
					
					<style type="text/css">
					table, td, th
					{
					border:1px solid green;
					font-family: 'Oxygen', sans-serif;
					}
					th
					{
					background-color:green;
					color:white;
					}
					
				
					h4
					{
						font-family: 'Oxygen', sans-serif;
						color:#1E90FF;
					}
					</style>
					<script src="http://code.jquery.com/jquery-latest.min.js"></script>
					<script type="text/javascript">
					$(document).ready(function() {
						$("#tablediv").hide();
					     $("#showTable").click(function(event){
					           $.get('PopulateTable',function(responseJson) {
					        	   if(responseJson!=null){
					            	   $("#countrytable").find("tr:gt(0)").remove();
					            	   var table1 = $("#countrytable");
						               $.each(responseJson, function(key,value) { 
						               		   var rowNew = $("<tr><td></td><td></td><td></td><td></td><td></td><td></td></tr>");
						                       rowNew.children().eq(0).text(value['code']); 
						                       rowNew.children().eq(1).text(value['name']); 
						                       rowNew.children().eq(2).text(value['continent']); 
						                       rowNew.children().eq(3).text(value['region']); 
						                       rowNew.children().eq(4).text(value['population']); 
						                       rowNew.children().eq(5).text(value['capital']); 
						                       rowNew.appendTo(table1);
						               });
					                }
					            });
					            $("#tablediv").show();          
						 });      
					});
					</script>
					</head>
					<body>
					<h1>AJAX Retrieve Data from Database in Servlet and JSP using JSON</h1>
					
					<input type="button" value="Show Table" id="showTable"/>
					<br/>
					<br/>
					<div id="tablediv">
					<table cellspacing="0" id="countrytable"> 
					    <tr> 
					        <th scope="col">Code</th> 
					        <th scope="col">Name</th> 
					        <th scope="col">Continent</th> 
					        <th scope="col">Region</th> 
					        <th scope="col">Population</th> 
					        <th scope="col">Capital</th>          
					    </tr> 
					</table>
					</div>
					
					</div>
				</div>
			</div>


			<footer class="footer">
				<div class="container-fluid"></div>
			</footer>

		</div>
	</div>

</body>
<!--   Core JS Files   -->
<script src="assets/js/jquery-1.10.2.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>

<!--  Checkbox, Radio & Switch Plugins -->
<script src="assets/js/bootstrap-checkbox-radio-switch.js"></script>

<!--  Charts Plugin -->
<script src="assets/js/chartist.min.js"></script>

<!--  Notifications Plugin    -->
<script src="assets/js/bootstrap-notify.js"></script>

<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>

<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
<script src="assets/js/light-bootstrap-dashboard.js"></script>

<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

</html>
