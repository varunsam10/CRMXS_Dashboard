package com.cpr.util;

import java.util.ArrayList;

/**
 * Interface to create the Table widget
 */
public class TableData extends WidgetContent {
	// private Object[] columnValues;
	// Field for the row data of the table
	private ArrayList<Object[]> aaData;
	// Field for the column names of the table
	private ArrayList<ColumnValue> aoColumns;
	// Field for maximum number of rows that can be displayed
	private int iDisplayLength;
	// Field for displaying the number of records required
	// example 5,10,20
	private ArrayList<Object[]> aLengthMenu;
	// Enable and disable the pagination feature
	private boolean bPaginate;
	// Enable and disable the number of pages feature
	private boolean bLengthChange;
	// Enable and disable the auto-width option
	// Handles the zoom functionality for the zoom of the widget
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
