package com.appswave.service;

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import com.appswave.dao.ContactDetailsDao;
import com.appswave.exception.DaoException;
import com.appswave.model.ContactDetails;
import com.google.protobuf.ServiceException;

public class ContactDetailsService {
	
	private final Logger logger = LogManager.getLogger(ContactDetailsService.class);
	
	public void addContactDetails(Map<String, String[]> parameters) throws ServiceException {
		
		ContactDetails contactDetails = new ContactDetails();
		
		try {
			BeanUtils.populate(contactDetails, parameters);
			ContactDetailsDao contactDetailsDao = new ContactDetailsDao();
			contactDetailsDao.insertContact(contactDetails);
		} catch (IllegalAccessException | InvocationTargetException | DaoException | ClassNotFoundException e) {
			logger.error("Internal server error while filling ContactDetails bean due to : " + e.getMessage(), e);
			throw new ServiceException("Failed to fill ContactDetails bean due to : " + e.getMessage(), e);
		}
	}
}
