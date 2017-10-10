var myExampleData = {};
/**
 * C3 data
 */
/*myExampleData.c3bubbledata ={
 type: 'bubble',
 pairs: [
 { x: 'Name_0', y: 'Name_0', value: 10000 },
 { x: 'Name_0', y: 'Name_1', value: 20000 },
 { x: 'Name_0', y: 'Name_2', value: 39990 },
 //            { x: 'Name_1', y: 'Name_0', value: 5000 },
 { x: 'Name_1', y: 'Name_1', value: 6000 },
 { x: 'Name_1', y: 'Name_2', value: 50000 },
 { x: 'Name_2', y: 'Name_0', value: 1000 },
 { x: 'Name_2', y: 'Name_1', value: 2000 },
 { x: 'Name_2', y: 'Name_2', value: 3000 },
 ]
 };
 myExampleData.c3bubblegriddata ={
 x: {
 show: true
 },
 y: {
 show: true
 }
 };*/
myExampleData.c3bardata = {
	columns : [ [ 'data1', 30, 200, 100, 400, 150, 250 ],
			[ 'data2', 130, 100, 140, 200, 150, 50 ] ],
	type : 'bar'
};
myExampleData.c3bardatabar = {
	width : {
		ratio : 0.5
	// this makes bar width 50% of length between ticks
	}
// or
//width: 100 // this makes bar width 100px
};
myExampleData.c3piedata = {
	// iris data from R
	columns : [
			[ "setosa", 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0.1, 0.2,
					0.2, 0.1, 0.1, 0.2, 0.4, 0.4, 0.3, 0.3, 0.3, 0.2, 0.4, 0.2,
					0.5, 0.2, 0.2, 0.4, 0.2, 0.2, 0.2, 0.2, 0.4, 0.1, 0.2, 0.2,
					0.2, 0.2, 0.1, 0.2, 0.2, 0.3, 0.3, 0.2, 0.6, 0.4, 0.3, 0.2,
					0.2, 0.2, 0.2 ],
			[ "versicolor", 1.4, 1.5, 1.5, 1.3, 1.5, 1.3, 1.6, 1.0, 1.3, 1.4,
					1.0, 1.5, 1.0, 1.4, 1.3, 1.4, 1.5, 1.0, 1.5, 1.1, 1.8, 1.3,
					1.5, 1.2, 1.3, 1.4, 1.4, 1.7, 1.5, 1.0, 1.1, 1.0, 1.2, 1.6,
					1.5, 1.6, 1.5, 1.3, 1.3, 1.3, 1.2, 1.4, 1.2, 1.0, 1.3, 1.2,
					1.3, 1.3, 1.1, 1.3 ],
			[ "virginica", 2.5, 1.9, 2.1, 1.8, 2.2, 2.1, 1.7, 1.8, 1.8, 2.5,
					2.0, 1.9, 2.1, 2.0, 2.4, 2.3, 1.8, 2.2, 2.3, 1.5, 2.3, 2.0,
					2.0, 1.8, 2.1, 1.8, 1.8, 1.8, 2.1, 1.6, 1.9, 2.0, 2.2, 1.5,
					1.4, 2.3, 2.4, 1.8, 1.8, 2.1, 2.4, 2.3, 1.9, 2.3, 2.5, 2.3,
					1.9, 2.0, 2.3, 1.8 ], ],
	type : 'pie',
	onclick : function(d, i) {
		console.log("onclick", d, i);
	},
	onmouseover : function(d, i) {
		console.log("onmouseover", d, i);
	},
	onmouseout : function(d, i) {
		console.log("onmouseout", d, i);
	}
};
myExampleData.c3linedata = {
	columns : [ [ 'data1', 30, 200, 100, 400, 150, 250 ],
			[ 'data2', 50, 20, 10, 40, 15, 25 ] ]
};
/**
 * Plotly data
 */

//Pie chart sample data ends here
//PlotlysimpleLine
var trace1 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	name : 'Desperado',
	type : 'scatter'
};
var trace2 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48 ],
	name : 'Tiger',
	type : 'scatter'
};
myExampleData.plotlylinedata = [ trace1, trace2 ];
myExampleData.plotlylinelayout = {
	title : 'How old are they ?',
	xaxis : {
		title : 'Age',
		titlefont : {
			family : 'Courier New, monospace',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : 'Number of customers',
		titlefont : {
			family : 'Courier New, monospace',
			size : 18,
			color : '#7f7f7f'
		}
	},
	autosize : true
};

myExampleData.plotlylineconfig = {
	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false
};
//Bubble chart
var trace1 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	mode : 'markers',
	marker : {
		size : [ 40, 60, 80, 100 ]
	}
};

myExampleData.plotlyBubbleData = [ trace1 ];

myExampleData.plotlyBubbleLayout = {
	title : 'Age groups',	
	xaxis : {
		title : 'Age',
		titlefont : {
			family : 'Courier New, monospace',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : 'Number of customers',
		titlefont : {
			family : 'Courier New, monospace',
			size : 18,
			color : '#7f7f7f'
		}
	},
	showlegend : false,
	autosize : true
	/*height : 600,
	width : 600*/
};
//Bar Graph data
var trace1 = {
	x : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
			'Nov', 'Dec' ],
	y : [ 20, 14, 25, 16, 18, 22, 19, 15, 12, 16, 14, 17 ],
	type : 'bar',
	name : 'Primary Product',
	marker : {
		color : 'rgb(49,130,189)',
		opacity : 0.7
	}
};

var trace2 = {
	x : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
			'Nov', 'Dec' ],
	y : [ 19, 14, 22, 14, 16, 19, 15, 14, 10, 12, 12, 16 ],
	type : 'bar',
	name : 'Secondary Product',
	marker : {
		color : 'rgb(204,204,204)',
		opacity : 0.5
	}
};
myExampleData.plotlybardata = [ trace1, trace2 ];
myExampleData.plotlybarlayout = {
		title : 'Age groups',	
		xaxis : {
			title : 'Age',
			titlefont : {
				family : 'Courier New, monospace',
				size : 18,
				color : '#7f7f7f'
			}
		},
		yaxis : {
			title : 'Number of customers',
			titlefont : {
				family : 'Courier New, monospace',
				size : 18,
				color : '#7f7f7f'
			}
	},
	barmode : 'group',
	autosize : true
/*height: 225,
width: 475*/
};
myExampleData.plotlybarconfig = {
	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false
};
// Plotly data with bar stacked graph 
var trace1 = {
	x : [ 'Tiger', 'Desperado', 'Heiniken' ,'Kingfisher', 'brand1', 'brand2','brand3', 'brand4', 'brand5'],
	y : [ 20, 14, 23,25, 34, 36,78, 44, 43 ],
	name : 'SF Breweries',
	type : 'bar'
};

var trace2 = {
	x : [ 'Tiger', 'Desperado', 'Heiniken' ,'Kingfisher', 'brand1', 'brand2','brand3', 'brand4', 'brand5'],
	y : [ 12, 18, 39, 22, 28, 19, 18, 58, 49 ],
	name : 'LA Breweries',
	type : 'bar'
};

myExampleData.barGroupChartData = [ trace1, trace2 ];

myExampleData.barGroupChartLayout = {
		title : 'Revenue in US $',	
		xaxis : {
			title : 'Brands',
			titlefont : {
				family : 'Courier New, monospace',
				size : 18,
				color : '#7f7f7f'
			}
		},
		yaxis : {
			title : 'Million $',
			titlefont : {
				family : 'Courier New, monospace',
				size : 18,
				color : '#7f7f7f'
			}
		},
		barmode : 'group',
		autosize : true
};
//pie chart data
myExampleData.plotlypiedata = [ {
	values : [ 19, 26, 35, 10, 10 ],
	labels : [ 'Residential', 'Non-Residential', 'Utility', 'Cook', 'Fun' ],
	type : 'pie'
} ];

myExampleData.plotlypielayout = {
	autosize : true
/*height: 225,
  width: 475*/
};
myExampleData.plotlypieconfig = {

	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false
};

//polar area using chart.js
myExampleData.chartJsPolarConfig = {
	type : 'polarArea',
	data : {
		labels : [ "Africa", "Asia", "Europe", "Latin America", "North America" ],
		datasets : [ {
			label : "Population (millions)",
			backgroundColor : [ "#3e95cd", "#8e5ea2", "#3cba9f", "#e8c3b9",
					"#c45850" ],
			data : [ 2478, 5267, 734, 784, 433 ]
		} ]
	},
	options : {
		title : {
			display : true,
			text : 'Predicted world population (millions) in 2050'
		}
	}
};
//Flotr charts
//pie Chart sample data and options
myExampleData.pieChartData = [ {
	data : [ [ 0, 4 ] ],
	label : "Comedy"
}, {
	data : [ [ 0, 3 ] ],
	label : "Action"
}, {
	data : [ [ 0, 1.03 ] ],
	label : "Romance",
	pie : {
		explode : 50
	}
}, {
	data : [ [ 0, 3.5 ] ],
	label : "Drama"
} ];

myExampleData.pieChartOptions = {
	HtmlText : false,
	grid : {
		verticalLines : false,
		horizontalLines : false
	},
	xaxis : {
		showLabels : false
	},
	yaxis : {
		showLabels : false
	},
	pie : {
		show : true,
		explode : 6
	},
	mouse : {
		track : true
	},
	legend : {
		position : "se",
		backgroundColor : "#D2E8FF"
	}
};
//bar Chart sample data and options
myExampleData.constructBubbleChartData = function() {
	var d1 = [];
	var d2 = []
	var point
	var i;

	for (i = 0; i < 10; i++) {
		point = [ i, Math.ceil(Math.random() * 10),
				Math.ceil(Math.random() * 10) ];
		d1.push(point);

		point = [ i, Math.ceil(Math.random() * 10),
				Math.ceil(Math.random() * 10) ];
		d2.push(point);
	}
	return [ d1, d2 ];
};
myExampleData.bubbleChartData = myExampleData.constructBubbleChartData();

myExampleData.bubbleChartOptions = {
	bubbles : {
		show : true,
		baseRadius : 5
	},
	xaxis : {
		min : -4,
		max : 14
	},
	yaxis : {
		min : -4,
		max : 14
	},
	mouse : {
		track : true,
		relative : true
	}
};

//table Widget sample data and options
myExampleData.constructTableWidgetData = function() {
	return [ "Trident" + Math.ceil(Math.random() * 10),
			"IE" + Math.ceil(Math.random() * 10),
			"Win" + Math.ceil(Math.random() * 10) ]
};

myExampleData.tableWidgetData = {
	"aaData" : [ myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData() ],

	"aoColumns" : [ {
		"sTitle" : "Engine"
	}, {
		"sTitle" : "Browser"
	}, {
		"sTitle" : "Platform"
	} ],
	"iDisplayLength" : 25,
	"aLengthMenu" : [ [ 1, 25, 50, -1 ], [ 1, 25, 50, "All" ] ],
	"bPaginate" : true,
	"bAutoWidth" : false
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//table widget sample data ends here
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
