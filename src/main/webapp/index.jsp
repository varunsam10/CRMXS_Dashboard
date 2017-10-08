
<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Le styles -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<style>
body {
padding-top: 60px; 
}
. simulator-label { 
	position : relative;
	top: 42%;
}

.simulator-icon-padding {
	padding: 10px;
	float: left;
}

.simulator-icon-start1 {
	text-align: center;
	vertical-align: middle;
	height: 120px;
	width: 120px;
	-moz-box-sizing: content-box;
	color: rgba(255, 255, 255, 0.9);
	-o-text-overflow: clip;
	background: lightblue;
	-webkit-box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	text-shadow: 0 0 0 rgba(15, 73, 168, 0.66);
	-webkit-transition: class="support css-value">all 300ms
		cubic-bezier(0.42, 0, 0.58, 1);
	-moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	-o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	border-radius: 1.167em;
	border: 1px solid #0974A1;
	transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	cursor: pointer;
	float: left;
	margin-left: 5%;
}
.simulator-label {
	position: relative;
	top: 42%;
}
.simulator-icon-start2 {
	text-align: center;
	vertical-align: middle;
	height: 120px;
	width: 120px;
	-moz-box-sizing: content-box;
	color: rgba(255, 255, 255, 0.9);
	-o-text-overflow: clip;
	background: lightblue;
	-webkit-box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	text-shadow: 0 0 0 rgba(15, 73, 168, 0.66);
	-webkit-transition: class="support css-value">all 300ms
		cubic-bezier(0.42, 0, 0.58, 1);
	-moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	-o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	border-radius: 1.167em;
	border: 1px solid #0974A1;
	transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	cursor: pointer;
	float: left;	
	margin-left: 5%;
}
.simulator-icon-start3 {
	text-align: center;
	vertical-align: middle;
	height: 120px;
	width: 120px;
	-moz-box-sizing: content-box;
	color: rgba(255, 255, 255, 0.9);
	-o-text-overflow: clip;
	background: lightblue;
	-webkit-box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	text-shadow: 0 0 0 rgba(15, 73, 168, 0.66);
	-webkit-transition: class="support css-value">all 300ms
		cubic-bezier(0.42, 0, 0.58, 1);
	-moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	-o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	border-radius: 1.167em;
	border: 1px solid #0974A1;
	transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	cursor: pointer;
	float: left;	
	margin-left: 5%;
	/* margin-top: 5%; */
}
 .simulator-icon-start4 {
	text-align: center;
	vertical-align: middle;
	height: 120px;
	width: 120px;
	-moz-box-sizing: content-box;
	color: rgba(255, 255, 255, 0.9);
	-o-text-overflow: clip;
	background: lightblue;
	-webkit-box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	box-shadow: 1px 5px 6px 3px rgba(0, 0, 0, 0.5);
	text-shadow: 0 0 0 rgba(15, 73, 168, 0.66);
	-webkit-transition: class="support css-value">all 300ms
		cubic-bezier(0.42, 0, 0.58, 1);
	-moz-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	-o-transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	border-radius: 1.167em;
	border: 1px solid #0974A1;
	transition: all 300ms cubic-bezier(0.42, 0, 0.58, 1);
	cursor: pointer;
	float: left;	
	margin-left: 5%;
}   
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
.simulationBase{	
	margin-top: 5%;
	width: 95%;
}

</style>
<link href="assets/css/bootstrap-responsive.css" rel="stylesheet">
<link rel="shortcut icon" href="assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">
<style>
</style>
</head>
<body>
	<div class="navbar navbar-fixed-top navbar-inverse">
		<div class="navbar-inner">
			<div class="container">
				<a class="brand" href="dashboard1.html">Dashboards </a>
				<ul class="nav">
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
	<div class="panel panel-custom simulationBase">
	<section class="row-center">
	<div class="panel panel-center panelDiv">	
		<div class="panel-heading panelHeadSimulator">
				<strong><p>Click on the link to start</p></strong>
		</div>
		<div class="panel-body panelDiv">
		<div class="simulator-icon-start4">
				<span class="simulator-label"><a 
						href="dashboard6.html">Dashboard 6 »</a></span>
				</div>	
				<!-- <div class="simulator-icon-start4">
					<span class="simulator-label"><a 
						href="createWidget.html">Create Widget »</a></span>
				</div>	 -->
				<div class="simulator-icon-start4">
					<span class="simulator-label"><a 
						href="dashboard5.html">Dashboard5 »</a></span>
				</div>		
		<!-- 		<div class="simulator-icon-start4">
					<span class="simulator-label"><a 
						href="dashboard4.html">Dashboard4 »</a></span>
				</div>	 -->		
				<div class="simulator-icon-start1">
					<span class="simulator-label"><a 
						href="dashboard3.html">Dashboard3 »</a></span>
				</div>
				<!-- <div class="simulator-icon-start2">
					<span class="simulator-label"><a
						href="dashboard2.html">Dashboard2 »</a> </span>
				</div> -->
				<div class="simulator-icon-start3">
					<span class="simulator-label"><a 
						href="dashboard1.html">Dashboard1 »</a></span>
				</div>	
							
		</div>
	</div>
	</section>
	</div>
	</div>
	<script src="jquery-1.8.3.js">
	    </script>

	<script src="assets/js/bootstrap.js">
	    </script>
</body>
</html>
