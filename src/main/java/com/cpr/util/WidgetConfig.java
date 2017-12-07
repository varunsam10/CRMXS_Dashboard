package com.cpr.util;

public class WidgetConfig {
	
	//the mode buttons to be included in the widget
	private String[] modeBarButtonsToRemove;
	
	//flag to enable/disable the displaylog
	private static final boolean displaylogo = false;

	public WidgetConfig(String[] modeBarButtonsToRemove) {
		this.setModeBarButtonsToRemove(modeBarButtonsToRemove);
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

}
