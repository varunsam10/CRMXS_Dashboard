package com.cpr.model;

import org.springframework.jdbc.core.RowMapper;

import java.io.InputStream;
import java.io.ObjectInputStream;
import java.sql.Blob;
import java.sql.ResultSet;
import java.sql.SQLException;

public class widgetContentMapper implements RowMapper<WidgetContentMap> {

	public WidgetContentMap mapRow(ResultSet arg0, int arg1) throws SQLException {
		WidgetContentMap widgetContentMap = new WidgetContentMap();
		try {
			String widgetContent = null;
			Blob widgetBlob = arg0.getBlob("widgetContent");
			InputStream input = widgetBlob.getBinaryStream();
			ObjectInputStream object = new ObjectInputStream(input);
			widgetContent = (String) object.readObject();
			widgetContentMap.setWidgetContent(widgetContent);
		} catch (Exception ex) {
			System.out.println("exception in widgetContentMapper" + ex);
		}
		return widgetContentMap;
	}

}
