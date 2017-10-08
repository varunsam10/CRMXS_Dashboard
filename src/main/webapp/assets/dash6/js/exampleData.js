var myExampleData = {};

//pie Chart sample data and options
myExampleData.pieChartData = [{
	data : [[0, 4]],
	label : "Comedy"
}, {
	data : [[0, 3]],
	label : "Action"
}, {
	data : [[0, 1.03]],
	label : "Romance",
	pie : {
		explode : 50
	}
}, {
	data : [[0, 3.5]],
	label : "Drama"
}];

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
myExampleData.c3bardata= {
    columns: [
        ['data1', 30, 200, 100, 400, 150, 250],
        ['data2', 130, 100, 140, 200, 150, 50]
    ],
    type: 'bar'
};
myExampleData.c3bardatabar= {
    width: {
        ratio: 0.5 // this makes bar width 50% of length between ticks
    }
    // or
    //width: 100 // this makes bar width 100px
};
myExampleData.c3piedata={
    // iris data from R
    columns: [
    	  ["setosa", 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0.1, 0.2, 0.2, 0.1, 0.1, 0.2, 0.4, 0.4, 0.3, 0.3, 0.3, 0.2, 0.4, 0.2, 0.5, 0.2, 0.2, 0.4, 0.2, 0.2, 0.2, 0.2, 0.4, 0.1, 0.2, 0.2, 0.2, 0.2, 0.1, 0.2, 0.2, 0.3, 0.3, 0.2, 0.6, 0.4, 0.3, 0.2, 0.2, 0.2, 0.2],
          ["versicolor", 1.4, 1.5, 1.5, 1.3, 1.5, 1.3, 1.6, 1.0, 1.3, 1.4, 1.0, 1.5, 1.0, 1.4, 1.3, 1.4, 1.5, 1.0, 1.5, 1.1, 1.8, 1.3, 1.5, 1.2, 1.3, 1.4, 1.4, 1.7, 1.5, 1.0, 1.1, 1.0, 1.2, 1.6, 1.5, 1.6, 1.5, 1.3, 1.3, 1.3, 1.2, 1.4, 1.2, 1.0, 1.3, 1.2, 1.3, 1.3, 1.1, 1.3],
          ["virginica", 2.5, 1.9, 2.1, 1.8, 2.2, 2.1, 1.7, 1.8, 1.8, 2.5, 2.0, 1.9, 2.1, 2.0, 2.4, 2.3, 1.8, 2.2, 2.3, 1.5, 2.3, 2.0, 2.0, 1.8, 2.1, 1.8, 1.8, 1.8, 2.1, 1.6, 1.9, 2.0, 2.2, 1.5, 1.4, 2.3, 2.4, 1.8, 1.8, 2.1, 2.4, 2.3, 1.9, 2.3, 2.5, 2.3, 1.9, 2.0, 2.3, 1.8],
    ],
    type : 'pie',
    onclick: function (d, i) { console.log("onclick", d, i); },
    onmouseover: function (d, i) { console.log("onmouseover", d, i); },
    onmouseout: function (d, i) { console.log("onmouseout", d, i); }
};
myExampleData.c3linedata ={
        columns: [
            ['data1', 30, 200, 100, 400, 150, 250],
            ['data2', 50, 20, 10, 40, 15, 25]
        ]
    };
/**
 * Plotly data
 */

//Pie chart sample data ends here

//PlotlysimpleLine
var trace1 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8],
		  y: [0, 3, 5, 3, 6, 4, 5, 3, 1],
		  name: 'Name of Trace 1',
		  type: 'scatter'
		};
		var trace2 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8],
		  y: [1, 0, 3, 2, 5, 4, 7, 6, 8],
		  name: 'Name of Trace 2',
		  type: 'scatter'
		};
		myExampleData.plotlylinedata = [trace1, trace2];
		myExampleData.plotlylinelayout = {
				  title: 'Plot Title',
				  xaxis: {
				    title: 'x Axis',
				    titlefont: {
				      family: 'Courier New, monospace',
				      size: 18,
				      color: '#7f7f7f'
				    }
				  },
				  yaxis: {
				    title: 'y Axis',
				    titlefont: {
				      family: 'Courier New, monospace',
				      size: 18,
				      color: '#7f7f7f'
				    }
				  }
				};
		myExampleData.plotlylineconfig = {
				   modeBarButtonsToRemove: ['sendDataToCloud'],
				   displaylogo: false
			};
//Plotlyline

var trace1 = {
		  x: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], 
		  y: [20, 14, 25, 16, 18, 22, 19, 15, 12, 16, 14, 17],
		  type: 'bar',
		  name: 'Primary Product',
		  marker: {
		    color: 'rgb(49,130,189)',
		    opacity: 0.7
		  }
		};

		var trace2 = {
		  x: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
		  y: [19, 14, 22, 14, 16, 19, 15, 14, 10, 12, 12, 16],
		  type: 'bar',
		  name: 'Secondary Product',
		  marker: {
		    color: 'rgb(204,204,204)',
		    opacity: 0.5
		  }
		};

		myExampleData.plotlybardata = [trace1, trace2];
		
		myExampleData.plotlybarlayout = {
				  xaxis: {
				    tickangle: -45
				  },
				  barmode: 'group',
				  autosize: true
				  /*height: 225,
				  width: 475*/
				};
		
		myExampleData.plotlybarconfig = {
				   modeBarButtonsToRemove: ['sendDataToCloud'],
				   displaylogo: false
			};
		
		
		myExampleData.plotlypiedata = [{
			  values: [19, 26, 35,10,10],
			  labels: ['Residential', 'Non-Residential', 'Utility','Cook','Fun'],
			  type: 'pie'
			}];
		
		myExampleData.plotlypielayout = {
				autosize: true
				/*height: 225,
				  width: 475*/	
		};
		
		myExampleData.plotlypieconfig = {
				
				modeBarButtonsToRemove: ['sendDataToCloud'],
				   displaylogo: false
		};
		
/**
 * Plotly data with bar stacked graph 
 */
		
var trace1 = {
				  x: ['Tiger', 'Desperado', 'Heiniken'],
				  y: [20, 14, 23],
				  name: 'SF Breweries',
				  type: 'bar'
				};

var trace2 = {
				  x: ['Tiger', 'Desperado', 'Heiniken'],
				  y: [12, 18, 29],
				  name: 'LA Breweries',
				  type: 'bar'
				};

myExampleData.barGroupChartData = [trace1, trace2];

myExampleData.barGroupChartLayout = {barmode: 'group'};
//polar area using chart.js
		
myExampleData.chartJsPolarConfig = {
	    type: 'polarArea',
	    data: {
	      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"],
	      datasets: [
	        {
	          label: "Population (millions)",
	          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"],
	          data: [2478,5267,734,784,433]
	        }
	      ]
	    },
	    options: {
	      title: {
	        display: true,
	        text: 'Predicted world population (millions) in 2050'
	      }
	    }
	};

//bar Chart sample data and options

myExampleData.constructBubbleChartData = function() {
	var d1 = [];
	var d2 = []
	var point
	var i;

	for ( i = 0; i < 10; i++) {
		point = [i, Math.ceil(Math.random() * 10), Math.ceil(Math.random() * 10)];
		d1.push(point);

		point = [i, Math.ceil(Math.random() * 10), Math.ceil(Math.random() * 10)];
		d2.push(point);
	} 
	return [d1, d2];
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

//bar chart sample data ends here

//bar Chart sample data and options

myExampleData.constructBarChartData = function() {
	var d1 = [];
	var d2 = []
	var point
	var i;
	for ( i = 0; i < 4; i++) {
		point = [Math.ceil(Math.random() * 10), i];
		d1.push(point);
		point = [Math.ceil(Math.random() * 10), i + 0.5];

		d2.push(point);
	}
	return [d1, d2];
};
myExampleData.barChartData = myExampleData.constructBarChartData();

myExampleData.barChartOptions = {
	bars : {
		show : true,
		horizontal : true,
		shadowSize : 0,
		barWidth : 0.5
	},
	mouse : {
		track : true,
		relative : true
	},
	yaxis : {
		min : 0,
		autoscaleMargin : 1
	}
};

//bar chart sample data ends here

//line Chart sample data and options

myExampleData.constructLineChartData = function() {
	var d1 = [[0, 3], [4, 8], [8, 5], [9, 13]];
	var d2 = [];
	var i;

	for ( i = 0; i < 14; i += 0.5) {
		d2.push([i, Math.sin(i)]);
	}
	return [d1, d2];
};
myExampleData.lineChartData = myExampleData.constructLineChartData();

myExampleData.lineChartOptions = {
	xaxis : {
		minorTickFreq : 4
	},
	grid : {
		minorVerticalLines : true
	},
	selection : {
		mode : "x",
		fps : 30
	}
};

//line chart sample data ends here

//table Widget sample data and options

myExampleData.constructTableWidgetData = function(){
	return ["Trident"+Math.ceil(Math.random() * 10), "IE" + Math.ceil(Math.random() * 10), "Win"+Math.ceil(Math.random() * 10)]
};

myExampleData.tableWidgetData = {
	"aaData" : [myExampleData.constructTableWidgetData(), 
	myExampleData.constructTableWidgetData(), 
	myExampleData.constructTableWidgetData(), 
	myExampleData.constructTableWidgetData(),
	myExampleData.constructTableWidgetData(),
	myExampleData.constructTableWidgetData(), 
	myExampleData.constructTableWidgetData()
	],

	"aoColumns" : [{
		"sTitle" : "Engine"
	}, {
		"sTitle" : "Browser"
	}, {
		"sTitle" : "Platform"
	}],
	"iDisplayLength": 25,
	"aLengthMenu": [[1, 25, 50, -1], [1, 25, 50, "All"]],
	"bPaginate": true,
	"bAutoWidth": false
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//table widget sample data ends here
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
