package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.roommessage;

public class HouseMessageSvl extends HttpServlet {

	/**分支酒店添加房间信息
	 * Constructor of the object.
	 */
	public HouseMessageSvl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		int hnumber=Integer.valueOf(request.getParameter("hnumber"));
		int rnumber=Integer.valueOf(request.getParameter("number"));
		String fangxing =request.getParameter("selroom");
		String position=request.getParameter("selposition");
		int price=Integer.valueOf(request.getParameter("selprice"));
		String ficilitiesgoods=request.getParameter("ficilitiesgoods");
	//	roommessage room=new roommessage();
		AdminBiz admin=new AdminBiz();
		roommessage room=admin.addmessage(rnumber,hnumber,fangxing,position,price,ficilitiesgoods);	
		if(room!=null){
			System.out.println("=====");
			//request.setAttribute("room",room);
			request.getRequestDispatcher("roommessageSvl.java").forward(request, response);
		}else{
			JOptionPane.showMessageDialog(null, "成功添加!");
			request.getRequestDispatcher("right/message.jsp").forward(request, response);
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
