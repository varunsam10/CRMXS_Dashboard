package com.cpr.model;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class FilterData {
	
	private String fromDate;
	private String toDate;
	//private String[] countries;
	private String countries;
	private String widgetId;
	/*public Date getFromDate() {
		return fromDate;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate = fromDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setToDate(Date toDate) {
		this.toDate = toDate;
	}
	public String[] getCountries() {
		return countries;
	}
	public void setCountries(String[] countries) {
		this.countries = countries;
	}*/
	
	public String getWidgetId() {
		return widgetId;
	}
	public String getFromDate() {
		return fromDate;
	}
	public void setFromDate(String fromDate) {
		this.fromDate = fromDate;
	}
	public String getToDate() {
		return toDate;
	}
	public void setToDate(String toDate) {
		this.toDate = toDate;
	}
	public String getCountries() {
		return countries;
	}
	public void setCountries(String countries) {
		this.countries = countries;
	}
	public void setWidgetId(String widgetId) {
		this.widgetId = widgetId;
	}	
	
}
