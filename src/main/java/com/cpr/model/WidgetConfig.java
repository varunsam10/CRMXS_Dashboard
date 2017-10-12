package com.cpr.model;

public class WidgetConfig {
	private String[] modeBarButtonsToRemove;
	private boolean displaylogo;
	
	public WidgetConfig(String[] modeBarButtonsToRemove, boolean displaylogo) {
		this.setModeBarButtonsToRemove(modeBarButtonsToRemove);
		this.setDisplaylogo(displaylogo);
	}
	
	
	public String[] getModeBarButtonsToRemove() {
		return modeBarButtonsToRemove;
	}
	public void setModeBarButtonsToRemove(String[] modeBarButtonsToRemove) {
		this.modeBarButtonsToRemove = modeBarButtonsToRemove;
	}
	public boolean isDisplaylogo() {
		return displaylogo;
	}
	public void setDisplaylogo(boolean displaylogo) {
		this.displaylogo = displaylogo;
	}
	
	

}
