package com.cpr.util;

public enum WidgetType {
	CHART("chart"),
	TABLE("table"),
	TEXT("text");
	
	private String widgetType;
	
	private WidgetType(String widgetType) {
		// TODO Auto-generated constructor stub
		this.widgetType = widgetType;
	}
	
	public String getWidgetType(){
		return widgetType;
	}
}
