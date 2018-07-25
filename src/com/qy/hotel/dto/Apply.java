package com.qy.hotel.dto;

import java.util.Date;

public class Apply {
	public int id;
	public String hname;
	public String fuzeren;
	public String fuzerenqingkuang;
	public String phone;
	public String addr;
	public Date jointime;
	public String statu;
	
	
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public String getFuzeren() {
		return fuzeren;
	}
	public void setFuzeren(String fuzeren) {
		this.fuzeren = fuzeren;
	}
	public String getFuzerenqingkuang() {
		return fuzerenqingkuang;
	}
	public void setFuzerenqingkuang(String fuzerenqingkuang) {
		this.fuzerenqingkuang = fuzerenqingkuang;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Date getJointime() {
		return jointime;
	}
	public void setJointime(Date jointime) {
		this.jointime = jointime;
	}
	
	
}
