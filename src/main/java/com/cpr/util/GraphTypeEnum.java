package com.cpr.util;

public enum GraphTypeEnum {
	EXPLORATORY("exploratory"),
	NORMAL("normal");
	
	private String graphType;
	
	private GraphTypeEnum(String graphType) {
		// TODO Auto-generated constructor stub
		this.graphType = graphType;
	}
	
	public String getGraphType(){
		return graphType;
	}
}
