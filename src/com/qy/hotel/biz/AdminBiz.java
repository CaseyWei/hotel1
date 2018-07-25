package com.qy.hotel.biz;

import java.util.ArrayList;
import java.util.List;

import com.qy.hotel.dao.AdminDao;
import com.qy.hotel.dto.Admin;
import com.qy.hotel.dto.Apply;
import com.qy.hotel.dto.Fenye;
import com.qy.hotel.dto.Hotel;
import com.qy.hotel.dto.Order;
import com.qy.hotel.dto.Person;
import com.qy.hotel.dto.Pojo;
import com.qy.hotel.dto.Ucomment;
import com.qy.hotel.dto.roommessage;
import com.sun.org.apache.bcel.internal.generic.NEW;

public class AdminBiz {
	public Admin loginAdmin(String id,String apwd){
		
		AdminDao dao=new AdminDao();
		return dao.loginAdmin(id, apwd);
	}
	public List<roommessage> getAllPrice(){
		AdminDao dao=new AdminDao();
		return dao.getAllPrice();
	}
	public roommessage addmessage(int rnumber,int hnumber, String fangxing, String position, int price,
			String shebei) {
		AdminDao dao=new AdminDao();
		return dao.addmessage(rnumber,hnumber,fangxing,position,price,shebei);
	}
	public List<Hotel> getAllOrders(){
		AdminDao dao=new AdminDao();
		return dao.getAllOrders();
	}
	public boolean  isSameUser(String uname ,int repwd) {
		// TODO Auto-generated method stub
		AdminDao dao=new AdminDao();
		return dao.isSameUser(uname,repwd);
	}
	public boolean insterUcomment(Ucomment comment) {
		AdminDao dao=new AdminDao();
		return dao.insertUcomment();
	}
	public List<Hotel> getOrders(String object) {
	//	System.out.println("1111="+object);
		AdminDao dao=new AdminDao();
		return dao.getOrders(object);
	}
	//删除订单
	public boolean delOrders(int id) {
		AdminDao dao=new AdminDao();
		return dao.delOrders(id);
	}
	//更新用户信息
	public boolean updatePwd(String object, int pwd) {
		AdminDao dao=new AdminDao();
		return dao.updatePwd(object,pwd);
	}
	//更新管理员信息
	public boolean updateAPwd(String id, int pwd) {
		System.out.println("1111="+id);
		AdminDao dao=new AdminDao();
		return dao.updateAPwd(id,pwd);
	}
	//获取酒店信息列表
	public List<Hotel> getAllHotel() {
		AdminDao dao=new AdminDao();
		return dao.getAllHotel();
	}
	//删除酒店
	public boolean delHotel(int hnumber) {
		AdminDao dao=new AdminDao();
		return dao.delHotel(hnumber);
	}
	//查询酒店信息
	public List<Pojo> select() {
		AdminDao dao=new AdminDao();
		return dao.select();
	}
	//修改订单
	public int updataOrder(int oId,String fangxing){
		AdminDao dao=new AdminDao();
		return dao.upDataOrder( oId, fangxing);
	}
	//添加用户订单
	public int insertUserOrder(Order order){
		AdminDao dao=new AdminDao();
		return dao.insertOrder(order);
	}
	//向申请表添加申请信息
	public int insertApplyMessage(Apply apply){
		AdminDao dao=new AdminDao();
		return dao.insertApplyMessage(apply);
	}
	public List<Apply> selApply() {
		AdminDao dao=new AdminDao();
		return dao.selApply();
	}
	public int shenHeTongYi(int id) {
		AdminDao dao=new AdminDao();
		return dao.shenHeTongYi(id);
	}
	//分页
	public int rowCount() {
		AdminDao dao=new AdminDao();
		return dao.rowCount();
	}
	//分页显示酒店列表
	public List<Hotel> listHotel(int star, int size) {
		AdminDao dao=new AdminDao();
		return dao.listHotel(star,size);
	}
	public int selHtoel() {
		AdminDao dao=new AdminDao();
		return dao.selHtoel();
	}
	//使用分页查询房间信息
	public List<Pojo> selSplit(int star, int size) {
		AdminDao dao=new AdminDao();
		return dao.selselSplit(star,size);
	}
	//管理员拒绝申请加盟信息
	public int delApply(int id) {
		AdminDao dao=new AdminDao();
		return dao.delApply(id);
	}
}
