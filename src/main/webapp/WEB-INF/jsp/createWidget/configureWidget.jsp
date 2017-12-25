<!-- Page for displaying the pivot tables -->
<%@taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!-- external libs from cdnjs -->
<!-- Commented for removal -->
<!-- <link rel="stylesheet" type="text/css"	href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.css">
<link rel="stylesheet" type="text/css"	href="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.min.css"> -->
<link rel="stylesheet" type="text/css"	href="assets/createWidget/css/pivot.css">
<link rel="stylesheet" type="text/css" 	href="assets/createWidget/css/configurewidget.css">
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
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

			<ul class="nav nav-pills nav-wizard">
				<li class="active"><a href="#configureWidget.html"
					data-toggle="tab">Configure</a></li>
				<li><a href="#createWidget.html" data-toggle="tab">Select
						Data</a></li>
				<li><a href="#" data-toggle="tab">Export</a></li>
			</ul>
			<div>
				<label for="name">Widget Name:</label> <input type="text" id="name"
					name="widget_name">
			</div>
			<div>
				<label for="chartType">Chart Type:</label> <select name="Chart Type">
					<option value="line">Line</option>
					<option value="bar">Bar Chart</option>
					<option value="pie">Pie Chart</option>
				</select>
			</div>
			<section class="row-center">
				<div class="panel panel-center panelDiv">

					<div class="panel-body panelDiv"></div>
				</div>
			</section>
			<!-- <p><a href="https://github.com/vincentarelbundock/Rdatasets">Rdatasets</a></p> -->
			<p>
				Dataset: <select id="csv" data-placeholder="Choose a dataset..."><option></select>
				&nbsp; &nbsp; <span id="doc"></span>
			</p>
			<div id="output" style="margin: 10px;"></div>
		</div>
	</div>
</body>
<script src="jquery-1.8.3.js"></script>
<script src="assets/js/bootstrap.js"></script>
<!-- external libs from cdnjs -->
<!-- Commented for removal used -->
<!-- <script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/d3/3.5.5/d3.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/PapaParse/4.1.2/papaparse.min.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/chosen/1.4.2/chosen.jquery.js"></script>
<script type="text/javascript"	src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script> -->
<!-- PivotTable.js libs from ../dist -->
<script type="text/javascript" src="assets/createWidget/js/pivot.js"></script>
<script type="text/javascript"	src="assets/createWidget/js/d3_renderers.js"></script>
<script type="text/javascript"	src="assets/createWidget/js/c3_renderers.js"></script>
<script type="text/javascript"	src="assets/createWidget/js/export_renderers.js"></script>
<script type="text/javascript">
$(function() {
	//	Papa.parse("https://raw.githubusercontent.com/nicolaskruchten/Rdatasets/master/datasets.csv",
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
											//		Papa.parse("https://raw.githubusercontent.com/nicolaskruchten/Rdatasets/master/csv/"
																			+ val
																			+ ".csv",
																	{
																		download : true,
																		skipEmptyLines : true,
																		complete : function(
																				parsed) {
																			/*    $("#doc").empty().append(
																			       $("<a>",{target:"_blank", href:"http://nicolas.kruchten.com/Rdatasets/doc/"+val+".html"}).html("Dataset documentation &raquo;")
																			       ); */
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
	});
</script>
</html>
