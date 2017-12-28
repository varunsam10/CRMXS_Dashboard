(function(factory) {
		"use strict";
		if ( typeof define === 'function' && define.amd) {
			// Register as an AMD module 
			define(['jquery','Plotly','c3','AmCharts'], factory);
		} else {
			// Browser globals 
			factory($, Plotly, c3, AmCharts);
		}
	}(function($,Plotly,c3,AmCharts) {
		"use strict";
		$.widget("mn.cprDashboard", {
			version : "1.0",
			options : {
				dashboardData : []
			},
			_create : function() {
				this.element.addClass("cprDashboard");
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
					//console.log(widget);
					//append the widget to the dashboard
					this.element.append(widget);
					this._renderTable(_dashboardData[i]);
					this._renderChart(_dashboardData[i]);
					this._renderMap(_dashboardData[i]);
				}

				var that = this;
				//call the jquery ui sortable on the columns
				this.element.sortable({
					handle : ".cprDashboardWidgetHeader",
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
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustomZoom.cprDashboard-maximize-icon", function(e) {

					//get the widget List Item Dom
					var widgetListItem = $(e.currentTarget).parents("li:first");
					//get the widget Container
					var widget = $(e.currentTarget).parents(".cprDashboardWidget:first");
					//get the widget Content
					var widgetContainer = widget.find(".cprDashboardWidgetContent");

					var widgetDefinition = self._getWidgetContentForId(widgetListItem.attr("id"), self);

					//toggle the maximize icon into minimize icon
					$(e.currentTarget).toggleClass("cprDashboard-minimize-icon");
					//change the tooltip on the maximize/minimize icon buttons
					if ($(e.currentTarget).attr("title") === "Maximize") {
						$(".cprDashboard-overlay").hide();
						$(e.currentTarget).attr("title", "Minimize");
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomDel.cprDashboard-trash-icon ").hide();
						self._trigger("widgetMaximized", null, {
							"widgetDefinition" : widgetDefinition
						});
					} else {
						$(".cprDashboard-overlay").show();
						$(e.currentTarget).attr("title", "Maximize");
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomDel.cprDashboard-trash-icon ").show();
						self._trigger("widgetMinimized", null, {
							"widgetDefinition" : widgetDefinition
						});
					}

					//toggle the class for widget and inner container
					widget.toggleClass("cprDashboardWidgetContainerMaximized");
					widgetContainer.toggleClass("cprDashboardWidgetContentMaximized ");

					if (widgetDefinition.widgetType === "chart") {
					var chartArea = widgetContainer.find(" div.cprDashboardChart");
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
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustomRefresh.cprDashboard-refresh-icon", function(e) {
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
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustomDel.cprDashboard-trash-icon ", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					//show hide effect
					widget.hide("fold", {}, 300, function() {
						self._removeWidgetFromWidgetDefinitions(this.id);
						$(this).remove();
						$(".cprDashboard-overlay").hide();
					});
				});				
				//delete widget by clicking the 'trash' icon on the widget
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustom.cprDashboard-settings", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					var widgetId = widget.attr("id");
					var widgetDefinition = self._getWidgetContentForId(widgetId, self);
				
					var graphToThisChart = $("#changeChartForm input:checked" ).val();
					
					var chartType = widgetDefinition.chartType ;
					$('#changeChartForm input:checkbox').bootstrapSwitch('state', false, true);	
					switch(chartType){
					case "bar":  $('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='line']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								 break;
					case "line":$('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								$("#changeChartForm input:checkbox[value='bar']").bootstrapSwitch('disabled',false);
								$("#changeChartForm input:checkbox[value='barline']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								break;
					case "area":$('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								$("#changeChartForm input:checkbox[value='bar']").bootstrapSwitch('disabled',false);
								$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								break;
					case "column":$('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								  $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								  $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								  $("#changeChartForm input:checkbox[value='bar']").bootstrapSwitch('disabled',false);
								  break;
					case "barline":$('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								   $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								   $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								   $("#changeChartForm input:checkbox[value='column']").bootstrapSwitch('disabled',false);
								   break;
					case "pie": $('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								break;
											
					}
								
				/*	if(graphToThisChart === widgetDefinition.chartType){
						$('#changeChartForm input:checkbox').bootstrapSwitch('state', false, true);
						$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
					}else{
						$('#changeChartForm input:checkbox').bootstrapSwitch('state', false, true);
						$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
					}*/
					$("#cgwidgetId").text(widgetId );
					$("#changeChartModal").modal('show');
					
					
				});

				//table row click
				this.element.on("click", ".cprDashboardWidgetContent table.cprDashboardTableView tbody tr", function(e) {
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
				var widgetContainer = $("<div/>").addClass("cprDashboardWidget");

				var widgetHeader = $("<div/>").addClass("cprDashboardWidgetHeader cprDashboard-clearfix");
				var maximizeButton = $('<div title="Maximize" class="cprDashboard-iconcustomZoom cprDashboard-maximize-icon "></span>');
				var settingsButton = $('<div title="Setting" class="cprDashboard-iconcustom cprDashboard-settings "></span>');
				var deleteButton = $('<div title="Delete" class="cprDashboard-iconcustomDel cprDashboard-trash-icon"></div>');
				var filterButton = $('<div title="Filter" class="cprDashboard-iconcustomFilter cprDashboard-filter-icon"></div>');
				
				if (widgetDefinition.graphType === "exploratory" && widgetDefinition.chartType !== "bubble"){
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);
					widgetHeader.append(settingsButton);
					widgetHeader.append(filterButton);
					
					
				}else if(widgetDefinition.graphType === "exploratory" && widgetDefinition.chartType === "bubble"){
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);
					widgetHeader.append(filterButton);					
				}
				else if(widgetDefinition.graphType === "normal" && widgetDefinition.widgetType === 'chart' ){
					//add Maximizebutton
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);										
				}
				else if(widgetDefinition.widgetType === 'map' && widgetDefinition.graphType === "normal" ){
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);										
				}	
				else if(widgetDefinition.widgetType === 'table'){
					//add Maximizebutton
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);					
				}
				else{
					widgetHeader.append(deleteButton);
				}
				
				if (widgetDefinition.hasOwnProperty("enableRefresh") && widgetDefinition.enableRefresh) {
					var refreshButton = $('<div title="Refresh" class="cprDashboard-iconcustomRefresh cprDashboard-refresh-icon "></div>');
					//add refresh button
					widgetHeader.append(refreshButton);
				}

				//add widget title
				widgetHeader.append(widgetDefinition.widgetTitle);

				//create a widget content
				var widgetContent = $("<div/>").addClass("cprDashboardWidgetContent");

				if (widgetDefinition.widgetType === 'table') {
					var dataTable = $('<table cellpadding="0" cellspacing="0" border="0" class="display cprDashboardTableView table table-bordered"></table>');
					widgetContent.append(dataTable);
					widgetContent.addClass("cprWidgetContentTable");
				}else if(widgetDefinition.widgetType === 'grid'){
					var dataTable = $('<div id="cprDashboardGridView"></div>');
					widgetContent.append(dataTable);
					widgetContent.addClass("cprWidgetContentTable");
				}	else if (widgetDefinition.widgetType === 'chart') {
				
					var chart = $('<div/>').addClass("cprDashboardChart");
					if (widgetDefinition.getDataBySelection) {
						chart.addClass("cprDashboardChartSelectable");
//						chart.addClass("chart");
					} else {
						chart.addClass("cprDashboardChartClickable");
					}
					widgetContent.append(chart);
				} else if (widgetDefinition.widgetType === 'map') {
				
					var map = $('<div/>').addClass("cprDashboardMap");
				
					
					widgetContent.append(map);
				} 			
				else {
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
				var isMaximized = widget.find(".cprDashboardWidgetContent").hasClass('cprDashboardWidgetContentMaximized');
				//first remove the content
				widget.find('.cprDashboardWidgetContent').empty().remove();
				//then create the content again
				var widgetContent = $("<div/>").addClass("cprDashboardWidgetContent");
				//if its maximized add the maximized class
				if (isMaximized) {
					widgetContent.addClass('cprDashboardWidgetContentMaximized');
				}
				widgetContent.append(widgetDefinition.widgetContent);
				//then append this to the widget again;
				widget.find(".cprDashboardWidget").append(widgetContent);
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
					table = this.element.find(id + " table.cprDashboardTableView");
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
			redrawChart:function(chartArea,data,layout,config)
			{
				Plotly.animate(chartArea[0], { data, layout,config} ,{
					transition: {  
						duration: 2000,
						easing: 'cubic-in-out' 
							} 
				});
				//Plotly.newPlot(chartArea[0], data , layout,config);
				Plotly.redraw(chartArea[0]);				
				return;
			},			
			changeChart: function(changeChartObject) {
			
				var widgetDefinition = this._getWidgetContentForId(changeChartObject.widgetId, this);
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;
				chartArea = this.element.find(id + " div.cprDashboardChart");
				
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
					//code for changing the bar to scatter (line graph) 
					//bar chart 	
					if(widgetDefinition.chartType === 'bar' && changeChartObject.chartTo ==='line'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
							widgetDefinition.widgetContent.data[i].type = 'scatter';
						}	
							
					}
					else if(widgetDefinition.chartType === 'line' && changeChartObject.chartTo ==='bar'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'bar';
						}	
							
					}
					else if(widgetDefinition.chartType === 'line' && changeChartObject.chartTo ==='barline'){ 
						var widgetLength =widgetDefinition.widgetContent.data.length;
						if(widgetLength === 2)
						{
								widgetDefinition.widgetContent.data[0].type = 'bar';
								widgetDefinition.widgetContent.data[1].type = 'scatter';
						}	
							
					}
					//area to line
					else if(widgetDefinition.chartType === 'area' && changeChartObject.chartTo ==='line'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'bar';
						}	
							
					}
					/** bar to column chart **/
					else if(widgetDefinition.chartType === 'bar' && changeChartObject.chartTo === 'column'){ 
						if(widgetDefinition.widgetContent.layout.length!=0)
						{
								widgetDefinition.widgetContent.layout.barmode = 'group';
						}	
							
					}
					else if(widgetDefinition.chartType === 'area' && changeChartObject.chartTo ==='bar'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'bar';
						}	
							
					}	
					else if(widgetDefinition.chartType === 'column' && changeChartObject.chartTo ==='bar'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.layout.barmode = 'stack';
						}	
							
					}	
						data = widgetDefinition.widgetContent.data;
						layout = widgetDefinition.widgetContent.layout;
						this.redrawChart(chartArea,data,layout,config);
						
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
			_refreshChart: function(widgetDefinition) {
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;
				chartArea = this.element.find(id + " div.cprDashboardChart");
				
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
						
						this.redrawChart(chartArea,data,layout,config);
						
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
			_interactChart: function(widgetDefinition,dataPoint) {
				var _dashboardData = this.options.dashboardData;
				var i;
				var WidgetDefinitionToChange;
				var linkedWidget ;
				
				for (var j =0; j<widgetDefinition.linkedWidgets.length;j++){
					linkedWidget = widgetDefinition.linkedWidgets[j];
				for ( i = 0; i < _dashboardData.length; i++) {
					if(_dashboardData[i].widgetId === linkedWidget){
						
						WidgetDefinitionToChange = _dashboardData[i];
					}					
				}
				var id = "li#" + WidgetDefinitionToChange.widgetId;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;						
				
				//console.log(_dashboardData);
				//console.log(_dashboardData.length);				
				
				chartArea = this.element.find(id + " div.cprDashboardChart");
			//	var refreshedData = widgetDefinition.refreshCallBack.apply(self, [widgetDefinition.linkedWidgets]);
				//widgetDefinition.widgetContent = refreshedData;
				if (WidgetDefinitionToChange.widgetType === 'chart') {
					
					if(WidgetDefinitionToChange.chartType === 'bar'){
						if(dataPoint.dataPoints === 2013){
							data = WidgetDefinitionToChange.widgetContentNew.data;
							layout = WidgetDefinitionToChange.widgetContentNew.layout;
							config = WidgetDefinitionToChange.widgetContent.config;
						}else if(dataPoint.dataPoints === 2014){
							data = WidgetDefinitionToChange.widgetContentNew1.data;
							layout = WidgetDefinitionToChange.widgetContentNew.layout;
							config = WidgetDefinitionToChange.widgetContent.config;
							
						}else if(dataPoint.dataPoints === 2015){
							data = WidgetDefinitionToChange.widgetContentNew2.data;
							layout = WidgetDefinitionToChange.widgetContentNew.layout;
							config = WidgetDefinitionToChange.widgetContent.config;
							
						}
					}else if(WidgetDefinitionToChange.chartType === 'line'){
						if(dataPoint.dataPoints === 2013){
							data   = WidgetDefinitionToChange.widgetContentNew.data;
							layout = WidgetDefinitionToChange.widgetContent.layout;
							config = WidgetDefinitionToChange.widgetContent.config;
						}else if(dataPoint.dataPoints === 2014){
							data   = WidgetDefinitionToChange.widgetContentNew1.data;
							layout = WidgetDefinitionToChange.widgetContent.layout;
							config = WidgetDefinitionToChange.widgetContent.config;
							
						}else if(dataPoint.dataPoints === 2015){
							data   = WidgetDefinitionToChange.widgetContentNew2.data;
							layout = WidgetDefinitionToChange.widgetContent.layout;
							config = WidgetDefinitionToChange.widgetContent.config;
							
						}						
					}
					if(WidgetDefinitionToChange.graphType === 'normal'){
						
						var chart = c3.generate({bindto:chartArea[0],data:WidgetDefinitionToChange.widgetContent.data});
						
					}else{						
						//Plotly.redraw(chartArea[0]);
						if(WidgetDefinitionToChange.chartType === 'line'){
							Plotly.animate(chartArea[0], { data, layout,config} ,{
								transition: {  
									duration: 500,
									easing: 'cubic-in-out' 
										} 
								});
							
							console.log("line");
						}
						else{
							Plotly.newPlot(chartArea[0], data, layout,config);
							Plotly.redraw(chartArea[0]);
							console.log("other charts")
						}
						
					}					
					if (widgetDefinition.getDataBySelection) {
						
						this._bindSelectEvent(chartArea[0], WidgetDefinitionToChange.widgetId, WidgetDefinitionToChange, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], WidgetDefinitionToChange.widgetId, WidgetDefinitionToChange, this);
						}
					}
				}
				else if(widgetDefinition.widgetType === 'static')
					{
						chart = new Chart(chartArea[0], WidgetDefinitionToChange.widgetId, WidgetDefinitionToChange.widgetContent.data);
						
						if (widgetDefinition.getDataBySelection) {
							this._bindSelectEvent(chartArea[0], WidgetDefinitionToChange.widgetId, WidgetDefinitionToChange, this);
						} else {
							this._bindChartEvents(chartArea[0], WidgetDefinitionToChange.widgetId, WidgetDefinitionToChange, this);
						}
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
				chartArea = this.element.find(id + " div.cprDashboardChart");
				
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
						Plotly.redraw(chartArea[0]);
					}					
					if (widgetDefinition.getDataBySelection) {
						
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}else if(widgetDefinition.graphType === 'normal'){
							this._bindChartEventsC3(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
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
			_renderMap : function(widgetDefinition) {
				var id = "li#" + widgetDefinition.widgetId;
				var mapArea;
				var data;
				var layout;
				var config;
				var chart;
				mapArea = this.element.find(id + " div.cprDashboardMap");
				
				if (widgetDefinition.widgetType === 'map') {
					
					//var targetSVG = "M9,0C4.029,0,0,4.029,0,9s4.029,9,9,9s9-4.029,9-9S13.971,0,9,0z M9,15.93 c-3.83,0-6.93-3.1-6.93-6.93S5.17,2.07,9,2.07s6.93,3.1,6.93,6.93S12.83,15.93,9,15.93 M12.5,9c0,1.933-1.567,3.5-3.5,3.5S5.5,10.933,5.5,9S7.067,5.5,9,5.5 S12.5,7.067,12.5,9z";
					var map = AmCharts.makeChart(mapArea[0], widgetDefinition.widgetContent);
					map.addListener("click", event => {
				        // find out the coordinates of under mouse cursor
				        var info = event.chart.getDevInfo();
				    
				        // print in console as well
				        console.log({
				           "latitude": info.latitude,
				           "longitude": info.longitude
				        });
				    });

					/*if(widgetDefinition.graphType === 'normal'){
						
						var chart = c3.generate({bindto:chartArea[0],data:widgetDefinition.widgetContent.data});
						
					}else{
						
						Plotly.newPlot(chartArea[0],  widgetDefinition.widgetContent.data, widgetDefinition.widgetContent.layout,widgetDefinition.widgetContent.config);
						Plotly.redraw(chartArea[0]);
					}	*/				
				/*	if (widgetDefinition.getDataBySelection) {
						
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}else if(widgetDefinition.graphType === 'normal'){
							this._bindChartEventsC3(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}*/
					map.addListener( "positionChanged", updateCustomMarkers );

					// this function will take current images on the map and create HTML elements for them
					function updateCustomMarkers( event ) {
					  // get map object
					  var map = event.chart;

					  // go through all of the images
					  for ( var x in map.dataProvider.images ) {
					    // get MapImage object
					    var image = map.dataProvider.images[ x ];

					    // check if it has corresponding HTML element
					    if ( 'undefined' == typeof image.externalElement )
					      image.externalElement = createCustomMarker( image );

					    // reposition the element accoridng to coordinates
					    var xy = map.coordinatesToStageXY( image.longitude, image.latitude );
					    image.externalElement.style.top = xy.y + 'px';
					    image.externalElement.style.left = xy.x + 'px';
					  }
					}

					// this function creates and returns a new marker element
					function createCustomMarker( image ) {
					  // create holder
					  var holder = document.createElement( 'div' );
					  holder.className = 'map-marker';
					  holder.title = image.title;
					  holder.style.position = 'absolute';

					  // maybe add a link to it?
					  if ( undefined != image.url ) {
					    holder.onclick = function() {
					      window.location.href = image.url;
					    };
					    holder.className += ' map-clickable';
					  }

					  // create dot
					  var dot = document.createElement( 'div' );
					  dot.className = 'dot';
					  holder.appendChild( dot );

					  // create pulse
					  var pulse = document.createElement( 'div' );
					  pulse.className = 'pulse';
					  holder.appendChild( pulse );

					  // append the marker to the map container
					  image.chart.chartDiv.appendChild( holder );

					  return holder;
					}
				}
				else if(widgetDefinition.widgetType === 'static')
				{
						/*chart = new Chart(chartArea[0], widgetDefinition.widgetId, widgetDefinition.widgetContent.data);
						
						if (widgetDefinition.getDataBySelection) {
							this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						} else {
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}*/
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
				var chartArea = this.element.find(id + " div.cprDashboardChart");
				myPlot.on('plotly_click', function(data){					
					 var pts = '';
					 for(var i=0; i < data.points.length; i++){
					       /* pts = 'x = '+data.points[i].x +'\ny = '+
					            data.points[i].y.toPrecision(4) + '\n\n';*/
						 pts = data.points[i].x ;
					 }
				   	var evtObj = {};
					evtObj.clickedWidgetId = widgetId;
					evtObj.dataPoints = pts;
				   // context._trigger("plotclicked", null, evtObj);	
					
					context._interactChart(widgetDefinition,evtObj);
				});		
				
			},
			_bindChartEventsC3 : function(chartArea, widgetId, widgetDefinition, context) {
				var myPlot = chartArea;
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea = this.element.find(id + " div.cprDashboardChart");			
			/*	myPlot.on('onclick', function(data,irt){					
					 var pts = '';
					 for(var i=0; i < data.points.length; i++){
					        pts = 'x = '+data.points[i].x +'\ny = '+
					            data.points[i].y.toPrecision(4) + '\n\n';
					 }
				   	var evtObj = {};
					evtObj.clickedWidgetId = widgetId;
					evtObj.dataPoints = pts;
				    context._trigger("plotclicked", null, evtObj);	
				    //this._interactChart(widgetDefinition);
				});*/
				
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
			//add a widget to the dashboard
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

