package com.qy.hotel.dto;

import java.util.List;

public class Pojo {
	public  int hnumber;
	public String addr;
	public String hname;
	//public String img;
	public List<roommessage> list;

	
	public int getHnumber() {
		return hnumber;
	}

	public void setHnumber(int hnumber) {
		this.hnumber = hnumber;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getHname() {
		return hname;
	}

	public void setHname(String hname) {
		this.hname = hname;
	}
/*
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}*/
	
	public List<roommessage> getList() {
		return list;
	}

	public void setList(List<roommessage> list) {
		this.list = list;
	}
	

}
