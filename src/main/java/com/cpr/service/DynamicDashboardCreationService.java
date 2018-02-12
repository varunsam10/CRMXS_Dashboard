package com.cpr.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.dao.DashboardDAO;
import com.cpr.model.GraphParams;
import com.cpr.util.AxisLayout;
import com.cpr.util.ChartTypeEnum;
import com.cpr.util.GraphTypeEnum;
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
	private DashboardDAO dashboardDAO;
	public String createDynamicDashboard() {

		ArrayList<Widget> widgets = new ArrayList<Widget>();
		ArrayList<Widget> widgets2 = new ArrayList<Widget>();
		Map<String, List<GraphParams>> productListMap = dashboardDAO.createWidgetproductList();
		Map<String, List<GraphParams>> productListMapOriginal = dashboardDAO.createWidgetProductListActual();
		Widget widget = null;
		Widget widget2 = null;
		WidgetContent widgetContent = null;
		WidgetContent widgetContent2 = null;
		WidgetData widgetData = null;
		WidgetData widgetData2 = null;
		WidgetConfig widgetConfig = null;
		WidgetLayout widgetLayout = null;
		ArrayList<WidgetData> widgetDataList = new ArrayList<WidgetData>();
		ArrayList<WidgetData> widgetDataList2 = new ArrayList<WidgetData>();
		if (!productListMap.isEmpty()) {
			widget = new Widget();
			widget.setWidgetTitle("Test Widget1");
			widget.setWidgetId("wd001");
			widget.setEnableRefresh(false);
			widget.setChartType(ChartTypeEnum.LINE.toString().toLowerCase());
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
				widgetData.setType("scatter");
				widgetData.setName(entry.getKey());
				widgetDataList.add(widgetData);
			}

		}
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
				widgetDataList2.add(widgetData2);
			}

		}
		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Products", x_TitleFont);

		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Spend", y_TitleFont);

		if (null != widget && null!=widget2) {
			widgetLayout = new WidgetLayout();
			widgetLayout.setTitle("Spend by cutsomer");
			widgetLayout.setXaxis(x_AxisLayout);
			widgetLayout.setYaxis(y_AxisLayout);
			widgetLayout.setAutosize(true);
			// widget.getWidgetContent().setWidgetLayout(widgetLayout);
			String[] modeBarButtonsToRemove = {"sendDataToCloud"};
			widgetConfig = new WidgetConfig();
			widgetConfig.setModeBarButtonsToRemove(modeBarButtonsToRemove);
			// widget.getWidgetContent().setWidgetConfig(widgetConfig);
		}

		widgetContent.setData(widgetDataList);
		widgetContent.setLayout(widgetLayout);
		widgetContent.setConfig(widgetConfig);
		widgetContent2.setData(widgetDataList2);
		widgetContent2.setLayout(widgetLayout);
		widgetContent2.setConfig(widgetConfig);
		widget.setWidgetContent(widgetContent);
		widget2.setWidgetContent(widgetContent2);
		widgets.add(widget);
		widgets2.add(widget2);
		String widgetConfigGenerated = dashboardService.createDashboardJson(widgets);
		String widgetConfigGenerated2 = dashboardService.createDashboardJson(widgets2);
		String response = dashboardDAO.insertWidgetConfig(widgetConfigGenerated, "wd001", "dd001",widget.getWidgetTitle());
		String response2 = dashboardDAO.insertWidgetConfig(widgetConfigGenerated2, "wd002", "dd001",widget2.getWidgetTitle());
		return response;
	}	
	public String deleteDynamicDashboard() {
		
		String response = dashboardDAO.deleteDynamicDashboard("dd001");
		return response;
	}	
}
