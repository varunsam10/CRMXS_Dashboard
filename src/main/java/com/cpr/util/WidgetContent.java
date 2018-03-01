package com.cpr.util;

import java.util.ArrayList;

public class WidgetContent {

	private ArrayList<WidgetData> data;
	private WidgetLayout layout;
	private WidgetConfig config;

	public WidgetContent(ArrayList<WidgetData> widgetData, WidgetLayout widgetLayout, WidgetConfig widgetConfig) {
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
