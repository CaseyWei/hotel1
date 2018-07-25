package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dao.AdminDao;

public class DeleteHotelSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteHotelSvl() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("number="+request.getParameter("number"));
		int hnumber=Integer.valueOf(request.getParameter("number"));
		AdminBiz biz=new AdminBiz();
		boolean delhotel=biz.delHotel(hnumber);
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
