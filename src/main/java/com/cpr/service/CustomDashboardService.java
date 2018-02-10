package com.cpr.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.dao.DashboardDAO;
import com.cpr.util.AxisLayout;
import com.cpr.util.ChartTypeEnum;
import com.cpr.util.ColumnValue;
import com.cpr.util.Dashboard;
import com.cpr.util.GraphTypeEnum;
import com.cpr.util.TableData;
import com.cpr.util.TitleFont;
import com.cpr.util.Widget;
import com.cpr.util.WidgetConfig;
import com.cpr.util.WidgetContent;
import com.cpr.util.WidgetData;
import com.cpr.util.WidgetDimensionEnum;
import com.cpr.util.WidgetLayout;
import com.cpr.util.WidgetTypeEnum;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonElement;

@Service
public class CustomDashboardService {

	@Autowired
	private Dashboard dashboard;
	@Autowired
	private DashboardDAO dashboardDAO;
	public String changeGraphForId(String widgetId) {
		String response = dashboardDAO.changeGraph(widgetId);
		return response;
	}
	public String getWidgetBoards(String dashboardId) {
		String response = dashboardDAO.getWidgetForDashboard(dashboardId);
		return response;
	}
	public String updateWidgetById(String widgetId) {
		String response = dashboardDAO.updateWidget(widgetId);
		return response;
	}
	public String deleteWidgetById(String widgetId) {
		String response = dashboardDAO.deleteWidget(widgetId);
		return response;
	}
	public String addWidgetById(String widgetId) {
		String response = dashboardDAO.addWidget(widgetId);
		return response;
	}
	public String editWidgetTitleById(String widgetId) {
		String response = dashboardDAO.editWidgetTitle(widgetId);
		return response;
	}
	public String downloadWidgetDataofWidget(String widgetId) {
		String response = dashboardDAO.downloadWidgetData(widgetId);
		return response;
	}
	public void setDashboard(Dashboard dashboard) {
		this.dashboard = dashboard;
	}
	public String createDashboardJson() {
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(createDashboard());
		String response = gson.toJson(element);
		return response;
	}
	public String createDashboardJson(ArrayList<Widget> widgets) {
		Gson gson = new GsonBuilder().create();
		JsonElement element = gson.toJsonTree(widgets);
		String response = gson.toJson(element);
		return response;
	}
	private ArrayList<Widget> createDashboard() {
		ArrayList<Widget> widgets = new ArrayList<Widget>();
		ArrayList<WidgetData> widgetData = new ArrayList<WidgetData>();

		Object[] x1 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
		Object[] y1 = { 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 };
		WidgetData trace1 = new WidgetData(x1, y1, "Desperado", "scatter");
		widgetData.add(trace1);

		Object[] x2 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
		Object[] y2 = { 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48 };
		WidgetData trace2 = new WidgetData(x2, y2, "Tiger", "scatter");
		widgetData.add(trace2);

		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);

		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);

		WidgetLayout widgetLayout = new WidgetLayout("How old are they ?", x_AxisLayout, y_AxisLayout, true);

		String[] modeBarButtonsToRemove = { "sendDataToCloud" };
		WidgetConfig widgetConfig = new WidgetConfig(modeBarButtonsToRemove);

		WidgetContent widgetContent = new WidgetContent(widgetData, widgetLayout, widgetConfig);

		Widget widgetLine = new Widget("Items sold", "id001", WidgetTypeEnum.CHART, GraphTypeEnum.EXPLORATORY,
				WidgetDimensionEnum.LARGE, ChartTypeEnum.LINE, widgetContent);

		ArrayList<Widget> widgetList = new ArrayList<Widget>();

		widgetList.add(widgetLine);
//----------------------------------------------------------------------------------------------------------------------
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

		Widget widgetPie = new Widget("Sales Figures", "id004", WidgetTypeEnum.CHART, GraphTypeEnum.EXPLORATORY,
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
				GraphTypeEnum.EXPLORATORY, WidgetDimensionEnum.MEDIUM, ChartTypeEnum.BARLINE, barlineContent);

		widgetList.add(widgetBarLine);
		//Table widget config
		TableData browserTable = new TableData();
		ArrayList<Object[]> rows = new ArrayList<Object[]>();
		for(int i=0;i<=25;i++)
		{
			Object[] row = {"Trident" + Math.ceil(Math.random() * 20), "IE" + Math.ceil(Math.random() * 20),
			    			"Win" + Math.ceil(Math.random() * 20)};
			rows.add(row);
		}		
		browserTable.setAaData(rows);		
		ArrayList<ColumnValue> columnValues = new ArrayList<ColumnValue>();
		ColumnValue col1 = new ColumnValue();
	    col1.setsTitle("Engine");
		columnValues.add(col1);
		ColumnValue col2 = new ColumnValue();
		col2.setsTitle("Browser");
		columnValues.add(col2);
		ColumnValue col3 = new ColumnValue();
	    col3.setsTitle("Platform");
		columnValues.add(col3);
		
		browserTable.setAoColumns(columnValues);
		browserTable.setiDisplayLength(25);
		Object[] lengthMenu1 = {5, 15, 20, -1};
		Object[] lengthMenu2 = {5, 15, 20, "All"};
		
		ArrayList<Object[]> menus = new ArrayList<Object[]>();
		menus.add(lengthMenu1);
		menus.add(lengthMenu2);
		
		browserTable.setaLengthMenu(menus);
		browserTable.setbPaginate(true);
		browserTable.setbAutoWidth(false);
		browserTable.setbLengthChange(true);
		
		Widget tableWidget = new Widget();
		tableWidget.setWidgetTitle("Table");
		tableWidget.setWidgetId("id009");
		tableWidget.setWidgetType(WidgetTypeEnum.TABLE.getWidgetType());
		tableWidget.setSetJqueryStyle(true);
		tableWidget.setEnableRefresh(true);
//		tableWidget.setRefreshCallBack("function(widgetId){"
//				+ "notification('info', 'Inside the refresh callback of '+widgetId+'!');"
//				+ "}");
		tableWidget.setWidgetContent(browserTable);		
		widgetList.add(tableWidget);		
		return widgetList;
	}
}
