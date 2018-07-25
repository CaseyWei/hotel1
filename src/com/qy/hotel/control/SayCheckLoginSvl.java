package com.qy.hotel.control;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class SayCheckLoginSvl extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public SayCheckLoginSvl() {
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
Object object=request.getSession().getAttribute("uname");
if(object==null){
	JOptionPane.showMessageDialog(null, "请登录！");
	request.getRequestDispatcher("front/main.jsp").forward(request, response);
}else{
	request.getRequestDispatcher("message.jsp").forward(request, response);
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
