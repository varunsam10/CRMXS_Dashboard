package com.cpr.model;

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



	public void createDashboard() {
		widgets = new ArrayList<Widget>();
		ArrayList<Trace> plotlylinedata = new ArrayList<Trace>();
		
		Object[] x1 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
	    Object[] y1 = { 8, 13, 74, 12, 15, 70, 38, 16, 38, 20, 16, 38 };
		Trace trace1 =  new Trace( x1, y1 , "Desperado" , "scatter");
		plotlylinedata.add(trace1);
		
		Object[] x2 = { 0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110 };
		Object[] y2 = { 10, 15, 60, 22, 25, 80, 28, 36, 48, 18, 26, 48  };
		Trace trace2 =  new Trace(x2, y2, "Tiget", "scatter");
		plotlylinedata.add(trace2);
		
		WidgetData widgetData = new WidgetData(plotlylinedata);
		
		TitleFont x_TitleFont =  new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);
		
		TitleFont y_TitleFont =  new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);
		
		WidgetLayout widgetLayout = new WidgetLayout("How old are they ?", x_AxisLayout, y_AxisLayout);
		
		String[] modeBarButtonsToRemove = {"sendDataToCloud"};
		boolean displaylogo = false;
		WidgetConfig widgetConfig = new  WidgetConfig(modeBarButtonsToRemove, displaylogo);
		
		WidgetContent widgetContent =  new WidgetContent(widgetData, widgetLayout, widgetConfig);
		
		Widget widgetLine = new Widget("Items sold", "id004", "chart", "large", "line", widgetContent);
		
		ArrayList<Widget> widgetList = new ArrayList<Widget>();
		
		widgetList.add(widgetLine);
		
		Gson gson = new Gson();
		JsonElement element = gson.toJsonTree(widgetList, new TypeToken<List<Widget>>() {}.getRawType());

		JsonArray jsonArray = element.getAsJsonArray();
		
		System.out.println(jsonArray);
		
	}
	
	public static void main(String[] args) {
		Dashboard dash =  new Dashboard();
		dash.createDashboard();
	}

}

