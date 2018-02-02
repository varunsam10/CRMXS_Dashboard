package com.cpr.util;

//Main class for configuring the widget
public class Widget {

	// the widget title
	private String widgetTitle;

	// unique widget id
	private String widgetId;

	// type of widget - normal/exploratory
	private String widgetType;

	// the size of the widget
	private String widgetDimension;

	// the chartType - graph/table
	private String chartType;

	// the graphType - pie/bar/line
	private String graphType;

	// set jQuery styling on/off for datatable
	private boolean setJqueryStyle;

	// enable the refresh callback
	private boolean enableRefresh;

	// the refresh callback function - yet to be implemented
	private String refreshCallBack;

	// the widgetContent Composite consists of widgetData, widgetLayout and
	// widgetConfig
	private WidgetContent widgetContent;
	
	//Handling the widget click property
	private String widgetClick;
	
	//Handling the widget Edit property
	private String widgetEdit;

	public Widget(String widgetTitle, String widgetId, WidgetTypeEnum widgetType, GraphTypeEnum graphType,
			WidgetDimensionEnum widgetDimension, ChartTypeEnum chartType, WidgetContent widgetContent) {
		// TODO Auto-generated constructor stub
		this.setWidgetTitle(widgetTitle);
		this.setWidgetId(widgetId);
		this.setWidgetType(widgetType.getWidgetType());
		this.setWidgetDimension(widgetDimension.getWidgetDimension());
		this.setChartType(chartType.getChartName());
		this.setWidgetContent(widgetContent);
		this.setGraphType(graphType.getGraphType());
	}

	public Widget() {

	}

	public String getGraphType() {
		return graphType;
	}

	public void setGraphType(String graphType) {
		this.graphType = graphType;
	}

	public String getChartType() {
		return chartType;
	}

	public void setChartType(String chartType) {
		this.chartType = chartType;
	}

	public String getWidgetDimension() {
		return widgetDimension;
	}

	public void setWidgetDimension(String widgetDimension) {
		this.widgetDimension = widgetDimension;
	}

	public String getWidgetTitle() {
		return widgetTitle;
	}

	public void setWidgetTitle(String widgetTitle) {
		this.widgetTitle = widgetTitle;
	}

	public String getWidgetId() {
		return widgetId;
	}

	public void setWidgetId(String widgetId) {
		this.widgetId = widgetId;
	}

	public String getWidgetType() {
		return widgetType;
	}

	public void setWidgetType(String widgetType) {
		this.widgetType = widgetType;
	}

	public WidgetContent getWidgetContent() {
		return widgetContent;
	}

	public boolean isSetJqueryStyle() {
		return setJqueryStyle;
	}

	public void setSetJqueryStyle(boolean setJqueryStyle) {
		this.setJqueryStyle = setJqueryStyle;
	}

	public boolean isEnableRefresh() {
		return enableRefresh;
	}

	public void setEnableRefresh(boolean enableRefresh) {
		this.enableRefresh = enableRefresh;
	}

	public String getRefreshCallBack() {
		return refreshCallBack;
	}

	public void setRefreshCallBack(String refreshCallBack) {
		this.refreshCallBack = refreshCallBack;
	}

	public void setWidgetContent(WidgetContent widgetContent) {
		this.widgetContent = widgetContent;
	}

	public String getWidgetClick() {
		return widgetClick;
	}

	public void setWidgetClick(String widgetClick) {
		this.widgetClick = widgetClick;
	}

	public String getWidgetEdit() {
		return widgetEdit;
	}

	public void setWidgetEdit(String widgetEdit) {
		this.widgetEdit = widgetEdit;
	}	
}
