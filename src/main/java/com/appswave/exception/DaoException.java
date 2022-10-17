package com.appswave.exception;

public class DaoException extends Exception {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public DaoException() {
		super();
	}
	public DaoException(String message, Throwable err) {
		super(message, err);
	}
}
