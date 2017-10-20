package com.cpr.util;

public enum GraphType {
	EXPLORATORY("exploratory"),
	NORMAL("normal");
	
	private String graphType;
	
	private GraphType(String graphType) {
		// TODO Auto-generated constructor stub
		this.graphType = graphType;
	}
	
	public String getGraphType(){
		return graphType;
	}
}
