<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="assets/dash6/global/plugins/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<link href="assets/dash6/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css"	rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/global/plugins/morris/morris.css" 	rel="stylesheet" type="text/css" />
<!-- <link href="assets/dash6/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" /> -->
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL STYLES -->
<link href="assets/dash6/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
<link href="assets/dash6/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
<!-- END THEME GLOBAL STYLES -->
<!-- BEGIN THEME LAYOUT STYLES -->
<link href="assets/dash6/layouts/layout6/css/layout.css" rel="stylesheet" type="text/css" />
<link href="assets/dash6/layouts/layout6/css/custom.css" rel="stylesheet" type="text/css" />	
<!-- datatable CSS  -->
<link href="assets/dash6/css/datatable/buttons.dataTables.min.css"	rel="stylesheet" type="text/css" />
<link href="assets/dash6/css/datatable/datatables.css" rel="stylesheet"	type="text/css" />
<!-- END THEME LAYOUT STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!--     CPR Dashboard     -->
<!-- load jquery ui css theme -->
<!-- <link type="text/css" href="assets/dash6/css/jquery-ui.css" rel="stylesheet" /> -->
<link type="text/css" href="assets/dash6/css/chosen.min.css" 	rel="stylesheet" />
<link href="assets/dash6/css/chosen-sprite.png"/>
<link href="assets/dash6/css/chosen-sprite@2px.png"/>
<link type="text/css" href="assets/dash6/css/jqueryNw/jquery-ui-1.12.1.min.css" rel="stylesheet" />
<link type="text/css" href="assets/dash6/js/Dropdown/dropdown.css" rel="stylesheet">
<!-- amcharts map export css-->	
<!-- <link rel="stylesheet" href="assets/dash6/js/amchartsMap/export.css" type="text/css" media="all" /> -->
<!-- <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />	 -->
<!-- load the dashboard css -->
<link href="assets/dash6/css/cprDashboard.css" rel="stylesheet">
<!-- load gitter css -->
<!-- <link href="assets/dash6/css/jquery.gritter.css" rel="stylesheet" /> -->
<!-- toastr css -->
<link href="assets/dash6/css/toastr/toastr.css" rel="stylesheet" />
<!-- C3 css -->
<link href="assets/dash6/css/c3/c3.css" rel="stylesheet" />
<link href="assets/dash6/global/plugins/bootstrap-sweetalert/sweetalert.css"	rel="stylesheet" type="text/css" /> 
<!-- CPR Dashboard Custom     -->
<!-- END HEAD -->
<script src="assets/dash6/js/jqueryNw/jquery-1.12.4.js"	type="text/javascript"></script>
<script src="assets/dash6/js/Dropdown/chosen.jquery.js"></script>
<script src="assets/dash6/js/Dropdown/chosen.proto.js"></script>

<script src="assets/dash6/js/Dropdown/dropdown.js" type="text/javascript"></script>
<script src="assets/dash6/js/Dropdown/index.js" type="text/javascript"></script>


<script type="text/javascript">
// Wait for window load
$(window).load(function() {
		// Animate loader off screen
		$(".se-pre-con").fadeOut("slow");
		
});
</script> 


<div class="se-pre-con"></div>
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
							<!-- <li><a href="page_user_login_1.html"> <i
									class="icon-key"></i> Log Out
							</a></li> -->
							<li><a href="logout.html"> <i
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
				<li><a href="#">Maifest BI Insights</a></li>
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
						<li class="menuItem themes"><a href="#">Themes</a></li>
						<li class="menuItem filters"><a href="#">Filters</a></li>
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

			<!-- <script src="assets/dash6/js/Dropdown/chosen.jquery.min.js"></script> -->
				
	<div class="clearfix"></div>
	<!-- END DASHBOARD STATS 1-->
	<!-- BEGIN PAGE BASE CONTENT -->
	<div class="content">
	<div class="container-fluid">
	<!--     CPR Dashboard -->
	<ul id="cprDashboard">
		</ul>
	</div>
	<div id="changeChartModal" class="modal fade" role="dialog" aria-hidden="true">
	<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<a href="javascript:;" class="close" data-dismiss="modal" aria-hidden="true"></a>
					<p><h4 class="modal-title">Change Graph of widget - <label  for="cgwidgetId" id="cgwidgetId"></label></h4></p>
				</div>
				<div class="modal-body">
					<form action="#" id="changeChartForm" class="form-inline">
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Line chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" class="make-switch modal-input"  data-on-color="primary" data-off-color="danger" value="line" id="line"> </div>
						</div>
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Bar chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" class="make-switch modal-input"  data-on-color="primary" data-off-color="danger" value="bar" id="bar"> </div>
					   </div>
						<div class="form-group  modal-group">
							<label class="control-label col-md-6">Pie chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox"  class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="pie" id="pie"/>
							<!--  <input type="checkbox" disabled class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="pie" id="pie"/> -->
						  <!--       <input type="checkbox" checked readonly class="make-switch" /> -->
							 </div>
						</div>
						<div class="form-group  modal-group">
							<label class="control-label col-md-6">Area chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox"  class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="area" id="area"/>
							</div>
						</div>
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Column chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox"  class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="column" id="column"/>
							</div>
						</div>
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Bar-line chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox"  class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="barline" id="barline"/>
							</div>
						</div>
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Doughnut chart</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" disabled class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="doughnut" id="doughnut"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn grey-salsa btn-outline" data-dismiss="modal">Close</a>
					<button id="applyChanges" class="btn green">
						<i class="fa fa-check"></i> Apply changes</button>
				</div>
			</div>
		</div>
		</div>
					
		<div id="changeThemeModal" class="modal fade" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<a href="javascript:;" class="close" data-dismiss="modal" aria-hidden="true"></a>
					<p><h4 class="modal-title">Change theme</h4></p>
				</div>
				<div class="modal-body">
					<form action="#" id="changeThemeForm" class="form-inline">
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Theme 1</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" class="make-switch modal-input"  data-on-color="primary" data-off-color="danger" value="theme1" id="theme1"> </div>
						</div>
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Theme 2</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" class="make-switch modal-input"  data-on-color="primary" data-off-color="danger" value="theme2" id="theme2"> </div>
					   </div>
						<div class="form-group  modal-group">
							<label class="control-label col-md-6">Theme 3</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox"  class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="theme3" id="theme3"/>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn grey-salsa btn-outline" data-dismiss="modal">Close</a>
					<button id="applyThemes" class="btn green">
						<i class="fa fa-check"></i> Apply changes</button>
				</div>
			</div>
			</div>
		</div>
					
		 <div id="filterModal" class="modal fade" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
						<h4 class="modal-title">Apply filters on the charts</h4>
					</div>
					<div class="modal-body">
						<form action="#" class="form-horizontal">
							 <div class="form-group">
								<div class="col-md-4" style="padding-left:150px">
								<label>From</label>
								</div>
								<div class="col-md-6">
								<input class="date-picker" size="16" type="text" value="" id="from" name="from"/>
								</div>
						     </div>
							<div class="form-group">
							<div class="col-md-4" style="padding-left:150px">
								<label>To</label>
							</div>
							<div class="col-md-6">
								<span><input class="date-picker" size="16" type="text" value="" id="to" name="to"/></span>
							</div>
							</div>  
							<div class="form-group">
							<div class="col-md-4" style="padding-left:150px">
							<label>Select Country</label>
							</div>
							<div class="col-md-6">		
							
						<!-- 	
							<div class="ui fluid multiple search selection dropdown">
						  	<input type="text" name="country">
						  	<i class="dropdown icon"></i>
						  	<div class="default text">Select Country</div>
 				          	<div class="menu">
  <div class="item" data-value="af"><i class="af flag"></i>Afghanistan</div>
  <div class="item" data-value="ax"><i class="ax flag"></i>Aland Islands</div>
  <div class="item" data-value="al"><i class="al flag"></i>Albania</div>
  <div class="item" data-value="dz"><i class="dz flag"></i>Algeria</div>
  <div class="item" data-value="as"><i class="as flag"></i>American Samoa</div>
  <div class="item" data-value="ad"><i class="ad flag"></i>Andorra</div>
  <div class="item" data-value="ao"><i class="ao flag"></i>Angola</div>
  <div class="item" data-value="ai"><i class="ai flag"></i>Anguilla</div>
  <div class="item" data-value="ag"><i class="ag flag"></i>Antigua</div>
  <div class="item" data-value="ar"><i class="ar flag"></i>Argentina</div>
  <div class="item" data-value="am"><i class="am flag"></i>Armenia</div>
  <div class="item" data-value="aw"><i class="aw flag"></i>Aruba</div>
  <div class="item" data-value="au"><i class="au flag"></i>Australia</div>
  <div class="item" data-value="at"><i class="at flag"></i>Austria</div>
  <div class="item" data-value="az"><i class="az flag"></i>Azerbaijan</div>
  <div class="item" data-value="bs"><i class="bs flag"></i>Bahamas</div>
  <div class="item" data-value="bh"><i class="bh flag"></i>Bahrain</div>
  <div class="item" data-value="bd"><i class="bd flag"></i>Bangladesh</div>
  <div class="item" data-value="bb"><i class="bb flag"></i>Barbados</div>
  <div class="item" data-value="by"><i class="by flag"></i>Belarus</div>
  <div class="item" data-value="be"><i class="be flag"></i>Belgium</div>
  <div class="item" data-value="bz"><i class="bz flag"></i>Belize</div>
  <div class="item" data-value="bj"><i class="bj flag"></i>Benin</div>
  <div class="item" data-value="bm"><i class="bm flag"></i>Bermuda</div>
  <div class="item" data-value="bt"><i class="bt flag"></i>Bhutan</div>
  <div class="item" data-value="bo"><i class="bo flag"></i>Bolivia</div>
  <div class="item" data-value="ba"><i class="ba flag"></i>Bosnia</div>
  <div class="item" data-value="bw"><i class="bw flag"></i>Botswana</div>
  <div class="item" data-value="bv"><i class="bv flag"></i>Bouvet Island</div>
  <div class="item" data-value="br"><i class="br flag"></i>Brazil</div>
  <div class="item" data-value="vg"><i class="vg flag"></i>British Virgin Islands</div>
  <div class="item" data-value="bn"><i class="bn flag"></i>Brunei</div>
  <div class="item" data-value="bg"><i class="bg flag"></i>Bulgaria</div>
  <div class="item" data-value="bf"><i class="bf flag"></i>Burkina Faso</div>
  <div class="item" data-value="mm"><i class="mm flag"></i>Burma</div>
  <div class="item" data-value="bi"><i class="bi flag"></i>Burundi</div>
  <div class="item" data-value="tc"><i class="tc flag"></i>Caicos Islands</div>
  <div class="item" data-value="kh"><i class="kh flag"></i>Cambodia</div>
  <div class="item" data-value="cm"><i class="cm flag"></i>Cameroon</div>
  <div class="item" data-value="ca"><i class="ca flag"></i>Canada</div>
  <div class="item" data-value="cv"><i class="cv flag"></i>Cape Verde</div>
  <div class="item" data-value="ky"><i class="ky flag"></i>Cayman Islands</div>
  <div class="item" data-value="cf"><i class="cf flag"></i>Central African Republic</div>
  <div class="item" data-value="td"><i class="td flag"></i>Chad</div>
  <div class="item" data-value="cl"><i class="cl flag"></i>Chile</div>
  <div class="item" data-value="cn"><i class="cn flag"></i>China</div>
  <div class="item" data-value="cx"><i class="cx flag"></i>Christmas Island</div>
  <div class="item" data-value="cc"><i class="cc flag"></i>Cocos Islands</div>
  <div class="item" data-value="co"><i class="co flag"></i>Colombia</div>
  <div class="item" data-value="km"><i class="km flag"></i>Comoros</div>
  <div class="item" data-value="cg"><i class="cg flag"></i>Congo Brazzaville</div>
  <div class="item" data-value="cd"><i class="cd flag"></i>Congo</div>
  <div class="item" data-value="ck"><i class="ck flag"></i>Cook Islands</div>
  <div class="item" data-value="cr"><i class="cr flag"></i>Costa Rica</div>
  <div class="item" data-value="ci"><i class="ci flag"></i>Cote Divoire</div>
  <div class="item" data-value="hr"><i class="hr flag"></i>Croatia</div>
  <div class="item" data-value="cu"><i class="cu flag"></i>Cuba</div>
  <div class="item" data-value="cy"><i class="cy flag"></i>Cyprus</div>
  <div class="item" data-value="cz"><i class="cz flag"></i>Czech Republic</div>
  <div class="item" data-value="dk"><i class="dk flag"></i>Denmark</div>
  <div class="item" data-value="dj"><i class="dj flag"></i>Djibouti</div>
  <div class="item" data-value="dm"><i class="dm flag"></i>Dominica</div>
  <div class="item" data-value="do"><i class="do flag"></i>Dominican Republic</div>
  <div class="item" data-value="ec"><i class="ec flag"></i>Ecuador</div>
  <div class="item" data-value="eg"><i class="eg flag"></i>Egypt</div>
  <div class="item" data-value="sv"><i class="sv flag"></i>El Salvador</div>
  <div class="item" data-value="gb"><i class="gb flag"></i>England</div>
  <div class="item" data-value="gq"><i class="gq flag"></i>Equatorial Guinea</div>
  <div class="item" data-value="er"><i class="er flag"></i>Eritrea</div>
  <div class="item" data-value="ee"><i class="ee flag"></i>Estonia</div>
  <div class="item" data-value="et"><i class="et flag"></i>Ethiopia</div>
  <div class="item" data-value="eu"><i class="eu flag"></i>European Union</div>
  <div class="item" data-value="fk"><i class="fk flag"></i>Falkland Islands</div>
  <div class="item" data-value="fo"><i class="fo flag"></i>Faroe Islands</div>
  <div class="item" data-value="fj"><i class="fj flag"></i>Fiji</div>
  <div class="item" data-value="fi"><i class="fi flag"></i>Finland</div>
  <div class="item" data-value="fr"><i class="fr flag"></i>France</div>
  <div class="item" data-value="gf"><i class="gf flag"></i>French Guiana</div>
  <div class="item" data-value="pf"><i class="pf flag"></i>French Polynesia</div>
  <div class="item" data-value="tf"><i class="tf flag"></i>French Territories</div>
  <div class="item" data-value="ga"><i class="ga flag"></i>Gabon</div>
  <div class="item" data-value="gm"><i class="gm flag"></i>Gambia</div>
  <div class="item" data-value="ge"><i class="ge flag"></i>Georgia</div>
  <div class="item" data-value="de"><i class="de flag"></i>Germany</div>
  <div class="item" data-value="gh"><i class="gh flag"></i>Ghana</div>
  <div class="item" data-value="gi"><i class="gi flag"></i>Gibraltar</div>
  <div class="item" data-value="gr"><i class="gr flag"></i>Greece</div>
  <div class="item" data-value="gl"><i class="gl flag"></i>Greenland</div>
  <div class="item" data-value="gd"><i class="gd flag"></i>Grenada</div>
  <div class="item" data-value="gp"><i class="gp flag"></i>Guadeloupe</div>
  <div class="item" data-value="gu"><i class="gu flag"></i>Guam</div>
  <div class="item" data-value="gt"><i class="gt flag"></i>Guatemala</div>
  <div class="item" data-value="gw"><i class="gw flag"></i>Guinea-Bissau</div>
  <div class="item" data-value="gn"><i class="gn flag"></i>Guinea</div>
  <div class="item" data-value="gy"><i class="gy flag"></i>Guyana</div>
  <div class="item" data-value="ht"><i class="ht flag"></i>Haiti</div>
  <div class="item" data-value="hm"><i class="hm flag"></i>Heard Island</div>
  <div class="item" data-value="hn"><i class="hn flag"></i>Honduras</div>
  <div class="item" data-value="hk"><i class="hk flag"></i>Hong Kong</div>
  <div class="item" data-value="hu"><i class="hu flag"></i>Hungary</div>
  <div class="item" data-value="is"><i class="is flag"></i>Iceland</div>
  <div class="item" data-value="in"><i class="in flag"></i>India</div>
  <div class="item" data-value="io"><i class="io flag"></i>Indian Ocean Territory</div>
  <div class="item" data-value="id"><i class="id flag"></i>Indonesia</div>
  <div class="item" data-value="ir"><i class="ir flag"></i>Iran</div>
  <div class="item" data-value="iq"><i class="iq flag"></i>Iraq</div>
  <div class="item" data-value="ie"><i class="ie flag"></i>Ireland</div>
  <div class="item" data-value="il"><i class="il flag"></i>Israel</div>
  <div class="item" data-value="it"><i class="it flag"></i>Italy</div>
  <div class="item" data-value="jm"><i class="jm flag"></i>Jamaica</div>
  <div class="item" data-value="jp"><i class="jp flag"></i>Japan</div>
  <div class="item" data-value="jo"><i class="jo flag"></i>Jordan</div>
  <div class="item" data-value="kz"><i class="kz flag"></i>Kazakhstan</div>
  <div class="item" data-value="ke"><i class="ke flag"></i>Kenya</div>
  <div class="item" data-value="ki"><i class="ki flag"></i>Kiribati</div>
  <div class="item" data-value="kw"><i class="kw flag"></i>Kuwait</div>
  <div class="item" data-value="kg"><i class="kg flag"></i>Kyrgyzstan</div>
  <div class="item" data-value="la"><i class="la flag"></i>Laos</div>
  <div class="item" data-value="lv"><i class="lv flag"></i>Latvia</div>
  <div class="item" data-value="lb"><i class="lb flag"></i>Lebanon</div>
  <div class="item" data-value="ls"><i class="ls flag"></i>Lesotho</div>
  <div class="item" data-value="lr"><i class="lr flag"></i>Liberia</div>
  <div class="item" data-value="ly"><i class="ly flag"></i>Libya</div>
  <div class="item" data-value="li"><i class="li flag"></i>Liechtenstein</div>
  <div class="item" data-value="lt"><i class="lt flag"></i>Lithuania</div>
  <div class="item" data-value="lu"><i class="lu flag"></i>Luxembourg</div>
  <div class="item" data-value="mo"><i class="mo flag"></i>Macau</div>
  <div class="item" data-value="mk"><i class="mk flag"></i>Macedonia</div>
  <div class="item" data-value="mg"><i class="mg flag"></i>Madagascar</div>
  <div class="item" data-value="mw"><i class="mw flag"></i>Malawi</div>
  <div class="item" data-value="my"><i class="my flag"></i>Malaysia</div>
  <div class="item" data-value="mv"><i class="mv flag"></i>Maldives</div>
  <div class="item" data-value="ml"><i class="ml flag"></i>Mali</div>
  <div class="item" data-value="mt"><i class="mt flag"></i>Malta</div>
  <div class="item" data-value="mh"><i class="mh flag"></i>Marshall Islands</div>
  <div class="item" data-value="mq"><i class="mq flag"></i>Martinique</div>
  <div class="item" data-value="mr"><i class="mr flag"></i>Mauritania</div>
  <div class="item" data-value="mu"><i class="mu flag"></i>Mauritius</div>
  <div class="item" data-value="yt"><i class="yt flag"></i>Mayotte</div>
  <div class="item" data-value="mx"><i class="mx flag"></i>Mexico</div>
  <div class="item" data-value="fm"><i class="fm flag"></i>Micronesia</div>
  <div class="item" data-value="md"><i class="md flag"></i>Moldova</div>
  <div class="item" data-value="mc"><i class="mc flag"></i>Monaco</div>
  <div class="item" data-value="mn"><i class="mn flag"></i>Mongolia</div>
  <div class="item" data-value="me"><i class="me flag"></i>Montenegro</div>
  <div class="item" data-value="ms"><i class="ms flag"></i>Montserrat</div>
  <div class="item" data-value="ma"><i class="ma flag"></i>Morocco</div>
  <div class="item" data-value="mz"><i class="mz flag"></i>Mozambique</div>
  <div class="item" data-value="na"><i class="na flag"></i>Namibia</div>
  <div class="item" data-value="nr"><i class="nr flag"></i>Nauru</div>
  <div class="item" data-value="np"><i class="np flag"></i>Nepal</div>
  <div class="item" data-value="an"><i class="an flag"></i>Netherlands Antilles</div>
  <div class="item" data-value="nl"><i class="nl flag"></i>Netherlands</div>
  <div class="item" data-value="nc"><i class="nc flag"></i>New Caledonia</div>
  <div class="item" data-value="pg"><i class="pg flag"></i>New Guinea</div>
  <div class="item" data-value="nz"><i class="nz flag"></i>New Zealand</div>
  <div class="item" data-value="ni"><i class="ni flag"></i>Nicaragua</div>
  <div class="item" data-value="ne"><i class="ne flag"></i>Niger</div>
  <div class="item" data-value="ng"><i class="ng flag"></i>Nigeria</div>
  <div class="item" data-value="nu"><i class="nu flag"></i>Niue</div>
  <div class="item" data-value="nf"><i class="nf flag"></i>Norfolk Island</div>
  <div class="item" data-value="kp"><i class="kp flag"></i>North Korea</div>
  <div class="item" data-value="mp"><i class="mp flag"></i>Northern Mariana Islands</div>
  <div class="item" data-value="no"><i class="no flag"></i>Norway</div>
  <div class="item" data-value="om"><i class="om flag"></i>Oman</div>
  <div class="item" data-value="pk"><i class="pk flag"></i>Pakistan</div>
  <div class="item" data-value="pw"><i class="pw flag"></i>Palau</div>
  <div class="item" data-value="ps"><i class="ps flag"></i>Palestine</div>
  <div class="item" data-value="pa"><i class="pa flag"></i>Panama</div>
  <div class="item" data-value="py"><i class="py flag"></i>Paraguay</div>
  <div class="item" data-value="pe"><i class="pe flag"></i>Peru</div>
  <div class="item" data-value="ph"><i class="ph flag"></i>Philippines</div>
  <div class="item" data-value="pn"><i class="pn flag"></i>Pitcairn Islands</div>
  <div class="item" data-value="pl"><i class="pl flag"></i>Poland</div>
  <div class="item" data-value="pt"><i class="pt flag"></i>Portugal</div>
  <div class="item" data-value="pr"><i class="pr flag"></i>Puerto Rico</div>
  <div class="item" data-value="qa"><i class="qa flag"></i>Qatar</div>
  <div class="item" data-value="re"><i class="re flag"></i>Reunion</div>
  <div class="item" data-value="ro"><i class="ro flag"></i>Romania</div>
  <div class="item" data-value="ru"><i class="ru flag"></i>Russia</div>
  <div class="item" data-value="rw"><i class="rw flag"></i>Rwanda</div>
  <div class="item" data-value="sh"><i class="sh flag"></i>Saint Helena</div>
  <div class="item" data-value="kn"><i class="kn flag"></i>Saint Kitts and Nevis</div>
  <div class="item" data-value="lc"><i class="lc flag"></i>Saint Lucia</div>
  <div class="item" data-value="pm"><i class="pm flag"></i>Saint Pierre</div>
  <div class="item" data-value="vc"><i class="vc flag"></i>Saint Vincent</div>
  <div class="item" data-value="ws"><i class="ws flag"></i>Samoa</div>
  <div class="item" data-value="sm"><i class="sm flag"></i>San Marino</div>
  <div class="item" data-value="gs"><i class="gs flag"></i>Sandwich Islands</div>
  <div class="item" data-value="st"><i class="st flag"></i>Sao Tome</div>
  <div class="item" data-value="sa"><i class="sa flag"></i>Saudi Arabia</div>
  <div class="item" data-value="sn"><i class="sn flag"></i>Senegal</div>
  <div class="item" data-value="cs"><i class="cs flag"></i>Serbia</div>
  <div class="item" data-value="rs"><i class="rs flag"></i>Serbia</div>
  <div class="item" data-value="sc"><i class="sc flag"></i>Seychelles</div>
  <div class="item" data-value="sl"><i class="sl flag"></i>Sierra Leone</div>
  <div class="item" data-value="sg"><i class="sg flag"></i>Singapore</div>
  <div class="item" data-value="sk"><i class="sk flag"></i>Slovakia</div>
  <div class="item" data-value="si"><i class="si flag"></i>Slovenia</div>
  <div class="item" data-value="sb"><i class="sb flag"></i>Solomon Islands</div>
  <div class="item" data-value="so"><i class="so flag"></i>Somalia</div>
  <div class="item" data-value="za"><i class="za flag"></i>South Africa</div>
  <div class="item" data-value="kr"><i class="kr flag"></i>South Korea</div>
  <div class="item" data-value="es"><i class="es flag"></i>Spain</div>
  <div class="item" data-value="lk"><i class="lk flag"></i>Sri Lanka</div>
  <div class="item" data-value="sd"><i class="sd flag"></i>Sudan</div>
  <div class="item" data-value="sr"><i class="sr flag"></i>Suriname</div>
  <div class="item" data-value="sj"><i class="sj flag"></i>Svalbard</div>
  <div class="item" data-value="sz"><i class="sz flag"></i>Swaziland</div>
  <div class="item" data-value="se"><i class="se flag"></i>Sweden</div>
  <div class="item" data-value="ch"><i class="ch flag"></i>Switzerland</div>
  <div class="item" data-value="sy"><i class="sy flag"></i>Syria</div>
  <div class="item" data-value="tw"><i class="tw flag"></i>Taiwan</div>
  <div class="item" data-value="tj"><i class="tj flag"></i>Tajikistan</div>
  <div class="item" data-value="tz"><i class="tz flag"></i>Tanzania</div>
  <div class="item" data-value="th"><i class="th flag"></i>Thailand</div>
  <div class="item" data-value="tl"><i class="tl flag"></i>Timorleste</div>
  <div class="item" data-value="tg"><i class="tg flag"></i>Togo</div>
  <div class="item" data-value="tk"><i class="tk flag"></i>Tokelau</div>
  <div class="item" data-value="to"><i class="to flag"></i>Tonga</div>
  <div class="item" data-value="tt"><i class="tt flag"></i>Trinidad</div>
  <div class="item" data-value="tn"><i class="tn flag"></i>Tunisia</div>
  <div class="item" data-value="tr"><i class="tr flag"></i>Turkey</div>
  <div class="item" data-value="tm"><i class="tm flag"></i>Turkmenistan</div>
  <div class="item" data-value="tv"><i class="tv flag"></i>Tuvalu</div>
  <div class="item" data-value="ug"><i class="ug flag"></i>Uganda</div>
  <div class="item" data-value="ua"><i class="ua flag"></i>Ukraine</div>
  <div class="item" data-value="ae"><i class="ae flag"></i>United Arab Emirates</div>
  <div class="item" data-value="us"><i class="us flag"></i>United States</div>
  <div class="item" data-value="uy"><i class="uy flag"></i>Uruguay</div>
  <div class="item" data-value="um"><i class="um flag"></i>Us Minor Islands</div>
  <div class="item" data-value="vi"><i class="vi flag"></i>Us Virgin Islands</div>
  <div class="item" data-value="uz"><i class="uz flag"></i>Uzbekistan</div>
  <div class="item" data-value="vu"><i class="vu flag"></i>Vanuatu</div>
  <div class="item" data-value="va"><i class="va flag"></i>Vatican City</div>
  <div class="item" data-value="ve"><i class="ve flag"></i>Venezuela</div>
  <div class="item" data-value="vn"><i class="vn flag"></i>Vietnam</div>
  <div class="item" data-value="wf"><i class="wf flag"></i>Wallis and Futuna</div>
  <div class="item" data-value="eh"><i class="eh flag"></i>Western Sahara</div>
  <div class="item" data-value="ye"><i class="ye flag"></i>Yemen</div>
  <div class="item" data-value="zm"><i class="zm flag"></i>Zambia</div>
  <div class="item" data-value="zw"><i class="zw flag"></i>Zimbabwe</div>
</div>
  						  	</div> -->
							
							
									
							<select data-placeholder="Choose a Country..." class="input-medium chsn-select" multiple>
					            <option value=""></option>
					            <option value="United States">United States</option>
					            <option value="United Kingdom">United Kingdom</option>
					            <option value="Afghanistan">Afghanistan</option>
					            <option value="Aland Islands">Aland Islands</option>
					            <option value="Albania">Albania</option>					        
					            <option value="Bahrain">Bahrain</option>
					            <option value="Bangladesh">Bangladesh</option>
					            <option value="Barbados">Barbados</option>
					            <option value="Belarus">Belarus</option>
					            <option value="Belgium">Belgium</option>
					            <option value="Chad">Chad</option>
					            <option value="Chile">Chile</option>
					            <option value="China">China</option>
					            <option value="Denmark">Denmark</option>
					            <option value="Djibouti">Djibouti</option>
					            <option value="Dominica">Dominica</option>
					            <option value="Fiji">Fiji</option>
					            <option value="Finland">Finland</option>
					            <option value="France">France</option>
					            <option value="Guam">Guam</option>
					            <option value="Guatemala">Guatemala</option>
					            <option value="Guernsey">Guernsey</option>
					            <option value="Guinea">Guinea</option>
					            <option value="Hungary">Hungary</option>
					            <option value="Iceland">Iceland</option>
					            <option value="India">India</option>
					            <option value="Israel">Israel</option>
					            <option value="Italy">Italy</option>
					            <option value="Jamaica">Jamaica</option>
					            <option value="Japan">Japan</option>
					            <option value="Jersey">Jersey</option>
					            <option value="Jordan">Jordan</option>
					            <option value="Myanmar">Myanmar</option>
					            <option value="Namibia">Namibia</option>
					            <option value="Nauru">Nauru</option>
					            <option value="Nepal">Nepal</option>
					            <option value="Netherlands">Netherlands</option>
					            <option value="New Caledonia">New Caledonia</option>
					            <option value="Paraguay">Paraguay</option>
					            <option value="Peru">Peru</option>
					            <option value="Philippines">Philippines</option>
					            <option value="Pitcairn">Pitcairn</option>
					            <option value="Poland">Poland</option>
					            <option value="Portugal">Portugal</option>
					            <option value="Puerto Rico">Puerto Rico</option>
					            <option value="Qatar">Qatar</option>
					            <option value="Reunion">Reunion</option>
					            <option value="Spain">Spain</option>
					            <option value="Sri Lanka">Sri Lanka</option>
					            <option value="Sudan">Sudan</option>
					          </select>
					          
					        <script>

					        		$(".chzn-select").chosen();

					    	</script>		
					       	</div>
					        </div>
					        
					         

					        
					          
						</form>
						
						
					</div>
					<div class="modal-footer">
						<button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
						<button class="btn green" data-dismiss="modal">Save changes</button>
				   </div>
			</div>
			</div>
		</div>
					
		<div id="interactionModal" class="modal fade" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<a href="javascript:;" class="close" data-dismiss="modal" aria-hidden="true"></a>
					<p><h4 class="modal-title">Chart interaction type</h4></p>
				</div>
				<div class="modal-body">
					<form action="#" id="interactForm" class="form-inline">
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Details view</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="details" id="details"> </div>
						</div>
						<div class="form-group modal-group">
							<label class="control-label col-md-6">Interactive</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox" class="make-switch modal-input"  data-on-color="primary" data-off-color="danger" value="interact" id="interact"> </div>
					   </div>
					</form>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn grey-salsa btn-outline" data-dismiss="modal">Close</a>
					<!-- <button id="applyThemes" class="btn green">
						<i class="fa fa-check"></i> Apply changes</button> -->
				</div>
			</div>
		</div>
		</div>
					
			</div>
		</div>
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
<!-- BEGIN CORE PLUGINS -->
<!-- <script src="assets/dash6/global/plugins/jquery.min.js"	type="text/javascript"></script>  -->
<!-- remove -->
<script src="assets/dash6/global/plugins/bootstrap/js/bootstrap.min.js"	type="text/javascript"></script>
<script src="assets/dash6/global/plugins/js.cookie.min.js"	type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/dash6/global/plugins/jquery.blockui.min.js"	type="text/javascript"></script>
<!-- END CORE PLUGINS -->

 
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script	src="assets/dash6/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/bootstrap-sweetalert/sweetalert.js" type="text/javascript"></script>

<script src="assets/dash6/global/plugins/moment.min.js"	type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
<script src="assets/dash6/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>

<script src="assets/dash6/global/plugins/morris/morris.min.js"	type="text/javascript"></script>
<script src="assets/dash6/global/plugins/morris/raphael-min.js"	type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/counterup/jquery.waypoints.min.js"	type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/counterup/jquery.counterup.min.js"	type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/fullcalendar/fullcalendar.min.js"	type="text/javascript"></script>
<script	src="assets/dash6/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<script src="assets/dash6/global/scripts/app.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/dash6/pages/scripts/dashboard.min.js"  type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<script src="assets/dash6/layouts/layout6/scripts/layout.min.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
<!--   CPR Dashboard    Custom     -->
<script src="assets/dash6/js/jquery/jquery-ui-1.12.1.min.js" type="text/javascript"></script>
<!-- load touch punch library to enable dragging on touch based devices -->
<!-- <script src="assets/dash6/js/touchpunch/jquery.ui.touch-punch.js" 	type="text/javascript"></script> -->
<!-- Toastr notification library -->
<script src="assets/dash6/js/toastr/toastr.js" type="text/javascript"></script>
<!-- load datatables library -->
<!--<script src="assets/dash6/js/datatables/jquery.dataTables.js"></script>  -->
<script src="assets/dash6/js/plotly-latest.min.js"></script>
<!-- Chart JS<script src="assets/dash6/js/chart/Chart.bundle.js"></script> -->
<script src="assets/dash6/js/c3/c3.min.js"></script>
<!-- amcharts map -->
<script src="assets/dash6/js/amchartsMap/ammap.js"	type="text/javascript"></script>
<script src="assets/dash6/js/amchartsMap/light.js"	type="text/javascript"></script>
<script src="assets/dash6/js/amchartsMap/worldLow.js" type="text/javascript"></script>
<script src="assets/dash6/js/amchartsMap/usaLow.js" type="text/javascript"></script>
<!-- 	<script src="assets/dash6/js/amchartsMap/export.min.js"	type="text/javascript"></script> -->
<!-- <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script> -->
<!-- theme switcher -->
<script src="assets/dash6/js/themeswitcher/jquery.themeswitcher.min.js" type="text/javascript"></script>
<!-- load CPR dashboard widget library -->
<script src="assets/dash6/js/jquery-cprDashboard.js" type="text/javascript"></script>


<!-- sample data external script file -->
<script src="assets/dash6/js/exampleData.js" type="text/javascript"></script>
<!-- Datatable export function js files -->
<script src="assets/dash6/js/datatableNw/jquery.dataTables.min.js"></script>

<script src="assets/dash6/js/datatableNw/dataTables.buttons.min.js"></script>
<script src="assets/dash6/js/datatableNw/jszip.min.js"></script>
<script src="assets/dash6/js/datatableNw/pdfmake.min.js"></script>
<script src="assets/dash6/js/datatableNw/vfs_fonts.js"></script>
<script src="assets/dash6/js/datatableNw/buttons.print.min.js"></script>
<script src="assets/dash6/js/datatableNw/buttons.html5.min.js"></script>
<script src="assets/dash6/js/datatableNw/buttons.flash.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	$(function() {
	//Theme switcher plugin
	$("#switcher").themeswitcher({
		imgpath : "assets/dash6/css/images/",
		loadTheme : "Cupertino"
	});	
	 
		 
		  var dateFormat = "mm/dd/yy",
		      from = $("#from").datepicker({
		          showOn: "button",
		          buttonImage: 'assets/dash6/css/calendar-range.png',
		          buttonImageOnly: true,
		          buttonText: "Select date",
		          defaultDate: "+1w",
		          changeMonth: true,
		          changeYear: true,
		          numberOfMonths: 1,
		          showAnim: "drop"
		        })
		        .on( "change", function() {
		          to.datepicker( "option", "minDate", getDate( this ));
		        }),
		      to = $( "#to").datepicker({
		    	showOn: "button",
		        buttonImage: 'assets/dash6/css/calendar-range.png',
		        buttonImageOnly: true,
		     	buttonText: "Select date",
		    	defaultDate: "+1w",
		        changeMonth: true,
		        changeYear: true,
		        numberOfMonths: 1,
		        showAnim: "drop"
		      })
		      .on( "change", function() {
		        from.datepicker( "option", "maxDate", getDate( this ) );
		      });
		 
		    function getDate( element ) {
		      var date;
		      try {
		        date = $.datepicker.parseDate( dateFormat, element.value );
		      } catch( error ) {
		        date = null;
		      }
		 
		      return date;
		    } 

	 
	 
	
//**********************************************//
//dashboard json data
//this is the data format that the dashboard framework expects
//**********************************************
	var dashboardJSON = [
			{
				widgetTitle : "Day Wise",
				widgetId : "id001",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "normal",
				chartType : "column",
				widgetContent : {
					data : myExampleData.plotlycolumndata,
					layout : myExampleData.plotlycolumnlayout,
					config : myExampleData.plotlycolumnconfig
				}
			},

			{
				widgetTitle : "Hour Wise Redemptions",
				widgetId : "id002",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "normal",
				chartType : "barline",
				widgetContent : {
					data : myExampleData.plotlybarlinedata,
					layout : myExampleData.plotlybarlinelayout,
					config : myExampleData.plotlybarlineconfig
				}
			},
			{
				widgetTitle : "Sales Figures",
				widgetId : "id003",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "normal",
				chartType : "pie",
				widgetContent : {
					data : myExampleData.plotlypiedata,
					layout : myExampleData.plotlypielayout,
					config : myExampleData.plotlypieconfig
				}
			},
			{
				widgetTitle : "Sales Figures2",
				widgetId : "id004",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "normal",
				chartType : "doughnut",
				widgetContent : {
					data : myExampleData.donutWidgetData,
					layout : myExampleData.donutWidgetLayout,
					config : myExampleData.donutWidgetConfig
				}
			},
			{
				widgetTitle : "Hour Wise Redemptions",
				widgetId : "id005",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "normal",
				chartType : "area",
				widgetContent : {
					data : myExampleData.plotlyareadata,
					layout : myExampleData.plotlyarealayout,
					config : myExampleData.plotlyareaconfig
				}
			},

			{
				widgetTitle : "Age group",
				widgetId : "id006",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "normal",
				chartType : "bubble",
				enableRefresh : true,
				refreshCallBack : function(widgetId) {
					//Inside refresh callback
					//notification('info', 'Inside the refresh callback of '+widgetId+'!');
					var refreshedData = {
						data : myExampleData.plotlyRefreshBubbleData,
						layout : myExampleData.plotlyBubbleLayout,
						config : myExampleData.plotlybarconfig
					};
					return refreshedData;
				},
				widgetContent : {
					data : myExampleData.plotlyBubbleData,
					layout : myExampleData.plotlyBubbleLayout,
					config : myExampleData.plotlybarconfig
				}
			},
			{
				widgetTitle : "Revenue by region",
				widgetId : "id007",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "large",
				chartType : "bubble",
				widgetContent : {
					data : myExampleData.plotlybubble2data,
					layout : myExampleData.plotlybubble2layout,
					config : myExampleData.plotlybubble2config
				}
			},

			{
				widgetTitle : "Revenue",
				widgetId : "id008",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "large",
				chartType : "bar",
				enableRefresh : true,
				refreshCallBack : function(widgetId) {
					var refreshedData = {
						data : myExampleData.barGroupRefreshChartData,
						layout : myExampleData.barGroupChartLayout,
						config : myExampleData.plotlybarconfig
					};
					return refreshedData;
				},
				widgetContent : {
					data : myExampleData.barGroupChartData,
					layout : myExampleData.barGroupChartLayout,
					config : myExampleData.plotlybarconfig
				}
			},
			{
				widgetTitle : "Items sold",
				widgetId : "id009",
				widgetType : "chart",
				widgetClick:"disable",
				graphType : "exploratory",
				widgetDimension : "large",
				chartType : "line",
				getDataBySelection : true,
				widgetContent : {
					data : myExampleData.plotlylinedata,
					layout : myExampleData.plotlylinelayout,
					config : myExampleData.plotlylineconfig
				}
			},
			/* {
				widgetTitle: "Sales Figures",
				widgetId: "id006",
				widgetType: "chart",
				graphType: "normal",
				widgetDimension: "normal",
				chartType: "pie",
				widgetContent: {
					data: myExampleData.c3piedata
				}
			}, */
			{
				widgetTitle : "Stats",
				widgetId : "id010",
				widgetType : "Text",
				widgetClick:"disable",
				widgetDimension : "small",
				widgetContent : "Redemptions : 4,636"

			},
			{
				widgetTitle : "Browser used",
				widgetId : "id011",
				widgetType : "table",
				widgetClick:"disable",
				//widgetDimension: "large",
				setJqueryStyle : true,
				enableRefresh : true,
				refreshCallBack : function(widgetId) {
					//Inside refresh callback
					notification('info',
							'Inside the refresh callback of '
									+ widgetId
									+ '!');
				},
				widgetContent : myExampleData.tableWidgetData
			},
			{
				widgetTitle : "Revenue",
				widgetId : "id012",
				widgetType : "Text",
				widgetClick:"disable",
				widgetDimension : "small",
				widgetContent : "231,800$"
			},
			{
				widgetTitle : "Where the customers are ",
				widgetId : "id013",
				widgetType : "map",
				widgetClick:"disable",
				graphType : "normal",
				widgetDimension : "large",
				//widgetContent : myExampleData.amchartsMapData
				widgetContent : myExampleData.mapDataStoreLocUSTest

			},
			/* {
				widgetTitle : "World Maps",
				widgetId : "id014",
				widgetType : "map",
				widgetClick:"disable",
				graphType : "normal",
				widgetDimension : "normal",
				// chartType : "line",
				//getDataBySelection : true, 
				widgetContent : myExampleData.amchartsCountryMapData

			}, */
			//Drawboard 3
			{
				widgetTitle: "Sales Figures",
				widgetId: "id015",
				widgetType: "chart",
				widgetClick:"details",
				graphType: "exploratory",
				widgetDimension: "normal",
				chartType: "pie",
				widgetContent: {
					data: myExampleData.plotlypiedata,
					layout: myExampleData.plotlypielayout,
					config: myExampleData.plotlypieconfig
				}
			},
			{
				widgetTitle: "Age group",
				widgetId: "id016",
				widgetClick:"details",
				widgetType: "chart",
				graphType: "exploratory",
				widgetDimension: "normal",
				chartType: "bubble",
				enableRefresh: true,
				refreshCallBack : function(widgetId){
					//Inside refresh callback
					//notification('info', 'Inside the refresh callback of '+widgetId+'!');
					var refreshedData = {
						data: myExampleData.plotlyRefreshBubbleData,
						layout: myExampleData.plotlyBubbleLayout,
						config: myExampleData.plotlybarconfig
					};
					return refreshedData;
				},
				widgetContent: {
					data: myExampleData.plotlyBubbleData,
					layout: myExampleData.plotlyBubbleLayout,
					config: myExampleData.plotlybarconfig
				}
			},{
				widgetTitle: "Revenue",
				widgetId: "id017",
				widgetType: "chart",
				widgetClick:"details",
				graphType: "exploratory",
				widgetDimension: "large",
				chartType: "bar",
				enableRefresh: true,
				refreshCallBack : function(widgetId){
				var refreshedData = {
					data: myExampleData.barGroupRefreshChartData,
					layout: myExampleData.barGroupChartLayout,
					config: myExampleData.plotlybarconfig
				};
				return refreshedData;
			},
				widgetContent: {
					data: myExampleData.barGroupChartData,
					layout: myExampleData.barGroupChartLayout,
					config: myExampleData.plotlybarconfig
			}
			}, /* {
		widgetTitle: "Items sold",
		widgetId: "id018",
		widgetType: "chart",
		widgetClick:"details",
		graphType: "exploratory",
		widgetDimension: "large",
		chartType: "line",
		getDataBySelection: true,
		widgetContent: {
			data: myExampleData.plotlylinedata,
			layout: myExampleData.plotlylinelayout,
			config: myExampleData.plotlylineconfig
		}
		}, */
		{
			widgetTitle : "Age group",
			widgetId : "id019",
			widgetType : "chart",
			widgetClick:"interact",
			graphType : "exploratory",
			widgetDimension : "normal",
			chartType : "bubble",
			linkedWidgets:["id020","id021"],
			enableRefresh : true,
			refreshCallBack : function(widgetId) {
				//Inside refresh callback
				//notification('info', 'Inside the refresh callback of '+widgetId+'!');
				var refreshedData = {
					data : myExampleData.plotlyRefreshBubbleData,
					layout : myExampleData.plotlyBubbleLayout,
					config : myExampleData.plotlybarconfig
				};
				return refreshedData;
			},
			widgetContent : {
				data : myExampleData.plotlyBubbleData,
				layout : myExampleData.plotlyBubbleLayout,
				config : myExampleData.plotlybarconfig
			}
		},{
			widgetTitle: "Revenue",
			widgetId: "id020",
			widgetType: "chart",
			widgetClick:"interact",
			graphType: "exploratory",
			widgetDimension: "normal",
			chartType: "bar",
			enableRefresh: true,
			refreshCallBack : function(widgetId){
			var refreshedData = {
					data: myExampleData.barGroupRefreshChartData,
					layout: myExampleData.barGroupChartLayout,
					config: myExampleData.plotlybarconfigDash4
			};
			return refreshedData;
			},
			widgetContent: {
				data: myExampleData.barGroupChartData,
				layout: myExampleData.barGroupChartLayout,
				config: myExampleData.plotlybarconfigDash4
		},
			widgetContentNew : {
				data : myExampleData.barGroupChartDataOriginal,
				layout : myExampleData.barGroupChartLayout,
				config : myExampleData.plotlybarconfigDash4
		},
			widgetContentNew1 : {
			data : myExampleData.barGroupChartData1,
		},
			widgetContentNew2 : {
			data : myExampleData.barGroupChartData2,

		}
	},
	{
		widgetTitle : "Items sold",
		widgetId : "id021",
		widgetType : "chart",
		widgetClick:"interact",
		graphType : "exploratory",
		widgetDimension : "large",
		chartType : "line",
		getDataBySelection : true,
		widgetContent : {
			data : myExampleData.plotlylinedata,
			layout : myExampleData.plotlylinelayout,
			config : myExampleData.plotlylineconfig
		},
		widgetContentNew : {
			data : myExampleData.plotlylinedata1,
		},
		widgetContentNew1 : {
			data : myExampleData.plotlylinedata2,
		},
		widgetContentNew2 : {
			data : myExampleData.plotlylinedata3,

		}
	}
	/* 	{
	 widgetTitle: "Items Sold Grid",
	 widgetId: "id010",
	 widgetType: "grid",
	 widgetContent:{
	 data:myExampleData.tableGridSource,
	 coloumns:myExampleData.GridColoumns,
	 width:myExampleData.GridWidth
	 }
	 } */
	/* {
		widgetTitle: "Table",
		widgetId: "id007",
		widgetType: "table",
		setJqueryStyle: true,
		widgetContent: {
			data: myExampleData.tableWidgetDataNw,
			coloumns: myExampleData.tableWidgetColoumnNw,
			buttons:myExampleData.tableWidgetButtonNw
		}
	}, */
	];
//console.log(dashboardJSON);
//basic initialization example mn.sDashboard
$("#cprDashboard").cprDashboard({
	dashboardData : dashboardJSON
});
//	$("#cprDashboard").cprDashboard("widgetcallCheck","sree");

//Toastr settings
toastr.options = {
	"closeButton" : false,
	"debug" : false,
	"newestOnTop" : false,
	"progressBar" : false,
	"positionClass" : "toast-top-right",
	"preventDuplicates" : false,
	"onclick" : null,
	"showDuration" : "200",
	"hideDuration" : "1000",
	"timeOut" : "5000",
	"extendedTimeOut" : "1000",
	"showEasing" : "swing",
	"hideEasing" : "linear",
	"showMethod" : "fadeIn",
	"hideMethod" : "fadeOut"
}
function notification(type, message) {
	if (type == 'success') {
		toastr.success(message,
				'<i>Success</i>');
	} else if (type == 'error') {
		toastr.error(message, 'Error');
	} else if (type == 'warning') {
		toastr.warning(message, 'Warning');
	} else {
		toastr.info(message, 'Information');
	}
}

//table row clicked event example
$("#cprDashboard").bind("cprdashboardrowclicked",function(e, data) {
	if (console) {
	console.log("table row clicked, for widget: "+ data.selectedWidgetId);
	}
});
//plot selected event example
$("#cprDashboard").bind("cprdashboardplotselected",function(e, data) {
	notification('info','A plot has been selected within a chart widget!');
	if (console) {
	console.log("chart range selected, for widget: "+ data.selectedWidgetId);
	}
});
//plot click event example
/* 	$("#cprDashboard").bind("cprdashboardplotclicked",function(e, data) {
	notification('info','chart clicked, for widget:'+ data.clickedWidgetId
		+ ' the data passed is'+ data.dataPoints+ '!');
	if (console) {
		console.log("chart clicked, for widget: "+ data.selectedWidgetId);
	}
}); */
//Drawboard 4
	$("#cprDashboard").bind("cprdashboardplotclicked",function(e, data) {
	/* 	 $.ajax({
			 type: "GET",
				url : 'widgetClick.html',
			 success : function(data) {
					//$('#result').html(data);
			}});   */

		 window.location.href='/Crmxs-Dashboard/widgetClick.html?clickedWidgetId='+data.clickedWidgetId+'&datapoints='+data.dataPoints;
   	//	notification('info', 'chart clicked, for widget:'+ data.clickedWidgetId +' the data passed is'+data.dataPoints+'!');
		if (console) {
			console.log("chart clicked, for widget: " + data.selectedWidgetId);
		}
	});

	//widget order changes event example
	$("#cprDashboard").bind("cprdashboardorderchanged",function(e, data) {
	/* 	if (console) {
		console.log("Sorted Array");
		console.log("+++++++++++++++++++++++++");
		console.log(data.sortedDefinitions);
		console.log("+++++++++++++++++++++++++");
	} */
	});

	$('#applyChanges').on('click', function (e) {
		e.preventDefault();
		var graphToThisChart = $("#changeChartForm input:checked" ).val();
		var numberOfChecks = $("#changeChartForm input:checked" ).size();
		if(numberOfChecks>1){
			swal("Only one graph can be selected!", "Un-check others!", "error");
		}
		var widgetID =$("#cgwidgetId").text();
		var changeChartObject ={
			chartTo: graphToThisChart,
			widgetId: widgetID
		};
		$("#cprDashboard").cprDashboard("changeChart",changeChartObject);
		$('#changeChartModal').modal('hide');
	});
	$("li.menuItem.themes").click(function(e) {
		e.preventDefault();
		$("#changeThemeModal").modal('show');
	});
	$("li.menuItem.filters").click(function(e) {
		e.preventDefault();
		//$("#changeThemeModal").modal('show');
		$("#filterModal").modal('show');
	});
	$('#applyThemes').on('click', function (e) {
		e.preventDefault();
		var themeSelected = $("#changeThemeForm input:checked" ).val();
		var numberOfChecks = $("#changeThemeForm input:checked" ).size();
		if(numberOfChecks>1){
			$('#changeThemeModal').modal('hide');
			swal("Only one theme can be selected!", "Un-check others!", "error");
			return;
		}
		$('#changeThemeModal').modal('hide');
		$("#cprDashboard").cprDashboard("changeTheme",themeSelected);
		if(typeof themeSelected != 'undefined'){
		  swal(themeSelected +" have been applied !", "", "success");
		}
	});
	//Handling on Change event
	/*	$("#changeGraphForm input:checkbox[value='bar']").change(function() {
		  //$(this).prop('checked');
		  $("#changeGraphForm input:checkbox[value='line']").bootstrapSwitch('state', false, true);
	})
	$("#changeGraphForm input:checkbox[value='line']").change(function() {
		  //$(this).prop('checked');
		  $("#changeGraphForm input:checkbox[value='bar']").bootstrapSwitch('state', false, true);
	}) */

	});
	});
</script>
</body>
</html>
