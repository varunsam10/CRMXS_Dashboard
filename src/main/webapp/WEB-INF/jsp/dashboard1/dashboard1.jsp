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

	  </head>
	  <body>
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
					<li>
						<a href="user.html">
							<i class="pe-7s-user"></i>
							<p>User Profile</p>
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
							<li>
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-dashboard"></i>
								</a>
							</li>
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
						</ul>

						<ul class="nav navbar-nav navbar-right">
							<li>
							   <a href="">
								   Account
								</a>
							</li>
							<li class="dropdown">
								  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
										Dropdown
										<b class="caret"></b>
								  </a>
								  <ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								  </ul>
							</li>
							<li>
								<a href="#">
									Log out
								</a>
							</li>
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


								<div class="pie-chart">
								<style>
	div.tooltip{
	position: absolute;
	text-align: center;
	width: 100px;
	height: 50px;
	padding: 2px;
	font: 12px sans-serif;
	background: black;
	border: 0px;
	border-radius: 8px;
	color:white;
	box-shadow: -3px 3px 15px #888888;
	opacity:0;

	}  
	</style>

								<script src="http://d3js.org/d3.v3.min.js"></script>
								<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" charset="utf-8"></script>

								<script>
								var data = [{"Stage":"Level1","Value":5165, "Rate":1.25},
									{"Stage":"Level2","Value":2523, "Rate":9.54},
									{"Stage":"Level3","Value":4435, "Rate":21.25},
									{"Stage":"Level4","Value":3322, "Rate":7.25},
									{"Stage":"Level5","Value":6546, "Rate":1.3}];

							var totalValue = 0;
							for (var i = 0; i<data.length;i++)
								totalValue+=data[i].Rate;
							totalValue=totalValue/5
							width = 375; // Changes pie size as a whole
							height = 400; // Changes pie size as a whole
							radius = Math.min(width-10,height-10)/2;

							var color = d3.scale.category20();

							var arc = d3.svg.arc()
								.outerRadius(radius -50)
								.innerRadius(0); //Changes width of the slices of the pie

							var arcOver = d3.svg.arc()
								.outerRadius(300 )
								.innerRadius(0);

							var svg = d3.select(".pie-chart").append("svg")
								.attr("width",width)
								.attr("height",height)
								.append("g")
								.attr("transform","translate("+width/2+","+height/2+")");
								div = d3.select("body")
								.append("div")
								.attr("class", "tooltip");

							var pie = d3.layout.pie()
								  .sort(null)
								  .value(function(d){return d.Value;});

							var g = svg.selectAll(".arc")
								.data(pie(data))
								.enter()
								.append("g")
								.attr("class","arc")
								.on("mousemove",function(d){
									var mouseVal = d3.mouse(this);
									div.style("display","none");
									div
									.html("Stage:"+d.data.Stage+"</br>"+"Value:"+d.data.Value+"</br>"+"Rate:"+d.data.Rate)
									.style("left", (d3.event.pageX+12) + "px")
									.style("top", (d3.event.pageY-10) + "px")
									.style("opacity", 1)
									.style("display","block");

								var selectthegraphs = $('.arc').not(this);

								d3.selectAll(selectthegraphs)
											  .style("opacity",.5);

								 d3.select(this).style("stroke", "black");
								})
								.on("mouseout",function(){
								  div.html(" ").style("display","none");

								  var selectthegraphs = $('.arc').not(this);
								  d3.selectAll(selectthegraphs)
												.style("opacity",1);
						d3.select(this).style("stroke", "none");
								});

						  svg.selectAll("text").data(pie(data)).enter()
							.append("text")
							.attr("class","label1")
							.attr("transform", function(d) {
							   var dist=radius-120;
							   var winkel=(d.startAngle+d.endAngle)/2;
							   var x=dist*Math.sin(winkel)-4;
							   var y=-dist*Math.cos(winkel)-4;

							   return "translate(" + x + "," + y + ")";
							})
							.attr("dy", "0.3em")
							.attr("text-anchor", "middle")

							.text(function(d){
								return d.data.Stage;
							}
							);
							g.append("path")
								.attr("d",arc)
								.style("fill",function(d){return color(d.data.Stage);});

								</script>

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



						  <script src="https://cdnjs.cloudflare.com/ajax/libs/d3plus/1.8.0/d3plus.full.min.js"></script>
								  <style type="text/css">
								  svg {
									font: 10px sans-serif;
									shape-rendering: crispEdges;
								  }

								  .axis path,
								  .axis line {
									fill: none;
									stroke: #000;
								  }

								  path.domain {
									stroke: none;
								  }

								  .y .tick line {
									stroke: #ddd;
								  }
								  </style>


								<script type="text/javascript">

								// Setup svg using Bostock's margin convention

								var margin = {top: 20, right: 100, bottom: 35, left: 30};

								var width = 650 - margin.left - margin.right,
									height = 400 - margin.top - margin.bottom;

								var svg = d3.select(".bar-chart")
								  .append("svg")
								  .attr("width", width + margin.left + margin.right)
								  .attr("height", height + margin.top + margin.bottom)
								  .append("g")
								  .attr("transform", "translate(" + margin.left + "," + margin.top + ")");


								/* Data in strings like it would be if imported from a csv */

								var data = [
								  { year: "2006", redDelicious: "10", mcintosh: "15", oranges: "9", pears: "6" },
								  { year: "2007", redDelicious: "12", mcintosh: "18", oranges: "9", pears: "4" },
								  { year: "2008", redDelicious: "05", mcintosh: "20", oranges: "8", pears: "2" },
								  { year: "2009", redDelicious: "01", mcintosh: "15", oranges: "5", pears: "4" },
								  { year: "2010", redDelicious: "02", mcintosh: "10", oranges: "4", pears: "2" },
								  { year: "2011", redDelicious: "03", mcintosh: "12", oranges: "6", pears: "3" },
								  { year: "2012", redDelicious: "04", mcintosh: "15", oranges: "8", pears: "1" },
								  { year: "2013", redDelicious: "06", mcintosh: "11", oranges: "9", pears: "4" },
								  { year: "2014", redDelicious: "10", mcintosh: "13", oranges: "9", pears: "5" },
								  { year: "2015", redDelicious: "16", mcintosh: "19", oranges: "6", pears: "9" },
								  { year: "2016", redDelicious: "19", mcintosh: "17", oranges: "5", pears: "7" },
								];

								var parse = d3.time.format("%Y").parse;


								// Transpose the data into layers
								var dataset = d3.layout.stack()(["redDelicious", "mcintosh", "oranges", "pears"].map(function(fruit) {
								  return data.map(function(d) {
									return {x: parse(d.year), y: +d[fruit]};
								  });
								}));


								// Set x, y and colors
								var x = d3.scale.ordinal()
								  .domain(dataset[0].map(function(d) { return d.x; }))
								  .rangeRoundBands([10, width-10], 0.02);

								var y = d3.scale.linear()
								  .domain([0, d3.max(dataset, function(d) {  return d3.max(d, function(d) { return d.y0 + d.y; });  })])
								  .range([height, 0]);

								var colors = ["b33040", "#d25c4d", "#f2b447", "#d9d574"];


								// Define and draw axes
								var yAxis = d3.svg.axis()
								  .scale(y)
								  .orient("left")
								  .ticks(5)
								  .tickSize(-width, 0, 0)
								  .tickFormat( function(d) { return d } );

								var xAxis = d3.svg.axis()
								  .scale(x)
								  .orient("bottom")
								  .tickFormat(d3.time.format("%Y"));

								svg.append("g")
								  .attr("class", "y axis")
								  .call(yAxis);

								svg.append("g")
								  .attr("class", "x axis")
								  .attr("transform", "translate(0," + height + ")")
								  .call(xAxis);


								// Create groups for each series, rects for each segment
								var groups = svg.selectAll("g.cost")
								  .data(dataset)
								  .enter().append("g")
								  .attr("class", "cost")
								  .style("fill", function(d, i) { return colors[i]; });

								var rect = groups.selectAll("rect")
								  .data(function(d) { return d; })
								  .enter()
								  .append("rect")
								  .attr("x", function(d) { return x(d.x); })
								  .attr("y", function(d) { return y(d.y0 + d.y); })
								  .attr("height", function(d) { return y(d.y0) - y(d.y0 + d.y); })
								  .attr("width", x.rangeBand())
								  .on("mouseover", function() { tooltip.style("display", null); })
								  .on("mouseout", function() { tooltip.style("display", "none"); })
								  .on("mousemove", function(d) {
									var xPosition = d3.mouse(this)[0] - 15;
									var yPosition = d3.mouse(this)[1] - 25;
									tooltip.attr("transform", "translate(" + xPosition + "," + yPosition + ")");
									tooltip.select("text").text(d.y);
								  });


								// Draw legend
								var legend = svg.selectAll(".legend")
								  .data(colors)
								  .enter().append("g")
								  .attr("class", "legend")
								  .attr("transform", function(d, i) { return "translate(30," + i * 19 + ")"; });

								legend.append("rect")
								  .attr("x", width - 18)
								  .attr("width", 18)
								  .attr("height", 18)
								  .style("fill", function(d, i) {return colors.slice().reverse()[i];});

								legend.append("text")
								  .attr("x", width + 5)
								  .attr("y", 9)
								  .attr("dy", ".35em")
								  .style("text-anchor", "start")
								  .text(function(d, i) {
									switch (i) {
									  case 0: return "Anjou pears";
									  case 1: return "Naval oranges";
									  case 2: return "McIntosh apples";
									  case 3: return "Red Delicious apples";
									}
								  });


								// Prep the tooltip bits, initial display is hidden
								var tooltip = svg.append("g")
								  .attr("class", "tooltip")
								  .style("display", "none");

								tooltip.append("rect")
								  .attr("width", 30)
								  .attr("height", 20)
								  .attr("fill", "white")
								  .style("opacity", 0.5);

								tooltip.append("text")
								  .attr("x", 15)
								  .attr("dy", "1.2em")
								  .style("text-anchor", "middle")
								  .attr("font-size", "12px")
								  .attr("font-weight", "bold");

								</script>






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



									<style> /* set the CSS */



									path {
										stroke: steelblue;
										stroke-width: 2;
										fill: none;
									}

									.axis path,
									.axis line {
										fill: none;
										stroke: grey;
										stroke-width: 1;
										shape-rendering: crispEdges;
									}

									div.tooltip {
										position: absolute;
										text-align: center;
										width: 60px;
										height: 28px;
										padding: 2px;
										font: 12px sans-serif;
										background: lightsteelblue;
										border: 0px;
										border-radius: 8px;
										pointer-events: none;
									}

									</style>


									<!-- load the d3.js library -->
									<script src="http://d3js.org/d3.v3.min.js"></script>

									<script>

									// Set the dimensions of the canvas / graph
									var margin = {top: 30, right: 20, bottom: 30, left: 50},
										width = 500 - margin.left - margin.right,
										height = 270 - margin.top - margin.bottom;

									// Parse the date / time
									var parseDate = d3.time.format("%d-%b-%y").parse;
									var formatTime = d3.time.format("%e %B");

									// Set the ranges
									var x = d3.time.scale().range([0, width]);
									var y = d3.scale.linear().range([height, 0]);

									// Define the axes
									var xAxis = d3.svg.axis().scale(x)
										.orient("bottom").ticks(5);

									var yAxis = d3.svg.axis().scale(y)
										.orient("left").ticks(5);

									// Define the line
									var valueline = d3.svg.line()
										.x(function(d) { return x(d.date); })
										.y(function(d) { return y(d.close); });

									// Define the div for the tooltip
									var div = d3.select("body").append("div")
										.attr("class", "tooltip")
										.style("opacity", 0);

									// Adds the svg canvas
									var svg = d3.select(".line-graph")
										.append("svg")
											.attr("width", width + margin.left + margin.right)
											.attr("height", height + margin.top + margin.bottom)
										.append("g")
											.attr("transform",
												  "translate(" + margin.left + "," + margin.top + ")");

									// Get the data
									d3.csv("assets/data.csv", function(error, data) {
										data.forEach(function(d) {
											d.date = parseDate(d.date);
											d.close = +d.close;
										});

										// Scale the range of the data
										x.domain(d3.extent(data, function(d) { return d.date; }));
										y.domain([0, d3.max(data, function(d) { return d.close; })]);

										// Add the valueline path.
										svg.append("path")
											.attr("class", "line")
											.attr("d", valueline(data));

										// Add the scatterplot
										svg.selectAll("dot")
											.data(data)
										.enter().append("circle")
											.attr("r", 5)
											.attr("cx", function(d) { return x(d.date); })
											.attr("cy", function(d) { return y(d.close); })
											.on("mouseover", function(d) {
												div.transition()
													.duration(200)
													.style("opacity", .9);
												div	.html(formatTime(d.date) + "<br/>"  + d.close)
													.style("left", (d3.event.pageX) + "px")
													.style("top", (d3.event.pageY - 28) + "px");
												})
											.on("mouseout", function(d) {
												div.transition()
													.duration(500)
													.style("opacity", 0);
											});

										// Add the X Axis
										svg.append("g")
											.attr("class", "x axis")
											.attr("transform", "translate(0," + height + ")")
											.call(xAxis);

										// Add the Y Axis
										svg.append("g")
											.attr("class", "y axis")
											.call(yAxis);

									});

									</script>



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
									<div class="table-full-width">
										<table class="table">
											<tbody>
												<tr>
													<td>
														<label class="checkbox">
															<input type="checkbox" value="" data-toggle="checkbox">
														</label>
													</td>
													<td>Sign contract for "What are conference organizers afraid of?"</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<label class="checkbox">
															<input type="checkbox" value="" data-toggle="checkbox" checked="">
														</label>
													</td>
													<td>Lines From Great Russian Literature? Or E-mails From My Boss?</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<label class="checkbox">
															<input type="checkbox" value="" data-toggle="checkbox" checked="">
														</label>
													</td>
													<td>Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
	</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<label class="checkbox">
															<input type="checkbox" value="" data-toggle="checkbox">
														</label>
													</td>
													<td>Create 4 Invisible User Experiences you Never Knew About</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<label class="checkbox">
															<input type="checkbox" value="" data-toggle="checkbox">
														</label>
													</td>
													<td>Read "Following makes Medium better"</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
												<tr>
													<td>
														<label class="checkbox">
															<input type="checkbox" value="" data-toggle="checkbox">
														</label>
													</td>
													<td>Unfollow 5 enemies from twitter</td>
													<td class="td-actions text-right">
														<button type="button" rel="tooltip" title="Edit Task" class="btn btn-info btn-simple btn-xs">
															<i class="fa fa-edit"></i>
														</button>
														<button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
															<i class="fa fa-times"></i>
														</button>
													</td>
												</tr>
											</tbody>
										</table>
									</div>

									<div class="footer">
										<hr>
										<div class="stats">
											<i class="fa fa-history"></i> Updated 3 minutes ago
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


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

		<script type="text/javascript">
			$(document).ready(function(){

				demo.initChartist();

				$.notify({
					icon: 'pe-7s-gift',
					message: "Welcome to CRMXS"

				},{
					type: 'info',
					timer: 4000
				});

			});
		</script>
	</html>
