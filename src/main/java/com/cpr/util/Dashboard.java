package com.cpr.util;

import java.util.ArrayList;

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

	public ArrayList<Widget> createDashboard() {
		widgets = new ArrayList<Widget>();
		ArrayList<WidgetData> widgetData = new ArrayList<WidgetData>();

		Object[] x1 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
		Object[] y1 = { 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 };
		WidgetData trace1 = new WidgetData(x1, y1, "Desperado", "scatter");
		widgetData.add(trace1);

		Object[] x2 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
		Object[] y2 = { 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48 };
		WidgetData trace2 = new WidgetData(x2, y2, "Tiger", "scatter");
		widgetData.add(trace2);

		// WidgetData widgetData = new WidgetData(plotlylinedata);

		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);

		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);

		WidgetLayout widgetLayout = new WidgetLayout("How old are they ?", x_AxisLayout, y_AxisLayout, true);

		String[] modeBarButtonsToRemove = { "sendDataToCloud" };
		WidgetConfig widgetConfig = new WidgetConfig(modeBarButtonsToRemove);

		WidgetContent widgetContent = new WidgetContent(widgetData, widgetLayout, widgetConfig);

		Widget widgetLine = new Widget("Items sold", "id001", WidgetTypeEnum.CHART, GraphType.EXPLORATORY,
				WidgetDimensionEnum.LARGE, ChartTypeEnum.LINE, widgetContent);

		ArrayList<Widget> widgetList = new ArrayList<Widget>();

		widgetList.add(widgetLine);

		// Creating Pie widget config
		ArrayList<WidgetData> pieWidgetDataList = new ArrayList<WidgetData>();

		// Pie Data
		Object[] pieValues = { 19, 26, 35, 10, 10 };
		Object[] pieLabels = { "Tiger", "Heiniken", "Brand1", "Brand", "Brand3" };

		WidgetData pieWidgetData = new WidgetData();
		pieWidgetData.setValues(pieValues);
		pieWidgetData.setLabels(pieLabels);
		pieWidgetData.setType("pie");
		pieWidgetDataList.add(pieWidgetData);

		// Pie Layput
		WidgetLayout pieLayout = new WidgetLayout();
		pieLayout.setTitle("Revenue in US $");
		pieLayout.setAutosize(true);

		WidgetContent pieContent = new WidgetContent(pieWidgetDataList, pieLayout, widgetConfig);

		Widget widgetPie = new Widget("Sales Figures", "id004", WidgetTypeEnum.CHART, GraphType.EXPLORATORY,
				WidgetDimensionEnum.MEDIUM, ChartTypeEnum.PIE, pieContent);

		ArrayList<WidgetData> barlineDataList = new ArrayList<WidgetData>();
		Object[] xbar_line = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
		Object[] ybar_line = { 1.5, 1, 1.3, 0.7, 0.8, 0.9, 1.1, 1.3, 1.5, 1 };

		WidgetData barlineData1 = new WidgetData(xbar_line, ybar_line, "SF Brewries", "bar");
		barlineDataList.add(barlineData1);

		Object[] xbar_line2 = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 };
		Object[] ybar_line2 = { 1, 0.5, 0.7, 1.2, 0.3, 0.4, 0.6, 0.7, 1, 0.5 };
		WidgetData barlineData2 = new WidgetData(xbar_line2, ybar_line2, "LA Brewries", "scatter");

		barlineDataList.add(barlineData2);

		AxisLayout xbarlineLayout = new AxisLayout();
		xbarlineLayout.setTitle(" ");
		AxisLayout ybarlineLayout = new AxisLayout();
		ybarlineLayout.setTitle("Number of redemptions");

		WidgetLayout barlineLayout = new WidgetLayout();
		barlineLayout.setXaxis(xbarlineLayout);
		barlineLayout.setYaxis(ybarlineLayout);
		barlineLayout.setAutosize(true);

		WidgetContent barlineContent = new WidgetContent(barlineDataList, barlineLayout, widgetConfig);

		Widget widgetBarLine = new Widget("Hour Wise Redemptions", "id0010", WidgetTypeEnum.CHART,
				GraphType.EXPLORATORY, WidgetDimensionEnum.MEDIUM, ChartTypeEnum.BARLINE, barlineContent);

		widgetList.add(widgetBarLine);
		return widgetList;

	}

//	public static void main(String[] args) {
//	//	Dashboard dash = new Dashboard();
//	//	dash.createDashboard();
//
//	}

}
