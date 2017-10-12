package com.cpr.model;

public class Widget {

	private String widgetTitle;
	private String widgetId;
	private String widgetType;
	private String widgetDimension;
	private String chartType;
	private WidgetContent widgetContent;
	
	public Widget(String widgetTitle, String widgetId, String widgetType, String widgetDimension, String chartType, WidgetContent widgetContent) {
		// TODO Auto-generated constructor stub
		this.setWidgetTitle(widgetTitle);
		this.setWidgetId(widgetId);
		this.setChartType(chartType);
		this.setWidgetDimension(widgetDimension);
		this.setChartType(chartType);
		this.setWidgetContent(widgetContent);
	}
	
	public Widget() {
		
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
	public void setWidgetContent(WidgetContent widgetContent) {
		this.widgetContent = widgetContent;
	}
	
	
	
	
}
