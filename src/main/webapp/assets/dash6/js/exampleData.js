var myExampleData = {};
/**
 * C3 data
 */
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//c3 pie chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly simple line chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bubble chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	mode : 'markers',
	marker : {
		size : [ 40, 60, 80, 100 ]
	}
};

var trace2 = {
		x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
		y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
		mode : 'markers',
		marker : {
			size : [ 30, 60, 70, 90 ]
		}
};

myExampleData.plotlyBubbleData = [ trace1 ];

myExampleData.plotlyRefreshBubbleData = [ trace2 ];

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

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly coloumn chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
		  x: [20, 14, 23, 8, 11, 25, 13, 17, 19, 30],
		  x : [ 'Tiger', 'Desperado', 'Heiniken' ,'Kingfisher', 'brand1', 'brand2','brand3', 'brand4', 'brand5'],
		  name: 'SF Breweries',
		  orientation: 'h',
		  marker: {
		    //color: 'rgba(55,128,191,0.6)',
		    width: 1
		  },
		  type: 'bar'
		};

		var trace2 = {
		  x: [12, 18, 29, 11, 15, 21, 16, 10, 12, 22],
		  x : [ 'Guiness', 'Erdinger', 'Brand1' ,'Brand2', 'brand3', 'brand4','brand5', 'brand6', 'brand7'],
		  name: 'LA Breweries',
		  orientation: 'h',
		  type: 'bar',
		  marker: {
		    //color: 'rgba(255,153,51,0.6)',
		    width: 1
		  }
		};

		var data = [trace1, trace2];
		myExampleData.plotlycolumndata = data;

		var layout = {
		  title: 'Number of records',
		  barmode: 'stack'
		};
		

		myExampleData.plotlycolumnlayout = layout;
	
		myExampleData.plotlycolumnconfig = {
				modeBarButtonsToRemove : [ 'sendDataToCloud' ],
				displaylogo : false
		};
	myExampleData.plotlybubble2data = 	[{"mode":"markers","name":"Asia","x":["43.828","75.635","64.062","59.723","72.961","82.208","64.698","70.65","70.964","59.545","80.745","82.603","72.535","67.297","78.623","77.588","71.993","74.241","66.803","62.069","63.785","75.64","65.483","71.688","72.777","79.972","72.396","74.143","78.4","70.616","74.249","73.422","62.698"],"y":["974.5803384","29796.04834","1391.253792","1713.778686","4959.114854","39724.97867","2452.210407","3540.651564","11605.71449","4471.061906","25523.2771","31656.06806","4519.461171","1593.06548","23348.13973","47306.98978","10461.05868","12451.6558","3095.772271","944","1091.359778","22316.19287","2605.94758","3190.481016","21654.83194","47143.17964","3970.095407","4184.548089","28718.27684","7458.396327","2441.576404","3025.349798","2280.769906"],"text":["Afghanistan","Bahrain","Bangladesh","Cambodia","China","Hong Kong, China","India","Indonesia","Iran","Iraq","Israel","Japan","Jordan","Korea, Dem. Rep.","Korea, Rep.","Kuwait","Lebanon","Malaysia","Mongolia","Myanmar","Nepal","Oman","Pakistan","Philippines","Saudi Arabia","Singapore","Sri Lanka","Syria","Taiwan","Thailand","Vietnam","West Bank and Gaza","Yemen, Rep."],"marker":{"sizemode":"area","size":["31889923","708573","150448339","14131858","1318683096","6980412","1110396331","223547000","69453570","27499638","6426679","127467972","6053193","23301725","49044790","2505559","3921278","24821286","2874127","47761980","28901790","3204897","169270617","91077287","27601038","4553009","20378239","19314747","23174294","65068149","85262356","4018332","22211743"],"sizeref":200000}},{"mode":"markers","name":"Europe","x":["76.423","79.829","79.441","74.852","73.005","75.748","76.486","78.332","79.313","80.657","79.406","79.483","73.338","81.757","78.885","80.546","74.543","79.762","80.196","75.563","78.098","72.476","74.002","74.663","77.926","80.941","80.884","81.701","71.777","79.425"],"y":["5937.029526","36126.4927","33692.60508","7446.298803","10680.79282","14619.22272","22833.30851","35278.41874","33207.0844","30470.0167","32170.37442","27538.41188","18008.94444","36180.78919","40675.99635","28569.7197","9253.896111","36797.93332","49357.19017","15389.92468","20509.64777","10808.47561","9786.534714","18678.31435","25768.25759","28821.0637","33859.74835","37506.41907","8458.276384","33203.26128"],"text":["Albania","Austria","Belgium","Bosnia and Herzegovina","Bulgaria","Croatia","Czech Republic","Denmark","Finland","France","Germany","Greece","Hungary","Iceland","Ireland","Italy","Montenegro","Netherlands","Norway","Poland","Portugal","Romania","Serbia","Slovak Republic","Slovenia","Spain","Sweden","Switzerland","Turkey","United Kingdom"],"marker":{"sizemode":"area","size":["3600523","8199783","10392226","4552198","7322858","4493312","10228744","5468120","5238460","61083916","82400996","10706290","9956108","301931","4109086","58147733","684736","16570613","4627926","38518241","10642836","22276056","10150265","5447502","2009245","40448191","9031088","7554661","71158647","60776238"],"sizeref":200000}},{"mode":"markers","name":"Africa","x":["72.301","42.731","56.728","50.728","52.295","49.58","50.43","44.741","50.651","65.152","46.462","55.322","48.328","54.791","71.338","51.579","58.04","52.947","56.735","59.448","60.022","56.007","46.388","54.11","42.592","45.678","73.952","59.443","48.303","54.467","64.164","72.801","71.164","42.082","52.906","56.867","46.859","76.442","46.242","65.528","63.062","42.568","48.159","49.339","58.556","39.613","52.517","58.42","73.923","51.542","42.384","43.487"],"y":["6223.367465","4797.231267","1441.284873","12569.85177","1217.032994","430.0706916","2042.09524","706.016537","1704.063724","986.1478792","277.5518587","3632.557798","1544.750112","2082.481567","5581.180998","12154.08975","641.3695236","690.8055759","13206.48452","752.7497265","1327.60891","942.6542111","579.231743","1463.249282","1569.331442","414.5073415","12057.49928","1044.770126","759.3499101","1042.581557","1803.151496","10956.99112","3820.17523","823.6856205","4811.060429","619.6768924","2013.977305","7670.122558","863.0884639","1598.435089","1712.472136","862.5407561","926.1410683","9269.657808","2602.394995","4513.480643","1107.482182","882.9699438","7092.923025","1056.380121","1271.211593","469.7092981"],"text":["Algeria","Angola","Benin","Botswana","Burkina Faso","Burundi","Cameroon","Central African Republic","Chad","Comoros","Congo, Dem. Rep.","Congo, Rep.","Cote d'Ivoire","Djibouti","Egypt","Equatorial Guinea","Eritrea","Ethiopia","Gabon","Gambia","Ghana","Guinea","Guinea-Bissau","Kenya","Lesotho","Liberia","Libya","Madagascar","Malawi","Mali","Mauritania","Mauritius","Morocco","Mozambique","Namibia","Niger","Nigeria","Reunion","Rwanda","Sao Tome and Principe","Senegal","Sierra Leone","Somalia","South Africa","Sudan","Swaziland","Tanzania","Togo","Tunisia","Uganda","Zambia","Zimbabwe"],"marker":{"sizemode":"area","size":["33333216","12420476","8078314","1639131","14326203","8390505","17696293","4369038","10238807","710960","64606759","3800610","18013409","496374","80264543","551201","4906585","76511887","1454867","1688359","22873338","9947814","1472041","35610177","2012649","3193942","6036914","19167654","13327079","12031795","3270065","1250882","33757175","19951656","2055080","12894865","135031164","798094","8860588","199579","12267493","6144562","9118773","43997828","42292929","1133066","38139640","5701579","10276158","29170398","11746035","12311143"],"sizeref":200000}},{"mode":"markers","name":"Oceania","x":["81.235","80.204"],"y":["34435.36744","25185.00911"],"text":["Australia","New Zealand"],"marker":{"sizemode":"area","size":["20434176","4115771"],"sizeref":200000}},{"mode":"markers","name":"Americas","x":["75.32","65.554","72.39","80.653","78.553","72.889","78.782","78.273","72.235","74.994","71.878","70.259","60.916","70.198","72.567","76.195","72.899","75.537","71.752","71.421","78.746","69.819","78.242","76.384","73.747"],"y":["12779.37964","3822.137084","9065.800825","36319.23501","13171.63885","7006.580419","9645.06142","8948.102923","6025.374752","6873.262326","5728.353514","5186.050003","1201.637154","3548.330846","7320.880262","11977.57496","2749.320965","9809.185636","4172.838464","7408.905561","19328.70901","18008.50924","42951.65309","10611.46299","11415.80569"],"text":["Argentina","Bolivia","Brazil","Canada","Chile","Colombia","Costa Rica","Cuba","Dominican Republic","Ecuador","El Salvador","Guatemala","Haiti","Honduras","Jamaica","Mexico","Nicaragua","Panama","Paraguay","Peru","Puerto Rico","Trinidad and Tobago","United States","Uruguay","Venezuela"],"marker":{"sizemode":"area","size":["40301927","9119152","190010647","33390141","16284741","44227550","4133884","11416987","9319622","13755680","6939688","12572928","8502814","7483763","2780132","108700891","5675356","3242173","6667147","28674757","3942491","1056608","301139947","3447496","26084662"],"sizeref":200000}}];
	var layout = {
			  xaxis: {title: ' '},
			  yaxis: {title: 'Revenue in million $', type: 'log'},
			  margin: {t: 20},
			  hovermode: 'closest'
			};
			
			myExampleData.plotlybubble2layout = layout;
			
			myExampleData.plotlybubble2config = {showLink: false, modeBarButtonsToRemove : [ 'sendDataToCloud' ],
					displaylogo : false };
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bar and line chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
		  y: [1.5, 1, 1.3, 0.7, 0.8, 0.9, 1.1, 1.3, 1.5, 1],
		  type: 'bar',
		  name: 'SF Brewries'
		};

		var trace2 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
		  y: [1, 0.5, 0.7, 1.2, 0.3, 0.4, 0.6, 0.7, 1, 0.5],
		  type: 'scatter',
		  name: 'LA Brewries'
		};
		
var barlinelayout = {
		
		xaxis: {title: " " },
		yaxis: {title: "Number of redemptions" }
}

		myExampleData.plotlybarlinedata = [trace1, trace2];
		myExampleData.plotlybarlinelayout = barlinelayout;
		myExampleData.plotlybarlineconfig = {
				modeBarButtonsToRemove : [ 'sendDataToCloud' ],
				displaylogo : false
			};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly stacked bart chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly stacked bart chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
		barmode : 'stack',
		autosize : true
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly pie chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bubble chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//table widget sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
	"bAutoWidth" : false,
	"buttons":[ 'copyHtml5','excelHtml5','csvHtml5','pdfHtml5']
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//New table widget starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
myExampleData.tableWidgetDataNw = [
	    {
	      "id": "1",
	      "name": "Tiger Nixon",
	      "position": "System Architect",
	      "salary": "$320,800",
	      "start_date": "2011/04/25",
	      "office": "Edinburgh",
	      "extn": "5421"
	    },
	    {
	      "id": "2",
	      "name": "Garrett Winters",
	      "position": "Accountant",
	      "salary": "$170,750",
	      "start_date": "2011/07/25",
	      "office": "Tokyo",
	      "extn": "8422"
	    },
	    {
	      "id": "3",
	      "name": "Ashton Cox",
	      "position": "Junior Technical Author",
	      "salary": "$86,000",
	      "start_date": "2009/01/12",
	      "office": "San Francisco",
	      "extn": "1562"
	    },
	    {
	      "id": "4",
	      "name": "Cedric Kelly",
	      "position": "Senior Javascript Developer",
	      "salary": "$433,060",
	      "start_date": "2012/03/29",
	      "office": "Edinburgh",
	      "extn": "6224"
	    },
	    {
	      "id": "5",
	      "name": "Airi Satou",
	      "position": "Accountant",
	      "salary": "$162,700",
	      "start_date": "2008/11/28",
	      "office": "Tokyo",
	      "extn": "5407"
	    },
	    {
	      "id": "6",
	      "name": "Brielle Williamson",
	      "position": "Integration Specialist",
	      "salary": "$372,000",
	      "start_date": "2012/12/02",
	      "office": "New York",
	      "extn": "4804"
	    },
	    {
	      "id": "7",
	      "name": "Herrod Chandler",
	      "position": "Sales Assistant",
	      "salary": "$137,500",
	      "start_date": "2012/08/06",
	      "office": "San Francisco",
	      "extn": "9608"
	    },
	    {
	      "id": "8",
	      "name": "Rhona Davidson",
	      "position": "Integration Specialist",
	      "salary": "$327,900",
	      "start_date": "2010/10/14",
	      "office": "Tokyo",
	      "extn": "6200"
	    },
	    {
	      "id": "9",
	      "name": "Colleen Hurst",
	      "position": "Javascript Developer",
	      "salary": "$205,500",
	      "start_date": "2009/09/15",
	      "office": "San Francisco",
	      "extn": "2360"
	    },
	    {
	      "id": "10",
	      "name": "Sonya Frost",
	      "position": "Software Engineer",
	      "salary": "$103,600",
	      "start_date": "2008/12/13",
	      "office": "Edinburgh",
	      "extn": "1667"
}];
myExampleData.tableWidgetColoumnNw = [
    { data: 'name' },
    { data: 'position' },
    { data: 'office' },
    { data: 'extn' },
    { data: 'start_date' },
    { data: 'salary' }
];

/*var buttonCommon = {
        exportOptions: {
            format: {
                body: function ( data, row, column, node ) {
                    // Strip $ from salary column to make it numeric
                    return column === 5 ?
                        data.replace( /[$,]/g, '' ) :
                        data;
                }
            }
        }
};*/
/*myExampleData.tableWidgetButtonNw = [
    $.extend( true, {}, buttonCommon, {
        extend: 'copyHtml5'
    } ),
    $.extend( true, {}, buttonCommon, {
        extend: 'excelHtml5'
    } ),
    $.extend( true, {}, buttonCommon, {
        extend: 'pdfHtml5'
    } )
];*/
/*myExampleData.tableWidgetButtonNw = [
    'copyHtml5',
    'excelHtml5',
    'csvHtml5',
    'pdfHtml5'
];*/


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//New table Grid widget starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
function generatedata(rowscount, hasNullValues) {
    // prepare the data
    var data = new Array();
    if (rowscount == undefined) rowscount = 100;
    var firstNames =
    [
        "Andrew", "Nancy", "Shelley", "Regina", "Yoshi", "Antoni", "Mayumi", "Ian", "Peter", "Lars", "Petra", "Martin", "Sven", "Elio", "Beate", "Cheryl", "Michael", "Guylene"
    ];

    var lastNames =
    [
        "Fuller", "Davolio", "Burke", "Murphy", "Nagase", "Saavedra", "Ohno", "Devling", "Wilson", "Peterson", "Winkler", "Bein", "Petersen", "Rossi", "Vileid", "Saylor", "Bjorn", "Nodier"
    ];

    var productNames =
    [
        "Black Tea", "Green Tea", "Caffe Espresso", "Doubleshot Espresso", "Caffe Latte", "White Chocolate Mocha", "Caramel Latte", "Caffe Americano", "Cappuccino", "Espresso Truffle", "Espresso con Panna", "Peppermint Mocha Twist"
    ];

    var priceValues =
    [
         "2.25", "1.5", "3.0", "3.3", "4.5", "3.6", "3.8", "2.5", "5.0", "1.75", "3.25", "4.0"
    ];

    for (var i = 0; i < rowscount; i++) {
        var row = {};
        var productindex = Math.floor(Math.random() * productNames.length);
        var price = parseFloat(priceValues[productindex]);
        var quantity = 1 + Math.round(Math.random() * 10);

        row["id"] = i;
        row["available"] = productindex % 2 == 0;
        if (hasNullValues == true) {
            if (productindex % 2 != 0) {
                var random = Math.floor(Math.random() * rowscount);
                row["available"] = i % random == 0 ? null : false;
            }
        }
        row["firstname"] = firstNames[Math.floor(Math.random() * firstNames.length)];
        row["lastname"] = lastNames[Math.floor(Math.random() * lastNames.length)];
        row["name"] = row["firstname"] + " " + row["lastname"]; 
        row["productname"] = productNames[productindex];
        row["price"] = price;
        row["quantity"] = quantity;
        row["total"] = price * quantity;

        var date = new Date();
        date.setFullYear(date.getFullYear(), Math.floor(Math.random() * 12), Math.floor(Math.random() * 27));
        date.setHours(0, 0, 0, 0);
        row["date"] = date;
       
        data[i] = row;
    }

    return data;
}


