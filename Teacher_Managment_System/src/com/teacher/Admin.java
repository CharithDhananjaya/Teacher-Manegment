package com.teacher;

public class Admin {
	private String addminId;
	private String password;
	
	public Admin(String addminId, String password) {
	
		this.addminId = addminId;
		this.password = password;
	}

	public String getAddminId() {
		return addminId;
	}

	public String getPassword() {
		return password;
	}
	
}
