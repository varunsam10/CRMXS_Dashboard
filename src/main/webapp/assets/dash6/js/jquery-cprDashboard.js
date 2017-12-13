(function(factory) {
		"use strict";
		if ( typeof define === 'function' && define.amd) {
			// Register as an AMD module 
			define(['jquery','Plotly','c3'], factory);
		} else {
			// Browser globals 
			factory($, Plotly,c3);
		}
	}(function($,Plotly,c3) {
		"use strict";
		$.widget("mn.sDashboard", {
			version : "2.5",
			options : {
				dashboardData : []
			},
			_create : function() {
				this.element.addClass("sDashboard");
				this._createView();

			},
			_setOption : function(key, value) {
				this.options[key] = value;
				if (key === "dashboardData") {
					this._createView();
				}
			},
			_createView : function() {

				var docHeight = $(document).height();

				$("body").append("<div class='cprDashboard-overlay'></div>");

				$(".cprDashboard-overlay").height(docHeight);

				$(".cprDashboard-overlay").hide();

				var _dashboardData = this.options.dashboardData;
				var i;
				//console.log(_dashboardData);
				//console.log(_dashboardData.length);
				for ( i = 0; i < _dashboardData.length; i++) {
					var widget = this._constructWidget(_dashboardData[i]);
					console.log(widget);
					//append the widget to the dashboard
					this.element.append(widget);
					this._renderTable(_dashboardData[i]);
					this._renderChart(_dashboardData[i]);
				}

				var that = this;
				//call the jquery ui sortable on the columns
				this.element.sortable({
					handle : ".sDashboardWidgetHeader",
					start : function(event, ui) {
						ui.item.startPosition = ui.item.index();
					},
					update : function(event, ui) {
						var newPosition = ui.item.index();
						_dashboardData.splice.apply(
							_dashboardData,
							[newPosition, 0].concat(_dashboardData.splice(ui.item.startPosition, 1))
						);

						that._trigger("stateChanged", null, {
							triggerAction: 'orderChanged',
							affectedWidget: _dashboardData[newPosition]}
						);
					}
				});

				var disableSelection = this.options.hasOwnProperty("disableSelection") ? this.options.disableSelection : true;
				if (disableSelection) {
					this.element.disableSelection();
				}
				//bind events for widgetsjs-plotly-plot
				this._bindEvents();

				//trigger creation complete when the dashboard widgets are constructed
				this._trigger("creationComplete", null);

			},
			_getWidgetContentForId : function(id, context) {
				var widgetData = context.getDashboardData();
				for (var i = 0; i < widgetData.length; i++) {
					var widgetObject = widgetData[i];
					if (widgetObject.widgetId === id) {
						return widgetObject;
					}
				}
				return [];
			},
			_bindEvents : function() {
				var self = this;
				//click event for maximize button
				this.element.on("click", ".sDashboardWidgetHeader div.sDashboard-iconcustomZoom.sDashboard-maximize-icon", function(e) {

					//get the widget List Item Dom
					var widgetListItem = $(e.currentTarget).parents("li:first");
					//get the widget Container
					var widget = $(e.currentTarget).parents(".sDashboardWidget:first");
					//get the widget Content
					var widgetContainer = widget.find(".sDashboardWidgetContent");

					var widgetDefinition = self._getWidgetContentForId(widgetListItem.attr("id"), self);

					//toggle the maximize icon into minimize icon
					$(e.currentTarget).toggleClass("sDashboard-minimize-icon");
					//change the tooltip on the maximize/minimize icon buttons
					if ($(e.currentTarget).attr("title") === "Maximize") {
						$(".cprDashboard-overlay").hide();
						$(e.currentTarget).attr("title", "Minimize");
						$(".sDashboardWidgetHeader div.sDashboard-iconcustomDel.sDashboard-trash-icon ").hide();
						self._trigger("widgetMaximized", null, {
							"widgetDefinition" : widgetDefinition
						});
					} else {
						$(".cprDashboard-overlay").show();
						$(e.currentTarget).attr("title", "Maximize");
						$(".sDashboardWidgetHeader div.sDashboard-iconcustomDel.sDashboard-trash-icon ").show();
						self._trigger("widgetMinimized", null, {
							"widgetDefinition" : widgetDefinition
						});
					}

					//toggle the class for widget and inner container
					widget.toggleClass("sDashboardWidgetContainerMaximized");
					widgetContainer.toggleClass("sDashboardWidgetContentMaximized ");

					if (widgetDefinition.widgetType === "chart") {
					var chartArea = widgetContainer.find(" div.sDashboardChart");
					var layout = {
								  xaxis: {
								    tickangle: -45
								  },
								  barmode: 'group'
								};
						if(widgetDefinition.graphType === 'normal'){
							
							var chart = c3.generate({bindto:chartArea[0],data:widgetDefinition.widgetContent.data});
							
						}else{
							
							Plotly.newPlot(chartArea[0],  widgetDefinition.widgetContent.data, widgetDefinition.widgetContent.layout,widgetDefinition.widgetContent.config);
							Plotly.redraw(chartArea[0]);
						}
						if (!widgetDefinition.getDataBySelection) {
							/*when redrawing the widget, the click event 
							listener is getting destroyed, we need to re-register it here again
							need to find out if its a bug on flotr2 library.*/
							self._bindChartEvents(chartArea[0], widgetListItem.attr("id"), widgetDefinition, self);
						}
					}
				});

				//refresh widget click event handler
				this.element.on("click", ".sDashboardWidgetHeader div.sDashboard-iconcustomRefresh.sDashboard-refresh-icon", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					var widgetId = widget.attr("id");
					var widgetDefinition = self._getWidgetContentForId(widgetId, self);
					//Adding refresh callback
					var refreshedData = widgetDefinition.refreshCallBack.apply(self, [widgetId]);
					widgetDefinition.widgetContent = refreshedData;
					if (widgetDefinition.widgetType === 'chart') {
//						self._renderChart(widgetDefinition);
						self._refreshChart(widgetDefinition);
					} else if (widgetDefinition.widgetType === 'table') {
						self._refreshTable(widgetDefinition, widget);
					} else {
						self._refreshRegularWidget(widgetDefinition, widget);
					}

				});

				//delete widget by clicking the 'trash' icon on the widget
				this.element.on("click", ".sDashboardWidgetHeader div.sDashboard-iconcustomDel.sDashboard-trash-icon ", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					//show hide effect
					widget.hide("fold", {}, 300, function() {
						self._removeWidgetFromWidgetDefinitions(this.id);
						$(this).remove();
						$(".cprDashboard-overlay").hide();
					});
				});

				//table row click
				this.element.on("click", ".sDashboardWidgetContent table.sDashboardTableView tbody tr", function(e) {
					var selectedRow = $(e.currentTarget);

					if (selectedRow.length > 0) {
						var selectedDataTable = selectedRow.parents('table:first').dataTable();

						var selectedWidget = selectedRow.parents("li:first");
						var selectedRowData = selectedDataTable.fnGetData(selectedRow[0]);
						var selectedWidgetId = selectedWidget.attr("id");
						var evtData = {
							selectedRowData : selectedRowData,
							selectedWidgetId : selectedWidgetId
						};

						//trigger dashboardTableViewRowClick changed event
						self._trigger("rowclicked", null, evtData);
					}
				});
			},

			_constructWidget : function(widgetDefinition) {
				//create an outer list item
				var widget = $("<li/>").attr("id", widgetDefinition.widgetId);
				 if (widgetDefinition.widgetDimension === 'large'){
					 widget.addClass("cprDashboardLarge");
				 }else if(widgetDefinition.widgetDimension === 'normal'){
					 widget.addClass("cprDashboardNormal");
				 }else if(widgetDefinition.widgetDimension === 'small'){
					 widget.addClass("cprDashboardSmall");
				 }
				//create a widget container
				var widgetContainer = $("<div/>").addClass("sDashboardWidget");

				//create a widget header
				/*var widgetHeader = $("<div/>").addClass("sDashboardWidgetHeader portlet-title");
				var maximizeButton = $('<a class="btn btn-circle btn-icon-only btn-default fullscreen sDashboard-iconcustomStyle sDashboard-maximize-icon" data-container="false" data-placement="bottom" href="javascript:;"> </a>');
				var settingsButton = $('<a class="btn btn-circle btn-icon-only btn-default sDashboard-iconcustomStyle sDashboard-settings" href="javascript:;"><i class="icon-wrench"></i></a>');
				var deleteButton = $('<a class="btn btn-circle btn-icon-only btn-default sDashboard-iconcustomStyle sDashboard-trash-icon" href="javascript:;"><i class="icon-trash"></i></a>');*/
				
				var widgetHeader = $("<div/>").addClass("sDashboardWidgetHeader sDashboard-clearfix");
				var maximizeButton = $('<div title="Maximize" class="sDashboard-iconcustomZoom sDashboard-maximize-icon "></span>');
				var settingsButton = $('<div title="Setting" class="sDashboard-iconcustom sDashboard-settings "></span>');
				
				var deleteButton = $('<div title="Delete" class="sDashboard-iconcustomDel sDashboard-trash-icon"></div>');		
				
				
				//add delete button
				if (widgetDefinition.widgetType === 'chart' && widgetDefinition.graphType === "exploratory"){
					//add Maximizebutton
					widgetHeader.append(maximizeButton);
					widgetHeader.append(settingsButton);
					widgetHeader.append(deleteButton);
					
				}
				else if(widgetDefinition.widgetType === 'chart' && widgetDefinition.graphType === "normal"){
					//add Maximizebutton
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);
										
				}				
				else if(widgetDefinition.widgetType === 'table'){
					//add Maximizebutton
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);
					
				}else{
					widgetHeader.append(deleteButton);
				}

				if (widgetDefinition.hasOwnProperty("enableRefresh") && widgetDefinition.enableRefresh) {
					var refreshButton = $('<div title="Refresh" class="sDashboard-iconcustomRefresh sDashboard-refresh-icon "></div>');
					//add refresh button
					widgetHeader.append(refreshButton);
				}

				//add widget title
				widgetHeader.append(widgetDefinition.widgetTitle);

				//create a widget content
				var widgetContent = $("<div/>").addClass("sDashboardWidgetContent");

				if (widgetDefinition.widgetType === 'table') {
					var dataTable = $('<table cellpadding="0" cellspacing="0" border="0" class="display sDashboardTableView table table-bordered"></table>');
					widgetContent.append(dataTable);
					widgetContent.addClass("cprWidgetContentTable");
				}else if(widgetDefinition.widgetType === 'grid'){
					var dataTable = $('<div id="cprDashboardGridView"></div>');
					widgetContent.append(dataTable);
					widgetContent.addClass("cprWidgetContentTable");
				}	else if (widgetDefinition.widgetType === 'chart') {
				
					var chart = $('<div/>').addClass("sDashboardChart");
					if (widgetDefinition.getDataBySelection) {
						chart.addClass("sDashboardChartSelectable");
//						chart.addClass("chart");
					} else {
						chart.addClass("sDashboardChartClickable");
					}
					widgetContent.append(chart);
				} else {
					widgetContent.append(widgetDefinition.widgetContent);
				}

				//add widgetHeader to widgetContainer
				widgetContainer.append(widgetHeader);
				//add widgetContent to widgetContainer
				widgetContainer.append(widgetContent);

				//append the widgetContainer to the widget
				widget.append(widgetContainer);

				//return widget
				return widget;
			},
			_refreshRegularWidget : function(widgetDefinition, widget) {
				var isMaximized = widget.find(".sDashboardWidgetContent").hasClass('sDashboardWidgetContentMaximized');
				//first remove the content
				widget.find('.sDashboardWidgetContent').empty().remove();
				//then create the content again
				var widgetContent = $("<div/>").addClass("sDashboardWidgetContent");
				//if its maximized add the maximized class
				if (isMaximized) {
					widgetContent.addClass('sDashboardWidgetContentMaximized');
				}
				widgetContent.append(widgetDefinition.widgetContent);
				//then append this to the widget again;
				widget.find(".sDashboardWidget").append(widgetContent);
			},
			_refreshTable : function(widgetDefinition, widget) {
				var selectedDataTable = widget.find('table:first').dataTable();
				selectedDataTable.fnClearTable();
				selectedDataTable.fnAddData(widgetDefinition.widgetContent["aaData"]);

			},
			_renderTable : function(widgetDefinition){
				var id = "li#" + widgetDefinition.widgetId;
				var table;
				if(widgetDefinition.widgetType === 'table'){
					table = this.element.find(id + " table.sDashboardTableView");
					var buttonCommon = {
					        exportOptions: {
					            format: {
					               /* body: function ( data, row, column, node ) {
					                    // Strip $ from salary column to make it numeric
					                    return column === 5 ?
					                        data.replace( /[$,]/g, '' ) :
					                        data;
					                }*/
					            }
					        }
					};
					var tableDef = {};
					$.extend(tableDef,widgetDefinition.widgetContent);

					if (widgetDefinition.setJqueryStyle) {
						tableDef["bJQueryUI"] = true;
					}
					tableDef["dom"] = "<'row' <'col-md-6 col-sm-6'B>><'row'<'col-md-6 col-sm-6'l><'col-md-6 col-sm-12'f>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>"; // horizobtal scrollable datatable
					/*tableDef["buttons"] =  [
			            $.extend( true, {}, buttonCommon, {
			                extend: 'excelHtml5'
			            }),
			            $.extend( true, {}, buttonCommon, {
			                extend: 'pdfHtml5'
			            })
			               //{ extend: 'print', className: 'btn dark btn-outline' },
			                //{ extend: 'pdf', className: 'btn green btn-outline' },
			                //{ extend: 'excelHtml5', className: 'btn purple btn-outline ' }
			        ];
					*/
					tableDef["buttons"] =  [  					
						//{"extend": 'print', "text":' <a href="javascript:;"><i class="fa fa-print"></i>Print</a>',"className": 'btn blue btn-outline' },
						{"extend": 'pdf', "text":' <a href="javascript:;"><i class="fa fa-file-pdf-o"></i>Pdf</a>',"className": 'btn  btn-outline' },
		                {"extend": 'excelHtml5', "text":' <a href="javascript:;"><i class="fa fa-file-excel-o"></i>Excel</a>',"className": 'btn btn-outline' }
			         ];
					tableDef["pageLength"] = 5;
					tableDef["paging"] = true;
					tableDef["lengthMenu"] = [[5, 15, 20, -1], [5, 15, 20, "All"]];
					table.dataTable(tableDef);		 
					/*table.dataTable({tableDef,
						 buttons: ['copy', 'csv', 'excel', 'pdf', 'print']					 
					 });	*/ 
				/*	$(".sDashboardTableView").DataTable( {
						 dom: 'Bfrtip',
					     buttons: [
					            'copyHtml5',
					            'excelHtml5',
					            'csvHtml5',
					            'pdfHtml5'
					      ]						
					});*/

				}else if(widgetDefinition.widgetType === 'grid'){
//					table = this.element.find(id + " table.sDashboardTableView");
					var dataAdapter = new $.jqx.dataAdapter(widgetDefinition.widgetContent.data);
					   $("#cprDashboardGridView").jqxGrid(
					            {
					                width: widgetDefinition.widgetContent.width,
					                source: dataAdapter,                
					                altrows: true,
					                sortable: true,
					                selectionmode: 'multiplecellsextended',
					                columns: widgetDefinition.widgetContent.coloumns
					            });
				}
			},
		/*	_renderTable : function(widgetDefinition){
			
				var id = "li#" + widgetDefinition.widgetId;
				var table;
				if(widgetDefinition.widgetType === 'table'){
					table = this.element.find(id + " table.sDashboardTableView");

					table.DataTable({data :widgetDefinition.widgetContent.data,
						columns:widgetDefinition.widgetContent.coloumns,
						dom: 'Bfrtip',				
						buttons:  [
					        'colvis',
					        'excel',
					        'print'
					    ]					
					});
				}
			},*/
			_refreshChart: function(widgetDefinition) {
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;
				chartArea = this.element.find(id + " div.sDashboardChart");
				
				if (widgetDefinition.widgetType === 'chart') {
					
					data = widgetDefinition.widgetContent.data;
					layout = widgetDefinition.widgetContent.layout;
					config = widgetDefinition.widgetContent.config;
					var layout = {
							  xaxis: {
							    tickangle: -45
							  },
							  barmode: 'group'
							};

					if(widgetDefinition.graphType === 'normal'){
						
						var chart = c3.generate({bindto:chartArea[0],data:widgetDefinition.widgetContent.data});
						
					}else{						
						
						Plotly.newPlot(chartArea[0], widgetDefinition.widgetContent.data , widgetDefinition.widgetContent.layout,widgetDefinition.widgetContent.config);
						Plotly.redraw(chartArea[0]);
					}					
					if (widgetDefinition.getDataBySelection) {
						
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}
				}
				else if(widgetDefinition.widgetType === 'static')
					{
						chart = new Chart(chartArea[0], widgetDefinition.widgetId, widgetDefinition.widgetContent.data);
						
						if (widgetDefinition.getDataBySelection) {
							this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						} else {
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}
				//location.reload(true);
				
			},
			_interactChart: function(widgetDefinition) {
				var id = "li#" + widgetDefinition.linkedWidgets;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;
				chartArea = this.element.find(id + " div.sDashboardChart");
				
				if (widgetDefinition.widgetType === 'chart') {
					
					data = widgetDefinition.widgetContent.data;
					layout = widgetDefinition.widgetContent.layout;
					config = widgetDefinition.widgetContent.config;
					var layout = {
							  xaxis: {
							    tickangle: -45
							  },
							  barmode: 'group'
							};

					if(widgetDefinition.graphType === 'normal'){
						
						var chart = c3.generate({bindto:chartArea[0],data:widgetDefinition.widgetContent.data});
						
					}else{						
						
						Plotly.newPlot(chartArea[0], widgetDefinition.widgetContent.data , widgetDefinition.widgetContent.layout,widgetDefinition.widgetContent.config);
						Plotly.redraw(chartArea[0]);
					}					
					if (widgetDefinition.getDataBySelection) {
						
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}
				}
				else if(widgetDefinition.widgetType === 'static')
					{
						chart = new Chart(chartArea[0], widgetDefinition.widgetId, widgetDefinition.widgetContent.data);
						
						if (widgetDefinition.getDataBySelection) {
							this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						} else {
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}
				//location.reload(true);
				
			},
			_renderChart : function(widgetDefinition) {
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;
				chartArea = this.element.find(id + " div.sDashboardChart");
				
				if (widgetDefinition.widgetType === 'chart') {
					
					data = widgetDefinition.widgetContent.data;
					layout = widgetDefinition.widgetContent.layout;
					config = widgetDefinition.widgetContent.config;
//					Flotr.draw(chartArea[0], data, options);
					var layout = {
							  xaxis: {
							    tickangle: -45
							  },
							  barmode: 'group'
							};

//					Plotly.newPlot(chartArea[0],  widgetDefinition.widgetContent.data, widgetDefinition.widgetContent.layout,widgetDefinition.widgetContent.config);
					/*Plotly.animate(chartArea[0], { data, layout } , { transition: {
					      duration: 800,
					      easing: 'cubic-in-out'
					    }});*/
					if(widgetDefinition.graphType === 'normal'){
						
						var chart = c3.generate({bindto:chartArea[0],data:widgetDefinition.widgetContent.data});
						
					}else{
						
						Plotly.newPlot(chartArea[0],  widgetDefinition.widgetContent.data, widgetDefinition.widgetContent.layout,widgetDefinition.widgetContent.config);
					}					
					if (widgetDefinition.getDataBySelection) {
						
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}
				}
				else if(widgetDefinition.widgetType === 'static')
					{
						chart = new Chart(chartArea[0], widgetDefinition.widgetId, widgetDefinition.widgetContent.data);
						
						if (widgetDefinition.getDataBySelection) {
							this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						} else {
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}

			},
			_bindSelectEvent : function(chartArea, widgetId, widgetDefinition, context) {
			/*	Flotr.EventAdapter.observe(chartArea, "flotr:select", function(area) {
					var evtObj = {
						selectedWidgetId : widgetId,
						chartData : area
					};
					context._trigger("plotselected", null, evtObj);
				});		*/	
				
			},
			_bindChartEvents : function(chartArea, widgetId, widgetDefinition, context) {
				var myPlot = chartArea;
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea = this.element.find(id + " div.sDashboardChart");
				myPlot.on('plotly_click', function(data){					
					 var pts = '';
					 for(var i=0; i < data.points.length; i++){
					        pts = 'x = '+data.points[i].x +'\ny = '+
					            data.points[i].y.toPrecision(4) + '\n\n';
					 }
				   	var evtObj = {};
					evtObj.clickedWidgetId = widgetId;
					evtObj.dataPoints = pts;
				    context._trigger("plotclicked", null, evtObj);	
				    this._interactChart(widgetDefinition);
				});
				
			},
			_removeWidgetFromWidgetDefinitions : function(widgetId) {
				var widgetDefs = this.options.dashboardData;
				for (var i in widgetDefs) {
					var currentWidget = widgetDefs[i];
					if (currentWidget.widgetId === widgetId) {
						widgetDefs.splice(i, 1);
						this._trigger("stateChanged", null,  {
								triggerAction: 'widgetRemoved',
								affectedWidget: currentWidget
							}
						);
						break;
					}
				}
			},

			_ifWidgetAlreadyExists : function(widgetId) {
				if (!widgetId) {
					throw "Expected widgetId to be defined";
				}
				var idSelector = "#" + widgetId;
				//get the dom element
				var widget = this.element.find("li" + idSelector);
				if (widget.length > 0) {
					return true;
				}
				return false;
			},

			/*public methods*/
			//add a widget to the dashbaord
			addWidget : function(widgetDefinition) {
				if (!widgetDefinition.widgetId) {
					throw "Expected widgetId to be defined";
				}

				if (this._ifWidgetAlreadyExists(widgetDefinition.widgetId)) {
					this.element.find("li#" + widgetDefinition.widgetId).effect("shake", {
						times : 3
					}, 1200);
				} else {
					this.options.dashboardData.unshift(widgetDefinition);
					var widget = this._constructWidget(widgetDefinition);
					this.element.prepend(widget);
					this._renderChart(widgetDefinition);
					this._renderTable(widgetDefinition);
					this._trigger("stateChanged", null,  {
							triggerAction: 'widgetAdded',
							affectedWidget: widgetDefinition
						}
					);
				}
			},
			//remove a widget from the dashboard
			removeWidget : function(widgetId) {
				if (!widgetId) {
					throw "Expected widgetId to be defined";
				}
				var idSelector = "#" + widgetId;
				//get the dom element
				var widget = this.element.find("li" + idSelector);
				if (widget.length > 0) {
					//delete the dom element
					this.element.find("li" + idSelector).remove();
					//remove the dom element from the widgetDefinition
					this._removeWidgetFromWidgetDefinitions(widgetId);
				}
			},

			//get the wigetDefinitions
			getDashboardData : function() {
				return this.options.dashboardData;
			},
			destroy : function() {
				//remove the overlay when the dashbaord is destroyed
				$(".cprDashboard-overlay").remove();
				// call the base destroy function
				$.Widget.prototype.destroy.call(this);
			}
		});

	}));

