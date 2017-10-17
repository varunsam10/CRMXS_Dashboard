package com.cpr.util;


public class WidgetData {
	private Object[] x;
	private Object[] y;
	private Object[] values;
	private Object[] labels;
	private String name;
	private String type;
	private Marker marker;
	private String mode;
	
	public WidgetData() {
		// TODO Auto-generated constructor stub
	}
	
	public WidgetData(Object[] x_axis, Object[] y_axis, String name, String type) {
		// TODO Auto-generated constructor stub
		this.setX(x_axis);
		this.setY(y_axis);
		this.setName(name);
		this.setType(type);
	}
	
	public WidgetData(Object[] x_axis, Object[] y_axis, String name, String type, Marker marker, String mode) {
		// TODO Auto-generated constructor stub
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
