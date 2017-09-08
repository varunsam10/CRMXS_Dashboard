
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
	<!--     Widget Layout  Gridstack   -->
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/css/dashboard4/gridstack.css" />
	<link rel="stylesheet" href="assets/css/dashboard4/gridstack-extra.css" />
	<!--     Widget Layout  Gridstack   -->
	<style>
	html {
		overflow-y: hidden
	}
	/*	Widget Layout  Gridstack */
	.grid1 {
		background: #c6ecf1;
	}
	.grid-stack-item-content {
		color: #2c3e50;
		text-align: center;
		background-color: #732145;
	}
	/*	Widget Layout  Gridstack */
	</style>

	</head>
	<!--     Widget Layout  Gridstack   -->
	<body ng-app="GridStack" ng-controller="DemoCtrl">
		<!--     Widget Layout  Gridstack   -->


		<div class="container-fluid">
		<!-- <p>{{widgets}}</p> -->
			<div>
				<a class="btn btn-primary" ng-click="addWidget()" href="#">Add
					Widget</a> <a class="btn btn-primary" ng-click="moveWidget()" href="#">Move
					Widget</a>
			</div>
			<br>
			<div class="row">
				<div class="col-md-12">
					<div gridstack class="grid-stack grid1" options="options"
						on-change="onChange(event,items)"
						on-drag-start="onDragStart(event,ui)"
						on-drag-stop="onDragStop(event,ui)"
						on-resize-start="onResizeStart(event,ui)"
						on-resize-stop="onResizeStop(event,ui)">
						<div gridstack-item ng-repeat="w in widgets"
							class="grid-stack-item" gs-item-x="w.x" gs-item-y="w.y"
							gs-item-width="w.width" gs-item-height="w.height"
							gs-item-autopos="1" on-item-added="onItemAdded(item)"
							on-item-removed="onItemRemoved(item)">
							<div class="grid-stack-item-content">
								<a class="btn btn-primary" ng-click="removeWidget(w)" href="#">remove</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--     Widget Layout  Gridstack   -->

		<!--  <div id="board-content">
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
				</div> -->

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
	<!--     Widget Layout  Gridstack   -->
	<script src="assets/js/dash4/jquery.min.js"></script>
	<script src="assets/js/dash4/jquery-ui.js"></script>
	<script src="assets/js/dash4/lodash.min.js"></script>
	<script src="assets/js/dash4/angular.min.js"></script>
	<script src="assets/js/dash4/gridstack.js"></script>
	<script src="assets/js/dash4/gridstack.controller.js"></script>
	<script src="assets/js/dash4/gridstack.directive.js"></script>
	<script src="assets/js/dash4/gridstackitem.directive.js"></script>
	<!--     Widget Layout  Gridstack   -->
	<script type="text/javascript">
		var app = angular.module('GridStack', [ 'gridstack-angular' ]).controller(
				'DemoCtrl', function($scope, $log) {

					$scope.widgets = [ {
						x : 0,
						y : 0,
						width : 1,
						height : 1
					}, {
						x : 0,
						y : 0,
						width : 3,
						height : 1
					} ];

					$scope.options = {
						cellHeight : 200,
						verticalMargin : 10
					};

					$scope.addWidget = function() {
						var newWidget = {
							x : 0,
							y : 0,
							width : 1,
							height : 1
						};
						$scope.widgets.push(newWidget);
					};

					$scope.moveWidget = function() {
						$scope.widgets[0].x = 1;
						$scope.widgets[0].width = 2;
						$scope.widgets[0].height = 2;
					};

					$scope.removeWidget = function(w) {
						var index = $scope.widgets.indexOf(w);
						$scope.widgets.splice(index, 1);
					};

					$scope.onChange = function(event, items) {
						$log.log("onChange event: " + event + " items:" + items);
					};

					$scope.onDragStart = function(event, ui) {
						$log.log("onDragStart event: " + event + " ui:" + ui);
					};

					$scope.onDragStop = function(event, ui) {
						$log.log("onDragStop event: " + event + " ui:" + ui);
					};

					$scope.onResizeStart = function(event, ui) {
						$log.log("onResizeStart event: " + event + " ui:" + ui);
					};

					$scope.onResizeStop = function(event, ui) {
						$log.log("onResizeStop event: " + event + " ui:" + ui);
					};

					$scope.onItemAdded = function(item) {
						$log.log("onItemAdded item: " + item);
					};

					$scope.onItemRemoved = function(item) {
						$log.log("onItemRemoved item: " + item);
					};

				});
	</script>
	<!--     Widget Layout  Gridstack   -->
	s

	</html>
