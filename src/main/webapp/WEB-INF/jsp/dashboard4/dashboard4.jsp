	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

	<!DOCTYPE html>
	<html lang="en">
	  <head>
	<meta charset="utf-8" />
		<link rel="icon" type="image/png" href="assets/img/favicon.ico">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
		<meta name="viewport" content="width=device-width" />

		<!-- Bootstrap core CSS     -->
		<link href="assets/css/bootstrap.min.css" rel="stylesheet" />

		<!-- Animation library for notifications   -->
		<link href="assets/css/animate.min.css" rel="stylesheet"/>

		<!--  Light Bootstrap Table core CSS    -->
		<link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet"/>

		<!--  CSS for Demo Purpose, don't include it in your project     -->
		<link href="assets/css/demo.css" rel="stylesheet" />

		<!--     Fonts and icons     -->
		<link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,700,300' rel='stylesheet' type='text/css'>
		<link href="assets/css/pe-icon-7-stroke.css" rel="stylesheet" />

		<style>
		html {
			overflow-y: hidden
		}
		</style>
		<!--Widget Integration -->
		<link href="assets/css/dashboard4/freeboard.min.css" rel="stylesheet" />
		<!--Widget Integration -->
	
	  </head>
	  <body>
	  <div id="board-content">
    	<img id="dash-logo" data-bind="attr:{src: header_image}, visible:header_image()">
    		<div class="gridster responsive-column-width">
       			 <ul data-bind="grid: true">
        		 </ul>
    		</div>
	  </div>
		<div class="wrapper">
		<div class="sidebar" data-color="purple" data-image="assets/img/sidebar-5.jpg">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="http://www.cprvision.com" class="simple-text">
						CPR Vision
					</a>
				</div>

				<ul class="nav">
					<li class="active">
						<a href="dashboard1.html">
							<i class="pe-7s-graph"></i>
							<p>Dashboard</p>
						</a>
					</li>
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default navbar-fixed">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">Dashboard</a>
					</div>
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav navbar-left">
							<li class="dropdown">
								  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
										<i class="fa fa-globe"></i>
										<b class="caret"></b>
										<span class="notification">5</span>
								  </a>
								  <ul class="dropdown-menu">
									<li><a href="#">Notification 1</a></li>
									<li><a href="#">Notification 2</a></li>
									<li><a href="#">Notification 3</a></li>
									<li><a href="#">Notification 4</a></li>
									<li><a href="#">Another notification</a></li>
								  </ul>
							</li>
							<li>
							   <a href="">
									<i class="fa fa-search"></i>
								</a>
							</li>
							 <li id="add-pane" data-bind="click: createPane"><i class="icon-plus icon-white"></i><label>Add Pane</label></li>
						</ul>					
					</div>
				</div>
			</nav>
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-4">
							<div class="card">
								<div class="header">
									<h4 class="title">Security Statistics</h4>
									<p class="category">Last Campaign Performance</p>
								</div>
							</div>
							</div>
						</div>

						<div class="col-md-8">
							<div class="card">
								<div class="header">
									<h4 class="title">Fruit Stats</h4>
									<p class="category">Annual Sales</p>
								</div>

								<div class="bar-chart">

								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6">
							<div class="card ">
								<div class="header">
									<h4 class="title">April Sales</h4>
									<p class="category">Including closing values</p>
								</div>
								<div class="line-graph">

								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card ">
								<div class="header">
									<h4 class="title">Tasks</h4>
									<p class="category">Backend development</p>
								</div>
								<div class="content">						
								
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--Widget Integration -->
			<div style="display:hidden">
    <ul data-bind="template: { name: 'pane-template', foreach: panes}">
    </ul>
</div>
<!--Widget Integration -->
			
			
			
			<footer class="footer">
				<div class="container-fluid">

				</div>
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
		<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
		<!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
		<script src="assets/js/light-bootstrap-dashboard.js"></script>

		<!-- Light Bootstrap Table DEMO methods, don't include it in your project! -->
		<script src="assets/js/demo.js"></script>
		<!--Widget Integration -->
		<script type="text/html" id="pane-template">
    	<li data-bind="pane: true">
        <header>
            <h1 data-bind="text: title"></h1>
            <ul class="board-toolbar pane-tools">
                <li data-bind="pluginEditor: {operation: 'add', type: 'widget'}">
                    <i class="icon-plus icon-white"></i>
                </li>
                <li data-bind="pluginEditor: {operation: 'edit', type: 'pane'}">
                    <i class="icon-wrench icon-white"></i>
                </li>
                <li data-bind="pluginEditor: {operation: 'delete', type: 'pane'}">
                    <i class="icon-trash icon-white"></i>
                </li>
            </ul>
        </header>
        <section data-bind="foreach: widgets">
            <div class="sub-section" data-bind="css: 'sub-section-height-' + height()">
                <div class="widget" data-bind="widget: true, css:{fillsize:fillSize}"></div>
                <div class="sub-section-tools">
                    <ul class="board-toolbar">
                        <!-- ko if:$parent.widgetCanMoveUp($data) -->
                        <li data-bind="click:$parent.moveWidgetUp"><i class="icon-chevron-up icon-white"></i></li>
                        <!-- /ko -->
                        <!-- ko if:$parent.widgetCanMoveDown($data) -->
                        <li data-bind="click:$parent.moveWidgetDown"><i class="icon-chevron-down icon-white"></i></li>
                        <!-- /ko -->
                        <li data-bind="pluginEditor: {operation: 'edit', type: 'widget'}"><i class="icon-wrench icon-white"></i></li>
                        <li data-bind="pluginEditor: {operation: 'delete', type: 'widget'}"><i class="icon-trash icon-white"></i></li>
                    </ul>
                </div>
            </div>
        </section>
   		 </li>
		</script>
		<!--Widget Integration -->
		<!--Widget Integration -->
    	<script src="assets/js/dash4/freeboard.thirdparty.min.js"></script>
    	<script type="text/javascript">
        head.js("assets/js/dash4/freeboard_plugins.min.js",
                // *** Load more plugins here ***
                function(){
                    $(function()
                    { //DOM Ready
                        freeboard.initialize(true);

                        var hashpattern = window.location.hash.match(/(&|#)source=([^&]+)/);
                        if (hashpattern !== null) {
                            $.getJSON(hashpattern[2], function(data) {
                                freeboard.loadDashboard(data, function() {
                                    freeboard.setEditing(false);
                                });
                            });
                        }

                    });
                });
    	</script>
    	<!--Widget Integration -->
	<!-- 	<script type="text/javascript">
			$(document).ready(function(){

				/* demo.initChartist(); */

				$.notify({
					icon: 'pe-7s-gift',
					message: "Welcome to CRMXS"

				},{
					type: 'info',
					timer: 4000
				});

			});
		</script> -->
	</html>
