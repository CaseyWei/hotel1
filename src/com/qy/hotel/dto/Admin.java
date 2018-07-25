package com.qy.hotel.dto;

public class Admin {
	private String id;
	private int hnumber;
	private String aname;
	private String apwd;
	private String role;
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}
	public void setHnumber(int hnumber) {
		this.hnumber = hnumber;
	}
	public int getHnumber() {
		return hnumber;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getAname() {
		return aname;
	}
	public void setApwd(String apwd) {
		this.apwd = apwd;
	}
	public String getApwd() {
		return apwd;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRole() {
		return role;
	}
}
