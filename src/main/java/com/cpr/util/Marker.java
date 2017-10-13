package com.cpr.util;

public class Marker {
	private int[] size;
	private String color;
	private double opacity;
	
	public Marker(int[] size, String color, double opacity) {
		// TODO Auto-generated constructor stub
		this.setSize(size);
		this.setColor(color);
		this.setOpacity(opacity);
	}
	
	public Marker() {
		
	}
	
	public int[] getSize() {
		return size;
	}
	public void setSize(int[] size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public double getOpacity() {
		return opacity;
	}
	public void setOpacity(double opacity) {
		this.opacity = opacity;
	}
	
	
}
