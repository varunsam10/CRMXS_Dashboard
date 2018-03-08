package com.cpr.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cpr.dao.ApplyFilterDAO;
import com.cpr.model.FilterData;

@Service
public class ApplyFilterService {

	@Autowired
	private ApplyFilterDAO applyFilterDAO;

	public String getDateFilteredData(FilterData filterData) {
		String filteredWidgetData = applyFilterDAO.getDateFilteredData(filterData);
		return filteredWidgetData;
	}
}
