package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import com.qy.hotel.biz.AdminBiz;
import com.qy.hotel.dto.Person;

public class UmodifyCheckLoginSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public UmodifyCheckLoginSvl() {
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
		System.out.println("dddddd");
		String object=(String)request.getSession().getAttribute("uname");
if(object==null){
	JOptionPane.showMessageDialog(null, "请登录！");
	request.getRequestDispatcher("front/main.jsp").forward(request, response);
}else{
		request.getRequestDispatcher("house/umodify.jsp").forward(request, response);
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
