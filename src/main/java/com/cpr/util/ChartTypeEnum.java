package com.cpr.util;

import java.util.ArrayList;
import java.util.List;

public enum ChartTypeEnum {

	COLOUMN("column"), BARLINE("barline"), BUBBLE("bubble"), BAR("bar"), LINE("line"), PIE("pie");

	private String chartName;

	ChartTypeEnum(String chartName) {
		this.chartName = chartName;
	}

	public String getChartName() {
		return chartName;
	}

	public void setChartName(String chartName) {
		this.chartName = chartName;
	}

	public static List<String> getChartNames() {
		List<String> list = new ArrayList<String>();
		for (ChartTypeEnum ct : ChartTypeEnum.values()) {
			list.add(ct.chartName);
		}
		return list;
	}

}
