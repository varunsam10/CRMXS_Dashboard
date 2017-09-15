
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
<!--     sDashboard     -->
<!-- load jquery ui css theme -->
<link type="text/css" href="assets/dash5/css/jquery-ui.css"
	rel="stylesheet" />
<!-- load the dashboard css -->
<link href="assets/dash5/css/sDashboard.css" rel="stylesheet">
<link href="assets/dash5/css/jquery.minitwitter.css"
	rel="stylesheet">
<!-- load gitter css -->
<link href="assets/dash5/css/gitter/css/jquery.gritter.css"
	rel="stylesheet" />
<!--     sDashboard     -->
<style>
html {
	overflow-y: hidden
}
</style>

</head>

<body>

	<div class="wrapper">
		<div class="sidebar" data-color="purple"
			data-image="assets/img/sidebar-5.jpg">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.cprvision.com" class="simple-text"> CPR
						Vision </a>
				</div>

				<ul class="nav">
					<li class="active"><a href="dashboard1.html"> <i
							class="pe-7s-graph"></i>
							<p>Dashboard</p>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<!-- Main panel -->
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Dashboard</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">
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
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">

					<div class="row"></div>
					<!--     sDashboard     -->
					<!-- Main panel -->
					<label>Features :</label>
					<button id="btnAddWidget">1) Add Widget</button>
					<button id="btnAddTableWidget">2) Add Table widget</button>
					<button id="btnDeleteWidget">3) Delete Table Widget</button>
					<button id="btnAddPieChartWidget">4) Add Pie Chart widget</button>
					<button id="btnAddBarChartWidget">5) Add Bar Chart widget</button>
					<button id="btnAddLineChartWidget">6) Add Line Chart
						widget</button>

					<div id="switcher" style="float: right;"></div>

					<hr />
					<ul id="myDashboard">

					</ul>

					<div id="myTweets"></div>
				</div>
			</div>

		</div>

		<!-- 	<footer class="footer">
			<div class="container-fluid"></div>
		</footer> -->

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

<!--     sDashboard     -->
<!-- Load jquery library -->
<script src="assets/dash5/js/jquery/jquery-1.8.2.js" type="text/javascript"></script>
<!-- load jquery ui library -->
<script src="assets/dash5/js/jquery/jquery-ui.js" type="text/javascript"></script>

<!-- load touch punch library to enable dragging on touch based devices -->
<script src="assets/dash5/js/touchpunch/jquery.ui.touch-punch.js"	type="text/javascript"></script>
<!-- load gitter notification library -->
<script src="assets/dash5/js/gitter/jquery.gritter.js"	type="text/javascript"></script>

<!-- load datatables library -->
<script src="assets/dash5/js/datatables/jquery.dataTables.js"></script>

<script src="assets/dash5/js/flotr2/flotr2.js" type="text/javascript"></script>

<!-- load dashboard library -->
<script src="assets/dash5/js/jquery-sDashboard.js"	type="text/javascript"></script>

<!-- theme switcher -->
<script src="assets/dash5/js/themeswitcher/jquery.themeswitcher.min.js" type="text/javascript"></script>

<!-- mini twitter library -->
<script src="assets/dash5/js/miniTwitter/jquery.minitwitter.js"	type="text/javascript"></script>

<!-- sample data external script file -->
<script src="assets/dash5/js/exampleData.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		//create a mini twitter div which is external
		$("#myTweets").miniTwitter('ladygaga');

		//Theme switcher plugin
		$("#switcher").themeswitcher({
			imgpath : "assets/dash5/css/images/",
			loadTheme : "cupertino"
		});

		//**********************************************//
		//dashboard json data
		//this is the data format that the dashboard framework expects
		//**********************************************//

		var dashboardJSON = [
				{
					widgetTitle : "Bubble Chart Widget",
					widgetId : "id009",
					widgetType : "chart",
					widgetContent : {
						data : myExampleData.bubbleChartData,
						options : myExampleData.bubbleChartOptions
					}

				},
				{
					widgetTitle : "Table Widget",
					widgetId : "id3",
					widgetType : "table",
					setJqueryStyle : true,
					widgetContent : myExampleData.tableWidgetData
				},
				{
					widgetTitle : "Text Widget",
					widgetId : "id2",
					widgetContent : "Lorem ipsum dolor sit amet,consectetur adipiscing elit. Aenean lacinia mollis condimentum. Proin vitae ligula quis ipsum elementum tristique. Vestibulum ut sem erat."
				}, {
					widgetTitle : "Pie Chart Widget",
					widgetId : "id001",
					widgetType : "chart",
					widgetContent : {
						data : myExampleData.pieChartData,
						options : myExampleData.pieChartOptions
					}

				}, {
					widgetTitle : "bar Chart Widget",
					widgetId : "id002",
					widgetType : "chart",
					widgetContent : {
						data : myExampleData.barChartData,
						options : myExampleData.barChartOptions
					}

				}, {
					widgetTitle : "line Chart Widget",
					widgetId : "id003",
					widgetType : "chart",
					getDataBySelection : true,
					widgetContent : {
						data : myExampleData.lineChartData,
						options : myExampleData.lineChartOptions
					}

				}, {
					widgetTitle : "Lady gaga tweets",
					widgetId : "tweet123",
					widgetContent : $("#myTweets")
				} ];

		//basic initialization example
		$("#myDashboard").sDashboard({
			dashboardData : dashboardJSON
		});

		//table row clicked event example
		$("#myDashboard")
				.bind(
						"sdashboardrowclicked",
						function(e, data) {
							$.gritter
									.add({
										position : 'bottom-left',
										title : 'Table row clicked',
										time : 1000,
										text : 'A table row within a table widget has been clicked, please check the console for additional event data'
									});

							if (console) {
								console.log("table row clicked, for widget: "
										+ data.selectedWidgetId);
							}
						});

		//plot selected event example
		$("#myDashboard")
				.bind(
						"sdashboardplotselected",
						function(e, data) {
							$.gritter
									.add({
										position : 'bottom-left',
										title : 'Plot selected',
										time : 1000,
										text : 'A plot has been selected within a chart widget, please check the console for additional event data'
									});
							if (console) {
								console
										.log("chart range selected, for widget: "
												+ data.selectedWidgetId);
							}
						});
		//plot click event example
		$("#myDashboard")
				.bind(
						"sdashboardplotclicked",
						function(e, data) {
							$.gritter
									.add({
										position : 'bottom-left',
										title : 'Plot Clicked',
										time : 1000,
										text : 'A plot has been clicked within a chart widget, please check the console for additional event data'
									});
							if (console) {
								console.log("chart clicked, for widget: "
										+ data.selectedWidgetId);
							}
						});

		//widget order changes event example
		$("#myDashboard")
				.bind(
						"sdashboardorderchanged",
						function(e, data) {
							$.gritter
									.add({
										position : 'bottom-left',
										title : 'Order Changed',
										time : 4000,
										text : 'The widgets order has been changed,check the console for the sorted widget definitions array'
									});
							if (console) {
								console.log("Sorted Array");
								console.log("+++++++++++++++++++++++++");
								console.log(data.sortedDefinitions);
								console.log("+++++++++++++++++++++++++");
							}

						});
		//example for adding a text widget
		$("#btnAddWidget")
				.click(
						function() {
							$("#myDashboard")
									.sDashboard(
											"addWidget",
											{
												widgetTitle : "Widget 7",
												widgetId : "id008",
												widgetContent : "Lorem ipsum dolor sit amet,"
														+ "consectetur adipiscing elit."
														+ "Aenean lacinia mollis condimentum."
														+ "Proin vitae ligula quis ipsum elementum tristique."
														+ "Vestibulum ut sem erat."
											});
						});

		//example for adding a table widget
		$("#btnAddTableWidget").click(function() {
			$("#myDashboard").sDashboard("addWidget", {
				widgetTitle : "Table Widget 2",
				widgetId : "id007",
				widgetType : "table",
				setJqueryStyle : true,
				widgetContent : myExampleData.tableWidgetData
			});

		});

		//example for  deleting a widget
		$("#btnDeleteWidget").click(function() {
			$("#myDashboard").sDashboard("removeWidget", "id007");
		});

		//example for adding a pie chart widget
		$("#btnAddPieChartWidget").click(function() {

			$("#myDashboard").sDashboard("addWidget", {
				widgetTitle : "Pie Chart 2",
				widgetId : "id006",
				widgetType : "chart",
				widgetContent : {
					data : myExampleData.pieChartData,
					options : myExampleData.pieChartOptions
				}
			});

		});

		//example for adding a bar chart widget
		$("#btnAddBarChartWidget").click(function() {

			$("#myDashboard").sDashboard("addWidget", {
				widgetTitle : "Bar Chart 2",
				widgetId : "id005",
				widgetType : "chart",
				widgetContent : {
					data : myExampleData.barChartData,
					options : myExampleData.barChartOptions
				}
			});
		});

		//example for adding an line chart widget
		$("#btnAddLineChartWidget").click(function() {
			$("#myDashboard").sDashboard("addWidget", {
				widgetTitle : "Line Chart 2",
				widgetId : "id004",
				widgetType : "chart",
				getDataBySelection : true,
				widgetContent : {
					data : myExampleData.lineChartData,
					options : myExampleData.lineChartOptions
				}

			});
		});

	});
</script>
<!--     sDashboard     -->
</html>
