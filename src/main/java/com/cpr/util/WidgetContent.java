package com.cpr.util;

import java.util.ArrayList;

public class WidgetContent {
	
	//the data to be visualized in the widget
	private ArrayList<WidgetData> data;
	
	//the layout of the graph/chart contained in the widget
	private WidgetLayout layout;
	
	//additional configs for the graph/chart plotted
	private WidgetConfig config;

	
	public WidgetContent(ArrayList<WidgetData> widgetData, WidgetLayout widgetLayout, WidgetConfig widgetConfig) {
		// TODO Auto-generated constructor stub
		this.setData(widgetData);
		this.setConfig(widgetConfig);
		this.setLayout(widgetLayout);
	}
	
	public WidgetContent() {
		
	}
	
	
	public ArrayList<WidgetData> getData() {
		return data;
	}

	public void setData(ArrayList<WidgetData> data) {
		this.data = data;
	}

	public WidgetLayout getLayout() {
		return layout;
	}
	public void setLayout(WidgetLayout layout) {
		this.layout = layout;
	}
	public WidgetConfig getConfig() {
		return config;
	}
	public void setConfig(WidgetConfig config) {
		this.config = config;
	}
	
	

}
