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
public class Dashboard2CreationService {

	@Autowired
	private DashboardService dashboardService;

	@Autowired
	private DashboardDAO dashboardDAO;

	public String createDashboard2() {
		
		ArrayList<Widget> widgets = dashboardService.getDashboard().getWidgets();
		Map<String, List<GraphParams>> productListMap = dashboardDAO.createWidgetproductList();
		Widget widget = null;
		
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
			WidgetContent widgetContent = widget.getWidgetContent();
			Set<Map.Entry<String, List<GraphParams>>> mapset = productListMap.entrySet();
			List<WidgetData> widgetDataList = widgetContent.getData();
			List<Map.Entry<String, List<GraphParams>>> maplist = new ArrayList<Map.Entry<String, List<GraphParams>>>(
					mapset);
			for (Map.Entry<String, List<GraphParams>> entry : maplist) {
				WidgetData widgetData = new WidgetData();
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
			WidgetLayout widgetLayout = widget.getWidgetContent().getWidgetLayout();
			widgetLayout.setTitle("Products vs Quantity");
			widgetLayout.setXaxis(x_AxisLayout);
			widgetLayout.setYaxis(y_AxisLayout);
			widgetLayout.setAutosize(true);
			widget.getWidgetContent().setWidgetLayout(widgetLayout);
			String[] modeBarButtonsToRemove = { "sendDataToCloud" };
			WidgetConfig widgetConfig = widget.getWidgetContent().getWidgetConfig();
			widgetConfig.setModeBarButtonsToRemove(modeBarButtonsToRemove);
			widget.getWidgetContent().setWidgetConfig(widgetConfig);
		}
		widgets.add(widget);
		String widgetConfig = dashboardService.createDashboardJson(widgets);
		dashboardDAO.createWidgetproductList();
		return "Sucess";
	}

}
