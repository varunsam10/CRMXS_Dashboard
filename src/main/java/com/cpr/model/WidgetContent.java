package com.cpr.model;

public class WidgetContent {
	private WidgetData data;
	private WidgetLayout layout;
	private WidgetConfig config;
	
	public WidgetContent(WidgetData widgetData, WidgetLayout widgetLayout, WidgetConfig widgetConfig) {
		// TODO Auto-generated constructor stub
		this.setData(widgetData);
		this.setConfig(widgetConfig);
		this.setLayout(widgetLayout);
	}
	
	public WidgetContent() {
		
	}
	
	public WidgetData getData() {
		return data;
	}
	public void setData(WidgetData data) {
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
