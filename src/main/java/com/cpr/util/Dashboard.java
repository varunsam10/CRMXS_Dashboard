package com.cpr.util;

import java.util.ArrayList;
import java.util.List;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.reflect.TypeToken;


public class Dashboard {
	private ArrayList<Widget> widgets;	
	
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
		WidgetData trace1 =  new WidgetData( x1, y1 , "Desperado" , "scatter");
		widgetData.add(trace1);
		
		Object[] x2 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
		Object[] y2 = { 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48  };
		WidgetData trace2 =  new WidgetData(x2, y2, "Tiger", "scatter");
		widgetData.add(trace2);
		
		//WidgetData widgetData = new WidgetData(plotlylinedata);
		
		TitleFont x_TitleFont =  new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);
		
		TitleFont y_TitleFont =  new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);
		
		WidgetLayout widgetLayout = new WidgetLayout("How old are they ?", x_AxisLayout, y_AxisLayout, true);
		
		String[] modeBarButtonsToRemove = {"sendDataToCloud"};
		boolean displaylogo = false;
		WidgetConfig widgetConfig = new  WidgetConfig(modeBarButtonsToRemove, displaylogo);
		
		WidgetContent widgetContent =  new WidgetContent(widgetData, widgetLayout, widgetConfig);
		
		Widget widgetLine = new Widget("Items sold", "id001", "chart", "exploratory", "large", "line", widgetContent);
		
		ArrayList<Widget> widgetList = new ArrayList<Widget>();
		
		widgetList.add(widgetLine);
		
		//Creating Pie widget config
		ArrayList<WidgetData> pieWidgetDataList = new ArrayList<WidgetData>();
		
		//Pie Data
		Object[] pieValues = {19, 26, 35, 10, 10 };
		Object[] pieLabels = {"Tiger", "Heiniken", "Brand1", "Brand", "Brand3"};
		
		WidgetData pieWidgetData = new WidgetData();
		pieWidgetData.setValues(pieValues);
		pieWidgetData.setLabels(pieLabels);
		pieWidgetData.setType("pie");
		pieWidgetDataList.add(pieWidgetData);
		
		//Pie Layput
		WidgetLayout pieLayout = new WidgetLayout();
		pieLayout.setTitle("Revenue in US $");
		pieLayout.setAutosize(true);
		
		WidgetContent pieContent = new WidgetContent(pieWidgetDataList, pieLayout, widgetConfig);
		
		Widget widgetPie = new Widget("Sales Figures", "id004", "chart", "exploratory", "normal", "pie", pieContent);
		widgetList.add(widgetPie);
		
		return widgetList;
		
	}
	
	public static void main(String[] args) {
		Dashboard dash =  new Dashboard();
		dash.createDashboard();
	}

}

