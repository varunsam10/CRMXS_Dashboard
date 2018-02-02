package com.cpr.util;

public enum WidgetEditEnum {
	ENABLE("enable"),
	DISABLE("disable");
	
	private String widgetEdit;
	
	private WidgetEditEnum(String widgetEdit){
		this.widgetEdit = widgetEdit;
	}

	public String getWidgetEdit() {
		return widgetEdit;
	}

}
