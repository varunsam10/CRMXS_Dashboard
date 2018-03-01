package com.cpr.util;

public class WidgetData {

	// the x-axis values for the graph
	private Object[] x;

	// the y-axis values for the graph
	private Object[] y;

	// the array values for the pie chart widget
	private Object[] values;
	private Object[] labels;
	private String name;
	private String type;
	private Marker marker;
	private String mode;

	public WidgetData() {
	}

	public WidgetData(Object[] x_axis, Object[] y_axis, String name, String type) {
		this.setX(x_axis);
		this.setY(y_axis);
		this.setName(name);
		this.setType(type);
	}

	public WidgetData(Object[] x_axis, Object[] y_axis, String name, String type, Marker marker, String mode) {
		this.setX(x_axis);
		this.setY(y_axis);
		this.setName(name);
		this.setType(type);
		this.setMarker(marker);
		this.setMode(mode);
	}

	public Object[] getValues() {
		return values;
	}

	public void setValues(Object[] values) {
		this.values = values;
	}

	public Object[] getLabels() {
		return labels;
	}

	public void setLabels(Object[] labels) {
		this.labels = labels;
	}

	public Object[] getX() {
		return x;
	}

	public void setX(Object[] x) {
		this.x = x;
	}

	public Object[] getY() {
		return y;
	}

	public void setY(Object[] y) {
		this.y = y;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Marker getMarker() {
		return marker;
	}

	public void setMarker(Marker marker) {
		this.marker = marker;
	}

	public String getMode() {
		return mode;
	}

	public void setMode(String mode) {
		this.mode = mode;
	}

}
