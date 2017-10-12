package com.cpr.util;

public class WidgetLayout {
	private String title;
	private boolean showlegend;
	private int height;
	private int width;
	private AxisLayout xaxis;
	private AxisLayout yaxis;
	
	public WidgetLayout(String main_title, boolean showLegend, int height, int width, AxisLayout x_axis, AxisLayout y_axis) {
		// TODO Auto-generated constructor stub
		this.setTitle(main_title);
		this.setShowlegend(showLegend);
		this.setHeight(height);
		this.setWidth(width);
		this.setXaxis(x_axis);
		this.setYaxis(y_axis);
	}
	
	public WidgetLayout(String main_title, AxisLayout x_axis, AxisLayout y_axis) {
		this.setTitle(main_title);
		this.setXaxis(x_axis);
		this.setYaxis(y_axis);		
	}
	
	
	


	public WidgetLayout(){
		
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
	
	
}
