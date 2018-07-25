package com.qy.hotel.dao;

import java.sql.ResultSet;
import java.sql.Statement;
import com.qy.hotel.dto.Person;

public class UserDao  extends BaseDao  {
	  Statement stmt=null;
	  ResultSet rs;
	
	public Person  login (String userName,int password){
		Person user=null;
		String sql="select * from room where uname=?and upwd=?";
	this.openconnection();
	try{
		ps=con.prepareStatement(sql);
		ps.setString(1,userName);
		ps.setInt(2,password);
		rs=ps.executeQuery();
		if(rs!=null){
			while(rs.next()){
				user=new Person();
				user.setUname(userName);
				user.setUpwd(password);
			//	user.setRole(rs.getString("role"));
				break;
				
			}
		}
	}
		catch(Exception e){
			e.printStackTrace();
		}finally{
			this.closeResource();
		}
		return user;
	}
	//查询用户订单
	/*public Person getOrder(){
		Person per=null;
		HttpSession session=
		Object object=session.getAttribute("uname");
		String sql="Select * from ordermessage where uname='"+object+"'";
		this.openconnection();
		 try {
			stmt=con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return per;
	}*/
	}
	
