(function(factory) {
		"use strict";
		if ( typeof define === 'function' && define.amd) {
			// Register as an AMD module 
			define(['jquery','Plotly','c3','AmCharts','swal'], factory);
		} else {
			// Browser globals 
			factory($, Plotly, c3, AmCharts,swal);
		}
	}(function($,Plotly,c3,AmCharts,swal) {
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
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustom.cprDashboard-settings ").hide();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomInteract ").hide();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomFilter").hide();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomEdit").hide();
						self._trigger("widgetMaximized", null, {
							"widgetDefinition" : widgetDefinition
						});
					} else {
						$(".cprDashboard-overlay").show();
						$(e.currentTarget).attr("title", "Maximize");
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomDel.cprDashboard-trash-icon ").show();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustom.cprDashboard-settings ").show();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomInteract ").show();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomFilter").show();
						$(".cprDashboardWidgetHeader div.cprDashboard-iconcustomEdit").show();
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
				//change graph by clicking the 'settings' icon on the widget
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
								 $("#changeChartForm input:checkbox[value='area']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='column']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='barline']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								 break;
					case "line": $('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='bar']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='barline']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='area']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								 break;
					case "area": $('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='bar']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='line']").bootstrapSwitch('disabled',false);
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
								 $("#changeChartForm input:checkbox[value='line']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='bar']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='area']").bootstrapSwitch('disabled',false);
								   /*$("#changeChartForm input:checkbox[value='column']").bootstrapSwitch('disabled',false);*/
								 break;
				   case "pie":   $('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value='pie']").bootstrapSwitch('disabled',false);
					   			 $("#changeChartForm input:checkbox[value='doughnut']").bootstrapSwitch('disabled',false);
								 $("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('state', true, true);
								 break;	
				  case "doughnut": $('#changeChartForm input:checkbox').bootstrapSwitch('disabled',true);
				   				$("#changeChartForm input:checkbox[value="+widgetDefinition.chartType+"]").bootstrapSwitch('disabled',false);
				   				$("#changeChartForm input:checkbox[value='doughnut']").bootstrapSwitch('disabled',false);
				   				$("#changeChartForm input:checkbox[value='pie']").bootstrapSwitch('disabled',false);
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
				
				//Interaction model of  widget by clicking the 'details' icon on the widget
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustomInteract", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					var widgetId = widget.attr("id");
					var widgetDefinition = self._getWidgetContentForId(widgetId, self);
				
					//var graphToThisChart = $("#changeChartForm input:checked" ).val();
					
					var interactionType = widgetDefinition.widgetClick ;
					$('#interactForm input:checkbox').bootstrapSwitch('state', false, true);	
					if(interactionType === "details"){
						$('#interactForm input:checkbox').bootstrapSwitch('disabled',true);
						$('#interactForm input:checkbox[value="details"]').bootstrapSwitch('disabled',false);
						$('#interactForm input:checkbox[value="details"]').bootstrapSwitch('state', true, true);
						
					}else if(interactionType === "interact"){
						$('#interactForm input:checkbox').bootstrapSwitch('disabled',true);
						$('#interactForm input:checkbox[value="interact"]').bootstrapSwitch('disabled',false);
						$('#interactForm input:checkbox[value="interact"]').bootstrapSwitch('state', true, true);
						
					}			
	
					$("#interactionModal").modal('show');					
					
				});	
				//Edit click action handler 
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustomEdit", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					var widgetId = widget.attr("id");
					var widgetDefinition = self._getWidgetContentForId(widgetId, self);
					$.fn.editable.defaults.mode = 'popup';
					var editMode = widgetDefinition.widgetEdit;
					var widgetTitleFromDefinition = widgetDefinition.widgetTitle;
					if(editMode === "enable"){
						
						swal({
							  title: "Do you want to enable edit mode?",
							  text: "The Changes made will not be saved!",
							  type: "warning",
							  showCancelButton: true,
							  confirmButtonClass: "btn-success",
							  confirmButtonText: "Enable",
							  cancelButtonText: "Cancel",
							  closeOnConfirm: false,
							  closeOnCancel: false
							},
							function(isConfirm) {
							  if (isConfirm) {
							    swal("Edit on!", "Edit mode enabled on widget.", "success");
							    self._enableEdit(widgetDefinition,widgetId);
							    /*
								Adding the inline editor functionality for widget header 	
								*/
								var widgetIdS= "header"+$.trim(widgetId);
								
								//widgetHeaderPopup
							   /* $("'#"+widgetIdS+"'").editable({
									disabled:false
								});*/							    
							    $('.widgetHeaderPopup').editable({
									disabled:false
								});
							  } else {
							    swal("Cancelled", "Edit mode disabled", "error");
							    $('.widgetHeaderPopup').editable({
									disabled:true
								});
							    
							  }
							});					
						
					}
					
				});
				//Filter model of  widget by clicking the 'filter' icon on the widget
				this.element.on("click", ".cprDashboardWidgetHeader div.cprDashboard-iconcustomFilter", function(e) {
					var widget = $(e.currentTarget).parents("li:first");
					var widgetId = widget.attr("id");
					var widgetDefinition = self._getWidgetContentForId(widgetId, self);
				
				
					$("#fgwidgetId").text(widgetId );
					$("#filterModal").modal('show');					
					
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
				var filterButton = $('<div title="Filter" class="cprDashboard-iconcustomFilter"></div>');
				var detailsButton = $('<div title="Interact" class="cprDashboard-iconcustomInteract"></div>');
				var editButton = $('<div title="Interact" class="cprDashboard-iconcustomEdit"></div>');
				var widgetTitle = $('<a href="#" class="widgetHeaderPopup" data-type="text" data-url="editHeader.html" data-title="Enter Widget Title"></a>');
				//var header = $('<div title="Interact" class="cprDashboard-iconcustomEdit"></div>');
				//if(widgetDefinition.widgetClick != null){
				if (widgetDefinition.graphType === "exploratory" && widgetDefinition.chartType !== "bubble"){
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);
					widgetHeader.append(settingsButton);
					widgetHeader.append(filterButton);
					if(widgetDefinition.widgetClick != "disable"){
						widgetHeader.append(detailsButton);
					}
					if(widgetDefinition.widgetEdit !="disable"){
						widgetHeader.append(editButton);
					}
					
				}else if(widgetDefinition.graphType === "exploratory" && widgetDefinition.chartType === "bubble"){
					widgetHeader.append(maximizeButton);
					widgetHeader.append(deleteButton);
					widgetHeader.append(filterButton);
					if(widgetDefinition.widgetClick != "disable"){
						widgetHeader.append(detailsButton);
					}
					if(widgetDefinition.widgetEdit !="disable"){
						widgetHeader.append(editButton);
					}
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
				//}
				
				if (widgetDefinition.hasOwnProperty("enableRefresh") && widgetDefinition.enableRefresh) {
					var refreshButton = $('<div title="Refresh" class="cprDashboard-iconcustomRefresh cprDashboard-refresh-icon "></div>');
					//add refresh button
					widgetHeader.append(refreshButton);
				}

				//  add widget title
				//	widgetHeader.append(widgetDefinition.widgetTitle);
				var widgetIdFromDefinition ="header"+$.trim(widgetDefinition.widgetId);
				widgetTitle.attr("id",widgetIdFromDefinition);
				widgetHeader.append(widgetTitle);
			
				widgetTitle.text(widgetDefinition.widgetTitle);
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
					widgetContent.append(widgetDefinition.widgetContentText);
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
					// horizontal scrollable datatable
					tableDef["dom"] = "<'row' <'col-md-6 col-sm-6'B>><'row'<'col-md-6 col-sm-6'l><'col-md-6 col-sm-12'f>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>"; 
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
			redrawChart:function(chartArea,data,layout,config)
			{
				Plotly.animate(chartArea[0], { data, layout,config} ,{
					transition: {  
						duration: 2000,
						easing: 'cubic-in-out' 
							} 
				});				
				Plotly.redraw(chartArea[0]);				
				return;
			},
			renderNewChart:function(chartArea,data,layout,config)
			{
				Plotly.newPlot(chartArea[0],data,layout,config);
				Plotly.redraw(chartArea[0]);				
				return;
			},
			changeTheme: function(themeSelected) {			
				var _dashboardData = this.options.dashboardData;
				var i;
				var layoutNormal ={						
						paper_bgcolor:'#FFFFFF',
						plot_bgcolor:'#FFFFFF'		
						
				};				
				var layoutBackground ={
						paper_bgcolor:'#E0E0E0',
						plot_bgcolor:'#E0E0E0'						
				};
				//var theme1=[{color : '#FF0000',opacity : 0.6},{color : '#1ABC9C',opacity : 0.6},{color : '#1ABC9C',opacity : 0.6}];
				var theme1=[{color : '#26456e',opacity : 0.6},{color : '#7bc8e2',opacity : 0.6},{color : '#1c73b1',opacity : 0.6},
					{color : '#3a87b7',opacity : 0.6},{color : '#67add4',opacity : 0.6}];
				var theme2=[{color : '#138D75',opacity : 0.6},{color : '#EC7063',opacity : 0.6},{color : '#2C3E50',opacity : 0.6}
				,{color : '#F4D03F',opacity : 0.6},{color : '#95A5A6',opacity : 0.6}];
				var theme3=[{color : '#69b764',opacity : 0.6},{color : '#f26c64',opacity : 0.6},{color : '#ff800e',opacity : 0.6}
				,{color : '#ffbc79',opacity : 0.6},{color : '#aec7e8',opacity : 0.6}];
				var theme4=[{color : '#ffd94a',opacity : 0.6},{color : '#ffaa0e',opacity : 0.6},{color : '#ffbf50',opacity : 0.6}
				,{color : '#fcba49',opacity : 0.6},{color : '#b59727',opacity : 0.6}];
				for ( i = 0; i < _dashboardData.length; i++) {
					var widgetDefinition = _dashboardData[i];
					var id = "li#" + widgetDefinition.widgetId;
					var chartArea;
					var data;
					var layout;
					var config;
					var chart;
					chartArea = this.element.find(id + " div.cprDashboardChart");
					if (widgetDefinition.widgetType === 'chart') {						
					var j=0;
					for(j=0;j<widgetDefinition.widgetContent.data.length;j++)
					{
						if(widgetDefinition.chartType === 'bar' 
							|| widgetDefinition.chartType ==='line'
							||widgetDefinition.chartType === 'barline' 
							||widgetDefinition.chartType === 'area'
							||widgetDefinition.chartType === 'column'
//							||widgetDefinition.chartType === 'pie'
							//||widgetDefinition.chartType === 'donut'	
							||widgetDefinition.chartType === 'bubble'){
							if(typeof widgetDefinition.widgetContent.data[j].marker != 'undefined'){
								if(themeSelected==="theme1"){
									if(widgetDefinition.chartType != 'bubble'){
										widgetDefinition.widgetContent.data[j].marker = theme1[j];	
									}else{
										widgetDefinition.widgetContent.data[j].marker.color = theme1[j].color;
									}
								}else if(themeSelected==="theme2"){
									if(widgetDefinition.chartType != 'bubble'){
										widgetDefinition.widgetContent.data[j].marker = theme2[j];	
									}else{
										widgetDefinition.widgetContent.data[j].marker.color = theme2[j].color;
									}
								}else if(themeSelected==="theme3"){
									if(widgetDefinition.chartType != 'bubble'){
										widgetDefinition.widgetContent.data[j].marker = theme3[j];	
									}else{
										widgetDefinition.widgetContent.data[j].marker.color = theme3[j].color;
										}
												}
								else if(themeSelected==="theme4"){
									if(widgetDefinition.chartType != 'bubble'){
										widgetDefinition.widgetContent.data[j].marker = theme4[j];	
									}else{
										widgetDefinition.widgetContent.data[j].marker.color = theme4[j].color;
										}
												}
							}
						}else if((widgetDefinition.chartType === 'pie'||'donut') && (typeof widgetDefinition.widgetContent.data[j].marker != 'undefined')){
							if(themeSelected==="theme1"){
								if(j===0){
									widgetDefinition.widgetContent.data[j].marker.colors=[];
									for(var k=0;k<theme1.length;k++){
										widgetDefinition.widgetContent.data[j].marker.colors.push(theme1[k].color);
									}
								}							
								
							}else if(themeSelected==="theme2"){
								if(j===0){
									widgetDefinition.widgetContent.data[j].marker.colors=[];
									for(var k=0;k<theme2.length;k++){
										widgetDefinition.widgetContent.data[j].marker.colors.push(theme2[k].color);
									}
								}
							
							}
							else if(themeSelected==="theme3"){
								if(j===0){
									widgetDefinition.widgetContent.data[j].marker.colors=[];
									for(var k=0;k<theme3.length;k++){
										widgetDefinition.widgetContent.data[j].marker.colors.push(theme3[k].color);
									}
								}
							}
							else if(themeSelected==="theme4"){
								if(j===0){
									widgetDefinition.widgetContent.data[j].marker.colors=[];
									for(var k=0;k<theme4.length;k++){
										widgetDefinition.widgetContent.data[j].marker.colors.push(theme4[k].color);
									}
								}
							
							}
						}
					}	
					if(widgetDefinition.widgetContent.layout.length!=0)
					{
						if(typeof themeSelected != 'undefined'){
						if(themeSelected==="theme1"){
							widgetDefinition.widgetContent.layout.paper_bgcolor = layoutBackground.paper_bgcolor;
							widgetDefinition.widgetContent.layout.plot_bgcolor = layoutBackground.plot_bgcolor;
						}else {
							widgetDefinition.widgetContent.layout.paper_bgcolor = layoutNormal.paper_bgcolor;
							widgetDefinition.widgetContent.layout.plot_bgcolor = layoutNormal.plot_bgcolor;
						}
						}
					}						
						data = widgetDefinition.widgetContent.data;
						layout = widgetDefinition.widgetContent.layout;
						config = widgetDefinition.widgetContent.config;
						this.redrawChart(chartArea,data,layout,config);
						//$(".js-plotly-plot .plotly .modebar").css("background","#E0E0E0 !important");
						if(themeSelected==="theme1"){
							$('.js-plotly-plot .plotly .modebar').attr('style', 'background: #E0E0E0 !important');
							$('.cprDashboardTableView tbody tr:nth-child(odd)').attr('style', 'background-color: rgb(69,117,180)!important');
							$('.cprDashboardTableView tbody tr:nth-child(even)').attr('style', 'background-color: rgb(26, 118, 255)!important');
						}else if(themeSelected==="theme2"){
							$('.js-plotly-plot .plotly .modebar').attr('style', 'background: #FFFFF !important');
							$('.cprDashboardTableView tbody tr:nth-child(odd)').attr('style', 'background-color: #138D75 !important');
							$('.cprDashboardTableView tbody tr:nth-child(even)').attr('style', 'background-color: #EC7063 !important');
						}
						else if(themeSelected==="theme3"){
							$('.js-plotly-plot .plotly .modebar').attr('style', 'background: #FFFFF !important');
							$('.cprDashboardTableView tbody tr:nth-child(odd)').attr('style', 'background-color: #FF800E !important');
							$('.cprDashboardTableView tbody tr:nth-child(even)').attr('style', 'background-color: #FFBC79 !important');
						}
						else if(themeSelected==="theme4"){
							$('.js-plotly-plot .plotly .modebar').attr('style', 'background: #FFFFF !important');
							$('.cprDashboardTableView tbody tr:nth-child(odd)').attr('style', 'background-color: #ffd94a !important');
							$('.cprDashboardTableView tbody tr:nth-child(even)').attr('style', 'background-color: #ffdd71 !important');
						}
					}				
				}			
			},
			widgetClick:function(interactionType) {
			
			
			},
			resetFilter:function(widgetId) {				
				var widgetDefinition = this._getWidgetContentForId(widgetId, this);
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
					this.renderNewChart(chartArea,data,layout,config);
				}
				
			},
			applyFilter:function(widgetConfig,widgetId) {
				
				var widgetDefinition = this._getWidgetContentForId(widgetId, this);
				var id = "li#" + widgetDefinition.widgetId;
				var chartArea;
				var data;
				var layout;
				var config;
				var chart;
				chartArea = this.element.find(id + " div.cprDashboardChart");
				
				if (widgetDefinition.widgetType === 'chart') {
					
					data = widgetConfig.data;
					widgetDefinition.widgetContent.layout.xaxis.range = widgetConfig.layout.xaxis.range;
					layout = widgetDefinition.widgetContent.layout;
					config = widgetDefinition.widgetContent.config;
					
					this.renderNewChart(chartArea,data,layout,config);
				}
				
			},
			_enableEdit:function(widgetDefinition,widgetId){
				var id = "li#" + widgetDefinition.widgetId;
				var data;
				var layout;
				var config;
				var chart;
				var chartArea = this.element.find(id + " div.cprDashboardChart");
				if (widgetDefinition.widgetType === 'chart') {
					
					data = widgetDefinition.widgetContent.data;
					layout = widgetDefinition.widgetContent.layout;
					config = widgetDefinition.widgetContent.config;
					
					config.editable=true;
					widgetDefinition.widgetContent.config = config;				
					this.renderNewChart(chartArea,data,layout,config);						
					if (widgetDefinition.getDataBySelection) {
					
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}						
					
				}
			},
			_disableEdit:function(widgetDefinition,widgetId){
				var id = "li#" + widgetDefinition.widgetId;
				var data;
				var layout;
				var config;
				var chart;
				var chartArea = this.element.find(id + " div.cprDashboardChart");
				if (widgetDefinition.widgetType === 'chart') {
					
					data = widgetDefinition.widgetContent.data;
					layout = widgetDefinition.widgetContent.layout;
					config = widgetDefinition.widgetContent.config;
					
					config.editable=false;
					widgetDefinition.widgetContent.config = config;				
					this.renderNewChart(chartArea,data,layout,config);						
					if (widgetDefinition.getDataBySelection) {
					
						this._bindSelectEvent(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
					} else {
						if(widgetDefinition.graphType === 'exploratory'){
							this._bindChartEvents(chartArea[0], widgetDefinition.widgetId, widgetDefinition, this);
						}
					}						
					
				}
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
					if(widgetDefinition.chartType === 'bar' && changeChartObject.chartTo ==='line'
						||widgetDefinition.chartType === 'area' && changeChartObject.chartTo ==='line'
						||widgetDefinition.chartType === 'barline' && changeChartObject.chartTo ==='line'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
							widgetDefinition.widgetContent.data[i].type = 'scatter';
							widgetDefinition.widgetContent.data[i].mode = null;
							widgetDefinition.widgetContent.data[i].fill = null;
						}	
													
					}
					else if(widgetDefinition.chartType === 'line' && changeChartObject.chartTo ==='bar'
						||widgetDefinition.chartType === 'barline' && changeChartObject.chartTo ==='bar'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'bar';
						}	
							
					}					
					else if(widgetDefinition.chartType === 'line' && changeChartObject.chartTo ==='barline'
						||widgetDefinition.chartType === 'bar' && changeChartObject.chartTo ==='barline'
						||widgetDefinition.chartType === 'area' && changeChartObject.chartTo ==='barline'
						||widgetDefinition.chartType === 'column' && changeChartObject.chartTo ==='barline'){ 
						var widgetLength =widgetDefinition.widgetContent.data.length;
						if(widgetLength === 2)
						{
							widgetDefinition.widgetContent.data[0].type = 'bar';
							widgetDefinition.widgetContent.data[0].orientation = null;
							widgetDefinition.widgetContent.data[1].type = 'scatter';
							
						}	else if(widgetLength === 3){
							widgetDefinition.widgetContent.data[0].type = 'bar';
							widgetDefinition.widgetContent.data[0].orientation = null;
							widgetDefinition.widgetContent.data[1].type = 'scatter';
							widgetDefinition.widgetContent.data[1].fill = null;
							widgetDefinition.widgetContent.data[2].type = 'bar';
							widgetDefinition.widgetContent.data[2].orientation = null;
						}
						if(widgetDefinition.chartType === 'bar'){
						if(widgetDefinition.widgetContent.layout.length!=0)
							{
									widgetDefinition.widgetContent.layout.barmode = null;
							}
						}
							
					}
					else if(widgetDefinition.chartType === 'line' && changeChartObject.chartTo ==='area' ||
							widgetDefinition.chartType === 'bar' && changeChartObject.chartTo ==='area'
							||widgetDefinition.chartType === 'barline' && changeChartObject.chartTo ==='area'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'scatter';
								widgetDefinition.widgetContent.data[i].mode = 'lines';
								widgetDefinition.widgetContent.data[i].fill = 'tonexty';
								
						}	
							
					}
					//area to line
					else if(widgetDefinition.chartType === 'area' && changeChartObject.chartTo ==='line'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'scatter';
								widgetDefinition.widgetContent.data[i].mode = null;
								widgetDefinition.widgetContent.data[i].fill = null;
						}	
							
					}
					else if(widgetDefinition.chartType === 'area' && changeChartObject.chartTo ==='bar'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'bar';
						}	
							
					}
					/** bar to column chart **/
					else if(widgetDefinition.chartType === 'bar' && changeChartObject.chartTo === 'column'
						||widgetDefinition.chartType === 'barline' && changeChartObject.chartTo === 'column'){ 
						if(widgetDefinition.widgetContent.layout.length!=0)
						{
								widgetDefinition.widgetContent.layout.barmode = 'group';
						}
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].orientation = 'h';
								widgetDefinition.widgetContent.data[i].type = 'bar';
								
						}
							
					}
					
					else if(widgetDefinition.chartType === 'column' && changeChartObject.chartTo ==='bar'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.layout.barmode = 'stack';
						}	
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].orientation = null;
								
						}
							
					}
					//pie to doughnut
					else if(widgetDefinition.chartType === 'pie' && changeChartObject.chartTo ==='doughnut'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'pie';
								widgetDefinition.widgetContent.data[i].hole = .4 ;
								widgetDefinition.widgetContent.data[i].fill = null;
						}	
							
					}
					//doughnut to pie
					else if(widgetDefinition.chartType === 'doughnut' && changeChartObject.chartTo ==='pie'){ 
						var i=0;
						for(i=0;i<widgetDefinition.widgetContent.data.length;i++)
						{
								widgetDefinition.widgetContent.data[i].type = 'pie';
								widgetDefinition.widgetContent.data[i].domain = [0,.48] ;
								//widgetDefinition.widgetContent.data[i].fill = null;
								widgetDefinition.widgetContent.data[i].hole = null;
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
			_interactMap: function(widgetDefinition,dataPoint) {
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
					var mapArea;
					var mapRedraw;
					var WidgetContentToChange = WidgetDefinitionToChange.widgetContent;
					var cust=0;
					mapArea = this.element.find(id + " div.cprDashboardMap");
									
					if(dataPoint.id==="Atmosphere"){
						cust = 3;
					}else if(dataPoint.id=="CafeFootball"){
						cust = 2;
					}else if(dataPoint.id==="Serenity"){
						cust = 1;
					}					
					if (widgetDefinition.widgetType === 'map') {
						
						WidgetContentToChange.dataProvider.areas = widgetDefinition.linkedData[cust];
						mapRedraw =AmCharts.makeChart(mapArea[0], WidgetContentToChange);
						mapRedraw.validateData();										
					}					
				}
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
						if(WidgetDefinitionToChange.chartType === 'line'){
							Plotly.animate(chartArea[0], { data, layout,config} ,{
								transition: {  
									duration: 500,
									easing: 'cubic-in-out' 
										} 
							});						
							Plotly.redraw(chartArea[0]);							
						}
						else{
							Plotly.newPlot(chartArea[0], data, layout,config);
							Plotly.redraw(chartArea[0]);
						
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
					var map = AmCharts.makeChart(mapArea[0], widgetDefinition.widgetContent);
					if(widgetDefinition.widgetClick === "interact"){
						this._bindMapEvents(map, widgetDefinition.widgetId, widgetDefinition, this);
					}					
				}
				
			},
			_bindSelectEvent : function(chartArea, widgetId, widgetDefinition, context) {
				//Flotr implementation
			/*	Flotr.EventAdapter.observe(chartArea, "flotr:select", function(area) {
					var evtObj = {
						selectedWidgetId : widgetId,
						chartData : area
					};
					context._trigger("plotselected", null, evtObj);
				});		*/	
				
			},
			_bindMapEvents : function(mapArea, widgetId, widgetDefinition, context) {		
				var id = "li#" + widgetDefinition.widgetId;				
				mapArea.addListener("click", event => {
			
			        var info = event.chart.getDevInfo();			    
			       // var mapObject = event.mapObject.id;
			       var eventObj ={
			           "latitude": info.latitude,
			           "longitude": info.longitude,
			          // "title":info.title,
			         // "id":mapObject
			        };
			      
			    	//context._interactMap(widgetDefinition,eventObj);			       
				});
				mapArea.addListener("clickMapObject", event => {
					
			       // var info = event.chart.getDevInfo();			    
			        var id = event.mapObject.id;
			        var title = event.mapObject.title ;
			       var eventObj ={
			           "title":title,
			           "id":id
			        };
			      
			    	context._interactMap(widgetDefinition,eventObj);			       
				});
						
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
					if(null!= widgetDefinition.widgetClick){
					if(widgetDefinition.widgetClick === "details"){
							
						context._trigger("plotclicked", null, evtObj);	
						
					}else if(widgetDefinition.widgetClick === "interact"){
						
							context._interactChart(widgetDefinition,evtObj);
						}
					}
									
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
					});
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

