A simple & light weight dashboard and widgets framework developed in Javascript and JQuery

##Description
cprDashboard is a jQuery plugin created that converts an array of objects into a dashboard. Each object in the array would be rendered as a dashboard widget that can be rearranged by dragging around.
cprDashboard has built in support for rendering data table’s and D3 based charts. It also has support to listen for events such as table row click, chart data click and data selection built-in.
Cpr Dashboard also support maps which are an extension of the amCharts graphing framework.

##Dependencies
•	Jquery version 1.12.4.
•	Jquery UI 
•	Datatables (required for table widgets)
•	D3 charts (required for charting widgets)
•	Plotly charts (required for charting widgets abstraction over D3)
•	C3 charts (required for charting widgets abstraction over D3)
•	AmCharts (required for landing page and maps widgets)
•	SWAL (Alerts based on bootstrap)
These are the core dependencies of the JavaScript engine.
All other JS frameworks used are opensource and quite a large number to list, these can be shared with the JSP files and referred from there descriptions.

##Demo

You can deploy the application to tomcat and browse the 
application in the following URL. http://localhost:8080/Crmxs-Dashboard

The application is currently deployed to the AWS cloud.
Access the application at: http://ec2-18-218-153-216.us-east-2.compute.amazonaws.com:8080/Crmxs-Dashboard/login.html
How to set up JavaScript engine 
To set up the basic dashboard engine:
•	include the dependent libraries and css files.
<!-- load the dashboard css -->
<link href="assets/dash6/css/cprDashboard.css" rel="stylesheet">
<!-- load CPR dashboard widget library -->
<script src="assets/dash6/js/jquery-cprDashboard.js" type="text/javascript"></script>

•	Create a ul dom element to render the dashboard
<ul id="cprDashboard"></ul>


•	Sample Array of widget definitions expected 
Var dashboardJSON = 
[{				widgetTitle: "Age group",
				widgetId: "id016",
				widgetClick:"details",
				widgetEdit:"disable",
				widgetType: "chart",
				graphType: "exploratory",
				widgetDimension: "normal",
linkedWidgets: ["id020","w0008"],
				chartType: "bubble",
				enableRefresh: true,
				widgetContent: {
					data: myExampleData.plotlyBubbleData,
					layout: myExampleData.plotlyBubbleLayout,
					config: myExampleData.plotlybarconfig
				}
}];

•	call the cprDashboard plugin on the ul and pass in the widgetDefinitions by setting the dashboardData options
$("#cprDashboard"). cprDashboard({
	dashboardData: dashboardJSON
});

Widget Definitions 
•	widgetTitle
Enter the name of the widget title you want to see in the dashboard.
NOTE 
This can be edited by entering the edit mode on the widgets.
•	widgetId
This is a unique id for each widget in the same dashboard.
•	widgetClick
There are three options available 
“details”: This enables the navigation to the details view page 
“interact”: This enables to interact with the widgets defined in the linked Widgets property
“disable”: This is to disable the click action on the widget
•	widgetEdit
“disable”: Disable the edit mode on the widget
“enable”: Enable the edit mode on the widget
•	widgetType
“chart”: enable the chart type of widgets, all the widgets to display graphs should choose this option
“Text”: enable the Text type of widgets
“table”: enable the table type of widgets
“map”: enable the map type of widgets

•	graphType
“exploratory”: This enables the graphs with zoom and exploring dataset options 
“normal”: This enables the graphs with normal legends and tooltips on graphs 

Please note that for now the Java interface only supports the exploratory graphs.
NOTE 
Both these options are based on D3 graphs  
•	widgetDimension
“small”: Choose this for smaller dimension widgets usually used for text 
“medium”: Choose this for widgets half the dashboard display widths 
“large”: Choose this for the full-size dashboard widgets 
•	linkedWidgets
Give the ids of linked widgets to the current widget. This will work only if the widgetClick property is set to “interact”.
•	chartType
Options available are 
“column”
“barline”
“pie”
“doughnut”
“area”
“bubble”
“bar”
“line”
NOTE 
All these options expect the widgetType to be “chart”



•	enableRefresh
Set this to true to enable the refresh icon, by default this is treated as false.
•	widgetContent 
This is the central object to pass data to the widget, this object passes the config data and layout properties if the graphType is “exploratory”.
NOTE 
This object is different in case the graphType is “normal”
As of now the normal option is not used as all graphs are expected to be exploratory.
