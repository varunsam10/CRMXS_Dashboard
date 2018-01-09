var myExampleData = {};
/**
 * Amcharts map data 
 */
myExampleData.targetSVG = "M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z";

myExampleData.mapDataStoreLocUS =	{
	  "type": "map",
	  "theme": "light",
	  "imagesSettings": {
		   "rollOverColor": "#089282",
		   "rollOverScale": 3,
		   "selectedScale": 3,
		   "selectedColor": "#089282",
		   "color": "#13564e"
	  },
	  "dataProvider": {
	    "map": "usaLow",
	    "zoomLatitude": 0,
	    "zoomLongitude": 0,
	    "images": [{
		      "svgPath": myExampleData.targetSVG,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "Atmosphere",
		      "id": "Atmosphere",
		      "latitude": 33.448376,
		      "longitude": -132.074036,
		      "selectable": true
		    }, {
		      "svgPath": myExampleData.targetSVG,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "Cafe Football",
		      "id": "CafeFootball",
		      "latitude": 37.448376,
		      "longitude": -72.074036,
		      "selectable": true
		    }, {
		      "svgPath": myExampleData.targetSVG,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "Serenity",
		      "id": "Serenity",
		      "latitude": 38.048927,
		      "longitude": -41.093735,
		      "selectable": true
		    }/*, {
		      "svgPath": myExampleData.targetSVG,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "The Bark cafe",
		      "id": "BarkCafe",
		      "latitude": 34.048927,
		      "longitude": -119.093735,
		      "selectable": true
		    }, {
		      "svgPath": myExampleData.targetSVG,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "Cafe Frienze",
		      "id": "CafeFrienze",
		      "latitude": 34.848927,
		      "longitude": -115.993735,
		      "selectable": true
		    }*/]
	  },
	  "areasSettings": {
	    "autoZoom": true,
	    "unlistedAreasColor": "#15A892",
		"outlineThickness": 0.1
	  }
};
myExampleData.mapDataStoreLocUSTest =	{
		  "type": "map",
		  "theme": "light",
		  "imagesSettings": {
			   "rollOverColor": "#089282",
			   "rollOverScale": 3,
			   "selectedScale": 3,
			   "selectedColor": "#089282",
			   "color": "#13564e"
		  },
		  "dataProvider": {
		    "map": "usaLow",
		    "zoomLatitude": 0,
		    "zoomLongitude": 0,
		    "images": [{
			      "svgPath": myExampleData.targetSVG,
			      "zoomLevel": 5,
			      "scale": 0.5,
			      "title": "Atmosphere",
			      "id": "Atmosphere",
			      "latitude": 33.448376,
			      "longitude": -132.074036,
			      "selectable": true
			    }, {
			      "svgPath": myExampleData.targetSVG,
			      "zoomLevel": 5,
			      "scale": 0.5,
			      "title": "Cafe Football",
			      "id": "CafeFootball",
			      "latitude": 37.448376,
			      "longitude": -72.074036,
			      "selectable": true
			    }, {
			      "svgPath": myExampleData.targetSVG,
			      "zoomLevel": 5,
			      "scale": 0.5,
			      "title": "Serenity",
			      "id": "Serenity",
			      "latitude": 38.048927,
			      "longitude": -41.093735,
			      "selectable": true
			    }, {
			      "svgPath": myExampleData.targetSVG,
			      "zoomLevel": 5,
			      "scale": 0.5,
			      "title": "The Bark cafe",
			      "id": "BarkCafe",
			      "latitude": 34.048927,
			      "longitude": -30.093735,
			      "selectable": true
			    }, {
			      "svgPath": myExampleData.targetSVG,
			      "zoomLevel": 5,
			      "scale": 0.5,
			      "title": "Cafe Frienze",
			      "id": "CafeFrienze",
			      "latitude": 34.848927,
			      "longitude": -21.993735,
			      "selectable": true
			    },
			    {
				  "svgPath": myExampleData.targetSVG,
				  "zoomLevel": 5,
				  "scale": 0.5,
				  "title": "Cafe 1",
				  "id": "CafeFrienze",
				  "latitude": 34.848927,
				  "longitude": -11.993735,
				  "selectable": true
			    },
				{
				 "svgPath": myExampleData.targetSVG,
				 "zoomLevel": 5,
				 "scale": 0.5,
				 "title": "Cafe 2",
				 "id": "CafeFrienze",
				 "latitude": 38.848927,
				 "longitude": 15.993735,
				 "selectable": true
				},
				{
				"svgPath": myExampleData.targetSVG,
				"zoomLevel": 5,
				"scale": 0.5,
				"title": "Cafe 3",
				"id": "CafeFrienze",
				"latitude": 34.848927,
				"longitude": 55.993735,
				"selectable": true
				},
				{
				"svgPath": myExampleData.targetSVG,
				"zoomLevel": 5,
				"scale": 0.5,
				"title": "Cafe 4",
				"id": "CafeFrienze",
				"latitude": 24.848927,
				"longitude": 75.993735,
				"selectable": true
				}]
		  },
		  "areasSettings": {
		    "autoZoom": true,
		    "unlistedAreasColor": "#15A892",
			"outlineThickness": 0.1
		  }
	};
//datasets for interaction
myExampleData.dataSetsp = [
[{
    "id": "US-AL",
    "value": 4447100
  }, {
    "id": "US-AK",
    "value": 626932
  }, {
    "id": "US-AZ",
    "value": 5130632
  }, {
    "id": "US-AR",
    "value": 2673400
  }, {
    "id": "US-CA",
    "value": 33871648
  }, {
    "id": "US-CO",
    "value": 4301261
  }, {
    "id": "US-CT",
    "value": 3405565
  }, {
    "id": "US-DE",
    "value": 783600
  }, {
    "id": "US-FL",
    "value": 15982378
  }, {
    "id": "US-GA",
    "value": 8186453
  }, {
    "id": "US-HI",
    "value": 1211537
  }, {
    "id": "US-ID",
    "value": 1293953
  }, {
    "id": "US-IL",
    "value": 12419293
  }, {
    "id": "US-IN",
    "value": 6080485
  }, {
    "id": "US-IA",
    "value": 2926324
  }, {
    "id": "US-KS",
    "value": 2688418
  }, {
    "id": "US-KY",
    "value": 4041769
  }, {
    "id": "US-LA",
    "value": 4468976
  }, {
    "id": "US-ME",
    "value": 1274923
  }, {
    "id": "US-MD",
    "value": 5296486
  }, {
    "id": "US-MA",
    "value": 6349097
  }, {
    "id": "US-MI",
    "value": 9938444
  }, {
    "id": "US-MN",
    "value": 4919479
  }, {
    "id": "US-MS",
    "value": 2844658
  }, {
    "id": "US-MO",
    "value": 5595211
  }, {
    "id": "US-MT",
    "value": 902195
  }, {
    "id": "US-NE",
    "value": 1711263
  }, {
    "id": "US-NV",
    "value": 1998257
  }, {
    "id": "US-NH",
    "value": 1235786
  }, {
    "id": "US-NJ",
    "value": 8414350
  }, {
    "id": "US-NM",
    "value": 1819046
  }, {
    "id": "US-NY",
    "value": 18976457
  }, {
    "id": "US-NC",
    "value": 8049313
  }, {
    "id": "US-ND",
    "value": 642200
  }, {
    "id": "US-OH",
    "value": 11353140
  }, {
    "id": "US-OK",
    "value": 3450654
  }, {
    "id": "US-OR",
    "value": 3421399
  }, {
    "id": "US-PA",
    "value": 12281054
  }, {
    "id": "US-RI",
    "value": 1048319
  }, {
    "id": "US-SC",
    "value": 4012012
  }, {
    "id": "US-SD",
    "value": 754844
  }, {
    "id": "US-TN",
    "value": 5689283
  }, {
    "id": "US-TX",
    "value": 20851820
  }, {
    "id": "US-UT",
    "value": 2233169
  }, {
    "id": "US-VT",
    "value": 608827
  }, {
    "id": "US-VA",
    "value": 7078515
  }, {
    "id": "US-WA",
    "value": 5894121
  }, {
    "id": "US-WV",
    "value": 1808344
  }, {
    "id": "US-WI",
    "value": 5363675
  }, {
    "id": "US-WY",
    "value": 493782
  }], 
  [{
	    "id": "US-AL",
	    "value": 2447100
	  }, {
	    "id": "US-AK",
	    "value": 326932
	  }, {
	    "id": "US-AZ",
	    "value": 2130632
	  }, {
	    "id": "US-AR",
	    "value": 2673400
	  }, {
	    "id": "US-CA",
	    "value": 34871648
	  }, {
	    "id": "US-CO",
	    "value": 4301261
	  }, {
	    "id": "US-CT",
	    "value": 5405565
	  }, {
	    "id": "US-DE",
	    "value": 983600
	  }, {
	    "id": "US-FL",
	    "value": 12982378
	  }, {
	    "id": "US-GA",
	    "value": 12186453
	  }, {
	    "id": "US-HI",
	    "value": 2211537
	  }, {
	    "id": "US-ID",
	    "value": 3293953
	  }, {
	    "id": "US-IL",
	    "value": 42419293
	  }, {
	    "id": "US-IN",
	    "value": 1080485
	  }, {
	    "id": "US-IA",
	    "value": 2826324
	  }, {
	    "id": "US-KS",
	    "value": 1688418
	  }, {
	    "id": "US-KY",
	    "value": 2041769
	  }, {
	    "id": "US-LA",
	    "value": 1468976
	  }, {
	    "id": "US-ME",
	    "value": 1274923
	  }, {
	    "id": "US-MD",
	    "value": 2296486
	  }, {
	    "id": "US-MA",
	    "value": 3349097
	  }, {
	    "id": "US-MI",
	    "value": 6938444
	  }, {
	    "id": "US-MN",
	    "value": 4919479
	  }, {
	    "id": "US-MS",
	    "value": 2844658
	  }, {
	    "id": "US-MO",
	    "value": 5595211
	  }, {
	    "id": "US-MT",
	    "value": 7702195
	  }, {
	    "id": "US-NE",
	    "value": 55711263
	  }, {
	    "id": "US-NV",
	    "value": 17698257
	  }, {
	    "id": "US-NH",
	    "value": 1235786
	  }, {
	    "id": "US-NJ",
	    "value": 8414350
	  }, {
	    "id": "US-NM",
	    "value": 1819046
	  }, {
	    "id": "US-NY",
	    "value": 18976457
	  }, {
	    "id": "US-NC",
	    "value": 8049313
	  }, {
	    "id": "US-ND",
	    "value": 642200
	  }, {
	    "id": "US-OH",
	    "value": 11353140
	  }, {
	    "id": "US-OK",
	    "value": 3450654
	  }, {
	    "id": "US-OR",
	    "value": 3421399
	  }, {
	    "id": "US-PA",
	    "value": 12281054
	  }, {
	    "id": "US-RI",
	    "value": 1048319
	  }, {
	    "id": "US-SC",
	    "value": 4012012
	  }, {
	    "id": "US-SD",
	    "value": 754844
	  }, {
	    "id": "US-TN",
	    "value": 5689283
	  }, {
	    "id": "US-TX",
	    "value": 20851820
	  }, {
	    "id": "US-UT",
	    "value": 2233169
	  }, {
	    "id": "US-VT",
	    "value": 608827
	  }, {
	    "id": "US-VA",
	    "value": 7078515
	  }, {
	    "id": "US-WA",
	    "value": 5894121
	  }, {
	    "id": "US-WV",
	    "value": 1808344
	  }, {
	    "id": "US-WI",
	    "value": 5363675
	  }, {
	    "id": "US-WY",
	    "value": 493782
	  }],
	  [{
		    id: "US-AK",
		    value: 226932
		  }, {
		    id: "US-CA",
		    value: 123871648
		  }, {
		    id: "US-FL",
		    value: 112982378
		  }, {
		    id: "US-IL",
		    value: 222419293
		  }, {
		    id: "US-NY",
		    value: 14976457
		  }, {
		    id: "US-TX",
		    value: 2851820
	}],
	 [{
		    id: "US-AK",
		    value: 2431233
		  }, {
		    id: "US-CA",
		    value: 25646466
		  }, {
		    id: "US-FL",
		    value: 31231333
		  }, {
		    id: "US-IL",
		    value: 24584796
		  }, {
		    id: "US-NY",
		    value: 41213132
		  }, {
		    id: "US-TX",
		    value: 42356464
		  }]
];

myExampleData.mapDataCustomerLocUS =	{
		  "type": "map",
		  "theme": "light",
		  "colorSteps": 10,
		  "imagesSettings": {
			   "rollOverColor": "#089282",
			   "rollOverScale": 3,
			   "selectedScale": 3,
			   "selectedColor": "#089282",
			   "color": "#13564e"
		  },
		  "dataProvider": {
		    "map": "usaLow",
		    "zoomLatitude": 0,
		    "zoomLongitude": 0,
		    "areas": myExampleData.dataSetsp[0]  
		  },
		  "areasSettings": {
		    "autoZoom": true,
		    "unlistedAreasColor": "#15A892",
			"outlineThickness": 0.1
		  },

		  "valueLegend": {
		    "right": 10,
		    "minValue": "little",
		    "maxValue": "a lot!"
		  }

};


myExampleData.amchartsMapData =	{
		   "type": "map",
		  "theme": "light",
		  "projection": "miller",
		 /* "imagesSettings": {
		    "rollOverColor": "#089282",
		    "rollOverScale": 3,
		    "selectedScale": 3,
		    "selectedColor": "#089282",
		    "color": "#13564e"
		  },*/
		  "imagesSettings": {
			   "rollOverColor": "#089282",
			   "rollOverScale": 3,
			   "selectedScale": 3,
			   "selectedColor": "#089282",
			   "color": "#13564e"
		  },
		  "areasSettings": {
		    "unlistedAreasColor": "#15A892"
		  },		
		 "backgroundZoomsToTop": true,
		  "dataProvider": {		    
			  "map": "worldLow",
		     "images": [{		 
		     /* "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "Brussels",
		      "latitude": 50.8371,
		      "longitude": 4.3676*/
		      "label": "SF Breweries",
	          "left": 100,
	          "top": 45,
	          "labelShiftY": 5,
	          "color": "#CC0000",
	          "labelColor": "#CC0000",
	          "labelRollOverColor": "#CC0000",
	          "labelFontSize": 20	  
		      
		    }, {
		    	  "svgPath": myExampleData.targetSVG,
			      "zoomLevel": 5,
			      "scale": 0.5,
			      "title": "Atmosphere",
			      "id": "Atmosphere",
			      "latitude": 33.448376,
			      "longitude": -132.074036
			     
		    }, {
		    
		      "svgPath": myExampleData.targetSVG,
			  "zoomLevel": 5,
			  "scale": 0.5,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "BlackSands Brewery",
		      "latitude": 48.8567,
		      "longitude": 2.3510
		    }, {
		    	
		      "svgPath": myExampleData.targetSVG,
			  "zoomLevel": 5,
			  "scale": 0.5,
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "title": "SpeakeasyAles Lagers",
		      "latitude": 64.1353,
		      "longitude": -21.8952
		    }, {
		    	
		      "svgPath": myExampleData.targetSVG,
			  "zoomLevel": 5,
			  "scale": 0.5,
		      "title": "BlackHammer Brewing",
		      "latitude": 55.7558,
		      "longitude": 37.6176
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "Harmonic Brewing",
		      "latitude": 40.4167,
		      "longitude": -3.7033
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "BarebottleBrewing Company",
		      "latitude": 51.5002,
		      "longitude": -0.1262,
		    
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "LaughingMonk Brewing",
		      "latitude": 39.9056,
		      "longitude": 116.3958
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "TripleVoodoo Brewery",
		      "latitude": 28.6353,
		      "longitude": 77.2250
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "SocialKitchen Brewery",
		      "latitude": 35.6785,
		      "longitude": 139.6823,
		    
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "LocalBrewing Co",
		      "latitude": 39.9439,
		      "longitude": 32.8560
		    }, {
		      "zoomLevel": 5,
		      "scale": 0.5,
		      "svgPath": myExampleData.targetSVG,
		      "title": "AnchorBrewers Distillers",
		      "latitude": 38.8921,
		      "longitude": -77.0241
		    }]	
		  }
};


myExampleData.amchartsMapDataTest =	{
	  "type": "map",
	  "theme": "light",
	  "projection": "miller",

	  "imagesSettings": {
	    "rollOverColor": "#089282",
	    "rollOverScale": 3,
	    "selectedScale": 3,
	    "selectedColor": "#089282",
	    "color": "#13564e"
	  },

	  "areasSettings": {
	    "unlistedAreasColor": "#15A892"
	  },

	  "dataProvider": {
	    "map": "worldLow",
	    "images": [ {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Brussels",
	      "latitude": 50.8371,
	      "longitude": 4.3676
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Copenhagen",
	      "latitude": 55.6763,
	      "longitude": 12.5681
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Paris",
	      "latitude": 48.8567,
	      "longitude": 2.3510
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Reykjavik",
	      "latitude": 64.1353,
	      "longitude": -21.8952
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Moscow",
	      "latitude": 55.7558,
	      "longitude": 37.6176
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Madrid",
	      "latitude": 40.4167,
	      "longitude": -3.7033
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "London",
	      "latitude": 51.5002,
	      "longitude": -0.1262,
	     // "url": "http://www.google.co.uk"
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Peking",
	      "latitude": 39.9056,
	      "longitude": 116.3958
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "New Delhi",
	      "latitude": 28.6353,
	      "longitude": 77.2250
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Tokyo",
	      "latitude": 35.6785,
	      "longitude": 139.6823,
	     // "url": "http://www.google.co.jp"
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Ankara",
	      "latitude": 39.9439,
	      "longitude": 32.8560
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Buenos Aires",
	      "latitude": -34.6118,
	      "longitude": -58.4173
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Brasilia",
	      "latitude": -15.7801,
	      "longitude": -47.9292
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Ottawa",
	      "latitude": 45.4235,
	      "longitude": -75.6979
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Washington",
	      "latitude": 38.8921,
	      "longitude": -77.0241
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Kinshasa",
	      "latitude": -4.3369,
	      "longitude": 15.3271
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Cairo",
	      "latitude": 30.0571,
	      "longitude": 31.2272
	    }, {
	      "zoomLevel": 5,
	      "scale": 0.5,
	      "title": "Pretoria",
	      "latitude": -25.7463,
	      "longitude": 28.1876
	    }]
	  }
};


/*myExampleData.amchartsCountryMapData =	{
		  "type": "map",
		  "theme": "light",
		  "projection": "miller",

		  "dataProvider": {
		    "map": "worldLow",
		    "getAreasFromMap": true
		  },
		  "areasSettings": {
		    "autoZoom": true,
		    "selectedColor": "#CC0000"
		  },
};*/
	

/**
 * C3 data
 */
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//c3  chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

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
	colors: {
          data1: 'rgb(69,117,180)',
          data2: 'rgb(26, 118, 255)',
          data3: 'rgb(49,54,149)'
    }/*,
	onclick : function(d, i) {
		console.log("onclick", d, i);
	},
	onmouseover : function(d, i) {
		console.log("onmouseover", d, i);
	},
	onmouseout : function(d, i) {
		console.log("onmouseout", d, i);
	}*/
};
myExampleData.c3linedata = {
	columns : [ [ 'data1', 30, 200, 100, 400, 150, 250 ],
			[ 'data2', 50, 20, 10, 40, 15, 25 ] ]
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//c3 pie chart sample data Dashboard 4
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

myExampleData.c3piedata = {
	// iris data from R
	columns : [
			[ "LA Breweries", 0.2, 0.2, 0.2, 0.2, 0.2, 0.4, 0.3, 0.2, 0.2, 0.1, 0.2,
					0.2, 0.1, 0.1, 0.2, 0.4, 0.4, 0.3, 0.3, 0.3, 0.2, 0.4, 0.2,
					0.5, 0.2, 0.2, 0.4, 0.2, 0.2, 0.2, 0.2, 0.4, 0.1, 0.2, 0.2,
					0.2, 0.2, 0.1, 0.2, 0.2, 0.3, 0.3, 0.2, 0.6, 0.4, 0.3, 0.2,
					0.2, 0.2, 0.2 ],
			[ "SF Breweries", 1.4, 1.5, 1.5, 1.3, 1.5, 1.3, 1.6, 1.0, 1.3, 1.4,
					1.0, 1.5, 1.0, 1.4, 1.3, 1.4, 1.5, 1.0, 1.5, 1.1, 1.8, 1.3,
					1.5, 1.2, 1.3, 1.4, 1.4, 1.7, 1.5, 1.0, 1.1, 1.0, 1.2, 1.6,
					1.5, 1.6, 1.5, 1.3, 1.3, 1.3, 1.2, 1.4, 1.2, 1.0, 1.3, 1.2,
					1.3, 1.3, 1.1, 1.3 ],
			[ "NY Breweries", 2.5, 1.9, 2.1, 1.8, 2.2, 2.1, 1.7, 1.8, 1.8, 2.5,
					2.0, 1.9, 2.1, 2.0, 2.4, 2.3, 1.8, 2.2, 2.3, 1.5, 2.3, 2.0,
					2.0, 1.8, 2.1, 1.8, 1.8, 1.8, 2.1, 1.6, 1.9, 2.0, 2.2, 1.5,
					1.4, 2.3, 2.4, 1.8, 1.8, 2.1, 2.4, 2.3, 1.9, 2.3, 2.5, 2.3,
					1.9, 2.0, 2.3, 1.8 ], ],
	type : 'pie',
	colors: {
		'LA Breweries': 'rgb(69,117,180)',
		'SF Breweries': 'rgb(26, 118, 255)',
		'NY Breweries': 'rgb(49,54,149)'
	},
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
	name : '<b>Desperado</b>',
	type : 'scatter',
	marker : {
	//	color : 'rgb(55, 83, 109)',
		color : '#FF0000',
		opacity : 0.6
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}

};
var trace2 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48 ],
	name : '<b>Tiger</b>',
	type : 'scatter',
	marker : {
		//color : 'rgb(26, 118, 255)',
		color : '#1ABC9C',	
		opacity : 0.6
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
};
myExampleData.plotlylinedata = [ trace1, trace2 ];
myExampleData.plotlylinelayout = {
	title : '<b>How old are they ?</b>',
	xaxis : {
		title : 'Age',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : '<b>Number of customers</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	titlefont : {
		family : 'Helvetica',
		size : 18,
		color : '#7f7f7f'
	},
	autosize : true,
	paper_bgcolor:'#FFFFFF',
	plot_bgcolor:'#FFFFFF'
};

myExampleData.plotlylineconfig = {
	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false,
	displayModeBar: 'true'
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bubble chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	mode : 'markers',
	marker : {
		size : [ 40, 60, 80, 100 ],
		//color : 'rgb(26, 118, 255)',
		color : '#FF0000', 
		opacity : 0.6

		
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
};

var trace2 = {
		x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
		y : [ 68, 73, 74, 76, 65, 70, 98, 88, 76, 74, 87, 76 ],
		mode : 'markers',
		marker : {
			size : [ 30, 65, 75, 90 ],
			//color : 'rgb(26, 118, 255)',
			color : '#32c5d2',
			opacity : 0.6

		},
		textfont:{
			color:'rgb(255,255,255)',
			family:'Helvetica'
		}
};

myExampleData.plotlyBubbleData = [ trace1 ];

myExampleData.plotlyRefreshBubbleData = [ trace2 ];

myExampleData.plotlyBubbleLayout = {
	title : '<b>Age groups</b>',	
	xaxis : {
		title : '<b>Age</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : '<b>Number of customers</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	titlefont : {
		family : 'Helvetica',
		size : 18,
		color : '#7f7f7f'
	},
	showlegend : false,
	paper_bgcolor:'#FFFFFF',//E0E0E0
	plot_bgcolor:'#FFFFFF'
	
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bubble chart sample data - drawboard4 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	mode : 'markers',
	marker : {
		size : [ 40, 60, 80, 100 ],
		//color : 'rgb(26, 118, 255)',
		color : '#1ABC9C',
		opacity : 0.6

		
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
};

var trace2 = {
		x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
		y : [ 68, 73, 74, 76, 65, 70, 98, 88, 76, 74, 87, 76 ],
		mode : 'markers',
		marker : {
			size : [ 30, 65, 75, 90 ],
			//color : 'rgb(26, 118, 255)',
			color : '#FF0000',
			opacity : 0.6

		},
		textfont:{
			color:'rgb(255,255,255)',
			family:'Helvetica'
		}
};

myExampleData.plotlyBubbleData = [ trace1 ];

myExampleData.plotlyRefreshBubbleData = [ trace2 ];

myExampleData.plotlyBubbleLayout = {
	title : '<b>Age groups</b>',	
	xaxis : {
		title : '<b>Age</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : '<b>Number of customers</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	titlefont : {
		family : 'Helvetica',
		size : 18,
		color : '#7f7f7f'
	},
	showlegend : false,
	paper_bgcolor:'#FFFFFF',//E0E0E0
	plot_bgcolor:'#FFFFFF'
	
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly column chart sample data starts here  -Day Wise
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
		  x: [20, 14, 23, 8, 11, 25 ],
		  y : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>'],
		  name: '<b>SF Breweries</b>',
		  orientation: 'h',
		  marker: {
		  // color: 'rgb(55, 83, 109)',
		   color : '#2C3E50', // #1ABC9C
		   opacity: 0.6
		    
		  },
		  type: 'bar'
		};

		var trace2 = {
		  x: [12, 18, 29, 11, 15, 21],
		  y : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>'],
		  name: '<b>LA Breweries</b>',
		  orientation: 'h',
		  type: 'bar',
		  marker: {
//		   color: 'rgb(26, 118, 255)',
		  color : '#32c5d2',//#2C3E50
		  opcacity: 0.6
		    
		  },
			textfont:{
				color:'rgb(255,255,255)',
				family:'Helvetica'
			}
		};

		var data = [trace1, trace2];
		myExampleData.plotlycolumndata = data;

		var layout = {
		  title: '<b>Number of records</b>',
		  titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
		  },
		  barmode: 'group',
		  paper_bgcolor:'#FFFFFF',//E0E0E0
		  plot_bgcolor:'#FFFFFF'
		};
		

		myExampleData.plotlycolumnlayout = layout;
	
		myExampleData.plotlycolumnconfig = {
				modeBarButtonsToRemove : [ 'sendDataToCloud' ],
				displaylogo : false
		};
	myExampleData.plotlybubble2data = 	[{
		"mode": "markers",
		"name": "<b>Asia</b>",
		"x": ["43.828", "75.635", "64.062", "59.723", "72.961", "82.208", "64.698", "70.65", "70.964", "59.545", "80.745", "82.603", "72.535", "67.297", "78.623", "77.588", "71.993", "74.241", "66.803", "62.069", "63.785", "75.64", "65.483", "71.688", "72.777", "79.972", "72.396", "74.143", "78.4", "70.616", "74.249", "73.422", "62.698"],
		"y": ["974.5803384", "29796.04834", "1391.253792", "1713.778686", "4959.114854", "39724.97867", "2452.210407", "3540.651564", "11605.71449", "4471.061906", "25523.2771", "31656.06806", "4519.461171", "1593.06548", "23348.13973", "47306.98978", "10461.05868", "12451.6558", "3095.772271", "944", "1091.359778", "22316.19287", "2605.94758", "3190.481016", "21654.83194", "47143.17964", "3970.095407", "4184.548089", "28718.27684", "7458.396327", "2441.576404", "3025.349798", "2280.769906"],
		"text": ["Afghanistan", "Bahrain", "Bangladesh", "Cambodia", "China", "Hong Kong, China", "India", "Indonesia", "Iran", "Iraq", "Israel", "Japan", "Jordan", "Korea, Dem. Rep.", "Korea, Rep.", "Kuwait", "Lebanon", "Malaysia", "Mongolia", "Myanmar", "Nepal", "Oman", "Pakistan", "Philippines", "Saudi Arabia", "Singapore", "Sri Lanka", "Syria", "Taiwan", "Thailand", "Vietnam", "West Bank and Gaza", "Yemen, Rep."],
		"marker": {
			"sizemode": "area",
			"size": ["31889923", "708573", "150448339", "14131858", "1318683096", "6980412", "1110396331", "223547000", "69453570", "27499638", "6426679", "127467972", "6053193", "23301725", "49044790", "2505559", "3921278", "24821286", "2874127", "47761980", "28901790", "3204897", "169270617", "91077287", "27601038", "4553009", "20378239", "19314747", "23174294", "65068149", "85262356", "4018332", "22211743"],
			"sizeref": 200000,
			//color: 'rgb(69,117,180)'
			color : '#32c5d2', //Blue (green #138D75)
		}
	}, {
		"mode": "markers",
		"name": "<b>Europe</b>",
		"x": ["76.423", "79.829", "79.441", "74.852", "73.005", "75.748", "76.486", "78.332", "79.313", "80.657", "79.406", "79.483", "73.338", "81.757", "78.885", "80.546", "74.543", "79.762", "80.196", "75.563", "78.098", "72.476", "74.002", "74.663", "77.926", "80.941", "80.884", "81.701", "71.777", "79.425"],
		"y": ["5937.029526", "36126.4927", "33692.60508", "7446.298803", "10680.79282", "14619.22272", "22833.30851", "35278.41874", "33207.0844", "30470.0167", "32170.37442", "27538.41188", "18008.94444", "36180.78919", "40675.99635", "28569.7197", "9253.896111", "36797.93332", "49357.19017", "15389.92468", "20509.64777", "10808.47561", "9786.534714", "18678.31435", "25768.25759", "28821.0637", "33859.74835", "37506.41907", "8458.276384", "33203.26128"],
		"text": ["Albania", "Austria", "Belgium", "Bosnia and Herzegovina", "Bulgaria", "Croatia", "Czech Republic", "Denmark", "Finland", "France", "Germany", "Greece", "Hungary", "Iceland", "Ireland", "Italy", "Montenegro", "Netherlands", "Norway", "Poland", "Portugal", "Romania", "Serbia", "Slovak Republic", "Slovenia", "Spain", "Sweden", "Switzerland", "Turkey", "United Kingdom"],
		"marker": {
			"sizemode": "area",
			"size": ["3600523", "8199783", "10392226", "4552198", "7322858", "4493312", "10228744", "5468120", "5238460", "61083916", "82400996", "10706290", "9956108", "301931", "4109086", "58147733", "684736", "16570613", "4627926", "38518241", "10642836", "22276056", "10150265", "5447502", "2009245", "40448191", "9031088", "7554661", "71158647", "60776238"],
			"sizeref": 200000,
			//color:  'rgb(26, 118, 255)'
			color : '#FF0000', // orange 
		}
	}, {
		"mode": "markers",
		"name": "<b>Africa</b>",
		"x": ["72.301", "42.731", "56.728", "50.728", "52.295", "49.58", "50.43", "44.741", "50.651", "65.152", "46.462", "55.322", "48.328", "54.791", "71.338", "51.579", "58.04", "52.947", "56.735", "59.448", "60.022", "56.007", "46.388", "54.11", "42.592", "45.678", "73.952", "59.443", "48.303", "54.467", "64.164", "72.801", "71.164", "42.082", "52.906", "56.867", "46.859", "76.442", "46.242", "65.528", "63.062", "42.568", "48.159", "49.339", "58.556", "39.613", "52.517", "58.42", "73.923", "51.542", "42.384", "43.487"],
		"y": ["6223.367465", "4797.231267", "1441.284873", "12569.85177", "1217.032994", "430.0706916", "2042.09524", "706.016537", "1704.063724", "986.1478792", "277.5518587", "3632.557798", "1544.750112", "2082.481567", "5581.180998", "12154.08975", "641.3695236", "690.8055759", "13206.48452", "752.7497265", "1327.60891", "942.6542111", "579.231743", "1463.249282", "1569.331442", "414.5073415", "12057.49928", "1044.770126", "759.3499101", "1042.581557", "1803.151496", "10956.99112", "3820.17523", "823.6856205", "4811.060429", "619.6768924", "2013.977305", "7670.122558", "863.0884639", "1598.435089", "1712.472136", "862.5407561", "926.1410683", "9269.657808", "2602.394995", "4513.480643", "1107.482182", "882.9699438", "7092.923025", "1056.380121", "1271.211593", "469.7092981"],
		"text": ["Algeria", "Angola", "Benin", "Botswana", "Burkina Faso", "Burundi", "Cameroon", "Central African Republic", "Chad", "Comoros", "Congo, Dem. Rep.", "Congo, Rep.", "Cote d'Ivoire", "Djibouti", "Egypt", "Equatorial Guinea", "Eritrea", "Ethiopia", "Gabon", "Gambia", "Ghana", "Guinea", "Guinea-Bissau", "Kenya", "Lesotho", "Liberia", "Libya", "Madagascar", "Malawi", "Mali", "Mauritania", "Mauritius", "Morocco", "Mozambique", "Namibia", "Niger", "Nigeria", "Reunion", "Rwanda", "Sao Tome and Principe", "Senegal", "Sierra Leone", "Somalia", "South Africa", "Sudan", "Swaziland", "Tanzania", "Togo", "Tunisia", "Uganda", "Zambia", "Zimbabwe"],
		"marker": {
			"sizemode": "area",
			"size": ["33333216", "12420476", "8078314", "1639131", "14326203", "8390505", "17696293", "4369038", "10238807", "710960", "64606759", "3800610", "18013409", "496374", "80264543", "551201", "4906585", "76511887", "1454867", "1688359", "22873338", "9947814", "1472041", "35610177", "2012649", "3193942", "6036914", "19167654", "13327079", "12031795", "3270065", "1250882", "33757175", "19951656", "2055080", "12894865", "135031164", "798094", "8860588", "199579", "12267493", "6144562", "9118773", "43997828", "42292929", "1133066", "38139640", "5701579", "10276158", "29170398", "11746035", "12311143"],
			"sizeref": 200000,
			//color: 'rgb(49,54,149)'
			color : '#F4D03F', // yellow
		}
	}, {
		"mode": "markers",
		"name": "<b>Oceania</b>",
		"x": ["81.235", "80.204"],
		"y": ["34435.36744", "25185.00911"],
		"text": ["Australia", "New Zealand"],
		"marker": {
			"sizemode": "area",
			"size": ["20434176", "4115771"],
			"sizeref": 200000,
			//color: 'rgb(116,173,209)'
			color : '#F4D03F', // yellow
		}
	}, {
		"mode": "markers",
		"name": "<b>Americas</b>",
		"x": ["75.32", "65.554", "72.39", "80.653", "78.553", "72.889", "78.782", "78.273", "72.235", "74.994", "71.878", "70.259", "60.916", "70.198", "72.567", "76.195", "72.899", "75.537", "71.752", "71.421", "78.746", "69.819", "78.242", "76.384", "73.747"],
		"y": ["12779.37964", "3822.137084", "9065.800825", "36319.23501", "13171.63885", "7006.580419", "9645.06142", "8948.102923", "6025.374752", "6873.262326", "5728.353514", "5186.050003", "1201.637154", "3548.330846", "7320.880262", "11977.57496", "2749.320965", "9809.185636", "4172.838464", "7408.905561", "19328.70901", "18008.50924", "42951.65309", "10611.46299", "11415.80569"],
		"text": ["Argentina", "Bolivia", "Brazil", "Canada", "Chile", "Colombia", "Costa Rica", "Cuba", "Dominican Republic", "Ecuador", "El Salvador", "Guatemala", "Haiti", "Honduras", "Jamaica", "Mexico", "Nicaragua", "Panama", "Paraguay", "Peru", "Puerto Rico", "Trinidad and Tobago", "United States", "Uruguay", "Venezuela"],
		"marker": {
			"sizemode": "area",
			"size": ["40301927", "9119152", "190010647", "33390141", "16284741", "44227550", "4133884", "11416987", "9319622", "13755680", "6939688", "12572928", "8502814", "7483763", "2780132", "108700891", "5675356", "3242173", "6667147", "28674757", "3942491", "1056608", "301139947", "3447496", "26084662"],
			"sizeref": 200000,
			//color: 'rgb(171,217,233)'
			color : '#8E44AD', //Purple  (black-#2C3E50) 
		}
	}];
	var layout = {
			  xaxis: {title: ' '},
			  yaxis: {
			  title: '<b>Revenue in million $</b>', 
			  titlefont : {
						family : 'Helvetica',
						size : 18,
						color : '#7f7f7f'
			  },
			  type: 'log'},
			  margin: {t: 20},
			  hovermode: 'closest',
	          paper_bgcolor:'#FFFFFF',//E0E0E0
			  plot_bgcolor:'#FFFFFF'
			};
			
			myExampleData.plotlybubble2layout = layout;
			
			myExampleData.plotlybubble2config = {showLink: false, modeBarButtonsToRemove : [ 'sendDataToCloud' ],
					displaylogo : false };
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bar and line chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
		  y: [1.5, 1, 1.3, 0.7, 0.8, 0.9, 1.1, 1.3, 1.5, 1, 1.4, 0.6, 1.3],
		  type: 'bar',
		  name: '<b>SF Brewries</b>',
		  marker : {
				//color : 'rgb(26, 118, 255)',
			  	color : '#32c5d2',//#138D75
				opacity : 0.6
			},
			textfont:{
				color:'rgb(255,255,255)',
				family:'Helvetica'
			}
		};

var trace2 = {
		  x: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
		  y: [1, 0.5, 0.7, 1.2, 0.3, 0.4, 0.6, 0.7, 1, 0.5, 0.8, 0.9, 1.3],
		  type: 'scatter',
		  name: '<b>LA Brewries</b>',
		  marker : {
				//color : 'rgb(55, 83, 109)',
			  	color : '#2C3E50', //#2C3E50
				opacity : 0.6
			},
			textfont:{
				color:'rgb(255,255,255)',
				family:'Helvetica'
			}

		};
		
var barlinelayout = {
		
		xaxis: {title: "<b>Hours</b>",
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			} },
		yaxis: {title: "<b>Number of redemptions</b>" ,
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}},
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		},
        paper_bgcolor:'#FFFFFF',//E0E0E0
		plot_bgcolor:'#FFFFFF'
}

		myExampleData.plotlybarlinedata = [trace1, trace2];
		myExampleData.plotlybarlinelayout = barlinelayout;
		myExampleData.plotlybarlineconfig = {
				modeBarButtonsToRemove : [ 'sendDataToCloud' ],
				displaylogo : false,
				displayModeBar: 'true'
			};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly area graph sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
	var trace1 = {
				  x: [1, 2.5, 3.5, 4.5,5], 
				  y: [2, 3, 2, 3.5,2], 
				  fill: 'tozeroy', 
				  type: 'scatter',
				  name: '<b>SF Brewries</b>',
				  mode: 'lines',
				  marker : {
						//color : 'rgb(55, 83, 109)',
					  	color : '#F4D03F', //'#138D75', green
						opacity : 0.6
					},
					textfont:{
						color:'rgb(255,255,255)',
						family:'Open Sans'
					}

				};

	var trace2 = {
				  x: [1, 2, 3, 4,5], 
				  y: [3, 5, 4, 7,4], 
				  fill: 'tonexty', 
				  type: 'scatter',
				  name: '<b>LA Brewries</b>',
				  mode: 'lines',
				  marker : {
						//color : 'rgb(26, 118, 255)',
					  	color : '#32c5d2', //'#2C3E50', //  black
						opacity : 0.6
					},
					textfont:{
						color:'rgb(255,255,255)',
						family:'Open Sans'
					}
				};
				
	var arealayout = {
				title: "<b>Numbers of redemptions</b>",
				xaxis: {title: "<b>Hours</b>" ,
					titlefont : {
						family : 'Helvetica',
						size : 18,
						color : '#7f7f7f'
					}},
				yaxis: {title: "<b>Number of redemptions</b>" ,
					titlefont : {
						family : 'Helvetica',
						size : 18,
						color : '#7f7f7f'
					}},
				titlefont : {
						family : 'Helvetica',
						size : 18,
						color : '#7f7f7f'
				},
		        paper_bgcolor:'#FFFFFF',//E0E0E0
				plot_bgcolor:'#FFFFFF'
		}

		myExampleData.plotlyareadata = [trace1, trace2];
		myExampleData.plotlyarealayout = arealayout;
		myExampleData.plotlyareaconfig = {
						modeBarButtonsToRemove : [ 'sendDataToCloud' ],
						displaylogo : false
		};


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly stacked bar chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>','<b>brand3</b>', '<b>brand4</b>', '<b>brand5</b>', '<b>brand9</b>', '<b>brand10</b>', '<b>brand11</b>'],
	y : [ 20, 14, 23, 25, 34, 36, 78, 44, 43, 47, 55, 32 ],
	name : '<b>SF Breweries</b>',
	type : 'bar',
	marker : {
		//color : 'rgb(55, 83, 109)',
		color : '#32c5d2', // green #138D75  
		opacity : 0.6
	}
};

var trace2 = {
	x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>','<b>brand3</b>', '<b>brand4</b>', '<b>brand5</b>', '<b>brand9</b>', '<b>brand10</b>', '<b>brand11</b>'],
	y : [ 12, 18, 39, 22, 28, 19, 18, 58, 49, 65, 63, 71],
	name : '<b>LA Breweries</b>',
	type : 'bar',
	marker : {
		//color : 'rgb(26, 118, 255)',
		color : '#2C3E50', //  black
		opacity : 0.6
	}
};

var trace3 = {
		x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>','<b>brand3</b>', '<b>brand4</b>', '<b>brand5</b>', '<b>brand9</b>', '<b>brand10</b>', '<b>brand11</b>'],
		y : [ 21, 18, 43, 22, 28, 45, 18, 17, 49, 71, 63, 33],
		name : '<b>NY Breweries</b>',
		type : 'bar',
		marker : {
			//color : 'rgb(171,217,233)',
			color : '#e7505a', // orange 
			opacity : 0.6
		}
};


var trace4 = {
		x : [ 'Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger', 'brand2','brand3', 'brand4', 'brand5', 'brand9', 'brand10', 'brand11'],
		y : [ 22, 24, 33,45, 44, 26,68, 64, 63, 47, 49, 35 ],
		name : 'XL Breweries',
		type : 'bar',
		marker : {
			//color : 'rgb(116,173,209)',
			color : '#1ABC9C', // orange 
			opacity : 0.4
		}
};

var trace5 = {
		x : ['Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger', 'brand2','brand3', 'brand4', 'brand5', 'brand9', 'brand10', 'brand11'],
		y : [ 12, 14, 33, 22, 38, 19, 28, 53, 69, 71, 29, 50 ],
		name : 'YZ Breweries',
		type : 'bar',
		marker : {
			//color : 'rgb(254,224,144)'
			color : '#1ABC9C', // green
			opacity : 0.4
		}
};

var trace6 = {
		x : ['Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger', 'brand2','brand3', 'brand4', 'brand5', 'brand9', 'brand10', 'brand11'],
		y : [ 9, 14, 45, 22, 38, 19, 51, 53, 22, 65, 29, 59 ],
		name : 'XZ Breweries',
		type : 'bar',
		marker : {
			//color : 'rgb(165,0,38)',
			color : '#2C3E50', //  black
			opacity : 0.4
		}
};

myExampleData.barGroupChartData = [ trace1, trace2, trace3];
myExampleData.barGroupRefreshChartData = [ trace4, trace5, trace6 ,trace3];
myExampleData.barGroupChartLayout = {
		title : '<b>Revenue in US $</b>',	
		xaxis : {
			title : '<b>Brands</b>',
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}
		},
		yaxis : {
			title : '<b>Million $</b>',
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}
		},
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		},
		barmode : 'stack',
		autosize : true,
        paper_bgcolor:'#FFFFFF',//E0E0E0
		plot_bgcolor:'#FFFFFF'
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly pie chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
myExampleData.plotlypiedata = [ {
	values : [ 19, 26, 35, 10, 10 ],
	labels : [ '<b>Tiger</b>', '<b>Heiniken</b>', '<b>Brand1</b>', '<b>Brand2</b>', '<b>Brand3</b>' ],
	type : 'pie',
	marker: {
		//colors:  ['rgb(69,117,180)', 'rgb(26, 118, 255)', 'rgb(49,54,149)', 'rgb(116,173,209)', 'rgb(171,217,233)'],
		colors:  ['#2C3E50', '#3598dc', '#e7505a', '#F4D03F', '#32c5d2'],
		opacity: 0.6
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
}];

myExampleData.plotlypielayout = {
  title : '<b>Revenue in US $</b>',
  titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
  },
  autosize : true,
  paper_bgcolor:'#FFFFFF',//E0E0E0
  plot_bgcolor:'#FFFFFF'

};
myExampleData.plotlypieconfig = {
	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false,
	displayModeBar: 'true'
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//table widget sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
myExampleData.constructTableWidgetData = function() {
	return ["<b>Brand " + Math.ceil(Math.random() * 20) + "</b>",
			"<b>Internet explorer" + Math.ceil(Math.random() * 20) + "</b>"]
};
myExampleData.tableWidgetData = {
	"aaData" : [ myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData(),
			myExampleData.constructTableWidgetData()],

	"aoColumns" : [ {
		"sTitle" : "<b>Engine</b>",
		'orderable': true
	}, {
		"sTitle" : "<b>Browser</b>"
	}],
/*	"columnDefs": [
        {  // set default column settings
            'orderable': false,
            'targets': [0]
        }, 
        {
            "searchable": false,
            "targets": [0]
        },
        {
            "className": "dt-right", 
            //"targets": [2]
        }
    ],*/
	"iDisplayLength" : 5,
	"aLengthMenu" : [
        [5, 15, 20, -1],
        [5, 15, 20, "All"] // change per page values here
    ],
	"bPaginate" : true,
	"bLengthChange":true,
	"bAutoWidth" : true,
//	"buttons":[ 'copyHtml5','excelHtml5','csvHtml5','pdfHtml5']
};


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//do-nut widget config
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
myExampleData.donutWidgetData = [{
	  values: [16, 15, 6, 22, 32],
	  labels: ['<b>US</b>', '<b>China</b>', '<b>Russia</b>', '<b>India</b>', '<b>Rest of World</b>' ],
	  domain: {
	    x: [0, .48]
	  },
	  name: '<b>Consumptions</b>',
	  hoverinfo: 'label+percent+name',
	  hole: .4,
	  type: 'donut',
	  marker: {
		  //colors:  ['rgb(69,117,180)', 'rgb(26, 118, 255)', 'rgb(49,54,149)', 'rgb(116,173,209)', 'rgb(171,217,233), rgb(36, 55, 57), rgb(34, 53, 101),rgb(55, 83, 109)'],
		  colors:  ['#2C3E50', '#F4D03F', '#95A5A6', '#32c5d2','#e7505a'],
		  opacity: 0.6
	  },
		textfont:{
			color:'rgb(255,255,255)',
			family:'Helvetica'
		}
	}/*,{
	  values: [15, 11, 25, 8, 12, 25],
	  labels: ['US', 'China', 'European Union', 'Russian Federation', 'India', 'Rest of World' ],
	  text: 'CO2',
	  textposition: 'inside',
	  domain: {x: [.52, 1]},
	  name: 'CO2 Emissions',
	  hoverinfo: 'label+percent+name',
	  hole: .4,
	  type: 'pie',
	  marker: {
		  colors:  ['rgb(69,117,180)', 'rgb(26, 118, 255)', 'rgb(49,54,149)', 'rgb(116,173,209)', 'rgb(171,217,233), rgb(36, 55, 57), rgb(34, 53, 101),rgb(55, 83, 109)'],
			opacity: 0.6
	  }
	}*/];

myExampleData.donutWidgetLayout =  {
	  title: '<b>Global Consumption 2000-2017</b>',
	  titlefont : {
			size : 18,
			color : '#7f7f7f'
	  }/*,
	  annotations: [
	    {
	      font: {
	        size: 12
	      },
	      showarrow: false,
	      text: 'Heineken',
	      x: 0.1,
	      y: 0.5
	    },
	    {
	      font: {
	        size: 12
	      },
	      showarrow: false,
	      text: 'Tiger Beer',
	      x: 0.85,
	      y: 0.5
	    }
	  ]*/,
	  paper_bgcolor:'#FFFFFF',//E0E0E0
	  plot_bgcolor:'#FFFFFF'
	};

myExampleData.donutWidgetConfig = {
		modeBarButtonsToRemove : [ 'sendDataToCloud' ],
		displaylogo : false,
		displayModeBar: 'true'
	};


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//Dashboard 4
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bubble chart 2 sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	//x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	x : [ "2013", "2014", "2015" ],
	y : [ 21, 43, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	mode : 'markers',
	marker : {
		size : [ 60, 80, 100 ],
		//color : 'rgb(26, 118, 255)',
		color : '#32c5d2', // green
		opacity : 0.6		
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
};

var trace2 = {
		x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
		y : [ 68, 73, 74, 76, 65, 70, 98, 88, 76, 74, 87, 76 ],
		mode : 'markers',
		marker : {
			size : [ 65, 75, 90 ],
			//color : 'rgb(26, 118, 255)',
			color : '#3598dc', // green
			opacity : 0.6
		},
		textfont:{
			color:'rgb(255,255,255)',
			family:'Helvetica'
		}
};

myExampleData.plotlyBubbleData = [ trace1 ];

myExampleData.plotlyRefreshBubbleData = [ trace2 ];

myExampleData.plotlyBubbleLayout = {
	title : '<b>Breweries</b>',	
	xaxis : {
		title : '<b>Year</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : '<b>Number of customers</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	titlefont : {
		family : 'Helvetica',
		size : 18,
		color : '#7f7f7f'
	},
	showlegend : false,
	paper_bgcolor:'#FFFFFF',//E0E0E0
	plot_bgcolor:'#FFFFFF'
	/*height : 600,
	width : 600*/
};

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly bubble chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*myExampleData.constructBubbleChartData = function() {
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
};*/
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly stacked bar chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>','<b>brand3</b>', '<b>brand4</b>', '<b>brand5</b>', '<b>brand9</b>', '<b>brand10</b>', '<b>brand11</b>'],
	y : [ 20, 14, 23, 25, 34, 36, 78, 44, 43, 47, 55, 32 ],
	name : '<b>SF Breweries</b>',
	type : 'bar',
	marker : {
		//color : 'rgb(55, 83, 109)',
		color : '#138D75',
		opacity : 0.6
	}
};

var trace2 = {
	x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>','<b>brand3</b>', '<b>brand4</b>', '<b>brand5</b>', '<b>brand9</b>', '<b>brand10</b>', '<b>brand11</b>'],
	y : [ 12, 18, 39, 22, 28, 19, 18, 58, 49, 65, 63, 71,34,90,89,88],
	name : '<b>LA Breweries</b>',
	type : 'bar',
	marker : {
		//color : 'rgb(26, 118, 255)',
		color : '#00BFFF', 
		opacity : 0.6
	}
};

var trace3 = {
		x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>', '<b>brand1</b>', '<b>brand2</b>','<b>brand3</b>', '<b>brand4</b>', '<b>brand5</b>', '<b>brand9</b>', '<b>brand10</b>', '<b>brand11</b>'],
		y : [ 21, 18, 43, 22, 28, 45, 18, 17, 49, 71, 63, 33,32,56,59],
		name : '<b>NY Breweries</b>',
		type : 'bar',
		marker : {
			//color : 'rgb(171,217,233)',
			color : '#2C3E50',
			opacity : 0.6
		}
};


var trace4 = {
		x : [ 'Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger', 'brand2','brand3', 'brand4', 'brand5', 'brand9', 'brand10', 'brand11'],
		y : [ 22, 24, 33,45, 44, 26,68, 64, 63, 47, 49, 35,25,30,46,50,71,45, 18, 17, 49, 71, 63, 33,32,56,59],
		name : 'XL Breweries',
		type : 'bar',
		marker : {
			color : '#1ABC9C', // orange 
			opacity : 0.6
		}
};

var trace5 = {
		x : ['Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger', 'brand2','brand3', 'brand4', 'brand5', 'brand9', 'brand10', 'brand11'],
		y : [ 12, 14, 33, 22, 38, 19, 28, 53, 69, 71, 29, 50,45, 18, 17, 49, 71, 63, 33,32,56,59],
		name : 'YZ Breweries',
		type : 'bar',
		marker : {
			//color : 'rgb(26, 118, 255)',
			color : '#736F6E', // green
			opacity : 0.6
		}
};

var trace6 = {
		x : ['Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger', 'brand2','brand3', 'brand4', 'brand5', 'brand9', 'brand10', 'brand11'],
		y : [ 9, 14, 45, 22, 38, 19, 51, 53, 22, 65, 29, 59,29,50,48,50,49 ],
		name : 'XZ Breweries',
		type : 'bar',
		marker : {
			//color : 'rgb(171,217,233)',
			color : '#2C3E50', //  black
			opacity : 0.6
		}
};


var trace7 = {
		x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>'],
		y : [ 30, 24, 13, 45 ],
		name : '<b>SF Breweries</b>',
		type : 'bar',
		marker : {
			//color : 'rgb(55, 83, 109)',
			color : '#138D75', // green
			opacity : 0.6
		}
};

var trace8 = {
		x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>'],
		y : [ 32, 28, 29, 42],
		name : '<b>LA Breweries</b>',
		type : 'bar',
		marker : {
			//color : 'rgb(26, 118, 255)',
			color : '#3215c4', //  black
			opacity : 0.6
		}
};


var trace9 = {
		x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>'],
		y : [ 30, 24, 23, 65 ],
		name : '<b>SF Breweries</b>',
		type : 'bar',
		marker : {
			//color : 'rgb(55, 83, 109)',
			color : '#2C3E50', // orange 
			opacity : 0.6
		}
};

var trace10 = {
		x : [ '<b>Tiger</b>', '<b>Desperado</b>', '<b>Heiniken</b>' ,'<b>Kingfisher</b>',],
		y : [ 12, 48, 39, 32,54,26,77,43,28],
		name : '<b>LA Breweries</b>',
		type : 'bar',
		marker : {
			//color : 'rgb(26, 118, 255)',
			color : '#138D75', // green
			opacity : 0.6
		}
};
	
var trace11 = {
		x : ['Carlburg', 'Anchor', 'Guiness' ,'Breidweiser', 'Erdinger'],
		y : [ 29, 44, 55, 72, 38],
		name : 'XZ Breweries',
		type : 'bar',
		marker : {
			//color : 'rgb(171,217,233)',
			color : '#2C3E50', //  black
			opacity : 0.6
		}
};
myExampleData.barGroupChartDataOriginal = [ trace1, trace2, trace3];
myExampleData.barGroupChartData1 = [ trace7, trace8];
myExampleData.barGroupChartData2 = [ trace9, trace10, trace11];



myExampleData.barGroupRefreshChartData = [ trace4, trace5, trace6 ,trace10];
myExampleData.barGroupChartLayout = {
		title : '<b>Revenue in US $</b>',	
		xaxis : {
			title : '<b>Brands</b>',
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}
		},
		yaxis : {
			title : '<b>Million $</b>',
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}
		},
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		},
		barmode : 'group',
		autosize : true,
      paper_bgcolor:'#FFFFFF',//E0E0E0
		plot_bgcolor:'#FFFFFF'
};


myExampleData.plotlybarconfigDash4 = {
		modeBarButtonsToRemove : [ 'sendDataToCloud' ],
		displaylogo : false,
};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly simple line chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
var trace1 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 ],
	name : '<b>Desperado</b>',
	type : 'scatter',
	marker : {
		//color : 'rgb(55, 83, 109)',
		color : '#138D75', // green
		opacity : 0.6
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}

};
var trace2 = {
	x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
	y : [ 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48 ],
	name : '<b>Tiger</b>',
	type : 'scatter',
	marker : {
		//color : 'rgb(26, 118, 255)',
		color : '#F75D59', // orange 
		opacity : 0.6
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
};
var trace3 = {
		x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
		y : [ 8, 13, 74, 44, 35, 60, 48, 16, 28, 10, 16, 38 ],
		name : '<b>Desperado</b>',
		type : 'scatter',
		marker : {
			//color : 'rgb(55, 83, 109)',
			color : '#138D75', // green
			opacity : 0.6
		},
		textfont:{
			color:'rgb(255,255,255)',
			family:'Helvetica'
		}

	};
var trace4 = {
		x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
		y : [ 10, 15, 60, 32, 45, 80, 28, 36, 38, 28, 46, 48 ],
		name : '<b>Tiger</b>',
		type : 'scatter',
		marker : {
			//color : 'rgb(26, 118, 255)',
			color : '#FF0000', // orange 
			opacity : 0.6
		},
		textfont:{
			color:'rgb(255,255,255)',
			family:'Helvetica'
		}
	};
	var trace5 = {
			x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
			y : [ 18, 23, 44, 12, 75, 60, 28, 26, 48, 40, 26, 38 ],
			name : '<b>Desperado</b>',
			type : 'scatter',
			marker : {
				//color : 'rgb(55, 83, 109)',
				color : '#138D75', // green
				opacity : 0.6
			},
			textfont:{
				color:'rgb(255,255,255)',
				family:'Helvetica'
			}

		};
		var trace6 = {
			x : [ 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 ],
			y : [ 21, 10, 50, 32, 35, 45, 68, 36, 59, 38, 66, 88 ],
			name : '<b>Tiger</b>',
			type : 'scatter',
			marker : {
				//color : 'rgb(26, 118, 255)',
				//color : '#FF0000', // orange 
				color : '#D32D41', // orange ,
				opacity : 0.6
			},
			textfont:{
				color:'rgb(255,255,255)',
				family:'Helvetica'
			}
		};




myExampleData.plotlylinedata1 = [ trace1, trace2 ];
myExampleData.plotlylinedata2 = [ trace3, trace4 ];
myExampleData.plotlylinedata3 = [ trace5, trace6 ];
myExampleData.plotlylinelayout = {
	title : '<b>How old are they ?</b>',
	xaxis : {
		title : 'Age',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	yaxis : {
		title : '<b>Number of customers</b>',
		titlefont : {
			family : 'Helvetica',
			size : 18,
			color : '#7f7f7f'
		}
	},
	titlefont : {
		family : 'Helvetica',
		size : 18,
		color : '#7f7f7f'
	},
	autosize : true,
	paper_bgcolor:'#FFFFFF',//E0E0E0
	plot_bgcolor:'#FFFFFF'
};

myExampleData.plotlylineconfig = {
	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false,
	displayModeBar: 'true'
};

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//New table widget starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*myExampleData.tableWidgetDataNw = [
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
];*/

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
/*function generatedata(rowscount, hasNullValues) {
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

myExampleData.tableGridData = generatedata(100);

myExampleData.tableGridSource =
{
  localdata: myExampleData.tableGridData,
  datatype: "array",
  datafields:
  [
      { name: 'firstname', type: 'string' },
      { name: 'lastname', type: 'string' },
      { name: 'productname', type: 'string' },
      { name: 'available', type: 'bool' },
      { name: 'date', type: 'date' },
      { name: 'quantity', type: 'number' },
      { name: 'price', type: 'number' }
  ]                     
};

myExampleData.GridColoumns = [
  { text: 'First Name', datafield: 'firstname', width: 130 },
  { text: 'Last Name', datafield: 'lastname', width: 130 },
  { text: 'Product', datafield: 'productname', width: 200 },
  { text: 'Available', datafield: 'available', columntype: 'checkbox', width: 67, cellsalign: 'center', align: 'center' },
  { text: 'Ship Date', datafield: 'date', width: 120, align: 'right', cellsalign: 'right', cellsformat: 'd' },
  { text: 'Quantity', datafield: 'quantity', width: 70, align: 'right', cellsalign: 'right' },
  { text: 'Price', datafield: 'price', cellsalign: 'right', align: 'right', cellsformat: 'c2' }
];


myExampleData.GridWidth = getWidth('Grid');

function getWidth(name) {
//	InitResponse();
//  var response = new $.jqx.response();

//  name = name.toLowerCase();

  switch (name) {
  
	case "grid":
      if (response.device.type === "Phone") {
          var grid = document.getElementById('grid');
          if (grid) {
              grid.style.marginLeft = '5%';
          }
          return '90%'
      }
      else if (response.device.type === "Tablet") {
          var windowWidth = document.body.offsetWidth - 50;
          if (windowWidth > 850) {
              windowWidth = 850;
          }
          var grid = document.getElementById('grid');
          if (grid) {
              grid.style.marginLeft = 'auto';
              grid.style.marginRight = 'auto';
          }

          return windowWidth;
      }
      return 850;
  }
}*/
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//plotly stacked bar chart sample data starts here 
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
/*var trace1 = {
	x : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct',
			'Nov', 'Dec' ],
	y : [ 20, 14, 25, 16, 18, 22, 19, 15, 12, 16, 14, 17 ],
	type : 'bar',
	name : 'Primary Product',
	marker : {
		color : 'rgb(49,130,189)',
		opacity : 0.7
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
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
	},
	textfont:{
		color:'rgb(255,255,255)',
		family:'Helvetica'
	}
};
myExampleData.plotlybardata = [ trace1, trace2 ];
myExampleData.plotlybarlayout = {
		title : 'Age groups',	
		xaxis : {
			title : 'Age',
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}
		},
		yaxis : {
			title : 'Number of customers',
			titlefont : {
				family : 'Helvetica',
				size : 18,
				color : '#7f7f7f'
			}
	},
	titlefont : {
		family : 'Helvetica',
		size : 18,
		color : '#7f7f7f'
	},
	barmode : 'group',
	autosize : true,
  paper_bgcolor:'#E0E0E0',
	plot_bgcolor:'#E0E0E0'

};
myExampleData.plotlybarconfig = {
	modeBarButtonsToRemove : [ 'sendDataToCloud' ],
	displaylogo : false,
	displayModeBar: 'true'
};*/