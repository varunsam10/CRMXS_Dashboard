package com.cpr.service;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.swing.text.html.parser.Entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.dao.CustomDashboardDAO;
import com.cpr.dao.DashboardDAO;
import com.cpr.model.GraphParams;
import com.cpr.util.AxisLayout;
import com.cpr.util.ChartTypeEnum;
import com.cpr.util.GraphTypeEnum;
import com.cpr.util.Marker;
import com.cpr.util.TitleFont;
import com.cpr.util.Widget;
import com.cpr.util.WidgetClickEnum;
import com.cpr.util.WidgetConfig;
import com.cpr.util.WidgetContent;
import com.cpr.util.WidgetData;
import com.cpr.util.WidgetDimensionEnum;
import com.cpr.util.WidgetEditEnum;
import com.cpr.util.WidgetLayout;
import com.cpr.util.WidgetTypeEnum;

@Service
public class DynamicDashboardCreationService {

	@Autowired
	private CustomDashboardService dashboardService;
	@Autowired
	private CustomDashboardDAO customDashboardDAO;
	
	@Autowired
	private DashboardDAO dashboardDAO;

	public String createDynamicDashboard() {

		ArrayList<Widget> widgets = new ArrayList<Widget>();
		ArrayList<Widget> widgets2 = new ArrayList<Widget>();
		ArrayList<Widget> widgets3 = new ArrayList<Widget>();
		ArrayList<Widget> widgets4 = new ArrayList<Widget>();
		ArrayList<Widget> widgets5 = new ArrayList<Widget>();
		ArrayList<Widget> widgets6 = new ArrayList<Widget>();
		Map<String, List<GraphParams>> productListMap = customDashboardDAO.createWidgetproductList();
		Map<String, List<GraphParams>> productListMapOriginal = customDashboardDAO.createWidgetProductListActual();
		Map<String, List<GraphParams>> topOutletListMap = customDashboardDAO.createWidgetTopOutletActual();
		Map<String, List<GraphParams>> topProductListMap = customDashboardDAO.createWidgetTopProductActual();
		Map<String, String> averageCustomerSpendMap = customDashboardDAO.averageCustomerSpend();
		Map<String, String> topProductMap = customDashboardDAO.topProduct();
		Widget widget = null;
		Widget widget2 = null;
		Widget widget3 = null;
		Widget widget4 = null;
		Widget widget5 = null;
		Widget widget6 = null;
		WidgetContent widgetContent = null;
		WidgetContent widgetContent2 = null;
		WidgetContent widgetContent3 = null;
		WidgetContent widgetContent4 = null;
		WidgetContent widgetContent5 = null;
		WidgetContent widgetContent6 = null;
		WidgetData widgetData = null;
		WidgetData widgetData2 = null;
		WidgetData widgetData3 = null;
		WidgetData widgetData4 = null;
		WidgetData widgetData5 = null;
		WidgetConfig widgetConfig = null;
		WidgetLayout widgetLayout = null;
		WidgetLayout widgetLayout3 = null;
		WidgetLayout widgetLayout4 = null;
		WidgetLayout widgetLayout5 = null;
		ArrayList<WidgetData> widgetDataList = new ArrayList<WidgetData>();
		ArrayList<WidgetData> widgetDataList2 = new ArrayList<WidgetData>();
		ArrayList<WidgetData> widgetDataList3 = new ArrayList<WidgetData>();
		ArrayList<WidgetData> widgetDataList4 = new ArrayList<WidgetData>();
		ArrayList<WidgetData> widgetDataList5 = new ArrayList<WidgetData>();

		// Widget 1
		if (!productListMap.isEmpty()) {
			widget = new Widget();
			widget.setWidgetTitle("Test Widget1");
			widget.setWidgetId("wd001");
			widget.setEnableRefresh(false);
			widget.setChartType(ChartTypeEnum.BAR.toString().toLowerCase());
			widget.setWidgetDimension(WidgetDimensionEnum.LARGE.toString().toLowerCase());
			widget.setGraphType(GraphTypeEnum.EXPLORATORY.toString().toLowerCase());
			widget.setWidgetType(WidgetTypeEnum.CHART.toString().toLowerCase());
			widget.setWidgetClick(WidgetClickEnum.DISABLE.toString().toLowerCase());
			widget.setWidgetEdit(WidgetEditEnum.DISABLE.toString().toLowerCase());
			widgetContent = new WidgetContent();
			Set<Map.Entry<String, List<GraphParams>>> mapset = productListMap.entrySet();

			List<Map.Entry<String, List<GraphParams>>> maplist = new ArrayList<Map.Entry<String, List<GraphParams>>>(
					mapset);
			for (Map.Entry<String, List<GraphParams>> entry : maplist) {
				widgetData = new WidgetData();
				int i = 0;
				int j = 0;
				Object[] x = new Object[entry.getValue().size()];
				Object[] y = new Object[entry.getValue().size()];
				for (GraphParams params : entry.getValue()) {
					x[i] = params.getxValue();
					y[j] = params.getyValue();
					i++;
					j++;
				}
				widgetData.setY(y);
				widgetData.setX(x);
				widgetData.setType("bar");
				widgetData.setName(entry.getKey());
				Marker marker = new Marker();
				// marker.setColor(" ");
				marker.setOpacity(0.6);
				widgetData.setMarker(marker);
				widgetDataList.add(widgetData);
			}

		}
		// widget 2
		if (!productListMapOriginal.isEmpty()) {
			widget2 = new Widget();
			widget2.setWidgetTitle("Actual Data Test");
			widget2.setWidgetId("wd002");
			widget2.setEnableRefresh(false);
			widget2.setChartType(ChartTypeEnum.BAR.toString().toLowerCase());
			widget2.setWidgetDimension(WidgetDimensionEnum.LARGE.toString().toLowerCase());
			widget2.setGraphType(GraphTypeEnum.EXPLORATORY.toString().toLowerCase());
			widget2.setWidgetType(WidgetTypeEnum.CHART.toString().toLowerCase());
			widget2.setWidgetClick(WidgetClickEnum.DISABLE.toString().toLowerCase());
			widget2.setWidgetEdit(WidgetEditEnum.DISABLE.toString().toLowerCase());
			widgetContent2 = new WidgetContent();
			Set<Map.Entry<String, List<GraphParams>>> mapset = productListMapOriginal.entrySet();

			List<Map.Entry<String, List<GraphParams>>> maplist = new ArrayList<Map.Entry<String, List<GraphParams>>>(
					mapset);
			for (Map.Entry<String, List<GraphParams>> entry : maplist) {
				widgetData2 = new WidgetData();
				int i = 0;
				int j = 0;
				Object[] x = new Object[entry.getValue().size()];
				Object[] y = new Object[entry.getValue().size()];
				for (GraphParams params : entry.getValue()) {
					x[i] = params.getxValue();
					y[j] = params.getyValue();
					i++;
					j++;
				}
				widgetData2.setY(y);
				widgetData2.setX(x);
				widgetData2.setType("bar");
				widgetData2.setName(entry.getKey());
				Marker marker = new Marker();
				marker.setColor("#32c5d2");
				marker.setOpacity(0.6);
				widgetData2.setMarker(marker);
				widgetDataList2.add(widgetData2);
			}

		}
		// Widget 3
		if (!topOutletListMap.isEmpty()) {
			widget3 = new Widget();
			widget3.setWidgetTitle("Top Outlet by sales");
			widget3.setWidgetId("wd003");
			widget3.setEnableRefresh(false);
			widget3.setChartType(ChartTypeEnum.BAR.toString().toLowerCase());
			widget3.setWidgetDimension(WidgetDimensionEnum.MEDIUM.toString().toLowerCase());
			widget3.setGraphType(GraphTypeEnum.EXPLORATORY.toString().toLowerCase());
			widget3.setWidgetType(WidgetTypeEnum.CHART.toString().toLowerCase());
			widget3.setWidgetClick(WidgetClickEnum.DISABLE.toString().toLowerCase());
			widget3.setWidgetEdit(WidgetEditEnum.ENABLE.toString().toLowerCase());
			widgetContent3 = new WidgetContent();
			Set<Map.Entry<String, List<GraphParams>>> mapset = topOutletListMap.entrySet();

			List<Map.Entry<String, List<GraphParams>>> maplist = new ArrayList<Map.Entry<String, List<GraphParams>>>(
					mapset);
			for (Map.Entry<String, List<GraphParams>> entry : maplist) {
				widgetData3 = new WidgetData();
				int i = 0;
				int j = 0;
				Object[] x = new Object[entry.getValue().size()];
				Object[] y = new Object[entry.getValue().size()];
				for (GraphParams params : entry.getValue()) {
					x[i] = params.getxValue();
					y[j] = params.getyValue();
					i++;
					j++;
				}
				widgetData3.setY(y);
				widgetData3.setX(x);
				widgetData3.setType("bar");
				widgetData3.setName(entry.getKey());
				Marker marker = new Marker();
				marker.setColor("#32c5d2");
				marker.setOpacity(0.6);
				widgetData3.setMarker(marker);
				widgetDataList3.add(widgetData3);
			}

		}

		// Widget 4
		if (!topProductListMap.isEmpty()) {
			widget4 = new Widget();
			widget4.setWidgetTitle("Top 25 Products");
			widget4.setWidgetId("wd004");
			widget4.setEnableRefresh(false);
			widget4.setChartType(ChartTypeEnum.BAR.toString().toLowerCase());
			widget4.setWidgetDimension(WidgetDimensionEnum.LARGE.toString().toLowerCase());
			widget4.setGraphType(GraphTypeEnum.EXPLORATORY.toString().toLowerCase());
			widget4.setWidgetType(WidgetTypeEnum.CHART.toString().toLowerCase());
			widget4.setWidgetClick(WidgetClickEnum.DISABLE.toString().toLowerCase());
			widget4.setWidgetEdit(WidgetEditEnum.ENABLE.toString().toLowerCase());
			widgetContent4 = new WidgetContent();
			Set<Map.Entry<String, List<GraphParams>>> mapset = topProductListMap.entrySet();

			List<Map.Entry<String, List<GraphParams>>> maplist = new LinkedList<Map.Entry<String, List<GraphParams>>>(
					mapset);
			for (Map.Entry<String, List<GraphParams>> entry : maplist) {
				widgetData4 = new WidgetData();
				int i = 0;
				int j = 0;
				Object[] x = new Object[entry.getValue().size()];
				Object[] y = new Object[entry.getValue().size()];
				for (GraphParams params : entry.getValue()) {
					x[i] = params.getxValue();
					y[j] = params.getyValue();
					i++;
					j++;
				}
				widgetData4.setY(y);
				widgetData4.setX(x);
				widgetData4.setType("bar");
				widgetData4.setName(entry.getKey());
				Marker marker = new Marker();
				marker.setColor("#32c5d2");
				marker.setOpacity(0.6);
				widgetData4.setMarker(marker);
				widgetDataList4.add(widgetData4);
			}

		}
		// Widget 5
		if (!averageCustomerSpendMap.isEmpty()) {
			widget5 = new Widget();
			widget5.setWidgetTitle("Average Spend");
			widget5.setWidgetId("wd005");
			widget5.setWidgetType(WidgetTypeEnum.TEXT.toString());
			widget5.setWidgetClick(WidgetClickEnum.DISABLE.toString().toLowerCase());
			widget5.setWidgetEdit(WidgetEditEnum.DISABLE.toString().toLowerCase());
			widget5.setWidgetDimension(WidgetDimensionEnum.SMALL.toString().toLowerCase());
			for (Map.Entry<String, String> entry : averageCustomerSpendMap.entrySet()) {
				widget5.setWidgetContentText(entry.getValue() + " $");
			}

		}
		// widget 6
		if (!topProductMap.isEmpty()) {
			widget6 = new Widget();
			widget6.setWidgetTitle("Top Product");
			widget6.setWidgetId("wd006");
			widget6.setWidgetType(WidgetTypeEnum.TEXT.toString());
			widget6.setWidgetClick(WidgetClickEnum.DISABLE.toString().toLowerCase());
			widget6.setWidgetEdit(WidgetEditEnum.DISABLE.toString().toLowerCase());
			widget6.setWidgetDimension(WidgetDimensionEnum.SMALL.toString().toLowerCase());
			for (Map.Entry<String, String> entry : topProductMap.entrySet()) {
				widget6.setWidgetContentText(entry.getKey() + ":" + entry.getValue() + " transactions");
			}
		}
		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Products", x_TitleFont);
		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Spend", y_TitleFont);

		AxisLayout x_AxisLayout3 = new AxisLayout("Outlet", x_TitleFont);
		AxisLayout y_AxisLayout3 = new AxisLayout("Sales in $", y_TitleFont);

		AxisLayout x_AxisLayout4 = new AxisLayout("Product", x_TitleFont);
		AxisLayout y_AxisLayout4 = new AxisLayout("Sales in $", y_TitleFont);

		// AxisLayout x_AxisLayout5 = new AxisLayout("Customer", x_TitleFont);
		// AxisLayout y_AxisLayout5 = new AxisLayout("Average Spend",
		// y_TitleFont);

		if (null != widget && null != widget2) {
			widgetLayout = new WidgetLayout();
			widgetLayout.setTitle("Spend by products");
			widgetLayout.setXaxis(x_AxisLayout);
			widgetLayout.setYaxis(y_AxisLayout);
			widgetLayout.setAutosize(true);
			widgetLayout.setShowlegend(true);
			widgetLayout.setPaper_bgcolor("#FFFFFF");
			widgetLayout.setPlot_bgcolor("#FFFFFF");
			String[] modeBarButtonsToRemove = { "sendDataToCloud" };
			widgetConfig = new WidgetConfig();
			widgetConfig.setModeBarButtonsToRemove(modeBarButtonsToRemove);
		}

		if (null != widget3) {
			widgetLayout3 = new WidgetLayout();
			widgetLayout3.setTitle("Sales by outlet");
			widgetLayout3.setXaxis(x_AxisLayout3);
			widgetLayout3.setYaxis(y_AxisLayout3);
			widgetLayout3.setAutosize(true);
			widgetLayout3.setPaper_bgcolor("#FFFFFF");
			widgetLayout3.setPlot_bgcolor("#FFFFFF");
		}
		if (null != widget4) {
			widgetLayout4 = new WidgetLayout();
			widgetLayout4.setTitle("Sales by Product");
			widgetLayout4.setXaxis(x_AxisLayout4);
			widgetLayout4.setYaxis(y_AxisLayout4);
			widgetLayout4.setAutosize(true);
			widgetLayout4.setPaper_bgcolor("#FFFFFF");
			widgetLayout4.setPlot_bgcolor("#FFFFFF");
		}

		widgetContent.setData(widgetDataList);
		widgetContent.setLayout(widgetLayout);
		widgetContent.setConfig(widgetConfig);
		widgetContent2.setData(widgetDataList2);
		widgetContent2.setLayout(widgetLayout);
		widgetContent2.setConfig(widgetConfig);
		widgetContent3.setData(widgetDataList3);
		widgetContent3.setLayout(widgetLayout3);
		widgetContent3.setConfig(widgetConfig);
		widgetContent4.setData(widgetDataList4);
		widgetContent4.setLayout(widgetLayout4);
		widgetContent4.setConfig(widgetConfig);

		widget.setWidgetContent(widgetContent);
		widget2.setWidgetContent(widgetContent2);
		widget3.setWidgetContent(widgetContent3);
		widget4.setWidgetContent(widgetContent4);
		widget5.setWidgetContent(widgetContent5);

		widgets.add(widget);
		widgets2.add(widget2);
		widgets3.add(widget3);
		widgets4.add(widget4);
		widgets5.add(widget5);
		widgets6.add(widget6);
		String widgetConfigGenerated = dashboardService.createDashboardJson(widgets);
		String widgetConfigGenerated2 = dashboardService.createDashboardJson(widgets2);
		String widgetConfigGenerated3 = dashboardService.createDashboardJson(widgets3);
		String widgetConfigGenerated4 = dashboardService.createDashboardJson(widgets4);
		String widgetConfigGenerated5 = dashboardService.createDashboardJson(widgets5);
		String widgetConfigGenerated6 = dashboardService.createDashboardJson(widgets6);
		String response = dashboardDAO.insertWidgetConfig(widgetConfigGenerated, "wd001", "dd001",
				widget.getWidgetTitle());
		dashboardDAO.insertWidgetConfig(widgetConfigGenerated2, "wd002", "dd001", widget2.getWidgetTitle());
		dashboardDAO.insertWidgetConfig(widgetConfigGenerated3, "wd003", "dd001", widget3.getWidgetTitle());
		dashboardDAO.insertWidgetConfig(widgetConfigGenerated4, "wd004", "dd001", widget4.getWidgetTitle());
		dashboardDAO.insertWidgetConfig(widgetConfigGenerated5, "wd005", "dd001", widget5.getWidgetTitle());
		dashboardDAO.insertWidgetConfig(widgetConfigGenerated6, "wd006", "dd001", widget6.getWidgetTitle());
		return response;
	}

	public String deleteDynamicDashboard() {

		String response = dashboardDAO.deleteDynamicDashboard("dd001");
		return response;
	}
}
