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


//Horizantal bar chart

	var xSavings = [1.3586, 2.2623000000000002, 4.9821999999999997, 6.5096999999999996,
	  7.4812000000000003, 7.5133000000000001, 15.2148, 17.520499999999998
	];

	var xNetworth = [93453.919999999998, 81666.570000000007, 69889.619999999995, 78381.529999999999, 141395.29999999999, 92969.020000000004, 66090.179999999993, 122379.3];

	var ySavings = ['Japan', 'United Kingdom', 'Canada', 'Netherlands', 'United States', 'Belgium', 'Sweden', 'Switzerland'];

	var yNetworth = ['Japan', 'United Kingdom', 'Canada', 'Netherlands', 'United States', 'Belgium', 'Sweden', 'Switzerland'];

	var trace1 = {
	  x: xSavings,
	  y: ySavings,
	  xaxis: 'x1',
	  yaxis: 'y1',
	  type: 'bar',
	  marker: {
	    color: 'rgba(50,171,96,0.6)',
	    line: {
	      color: 'rgba(50,171,96,1.0)',
	      width: 1
	    }
	  },
	  name: 'Household savings, percentage of household disposable income',
	  orientation: 'h'
	};

	var trace2 = {
	  x: xNetworth,
	  y: yNetworth,
	  xaxis: 'x2',
	  yaxis: 'y1',
	  mode: 'lines+markers',
	  line: {
	    color: 'rgb(128,0,128)'
	  },
	  name: 'Household net worth, Million USD/capita'
	};

	myExampleData.plotlycolumndata = [trace1, trace2];
	
	var columnlayout = {
			  title: 'Household Savings & Net Worth for Eight OECD Countries',
			  xaxis1: {
			    range: [0, 20],
			    domain: [0, 0.5],
			    zeroline: false,
			    showline: false,
			    showticklabels: true,
			    showgrid: true
			  },
			  xaxis2: {
			    range: [25000, 150000],
			    domain: [0.5, 1],
			    zeroline: false,
			    showline: false,
			    showticklabels: true,
			    showgrid: true,
			    side: 'top',
			    dtick: 25000
			  },
			  legend: {
			    x: 0.029,
			    y: 1.238,
			    font: {
			      size: 10
			    }
			  },
			  margin: {
			    l: 100,
			    r: 20,
			    t: 200,
			    b: 70
			  },
			  width: 600,
			  height: 600,
			  paper_bgcolor: 'rgb(248,248,255)',
			  plot_bgcolor: 'rgb(248,248,255)',
			  annotations: [
			    {
			      xref: 'paper',
			      yref: 'paper',
			      x: -0.2,
			      y: -0.109,
			      text: 'OECD ' + '(2015), Household savings (indicator), ' + 'Household net worth (indicator). doi: ' + '10.1787/cfc6f499-en (Accessed on 05 June 2015)',
			      showarrow: false,
			      font:{
			        family: 'Arial',
			        size: 10,
			        color: 'rgb(150,150,150)'
			      }
			    }
			  ]
			};

			for ( var i = 0 ; i < xSavings.length ; i++ ) {
			  var result = {
			    xref: 'x1',
			    yref: 'y1',
			    x: xSavings[i]+2.3,
			    y: ySavings[i],
			    text: xSavings[i] + '%',
			    font: {
			      family: 'Arial',
			      size: 12,
			      color: 'rgb(50, 171, 96)'
			    },
			     showarrow: false,
			  };
			  var result2 = {
			    xref: 'x2',
			    yref: 'y1',
			    x: xNetworth[i] - 20000,
			    y: yNetworth[i],
			    text: xNetworth[i] + ' M',
			    font: {
			      family: 'Arial',
			      size: 12,
			      color: 'rgb(128, 0, 128)'
			    },
			     showarrow: false
			  };
			  columnlayout.annotations.push(result, result2);
			}

	myExampleData.plotlycolumnlayout = columnlayout;
	
	myExampleData.plotlycolumnconfig = {
			modeBarButtonsToRemove : [ 'sendDataToCloud' ],
			displaylogo : false
		};
	
	
//Better bubble chart
	
//$.getScript('assets/js/dash1/plotly-latest.min.js', function() {
//	Plotly.d3.csv('assets/dash6/data.csv', function(err, rows){
//		
//		var YEAR = 2007;
//		var continents = ['Asia', 'Europe', 'Africa', 'Oceania', 'Americas'];
//		var POP_TO_PX_SIZE = 2e5;
//		function unpack(rows, key) {
//		  return rows.map(function(row) { return row[key]; });
//		}
//
//		var data = continents.map(function(continent) {
//		  var rowsFiltered = rows.filter(function(row) {
//		      return (row.continent === continent) && (+row.year === YEAR);
//		  });
//		  return {
//		      mode: 'markers',
//		      name: continent,
//		      x: unpack(rowsFiltered, 'lifeExp'),
//		      y: unpack(rowsFiltered, 'gdpPercap'),
//		      text: unpack(rowsFiltered, 'country'),
//		      marker: {
//		          sizemode: 'area',
//		          size: unpack(rowsFiltered, 'pop'),
//		          sizeref: POP_TO_PX_SIZE
//		      }
//		  };
//		});
//		
//		myExampleData.plotlybubble2data = data;
//		
////		window.requestFileSystem  = window.requestFileSystem || window.webkitRequestFileSystem;
////		window.requestFileSystem(window.PERSISTENT, 1024, function(fs) {
////		    fs.root.getFile('mystorage.txt', {create: true, exclusive: true}, function(file) {
////		        file.createWriter(function(writer) {
////		            var blob = new Blob(data, {type: 'text/plain'});
////		            writer.write(blob);
////		        });
////		    });
////		}, function() {
////		    console.log("Could not access file system");
////		});
//		
//		var new_data = JSON.stringify(data);
//		
//		console.log(new_data);
//		console.log(myExampleData.plotlybubble2data);
//		var layout = {
//		  xaxis: {title: 'Life Expectancy'},
//		  yaxis: {title: 'GDP per Capita', type: 'log'},
//		  margin: {t: 20},
//		  hovermode: 'closest'
//		};
//		
//		myExampleData.plotlybubble2layout = layout;
//		
//		myExampleData.plotlybubble2config = {showLink: false, modeBarButtonsToRemove : [ 'sendDataToCloud' ],
//				displaylogo : false };
//		//Plotly.plot('my-graph', data, layout, {showLink: false});
//		});
//});
//
//
//
//console.log("there");
//console.log(myExampleData.plotlybubble2data);

	myExampleData.plotlybubble2data = 	[{"mode":"markers","name":"Asia","x":["43.828","75.635","64.062","59.723","72.961","82.208","64.698","70.65","70.964","59.545","80.745","82.603","72.535","67.297","78.623","77.588","71.993","74.241","66.803","62.069","63.785","75.64","65.483","71.688","72.777","79.972","72.396","74.143","78.4","70.616","74.249","73.422","62.698"],"y":["974.5803384","29796.04834","1391.253792","1713.778686","4959.114854","39724.97867","2452.210407","3540.651564","11605.71449","4471.061906","25523.2771","31656.06806","4519.461171","1593.06548","23348.13973","47306.98978","10461.05868","12451.6558","3095.772271","944","1091.359778","22316.19287","2605.94758","3190.481016","21654.83194","47143.17964","3970.095407","4184.548089","28718.27684","7458.396327","2441.576404","3025.349798","2280.769906"],"text":["Afghanistan","Bahrain","Bangladesh","Cambodia","China","Hong Kong, China","India","Indonesia","Iran","Iraq","Israel","Japan","Jordan","Korea, Dem. Rep.","Korea, Rep.","Kuwait","Lebanon","Malaysia","Mongolia","Myanmar","Nepal","Oman","Pakistan","Philippines","Saudi Arabia","Singapore","Sri Lanka","Syria","Taiwan","Thailand","Vietnam","West Bank and Gaza","Yemen, Rep."],"marker":{"sizemode":"area","size":["31889923","708573","150448339","14131858","1318683096","6980412","1110396331","223547000","69453570","27499638","6426679","127467972","6053193","23301725","49044790","2505559","3921278","24821286","2874127","47761980","28901790","3204897","169270617","91077287","27601038","4553009","20378239","19314747","23174294","65068149","85262356","4018332","22211743"],"sizeref":200000}},{"mode":"markers","name":"Europe","x":["76.423","79.829","79.441","74.852","73.005","75.748","76.486","78.332","79.313","80.657","79.406","79.483","73.338","81.757","78.885","80.546","74.543","79.762","80.196","75.563","78.098","72.476","74.002","74.663","77.926","80.941","80.884","81.701","71.777","79.425"],"y":["5937.029526","36126.4927","33692.60508","7446.298803","10680.79282","14619.22272","22833.30851","35278.41874","33207.0844","30470.0167","32170.37442","27538.41188","18008.94444","36180.78919","40675.99635","28569.7197","9253.896111","36797.93332","49357.19017","15389.92468","20509.64777","10808.47561","9786.534714","18678.31435","25768.25759","28821.0637","33859.74835","37506.41907","8458.276384","33203.26128"],"text":["Albania","Austria","Belgium","Bosnia and Herzegovina","Bulgaria","Croatia","Czech Republic","Denmark","Finland","France","Germany","Greece","Hungary","Iceland","Ireland","Italy","Montenegro","Netherlands","Norway","Poland","Portugal","Romania","Serbia","Slovak Republic","Slovenia","Spain","Sweden","Switzerland","Turkey","United Kingdom"],"marker":{"sizemode":"area","size":["3600523","8199783","10392226","4552198","7322858","4493312","10228744","5468120","5238460","61083916","82400996","10706290","9956108","301931","4109086","58147733","684736","16570613","4627926","38518241","10642836","22276056","10150265","5447502","2009245","40448191","9031088","7554661","71158647","60776238"],"sizeref":200000}},{"mode":"markers","name":"Africa","x":["72.301","42.731","56.728","50.728","52.295","49.58","50.43","44.741","50.651","65.152","46.462","55.322","48.328","54.791","71.338","51.579","58.04","52.947","56.735","59.448","60.022","56.007","46.388","54.11","42.592","45.678","73.952","59.443","48.303","54.467","64.164","72.801","71.164","42.082","52.906","56.867","46.859","76.442","46.242","65.528","63.062","42.568","48.159","49.339","58.556","39.613","52.517","58.42","73.923","51.542","42.384","43.487"],"y":["6223.367465","4797.231267","1441.284873","12569.85177","1217.032994","430.0706916","2042.09524","706.016537","1704.063724","986.1478792","277.5518587","3632.557798","1544.750112","2082.481567","5581.180998","12154.08975","641.3695236","690.8055759","13206.48452","752.7497265","1327.60891","942.6542111","579.231743","1463.249282","1569.331442","414.5073415","12057.49928","1044.770126","759.3499101","1042.581557","1803.151496","10956.99112","3820.17523","823.6856205","4811.060429","619.6768924","2013.977305","7670.122558","863.0884639","1598.435089","1712.472136","862.5407561","926.1410683","9269.657808","2602.394995","4513.480643","1107.482182","882.9699438","7092.923025","1056.380121","1271.211593","469.7092981"],"text":["Algeria","Angola","Benin","Botswana","Burkina Faso","Burundi","Cameroon","Central African Republic","Chad","Comoros","Congo, Dem. Rep.","Congo, Rep.","Cote d'Ivoire","Djibouti","Egypt","Equatorial Guinea","Eritrea","Ethiopia","Gabon","Gambia","Ghana","Guinea","Guinea-Bissau","Kenya","Lesotho","Liberia","Libya","Madagascar","Malawi","Mali","Mauritania","Mauritius","Morocco","Mozambique","Namibia","Niger","Nigeria","Reunion","Rwanda","Sao Tome and Principe","Senegal","Sierra Leone","Somalia","South Africa","Sudan","Swaziland","Tanzania","Togo","Tunisia","Uganda","Zambia","Zimbabwe"],"marker":{"sizemode":"area","size":["33333216","12420476","8078314","1639131","14326203","8390505","17696293","4369038","10238807","710960","64606759","3800610","18013409","496374","80264543","551201","4906585","76511887","1454867","1688359","22873338","9947814","1472041","35610177","2012649","3193942","6036914","19167654","13327079","12031795","3270065","1250882","33757175","19951656","2055080","12894865","135031164","798094","8860588","199579","12267493","6144562","9118773","43997828","42292929","1133066","38139640","5701579","10276158","29170398","11746035","12311143"],"sizeref":200000}},{"mode":"markers","name":"Oceania","x":["81.235","80.204"],"y":["34435.36744","25185.00911"],"text":["Australia","New Zealand"],"marker":{"sizemode":"area","size":["20434176","4115771"],"sizeref":200000}},{"mode":"markers","name":"Americas","x":["75.32","65.554","72.39","80.653","78.553","72.889","78.782","78.273","72.235","74.994","71.878","70.259","60.916","70.198","72.567","76.195","72.899","75.537","71.752","71.421","78.746","69.819","78.242","76.384","73.747"],"y":["12779.37964","3822.137084","9065.800825","36319.23501","13171.63885","7006.580419","9645.06142","8948.102923","6025.374752","6873.262326","5728.353514","5186.050003","1201.637154","3548.330846","7320.880262","11977.57496","2749.320965","9809.185636","4172.838464","7408.905561","19328.70901","18008.50924","42951.65309","10611.46299","11415.80569"],"text":["Argentina","Bolivia","Brazil","Canada","Chile","Colombia","Costa Rica","Cuba","Dominican Republic","Ecuador","El Salvador","Guatemala","Haiti","Honduras","Jamaica","Mexico","Nicaragua","Panama","Paraguay","Peru","Puerto Rico","Trinidad and Tobago","United States","Uruguay","Venezuela"],"marker":{"sizemode":"area","size":["40301927","9119152","190010647","33390141","16284741","44227550","4133884","11416987","9319622","13755680","6939688","12572928","8502814","7483763","2780132","108700891","5675356","3242173","6667147","28674757","3942491","1056608","301139947","3447496","26084662"],"sizeref":200000}}];
	var layout = {
			  xaxis: {title: 'Life Expectancy'},
			  yaxis: {title: 'GDP per Capita', type: 'log'},
			  margin: {t: 20},
			  hovermode: 'closest'
			};
			
			myExampleData.plotlybubble2layout = layout;
			
			myExampleData.plotlybubble2config = {showLink: false, modeBarButtonsToRemove : [ 'sendDataToCloud' ],
					displaylogo : false };
	
	
//BarAndLine
var trace1 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
		  y: [1.5, 1, 1.3, 0.7, 0.8, 0.9, 1.1, 1.3, 1.5, 1],
		  type: 'bar'
		};

		var trace2 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
		  y: [1, 0.5, 0.7, -1.2, 0.3, 0.4, 0.6, 0.7, 1, 0.5],
		  type: 'bar'
		};
		
var barlinelayout = {
		
		xaxis: {title: "proximity to the sea" },
		yaxis: {title: "distance above sea-level" }
}

		myExampleData.plotlybarlinedata = [trace1, trace2];
		myExampleData.plotlybarlinelayout = barlinelayout;
		myExampleData.plotlybarlineconfig = {
				modeBarButtonsToRemove : [ 'sendDataToCloud' ],
				displaylogo : false
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
	type : 'scatter'
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
	labels : [ 'Tiger', 'Heiniken', 'Brand1', 'Brand1', 'Brand3' ],
	type : 'pie'
}];

myExampleData.plotlypielayout = {
  title : 'Revenue in US $',	
  autosize : true

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
