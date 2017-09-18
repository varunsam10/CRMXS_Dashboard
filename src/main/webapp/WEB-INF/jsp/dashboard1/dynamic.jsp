
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
					<li><a href="user.html"> <i
							class="pe-7s-user"></i>
							<p>User Profile</p>
					</a></li>
					<li class="active"><a href="dynamic.html"> <i class="pe-7s-magic-wand"></i>
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
					
					<div class="col-md-6">
					<div class="card">
					
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
						$('.header').hide();
					     $("#showTable").click(function(event){
					    	 $('.header').show();
					           $.get('PopulateTable',function(responseJson) {
					        	   if(responseJson!=null){
					        		   console.log("here",responseJson);
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
					        	   
					        	   
					        	   
					        	
					        	   var margin ={top:10, right:30, bottom:10, left:70},
								    width=650-margin.left - margin.right, 
								    height=450-margin.top-margin.bottom;

									// scale to ordinal because x axis is not numerical
									var x = d3.scale.ordinal().rangeRoundBands([0, width], .1);
					
									//scale to numerical value by height
									var y = d3.scale.linear().range([height, 10]);
									
									var chart = d3.select("#chart")  
						              .append("svg")  //append svg element inside #chart
						              .attr("width", width+(2*margin.left)+margin.right)    //set width
						              .attr("height", height+margin.top+margin.bottom);  //set height
						              
						            var xAxis = d3.svg.axis()
						              .scale(x)
						              .orient("bottom");  //orient bottom because x-axis will appear below the bars

									var yAxis = d3.svg.axis()
						              .scale(y)
						              .orient("left");
						              
									x.domain(responseJson.map(function(d){ return d.name}));
									  y.domain([0, d3.max(responseJson, function(d){return d.population})]);
									  
									  var bar = chart.selectAll("g")
									                    .data(responseJson)
									                  .enter()
									                    .append("g")
									                     .attr("class", "bar")
									                    .attr("transform", function(d, i){
									                      return "translate("+x(d.name)+", 0)";
									                    });
									  
									  bar.append("rect")
									      .attr("y", function(d) { 
									        return y(d.population); 
									      })
									      .attr("x", function(d,i){
									        return x.rangeBand();
									      }).
									      transition()
											.duration(700)
											.delay(function (d, i) {
												return i * 100;
											})

									      .attr("height", function(d) { 
									        return height - y(d.population); 
									      })
									      .attr("width", x.rangeBand()/2);  //set width base on range on ordinal data

									bar.append("text")
									      .attr("x", x.rangeBand()+margin.left )
									      .attr("y", function(d) { return y(d.population) -10; })
									      .attr("dy", ".75em")
									      .text(function(d) { return d.population; });
									  
									  chart.append("g")
									        .attr("class", "x axis")
									        .attr("transform", "translate("+margin.left+","+ height+")")        
									        .call(xAxis);
									  
									  chart.append("g")
									        .attr("class", "y axis")
									        .attr("transform", "translate("+margin.left+",0)")
									        .call(yAxis)
									        .append("text")
									        .attr("transform", "rotate(-90)")
									        .attr("y", 10)
									        .attr("dy", ".71em")
									        .style("text-anchor", "end")
									        .text("Population");
									

									function type(d) {
									    d.name = +d.name; // coerce to number
									    return d;
									  }
					        	   
					        	   
					        	   
					            });
					            $("#tablediv").show();      
					            
					            
					           			            
						 });      
					     
					     
					    $('input[type=radio]').change(function() {
					    	
					    	 $.get('PopulateTable',function(responseJson) {
					    	    if ($('#population').is(':checked')) {
					    	    		$('#chart').empty();

						        	    var margin ={top:10, right:30, bottom:10, left:70},
									    width=650-margin.left - margin.right, 
									    height=450-margin.top-margin.bottom;

										// scale to ordinal because x axis is not numerical
										var x = d3.scale.ordinal().rangeRoundBands([0, width], .1);
						
										//scale to numerical value by height
										var y = d3.scale.linear().range([height, 10]);
										
										var chart = d3.select("#chart")  
							              .append("svg")  //append svg element inside #chart
							              .attr("width", width+(2*margin.left)+margin.right)    //set width
							              .attr("height", height+margin.top+margin.bottom);  //set height
							              
							            var xAxis = d3.svg.axis()
							              .scale(x)
							              .orient("bottom");  //orient bottom because x-axis will appear below the bars

										var yAxis = d3.svg.axis()
							              .scale(y)
							              .orient("left");
							              
										x.domain(responseJson.map(function(d){ return d.name}));
										  y.domain([0, d3.max(responseJson, function(d){return d.population})]);
										  
										  var bar = chart.selectAll("g")
										                    .data(responseJson)
										                  .enter()
										                    .append("g")
										                     .attr("class", "bar")
										                    .attr("transform", function(d, i){
										                      return "translate("+x(d.name)+", 0)";
										                    });
										  
										  bar.append("rect")
										      .attr("y", function(d) { 
										        return y(d.population); 
										      })
										      .attr("x", function(d,i){
										        return x.rangeBand();
										      }).
										      transition()
												.duration(700)
												.delay(function (d, i) {
													return i * 100;
												})

										      .attr("height", function(d) { 
										        return height - y(d.population); 
										      })
										      .attr("width", x.rangeBand()/2);  //set width base on range on ordinal data

										bar.append("text")
										      .attr("x", x.rangeBand()+margin.left )
										      .attr("y", function(d) { return y(d.population) -10; })
										      .attr("dy", ".75em")
										      .text(function(d) { return d.population; });
										  
										  chart.append("g")
										        .attr("class", "x axis")
										        .attr("transform", "translate("+margin.left+","+ height+")")        
										        .call(xAxis);
										  
										  chart.append("g")
										        .attr("class", "y axis")
										        .attr("transform", "translate("+margin.left+",0)")
										        .call(yAxis)
										        .append("text")
										        .attr("transform", "rotate(-90)")
										        .attr("y", 10)
										        .attr("dy", ".71em")
										        .style("text-anchor", "end")
										        .text("Population");
										

										function type(d) {
										    d.name = +d.name; // coerce to number
										    return d;
										  }
						        	    		 
					    	    	
					    	    }
					    	    
					    	    else if($('#gdp').is(':checked')){
					    	    	  $('#chart').empty();

						        	   var margin ={top:10, right:30, bottom:10, left:70},
									    width=650-margin.left - margin.right, 
									    height=450-margin.top-margin.bottom;

										// scale to ordinal because x axis is not numerical
										var x = d3.scale.ordinal().rangeRoundBands([0, width], .1);
						
										//scale to numerical value by height
										var y = d3.scale.linear().range([height, 10]);
										
										var chart = d3.select("#chart")  
							              .append("svg")  //append svg element inside #chart
							              .attr("width", width+(2*margin.left)+margin.right)    //set width
							              .attr("height", height+margin.top+margin.bottom);  //set height
							              
							            var xAxis = d3.svg.axis()
							              .scale(x)
							              .orient("bottom");  //orient bottom because x-axis will appear below the bars

										var yAxis = d3.svg.axis()
							              .scale(y)
							              .orient("left");
							              
										x.domain(responseJson.map(function(d){ return d.name}));
										  y.domain([0, d3.max(responseJson, function(d){return d.capital})]);
										  
										  var bar = chart.selectAll("g")
										                    .data(responseJson)
										                  .enter()
										                    .append("g")
										                     .attr("class", "bar")
										                    .attr("transform", function(d, i){
										                      return "translate("+x(d.name)+", 0)";
										                    });
										  
										  bar.append("rect")
										      .attr("y", function(d) { 
										        return y(d.capital); 
										      })
										      .attr("x", function(d,i){
										        return x.rangeBand();
										      }).
										      transition()
												.duration(700)
												.delay(function (d, i) {
													return i * 100;
												})

										      .attr("height", function(d) { 
										        return height - y(d.capital); 
										      })
										      .attr("width", x.rangeBand()/2);  //set width base on range on ordinal data

										bar.append("text")
										      .attr("x", x.rangeBand()+margin.left )
										      .attr("y", function(d) { return y(d.capital) -10; })
										      .attr("dy", ".75em")
										      .text(function(d) { return d.capital; });
										  
										  chart.append("g")
										        .attr("class", "x axis")
										        .attr("transform", "translate("+margin.left+","+ height+")")        
										        .call(xAxis);
										  
										  chart.append("g")
										        .attr("class", "y axis")
										        .attr("transform", "translate("+margin.left+",0)")
										        .call(yAxis)
										        .append("text")
										        .attr("transform", "rotate(-90)")
										        .attr("y", 10)
										        .attr("dy", ".71em")
										        .style("text-anchor", "end")
										        .text("GDP");
										

										function type(d) {
										    d.name = +d.name; // coerce to number
										    return d;
										  }
						        	    		 
					    	    	
					    	    }
					    	    
					    	 });
					    });
					     
					/*      function population()
					     {
					    	
					    		 

					        	   var margin ={top:10, right:30, bottom:10, left:70},
								    width=650-margin.left - margin.right, 
								    height=450-margin.top-margin.bottom;

									// scale to ordinal because x axis is not numerical
									var x = d3.scale.ordinal().rangeRoundBands([0, width], .1);
					
									//scale to numerical value by height
									var y = d3.scale.linear().range([height, 10]);
									
									var chart = d3.select("#chart")  
						              .append("svg")  //append svg element inside #chart
						              .attr("width", width+(2*margin.left)+margin.right)    //set width
						              .attr("height", height+margin.top+margin.bottom);  //set height
						              
						            var xAxis = d3.svg.axis()
						              .scale(x)
						              .orient("bottom");  //orient bottom because x-axis will appear below the bars

									var yAxis = d3.svg.axis()
						              .scale(y)
						              .orient("left");
						              
									x.domain(responseJson.map(function(d){ return d.name}));
									  y.domain([0, d3.max(responseJson, function(d){return d.population})]);
									  
									  var bar = chart.selectAll("g")
									                    .data(responseJson)
									                  .enter()
									                    .append("g")
									                     .attr("class", "bar")
									                    .attr("transform", function(d, i){
									                      return "translate("+x(d.name)+", 0)";
									                    });
									  
									  bar.append("rect")
									      .attr("y", function(d) { 
									        return y(d.population); 
									      })
									      .attr("x", function(d,i){
									        return x.rangeBand();
									      }).
									      transition()
											.duration(700)
											.delay(function (d, i) {
												return i * 100;
											})

									      .attr("height", function(d) { 
									        return height - y(d.population); 
									      })
									      .attr("width", x.rangeBand()/2);  //set width base on range on ordinal data

									bar.append("text")
									      .attr("x", x.rangeBand()+margin.left )
									      .attr("y", function(d) { return y(d.population) -10; })
									      .attr("dy", ".75em")
									      .text(function(d) { return d.population; });
									  
									  chart.append("g")
									        .attr("class", "x axis")
									        .attr("transform", "translate("+margin.left+","+ height+")")        
									        .call(xAxis);
									  
									  chart.append("g")
									        .attr("class", "y axis")
									        .attr("transform", "translate("+margin.left+",0)")
									        .call(yAxis)
									        .append("text")
									        .attr("transform", "rotate(-90)")
									        .attr("y", 10)
									        .attr("dy", ".71em")
									        .style("text-anchor", "end")
									        .text("Population");
									

									function type(d) {
									    d.name = +d.name; // coerce to number
									    return d;
									  }
					        	    		 
					    	 } */
					     
					     
					     
					});
					
					
					</script>
					
					<script src="assets/d3.min.js"></script>
					<script src="assets/d3.js"></script>
				
					<h3>AJAX Retrieve Data from Database and plot dynamically</h3>
					
					<input type="button" class="btn btn-primary" value="Show Table" id="showTable"/>
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
					
					
					<div class="row">
					<div class="col-md-8">
					<div class="card">
					
					<div class="header">
									<h4 class="title">Country Stats</h4>
									<p class="category">Y-Axis</p>
									<p> <input type="radio" name="y_axis" id="population" checked="checked"> Population  
  									<input type="radio" name="y_axis" id="gdp"> GDP</p>
								</div>
					
					<style>
					
					#chart rect{
					  fill: steelblue;
					  transition: all 1s;
					}
					
					#chart rect:hover {
						fill:brown
					}
					
					#chart text{
					  fill: black;
					  font: 10px sans-serif;
					  font-weight:bold;
					  text-anchor: end; 
					}
					
					.axis text{
					  font: 10px sans-serif;
					}
					
					.axis path, .axis line{
					  fill: none;
					  stroke : #000;
					  shape-rendering: crispEdges;
					}
					
					
					</style> 
					
					<div id="chart">
						
					</div> 
					</div>
						
					</div>
					</div>
				</div>
			</div>
<div class="content">
						<div class="container-fluid">
											<div class="row">
											<script src="assets/js/dash1/plotly-latest.min.js"></script>
											<select id = "btnid">
				<option value="">Choose Axis</option>							
                <option value = "#FFFFFF">X-Axis</option>
                <option value = "#FF0000">Y-Axis</option>
               </select>
               <input type = "button"
                 value = "change Axis for Line Graph"
                 onclick = "changeAxis()" />

                 <select id = "btnid1">
                 		<option value="">Choose Graph</option>
                        <option value = "#1234">Pie</option>
                        <option value = "#4567">Line</option>
                        <option value = "#8910">Bar</option>
                       </select>
                       <input type = "button"
                         value = "change Graph"
                         onclick = "changeGraph()" />
                         <div id="myDiv" style="width: 100%; height: 500px;"></div>
  <script>

 var trace1 = {
  x: ['iPhone8', 'iPhone X', 'iPhone 8 Plus'],
  y: [20, 14, 23],
  name: 'iPhone SG Market',
  type: 'bar'
};

var trace2 = {
  x: ['iPhone8', 'iPhone X', 'iPhone 8 Plus'],
  y: [12, 18, 29],
  name: 'iPhone IND Market',
  type: 'bar'
};

var databar = [trace1, trace2];
var layoutbar = {barmode: 'stack'};

    var datapie = [{
  values: [19, 26, 55],
  labels: ['Residential', 'Non-Residential', 'Utility'],
  type: 'pie'
}];

//Plotly.newPlot('myDiv', data);//ploting pie-chart*/

  var trace1 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8],
  y: [0, 3, 5, 3, 6, 4, 5, 3, 1],
  name: 'Name of Trace 1',
  type: 'scatter'
};
var trace2 = {
  x: [0, 1, 2, 3, 4, 5, 6, 7, 8],
  y: [1, 0, 3, 2, 5, 4, 7, 6, 8],
  name: 'Name of Trace 2',
  type: 'scatter'
};
var data = [trace1, trace2];
var layout = {
  title: 'Plot Title',
  xaxis: {
    title: 'x Axis',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },
  yaxis: {
    title: 'y Axis',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  }
};
var trace1 = {
  y: [0, 1, 2, 3, 4, 5, 6, 7, 8],
  x: [0, 3, 5, 3, 6, 4, 5, 3, 1],
  name: 'Name of Trace 1',
  type: 'scatter'
};
var trace2 = {
  y: [0, 1, 2, 3, 4, 5, 6, 7, 8],
  x: [1, 0, 3, 2, 5, 4, 7, 6, 8],
  name: 'Name of Trace 2',
  type: 'scatter'
};
var data2 = [trace2, trace1];
var layout = {
  title: 'Plot Title',
  xaxis: {
    title: 'x Axis',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },
  yaxis: {
    title: 'y Axis',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  }
};
function changeAxis(){
  var btnid = document.getElementById("btnid");
  var id = btnid.value;
  {
  if (btnid.value=="#FFFFFF")
  Plotly.newPlot('myDiv', data, layout);
  }
  {
  if (btnid.value=="#FF0000")
  Plotly.newPlot('myDiv', data2, layout);
  }
  }
  function changeGraph(){
  var btnid = document.getElementById("btnid1");
  var id = btnid.value;
  {
  if (btnid1.value=="#1234")
  Plotly.newPlot('myDiv', datapie);
  }
  {
  if (btnid.value=="#4567")
  Plotly.newPlot('myDiv', data, layout);
  }
  {
  if (btnid.value=="#8910")
  Plotly.newPlot('myDiv', databar, layoutbar);
  }
  
  }
//Plotly.newPlot('myDiv', data, layout);
  </script>
											
											
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
