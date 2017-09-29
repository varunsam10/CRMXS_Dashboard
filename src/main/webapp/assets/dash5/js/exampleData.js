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


/*
 *Plotly data  
 */
var xData = [
	  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
	  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
	  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013],
	  [2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2013]
	];

	var yData = [
	  [74, 82, 80, 74, 73, 72, 74, 70, 70, 66, 66, 69],
	  [45, 42, 50, 46, 36, 36, 34, 35, 32, 31, 31, 28],
	  [13, 14, 20, 24, 20, 24, 24, 40, 35, 41, 43, 50],
	  [18, 21, 18, 21, 16, 14, 13, 18, 17, 16, 19, 23]
	];

	var colors = ['rgba(67,67,67,1)', 'rgba(115,115,115,1)', 'rgba(49,130,189, 1)',
	  'rgba(189,189,189,1)'
	];

	var lineSize = [2, 2, 4, 2];

	var labels = ['Television', 'Newspaper', 'Internet', 'Radio'];

myExampleData.plotlylinedata = [];

	for ( var i = 0 ; i < xData.length ; i++ ) {
	  var result = {
	    x: xData[i],
	    y: yData[i],
	    type: 'scatter',
	    mode: 'lines',
	    line: {
	      color: colors[i],
	      width: lineSize[i]
	    }
	  };
	  var result2 = {
	    x: [xData[i][0], xData[i][11]],
	    y: [yData[i][0], yData[i][11]],
	    type: 'scatter',
	    mode: 'markers',
	    marker: {
	      color: colors[i],
	      size: 12
	    }
	  };
	  myExampleData.plotlylinedata.push(result, result2);
	}

	

myExampleData.linelayout = {
  	  showlegend: false,
  	  /*width: 475,
  	  height: 225,*/
  	  xaxis: {
  	    showline: true,
  	    showgrid: false,
  	    showticklabels: true,
  	    linecolor: 'rgb(204,204,204)',
  	    linewidth: 2,
  	    autotick: false,
  	    ticks: 'outside',
  	    tickcolor: 'rgb(204,204,204)',
  	    tickwidth: 2,
  	    ticklen: 5,
  	    tickfont: {
  	      family: 'Arial',
  	      size: 12,
  	      color: 'rgb(82, 82, 82)'
  	    }
  	  },
  	  yaxis: {
  	    showgrid: false,
  	    zeroline: false,
  	    showline: false,
  	    showticklabels: false
  	  },
  	  autosize: true,
  	  /*margin: {
  	    autoexpand: false,
  	    l: 100,
  	    r: 20,
  	    t: 100
  	  },*/
  	  annotations: [
  	    {
  	      xref: 'paper',
  	      yref: 'paper',
  	      x: 0.0,
  	      y: 1.05,
  	      xanchor: 'left',
  	      yanchor: 'bottom',
  	      text: 'Main Source for News',
  	      font:{
  	        family: 'Arial',
  	        size: 30,
  	        color: 'rgb(37,37,37)'
  	      },
  	      showarrow: false
  	    },
  	    {
  	      xref: 'paper',
  	      yref: 'paper',
  	      x: 0.5,
  	      y: -0.1,
  	      xanchor: 'center',
  	      yanchor: 'top',
  	      text: 'Source: Pew Research Center & Storytelling with data',
  	      showarrow: false,
  	      font: {
  	        family: 'Arial',
  	        size: 12,
  	        color: 'rgb(150,150,150)'
  	      }
  	    }
  	  ]
  	};

for ( var i = 0 ; i < xData.length ; i ++ ) {
	  var result = {
	    xref: 'paper',
	    x: 0.05,
	    y: yData[i][0],
	    xanchor: 'right',
	    yanchor: 'middle',
	    text: labels[i] + ' ' + yData[i][0] +'%',
	    showarrow: false,
	    font: {
	      family: 'Arial',
	      size: 16,
	      color: 'black'
	    }
	  };
	  var result2 = {
	    xref: 'paper',
	    x: 0.95,
	    y: yData[i][11],
	    xanchor: 'left',
	    yanchor: 'middle',
	    text: yData[i][11] +'%',
	    font: {
	      family: 'Arial',
	      size: 16,
	      color: 'black'
	    },
	    showarrow: false
	  };
	  
	  myExampleData.linelayout.annotations.push(result, result2);
	}

myExampleData.plotlylineconfig = {
		   modeBarButtonsToRemove: ['sendDataToCloud'],
		   displaylogo: false
	};
/**
 * Plotly data
 */

//Pie chart sample data ends here


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
