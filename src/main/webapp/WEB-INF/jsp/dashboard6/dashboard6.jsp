
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>

<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta
	content="Preview page of Metronic Admin Theme #6 for statistics, charts, recent events and reports"
	name="description" />
<meta content="" name="author" />
<!-- BEGIN LAYOUT FIRST STYLES -->
<link href="//fonts.googleapis.com/css?family=Oswald:400,300,700" rel="stylesheet" type="text/css" />
<!-- END LAYOUT FIRST STYLES -->
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="assets/dash6/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/morris/morris.css"	rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="assets/dash6/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
<link href="assets/dash6/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="assets/dash6/layouts/layout6/css/layout.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/layouts/layout6/css/custom.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/css/datatable/datatables.css" rel="stylesheet" type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>

<!--     CPR Dashboard     -->
<!-- load jquery ui css theme -->
<!-- <link type="text/css" href="assets/dash6/css/jquery-ui.css"
	rel="stylesheet" /> -->
	
<link type="text/css" href="assets/dash6/css/jqueryNw/jquery-ui.css" rel="stylesheet" /
<!-- load the dashboard css -->
<link href="assets/dash6/css/cprDashboard.css" rel="stylesheet">
<!-- load gitter css -->
<link href="assets/dash6/css/jquery.gritter.css" rel="stylesheet" />
<!-- C3 css -->
<link href="assets/dash6/css/c3/c3.css" rel="stylesheet" />
<!--     sDashboard     -->
<!-- END HEAD -->
<body class="page-md">
	<!-- BEGIN HEADER -->
	<header class="page-header">
		<nav class="navbar" role="navigation">
			<div class="container-fluid">
				<div class="havbar-header">
					<!-- BEGIN LOGO -->
					<div id="index" class="navbar-brand">
						<img src="assets/dash6/layouts/layout6/img/logo.png" alt="Logo">
					</div>
					<!-- END LOGO -->
					<!-- BEGIN TOPBAR ACTIONS -->
					<div class="topbar-actions">
						<!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
						<form class="search-form" action="extra_search.html" method="GET">
							<div class="input-group">
								<input type="text" class="form-control"
									placeholder="Search here" name="query"> <span
									class="input-group-btn"> <a href="javascript:;"
									class="btn md-skip submit"> <i class="fa fa-search"></i>
								</a>
								</span>
							</div>
						</form>
						<!-- END HEADER SEARCH BOX -->
						<!-- BEGIN GROUP NOTIFICATION -->
						<div class="btn-group-notification btn-group"
							id="header_notification_bar">
							<button type="button" class="btn md-skip dropdown-toggle"
								data-toggle="dropdown" data-hover="dropdown"
								data-close-others="true">
								<span class="badge">9</span>
							</button>
							<ul class="dropdown-menu-v2">
								<li class="external">
									<h3>
										<span class="bold">12 pending</span> notifications
									</h3> <a href="#">view all</a>
								</li>
								<li>
									<ul class="dropdown-menu-list scroller"
										style="height: 250px; padding: 0;" data-handle-color="#637283">
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-success md-skip">
														<i class="fa fa-plus"></i>
												</span> New user registered.
											</span> <span class="time">just now</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-danger md-skip">
														<i class="fa fa-bolt"></i>
												</span> Server #12 overloaded.
											</span> <span class="time">3 mins</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-warning md-skip">
														<i class="fa fa-bell-o"></i>
												</span> Server #2 not responding.
											</span> <span class="time">10 mins</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span class="label label-sm label-icon label-info md-skip">
														<i class="fa fa-bullhorn"></i>
												</span> Application error.
											</span> <span class="time">14 hrs</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-danger md-skip">
														<i class="fa fa-bolt"></i>
												</span> Database overloaded 68%.
											</span> <span class="time">2 days</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-danger md-skip">
														<i class="fa fa-bolt"></i>
												</span> A user IP blocked.
											</span> <span class="time">3 days</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-warning md-skip">
														<i class="fa fa-bell-o"></i>
												</span> Storage Server #4 not responding dfdfdfd.
											</span> <span class="time">4 days</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span class="label label-sm label-icon label-info md-skip">
														<i class="fa fa-bullhorn"></i>
												</span> System Error.
											</span> <span class="time">5 days</span>
										</a></li>
										<li><a href="javascript:;"> <span class="details">
													<span
													class="label label-sm label-icon label-danger md-skip">
														<i class="fa fa-bolt"></i>
												</span> Storage server failed.
											</span> <span class="time">9 days</span>
										</a></li>
									</ul>
								</li>
							</ul>
						</div>
						<!-- END GROUP NOTIFICATION -->
						<!-- BEGIN USER PROFILE -->
						<div class="btn-group-img btn-group">
							<button type="button" class="btn btn-sm dropdown-toggle"
								data-toggle="dropdown" data-hover="dropdown"
								data-close-others="true">
								<img src="assets/dash6/layouts/layout5/img/avatar1.jpg" alt="">
							</button>
							<ul class="dropdown-menu-v2" role="menu">
								<li><a href="page_user_profile_1.html"> <i
										class="icon-user"></i> My Profile <span
										class="badge badge-danger">1</span>
								</a></li>
								<li><a href="app_calendar.html"> <i
										class="icon-calendar"></i> My Calendar
								</a></li>
								<li><a href="app_inbox.html"> <i
										class="icon-envelope-open"></i> My Inbox <span
										class="badge badge-danger"> 3 </span>
								</a></li>
								<li><a href="app_todo_2.html"> <i class="icon-rocket"></i>
										My Tasks <span class="badge badge-success"> 7 </span>
								</a></li>
								<li class="divider"></li>
								<li><a href="page_user_lock_1.html"> <i
										class="icon-lock"></i> Lock Screen
								</a></li>
								<li><a href="page_user_login_1.html"> <i
										class="icon-key"></i> Log Out
								</a></li>
							</ul>
						</div>
						<!-- END USER PROFILE -->
					</div>
					<!-- END TOPBAR ACTIONS -->
				</div>
			</div>
			<!--/container-->
		</nav>
	</header>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="container-fluid">
		<div class="page-content page-content-popup">
			<div class="page-content-fixed-header">
				<!-- BEGIN BREADCRUMBS -->
				<ul class="page-breadcrumb">
					<li><a href="#">Dashboard</a></li>
				</ul>
				<!-- END BREADCRUMBS -->
				<div class="content-header-menu">
					<!-- BEGIN DROPDOWN AJAX MENU -->
					<div class="dropdown-ajax-menu btn-group">
						<button type="button" class="btn dropdown-toggle"
							data-toggle="dropdown" data-hover="dropdown"
							data-close-others="true">
							<i class="fa fa-circle"></i> <i class="fa fa-circle"></i> <i
								class="fa fa-circle"></i>
						</button>
						<ul class="dropdown-menu-v2">
							<li><a href="start.html">Application</a></li>
							<li><a href="start.html">Reports</a></li>
							<li><a href="start.html">Templates</a></li>
							<li><a href="start.html">Settings</a></li>
						</ul>
					</div>
					<!-- END DROPDOWN AJAX MENU -->
					<!-- BEGIN MENU TOGGLER -->
					<button type="button" class="menu-toggler responsive-toggler"
						data-toggle="collapse" data-target=".navbar-collapse">
						<span class="toggle-icon"> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
						</span>
					</button>
					<!-- END MENU TOGGLER -->
				</div>
			</div>

			<div class="page-fixed-main-content">
				<!-- BEGIN DASHBOARD STATS 1-->
				<div class="row">
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<a class="dashboard-stat dashboard-stat-v2 blue" href="#">
							<div class="visual">
								<i class="fa fa-comments"></i>
							</div>
							<div class="details">
								<div class="number">
									<span data-counter="counterup" data-value="1349">0</span>
								</div>
								<div class="desc">New Feedbacks</div>
							</div>
						</a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<a class="dashboard-stat dashboard-stat-v2 red" href="#">
							<div class="visual">
								<i class="fa fa-bar-chart-o"></i>
							</div>
							<div class="details">
								<div class="number">
									<span data-counter="counterup" data-value="12,5">0</span>M$
								</div>
								<div class="desc">Total Profit</div>
							</div>
						</a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<a class="dashboard-stat dashboard-stat-v2 green" href="#">
							<div class="visual">
								<i class="fa fa-shopping-cart"></i>
							</div>
							<div class="details">
								<div class="number">
									<span data-counter="counterup" data-value="549">0</span>
								</div>
								<div class="desc">New Orders</div>
							</div>
						</a>
					</div>
					<div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
						<a class="dashboard-stat dashboard-stat-v2 purple" href="#">
							<div class="visual">
								<i class="fa fa-globe"></i>
							</div>
							<div class="details">
								<div class="number">
									+ <span data-counter="counterup" data-value="89"></span>%
								</div>
								<div class="desc">Brand Popularity</div>
							</div>
						</a>
					</div>
				</div>
				<div class="clearfix"></div>
				<!-- END DASHBOARD STATS 1-->
				<!-- BEGIN PAGE BASE CONTENT -->
				<div class="content">
					<div class="container-fluid">
						<!--     CPR Dashboard -->
						<hr />
						<ul id="cprDashboard">

						</ul>

					</div>
				</div>

				<!--  <div class="row">
                            <div class="col-lg-6 col-xs-12 col-sm-12">
                                BEGIN REGIONAL STATS PORTLET
                                <div class="portlet light bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class="icon-share font-dark hide"></i>
                                            <span class="caption-subject font-dark bold uppercase">Regional Stats</span>
                                        </div>
                                        <div class="actions">
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-cloud-upload"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-wrench"></i>
                                            </a>
                                            <a class="btn btn-circle btn-icon-only btn-default fullscreen" data-container="false" data-placement="bottom" href="javascript:;"> </a>
                                            <a class="btn btn-circle btn-icon-only btn-default" href="javascript:;">
                                                <i class="icon-trash"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <div id="region_statistics_loading">
                                            <img src="assets/dash6/global/img/loading.gif" alt="loading" /> </div>
                                        <div id="region_statistics_content" class="display-none">
                                            <div class="btn-toolbar margin-bottom-10">
                                                <div class="btn-group btn-group-circle" data-toggle="buttons">
                                                    <a href="" class="btn grey-salsa btn-sm active"> Users </a>
                                                    <a href="" class="btn grey-salsa btn-sm"> Orders </a>
                                                </div>
                                                <div class="btn-group pull-right">
                                                    <a href="" class="btn btn-circle grey-salsa btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> Select Region
                                                        <span class="fa fa-angle-down"> </span>
                                                    </a>
                                                    <ul class="dropdown-menu pull-right">
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_world"> World </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_usa"> USA </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_europe"> Europe </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_russia"> Russia </a>
                                                        </li>
                                                        <li>
                                                            <a href="javascript:;" id="regional_stat_germany"> Germany </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div id="vmap_world" class="vmaps display-none"> </div>
                                            <div id="vmap_usa" class="vmaps display-none"> </div>
                                            <div id="vmap_europe" class="vmaps display-none"> </div>
                                            <div id="vmap_russia" class="vmaps display-none"> </div>
                                            <div id="vmap_germany" class="vmaps display-none"> </div>
                                        </div>
                                    </div>
                                </div>
                                END REGIONAL STATS PORTLET
                            </div>

                        </div> -->


				<!-- END PAGE BASE CONTENT -->
			</div>
			<!-- BEGIN FOOTER -->
			<p class="copyright-v2">2017 &copy; CPR Vision</p>

			<a href="#index" class="go2top"> <i class="icon-arrow-up"></i>
			</a>
			<!-- END FOOTER -->
		</div>
	</div>
	<!-- END CONTAINER -->

	<!-- BEGIN QUICK NAV -->
	<!-- END QUICK NAV -->

	<!-- BEGIN CORE PLUGINS -->
	<script src="assets/dash6/global/plugins/jquery.min.js"	type="text/javascript"></script> 
	<!-- remove -->
	<!-- <script src="assets/dash6/js/jqueryNw/jquery-1.12.3.js"	type="text/javascript"></script> -->
	<script src="assets/dash6/global/plugins/bootstrap/js/bootstrap.min.js"	type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/js.cookie.min.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/jquery.blockui.min.js"	type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script src="assets/dash6/global/plugins/moment.min.js" type="text/javascript"></script>
	<script	src="assets/dash6/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js"	type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/morris/morris.min.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
	<script	src="assets/dash6/global/plugins/counterup/jquery.waypoints.min.js"	type="text/javascript"></script>
	<script	src="assets/dash6/global/plugins/counterup/jquery.counterup.min.js"	type="text/javascript"></script>
	<script	src="assets/dash6/global/plugins/fullcalendar/fullcalendar.min.js"	type="text/javascript"></script>
	<script	src="assets/dash6/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
	<script src="assets/dash6/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>

	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN THEME GLOBAL SCRIPTS -->
	<script src="assets/dash6/global/scripts/app.js" type="text/javascript"></script>
	<!-- END THEME GLOBAL SCRIPTS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="assets/dash6/pages/scripts/dashboard.min.js" type="text/javascript"></script>
	<!-- END PAGE LEVEL SCRIPTS -->
	<!-- BEGIN THEME LAYOUT SCRIPTS -->
	<script src="assets/dash6/layouts/layout6/scripts/layout.min.js" type="text/javascript"></script>
	<!-- END THEME LAYOUT SCRIPTS -->

	<!--     CPR Dashboard    Custom     -->
	<!-- Load jquery library -->
	<!-- <script src="assets/dash6/js/jquery/jquery-1.8.2.js"
		type="text/javascript"></script> -->
	<!-- load jquery ui library -->
	<script src="assets/dash6/js/jquery/jquery-ui.js" type="text/javascript"></script> 
	<!--  remove -->
	<!-- <script src="assets/dash6/js/jqueryNw/jquery-ui.js" type="text/javascript"></script> -->
	
	<!-- load touch punch library to enable dragging on touch based devices -->
	<script src="assets/dash6/js/touchpunch/jquery.ui.touch-punch.js" type="text/javascript"></script>
	<!-- load gitter notification library -->
	<script src="assets/dash6/js/gitter/jquery.gritter.js" type="text/javascript"></script>

	<!-- load datatables library -->
	<!--<script src="assets/dash6/js/datatables/jquery.dataTables.js"></script>  -->
	<script src="assets/dash6/js/datatableNw/datatables.js"></script>
	
	<script src="assets/dash5/js/flotr2/flotr2.js" type="text/javascript"></script>
	<script src="assets/js/dash1/plotly-latest.min.js"></script>
	<script src="assets/dash6/js/chart/Chart.bundle.js"></script>
	<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
	<script src="assets/dash6/js/c3/c3.min.js"></script>
	<!--  <script src="assets/dash6/js/c3/bubble.js"></script> -->
	<!-- load dashboard library -->
	<script src="assets/dash6/js/jquery-cprDashboard.js"
		type="text/javascript"></script>

	<!-- theme switcher -->
	<script src="assets/dash6/js/themeswitcher/jquery.themeswitcher.min.js"
		type="text/javascript"></script>

	<!-- sample data external script file -->
	<script src="assets/dash6/js/exampleData.js" type="text/javascript"></script>

	<script type="text/javascript">
        $(document).ready(function(){
              	
        //Todo 	
        $.ajax({
                 url : 'getWidgets.html',
                 success : function(data) {
                     // $('#result').html(data);
                    // var dashboardJSON = data;
                 }
        }); 	
        $(function() {


        //Theme switcher plugin
        $("#switcher").themeswitcher({
        imgpath : "assets/dash5/css/images/",
        loadTheme : "Le Frog"
        });

        //**********************************************//
        //dashboard json data
        //this is the data format that the dashboard framework expects
        //**********************************************//

        var dashboardJSON = [
        /* {
        widgetTitle : "Bubble Chart",
        widgetId : "id009",
        widgetType : "chart",
        widgetContent : {
        data : myExampleData.bubbleChartData,
        options : myExampleData.bubbleChartOptions
        }

        }*/
        {
        widgetTitle : "Sales Figures",
        widgetId : "id002",
        widgetType : "chart",
        widgetDimension:"normal",
        chartType : "pie",
        widgetContent : {
        /**Plotly Graph */      
        //data : myExampleData.plotlypiedata,   
       	data : myExampleData.c3piedata
        }
        },
        {
            widgetTitle : "Age group",
            widgetId : "id003",
            widgetType : "chart",
            widgetDimension:"normal",
            chartType : "bubble",
            widgetContent : {
           	data : myExampleData.plotlyBubbleData,
           	layout : myExampleData.plotlyBubbleLayout,
    		config: myExampleData.plotlybarconfig
         }
        },{
        widgetTitle : "Revenue",
        widgetId : "id004",
        widgetType : "chart",
        widgetDimension:"large",
        chartType : "bar",
        widgetContent : {        	
        //c3 bar graph
       /*  data : myExampleData.c3bardata,
        bar : myExampleData.c3bardatabar     */
       	data : myExampleData.barGroupChartData ,
		layout :myExampleData.barGroupChartLayout,
		config: myExampleData.plotlybarconfig
        }
        },{
        widgetTitle : "Items sold",
        widgetId : "id005",
        widgetType : "chart",
        widgetDimension:"large",
        chartType : "line",
        getDataBySelection : true,
        widgetContent : {
        //	data : myExampleData.lineChartData,
        //	options : myExampleData.lineChartOptions
        //plotly data
    	data:myExampleData.plotlylinedata,
        layout : myExampleData.plotlylinelayout,
        config : myExampleData.plotlylineconfig
        //c3
       // data:myExampleData.c3linedata      
        }}, {
            widgetTitle : " ",
            widgetId : "id001",
            widgetType : "Text",
            widgetDimension:"small",
            widgetContent : "Number of Redemptions: 4,636 \n"+"Revenue Generated 231,800$"
            },
            {
                widgetTitle : "Table ",
                widgetId : "id3",
                widgetType : "table",
                setJqueryStyle : true,
                widgetContent : myExampleData.tableWidgetData
             }];

        //basic initialization example
        $("#cprDashboard").sDashboard({
        dashboardData : dashboardJSON
        });

        //table row clicked event example
        $("#cprDashboard")
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
        console.log("table row clicked, for widget: " + data.selectedWidgetId);
        }
        });

        //plot selected event example
        $("#cprDashboard")
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
        console.log("chart range selected, for widget: "
        + data.selectedWidgetId);
        }
        });
        //plot click event example
        $("#cprDashboard")
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
        $("#cprDashboard")
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
        $("#cprDashboard")
        .sDashboard(
        "addWidget",
        {
        widgetTitle : "Widget 7",
        widgetId : "id008",
        widgetContent : "Create a Widget to be added to the list"

        });
        });

        //example for adding a table widget
        $("#btnAddTableWidget").click(function() {
        $("#cprDashboard").sDashboard("addWidget", {
        widgetTitle : "Table Widget 2",
        widgetId : "id007",
        widgetType : "table",
        setJqueryStyle : true,
        widgetContent : myExampleData.tableWidgetData
        });

        });

        //example for  deleting a widget
        /* 	$("#btnDeleteWidget").click(function() {
        $("#cprDashboard").sDashboard("removeWidget", "id007");
        }); */

        //example for adding a pie chart widget
        $("#btnAddPieChartWidget").click(function() {

        $("#cprDashboard").sDashboard("addWidget", {
        widgetTitle : "Pie Chart 2",
        widgetId : "id006",
        widgetType : "static",
        widgetContent : {
        data: myExampleData.chartJsPolarConfig
        }
        });

        });

        //example for adding a bar chart widget
        $("#btnAddBarChartWidget").click(function() {

        $("#cprDashboard").sDashboard("addWidget", {
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
        $("#cprDashboard").sDashboard("addWidget", {
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
        })
        </script>
		<!--     CPR Dashboard    Custom  -->
</body>
</html>
