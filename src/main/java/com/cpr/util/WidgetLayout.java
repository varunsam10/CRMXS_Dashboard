package com.cpr.util;

public class WidgetLayout {
	private String title;
	private boolean showlegend;
	private boolean autosize;
	private int height;
	private int width;
	private AxisLayout xaxis;
	private AxisLayout yaxis;
	private String paper_bgcolor;
	private String plot_bgcolor;

	public WidgetLayout(String main_title, boolean showLegend, int height, int width, AxisLayout x_axis,
			AxisLayout y_axis) {
		this.setTitle(main_title);
		this.setShowlegend(showLegend);
		this.setHeight(height);
		this.setWidth(width);
		this.setXaxis(x_axis);
		this.setYaxis(y_axis);
	}

	public WidgetLayout(String main_title, AxisLayout x_axis, AxisLayout y_axis, boolean autosize) {
		this.setTitle(main_title);
		this.setXaxis(x_axis);
		this.setYaxis(y_axis);
		this.setAutosize(autosize);
	}

	public WidgetLayout() {

	}

	public boolean getAutosize() {
		return autosize;
	}

	public void setAutosize(boolean autosize) {
		this.autosize = autosize;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean isShowlegend() {
		return showlegend;
	}

	public void setShowlegend(boolean showlegend) {
		this.showlegend = showlegend;
	}

	public AxisLayout getXaxis() {
		return xaxis;
	}

	public void setXaxis(AxisLayout xaxis) {
		this.xaxis = xaxis;
	}

	public AxisLayout getYaxis() {
		return yaxis;
	}

	public void setYaxis(AxisLayout yaxis) {
		this.yaxis = yaxis;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public String getPaper_bgcolor() {
		return paper_bgcolor;
	}

	public void setPaper_bgcolor(String paper_bgcolor) {
		this.paper_bgcolor = paper_bgcolor;
	}

	public String getPlot_bgcolor() {
		return plot_bgcolor;
	}

	public void setPlot_bgcolor(String plot_bgcolor) {
		this.plot_bgcolor = plot_bgcolor;
	}

}
