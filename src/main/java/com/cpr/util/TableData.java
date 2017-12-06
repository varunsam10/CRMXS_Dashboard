package com.cpr.util;

import java.util.ArrayList;

public class TableData extends WidgetContent{
	//private Object[] columnValues;    
	private ArrayList<Object[]> aaData;         //rows of the table		
	private ArrayList<ColumnValue> aoColumns;		 //column values
	private int iDisplayLength;
	private ArrayList<Object[]> aLengthMenu;
	private boolean bPaginate;
	private boolean bLengthChange;
	private boolean bAutoWidth;
	
	
	
	public ArrayList<Object[]> getAaData() {
		return aaData;
	}
	public void setAaData(ArrayList<Object[]> aaData) {
		this.aaData = aaData;
	}
	
	
	public ArrayList<ColumnValue> getAoColumns() {
		return aoColumns;
	}
	public void setAoColumns(ArrayList<ColumnValue> aoColumns) {
		this.aoColumns = aoColumns;
	}
	
	public int getiDisplayLength() {
		return iDisplayLength;
	}
	public void setiDisplayLength(int iDisplayLength) {
		this.iDisplayLength = iDisplayLength;
	}
	
	public ArrayList<Object[]> getaLengthMenu() {
		return aLengthMenu;
	}
	public void setaLengthMenu(ArrayList<Object[]> aLengthMenu) {
		this.aLengthMenu = aLengthMenu;
	}
	public boolean isbPaginate() {
		return bPaginate;
	}
	public void setbPaginate(boolean bPaginate) {
		this.bPaginate = bPaginate;
	}
	public boolean isbLengthChange() {
		return bLengthChange;
	}
	public void setbLengthChange(boolean bLengthChange) {
		this.bLengthChange = bLengthChange;
	}
	public boolean isbAutoWidth() {
		return bAutoWidth;
	}
	public void setbAutoWidth(boolean bAutoWidth) {
		this.bAutoWidth = bAutoWidth;
	}
	
	
}
