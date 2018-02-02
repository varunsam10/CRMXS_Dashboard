package com.cpr.util;

import java.util.ArrayList;

public class WidgetContent {
	
	//the data to be visualized in the widget
	private ArrayList<WidgetData> data;
	
	//the layout of the graph/chart contained in the widget
	private WidgetLayout widgetLayout;
	
	//additional configs for the graph/chart plotted
	private WidgetConfig widgetConfig;

	
	public WidgetContent(ArrayList<WidgetData> widgetData, WidgetLayout widgetLayout, WidgetConfig widgetConfig) {
		// TODO Auto-generated constructor stub
		this.setData(widgetData);
		this.setWidgetConfig(widgetConfig);
		this.setWidgetLayout(widgetLayout);
	}
	
	public WidgetContent() {
		
	}
	
	
	public ArrayList<WidgetData> getData() {
		return data;
	}

	public void setData(ArrayList<WidgetData> data) {
		this.data = data;
	}

	public WidgetLayout getWidgetLayout() {
		return widgetLayout;
	}

	public void setWidgetLayout(WidgetLayout widgetLayout) {
		this.widgetLayout = widgetLayout;
	}

	public WidgetConfig getWidgetConfig() {
		return widgetConfig;
	}

	public void setWidgetConfig(WidgetConfig widgetConfig) {
		this.widgetConfig = widgetConfig;
	}	

}
