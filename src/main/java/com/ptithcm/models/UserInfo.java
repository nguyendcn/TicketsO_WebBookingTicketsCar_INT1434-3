package com.ptithcm.models;


public class UserInfo {

	private String username;
	
	private String password;
	

	public UserInfo(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	public UserInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	

}
