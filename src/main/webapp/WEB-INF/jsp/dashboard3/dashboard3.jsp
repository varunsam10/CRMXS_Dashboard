    <%@ page language="java" contenttype="text/html; charset=iso-8859-1"
    pageencoding="iso-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <!doctype html>
    <html lang="en">
    <!--<![endif]-->
    <!-- begin head -->

    <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="preview page of metronic admin theme #6 for statistics, charts, recent events and reports" name="description" />
    <meta content="" name="author" />
    <!-- begin layout first styles -->
    <link href="//fonts.googleapis.com/css?family=oswald:400,300,700" rel="stylesheet" type="text/css" />
    <!-- end layout first styles -->
    <!-- begin global mandatory styles -->
    <link href="http://fonts.googleapis.com/css?family=open+sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" type="text/css" />
    <!-- end global mandatory styles -->
    <!-- begin page level plugins -->
    <link href="assets/dash3/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/fullcalendar/fullcalendar.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/global/plugins/jqvmap/jqvmap/jqvmap.css" rel="stylesheet" type="text/css" />
    <!-- end page level plugins -->
    <!-- begin theme global styles -->
    <link href="assets/dash3/global/css/components-md.min.css" rel="stylesheet" id="style_components" type="text/css" />
    <link href="assets/dash3/global/css/plugins-md.min.css" rel="stylesheet" type="text/css" />
    <!-- end theme global styles -->
    <!-- begin theme layout styles -->
    <link href="assets/dash3/layouts/layout6/css/layout.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/dash3/layouts/layout6/css/custom.min.css" rel="stylesheet" type="text/css" />
    <!-- end theme layout styles -->
    <link rel="shortcut icon" href="favicon.ico" /> </head>
    <!-- end head -->

    <body class="page-md">
    <!-- begin header -->
    <header class="page-header">
    <nav class="navbar" role="navigation">
    <div class="container-fluid">
    <div class="havbar-header">
    <!-- begin logo -->
    <a id="index" class="navbar-brand" href="start.html">
    <img src="assets/dash3/layouts/layout6/img/logo.png" alt="logo"> </a>
    <!-- end logo -->
    <!-- begin topbar actions -->
    <div class="topbar-actions">
    <!-- doc: apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
    <form class="search-form" action="extra_search.html" method="get">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="search here" name="query">
    <span class="input-group-btn">
    <a href="javascript:;" class="btn md-skip submit">
    <i class="fa fa-search"></i>
    </a>
    </span>
    </div>
    </form>
    <!-- end header search box -->
    <!-- begin group notification -->
    <div class="btn-group-notification btn-group" id="header_notification_bar">
    <button type="button" class="btn md-skip dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <span class="badge">9</span>
    </button>
    <ul class="dropdown-menu-v2">
        <li class="external">
    <h3>
    <span class="bold">12 pending</span> notifications</h3>
    <a href="#">view all</a>
    </li>
    <li>
    <ul class="dropdown-menu-list scroller" style="height: 250px; padding: 0;" data-handle-color="#637283">
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-success md-skip">
    <i class="fa fa-plus"></i>
    </span> new user registered. </span>
    <span class="time">just now</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-danger md-skip">
    <i class="fa fa-bolt"></i>
    </span> server #12 overloaded. </span>
    <span class="time">3 mins</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-warning md-skip">
    <i class="fa fa-bell-o"></i>
    </span> server #2 not responding. </span>
    <span class="time">10 mins</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-info md-skip">
    <i class="fa fa-bullhorn"></i>
    </span> application error. </span>
    <span class="time">14 hrs</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-danger md-skip">
    <i class="fa fa-bolt"></i>
    </span> database overloaded 68%. </span>
    <span class="time">2 days</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-danger md-skip">
    <i class="fa fa-bolt"></i>
    </span> a user ip blocked. </span>
    <span class="time">3 days</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-warning md-skip">
    <i class="fa fa-bell-o"></i>
    </span> storage server #4 not responding dfdfdfd. </span>
    <span class="time">4 days</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-info md-skip">
    <i class="fa fa-bullhorn"></i>
    </span> system error. </span>
    <span class="time">5 days</span>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <span class="details">
    <span class="label label-sm label-icon label-danger md-skip">
    <i class="fa fa-bolt"></i>
    </span> storage server failed. </span>
    <span class="time">9 days</span>
    </a>
    </li>
    </ul>
    </li>
    </ul>
    </div>
    <!-- end group notification -->
    <!-- begin user profile -->
    <div class="btn-group-img btn-group">
    <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
    <img src="assets/dash3/layouts/layout6/img/avatar1.jpg" alt=""> </button>
    <ul class="dropdown-menu-v2" role="menu">
    <li>
    <a href="page_user_profile_1.html">
    <i class="icon-user"></i> my profile
    <span class="badge badge-danger">1</span>
    </a>
    </li>
    <li>
    <a href="app_calendar.html">
    <i class="icon-calendar"></i> my calendar </a>
    </li>
    <li>
    <a href="app_inbox.html">
    <i class="icon-envelope-open"></i> my inbox
    <span class="badge badge-danger"> 3 </span>
    </a>
    </li>
    <li>
    <a href="app_todo_2.html">
    <i class="icon-rocket"></i> my tasks
    <span class="badge badge-success"> 7 </span>
    </a>
    </li>
    <li class="divider"> </li>
    <li>
    <a href="page_user_lock_1.html">
    <i class="icon-lock"></i> lock screen </a>
    </li>
    <li>
    <a href="page_user_login_1.html">
    <i class="icon-key"></i> log out </a>
    </li>
    </ul>
    </div>
    <!-- end user profile -->
    </div>
    <!-- end topbar actions -->
    </div>
    </div>
    <!--/container-->
    </nav>
    </header>
    <!-- end header -->
    <!-- begin container -->
    <div class="container-fluid">
    <div class="page-content page-content-popup">
    <div class="page-content-fixed-header">
    <!-- begin breadcrumbs -->
    <ul class="page-breadcrumb">
    <li>
    <a href="#">dashboard</a>
    </li>
    </ul>
    <!-- end breadcrumbs -->
    <div class="content-header-menu">
    <!-- begin dropdown ajax menu -->
    <div class="dropdown-ajax-menu btn-group">
    <button type="button" class="btn dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
    <i class="fa fa-circle"></i>
    <i class="fa fa-circle"></i>
    <i class="fa fa-circle"></i>
    </button>
    <ul class="dropdown-menu-v2">
    <li>
    <a href="start.html">application</a>
    </li>
    <li>
    <a href="start.html">reports</a>
    </li>
    <li>
    <a href="start.html">templates</a>
    </li>
    <li>
    <a href="start.html">settings</a>
    </li>
    </ul>
    </div>
    <!-- end dropdown ajax menu -->
    <!-- begin menu toggler -->
    <button type="button" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
    <span class="toggle-icon">
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    </span>
    </button>
    <!-- end menu toggler -->
    </div>
    </div>
    <div class="page-sidebar-wrapper">
    <!-- begin sidebar -->
    <!-- doc: set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- doc: change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <div class="page-sidebar navbar-collapse collapse">
    <!-- begin sidebar menu -->
    <!-- doc: apply "page-sidebar-menu-light" class right after "page-sidebar-menu" to enable light sidebar menu style(without borders) -->
    <!-- doc: apply "page-sidebar-menu-hover-submenu" class right after "page-sidebar-menu" to enable hoverable(hover vs accordion) sub menu mode -->
    <!-- doc: apply "page-sidebar-menu-closed" class right after "page-sidebar-menu" to collapse("page-sidebar-closed" class must be applied to the body element) the sidebar sub menu mode -->
    <!-- doc: set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
    <!-- doc: set data-keep-expand="true" to keep the submenues expanded -->
    <!-- doc: set data-auto-speed="200" to adjust the sub menu slide up/down speed -->
    <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">

    <li class="heading">
    <h3 class="uppercase">features</h3>
    </li>

    <li class="nav-item  ">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-bar-chart"></i>
    <span class="title">charts</span>
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item  ">
    <a href="charts_amcharts.html" class="nav-link ">
    <span class="title">amchart</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="charts_flotcharts.html" class="nav-link ">
    <span class="title">flot charts</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="charts_flowchart.html" class="nav-link ">
    <span class="title">flow charts</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="charts_google.html" class="nav-link ">
    <span class="title">google charts</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="charts_echarts.html" class="nav-link ">
    <span class="title">echarts</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="charts_morris.html" class="nav-link ">
    <span class="title">morris charts</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="javascript:;" class="nav-link nav-toggle">
    <span class="title">highcharts</span>
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item ">
    <a href="charts_highcharts.html" class="nav-link "> highcharts </a>
    </li>
    <li class="nav-item ">
    <a href="charts_highstock.html" class="nav-link "> highstock </a>
    </li>
    <li class="nav-item ">
    <a href="charts_highmaps.html" class="nav-link "> highmaps </a>
    </li>
    </ul>
    </li>
    </ul>
    </li>
    <li class="nav-item  ">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-pointer"></i>
    <span class="title">maps</span>
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item  ">
    <a href="maps_google.html" class="nav-link ">
    <span class="title">google maps</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="maps_vector.html" class="nav-link ">
    <span class="title">vector maps</span>
    </a>
    </li>
    </ul>
    </li>
    <li class="heading">
    <h3 class="uppercase">layouts</h3>
    </li>
    <li class="nav-item  ">
    <a href="layout_blank_page.html" class="nav-link ">
    <i class="icon-layers"></i>
    <span class="title">blank page</span>
    </a>
    </li>
    <li class="heading">
    <h3 class="uppercase">pages</h3>
    </li>
    <li class="nav-item  ">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-social-dribbble"></i>
    <span class="title">general</span>
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item  ">
    <a href="page_general_about.html" class="nav-link ">
    <i class="icon-info"></i>
    <span class="title">about</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_contact.html" class="nav-link ">
    <i class="icon-call-end"></i>
    <span class="title">contact</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-notebook"></i>
    <span class="title">portfolio</span>
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item ">
    <a href="page_general_portfolio_1.html" class="nav-link "> portfolio 1 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_portfolio_2.html" class="nav-link "> portfolio 2 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_portfolio_3.html" class="nav-link "> portfolio 3 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_portfolio_4.html" class="nav-link "> portfolio 4 </a>
    </li>
    </ul>
    </li>
    <li class="nav-item  ">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-magnifier"></i>
    <span class="title">search</span>
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item ">
    <a href="page_general_search.html" class="nav-link "> search 1 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_search_2.html" class="nav-link "> search 2 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_search_3.html" class="nav-link "> search 3 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_search_4.html" class="nav-link "> search 4 </a>
    </li>
    <li class="nav-item ">
    <a href="page_general_search_5.html" class="nav-link "> search 5 </a>
    </li>
    </ul>
    </li>
    <li class="nav-item  ">
    <a href="page_general_pricing.html" class="nav-link ">
    <i class="icon-tag"></i>
    <span class="title">pricing</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_pricing_2.html" class="nav-link ">
    <i class="icon-tag"></i>
    <span class="title">pricing 2</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_faq.html" class="nav-link ">
    <i class="icon-wrench"></i>
    <span class="title">faq</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_blog.html" class="nav-link ">
    <i class="icon-pencil"></i>
    <span class="title">blog</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_blog_post.html" class="nav-link ">
    <i class="icon-note"></i>
    <span class="title">blog post</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_invoice.html" class="nav-link ">
    <i class="icon-envelope"></i>
    <span class="title">invoice</span>
    </a>
    </li>
    <li class="nav-item  ">
    <a href="page_general_invoice_2.html" class="nav-link ">
    <i class="icon-envelope"></i>
    <span class="title">invoice 2</span>
    </a>havbar-header
    </li>
    </ul>
    </li>
    <li class="nav-item">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-folder"></i>
    <span class="title">multi level menu</span>
    <span class="arrow "></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item">
    <a href="javascript:;" class="nav-link nav-toggle">
    <i class="icon-settings"></i> item 1
    <span class="arrow"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item">
    <a href="?p=dashboard-2" target="_blank" class="nav-link">
    <i class="icon-user"></i> arrow toggle
    <span class="arrow nav-toggle"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-power"></i> sample link 1</a>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-paper-plane"></i> sample link 1</a>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-star"></i> sample link 1</a>
    </li>
    </ul>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-camera"></i> sample link 1</a>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-link"></i> sample link 2</a>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-pointer"></i> sample link 3</a>
    </li>
    </ul>
    </li>
    <li class="nav-item">
    <a href="?p=dashboard-2" target="_blank" class="nav-link">
    <i class="icon-globe"></i> arrow toggle
    <span class="arrow nav-toggle"></span>
    </a>
    <ul class="sub-menu">
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-tag"></i> sample link 1</a>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-pencil"></i> sample link 1</a>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-graph"></i> sample link 1</a>
    </li>
    </ul>
    </li>
    <li class="nav-item">
    <a href="#" class="nav-link">
    <i class="icon-bar-chart"></i> item 3 </a>
    </li>
    </ul>
    </li>
    </ul>
    <!-- end sidebar menu -->
    </div>
    <!-- end sidebar -->
    </div>
    <div class="page-fixed-main-content">
    <!-- begin page base content -->
    <div class="row">
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption">
    <span class="caption-subject bold uppercase font-dark">revenue</span>
    <span class="caption-helper">distance stats...</span>
    </div>
    <div class="actions">
    <a class="btn btn-circle btn-icon-only btn-default" href="#">
    <i class="icon-cloud-upload"></i>
    </a>
    <a class="btn btn-circle btn-icon-only btn-default" href="#">
    <i class="icon-wrench"></i>
    </a>
    <a class="btn btn-circle btn-icon-only btn-default" href="#">
    <i class="icon-trash"></i>
    </a>
    <a class="btn btn-circle btn-icon-only btn-default fullscreen" href="#"> </a>
    </div>
    </div>
    <div class="portlet-body">
    <div id="dashboard_amchart_1" class="cssanimationchart"></div>
    </div>
    </div>
    </div>
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption ">
    <span class="caption-subject font-dark bold uppercase">finance</span>
    <span class="caption-helper">distance stats...</span>
    </div>
    <div class="actions">
    <a href="#" class="btn btn-circle green btn-outline btn-sm">
    <i class="fa fa-pencil"></i> export </a>
    <a href="#" class="btn btn-circle green btn-outline btn-sm">
    <i class="fa fa-print"></i> print </a>
    </div>
    </div>
    <div class="portlet-body">
    <div id="dashboard_amchart_3" class="cssanimationchart"></div>
    </div>
    </div>
    </div>
    </div>
    <div class="row">
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption">
    <i class="icon-cursor font-dark hide"></i>
    <span class="caption-subject font-dark bold uppercase">general stats</span>
    </div>
    <div class="actions">
    <a href="javascript:;" class="btn btn-sm btn-circle red easy-pie-chart-reload">
    <i class="fa fa-repeat"></i> reload </a>
    </div>
    </div>
    <div class="portlet-body">
    <div class="row">
    <div class="col-md-4">
    <div class="easy-pie-chart">
    <div class="number transactions" data-percent="55">
    <span>+55</span>% </div>
    <a class="title" href="javascript:;"> transactions
    <i class="icon-arrow-right"></i>
    </a>
    </div>
    </div>
    <div class="margin-bottom-10 visible-sm"> </div>
    <div class="col-md-4">
    <div class="easy-pie-chart">
    <div class="number visits" data-percent="85">
    <span>+85</span>% </div>
    <a class="title" href="javascript:;"> new visits
    <i class="icon-arrow-right"></i>
    </a>
    </div>
    </div>
    <div class="margin-bottom-10 visible-sm"> </div>
    <div class="col-md-4">
    <div class="easy-pie-chart">
    <div class="number bounce" data-percent="46">
    <span>-46</span>% </div>
    <a class="title" href="javascript:;"> bounce
    <i class="icon-arrow-right"></i>
    </a>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption">
    <i class="icon-equalizer font-dark hide"></i>
    <span class="caption-subject font-dark bold uppercase">server stats</span>
    <span class="caption-helper">monthly stats...</span>
    </div>
    <div class="tools">
    <a href="" class="collapse"> </a>
    <a href="#portlet-config" data-toggle="modal" class="config"> </a>
    <a href="" class="reload"> </a>
    <a href="" class="remove"> </a>
    </div>
    </div>
    <div class="portlet-body">
    <div class="row">
    <div class="col-md-4">
    <div class="sparkline-chart">
    <div class="number" id="sparkline_bar5"></div>
    <a class="title" href="javascript:;"> network
    <i class="icon-arrow-right"></i>
    </a>
    </div>
    </div>
    <div class="margin-bottom-10 visible-sm"> </div>
    <div class="col-md-4">
    <div class="sparkline-chart">
    <div class="number" id="sparkline_bar6"></div>
    <a class="title" href="javascript:;"> cpu load
    <i class="icon-arrow-right"></i>
    </a>
    </div>
    </div>
    <div class="margin-bottom-10 visible-sm"> </div>
    <div class="col-md-4">
    <div class="sparkline-chart">
    <div class="number" id="sparkline_line"></div>
    <a class="title" href="javascript:;"> load rate
    <i class="icon-arrow-right"></i>
    </a>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="row">
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption caption-md">
    <i class="icon-bar-chart font-dark hide"></i>
    <span class="caption-subject font-dark bold uppercase">member activity</span>
    <span class="caption-helper">weekly stats...</span>
    </div>
    <div class="actions">
    <div class="btn-group btn-group-devided" data-toggle="buttons">
    <label class="btn btn-transparent blue-oleo btn-no-border btn-outline btn-circle btn-sm active">
    <input type="radio" name="options" class="toggle" id="option1">today</label>
    <label class="btn btn-transparent blue-oleo btn-no-border btn-outline btn-circle btn-sm">
    <input type="radio" name="options" class="toggle" id="option2">week</label>
    <label class="btn btn-transparent blue-oleo btn-no-border btn-outline btn-circle btn-sm">
    <input type="radio" name="options" class="toggle" id="option2">month</label>
    </div>
    </div>
    </div>
    <div class="portlet-body">
    <div class="row number-stats margin-bottom-30">
    <div class="col-md-6 col-sm-6 col-xs-6">
    <div class="stat-left">
    <div class="stat-chart">
    <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
    <div id="sparkline_bar"></div>
    </div>
    <div class="stat-number">
    <div class="title"> total </div>
    <div class="number"> 2460 </div>
    </div>
    </div>
    </div>
    <div class="col-md-6 col-sm-6 col-xs-6">
    <div class="stat-right">
    <div class="stat-chart">
    <!-- do not line break "sparkline_bar" div. sparkline chart has an issue when the container div has line break -->
    <div id="sparkline_bar2"></div>
    </div>
    <div class="stat-number">
    <div class="title"> new </div>
    <div class="number"> 719 </div>
    </div>
    </div>
    </div>
    </div>
    <div class="table-scrollable table-scrollable-borderless">
    <table class="table table-hover table-light">
    <thead>
    <tr class="uppercase">
    <th colspan="2"> member </th>
    <th> earnings </th>
    <th> cases </th>
    <th> closed </th>
    <th> rate </th>
    </tr>
    </thead>
    <tr>
    <td class="fit">
    <img class="user-pic rounded" src="assets/dash3/pagesmedia/users/avatar4.jpg"> </td>
    <td>
    <a href="javascript:;" class="primary-link">brain</a>
    </td>
    <td> $345 </td>
    <td> 45 </td>
    <td> 124 </td>
    <td>
    <span class="bold theme-font">80%</span>
    </td>
    </tr>
    <tr>
    <td class="fit">
    <img class="user-pic rounded" src="assets/dash3/pagesmedia/users/avatar5.jpg"> </td>
    <td>
    <a href="javascript:;" class="primary-link">nick</a>
    </td>
    <td> $560 </td>
    <td> 12 </td>
    <td> 24 </td>
    <td>
    <span class="bold theme-font">67%</span>
    </td>
    </tr>
    <tr>
    <td class="fit">
    <img class="user-pic rounded" src="assets/dash3/pagesmedia/users/avatar6.jpg"> </td>
    <td>
    <a href="javascript:;" class="primary-link">tim</a>
    </td>
    <td> $1,345 </td>
    <td> 450 </td>
    <td> 46 </td>
    <td>
    <span class="bold theme-font">98%</span>
    </td>
    </tr>
    <tr>
    <td class="fit">
    <img class="user-pic rounded" src="assets/dash3/pagesmedia/users/avatar7.jpg"> </td>
    <td>
    <a href="javascript:;" class="primary-link">tom</a>
    </td>
    <td> $645 </td>
    <td> 50 </td>
    <td> 89 </td>
    <td>
    <span class="bold theme-font">58%</span>
    </td>
    </tr>
    </table>
    </div>
    </div>
    </div>
    </div>
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption caption-md">
    <i class="icon-bar-chart font-dark hide"></i>
    <span class="caption-subject font-dark bold uppercase">customer support</span>
    <span class="caption-helper">45 pending</span>
    </div>
    <div class="inputs">
    <div class="portlet-input input-inline input-small ">
    <div class="input-icon right">
    <i class="icon-magnifier"></i>
    <input type="text" class="form-control form-control-solid input-circle" placeholder="search..."> </div>
    </div>
    </div>
    </div>
    <div class="portlet-body">
    <div class="scroller" style="height: 338px;" data-always-visible="1" data-rail-visible1="0" data-handle-color="#d7dce2">
    <div class="general-item-list">
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar4.jpg">
    <a href="" class="item-name primary-link">nick larson</a>
    <span class="item-label">3 hrs ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-success"></span> open</span>
    </div>
    <div class="item-body"> lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
    </div>
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar3.jpg">
    <a href="" class="item-name primary-link">mark</a>
    <span class="item-label">5 hrs ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-warning"></span> pending</span>
    </div>
    <div class="item-body"> lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat tincidunt ut laoreet. </div>
    </div>
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar6.jpg">
    <a href="" class="item-name primary-link">nick larson</a>
    <span class="item-label">8 hrs ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-primary"></span> closed</span>
    </div>
    <div class="item-body"> lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh. </div>
    </div>
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar7.jpg">
    <a href="" class="item-name primary-link">nick larson</a>
    <span class="item-label">12 hrs ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-danger"></span> pending</span>
    </div>
    <div class="item-body"> consectetuer adipiscing elit lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
    </div>
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar9.jpg">
    <a href="" class="item-name primary-link">richard stone</a>
    <span class="item-label">2 days ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-danger"></span> open</span>
    </div>
    <div class="item-body"> lorem ipsum dolor sit amet, consectetuer adipiscing elit, ut laoreet dolore magna aliquam erat volutpat. </div>
    </div>
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar8.jpg">
    <a href="" class="item-name primary-link">dan</a>
    <span class="item-label">3 days ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-warning"></span> pending</span>
    </div>
    <div class="item-body"> lorem ipsum dolor sit amet, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
    </div>
    <div class="item">
    <div class="item-head">
    <div class="item-details">
    <img class="item-pic rounded" src="assets/dash3/pagesmedia/users/avatar2.jpg">
    <a href="" class="item-name primary-link">larry</a>
    <span class="item-label">4 hrs ago</span>
    </div>
    <span class="item-status">
    <span class="badge badge-empty badge-success"></span> open</span>
    </div>
    <div class="item-body"> lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>

    <div class="row">
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <!-- begin regional stats portlet-->
    <div class="portlet light bordered">
    <div class="portlet-title">
    <div class="caption">
    <i class="icon-share font-dark hide"></i>
    <span class="caption-subject font-dark bold uppercase">regional stats</span>
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
    <img src="../assets/global/img/loading.gif" alt="loading" /> </div>
    <div id="region_statistics_content" class="display-none">
    <div class="btn-toolbar margin-bottom-10">
    <div class="btn-group btn-group-circle" data-toggle="buttons">
    <a href="" class="btn grey-salsa btn-sm active"> users </a>
    <a href="" class="btn grey-salsa btn-sm"> orders </a>
    </div>
    <div class="btn-group pull-right">
    <a href="" class="btn btn-circle grey-salsa btn-sm dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true"> select region
    <span class="fa fa-angle-down"> </span>
    </a>
    <ul class="dropdown-menu pull-right">
    <li>
    <a href="javascript:;" id="regional_stat_world"> world </a>
    </li>
    <li>
    <a href="javascript:;" id="regional_stat_usa"> usa </a>
    </li>
    <li>
    <a href="javascript:;" id="regional_stat_europe"> europe </a>
    </li>
    <li>
    <a href="javascript:;" id="regional_stat_russia"> russia </a>
    </li>
    <li>
    <a href="javascript:;" id="regional_stat_germany"> germany </a>
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
    <!-- end regional stats portlet-->
    </div>
    <div class="col-lg-6 col-xs-12 col-sm-12">
    <!-- begin portlet-->
    <div class="portlet light bordered">
    <div class="portlet-title tabbable-line">
    <div class="caption">
    <i class="icon-globe font-dark hide"></i>
    <span class="caption-subject font-dark bold uppercase">feeds</span>
    </div>
    <ul class="nav nav-tabs">
    <li class="active">
    <a href="#tab_1_1" class="active" data-toggle="tab"> system </a>
    </li>
    <li>
    <a href="#tab_1_2" data-toggle="tab"> activities </a>
    </li>
    </ul>
    </div>
    <div class="portlet-body">
    <!--begin tabs-->
    <div class="tab-content">
    <div class="tab-pane active" id="tab_1_1">
    <div class="scroller" style="height: 339px;" data-always-visible="1" data-rail-visible="0">
    <ul class="feeds">
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 4 pending tasks.
    <span class="label label-sm label-info"> take action
    <i class="fa fa-share"></i>
    </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new version v1.4 just lunched! </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 20 mins </div>
    </div>
    </a>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-danger">
    <i class="fa fa-bolt"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> database server #12 overloaded. please fix the issue. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 24 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 30 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 40 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-warning">
    <i class="fa fa-plus"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 1.5 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> web server hardware needs to be upgraded.
    <span class="label label-sm label-default "> overdue </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 2 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 3 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-warning">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 5 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 18 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 21 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 22 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 21 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 22 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 21 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 22 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 21 hours </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bullhorn"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received. please take care of it. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 22 hours </div>
    </div>
    </li>
    </ul>
    </div>
    </div>
    <div class="tab-pane" id="tab_1_2">
    <div class="scroller" style="height: 290px;" data-always-visible="1" data-rail-visible1="1">
    <ul class="feeds">
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 10 mins </div>
    </div>
    </a>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-danger">
    <i class="fa fa-bolt"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> order #24dop4 has been rejected.
    <span class="label label-sm label-danger "> take action
    <i class="fa fa-share"></i>
    </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 24 mins </div>
    </div>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new user registered </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </a>
    </li>
    </ul>
    </div>
    </div>
    </div>
    <!--end tabs-->
    </div>
    </div>
    <!-- end portlet-->
    </div>
    </div>


    <!-- end page base content -->
    </div>
    <!-- begin footer -->
    <p class="copyright-v2"> 2016 &copy; cpr vision

    </p>
    <!-- begin quick sidebar toggler -->
    <button type="button" class="quick-sidebar-toggler" data-toggle="collapse">
    <span class="sr-only">toggle quick sidebar</span>
    <i class="icon-logout"></i>
    <div class="quick-sidebar-notification">
    <span class="badge badge-danger">7</span>
    </div>
    </button>
    <!-- end quick sidebar toggler -->
    <a href="#index" class="go2top">
    <i class="icon-arrow-up"></i>
    </a>
    <!-- end footer -->
    </div>
    </div>
    <!-- end container -->
    <!-- begin quick sidebar -->
    <a href="javascript:;" class="page-quick-sidebar-toggler">
    <i class="icon-login"></i>
    </a>
    <div class="page-quick-sidebar-wrapper" data-close-on-body-click="false">
    <div class="page-quick-sidebar">
    <ul class="nav nav-tabs">
    <li class="active">
    <a href="javascript:;" data-target="#quick_sidebar_tab_1" data-toggle="tab"> users
    <span class="badge badge-danger">2</span>
    </a>
    </li>
    <li>
    <a href="javascript:;" data-target="#quick_sidebar_tab_2" data-toggle="tab"> alerts
    <span class="badge badge-success">7</span>
    </a>
    </li>
    <li class="dropdown">
    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown"> more
    <i class="fa fa-angle-down"></i>
    </a>
    <ul class="dropdown-menu pull-right">
    <li>
    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
    <i class="icon-bell"></i> alerts </a>
    </li>
    <li>
    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
    <i class="icon-info"></i> notifications </a>
    </li>
    <li>
    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
    <i class="icon-speech"></i> activities </a>
    </li>
    <li class="divider"></li>
    <li>
    <a href="javascript:;" data-target="#quick_sidebar_tab_3" data-toggle="tab">
    <i class="icon-settings"></i> settings </a>
    </li>
    </ul>
    </li>
    </ul>
    <div class="tab-content">
    <div class="tab-pane active page-quick-sidebar-chat" id="quick_sidebar_tab_1">
    <div class="page-quick-sidebar-chat-users" data-rail-color="#ddd" data-wrapper-class="page-quick-sidebar-list">
    <h3 class="list-heading">staff</h3>
    <ul class="media-list list-items">
    <li class="media">
    <div class="media-status">
    <span class="badge badge-success">8</span>
    </div>
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar3.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">bob nilson</h4>
    <div class="media-heading-sub"> project manager </div>
    </div>
    </li>
    <li class="media">
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar1.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">nick larson</h4>
    <div class="media-heading-sub"> art director </div>
    </div>
    </li>
    <li class="media">
    <div class="media-status">
    <span class="badge badge-danger">3</span>
    </div>
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar4.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">deon hubert</h4>
    <div class="media-heading-sub"> cto </div>
    </div>
    </li>
    <li class="media">
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar2.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">ella wong</h4>
    <div class="media-heading-sub"> ceo </div>
    </div>
    </li>
    </ul>
    <h3 class="list-heading">customers</h3>
    <ul class="media-list list-items">
    <li class="media">
    <div class="media-status">
    <span class="badge badge-warning">2</span>
    </div>
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar6.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">lara kunis</h4>
    <div class="media-heading-sub"> ceo, loop inc </div>
    <div class="media-heading-small"> last seen 03:10 am </div>
    </div>
    </li>
    <li class="media">
    <div class="media-status">
    <span class="label label-sm label-success">new</span>
    </div>
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar7.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">ernie kyllonen</h4>
    <div class="media-heading-sub"> project manager,
    <br> smartbizz ptl </div>
    </div>
    </li>
    <li class="media">
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar8.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">lisa stone</h4>
    <div class="media-heading-sub"> cto, keort inc </div>
    <div class="media-heading-small"> last seen 13:10 pm </div>
    </div>
    </li>
    <li class="media">
    <div class="media-status">
    <span class="badge badge-success">7</span>
    </div>
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar9.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">deon portalatin</h4>
    <div class="media-heading-sub"> cfo, h&d ltd </div>
    </div>
    </li>
    <li class="media">
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar10.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">irina savikova</h4>
    <div class="media-heading-sub"> ceo, tizda motors inc </div>
    </div>
    </li>
    <li class="media">
    <div class="media-status">
    <span class="badge badge-danger">4</span>
    </div>
    <img class="media-object" src="assets/dash3/layouts/layout/img/avatar11.jpg" alt="...">
    <div class="media-body">
    <h4 class="media-heading">maria gomez</h4>
    <div class="media-heading-sub"> manager, infomatic inc </div>
    <div class="media-heading-small"> last seen 03:10 am </div>
    </div>
    </li>
    </ul>
    </div>
    <div class="page-quick-sidebar-item">
    <div class="page-quick-sidebar-chat-user">
    <div class="page-quick-sidebar-nav">
    <a href="javascript:;" class="page-quick-sidebar-back-to-list">
    <i class="icon-arrow-left"></i>back</a>
    </div>
    <div class="page-quick-sidebar-chat-user-messages">
    <div class="post out">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar3.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">bob nilson</a>
    <span class="datetime">20:15</span>
    <span class="body"> when could you send me the report ? </span>
    </div>
    </div>
    <div class="post in">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar2.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">ella wong</a>
    <span class="datetime">20:15</span>
    <span class="body"> its almost done. i will be sending it shortly </span>
    </div>
    </div>
    <div class="post out">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar3.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">bob nilson</a>
    <span class="datetime">20:15</span>
    <span class="body"> alright. thanks! :) </span>
    </div>
    </div>
    <div class="post in">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar2.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">ella wong</a>
    <span class="datetime">20:16</span>
    <span class="body"> you are most welcome. sorry for the delay. </span>
    </div>
    </div>
    <div class="post out">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar3.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">bob nilson</a>
    <span class="datetime">20:17</span>
    <span class="body"> no probs. just take your time :) </span>
    </div>
    </div>
    <div class="post in">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar2.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">ella wong</a>
    <span class="datetime">20:40</span>
    <span class="body"> alright. i just emailed it to you. </span>
    </div>
    </div>
    <div class="post out">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar3.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">bob nilson</a>
    <span class="datetime">20:17</span>
    <span class="body"> great! thanks. will check it right away. </span>
    </div>
    </div>
    <div class="post in">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar2.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">ella wong</a>
    <span class="datetime">20:40</span>
    <span class="body"> please let me know if you have any comment. </span>
    </div>
    </div>
    <div class="post out">
    <img class="avatar" alt="" src="assets/dash3/layouts/layout/img/avatar3.jpg" />
    <div class="message">
    <span class="arrow"></span>
    <a href="javascript:;" class="name">bob nilson</a>
    <span class="datetime">20:17</span>
    <span class="body"> sure. i will check and buzz you if anything needs to be corrected. </span>
    </div>
    </div>
    </div>
    <div class="page-quick-sidebar-chat-user-form">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="type a message here...">
    <div class="input-group-btn">
    <button type="button" class="btn green">
    <i class="icon-paper-clip"></i>
    </button>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <div class="tab-pane page-quick-sidebar-alerts" id="quick_sidebar_tab_2">
    <div class="page-quick-sidebar-alerts-list">
    <h3 class="list-heading">general</h3>
    <ul class="feeds list-items">
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-check"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 4 pending tasks.
    <span class="label label-sm label-warning "> take action
    <i class="fa fa-share"></i>
    </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-bar-chart-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> finance report for year 2013 has been released. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 20 mins </div>
    </div>
    </a>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-danger">
    <i class="fa fa-user"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 5 pending membership that requires a quick review. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 24 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-shopping-cart"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received with
    <span class="label label-sm label-success"> reference number: dr23923 </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 30 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-user"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 5 pending membership that requires a quick review. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 24 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> web server hardware needs to be upgraded.
    <span class="label label-sm label-warning"> overdue </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 2 hours </div>
    </div>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-briefcase"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> ipo report for year 2013 has been released. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 20 mins </div>
    </div>
    </a>
    </li>
    </ul>
    <h3 class="list-heading">system</h3>
    <ul class="feeds list-items">
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-check"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 4 pending tasks.
    <span class="label label-sm label-warning "> take action
    <i class="fa fa-share"></i>
    </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> just now </div>
    </div>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-danger">
    <i class="fa fa-bar-chart-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> finance report for year 2013 has been released. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 20 mins </div>
    </div>
    </a>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-default">
    <i class="fa fa-user"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 5 pending membership that requires a quick review. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 24 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-shopping-cart"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> new order received with
    <span class="label label-sm label-success"> reference number: dr23923 </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 30 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-success">
    <i class="fa fa-user"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> you have 5 pending membership that requires a quick review. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 24 mins </div>
    </div>
    </li>
    <li>
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-warning">
    <i class="fa fa-bell-o"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> web server hardware needs to be upgraded.
    <span class="label label-sm label-default "> overdue </span>
    </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 2 hours </div>
    </div>
    </li>
    <li>
    <a href="javascript:;">
    <div class="col1">
    <div class="cont">
    <div class="cont-col1">
    <div class="label label-sm label-info">
    <i class="fa fa-briefcase"></i>
    </div>
    </div>
    <div class="cont-col2">
    <div class="desc"> ipo report for year 2013 has been released. </div>
    </div>
    </div>
    </div>
    <div class="col2">
    <div class="date"> 20 mins </div>
    </div>
    </a>
    </li>
    </ul>
    </div>
    </div>
    <div class="tab-pane page-quick-sidebar-settings" id="quick_sidebar_tab_3">
    <div class="page-quick-sidebar-settings-list">
    <h3 class="list-heading">general settings</h3>
    <ul class="list-items borderless">
    <li> enable notifications
    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    <li> allow tracking
    <input type="checkbox" class="make-switch" data-size="small" data-on-color="info" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    <li> log errors
    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    <li> auto sumbit issues
    <input type="checkbox" class="make-switch" data-size="small" data-on-color="warning" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    <li> enable sms alerts
    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="success" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    </ul>
    <h3 class="list-heading">system settings</h3>
    <ul class="list-items borderless">
    <li> security level
    <select class="form-control input-inline input-sm input-small">
    <option value="1">normal</option>
    <option value="2" selected>medium</option>
    <option value="e">high</option>
    </select>
    </li>
    <li> failed email attempts
    <input class="form-control input-inline input-sm input-small" value="5" /> </li>
    <li> secondary smtp port
    <input class="form-control input-inline input-sm input-small" value="3560" /> </li>
    <li> notify on system error
    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="danger" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    <li> notify on smtp error
    <input type="checkbox" class="make-switch" checked data-size="small" data-on-color="warning" data-on-text="on" data-off-color="default" data-off-text="off"> </li>
    </ul>
    <div class="inner-content">
    <button class="btn btn-success">
    <i class="icon-settings"></i> save changes</button>
    </div>
    </div>
    </div>
    </div>
    </div>
    </div>
    <!-- end quick sidebar -->
    <!-- begin quick nav -->

    <div class="quick-nav-overlay"></div>
    <!-- end quick nav -->
    <!--[if lt ie 9]>
    <script src="assets/dash3/global/plugins/respond.min.js"></script>
    <script src="assets/dash3/global/plugins/excanvas.min.js"></script>
    <script src="assets/dash3/global/plugins/ie8.fix.min.js"></script>
    <![endif]-->
    <!-- begin core plugins -->
    <script src="assets/dash3/global/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/js.cookie.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
    <!-- end core plugins -->
    <!-- begin page level plugins -->
    <script src="assets/dash3/global/plugins/moment.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/morris/morris.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/morris/raphael-min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/counterup/jquery.waypoints.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/counterup/jquery.counterup.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/amcharts.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/serial.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/pie.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/radar.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/themes/light.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/themes/patterns.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amcharts/themes/chalk.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/ammap/ammap.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/ammap/maps/js/worldlow.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/amcharts/amstockcharts/amstock.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/fullcalendar/fullcalendar.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/horizontal-timeline/horizontal-timeline.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/flot/jquery.flot.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/flot/jquery.flot.resize.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/flot/jquery.flot.categories.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jquery-easypiechart/jquery.easypiechart.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jquery.sparkline.min.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/jquery.vmap.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js" type="text/javascript"></script>
    <script src="assets/dash3/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js" type="text/javascript"></script>
    <!-- end page level plugins -->
    <!-- begin theme global scripts -->
    <script src="assets/dash3/global/scripts/app.min.js" type="text/javascript"></script>
    <!-- end theme global scripts -->
    <!-- begin page level scripts -->
    <script src="assets/dash3/pages/scripts/dashboard.min.js" type="text/javascript"></script>
    <!-- end page level scripts -->
    <!-- begin theme layout scripts -->
    <script src="assets/dash3/layouts/layout6/scripts/layout.min.js" type="text/javascript"></script>
    <script src="assets/dash3/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>
    <script src="assets/dash3/layouts/global/scripts/quick-nav.min.js" type="text/javascript"></script>
    <!-- end theme layout scripts -->
    <script>
    $(document).ready(function()
    {
    $('#clickmewow').click(function()
    {
    $('#radio1003').attr('checked', 'checked');
    });
    })
    </script>
    </body>

    </html>