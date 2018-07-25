package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.roommessage;

public class roommessageSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public roommessageSvl() {
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
		//System.out .println("33333");
		if(request.getSession().getAttribute("user")!=null){
			AdminBiz admin=new AdminBiz();
			List<roommessage> allPrice=admin.getAllPrice();
			if(allPrice!=null){
				request.setAttribute("allPrice", allPrice);
				request.getRequestDispatcher("right/price.jsp").forward(request,response);
			}else{
				request.getRequestDispatcher("error.jsp").forward(request,response);
			}
		}else{
			
			request.getRequestDispatcher("Manage/Login.jsp").forward(request,response);
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
