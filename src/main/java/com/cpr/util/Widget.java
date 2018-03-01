package com.cpr.util;

public class Widget {

	// the widget title
	private String widgetTitle;

	// unique widget id
	private String widgetId;

	// type of widget - normal/exploratory
	private String widgetType;

	// the size of the widget
	private String widgetDimension;

	// Widget content for the text widget
	private String widgetContentText;

	private String chartType;

	private String graphType;
	private boolean setJqueryStyle;
	private boolean enableRefresh;
	private String refreshCallBack;
	private WidgetContent widgetContent;
	private String widgetClick;
	private String widgetEdit;

	public Widget() {

	}

	public Widget(String widgetTitle, String widgetId, WidgetTypeEnum widgetType, GraphTypeEnum graphType,
			WidgetDimensionEnum widgetDimension, ChartTypeEnum chartType, WidgetContent widgetContent) {
		this.setWidgetTitle(widgetTitle);
		this.setWidgetId(widgetId);
		this.setWidgetType(widgetType.getWidgetType());
		this.setWidgetDimension(widgetDimension.getWidgetDimension());
		this.setChartType(chartType.getChartName());
		this.setWidgetContent(widgetContent);
		this.setGraphType(graphType.getGraphType());
	}

	public String getChartType() {
		return chartType;
	}

	public String getGraphType() {
		return graphType;
	}

	public String getRefreshCallBack() {
		return refreshCallBack;
	}

	public String getWidgetClick() {
		return widgetClick;
	}

	public WidgetContent getWidgetContent() {
		return widgetContent;
	}

	public String getWidgetContentText() {
		return widgetContentText;
	}

	public String getWidgetDimension() {
		return widgetDimension;
	}

	public String getWidgetEdit() {
		return widgetEdit;
	}

	public String getWidgetId() {
		return widgetId;
	}

	public String getWidgetTitle() {
		return widgetTitle;
	}

	public String getWidgetType() {
		return widgetType;
	}

	public boolean isEnableRefresh() {
		return enableRefresh;
	}

	public boolean isSetJqueryStyle() {
		return setJqueryStyle;
	}

	public void setChartType(String chartType) {
		this.chartType = chartType;
	}

	public void setEnableRefresh(boolean enableRefresh) {
		this.enableRefresh = enableRefresh;
	}

	public void setGraphType(String graphType) {
		this.graphType = graphType;
	}

	public void setRefreshCallBack(String refreshCallBack) {
		this.refreshCallBack = refreshCallBack;
	}

	public void setSetJqueryStyle(boolean setJqueryStyle) {
		this.setJqueryStyle = setJqueryStyle;
	}

	public void setWidgetClick(String widgetClick) {
		this.widgetClick = widgetClick;
	}

	public void setWidgetContent(WidgetContent widgetContent) {
		this.widgetContent = widgetContent;
	}

	public void setWidgetContentText(String widgetContentText) {
		this.widgetContentText = widgetContentText;
	}

	public void setWidgetDimension(String widgetDimension) {
		this.widgetDimension = widgetDimension;
	}

	public void setWidgetEdit(String widgetEdit) {
		this.widgetEdit = widgetEdit;
	}

	public void setWidgetId(String widgetId) {
		this.widgetId = widgetId;
	}

	public void setWidgetTitle(String widgetTitle) {
		this.widgetTitle = widgetTitle;
	}

	public void setWidgetType(String widgetType) {
		this.widgetType = widgetType;
	}
}
