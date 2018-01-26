package com.cpr.util;

public class AxisLayout {
	 private String title;
	 private TitleFont titlefont;
	 private String[] range;
	 
	public AxisLayout(String Layout, TitleFont titleFont,String[] range) {
		// TODO Auto-generated constructor stub
		this.setTitle(Layout);
		this.setTitleFont(titleFont);
		this.setRange(range);
	}
	public AxisLayout(String Layout, TitleFont titleFont) {
		// TODO Auto-generated constructor stub
		this.setTitle(Layout);
		this.setTitleFont(titleFont);		
	}
	
	public AxisLayout() {
		// TODO Auto-generated constructor stub
	}
	 
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public TitleFont getTitleFont() {
		return titlefont;
	}
	public void setTitleFont(TitleFont titleFont) {
		this.titlefont = titleFont;
	}

	public TitleFont getTitlefont() {
		return titlefont;
	}

	public void setTitlefont(TitleFont titlefont) {
		this.titlefont = titlefont;
	}

	public String[] getRange() {
		return range;
	}

	public void setRange(String[] range) {
		this.range = range;
	}

	 
}
