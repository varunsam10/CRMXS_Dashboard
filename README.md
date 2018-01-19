# Crmxs-Dashboard
CRMXS 
Installation instructions 

>>Skip tests for now as the testing process is still in progress

A simple & light weight dashboard framework in Javascript and JQuery
##Description
cprDashboard is a jQuery plugin that converts an array of objects into a dashboard. Each object in the array would be rendered as a dashboard widget that can be rearranged by dragging around.
cprDashboard has built in support for rendering data table’s and D3 based charts. It also has support to listen for events such as table row click, chart data click and data selection built-in.
Cpr Dashboard also support maps which are an extension of the amCharts graphing framework.


##Demo
You can deploy the application to tomcat and browse the application in the following url


Access the application at: http://ec2-18-218-153-216.us-east-2.compute.amazonaws.com:8080/Crmxs-Dashboard/
##Dependencies
cprDashboard depends on the following libraries
•	Jquery
•	Jquery UI
•	Bootstrap plugins
•	Datatables (required for table widgets)
•	Plotly charts (required for charting widgets)
•	C3 charts (required for charting widgets)
•	amCharts map (required for map widgets)
•	D3 charts (required for charting widgets)
•	Bootstrap based alerts and toastr 

How to set up JavaScript engine 
To set up a basic dashboard engine:
•	include the dependent libraries and css files.
<!--   CPR Dashboard    Custom     -->
<script src="assets/dash6/js/jquery/jquery-ui-1.12.1.min.js" type="text/javascript"></script>
<script src="assets/dash6/js/plotly-latest.min.js"></script>
<script src="assets/dash6/js/c3/c3.min.js"></script>
<!-- amcharts map -->
<script src="assets/dash6/js/amchartsMap/ammap.js" type="text/javascript"></script>
<script src="assets/dash6/js/amchartsMap/light.js" type="text/javascript"></script>
<script src="assets/dash6/js/amchartsMap/worldLow.js" type="text/javascript"></script>
<script src="assets/dash6/js/amchartsMap/usaLow.js" type="text/javascript"></script>
<script src="assets/dash6/js/themeswitcher/jquery.themeswitcher.min.js" type="text/javascript"></script>
<!-- load CPR dashboard widget library -->
<script src="assets/dash6/js/jquery-cprDashboard.js" type="text/javascript"></script>
<script src="assets/dash6/js/exampleData.js" type="text/javascript"></script>
<script src="assets/dash6/js/datatableNw/jquery.dataTables.min.js"></script>

•	Create a ul dom element to render the dashboard
<ul id="cprDashboard"></ul>

•	Define an Array of widget definitions
Var dashboardJSON = 
[{		widgetTitle : "Day Wise",    // Widget Title given by the user 
		widgetId : "id001",          // Widget Id this is unique to each widget   
		widgetType : "chart",	   // The widget type
		widgetClick:"disable",       // Widget Click state 
		widgetEdit:"enable",         // Widget Edit mode 
		graphType: "exploratory",   // Widget is in D3 graph mode 
		widgetDimension: "normal",  //Widget Size 
		chartType: "column", 	  //Widget chart type
		widgetContent : {
			data : myExampleData.plotlycolumndata, 
			layout : myExampleData.plotlycolumnlayout,
			config : myExampleData.plotlycolumnconfig
		}
}];

•	call the cprDashboard plugin on the ul and pass in the widgetDefinitions by setting the dashboardData options

$("#cprDashboard"). cprDashboard({
	dashboardData: dashboardJSON
});
