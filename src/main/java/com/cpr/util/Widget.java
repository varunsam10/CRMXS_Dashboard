package com.cpr.util;

public class Widget {

	private String widgetTitle;
	private String widgetId;
	private String widgetType;
	private String widgetDimension;
	private String chartType;
	private String graphType;
	private boolean setJqueryStyle;
	private boolean enableRefresh;
	private String refreshCallBack;
	private WidgetContent widgetContent;
	
	public Widget(String widgetTitle, String widgetId, WidgetTypeEnum widgetType, GraphType graphType, WidgetDimensionEnum widgetDimension, ChartTypeEnum chartType, WidgetContent widgetContent) {
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
	
	
}
