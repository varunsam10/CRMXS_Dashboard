
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Le styles -->
<!-- <link href="assets/createWidget/js/vendor/bootstrap.css" rel="stylesheet"> -->
<!-- external libs from cdnjs -->
<!-- <link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.min.css">

<link rel="stylesheet" type="text/css"
	href="assets/createWidget/css/pivot.css"> -->
<!-- <link rel="stylesheet" type="text/css"
	href="assets/createWidget/css/main.css">
<link rel="stylesheet" type="text/css"
	href="assets/createWidget/css/normalize.css"> -->

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
/* body {
	padding-top: 60px;
}
 */
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
/*Nav widget code */
/* ul.nav-wizard {
	background-color: #f9f9f9;
	border: 1px solid #d4d4d4;
	-webkit-border-radius: 6px;
	-moz-border-radius: 6px;
	border-radius: 6px;
	*zoom: 1;
	position: relative;
	overflow: hidden;
}

ul.nav-wizard:before {
	display: block;
	position: absolute;
	left: 0px;
	right: 0px;
	top: 46px;
	height: 47px;
	border-top: 1px solid #d4d4d4;
	border-bottom: 1px solid #d4d4d4;
	z-index: 11;
	content: " ";
}

ul.nav-wizard:after {
	display: block;
	position: absolute;
	left: 0px;
	right: 0px;
	top: 138px;
	height: 47px;
	border-top: 1px solid #d4d4d4;
	border-bottom: 1px solid #d4d4d4;
	z-index: 11;
	content: " ";
}

ul.nav-wizard li {
	position: relative;
	float: left;
	height: 46px;
	display: inline-block;
	text-align: middle;
	padding: 0 20px 0 30px;
	margin: 0;
	font-size: 16px;
	line-height: 46px;
}

ul.nav-wizard li a {
	color: #468847;
	padding: 0;
}

ul.nav-wizard li a:hover {
	background-color: transparent;
}

ul.nav-wizard li:before {
	position: absolute;
	display: block;
	border: 24px solid transparent;
	border-left: 16px solid #d4d4d4;
	border-right: 0;
	top: -1px;
	z-index: 10;
	content: '';
	right: -16px;
}

ul.nav-wizard li:after {
	position: absolute;
	display: block;
	border: 24px solid transparent;
	border-left: 16px solid #f9f9f9;
	border-right: 0;
	top: -1px;
	z-index: 10;
	content: '';
	right: -15px;
}

ul.nav-wizard li.active {
	color: #3a87ad;
	background: #d9edf7;
}

ul.nav-wizard li.active:after {
	border-left: 16px solid #d9edf7;
}

ul.nav-wizard li.active a, ul.nav-wizard li.active a:active, ul.nav-wizard li.active a:visited,
	ul.nav-wizard li.active a:focus {
	color: #3a87ad;
	background: #d9edf7;
}

ul.nav-wizard .active ~ li {
	color: #999999;
	background: #ededed;
}

ul.nav-wizard .active ~ li:after {
	border-left: 16px solid #ededed;
}

ul.nav-wizard .active ~ li a, ul.nav-wizard .active ~ li a:active, ul.nav-wizard .active 
	~ li a:visited, ul.nav-wizard .active ~ li a:focus {
	color: #999999;
	background: #ededed;
}

ul.nav-wizard.nav-wizard-backnav li:hover {
	color: #468847;
	background: #f6fbfd;
}

ul.nav-wizard.nav-wizard-backnav li:hover:after {
	border-left: 16px solid #f6fbfd;
}

ul.nav-wizard.nav-wizard-backnav li:hover a, ul.nav-wizard.nav-wizard-backnav li:hover a:active,
	ul.nav-wizard.nav-wizard-backnav li:hover a:visited, ul.nav-wizard.nav-wizard-backnav li:hover a:focus
	{
	color: #468847;
	background: #f6fbfd;
}

ul.nav-wizard.nav-wizard-backnav .active ~ li {
	color: #999999;
	background: #ededed;
}

ul.nav-wizard.nav-wizard-backnav .active ~ li:after {
	border-left: 16px solid #ededed;
}

ul.nav-wizard.nav-wizard-backnav .active ~ li a, ul.nav-wizard.nav-wizard-backnav .active 
	~ li a:active, ul.nav-wizard.nav-wizard-backnav .active ~ li a:visited,
	ul.nav-wizard.nav-wizard-backnav .active ~ li a:focus {
	color: #999999;
	background: #ededed;
} */
</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<!-- <link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png"> -->


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

				<!-- <ul class="nav nav-pills nav-wizard">
				<li class="active"><a href="#configureWidget.html"
					data-toggle="tab">Configure</a></li>
				<li><a href="#createWidget.html" data-toggle="tab">Select
						Data</a></li>
				<li><a href="#" data-toggle="tab">Export</a></li>
			</ul> -->
				<%-- 	<section>

					<p>
						<label for="name">Dataset:</label> <select id="csv"
							data-placeholder="Choose a dataset..."><option></select>
						&nbsp; &nbsp; <span id="doc"></span>
					</p>
					<p>
					<div id="output" style="margin: 10px;"></div>
					</p>
				</section> --%>

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

<!-- external libs from cdnjs -->

<!-- <script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/4.1.2/papaparse.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.jquery.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>
 -->
<!-- PivotTable.js libs from ../dist -->

<!-- <script type="text/javascript" src="assets/createWidget/js/pivot.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/d3_renderers.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/c3_renderers.js"></script>
<script type="text/javascript"
	src="assets/createWidget/js/export_renderers.js"></script>-->

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

 /* $(function() {
		Papa
				.parse(
						"https://raw.githubusercontent.com/nicolaskruchten/Rdatasets/master/datasets.csv",
						{
							download : true,
							header : true,
							skipEmptyLines : true,
							complete : function(parsed) {
								var csvlist_arr = parsed.data;
								var pkg = $("<optgroup>", {
									label : ""
								});
								for ( var i in csvlist_arr) {
									var dataset = csvlist_arr[i];
									if (dataset.Package != pkg.attr("label")) {
										pkg = $("<optgroup>", {
											label : dataset.Package
										}).appendTo($("#csv"));
									}
									pkg
											.append($(
													"<option>",
													{
														value : dataset.Package
																+ "/"
																+ dataset.Item
													}).text(
													dataset.Item + ":"
															+ dataset.Title));
								}
								$("#csv").chosen();
								var renderers = $.extend(
										$.pivotUtilities.renderers,
										$.pivotUtilities.c3_renderers,
										$.pivotUtilities.d3_renderers,
										$.pivotUtilities.export_renderers);
								$("#csv")
										.bind(
												"change",
												function(event) {
													$("#output").empty().text(
															"Loading...")
													var val = $(this).val();
													Papa
															.parse(
																	"https://raw.githubusercontent.com/nicolaskruchten/Rdatasets/master/csv/"
																			+ val
																			+ ".csv",
																	{
																		download : true,
																		skipEmptyLines : true,
																		complete : function(
																				parsed) {
																		$(
																					"#output")
																					.pivotUI(
																							parsed.data,
																							{
																								hiddenAttributes : [ "" ],
																								renderers : renderers
																							},
																							true);
																		}
																	});
												});
							}
						});
	}); */
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
