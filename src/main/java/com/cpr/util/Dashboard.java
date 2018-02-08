package com.cpr.util;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

@Component
public class Dashboard {

	private ArrayList<Widget> widgets;

	public Dashboard() {

	}

	public ArrayList<Widget> getWidgets() {
		return widgets;
	}

	public void setWidgets(ArrayList<Widget> widgets) {
		this.widgets = widgets;
	}

}
