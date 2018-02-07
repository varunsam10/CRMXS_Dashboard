package com.cpr.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.model.DashboardDAO;
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

@Service
public class DynamicDashboardCreationService {

	@Autowired
	private CustomDashboardService dashboardService;

	@Autowired
	private DashboardDAO dashboardDAO;

	public String createDashboard2() {

		ArrayList<Widget> widgets = new ArrayList<Widget>();
		Map<String, List<GraphParams>> productListMap = dashboardDAO.createWidgetproductList();
		Widget widget = null;
		WidgetContent widgetContent = null;
		WidgetData widgetData = null;
		WidgetConfig widgetConfig = null;
		WidgetLayout widgetLayout = null;
		ArrayList<WidgetData> widgetDataList = new ArrayList<WidgetData>();
		if (!productListMap.isEmpty()) {
			widget = new Widget();
			widget.setWidgetTitle("Test Widget");
			widget.setWidgetId("wd001");
			widget.setEnableRefresh(false);
			widget.setChartType(ChartTypeEnum.LINE.toString());
			widget.setWidgetDimension(WidgetDimensionEnum.LARGE.toString());
			widget.setGraphType(GraphTypeEnum.EXPLORATORY.toString());
			widget.setWidgetClick(WidgetClickEnum.DISABLE.toString());
			widget.setWidgetEdit(WidgetEditEnum.DISABLE.toString());
			widgetContent = new WidgetContent();
			Set<Map.Entry<String, List<GraphParams>>> mapset = productListMap.entrySet();

			List<Map.Entry<String, List<GraphParams>>> maplist = new ArrayList<Map.Entry<String, List<GraphParams>>>(
					mapset);
			for (Map.Entry<String, List<GraphParams>> entry : maplist) {
				widgetData = new WidgetData();
				Object[] x = new Object[entry.getValue().size()];
				Object[] y = new Object[entry.getValue().size()];
				for (GraphParams params : entry.getValue()) {
					for (int i = 0; i < entry.getValue().size(); i++) {
						x[i] = params.getxValue();
						y[i] = params.getyValue();
					}
				}
				widgetData.setY(y);
				widgetData.setX(x);
				widgetData.setType("scatter");
				widgetData.setName(entry.getKey());
				widgetDataList.add(widgetData);
			}

		}
		TitleFont x_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout x_AxisLayout = new AxisLayout("Age", x_TitleFont);

		TitleFont y_TitleFont = new TitleFont("Courier New, monospace", 18, "#7f7f7f");
		AxisLayout y_AxisLayout = new AxisLayout("Number of Customers", y_TitleFont);

		if (null != widget) {
			widgetLayout = new WidgetLayout();
			widgetLayout.setTitle("Products vs Quantity");
			widgetLayout.setXaxis(x_AxisLayout);
			widgetLayout.setYaxis(y_AxisLayout);
			widgetLayout.setAutosize(true);
			// widget.getWidgetContent().setWidgetLayout(widgetLayout);
			String[] modeBarButtonsToRemove = { "sendDataToCloud" };
			widgetConfig = new WidgetConfig();
			widgetConfig.setModeBarButtonsToRemove(modeBarButtonsToRemove);
			// widget.getWidgetContent().setWidgetConfig(widgetConfig);
		}
		widgetContent.setData(widgetDataList);
		widgetContent.setWidgetLayout(widgetLayout);
		widgetContent.setWidgetConfig(widgetConfig);
		widget.setWidgetContent(widgetContent);
		widgets.add(widget);
		String widgetConfigGenerated = dashboardService.createDashboardJson(widgets);
		String response = dashboardDAO.insertWidgetConfig(widgetConfigGenerated, "wd001", "dd001");
		return response;
	}

}
