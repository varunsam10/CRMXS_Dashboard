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
<link href="assets/dash6/css/bootstrap-multiselect.css" rel="stylesheet" type="text/css">
<link href="assets/dash6/css/bootstrap-editable.css" rel="stylesheet" type="text/css">
<!-- CPR Dashboard Custom     -->
<!-- END HEAD -->
<script src="assets/dash6/js/jqueryNw/jquery-1.12.4.js"	type="text/javascript"></script>
<script src="assets/dash6/js/Dropdown/chosen.jquery.js"></script>
<script src="assets/dash6/js/Dropdown/chosen.proto.js"></script>
<script src="assets/dash6/js/Dropdown/dropdown.js" type="text/javascript"></script>
<script src="assets/dash6/js/Dropdown/bootstrap-multiselect.js" type="text/javascript"></script>
<script src="assets/dash6/js/bootstrap-notify.min.js" type="text/javascript"></script>
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
							<li><a href="javascript:;"> 
							<span class="details">
								<span class="label label-sm label-icon label-success md-skip">
											<i class="fa fa-plus"></i>
								</span> New user registered.
							</span> 
								<span class="time">just now</span>
							</a>
							</li>
							<li><a href="javascript:;"> <span class="details">
										<span class="label label-sm label-icon label-info md-skip">
											<i class="fa fa-bullhorn"></i>
									</span> Application error.
								</span> <span class="time">14 hrs</span>
								</a>
							</li>					
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
							<li>
								<a href="drawboard1.html"> 
								<i class="icon-user"></i> Widgets Main <span class="badge badge-danger">20</span>
								</a>
							</li>
							<li>
								<a href="drawboard2.html"> 
								<i class="icon-user"></i> Widgets Dynamic <span class="badge badge-danger">1</span>
								</a>
							</li>
							<li>
								<a href="drawboard3.html"> 
								<i	class="icon-calendar"></i> Details view <span class="badge badge-danger">3</span>
								</a>
							</li>
							<li>
								<a href="drawboard4.html"> 
									<i class="icon-envelope-open"></i> Widget interaction
									<span class="badge badge-danger"> 3 </span>
								</a>
							</li>
							<li>
								<a href="drawboard5.html"> 
									<i class="icon-rocket"></i>Customer location
									<span class="badge badge-success"> 2 </span>
								</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="drawboard6.html">
								<i	class="icon-lock"></i> Filters on Widget <span class="badge badge-success"> 1 </span>
								</a>
							</li>
							<!-- <li><a href="page_user_login_1.html"> <i
									class="icon-key"></i> Log Out
							</a></li> -->
							<li><a href="logout.html"> <i class="icon-key"></i> Log Out	</a>
							</li>
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
				<li><a href="#">Customer BI Insights</a></li>
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
	<ul id="cprDashboard"></ul>
	</div>
	<!-- BEGIN FOOTER -->
	<p class="copyright-v2">2017 &copy; CPR Vision</p>

	<a href="#index" class="go2top"> <i class="icon-arrow-up"></i>
	</a>
	<!-- END FOOTER -->
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
					<a href="javascript:;" class="btn grey-salsa btn-outline buttonFilterModal" data-dismiss="modal">Close</a>
					<button id="applyChanges" class="btn green buttonFilterModal">
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
						<div class="form-group  modal-group">
							<label class="control-label col-md-6">Theme 4</label>
							<div class="col-sm-3 col-md-3">
							<input type="checkbox"  class="make-switch modal-input" data-on-color="primary" data-off-color="danger" value="theme4" id="theme4"/>
							</div>
						</div>
						
					</form>
				</div>
				<div class="modal-footer">
					<a href="javascript:;" class="btn grey-salsa btn-outline buttonFilterModal" data-dismiss="modal">Close</a>
					<button id="applyThemes" class="btn green buttonFilterModal">
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
						<p><h4 class="modal-title">Apply filters on the widget- <label  for="fgwidgetId" id="fgwidgetId"></label></h4></p>
					</div>
					<div class="modal-body">
							 <!-- <div class="form-group"> -->
							 <div id="tabs">
							  <ul>
							  	<li></li>
							    <li><a href="#fragment-1"><span>Custom</span></a></li>
							    <li><a href="#fragment-2"><span>Years</span></a></li>
							    <li><a href="#fragment-3"><span>Quarters</span></a></li>
							    <li><a href="#fragment-4"><span>Months</span></a></li>
							    <li><a href="#fragment-5"><span>Weeks</span></a></li>
							    <li><a href="#fragment-6"><span>Days</span></a></li>
							    
							  </ul>
							  <div id="fragment-1">
							    
								<div class="col-md-8">
								<label style="padding-left:30px;padding-right:18px">From</label>
								
								<input class="date-picker" size="16" type="text" value="" id="from" name="from"/>
								</div>
								<hr>								
						
								<div class="col-md-8"><label style="padding-right:36px;padding-left:30px">To</label>
									
								<input class="date-picker" size="16" type="text" value="" id="to" name="to"/>
								</div>
								<hr>
								<hr>
							<div class="col-md-8">
							<label style="padding-left:30px">Country</label>
							
							<select id="country-select" multiple="multiple">					            
					            <option value="US">United States</option>
					            <option value="UK">United Kingdom</option>
					         	<option value="Afghanistan">Afghanistan</option>
					            <option value="Albania">Albania</option>					        
					            <option value="Bahrain">Bahrain</option>
					            <option value="Belgium">Belgium</option>
					            <option value="Chad">Chad</option>
					            <option value="Chile">Chile</option>
					            <option value="China">China</option>
					            <option value="Denmark">Denmark</option>
					            <option value="Finland">Finland</option>
					            <option value="France">France</option>
					            <option value="Guinea">Guinea</option>
					            <option value="Hungary">Hungary</option>
					            <option value="Iceland">Iceland</option>
					            <option value="India">India</option>
					            <option value="Israel">Israel</option>					
					            <option value="Qatar">Qatar</option>
					            <option value="Reunion">Reunion</option>
					            <option value="Spain">Spain</option>
					            <option value="Sri Lanka">Sri Lanka</option>
					            <option value="Sudan">Sudan</option>
					          </select>					       	
					       	</div>
					       	
							  </div>
							  <div id="fragment-2">
								<div class="col-md-9">
							     <div class="col-md-3"><input type="radio" name="year" value="Previous Year"> Prev. Year </div> 
							
								<div class="col-md-2"><input type="radio" name="year" value="Last" checked> Last </div>
								<input class="col-xs-2" id="last_years" type="number" name="years">years
								
								</div>	
								<hr>
								<div class="col-md-9">
							     <div class="col-md-3"><input type="radio" name="year" value="This Year"> This year </div> 
													
						     <!-- </div> -->
							<!-- <div class="form-group"> -->
							  </div>
							  </div>
							  <div id="fragment-3">						  
							  
							  <div class="col-md-9">
							     <div class="col-md-3"><input type="radio" name="quarter" value="Previous Quarter"> Prev. Quarter </div> 
							
								<div class="col-md-2"><input type="radio" name="quarter" value="Last" checked> Last </div>
								<input class="col-xs-2" class="form-control" type="number" name="quarters">quarters
								
								</div>	
								<hr>
								<div class="col-md-9">
							     <div class="col-md-3"><input type="radio" name="quarter" value="This Quarter"> This quarter </div> 						
								
								</div>									
					
							  </div>
							  <div id="fragment-4">
				
							  <div class="col-md-9">
							     <div class="col-md-3"><input type="radio" name="month" value="Previous Month"> Prev. Month </div> 
					
								<div class="col-md-2"><input type="radio" name="month" value="Last" checked> Last </div>
								<input class="col-xs-2" class="form-control" type="number" name="months">months
								
								</div>	
								<hr>
								<div class="col-md-9">
							     <div class="col-md-3"><input type="radio" name="month" value="This Month"> This month </div> 
					
								</div>									
							  </div>
							   <div id="fragment-5">
							  </div>
							   <div id="fragment-6">
							  </div>
							</div>
									
					</div>
									
					<div class="modal-footer">
						<button class="btn dark btn-outline buttonFilterModal" data-dismiss="modal" aria-hidden="true">Close</button>
						<button id="resetFilter" class="btn green buttonFilterModal" data-dismiss="modal">Reset</button>
						<button id="applyFilter" class="btn green buttonFilterModal" data-dismiss="modal">Apply Filter</button>
				   </div>
			</div>
			</div>
		</div>
		<div id="filterAllModal" class="modal fade" role="dialog" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
						<p><h4 class="modal-title">Apply filters all widgets</h4></p>
					</div>
					<div class="modal-body">
						<%-- <form action="#" class="form-horizontal"> --%>
							 <!-- <div class="form-group"> -->
								<div class="col-md-4" style="padding-left:150px">
								<label>From</label>
								</div>
								<div class="col-md-6">
								<input class="date-picker" size="16" type="text" value="" id="from2" name="from"/>
								</div>
								<hr>
						     <!-- </div> -->
							<!-- <div class="form-group"> -->
							<div class="col-md-4" style="padding-left:150px">
								<label>To</label>
							</div>
							<div class="col-md-6">
								<span><input class="date-picker" size="16" type="text" value="" id="to2" name="to"/></span>
							</div>							
							<hr>
							<hr>
							<!-- </div> -->  
							<!-- <div class="form-group"> -->							
							<label class="col-md-4" style="padding-left:150px">Select Country</label>
							<div class="col-md-8">				
							<select id="countries-select" multiple="multiple">					            
					            <option value="US">United States</option>
					            <option value="UK">United Kingdom</option>
					         	<option value="Afghanistan">Afghanistan</option>
					            <option value="Aland Islands">Aland Islands</option>
					            <option value="Albania">Albania</option>					        
					            <option value="Bahrain">Bahrain</option>
					            <option value="Chile">Chile</option>
					            <option value="China">China</option>
					            <option value="Fiji">Fiji</option>
					            <option value="Finland">Finland</option>
					            <option value="France">France</option>
					            <option value="Hungary">Hungary</option>
					            <option value="Iceland">Iceland</option>
					            <option value="India">India</option>
					            <option value="Israel">Israel</option>
					            <option value="Italy">Italy</option>
					            <option value="Jamaica">Jamaica</option>
					            <option value="Japan">Japan</option>
					            <option value="Nepal">Nepal</option>			
					          </select>					       	
					       	</div>
		
					</div>
					<hr>					
					<div class="modal-footer">
						<button class="btn dark btn-outline" data-dismiss="modal" aria-hidden="true">Close</button>
						<button id="applyFilter" class="btn green" data-dismiss="modal">Apply Filters</button>
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
				</div>
			</div>
		</div>
		</div>
		</div>
		</div>
		<!-- END PAGE BASE CONTENT -->
	</div>
	
	</div>	
<!-- END CONTAINER -->
 <style>
  .ui-tabs-vertical { width: 55em; }
  .ui-tabs-vertical .ui-tabs-nav { padding: .2em .1em .2em .2em; float: left; width: 12em; }
  .ui-tabs-vertical .ui-tabs-nav li { clear: left; width: 100%; border-bottom-width: 1px !important; border-right-width: 0 !important; margin: 0 -1px .2em 0; }
  .ui-tabs-vertical .ui-tabs-nav li a { display:block; }
  .ui-tabs-vertical .ui-tabs-nav li.ui-tabs-active { padding-bottom: 0; padding-right: .1em; border-right-width: 1px; }
  .ui-tabs-vertical .ui-tabs-panel { padding: 1em; float: center; width: 60em;}
  </style>
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
<!-- Datatable js files -->
<script src="assets/dash6/js/datatableNw/dataTables.buttons.min.js"></script>
<script src="assets/dash6/js/datatableNw/jszip.min.js"></script>
<script src="assets/dash6/js/datatableNw/pdfmake.min.js"></script>
<script src="assets/dash6/js/datatableNw/vfs_fonts.js"></script>
<script src="assets/dash6/js/datatableNw/buttons.print.min.js"></script>
<script src="assets/dash6/js/datatableNw/buttons.html5.min.js"></script>
<script src="assets/dash6/js/datatableNw/buttons.flash.min.js"></script>
<script src="assets/dash6/js/bootstrap-editable.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(function() {
	//Theme switcher plugin
	/* $("#switcher").themeswitcher({
		imgpath : "assets/dash6/css/images/",
		loadTheme : "Cupertino"
	});	 */	 
	 $('#country-select').multiselect({
		  includeSelectAllOption: true,
          enableFiltering: true,
          maxHeight: 200
		 
	 });	
	 $('#countries-select').multiselect({
		 includeSelectAllOption: true,
         enableFiltering: true,
         maxHeight: 200
	 });
	 
	var tabs = $("#tabs").tabs().addClass( "ui-tabs-vertical ui-helper-clearfix" ).removeClass("ui-widget-content");
	  $("#tabs li").removeClass( "ui-corner-top ui-widget-content" ).addClass( "ui-corner-left" );
	  $("fragment-1").removeClass("ui-widget-content");
	  tabs.find( ".ui-tabs-nav" ).sortable({
	      axis: "y",
	      stop: function() {
	        tabs.tabs( "refresh" );
	      }
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
	var dateFormat2 = "mm/dd/yy",
	      from = $("#from2").datepicker({
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
	      to = $( "#to2").datepicker({
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
		 $("#btnAddWidget").click(function() {
				$("#cprDashboard").cprDashboard("addWidget", {
					widgetTitle : "Sales Figures2",
					widgetId : "id040",
					widgetType : "chart",
					widgetClick:"disable",
					widgetEdit:"disable",
					graphType : "exploratory",
					widgetDimension : "normal",
					chartType : "doughnut",
					widgetContent : {
						data : myExampleData.donutWidgetData,
						layout : myExampleData.donutWidgetLayout,
						config : myExampleData.donutWidgetConfig
					}
				});
			});
		 $("#btnAddWidgetbubble").click(function() {
				$("#cprDashboard").cprDashboard("addWidget", {
					widgetTitle : "Revenue by region",
					widgetId : "id041",
					widgetType : "chart",
					widgetClick:"disable",
					widgetEdit:"disable",
					graphType : "exploratory",
					widgetDimension : "large",
					chartType : "bubble",
					widgetContent : {
						data : myExampleData.plotlybubble2data,
						layout : myExampleData.plotlybubble2layout,
						config : myExampleData.plotlybubble2config
					}
				});
			});
		 $("#btnAddWidgetarea").click(function() {
				$("#cprDashboard").cprDashboard("addWidget", {
					widgetTitle : "Hour Wise Redemptions",
					widgetId : "id042",
					widgetType : "chart",
					widgetClick:"disable",
					widgetEdit:"disable",
					graphType : "exploratory",
					widgetDimension : "normal",
					chartType : "area",
					widgetContent : {
						data : myExampleData.plotlyareadata,
						layout : myExampleData.plotlyarealayout,
						config : myExampleData.plotlyareaconfig
					}
				});
			});
			
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
				widgetEdit:"enable",
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
				widgetEdit:"enable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
			{
				widgetTitle : "Stats",
				widgetId : "id010",
				widgetType : "Text",
				widgetClick:"disable",
				widgetEdit:"disable",
				widgetDimension : "small",
				widgetContentText : "Redemptions : 4,636"

			},
			{
				widgetTitle : "Browser used",
				widgetId : "id011",
				widgetType : "table",
				widgetClick:"disable",
				widgetEdit:"disable",
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
				widgetEdit:"disable",
				widgetDimension : "small",
				widgetContentText : "231,800$"
			},
			{
				widgetTitle : "Where the customers are ",
				widgetId : "id013",
				widgetType : "map",
				widgetClick:"disable",
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
				widgetEdit:"disable",
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
			}, 
			{
			widgetTitle : "Age group",
			widgetId : "id019",
			widgetType : "chart",
			widgetClick:"interact",
			widgetEdit:"disable",
			graphType : "exploratory",
			widgetDimension : "normal",
			chartType : "bubble",
			linkedWidgets:["id020","w0008"],
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
			widgetEdit:"disable",
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
			widgetId : "w0008",
			widgetType : "chart",
			widgetClick:"interact",
			widgetEdit:"disable",
			graphType : "exploratory",
			widgetDimension : "large",
			chartType : "line",
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
		},
		{
			widgetTitle : "Revenue with filter",
			widgetId : "id031",
			widgetType : "chart",	
			widgetClick:"disable",
			widgetEdit:"disable",
			graphType : "exploratory",
			widgetDimension : "large",
			chartType : "line",
			widgetContent: {
				data : myExampleData.plotlylineFilterdata,
				layout : myExampleData.plotlylineFilterlayout,
				config : myExampleData.plotlylineconfig
			}
		},
		{
			widgetTitle : "Revenue with date range slider",
			widgetId : "id032",
			widgetType : "chart",	
			widgetClick:"disable",
			widgetEdit:"disable",
			graphType : "exploratory",
			widgetDimension : "large",
			chartType : "line",
			widgetContent: {
				data : myExampleData.plotlylineFilterdata,
				layout : myExampleData.plotlylineRangelayout,
				config : myExampleData.plotlylineconfig
			}
		}		
		];
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
			toastr.success(message,'<i>Success</i>');
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

	});
	$("#cprDashboard").bind("cprdashboardstatechanged",function(e, data) {
		if(data.triggerAction === "orderChanged"){	
			$.notify({				
				icon: 'glyphicon glyphicon-warning-sign',
				title: 'Widget Order Changed!',
				message: 'Would you like to save the current ordering ?',
				url: 'https://github.com/mouse0270/bootstrap-notify',
				target: '_blank'
			},{
				element: 'body',
				position: null,
				type: "info",
				allow_dismiss: true,
				newest_on_top: false,
				showProgressbar: false,
				placement: {
					from: "top",
					align: "center"
				},
				offset: 20,
				spacing: 10,
				z_index: 1031,
				delay: 5000,
				timer: 1000,
				url_target: '_blank',
				mouse_over: null,
				animate: {
					enter: 'animated fadeInDown',
					exit: 'animated fadeOutUp'
				},
				onShow: null,
				onShown: null,
				onClose: null,
				onClosed: null,
				icon_type: 'class',
				template: '<div data-notify="container" class="col-xs-12 col-sm-4 alert alert-{0}" role="alert">' +
				'<button type="button" aria-hidden="true" class="close" data-notify="dismiss">�</button>' +	
				'<div class="col-xs-10">' + 
					
					'<span data-notify="icon"></span> ' +
					'<span data-notify="title">{1}</span><br/> ' +
					'<span data-notify="message">{2} </span>' +
					'</div>' +
					'<div class="col-xs-2"><button type="button" aria-hidden="true" class="btn btn-primary btn-xs" id="saveOrder" data-notify="dismiss">Save</button></div>' +
				'</div>' 
			});			
			$("#saveOrder").click(function() {
				 swal("Widget Order Saved!"," ", "success");
			});	
			
		}else if(data.triggerAction === "widgetRemoved"){
			swal({
				  title: "Do you want to save the change?",
				  text: "The Changes made will not be saved!",
				  type: "warning",
				  showCancelButton: true,
				  confirmButtonClass: "btn-success",
				  confirmButtonText: "Save",
				  cancelButtonText: "Cancel",
				  closeOnConfirm: false,
				  closeOnCancel: false
				},
				function(isConfirm) {
				  if (isConfirm) {
				    swal("Widget "+data.affectedWidget.widgetTitle, "is deleted!", "success");
				  				
				  } else {
				    swal("Cancelled", "The deletion is not saved", "error");
						    
				  }
				});	
		}
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
		$("#filterAllModal").modal('show');
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
	$('#resetFilter').on('click', function (e) {
		e.preventDefault();
		var widgetId =$("#fgwidgetId").text();
		var fromDate = $("#from").val();
		var toDate = $("#to").val();
		var countriesSelected = $("#country-select").val();
		var filterData ={
				fromDate:fromDate,
				toDate:toDate,
				countries:countriesSelected,
				widgetId:widgetId
		};
		$("#cprDashboard").cprDashboard("resetFilter",widgetId);			
	});		
	$('#applyFilter').on('click', function (e) {
		e.preventDefault();
		var today = new Date();
		var dd = today.getDate();
		var mm = today.getMonth()+1;
		var yyyy = today.getFullYear();
		var widgetConfig;		
		var fromDate;
		var toDate;
		var countriesSelected;
		var val = $('#last_years').val();
		var from = yyyy - val - 1;
		var to = yyyy - 1
		var widgetId =$("#fgwidgetId").text();
		if(val != "")
		{	console.log(val)
			fromDate = mm+'/'+dd+'/'+from
			toDate = mm+'/'+dd+'/'+to
			countriesSelected = ["US","UK","India"]
			console.log(fromDate);
			console.log(toDate);
		}
		else
		{	console.log("here")
			fromDate = $("#from").val();
			toDate = $("#to").val();
			countriesSelected = $("#country-select").val();			
		}		
		var filterData ={
				fromDate:fromDate,
				toDate:toDate,
				countries:countriesSelected,
				widgetId:widgetId
		};
		$.ajax({
         type: 'POST',
         contentType : 'application/json',
         dataType: 'json',
   		 url : 'applyFilters.html',
   		 data: JSON.stringify(filterData),
   		 cache: false,        
		 timeout : 100000,
         success : function(data) {
          	 widgetConfig = data;
           	 $("#cprDashboard").cprDashboard("applyFilter",widgetConfig,widgetId);
       	 	}
         });	
		});	

	});
	});
</script>
</body>
</html>
