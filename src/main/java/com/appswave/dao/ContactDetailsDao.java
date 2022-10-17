package com.appswave.dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.appswave.exception.DaoException;
import com.appswave.model.ContactDetails;

public class ContactDetailsDao {

	private final Logger logger = LogManager.getLogger(ContactDetailsDao.class);

	Connection con;
	PreparedStatement preparedStatement;

	public void insertContact(ContactDetails contactDetails) throws DaoException, ClassNotFoundException {

		String SQL_INSERT = "INSERT INTO contact_info (con_full_name, con_phone_number, con_email, con_address, con_subject, "
				+ "con_inquiry_type,con_contact, con_more_information, con_region) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			prepareDBQueryObjects(SQL_INSERT);

			preparedStatement.setString(1, contactDetails.getFullName());
			preparedStatement.setString(2, contactDetails.getPhoneNumber());
			preparedStatement.setString(3, contactDetails.getEmail());
			preparedStatement.setString(4, contactDetails.getAddress());
			preparedStatement.setString(5, contactDetails.getSubject());
			preparedStatement.setString(6, contactDetails.getTypeOfInquiry());
			preparedStatement.setString(7, contactDetails.getContact());
			preparedStatement.setString(8, contactDetails.getMoreInformation());
			preparedStatement.setString(9, contactDetails.getRegion());
			preparedStatement.executeUpdate();

			con.close();
			preparedStatement.close();
		} catch (SQLException | IOException e) {

			logger.error("Internal server error while inserting ContactDetails due to : " + e.getMessage(), e);
			throw new DaoException("Failed to fill ContactDetails bean due to : " + e.getMessage(), e);
		}

	}

	private void prepareDBQueryObjects(String sqlQuery) throws SQLException, ClassNotFoundException, IOException {

	
		InputStream input = getClass().getClassLoader().getResourceAsStream("/config.properties");
		Properties prop = new Properties();
		prop.load(input);
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection(prop.getProperty("db.url"), prop.getProperty("db.user"), prop.getProperty("db.password"));
		preparedStatement = con.prepareStatement(sqlQuery);
	}

}
