package com.cpr.model;

import java.util.ArrayList;

public class WidgetData {
	private ArrayList<Trace> traces;
	
	public WidgetData(ArrayList<Trace> traces) {
		// TODO Auto-generated constructor stub
		this.setTraces(traces);
		
	}
	
	public WidgetData() {
		
	}

	public ArrayList<Trace> getTraces() {
		return traces;
	}

	public void setTraces(ArrayList<Trace> traces) {
		this.traces = traces;
	}


	
}
