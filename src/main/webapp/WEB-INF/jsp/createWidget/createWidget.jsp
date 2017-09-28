
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- Recline files  -->
<link rel="stylesheet"
	href="assets/createWidget/js/vendor/bootstrap/2.0.2/css/bootstrap.css" />


<link rel="stylesheet"
	href="assets/createWidget/js/vendor/leaflet/0.4.4/leaflet.css">
<!--[if lte IE 8]>
  <link rel="stylesheet" href="assets/createWidget/js/vendor/leaflet/0.4.4/leaflet.ie.css" />
  <![endif]-->
<link rel="stylesheet"
	href="assets/createWidget/js/vendor/leaflet.markercluster/MarkerCluster.css">
<link rel="stylesheet"
	href="assets/createWidget/js/vendor/leaflet.markercluster/MarkerCluster.Default.css">
<!--[if lte IE 8]>
  <link rel="stylesheet" href="assets/createWidget/js/vendor/leaflet.markercluster/MarkerCluster.Default.ie.css" />
  <![endif]-->
<link rel="stylesheet"
	href="assets/createWidget/js/vendor/slickgrid/2.0.1/slick.grid.css">
<link rel="stylesheet"
	href="assets/createWidget/js/vendor/timeline/css/timeline.css">

<!-- Recline CSS components -->
<link rel="stylesheet" href="assets/createWidget/css/grid.css">
<link rel="stylesheet" href="assets/createWidget/css/slickgrid.css">
<link rel="stylesheet" href="assets/createWidget/css/flot.css">
<link rel="stylesheet" href="assets/createWidget/css/map.css">
<link rel="stylesheet" href="assets/createWidget/css/multiview.css">
<link rel="stylesheet" href="assets/createWidget/css/timeline.css">
<!-- /Recline CSS components -->

<link rel="stylesheet" type="text/css"
	href="assets/createWidget/css/pivot/jquery.steps.css">

<style>
.panelDiv {
	color: #000000;
	background-color: #ffffff;
	border-color: #DD5757;
	border-radius: 0px;
	border-radius: 0px;
	border-top-left-radius: 4px;
	border-top-right-radius: 4px;
}

.panelHeader {
	background-color: #DD5757;
	border-color: #DD5757;
	height: 30px;
	padding: 5px;
	color: floralwhite;
}

.panelHeadSimulator {
	background-color: #DD5757;
	border-color: #DD5757;
	text-align: center;
	color: floralwhite;
	margin-bottom: 5%;
}

.row-center {
	width: 60%;
	margin: 0px auto;
}

.simulationBase {
	margin-top: 5%;
	width: 95%;
}
/*
Custom styles
*/
body {
	font-family: Verdana;
}

.node {
	border: solid 1px white;
	font: 10px sans-serif;
	line-height: 12px;
	overflow: hidden;
	position: absolute;
	text-indent: 2px;
}

.c3-line, .c3-focused {
	stroke-width: 3px !important;
}

.c3-bar {
	stroke: white !important;
	stroke-width: 1;
}

.c3 text {
	font-size: 12px;
	color: grey;
}

.tick line {
	stroke: white;
}

.c3-axis path {
	stroke: grey;
}

.c3-circle {
	opacity: 1 !important;
}

.c3-xgrid-focus {
	visibility: hidden !important;
}

.wizard>.steps>ul>li:nth-child(1) {
	width: 100%%;
	overflow: scroll;
}

.wizard>.steps>ul>li:nth-child(2) {
	width: 100%;
}

.pvtUi {
	display: block;
	width: 100%;
	overflow: auto;
}

.tabcontrol>.content {
	overflow: initial !important;
}

.wizard, .tabcontrol {
	overflow: initial !important;
}
</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">

<style>
</style>
</head>
<body>
	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="dashboard5.html">Create Widget </a>
				<ul class="nav">
				</ul>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="panel panel-custom simulationBase">

			<div id="createWidget-Async">

				<h3>Configure</h3>
				<%-- <section data-mode="async" data-url="/Examples/AsyncContent"> --%>
				<section>
					<div>
						<label for="name">Widget Name:</label> <input type="text"
							id="name" name="widget_name">
					</div>
					<span> <label for="chartType">Chart Type:</label> <select
						name="Chart Type">
							<option value="line">Line</option>
							<option value="bar">Bar Chart</option>
							<option value="pie">Pie Chart</option>
					</select>
					</span> <span> <label for="chartType">Type of Graph:</label> <select
						name="Chart Type">
							<option value="line">Exploratory</option>
							<option value="bar">Normal Graph</option>
					</select><br /> <br />

					</span>
				</section>

				<h3>Import Data</h3>
				<section>
					<p>
						<span> <label for="chartType">Type of Graph:</label> <select
							name="Chart Type">
								<option value="line">Exploratory</option>
								<option value="bar">Normal Graph</option>
						</select><br /> <br /> <span> <label for="chartType">Type
									of Graph:</label> <select name="Chart Type">
									<option value="line">Exploratory</option>
									<option value="bar">Normal Graph</option>
							</select><br /> <br />

						</span>
					</p>
				</section>
				<h3>Export widget</h3>
				<section>

					<!-- 	<p>
						<label for="name">Dataset:</label>
						 <select id="csv"
							data-placeholder="Choose a dataset..."><option></select>
						&nbsp; &nbsp; <span id="doc"></span>
					</p>
					<p>
					<div id="output" style="margin: 20px;"></div>
					</p> -->
					<div class="container">
						<div class="container">
							<style type="text/css">
.recline-slickgrid {
	height: 550px;
}

.recline-timeline .vmm-timeline {
	height: 550px;
}
</style>

							<div class="data-explorer-here"></div>
						</div>
					</div>
				</section>




			</div>
		</div>
	</div>

</body>
<script src="jquery-1.8.3.js"></script>

<script src="assets/js/bootstrap.js"></script>


<!-- Recline jars -->
<!-- 3rd party JS libraries -->
<script type="text/javascript"
	src="assets/createWidget/js/vendor/jquery/1.7.1/jquery.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/underscore/1.4.4/underscore.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/backbone/1.0.0/backbone.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/mustache/0.5.0-dev/mustache.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/bootstrap/2.0.2/bootstrap.js"></script>
<!--[if lte IE 8]>
  <script language="javascript" type="text/javascript" src="vendor/flot/excanvas.min.js"></script>
  <![endif]-->
<script type="text/javascript"
	src="assets/createWidget/js/vendor/flot/jquery.flot.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/flot/jquery.flot.time.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/leaflet/0.4.4/leaflet.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/leaflet.markercluster/leaflet.markercluster.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/slickgrid/2.0.1/jquery-ui-1.8.16.custom.min.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/slickgrid/2.0.1/jquery.event.drag-2.0.min.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/slickgrid/2.0.1/slick.grid.min.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/moment/2.0.0/moment.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/vendor/timeline/js/timeline.js"></script>
<!--[if lte IE 7]>
  <script language="javascript" type="text/javascript" src="vendor/json/json2.js"></script>
  <![endif]-->

<!--
    ## Just use the all in one library version rather than individual files

  <script type="text/javascript" src="dist/recline.js"></script>

  -->

<!-- model and backends -->
<script type="text/javascript"
	src="assets/createWidget/js/ecma-fixes.js"></script>
<script type="text/javascript" src="assets/createWidget/js/model.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/backend.memory.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/backend.dataproxy.js"></script>
<!--  <script type="text/javascript" src="http://okfnlabs.org/recline.backend.gdocs/backend.gdocs.js"></script> -->
<script type="text/javascript"
	src="assets/createWidget/js/backend.csv.js"></script>

<!-- views -->
<script type="text/javascript" src="assets/createWidget/js/view.grid.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/view.slickgrid.js"></script>
<script type="text/javascript" src="assets/createWidget/js/view.flot.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/view.graph.js"></script>
<script type="text/javascript" src="assets/createWidget/js/view.map.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/view.timeline.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/widget.pager.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/widget.queryeditor.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/widget.filtereditor.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/widget.valuefilter.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/widget.facetviewer.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/widget.fields.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/view.multiview.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/jquery.steps.js"></script>
<script type="text/javascript" src="assets/createWidget/js/app.js"></script>
<script type="text/javascript"> 

/* 	$("#createWidget-Async").steps({
	    headerTag: "h3",
	    bodyTag: "section",
	    enableAllSteps: true,
	    enablePagination: false
	}); */
 $("#createWidget-Async").steps({
	    headerTag: "h3",
	    bodyTag: "section",
	    transitionEffect: "slide",
		enableFinishButton: false,
	    enablePagination: false,
	    enableAllSteps: true,
	    titleTemplate: "#title#",
	    cssClass: "tabcontrol" 
	});  
</script>


</html>
