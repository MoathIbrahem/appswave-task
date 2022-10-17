package com.appswave.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.appswave.exception.ServiceException;
import com.appswave.service.ContactDetailsService;

/**
 * Servlet implementation class ContactDetailsServlet
 */
@WebServlet("/ContactDetails")
public class ContactDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ContactDetailsService contactDetailsService = new ContactDetailsService();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactDetailsServlet() {
        super();
    }
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String message = "Contact Saved Successfully";
		boolean isErrorOccured = false;
		
		try {
			if(!validateQueryParameters(request)) {
				throw new ServiceException();
			}
			contactDetailsService.addContactDetails(request.getParameterMap());
		} catch (Exception ex) {
			isErrorOccured = true;
			message = "Error wihle saving contact, please try again!";
		}
		
		response.sendRedirect(String.format("%s/ContactUs?message=%s&error=%s", request.getContextPath(), message, isErrorOccured));
		
	}
	
	private boolean validateQueryParameters(HttpServletRequest request) {
		 
		Enumeration<String> enumeration = request.getParameterNames();
		
		 while(enumeration.hasMoreElements()){
			 	String parameterName = enumeration.nextElement().toString();
			 	if (request.getParameter(parameterName) == null || request.getParameter(parameterName).isEmpty()) {
					return false;
				}
		 }
		return true;
	}
	
}
