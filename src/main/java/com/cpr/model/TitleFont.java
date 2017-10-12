package com.cpr.model;

public class TitleFont {
	private String family;
	private int size;
	private String color;
	
	public TitleFont(String family, int size, String color) {
		// TODO Auto-generated constructor stub
		this.setFamily(family);
		this.setSize(size);
		this.setColor(color);
	}
	
	public TitleFont() {
		
	}
	
	public String getFamily() {
		return family;
	}
	public void setFamily(String family) {
		this.family = family;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	
}
