package com.cpr.util;

public enum WidgetClickEnum {
	INTERACT("interact"),
	DISABLE("disable"),
	DETAILS("details");
	
	private String widgetClick;
	
	private WidgetClickEnum(String widgetClick){
		this.widgetClick = widgetClick;
	}
	
	public String getWidgetClick(){
		return widgetClick;
	}
}
