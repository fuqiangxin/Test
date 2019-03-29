package com.ym.entity;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable {
//	USER_ID, USER_NAME, USER_PASSWORD, USER_EMAIL
	private int userId;
	private String userName;
	private String userPassword;
	private String userEmail;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}
