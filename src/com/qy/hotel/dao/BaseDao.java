package com.qy.hotel.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BaseDao {
	public Connection con = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;
	public Statement st = null;
	/*
	 * ��ȡ��ݿ�����
	 */
	public void openconnection(){
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","123456");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {			
			e.printStackTrace();
		}
	}	

	/*
	 * �ر���Դ
	 */
	public boolean closeResource(){		
		
		try {
			if(rs != null)
				rs.close();
			if(ps != null)
				ps.close();
			if(st!= null)
				st.close();
			if(con != null)
				con.close();			
		} catch (SQLException e) {			
			e.printStackTrace();
			return false;
		}
		return true;
	}
	
}
