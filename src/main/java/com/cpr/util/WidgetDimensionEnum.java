package com.cpr.util;

import java.util.ArrayList;
import java.util.List;

public enum WidgetDimensionEnum {

	LARGE("large"), MEDIUM("normal"), SMALL("small");
	
	private String widgetDimension;

	WidgetDimensionEnum(String widgetDimension) {
		this.widgetDimension = widgetDimension;
	}

	public String getWidgetDimension() {
		return widgetDimension;
	}

	public void setWidgetDimension(String widgetDimension) {
		this.widgetDimension = widgetDimension;
	}
	
	public static List<String> getWidgetDimensions() {
	        List<String> list = new ArrayList<String>();
	        for(WidgetDimensionEnum wd : WidgetDimensionEnum.values()){
	            list.add(wd.widgetDimension);
	        }
	        return list;
	}
}
