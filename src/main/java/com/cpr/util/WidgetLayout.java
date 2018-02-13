package com.cpr.util;

public class WidgetLayout {

	// the title for the graph/chart plotted
	private String title;

	// flag to display the legends for the graph/chart plotted
	private boolean showlegend;

	// flag to enable auto sizing for the graph/chart plotted
	private boolean autosize;

	// height of the graph/chart plotted in pixels
	private int height;

	// width of the graph/chart plotted in pixels
	private int width;

	// title for the X-Axis
	private AxisLayout xaxis;

	// title for the Y-Axis
	private AxisLayout yaxis;

	private String paper_bgcolor;

	private String plot_bgcolor;

	public WidgetLayout(String main_title, boolean showLegend, int height, int width, AxisLayout x_axis,
			AxisLayout y_axis) {
		// TODO Auto-generated constructor stub
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
