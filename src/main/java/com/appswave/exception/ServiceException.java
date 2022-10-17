package com.appswave.exception;

public class ServiceException extends Exception {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public ServiceException() {
		super();
	}
	public ServiceException(String message, Throwable err) {
		super(message, err);
	}
}