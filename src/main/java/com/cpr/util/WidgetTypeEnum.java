package com.cpr.util;

public enum WidgetTypeEnum {
	CHART("chart"),
	TABLE("table"),
	TEXT("Text");
	
	private String widgetType;
	
	private WidgetTypeEnum(String widgetType) {
		// TODO Auto-generated constructor stub
		this.widgetType = widgetType;
	}
	
	public String getWidgetType(){
		return widgetType;
	}
}
